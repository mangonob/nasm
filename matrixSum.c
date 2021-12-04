#include <stdio.h>

extern int matrixSum(int *a, int row, int col, int *rowSums, int *colSums);

#define M 4
#define N 3

int main(int argc, char *argv[])
{
    int a[M][N] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9},
        {10, 11, 12},
    };

    int colSums[M] = {0};
    int rowSums[N] = {0};

    matrixSum(a[0], M, N, rowSums, colSums);

    return 0;
}