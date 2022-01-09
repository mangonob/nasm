#include <stdio.h>

extern void arithmetic(double a, double b, double result[8]);

int main(int argc, char *argv[])
{
    double a, b, results[8];
    while (1)
    {
        printf("a = ? ");
        scanf("%lf", &a);
        printf("b = ? ");
        scanf("%lf", &b);
        arithmetic(a, b, results);
        printf("a + b = %lf\n", results[0]);
        printf("a - b = %lf\n", results[1]);
        printf("a * b = %lf\n", results[2]);
        printf("a / b = %lf\n", results[3]);
        printf("min a b = %lf\n", results[4]);
        printf("max a b = %lf\n", results[5]);
        printf("sqrt a = %lf\n", results[6]);
        printf("trunc (sqrt a) = %lf\n", results[7]);
    }

    return 0;
}