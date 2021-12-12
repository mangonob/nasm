#include <stdio.h>

extern double fToC(double f);
extern double cToF(double f);

extern int main(int argc, char *argv[])
{
    double f, c;

    while (1)
    {
        printf("F = ? ");
        scanf("%lf", &f);
        printf("%.2lfF = %.2lfC\n", f, fToC(f));
        printf("C = ? ");
        scanf("%lf", &c);
        printf("%.2lfC = %.2lfF\n", c, cToF(c));
    }
    return 0;
}