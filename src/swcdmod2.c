#include <time.h>
#include "par.h"
#include "su.h"
#include "segy.h"
#include <math.h>
//#include "mkl_dfti.h"

/*********************** self documentation **********************/
char
*sdoc[] =
{
    " 									",
    " SWFDSHOT2 - Synthetize a 2D shot record with regular grid CD",
    " 									",
    " swfdshot2 <file_vel >file_seis nxmod= nzmod=	",
    " dt= nt= xs= zs= file_snap= [optional parameters]	",
    " 									",
    " Required Parameters:							",
    " <file_vel		file containing velocity model	",
    " >file_seis		file containing shot record[nx][nt]		",
    " nxmod=			number of x samples (2nd dimension)		",
    " nzmod=			number of z samples (1st dimension)		",
    " file_snap=	snapshot of forward modeling	",
    " dt= ",
    " nt= ",
    " xs=			source x position. if not set, from header	",
    " zs=0			source z position.	",
    " 									",
    " Optional Parameters:							",
    " mt=1			number of time steps (dt) per output time step	",
    " dx=10.0		x sampling interval				",
    " fx=0.0		first x sample					",
    " dz=10.0		z sampling interval				",
    " fz=0.0		first z sample					",
    " 									",
    " fpeak=20Hz	peak frequency in ricker wavelet		",
    " fmax=2.0*fpeak	the maximum frequency				",
    " tdelay=0		time delay for wavelet		",
    " np=9		    point number of CD operator		",
    " hsz=			z coordinate of horizontal line of seismograms	",
    " vsx=			x coordinate of vertical line of seismograms",
    " 									",
    " ntap=45		number of grids for taper	",
    " coeff=0.053	attenuation coefficient	",
    " verbose=0		=1 for diagnostic messages;	",
    " 									",
    " Notes:								",
    " 									",
    " Weijia Sun",
    " Email: swj@mail.iggcas.ac.cn						",
    " Date: Aug 9, 2012	Rev: 1.0"
    " 									", 	NULL
};

/*
* Authors:  IGGCAS: Weijia Sun
*
*
*
*/
/**************** end self doc ********************************/

void ricker1_wavelet(int nt, float dt, float fpeak, float *wavelet);

void extenModel(int nx, int nz, int ntap, float **v, float **vv);

void absorb(int ntap, int nx, int nz, float *taper, float **p);
void cerjan(int ntap, float coeff, float *taper);

void get_file_snap(char *dest, char *src, int num);

void src_spatial_distribution(int nx, int nz, int ixs, int izs, float **s);

void hanning(int n,float *w);
void cd_coeff_scalar(int m, int np, float *d);
void time_one_step_cd(int nx, int nz, float dt, float dx, float dz, int np, float *d,
                      float **v, float **pp, float **pm, float **p);
extern void cdcoeff(int m, int n, double *cc);

segy tr;	/* horizontal line seismogram traces */

/*! \brief main function of cdmod2 using acoustic equation \n
 * shot seismograms calculated by CD method \n
 * Usage: \n
 * swcdmod2 < file_vel args > file_seis \n
 * args: nxmod=100 nzmod=100 for example \n
 * \li velocity model must be a binary file with v[nx][nz] order
 * \li output file  is in SU format
 * \li snapshot file is in BINARY format same as velocity model, filename with no extension, e.g., file_snap="snap"
 * 
 */
