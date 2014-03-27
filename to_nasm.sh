#!/bin/sh
# replace "DEFS n" to "TIME n DB 0"
# -b to "not convert crlf with cygwin sed"
cat A86.ASM |sed -b -e 's/\bDEFS[ \t]\+\([^;]*\)\b/TIMES \1 DB 0/' |sed -b -e "s/ES:\[BX\(.*\)\]/[ES:BX\1]/" > A86NASM.ASM
