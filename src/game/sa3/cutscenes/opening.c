#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "malloc_ewram.h"
#include "game/code_1_3.h" // DmaIoData
#include "code_0_1.h" // WarpToMap
#include "game/game.h"
#include "game/save.h"
#include "game/stage.h"
#include "game/special_stage.h" // sub_808ADF0
#include "game/sa3/cutscenes/opening.h"
#include "constants/animations.h"
#include "constants/characters.h"
#include "constants/songs.h"
#include "constants/tilemaps.h"

typedef struct {
    /* 0x00 */ Sprite spr0;
    /* 0x28 */ Sprite spr28;
    /* 0x50 */ SpriteTransform tf50;
    /* 0x50 */ SpriteTransform tf5C;
    /* 0x68 */ Background bg68;
    /* 0x0A8 */ Background bgA8;
    /* 0x0E8 */ Background bgE8;
    /* 0x128 */ s16 unk128;
    /* 0x12C */ DmaIoData *ewramData12C;
    /* 0x130 */ u32 *ewramData130;
    /* 0x134 */ s16 unk134;
    /* 0x136 */ s16 unk136;
    /* 0x138 */ u16 unk138;
    /* 0x13A */ u16 unk13A;
    /* 0x13C */ s16 unk13C;
    /* 0x13E */ s16 unk13E;
    /* 0x140 */ s16 unk140;
    /* 0x142 */ s16 unk142;
    /* 0x144 */ s16 unk144;
    /* 0x146 */ s16 unk146;
    /* 0x148 */ s16 unk148;
    /* 0x14A */ s16 unk14A;
    /* 0x14A */ s16 unk14C;
    /* 0x14A */ ColorRaw palette[PALETTE_LEN_4BPP];
} Opening170;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 filler2[0x2];
    /* 0x04 */ u16 unk4;
    /* 0x04 */ u16 unk6;
    /* 0x04 */ u16 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ Background bg20;
    /* 0x60 */ Background bg60;
} OpeningA0;

typedef struct {
    /* 0x000 */ u8 initArg0;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u16 unk2;
    /* 0x004 */ u16 unk4;
    /* 0x006 */ u16 unk6;
    /* 0x008 */ s32 unk8;
    /* 0x00C */ s32 unkC;
    /* 0x010 */ s32 unk10;
    /* 0x014 */ s32 bg2ScrollX;
    /* 0x018 */ s32 bg2ScrollY;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ s32 unk20;
    /* 0x020 */ s32 unk24;
    /* 0x020 */ s32 unk28;
    /* 0x02C */ Background bg2C;
    /* 0x06C */ Background bg6C;
    /* 0x0AC */ Sprite sprAC;
    /* 0x0D4 */ Sprite spritesD4[2];
    /* 0x124 */ Sprite sprites124[2];
} OpeningEggman; /* 0x174 */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x01 */ u16 unk2;
    /* 0x01 */ u16 unk4;
    /* 0x01 */ u16 unk6;
    /* 0x01 */ s32 unk8;
    /* 0x01 */ s32 unkC;
    /* 0x01 */ s32 unk10;
    /* 0x54 */ Background bg14;
    /* 0x54 */ Background bg54;
} Opening94_A;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 tagIndex; // Used for looking up name-tag GFX of characters
    /* 0x03 */ s8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
    /* 0x24 */ u8 *vram28;
    /* 0x2C */ Sprite spr2C;
    /* 0x54 */ Background bg54;
} Opening94_B;

typedef struct {
    /* 0x00 */ u8 initArg0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 unk2;
    /* 0x02 */ u16 unk4;
    /* 0x02 */ u16 unk6;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ Background bg;
} Opening54;

void sub_80A217C(Opening170 *strc170);
void sub_80A22E0(Opening170 *strc170);
void sub_80A23A4(void);
void Task_170_GameIntroInit(void);
void Task_170_80A2700(void);
void Task_170_80A2774(void);
void Task_170_80A27EC(void);
void sub_80A2978(s16 param0);
void sub_80A2A40(s16 param0);
void Task_170_80A2A9C(void);
void Task_170_80A2B54(void);
void Task_170_80A2C60(void);
void TaskDestructor_GameIntro(Task *t);
void Task_170_80A2D34(void);
void sub_80A2D80(void);
s16 sub_80A2DD8(void);
void CreateOpeningStrcA0(u8 param0);
void sub_80A2F0C(OpeningA0 *strcA0);
void Task_A0_80A2FF4(void);
void Task_A0_80A3074(void);
void CreateIntroEggmanCutscene(u8 param0);
void sub_80A3228(OpeningEggman *opEggman);
void sub_80A3354(OpeningEggman *opEggman);
void Task_OpEggman_80A3444(void);
void Task_OpEggman_80A3564(void);
void Task_OpEggman_80A3664(void);
void Task_OpEggman_80A3710(void);
void Task_OpEggman_80A37B8(void);
void Task_OpEggman_80A3844(void);
void CreateOpeningStrc94_A(u8 param0);
void sub_80A398C(Opening94_A *strc94_A);
void Task_94_A_80A39FC(void);
void Task_94_A_80A3A7C(void);
void Task_94_A_80A3B64(void);
void CreateOpeningStrc54(u8 param0);
void sub_80A3CC8(Opening54 *strc54);
void Task_54_80A3D3C(void);
void Task_54_80A3DAC(void);
void TaskDestructor_A0_80A3E34(Task *t);
void TaskDestructor_OpEggman_80A3E38(Task *t);
bool32 sub_80A3E3C(OpeningEggman *opEggman);
bool32 sub_80A3E60(OpeningEggman *opEggman);
void sub_80A3E90(OpeningEggman *opEggman);
void sub_80A3EAC(OpeningEggman *opEggman);
void sub_80A3EDC(OpeningEggman *opEggman);
void TaskDestructor_94_A_80A3F10(Task *t);
void TaskDestructor_54_80A3F14(Task *t);
void CreateOpeningStrc94_B(void);
void sub_80A3FDC(Opening94_B *strc94_B);
void Task_94_B_80A40A0(void);
void Task_94_B_80A41AC(void);
void Task_94_B_80A4228(void);
void Task_94_B_80A429C(void);
void Task_94_B_80A4384(void);
void TaskDestructor_94_B_80A43DC(Task *t);
bool32 sub_80A43E0(Opening94_B *strc94_B);
bool32 sub_80A4440(Opening94_B *strc94_B);
bool32 sub_80A4494(Opening94_B *strc94_B);
bool32 sub_80A44E8(Opening94_B *strc94_B); // TODO: Unused. Inline?
bool32 sub_80A453C(Opening94_B *strc94_B);
void sub_80A4598(Opening94_B *strc94_B);

void *CreateSomeTask_809BF3C(void *param0, void *param1, void *param2, void *param3, void *tiles);
extern ColorRaw sub_80C4C0C(ColorRaw color);
extern ColorRaw Palette_unknown_424[16 * 16];
extern const TileInfo2 sTileInfoOpeningEggman[5]; // TODO: 4 for Eggman's Hand + Button, 1 for Eggman's Nametag
extern const TileInfo2 sTileInfoOpeningCharacterNameTags[NUM_CHARACTERS];

void CreateGameIntroState(s16 state)
{
    Opening170 *strc170 = TASK_DATA(TaskCreate(Task_170_GameIntroInit, sizeof(Opening170), 0x1000U, 0U, TaskDestructor_GameIntro));

    if (state == 1 || state == 2) {
        gStageData.unk7 = 0;
    } else {
        gStageData.unk7 = 1;
    }
    strc170->unk134 = -240;
    strc170->unk136 = 0x8C;
    strc170->unk138 = 0;
    strc170->unk13A = 0;
    strc170->unk13C = 0;
    strc170->unk13E = 0;
    strc170->unk140 = 0;
    strc170->unk142 = -48;
    strc170->unk144 = 0x10;
    strc170->unk146 = 0x10;
    strc170->unk148 = 0;
    strc170->unk14A = 0;
    strc170->unk128 = state;
    gBldRegs.bldCnt = 0xFF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
}

