#ifndef __XMM_VAL_H__
#define __XMM_VAL_H__

#include <stdlib.h>

typedef union
{
    int8_t i8[16];
    int16_t i16[8];
    int32_t i32[4];
    int64_t i64[2];

    uint8_t u8[16];
    uint16_t u16[8];
    uint32_t u32[4];
    uint64_t u64[2];

    float r32[4];
    double r64[2];
} XmmVal;

#endif