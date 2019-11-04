# Mac OS X Assembly examples

## How to assemble

nasm is an assembler, it can be installed via Brew.

1. Use `nasm` to assemble source code into object file
2. Use ld to link the object file
3. Run the application

## 32 bit

```bash
  cd ./x86
  nasm -f macho example.asm
  ld -macosx_version_min 10.7.0 -o example.o
  ./example
```

## 64 bit

```bash
  cd ./x86_64
  nasm -f macho64 example.asm
  ld -macosx_version_min 10.7.0 -lSystem -o example.o
  ./example
```

## Mac OS X BSD System Calls Reference

https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master