void sub_80A217C(Opening170 *strc170)
{
    Background *bg2 = &strc170->bg68;

    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_2;
    // TODO: BG0 and BG1 are unused in Mode 2... does the mode get changed later?
    gBgCntRegs[0] = BGCNT_SCREENBASE(31) | BGCNT_CHARBASE(3) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(0);
    gBgCntRegs[1] = BGCNT_SCREENBASE(23) | BGCNT_CHARBASE(2) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(0);
    gBgCntRegs[2] = BGCNT_SCREENBASE(11) | BGCNT_CHARBASE(0) | BGCNT_AFF256x256 | BGCNT_WRAP | BGCNT_256COLOR | BGCNT_PRIORITY(1);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 16;
    gBgScrollRegs[1][1] = 116;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    {
        bg2->graphics.dest = BG_CHAR_ADDR(0);
        bg2->graphics.anim = 0;
        bg2->layoutVram = BG_SCREEN_ADDR(11);
        bg2->unk18 = 0;
        bg2->unk1A = 0;
        bg2->tilemapId = TM_UNKNOWN_424;
        bg2->unk1E = 0;
        bg2->unk20 = 0;
        bg2->unk22 = 0;
        bg2->unk24 = 0;
        bg2->targetTilesX = 0x20;
        bg2->targetTilesY = 0x20;
        bg2->paletteOffset = 0;
        bg2->animFrameCounter = 0;
        bg2->animDelayCounter = 0;
        bg2->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(2);
        bg2->scrollX = 0;
        bg2->scrollY = 0;
        DrawBackground(bg2);
    }

    if ((strc170->unk128 == 3) || (strc170->unk128 == 5)) {
        Background *bg1 = &strc170->bgE8;
        bg1->graphics.dest = BG_CHAR_ADDR(2);
        bg1->graphics.anim = 0;
        bg1->layoutVram = BG_SCREEN_ADDR(23);
        bg1->unk18 = 0;
        bg1->unk1A = 0;
        bg1->tilemapId = TM_UNKNOWN_423;
        bg1->unk1E = 0;
        bg1->unk20 = 0;
        bg1->unk22 = 0;
        bg1->unk24 = 0;
        bg1->targetTilesX = 0x20;
        bg1->targetTilesY = 0x20;
        bg1->paletteOffset = 0;
        bg1->animFrameCounter = 0;
        bg1->animDelayCounter = 0;
        bg1->flags = BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_FLAGS_BG_ID(1);
        bg1->scrollX = 0;
        bg1->scrollY = 0;
        DrawBackground(bg1);
    }

    if (strc170->unk128 == 1 || strc170->unk128 == 2) {
        Background *bg0 = &strc170->bgA8;
        bg0->graphics.dest = BG_CHAR_ADDR(3);
        bg0->graphics.anim = 0;
        bg0->layoutVram = BG_SCREEN_ADDR(31);
        bg0->unk18 = 0;
        bg0->unk1A = 0;
        if (strc170->unk128 == 1) {
            bg0->tilemapId = TM_UNKNOWN_425;
        } else {
            bg0->tilemapId = TM_UNKNOWN_426;
        }
        bg0->unk1E = 0;
        bg0->unk20 = 0;
        bg0->unk22 = 0;
        bg0->unk24 = 0;
        bg0->targetTilesX = 0x20;
        bg0->targetTilesY = 0x20;
        bg0->paletteOffset = 0;
        bg0->animFrameCounter = 0;
        bg0->animDelayCounter = 0;
        bg0->flags = BACKGROUND_FLAGS_BG_ID(0);
        bg0->scrollX = 0;
        bg0->scrollY = 0;
        DrawBackground(bg0);
    }
}

void sub_80A22E0(Opening170 *strc170)
{

    SpriteTransform *tf = &strc170->tf50;
    Sprite *s = &strc170->spr0;
    {
        s->tiles = OBJ_VRAM0;
        s->frameFlags = 0x1020;
        s->anim = (SONIC * 163 + CHAR_ANIM_PERSPECTIVE_RUN); // TODO: 163 : Number of anims per character
        s->x = 130;
        s->y = 140;
        s->oamFlags = SPRITE_OAM_ORDER(17);
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = 3;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tf->rotation = 0;
        tf->qScaleX = -Q(0.875);
        tf->qScaleY = +Q(0.875);
        tf->x = s->x;
        tf->y = s->y;
    }
    {
        s = &strc170->spr28;
        tf = &strc170->tf5C;
        s->tiles = OBJ_VRAM0 + (64 * TILE_SIZE_4BPP);
        s->frameFlags = 0x1021;
        s->anim = (TAILS * 163 + CHAR_ANIM_PERSPECTIVE_RUN); // TODO: 163 : Number of anims per character
        s->x = 100;
        s->y = 140;
        s->oamFlags = SPRITE_OAM_ORDER(16);
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = 4;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 1;
        s->hitboxes[0].index = -1;
        tf->rotation = 0;
        tf->qScaleX = -Q(1);
        tf->qScaleY = +Q(1);
        tf->x = s->x;
        tf->y = s->y;
    }
}

// TODO: Fake-match!
void sub_80A23A4(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 temp_r1;
    s16 scanline;
    u16 var_r3;
#ifndef NON_MATCHING
    register DmaIoData *bgAffine asm("r4");
#else
    DmaIoData *bgAffine;
#endif

    gHBlankCopySize = sizeof(*strc170->ewramData12C);
    gHBlankCopyTarget = (void *)&REG_BG2PA;
    gBgOffsetsHBlankPrimary = bgAffine = strc170->ewramData12C;
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    strc170->unk138 += strc170->unk140;
    strc170->unk138 &= 0xFFF;
    strc170->unk13A += strc170->unk142;
    strc170->unk13A &= 0x7FF;
    strc170->unk148 += strc170->unk144;
    strc170->unk14A += strc170->unk146;

    for (scanline = 0; scanline < DISPLAY_HEIGHT; scanline++, bgAffine++) {
        temp_r1 = ABS(scanline - strc170->unk136);
        var_r3 = (strc170->ewramData130[temp_r1] * temp_r1 * 2) + (strc170->unk13A * 0x10);
        if (scanline < strc170->unk136) {
            if ((s16)var_r3 < 0) {
                s32 temp_r3 = var_r3 - Q(128);
                var_r3 = temp_r3;
            }
        } else if ((s16)var_r3 >= 0) {
            var_r3 += Q(128);
        }
        bgAffine->bg2pa = strc170->ewramData130[temp_r1] / 4;
        bgAffine->bg2x_l = (((strc170->ewramData130[temp_r1] * strc170->unk134) >> 2) + (strc170->unk138 * 0x10));
        bgAffine->bg2y_l = var_r3;
    }
}

