.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

@ --- Character Select ---

    .global gUnknown_080D8D00
gUnknown_080D8D00:
    .incbin "baserom_sa3.gba", 0x000D8D00, 0x8

    .global gUnknown_080D8D08
gUnknown_080D8D08:
    .incbin "baserom_sa3.gba", 0x000D8D08, 0x178

    .global gUnknown_080D8E80
gUnknown_080D8E80:
    .incbin "baserom_sa3.gba", 0x000D8E80, 0x78

    .global gUnknown_080D8EF8
gUnknown_080D8EF8:
    .incbin "baserom_sa3.gba", 0x000D8EF8, 0x8

    .global gUnknown_080D8F00
gUnknown_080D8F00:
    .incbin "baserom_sa3.gba", 0x000D8F00, 0x8

    .global gUnknown_080D8F08
gUnknown_080D8F08:
    .incbin "baserom_sa3.gba", 0x000D8F08, 0x8

    .global gUnknown_080D8F10
gUnknown_080D8F10:
    .incbin "baserom_sa3.gba", 0x000D8F10, 0x8

    .global gUnknown_080D8F18
gUnknown_080D8F18:
    .incbin "baserom_sa3.gba", 0x000D8F18, 0x5

    .global gUnknown_080D8F1D
gUnknown_080D8F1D:
    .incbin "baserom_sa3.gba", 0x000D8F1D, (5*8)*3 @ (NUM_CHARACTERS*8)*3

    .global gUnknown_080D8F95
gUnknown_080D8F95:
    .incbin "baserom_sa3.gba", 0x000D8F95, (5*8)*3 @ (NUM_CHARACTERS*8)*3

    .space 1 @ padding

    .global gAnnouncerSelect1st
gAnnouncerSelect1st:
    .short 0x1F5 @ VOICE__ANNOUNCER__SONIC_LOW
    .short 0x1F7 @ VOICE__ANNOUNCER__TAILS_LOW
    .short 0x1F9 @ VOICE__ANNOUNCER__KNUCKLES_LOW
    .short 0x1FD @ VOICE__ANNOUNCER__CREAM_LOW
    .short 0x1FB @ VOICE__ANNOUNCER__AMY_LOW

    .global gAnnouncerSelect2nd
gAnnouncerSelect2nd:
    .short 0x1F6 @ VOICE__ANNOUNCER__SONIC_HIGH
    .short 0x1F8 @ VOICE__ANNOUNCER__TAILS_HIGH
    .short 0x1FA @ VOICE__ANNOUNCER__KNUCKLES_HIGH
    .short 0x1FE @ VOICE__ANNOUNCER__CREAM_HIGH
    .short 0x1FC @ VOICE__ANNOUNCER__AMY_HIGH

    .global gCharacterSelectedVoices
gCharacterSelectedVoices:
    .short 0x265 @ VOICE__SONIC__OKAY
    .short 0x269 @ VOICE__TAILS__OKAY
    .short 0x272 @ VOICE__KNUCKLES__LETS_GO
    .short 0x278 @ VOICE__CREAM__HERE_WE_GO
    .short 0x274 @ VOICE__AMY__WOOHOO
