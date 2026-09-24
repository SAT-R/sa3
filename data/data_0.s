.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080CECF8
gUnknown_080CECF8:
    .incbin "baserom_sa3.gba", 0x000CECF8, 0x60

    .global sEmeraldOverviewZoneNums
sEmeraldOverviewZoneNums:
    .incbin "baserom_sa3.gba", 0x000CED58, 0x38

    .global sEmeraldOverviewEmeraldNums
sEmeraldOverviewEmeraldNums:
    .incbin "baserom_sa3.gba", 0x000CED90, 0x58

    .global sEmeraldOverviewEmeraldGotIcons
sEmeraldOverviewEmeraldGotIcons:
    .incbin "baserom_sa3.gba", 0x000CEDE8, 0x38

    .global gUnknown_080CEE20
gUnknown_080CEE20:
    .incbin "baserom_sa3.gba", 0x000CEE20, 0x5

    .global gUnknown_080CEE25
gUnknown_080CEE25:
    .incbin "baserom_sa3.gba", 0x000CEE25, 0x1B

    .global gUnknown_080CEE40
gUnknown_080CEE40:
    .incbin "baserom_sa3.gba", 0x000CEE40, 0x80

    .global gTilemapIdsChaoMap
gTilemapIdsChaoMap:
    .short 0x1BF, 0x01C0, 0x01C1, 0x01C2, 0x01C3, 0x01C4

    .global gUnknown_080CEECC
gUnknown_080CEECC:
    .byte 0, 2, 4, 6, 8, 1, 3, 5, 7, 9, 0, 0

    .global gUnknown_080CEED8
gUnknown_080CEED8:
    mPtr gPayload_08E2F418
    mPtr gPayload_08E31880
    mPtr gPayload_08E31880
    mPtr gPayload_08E33C30
    mPtr gPayload_08E33C30
    mPtr gPayload_08E360A4
    mPtr gPayload_08E360A4
    mPtr gPayload_08E38464
    mPtr gPayload_08E38464
    mPtr gPayload_08E3A7F0
    mPtr gPayload_08E3A7F0
    mPtr gPayload_08E3CB98

    .global gUnknown_080CEF08
gUnknown_080CEF08:
    mPtr gUnknown_08E6DBE4
    mPtr gUnknown_08E74E1C
    mPtr gUnknown_08E66DB4
    mPtr gUnknown_08E62B0C
    mPtr NULL
    mPtr gPayload_08E3CB9C
    mPtr gUnknown_08E44B9C
    mPtr gUnknown_08E4CB9C
    mPtr gUnknown_08E54B9C

    .global gUnknown_080CEF2C
gUnknown_080CEF2C:
	.short 0x03EF, 0x0000, 0x2E		@ ANIM_TITLE_PRESS_START_JP
	.short 0x03F1, 0x0000, 0x1E		@ ANIM_TITLE_PRESS_START_EN
	.short 0x03F2, 0x0000, 0x22		@ ANIM_TITLE_PRESS_START_DE
	.short 0x03F3, 0x0000, 0x2E		@ ANIM_TITLE_PRESS_START_FR
	.short 0x03F4, 0x0000, 0x1E		@ ANIM_TITLE_PRESS_START_ES
	.short 0x03F5, 0x0000, 0x1E		@ ANIM_TITLE_PRESS_START_IT

    .global gUnknown_080CEF50
gUnknown_080CEF50:
    .short 0x0000, 0x0146, 0x01E9, 0x028C
