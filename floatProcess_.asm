; ----------------------------------------------------------------
;
; double _mpow(double a, int n);
; double _msin(double rad);
; double _mcos(double rad);
; double _msqrt(double a);
;
; ----------------------------------------------------------------

    global  _mpow
    global  _msin
    global  _mcos
    global  _mpi
    global  _msqrt

_mpow:
    push    rbp
    mov     rbp, rsp
    push    rdi

    movsd   qword [rbp-8], xmm0     ; save a in stack
    fld1                            ; st[1]
    fld     qword [rbp-8]           ; st[a, 1.0]
.pow_loop:
    or      edi, edi
    jz      .end_pow_loop
    mov     ecx, 1
    and     ecx, edi
    jz      .ignore
    fmul    st1, st0
.ignore:
    fld     st0
    fmulp   st1, st0
    shr     edi, 1
    jmp     .pow_loop

.end_pow_loop:
    fstp    st0
    fstp    qword [rbp-8]
    movsd   xmm0, qword [rbp-8]

    pop     rdi
    pop     rbp
    ret

_msin:
    push    rbp
    mov     rbp, rsp

    movsd   qword [rbp-8], xmm0
    fld     qword [rbp-8]
    fsin
    fstp    qword [rbp-8]
    movsd   xmm0, qword [rbp-8]

    pop     rbp
    ret

_mcos:
    push    rbp
    mov     rbp, rsp

    movsd   qword [rbp-8], xmm0
    fld     qword [rbp-8]
    fcos
    fstp    qword [rbp-8]
    movsd   xmm0, qword [rbp-8]

    pop     rbp
    ret

_msqrt:
    push    rbp
    mov     rbp, rsp

    movsd   qword [rbp-8], xmm0
    fld     qword [rbp-8]
    fsqrt
    fstp    qword [rbp-8]
    movsd   xmm0, qword [rbp-8]

    pop     rbp
    ret

    section .data
_mpi:
    dq      3.141592653589793