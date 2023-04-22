global _start
_start:
    mov ecx, 0              ;ecx sera el registro sobre el que estaremos iterando para el loop
    jmp begin_loop          ;hacemos un jump a la seccion begin_loop

begin_loop:
    cmp ecx,5               ;queremos que el limite de nuestro loop sea 5, revisamos si ecx es igual a 5
    je end                  ;si ecx es igual a 5 saltamos a la parte final del programa
    add ecx,1               ;de lo contrario sumamos uno a ecx    
    jmp begin_loop          ;repetimos esta seccion 

end:
    mov ebx, ecx            ;una vez termine el loop, movemos ecx a ebx para poder revsisarla como codigo de salida (mala practica pero sirve para fines demostrativos)
    mov eax, 1              ;eax=1 indica que el system call sera para terminar el profgrama
    int 0x80                ;interrupcion para usar el system call
