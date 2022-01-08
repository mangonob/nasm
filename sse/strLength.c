#include <stdio.h>

extern int strLength(char *str);

int main(int argc, char *argv[])
{
    char *ss[] = {
        "0",
        "00",
        "000",
        "0000",
        "00000",
        "000000",
        "0000000",
        "00000000",
        "000000000",
        "0000000000",
        "00000000000",
        "000000000000",
        "0000000000000",
        "00000000000000",
        "000000000000000",
        "0000000000000000",
        "00000000000000000",
        "000000000000000000",
        "0000000000000000000",
        "00000000000000000000",
        "000000000000000000000",
        "0000000000000000000000",
        "00000000000000000000000",
        "000000000000000000000000",
        "0000000000000000000000000",
        "00000000000000000000000000",
        "000000000000000000000000000",
        "0000000000000000000000000000",
        "00000000000000000000000000000",
        "000000000000000000000000000000",
        "0000000000000000000000000000000",
        "00000000000000000000000000000000",
        "000000000000000000000000000000000",
        "0000000000000000000000000000000000",
        "00000000000000000000000000000000000",
    };

    int n = sizeof(ss) / sizeof(ss[0]);
    for (int i = 0; i < n; ++i)
    {
        printf("%s: %d\n", ss[i], strLength(ss[i]));
    }

    return 0;
}