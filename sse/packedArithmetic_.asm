; ----------------------------------------------------------------
;
; void calPackedFloat(const XmmVal *a, const XmmVal *b, XmmVal c[8]);
; void calPackedDouble(const XmmVal *a, const XmmVal *b, XmmVal c[8]);
;
; ----------------------------------------------------------------

    global  _calPackedFloat
    global  _calPackedDouble

    section .text
_calPackedFloat:
    push    rbp
    mov     rbp, rsp

    movaps  xmm0, [rdi]
    movaps  xmm1, [rsi]

    movaps  xmm2, xmm0
    addps   xmm2, xmm1
    movaps  [rdx], xmm2

    movaps  xmm2, xmm0
    subps   xmm2, xmm1
    movaps  [rdx+10h], xmm2

    movaps  xmm2, xmm0
    mulps   xmm2, xmm1
    movaps  [rdx+20h], xmm2

    movaps  xmm2, xmm0
    divps   xmm2, xmm1
    movaps  [rdx+30h], xmm2

    movaps  xmm2, xmm0
    andps   xmm2, [rel _32Abs]
    movaps  [rdx+40h], xmm2

    sqrtps  xmm2, xmm0
    movaps  [rdx+50h], xmm2

    movaps  xmm2, xmm0
    minps   xmm2, xmm1
    movaps  [rdx+60h], xmm2

    movaps  xmm2, xmm0
    maxps   xmm2, xmm1
    movaps  [rdx+70h], xmm2

    pop     rbp
    ret

_calPackedDouble:
    push    rbp
    mov     rbp, rsp

    movapd  xmm0, [rdi]
    movapd  xmm1, [rsi]

    movapd  xmm2, xmm0
    addpd   xmm2, xmm1
    movapd  [rdx], xmm2

    movapd  xmm2, xmm0
    subpd   xmm2, xmm1
    movapd  [rdx+10h], xmm2

    movapd  xmm2, xmm0
    mulpd   xmm2, xmm1
    movapd  [rdx+20h], xmm2

    movapd  xmm2, xmm0
    divpd   xmm2, xmm1
    movapd  [rdx+30h], xmm2

    movapd  xmm2, xmm0
    andpd   xmm2, [rel _64Abs]
    movapd  [rdx+40h], xmm2

    sqrtpd  xmm2, xmm0
    movapd  [rdx+50h], xmm2

    movapd  xmm2, xmm0
    minpd   xmm2, xmm1
    movapd  [rdx+60h], xmm2

    movapd  xmm2, xmm0
    maxpd   xmm2, xmm1
    movapd  [rdx+70h], xmm2

    pop     rbp
    ret

    section .data
_32Abs:
    dd      7fffffffh, 7fffffffh, 7fffffffh, 7fffffffh
_64Abs:
    dq      7fffffffffffffffh, 7fffffffffffffffh