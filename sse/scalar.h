#ifndef __SSE_SCALAR_H__
#define __SSE_SCALAR_H__

#include <stdlib.h>

typedef union
{
    float f32;
    double f64;
    uint32_t u32;
    uint64_t u64;
} XmmScalar;

typedef enum
{
    CvtTypeI2f,
    CvtTypeF2i,
    CvtTypeI2d,
    CvtTypeD2i,
    CvtTypeF2d,
    CvtTypeD2f,
} CvtType;

#endif