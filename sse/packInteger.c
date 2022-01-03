#include <stdio.h>
#include "xmmVal.h"
#include "desc.h"

extern void packInteger(XmmVal *a, XmmVal *b, XmmVal c[5]);

int main(int argc, char *argv[])
{
    char buff[1024];
    XmmVal a, b, c[5];

    a.i16[0] = 10;
    a.i16[1] = 200;
    a.i16[2] = 30;
    a.i16[3] = -32766;
    a.i16[4] = 50;
    a.i16[5] = 60;
    a.i16[6] = 32000;
    a.i16[7] = -32000;

    b.i16[0] = 100;
    b.i16[1] = -200;
    b.i16[2] = 32760;
    b.i16[3] = -400;
    b.i16[4] = 500;
    b.i16[5] = -600;
    b.i16[6] = 1200;
    b.i16[7] = -950;

    i16ToString(buff, a);
    printf("a = %s\n", buff);
    i16ToString(buff, b);
    printf("a = %s\n", buff);
    packInteger(&a, &b, c);
    i16ToString(buff, c[0]);
    printf("a + b = %s\n", buff);
    i16ToString(buff, c[1]);
    printf("a +' b = %s\n", buff);
    i16ToString(buff, c[2]);
    printf("a - b = %s\n", buff);
    i16ToString(buff, c[3]);
    printf("a * b = %s\n", buff);
    i16ToString(buff, c[4]);
    printf("a *' b = %s\n", buff);

    return 0;
}