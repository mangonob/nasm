test: main.out
	./main.out

all: fibo.out main.out integerMulDiv.out signedMax.out

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

signedMax.out: signedMax_.asm signedMax.c
	nasm -f macho64 -o signedMax_.o signedMax_.asm
	gcc -c signedMax.c
	cc -o signedMax.out signedMax.o signedMax_.o

arraySum.out: arraySum_.asm arraySum.c
	nasm -f macho64 -o arraySum_.o arraySum_.asm
	gcc -c arraySum.c
	cc -o arraySum.out arraySum.o arraySum_.o

matrixSum.out: matrixSum_.asm matrixSum.c
	nasm -f macho64 -o matrixSum_.o matrixSum_.asm
	gcc -c matrixSum.c
	cc -o matrixSum.out matrixSum.o matrixSum_.o

structSum.out: Value.asm Value.h structSum_.asm structSum.c
	nasm -f macho64 -o structSum_.o structSum_.asm
	gcc -c structSum.c
	cc -o structSum.out structSum.o structSum_.o

newStruct.out: newStruct_.asm newStruct.c
	nasm -f macho64 -o newStruct_.o newStruct_.asm
	gcc -c newStruct.c
	cc -o newStruct.out newStruct.o newStruct_.o

.PHONY clean: 
	- rm *.o *.out