.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .align 2 , 0
    .global gUnknown_080D1E20
gUnknown_080D1E20:
    .incbin "baserom_sa3.gba", 0x000D1E20, 0x10

    .global gUnknown_080D1E30
gUnknown_080D1E30:
    .incbin "baserom_sa3.gba", 0x000D1E30, 0x20

    .global gUnknown_080D1E50
gUnknown_080D1E50:
    .byte 6, 3, 2

    .align 2, 0
    .global gUnknown_080D1E54
gUnknown_080D1E54:
    .incbin "baserom_sa3.gba", 0x000D1E54, 0x30

    .global gUnknown_080D1E84
gUnknown_080D1E84:
    .incbin "baserom_sa3.gba", 0x000D1E84, 0x10

    .global sTileInfoGekoGeko
sTileInfoGekoGeko:
    .incbin "baserom_sa3.gba", 0x000D1E94, 0x18

    .global gUnknown_080D1EAC
gUnknown_080D1EAC:
    .incbin "baserom_sa3.gba", 0x000D1EAC, 0x18

    .global gUnknown_080D1EC4
gUnknown_080D1EC4:
    .incbin "baserom_sa3.gba", 0x000D1EC4, 0x8

    .global gUnknown_080D1ECC
gUnknown_080D1ECC:
    .incbin "baserom_sa3.gba", 0x000D1ECC, 0x18

    .global gUnknown_080D1EE4
gUnknown_080D1EE4:
    .incbin "baserom_sa3.gba", 0x000D1EE4, 0x10

    .global gUnknown_080D1EF4
gUnknown_080D1EF4:
    .incbin "baserom_sa3.gba", 0x000D1EF4, 0x18

    .global gUnknown_080D1F0C
gUnknown_080D1F0C:
    .incbin "baserom_sa3.gba", 0x000D1F0C, 0x10

    .global gUnknown_080D1F1C
gUnknown_080D1F1C:
    .incbin "baserom_sa3.gba", 0x000D1F1C, 0x10

    .global gUnknown_080D1F2C
gUnknown_080D1F2C:
    .incbin "baserom_sa3.gba", 0x000D1F2C, 0x20

    .global gUnknown_080D1F4C
gUnknown_080D1F4C:
    .incbin "baserom_sa3.gba", 0x000D1F4C, 0x10

    .global gUnknown_080D1F5C
gUnknown_080D1F5C:
    .incbin "baserom_sa3.gba", 0x000D1F5C, 0x10

    .global gUnknown_080D1F6C
gUnknown_080D1F6C:
    .incbin "baserom_sa3.gba", 0x000D1F6C, 0x10

    .global gUnknown_080D1F7C
gUnknown_080D1F7C:
    .incbin "baserom_sa3.gba", 0x000D1F7C, 0x10

    .global gUnknown_080D1F8C
gUnknown_080D1F8C:
    .incbin "baserom_sa3.gba", 0x000D1F8C, 0x20

    .global gUnknown_080D1FAC
gUnknown_080D1FAC:
    .byte 4, 2, 1

    .align 2, 0
    .global gUnknown_080D1FB0
gUnknown_080D1FB0:
    .incbin "baserom_sa3.gba", 0x000D1FB0, 0x10

    .global gUnknown_080D1FC0
gUnknown_080D1FC0:
    .incbin "baserom_sa3.gba", 0x000D1FC0, 0x10

    .global gUnknown_080D1FD0
gUnknown_080D1FD0:
    .incbin "baserom_sa3.gba", 0x000D1FD0, 0x20

    .global gUnknown_080D1FF0
gUnknown_080D1FF0:
    .incbin "baserom_sa3.gba", 0x000D1FF0, 0x8

    .global gUnknown_080D1FF8
gUnknown_080D1FF8:
    .incbin "baserom_sa3.gba", 0x000D1FF8, 0xC

    .global gUnknown_080D2004
gUnknown_080D2004:
    .incbin "baserom_sa3.gba", 0x000D2004, 0x10

    .global gUnknown_080D2014
