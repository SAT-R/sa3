.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080D5888
gUnknown_080D5888:
    .incbin "baserom_sa3.gba", 0x000D5888, 0x44

    .global gUnknown_080D58CC
gUnknown_080D58CC:
    .incbin "baserom_sa3.gba", 0x000D58CC, 0x14

    .global gUnknown_080D58E0
gUnknown_080D58E0:
    .incbin "baserom_sa3.gba", 0x000D58E0, 0x14

    .global sBoss7AnimsCockpit
sBoss7AnimsCockpit:
    .incbin "baserom_sa3.gba", 0x000D58F4, 0x10

    .global gUnknown_080D5904
gUnknown_080D5904:
    .incbin "baserom_sa3.gba", 0x000D5904, 0x28

    .global gUnknown_080D592C
gUnknown_080D592C:
    .incbin "baserom_sa3.gba", 0x000D592C, 0x14

    .global gUnknown_080D5940
gUnknown_080D5940:
    .incbin "baserom_sa3.gba", 0x000D5940, 0x14

    .global gUnknown_080D5954
gUnknown_080D5954:
    .incbin "baserom_sa3.gba", 0x000D5954, 0x24

    .global gUnknown_080D5978
gUnknown_080D5978:
    .incbin "baserom_sa3.gba", 0x000D5978, 0x4

    .global gUnknown_080D597C
gUnknown_080D597C:
    .incbin "baserom_sa3.gba", 0x000D597C, 0x1C

    .global gUnknown_080D5998
gUnknown_080D5998:
    .incbin "baserom_sa3.gba", 0x000D5998, 0x54

    .global gUnknown_080D59EC
gUnknown_080D59EC:
    .incbin "baserom_sa3.gba", 0x000D59EC, 0x10

    .global gUnknown_080D59FC
gUnknown_080D59FC:
    .incbin "baserom_sa3.gba", 0x000D59FC, 0x18

    .global gUnknown_080D5A14
gUnknown_080D5A14:
    .incbin "baserom_sa3.gba", 0x000D5A14, 0x30

    .global gUnknown_080D5A44
gUnknown_080D5A44:
    .incbin "baserom_sa3.gba", 0x000D5A44, 0x20

    .global gUnknown_080D5A64
gUnknown_080D5A64:
    .incbin "baserom_sa3.gba", 0x000D5A64, 0x8

    .global gUnknown_080D5A6C
gUnknown_080D5A6C:
    .incbin "baserom_sa3.gba", 0x000D5A6C, 0x78

    .global gUnknown_080D5AE4
gUnknown_080D5AE4:
    .incbin "baserom_sa3.gba", 0x000D5AE4, 0x4

    .global gUnknown_080D5AE8
gUnknown_080D5AE8:
    .incbin "baserom_sa3.gba", 0x000D5AE8, 0xE

    .global gUnknown_080D5AF6
gUnknown_080D5AF6:
    .incbin "baserom_sa3.gba", 0x000D5AF6, 0xA
	
	mAlignWord
    .global gUnknown_080D5B00
gUnknown_080D5B00:
	mPtr  sub_807AA04
	mPtr  sub_807AA80
	.byte 3
mAlignWord
	mPtr  sub_807AB0C
	mPtr  sub_807B52C
	.byte 10
mAlignWord
	mPtr  sub_807B59C
	mPtr  sub_807ABB8
	.byte 5
mAlignWord
	mPtr  sub_807AC48
	mPtr  sub_807AD88
	.byte 10
mAlignWord
	mPtr  sub_807AE3C
	mPtr  sub_807AFBC
	.byte 6
mAlignWord
	mPtr  sub_807B064
	mPtr  sub_807B10C
	.byte 4
mAlignWord
	mPtr  sub_807B1E4
	mPtr  sub_807B280
	.byte 7
mAlignWord
	mPtr  sub_807B1E4
	mPtr  sub_807B280
	.byte 7
mAlignWord
	mPtr  sub_807B368
	mPtr  sub_807B498
	.byte 6
mAlignWord
	mPtr  0 
	mPtr  0 
	.byte -1
mAlignWord

    .global gUnknown_080D5B78
