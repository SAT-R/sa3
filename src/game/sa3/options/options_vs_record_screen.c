#include "global.h"
#include "core.h"
#include "game/shared/stage/player.h" // MAX_PLAYER_NAME_LENGTH
#include "game/save.h"

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6[6];
    /* 0x00C */ u8 unkC;
    /* 0x00D */ u8 unkD[0xB];
    /* 0x018 */ u8 unk18;
    /* 0x019 */ u8 unk19;
    /* 0x01A */ u8 unk1A;
    /* 0x01B */ u8 vsRecordPlayerCount;
    /* 0x01C */ u16 unk1C;
    /* 0x01E */ u16 unk1E;
    /* 0x020 */ u8 filler20[0x4];
    /* 0x028 */ u16 unk24;
    /* 0x028 */ u16 unk26;
    /* 0x028 */ u16 unk28;
    /* 0x02A */ u16 unk2A;
    /* 0x02C */ u16 playerName[MAX_PLAYER_NAME_LENGTH];
    /* 0x038 */ u8 playerRecord[6]; // [vsRecordType * [tens/ones]]
    /* 0x03E */ u16 nameList[11][MAX_PLAYER_NAME_LENGTH];
    // Used for rendering digits. [player_count][vsRecordType][tens/ones]
    /* 0x0C2 */ u8 recordsRivals[11][3][2];
    /* 0x104 */ u8 *vram104;
    /* 0x108 */ u8 filler108[0x8];
    /* 0x110 */ s32 qUnk110;
    /* 0x114 */ s32 qUnk114;
    /* 0x118 */ s32 qUnk118;
    /* 0x11C */ s32 qUnk11C;
    /* 0x120 */ s32 qUnk120;
    /* 0x124 */ s32 qUnk124;
    /* 0x128 */ s32 qUnk128;
    /* 0x12C */ s32 qUnk12C;
    /* 0x130 */ s32 qUnk130;
    /* 0x134 */ s32 qUnk134;
    /* 0x138 */ s32 qUnk138;
    /* 0x13C */ s32 qUnk13C;
    /* 0x140 */ s32 qUnk140;
    /* 0x144 */ s32 qUnk144;
    /* 0x148 */ s32 qUnk148;
    /* 0x14C */ s32 qUnk14C;
    /* 0x150 */ Sprite spr150;
    /* 0x178 */ Sprite spr178[6];
    /* 0x150 */ Sprite spr268[6];
    /* 0x150 */ Sprite spr358[6][6];
    /* 0x8F8 */ Sprite spr8F8[6][6];
    /* 0xE98 */ Sprite sprE98;
    /* 0xE98 */ Sprite sprEC0;
    /* 0xEE8 */ u8 fillerEE8[0x50];
    /* 0xF38 */ Background bgF38;
    /* 0xF78 */ Background bgF78;
} OptionsVsRecordScreen; /* 0xFB8 */

void Task_VsRecordScreen(void);
void sub_8096918(OptionsVsRecordScreen *vsRecScreen);
void sub_8096B30(OptionsVsRecordScreen *vsRecScreen);
void sub_8096C60(OptionsVsRecordScreen *vsRecScreen);
void sub_8096EB8(OptionsVsRecordScreen *vsRecScreen);
void sub_80970DC(OptionsVsRecordScreen *vsRecScreen);
void sub_80971FC(OptionsVsRecordScreen *vsRecScreen);
void sub_80972EC(OptionsVsRecordScreen *vsRecScreen);
void sub_809738C(OptionsVsRecordScreen *vsRecScreen);
void sub_8097408(OptionsVsRecordScreen *vsRecScreen);
void sub_8097474(OptionsVsRecordScreen *vsRecScreen);
void sub_8097530(OptionsVsRecordScreen *vsRecScreen);
void sub_8097608(OptionsVsRecordScreen *vsRecScreen, u8 arg1);
void sub_8097710(OptionsVsRecordScreen *vsRecScreen);
bool32 sub_8097830(OptionsVsRecordScreen *vsRecScreen);
bool32 sub_809789C(OptionsVsRecordScreen *vsRecScreen, s32 arg1);
void sub_8097958(OptionsVsRecordScreen *vsRecScreen, s32 arg1);
void sub_8097ACC(OptionsVsRecordScreen *vsRecScreen);
bool32 sub_8097B54(OptionsVsRecordScreen *vsRecScreen);
void sub_8097BB4(OptionsVsRecordScreen *vsRecScreen);
void sub_8097BE8(OptionsVsRecordScreen *vsRecScreen);
void sub_8097C28(OptionsVsRecordScreen *vsRecScreen);
void TaskDestructor_VsRecordScreen(struct Task *t);