int main(int argc, char **argv)
{
    int nx, nz;
    
    int nxmod, nzmod; /* nxmod,nzmod model paramters */

    float fx, fz;

    int nt;	/* nt number of time sampling*/

    int it;
    int mt;	/* mt every mt time step to output a snapshot*/

    int ix, iz;		/* counter */

    float *wlvt;	/*wavelet*/
    float **v;	/*velocity model*/
    float **vv;	/*velocity in calculating zone*/

    float **pp, **p, **pm;	/*wavefield at t+dt, t, t-dt*/

    float **s;	/*spatial distribution of source*/

    float **hseis;	/*shor records*/
    float hsz;	/*depth of seismic line, =0 in this code*/
    int izhsz;

    float **vseis;
    float vsx;
    int ixvsx;

    int np;
    float *d;

    float dx, dz;	/* dx,dz space sampling interval*/
    float fpeak;	/* fpeak peak frequency*/
    float fmax;		/* fmax maximum frequency */
    float dt;	/* dt time sampling interval*/

    float vmin, vmax;	/* vmin,vmax min and max value of velocity*/

    float tdelay;	/* tdelay time delay of wavelet*/
    int ntdelay;	

    time_t t0, t1, t2;

    float dtstable;
    float dxstable;

    int ntap;
    float coeff;
    float *taper;

    float xs, zs;
    int ixs, izs;

    float sx, gx;
    int isx, igx;

    int verbose=0;

    char file_tmp[BUFSIZ];
    char *file_snap="";
    char *file_vseis="";

    FILE *fp_snap = NULL;
    FILE *fp_vel = stdin;
    FILE *fp_seis = stdout;
    FILE *fp_vseis = NULL;

    //FILE *fp_hseis = stdin;

    /* SEGY fields */
    long tracl=0;		/* trace number within a line */
    long tracr=0;		/* trace number within a reel */

    /* hook up getpar to handle the parameters */
    initargs(argc, argv);
    requestdoc(0);

    t0=time(NULL);

    /* get required parameters */
    if (!getparint("nxmod", &nxmod))	/// \param[in] nxmod,nzmod grid number of velocity model
        err("must specify nxmod!\n");
    if (!getparint("nzmod", &nzmod))
        err("must specify nzmod!\n");
    if (!getparstring("file_snap", &file_snap))	/// \param[in] file_snap filename of snapshot, default file_snap = "snap", no extension.
    	file_snap = "snap";
//        err("must specify file_snap!\n");
    if (!getparstring("file_vseis", &file_vseis))	/// \param[in] file_vseis filename of velocity model, default file_vseis = "vseis.su"
    	file_vseis = "vseis.su";
//        err("must specify file_vseis!\n");

    if (!getparfloat("dt", &dt))	/// \param[in] dt time sampling interval
        err("must specify dt!\n");
    if (!getparint("nt", &nt))		/// \param[in] nt time sampling number
        err("must specify nt!\n");

    if (!getparfloat("xs", &xs))	/// \param[in] xs,zs shot position
        err("must specify dt!\n");
    if (!getparfloat("zs", &zs))
        err("must specify dt!\n");

    /*optional parameters*/
    if (!getparfloat("dx", &dx))	/// \param[in] dx,dz spatial sampling interval
        dx = 10;
    if (!getparfloat("dz", &dz))
        dz = 10;
    if (!getparfloat("fpeak", &fpeak))	/// \param[in] fpeak peak frequency, default fpeak=25
        fpeak = 25;
    if (!getparfloat("fmax", &fmax))	/// \param[in] fmax maximum frequency, default fmax = 2.0*fpeak
        fmax = 2.0*fpeak;
    if (!getparfloat("tdelay", &tdelay))	/// \param[in] tdelay time delay, default tdelay = 0
        tdelay = 0;

    if (!getparint("np", &np))	/// \param[in] np length of spatial operator, default np = 9
        np = 9;

    if (!getparint("mt", &mt))	/// \param[in] mt every mt time step to output snapshot, default mt=1
        mt = 1;

    if (!getparfloat("coeff", &coeff))	/// \param[in] coeff coefficient for ABC, default coeff = 0.0053
        coeff = 0.0053;
    if (!getparint("ntap", &ntap))	/// \param[in] ntap grid number used to ABC, default ntap=45
        ntap = 45;

    if (!getparfloat("fx", &fx))	/// \param[in] fx,fz start position, default fx=fz=0
        fx = 0;
    if (!getparfloat("fz", &fz))
        fz = 0;

    if (!getparfloat("hsz", &hsz))	/// \param[in] hsz depth of horizontal line, default hsz=0
        hsz = 0;

    if (!getparfloat("vsx", &vsx))	/// \param[in] vsx horizontal position of VSP,default vsx = nxmod/2+ntap
        vsx = nxmod/2+ntap;

    if (!getparint("verbose", &verbose))	/// \param[in] verbose flag output info, default verbose=1
        verbose = 1;


    /************************************************************************/

    nx = nxmod + 2*ntap;
    nz = nzmod + 2*ntap;

    if (verbose)
    {
        fprintf(stderr, "\nxs=%g\n", xs);
        fprintf(stderr, "nx=%d, nz=%d\n", nx, nz);
    }

    /************************************************************************/


    vv = alloc2float(nz, nx);
    memset((void *) vv[0], 0, sizeof(float) * nx * nz);

    pp = alloc2float(nz, nx);
    p = alloc2float(nz, nx);
    pm = alloc2float(nz, nx);

    memset((void *) pp[0], 0, sizeof(float) * nx * nz);
    memset((void *) p[0], 0, sizeof(float) * nx * nz);
    memset((void *) pm[0], 0, sizeof(float) * nx * nz);

    s = alloc2float(nz, nx);
    memset((void *)s[0], 0, sizeof(float) * nx *nz);

    hseis=alloc2float(nt, nx);
    memset((void *)hseis[0], 0, sizeof(float)*nx*nt);

    vseis=alloc2float(nt, nz);
    memset((void *)vseis[0], 0, sizeof(float)*nz*nt);

    taper=alloc1float(ntap);
    memset((void *)taper, 0, sizeof(float)*ntap);


    v = alloc2float(nzmod, nxmod);
    memset((void *) v[0], 0, sizeof(float) * nxmod * nzmod);

    d = alloc1float(np);

    /* read velocities */
    efread(v[0],sizeof(float),nxmod*nzmod,fp_vel);
    efclose(fp_vel);

    for (ix=0; ix<nx-2*ntap; ix++)
    {
        for (iz=0; iz<nz-2*ntap; iz++)
        {
            vv[ntap+ix][ntap+iz] = v[ix][iz];
        }
    }

    extenModel(nx, nz, ntap, vv, vv);
    vmin=vmax=vv[0][0];
    for (ix = 0; ix < nx; ix++)
    {
        for (iz = 0; iz < nz; iz++)
        {
            vmin=MIN(vmin, vv[ix][iz]);
            vmax=MAX(vmax, vv[ix][iz]);
        }
    }

    fprintf(stderr,"vmin=%g, vmax=%g\n", vmin, vmax);
    if(vmin==0)
        err("error. vmin=%g",vmin);

    /*stable condtions*/
    dxstable=vmin/(2*fmax);
    if (MAX(dx, dz)>dxstable)
    {
        warn("stable grid size must be smaller than %g", dxstable);
    }

    //dtstable=sqrt(2)*MIN(dx, dz)/(PI*vmax);
    dtstable = 1.0/1.3167/vmax/sqrt(1./dx/dx+1./dz/dz);
    if (dt>dtstable)
    {
        err("unstable. dt must be smaller than %g", dtstable);
    }

    /*source*/
    ntdelay=tdelay/dt;
    wlvt = alloc1float(nt+ntdelay);
    ricker1_wavelet(nt+ntdelay, dt, fpeak, wlvt);

    ixs = (int) ((xs-fx) / dx) + ntap;
    izs = (int) ((zs-fz) / dz) + ntap;
    izhsz = (int) ((hsz-fz) / dz) + ntap;
    ixvsx = (int) ((vsx-fx) / dx) + ntap;

    warn("ixs=%d, izs=%d\n", ixs, izs);

    cerjan(ntap, coeff, taper);
    src_spatial_distribution(nx, nz, ixs, izs, s);

    cd_coeff_scalar(2, np, d);

//    for(ix=0; ix<np; ix++)
//    {
//        warn("d[%d]=%g\n", ix, d[ix]);
//    }

    /*verbose*/
    if (verbose)
    {
        fprintf(stderr, "nx=%d nz=%d\n", nx, nz);
        fprintf(stderr, "ntap=%d coeff=%g\n", ntap, coeff);
        fprintf(stderr, "dtstable=%g dxstable=%g\n", dtstable, dxstable);
        fprintf(stderr, "dt=%g dx=%g dz=%g\n", dt, dx, dz);
        fprintf(stderr, "ntdelay=%d tdelay=%g\n", ntdelay, tdelay);
    }

    memset((void *) pp[0], 0, sizeof(float) * nx * nz);
    memset((void *) p[0], 0, sizeof(float) * nx * nz);
    memset((void *) pm[0], 0, sizeof(float) * nx * nz);

    t2=time(NULL);

    warn("preprocessing time cost(s):%f", difftime(t2,t0));

    /*forward modeling*/
    for (it=0; it<ntdelay; it++)
    {

        for (ix=0; ix<nx; ix++)
        {
            for (iz=0; iz<nz; iz++)
            {
                p[ix][iz] += wlvt[it]*s[ix][iz];
            }
        }

        time_one_step_cd(nx, nz, dt, dx, dz, np, d, vv, pp, pm, p);

        absorb(ntap, nx, nz, taper, pm);
        absorb(ntap, nx, nz, taper, p);
        absorb(ntap, nx, nz, taper, pp);

        for (ix=0; ix<nx; ix++)
        {
            for (iz=0; iz<nz; iz++)
            {
                pm[ix][iz] = p[ix][iz];
                p[ix][iz] = pp[ix][iz];
            }
        }

    }

    t1=time(NULL);

    for (it = 0; it < nt; it++)
    {

        if (verbose && (it%100==0) )
        {
            t2 = time(NULL);
            warn("it=%d, nt=%d, time1=%g, time2=%g", it, nt, difftime(t2, t1), difftime(t2, t0));
        }

        for (ix=0; ix<nx; ix++)
        {
            for (iz=0; iz<nz; iz++)
            {
                p[ix][iz] += wlvt[it+ntdelay]*s[ix][iz];
            }
        }

        time_one_step_cd(nx, nz, dt, dx, dz, np, d, vv, pp, pm, p);

        absorb(ntap, nx, nz, taper, pm);
        absorb(ntap, nx, nz, taper, p);
        absorb(ntap, nx, nz, taper, pp);

        for (ix=0; ix<nx; ix++)
        {
            for (iz=0; iz<nz; iz++)
            {
                pm[ix][iz] = p[ix][iz];
                p[ix][iz] = pp[ix][iz];
            }
        }

        for (ix=0; ix<nx; ix++)
        {
            hseis[ix][it] = p[ix][izhsz];
        }
        for(iz=0; iz<nz; iz++)
        {
            vseis[iz][it] = p[ixvsx][iz];
        }

        if (it % mt == 0)
        {

            for (ix=0; ix<nxmod; ix++)
            {
                for (iz=0; iz<nzmod; iz++)
                {
                    v[ix][iz] = p[ntap+ix][ntap+iz];
                }
            }

            get_file_snap(file_tmp, file_snap, it);
            fp_snap = efopen(file_tmp, "w");
            efwrite((void *) v[0], sizeof(float), nxmod * nzmod, fp_snap);
            efclose(fp_snap);
        }

        if (verbose && (it%100==0) )
        {
            t1 = time(NULL);
        }

    } /*end of time loop*/
    /*end of forward modeling*/

    warn("Writing final shot records...");

    /************************************************************************/
    fp_vseis = efopen(file_vseis, "w");

    for (ix=ntap; ix<nx-ntap; ix++)
    {
        tr.ns = nt;
        tr.dt = dt*1000000;

        //tr.fldr = ixs-ntap;

        tr.sx = fx + (float)(ixs-ntap)*dx;
        tr.sy = fx + (float)(izs-ntap)*dz;
        tr.gx = fx + (float)(ix-ntap)*dx;
        tr.gy = fx + (float)(izhsz-ntap)*dz;

        //tr.cdp = (tr.sx+tr.gx)/2;
        //tr.offset = tr.gx-tr.sx;

        tr.d1=dz;
        tr.d2=dx;

        //tracl++;
        //tr.tracl=tracl;
        for (it=0; it<nt; it++)
        {
            tr.data[it] = hseis[ix][it];
        }

        fputtr(fp_seis, &tr);

    }

    //tracl=0;
    for (iz=ntap; iz<nz-ntap; iz++)
    {
        tr.ns = nt;
        tr.dt = dt*1000000;

        tr.sx = fx + (float)(ixs-ntap)*dx;
        tr.sy = fx + (float)(izs-ntap)*dz;
        tr.gx = fx + (float)(ixvsx-ntap)*dx;
        tr.gy = fx + (float)(iz-ntap)*dz;

        tr.d1=dz;
        tr.d2=dx;

        //tracl++;
        //tr.tracl=tracl;
        for (it=0; it<nt; it++)
        {
            tr.data[it] = vseis[iz][it];
        }

        fputtr(fp_vseis, &tr);

    }
    /*free memory*/
    free2float(vv);
    free2float(pp);
    free2float(p);
    free2float(pm);
    free1float(taper);
    free2float(hseis);
    free2float(vseis);
    free2float(v);
    free2float(s);

    t2=time(NULL);
    warn("total time: %g", difftime(t2,t0));

    return 0;
}



