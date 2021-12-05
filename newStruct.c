#include <stdio.h>
#include <stdlib.h>
#include "Value.h"

extern Value *newValue(int8_t val8, int16_t val16, int32_t val32, int64_t val64);
extern void deallocValue(Value *ptr);

int main(int argc, char *argv[])
{
    Value *val = newValue(-4, 2, 4, 43);
    deallocValue(val);
    return 0;
}