extern void sub_80BE46C(Sprite *s);
extern ColorRaw sub_80C4C0C(ColorRaw color);
extern const TileInfo2 gUnknown_080D8BF4[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D8C24[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D8C54;
extern const TileInfo2 gUnknown_080D8C5C;
extern const TileInfo2 gUnknown_080D8C64;
extern const TileInfo2 gUnknown_080D8C6C;

void CreateVsRecordScreen(void)
{
    OptionsVsRecordScreen *vsRecScreen;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;

    vsRecScreen = TASK_DATA(TaskCreate(Task_VsRecordScreen, sizeof(OptionsVsRecordScreen), 0x101, 0U, TaskDestructor_VsRecordScreen));
    sub_8096B30(vsRecScreen);
    sub_8096918(vsRecScreen);

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 3;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;

    sub_8096EB8(vsRecScreen);
    sub_8096C60(vsRecScreen);

    gBgPalette[0] = sub_80C4C0C(RGB_BLACK);
}

void sub_8096918(OptionsVsRecordScreen *vsRecScreen)
{
    u16 nameChar;
    u8 nameCharIndex;
    u8 rivalIndex;

    for (rivalIndex = 0; rivalIndex < ARRAY_COUNT(vsRecScreen->nameList); rivalIndex++) {
#ifdef BUG_FIX
        // BUG:  Missing array bounds check. It's 10 slots in LOADED_SAVE->vsRecords!
        // TOOD: It's a bit stupid to effectively do this check 11 times,
        //       but it's just once every time the VsRecords get opened (which most players don't constantly do, I think?).
        //       Alternatively, we could move the code into the proc's lowest else-block and check [rivalIndex-1].slotFilled
        if (rivalIndex < ARRAY_COUNT(LOADED_SAVE->vsRecords))
#endif
        {
            if (LOADED_SAVE->vsRecords[rivalIndex].slotFilled) {
                vsRecScreen->vsRecordPlayerCount += 1;
            }
        }

        for (nameCharIndex = 0; nameCharIndex < MAX_PLAYER_NAME_LENGTH; nameCharIndex++) {
            if (rivalIndex == 0) {
                vsRecScreen->playerName[nameCharIndex] = LOADED_SAVE->playerName[nameCharIndex];
                vsRecScreen->nameList[0][nameCharIndex] = LOADED_SAVE->vsRecords[0].playerName[nameCharIndex];
            } else {
                vsRecScreen->nameList[rivalIndex][nameCharIndex] = LOADED_SAVE->vsRecords[rivalIndex - 1].playerName[nameCharIndex];

                if (vsRecScreen->nameList[rivalIndex][nameCharIndex] != 0xFFFF) {
                    vsRecScreen->unkD[rivalIndex] += 1;
                }
            }
        }

        if (rivalIndex == 0) {
            vsRecScreen->recordsRivals[0][0][0] = LOADED_SAVE->vsRecords[0].wins / 10U;
            vsRecScreen->recordsRivals[0][0][1] = LOADED_SAVE->vsRecords[0].wins % 10U;
            vsRecScreen->recordsRivals[0][1][0] = LOADED_SAVE->vsRecords[0].losses / 10U;
            vsRecScreen->recordsRivals[0][1][1] = LOADED_SAVE->vsRecords[0].losses % 10U;
            vsRecScreen->recordsRivals[0][2][0] = LOADED_SAVE->vsRecords[0].draws / 10U;
            vsRecScreen->recordsRivals[0][2][1] = LOADED_SAVE->vsRecords[0].draws % 10U;
            vsRecScreen->playerRecord[0] = LOADED_SAVE->vsWins / 10U;
            vsRecScreen->playerRecord[1] = LOADED_SAVE->vsWins % 10U;
            vsRecScreen->playerRecord[2] = LOADED_SAVE->vsLosses / 10U;
            vsRecScreen->playerRecord[3] = LOADED_SAVE->vsLosses % 10U;
            vsRecScreen->playerRecord[4] = LOADED_SAVE->vsDraws / 10U;
            vsRecScreen->playerRecord[5] = LOADED_SAVE->vsDraws % 10U;
        } else {
            vsRecScreen->recordsRivals[rivalIndex][0][0] = LOADED_SAVE->vsRecords[rivalIndex - 1].wins / 10U;
            vsRecScreen->recordsRivals[rivalIndex][0][1] = LOADED_SAVE->vsRecords[rivalIndex - 1].wins % 10U;
            vsRecScreen->recordsRivals[rivalIndex][1][0] = LOADED_SAVE->vsRecords[rivalIndex - 1].losses / 10U;
            vsRecScreen->recordsRivals[rivalIndex][1][1] = LOADED_SAVE->vsRecords[rivalIndex - 1].losses % 10U;
            vsRecScreen->recordsRivals[rivalIndex][2][0] = LOADED_SAVE->vsRecords[rivalIndex - 1].draws / 10U;
            vsRecScreen->recordsRivals[rivalIndex][2][1] = LOADED_SAVE->vsRecords[rivalIndex - 1].draws % 10U;
        }
    }
}

void sub_8096B30(OptionsVsRecordScreen *vsRecScreen)
{
    u8 i;

    vsRecScreen->language = LOADED_SAVE->language;
    vsRecScreen->unk1C = 0;
    vsRecScreen->unk28 = 0;
    vsRecScreen->unk2A = 0;
    vsRecScreen->unk1 = 0;
    vsRecScreen->unk3 = 0;
    vsRecScreen->unk4 = 0;
    vsRecScreen->unk1E = 0;
    vsRecScreen->unk5 = 0;
    vsRecScreen->unk2 = 0;
    vsRecScreen->unk19 = 0;
    vsRecScreen->unk1A = 0;
    vsRecScreen->unkC = 0;
    vsRecScreen->vsRecordPlayerCount = 0;

    for (i = 0; i < 6; i++) {
        vsRecScreen->unk6[i] = i;
    }

    for (i = 0; i < 11; i++) {
        vsRecScreen->unkD[i] = 0;
    }

    vsRecScreen->qUnk118 = 0x6400;
    vsRecScreen->qUnk11C = 0x4B00;
    vsRecScreen->qUnk110 = 0x5B00;
    vsRecScreen->qUnk114 = 0x4B00;
    vsRecScreen->qUnk120 = 0x5E00;
    vsRecScreen->qUnk124 = 0x3C00;
    vsRecScreen->qUnk128 = 0x800;
    vsRecScreen->qUnk12C = 0x4C00;
    vsRecScreen->unk24 = 0;
    vsRecScreen->unk26 = 0;
    vsRecScreen->qUnk138 = -0x8C00;
    vsRecScreen->qUnk13C = 0x1000;
    vsRecScreen->qUnk130 = -0x1600;
    vsRecScreen->qUnk134 = 0x6400;
    vsRecScreen->qUnk140 = 0x7800;
    vsRecScreen->qUnk144 = 0x8E00;
    vsRecScreen->qUnk148 = 0x7800;
    vsRecScreen->qUnk14C = 0x2E00;
    vsRecScreen->vram104 = (void *)OBJ_VRAM0;
}

void sub_8096C60(OptionsVsRecordScreen *vsRecScreen)
{
    u8 *sp0;
    u16 *sp4;
    u16 *sp8;
    Sprite *s;
    s32 temp_r8;
    s32 temp_r8_2;
    u16 *var_r2;
    u16 *var_r3;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_sb;
    u8 i;
    u8 var_r4_2;
    void *temp_r2;
    void *temp_r5_2;
    u8 lang = vsRecScreen->language;
    const TileInfo2 *tileInfo;

    s = &vsRecScreen->spr150;
    s->tiles = vsRecScreen->vram104;
    vsRecScreen->vram104 += gUnknown_080D8BF4[lang].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D8BF4[lang].anim;
    s->variant = gUnknown_080D8BF4[lang].variant;
    s->prevVariant = 0xFF;
    s->x = I(vsRecScreen->qUnk138);
    s->y = I(vsRecScreen->qUnk13C);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &vsRecScreen->sprE98;
    s->tiles = (u8 *)vsRecScreen->vram104;
    vsRecScreen->vram104 += gUnknown_080D8C6C.numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D8C6C.anim;
    s->variant = gUnknown_080D8C6C.variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)vsRecScreen->qUnk140 >> 8);
    s->y = (s16)((s32)vsRecScreen->qUnk144 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &vsRecScreen->sprEC0;
    s->tiles = (u8 *)0x06004000;
    s->anim = gUnknown_080D8C24[lang].anim;
    s->variant = gUnknown_080D8C24[lang].variant;
    s->prevVariant = -1;
    s->x = 0;
    s->y = 8;
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x8000;
    UpdateSpriteAnimation_BG(s);

    sub_80BE46C(s);

    for (i = 0; i < 6; i++) {
        s = &vsRecScreen->spr268[i];
        s->tiles = (u8 *)vsRecScreen->vram104;
        vsRecScreen->vram104 += gUnknown_080D8C5C.numTiles * TILE_SIZE_4BPP;
        if (vsRecScreen->playerName[i] != 0xFFFF) {
            if (vsRecScreen->playerName[i] >= 0x100) {
                s->variant = (u8)vsRecScreen->playerName[i];
                s->anim = gUnknown_080D8C64.anim;
            } else {
                s->variant = (u8)vsRecScreen->playerName[i];
                s->anim = gUnknown_080D8C5C.anim;
            }

            vsRecScreen->unkC += 1;
        } else {
            s->variant = 0;
            s->anim = gUnknown_080D8C5C.anim;
        }
        s->prevVariant = 0xFF;
        s->x = (i * 8) + 18;
        s->y = 69;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->oamFlags = 0;
        s->frameFlags = 0x80;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 6; i++) {
        s = &vsRecScreen->spr178[i];
        s->tiles = (u8 *)vsRecScreen->vram104;
        vsRecScreen->vram104 += gUnknown_080D8C54.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D8C54.anim;
        s->variant = gUnknown_080D8C54.variant + vsRecScreen->playerRecord[i];
        s->prevVariant = -1;
        s->x = ((s32)vsRecScreen->qUnk110 >> 8) + (i * 8);
        s->y = (s16)((s32)vsRecScreen->qUnk114 >> 8);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->oamFlags = 0;
        s->frameFlags = 0x80;
        UpdateSpriteAnimation(s);
    }
}

#if 0
void sub_8096EB8(OptionsVsRecordScreen *vsRecScreen) {
    gBgCntRegs->unk0 = 0x602;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    vsRecScreen->bgF38.graphics.dest = (void *)0x06000000;
    vsRecScreen->bgF38.graphics.anim = 0;
    vsRecScreen->bgF38.layoutVram = (u16 *)0x06003000;
    vsRecScreen->bgF38.unk18 = 0;
    vsRecScreen->bgF38.unk1A = 0;
    vsRecScreen->bgF38.tilemapId = 0x15F;
    vsRecScreen->bgF38.unk1E = 0;
    vsRecScreen->bgF38.unk20 = 0;
    vsRecScreen->bgF38.unk22 = 0;
    vsRecScreen->bgF38.unk24 = 0;
    vsRecScreen->bgF38.targetTilesX = 0x20;
    vsRecScreen->bgF38.targetTilesY = 0x20;
    vsRecScreen->bgF38.paletteOffset = 0;
    vsRecScreen->bgF38.flags = 0;
    DrawBackground(&vsRecScreen->bgF38);
    gBgCntRegs[1] = 0x1007;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[2] = 0x1E0D;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    vsRecScreen->bgF78.graphics.dest = (void *)0x0600C000;
    vsRecScreen->bgF78.graphics.anim = 0;
    vsRecScreen->bgF78.layoutVram = (u16 *)0x0600F000;
    vsRecScreen->bgF78.unk18 = 0;
    vsRecScreen->bgF78.unk1A = 0;
    vsRecScreen->bgF78.tilemapId = 0x164;
    vsRecScreen->bgF78.unk1E = 0;
    vsRecScreen->bgF78.unk20 = 0;
    vsRecScreen->bgF78.unk22 = 0;
    vsRecScreen->bgF78.unk24 = 0;
    vsRecScreen->bgF78.targetTilesX = 0x1E;
    vsRecScreen->bgF78.targetTilesY = 0x14;
    vsRecScreen->bgF78.paletteOffset = 0;
    vsRecScreen->bgF78.flags = 2;
    DrawBackground(&vsRecScreen->bgF78);
    gWinRegs[2] = ((u16) vsRecScreen->unk1E >> 8) + 0x3C3C;
}

void Task_VsRecordScreen(OptionsVsRecordScreen *vsRecScreen) {
    u8 *sp0;
    OptionsVsRecordScreen *sp4;
    s32 *sp8;
    OptionsVsRecordScreen *var_r3;
    Sprite *temp_r2;
    u16 temp_r1;
    u8 temp_r0;
    u8 var_r4;
    u8 var_r5;
    void *temp_r8;

    var_r3 = vsRecScreen;
    var_r4 = var_r3->unk19;
    if ((s32) var_r4 < (s32) (var_r4 + 3)) {
        sp0 = vsRecScreen->nameList;
        sp8 = &vsRecScreen->vram104;
        do {
            var_r5 = 0;
            temp_r8 = (var_r4 * 0xF0) + 0x8F8 + var_r3;
loop_3:
            temp_r2 = temp_r8 + (var_r5 * 0x28);
            temp_r2->tiles = *sp8;
            *sp8 += gUnknown_080D8C5C.unk4 << 5;
            temp_r1 = sp0[(var_r5 * 2) + (var_r4 * 0xC)];
            if (temp_r1 != 0xFFFF) {
                if ((u32) temp_r1 > 0xFFU) {
                    temp_r2->variant = temp_r1 + gUnknown_080D8C5C.unk2;
                    temp_r2->anim = gUnknown_080D8C64;
                } else {
                    temp_r2->variant = temp_r1 + gUnknown_080D8C5C.unk2;
                    temp_r2->anim = gUnknown_080D8C5C.unk0;
                }
            } else {
                temp_r2->anim = gUnknown_080D8C5C.unk0;
                temp_r2->variant = 0;
            }
            temp_r2->prevVariant = 0xFF;
            temp_r2->x = (var_r5 * 8) + 0x12;
            temp_r2->y = 0x45;
            temp_r2->animCursor = 0;
            temp_r2->qAnimDelay = 0;
            temp_r2->animSpeed = 0x10;
            temp_r2->palId = 0;
            temp_r2->oamFlags = 0x40;
            temp_r2->frameFlags = 0x2080;
            sp4 = var_r3;
            UpdateSpriteAnimation(temp_r2);
            var_r5 += 1;
            if ((u32) var_r5 <= 5U) {
                goto loop_3;
            }
            var_r4 += 1;
        } while ((s32) var_r4 < (s32) (var_r3->unk19 + 3));
    }
    temp_r0 = var_r4 + var_r3->unk19;
    var_r3->unk19 = temp_r0;
    if ((u32) temp_r0 > 5U) {
        var_r3->unk19 = 0;
        gCurTask->main = (void (*)()) sub_80970DC;
    }
}

void sub_80970DC(OptionsVsRecordScreen *vsRecScreen) {
    u8 *sp4;
    s32 sp8;
    s32 spC;
    s32 *sp10;
    Sprite *temp_r0;
    s32 var_r3;
    u8 temp_r0_2;
    u8 var_r4;
    u8 var_r5;

    var_r4 = vsRecScreen->unk19;
    if ((s32) var_r4 < (s32) (var_r4 + 3)) {
        sp4 = vsRecScreen->recordsRivals[0][0];
        sp10 = &vsRecScreen->vram104;
        subroutine_arg0 = gUnknown_080D8C54.unk2;
        do {
            var_r5 = 0;
            sp8 = var_r4 + 1;
            var_r3 = var_r4 * 0x10;
loop_3:
            temp_r0 = (var_r5 * 0x28) + ((var_r4 * 0xF0) + 0x358 + vsRecScreen);
            temp_r0->tiles = *sp10;
            *sp10 += gUnknown_080D8C54.unk4 << 5;
            temp_r0->anim = gUnknown_080D8C54.unk0;
            temp_r0->variant = subroutine_arg0 + sp4[var_r5 + (var_r4 * 6)];
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = ((s32) vsRecScreen->qUnk110 >> 8) + (var_r5 * 8);
            temp_r0->y = ((s32) vsRecScreen->qUnk114 >> 8) + var_r3;
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->oamFlags = 0x40;
            temp_r0->frameFlags = 0x2080;
            spC = var_r3;
            UpdateSpriteAnimation(temp_r0);
            var_r5 += 1;
            if ((u32) var_r5 <= 5U) {
                goto loop_3;
            }
            var_r4 = (u8) sp8;
        } while ((s32) var_r4 < (s32) (vsRecScreen->unk19 + 3));
    }
    temp_r0_2 = var_r4 + vsRecScreen->unk19;
    vsRecScreen->unk19 = temp_r0_2;
    if ((u32) temp_r0_2 > 5U) {
        gCurTask->main = (void (*)()) sub_80971FC;
    }
}

void sub_80971FC(OptionsVsRecordScreen *vsRecScreen) {
    u16 temp_r5;

    temp_r5 = vsRecScreen->unk2A;
    if (temp_r5 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x3336;
        gWinRegs[5] = temp_r5;
        gBldRegs.bldY = 0x10;
        vsRecScreen->unk28 = 0x1000;
        vsRecScreen->unk2A = 1;
    }
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097C28(vsRecScreen);
    gWinRegs[2] = vsRecScreen->unk1E + 0x3C3C;
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) vsRecScreen->unk28 >> 8);
        vsRecScreen->unk28 += 0xFFFFFF00;
        gBgScrollRegs[1][0] = -0x64;
        gBgScrollRegs[1][1] = -0x2E;
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gWinRegs[4] = 0x3316;
    gBldRegs.bldAlpha = 0x1F00;
    gBldRegs.bldCnt = 0x140;
    gDispCnt |= 0x400;
    gCurTask->main = (void (*)()) sub_809738C;
}