/*!*****************************************************************************
\brief
ricker_wavelet -- Compute the   time response of a source function as
a Ricker wavelet with peak frequency "fpeak" Hz.

*******************************************************************************
\param[in] nt time sampling number
\param[in] dt time sampling interval
\param[in] fpeak dominant frequency
\param[out] wavelet array of wavelet

*******************************************************************************
Author: Tong Fei, 1993, Colorado School of Mines.
******************************************************************************/
void ricker1_wavelet(int nt, float dt, float fpeak, float *wavelet)
{
    int it;
    float t1, t0;

    t0 = 1.0 / fpeak;

    for (it = 0; it < nt; it++)
    {
        t1 = it * dt;
        wavelet[it] = exp(-PI * PI * fpeak * fpeak * (t1 - t0) * (t1 - t0))
                      * (1.0 - 2. * PI * PI * fpeak * fpeak * (t1 - t0) * (t1 - t0));
    }
}

/*!
 * \brief extend the absorbing layer for velocity model
 */
void extenModel(int nx, int nz, int ntap, float **v, float **vv)
{
    int ix, iz;

    /*internal zone*/
    //for (ix=0; ix<nx-2*ntap; ix++)
    //{
    //	for (iz=0; iz<nz-2*ntap; iz++)
    //	{
    //		vv[ix+ntap][iz+ntap] = v[ix][iz];
    //	}
    //}

    /*upper and lower boundary*/
    for (ix=0; ix<nx; ix++)
    {
        for (iz=0; iz<ntap; iz++)
        {
            vv[ix][iz] = vv[ix][ntap];
            vv[ix][nz-iz-1] = vv[ix][nz-ntap-1];
        }
    }

    /*left and right boundary*/
    for (ix=0; ix<ntap; ix++)
    {
        for (iz=0; iz<nz; iz++)
        {
            vv[ix][iz] = vv[ntap][iz];
            vv[nx-ix-1][iz] = vv[nx-ntap-1][iz];
        }
    }

}

