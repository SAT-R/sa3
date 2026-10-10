#include "global.h"
#include "core.h"
#include "core.h"
#include "game/game.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/characters.h"
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
    /* 0x12A */ u8 filler12A[0xA];
    /* 0x134 */ s16 unk134;
    /* 0x136 */ s16 unk136;
    /* 0x138 */ s16 unk138;
    /* 0x13A */ s16 unk13A;
    /* 0x13C */ s16 unk13C;
    /* 0x13E */ s16 unk13E;
    /* 0x140 */ s16 unk140;
    /* 0x142 */ s16 unk142;
    /* 0x144 */ s16 unk144;
    /* 0x146 */ s16 unk146;
    /* 0x148 */ s16 unk148;
    /* 0x14A */ s16 unk14A;
    /* 0x14C */ u8 filler14C[0x24];
} Opening170;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 filler2[0x2];
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u8 filler6[0x2];
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
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ s32 unk20;
    /* 0x000 */ u8 filler24[0x8];
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
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ u8 filler28[0x4];
    /* 0x2C */ Sprite spr2C;
    /* 0x54 */ Background bg54;
} Opening94_B;

typedef struct {
    /* 0x00 */ u8 initArg0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u8 filler4[0x4];
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ Background bg;
} Opening54;

void Task_170_80A2774(void);
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
void sub_80A2DD8(void);
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
void CreateOpeningStrc94_B(u8 param0);
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

// TEMP

#if M2C
void CreateGameIntroState(u16 state, Opening170 *strc170);
void sub_80A23A4(Opening170 *strc170);
void Task_170_GameIntroInit(Opening170 *strc170);
void Task_170_80A2700(Opening170 *strc170);
void Task_170_80A2774(Opening170 *strc170);
void Task_170_80A2774(Opening170 *strc170);
void Task_170_80A27EC(Opening170 *strc170);
void sub_80A2978(s16 param0, Opening170 *strc170);
void sub_80A2A40(s16 param0, Opening170 *strc170);
void Task_170_80A2A9C(Opening170 *strc170);
void Task_170_80A2B54(Opening170 *strc170);
void Task_170_80A2C60(Opening170 *strc170);
void Task_170_80A2D34(Opening170 *strc170);
void sub_80A2D80(Opening170 *strc170);
void sub_80A2DD8(Opening170 *strc170);
void CreateOpeningStrcA0(u8 param0, OpeningA0 *strcA0);
void Task_A0_80A2FF4(OpeningA0 *strcA0);
void Task_A0_80A3074(OpeningA0 *strcA0);
void CreateIntroEggmanCutscene(u8 param0, OpeningEggman *opEggman);
void Task_OpEggman_80A3444(OpeningEggman *opEggman);
void Task_OpEggman_80A3564(OpeningEggman *opEggman);
void Task_OpEggman_80A3664(OpeningEggman *opEggman);
void Task_OpEggman_80A3710(OpeningEggman *opEggman);
void Task_OpEggman_80A37B8(OpeningEggman *opEggman);
void Task_OpEggman_80A3844(OpeningEggman *opEggman);
void CreateOpeningStrc94_A(u8 param0, Opening94_A *strc94_A);
void Task_94_A_80A39FC(Opening94_A *strc94_A);
void Task_94_A_80A3A7C(Opening94_A *strc94_A);
void Task_94_A_80A3B64(Opening94_A *strc94_A);
void CreateOpeningStrc54(u8 param0, Opening54 *strc54);
void Task_54_80A3D3C(Opening54 *strc54);
void Task_54_80A3DAC(Opening54 *strc54);
void CreateOpeningStrc94_B(u8 param0, Opening94_B *strc94_B);
void Task_94_B_80A40A0(Opening94_B *strc94_B);
void Task_94_B_80A41AC(Opening94_B *strc94_B);
void Task_94_B_80A4228(Opening94_B *strc94_B);
void Task_94_B_80A429C(Opening94_B *strc94_B);
void Task_94_B_80A4384(Opening94_B *strc94_B);
#endif

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
        bg1->layoutVram = (u16 *)0x0600B800;
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
#if 01
#else
void sub_80A23A4(Opening170 *strc170)
{
    s16 temp_r1;
    s16 temp_r2;
    s16 var_r1;
    s32 temp_r2_2;
    u16 temp_r0_2;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r3;
    u32 temp_r0;
    void *var_r4;

    gHBlankCopySize = 0x10;
    gHBlankCopyTarget = (void *)0x04000020;
    var_r4 = strc170->unk12C;
    gBgOffsetsHBlankPrimary = var_r4;
    gFlags |= 4;
    strc170->unk138 = (u16)((strc170->unk140 + strc170->unk138) & 0xFFF);
    strc170->unk13A = (u16)((strc170->unk142 + strc170->unk13A) & 0x7FF);
    strc170->unk148 = (u16)(strc170->unk144 + strc170->unk148);
    strc170->unk14A = (u16)(strc170->unk146 + strc170->unk14A);
    var_r1 = 0;
    do {
        temp_r2 = var_r1;
        if ((s32)(temp_r2 - strc170->unk136) >= 0) {
            var_r0 = temp_r2 - (u16)strc170->unk136;
        } else {
            var_r0 = (u16)strc170->unk136 - temp_r2;
        }
        temp_r0_2 = var_r0;
        temp_r1 = (s16)temp_r0_2;
        var_r3 = (*((temp_r1 * 4) + strc170->unk130) * temp_r1 * 2) + (strc170->unk13A * 0x10);
        if ((s32)var_r1 < (s32)strc170->unk136) {
            if ((s32)(var_r3 << 0x10) < 0) {
                var_r0_2 = var_r3 + 0xFFFF8000;
                goto block_9;
            }
        } else if ((s32)(var_r3 << 0x10) >= 0) {
            var_r0_2 = var_r3 + 0x8000;
        block_9:
            var_r3 = var_r0_2;
        }
        temp_r2_2 = (s32)(temp_r0_2 << 0x10) >> 0xE;
        var_r4->unk0 = (s16)((u32) * (temp_r2_2 + strc170->unk130) >> 2);
        var_r4->unk8 = (s16)(((u32)(*(temp_r2_2 + strc170->unk130) * strc170->unk134) >> 2) + (strc170->unk138 * 0x10));
        var_r4->unkC = var_r3;
        temp_r0 = (var_r1 << 0x10) + 0x10000;
        var_r4 += 0x10;
        var_r1 = (s16)(temp_r0 >> 0x10);
    } while ((s32)((s32)temp_r0 >> 0x10) <= 0x9F);
}