void Task_170_GameIntroInit(void)
{
    s16 *var_r1;
    s16 temp_r0_3;
    s16 temp_r1_2;
    s16 temp_r2_2;
    s16 temp_r4_2;
    s16 var_r5_2;
    s16 var_r5_3;
    s16 var_r5_4;
    u16 temp_r1;
    u16 temp_r2;
    u16 temp_r4;
    u32 temp_r0_2;
    s16 var_r5;
    void (*var_r0)(Opening170 *);
    void *temp_r0;
    DmaIoData *affineRegs;
#ifndef NON_MATCHING
    Opening170 *strc170 = TASK_DATA(gCurTask);
    DmaIoData affineSrc;
    DmaIoData *pAffineSrc = &affineSrc;
    memset(pAffineSrc, 0, sizeof(*pAffineSrc));
    pAffineSrc->bg2pa = 0x100;
    pAffineSrc->bg2pd = 0x100;
#else
    Opening170 *strc170 = TASK_DATA(gCurTask);
    DmaIoData affineSrc = { 0 };
    affineSrc.bg2pa = 0x100;
    affineSrc.bg2pd = 0x100;
#endif

    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_2;
    sub_80A217C(strc170);
    sub_80A22E0(strc170);
    strc170->ewramData12C = EwramMalloc(DISPLAY_HEIGHT * sizeof(DmaIoData));

    affineRegs = strc170->ewramData12C;
    for (var_r5 = 0; var_r5 < DISPLAY_HEIGHT; var_r5++, affineRegs++) {
        CpuCopy16(&affineSrc, affineRegs, sizeof(*affineRegs));
    }
    strc170->ewramData130 = EwramMalloc(256 * sizeof(*strc170->ewramData130));

    for (var_r5 = 0; var_r5 < 256; var_r5++) {
        strc170->ewramData130[var_r5] = 0x100000 / (s32)((var_r5 * 0x10) + 0x400);
    }
    for (var_r5 = 0; var_r5 < 16; var_r5++) {
        gBgPalette[0x50 + var_r5] = sub_80C4C0C(0U);
    }
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    gBldRegs.bldCnt = 0x1D42;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0x10);
    gBldRegs.bldY = 0;
    strc170->unk14C = 0;
    for (var_r5 = 0; var_r5 < 16; var_r5++) {
        strc170->palette[var_r5] = 0;
    }

    // TODO: Can this switch be matched without fallthrough?
    switch (strc170->unk128) {
        case 0:
            gCurTask->main = Task_170_80A2A9C;
            break;
        case 1:
            m4aMPlayAllStop();
            m4aSongNumStart(MUS_INTRO);
        case 2: // FALLTHROUGH!
            strc170->unk13C = 10;
            gCurTask->main = Task_170_80A2A9C;
            break;
        case 3:
            strc170->unk13C = 0;
            gCurTask->main = Task_170_80A2700;
            break;
        case 4:
            gCurTask->main = Task_170_80A2A9C;
            break;
        case 5:
            strc170->unk13C = 0;
            gCurTask->main = Task_170_80A2700;
            break;
    }
}

void Task_170_80A2700(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 temp_r4;

    gDispCnt = 0x1641;

    if (sub_80A2DD8() == 0) {
        sub_80A2978(strc170->unk13E);
        sub_80A2A40(0);
        sub_80A2D80();
        sub_80A23A4();
        if (strc170->unk13C > 0) {
            strc170->unk13C -= 1;
            return;
        }
        strc170->unk13C = 0;
        gCurTask->main = Task_170_80A2774;
    }
}

void Task_170_80A2774(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 temp_r0_2;
    u16 temp_r0;

    if (sub_80A2DD8() == 0) {
        sub_80A2978(strc170->unk13E >> 1);
        sub_80A2A40(strc170->unk13C >> 3);
        sub_80A2D80();
        sub_80A23A4();
        if (++strc170->unk13C <= 0x3F) {
            if (strc170->unk13C > 0x20) {
                strc170->unk13E = (u16)(strc170->unk13E + 1);
            }
        } else {
            strc170->unk13E = (u16)(strc170->unk13E + 1);
            sub_80A2A40(7);
            gCurTask->main = Task_170_80A27EC;
        }
    }
}

void Task_170_80A27EC(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 i;

    strc170->unk14C = (strc170->unk14C + 1) & 0xFF;

    if (sub_80A2DD8() == 0) {
        sub_80A2978(strc170->unk13E >> 1);
        strc170->unk13C += 1;
        strc170->unk13E += 1;
        if (strc170->unk14C == 0) {
            for (i = 0; i < (s32)ARRAY_COUNT(strc170->palette); i++) {
                strc170->palette[i] = 0;
            }
        }
        for (i = 0; i < (s32)ARRAY_COUNT(strc170->palette); i++) {
            if (strc170->unk14C > (i * 4)) {
                s16 chan = strc170->unk14C - (i * 4);
                s16 mask = COLOR_MASK;
                strc170->palette[i] = (chan > mask) ? mask : chan;
            }
        }

        for (i = 0; i < (s32)PALETTE_LEN_4BPP; i++) {
            s32 color = COLOR_MASK & strc170->palette[i];
            gBgPalette[0x50 + i] = sub_80C4C0C((color << R_SHIFT) | (color << G_SHIFT) | (color << B_SHIFT));
        }
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        sub_80A2D80();
        sub_80A23A4();

        if (strc170->unk14C == 0x95) {
            m4aMPlayFadeOut(&gMPlayInfo_BGM, 5U);
            m4aMPlayFadeOut(&gMPlayInfo_SE1, 5U);
            m4aMPlayFadeOut(&gMPlayInfo_SE2, 5U);
            m4aMPlayFadeOut(&gMPlayInfo_SE3, 5U);
        }

        if (strc170->unk14C > 0x9F) {
            gBldRegs.bldCnt = 0xBF;
            gBldRegs.bldAlpha = 0;
            gBldRegs.bldY = 0x10;
            gFlags &= ~4;
            gCurTask->main = Task_170_80A2D34;
        }
    }
}

// TODO: Fake-match!
void sub_80A2978(s16 param0)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    Sprite *s = &strc170->spr0;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s16 temp_r0_2;
    s16 temp_r0_4;
    s16 temp_r0_5;
    s32 temp_r0_6;

    if (param0 < 256) {
#ifndef NON_MATCHING
        register s32 r0 asm("r0");
#else
        s32 r0;
#endif
        s16 *pUnk136 = &strc170->unk136;
        r0 = ((param0 + 32) >> 4) - 4;
        strc170->spr0.y = (u16)*pUnk136 - (r0);
        strc170->tf50.y = strc170->spr0.y;
        r0 = ((param0 >> 4) - 4);

        strc170->tf5C.y = strc170->spr28.y = *pUnk136 - r0;
        temp_r2 = (param0 >> 1);
        strc170->spr0.x = (temp_r2 + 0x82);
        strc170->spr0.x += param0;
        strc170->tf50.x = strc170->spr0.x;
        temp_r2_2 = temp_r2 + param0;
        temp_r0_2 = 0xE0 - temp_r2_2;
        if (temp_r0_2 > 0) {
            strc170->tf50.qScaleX = -temp_r0_2;
            strc170->tf50.qScaleY = +temp_r0_2;
        }
        temp_r1_3 = (param0 * 2);
        temp_r0_6 = (param0 >> 2);
        temp_r0_6 -= 100;
        temp_r1_3 -= temp_r0_6;
        strc170->spr28.x = temp_r1_3;
        strc170->tf5C.x = temp_r1_3;
        temp_r0_4 = 0x100 - temp_r2_2;
        temp_r0_5 = (s16)temp_r0_4;
        if (temp_r0_5 > 0) {
            strc170->tf5C.qScaleX = -temp_r0_5;
            strc170->tf5C.qScaleY = +temp_r0_4;
        }
    }
}

void sub_80A2A40(s16 palId)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    ColorRaw *palette;
    s16 i;

    if (palId < 0) {
        palId = 0;
    } else if (palId > 7) {
        palId = 7;
    }

    palette = &Palette_unknown_424[palId * (PALETTE_LEN_4BPP * sizeof(ColorRaw))];
    for (i = 0; i < 32; i++) {
        s32 a = sub_80C4C0C(palette[i]);
        gBgPalette[i] = a;
    }
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

void Task_170_80A2A9C(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 temp_r0_3;
    s32 temp_r0_2;
    u16 temp_r0;

    gDispCnt = 0x1441;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    strc170->unk13C -= 1;
    if (sub_80A2DD8() == 0) {
        sub_80A2D80();
        sub_80A23A4();
        if (strc170->unk13C <= 0) {
            strc170->unk13C = 150;
            temp_r0_3 = strc170->unk128;
            if ((temp_r0_3 != 0) && ((s32)temp_r0_3 <= 3)) {
                gDispCnt = 0x1541;
            }
            if (strc170->unk128 == 5) {
                gDispCnt = 0x1541;
            }
            gBldRegs.bldCnt = 0x3F41;
            gBldRegs.bldAlpha = 0x1000;
            gBldRegs.bldY = 0;
            gCurTask->main = Task_170_80A2B54;
        }
    }
}

