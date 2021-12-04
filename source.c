#include <stdio.h>

int fibo(int n)
{
    if (n <= 0)
        return 1;
    else
        return fibo(n - 1) + fibo(n - 2);
}

void i()
{
    int a[40][20];

    for (int i = 1; i < 3; ++i)
    {
        puts("");
        for (int j = 2; j < 7; ++j)
        {
            printf("%d", a[i][j]);
        }
    }
}
