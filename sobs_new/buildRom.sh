#!/bin/bash
rm asmRom.gbc asmRom.obj asmRom.map asmRom.sym
echo "compiling asmRom.o"
wla-gb asmRom.asm
echo "linking asmRom.o"
wlalink -S asmRom.link asmRom.gbc
cmp asmRom.gbc rom.gbc