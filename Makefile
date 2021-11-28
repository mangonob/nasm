test: main
	./main

all: main fibo

source.o:
	gcc -c source.c

fibo: fibo.asm source.o
	nasm -f macho64 -o fibo.o fibo.asm
	cc -o fibo fibo.o source.o

main: main.asm source.o
	nasm -f macho64 -o main.o main.asm
	cc -o main main.o

.PHONY clean: 
	rm *.o *.out
	rm main fibo