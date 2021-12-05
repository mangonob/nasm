; ----------------------------------------------------------------
; int64_t structSum(Value *value);
; 
; Return: 
;   value -> val8 +
;   value -> val16 +
;   value -> val32 +
;   value -> val64 +
; ----------------------------------------------------------------
    %include    'Value.asm'

    global  _structSum

    section .text
_structSum:
    push    rbp
    mov     rbp, rsp

    xor     rax,  rax
    movsx   rcx,  byte [rdi+Value.val8]
    add     rax,  rcx
    movsx   rcx,  word [rdi+Value.val16]
    add     rax,  rcx
    movsx   rcx,  dword [rdi+Value.val32]
    add     rax,  rcx
    add     rax,  [rdi+Value.val64]

    pop     rbp
    ret