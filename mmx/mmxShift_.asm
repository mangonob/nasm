; ----------------------------------------------------------------
;
; void mmxShift(MmxVal src, MmxShiftMode mode, int count, MmxVal *dst);
;
; ----------------------------------------------------------------

    global  _mmxShift
    section .text
_mmxShift:
    push    rbp
    mov     rbp, rsp
    push    rsi

    mov     [rbp-8], rcx
    movq    mm0, rdi
    movd    mm1, edx
    shl     rsi, 3
    lea     rcx, [rel shiftTable]
    jmp     [rcx+rsi]
LeftLgW:
    psllw   mm0, mm1
    jmp     end
RightLgW:
    psrlw   mm0, mm1
    jmp     end
RightArW:
    psraw   mm0, mm1
    jmp     end
LeftLgD:
    pslld   mm0, mm1
    jmp     end
RightLgD:
    psrld   mm0, mm1
    jmp     end
RightArD:
    psrad   mm0, mm1
    jmp     end

end:
    mov     rcx, [rbp-8]
    movq    [rcx], mm0
    emms

    pop     rsi
    pop     rbp
    ret

    section  .data
shiftTable:
    dq      LeftLgW
    dq      RightLgW
    dq      RightArW
    dq      LeftLgD
    dq      RightLgD
    dq      RightArD
.length     equ     $-shiftTable