gUnknown_080D2014:
    .incbin "baserom_sa3.gba", 0x000D2014, 0x10

    .global gUnknown_080D2024
gUnknown_080D2024:
    .incbin "baserom_sa3.gba", 0x000D2024, 0x10

    .global gUnknown_080D2034
gUnknown_080D2034:
    .incbin "baserom_sa3.gba", 0x000D2034, 0x10

    .global gUnknown_080D2044
gUnknown_080D2044:
    .incbin "baserom_sa3.gba", 0x000D2044, 0x28

    .global gPalette_080D206C
gPalette_080D206C:
    .incbin "baserom_sa3.gba", 0x000D206C, 0x20

    .global gPalette_080D208C
gPalette_080D208C:
    .incbin "baserom_sa3.gba", 0x000D208C, 0x20

    .global gUnknown_080D20AC
gUnknown_080D20AC:
    .incbin "baserom_sa3.gba", 0x000D20AC, 0x4

    .global gUnknown_080D20B0
gUnknown_080D20B0:
    .incbin "baserom_sa3.gba", 0x000D20B0, 0x8

    .global gUnknown_080D20B8
gUnknown_080D20B8:
    .incbin "baserom_sa3.gba", 0x000D20B8, 0xC

    .global gUnknown_080D20C4
gUnknown_080D20C4:
    .incbin "baserom_sa3.gba", 0x000D20C4, 0x48

    .global gUnknown_080D210C
gUnknown_080D210C:
    .incbin "baserom_sa3.gba", 0x000D210C, 0x20

    .global gUnknown_080D212C
gUnknown_080D212C:
    .incbin "baserom_sa3.gba", 0x000D212C, 0x30

    .global gUnknown_080D215C
gUnknown_080D215C:
    .incbin "baserom_sa3.gba", 0x000D215C, 0x20

    .global gUnknown_080D217C
gUnknown_080D217C:
    .incbin "baserom_sa3.gba", 0x000D217C, 0x4

    .global gUnknown_080D2180
gUnknown_080D2180:
    .incbin "baserom_sa3.gba", 0x000D2180, 0x18

    .global gUnknown_080D2198
gUnknown_080D2198:
    .incbin "baserom_sa3.gba", 0x000D2198, 0x20


    .global gUnknown_080D21B8
gUnknown_080D21B8:
    .incbin "baserom_sa3.gba", 0x000D21B8, 0x44

    .global gUnknown_080D21FC
gUnknown_080D21FC:
    .incbin "baserom_sa3.gba", 0x000D21FC, 0x44

    .global gUnknown_080D2240
gUnknown_080D2240:
    .incbin "baserom_sa3.gba", 0x000D2240, 0x44

    .global gUnknown_080D2284
gUnknown_080D2284:
    .incbin "baserom_sa3.gba", 0x000D2284, 0x44

    .global gUnknown_080D22C8
gUnknown_080D22C8:
    .byte 0x30, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D21B8
    .byte 0x90, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00
    mPtr gUnknown_080D21FC
    .byte 0xA0, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00
    mPtr gUnknown_080D2240
    .byte 0xB0, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00
    mPtr gUnknown_080D2284
    
    @ Might be a palette?
    .global gUnknown_080D22F8
gUnknown_080D22F8:
    .incbin "baserom_sa3.gba", 0x000D22F8, 0xF0

    .global gUnknown_080D23E8
gUnknown_080D23E8:
    .byte 0x60, 0x00, 0x10, 0x00, 0x07, 0x00, 0x00, 0x00
    mPtr gUnknown_080D22F8

    .global gUnknown_080D23F4
gUnknown_080D23F4:
    .incbin "baserom_sa3.gba", 0x000D23F4, 0x8

    .global gUnknown_080D23FC
gUnknown_080D23FC:
    .incbin "baserom_sa3.gba", 0x000D23FC, 0x108

    .global gUnknown_080D2504
