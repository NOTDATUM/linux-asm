section .data
    msg db "star 10 ", 0x0A
    len equ $ -msg
    star times 10 db '*'
    end db 0x0a

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, star
    mov edx, 10
    int 0x80

    call _print

    mov eax,1
    int 0x80



_print:
    mov eax, 4
    mov ebx, 1 
    mov ecx, end
    mov edx, 1
    int 0x80

    ret