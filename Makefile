main: a.out
	./a.out

a.out: main.asm
	nasm -f macho64 -o a.out main.asm
	cc a.out