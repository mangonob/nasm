; ----------------------------------------------------------------
;
; XmmScalar convert(XmmScalar v, CvtType type);
;
; ----------------------------------------------------------------

    global  _convert

    section .text
_convert:
    push    rbp
    mov     rbp, rsp
    push    rdi                     ; rbp-8
    push    rsi                     ; rbp-16

    shl     rsi, 3
    lea     rcx, [rel type_table]
    jmp     [rcx+rsi]

CvtTypeI2f:
    cvtsi2ss    xmm0, edi
    movss   [rbp-20], xmm0
    mov     eax, [rbp-20]
    jmp     end
CvtTypeF2i:
    mov     [rbp-20], edi
    movss   xmm0, [rbp-20]
    cvttss2si   eax, xmm0
    jmp     end
CvtTypeI2d:
    cvtsi2sd    xmm0, rdi
    movsd   [rbp-24], xmm0
    mov     rax, [rbp-24]
    jmp     end
CvtTypeD2i:
    mov     [rbp-24], rdi
    movsd   xmm0, [rbp-24]
    cvttsd2si   rax, xmm0
    jmp     end
CvtTypeF2d:
    mov     [rbp-20], edi
    cvtss2sd    xmm0, [rbp-20]
    movsd   [rbp-24], xmm0
    mov     rax, [rbp-24]
    jmp     end
CvtTypeD2f:
    mov     [rbp-24], rdi
    cvtsd2ss    xmm0, [rbp-24]
    movss   [rbp-20], xmm0
    mov     eax, [rbp-20]
end:
    pop     rsi
    pop     rdi
    pop     rbp
    ret

    section .data
type_table:
    dq      CvtTypeI2f
    dq      CvtTypeF2i
    dq      CvtTypeI2d
    dq      CvtTypeD2i
    dq      CvtTypeF2d
    dq      CvtTypeD2f