/*!
 * \brief cerjan ABC coefficients
 */
void cerjan(int ntap, float coeff, float *taper)
{
    int i;
    float a;
    for (i=0; i<ntap; i++)
    {
        a = (float)(ntap-i)*(float)(ntap-i);
        taper[i] = exp(-coeff*coeff*a);
    }
}

/*!
 * \brief applying ABC
 */
void absorb(int ntap, int nx, int nz, float *taper, float **p)
{
    int ix, iz;
    /* upper boundary */
    for (ix=0; ix<nx; ix++)
    {
        for (iz=0; iz<ntap; iz++)
        {
            p[ix][iz] *= taper[iz];
        }
    }

    /* left boundary */
    for (ix=0; ix<ntap; ix++)
    {
        for (iz=0; iz<nz; iz++)
        {
            p[ix][iz] *= taper[ix];
        }
    }

    /*lower boundary*/
    for (ix=0; ix<nx; ix++)
    {
        for (iz=0; iz<ntap; iz++)
        {
            p[ix][nz-iz-1] *= taper[iz];
        }
    }

    /*right boundary*/
    for (ix=0; ix<ntap; ix++)
    {
        for (iz=0; iz<nz; iz++)
        {
            p[nx-ix-1][iz] *= taper[ix];
        }
    }

    /*end of absorb()*/
}