void sub_80972EC(OptionsVsRecordScreen *vsRecScreen) {
    if (vsRecScreen->unk2A != 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x3332;
        gWinRegs[5] = 0;
        vsRecScreen->unk28 = 0;
        vsRecScreen->unk2A = 0;
    }
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097C28(vsRecScreen);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) vsRecScreen->unk28 >> 8);
        vsRecScreen->unk28 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    LaunchOptionsMenu(0xA);
    TaskDestroy(gCurTask);
}

void sub_809738C(OptionsVsRecordScreen *vsRecScreen) {
    s32 temp_r1;
    u8 var_r5;

    var_r5 = 0;
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    if (sub_8097830(vsRecScreen) == 1) {
        var_r5 = 1;
    }
    if (sub_809789C(vsRecScreen, 0) == 1) {
        var_r5 += 1;
    }
    sub_8097C28(vsRecScreen);
    sub_8097958(vsRecScreen, 0);
    temp_r1 = vsRecScreen->qUnk134;
    gWinRegs[2] = temp_r1 + (temp_r1 >> 8) + ((u16) vsRecScreen->unk1E >> 8);
    if (var_r5 == 2) {
        gCurTask->main = (void (*)()) sub_8097474;
    }
}

void sub_8097408(OptionsVsRecordScreen *vsRecScreen) {
    s32 temp_r1;
    s32 var_r6;

    var_r6 = 0;
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    if (sub_809789C(vsRecScreen, 1) == 1) {
        var_r6 = 1;
    }
    sub_8097C28(vsRecScreen);
    temp_r1 = vsRecScreen->qUnk134;
    gWinRegs[2] = temp_r1 + (temp_r1 >> 8) + ((u16) vsRecScreen->unk1E >> 8);
    if (var_r6 != 0) {
        gWinRegs[4] = 0x3332;
        gCurTask->main = (void (*)()) sub_80972EC;
    }
}

