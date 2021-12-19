compare.out: compare_.asm compare.c
	nasm -f macho64 -o compare_.o compare_.asm
	gcc -c compare.c
	cc -o compare.out compare.o compare_.o

scalarArithmetic.out: scalarArithmetic_.asm scalarArithmetic.c
	nasm -f macho64 -o scalarArithmetic_.o scalarArithmetic_.asm
	gcc -c scalarArithmetic.c
	cc -o scalarArithmetic.out scalarArithmetic.o scalarArithmetic_.o

.PHONY clean:
	- rm *.o *.out