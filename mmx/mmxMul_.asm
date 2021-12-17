; ----------------------------------------------------------------
;
; void mmxMul(MmxVal a, MmxVal b, MmxVal *prdLow, MmxVal *prdHigh);
;
; ----------------------------------------------------------------

    global  _mmxMul
    section .text
_mmxMul:
    push    rbp
    mov     rbp, rsp

    movq    mm0, rdi
    movq    mm1, rsi
    movq    mm2, mm0
    pmullw  mm0, mm1
    pmulhw  mm1, mm2

    movq    mm2, mm0
    punpcklwd   mm0, mm1
    punpckhwd   mm2, mm1

    movq    [rdx], mm0
    movq    [rcx], mm2
    emms

    pop     rbp
    ret