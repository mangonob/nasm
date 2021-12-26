#include <stdio.h>
#include "Mat4x4/Mat4x4.h"

extern void matrixMul(Mat4x4 des, Mat4x4 src1, Mat4x4 src2);

int main(int argc, char *argv[])
{
    Mat4x4 m = {
        {0, 1, 2, 3},
        {4, 5, 6, 7},
        {8, 9, 10, 11},
        {12, 13, 14, 15},
    };
    Mat4x4 n = {
        {0, 1, 2, 3},
        {4, 5, 6, 7},
        {8, 9, 10, 11},
        {12, 13, 14, 15},
    };
    char buff[1024];
    Mat4x4 o;
    matrixMul(m, n, o);
    Mat4x4Printf(o, buff);
    return 0;
}