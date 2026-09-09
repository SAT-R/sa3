#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "multi_sio_stuff.h"
#include "code_0_1.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/songs.h"
#include "constants/zones.h"

// TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?
// ---------- unsure about split ----------
// sub_809E85C() only referenced once in sub_809E164, so probably part of module?

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x003 */ u8 unk4;
    /* 0x005 */ u8 language;
    /* 0x006 */ u8 unlockedZones;
    /* 0x007 */ s8 unk7[7];
    /* 0x00E */ u16 unkE;
    /* 0x010 */ u16 unk10;
    /* 0x010 */ s16 unk12;
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ s32 unk20;
    /* 0x024 */ s32 unk24;
    /* 0x028 */ s32 unk28;
    /* 0x02C */ s32 unk2C;
    /* 0x030 */ s32 unk30;
    /* 0x034 */ s32 unk34;
    /* 0x034 */ s32 qUnk38;
    /* 0x034 */ s32 qUnk3C;
    /* 0x034 */ s32 qUnk40;
    /* 0x034 */ s32 qUnk44;
    /* 0x048 */ Sprite spr48;
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ Sprite spr98;
    /* 0x0C0 */ Sprite sprC0;
    /* 0x0E8 */ Sprite sprE8;
    /* 0x110 */ Sprite spr110;
    /* 0x138 */ Sprite spr138;
    /* 0x160 */ Background bg160;
    /* 0x1A0 */ Background bg1A0;
} Code_2_2; /* 0x1E0 */

void sub_809E85C(u8 arg0);

void sub_809E978(Code_2_2 *strc);
void sub_809EB74(Code_2_2 *strc);
void Task_809EBF4(void);
void Task_809EC84(void);
void Task_809EDB0(void);
void Task_809EE50(void);
void Task_809EF68(void);
void Task_809F070(void);
void Task_809F170(void);
void Task_809F210(void);
s32 sub_809F310(Code_2_2 *strc);
s32 sub_809F460(Code_2_2 *strc);
void sub_809F550(Code_2_2 *strc);
void sub_809F5E4(Code_2_2 *strc);
void Task_809F638(void);
void Task_809F6D0(void);
void Task_809F718(void);
void Task_809F768(void);
void sub_809F7A4(Code_2_2 *strc);
void sub_809F7B8(Code_2_2 *strc);
s32 sub_809F7D8(Code_2_2 *strc);
s32 sub_809F810(Code_2_2 *strc);
void TaskDestructor_809F84C(Task *t);

#ifdef M2C
void sub_809E85C(u8 arg0, Code_2_2 *strc);
void Task_809EBF4(Code_2_2 *strc);
void Task_809EC84(Code_2_2 *strc);
void Task_809EDB0(Code_2_2 *strc);
void Task_809EE50(Code_2_2 *strc);
void Task_809F070(Code_2_2 *strc);
void Task_809F170(Code_2_2 *strc);
void Task_809F210(Code_2_2 *strc);
void Task_809F638(Code_2_2 *strc);
void Task_809F6D0(Code_2_2 *strc);
void Task_809F718(Code_2_2 *strc);
void Task_809F768(Code_2_2 *strc);
#endif

extern s16 sub_8025460(u8);
extern s16 sub_80254CC();
extern s16 sub_8025534();
extern s16 sub_80255B0();
extern s16 sub_8025614();
extern s16 sub_8025AA8();
extern s16 sub_8025AFC();
extern u16 sub_80C4C0C(s32);
extern TileInfo2 gUnknown_080D8AAC[2][2];
extern TileInfo2 gUnknown_080D8ACC[2];
extern TileInfo2 gUnknown_080D8AEC;
extern TileInfo2 gUnknown_080D98D8[3];

extern const TileInfo2 sAnimsTimeAttackDigits;
extern void sub_80A1A4C(s32);
extern void sub_80022E8(u16 level);
extern void sub_80260F0(void);
void Task_809EBF4(void);
void TaskDestructor_809F84C(Task *t);

