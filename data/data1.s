.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B483C
gUnknown_082B483C:
    .4byte gMultiSioIntrFuncBuf
    .4byte VBlankIntr, HBlankIntr, VCountIntr, Timer0Intr
    .4byte Timer1Intr, Timer2Intr, sub_80C66DC, Dma0Intr
    .4byte Dma1Intr, Dma2Intr, Dma3Intr, KeypadIntr
    .4byte GamepakIntr

    .global sVblankFuncs
sVblankFuncs:
    .4byte sub_80BC9DC, sa2__sub_8004010, sa2__sub_80039E4, sa2__sub_8002B20

    .global gUnknown_082B4884
gUnknown_082B4884:
    .4byte animCmd_GetTiles_BG, sub_80BE334, sub_80BF13C
    .4byte sub_80BF148, sub_80BF158, animCmd_AddHitbox_BG, sub_80BF16C
    .4byte sub_80BF188, sub_80BF194, sub_80BF1AC, sub_80BF1B4
    .4byte sub_80BF1C0