/*!
 * \brief get snapshot file name
 */
void get_file_snap(char *dest, char *src, int num)
{
    char a[10];
    strcpy(dest, src);
    strcat(dest, "_t");
    sprintf(a, "%05d", num);
    strcat(dest, a);
    strcat(dest, ".bin");
    return;
}

/*!*****************************************************************************
\brief time_one_step -- compute wavefield of one time step.

\param[in] nx      number samples in x direction
\param[in] nz      number samples in z direction
\param[in] dt    time step
\param[in] dx	x space step
\param[in] dz	z space step
\param[in] np	length of spatial operators
\param[in] *d	array containing CD coefficients
\param[in] **v	velocity model with v[nx][nz]
\param[in] **pp	pressure wavefiled at t+dt
\param[in] **pm	pressure wavefiled at t-dt
\param[in] **p	pressure wavefiled at t
\param[out] **p   computed pressure wavefiled p

\author Weijia Sun, 2011, IGGCAS.

******************************************************************************/
void time_one_step_cd(int nx, int nz, float dt, float dx, float dz, int np, float *d,
                      float **v, float **pp, float **pm, float **p)
{
    int ix, iz;
    float dtdx, dtdz;
    float diffx, diffz;
    int ip;

    dtdx = dt*dt/dx/dx;
    dtdz = dt*dt/dz/dz;

    for(ix=np/2; ix<nx-np/2; ix++)
    {
        for (iz=np/2; iz<nz-np/2; iz++)
        {
            diffx = d[0]*p[ix][iz];
            diffz = d[0]*p[ix][iz];

            for (ip=1; ip<=np/2; ip++)
            {
                diffx += d[ip]*(p[ix+ip][iz]+p[ix-ip][iz]);
                diffz += d[ip]*(p[ix][iz+ip]+p[ix][iz-ip]);
            }

            pp[ix][iz] = 2.0*p[ix][iz] - pm[ix][iz] +
                         v[ix][iz]*v[ix][iz]*(dtdx*diffx+dtdz*diffz);
        }
    }

}

