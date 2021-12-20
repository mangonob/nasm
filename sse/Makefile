calSphere.out: calSphere_.asm calSphere.c
	nasm -f macho64 -o calSphere_.o calSphere_.asm
	gcc -c calSphere.c
	cc -o calSphere.out calSphere.o calSphere_.o

conversion.out: conversion_.asm scalar.h conversion.c
	nasm -f macho64 -o conversion_.o conversion_.asm
	gcc -c conversion.c
	cc -o conversion.out conversion.o conversion_.o

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