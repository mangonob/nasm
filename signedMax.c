#include <stdio.h>

extern int signedMax(int a, int b, int c);

int main(int argc, char *argv[])
{
    int a, b, c;

    while (1)
    {
        printf("a = ? ");
        scanf("%d", &a);
        printf("b = ? ");
        scanf("%d", &b);
        printf("c = ? ");
        scanf("%d", &c);

        printf("max(%d, %d, %d) = %d\n", a, b, c, signedMax(a, b, c));
    }

    return 0;
}