void Task_170_GameIntroInit(Opening170 *strc170)
{
    ? sp0;
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
    u32 var_r5;
    void (*var_r0)(Opening170 *);
    void *temp_r0;
    void *var_r4;

    memset(&sp0, 0, 0x10);
    sp0.unk0 = 0x100;
    sp0.unk6 = 0x100;
    gDispCnt = 0x42;
    sub_80A217C(strc170);
    sub_80A22E0(strc170);
    temp_r0 = EwramMalloc(0xA00U);
    strc170->unk12C = temp_r0;
    var_r4 = temp_r0;
    var_r5 = 0;
    do {
        CpuSet(&sp0, var_r4, 8U);
        temp_r0_2 = (var_r5 << 0x10) + 0x10000;
        var_r4 += 0x10;
        var_r5 = temp_r0_2 >> 0x10;
    } while ((s32)((s32)temp_r0_2 >> 0x10) <= 0x9F);
    strc170->unk130 = EwramMalloc(0x400U);
    var_r5_2 = 0;
    do {
        temp_r4_2 = var_r5_2;
        *((temp_r4_2 * 4) + strc170->unk130) = 0x100000 / (s32)((temp_r4_2 * 0x10) + 0x400);
        temp_r4 = temp_r4_2 + 1;
        var_r5_2 = (s16)temp_r4;
    } while ((s32)(s16)temp_r4 <= 0xFF);
    var_r5_3 = 0;
    do {
        temp_r2_2 = var_r5_3;
        gBgPalette[temp_r2_2 + 0x50] = sub_80C4C0C(0U);
        temp_r2 = temp_r2_2 + 1;
        var_r5_3 = (s16)temp_r2;
    } while ((s32)(s16)temp_r2 <= 0xF);
    gFlags |= 1;
    gBldRegs.bldCnt = 0x1D42;
    gBldRegs.bldAlpha = 0x1010;
    gBldRegs.bldY = 0;
    strc170->unk14C = 0;
    var_r5_4 = 0;
    do {
        temp_r1_2 = var_r5_4;
        *(strc170 + 0x14E + (temp_r1_2 * 2)) = 0;
        temp_r1 = temp_r1_2 + 1;
        var_r5_4 = (s16)temp_r1;
    } while ((s32)(s16)temp_r1 <= 0xF);
    temp_r0_3 = strc170->unk128;
    switch (temp_r0_3) {
        case 0:
            var_r0 = Task_170_80A2A9C;
        block_17:
            gCurTask->main = var_r0;
            break;
        case 1:
            m4aMPlayAllStop();
            m4aSongNumStart(0U);
            /* fallthrough */
        case 2:
            strc170->unk13C = 0xA;
            var_r0 = Task_170_80A2A9C;
            goto block_17;
        case 3:
            var_r1 = strc170 + 0x13C;
        block_16:
            *var_r1 = 0;
            var_r0 = Task_170_80A2700;
            goto block_17;
        case 4:
            var_r0 = Task_170_80A2A9C;
            goto block_17;
        case 5:
            var_r1 = strc170 + 0x13C;
            goto block_16;
    }
}

void Task_170_80A2700(Opening170 *strc170)
{
    s16 temp_r4;

    gDispCnt = 0x1641;
    sub_80A2DD8((Opening170 *)0x1641);
    temp_r4 = M2C_ERROR(/* Read from unset register $r0 */);
    if (temp_r4 == 0) {
        sub_80A2978(strc170->unk13E, NULL);
        sub_80A2A40(0, M2C_ERROR(/* Read from unset register $r1 */));
        sub_80A2D80(M2C_ERROR(/* Read from unset register $r0 */));
        sub_80A23A4(M2C_ERROR(/* Read from unset register $r0 */));
        if ((s32)(s16)strc170->unk13C > 0) {
            strc170->unk13C = (u16)(strc170->unk13C - 1);
            return;
        }
        strc170->unk13C = (u16)temp_r4;
        (*saved_reg_r6)->unk8 = Task_170_80A2774;
    }
}

void Task_170_80A2774(Opening170 *strc170)
{
    s16 temp_r0_2;
    u16 temp_r0;

    sub_80A2DD8(strc170);
    if ((M2C_ERROR(/* Read from unset register $r0 */) << 0x10) == 0) {
        sub_80A2978((s16)((s32)(strc170->unk13E << 0x10) >> 0x11), M2C_ERROR(/* Read from unset register $r1 */));
        sub_80A2A40((s16)((s32)(strc170->unk13C << 0x10) >> 0x13), M2C_ERROR(/* Read from unset register $r1 */));
        sub_80A2D80(M2C_ERROR(/* Read from unset register $r0 */));
        sub_80A23A4(M2C_ERROR(/* Read from unset register $r0 */));
        temp_r0 = strc170->unk13C + 1;
        strc170->unk13C = temp_r0;
        temp_r0_2 = (s16)temp_r0;
        if ((s32)temp_r0_2 <= 0x3F) {
            if ((s32)temp_r0_2 > 0x20) {
                strc170->unk13E = (u16)(strc170->unk13E + 1);
            }
        } else {
            strc170->unk13E = (u16)(strc170->unk13E + 1);
            sub_80A2A40(7, M2C_ERROR(/* Read from unset register $r1 */));
            gCurTask->main = Task_170_80A27EC;
        }
    }
}

void Task_170_80A27EC(Opening170 *strc170)
{
    s16 temp_r1_2;
    s16 temp_r3;
    s16 temp_r4_2;
    s16 var_r5;
    s16 var_r5_2;
    s16 var_r5_3;
    s32 temp_r1_3;
    s32 temp_r2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r4;
    u16 var_r2;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u8 temp_r0;

    temp_r0 = strc170->unk14C + 1;
    strc170->unk14C = (u16)temp_r0;
    sub_80A2DD8((Opening170 *)temp_r0);
    if ((M2C_ERROR(/* Read from unset register $r0 */) << 0x10) != 0) {
        return;
    }
    sub_80A2978((s16)((s32)(strc170->unk13E << 0x10) >> 0x11), (Opening170 *)0x13E);
    strc170->unk13C = (u16)(strc170->unk13C + 1);
    strc170->unk13E = (u16)(strc170->unk13E + 1);
    if ((s16)strc170->unk14C == 0) {
        var_r5 = 0;
        do {
            temp_r1_2 = var_r5;
            *(strc170 + 0x14E + (temp_r1_2 * 2)) = 0;
            temp_r1 = temp_r1_2 + 1;
            var_r5 = (s16)temp_r1;
        } while ((s32)(s16)temp_r1 <= 0xF);
    }
    var_r5_2 = 0;
    do {
        temp_r3 = var_r5_2;
        temp_r2 = temp_r3 * 4;
        if ((s32)(s16)strc170->unk14C > temp_r2) {
            temp_r0_3 = strc170->unk14C - temp_r2;
            var_r2 = temp_r0_3;
            if ((s32)(s16)temp_r0_3 > 0x1F) {
                var_r2 = 0x1F;
            }
            *(strc170 + 0x14E + (temp_r3 * 2)) = var_r2;
        }
        temp_r0_2 = (var_r5_2 << 0x10) + 0x10000;
        var_r5_2 = (s16)(temp_r0_2 >> 0x10);
    } while ((s32)((s32)temp_r0_2 >> 0x10) <= 0xF);
    var_r5_3 = 0;
    do {
        temp_r4_2 = var_r5_3;
        temp_r1_3 = 0x1F & *(strc170 + 0x14E + (temp_r4_2 * 2));
        gBgPalette[temp_r4_2 + 0x50] = sub_80C4C0C((temp_r1_3 << 5) | temp_r1_3 | (temp_r1_3 << 0xA));
        temp_r4 = temp_r4_2 + 1;
        var_r5_3 = (s16)temp_r4;
    } while ((s32)(s16)temp_r4 <= 0xF);
    temp_r0_4 = gFlags | 1;
    gFlags = temp_r0_4;
    sub_80A2D80((Opening170 *)temp_r0_4);
    sub_80A23A4(M2C_ERROR(/* Read from unset register $r0 */));
    if ((s16)strc170->unk14C == 0x95) {
        m4aMPlayFadeOut(&gMPlayInfo_BGM, 5U);
        m4aMPlayFadeOut(&gMPlayInfo_SE1, 5U);
        m4aMPlayFadeOut(&gMPlayInfo_SE2, 5U);
        m4aMPlayFadeOut(&gMPlayInfo_SE3, 5U);
    }
    if ((s32)(s16)strc170->unk14C > 0x9F) {
        gBldRegs.bldCnt = 0xBF;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0x10;
        gFlags &= ~4;
        gCurTask->main = Task_170_80A2D34;
    }
}

