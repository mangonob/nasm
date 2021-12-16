; ----------------------------------------------------------------
;
; MmxVal mmxAdd(MmxVal a, MmxVal b, MmxAddMode mode);
; ----------------------------------------------------------------

    global  _mmxAdd

    section .text
_mmxAdd:
    push    rbp
    mov     rbp, rsp
    push    rsi

    movq    mm0, rdi
    movq    mm1, rsi
    lea     rcx, [rel modeTable]
    shl     rdx, 3
    jmp     [rcx+rdx]

Paddb:
    paddb   mm0, mm1
    jmp     end
Paddsb:
    paddsb  mm0, mm1
    jmp     end
Paddusb:
    paddusb mm0, mm1
    jmp     end
Paddw:
    paddw   mm0, mm1
    jmp     end
Paddsw:
    paddsw  mm0, mm1
    jmp     end
Paddusw:
    paddusw mm0, mm1
    jmp     end
Paddd:
    paddd   mm0, mm1
    jmp     end

end:
    movq    rax, mm0
    emms

    pop     rsi
    pop     rbp
    ret

    section .data
modeTable:
    dq      Paddb
    dq      Paddsb
    dq      Paddusb
    dq      Paddw
    dq      Paddsw
    dq      Paddusw
    dq      Paddd
