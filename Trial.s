section .data
    hello_msg db 'Hi, Mom!',0

section .text
    global _start

_start:
    ; write the message to stdout
    mov eax, 4      ; system call for "write"
    mov ebx, 1      ; file descriptor for stdout
    mov ecx, hello_msg  ; address of message to write
    mov edx, 13     ; length of message
    int 0x80        ; execute the system call

    ; exit program with 0 status code
    mov eax, 1      ; system call for "exit"
    xor ebx, ebx    ; status code 0
    int 0x80        ; execute the system call
