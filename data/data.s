.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata
    

    .global romData
romData: @ 0x080CE438
	.incbin "baserom.gba", 0x000CE438, 0xdb0dbc
