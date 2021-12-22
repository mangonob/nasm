; ----------------------------------------------------------------
;
; void leastSquares(const double *x, const double *y, int length, double *k, double *b);
;
; ----------------------------------------------------------------

    global  _leastSquares

    section .text
_leastSquares:
    push    rbp
    mov     rbp, rsp

    mov     [rbp-8], rcx
    mov     [rbp-16], rdx
    mov     ecx, edx
    shr     ecx, 1

    xorpd   xmm2, xmm2      ; sum_x
    xorpd   xmm3, xmm3      ; sum_y
    xorpd   xmm4, xmm4      ; sum_xx
    xorpd   xmm5, xmm5      ; sum_xy

sum_loop:
    movapd  xmm0, [rdi]
    movapd  xmm1, [rsi]
    addpd   xmm2, xmm0
    addpd   xmm3, xmm1
    mulpd   xmm1, xmm0
    mulpd   xmm0, xmm0
    addpd   xmm4, xmm0
    addpd   xmm5, xmm1
    add     rdi, 16
    add     rsi, 16
    dec     ecx
    or      ecx, ecx
    jnz     sum_loop

    haddpd  xmm2, xmm2
    haddpd  xmm3, xmm3
    haddpd  xmm4, xmm4
    haddpd  xmm5, xmm5
    and     edx, 1
    jz      cal_avg
    movsd   xmm0, [rdi]
    movsd   xmm1, [rsi]
    addsd   xmm2, xmm0
    addsd   xmm3, xmm1
    mulsd   xmm1, xmm0
    addsd   xmm5, xmm1
    mulsd   xmm0, xmm0
    addsd   xmm4, xmm0

cal_avg:
    cvtsi2sd    xmm0, [rbp-16]   ; length
    divsd   xmm2, xmm0      ; x'
    divsd   xmm3, xmm0      ; y'
    divsd   xmm4, xmm0      ; xx'
    divsd   xmm5, xmm0      ; xy'
    movsd   xmm0, xmm2      ; x'
    mulsd   xmm0, xmm3      ; x'*y'
    movsd   xmm1, xmm5      ; xy'
    subsd   xmm1, xmm0      ; xy' - x'y'
    movsd   [rbp-16], xmm1
    movsd   xmm0, xmm2      ; x'
    mulsd   xmm0, xmm0      ; x'^2
    movsd   xmm1, xmm4      ; xx'
    subsd   xmm1, xmm0      ; xx' - x'^2
    movsd   xmm0, [rbp-16]
    divsd   xmm0, xmm1      ; k
    mov     rcx, [rbp-8]
    movsd   [rcx], xmm0

    mulsd   xmm0, xmm2
    subsd   xmm3, xmm0
    movsd   [r8], xmm3

    pop     rbp
    ret