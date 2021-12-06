; ----------------------------------------------------------------

    global  _main
    extern  _puts 

    section .text
_main:      
    push    rbx                     ; Call stack must be aligned
    lea     rdi, [rel message]
    call    _puts
    pop     rbx                     ; Fix up stack before returning
    mov     rax, 0                  ; Return value is 0
    ret

    section .data
message:    
    db      "Hello world", 0
