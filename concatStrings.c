#include <stdio.h>

extern void concatStrings(char *dst, char *src[], int length);

int main(int argc, char *argv[])
{
    char *strings[] = {
        "To be or not to be, that is the question",
        "If you have a procedure with 10 parameters, you probably missed some.",
        "What can it mean? It means nothing.",
    };
    char buff[1024] = {0};

    concatStrings(buff, strings, sizeof(strings) / sizeof(char *));
    printf("%s\n", buff);

    return 0;
}