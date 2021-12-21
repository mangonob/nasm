#ifndef __MMXVal_H__
#define __MMXVal_H__
#include <stdlib.h>

typedef union
{
    int8_t i8[8];
    int16_t i16[4];
    int32_t i32[2];
    int64_t i64[1];
    uint8_t u8[8];
    uint16_t u16[4];
    uint32_t u32[2];
    uint64_t u64[1];
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