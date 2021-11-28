; Cal fibonacci 10

            global      _main
            extern      _printf
            extern      _fibo

            section     .text
_main:      push        rbx
            mov         rdi, 10
            call        _fibo
            lea         rdi, [rel message]
            mov         rsi, rax
            call        _printf
            pop         rbx
            mov         rax, 0

            ret

            section     .data
message:    db          "fibo 10 = %ld", `\n`, 0
