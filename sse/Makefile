matrix.out: matrix_.asm matrix.c Mat4x4.o
	nasm -f macho64 -o matrix_.o matrix_.asm
	gcc -c matrix.c
	cc -o matrix.out matrix.o matrix_.o Mat4x4.o

leastSquares.out: leastSquares_.asm leastSquares.c
	nasm -f macho64 -o leastSquares_.o leastSquares_.asm
	gcc -c leastSquares.c
	cc -o leastSquares.out leastSquares.o leastSquares_.o

packedArithmetic.out: packedArithmetic_.asm packedArithmetic.c desc.o
	nasm -f macho64 -o packedArithmetic_.o packedArithmetic_.asm
	gcc -c packedArithmetic.c
	cc -o packedArithmetic.out packedArithmetic.o packedArithmetic_.o desc.o

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

desc.o: xmmVal.h desc.h desc.c
	cc -c desc.c

Mat4x4.o: Mat4x4/Mat4x4.h Mat4x4/Mat4x4.c
	cc -c Mat4x4/Mat4x4.c

.PHONY clean:
	- rm *.o *.out