gUnknown_080D2504:
    .incbin "baserom_sa3.gba", 0x000D2504, 0x110

    .global gUnknown_080D2614
gUnknown_080D2614:
    .incbin "baserom_sa3.gba", 0x000D2614, 0x44

    .global gUnknown_080D2658
gUnknown_080D2658:
    .incbin "baserom_sa3.gba", 0x000D2658, 0x44

    .global gUnknown_080D269C
gUnknown_080D269C:
    .incbin "baserom_sa3.gba", 0x000D269C, 0xCC

    .global gUnknown_080D2768
gUnknown_080D2768:
    .incbin "baserom_sa3.gba", 0x000D2768, 0xCC

    .global gUnknown_080D2834
gUnknown_080D2834:
    .byte 0x70, 0x00, 0x10, 0x00, 0x08, 0x00, 0x00, 0x00
    mPtr gUnknown_080D23F4
	.byte 0x50, 0x00, 0x10, 0x00, 0x08, 0x00, 0x00, 0x00
    mPtr gUnknown_080D2504
    .byte 0x60, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00
	mPtr gUnknown_080D2614
	.byte 0x80, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00
	mPtr gUnknown_080D2658
	.byte 0xA0, 0x00, 0x10, 0x00, 0x06, 0x00, 0x00, 0x00
	mPtr gUnknown_080D269C
	.byte 0x90, 0x00, 0x10, 0x00, 0x06, 0x00, 0x00, 0x00
	mPtr gUnknown_080D2768

    .global gUnknown_080D287C
gUnknown_080D287C:
    .incbin "baserom_sa3.gba", 0x000D287C, 0x198

    .global gUnknown_080D2A14
gUnknown_080D2A14:
    .incbin "baserom_sa3.gba", 0x000D2A14, 0x198

    .global gUnknown_080D2BAC
gUnknown_080D2BAC:
    .incbin "baserom_sa3.gba", 0x000D2BAC, 0x198

    .global gUnknown_080D2D44
gUnknown_080D2D44:
    .byte 0x60, 0x00, 0x10, 0x00, 0x0C, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D287C
    .byte 0x70, 0x00, 0x10, 0x00, 0x0C, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D2A14
    .byte 0x50, 0x00, 0x10, 0x00, 0x0C, 0x00, 0x00, 0x00
    mPtr gUnknown_080D2BAC

    .global gUnknown_080D2D68
gUnknown_080D2D68:
    .incbin "baserom_sa3.gba", 0x000D2D68, 0x220

    .global gUnknown_080D2F88
gUnknown_080D2F88:
    .byte 0xE0, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00
    mPtr gUnknown_080D2D68

    .global gUnknown_080D2F94
gUnknown_080D2F94:
    .incbin "baserom_sa3.gba", 0x000D2F94, 0x3C

    .global gUnknown_080D2FD0
gUnknown_080D2FD0:
    .incbin "baserom_sa3.gba", 0x000D2FD0, 0xC

    .global gUnknown_080D2FDC
gUnknown_080D2FDC:
    .incbin "baserom_sa3.gba", 0x000D2FDC, 0x3C

    .global gUnknown_080D3018
gUnknown_080D3018:
    .incbin "baserom_sa3.gba", 0x000D3018, 0x8

    .global gUnknown_080D3020
gUnknown_080D3020:
    .incbin "baserom_sa3.gba", 0x000D3020, 0x44

    .global gUnknown_080D3064
gUnknown_080D3064:
    .incbin "baserom_sa3.gba", 0x000D3064, 0x14

    .global gUnknown_080D3078
gUnknown_080D3078:
    .incbin "baserom_sa3.gba", 0x000D3078, 0x1C

    .global gUnknown_080D3094
gUnknown_080D3094:
    .incbin "baserom_sa3.gba", 0x000D3094, 0x8

    .global gUnknown_080D309C
gUnknown_080D309C:
    .incbin "baserom_sa3.gba", 0x000D309C, 0x18

    .global gUnknown_080D30B4
