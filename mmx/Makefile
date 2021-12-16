mmxAddition.out: mmxAddition_.asm mmxVal.h mmxAddition.c
	nasm -f macho64 -o mmxAddition_.o mmxAddition_.asm
	gcc -c mmxAddition.c
	cc -o mmxAddition.out mmxAddition.o mmxAddition_.o

.PHONY clean:
	- rm *.o *.out