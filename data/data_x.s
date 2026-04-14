.include "asm/macros/function.inc"
.include "asm/macros/portable.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080DBE58
gUnknown_080DBE58:
    .incbin "baserom_sa3.gba", 0x000DBE58, 0x2A

    .global gUnknown_080DBE82
gUnknown_080DBE82:
    .incbin "baserom_sa3.gba", 0x000DBE82, 0x2

    .global gUnknown_080DBE84
gUnknown_080DBE84:
    .incbin "baserom_sa3.gba", 0x000DBE84, 0x1C

    .global gUnknown_080DBEA0
gUnknown_080DBEA0:
    .incbin "baserom_sa3.gba", 0x000DBEA0, 0x58

    .global gUnknown_080DBEF8
gUnknown_080DBEF8:
    .incbin "baserom_sa3.gba", 0x000DBEF8, 0x68

    .global gUnknown_080DBF60
gUnknown_080DBF60:
    .incbin "baserom_sa3.gba", 0x000DBF60, 0x8

    .global gUnknown_080DBF68
gUnknown_080DBF68:
    .incbin "baserom_sa3.gba", 0x000DBF68, 0x2C

    .global gUnknown_080DBF94
gUnknown_080DBF94:
    .incbin "baserom_sa3.gba", 0x000DBF94, 0x14

    .global gUnknown_080DBFA8
gUnknown_080DBFA8:
    .incbin "baserom_sa3.gba", 0x000DBFA8, 0x24

    .global gUnknown_080DBFCC
gUnknown_080DBFCC:
    .incbin "baserom_sa3.gba", 0x000DBFCC, 0xC

    .global gUnknown_080DBFD8
gUnknown_080DBFD8:
    .incbin "baserom_sa3.gba", 0x000DBFD8, 0x10

    .global gUnknown_080DBFE8
gUnknown_080DBFE8:
    .incbin "baserom_sa3.gba", 0x000DBFE8, 0x4

    .global gUnknown_080DBFEC
gUnknown_080DBFEC:
    .incbin "baserom_sa3.gba", 0x000DBFEC, 0x380

    .global gUnknown_080DC36C
gUnknown_080DC36C:
    .incbin "baserom_sa3.gba", 0x000DC36C, 0x14

    .global gUnknown_080DC380
gUnknown_080DC380:
    .incbin "baserom_sa3.gba", 0x000DC380, 0x8

    .global gUnknown_080DC388
gUnknown_080DC388:
    .incbin "baserom_sa3.gba", 0x000DC388, 0x60

    .global gUnknown_080DC3E8
gUnknown_080DC3E8:
    .incbin "baserom_sa3.gba", 0x000DC3E8, 0x10

    .global gUnknown_080DC3F8
gUnknown_080DC3F8:
    .incbin "baserom_sa3.gba", 0x000DC3F8, 0x10

    .global gUnknown_080DC408
gUnknown_080DC408:
    .incbin "baserom_sa3.gba", 0x000DC408, 0x10

    .global gUnknown_080DC418
gUnknown_080DC418:
    .incbin "baserom_sa3.gba", 0x000DC418, 0x10

    .global gUnknown_080DC428
gUnknown_080DC428:
    .incbin "baserom_sa3.gba", 0x000DC428, 0xE

    .global gUnknown_080DC436
gUnknown_080DC436:
	.short 0x0479, 0x047B, 0x047C, 0x047D, 0x047E, 0x047F, 0x0480, 0x0000, 0x0000

    .align 2, 0
    .global gUnknown_080DC448
gUnknown_080DC448:
    mPtr sub_80B6774
	mPtr sub_80B5CC4
	mPtr sub_80B5CC4
	mPtr sub_80B5CC4
	mPtr sub_80B5EBC
	mPtr sub_80B5CC4
	mPtr sub_80B5CC4
	mPtr NULL
	mPtr NULL
	mPtr sub_80B5DF4
	mPtr sub_80B5CC4
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr sub_80B60E0
	mPtr NULL
    
    .align 2, 0
    .global gUnknown_080DC4B4
gUnknown_080DC4B4:
    .incbin "baserom_sa3.gba", 0x000DC4B4, 0xCB0

    .global gUnknown_080DD164
gUnknown_080DD164:
    .incbin "baserom_sa3.gba", 0x000DD164, 0xD90

    .global gUnknown_080DDEF4
gUnknown_080DDEF4:
    .incbin "baserom_sa3.gba", 0x000DDEF4, 0xEE0

    .global gUnknown_080DEDD4
gUnknown_080DEDD4:
    .incbin "baserom_sa3.gba", 0x000DEDD4, 0xE90

    .global gUnknown_080DFC64
gUnknown_080DFC64:
    .incbin "baserom_sa3.gba", 0x000DFC64, 0x1130

    .global gUnknown_080E0D94
gUnknown_080E0D94:
    .incbin "baserom_sa3.gba", 0x000E0D94, 0x1070

    .global gUnknown_080E1E04
gUnknown_080E1E04:
    .incbin "baserom_sa3.gba", 0x000E1E04, 0x1270

    .global gUnknown_080E3074
gUnknown_080E3074:
    .incbin "baserom_sa3.gba", 0x000E3074, 0x28

    .global gUnknown_080E309C
gUnknown_080E309C:
    .incbin "baserom_sa3.gba", 0x000E309C, 0x40

    .global gUnknown_080E30DC
gUnknown_080E30DC:
    .incbin "baserom_sa3.gba", 0x000E30DC, 0x18

    .global gUnknown_080E30F4
gUnknown_080E30F4:
    .incbin "baserom_sa3.gba", 0x000E30F4, 0x18

    .global gUnknown_080E310C
gUnknown_080E310C:
    .incbin "baserom_sa3.gba", 0x000E310C, 0x148

    .global gUnknown_080E3254
gUnknown_080E3254:
	mPtr sub_80B9148
    mPtr NULL 
    mPtr NULL 
    mPtr sub_80B915C
    mPtr sub_80B8EC4
    .int 1
    mPtr sub_80B9194
    mPtr sub_80B8F14
    .int 2 
    mPtr sub_80B91EC
    mPtr sub_80B7AEC
    .int 3 
    mPtr sub_80B9234
    mPtr sub_80B8F70
    mPtr NULL 
    mPtr sub_80B926C
    mPtr sub_80B8FB8
    mPtr NULL 
    mPtr sub_80B92A4
    mPtr NULL 
    mPtr NULL 
    mPtr sub_80B92E0
    mPtr sub_80B7C1C
    .int 4 
    mPtr sub_80B836C
    mPtr sub_80B9008
    .int 5
    mPtr sub_80B83FC
    mPtr sub_80B7CD0
    .int 6 
    mPtr sub_80B9374
    mPtr sub_80B9024
    .int 6 
    mPtr sub_80B93A4
    mPtr sub_80B90B4
    .int 6 
    mPtr sub_80B9548
    mPtr sub_80B80C8
    .int 6 
    mPtr sub_80B93E4
    mPtr sub_80B8168
    .int 6 
    mPtr sub_80B87B0
    mPtr sub_80B7D74
    .int 4 
    mPtr sub_80B94B0
    mPtr sub_80B7E1C
    .int 6 
    mPtr sub_80B94F0
    mPtr sub_80B7F90
    .int 6 
    mPtr sub_80B9548
    mPtr sub_80B8034
    .int 6 
    mPtr sub_80B8A20
    mPtr sub_80B7F00
	.int 6
