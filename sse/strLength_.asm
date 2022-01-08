; ----------------------------------------------------------------
;
; extern int strLength(char *str);
; ----------------------------------------------------------------

    global  _strLength

    section .text
_strLength:
    push    rbp
    mov     rbp, rsp

    mov     edx, 0ff01h
    movd    xmm1, edx
    xor     rax, rax
    xor     rcx, rcx

lookup:
    add     rdi, 16
    add     rax, rcx
    pcmpistri   xmm1, [rdi-16], 14h
    jnz     lookup

    add     rax, rcx
    pop     rbp
    ret