void Task_170_80A2B54(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 *var_r1;
    s16 temp_r0;
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r2;
    u16 unk13C = strc170->unk13C;

    temp_r2 = unk13C - 1;
    temp_r0 = (s16)temp_r2;
    strc170->unk13C = temp_r2;
    if (temp_r0 > 0x8D) {
        var_r0 = (0x96 - temp_r2) * 2;
        gBldRegs.bldAlpha = ((0x10 - var_r0) << 8) | var_r0;
    } else if (temp_r0 <= 8) {
        temp_r2_2 = temp_r2 * 2;
        gBldRegs.bldAlpha = (s16)(((0x10 - temp_r2_2) << 8) | temp_r2_2);
    } else {
        var_r0 = 0x10;
        gBldRegs.bldAlpha = 0x10;
    }

    if (sub_80A2DD8() == 0) {
        sub_80A2D80();
        sub_80A23A4();
        if (strc170->unk13C <= 0) {
            switch (strc170->unk128) {
                case 0:
                    break;
                case 1:
                    strc170->unk13C = 10;
                    break;
                case 2:
                    strc170->unk13C = 0x78;
                    gStageData.unk7 = 1;
                    break;
                case 3:
                case 4:
                case 5:
                default:
                    strc170->unk13C = 1;
                    break;
            }
            gDispCnt = 0x1441;
            gCurTask->main = Task_170_80A2C60;
        }
    }
}

void Task_170_80A2C60(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);

    strc170->unk13C -= 1;
    if (sub_80A2DD8() == 0) {
        if (strc170->unk13C > 0) {
            sub_80A2D80();
            sub_80A23A4();
            return;
        }
        gBldRegs.bldCnt = 0xFF;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0x10;
        {
            switch (strc170->unk128) {
                case 0:
                    CreateOpeningStrcA0(1);
                    break;
                case 1:
                    CreateOpeningStrcA0(0U);
                    break;
                case 2: {
                    CreateOpeningStrc94_B();
                } break;
                case 4:
                    CreateIntroEggmanCutscene(1);
                    break;
            }
        }
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_GameIntro(Task *t)
{
    Opening170 *strc170 = TASK_DATA(t);
    EwramFree(strc170->ewramData12C);
    EwramFree(strc170->ewramData130);
    gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
}

void Task_170_80A2D34(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);

    switch (strc170->unk128) {
        case 3:
            sub_808ADF0(2U);
            return;
        case 5:
            gLoadedSaveGame.unk34 |= 1;
            sub_8001E58();
            WarpToMap(2, 0);
            return;
    }
}

void sub_80A2D80(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    Sprite *temp_r4;

    UpdateSpriteAnimation(&strc170->spr0);
    TransformSprite(&strc170->spr0, &strc170->tf50);
    DisplaySprite(&strc170->spr0);
    temp_r4 = &strc170->spr28;
    UpdateSpriteAnimation(temp_r4);
    TransformSprite(temp_r4, &strc170->tf5C);
    DisplaySprite(temp_r4);
}

s16 sub_80A2DD8(void)
{
    Opening170 *strc170 = TASK_DATA(gCurTask);
    s16 temp_r0;

    if (gStageData.unk7 != 0) {
        if ((strc170->unk128 != 0) && (strc170->unk128 < 4) && (gPressedKeys & START_BUTTON)) {
            gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
            sub_808ADF0(2U);
            return 1;
        }
    }

    return 0;
}

void CreateOpeningStrcA0(u8 param0)
{
    OpeningA0 *strcA0;
    s32 sp4;

    gDispCnt = 0x1040;
    strcA0 = TASK_DATA(TaskCreate(Task_A0_80A2FF4, sizeof(OpeningA0), 0x100U, 0U, TaskDestructor_A0_80A3E34));
    strcA0->unk14 = 0x3000;
    strcA0->unkC = 0x4000;
    strcA0->unk18 = 0;
    strcA0->unk1C = 0;
    strcA0->unk1 = 2;
    strcA0->unk4 = 0;
    strcA0->unk0 = param0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(0), 0x40);
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A2F0C(strcA0);
    gBgPalette[0] = sub_80C4C0C(0U);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

void sub_80A2F0C(OpeningA0 *strcA0)
{
    u16 *sp0;

    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0xC81;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    {
        Background *bg1 = &strcA0->bg60;
        bg1->graphics.dest = BG_CHAR_ADDR(0);
        bg1->graphics.anim = 0;
        bg1->layoutVram = BG_SCREEN_ADDR(12);
        bg1->unk18 = 0;
        bg1->unk1A = 0;
        bg1->tilemapId = TM_UNKNOWN_302;
        bg1->unk1E = 0;
        bg1->unk20 = 0;
        bg1->unk22 = 0;
        bg1->unk24 = 0;
        bg1->targetTilesX = 0x20;
        bg1->targetTilesY = 0x20;
        bg1->paletteOffset = 0;
        bg1->flags = 4 | BACKGROUND_FLAGS_BG_ID(1);
        sp0 = &gDispCnt;
        DrawBackground(bg1);
    }

    gDispCnt |= 0x400;
    gBgCntRegs[2] = 0x5888;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    {
        Background *bg2 = &strcA0->bg20;
        bg2->graphics.dest = BG_CHAR_ADDR(2);
        bg2->graphics.anim = 0;
        bg2->layoutVram = BG_SCREEN_ADDR(24);
        bg2->unk18 = 0;
        bg2->unk1A = 0;
        bg2->tilemapId = TM_UNKNOWN_301;
        bg2->unk1E = 0;
        bg2->unk20 = 0;
        bg2->unk22 = 0;
        bg2->unk24 = 0;
        bg2->targetTilesX = 0x20;
        bg2->targetTilesY = 0x20;
        bg2->paletteOffset = 0;
        bg2->flags = 4 | BACKGROUND_FLAGS_BG_ID(2);
        DrawBackground(bg2);
    }
}

void Task_A0_80A2FF4(void)
{
    OpeningA0 *strcA0 = TASK_DATA(gCurTask);
    gBldRegs.bldCnt = 0x3FFF;
    gDispCnt |= 0x6000;
    gWinRegs[WINREG_WIN0H] = 0xFF;
    gWinRegs[WINREG_WIN1H] = 0xFF;
    gWinRegs[WINREG_WIN1V] = 0xFF;
    gWinRegs[WINREG_WININ] = 0x3117;
    gWinRegs[WINREG_WINOUT] = 0;
    gBldRegs.bldY = 0x10;
    strcA0->unk6 = 0x1000;
    strcA0->unk8 = 1;
    gWinRegs[WINREG_WIN0V] = (((s32)strcA0->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strcA0->unkC >> 8);
    gBldRegs.bldAlpha = 0x1F;
    gBldRegs.bldY = 0x10;
    gCurTask->main = Task_A0_80A3074;
}

void Task_A0_80A3074(void)
{
    OpeningA0 *strcA0 = TASK_DATA(gCurTask);
    s32 temp_r0_3;
    s32 temp_r1;
    s32 var_r4;
    u16 temp_r0;
    u16 temp_r0_2;

    var_r4 = 0;
    if ((strcA0->unk4 > 4U) || (++strcA0->unk4 > 4U)) {
        temp_r1 = strcA0->unk18;
        if (temp_r1 <= 0x4FFF) {
            temp_r0_3 = temp_r1 + (strcA0->unk1 << 8);
            strcA0->unk18 = temp_r0_3;
            if (temp_r0_3 > 0x4FFF) {
                strcA0->unk18 = 0x5000;
                var_r4 += 1;
            }
        }
    }
    gWinRegs[WINREG_WIN0V] = (((s32)strcA0->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strcA0->unkC >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)strcA0->unk18 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)strcA0->unk1C >> 8);
    if (var_r4 != 0) {
        if (strcA0->unk0 == 0) {
            CreateGameIntroState(2U);
        } else {
            CreateGameIntroState(4U);
        }
        TaskDestroy(gCurTask);
    }
}

