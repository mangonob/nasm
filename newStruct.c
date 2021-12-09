#include <stdio.h>
#include <stdlib.h>
#include "Value.h"

extern Value *newValue(int8_t val8, int16_t val16, int32_t val32, int64_t val64);
extern void deallocValue(Value *ptr);

int main(int argc, char *argv[])
{
    Value *val = newValue(100, -43, INT32_MIN, INT64_MAX);
    printf("%d %d %d %ld\n", (int)val->val8, (int)val->val16, (int)val->val32, (long)val->val64);
    deallocValue(val);
    return 0;
}