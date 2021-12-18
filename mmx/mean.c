#include <stdio.h>
#include <stdlib.h>

extern void mmxMean(const uint8_t *arr, int length, uint32_t *sum, double *mean);

int main(int argc, char *Aargv[])
{
    uint8_t arr[1024] = {0};
    int length = 512;
    uint32_t sum;
    double mean;

    for (int i = 0; i < length; ++i)
    {
        arr[i] = arc4random() % 256;
        printf("%d, ", (int)arr[i]);
    }
    puts("");
    mmxMean(arr, length, &sum, &mean);
    printf("sum: %d, mean: %f\n", (int)sum, mean);

    return 0;
}
