#include <stdio.h>

extern int countChars(char *s, char c);

int main(int argc, char *argv[])
{
    char str[] = "mangonobox";
    printf("%d\n", countChars(str, 'o'));
    return 0;
}