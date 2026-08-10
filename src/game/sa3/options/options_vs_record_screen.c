#include "global.h"
#include "core.h"
#include "flags.h"
#include "game/shared/stage/player.h" // MAX_PLAYER_NAME_LENGTH
#include "game/save.h"
#include "constants/tilemaps.h"

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
void Task_80970DC(void);
void sub_80971FC(void);
void sub_80972EC(void);
void sub_809738C(void);
void sub_8097408(void);
void sub_8097474(void);
void sub_8097530(void);
void sub_8097608(OptionsVsRecordScreen *vsRecScreen, u8 arg1);
void sub_8097710(OptionsVsRecordScreen *vsRecScreen);
bool32 sub_8097830(OptionsVsRecordScreen *vsRecScreen);
bool32 sub_809789C(OptionsVsRecordScreen *vsRecScreen, u8 arg1);
void sub_8097958(OptionsVsRecordScreen *vsRecScreen, u8 arg1);
void sub_8097ACC(OptionsVsRecordScreen *vsRecScreen);
bool32 sub_8097B54(OptionsVsRecordScreen *vsRecScreen, u8 arg1);
void sub_8097BB4(OptionsVsRecordScreen *vsRecScreen);
void sub_8097BE8(OptionsVsRecordScreen *vsRecScreen);
void sub_8097C28(OptionsVsRecordScreen *vsRecScreen);
void TaskDestructor_VsRecordScreen(struct Task *t);

