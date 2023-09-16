.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata
    

    .global romData
romData: @ 0x080CE0B0
	.incbin "baserom.gba", 0x000CE0B0, 0xDB0DB4


@; end 0x0803045
@; another end 0x07ff04b ?
