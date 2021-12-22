#include <stdio.h>
#include "desc.h"

void i8ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d|%4d",
            (int)a.i8[0], (int)a.i8[1], (int)a.i8[2], (int)a.i8[3],
            (int)a.i8[4], (int)a.i8[5], (int)a.i8[6], (int)a.i8[7],
            (int)a.i8[8], (int)a.i8[9], (int)a.i8[10], (int)a.i8[11],
            (int)a.i8[12], (int)a.i8[13], (int)a.i8[14], (int)a.i8[15]);
}

void i16ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%d|%d|%d|%d", (int)a.i16[0], (int)a.i16[1], (int)a.i16[2], (int)a.i16[3]);
}

void i32ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%d|%d|%d|%d",
            (int)a.i32[0], (int)a.i32[1],
            (int)a.i32[2], (int)a.i32[3]);
}

void i64ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%ld|%ld", (long)a.i64[0], (long)a.i64[1]);
}

void u8ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u|%4u",
            (unsigned int)a.u8[0], (unsigned int)a.u8[1], (unsigned int)a.u8[2], (unsigned int)a.u8[3],
            (unsigned int)a.u8[4], (unsigned int)a.u8[5], (unsigned int)a.u8[6], (unsigned int)a.u8[7],
            (unsigned int)a.u8[8], (unsigned int)a.u8[9], (unsigned int)a.u8[10], (unsigned int)a.u8[11],
            (unsigned int)a.u8[12], (unsigned int)a.u8[13], (unsigned int)a.u8[14], (unsigned int)a.u8[15]);
}

void u16ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%u|%u|%u|%u|%u|%u|%u|%u",
            (unsigned int)a.u16[0], (unsigned int)a.u16[1], (unsigned int)a.u16[2], (unsigned int)a.u16[3],
            (unsigned int)a.u16[4], (unsigned int)a.u16[5], (unsigned int)a.u16[6], (unsigned int)a.u16[7]);
}

void u32ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%u|%u|%u|%u",
            (unsigned int)a.u32[0], (unsigned int)a.u32[1],
            (unsigned int)a.u32[2], (unsigned int)a.u32[3]);
}

void u64ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%lu|%lu", (unsigned long)a.u64[0], (unsigned long)a.u64[1]);
}

void x8ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X|%02X",
            (unsigned char)a.i8[0], (unsigned char)a.i8[1], (unsigned char)a.i8[2], (unsigned char)a.i8[3],
            (unsigned char)a.i8[4], (unsigned char)a.i8[5], (unsigned char)a.i8[6], (unsigned char)a.i8[7],
            (unsigned char)a.i8[8], (unsigned char)a.i8[9], (unsigned char)a.i8[10], (unsigned char)a.i8[11],
            (unsigned char)a.i8[12], (unsigned char)a.i8[13], (unsigned char)a.i8[14], (unsigned char)a.i8[15]);
}

void x16ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%04X|%04X|%04X|%04X|%04X|%04X|%04X|%04X",
            (unsigned short)a.i16[0], (unsigned short)a.i16[1], (unsigned short)a.i16[2], (unsigned short)a.i16[3],
            (unsigned short)a.i16[4], (unsigned short)a.i16[5], (unsigned short)a.i16[6], (unsigned short)a.i16[7]);
}

void x32ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%08X|%08X|%08X|%08X",
            (unsigned int)a.i32[0], (unsigned int)a.i32[1],
            (unsigned int)a.i32[2], (unsigned int)a.i32[3]);
}

void x64ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%16lX|%16lX", (unsigned long)a.i64[0], (unsigned long)a.i64[1]);
}

void r32ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%.4f|%.4f|%.4f|%.4f", a.r32[0], a.r32[1], a.r32[2], a.r32[3]);
}

void r64ToString(char *buff, XmmVal a)
{
    sprintf(buff, "%.4f|%.4f", a.r64[0], a.r64[1]);
}