void sub_8097474(OptionsVsRecordScreen *vsRecScreen) {
    u16 temp_r2;
    u8 temp_r1;
    void (*var_r0)(OptionsVsRecordScreen *);

    sub_8097710(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097C28(vsRecScreen);
    sub_8097958(vsRecScreen, 0);
    sub_8097ACC(vsRecScreen);
    temp_r2 = 2 & gPressedKeys;
    if (temp_r2 != 0) {
        var_r0 = sub_8097408;
        goto block_11;
    }
    if (0xC0 & gRepeatedKeys) {
        if ((0x40 & gRepeatedKeys) && (vsRecScreen->unk2 != 0)) {
            vsRecScreen->unk1 = 2;
            vsRecScreen->unk19 = (u8) temp_r2;
            vsRecScreen->unk1A = (u8) temp_r2;
            goto block_10;
        }
        if (0x80 & gRepeatedKeys) {
            temp_r1 = vsRecScreen->unk2;
            if (((s32) (vsRecScreen->vsRecordPlayerCount - temp_r1) > 5) && ((u32) temp_r1 <= 5U)) {
                vsRecScreen->unk1 = 1;
                vsRecScreen->unk19 = 0;
                vsRecScreen->unk1A = 0;
block_10:
                var_r0 = sub_8097530;
block_11:
                gCurTask->main = var_r0;
            }
        }
    }
}

void sub_8097530(OptionsVsRecordScreen *vsRecScreen) {
    u8 *temp_r3;
    u8 *temp_r3_2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r5;

    var_r5 = saved_reg_r5;
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097ACC(vsRecScreen);
    sub_8097C28(vsRecScreen);
    sub_8097958(vsRecScreen, 1);
    if (sub_8097B54(vsRecScreen) == 1) {
        temp_r0 = vsRecScreen->unk1;
        if (temp_r0 == 1) {
            temp_r0_2 = vsRecScreen->unk2 + 1;
            vsRecScreen->unk2 = temp_r0_2;
            if ((u32) temp_r0_2 > 6U) {
                vsRecScreen->unk2 = 6;
            }
            var_r5 = vsRecScreen->unk6[0];
            var_r1 = 0;
            temp_r3 = vsRecScreen->unk6;
            do {
                temp_r3[var_r1].unk0 = temp_r3[var_r1].unk1;
                var_r1 += 1;
            } while ((u32) var_r1 <= 4U);
            vsRecScreen->unk6[5] = var_r5;
            var_r0 = 6;
            goto block_13;
        }
        if (temp_r0 == 2) {
            temp_r0_3 = vsRecScreen->unk2 - 1;
            vsRecScreen->unk2 = temp_r0_3;
            if ((u32) temp_r0_3 > 6U) {
                vsRecScreen->unk2 = 0;
            }
            var_r5 = vsRecScreen->unk6[5];
            var_r1_2 = 5;
            temp_r3_2 = vsRecScreen->unk6;
            do {
                temp_r1 = var_r1_2 - 1;
                temp_r3_2[var_r1_2] = temp_r3_2[temp_r1];
                var_r1_2 = temp_r1;
            } while (var_r1_2 != 0);
            vsRecScreen->unk6[0] = var_r5;
            var_r0 = 1;
block_13:
            vsRecScreen->unk18 = var_r0;
        }
        sub_8097608(vsRecScreen, var_r5);
        gCurTask->main = (void (*)()) sub_8097474;
    }
}

void sub_8097608(OptionsVsRecordScreen *vsRecScreen, u8 arg1) {
    s32 sp0;
    u8 *sp4;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    u16 *var_r0;
    u16 temp_r0_2;
    u8 *temp_r1_2;
    u8 *temp_r1_4;
    u8 *temp_r1_5;
    u8 temp_r0;
    u8 temp_r1;
    u8 temp_r1_3;
    u8 temp_r5;
    u8 var_r5;
    u8 var_r7;

    var_r5 = saved_reg_r8;
    sp0 = (s32) arg1;
    temp_r0 = vsRecScreen->unk18;
    temp_r1 = vsRecScreen->unk2;
    if ((u32) (temp_r1 + temp_r0) <= 0xBU) {
        var_r5 = temp_r1 + (temp_r0 + 0xFF);
    }
    temp_r1_2 = vsRecScreen->unkD;
    temp_r1_2[var_r5] = 0;
    var_r7 = 0;
    sp4 = temp_r1_2;
    do {
        temp_r1_3 = vsRecScreen->unk2;
        if ((u32) (temp_r1_3 + temp_r0) <= 0xBU) {
            temp_r5 = temp_r1_3 + (temp_r0 + 0xFF);
            temp_r4 = vsRecScreen + ((sp0 * 0xF0) + 0x8F8) + (var_r7 * 0x28);
            temp_r1_4 = &vsRecScreen->nameList[(var_r7 * 2) + (temp_r5 * 0xC)];
            temp_r0_2 = *temp_r1_4;
            if (temp_r0_2 != 0xFFFF) {
                if ((u32) temp_r0_2 > 0xFFU) {
                    var_r0 = &gUnknown_080D8C64;
                } else {
                    var_r0 = &gUnknown_080D8C5C;
                }
                temp_r4->anim = *var_r0;
                temp_r4->variant = (u8) *temp_r1_4;
                temp_r1_5 = &sp4[temp_r5];
                *temp_r1_5 += 1;
                UpdateSpriteAnimation(temp_r4);
            }
            temp_r4_2 = vsRecScreen + ((sp0 * 0xF0) + 0x358) + (var_r7 * 0x28);
            temp_r4_2->variant = vsRecScreen->recordsRivals[0][0][var_r7 + (temp_r5 * 6)] + gUnknown_080D8C54.unk2;
            UpdateSpriteAnimation(temp_r4_2);
        }
        var_r7 += 1;
    } while ((u32) var_r7 <= 5U);
}

void sub_8097710(OptionsVsRecordScreen *vsRecScreen) {
    u32 sp0;
    u32 sp4;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u16 var_r2;
    u32 temp_r4;
    u32 var_r0;
    u32 var_r1;
    u32 var_r3;
    u8 temp_r0;
    u8 temp_r1;
    u8 temp_r5;
    void *var_r7;

    gFlags |= 4;
    temp_r5 = (u8) ((s32) vsRecScreen->qUnk134 >> 8);
    temp_r1 = temp_r5 + ((u16) vsRecScreen->unk1E >> 8);
    temp_r0 = temp_r1;
    sp0 = (u32) ((temp_r1 << 0x18) + 0xE8000000) >> 0x18;
    temp_r4 = (u32) (vsRecScreen->qUnk130 << 8) >> 0x10;
    gHBlankCopyTarget = (void *)0x04000040;
    gHBlankCopySize = 2;
    var_r7 = gBgOffsetsHBlankPrimary;
    var_r3 = 0;
    sp4 = (temp_r4 + 0x1E) << 0x10;
    do {
        if ((u32) (u8) (var_r3 - 0x1E) <= 3U) {
            var_r2 = 0x78;
            var_r1 = 0x79;
        } else {
            if ((var_r3 >= (u32) temp_r5) && ((s32) var_r3 < (s32) (temp_r5 + 0xC))) {
                temp_r1_2 = var_r3 - temp_r5;
                var_r2 = temp_r4 + *((temp_r1_2 * 4) + &gUnknown_080D8C74);
                var_r0 = (temp_r4 + *((temp_r1_2 * 4) + 2 + &gUnknown_080D8C74) + 0x2B) << 0x10;
            } else if (((s32) var_r3 >= (s32) (temp_r0 - 0xC)) && (var_r3 < (u32) temp_r0)) {
                temp_r1_3 = var_r3 - sp0;
                var_r2 = temp_r4 + *((temp_r1_3 * 4) + &gUnknown_080D8C74);
                var_r0 = (temp_r4 + *((temp_r1_3 * 4) + 2 + &gUnknown_080D8C74) + 0x2B) << 0x10;
            } else {
                var_r2 = (u16) (sp4 >> 0x10);
                var_r0 = (temp_r4 + 0xFE) << 0x10;
            }
            var_r1 = var_r0 >> 0x10;
        }
        *var_r7 = (s16) (var_r1 + (var_r2 << 8));
        var_r7 += 2;
        var_r3 = (u32) (u8) (var_r3 + 1);
    } while (var_r3 <= 0x9FU);
}

u32 sub_8097830(OptionsVsRecordScreen *vsRecScreen) {
    s32 temp_r1;
    u8 temp_r4;

    temp_r4 = vsRecScreen->unk5;
    temp_r1 = vsRecScreen->qUnk138 + *((temp_r4 * 4) + &gUnknown_080D6ED4);
    vsRecScreen->qUnk138 = temp_r1;
    switch (temp_r4) {                              /* irregular */
    case 0:
        if (temp_r1 <= 0x9FF) {
            if ((temp_r4 == 1) && ((s32) vsRecScreen->qUnk138 <= 0xFFFFF600)) {
                goto block_4;
            }
            if ((temp_r4 == 2) && ((s32) vsRecScreen->qUnk138 > 0)) {
                vsRecScreen->qUnk138 = 0;
                return 1U;
            }
            goto block_8;
        }
block_4:
        vsRecScreen->unk5 += 1;
block_8:
    default:
        return 0U;
    }
}

u32 sub_809789C(OptionsVsRecordScreen *vsRecScreen, s32 arg1) {
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r1;
    s32 temp_r2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u8 var_r3;

    var_r3 = 0;
    if ((arg1 << 0x18) == 0) {
        temp_r0 = vsRecScreen->unk1E;
        if ((u32) temp_r0 <= 0x4FFFU) {
            temp_r0_2 = temp_r0 + 0x1000;
            vsRecScreen->unk1E = temp_r0_2;
            if ((u32) temp_r0_2 > 0x4FFFU) {
                vsRecScreen->unk1E = 0x5000;
            }
        } else {
            var_r3 = 1;
        }
        temp_r1 = vsRecScreen->qUnk134;
        if (temp_r1 > 0x3C00) {
            temp_r0_3 = temp_r1 - 0x800;
            vsRecScreen->qUnk134 = temp_r0_3;
            if (temp_r0_3 <= 0x3BFF) {
                vsRecScreen->qUnk134 = 0x3C00;
            }
        } else {
            goto block_15;
        }
    } else {
        temp_r0_4 = vsRecScreen->unk1E;
        if (temp_r0_4 != 0) {
            temp_r0_5 = temp_r0_4 + 0xFFFFF000;
            vsRecScreen->unk1E = temp_r0_5;
            if ((u32) (temp_r0_5 << 0x10) > 0x4FFF0000U) {
                vsRecScreen->unk1E = 0;
            }
        } else {
            var_r3 = 1;
        }
        temp_r2 = vsRecScreen->qUnk134;
        if (temp_r2 <= 0x63FF) {
            temp_r0_6 = temp_r2 + 0x800;
            vsRecScreen->qUnk134 = temp_r0_6;
            if (temp_r0_6 > 0x6400) {
                vsRecScreen->qUnk134 = 0x6400;
            }
        } else {
block_15:
            var_r3 += 1;
        }
    }
    if (var_r3 == 2) {
        return 1U;
    }
    return 0U;
}

void sub_8097958(OptionsVsRecordScreen *vsRecScreen, s32 arg1) {
    u32 sp0;
    u8 *sp4;
    s32 sp8;
    u8 *spC;
    s32 sp10;
    u8 *sp14;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    Sprite *temp_r4_4;
    s32 temp_r1_2;
    s32 temp_r2;
    u32 var_r0;
    u32 var_r7;
    u32 var_sb;
    u8 *temp_r3;
    u8 temp_r1;

    sp0 = 5;
    if ((arg1 << 0x18) != 0) {
        sp0 = 6;
    }
    var_sb = 0;
loop_15:
    if (var_sb < sp0) {
        if (var_sb != 0) {
            temp_r1 = LOADED_SAVE->vsRecords[var_sb - 1].slotFilled;
            var_r0 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
        } else {
            var_r0 = 1;
        }
        sp8 = var_sb + 1;
        if (var_r0 != 0) {
            var_r7 = 0;
            sp4 = vsRecScreen->unk6;
            temp_r1_2 = var_sb * 0x10;
            spC = vsRecScreen->unkD;
            do {
                if (var_sb == 0) {
                    temp_r4 = &vsRecScreen->spr178[var_r7];
                    temp_r4->y = 0x4B;
                    temp_r4->x = ((s32) vsRecScreen->qUnk118 >> 8) + *(var_r7 + &gUnknown_080D8CD4);
                    UpdateSpriteAnimation(temp_r4);
                    DisplaySprite(temp_r4);
                    if (var_r7 < (u32) vsRecScreen->unkC) {
                        temp_r4_2 = &vsRecScreen->spr268[var_r7];
                        temp_r4_2->x = (var_r7 * 8) + ((var_r7 * 2) + 0x12);
                        temp_r4_2->y = 0x45;
                        DisplaySprite(temp_r4_2);
                    }
                }
                temp_r3 = &sp4[var_sb];
                temp_r2 = var_r7 * 0x28;
                temp_r4_3 = vsRecScreen + ((*temp_r3 * 0xF0) + 0x358) + temp_r2;
                temp_r4_3->x = ((s32) vsRecScreen->qUnk118 >> 8) + *(var_r7 + &gUnknown_080D8CD4);
                temp_r4_3->y = ((s32) vsRecScreen->qUnk11C >> 8) + temp_r1_2;
                sp10 = temp_r2;
                sp14 = temp_r3;
                DisplaySprite(temp_r4_3);
                if (var_r7 < (u32) spC[vsRecScreen->unk2 + var_sb]) {
                    temp_r4_4 = vsRecScreen + ((*temp_r3 * 0xF0) + 0x8F8) + temp_r2;
                    temp_r4_4->x = (var_r7 * 8) + ((var_r7 * 2) + 0x12);
                    temp_r4_4->y = (((s32) vsRecScreen->qUnk11C >> 8) + temp_r1_2) - 6;
                    DisplaySprite(temp_r4_4);
                }
                var_r7 = (u32) (u8) (var_r7 + 1);
            } while (var_r7 <= 5U);
        }
        var_sb = (u32) (u8) sp8;
        goto loop_15;
    }
}

void sub_8097ACC(OptionsVsRecordScreen *vsRecScreen) {
    Sprite *temp_r4;
    s32 var_r2;
    u8 temp_r1;

    var_r2 = 0;
    temp_r4 = &vsRecScreen->sprE98;
    temp_r1 = vsRecScreen->unk2;
    if (((s32) (vsRecScreen->vsRecordPlayerCount - temp_r1) > 5) && ((u32) temp_r1 <= 5U)) {
        vsRecScreen->sprE98.x = (s16) ((s32) vsRecScreen->qUnk140 >> 8);
        vsRecScreen->sprE98.y = (s16) ((s32) vsRecScreen->qUnk144 >> 8);
        vsRecScreen->sprE98.frameFlags |= 0x800;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r2 = 1;
    }
    if (vsRecScreen->unk2 != 0) {
        vsRecScreen->sprE98.x = (s16) ((s32) vsRecScreen->qUnk148 >> 8);
        vsRecScreen->sprE98.y = (s16) ((s32) vsRecScreen->qUnk14C >> 8);
        vsRecScreen->sprE98.frameFlags &= 0xFFFFF7FF;
        if (var_r2 == 0) {
            UpdateSpriteAnimation(temp_r4);
        }
        DisplaySprite(temp_r4);
    }
}

u32 sub_8097B54(OptionsVsRecordScreen *vsRecScreen) {
    s32 temp_r0;
    s32 temp_r1_2;
    u8 temp_r1;

    temp_r1 = vsRecScreen->unk1;
    switch (temp_r1) {                              /* irregular */
    case 1:
        if ((u32) vsRecScreen->unk2 <= 6U) {
            temp_r0 = vsRecScreen->qUnk11C + 0xFFFFFE00;
            vsRecScreen->qUnk11C = temp_r0;
            if (temp_r0 > 0x3AFF) {
block_7:
                return 0U;
            }
block_8:
            vsRecScreen->qUnk11C = 0x4B00;
            goto block_9;
        }
block_9:
    default:
        return 1U;
    case 2:
        if ((u32) vsRecScreen->unk2 <= 6U) {
            temp_r1_2 = vsRecScreen->qUnk11C + (temp_r1 << 8);
            vsRecScreen->qUnk11C = temp_r1_2;
            if (temp_r1_2 <= 0x5B00) {
                goto block_7;
            }
            goto block_8;
        }
        goto block_9;
    }
}

void sub_8097BB4(OptionsVsRecordScreen *vsRecScreen) {
    u16 temp_r1;
    u16 temp_r2;

    temp_r1 = vsRecScreen->unk24 + 0xFFFFFF00;
    vsRecScreen->unk24 = temp_r1;
    temp_r2 = vsRecScreen->unk26 + 0x100;
    vsRecScreen->unk26 = temp_r2;
    gBgScrollRegs[0][0] = 0 - ((u32) (temp_r1 << 0x10) >> 0x18);
    gBgScrollRegs[0][1] = 0 - ((u32) (temp_r2 << 0x10) >> 0x18);
}

void sub_8097BE8(OptionsVsRecordScreen *vsRecScreen) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = vsRecScreen->qUnk144 + 0x40;
    vsRecScreen->qUnk144 = temp_r0;
    if (temp_r0 > 0x9300) {
        vsRecScreen->qUnk144 = 0x8E00;
    }
    temp_r0_2 = vsRecScreen->qUnk14C - 0x40;
    vsRecScreen->qUnk14C = temp_r0_2;
    if (temp_r0_2 <= 0x28FF) {
        vsRecScreen->qUnk14C = 0x2E00;
    }
}

void sub_8097C28(OptionsVsRecordScreen *vsRecScreen) {
    vsRecScreen->spr150.x = (s16) ((s32) vsRecScreen->qUnk138 >> 8);
    vsRecScreen->spr150.y = (s16) ((s32) vsRecScreen->qUnk13C >> 8);
    DisplaySprite(&vsRecScreen->spr150);
}

void TaskDestructor_VsRecordScreen(Task *t) {

}
#endif