void CreateIntroEggmanCutscene(u8 param0)
{
    OpeningEggman *opEggman;
    // TODO: Can we match mask1 and the DispCnt part more cleanly?
    u32 mask1; // NOTE: For matching
    u16 *pDispCnt = &gDispCnt;
    u32 dispCnt = 0x7140;
    *pDispCnt = dispCnt;

    opEggman = TASK_DATA(TaskCreate(Task_OpEggman_80A3444, sizeof(OpeningEggman), 0x100U, 0U, TaskDestructor_OpEggman_80A3E38));
    opEggman->initArg0 = param0;
    opEggman->unk10 = 0x4000;
    opEggman->unk8 = 0x2000;
    opEggman->bg2ScrollX = 0;
    opEggman->bg2ScrollY = 0xFFFF9C00;
    opEggman->unk24 = 0xE600;
    opEggman->unk28 = 0x8200;
    opEggman->unk1C = 0xB400;
    opEggman->unk20 = 0xA000;
    mask1 = 1;
    opEggman->unk1 = 1;
    opEggman->unk6 = 0;
    opEggman->unk4 = 0;
    opEggman->unk2 = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(0), 0x40);
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A3354(opEggman);
    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    if (opEggman->initArg0 != 0) {
        gBgPalette[0] = sub_80C4C0C(0);
    } else {
        gBgPalette[0] = sub_80C4C0C(0xFFFF);
    }
    gFlags |= mask1;
}

void sub_80A3228(OpeningEggman *opEggman)
{
    s32 temp_r2_2;
    s32 var_r3_2;
    u16 var_r3;
    u8 *var_r7;
    u8 temp_r4;
    u8 var_r5;
    u8 var_r5_2;
    void *temp_r2_3;

    var_r5 = 0;
    var_r7 = OBJ_VRAM0;
    {
        Sprite *s = &opEggman->sprAC;
        s->tiles = var_r7;
        var_r7 += (sTileInfoOpeningEggman->numTiles << 5);
        s->anim = sTileInfoOpeningEggman->anim;
        s->variant = sTileInfoOpeningEggman->variant;
        s->prevVariant = 0xFF;
        s->x = (s16)((s32)opEggman->unk24 >> 8);
        s->y = (s16)((s32)opEggman->unk28 >> 8);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        Sprite *s = &opEggman->spritesD4[var_r5];
        s->tiles = var_r7;
        var_r7 += (sTileInfoOpeningEggman[var_r5 + 1].numTiles) << 5;
        s->anim = sTileInfoOpeningEggman[var_r5 + 1].anim;
        s->variant = sTileInfoOpeningEggman[var_r5 + 1].variant;
        s->prevVariant = -1;
        s->x = I(opEggman->unk1C);
        s->y = I(opEggman->unk20);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        Sprite *s = &opEggman->sprites124[var_r5];
        s->tiles = var_r7;
        var_r7 += sTileInfoOpeningEggman[var_r5 + 3].numTiles << 5;
        s->anim = sTileInfoOpeningEggman[var_r5 + 3].anim;
        s->variant = sTileInfoOpeningEggman[var_r5 + 3].variant;
        s->prevVariant = -1;
        s->x = I(opEggman->unk1C);
        s->y = I(opEggman->unk20);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void sub_80A3354(OpeningEggman *opEggman)
{
    gDispCnt |= DISPCNT_BG2_ON;
    gBgCntRegs[2] = 0x5888;
    gBgScrollRegs[2][0] = I(opEggman->bg2ScrollX);
    gBgScrollRegs[2][1] = I(opEggman->bg2ScrollY);
    {
        Background *bg2 = &opEggman->bg2C;
        bg2->graphics.dest = BG_CHAR_ADDR(2);
        bg2->graphics.anim = 0;
        bg2->layoutVram = BG_SCREEN_ADDR(24);
        bg2->unk18 = 0;
        bg2->unk1A = 0;
        bg2->tilemapId = TM_UNKNOWN_300;
        bg2->unk1E = 0;
        bg2->unk20 = 0;
        bg2->unk22 = 0;
        bg2->unk24 = 0;
        bg2->targetTilesX = 0x20;
        bg2->targetTilesY = 0x20;
        bg2->paletteOffset = 0;
        bg2->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(2);
        DrawBackground(&opEggman->bg2C);
    }

    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = 0x681;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    {
        Background *bg1 = &opEggman->bg6C;
        bg1->graphics.dest = BG_CHAR_ADDR(0);
        bg1->graphics.anim = 0;
        bg1->layoutVram = BG_SCREEN_ADDR(6);
        bg1->unk18 = 0;
        bg1->unk1A = 0;
        bg1->tilemapId = TM_UNKNOWN_299;
        bg1->unk1E = 0;
        bg1->unk20 = 0;
        bg1->unk22 = 0;
        bg1->unk24 = 0;
        bg1->targetTilesX = 0x20;
        bg1->targetTilesY = 0x20;
        bg1->paletteOffset = 0;
        bg1->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(1);
        DrawBackground(bg1);
    }
}

void Task_OpEggman_80A3444(void)
{
    OpeningEggman *opEggman = TASK_DATA(gCurTask);
    u8 var_r6 = 0;
    if (opEggman->unk6 == 0) {
        gBldRegs.bldCnt = 0xC2;
        gDispCnt |= 0x6000;
        gWinRegs[WINREG_WIN0H] = 0xFF;
        gWinRegs[WINREG_WIN1H] = 0xFF;
        gWinRegs[WINREG_WIN1V] = 0xFF;
        gWinRegs[WINREG_WININ] = 0x1137;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldY = 0x10;
        opEggman->unk4 = 0x1000;
        opEggman->unk6 = 1;
        sub_80A3228(opEggman);
        gDispCnt &= 0xFEFF;
    }

    if (opEggman->unk10 >= 0x3000) {
        opEggman->unk10 -= Q(1);
        if (opEggman->unk10 <= 0x3000) {
            opEggman->unk10 = 0x3000;
            var_r6 += 1;
        }
    }

    if (opEggman->unk8 <= 0x4000) {
        opEggman->unk8 += 0x200;
        if (opEggman->unk8 >= 0x4000) {
            opEggman->unk8 = 0x4000;
            var_r6 += 1;
        }
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)opEggman->unk4 >> 8);
        opEggman->unk4 -= Q(1);
    } else {
        var_r6 += 1;
    }
    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    if (var_r6 == 3) {
        gBldRegs.bldCnt = 0xF0;
        gWinRegs[WINREG_WININ] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0;
        opEggman->unk6 = 0;
        opEggman->unk4 = 0;
        gCurTask->main = Task_OpEggman_80A3564;
    }
}

