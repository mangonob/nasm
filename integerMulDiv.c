#include <stdio.h>

extern int integerMulDiv(int a, int b, int *prd, int *quo, int *rem);

int main(int argc, char *argv[])
{
    int a;
    int b;
    int prd, quo, rem;

    printf("a = ? ");
    scanf("%d", &a);
    printf("b = ? ");
    scanf("%d", &b);
    integerMulDiv(a, b, &prd, &quo, &rem);

    printf("%d * %d = %d\n", a, b, prd);
    printf("%d / %d = %d ... %d\n", a, b, quo, rem);
    return 0;
}