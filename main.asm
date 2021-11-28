; ----------------------------------------------------------------------------------------
; This is an macOS console program that writes "Hola, mundo" on one line and then exits.
; It uses puts from the C library.  To assemble and run:
;
;     nasm -fmacho64 hola.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------

            global      _main
            extern      _printf
            extern      _fibo

            section     .text
_main:      push        rbx                     ; Call stack must be aligned
            mov         rdi, 4
            call        _fibo
            lea         rdi, [rel message]      ; First argument is address of message
            mov         rsi, rax
            call        _printf                 ; puts(message)
            pop         rbx                     ; Fix up stack before returning
            mov         rax, 0                  ; Return value is 0
            ret

            section     .data
message:    db          "fibo 4 = %ld", `\n`, 0        ; C strings need a zero byte at the end
