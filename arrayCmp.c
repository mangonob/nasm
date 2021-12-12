#include <stdio.h>

extern int min(int a, int b);
extern int arrayCmp(int *a, int sizeA, int *b, int sizeB);

int main(int argc, char *argv[])
{
    int a[] = {12, 4, 123, 2};
    int b[] = {12, 4, 1, 2};

    int sizeA = sizeof(a) / sizeof(int);
    int sizeB = sizeof(b) / sizeof(int);

    int result = arrayCmp(a, sizeA, b, sizeB);
    printf("%d\n", result);

    return 0;
}