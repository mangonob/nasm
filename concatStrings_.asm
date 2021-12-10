; ----------------------------------------------------------------
; 字符串长度计算
; int strLen(char *);
;
; 连接字符串
; void concatStrings(char *dst, char *src [], int length);
; ----------------------------------------------------------------

    global  _strLen
    global  _concatStrings

    section .text
_concatStrings:
    push    rbp
    mov     rbp, rsp
    push    rbx
    push    rdi
    push    rsi

    mov     ecx, edx
    mov     rbx, rsi
srcloop:
    mov     rsi, [rbx]
    add     rbx, 8

    push    rcx
    push    rdi                 ; Prepare to call strLen
    mov     rdi, rsi
    call    _strLen
    pop     rdi
    mov     rcx, rax            ; Repeat count in rcx
    rep     movsb
    pop     rcx

    dec     ecx
    jnz     srcloop             ; srcloop end

    pop     rsi
    pop     rdi
    pop     rbx
    pop     rbp
    ret

    mov     byte [rdi], 0

_strLen:
    push    rbp
    mov     rbp, rsp
    push    rdi

    mov     rcx, -1
    xor     rax, rax
    repne   scasb
    not     rcx
    dec     rcx
    mov     rax, rcx

    pop     rdi
    pop     rbp
    ret
