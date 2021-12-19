#include <stdio.h>
#include "scalar.h"

extern XmmScalar convert(XmmScalar v, CvtType type);

int main(int argc, char *argv[])
{
    while (1)
    {
        XmmScalar v;
        CvtType type;
        puts("Select mode:");
        puts("    0. int32 to float");
        puts("    1. float to int32");
        puts("    2. int32 to double");
        puts("    3. double to int32");
        puts("    4. float to double");
        puts("    5. double to float");
        printf("mode = ? ");
        scanf("%d", &type);

        switch (type)
        {
        case CvtTypeI2f:
        {
            printf("? :: Int = ");
            scanf("%d", &v.u32);
            int i = v.u32;
            v = convert(v, type);
            printf("%d :: Int -> %f Float\n", i, v.f32);
        }
        break;
        case CvtTypeF2i:
        {
            printf("? :: Float = ");
            scanf("%f", &v.f32);
            float f = v.f32;
            v = convert(v, type);
            printf("%f :: Float -> %d Int\n", f, v.u32);
        }
        break;
        case CvtTypeI2d:
        {
            printf("? :: Int = ");
            scanf("%d", &v.u32);
            int i = v.u32;
            v = convert(v, type);
            printf("%d :: Int -> %lf Double\n", i, v.f64);
        }
        break;
        case CvtTypeD2i:
        {
            printf("? :: Double = ");
            scanf("%lf", &v.f64);
            double d = v.f64;
            v = convert(v, type);
            printf("%lf :: Double -> %d Int\n", d, v.u32);
        }
        break;
        case CvtTypeF2d:
        {
            printf("? :: Float = ");
            scanf("%f", &v.f32);
            float f = v.f32;
            v = convert(v, type);
            printf("%f :: Float -> %lf Double\n", f, v.f64);
        }
        break;
        case CvtTypeD2f:
        {
            printf("? :: Double = ");
            scanf("%lf", &v.f64);
            double d = v.f64;
            v = convert(v, type);
            printf("%lf :: Double -> %f Float\n", d, v.f32);
        }
        break;
        default:
            break;
        }

        puts("");
    }
    return 0;
}