void sub_809E85C(u8 arg0)
{
    u8 i;
    Code_2_2 *strc;
    struct Task *t;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    t = TaskCreate(Task_809EBF4, sizeof(Code_2_2), 0x2100U, 0U, TaskDestructor_809F84C);
    strc = TASK_DATA(t);
    strc->unk2 = arg0;
    strc->language = LOADED_SAVE->language;
    strc->unk3 = 0;
    strc->unk4 = 0;
    strc->unk12 = 0;
    strc->unk14 = 0;
    strc->unk18 = 0;
    strc->unk1C = 0;
    strc->unkE = 0;
    strc->unk10 = 0;
    strc->unk20 = 0;
    strc->unk24 = 0;
    strc->unk28 = 0;
    strc->unk2C = 0;
    strc->unk30 = 0;
    strc->unk34 = 0;
    strc->unk1 = (u8)gUnknown_03001060.unk50;
    strc->qUnk38 = Q(132);
    strc->qUnk3C = Q(132);
    strc->qUnk40 = Q(124);
    strc->qUnk44 = Q(132);

    if ((arg0 == 0) || (LOADED_SAVE->unlockedZones > ZONE_FINAL)) {
        strc->unlockedZones = ZONE_FINAL;
    } else {
        strc->unlockedZones = LOADED_SAVE->unlockedZones;
    }

    for (i = 0; i < ARRAY_COUNT(strc->unk7); i++) {
        if (strc->unk2 == 0) {
            strc->unk7[i] = 3;
        } else {
            if (LOADED_SAVE->unlockedStages[i] != 0) {
                strc->unk7[i] = (LOADED_SAVE->unlockedStages[i] >> 1) + 1;
                if (strc->unk7[i] > 3) {
                    strc->unk7[i] = 3;
                }
            } else {
                strc->unk7[i] = 0;
            }
        }
    }

    sub_809E978(strc);
    sub_809EB74(strc);
    gBgPalette[0] = sub_80C4C0C(0xFFFF);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

// TODO: asm-fakematch
void sub_809E978(Code_2_2 *strc)
{
#ifndef NON_MATCHING
    register Sprite *s asm("r0");
#else
    Sprite *s;
#endif
    s32 temp_r2;
    s32 temp_r5_2;
    u32 temp_r5;
    u8 *vram;
    u8 *temp_r6_3;
    u8 *temp_r6_4;
    u8 temp_r0;
    void *temp_r2_2;
    void *temp_r8;
    const TileInfo2 *tileInfo;

    vram = (u8 *)OBJ_VRAM0;
    temp_r0 = strc->language;
    temp_r5 = (u32)((0 - temp_r0) | temp_r0) >> 0x1F;
    s = &strc->spr110;
    s->tiles = vram;
    vram += gUnknown_080D98D8[temp_r5].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D98D8[temp_r5].anim;
    s->variant = gUnknown_080D98D8[temp_r5].variant;
    s->prevVariant = 0xFF;
    s->x = (s16)((s32)strc->unk20 >> 8);
    s->y = (s16)((s32)strc->unk24 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->sprE8;
    s->tiles = vram;
    vram += (gUnknown_080D98D8[2].numTiles << 5);
    s->anim = gUnknown_080D98D8[2].anim;
    s->variant = gUnknown_080D98D8[2].variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)strc->unk28 >> 8);
    s->y = (s16)((s32)strc->unk2C >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->spr48;
    strc->spr48.tiles = vram;
    vram += gUnknown_080D8AAC[temp_r5][0].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D8AAC[temp_r5][0].anim;
    s->variant = gUnknown_080D8AAC[temp_r5][0].variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)strc->unk20 >> 8);
    s->y = (s16)((s32)strc->unk24 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->spr70;
    strc->spr70.tiles = vram;
    vram += (gUnknown_080D8ACC[temp_r5].numTiles << 5);
    s->anim = gUnknown_080D8ACC[temp_r5].anim;
    s->variant = gUnknown_080D8ACC[temp_r5].variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)strc->unk20 >> 8);
    s->y = (s16)((s32)strc->unk24 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->spr98;
    s->tiles = vram;
    vram += 0x80;
    tileInfo = &sAnimsTimeAttackDigits;
    s->anim = tileInfo->anim;
    s->variant = tileInfo->variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)strc->unk20 >> 8);
    s->y = (s16)((s32)strc->unk24 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->sprC0;
    s->tiles = vram;
    vram += 0x80;
    s->anim = tileInfo->anim;
    s->variant = tileInfo->variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)strc->unk20 >> 8);
    s->y = (s16)((s32)strc->unk24 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->spr138;
    s->tiles = vram;
    s->anim = gUnknown_080D8AEC.anim;
    s->variant = gUnknown_080D8AEC.variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)strc->unk20 >> 8);
    s->y = (s16)((s32)strc->unk24 >> 8);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
}

