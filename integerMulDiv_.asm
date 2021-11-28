; --------------------------------------------------------------------------------
; int integerMulDiv(int a, int b, int *prd, int *quo, int* rem);
;
; Parameters:
;   prd: a * b
;   quo: a / b
;   rem: a % b
;
; Returns: 
;   0 Error
;   1 Success
; --------------------------------------------------------------------------------

        global      _integerMulDiv

        section     .text
_integerMulDiv:  
        push        rbp
        push        rsp
        mov         rbp, rsp

        xor         eax, eax                ; Clear eax
        or          esi, esi                
        jz          End_                    ; Error

        push        rdi
        imul        edi, esi
        mov         [rdx], edi             ; Save product
        pop         rdi

        mov         eax, edi
        cdq
        idiv        esi
        mov         [rcx], eax
        mov         [r8], edx

        mov         eax, 1
End_:   pop         rsp
        pop         rbp
        ret