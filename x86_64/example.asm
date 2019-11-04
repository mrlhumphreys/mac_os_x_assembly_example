; /usr/local/bin/nasm -f macho64 example.asm && ld -macosx_version_min 10.7.0 -lSystem -o example example.o && ./example

global start

section .text

start:
  mov   rax, 0x2000004 ; write
  mov   rdi, 1 ; stdout
  mov   rsi, msg
  mov   rdx, msg.len
  syscall

  mov   rax, 0x2000001 ; exit
  mov   rdi, 0
  syscall

section .data

msg:  db  "Hello, world!", 10
.len: equ $ - msg
