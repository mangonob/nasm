#ifndef __MMXVal_H__
#define __MMXVal_H__
#include <stdio.h>

typedef union
{
    __INT8_TYPE__ i8[8];
    __INT16_TYPE__ i16[4];
    __INT32_TYPE__ i32[2];
    __INT64_TYPE__ i64[1];
    __UINT8_TYPE__ u8[8];
    __UINT16_TYPE__ u16[4];
    __UINT32_TYPE__ u32[2];
    __UINT64_TYPE__ u64[1];
} MmxVal;

typedef enum
{
    MmxAddModePaddb,
    MmxAddModePaddsb,
    MmxAddModePaddusb,
    MmxAddModePaddw,
    MmxAddModePaddsw,
    MmxAddModePaddusw,
    MmxAddModePaddd,
} MmxAddMode;

typedef enum
{
    MmxShiftModeLLW,
    MmxShiftModeRLW,
    MmxShiftModeRAW,
    MmxShiftModeLLD,
    MmxShiftModeRLD,
    MmxShiftModeRAD,
} MmxShiftMode;

#endif