void sub_809EB74(Code_2_2 *strc)
{
    Background *bg;
    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = 0x1808;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = -0x78;
    bg = &strc->bg1A0;
    bg->graphics.dest = (void *)BG_CHAR_ADDR(2);
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)BG_SCREEN_ADDR(24);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 0x162;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 0x1E;
    bg->targetTilesY = 0x28;
    bg->paletteOffset = 0;
    bg->flags = 1;
    DrawBackground(bg);
}

void Task_809EBF4()
{
    Background *bg;
    Code_2_2 *strc;

    strc = TASK_DATA(gCurTask);
    gDispCnt |= DISPCNT_BG0_ON;
    gBgCntRegs[0] = 0xE83;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    bg = &strc->bg160;
    bg->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)BG_SCREEN_ADDR(14);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 374;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 0x1E;
    bg->targetTilesY = 0x14;
    bg->paletteOffset = 0;
    bg->flags = 4;
    DrawBackground(bg);
    gCurTask->main = Task_809EC84;
}

void Task_809EC84()
{
    s16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r3;
    Code_2_2 *strc;
    u16 var_r0;
    u8 var_r5;
    s32 min;
    StageData *stageData = &gStageData;

    var_r5 = 0;
    strc = TASK_DATA(gCurTask);
    if (stageData->playerIndex == 0) {
        var_r0 = sub_80254CC();
    } else {
        var_r0 = sub_8025AFC();
    }
    temp_r0 = (s16)var_r0;
    if ((s32)temp_r0 < 0) {
        gCurTask->main = Task_809F638;
    } else if (temp_r0 != 0) {
        if (strc->unk10 == 0) {
            gBldRegs.bldCnt = 0x3FFF;
            gDispCnt |= 0x6000;
            gWinRegs[0] = 0xFF;
            gWinRegs[1] = 0xFF;
            gWinRegs[3] = 0xFF;
            gWinRegs[4] = 0x3132;
            gWinRegs[5] = 0;
            gBldRegs.bldY = 0x10;
            strc->unkE = 0x1000U;
            strc->unk10 = 1U;
        }
        if (gBldRegs.bldY != 0) {
            gBldRegs.bldY = I(strc->unkE);
            strc->unkE -= Q(2);
            if (strc->unkE > 0x0FFF) {
                strc->unkE = 0U;
            }
        } else {
            var_r5++;
        }
        if (sub_809F7D8(strc) == 1) {
            var_r5++;
        }
        if (sub_809F810(strc) == 1) {
            var_r5++;
        }
        min = WIN_RANGE(120, 0);
        strc->unk1C = Q(120);
        strc->unk14 = Q(24);
        gWinRegs[WINREG_WIN0V] = min + (120 + 24);

        sub_809F550(strc);
        sub_809F7B8(strc);

        if (var_r5 == 3) {
            strc->unk10 = 0U;
            gCurTask->main = Task_809EDB0;
        }
    }
}

