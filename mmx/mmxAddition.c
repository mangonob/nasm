#include <stdio.h>
#include "mmxVal.h"

typedef void (*MmxToStringFunc)(char *buff, MmxVal a);

extern MmxVal mmxAdd(MmxVal a, MmxVal b, MmxAddMode mode);
void i8ToString(char *buff, MmxVal a);
void i16ToString(char *buff, MmxVal a);
void i32ToString(char *buff, MmxVal a);
void i64ToString(char *buff, MmxVal a);
void u8ToString(char *buff, MmxVal a);
void u16ToString(char *buff, MmxVal a);
void u32ToString(char *buff, MmxVal a);
void u64ToString(char *buff, MmxVal a);
void previewAdd(MmxToStringFunc previewFunc, MmxVal a, MmxVal b, MmxAddMode mode);

int main(int argc, char *argv[])
{
    MmxVal a, b;

    a.i8[0] = 50;
    a.i8[1] = 80;
    a.i8[2] = -27;
    a.i8[3] = -70;

    a.i8[4] = -42;
    a.i8[5] = 60;
    a.i8[6] = 64;
    a.i8[7] = 100;

    b.i8[0] = 30;
    b.i8[1] = 64;
    b.i8[2] = -32;
    b.i8[3] = -80;

    b.i8[4] = 90;
    b.i8[5] = -85;
    b.i8[6] = 90;
    b.i8[7] = -30;

    previewAdd(i8ToString, a, b, MmxAddModePaddb);
    previewAdd(i8ToString, a, b, MmxAddModePaddsb);

    a.u8[0] = 50;
    a.u8[1] = 80;
    a.u8[2] = 132;
    a.u8[3] = 200;

    a.u8[4] = 42;
    a.u8[5] = 60;
    a.u8[6] = 140;
    a.u8[7] = 10;

    b.u8[0] = 30;
    b.u8[1] = 64;
    b.u8[2] = 130;
    b.u8[3] = 80;

    b.u8[4] = 90;
    b.u8[5] = 85;
    b.u8[6] = 160;
    b.u8[7] = 14;

    previewAdd(u8ToString, a, b, MmxAddModePaddb);
    previewAdd(u8ToString, a, b, MmxAddModePaddusb);

    a.i16[0] = 550;
    a.i16[1] = 30000;
    a.i16[2] = -270;
    a.i16[3] = -7000;

    b.i16[0] = 830;
    b.i16[1] = 5000;
    b.i16[2] = -320;
    b.i16[3] = -32000;

    previewAdd(i16ToString, a, b, MmxAddModePaddw);
    previewAdd(i16ToString, a, b, MmxAddModePaddsw);

    a.u16[0] = 50;
    a.u16[1] = 48000;
    a.u16[2] = 132;
    a.u16[3] = 10000;

    b.u16[0] = 30;
    b.u16[1] = 20000;
    b.u16[2] = 130;
    b.u16[3] = 60000;

    previewAdd(u16ToString, a, b, MmxAddModePaddw);
    previewAdd(u16ToString, a, b, MmxAddModePaddusw);

    return 0;
}

char *modeDescription(MmxAddMode mode);

void previewAdd(MmxToStringFunc previewFunc, MmxVal a, MmxVal b, MmxAddMode mode)
{
    char *modeDecs;
    char buff[1024];

    previewFunc(buff, a);
    printf("a = %s\n", buff);
    previewFunc(buff, b);
    printf("b = %s\n", buff);
    MmxVal c = mmxAdd(a, b, mode);
    previewFunc(buff, c);
    printf("+ = %s (%s)\n\n", buff, modeDescription(mode));
}

char *modeDescription(MmxAddMode mode)
{
    switch (mode)
    {
    case MmxAddModePaddb:
        return "Paddb";
    case MmxAddModePaddsb:
        return "Paddsb";
    case MmxAddModePaddusb:
        return "Paddusb";
    case MmxAddModePaddw:
        return "Paddw";
    case MmxAddModePaddsw:
        return "Paddsw";
    case MmxAddModePaddusw:
        return "Paddusw";
    case MmxAddModePaddd:
        return "Paddd";
    }
}

void i8ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d",
            (int)a.i8[0], (int)a.i8[1], (int)a.i8[2], (int)a.i8[3],
            (int)a.i8[4], (int)a.i8[5], (int)a.i8[6], (int)a.i8[7]);
}

void i16ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%d|%d|%d|%d", (int)a.i16[0], (int)a.i16[1], (int)a.i16[2], (int)a.i16[3]);
}

void i32ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%d|%d", (int)a.i32[0], (int)a.i32[1]);
}

void i64ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%ld", (long)a.i64);
}

void u8ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u",
            (unsigned int)a.u8[0], (unsigned int)a.u8[1], (unsigned int)a.u8[2], (unsigned int)a.u8[3],
            (unsigned int)a.u8[4], (unsigned int)a.u8[5], (unsigned int)a.u8[6], (unsigned int)a.u8[7]);
}

void u16ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%u|%u|%u|%u",
            (unsigned int)a.u16[0], (unsigned int)a.u16[1], (unsigned int)a.u16[2], (unsigned int)a.u16[3]);
}

void u32ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%u|%u", (unsigned int)a.u32[0], (unsigned int)a.u32[1]);
}

void u64ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%lu", (unsigned long)a.u64);
}