gUnknown_080D30B4:
    .incbin "baserom_sa3.gba", 0x000D30B4, 0x90

    .global gUnknown_080D3144
gUnknown_080D3144:
    .incbin "baserom_sa3.gba", 0x000D3144, 0x240

    .global gUnknown_080D3384
gUnknown_080D3384:
    .incbin "baserom_sa3.gba", 0x000D3384, 0x240

    .global gUnknown_080D35C4
gUnknown_080D35C4:
    .incbin "baserom_sa3.gba", 0x000D35C4, 0x240

    .global gUnknown_080D3804
gUnknown_080D3804:
    .byte 0x09, 0x00, 0x04, 0x00, 0x06, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D2F94
    .byte 0x0D, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D2FD0
    .byte 0x2A, 0x00, 0x04, 0x00, 0x06, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D2FDC
    .byte 0x2E, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3018
    .byte 0x50, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3020
    .byte 0x61, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3064
    .byte 0x69, 0x00, 0x06, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3078
    .byte 0x75, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3094
    .byte 0x97, 0x00, 0x02, 0x00, 0x04, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D309C
    .byte 0xA1, 0x00, 0x08, 0x00, 0x08, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D30B4
    .byte 0xD1, 0x00, 0x08, 0x00, 0x20, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3144
    .byte 0xE1, 0x00, 0x08, 0x00, 0x20, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3384
    .byte 0xF1, 0x00, 0x08, 0x00, 0x20, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D35C4

    .global gUnknown_080D38A0
gUnknown_080D38A0:
    .incbin "baserom_sa3.gba", 0x000D38A0, 0x90

    .global gUnknown_080D3930
gUnknown_080D3930:
    .incbin "baserom_sa3.gba", 0x000D3930, 0x44

    .global gUnknown_080D3974
gUnknown_080D3974:
    .incbin "baserom_sa3.gba", 0x000D3974, 0x44

    .global gUnknown_080D39B8
gUnknown_080D39B8:
    .incbin "baserom_sa3.gba", 0x000D39B8, 0x420
    
    .global gUnknown_080D3DD8
gUnknown_080D3DD8:
    .byte 0x71, 0x00, 0x08, 0x00, 0x08, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D38A0
    .byte 0x90, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3930
    .byte 0xA0, 0x00, 0x10, 0x00, 0x02, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3974
    .byte 0xF0, 0x00, 0x10, 0x00, 0x1F, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D39B8

    .global gUnknown_080D3E08
gUnknown_080D3E08:
    .incbin "baserom_sa3.gba", 0x000D3E08, 0x119C

    .global gUnknown_080D4FA4
gUnknown_080D4FA4:
    .incbin "baserom_sa3.gba", 0x000D4FA4, 0x154

    .global gUnknown_080D50F8
gUnknown_080D50F8:
    .byte 0x00, 0x00, 0xA0, 0x00, 0x0E, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D3E08
    .byte 0xF0, 0x00, 0x10, 0x00, 0x0A, 0x00, 0x00, 0x00 
    mPtr gUnknown_080D4FA4

    .global gUnknown_080D5110
gUnknown_080D5110:
    .incbin "baserom_sa3.gba", 0x000D5110, 0x90
    
    .global gUnknown_080D51A0
gUnknown_080D51A0:
    .byte 0x91, 0x00, 0x08, 0x00, 0x08, 0x00, 0x00, 0x00
    mPtr gUnknown_080D5110
    
    .global gUnknown_080D51AC
gUnknown_080D51AC:
    .incbin "baserom_sa3.gba", 0x000D51AC, 0x90

    .global gUnknown_080D523C
gUnknown_080D523C:
    .short 0x0091, 0x0008, 0x0008, 0x0000
    mPtr gUnknown_080D51AC

    .global gUnknown_080D5248
gUnknown_080D5248:
    .short 0x0004, 0x0001, 0x0006, 0x0003, 0x0001, 0x000D, 0x0004, 0x0000, 0x0002, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
