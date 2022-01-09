arithmetic.out: arithmetic_.asm arithmetic.c
	nasm -f macho64 -o arithmetic_.o arithmetic_.asm
	gcc -c arithmetic.c
	cc -o arithmetic.out arithmetic.o arithmetic_.o

.PHONY clean:
	- rm *.o *.out