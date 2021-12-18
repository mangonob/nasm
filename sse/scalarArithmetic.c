#include <stdio.h>

extern void scalarArithmeticFloat(float a, float b, float c[8]);
extern void scalarArithmeticDouble(double a, double b, double c[8]);

void floatRoutine();
void doubleRoutine();

int main(int argc, char *argv[])
{
    while (1)
    {
        int mode;
        puts("Select mode:");
        puts("    0. float");
        puts("    1. double");
        printf("mode = ? ");
        scanf("%d", &mode);

        switch (mode)
        {
        case 0:
            floatRoutine();
            break;
        case 1:
            doubleRoutine();
            break;
        default:
            break;
        }
    }
    return 0;
}

void floatRoutine()
{
    while (1)
    {
        float a, b;
        float c[8];
        printf("a = ? ");
        scanf("%f", &a);
        printf("b = ? ");
        scanf("%f", &b);
        scalarArithmeticFloat(a, b, c);
        printf("%f + %f = %f\n", a, b, c[0]);
        printf("%f - %f = %f\n", a, b, c[1]);
        printf("%f * %f = %f\n", a, b, c[2]);
        printf("%f / %f = %f\n", a, b, c[3]);
        printf("min %f %f = %f\n", a, b, c[4]);
        printf("max %f %f = %f\n", a, b, c[5]);
        printf("abs %f = %f\n", b, c[6]);
        printf("sqrt %f = %f\n", b, c[7]);
    }
}

void doubleRoutine()
{
}