gUnknown_080D5B78:
    .incbin "baserom_sa3.gba", 0x000D5B78, 0x10

    .global gUnknown_080D5B88
gUnknown_080D5B88:
    .incbin "baserom_sa3.gba", 0x000D5B88, 0x28

    .global gUnknown_080D5BB0
gUnknown_080D5BB0:
    .incbin "baserom_sa3.gba", 0x000D5BB0, 0x28

    .global gUnknown_080D5BD8
gUnknown_080D5BD8:
    .incbin "baserom_sa3.gba", 0x000D5BD8, 0x14

    .global gUnknown_080D5BEC
gUnknown_080D5BEC:
    .incbin "baserom_sa3.gba", 0x000D5BEC, 0x1C

    .global sBossFinalAnimsHands
sBossFinalAnimsHands:
    .incbin "baserom_sa3.gba", 0x000D5C08, 0x30

    .global gUnknown_080D5C38
gUnknown_080D5C38:
    .incbin "baserom_sa3.gba", 0x000D5C38, 0x10

    .global gUnknown_080D5C48
gUnknown_080D5C48:
    .incbin "baserom_sa3.gba", 0x000D5C48, 0x8

    .global gUnknown_080D5C50
gUnknown_080D5C50:
    .incbin "baserom_sa3.gba", 0x000D5C50, 0x20

    .global gUnknown_080D5C70
gUnknown_080D5C70:
    .incbin "baserom_sa3.gba", 0x000D5C70, 0x8

    .global gUnknown_080D5C78
gUnknown_080D5C78:
    .incbin "baserom_sa3.gba", 0x000D5C78, 0x8

    .global gUnknown_080D5C80
gUnknown_080D5C80:
    .incbin "baserom_sa3.gba", 0x000D5C80, 0x20

    .global gUnknown_080D5CA0
gUnknown_080D5CA0:
    .incbin "baserom_sa3.gba", 0x000D5CA0, 0x4

    .global gUnknown_080D5CA4
gUnknown_080D5CA4:
    .incbin "baserom_sa3.gba", 0x000D5CA4, 0x4

    .global sBossExtraAnimsChaosEmeralds
sBossExtraAnimsChaosEmeralds:
    .incbin "baserom_sa3.gba", 0x000D5CA8, 0x2C

    .global gUnknown_080D5CD4
gUnknown_080D5CD4:
    .incbin "baserom_sa3.gba", 0x000D5CD4, 0x4

    .global gUnknown_080D5CD8
gUnknown_080D5CD8:
    .incbin "baserom_sa3.gba", 0x000D5CD8, 0x34

    .global gUnknown_080D5D0C
gUnknown_080D5D0C:
    .incbin "baserom_sa3.gba", 0x000D5D0C, 0xC

    .global gUnknown_080D5D18
gUnknown_080D5D18:
    .incbin "baserom_sa3.gba", 0x000D5D18, 0x8

    .global gUnknown_080D5D20
gUnknown_080D5D20:
    .incbin "baserom_sa3.gba", 0x000D5D20, 0x10

    .global gUnknown_080D5D30
gUnknown_080D5D30:
    .incbin "baserom_sa3.gba", 0x000D5D30, 0x20

    .global gUnknown_080D5D50
gUnknown_080D5D50:
    .incbin "baserom_sa3.gba", 0x000D5D50, 0x14

    .global gUnknown_080D5D64
gUnknown_080D5D64:
    .incbin "baserom_sa3.gba", 0x000D5D64, 0x80

    .global gUnknown_080D5DE4
gUnknown_080D5DE4:
    .incbin "baserom_sa3.gba", 0x000D5DE4, 0x80

    .global gUnknown_080D5E64
gUnknown_080D5E64:
    .incbin "baserom_sa3.gba", 0x000D5E64, 0x20

    .global gUnknown_080D5E84
gUnknown_080D5E84:
    .incbin "baserom_sa3.gba", 0x000D5E84, 0x140

    .global gUnknown_080D5FC4
gUnknown_080D5FC4:
    .incbin "baserom_sa3.gba", 0x000D5FC4, 0x150

@ --- Bosses End ---
