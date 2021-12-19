#include <stdio.h>
#include <stdlib.h>

extern void compareFloat(float a, float b, int *results);
extern void compareDouble(double a, double b, int *results);

void floatRoutine();
void doubleRoutine();

const int OPERATE_COUNT = 7;
const char *operations[OPERATE_COUNT] = {"??", "<", "<=", "==", "!=", ">", ">="};

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
        int results[8] = {0};
        printf("a = ? ");
        scanf("%f", &a);
        printf("b = ? ");
        scanf("%f", &b);
        compareFloat(a, b, results);
        for (int i = 0; i < OPERATE_COUNT; ++i)
        {
            printf("%f %2s %f : %s\n", a, operations[i], b, results[i] ? "true" : "false");
        }
        puts("");
    }
}

void doubleRoutine()
{
    while (1)
    {
        double a, b;
        int results[8] = {0};
        printf("a = ? ");
        scanf("%lf", &a);
        printf("b = ? ");
        scanf("%lf", &b);
        compareDouble(a, b, results);
        for (int i = 0; i < OPERATE_COUNT; ++i)
        {
            printf("%lf %2s %lf : %s\n", a, operations[i], b, results[i] ? "true" : "false");
        }
        puts("");
    }
}