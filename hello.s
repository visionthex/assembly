# 0 "hello.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "hello.S"
.intel_syntax noprefix
.section .data
  hello: .asciz "Hello, World!"

.section .text
.global _start

_start:
  ; Your code here to print "Hello, World!"
  ; Exit syscall
  mov eax, 1 ; syscall number for Exit
  xor ebx, ebx ; exit code 0
  int 0x80 ; call kernel

  ; Exit syscall
  mov eax, 1 ; syscall number for exit
  xor ebx, ebx ; exit code 0
  int 0x80 ; call