void sub_80A2978(s16 param0, Opening170 *strc170)
{
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r0_5;
    s16 temp_r1;
    s16 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r4;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r5;
    u16 temp_r0_2;
    u16 temp_r0_4;

    temp_r5 = param0 << 0x10;
    temp_r4 = param0;
    if ((s32)temp_r4 <= 0xFF) {
        temp_r1 = param0->unk136 - (((s32)(temp_r4 + 0x20) >> 4) - 4);
        param0->unk12 = temp_r1;
        param0->unk58 = temp_r1;
        temp_r1_2 = param0->unk136 - ((temp_r5 >> 0x14) - 4);
        param0->unk3A = temp_r1_2;
        param0->unk64 = temp_r1_2;
        temp_r2 = temp_r5 >> 0x11;
        temp_r0 = temp_r4 + (temp_r2 + 0x82);
        param0->unk10 = temp_r0;
        param0->unk56 = temp_r0;
        temp_r2_2 = temp_r2 + temp_r4;
        temp_r0_2 = 0xE0 - temp_r2_2;
        temp_r0_3 = (s16)temp_r0_2;
        if ((s32)temp_r0_3 > 0) {
            param0->unk52 = (s16)(0 - temp_r0_3);
            param0->unk54 = temp_r0_2;
        }
        temp_r1_3 = (temp_r4 * 2) - ((temp_r5 >> 0x12) - 0x64);
        param0->unk38 = temp_r1_3;
        param0->unk62 = temp_r1_3;
        temp_r0_4 = 0x100 - temp_r2_2;
        temp_r0_5 = (s16)temp_r0_4;
        if ((s32)temp_r0_5 > 0) {
            param0->unk5E = (s16)(0 - temp_r0_5);
            param0->unk60 = temp_r0_4;
        }
    }
}

void sub_80A2A40(s16 param0, Opening170 *strc170)
{
    s16 temp_r0;
    s16 temp_r4_2;
    s16 var_r0;
    u16 temp_r4;
    u16 var_r1;

    var_r1 = (u16)param0;
    temp_r0 = param0;
    if ((s32)temp_r0 < 0) {
        var_r1 = 0;
    } else if ((s32)temp_r0 > 7) {
        var_r1 = 7;
    }
    var_r0 = 0;
    do {
        temp_r4_2 = var_r0;
        gBgPalette[temp_r4_2] = sub_80C4C0C(*((temp_r4_2 * 2) + (((s32)(var_r1 << 0x10) >> 0xA) + Palette_unknown_424)));
        temp_r4 = temp_r4_2 + 1;
        var_r0 = (s16)temp_r4;
    } while ((s32)(s16)temp_r4 <= 0x1F);
    gFlags |= 1;
}

