; ----------------------------------------------------------------
;
; void packInteger(XmmVal *a, XmmVal *b, XmmVal c[5]);
; ----------------------------------------------------------------

    global  _packInteger

    section .text
_packInteger:
    push    rbp
    mov     rbp, rsp

    movdqa  xmm0, [rdi]
    movdqa  xmm1, [rsi]

    movdqa  xmm2, xmm0
    movdqa  xmm3, xmm0
    movdqa  xmm4, xmm0
    movdqa  xmm5, xmm0
    movdqa  xmm6, xmm0

    paddw   xmm2, xmm1
    paddsw  xmm3, xmm1
    psubw   xmm4, xmm1
    pmulld  xmm5, xmm1
    pmuldq  xmm6, xmm1

    movdqa  [rdx], xmm2
    movdqa  [rdx+10h], xmm3
    movdqa  [rdx+20h], xmm4
    movdqa  [rdx+30h], xmm5
    movdqa  [rdx+40h], xmm6

    pop     rbp
    ret