void Task_809EDB0(void)
{
    s16 playerIndex = gStageData.playerIndex;
    Code_2_2 *strc = TASK_DATA(gCurTask);
    s16 var_r0;

    if (strc->unk0 != (gUnknown_03001060.unk50 + 2)) {
        strc->unk0 = LEVEL_INDEX(strc->unk3, strc->unk4) + 2;
    }
    if (playerIndex == 0) {
        var_r0 = sub_8025460(strc->unk0);
    } else {
        var_r0 = sub_8025AA8();
    }
    if (var_r0 < 0) {
        gCurTask->main = Task_809F638;
    } else {
        if (playerIndex != 0) {
            sub_809F7A4(strc);
        }
        sub_809F550(strc);
        sub_809F7B8(strc);
        sub_809F5E4(strc);
        gCurTask->main = Task_809EE50;
    }
}

void Task_809EE50(void)
{
    s16 temp_r5_2;
    s16 vram;
    u16 var_r0;
    void (*var_r0_2)(Code_2_2 *);
    s16 playerIndex = gStageData.playerIndex;
    Code_2_2 *strc = TASK_DATA(gCurTask);

    sub_809F550(strc);
    sub_809F7B8(strc);
    sub_809F5E4(strc);
    if (strc->unk0 != (gUnknown_03001060.unk50 + 2)) {
        strc->unk0 = LEVEL_INDEX(strc->unk3, strc->unk4) + 2;
    }
    if (playerIndex == 0) {
        var_r0 = sub_8025460(strc->unk0);
    } else {
        var_r0 = sub_80255B0();
    }
    vram = (s16)var_r0;
    if ((s32)vram < 0) {
        gCurTask->main = Task_809F638;
        return;
    }
    if (playerIndex != 0) {
        sub_809F7A4(strc);
    }
    if (vram == 1) {
        gCurTask->main = Task_809F170;
        return;
    }
    if ((playerIndex == 0) && (1 & gPressedKeys)) {
        m4aSongNumStart(SE_SELECT);
        if (strc->unk0 != gUnknown_03001060.unk50) {
            strc->unk0 = (u8)((strc->unk3 * 0xA) + strc->unk4 + 2);
        }
        gCurTask->main = Task_809F718;
        return;
    }
    if ((sub_809F310(strc) == 1) || (sub_809F460(strc) == 1)) {
        gCurTask->main = Task_809EF68;
    }
}

void Task_809EF68(void)
{
    s32 temp_r0;
    u16 temp_r1;
    u16 temp_r2;
    s16 var_r0;
    void (*var_r0_2)(Code_2_2 *);
    s16 playerIndex = gStageData.playerIndex;
    Code_2_2 *strc = TASK_DATA(gCurTask);
    sub_809F550(strc);
    sub_809F7B8(strc);
    sub_809F5E4(strc);

    if (strc->unk0 != (gUnknown_03001060.unk50 + 2)) {
        strc->unk0 = (u8)((strc->unk3 * 0xA) + strc->unk4 + 2);
    }
    if (playerIndex == 0) {
        var_r0 = sub_8025460(strc->unk0);
    } else {
        var_r0 = sub_8025614();
    }
    if (var_r0 < 0) {
        gCurTask->main = Task_809F638;
        return;
    }
    if (playerIndex != 0) {
        sub_809F7A4(strc);
    }

    if (strc->unk10 == 0) {
        gBldRegs.bldCnt = 0x3F8F;
        gWinRegs[4] = 0x1132;
        gBldRegs.bldY = 0;
        strc->unkE = 0;
        strc->unk10 = 1;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)strc->unkE >> 8);
        strc->unkE = (u16)(strc->unkE + 0x200);
        return;
    }
    gBldRegs.bldY = 0x10;
    gBgScrollRegs[1][1] = -120;
    gBgScrollRegs[1][1] += (strc->unk3 << 3) + (strc->unk3 << 4);
    strc->unk10 = 0U;
    gCurTask->main = Task_809F070;
}

