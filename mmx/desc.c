#include <stdio.h>
#include "desc.h"

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

void x8ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X",
            (unsigned char)a.i8[0], (unsigned char)a.i8[1], (unsigned char)a.i8[2], (unsigned char)a.i8[3],
            (unsigned char)a.i8[4], (unsigned char)a.i8[5], (unsigned char)a.i8[6], (unsigned char)a.i8[7]);
}

void x16ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%04X|%04X|%04X|%04X",
            (unsigned short)a.i16[0], (unsigned short)a.i16[1], (unsigned short)a.i16[2], (unsigned short)a.i16[3]);
}

void x32ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%08X|%08X", (unsigned int)a.i32[0], (unsigned int)a.i32[1]);
}

void x64ToString(char *buff, MmxVal a)
{
    sprintf(buff, "%16lX", (unsigned long)a.i64);
}