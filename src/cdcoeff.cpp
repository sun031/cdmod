#include <stdio.h>
#include <complex.h>
#include <tgmath.h>
#include <stdlib.h>

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

/*! calculation of CD coefficients
@param[in] m: order of the derivatives, m=1,2,3,4
@param[in] n: order of spatial accuray, e.g., n=4, 10
*/
void cdcoeff(int m, int n)
{
	m = abs(m)
	n = abs(n)
	
	double PI = acos(-1);
	float kn = PI;
	
	
	
	return;
}