extern void sub_80BE46C(Sprite *s);
extern ColorRaw sub_80C4C0C(ColorRaw color);
extern void LaunchOptionsMenu(u16 arg0);
extern const TileInfo2 gUnknown_080D8BF4[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D8C24[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D8C54;
extern const TileInfo2 gUnknown_080D8C5C;
extern const TileInfo2 gUnknown_080D8C64;
extern const TileInfo2 gUnknown_080D8C6C;

extern u16 gUnknown_080D8C74[][2];
extern s32 gUnknown_080D6ED4[3];

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

void sub_8096EB8(OptionsVsRecordScreen *vsRecScreen)
{
    Background *bg0, *bg2;

    gBgCntRegs[0] = BGCNT_SCREENBASE(6) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(2);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    bg0 = &vsRecScreen->bgF38;
    bg0->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg0->graphics.anim = 0;
    bg0->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
    bg0->unk18 = 0;
    bg0->unk1A = 0;
    bg0->tilemapId = TM_UNKNOWN_351;
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 256 / 8;
    bg0->targetTilesY = 256 / 8;
    bg0->paletteOffset = 0;
    bg0->flags = 0;
    DrawBackground(bg0);

    gBgCntRegs[1] = BGCNT_SCREENBASE(16) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(3);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    gBgCntRegs[2] = BGCNT_SCREENBASE(30) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_CHARBASE(3) | BGCNT_PRIORITY(1);
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    bg2 = &vsRecScreen->bgF78;
    bg2->graphics.dest = (void *)BG_CHAR_ADDR(3);
    bg2->graphics.anim = 0;
    bg2->layoutVram = (u16 *)BG_SCREEN_ADDR(30);
    bg2->unk18 = 0;
    bg2->unk1A = 0;
    bg2->tilemapId = TM_UNKNOWN_356;
    bg2->unk1E = 0;
    bg2->unk20 = 0;
    bg2->unk22 = 0;
    bg2->unk24 = 0;
    bg2->targetTilesX = 240 / 8;
    bg2->targetTilesY = 160 / 8;
    bg2->paletteOffset = 0;
    bg2->flags = 2;
    DrawBackground(bg2);

    gWinRegs[WINREG_WIN0V] = WIN_RANGE(60, 60) + WIN_RANGE(0, I(vsRecScreen->unk1E));
}

void Task_VsRecordScreen(void)
{
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    u16 *sp0;
    OptionsVsRecordScreen *sp4;
    s32 *sp8;
    Sprite *s;
    u16 temp_r1;
    u8 temp_r0;
    u8 var_r4;
    u8 var_r5;
    void *temp_r8;

    for (var_r4 = vsRecScreen->unk19; var_r4 < (vsRecScreen->unk19 + 3); var_r4++) {
        {
            for (var_r5 = 0; var_r5 < 6; var_r5++) {
                s = &vsRecScreen->spr8F8[var_r4][var_r5];
                s->tiles = vsRecScreen->vram104;
                vsRecScreen->vram104 += gUnknown_080D8C5C.numTiles << 5;
                if (vsRecScreen->nameList[var_r4][var_r5] != 0xFFFF) {
                    if (vsRecScreen->nameList[var_r4][var_r5] > 0xFFU) {
                        s->variant = gUnknown_080D8C5C.variant + vsRecScreen->nameList[var_r4][var_r5];
                        s->anim = gUnknown_080D8C64.anim;
                    } else {
                        s->variant = gUnknown_080D8C5C.variant + vsRecScreen->nameList[var_r4][var_r5];
                        s->anim = gUnknown_080D8C5C.anim;
                    }
                } else {
                    s->anim = gUnknown_080D8C5C.anim;
                    s->variant = 0;
                }
                s->prevVariant = 0xFF;
                s->x = (var_r5 * 8) + 0x12;
                s->y = 0x45;
                s->animCursor = 0;
                s->qAnimDelay = 0;
                s->animSpeed = 0x10;
                s->palId = 0;
                s->oamFlags = 0x40;
                s->frameFlags = 0x2080;
                UpdateSpriteAnimation(s);
            }
        }
    }

    vsRecScreen->unk19 += var_r4;
    if (vsRecScreen->unk19 > 5U) {
        vsRecScreen->unk19 = 0;
        gCurTask->main = Task_80970DC;
    }
}

void Task_80970DC(void)
{
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    u8 *sp4;
    s32 sp8;
    s32 *sp10;
    Sprite *temp_r0;
    s32 var_r3;
    u8 temp_r0_2;
    u8 var_r4;
    u8 var_r5;

    for (var_r4 = vsRecScreen->unk19; var_r4 < vsRecScreen->unk19 + 3; var_r4++) {
        for (var_r5 = 0; var_r5 < 6; var_r5++) {
            temp_r0 = &vsRecScreen->spr358[var_r4][var_r5];
            temp_r0->tiles = vsRecScreen->vram104;
            vsRecScreen->vram104 += gUnknown_080D8C54.numTiles << 5;
            temp_r0->anim = gUnknown_080D8C54.anim;
            temp_r0->variant = gUnknown_080D8C54.variant + vsRecScreen->recordsRivals[0][0][var_r5 + (var_r4 * 6)];
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = ((s32)vsRecScreen->qUnk110 >> 8) + (var_r5 * 8);
            temp_r0->y = ((s32)vsRecScreen->qUnk114 >> 8) + (var_r4 * 0x10);
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->oamFlags = 0x40;
            temp_r0->frameFlags = 0x2080;
            UpdateSpriteAnimation(temp_r0);
        }
    }

    vsRecScreen->unk19 += var_r4;
    if (vsRecScreen->unk19 > 5U) {
        gCurTask->main = sub_80971FC;
    }
}

void sub_80971FC(void)
{
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    u16 temp_r5;

    temp_r5 = vsRecScreen->unk2A;
    if (temp_r5 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, (int_vcount)-1);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, (int_vcount)-1);
        gWinRegs[WINREG_WININ] = 0x3336;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldY = 0x10;
        vsRecScreen->unk28 = 0x1000;
        vsRecScreen->unk2A = 1;
    }
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097C28(vsRecScreen);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(60, 60) + WIN_RANGE(0, vsRecScreen->unk1E);

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(vsRecScreen->unk28);
        vsRecScreen->unk28 -= Q(1);
        gBgScrollRegs[1][0] = -100;
        gBgScrollRegs[1][1] = -46;
    } else {
        gBldRegs.bldY = gBldRegs.bldY;
        gWinRegs[WINREG_WININ] = 0x3316;
        gBldRegs.bldAlpha = 0x1F00;
        gBldRegs.bldCnt = 0x140;
        gDispCnt |= 0x400;
        gCurTask->main = sub_809738C;
    }
}

