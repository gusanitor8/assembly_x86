# Notes on Assembly x86 (nasm)
Decidí hacer este archivo con informacion que considero importante para assembly x86, especialmente para el assembler NASM.

Primeramente, las instrucciones para compilar el codigo a un ejecutable:
```bash
nasm -f elf32 file_name.asm -o file_name.o
ld -m elf_i386 file_name.o -o file_name
./file_name
echo $?
```

usamos `echo $?` para revisar el código de salida del programa