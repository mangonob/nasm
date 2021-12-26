; ----------------------------------------------------------------
;
; void matrixMul(Mat4x4 des, Mat4x4 src1, Mat4x4 src2);
; ----------------------------------------------------------------

    global  _matrixMul
    global  _transformVectors

%macro transpose 0
    movaps      xmm4, xmm0
    movaps      xmm6, xmm0
    unpcklps    xmm4, xmm1
    unpckhps    xmm6, xmm1
    movaps      xmm5, xmm2
    movaps      xmm7, xmm2
    unpcklps    xmm5, xmm3
    unpckhps    xmm7, xmm3

    movaps      xmm0, xmm4
    movlhps     xmm4, xmm5
    movhlps     xmm5, xmm0

    movaps      xmm0, xmm7
    movhlps     xmm7, xmm6
    movlhps     xmm6, xmm0
%endmacro

    section .text
_matrixMul:
    push    rbp
    mov     rbp, rsp

    movaps  xmm0, [rdi]         ; xmm0 = a3 a2 a1 a0
    movaps  xmm1, [rdi+0x10]    ; xmm1 = b3 b2 b1 b0
    movaps  xmm2, [rdi+0x20]    ; xmm2 = c3 c2 c1 c0
    movaps  xmm3, [rdi+0x30]    ; xmm3 = d3 d2 d1 d0
    transpose

    mov     rcx, 4
    xor     rax, rax
cal_row:
    movaps  xmm0, [rsi+rax]

    movaps  xmm1, xmm0
    dpps    xmm1, xmm4, 11110001b
    insertps    xmm2, xmm1, 00000000b

    movaps  xmm1, xmm0
    dpps    xmm1, xmm5, 11110001b
    insertps    xmm2, xmm1, 00010000b

    movaps  xmm1, xmm0
    dpps    xmm1, xmm6, 11110001b
    insertps    xmm2, xmm1, 00100000b

    movaps  xmm1, xmm0
    dpps    xmm1, xmm7, 11110001b
    insertps    xmm2, xmm1, 00110000b

    movaps  [rdx+rax], xmm2

    add     rax, 16
    dec     rcx
    jnz     cal_row

    pop     rbp
    ret