void sub_80972EC(void)
{
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    if (vsRecScreen->unk2A != 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[WINREG_WIN1H] = 0xFF;
        gWinRegs[WINREG_WIN1V] = 0xFF;
        gWinRegs[WINREG_WININ] = 0x3332;
        gWinRegs[WINREG_WINOUT] = 0;
        vsRecScreen->unk28 = 0;
        vsRecScreen->unk2A = 0;
    }
    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097C28(vsRecScreen);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)vsRecScreen->unk28 >> 8);
        vsRecScreen->unk28 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    LaunchOptionsMenu(10);
    TaskDestroy(gCurTask);
}

void sub_809738C(void)
{
    u8 var_r5 = 0;
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    s32 temp_r1;

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

    gWinRegs[WINREG_WIN0V] = vsRecScreen->qUnk134 + WIN_RANGE(0, (vsRecScreen->qUnk134 >> 8)) + WIN_RANGE(0, (vsRecScreen->unk1E >> 8));
    if (var_r5 == 2) {
        gCurTask->main = sub_8097474;
    }
}

void sub_8097408(void)
{
    s32 var_r6 = 0;
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    s32 temp_r1;

    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);

    if (sub_809789C(vsRecScreen, 1) == 1) {
        var_r6 = 1;
    }
    sub_8097C28(vsRecScreen);
    gWinRegs[WINREG_WIN0V] = vsRecScreen->qUnk134 + (vsRecScreen->qUnk134 >> 8) + ((u16)vsRecScreen->unk1E >> 8);
    if (var_r6 != 0) {
        gWinRegs[WINREG_WININ] = 0x3332;
        gCurTask->main = sub_80972EC;
    }
}

