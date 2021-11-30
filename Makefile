test: main.out
	./main.out

all: fibo.out main.out integerMulDiv.out

source.o: source.c
	gcc -c source.c

fibo.out: fibo.asm source.o
	nasm -f macho64 -o fibo.o fibo.asm
	cc -o fibo.out fibo.o source.o

main.out: main.asm source.o
	nasm -f macho64 -o main.o main.asm
	cc -o main.out main.o

integerMulDiv.out: integerMulDiv_.asm integerMulDiv.c
	nasm -f macho64 -o integerMulDiv_.o integerMulDiv_.asm
	gcc -c integerMulDiv.c
	cc -o integerMulDiv.out integerMulDiv.o integerMulDiv_.o

memoryAddress.out: memoryAddress_.asm memoryAddress.c
	nasm -f macho64 -o memoryAddress_.o memoryAddress_.asm
	gcc -c memoryAddress.c
	cc -o memoryAddress.out memoryAddress.o memoryAddress_.o

.PHONY clean: 
	- rm *.o *.out