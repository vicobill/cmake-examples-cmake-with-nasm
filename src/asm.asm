section .text       ; "text" is code
bits 64             ; 64bit 模式

global asm_foo      ; 全局导出位置
asm_foo:            ; 函数label
    mov rax,1337    ; 设置返回值
    ret             ; 从subroutine返回