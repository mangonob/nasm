; ----------------------------------------------------------------

    global  _main
    extern  _printf

    section .text
_main:
    push    rbp
    mov     rbp, rsp

    lea     rdi, [rel message]
    call    _printf

    pop     rbp
    xor     rax, rax
    ret

    section .data
message:
    db      "Hello world", 10, 0
