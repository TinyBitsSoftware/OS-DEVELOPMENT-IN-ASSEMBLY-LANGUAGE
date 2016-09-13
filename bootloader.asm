[bits 16]
[ORG 0x700]

MOV si, BOOTLOADERCDR
CALL Printstring
JMP $

PrintCharacter:
MOV AH, 0x0E
MOV BH, 0x00
MOV BL, 0x07

INT 0x10
RET

Printstring:
next_character:
MOV AL, [SI]
INC SI
OR AL, AL
Jz exit_function
CALL PrintCharacter
exit_function:
RET

;data
BOOTLOADERCDR db "Tiny BIts Bootloader" , 0

times 510 - ($ - $$) db 0
DW 0xAA55