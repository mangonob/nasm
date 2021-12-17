#ifndef __DESC_H__
#define __DESC_H__

#include "mmxVal.h"

typedef void (*MmxToStringFunc)(char *buff, MmxVal a);

void i8ToString(char *buff, MmxVal a);

void i16ToString(char *buff, MmxVal a);

void i32ToString(char *buff, MmxVal a);

void i64ToString(char *buff, MmxVal a);

void u8ToString(char *buff, MmxVal a);

void u16ToString(char *buff, MmxVal a);

void u32ToString(char *buff, MmxVal a);

void u64ToString(char *buff, MmxVal a);

void x8ToString(char *buff, MmxVal a);

void x16ToString(char *buff, MmxVal a);

void x32ToString(char *buff, MmxVal a);

void x64ToString(char *buff, MmxVal a);

#endif