.include "asm/macros/function.inc"
.include "asm/macros/portable.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

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
    .short 0x46E, 0, 0x18, 0 @ ANIM_SP_STAGE_UI_CHARACTER_NAMES
    .short 0x46E, 4, 0x1B, 0 @ ANIM_SP_STAGE_UI_CHARACTER_NAMES
    .short 0x46E, 1, 0x18, 0 @ ANIM_SP_STAGE_UI_CHARACTER_NAMES
    .short 0x46E, 2, 0x1B, 0 @ ANIM_SP_STAGE_UI_CHARACTER_NAMES
    .short 0x46E, 3, 0x12, 0 @ ANIM_SP_STAGE_UI_CHARACTER_NAMES

    .global gUnknown_080E309C
gUnknown_080E309C:
    .short 0x466, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_RED        
    .short 0x467, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_BLUE       
    .short 0x468, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_YELLOW     
    .short 0x469, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_GREEN      
    .short 0x46A, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_WHITE      
    .short 0x46B, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_CYAN       
    .short 0x46C, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_PURPLE     
    .short 0x465, 0, 9, 0 @ ANIM_SP_STAGE_UI_EMERALD_NONE

    .global gUnknown_080E30DC
gUnknown_080E30DC:
    .incbin "baserom_sa3.gba", 0x000E30DC, 0x18

    .global gUnknown_080E30F4
gUnknown_080E30F4:
    .incbin "baserom_sa3.gba", 0x000E30F4, 0x18
