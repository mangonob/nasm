; ----------------------------------------------------------------
; int matrixSum(int *a, int row, int col, int *rowSums, int *colSums);
;
; Returns: 
;   0: Invalid row or col
;   0: Valid row or col
; ----------------------------------------------------------------

    global  _matrixSum

    %define a_          rdi
    %define row_        esi
    %define col_        edx
    %define rowSum_     rcx
    %define colSum_     r8

    section .text
_matrixSum:
    push    rbp
    mov     rbp, rsp

    xor     eax, eax
    cmp     row_, 0
    jle     end
    cmp     col_, 0
    jle     end

; ---------------- Calculate sum of rows begin ----------------
    xor     r10, r10
    mov     ebx, row_
calRow:
    xor     eax, eax
    push    rbx 
    mov     ebx, col_
.loop:
    add     eax, [a_+r10*4]
    add     r10d, col_
    dec     ebx 
    jnz     .loop

    pop     rbx

    mov     [rowSum_+rbx], eax
    dec     ebx
    jnz     calRow
; ---------------- Calculate sum of rows end ----------------

    mov     eax, 1
end:
    pop     rbp
    ret