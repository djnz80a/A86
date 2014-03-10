A86
===
8086/386 Self Assembler for MS-DOS

usage:
````
A86 <source> [<options>]

	/3	386 mode
````

example:
````
A:\>TYPE HELLOW.ASM
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

A:\>HeLLO
Hello, World!

````