void Task_OpEggman_80A3564(void)
{
    OpeningEggman *opEggman = TASK_DATA(gCurTask);
    u16 temp_r0;
    u16 temp_r0_2;

    sub_80A3E3C(opEggman);
    if (gBldRegs.bldY < 0x10) {
        opEggman->unk4 += 0x80;
        gBldRegs.bldY = I(opEggman->unk4);
    } else {
        gBgPalette[0] = sub_80C4C0C(0U);
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    }
    opEggman->unk2 += 1;
    if (opEggman->unk2 > 150) {
        opEggman->unk4 = 0x1000;
        opEggman->unk2 = 0;
        gBldRegs.bldCnt = 0xD0;
        gWinRegs[WINREG_WININ] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0x10;
        opEggman->unk6 = 0;
        opEggman->unk4 = 0x1000;
        gBgPalette[0] = sub_80C4C0C(0U);
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        gCurTask->main = Task_OpEggman_80A3664;
        return;
    }
    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    gBgScrollRegs[2][0] = I(opEggman->bg2ScrollX);
    gBgScrollRegs[2][1] = I(opEggman->bg2ScrollY);

    if ((opEggman->initArg0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A3664(void)
{
    OpeningEggman *opEggman = TASK_DATA(gCurTask);
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    if (opEggman->initArg0 == 0) {
        sub_80A3E90(opEggman);
    }
    temp_r1 = gBldRegs.bldY;
    if (temp_r1 == 0) {
        gBldRegs.bldY = temp_r1;
        opEggman->unk2 += 1;
        if (opEggman->unk2 > 60) {
            opEggman->unk2 = temp_r1;
            opEggman->unk4 = temp_r1;
            gCurTask->main = Task_OpEggman_80A3710;
            return;
        }
    } else {
        opEggman->unk4 -= Q(1);
        gBldRegs.bldY = I(opEggman->unk4);
    }

    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    gBgScrollRegs[2][0] = I(opEggman->bg2ScrollX);
    gBgScrollRegs[2][1] = I(opEggman->bg2ScrollY);
    if ((opEggman->initArg0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A3710(void)
{
    OpeningEggman *opEggman = TASK_DATA(gCurTask);

    if (opEggman->initArg0 == 0) {
        sub_80A3E90(opEggman);
    }
    if (gBldRegs.bldY >= 0x10) {
        gBldRegs.bldY = 0x10;
        gWinRegs[WINREG_WININ] = 0x2017;
        opEggman->unk2 = 0;
        gCurTask->main = Task_OpEggman_80A37B8;
        return;
    }
    opEggman->unk4 += 0x100;
    gBldRegs.bldY = I(opEggman->unk4);
    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    gBgScrollRegs[2][0] = I(opEggman->bg2ScrollX);
    gBgScrollRegs[2][1] = I(opEggman->bg2ScrollY);
    if ((opEggman->initArg0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A37B8(void)
{
    OpeningEggman *opEggman = TASK_DATA(gCurTask);

    sub_80A3EAC(opEggman);
    if (sub_80A3E60(opEggman) == 1) {
        opEggman->unk2 += 1;
        if (opEggman->unk2 > 60) {
            opEggman->unk2 = 0;
            gCurTask->main = Task_OpEggman_80A3844;
            return;
        }
    }
    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    gBgScrollRegs[2][0] = I(opEggman->bg2ScrollX);
    gBgScrollRegs[2][1] = I(opEggman->bg2ScrollY);
    if ((opEggman->initArg0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A3844(void)
{
    OpeningEggman *opEggman = TASK_DATA(gCurTask);

    sub_80A3EDC(opEggman);
    if (opEggman->unk2 > 0x13U) {
        CreateOpeningStrc94_A(opEggman->initArg0);
        TaskDestroy(gCurTask);
        return;
    }
    opEggman->unk2 += 1;
    gWinRegs[WINREG_WIN0V] = (I(opEggman->unk10) * WIN_RANGE(1, 1)) + I(opEggman->unk8);
    gBgScrollRegs[2][0] = I(opEggman->bg2ScrollX);
    gBgScrollRegs[2][1] = I(opEggman->bg2ScrollY);
    if ((opEggman->initArg0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void CreateOpeningStrc94_A(u8 param0)
{
    Opening94_A *strc94_A;
    s32 sp4;

    gDispCnt = 0x1040;
    strc94_A = TASK_DATA(TaskCreate(Task_94_A_80A39FC, 0x94U, 0x100U, 0U, TaskDestructor_94_A_80A3F10));
    strc94_A->unk0 = param0;
    strc94_A->unk10 = 0x3000;
    strc94_A->unk8 = 0x4000;
    strc94_A->unk2 = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(0), 0x40);
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A398C(strc94_A);
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

void sub_80A398C(Opening94_A *strc94_A)
{
    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0xD81;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    {
        Background *bg1 = &strc94_A->bg54;
        bg1->graphics.dest = BG_CHAR_ADDR(0);
        bg1->graphics.anim = 0;
        bg1->layoutVram = BG_SCREEN_ADDR(13);
        bg1->unk18 = 0;
        bg1->unk1A = 0;
        bg1->tilemapId = TM_UNKNOWN_302;
        bg1->unk1E = 0;
        bg1->unk20 = 0;
        bg1->unk22 = 0;
        bg1->unk24 = 0;
        bg1->targetTilesX = 0x20;
        bg1->targetTilesY = 0x20;
        bg1->paletteOffset = 0;
        bg1->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(1);
        DrawBackground(bg1);
    }
}

void Task_94_A_80A39FC(void)
{
    Opening94_A *strc94_A = TASK_DATA(gCurTask);
    gBldRegs.bldCnt = 0x3FFF;
    gDispCnt |= 0x6000;
    gWinRegs[WINREG_WIN0H] = 0xFF;
    gWinRegs[WINREG_WIN1H] = 0xFF;
    gWinRegs[WINREG_WIN1V] = 0xFF;
    gWinRegs[WINREG_WININ] = 0x3117;
    gWinRegs[WINREG_WINOUT] = 0;
    gBldRegs.bldY = 0x10;
    strc94_A->unk4 = 0x1000;
    strc94_A->unk6 = 1;
    gWinRegs[WINREG_WIN0V] = (I(strc94_A->unk10) * WIN_RANGE(1, 1)) + I(strc94_A->unk8);
    gBldRegs.bldAlpha = 0x1F;
    gBldRegs.bldY = 0x10;
    gCurTask->main = Task_94_A_80A3A7C;
}

void Task_94_A_80A3A7C(void)
{
    Opening94_A *strc94_A = TASK_DATA(gCurTask);

    gWinRegs[WINREG_WIN0V] = (I(strc94_A->unk10) * WIN_RANGE(1, 1)) + I(strc94_A->unk8);

    strc94_A->unk2 += 1;
    if (strc94_A->unk2 == 4) {
        gDispCnt |= 0x400;
    }
    if (strc94_A->unk2 == 5) {
        gBgCntRegs[2] = 0x5D88;
        gBgScrollRegs[2][0] = 0;
        gBgScrollRegs[2][1] = 0;
        {
            Background *bg2 = &strc94_A->bg14;
            bg2->graphics.dest = BG_CHAR_ADDR(2);
            bg2->graphics.anim = 0;
            bg2->layoutVram = BG_SCREEN_ADDR(29);
            bg2->unk18 = 0;
            bg2->unk1A = 0;
            bg2->tilemapId = TM_UNKNOWN_304;
            bg2->unk1E = 0;
            bg2->unk20 = 0;
            bg2->unk22 = 0;
            bg2->unk24 = 0;
            bg2->targetTilesX = 0x20;
            bg2->targetTilesY = 0x20;
            bg2->paletteOffset = 0;
            bg2->flags = 6;
            DrawBackground(bg2);
        }
    }
    if ((u32)strc94_A->unk2 > 0xAU) {
        strc94_A->unk6 = 0;
        gCurTask->main = Task_94_A_80A3B64;
        return;
    }
    if ((strc94_A->unk0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void Task_94_A_80A3B64(void)
{
    Opening94_A *strc94_A = TASK_DATA(gCurTask);

    gWinRegs[WINREG_WIN0V] = (I(strc94_A->unk10) * WIN_RANGE(1, 1)) + I(strc94_A->unk8);

    if (strc94_A->unk6 == 0) {
        gBldRegs.bldCnt = 0x3FBF;
        gDispCnt |= 0x6000;
        gWinRegs[WINREG_WIN0H] = 0xFF;
        gWinRegs[WINREG_WIN1H] = 0xFF;
        gWinRegs[WINREG_WIN1V] = 0xFF;
        gWinRegs[WINREG_WININ] = 0x24;
        gWinRegs[WINREG_WINOUT] = 0;
        strc94_A->unk4 = 0;
        strc94_A->unk6 = 1;
        gBldRegs.bldY = 0;
    }
    if ((u32)gBldRegs.bldY <= 0xEU) {
        strc94_A->unk4 += 0x30;
        gBldRegs.bldY = I(strc94_A->unk4);
        return;
    }
    CreateOpeningStrc54(strc94_A->unk0);
    TaskDestroy(gCurTask);
}

void CreateOpeningStrc54(u8 param0)
{
    Opening54 *strc54;

    gDispCnt = 0x7040;
    strc54 = TASK_DATA(TaskCreate(Task_54_80A3D3C, sizeof(Opening54), 0x100U, 0U, TaskDestructor_54_80A3F14));
    strc54->initArg0 = param0;
    strc54->unk10 = 0x3000;
    strc54->unk8 = 0x4000;
    strc54->unk2 = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(0), 0x40);
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A3CC8(strc54);
    gBgPalette[0] = sub_80C4C0C(0U);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

void sub_80A3CC8(Opening54 *strc54)
{
    gDispCnt |= 0x100;
    gBgCntRegs[0] = 0x5888;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    {
        Background *bg0 = &strc54->bg;
        bg0->graphics.dest = BG_CHAR_ADDR(2);
        bg0->graphics.anim = 0;
        bg0->layoutVram = BG_SCREEN_ADDR(24);
        bg0->unk18 = 0;
        bg0->unk1A = 0;
        bg0->tilemapId = TM_UNKNOWN_303;
        bg0->unk1E = 0;
        bg0->unk20 = 0;
        bg0->unk22 = 0;
        bg0->unk24 = 0;
        bg0->targetTilesX = 0x20;
        bg0->targetTilesY = 0x20;
        bg0->paletteOffset = 0;
        bg0->flags = 4;
        DrawBackground(bg0);
    }
}

void Task_54_80A3D3C(void)
{
    Opening54 *strc54 = TASK_DATA(gCurTask);
    gBldRegs.bldCnt = 0x3FBF;
    gDispCnt |= 0x6000;
    gWinRegs[WINREG_WIN0H] = 0xFF;
    gWinRegs[WINREG_WIN1H] = 0xFF;
    gWinRegs[WINREG_WIN1V] = 0xFF;
    gWinRegs[WINREG_WININ] = 0x21;
    gWinRegs[WINREG_WINOUT] = 0;
    gBldRegs.bldY = 0;
    strc54->unk4 = 0;
    strc54->unk6 = 1;
    gWinRegs[WINREG_WIN0V] = (((s32)strc54->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc54->unk8 >> 8);
    gCurTask->main = Task_54_80A3DAC;
}

void Task_54_80A3DAC(void)
{
    Opening54 *strc54 = TASK_DATA(gCurTask);

    gWinRegs[WINREG_WIN0V] = (((s32)strc54->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc54->unk8 >> 8);
    if (gBldRegs.bldY <= 0xEU) {
        strc54->unk4 += 0x30;
        gBldRegs.bldY = I(strc54->unk4);
    } else {
        if (strc54->initArg0 != 0) {
            CreateGameIntroState(5);
        } else {
            CreateGameIntroState(3);
        }
        TaskDestroy(gCurTask);
        return;
    }

    if ((strc54->initArg0 == 0) && (gPressedKeys & START_BUTTON)) {
        sub_808ADF0(2U);
    }
}

void TaskDestructor_A0_80A3E34(Task *t) { }

void TaskDestructor_OpEggman_80A3E38(Task *t) { }

u32 sub_80A3E3C(OpeningEggman *opEggman)
{
    if (opEggman->bg2ScrollY < 0) {
        opEggman->bg2ScrollY += (opEggman->unk1 << 8);
        if (opEggman->bg2ScrollY >= 0) {
            opEggman->bg2ScrollY = 0;
            return 1U;
        }
    }
    return 0U;
}

u32 sub_80A3E60(OpeningEggman *opEggman)
{
    if (opEggman->unk20 >= 0x7000) {
        opEggman->unk20 -= 0x80;
        opEggman->unk20 -= (opEggman->unk1 << 7);
        if (opEggman->unk20 <= 0x7000) {
            opEggman->unk20 = 0x7000;
            return 1U;
        }
    }
    return 0U;
}

void sub_80A3E90(OpeningEggman *opEggman)
{
    Sprite *s = &opEggman->sprAC;
    s->x = I(opEggman->unk24);
    s->y = I(opEggman->unk28);
    DisplaySprite(s);
}

void sub_80A3EAC(OpeningEggman *opEggman)
{
    Sprite *temp_r0;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = &opEggman->spritesD4[var_r4];
        temp_r0->x = (s16)((s32)opEggman->unk1C >> 8);
        temp_r0->y = (s16)((s32)opEggman->unk20 >> 8);
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1U);
}

void sub_80A3EDC(OpeningEggman *opEggman)
{
    Sprite *temp_r0;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = &opEggman->sprites124[var_r4];
        temp_r0->x = (s16)((s32)opEggman->unk1C >> 8);
        temp_r0->y = (s16)((s32)opEggman->unk20 >> 8);
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1U);
}

void TaskDestructor_94_A_80A3F10(Task *t) { }

void TaskDestructor_54_80A3F14(Task *t) { }

void CreateOpeningStrc94_B(void)
{
    gDispCnt = 0x1040;
    {
        Opening94_B *strc94_B = TASK_DATA(TaskCreate(Task_94_B_80A40A0, sizeof(Opening94_B), 0x100U, 0U, TaskDestructor_94_B_80A43DC));
        strc94_B->unk14 = 0x5000;
        strc94_B->unkC = 0;
        strc94_B->unk18 = -0x7800;
        strc94_B->unk20 = 0x12C00;
        strc94_B->unk24 = 0x5000;
        strc94_B->unk1C = 0x5000;
        strc94_B->unk0 = 4;
        strc94_B->unk3 = 1;
        strc94_B->tagIndex = 0;
        strc94_B->unk1 = 0x19;
        strc94_B->unk8 = 0;
        strc94_B->unk6 = 0;
        strc94_B->unk4 = 0;
        sub_80A3FDC(strc94_B);
        *gBgPalette = sub_80C4C0C(0xFFFFU);
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        *gBgSprites_Unknown1 = 0;
        gBgSprites_Unknown2[0][0] = 0;
        gBgSprites_Unknown2[0][1] = 0;
        gBgSprites_Unknown2[0][2] = 0xFF;
        gBgSprites_Unknown2[0][3] = 0x40;
        gWinRegs[WINREG_WIN0V] = (((s32)strc94_B->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_B->unkC >> 8);
    }
}

void sub_80A3FDC(Opening94_B *strc94_B)
{
    u32 tagIndex = strc94_B->tagIndex;
    u8 *vram = OBJ_VRAM0;
    {
        Sprite *s = &strc94_B->spr2C;
        s->tiles = vram;
        vram += 0x680;
        strc94_B->vram28 = vram;
        s->anim = sTileInfoOpeningCharacterNameTags[tagIndex].anim;
        s->variant = sTileInfoOpeningCharacterNameTags[tagIndex].variant;
        s->prevVariant = -1;
        s->x = I(strc94_B->unk20);
        s->y = I(strc94_B->unk24);
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    gDispCnt |= 0x100;
    gBgCntRegs[0] = 0x5888;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0x6E;

    {
        Background *bg0 = &strc94_B->bg54;
        bg0->graphics.dest = BG_CHAR_ADDR(2);
        bg0->graphics.anim = 0;
        bg0->layoutVram = BG_SCREEN_ADDR(24);
        bg0->unk18 = 0;
        bg0->unk1A = 0;
        bg0->tilemapId = TM_UNKNOWN_303;
        bg0->unk1E = 0;
        bg0->unk20 = 0;
        bg0->unk22 = 0;
        bg0->unk24 = 0;
        bg0->targetTilesX = 0x20;
        bg0->targetTilesY = 0x20;
        bg0->paletteOffset = 0;
        bg0->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(0);
        DrawBackground(&strc94_B->bg54);
    }
}

void Task_94_B_80A40A0(void)
{
    Opening94_B *strc94_B = TASK_DATA(gCurTask);
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 var_r6;

    var_r6 = 0;
    if (strc94_B->unk8 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[WINREG_WIN0H] = 0xFF;
        gWinRegs[WINREG_WIN1H] = 0xFF;
        gWinRegs[WINREG_WIN1V] = 0xFF;
        gWinRegs[WINREG_WININ] = 0x1011;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldY = 0x10;
        strc94_B->unk6 = 0x1000;
        strc94_B->unk8 = 1;
        CreateSomeTask_809BF3C(&strc94_B->tagIndex, &strc94_B->unk1, &strc94_B->unk18, &strc94_B->unk1C, strc94_B->vram28);
    }

    if (strc94_B->unk14 >= 0x4000) {
        strc94_B->unk14 -= Q(1);
        if (strc94_B->unk14 <= 0x4000) {
            strc94_B->unk14 = 0x4000;
            var_r6 = 1;
        }
    }
    temp_r1_2 = strc94_B->unkC;
    if (strc94_B->unkC <= 0x2000) {
        strc94_B->unkC += 0x200;
        if (strc94_B->unkC >= 0x2000) {
            strc94_B->unkC = 0x2000;
            var_r6 += 1;
        }
    }
    gWinRegs[WINREG_WIN0V] = (I(strc94_B->unk14) * WIN_RANGE(1, 1)) + I(strc94_B->unkC);
    if (var_r6 == 2) {
        gBldRegs.bldCnt = 0x3FFF;
        gWinRegs[WINREG_WININ] = 0x1011;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0x10;
        strc94_B->unk8 = 0;
        gCurTask->main = Task_94_B_80A41AC;
    }
}

void Task_94_B_80A41AC(void)
{
    Opening94_B *strc94_B = TASK_DATA(gCurTask);
    u16 temp_r2;

    sub_80A4598(strc94_B);
    gWinRegs[WINREG_WIN0V] = (I(strc94_B->unk14) * WIN_RANGE(1, 1)) + I(strc94_B->unkC);
    sub_80A43E0(strc94_B);

    if (strc94_B->unk4 > 0x2CU) {
        strc94_B->unk4 = 0;
        gCurTask->main = Task_94_B_80A4228;
        return;
    }
    if (gPressedKeys & START_BUTTON) {
        strc94_B->unk18 = 0x13600;
        strc94_B->unk1 = 0x1D;
        sub_808ADF0(2U);
        return;
    }
    strc94_B->unk4 += 1;
}

void Task_94_B_80A4228(void)
{
    Opening94_B *strc94_B = TASK_DATA(gCurTask);
    u16 temp_r2;

    sub_80A4598(strc94_B);
    if (sub_80A453C(strc94_B) == 1) {
        strc94_B->unk1 = 0x1B;
    }
    sub_80A4440(strc94_B);
    temp_r2 = strc94_B->unk4;
    if ((u32)temp_r2 > 0x77U) {
        strc94_B->unk4 = 0;
        gCurTask->main = Task_94_B_80A429C;
        return;
    }
    if (gPressedKeys & START_BUTTON) {
        strc94_B->unk18 = 0x13600;
        strc94_B->unk1 = 0x1D;
        sub_808ADF0(2U);
        return;
    }
    strc94_B->unk4 = temp_r2 + 1;
}

// TODO: Fake-match!
void Task_94_B_80A429C(void)
{
    Opening94_B *strc94_B = TASK_DATA(gCurTask);
#ifndef NON_MATCHING
    register s32 r1 asm("r1");
    register s32 r2 asm("r2") = 0x13600;
#else
    s32 r1;
    s32 r2 = 0x13600;
#endif
    s32 zero;

    strc94_B->unk18 = r2;
    zero = 0;
    r1 = 0x1D;
    strc94_B->unk1 = r1;
    if (++strc94_B->tagIndex > 4U) {
        strc94_B->unk4 = zero;
        gBldRegs.bldCnt = 0xA0;
        gWinRegs[WINREG_WININ] = 0x3000;
        gWinRegs[WINREG_WINOUT] = zero;
        gBldRegs.bldY = 0x10;
        gBgPalette[0] = sub_80C4C0C(0U);
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        gCurTask->main = Task_94_B_80A4384;
    } else {
        strc94_B->unk1 = 0x19;
        strc94_B->unk3 = (strc94_B->unk3 > 0) ? -1 : +1;
        if (strc94_B->unk3 > 0) {
            strc94_B->unk18 = -0x7800;
            strc94_B->unk20 = 0x12C00;
        } else {
            strc94_B->unk18 = 0x16800;
            strc94_B->unk20 = -0x3C00;
        }
        {
            Sprite *s = &strc94_B->spr2C;
            s->anim = sTileInfoOpeningCharacterNameTags[strc94_B->tagIndex].anim;
            s->variant = sTileInfoOpeningCharacterNameTags[strc94_B->tagIndex].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }
        gCurTask->main = Task_94_B_80A41AC;
    }
}

void Task_94_B_80A4384(void)
{
    Opening94_B *strc94_B = TASK_DATA(gCurTask);
    ColorRaw *bgPalette = BG_PLTT;

    gBldRegs.bldCnt = 0xA0;
    gWinRegs[WINREG_WININ] = 0x3000;
    gWinRegs[WINREG_WINOUT] = 0;
    gBldRegs.bldY = 0x10;
#if (COLOR_RAW_SIZE == 2)
    // Writes two colors in one go
    *(u32 *)(&bgPalette[0]) = 0;
#else
    bgPalette[0] = 0;
    bgPalette[1] = 0;
#endif

    if (strc94_B->unk4 > 2U) {
        CreateIntroEggmanCutscene(0U);
        TaskDestroy(gCurTask);
        return;
    }
    strc94_B->unk4 += 1;
}

void TaskDestructor_94_B_80A43DC(Task *t) { }

bool32 sub_80A43E0(Opening94_B *strc94_B)
{
    if (strc94_B->unk4 > 0xEU) {
        if (strc94_B->unk3 > 0) {
            if (strc94_B->unk18 <= 0x9600) {
                strc94_B->unk18 += (strc94_B->unk0 << 9);
                if (strc94_B->unk18 >= 0x9600) {
                    strc94_B->unk18 = 0x9600;
                    return 1U;
                }
            }
        } else {
            if (strc94_B->unk18 >= 0x5A00) {
                strc94_B->unk18 -= (strc94_B->unk0 << 9);
                if (strc94_B->unk18 <= 0x5A00) {
                    strc94_B->unk18 = 0x5A00;
                    return 1U;
                }
            }
        }
    }

    return 0U;
}

u32 sub_80A4440(Opening94_B *strc94_B)
{
    if (strc94_B->unk3 > 0) {
        if (strc94_B->unk18 <= 0xF000) {
            strc94_B->unk18 += (strc94_B->unk0 << 5);
            if (strc94_B->unk18 >= 0xF000) {
                strc94_B->unk18 = 0xF000;
                return 1U;
            }
        }
    } else {
        if (strc94_B->unk18 >= 0x100) {
            strc94_B->unk18 -= (strc94_B->unk0 << 5);
            if (strc94_B->unk18 <= 0x100) {
                strc94_B->unk18 = 0x100;
                return 1U;
            }
        }
    }

    return 0U;
}

u32 sub_80A4494(Opening94_B *strc94_B)
{
    if (strc94_B->unk3 > 0) {
        if (strc94_B->unk18 <= 0x13600) {
            strc94_B->unk18 += (strc94_B->unk0 << 0xA);
            if (strc94_B->unk18 >= 0x13600) {
                strc94_B->unk18 = 0x13600;
                return 1U;
            }
        }
    } else {
        if (strc94_B->unk18 >= -0x4600) {
            strc94_B->unk18 -= (strc94_B->unk0 << 0xA);
            if (strc94_B->unk18 <= -0x4600) {
                strc94_B->unk18 = -0x4600;
                return 1U;
            }
        }
    }

    return 0U;
}

bool32 sub_80A44E8(Opening94_B *strc94_B)
{
    if (strc94_B->unk3 > 0) {
        if (strc94_B->unk20 >= -0xC800) {
            strc94_B->unk20 -= (strc94_B->unk0 << 0xB);
            if (strc94_B->unk20 <= -0xC800) {
                strc94_B->unk20 = -0xC800;
                return 1U;
            }
        }
    } else {
        if (strc94_B->unk20 <= 0x1B800) {
            strc94_B->unk20 += (strc94_B->unk0 << 0xB);
            if (strc94_B->unk20 >= 0x1B800) {
                strc94_B->unk20 = 0x1B800;
                return 1U;
            }
        }
    }

    return 0U;
}

bool32 sub_80A453C(Opening94_B *strc94_B)
{
    if (strc94_B->unk3 > 0) {
        if (strc94_B->unk20 >= 0xA00) {
            strc94_B->unk20 -= (strc94_B->unk0 << 0xB);
            if (strc94_B->unk20 <= 0xA00) {
                strc94_B->unk20 = 0xA00;
                return 1U;
            }
        }
    } else {
        if (strc94_B->unk20 <= 0xE600) {
            strc94_B->unk20 += (strc94_B->unk0 << 0xB);
            if (strc94_B->unk20 >= 0xE600) {
                strc94_B->unk20 = 0xE600;
                return 1U;
            }
        }
    }

    return 0U;
}

void sub_80A4598(Opening94_B *strc94_B)
{
    Sprite *s = &strc94_B->spr2C;
    s->x = I(strc94_B->unk20);
    s->y = I(strc94_B->unk24);
    DisplaySprite(s);
}
