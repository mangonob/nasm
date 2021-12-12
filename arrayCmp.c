#include <stdio.h>

extern int min(int a, int b);
extern int arrayCmp(int *a, int sizeA, int *b, int sizeB);
extern int arrayReverse(int *a, int size);

void cmpRoutine()
{
    int a[] = {12, 4, 123, 2};
    int b[] = {12, 4, 1, 2};

    int sizeA = sizeof(a) / sizeof(int);
    int sizeB = sizeof(b) / sizeof(int);

    int result = arrayCmp(a, sizeA, b, sizeB);
    printf("%d\n", result);
}

void reverseRoutine()
{
    int a[] = {1, 2, 3, 4, 5};
    int size = sizeof(a) / sizeof(int);

    arrayReverse(a, size);

    for (int i = 0; i < size; i++)
    {
        printf("%d, ", a[i]);
    }
    printf("\n");
}

int main(int argc, char *argv[])
{
    // cmpRoutine();
    reverseRoutine();
    return 0;
}