void sub_8097474(void)
{
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
    u16 temp_r2;
    u8 temp_r1;
    void (*var_r0)(OptionsVsRecordScreen *);

    sub_8097710(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097C28(vsRecScreen);
    sub_8097958(vsRecScreen, 0);
    sub_8097ACC(vsRecScreen);

    if (B_BUTTON & gPressedKeys) {
        gCurTask->main = sub_8097408;
    } else if (0xC0 & gRepeatedKeys) {
        if ((0x40 & gRepeatedKeys) && (vsRecScreen->unk2 != 0)) {
            vsRecScreen->unk1 = 2;
            vsRecScreen->unk19 = 0;
            vsRecScreen->unk1A = 0;
            gCurTask->main = sub_8097530;
        } else if (0x80 & gRepeatedKeys) {
            if (((vsRecScreen->vsRecordPlayerCount - vsRecScreen->unk2) > 5) && (vsRecScreen->unk2 < 6)) {
                vsRecScreen->unk1 = 1;
                vsRecScreen->unk19 = 0;
                vsRecScreen->unk1A = 0;
                gCurTask->main = sub_8097530;
            }
        }
    }
}

void sub_8097530(void)
{
    OptionsVsRecordScreen *vsRecScreen = TASK_DATA(gCurTask);
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

    sub_8097710(vsRecScreen);
    sub_8097BB4(vsRecScreen);
    sub_8097BE8(vsRecScreen);
    sub_8097ACC(vsRecScreen);
    sub_8097C28(vsRecScreen);
    sub_8097958(vsRecScreen, 1);

    if (sub_8097B54(vsRecScreen, vsRecScreen->unk1) == 1) {
        temp_r0 = vsRecScreen->unk1;
        if (temp_r0 == 1) {
            vsRecScreen->unk2 += 1;
            if (vsRecScreen->unk2 > 6U) {
                vsRecScreen->unk2 = 6;
            }

            var_r5 = vsRecScreen->unk6[0];
            for (var_r1 = 0; var_r1 < 5; var_r1++) {
                vsRecScreen->unk6[var_r1 + 0] = vsRecScreen->unk6[var_r1 + 1];
            }
            vsRecScreen->unk6[5] = var_r5;

            vsRecScreen->unk18 = 6;
        } else if (temp_r0 == 2) {
            vsRecScreen->unk2 -= 1;
            if (vsRecScreen->unk2 > 6U) {
                vsRecScreen->unk2 = 0;
            }
            var_r5 = vsRecScreen->unk6[5];
            for (var_r1 = 6 - 1; var_r1 > 0; var_r1--) {
                vsRecScreen->unk6[var_r1] = vsRecScreen->unk6[var_r1 - 1];
            }
            vsRecScreen->unk6[0] = var_r5;
            vsRecScreen->unk18 = 1;
        }
        sub_8097608(vsRecScreen, var_r5);
        gCurTask->main = sub_8097474;
    }
}

void sub_8097608(OptionsVsRecordScreen *vsRecScreen, u8 arg1)
{
    Sprite *s = NULL;
    u8 temp_r5;
    u8 i;
    u8 var_r5;
    u8 unk18 = vsRecScreen->unk18;
    if ((u32)(vsRecScreen->unk2 + vsRecScreen->unk18) < 12) {
        var_r5 = vsRecScreen->unk2 - 1 + vsRecScreen->unk18;
    } else {
#ifdef BUG_FIX
        var_r5 = 0;
#endif
    }
    vsRecScreen->unkD[var_r5] = 0;

    for (i = 0; i < MAX_PLAYER_NAME_LENGTH; i++) {
        if ((u32)(vsRecScreen->unk2 + unk18) < 12) {
            var_r5 = vsRecScreen->unk2 - 1 + unk18;
            s = &vsRecScreen->spr8F8[arg1][i];
            if (vsRecScreen->nameList[var_r5][i] != 0xFFFF) {
                if (vsRecScreen->nameList[var_r5][i] > 0xFFU) {
                    s->anim = gUnknown_080D8C64.anim;
                    s->variant = vsRecScreen->nameList[var_r5][i];
                } else {
                    s->anim = gUnknown_080D8C5C.anim;
                    s->variant = vsRecScreen->nameList[var_r5][i];
                }
                vsRecScreen->unkD[var_r5] += 1;
                UpdateSpriteAnimation(s);
            }
            s = &vsRecScreen->spr358[arg1][i];
            s->variant = gUnknown_080D8C54.variant + vsRecScreen->recordsRivals[0][0][i + (var_r5 * 6)];
            UpdateSpriteAnimation(s);
        }
    }
}

// TODO(Jace): These need more macros than WIN_RANGE()!
void sub_8097710(OptionsVsRecordScreen *vsRecScreen)
{
    u8 sp0;
    u16 min;
    u16 max;
    u8 var_ip;
    u8 temp_r1;
    int_vcount line;
    int_vcount var_r5;
    winreg_t winReg;
    winreg_t *var_r7;
    u32 tmp0;
    u32 tmp1;

    tmp0 = 0;
    tmp1 = 1;
    temp_r1 = vsRecScreen->unk1E >> 8;
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;

    var_r5 = vsRecScreen->qUnk134 >> 8;
    var_ip = var_r5 + temp_r1;
    sp0 = var_ip + 0xE8;
    winReg = WIN_RANGE(0, (vsRecScreen->qUnk130 >> 8));
    gHBlankCopyTarget = (void *)&REG_WIN0H;
    gHBlankCopySize = 2;
    var_r7 = gBgOffsetsHBlankPrimary;
    for (line = 0; line < DISPLAY_HEIGHT; line++) {
        if (line >= 30 && line < 34) {
            min = 120;
            max = 121;
        } else if ((line >= var_r5) && (line < (var_r5 + 12))) {
            min = winReg + gUnknown_080D8C74[line - var_r5][tmp0];
            max = winReg + gUnknown_080D8C74[line - var_r5][tmp1] + 0x2B;
        } else if ((line >= (var_ip - 12)) && (line < var_ip)) {
            min = winReg + gUnknown_080D8C74[line - sp0][tmp0];
            max = winReg + gUnknown_080D8C74[line - sp0][tmp1] + 0x2B;
        } else {
            min = winReg + 30;
            max = winReg + (u8)-2;
        }
        *var_r7 = (min << 8) + max;
        var_r7++;
    }
}

bool32 sub_8097830(OptionsVsRecordScreen *vsRecScreen)
{
    u32 unk5 = vsRecScreen->unk5;
    vsRecScreen->qUnk138 += gUnknown_080D6ED4[unk5];

    if ((unk5 == 0) && (vsRecScreen->qUnk138 >= Q(10))) {
        vsRecScreen->unk5 += 1;
    } else if ((unk5 == 1) && (vsRecScreen->qUnk138 <= -Q(10))) {
        vsRecScreen->unk5 += 1;
    } else if ((unk5 == 2) && (vsRecScreen->qUnk138 > 0)) {
        vsRecScreen->qUnk138 = 0;
        return 1;
    }
    return 0;
}

u32 sub_809789C(OptionsVsRecordScreen *vsRecScreen, u8 arg1)
{
    u8 var_r3 = 0;
    s32 shift = 11;

    if (arg1 == 0) {
        if (vsRecScreen->unk1E < 0x5000) {
            vsRecScreen->unk1E += 0x1000;
            if (vsRecScreen->unk1E >= 0x5000) {
                vsRecScreen->unk1E = 0x5000;
            }
        } else {
            var_r3 = 1;
        }
        if (vsRecScreen->qUnk134 > 0x3C00) {
            vsRecScreen->qUnk134 -= (1 << shift);
            if (vsRecScreen->qUnk134 < 0x3C00) {
                vsRecScreen->qUnk134 = 0x3C00;
            }
        } else {
            var_r3 += 1;
        }
    } else {
        if (vsRecScreen->unk1E != 0) {
            vsRecScreen->unk1E -= Q(16);
            if (vsRecScreen->unk1E >= 0x5000) {
                vsRecScreen->unk1E = 0;
            }
        } else {
            var_r3 = 1;
        }

        if (vsRecScreen->qUnk134 < 0x6400) {
            vsRecScreen->qUnk134 += (1 << shift);
            if (vsRecScreen->qUnk134 > 0x6400) {
                vsRecScreen->qUnk134 = 0x6400;
            }
        } else {
            var_r3 += 1;
        }
    }

    if (var_r3 != 2) {
        return 0U;
    }

    return 1U;
}

extern u8 gUnknown_080D8CD4[6];

void sub_8097958(OptionsVsRecordScreen *vsRecScreen, u8 arg1)
{
    u32 sp0;
    Sprite *s;
    u32 var_r0;
    u8 var_r7;
    u8 var_sb;
    u8 temp_r1;

    sp0 = 5;
    if (arg1 != 0) {
        sp0 = 6;
    }
    for (var_sb = 0; var_sb < sp0; var_sb++) {
        if (var_sb != 0) {
            temp_r1 = LOADED_SAVE->vsRecords[var_sb - 1].slotFilled;
            var_r0 = (u32)((0 - temp_r1) | temp_r1) >> 0x1F;
        } else {
            var_r0 = 1;
        }
        if (var_r0 != 0) {
            for (var_r7 = 0; var_r7 < 6; var_r7++) {
                if (var_sb == 0) {
                    s = &vsRecScreen->spr178[var_r7];
                    s->y = 0x4B;
                    s->x = I(vsRecScreen->qUnk118) + gUnknown_080D8CD4[var_r7];
                    UpdateSpriteAnimation(s);
                    DisplaySprite(s);

                    if (var_r7 < vsRecScreen->unkC) {
                        s = &vsRecScreen->spr268[var_r7];
                        s->x = 0x12 + (var_r7 * 8) + (var_r7 * 2);
                        s->y = 0x45;
                        DisplaySprite(s);
                    }
                }
                s = &vsRecScreen->spr358[vsRecScreen->unk6[var_sb]][var_r7];
                s->x = I(vsRecScreen->qUnk118) + gUnknown_080D8CD4[var_r7];
                s->y = I(vsRecScreen->qUnk11C) + (var_sb * 0x10);
                DisplaySprite(s);
                if (var_r7 < vsRecScreen->unkD[vsRecScreen->unk2 + var_sb]) {
                    s = &vsRecScreen->spr8F8[vsRecScreen->unk6[var_sb]][var_r7];
                    s->x = 0x12 + (var_r7 * 8) + (var_r7 * 2);
                    s->y = (I(vsRecScreen->qUnk11C) + (var_sb * 0x10)) - 6;
                    DisplaySprite(s);
                }
            }
        }
    }
}

void sub_8097ACC(OptionsVsRecordScreen *vsRecScreen)
{
    s32 var_r2 = 0;
    Sprite *s = &vsRecScreen->sprE98;

    if (((s32)(vsRecScreen->vsRecordPlayerCount - vsRecScreen->unk2) > 5) && (vsRecScreen->unk2 < 6)) {
        s->x = I(vsRecScreen->qUnk140);
        s->y = I(vsRecScreen->qUnk144);
        s->frameFlags |= 0x800;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        var_r2 = 1;
    }

    if (vsRecScreen->unk2 != 0) {
        s->x = I(vsRecScreen->qUnk148);
        s->y = I(vsRecScreen->qUnk14C);
        s->frameFlags &= ~0x800;

        if (var_r2 == 0) {
            UpdateSpriteAnimation(s);
        }
        DisplaySprite(s);
    }
}

u32 sub_8097B54(OptionsVsRecordScreen *vsRecScreen, u8 unused)
{
    s32 unk1 = vsRecScreen->unk1;
    if (unk1 == 1) {
        if (vsRecScreen->unk2 <= 6U) {
            vsRecScreen->qUnk11C -= Q(2);

            if (vsRecScreen->qUnk11C < 0x3B00) {
                vsRecScreen->qUnk11C = 0x4B00;
            } else {
                return 0U;
            }
        }
    } else if (unk1 == 2) {
        if (vsRecScreen->unk2 <= 6U) {
            vsRecScreen->qUnk11C += Q(unk1);
            if (vsRecScreen->qUnk11C <= 0x5B00) {
                return 0U;
            }
            vsRecScreen->qUnk11C = 0x4B00;
        }
    }

    return 1U;
}

void sub_8097BB4(OptionsVsRecordScreen *vsRecScreen)
{
    vsRecScreen->unk24 -= Q(1);
    vsRecScreen->unk26 += Q(1);

    gBgScrollRegs[0][0] = -I(vsRecScreen->unk24);
    gBgScrollRegs[0][1] = -I(vsRecScreen->unk26);
}

void sub_8097BE8(OptionsVsRecordScreen *vsRecScreen)
{
    vsRecScreen->qUnk144 += Q(0.25);
    if (vsRecScreen->qUnk144 > Q(147)) {
        vsRecScreen->qUnk144 = Q(142);
    }

    vsRecScreen->qUnk14C -= Q(0.25);
    if (vsRecScreen->qUnk14C < Q(41)) {
        vsRecScreen->qUnk14C = Q(46);
    }
}

void sub_8097C28(OptionsVsRecordScreen *vsRecScreen)
{
    Sprite *s = &vsRecScreen->spr150;
    s->x = I(vsRecScreen->qUnk138);
    s->y = I(vsRecScreen->qUnk13C);
    DisplaySprite(s);
}

void TaskDestructor_VsRecordScreen(Task *t) { }
