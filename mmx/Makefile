mean.out: mean_.asm mean.c
	nasm -f macho64 mean_.asm -o mean_.o
	gcc -c mean.c
	cc -o mean.out mean.o mean_.o

minMax.out: minMax_.asm minMax.c
	nasm -f macho64 -o minMax_.o minMax_.asm
	gcc -c minMax.c
	cc -o minMax.out minMax.o minMax_.o

mmxMul.out: mmxMul_.asm mmxMul.c desc.o
	nasm -f macho64 -o mmxMul_.o mmxMul_.asm
	gcc -c mmxMul.c
	cc -o mmxMul.out mmxMul.o mmxMul_.o desc.o

mmxShift.out: mmxShift_.asm mmxShift.c desc.o
	nasm -f macho64 -o mmxShift_.o mmxShift_.asm
	gcc -c mmxShift.c
	cc -o mmxShift.out mmxShift.o mmxShift_.o desc.o

mmxAddition.out: mmxAddition_.asm mmxAddition.c desc.o
	nasm -f macho64 -o mmxAddition_.o mmxAddition_.asm
	gcc -c mmxAddition.c
	cc -o mmxAddition.out mmxAddition.o mmxAddition_.o desc.o

desc.o: mmxVal.h desc.h desc.c
	cc -c desc.c

.PHONY clean:
	- rm *.o *.out