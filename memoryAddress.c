#include <stdio.h>

extern int memoryAddress(int n);

int main(int argc, char *argv[])
{
    int n;

    while (1)
    {
        printf("n = ? ");
        scanf("%d", &n);
        printf("fibo (%d) = %d\n", n, memoryAddress(n));
    }
}