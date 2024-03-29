test: main.out
	./main.out

all: fibo.out main.out integerMulDiv.out signedMax.out

source.o: source.c
	gcc -c source.c

fibo.out: fibo.asm source.o
	nasm -f macho64 -o fibo.o fibo.asm
	cc -o fibo.out fibo.o source.o

example.out: example.c
	cc -o example.out example.c

main.out: main.asm source.o
	nasm -f macho64 -o main.o main.asm
	cc -o main.out main.o

printSelf.out: printSelf.asm
	nasm -f macho64 -o printSelf.o printSelf.asm
	cc -o printSelf.out printSelf.o

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

newStruct.out: Value.asm Value.h newStruct_.asm newStruct.c
	nasm -f macho64 -o newStruct_.o newStruct_.asm
	gcc -c newStruct.c
	cc -o newStruct.out newStruct.o newStruct_.o

countChars.out: countChars_.asm countChars.c
	nasm -f macho64 -o countChars_.o countChars_.asm
	gcc -c countChars.c
	cc -o countChars.out countChars.o countChars_.o

concatStrings.out: concatStrings_.asm concatStrings.c
	nasm -f macho64 -o concatStrings_.o concatStrings_.asm
	gcc -c concatStrings.c
	cc -o concatStrings.out concatStrings.o concatStrings_.o

arrayCmp.out: arrayCmp_.asm arrayCmp.c
	nasm -f macho64 -o arrayCmp_.o arrayCmp_.asm
	gcc -c arrayCmp.c
	cc -o arrayCmp.out arrayCmp.o arrayCmp_.o

temperatureConvert.out: temperatureConvert_.asm temperatureConvert.c
	nasm -f macho64 -o temperatureConvert_.o temperatureConvert_.asm
	gcc -c temperatureConvert.c
	cc -o temperatureConvert.out temperatureConvert.o temperatureConvert_.o

floatProcess.out: floatProcess_.asm floatProcess.c
	nasm -f macho64 -o floatProcess_.o floatProcess_.asm
	gcc -c floatProcess.c
	cc -o floatProcess.out floatProcess.o floatProcess_.o

.PHONY clean: 
	- rm *.o *.out