/*!
 * \brief calculating CD coefficients
 */
void cd_coeff_scalar(int m, int np, float *d)
{
    int i;
    int nphalf;
    float sum=0;

    float *w;
    double *cc;

    nphalf=np/2;
    
    w = alloc1float(np);
    cc = alloc1double(np);

    hanning(np, w);
    cdcoeff(m, nphalf, cc);

    for (i=1; i<=nphalf; i++)
    {
    	d[i] =  cc[i] * w[nphalf+i];
        sum += d[i];
    }

    d[0] = -2.0*sum;

    free1float(w);
    free1double(cc);

    return;

}

/*!***********************************************************************
\brief hanningnWindow - returns an n element long hanning window
\param[in] n	size of window
\param[in] *w	hanning window function of size n
\param[out] *w	hanning window function of size n

Notes:
	w[k] = 0.5(1-cos(2PI * K/n+1)) k=1,....n

************************************************************************/
void hanning(int n,float *w)

{
    int i;

    for(i=0; i<n; i++)
    {
        w[i] = 0.5*(1-cos(2.0*PI*(i+1)/(n+1)));
    }

}

/*!
 * \brief source spatial dist for stability
 */
void src_spatial_distribution(int nx, int nz, int ixs, int izs, float **s)
{
    int ix, iz;
    float xn, zn;

    for (ix=0; ix<nx; ix++)
    {
        xn = ix-ixs;
        for (iz=0; iz<nz; iz++)
        {
            zn = iz-izs;
            s[ix][iz] = exp(-xn*xn-zn*zn);
        }
    }
    return;
}
