; ----------------------------------------------------------------
; int matrixSum(int *a, int row, int col, int *rowSums, int *colSums);
;
; Returns: 
;   0: Invalid row or col
;   0: Valid row or col
; ----------------------------------------------------------------

    global  _matrixSum

    %define var_i       -4
    %define var_j       -8

    section .text
_matrixSum:
    push    rbp
    mov     rbp, rsp
    push    rbx

    xor     eax, eax
    cmp     esi, 0
    jle     end
    cmp     edx, 0
    jle     end

    mov     dword [rbp+var_i], 0
cal_rows:
    cmp     [rbp+var_i], esi        ; i < row
    jge     cal_rows_end

    xor     eax, eax
    mov     dword [rbp+var_j], 0
.loop:
    cmp     [rbp+var_j], edx        ; j < col
    jge     .loop_end

    mov     ebx, [rbp+var_i]
    imul    ebx, edx
    add     ebx, [rbp+var_j]
    add     eax, [rdi+rbx*4]

    inc     dword [rbp+var_j]
    jmp     .loop
.loop_end: 
    mov     ebx, [rbp+var_i]
    mov     [rcx+rbx*4], eax

    inc     dword [rbp+var_i]
    jmp     cal_rows
cal_rows_end:

    mov     dword [rbp+var_i], 0
cal_cols:
    cmp     [rbp+var_i], edx        ; i < col
    jge     cal_cols_end

    xor     eax, eax
    mov     dword [rbp+var_j], 0
.loop:
    cmp     [rbp+var_j], esi        ; j < row
    jge     .loop_end

    mov     ebx, [rbp+var_j]
    imul    ebx, edx
    add     ebx, [rbp+var_i]
    add     eax, [rdi+rbx*4]

    inc     dword [rbp+var_j]
    jmp     .loop
.loop_end: 
    mov     ebx, [rbp+var_i]
    mov     [r8+rbx*4], eax

    inc     dword [rbp+var_i]
    jmp     cal_cols
cal_cols_end:

    mov     eax, 1
end:
    pop     rbx
    pop     rbp
    ret