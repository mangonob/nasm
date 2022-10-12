
; ----------------------------------------------------------------

    global  _main
    extern  _printf

    section .text
_main:
    push    rbp
    mov     rbp, rsp

    lea     rdi, [rel content]
    call    _printf

    pop     rbp
    xor     rax, rax
    ret

    section .data
content:
    incbin "printSelf.asm"
