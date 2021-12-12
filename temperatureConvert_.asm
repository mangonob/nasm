; ----------------------------------------------------------------
; double fToC(double f);
;
; double cToF(double c);
; ----------------------------------------------------------------

    global  _fToC
    global  _cToF

    section .text
_fToC:
    push    rbp
    mov     rbp, rsp

    movsd   xmm1, qword [rel _k_9]
    movsd   xmm2, qword [rel _k_5]
    movsd   xmm3, qword [rel _k_32]
    subsd   xmm0, xmm3
    divsd   xmm2, xmm1
    mulsd   xmm0, xmm2

    pop     rbp
    ret

_cToF:
    push    rbp
    mov     rbp, rsp

    movsd   xmm1, qword [rel _k_9]
    movsd   xmm2, qword [rel _k_5]
    movsd   xmm3, qword [rel _k_32]
    divsd   xmm1, xmm2
    mulsd   xmm0, xmm1
    addsd   xmm0, xmm3

    pop     rbp
    ret

    section .data
_k_5:
    dq      5.0
_k_9:
    dq      9.0
_k_32:
    dq      32.0