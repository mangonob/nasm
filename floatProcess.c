#include <stdio.h>

extern double mpow(double a, int n);

int main(int argc, char *argv[])
{
    printf("%lf\n", mpow(2, 10));
    return 0;
}