void Task_809F070(void)
{
    s16 temp_r0_2;
    s32 temp_r0;
    u16 temp_r1;
    s16 var_r0;
    void (*var_r0_2)(Code_2_2 *);
    StageData *stageData = &gStageData;
    s16 temp_r5 = stageData->playerIndex;
    Code_2_2 *strc = TASK_DATA(gCurTask);

    sub_809F550(strc);
    sub_809F7B8(strc);
    sub_809F5E4(strc);
    if (strc->unk0 != (gUnknown_03001060.unk50 + 2)) {
        strc->unk0 = (u8)((strc->unk3 * 0xA) + strc->unk4 + 2);
    }
    if (temp_r5 == 0) {
        var_r0 = sub_8025460(strc->unk0);
    } else {
        var_r0 = sub_80255B0();
    }
    temp_r0_2 = (s16)var_r0;
    if ((s32)temp_r0_2 < 0) {
        gCurTask->main = Task_809F638;
        return;
    }
    if (temp_r0_2 == 1) {
        gCurTask->main = Task_809F170;
        return;
    }
    if (temp_r5 != 0) {
        sub_809F7A4(strc);
    }
    if ((sub_809F310(strc) == 1) || (sub_809F460(strc) == 1)) {
        gCurTask->main = Task_809EF68;
        return;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)strc->unkE >> 8);
        strc->unkE -= Q(2);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_809EE50;
}

void Task_809F170(void)
{
    s16 temp_r5_2;
    s32 temp_r0;
    s16 var_r0;
    s16 temp_r5 = gStageData.playerIndex;
    Code_2_2 *strc = TASK_DATA(gCurTask);

    sub_809F550(strc);
    sub_809F7B8(strc);
    sub_809F5E4(strc);
    if (strc->unk0 != (gUnknown_03001060.unk50 + 2)) {
        strc->unk0 = (u8)((strc->unk3 * 0xA) + strc->unk4 + 2);
    }
    if (temp_r5 == 0) {
        var_r0 = sub_8025534();
    } else {
        var_r0 = sub_8025614();
    }
    if (var_r0 < 0) {
        gCurTask->main = Task_809F638;
        return;
    }
    if (temp_r5 != 0) {
        sub_809F7A4(strc);
    }
    if (var_r0 == 1) {
        gCurTask->main = Task_809F210;
    }
}

void Task_809F210(void)
{
    s16 unk;
    s32 temp_r0;
    u16 temp_r1;
    u16 temp_r3;
    u16 var_r0;
    s16 playerIndex = gStageData.playerIndex;
    Code_2_2 *strc = TASK_DATA(gCurTask);
    sub_809F550(strc);
    sub_809F7B8(strc);
    sub_809F5E4(strc);
    if (strc->unk0 != (gUnknown_03001060.unk50 + 2)) {
        strc->unk0 = LEVEL_INDEX(strc->unk3, strc->unk4) + 2;
    }
    if (playerIndex == PLAYER_1) {
        var_r0 = sub_8025534();
    } else {
        var_r0 = sub_8025614();
    }
    unk = (s16)var_r0;
    if ((s32)unk < 0) {
        gCurTask->main = Task_809F638;
        return;
    }
    if (playerIndex != 0) {
        sub_809F7A4(strc);
    }
    temp_r3 = strc->unk10;
    if (temp_r3 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs[5] |= 0x1F;
        gWinRegs[4] = 0x3132;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = temp_r3;
        strc->unkE = temp_r3;
        strc->unk10 = 1U;
    }
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)strc->unkE >> 8);
        strc->unkE = (u16)(strc->unkE + 0x100);
        return;
    }
    if (unk == 1) {
        gCurTask->main = Task_809F768;
    }
}

