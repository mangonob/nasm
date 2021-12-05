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

    pop     rbp
    ret
_deallocValue:
    push    rbp
    mov     rbp, rsp

    pop     rbp
    ret