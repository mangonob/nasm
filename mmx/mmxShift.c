#include <stdio.h>
#include "mmxVal.h"
#include "desc.h"

extern void mmxShift(MmxVal src, MmxShiftMode mode, int count, MmxVal *dst);

void preview(MmxToStringFunc previewFunc, MmxVal a, MmxShiftMode mode, int count, MmxVal *dst);

int main(int argc, char *argv[])
{
    MmxVal a, b;
    int count = 2;

    a.u16[0] = 0x1234;
    a.u16[1] = 0xFF00;
    a.u16[2] = 0x00CC;
    a.u16[3] = 0x8080;

    preview(x16ToString, a, MmxShiftModeRLW, count, &b);
    preview(x16ToString, a, MmxShiftModeRAW, count, &b);

    a.u32[0] = 0x00010001;
    a.u32[1] = 0x80008000;
    count = 3;

    preview(x32ToString, a, MmxShiftModeLLD, count, &b);
    preview(x32ToString, a, MmxShiftModeRLD, count, &b);
    preview(x32ToString, a, MmxShiftModeRAD, count, &b);

    return 0;
}

char *modeDescription(MmxShiftMode mode);

void preview(MmxToStringFunc previewFunc, MmxVal src, MmxShiftMode mode, int count, MmxVal *dst)
{
    char buff[1024];
    previewFunc(buff, src);
    printf("%s\n", buff);
    mmxShift(src, mode, count, dst);
    previewFunc(buff, *dst);
    printf("%s (%d %s) \n\n", buff, count, modeDescription(mode));
}

char *modeDescription(MmxShiftMode mode)
{
    switch (mode)
    {
    case MmxShiftModeLLW:
        return "LLW";
    case MmxShiftModeRLW:
        return "RLW";
    case MmxShiftModeRAW:
        return "RAW";
    case MmxShiftModeLLD:
        return "LLD";
    case MmxShiftModeRLD:
        return "RLD";
    case MmxShiftModeRAD:
        return "RAD";
    }
}