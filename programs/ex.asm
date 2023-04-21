global _start
_start:
    mov eax,4       ;4 es nuestro dividendo
    mov ebx,2       ;2 es nuestro divisor
    div ebx         ;el resultado se almacena en eax

    mov ebx, eax    ;movemos el resultado en eax a ebx para desplegarlo como codigo de salida
    mov eax, 1      ;1 es corresponde al system call de salida
    int 0x80        ;0x80 corresponde al interrupt de system call