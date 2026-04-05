.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B9CD4
gUnknown_082B9CD4:
    .incbin "baserom_sa3.gba", 0x002B9CD4, 0x1464

    .global zone1_act1_rings
zone1_act1_rings:
    .incbin "baserom_sa3.gba", 0x002BB138, 0x7AC

    .global zone1_hub_rings
zone1_hub_rings:
    .incbin "baserom_sa3.gba", 0x002BB8E4, 0x1870

    .global zone1_act2_rings
zone1_act2_rings:
    .incbin "baserom_sa3.gba", 0x002BD154, 0x1688

    .global zone1_act3_rings
zone1_act3_rings:
    .incbin "baserom_sa3.gba", 0x002BE7DC, 0x600

    .global zone1_sonic_factory_rings
zone1_sonic_factory_rings:
    .incbin "baserom_sa3.gba", 0x002BEDDC, 0x50

    @ Dummy for all capsule minigames (they do not have rings)
    .global zone1_bonus_capsule_rings
zone1_bonus_capsule_rings:
    .incbin "baserom_sa3.gba", 0x002BEE2C, 0x134

    .global zone1_bonus_enemies_rings
zone1_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002BEF60, 0x1ADE8

    .global zone1_boss_rings
zone1_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9D48, 0x3E8

    .global gUnknown_082DA130
gUnknown_082DA130:
    .incbin "baserom_sa3.gba", 0x002DA130, 0x3C0