s32 sub_809F310(Code_2_2 *strc)
{
    s32 temp_r0;
    s32 temp_r0_2;
    u8 *temp_r2;
    u8 temp_r1;
    u8 temp_r1_2;
    u8 temp_r3;
    u8 vram;
    u16 temp_r7;
    s32 a;
    s32 div10;
    s32 unk4;
    s16 playerIndex = gStageData.playerIndex;

    strc->qUnk38 -= 0x20;
    if (strc->qUnk38 < 0x8000) {
        strc->qUnk38 = 0x8400;
    }
    strc->qUnk40 += 0x20;
    if (strc->qUnk40 > 0x8000) {
        strc->qUnk40 = 0x7C00;
    }
    if (playerIndex == 0) {
        if (!(0x30 & gRepeatedKeys)) {
            goto block_23;
        }
        m4aSongNumStart(SE_DPAD_SELECT);
        if (DPAD_LEFT & gRepeatedKeys) {
            strc->unk4 -= 1;
            if (strc->unk4 > (strc->unk7[strc->unk3] - 1)) {
                strc->unk4 = strc->unk7[strc->unk3] - 1;
                strc->unk3 = strc->unk3 - 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = strc->unlockedZones - 1;
                }
                return 1;
            }
        }
        temp_r1 = strc->unk3;
        if (DPAD_RIGHT & gRepeatedKeys) {
            strc->unk4 += 1;
            if (strc->unk4 > (strc->unk7[strc->unk3] - 1)) {
                strc->unk4 = 0;
                strc->unk3 += 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = 0;
                }
                return 1;
            }
        }
        strc->unk0 = (strc->unk3 * 0xA) + strc->unk4 + 2;
        gUnknown_03001060.unk50 = (u16)strc->unk0;
        goto block_23;
    }

    if (strc->unk1 == gUnknown_03001060.unk50) {
        return 0;
    }

    vram = strc->unk4;
    temp_r7 = strc->unk3;
    a = gUnknown_03001060.unk50;
    div10 = a / 10u;
    strc->unk3 = gUnknown_03001060.unk50 / 10;
    strc->unk4 = (gUnknown_03001060.unk50 - (strc->unk3 * 10)) - 2;
    strc->unk1 = (u8)gUnknown_03001060.unk50;
    if (((vram == 2) && (strc->unk4 == 0)) || ((vram == 0) && (strc->unk4 == 2))) {
        return 1;
    }

    if ((u8)div10 != temp_r7) {
        return 1;
    }
block_23:
    return 0;
}

s32 sub_809F460(Code_2_2 *strc)
{
    s16 playerIndex = gStageData.playerIndex;
    strc->qUnk38 -= 0x20;
    if (strc->qUnk38 <= 0x7FFF) {
        strc->qUnk38 = 0x8400;
    }
    strc->qUnk40 += 0x20;
    if (strc->qUnk40 > 0x8000) {
        strc->qUnk40 = 0x7C00;
    }
    if (playerIndex == 0) {
        if (0xC0 & gRepeatedKeys) {
            u8 temp_r3 = strc->unk3;
            if (0x80 & gRepeatedKeys) {
                strc->unk3 = temp_r3 - 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = strc->unlockedZones - 1;
                }
            }
            if (0x40 & gRepeatedKeys) {
                strc->unk3 += 1;
                if ((s32)strc->unk3 > (s32)((s8)strc->unlockedZones - 1)) {
                    strc->unk3 = 0;
                }
            }
            strc->unk0 = LEVEL_INDEX(strc->unk3, strc->unk4) + ACT_HUB;
            gUnknown_03001060.unk50 = (u16)strc->unk0;
            if (temp_r3 != strc->unk3) {
                m4aSongNumStart(SE_DPAD_SELECT);
            }
            goto block_17;
        }
        goto block_19;
    }
    if (strc->unk1 != gUnknown_03001060.unk50) {
        u8 temp_r1 = (u8)((u16)gUnknown_03001060.unk50 / 10U);
        if (strc->unk3 != temp_r1) {
            strc->unk3 = temp_r1;
        block_17:
            return 1;
        }
        strc->unk1 = (u8)gUnknown_03001060.unk50;
        goto block_19;
    }
block_19:
    return 0;
}

