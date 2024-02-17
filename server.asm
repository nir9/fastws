format ELF64
public _start

socket = 41
bind = 49
listen = 50
accept = 43
read = 0
write = 1
open = 2
af_inet = 2
sock_stream = 1
o_rdonly = 0

section '.text' executable
_start:
mov rdi, af_inet
mov rsi, sock_stream
mov rdx, 0
mov rax, socket
syscall

mov r12, rax ; socket fd
mov rdi, r12
mov rsi, address
mov rdx, 16
mov rax, bind
syscall

mov rdi, r12
mov rsi, 10
mov rax, listen
syscall

mov rdi, r12
mov rsi, 0
mov rdx, 0
mov rax, accept
syscall

mov r13, rax ; client socket fd
mov rdi, r13
mov rsi, buffer
mov rdx, 256
mov rax, read
syscall

mov rdi, path
mov rsi, o_rdonly
mov rax, open
syscall

mov rdi, rax
mov rsi, buffer2
mov rdx, 256
mov rax, read
syscall

mov rdi, r13
mov rsi, buffer2
mov rdx, 256
mov rax, write
syscall

section '.data' writeable
address:
dw af_inet
dw 0x901f
dd 0
dq 0
buffer:
db 256 dup 0
buffer2:
db 256 dup 0
path:
db 'index.html', 0
