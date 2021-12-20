; ----------------------------------------------------------------
;
; void calSphere(double r, double *area, double *volume);
; ----------------------------------------------------------------

    global  _calSphere

    section .text
_calSphere:
    push    rbp 
    mov     rbp, rsp

    movsd   xmm1, xmm0
    mulsd   xmm1, xmm0          ; r ^ 2
    movsd   xmm2, [rel pi]
    movsd   xmm3, [rel areaFactor]
    movsd   xmm4, xmm1
    mulsd   xmm4, xmm2
    mulsd   xmm4, xmm3
    movsd   [rdi], xmm4

    mulsd   xmm1, xmm0          ; r ^ 3
    mulsd   xmm1, xmm2
    movsd   xmm4, [rel volumnFactor]
    mulsd   xmm1, xmm3
    divsd   xmm1, xmm4
    movsd   [rsi], xmm1

    pop     rbp
    ret

    section .data
pi:
    dq      3.141592653589793
areaFactor:
    dq      __?float64?__(4.0)
volumnFactor:
    dq      __?float64?__(3.0)