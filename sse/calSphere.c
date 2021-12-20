#include <stdio.h>

extern void calSphere(double r, double *area, double *volume);

int main(int argc, char *argv[])
{
    while (1)
    {
        double r, area, volumn;
        printf("R = ? ");
        scanf("%lf", &r);
        calSphere(r, &area, &volumn);
        printf("Area = %.2f\n", area);
        printf("Volumn = %.2f\n", volumn);
        puts("");
    }
    return 0;
}