#include <stdio.h>
#include "xmmVal.h"
#include "desc.h"

extern void calPackedFloat(const XmmVal *a, const XmmVal *b, XmmVal c[8]);
extern void calPackedDouble(const XmmVal *a, const XmmVal *b, XmmVal c[8]);

int main(int argc, char *argv[])
{
    XmmVal a, b;
    XmmVal rst[8];
    char buff[1024];

    a.r32[0] = 36.0f;
    a.r32[1] = 1.0 / 32.0f;
    a.r32[2] = 2.0f;
    a.r32[3] = 32.0f;

    b.r32[0] = -1.0 / 9.0f;
    b.r32[1] = 64.0f;
    b.r32[2] = -0.06250f;
    b.r32[3] = 8.666667f;

    calPackedFloat(&a, &b, rst);
    r32ToString(buff, a);
    printf("a: %s\n", buff);
    r32ToString(buff, b);
    printf("b: %s\n", buff);
    r32ToString(buff, rst[0]);
    printf("+: %s\n", buff);
    r32ToString(buff, rst[1]);
    printf("-: %s\n", buff);
    r32ToString(buff, rst[2]);
    printf("*: %s\n", buff);
    r32ToString(buff, rst[3]);
    printf("/: %s\n", buff);
    r32ToString(buff, rst[4]);
    printf("abs: %s\n", buff);
    r32ToString(buff, rst[5]);
    printf("sqrt: %s\n", buff);
    r32ToString(buff, rst[6]);
    printf("min: %s\n", buff);
    r32ToString(buff, rst[7]);
    printf("max: %s\n", buff);

    return 0;
}