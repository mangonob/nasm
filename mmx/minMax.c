#include <stdio.h>
#include <stdlib.h>

extern void minMax(uint8_t *arr, int length, uint8_t *min, uint8_t *max);

int main(int argc, char *argv[])
{
    uint8_t values[1024] = {0};
    uint8_t min, max;
    int length = 32;

    for (int i = 0; i < length; i++)
    {
        values[i] = arc4random() % 256;
        printf("%d, ", (int)values[i]);
    }
    puts("");
    minMax(values, length, &min, &max);
    printf("min: %d, max: %d\n", (int)min, (int)max);

    return 0;
}