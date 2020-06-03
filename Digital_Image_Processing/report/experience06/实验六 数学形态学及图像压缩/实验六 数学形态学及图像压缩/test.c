#include "mex.h"
int test(int a, int b)
{
	return a*b;
}
void mexFunction()
{
    int a;
	int b;
    int s = test(a,b);
}