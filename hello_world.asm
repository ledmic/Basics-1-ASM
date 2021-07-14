; hello_world.asm
; Author: Ledmic

global _start


section .text:
    mov eax, 0x4 ; Use syscall
    mov ebx, 1 ; use stdout
    mov ecx, message
    mov edx, message_length
    int 0x80

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
    message: db "Hello World!", 0xA
    message_length: equ $-message