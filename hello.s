.intel_syntax noprefix
.section .data
    hello: .asciz "Hello, World!"

.section .text
.global _start

_start:
    # Write syscall
    mov eax, 4 # syscall number for write
    mov ebx, 1 # file descriptor (stdout)
    lea ecx, [hello] # pointer to the message
    mov edx, 13 # length of the message
    int 0x80 # call kernel

    # Exit syscall
    mov eax, 1 # syscall number for exit
    xor ebx, ebx # exit code 0
    int 0x80 # call kernel