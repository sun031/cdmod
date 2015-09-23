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

/*! calculation of CD coefficients
@param[in] m: order of the derivatives, m=1,2,3,4
@param[in] n: order of spatial accuray, e.g., n=4, 10
*/
void cdcoeff(int m, int n)
{
	m = abs(m);
	n = abs(n);
	
	double PI = acos(-1);
	double kn = PI;
	
	int k; //! loop variable, innter
	int nn;
	
	double complex tmp, tmp1, tmp2;
	double complex sum;
	
	tmp = cpow(I,m)*factorial(m)*0.5/PI;
	
	printf("tmp, %f, %fi\n", creal(tmp), cimag(tmp));
	printf("PI=%f\n", PI);
	
	nn = n;
	for(n=1; n<=nn; n++)
	{
		sum = 0.0;
		for(k=0; k<=m; k++)
		{
			tmp1 = cexp(I*kn*n)+pow(-1, m-k+1)*cexp(-I*kn*n);
			tmp2 = factorial(m-k)*cpow(n*I, k+1);
		
			sum += pow(-1.0, k)*pow(kn, m-k)*tmp1/tmp2;
			
			printf("tmp1=,%f, %f\n", creal(tmp1), cimag(tmp1));
			printf("tmp2=,%f, %f\n", creal(tmp2), cimag(tmp2));
			printf("sum=,%f, %f\n", creal(sum), cimag(sum));

		}
		tmp2 = tmp*sum;
		printf("n=%d, coeff=%f\n\n", n, creal(tmp*sum));
	}
	
	
	return;
}

int main()
{
	int m=1;
	int result;
	
	result = factorial(m);
	printf("result=%d\n", result);
	
	cdcoeff(m,3);
}
