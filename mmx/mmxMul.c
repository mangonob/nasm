#include <stdio.h>
#include "desc.h"

extern void mmxMul(MmxVal a, MmxVal b, MmxVal *prdLow, MmxVal *prdHigh);

int main(int argc, char *argv[])
{
    MmxVal a, b, prd_lo, prd_hi;
    char buff[1024];

    a.i16[0] = 10;
    a.i16[1] = 30;
    a.i16[2] = -50;
    a.i16[3] = -70;

    b.i16[0] = 2000;
    b.i16[1] = -4000;
    b.i16[2] = 6000;
    b.i16[3] = -8000;

    mmxMul(a, b, &prd_lo, &prd_hi);

    i16ToString(buff, a);
    printf("a = %s\n", buff);
    i16ToString(buff, b);
    printf("b = %s\n", buff);
    i32ToString(buff, prd_lo);
    printf("* = %s", buff);
    i32ToString(buff, prd_hi);
    printf("|%s\n", buff);

    return 0;
}