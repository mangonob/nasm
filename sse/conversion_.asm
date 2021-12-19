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
    push    rdi
    push    rsi

    shl     rsi, 3
    lea     rcx, [rel type_table]
    jmp     [rcx+rsi]

CvtTypeI2f:
    cvtsi2ss    xmm0, edi
    movss   [rbp-4], xmm0
    mov     eax, [rbp-4]
    jmp     end
CvtTypeF2i:
    mov     [rbp-4], edi
    movss   xmm0, [rbp-4]
    cvttss2si   eax, xmm0
    jmp     end
CvtTypeI2d:
    cvtsi2sd    xmm0, rdi
    movsd   [rbp-8], xmm0
    mov     rax, [rbp-8]
    jmp     end
CvtTypeD2i:
    mov     [rbp-8], rdi
    movsd   xmm0, [rbp-8]
    cvttsd2si   rax, xmm0
    jmp     end
CvtTypeF2d:
    mov     [rbp-4], edi
    cvtss2sd    xmm0, [rbp-4]
    movsd   [rbp-8], xmm0
    mov     rax, [rbp-8]
    jmp     end
CvtTypeD2f:
    mov     [rbp-8], rdi
    cvtsd2ss    xmm0, [rbp-8]
    movss   [rbp-4], xmm0
    mov     eax, [rbp-4]
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