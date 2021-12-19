; ----------------------------------------------------------------
;
; void scalarArithmeticFloat(float a, float b, float c[8]);
;
; void scalarArithmeticDouble(double a, double b, double c[8]);
; ----------------------------------------------------------------

    global  _scalarArithmeticFloat
    global  _scalarArithmeticDouble

    section .text
_scalarArithmeticFloat:
    push    rbp
    mov     rbp, rsp

    movss   xmm2, xmm0
    addss   xmm2, xmm1
    movss   [rdi], xmm2

    movss   xmm2, xmm0
    subss   xmm2, xmm1
    movss   [rdi+4], xmm2

    movss   xmm2, xmm0
    mulss   xmm2, xmm1
    movss   [rdi+8], xmm2

    movss   xmm2, xmm0
    divss   xmm2, xmm1
    movss   [rdi+12], xmm2

    movss   xmm2, xmm0
    minss   xmm2, xmm1
    movss   [rdi+16], xmm2

    movss   xmm2, xmm0
    maxss   xmm2, xmm1
    movss   [rdi+20], xmm2

    andps   xmm1, [rel floatAbsMask]
    movss   [rdi+24], xmm1

    sqrtss  xmm0, xmm1
    movss   [rdi+28], xmm0

    pop     rbp
    ret

_scalarArithmeticDouble:
    push    rbp
    mov     rbp, rsp

    movsd   xmm2, xmm0
    addsd   xmm2, xmm1
    movsd   [rdi], xmm2

    movsd   xmm2, xmm0
    subsd   xmm2, xmm1
    movsd   [rdi+8], xmm2

    movsd   xmm2, xmm0
    mulsd   xmm2, xmm1
    movsd   [rdi+16], xmm2

    movsd   xmm2, xmm0
    divsd   xmm2, xmm1
    movsd   [rdi+24], xmm2

    movsd   xmm2, xmm0
    minsd   xmm2, xmm1
    movsd   [rdi+32], xmm2

    movsd   xmm2, xmm0
    maxsd   xmm2, xmm1
    movsd   [rdi+40], xmm2

    andpd   xmm1, [rel doubleAbsMask]
    movsd   [rdi+48], xmm1

    sqrtsd  xmm0, xmm1
    movsd   [rdi+56], xmm0

    pop     rbp
    ret

    section .data
floatAbsMask: 
    dd      0x7fffffff
    align   16
doubleAbsMask:
    dq      0x7fffffffffffffff
    align   16