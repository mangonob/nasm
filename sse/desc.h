#ifndef __DESC_H__
#define __DESC_H__

#include "xmmVal.h"

typedef void (*MmxToStringFunc)(char *buff, XmmVal a);

void i8ToString(char *buff, XmmVal a);

void i16ToString(char *buff, XmmVal a);

void i32ToString(char *buff, XmmVal a);

void i64ToString(char *buff, XmmVal a);

void u8ToString(char *buff, XmmVal a);

void u16ToString(char *buff, XmmVal a);

void u32ToString(char *buff, XmmVal a);

void u64ToString(char *buff, XmmVal a);

void x8ToString(char *buff, XmmVal a);

void x16ToString(char *buff, XmmVal a);

void x32ToString(char *buff, XmmVal a);

void x64ToString(char *buff, XmmVal a);

void r32ToString(char *buff, XmmVal a);

void r64ToString(char *buff, XmmVal a);

#endif