void Task_170_80A2A9C(Opening170 *strc170)
{
    s16 temp_r0_3;
    s32 temp_r0_2;
    u16 temp_r0;

    gDispCnt = 0x1441;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    temp_r0 = strc170->unk13C - 1;
    strc170->unk13C = temp_r0;
    sub_80A2DD8((Opening170 *)temp_r0);
    temp_r0_2 = M2C_ERROR(/* Read from unset register $r0 */) << 0x10;
    if (temp_r0_2 == 0) {
        sub_80A2D80((Opening170 *)temp_r0_2);
        sub_80A23A4(M2C_ERROR(/* Read from unset register $r0 */));
        if ((s32)(s16)strc170->unk13C <= 0) {
            strc170->unk13C = 0x96U;
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

void Task_170_80A2B54(Opening170 *strc170)
{
    s16 *var_r1;
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r2_2;
    s16 var_r0;
    s16 var_r0_2;
    s32 temp_r0_2;
    u16 temp_r2;
    void *temp_r4;

    temp_r4 = strc170 + ((s32)strc170 << 0x12);
    temp_r2 = strc170->unk13C - 1;
    strc170->unk13C = temp_r2;
    temp_r0 = (s16)temp_r2;
    if ((s32)temp_r0 > 0x8D) {
        var_r0 = (0x96 - temp_r2) * 2;
        gBldRegs.bldAlpha = ((0x10 - var_r0) << 8) | var_r0;
    } else if ((s32)temp_r0 <= 8) {
        var_r0 = (s16)&gBldRegs;
        temp_r2_2 = temp_r2 * 2;
        ((s16)&gBldRegs)->unk2 = (s16)(((0x10 - temp_r2_2) << 8) | temp_r2_2);
    } else {
        var_r0 = 0x10;
        gBldRegs.bldAlpha = 0x10;
    }
    sub_80A2DD8((Opening170 *)var_r0);
    temp_r0_2 = M2C_ERROR(/* Read from unset register $r0 */) << 0x10;
    if (temp_r0_2 == 0) {
        sub_80A2D80((Opening170 *)temp_r0_2);
        sub_80A23A4(M2C_ERROR(/* Read from unset register $r0 */));
        if ((s32)temp_r4->unk13C <= 0) {
            temp_r0_3 = temp_r4->unk128;
            switch (temp_r0_3) {
                case 0:
                    break;
                case 1:
                    var_r1 = temp_r4 + 0x13C;
                    var_r0_2 = 0xA;
                block_12:
                    *var_r1 = var_r0_2;
                    break;
                case 2:
                    temp_r4->unk13C = 0x78;
                    gStageData.unk7 = 1;
                    break;
                default:
                case 3:
                case 4:
                case 5:
                    var_r1 = temp_r4 + 0x13C;
                    var_r0_2 = 1;
                    goto block_12;
            }
            gDispCnt = 0x1441;
            gCurTask->main = Task_170_80A2C60;
        }
    }
}

void Task_170_80A2C60(Opening170 *strc170)
{
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r2;
    u16 temp_r0;

    temp_r0 = strc170->unk13C - 1;
    strc170->unk13C = temp_r0;
    sub_80A2DD8((Opening170 *)temp_r0);
    temp_r2 = M2C_ERROR(/* Read from unset register $r0 */);
    if (temp_r2 == 0) {
        temp_r0_2 = (s16)strc170->unk13C;
        if ((s32)temp_r0_2 > 0) {
            sub_80A2D80((Opening170 *)temp_r0_2);
            sub_80A23A4(M2C_ERROR(/* Read from unset register $r0 */));
            return;
        }
        gBldRegs.bldCnt = 0xFF;
        gBldRegs.bldAlpha = (u16)temp_r2;
        gBldRegs.bldY = 0x10;
        temp_r0_3 = strc170->unk128;
        switch (temp_r0_3) { /* irregular */
            case 0:
                CreateOpeningStrcA0(1U, NULL);
                break;
            case 1:
                CreateOpeningStrcA0(0U, NULL);
                break;
            case 2:
                CreateOpeningStrc94_B((u8)temp_r0_3, NULL);
                break;
            case 4:
                CreateIntroEggmanCutscene(1U, NULL);
                break;
        }
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_GameIntro(Task *t)
{
    u16 temp_r4;

    temp_r4 = t->data;
    EwramFree(temp_r4->unk12C);
    EwramFree(temp_r4->unk130);
    gFlags &= ~4;
}

void Task_170_80A2D34(Opening170 *strc170)
{
    s16 temp_r0;

    temp_r0 = strc170->unk128;
    switch (temp_r0) { /* irregular */
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

void sub_80A2D80(Opening170 *strc170)
{
    Sprite *temp_r4;

    UpdateSpriteAnimation(&strc170->spr0);
    TransformSprite(&strc170->spr0, &strc170->tf50);
    DisplaySprite(&strc170->spr0);
    temp_r4 = &strc170->spr28;
    UpdateSpriteAnimation(temp_r4);
    TransformSprite(temp_r4, &strc170->tf5C);
    DisplaySprite(temp_r4);
}

void sub_80A2DD8(Opening170 *strc170)
{
    s16 temp_r0;

    if (gStageData.unk7 != 0) {
        temp_r0 = strc170->unk128;
        if ((temp_r0 != 0) && ((s32)temp_r0 <= 3) && (8 & gPressedKeys)) {
            gFlags &= ~4;
            sub_808ADF0(2U);
        }
    }
}

void CreateOpeningStrcA0(u8 param0, OpeningA0 *strcA0)
{
    s32 sp4;

    gDispCnt = 0x1040;
    TaskCreate(Task_A0_80A2FF4, 0xA0U, 0x100U, 0U, TaskDestructor_A0_80A3E34);
    strcA0->unk14 = 0x3000;
    strcA0->unkC = 0x4000;
    strcA0->unk18 = 0;
    strcA0->unk1C = 0;
    strcA0->unk1 = 2;
    strcA0->unk4 = 0;
    strcA0->unk0 = param0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & *gBgCntRegs) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A2F0C(strcA0);
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= 1;
}

void sub_80A2F0C(OpeningA0 *strcA0)
{
    u16 *sp0;

    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0xC81;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    strcA0->bg60.graphics.dest = (void *)0x06000000;
    strcA0->bg60.graphics.anim = 0;
    strcA0->bg60.layoutVram = (u16 *)0x06006000;
    strcA0->bg60.unk18 = 0;
    strcA0->bg60.unk1A = 0;
    strcA0->bg60.tilemapId = 0x12E;
    strcA0->bg60.unk1E = 0;
    strcA0->bg60.unk20 = 0;
    strcA0->bg60.unk22 = 0;
    strcA0->bg60.unk24 = 0;
    strcA0->bg60.targetTilesX = 0x20;
    strcA0->bg60.targetTilesY = 0x20;
    strcA0->bg60.paletteOffset = 0;
    strcA0->bg60.flags = 5;
    sp0 = &gDispCnt;
    DrawBackground(&strcA0->bg60);
    gDispCnt |= 0x400;
    gBgCntRegs[2] = 0x5888;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    strcA0->bg20.graphics.dest = (void *)0x06008000;
    strcA0->bg20.graphics.anim = 0;
    strcA0->bg20.layoutVram = (u16 *)0x0600C000;
    strcA0->bg20.unk18 = 0;
    strcA0->bg20.unk1A = 0;
    strcA0->bg20.tilemapId = 0x12D;
    strcA0->bg20.unk1E = 0;
    strcA0->bg20.unk20 = 0;
    strcA0->bg20.unk22 = 0;
    strcA0->bg20.unk24 = 0;
    strcA0->bg20.targetTilesX = 0x20;
    strcA0->bg20.targetTilesY = 0x20;
    strcA0->bg20.paletteOffset = 0;
    strcA0->bg20.flags = 6;
    DrawBackground(&strcA0->bg20);
}

void Task_A0_80A2FF4(OpeningA0 *strcA0)
{
    gBldRegs.bldCnt = 0x3FFF;
    gDispCnt |= 0x6000;
    gWinRegs[0] = 0xFF;
    gWinRegs[1] = 0xFF;
    gWinRegs[3] = 0xFF;
    gWinRegs[4] = 0x3117;
    gWinRegs[5] = 0;
    gBldRegs.bldY = 0x10;
    strcA0->unk6 = 0x1000;
    strcA0->unk8 = 1;
    gWinRegs[2] = (((s32)strcA0->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strcA0->unkC >> 8);
    gBldRegs.bldAlpha = 0x1F;
    gBldRegs.bldY = 0x10;
    saved_reg_r6->unk8 = Task_A0_80A3074;
}

void Task_A0_80A3074(OpeningA0 *strcA0)
{
    s32 temp_r0_3;
    s32 temp_r1;
    s32 var_r4;
    u16 temp_r0;
    u16 temp_r0_2;

    var_r4 = 0;
    temp_r0 = strcA0->unk4;
    if (((u32)temp_r0 > 4U) || (temp_r0_2 = temp_r0 + 1, strcA0->unk4 = temp_r0_2, ((u32)temp_r0_2 > 4U))) {
        temp_r1 = strcA0->unk18;
        if (temp_r1 <= 0x4FFF) {
            temp_r0_3 = temp_r1 + (strcA0->unk1 << 8);
            strcA0->unk18 = temp_r0_3;
            if (temp_r0_3 > 0x4FFF) {
                strcA0->unk18 = 0x5000;
                var_r4 = 1;
            }
        }
    }
    gWinRegs[2] = (((s32)strcA0->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strcA0->unkC >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)strcA0->unk18 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)strcA0->unk1C >> 8);
    if (var_r4 != 0) {
        if (strcA0->unk0 == 0) {
            CreateGameIntroState(2U, (Opening170 *)gBgScrollRegs);
        } else {
            CreateGameIntroState(4U, (Opening170 *)gBgScrollRegs);
        }
        TaskDestroy(gCurTask);
    }
}

void CreateIntroEggmanCutscene(u8 param0, OpeningEggman *opEggman)
{
    s32 sp4;
    u16 temp_r4;
    u16 var_r0;

    gDispCnt = 0x7140;
    temp_r4 = TaskCreate(Task_OpEggman_80A3444, 0x174U, 0x100U, 0U, TaskDestructor_OpEggman_80A3E38)->data;
    temp_r4->unk0 = param0;
    temp_r4->unk10 = 0x4000;
    temp_r4->unk8 = 0x2000;
    temp_r4->unk14 = 0;
    temp_r4->unk18 = 0xFFFF9C00;
    temp_r4->unk24 = 0xE600;
    temp_r4->unk28 = 0x8200;
    temp_r4->unk1C = 0xB400;
    temp_r4->unk20 = 0xA000;
    temp_r4->unk1 = 1;
    temp_r4->unk6 = 0;
    temp_r4->unk4 = 0;
    temp_r4->unk2 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & *gBgCntRegs) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A3354((OpeningEggman *)temp_r4);
    gWinRegs[2] = (((s32)temp_r4->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)temp_r4->unk8 >> 8);
    if (temp_r4->unk0 != 0) {
        var_r0 = 0;
    } else {
        var_r0 = 0xFFFF;
    }
    *gBgPalette = sub_80C4C0C(var_r0);
    gFlags |= 1;
}

void sub_80A3228(OpeningEggman *opEggman)
{
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    TileInfo2 *temp_r2;
    s32 temp_r2_2;
    s32 var_r3_2;
    u16 var_r3;
    u8 *var_r7;
    u8 temp_r4;
    u8 var_r5;
    u8 var_r5_2;
    void *temp_r2_3;

    var_r5 = 0;
    opEggman->sprAC.tiles = (u8 *)0x06010000;
    var_r7 = (sTileInfoOpeningEggman->numTiles << 5) + 0x06010000;
    opEggman->sprAC.anim = sTileInfoOpeningEggman->anim;
    opEggman->sprAC.variant = sTileInfoOpeningEggman->variant;
    opEggman->sprAC.prevVariant = 0xFF;
    opEggman->sprAC.x = (s16)((s32)opEggman->unk24 >> 8);
    opEggman->sprAC.y = (s16)((s32)opEggman->unk28 >> 8);
    opEggman->sprAC.oamFlags = 0;
    opEggman->sprAC.animCursor = 0;
    opEggman->sprAC.qAnimDelay = 0;
    opEggman->sprAC.animSpeed = 0x10;
    opEggman->sprAC.palId = 0;
    opEggman->sprAC.frameFlags = 0;
    UpdateSpriteAnimation(&opEggman->sprAC);
    var_r3 = 0;
    do {
        temp_r0 = &opEggman->spritesD4[var_r5];
        temp_r0->tiles = var_r7;
        temp_r4 = var_r5 + 1;
        var_r7 += *((temp_r4 * 8) + &sTileInfoOpeningEggman->numTiles) << 5;
        temp_r2 = &sTileInfoOpeningEggman[temp_r4];
        temp_r0->anim = temp_r2->anim;
        temp_r0->variant = temp_r2->variant;
        temp_r0->prevVariant = 0xFF;
        temp_r0->x = (s16)((s32)opEggman->unk1C >> 8);
        temp_r0->y = (s16)((s32)opEggman->unk20 >> 8);
        temp_r0->oamFlags = 0x40;
        temp_r0->animCursor = var_r3;
        temp_r0->qAnimDelay = (s16)var_r3;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = (u32)var_r3;
        sp0 = (s32)var_r3;
        UpdateSpriteAnimation(temp_r0);
        var_r5 = temp_r4;
    } while ((u32)var_r5 <= 1U);
    var_r5_2 = 0;
    var_r3_2 = &sTileInfoOpeningEggman->numTiles - 4;
    do {
        temp_r0_2 = &opEggman->sprites124[var_r5_2];
        temp_r0_2->tiles = var_r7;
        temp_r2_2 = (var_r5_2 + 3) * 8;
        var_r7 += *(temp_r2_2 + (var_r3_2 + 4)) << 5;
        temp_r2_3 = temp_r2_2 + var_r3_2;
        temp_r0_2->anim = temp_r2_3->unk0;
        temp_r0_2->variant = temp_r2_3->unk2;
        temp_r0_2->prevVariant = 0xFF;
        temp_r0_2->x = (s16)((s32)opEggman->unk1C >> 8);
        temp_r0_2->y = (s16)((s32)opEggman->unk20 >> 8);
        temp_r0_2->oamFlags = 0x40;
        temp_r0_2->animCursor = 0;
        temp_r0_2->qAnimDelay = 0;
        temp_r0_2->animSpeed = 0x10;
        temp_r0_2->palId = 0;
        temp_r0_2->frameFlags = 0;
        sp0 = var_r3_2;
        UpdateSpriteAnimation(temp_r0_2);
        var_r5_2 += 1;
    } while ((u32)var_r5_2 <= 1U);
}

void sub_80A3354(OpeningEggman *opEggman)
{
    u16 *sp0;

    gDispCnt |= 0x400;
    gBgCntRegs[2] = 0x5888;
    gBgScrollRegs[2][0] = (s16)((s32)opEggman->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)opEggman->unk18 >> 8);
    opEggman->bg2C.graphics.dest = (void *)0x06008000;
    opEggman->bg2C.graphics.anim = 0;
    opEggman->bg2C.layoutVram = (u16 *)0x0600C000;
    opEggman->bg2C.unk18 = 0;
    opEggman->bg2C.unk1A = 0;
    opEggman->bg2C.tilemapId = 0x12C;
    opEggman->bg2C.unk1E = 0;
    opEggman->bg2C.unk20 = 0;
    opEggman->bg2C.unk22 = 0;
    opEggman->bg2C.unk24 = 0;
    opEggman->bg2C.targetTilesX = 0x20;
    opEggman->bg2C.targetTilesY = 0x20;
    opEggman->bg2C.paletteOffset = 0;
    opEggman->bg2C.flags = 6;
    sp0 = &gDispCnt;
    DrawBackground(&opEggman->bg2C);
    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0x681;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    opEggman->bg6C.graphics.dest = (void *)0x06000000;
    opEggman->bg6C.graphics.anim = 0;
    opEggman->bg6C.layoutVram = (u16 *)0x06003000;
    opEggman->bg6C.unk18 = 0;
    opEggman->bg6C.unk1A = 0;
    opEggman->bg6C.tilemapId = 0x12B;
    opEggman->bg6C.unk1E = 0;
    opEggman->bg6C.unk20 = 0;
    opEggman->bg6C.unk22 = 0;
    opEggman->bg6C.unk24 = 0;
    opEggman->bg6C.targetTilesX = 0x20;
    opEggman->bg6C.targetTilesY = 0x20;
    opEggman->bg6C.paletteOffset = 0;
    opEggman->bg6C.flags = 5;
    DrawBackground(&opEggman->bg6C);
}

void Task_OpEggman_80A3444(OpeningEggman *opEggman)
{
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 var_r6;

    var_r6 = 0;
    if (opEggman->unk6 == 0) {
        gBldRegs.bldCnt = 0xC2;
        gDispCnt |= 0x6000;
        gWinRegs[0] = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x1137;
        gWinRegs[5] = 0;
        gBldRegs.bldY = 0x10;
        opEggman->unk4 = 0x1000;
        opEggman->unk6 = 1;
        sub_80A3228(opEggman);
        gDispCnt &= 0xFEFF;
    }
    temp_r1 = opEggman->unk10;
    if (temp_r1 > 0x2FFF) {
        temp_r0 = temp_r1 + 0xFFFFFF00;
        opEggman->unk10 = temp_r0;
        if (temp_r0 <= 0x3000) {
            opEggman->unk10 = 0x3000;
            var_r6 = 1;
        }
    }
    temp_r1_2 = opEggman->unk8;
    if (temp_r1_2 <= 0x4000) {
        temp_r1_3 = temp_r1_2 + 0x200;
        opEggman->unk8 = temp_r1_3;
        if (temp_r1_3 > 0x3FFF) {
            opEggman->unk8 = 0x4000;
            var_r6 += 1;
        }
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)opEggman->unk4 >> 8);
        opEggman->unk4 += 0xFFFFFF00;
    } else {
        var_r6 += 1;
    }
    gWinRegs[2] = (((s32)opEggman->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)opEggman->unk8 >> 8);
    if (var_r6 == 3) {
        gBldRegs.bldCnt = 0xF0;
        gWinRegs[4] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0;
        opEggman->unk6 = 0;
        opEggman->unk4 = 0;
        gCurTask->main = Task_OpEggman_80A3564;
    }
}

void Task_OpEggman_80A3564(OpeningEggman *opEggman)
{
    u16 temp_r0;
    u16 temp_r0_2;

    sub_80A3E3C(opEggman);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        temp_r0 = opEggman->unk4 + 0x80;
        opEggman->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
    } else {
        *gBgPalette = sub_80C4C0C(0U);
        gFlags |= 1;
    }
    temp_r0_2 = opEggman->unk2 + 1;
    opEggman->unk2 = temp_r0_2;
    if ((u32)temp_r0_2 > 0x96U) {
        opEggman->unk4 = 0x1000;
        opEggman->unk2 = 0;
        gBldRegs.bldCnt = 0xD0;
        gWinRegs[4] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0x10;
        opEggman->unk6 = 0;
        opEggman->unk4 = 0x1000;
        *gBgPalette = sub_80C4C0C(0U);
        gFlags |= 1;
        gCurTask->main = Task_OpEggman_80A3664;
        return;
    }
    gWinRegs[2] = (((s32)opEggman->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)opEggman->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)opEggman->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)opEggman->unk18 >> 8);
    if ((opEggman->initArg0 == 0) && (8 & gPressedKeys)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A3664(OpeningEggman *opEggman)
{
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    if (opEggman->initArg0 == 0) {
        sub_80A3E90(opEggman);
    }
    temp_r1 = gBldRegs.bldY;
    if (temp_r1 == 0) {
        gBldRegs.bldY = temp_r1;
        temp_r0 = opEggman->unk2 + 1;
        opEggman->unk2 = temp_r0;
        if ((u32)temp_r0 > 0x3CU) {
            opEggman->unk2 = temp_r1;
            opEggman->unk4 = temp_r1;
            gCurTask->main = Task_OpEggman_80A3710;
            return;
        }
        goto block_6;
    }
    temp_r0_2 = opEggman->unk4 + 0xFFFFFF00;
    opEggman->unk4 = temp_r0_2;
    gBldRegs.bldY = (u16)((u32)(temp_r0_2 << 0x10) >> 0x18);
block_6:
    gWinRegs[2] = (((s32)opEggman->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)opEggman->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)opEggman->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)opEggman->unk18 >> 8);
    if ((opEggman->initArg0 == 0) && (8 & gPressedKeys)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A3710(OpeningEggman *opEggman)
{
    u16 temp_r0;

    if (opEggman->initArg0 == 0) {
        sub_80A3E90(opEggman);
    }
    if ((u32)gBldRegs.bldY > 0xFU) {
        gBldRegs.bldY = 0x10;
        gWinRegs[4] = 0x2017;
        opEggman->unk2 = 0;
        gCurTask->main = Task_OpEggman_80A37B8;
        return;
    }
    temp_r0 = opEggman->unk4 + 0x100;
    opEggman->unk4 = temp_r0;
    gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
    gWinRegs[2] = (((s32)opEggman->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)opEggman->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)opEggman->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)opEggman->unk18 >> 8);
    if ((opEggman->initArg0 == 0) && (8 & gPressedKeys)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A37B8(OpeningEggman *opEggman)
{
    u16 temp_r0;

    sub_80A3EAC(opEggman);
    if (sub_80A3E60(opEggman) == 1) {
        temp_r0 = opEggman->unk2 + 1;
        opEggman->unk2 = temp_r0;
        if ((u32)temp_r0 > 0x3CU) {
            opEggman->unk2 = 0;
            gCurTask->main = Task_OpEggman_80A3844;
            return;
        }
    }
    gWinRegs[2] = (((s32)opEggman->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)opEggman->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)opEggman->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)opEggman->unk18 >> 8);
    if ((opEggman->initArg0 == 0) && (8 & gPressedKeys)) {
        sub_808ADF0(2U);
    }
}

