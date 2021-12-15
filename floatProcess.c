#include <stdio.h>

extern double mpow(double a, int n);
extern double msin(double rad);
extern double mcos(double rad);
extern double msqrt(double rad);
extern double mpi;

int main(int argc, char *argv[])
{
    double a;

    while (1)
    {
        printf("angle = ? ");
        scanf("%lf", &a);
        printf("sin(%g) = %g\n", a, msin(a));
        printf("cos(%g) = %g\n", a, mcos(a));
    }

    return 0;
}