void sub_809F550(Code_2_2 *strc)
{
    const TileInfo2 *tileInfo;
    {
        Sprite *s = &strc->spr48;
        s->x = (s16)((s32)strc->unk20 >> 8);
        s->y = (s16)((s32)strc->unk24 >> 8);
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc->spr98;
        tileInfo = &sAnimsTimeAttackDigits;
        s->anim = tileInfo->anim;
        s->variant = tileInfo->variant + strc->unk3;
        s->prevVariant = -1;
        s->x = I(strc->unk20) + 25;
        s->y = I(strc->unk24);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc->spr70;
        s->x = I(strc->unk20) + 42;
        s->y = I(strc->unk24);
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc->sprC0;
        s->anim = tileInfo->anim;
        s->variant = tileInfo->variant + strc->unk4;
        s->prevVariant = -1;
        s->x = I(strc->unk20) + 87;
        s->y = I(strc->unk24);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_809F5E4(Code_2_2 *strc)
{
    Sprite *s = &strc->spr138;
    s->x = I(strc->qUnk38) - 32;
    s->y = I(strc->qUnk3C);
    s->frameFlags &= 0xFFFFFBFF;
    DisplaySprite(s);

    s->x = I(strc->qUnk40) + 0x69;
    s->y = I(strc->qUnk44);
    s->frameFlags |= 0x400;
    DisplaySprite(s);
    UpdateSpriteAnimation(s);
}

void Task_809F638(void)
{
    Code_2_2 *strc = TASK_DATA(gCurTask);

    sub_80260F0();
    gDispCnt &= ~0x6000;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    strc->unk12 = 0x12C;
    gCurTask->main = (void (*)())Task_809F6D0;
}

void Task_809F6D0(void)
{
#ifndef NON_MATCHING
    u8 unused[0x20];
#endif
    Code_2_2 *strc = TASK_DATA(gCurTask);

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();
    sub_80A1A4C(3);
}

void Task_809F718(void)
{
    Code_2_2 *strc = TASK_DATA(gCurTask);
    s16 temp_r0;

    sub_809F550(strc);
    sub_809F7B8(strc);
    sub_809F5E4(strc);

    temp_r0 = (s16)sub_8025534();
    if (temp_r0 < 0) {
        gCurTask->main = Task_809F638;
    } else if (temp_r0 == 1) {
        gCurTask->main = Task_809F210;
    }
}

void Task_809F768(void)
{
    Code_2_2 *strc = TASK_DATA(gCurTask);

    sub_800214C();
    gUnknown_03001060.unk50 = LEVEL_INDEX(strc->unk3, strc->unk4) + ACT_1;
    sub_80022E8(gUnknown_03001060.unk50);
}

void sub_809F7A4(Code_2_2 *strc)
{
    Sprite *s = &strc->sprE8;
    s->x = 0x78;
    s->y = 0x46;
    DisplaySprite(s);
}

void sub_809F7B8(Code_2_2 *strc)
{
    Sprite *s = &strc->spr110;
    s->x = (s16)((s32)strc->unk30 >> 8);
    s->y = (s16)((s32)strc->unk34 >> 8);
    DisplaySprite(s);
}

s32 sub_809F7D8(Code_2_2 *strc)
{
    strc->unk34 = 0x1400;
    if (strc->unk30 > 0x7600) {
        strc->unk30 -= Q(16);

        if (strc->unk30 < 0x7600) {
            strc->unk30 = 0x7600;
            return 1;
        }
    } else {
        strc->unk30 = 0x7600;
        return 1;
    }
    return 0;
}

s32 sub_809F810(Code_2_2 *strc)
{
    strc->unk24 = 0x8400;
    if (strc->unk20 < 0x7D00) {
        strc->unk20 += 0x1000;
        if (strc->unk20 > 0x7D00) {
            strc->unk20 = 0x7D00;
            return 1;
        }
    } else {
        strc->unk20 = 0x7D00;
        return 1;
    }
    return 0;
}

void TaskDestructor_809F84C(Task *t) { }
