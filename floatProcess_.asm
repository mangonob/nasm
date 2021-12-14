; ----------------------------------------------------------------
;
;  double _pow(double a, int n);
;
; ----------------------------------------------------------------

    global  _mpow

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