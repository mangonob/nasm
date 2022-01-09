; ----------------------------------------------------------------
;
; void arithmetic(double a, double b, double result[8]);
; ----------------------------------------------------------------

    global  _arithmetic

    section .text
_arithmetic:
    push    rbp
    mov     rbp, rsp

    mov     [rbp-8], rdi
    mov     [rbp-16], rsi
    movsd   xmm0, [rbp-8]
    movsd   xmm1, [rbp-16]

    pop     rbp
    ret