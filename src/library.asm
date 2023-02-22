section .text
bits 64

; 导出符号
global asm_is_windows, compute_answer, sum_4_ints, increment_pointer_int64

; bool asm_is_windows()
asm_is_windows:
%ifdef WIN32
    mov rax,1   ; return true
%else
    xor rax,rax 
%endif
    ret

compute_answer:
    mov rax, 101010b
    ret

sum_4_ints:
%ifdef WIN32
    mov rax, rcx
    add rax, rdx
    add rax, r8
    add rax, r9
%else
    mov rax, rdi
    add rax, rsi
    add rax, rdx 
    add rax, rcx
%endif
    ret


increment_pointer_int64:
%ifdef WIN32 
    add QWORD [rcx], 1
%else 
    add QWORD [rdi], 1
%endif
    ret