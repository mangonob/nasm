; ----------------------------------------------------------------------------------------
; This is an macOS console program that writes "Hola, mundo" on one line and then exits.
; It uses puts from the C library.  To assemble and run:
;
;     nasm -fmacho64 hola.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------

            global      _main
            extern      _printf

            section     .text
_main:      push        rbx                     ; Call stack must be aligned
            lea         rdi, [rel message]      ; First argument is address of message
            lea         rsi, [rel nasm_ver]
            call        _printf                 ; puts(message)
            pop         rbx                     ; Fix up stack before returning
            mov         rax, 0                  ; Return value is 0
            ret

            section     .data
message:    db          `nasm version: %s\n`, 0        ; C strings need a zero byte at the end
nasm_ver:   db          __NASM_VER__, 0
