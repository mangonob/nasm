; ----------------------------------------------------------------
; int countChars(char *s, char c);
; ----------------------------------------------------------------

    global  _countChars

    section .text
_countChars:
    push    rbp
    mov     rbp, rsp
    push    rsi
    mov     rcx, rsi

    mov     rsi, rdi
    xor     edx, edx
loop:
    lodsb
    or      al, al
    jz      end
    cmp     al, cl
    jne     tail
    inc     edx
tail:
    jmp     loop

end:
    mov     eax, edx
    pop     rsi
    pop     rbp
    ret