void Task_OpEggman_80A3844(OpeningEggman *opEggman)
{
    u16 temp_r0;

    sub_80A3EDC(opEggman);
    temp_r0 = opEggman->unk2;
    if ((u32)temp_r0 > 0x13U) {
        CreateOpeningStrc94_A(opEggman->initArg0, M2C_ERROR(/* Read from unset register $r1 */));
        TaskDestroy(gCurTask);
        return;
    }
    opEggman->unk2 = temp_r0 + 1;
    gWinRegs[2] = (((s32)opEggman->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)opEggman->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)opEggman->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)opEggman->unk18 >> 8);
    if ((opEggman->initArg0 == 0) && (8 & gPressedKeys)) {
        sub_808ADF0(2U);
    }
}

void CreateOpeningStrc94_A(u8 param0, Opening94_A *strc94_A)
{
    s32 sp4;

    gDispCnt = 0x1040;
    TaskCreate(Task_94_A_80A39FC, 0x94U, 0x100U, 0U, TaskDestructor_94_A_80A3F10);
    strc94_A->unk0 = param0;
    strc94_A->unk10 = 0x3000;
    strc94_A->unk8 = 0x4000;
    strc94_A->unk2 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & *gBgCntRegs) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A398C(strc94_A);
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= 1;
}

