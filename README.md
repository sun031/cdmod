# cdmod

THis software package depends on .

ver 0.1.8 2015-10-04 09:24
1. All the codes now run in a good condition. So I have a release.
2. All the files for debugging is moved to src/debug.
3. The intel mkl library is removed during compiliing, 
	since the functions name are coflicted with the su funciton.
	The function 'dge' is used to sloving the equations for FD coefficients.

\n
ver 0.1.6 2015-09-27 22:22
1. swfdmod2ht.c cannot be compiled with SConstruct. Must be compiled by "./compile" separately.
	This is related with the SConstruct.
2. fixed bug in cdmod2 and cdmod2ht, calculating coefficients.
