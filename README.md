A86
===
8086/386 Self Assembler for MS-DOS

A86.COM runs on MS-DOS 16-bit mode,
can create MS-DOS 16-bit COM executable and 16/32-bit RAW format file.

build:
````
In cygwin:
./to_nasm.sh	#Convert A86.ASM to A86NASM.ASM to assemble with nasm

In MS-DOS:
nasm A86NASM.ASM -o A86NASM.COM

Assemble itself:
A86NASM.COM A86
COPY A86.COM A86TMP.COM
A86TMP.COM A86
FC /B A86TMP.COM A86.COM	#Compare two files : Should be same

````

First version of A86.COM was originally build with ASM86.COM on MSX-DOS(Z80),
but current A86.ASM cannot be assembled with the ASM86.COM.

usage:
````
A86 <source> [<options>]

	/3	386 mode
````

example:
````
A:\>TYPE HELLO.ASM
	ORG	100H

	MOV	AH,9
	MOV	DX,HELLO
	INT	21H

	MOV	AX,4C00H
	INT	21H

HELLO:	DB	'Hello, World!',0DH,0AH,'$'

A:\>A86 HELLO
==== 8086 Self Assembler ====
       Programed by djnz80a
Pass...1
Pass...2
end address = 0000011B
label(s)    = 1

A:\>HELLO
Hello, World!

````
