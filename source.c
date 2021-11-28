int fibo(int n)
{
    if (n <= 0)
        return 1;
    else
        return fibo(n - 1) + fibo(n - 2);
}

int i(int a, int b, int *prod, int *quo, int *rem)
{
    if (b == 0)
        return 0;

    *prod = a * b;
    *quo = a / b;
    *rem = a % b;

    return 1;
}