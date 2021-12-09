; ----------------------------------------------------------------
; Value *newValue(int8_t val8, int16_t val16, int32_t val32, int64_t val64);
; ----------------------------------------------------------------

    %include    'Value.asm'

    global  _newValue
    global  _deallocValue

    extern  _malloc
    extern  _free

    section .text
_newValue:
    push    rbp
    mov     rbp, rsp

    push    rdi
    push    rsi
    push    rdx
    push    rcx

    mov     rdi, Value_size
    call    _malloc

    pop     rcx
    pop     rdx
    pop     rsi
    pop     rdi

    mov     [rax+Value.val8], dil
    mov     [rax+Value.val16], si
    mov     [rax+Value.val32], edx
    mov     [rax+Value.val64], rcx

    pop     rbp
    ret
_deallocValue:
    push    rbp
    mov     rbp, rsp

    call    _free

    pop     rbp
    ret