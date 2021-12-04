#include <stdio.h>

extern int arraySum(int *a, int length);

#define ARRAY_LENGTH(a) (sizeof a / sizeof a[0])

int main(int argc, char *argv[])
{
    int a[] = {1, 2, 3, 5, 6};
    printf("result: %d\n", arraySum(a, ARRAY_LENGTH(a)));
}
