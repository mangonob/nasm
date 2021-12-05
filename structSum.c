#include <stdio.h>
#include "Value.h"

extern int64_t structSum(Value *value);

int main(int argc, char *argv[])
{
    Value a = {};

    while (1)
    {
        printf("a.val8 = ? ");
        scanf("%d", (int *)&a.val8);
        printf("a.val16 = ? ");
        scanf("%d", (int *)&a.val16);
        printf("a.val32 = ? ");
        scanf("%d", (int *)&a.val32);
        printf("a.val64 = ? ");
        scanf("%ld", (long *)&a.val64);

        printf("result = %ld\n", (long)structSum(&a));
    }
    return 0;
}