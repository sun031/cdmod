#include <stdio.h>
#include <complex.h>
#include <tgmath.h>
#include <stdlib.h>
#include <math.h>

/*! calculate factorial
\param[in] m 
\param[out] fact
*/
int factorial(int m)
{
	int fact=1;
	int i;
	for(i=0; i<m; i++)
	{
		fact *= (i+1); 
	}
	
	if(m==0)
		fact = 1;
		
	return fact;
}

/*! calculation of CD coefficients for 2nd-order wave equations
@param[in] m: order of the derivatives, m=1,2,3,4
@param[in] n: order of spatial accuray, e.g., n=4, 10
*/
void cdcoeff(int m, int n, double *cc)
{
	m = abs(m);
	n = abs(n);
	
	double PI = acos(-1);
	double kn = PI;
	
	int k; //! loop variable, innter
	int nn;
	
	double complex tmp, tmp1, tmp2;
	double complex sum;
	
	tmp = pow(I,m)*factorial(m)*0.5/PI;
		
	nn = n;
	for(n=1; n<=nn; n++)
	{
		sum = 0.0;
		for(k=0; k<=m; k++)
		{
			tmp1 = exp(I*kn*n)+pow(-1, m-k+1)*exp(-I*kn*n);
			tmp2 = factorial(m-k)*pow(n*I, k+1);
		
			sum += pow(-1.0, k)*pow(kn, m-k)*tmp1/tmp2;
			
//			printf("tmp1=,%f, %f\n", creal(tmp1), cimag(tmp1));
//			printf("tmp2=,%f, %f\n", creal(tmp2), cimag(tmp2));
//			printf("sum=,%f, %f\n", creal(sum), cimag(sum));

		}
		tmp2 = tmp*sum;
		cc[n] = creal(tmp2);
//		printf("n=%d, coeff=%f\n", n, cc[n]);
	}
	
	// n=0
	tmp = pow(I, m)*pow(kn, m+1)*0.5/PI*(1+pow(-1,m))/(m+1);
	cc[0] = creal(tmp);
	
	for(n=0; n<=nn; n++)
	{
		printf("cc[%d]=%f\n", n, cc[n]);
	}
	
	return;
}

void cdcoeff_stg(int m, int n, double *cc)
{
	m = abs(m);
	n = abs(n);

	return;	
}

/*! calculation of FD coefficients for convential 2nd-order acoustic wave equation
@param[in] r: r=v*delta_t/delta_x, if r=0, then conventional coefficients
@param[in] n: order of spatial accuray, e.g., n=4, 10
references: Liu and Sen 2009, JGE.
*/
void fdcoeff_2nd_regulargrd(float r, int n, double *cc)
{
	int nn;
	int m;
	double x;
	
	nn = n/2;
//	printf("nn=%d\n", nn);
	
	for(n=1; n<=nn; n++)
	{
		x = 1.0;
		for(m=1; m<=nn; m++)
		{
			if(n!=m)
			{
				x = x*(m*m-r*r)/(n*n-m*m);
				x = fabs(x);
			}
		}
		cc[n] = pow(-1, n+1)/n/n*x;
	}
	cc[0] = 0.0;
	for(n=1; n<=nn; n++)
	{
		cc[0] += cc[n];
	}
	cc[0] = -2.0*cc[0];
			
	for(n=0; n<=nn; n++)
	{
		printf("cc[%d]=%f\n", n, cc[n]);
	}
}

#define NOMAIN
#ifdef MAIN

int main()
{
	int m=2;
	int n=10;
	int result;
	double cc[2*n+1];
	
	result = factorial(m);
	printf("result=%d\n", result);
	
	cdcoeff(m,n,cc);
	fdcoeff_2nd_regulargrd(0.0, 10, cc);

}

#endif
