mmxShift.out: mmxShift_.asm mmxVal.h mmxShift.c desc.o
	nasm -f macho64 -o mmxShift_.o mmxShift_.asm
	gcc -c mmxShift.c
	cc -o mmxShift.out mmxShift.o mmxShift_.o desc.o

mmxAddition.out: mmxAddition_.asm mmxVal.h mmxAddition.c desc.o
	nasm -f macho64 -o mmxAddition_.o mmxAddition_.asm
	gcc -c mmxAddition.c
	cc -o mmxAddition.out mmxAddition.o mmxAddition_.o desc.o

desc.o: desc.h desc.c
	cc -c desc.c

.PHONY clean:
	- rm *.o *.out