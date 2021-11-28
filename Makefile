main: a.out
	./a.out

source.o:
	gcc -c source.c

a.out: main.asm source.o
	nasm -f macho64 -o a.out main.asm
	cc a.out source.o