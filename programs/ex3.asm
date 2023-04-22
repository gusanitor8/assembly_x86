;En este programa estaremos haciendo un print

global _start

section .data
    msg db "Hola mundoo!", 0x0a
    len equ $ - msg

section .text
_start:
    mov eax, 4      ;system call para sys_write
    mov ebx, 1      ;file descriptor
    mov ecx, msg    ;mensaje que queremos imprimir
    mov edx, len    ;longitud del mensaje
    int 0x80        ;system call

    mov eax, 1
    mov ebx, 0
    int 0x80

