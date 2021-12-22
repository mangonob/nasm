#include <stdio.h>

extern void leastSquares(const double *x, const double *y, int length, double *k, double *b);

int main(int argc, char *argv[])
{
    double x[] = {10, 13, 17, 19, 23, 7, 35, 51, 89, 92};
    double y[] = {1.2, 1.1, 1.8, 2.2, 1.9, 0.5, 3.1, 5.5, 8.4, 9.7};
    int length = sizeof x / sizeof x[0];
    double k, b;
    leastSquares(x, y, length, &k, &b);
    printf("y = %lfx + %lf\n", k, b);
    return 0;
}