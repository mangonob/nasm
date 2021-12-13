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

    movsd   qword [rbp-8], xmm0
    fld     qword [rel _kFToC]
    fld     qword [rbp-8]
    fild    qword [rel _kOffset]
    fsubp
    fmulp
    fst     qword [rbp-8]
    movsd   xmm0, qword [rbp-8]

    pop     rbp
    ret

_cToF:
    push    rbp
    mov     rbp, rsp

    movsd   qword [rbp-8], xmm0
    fild    qword [rel _kOffset]
    fld     qword [rel _kCToF]
    fld     qword [rbp-8]
    fmulp
    faddp
    fst     qword [rbp-8]
    movsd   xmm0, qword [rbp-8]

    pop     rbp
    ret

    section .data
_kFToC:
    dq      0.5555555555555556
_kCToF:
    dq      1.8
_kOffset:
    dq      32