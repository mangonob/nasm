#include <stdio.h>

int main(int argc, char *argv[])
{
    double a, b;

    while (1)
    {
        printf("a = ? ");
        scanf("%lf", &a);
        printf("b = ? ");
        scanf("%lf", &b);
        printf("%.2lf + %.2lf = %.2lf\n", a, b, a + b);
    };

    return 0;
}

double fToC(double f)
{
    return (f - 32) * 5 / 9;
}

float fToC_(float f)
{
    return (f - 32) * 5 / 9;
}

int f2i(float f)
{
    return (int)f;
}