void sub_80A398C(Opening94_A *strc94_A)
{
    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0xD81;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    strc94_A->bg54.graphics.dest = (void *)0x06000000;
    strc94_A->bg54.graphics.anim = 0;
    strc94_A->bg54.layoutVram = (u16 *)0x06006800;
    strc94_A->bg54.unk18 = 0;
    strc94_A->bg54.unk1A = 0;
    strc94_A->bg54.tilemapId = 0x12E;
    strc94_A->bg54.unk1E = 0;
    strc94_A->bg54.unk20 = 0;
    strc94_A->bg54.unk22 = 0;
    strc94_A->bg54.unk24 = 0;
    strc94_A->bg54.targetTilesX = 0x20;
    strc94_A->bg54.targetTilesY = 0x20;
    strc94_A->bg54.paletteOffset = 0;
    strc94_A->bg54.flags = 5;
    DrawBackground(&strc94_A->bg54);
}

void Task_94_A_80A39FC(Opening94_A *strc94_A)
{
    gBldRegs.bldCnt = 0x3FFF;
    gDispCnt |= 0x6000;
    gWinRegs[0] = 0xFF;
    gWinRegs[1] = 0xFF;
    gWinRegs[3] = 0xFF;
    gWinRegs[4] = 0x3117;
    gWinRegs[5] = 0;
    gBldRegs.bldY = 0x10;
    strc94_A->unk4 = 0x1000;
    strc94_A->unk6 = 1;
    gWinRegs[2] = (((s32)strc94_A->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_A->unk8 >> 8);
    gBldRegs.bldAlpha = 0x1F;
    gBldRegs.bldY = 0x10;
    gCurTask->main = Task_94_A_80A3A7C;
}

void Task_94_A_80A3A7C(Opening94_A *strc94_A)
{
    u16 temp_r0;

    gWinRegs[2] = (((s32)strc94_A->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_A->unk8 >> 8);
    temp_r0 = strc94_A->unk2 + 1;
    strc94_A->unk2 = temp_r0;
    if (temp_r0 == 4) {
        gDispCnt |= 0x400;
    }
    if (strc94_A->unk2 == 5) {
        gBgCntRegs[2] = 0x5D88;
        gBgScrollRegs[2][0] = 0;
        gBgScrollRegs[2][1] = 0;
        strc94_A->bg14.graphics.dest = (void *)0x06008000;
        strc94_A->bg14.graphics.anim = 0;
        strc94_A->bg14.layoutVram = (u16 *)0x0600E800;
        strc94_A->bg14.unk18 = 0;
        strc94_A->bg14.unk1A = 0;
        strc94_A->bg14.tilemapId = 0x130;
        strc94_A->bg14.unk1E = 0;
        strc94_A->bg14.unk20 = 0;
        strc94_A->bg14.unk22 = 0;
        strc94_A->bg14.unk24 = 0;
        strc94_A->bg14.targetTilesX = 0x20;
        strc94_A->bg14.targetTilesY = 0x20;
        strc94_A->bg14.paletteOffset = 0;
        strc94_A->bg14.flags = 6;
        DrawBackground(&strc94_A->bg14);
    }
    if ((u32)strc94_A->unk2 > 0xAU) {
        strc94_A->unk6 = 0;
        gCurTask->main = Task_94_A_80A3B64;
        return;
    }
    if ((strc94_A->unk0 == 0) && (8 & gPressedKeys)) {
        sub_808ADF0(2U);
    }
}

void Task_94_A_80A3B64(Opening94_A *strc94_A)
{
    u16 temp_r0;
    u16 temp_r4;
    u16 var_r1;

    var_r1 = (((s32)strc94_A->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_A->unk8 >> 8);
    gWinRegs[2] = var_r1;
    temp_r4 = strc94_A->unk6;
    if (temp_r4 == 0) {
        gBldRegs.bldCnt = 0x3FBF;
        var_r1 = 0x6000;
        gDispCnt |= 0x6000;
        gWinRegs[0] = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x24;
        gWinRegs[5] = temp_r4;
        strc94_A->unk4 = temp_r4;
        strc94_A->unk6 = 1;
        gBldRegs.bldY = temp_r4;
    }
    if ((u32)gBldRegs.bldY <= 0xEU) {
        temp_r0 = strc94_A->unk4 + 0x30;
        strc94_A->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
        return;
    }
    CreateOpeningStrc54(strc94_A->unk0, (Opening54 *)var_r1);
    TaskDestroy(gCurTask);
}

void CreateOpeningStrc54(u8 param0, Opening54 *strc54)
{
    s32 sp4;

    gDispCnt = 0x7040;
    TaskCreate(Task_54_80A3D3C, 0x54U, 0x100U, 0U, TaskDestructor_54_80A3F14);
    strc54->initArg0 = param0;
    strc54->unk10 = 0x3000;
    strc54->unk8 = 0x4000;
    strc54->unk2 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & *gBgCntRegs) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_80A3CC8(strc54);
    *gBgPalette = sub_80C4C0C(0U);
    gFlags |= 1;
}

void sub_80A3CC8(Opening54 *strc54)
{
    gDispCnt |= 0x100;
    *gBgCntRegs = 0x5888;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    strc54->bg.graphics.dest = (void *)0x06008000;
    strc54->bg.graphics.anim = 0;
    strc54->bg.layoutVram = (u16 *)0x0600C000;
    strc54->bg.unk18 = 0;
    strc54->bg.unk1A = 0;
    strc54->bg.tilemapId = 0x12F;
    strc54->bg.unk1E = 0;
    strc54->bg.unk20 = 0;
    strc54->bg.unk22 = 0;
    strc54->bg.unk24 = 0;
    strc54->bg.targetTilesX = 0x20;
    strc54->bg.targetTilesY = 0x20;
    strc54->bg.paletteOffset = 0;
    strc54->bg.flags = 4;
    DrawBackground(&strc54->bg);
}

void Task_54_80A3D3C(Opening54 *strc54)
{
    gBldRegs.bldCnt = 0x3FBF;
    gDispCnt |= 0x6000;
    gWinRegs[0] = 0xFF;
    gWinRegs[1] = 0xFF;
    gWinRegs[3] = 0xFF;
    gWinRegs[4] = 0x21;
    gWinRegs[5] = 0;
    gBldRegs.bldY = 0;
    strc54->unk4 = 0;
    strc54->unk6 = 1;
    gWinRegs[2] = (((s32)strc54->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc54->unk8 >> 8);
    gCurTask->main = Task_54_80A3DAC;
}

void Task_54_80A3DAC(Opening54 *strc54)
{
    u16 temp_r0;

    gWinRegs[2] = (((s32)strc54->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc54->unk8 >> 8);
    if ((u32)gBldRegs.bldY <= 0xEU) {
        temp_r0 = strc54->unk4 + 0x30;
        strc54->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
        if ((strc54->initArg0 == 0) && (8 & gPressedKeys)) {
            sub_808ADF0(2U);
        }
        return;
    }
    if (strc54->initArg0 != 0) {
        CreateGameIntroState(5U, (Opening170 *)&gBldRegs);
    } else {
        CreateGameIntroState(3U, (Opening170 *)&gBldRegs);
    }
    TaskDestroy(gCurTask);
}

void TaskDestructor_A0_80A3E34(Task *t) { }

void TaskDestructor_OpEggman_80A3E38(Task *t) { }

u32 sub_80A3E3C(OpeningEggman *opEggman)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = opEggman->unk18;
    if (temp_r2 < 0) {
        temp_r0 = temp_r2 + (opEggman->unk1 << 8);
        opEggman->unk18 = temp_r0;
        if (temp_r0 >= 0) {
            opEggman->unk18 = 0;
            return 1U;
        }
    }
    return 0U;
}

u32 sub_80A3E60(OpeningEggman *opEggman)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = opEggman->unk20;
    if (temp_r1 > 0x6FFF) {
        temp_r1_2 = (temp_r1 - 0x80) - (opEggman->unk1 << 7);
        opEggman->unk20 = temp_r1_2;
        if (temp_r1_2 <= 0x7000) {
            opEggman->unk20 = 0x7000;
            return 1U;
        }
    }
    return 0U;
}

void sub_80A3E90(OpeningEggman *opEggman)
{
    opEggman->sprAC.x = (s16)((s32)opEggman->unk24 >> 8);
    opEggman->sprAC.y = (s16)((s32)opEggman->unk28 >> 8);
    DisplaySprite(&opEggman->sprAC);
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

void CreateOpeningStrc94_B(u8 param0, Opening94_B *strc94_B)
{
    gDispCnt = 0x1040;
    TaskCreate(Task_94_B_80A40A0, 0x94U, 0x100U, 0U, TaskDestructor_94_B_80A43DC);
    strc94_B->unk14 = 0x5000;
    strc94_B->unkC = 0;
    strc94_B->unk18 = -0x7800;
    strc94_B->unk20 = 0x12C00;
    strc94_B->unk24 = 0x5000;
    strc94_B->unk1C = 0x5000;
    strc94_B->unk0 = 4;
    strc94_B->unk3 = 1;
    strc94_B->unk2 = 0;
    strc94_B->unk1 = 0x19;
    strc94_B->unk8 = 0;
    strc94_B->unk6 = 0;
    strc94_B->unk4 = 0;
    sub_80A3FDC(strc94_B);
    *gBgPalette = sub_80C4C0C(0xFFFFU);
    gFlags |= 1;
    *gBgSprites_Unknown1 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gWinRegs[2] = (((s32)strc94_B->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_B->unkC >> 8);
}

void sub_80A3FDC(Opening94_B *strc94_B)
{
    TileInfo2 *temp_r3;

    strc94_B->spr2C.tiles = (u8 *)0x06010000;
    strc94_B->unk28 = 0x06010680;
    temp_r3 = &sTileInfoOpeningCharacterNameTags[strc94_B->unk2];
    strc94_B->spr2C.anim = temp_r3->anim;
    strc94_B->spr2C.variant = temp_r3->variant;
    strc94_B->spr2C.prevVariant = 0xFF;
    strc94_B->spr2C.x = (s16)((s32)strc94_B->unk20 >> 8);
    strc94_B->spr2C.y = (s16)((s32)strc94_B->unk24 >> 8);
    strc94_B->spr2C.oamFlags = 0x280;
    strc94_B->spr2C.animCursor = 0;
    strc94_B->spr2C.qAnimDelay = 0;
    strc94_B->spr2C.animSpeed = 0x10;
    strc94_B->spr2C.palId = 0;
    strc94_B->spr2C.frameFlags = 0;
    UpdateSpriteAnimation(&strc94_B->spr2C);
    gDispCnt |= 0x100;
    *gBgCntRegs = 0x5888;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0x6E;
    strc94_B->bg54.graphics.dest = (void *)0x06008000;
    strc94_B->bg54.graphics.anim = 0;
    strc94_B->bg54.layoutVram = (u16 *)0x0600C000;
    strc94_B->bg54.unk18 = 0;
    strc94_B->bg54.unk1A = 0;
    strc94_B->bg54.tilemapId = 0x12F;
    strc94_B->bg54.unk1E = 0;
    strc94_B->bg54.unk20 = 0;
    strc94_B->bg54.unk22 = 0;
    strc94_B->bg54.unk24 = 0;
    strc94_B->bg54.targetTilesX = 0x20;
    strc94_B->bg54.targetTilesY = 0x20;
    strc94_B->bg54.paletteOffset = 0;
    strc94_B->bg54.flags = 4;
    DrawBackground(&strc94_B->bg54);
}

void Task_94_B_80A40A0(Opening94_B *strc94_B)
{
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 var_r6;

    var_r6 = 0;
    if (strc94_B->unk8 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[0] = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x1011;
        gWinRegs[5] = 0;
        gBldRegs.bldY = 0x10;
        strc94_B->unk6 = 0x1000;
        strc94_B->unk8 = 1U;
        CreateSomeTask_809BF3C(&strc94_B->unk2, &strc94_B->unk1, &strc94_B->unk18, &strc94_B->unk1C, strc94_B->unk28);
    }
    temp_r1 = strc94_B->unk14;
    if (temp_r1 > 0x3FFF) {
        temp_r0 = temp_r1 + 0xFFFFFF00;
        strc94_B->unk14 = temp_r0;
        if (temp_r0 <= 0x4000) {
            strc94_B->unk14 = 0x4000;
            var_r6 = 1;
        }
    }
    temp_r1_2 = strc94_B->unkC;
    if (temp_r1_2 <= 0x2000) {
        temp_r1_3 = temp_r1_2 + 0x200;
        strc94_B->unkC = temp_r1_3;
        if (temp_r1_3 > 0x1FFF) {
            strc94_B->unkC = 0x2000;
            var_r6 += 1;
        }
    }
    gWinRegs[2] = (((s32)strc94_B->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_B->unkC >> 8);
    if (var_r6 == 2) {
        gBldRegs.bldCnt = 0x3FFF;
        gWinRegs[4] = 0x1011;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0x10;
        strc94_B->unk8 = 0U;
        gCurTask->main = Task_94_B_80A41AC;
    }
}

void Task_94_B_80A41AC(Opening94_B *strc94_B)
{
    u16 temp_r2;

    sub_80A4598(strc94_B);
    gWinRegs[2] = (((s32)strc94_B->unk14 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc94_B->unkC >> 8);
    sub_80A43E0(strc94_B);
    temp_r2 = strc94_B->unk4;
    if ((u32)temp_r2 > 0x2CU) {
        strc94_B->unk4 = 0;
        gCurTask->main = Task_94_B_80A4228;
        return;
    }
    if (8 & gPressedKeys) {
        strc94_B->unk18 = 0x13600;
        strc94_B->unk1 = 0x1D;
        sub_808ADF0(2U);
        return;
    }
    strc94_B->unk4 = temp_r2 + 1;
}

void Task_94_B_80A4228(Opening94_B *strc94_B)
{
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
    if (8 & gPressedKeys) {
        strc94_B->unk18 = 0x13600;
        strc94_B->unk1 = 0x1D;
        sub_808ADF0(2U);
        return;
    }
    strc94_B->unk4 = temp_r2 + 1;
}

void Task_94_B_80A429C(Opening94_B *strc94_B)
{
    s32 var_r0_2;
    u8 temp_r0;
    u8 var_r1;
    void (*var_r0)(Opening94_B *);

    strc94_B->unk18 = 0x13600;
    strc94_B->unk1 = 0x1D;
    temp_r0 = strc94_B->unk2 + 1;
    strc94_B->unk2 = temp_r0;
    if ((u32)temp_r0 > 4U) {
        strc94_B->unk4 = 0;
        gBldRegs.bldCnt = 0xA0;
        gWinRegs[4] = 0x3000;
        gWinRegs[5] = 0;
        gBldRegs.bldY = 0x10;
        *gBgPalette = sub_80C4C0C(0U);
        gFlags |= 1;
        var_r0 = Task_94_B_80A4384;
    } else {
        strc94_B->unk1 = 0x19;
        var_r1 = 1;
        if ((s32)(s8)strc94_B->unk3 > 0) {
            var_r1 = -1U;
        }
        strc94_B->unk3 = var_r1;
        if ((s32)(var_r1 << 0x18) > 0) {
            strc94_B->unk18 = -0x7800;
            var_r0_2 = 0x12C00;
        } else {
            strc94_B->unk18 = 0x16800;
            var_r0_2 = -0x3C00;
        }
        strc94_B->unk20 = var_r0_2;
        strc94_B->spr2C.anim = sTileInfoOpeningCharacterNameTags[strc94_B->unk2].anim;
        strc94_B->spr2C.variant = sTileInfoOpeningCharacterNameTags[strc94_B->unk2].variant;
        strc94_B->spr2C.prevVariant = 0xFF;
        UpdateSpriteAnimation(&strc94_B->spr2C);
        var_r0 = Task_94_B_80A41AC;
    }
    gCurTask->main = var_r0;
}

void Task_94_B_80A4384(Opening94_B *strc94_B)
{
    u16 temp_r0;

    gBldRegs.bldCnt = 0xA0;
    gWinRegs[4] = 0x3000;
    gWinRegs[5] = 0;
    gBldRegs.bldY = 0x10;
    *(s32 *)0x05000000 = 0;
    temp_r0 = strc94_B->unk4;
    if ((u32)temp_r0 > 2U) {
        CreateIntroEggmanCutscene(0U, (OpeningEggman *)gWinRegs);
        TaskDestroy(gCurTask);
        return;
    }
    strc94_B->unk4 = temp_r0 + 1;
}

void TaskDestructor_94_B_80A43DC(Task *t) { }

u32 sub_80A43E0(Opening94_B *strc94_B)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;

    if ((u32)strc94_B->unk4 > 0xEU) {
        if ((s32)(s8)strc94_B->unk3 > 0) {
            temp_r1 = strc94_B->unk18;
            if (temp_r1 <= 0x9600) {
                temp_r0 = temp_r1 + (strc94_B->unk0 << 9);
                strc94_B->unk18 = temp_r0;
                if (temp_r0 > 0x95FF) {
                    strc94_B->unk18 = 0x9600;
                    return 1U;
                }
            }
            goto block_8;
        }
        temp_r1_2 = strc94_B->unk18;
        if (temp_r1_2 > 0x59FF) {
            temp_r0_2 = temp_r1_2 - (strc94_B->unk0 << 9);
            strc94_B->unk18 = temp_r0_2;
            if (temp_r0_2 <= 0x5A00) {
                strc94_B->unk18 = 0x5A00;
                return 1U;
            }
        }
        goto block_8;
    }
block_8:
    return 0U;
}

u32 sub_80A4440(Opening94_B *strc94_B)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;

    if ((s32)(s8)strc94_B->unk3 > 0) {
        temp_r1 = strc94_B->unk18;
        if (temp_r1 <= 0xF000) {
            temp_r0 = temp_r1 + (strc94_B->unk0 << 5);
            strc94_B->unk18 = temp_r0;
            if (temp_r0 > 0xEFFF) {
                strc94_B->unk18 = 0xF000;
                return 1U;
            }
        }
        goto block_7;
    }
    temp_r1_2 = strc94_B->unk18;
    if (temp_r1_2 > 0xFF) {
        temp_r0_2 = temp_r1_2 - (strc94_B->unk0 << 5);
        strc94_B->unk18 = temp_r0_2;
        if (temp_r0_2 <= 0x100) {
            strc94_B->unk18 = 0x100;
            return 1U;
        }
    }
block_7:
    return 0U;
}

u32 sub_80A4494(Opening94_B *strc94_B)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r3;

    if ((s32)(s8)strc94_B->unk3 > 0) {
        temp_r1 = strc94_B->unk18;
        var_r3 = 0x13600;
        if (temp_r1 <= 0x13600) {
            temp_r0 = temp_r1 + (strc94_B->unk0 << 0xA);
            strc94_B->unk18 = temp_r0;
            if (temp_r0 > 0x135FF) {
                goto block_6;
            }
        }
        goto block_7;
    }
    temp_r1_2 = strc94_B->unk18;
    var_r3 = -0x4600;
    if (temp_r1_2 >= 0xFFFFBA00) {
        temp_r0_2 = temp_r1_2 - (strc94_B->unk0 << 0xA);
        strc94_B->unk18 = temp_r0_2;
        if (temp_r0_2 <= 0xFFFFBA00) {
        block_6:
            strc94_B->unk18 = var_r3;
            return 1U;
        }
    }
block_7:
    return 0U;
}

u32 sub_80A44E8(Opening94_B *strc94_B)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r3;

    if ((s32)(s8)strc94_B->unk3 > 0) {
        temp_r1 = strc94_B->unk20;
        var_r3 = -0xC800;
        if (temp_r1 >= 0xFFFF3800) {
            temp_r0 = temp_r1 - (strc94_B->unk0 << 0xB);
            strc94_B->unk20 = temp_r0;
            if (temp_r0 <= 0xFFFF3800) {
                goto block_6;
            }
        }
        goto block_7;
    }
    temp_r1_2 = strc94_B->unk20;
    var_r3 = 0x1B800;
    if (temp_r1_2 <= 0x1B800) {
        temp_r0_2 = temp_r1_2 + (strc94_B->unk0 << 0xB);
        strc94_B->unk20 = temp_r0_2;
        if (temp_r0_2 > 0x1B7FF) {
        block_6:
            strc94_B->unk20 = var_r3;
            return 1U;
        }
    }
block_7:
    return 0U;
}

u32 sub_80A453C(Opening94_B *strc94_B)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;

    if ((s32)(s8)strc94_B->unk3 > 0) {
        temp_r1 = strc94_B->unk20;
        if (temp_r1 > 0x9FF) {
            temp_r0 = temp_r1 - (strc94_B->unk0 << 0xB);
            strc94_B->unk20 = temp_r0;
            if (temp_r0 <= 0xA00) {
                strc94_B->unk20 = 0xA00;
                return 1U;
            }
        }
        goto block_7;
    }
    temp_r1_2 = strc94_B->unk20;
    if (temp_r1_2 <= 0xE600) {
        temp_r0_2 = temp_r1_2 + (strc94_B->unk0 << 0xB);
        strc94_B->unk20 = temp_r0_2;
        if (temp_r0_2 > 0xE5FF) {
            strc94_B->unk20 = 0xE600;
            return 1U;
        }
    }
block_7:
    return 0U;
}

void sub_80A4598(Opening94_B *strc94_B)
{
    strc94_B->spr2C.x = (s16)((s32)strc94_B->unk20 >> 8);
    strc94_B->spr2C.y = (s16)((s32)strc94_B->unk24 >> 8);
    DisplaySprite(&strc94_B->spr2C);
}
#endif