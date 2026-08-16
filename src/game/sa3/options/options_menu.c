#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/stage.h"
#include "code_0_1.h" // sub_8001E58
#include "code_z_1.h"
#include "constants/songs.h"
#include "constants/tilemaps.h"

typedef struct {
    /* 0x000 */ u8 lang0;
    /* 0x000 */ u8 initArg0;
    /* 0x000 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7;
    /* 0x008 */ s16 unk8;
    /* 0x00A */ s16 unkA;
    /* 0x00C */ u16 unkC;
    /* 0x00E */ u16 unkE;
    /* 0x010 */ u16 unk10;
    /* 0x010 */ u16 unk12;
    /* 0x012 */ s32 unk14[7];
    /* 0x090 */ Vec2_32 unk30;
    /* 0x038 */ Vec2_32 unk38[8];
    /* 0x078 */ Vec2_32 unk78[3];
    /* 0x090 */ Vec2_32 unk90;
    /* 0x098 */ Vec2_32 unk98;
    /* 0x0A0 */ Vec2_32 unkA0;
    /* 0x0A8 */ u8 *vramA8;
    /* 0x0AC */ Background bgAC;
    /* 0x0EC */ Background bgEC;
    /* 0x12C */ Background bg12C;
    /* 0x12C */ Sprite spr16C[8];
    /* 0x12C */ Sprite spr2AC;
    /* 0x12C */ Sprite spr2D4;
    /* 0x12C */ Sprite spr2FC;
    /* 0x12C */ Sprite spr324;
    /* 0x12C */ Sprite spr34C;
    /* 0x12C */ Sprite spr374[6];
} OptionsMenu; /* 0x464 */

typedef bool32 (*OptionsProc)(OptionsMenu *options);

void CreateOptions(u16 arg0);
void sub_808B0A4(OptionsMenu *options);
void sub_808B1B0(OptionsMenu *options);
void Task_808B294(void);
void Task_808B398(void);
void sub_808C250(OptionsMenu *options);
void sub_808B4EC(OptionsMenu *options);
void Task_OptionsInit(void);
void sub_808B664(OptionsMenu *options, u8 arg1);
void Task_808B9B4(void);
void Task_808BAA8(void);
void Task_808BB34(void);
void Task_808BBBC(void);
void Task_808BCD8(void);
void Task_808BD90(void);
void sub_808BEEC(OptionsMenu *options);
bool32 sub_808BFA0(OptionsMenu *options);
void Options_LoadSelectedMenu(OptionsMenu *options);
u8 sub_808C008(OptionsMenu *options);
u8 sub_808C08C(OptionsMenu *options);
bool8 sub_808C1BC(OptionsMenu *options);
void sub_808C2E4(OptionsMenu *options);
s32 sub_808C390(OptionsMenu *options);
s32 sub_808C424(OptionsMenu *options);
s32 sub_808C514(OptionsMenu *options);
s32 sub_808C5D4(OptionsMenu *options);
s32 sub_808C704(OptionsMenu *options);
void Task_808C8DC(void);
void sub_808C9B0(void);
void Task_808CA9C(void);
void sub_808CB74(OptionsMenu *options);
void sub_808CC48(OptionsMenu *options);
void sub_808CCA0(OptionsMenu *options);
void sub_808CD14(OptionsMenu *options);
void sub_808CD88(OptionsMenu *options);
void Task_808CE00(void);
s32 sub_808CE88(OptionsMenu *options);
void sub_808CED0(OptionsMenu *options);
void sub_808CF00(OptionsMenu *options);
void sub_808CF4C(OptionsMenu *options);
void Task_808CF74(void);
void sub_808CFC4(OptionsMenu *options);
void TaskDestructor_Options(Task *t);

extern void CreateNameEntryScreen(u8 arg0);
extern void CreateTimeRecordScreen(u8 arg0);
extern void CreateVsRecordScreen(void);
extern void LaunchChaoMenu(s16 arg0, u8 arg1);
extern void sub_8001DDC(u32 playerId);
extern void sub_8001E0C(void);

typedef void (*OptionsSlideInitProc)(s16 timeUpValue, u8 *vramBase, void *unused, u8 *arg3);

extern const OptionsSlideInitProc sOptionsSlideInits[7];

extern const TileInfo2 gUnknown_080D6960[6 * 8];
extern const TileInfo2 gUnknown_080D6AE0;
extern const TileInfo2 gUnknown_080D6AE8[12];
extern const TileInfo2 gUnknown_080D6B48[12];
extern const TileInfo2 gUnknown_080D6BA8[6];
extern const TileInfo2 gUnknown_080D6BD8[6];
extern const u16 gUnknown_080D6C08[10];
extern const ColorRaw gOptionsBgPalette[256];
extern const OptionsProc gUnknown_080D6E38[7];
extern u16 gUnknown_080D6E54[8][8];
// extern u16 gUnknown_080D6E54[8][8] = {
// BLDALPHA_BLEND(target1, target2),
//...
//}
extern s32 gUnknown_080D6ED4[3];
extern const TileInfo2 gUnknown_080D7458;
extern const TileInfo2 gUnknown_080D7460;

void CreateOptions(u16 arg0)
{
    OptionsMenu *options;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    options = TASK_DATA(TaskCreate(Task_OptionsInit, sizeof(OptionsMenu), 0x100U, 0U, TaskDestructor_Options));
    options->initArg0 = arg0;

    if (arg0 == 0) {
        sub_808B1B0(options);
    } else {
        sub_808B0A4(options);
    }

    options->lang0 = LOADED_SAVE->language;
    options->unk5 = 0;
    options->unk4 = 0;
    options->unk10 = 0;
    options->unk6 = 0;
    options->unk3 = 0;
    options->unk14[6] = 1;
    options->unk14[1] = LOADED_SAVE->difficulty;
    options->unk14[2] = LOADED_SAVE->disableTimeLimit;
    options->unk14[3] = LOADED_SAVE->language;
    options->vramA8 = OBJ_VRAM0;

    DmaFill32(3, 0, (void *)BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
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
    sub_808B4EC(options);

    if (FLAGS_20000 & gFlags) {
        CopyObjPaletteMasked(gOptionsBgPalette, 0U, ARRAY_COUNT(gOptionsBgPalette));
    } else {
        DmaCopy16(3, gOptionsBgPalette, gObjPalette, sizeof(gOptionsBgPalette));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }

    m4aSongNumStart(MUS_OPTIONS_COPY);
    gStageData.playerIndex = PLAYER_1;
}

static inline void sub_808B0A4_subinline(OptionsMenu *options)
{
    u8 var_r2;

    for (var_r2 = 0; var_r2 < ARRAY_COUNT(options->unk14); var_r2++) {
        options->unk14[var_r2] = 0;
    }
    options->unk14[options->unk8] = (u32)options->unkA;

    for (var_r2 = 0; var_r2 < ARRAY_COUNT(options->unk38); var_r2++) {
        if (var_r2 == 0) {
            options->unk38[0].x = -0xB400;
        } else {
            options->unk38[var_r2].x = 0x2B00;
        }
        options->unk38[var_r2].y = (var_r2 << 12) + 0x1D00;
    }

    options->unk12 = 0;
    for (var_r2 = 0; var_r2 < ARRAY_COUNT(options->unk78); var_r2++) {
        options->unk78[var_r2].x = Q(165);
        options->unk78[var_r2].y = Q(29);
    }
}

void sub_808B0A4(OptionsMenu *options)
{
    options->unk8 = 0;
    options->unk10 = 0;
    options->unkE = 0;
    options->unkC = 2;
    options->unkA = options->initArg0 - 8;
    options->unk2 = 2;

    sub_808B0A4_subinline(options);

    options->unk90.x = options->unk38[0].x + 0x6B00;
    options->unk90.y = 0x1D00;
    options->unkA0.x = 0;
    options->unkA0.y = 0x1000;
    options->unk30.x = 0;
    options->unk30.y = 0xA00;
}

void sub_808B1B0(OptionsMenu *options)
{
    u8 i;

    options->unk8 = 0;
    options->unk10 = 0;
    options->unkE = 0;
    options->unkC = 0;
    options->unkA = 0;
    options->unk2 = 0;

    for (i = 0; i < ARRAY_COUNT(options->unk14); i++) {
        options->unk14[i] = 0;
    }

    for (i = 0; i < ARRAY_COUNT(options->unk38); i++) {
        options->unk38[i].x = 0xAC00;
        options->unk38[i].y = 0x1D00;
    }

    options->unk12 = 0;
    for (i = 0; i < ARRAY_COUNT(options->unk78); i++) {
        options->unk78[i].x = Q(165);
        options->unk78[i].y = Q(29);
    }

    options->unk90.x = 0xA500;
    options->unk90.y = 0x1D00;
    options->unkA0.x = -0x7800;
    options->unkA0.y = 0x1000;
    options->unk30.x = 0xDF00;
    options->unk30.y = 0xA00;
}

void Task_808B294(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    s32 temp_r0;
    void (*var_r0)(OptionsMenu *);

    if (options->unk10 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] |= 0x3F;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldY = 0x10;
        options->unkE = 0x1000;
        options->unk10 = 1;
    }
    gBldRegs.bldCnt = 0x3EFF;
    sub_808BEEC(options);
    if (options->initArg0 == 0) {
        sub_808C008(options);
    }

    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);

    temp_r0 = I(options->unk30.x);
    if (temp_r0 > 0x59) {
        gBgScrollRegs[1][0] = 0 - temp_r0;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(options->unkE);
        options->unkE -= Q(1);
    } else {
        gBldRegs.bldY = gBldRegs.bldY;
        gBldRegs.bldCnt = 0x3FFF;

        if (options->initArg0 == 0) {
            gCurTask->main = Task_808BAA8;
        } else {
            gCurTask->main = Task_808BCD8;
        }
    }
}

void Task_808B398(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    s32 temp_r0;

    if (options->unk10 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] |= 0x3F;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldCnt = 0x3EFF;
        options->unkE = 0;
        options->unk10 = 0;
    }
    if (options->unk3 == 0) {
        sub_808C08C(options);
    }
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)options->unkE >> 8);
        options->unkE += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    gBldRegs.bldCnt = 0x3FFF;
    if (options->unk3 != 0) {
        switch (options->unk14[options->unk8]) {
            case 0:
                CreateNameEntryScreen(1);
                TaskDestroy(gCurTask);
                return;
            case 1:
                CreateTimeRecordScreen(0);
                TaskDestroy(gCurTask);
                return;
            case 2:
                CreateVsRecordScreen();
                TaskDestroy(gCurTask);
                return;
        }
    } else {
        sub_8001E58();
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchChaoMenu(3, 1);
    }
}

void sub_808B4EC(OptionsMenu *options)
{
    Background *bg0, *bg1;
    gBgCntRegs[0] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(3) | BGCNT_16COLOR | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    bg0 = &options->bg12C;
    bg0->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg0->graphics.anim = 0;
    bg0->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
    bg0 = &options->bg12C;
    bg0->unk18 = 0;
    bg0->unk1A = 0;
    bg0->tilemapId = TM_UNKNOWN_349;
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 256 / 8;
    bg0->targetTilesY = 256 / 8;
    bg0->paletteOffset = 0;
    bg0->flags = BACKGROUND_FLAGS_BG_ID(0);
    DrawBackground(bg0);

    gBgCntRegs[1] = BGCNT_TXT512x256 | BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2);
    gBgScrollRegs[1][0] = -I(options->unk30.x);
    gBgScrollRegs[1][1] = -I(options->unk30.y);
    bg1 = &options->bgEC;
    bg1->graphics.dest = (void *)BG_CHAR_ADDR(1);
    bg1->graphics.anim = 0;
    bg1->layoutVram = (u16 *)BG_SCREEN_ADDR(30);
    bg1->unk18 = 0;
    bg1->unk1A = 0;
    bg1->tilemapId = TM_UNKNOWN_350;
    bg1->unk1E = 0;
    bg1->unk20 = 0;
    bg1->unk22 = 0;
    bg1->unk24 = 0;
    bg1->targetTilesX = DISPLAY_WIDTH / 8;
    bg1->targetTilesY = DISPLAY_HEIGHT / 8;
    bg1->paletteOffset = 0;
    bg1->flags = BACKGROUND_FLAGS_BG_ID(1);
    DrawBackground(bg1);
}

void Task_OptionsInit(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    Background *bg2 = &options->bgAC;
    gBgCntRegs[2] = BGCNT_SCREENBASE(28) | BGCNT_256COLOR | BGCNT_CHARBASE(3) | BGCNT_PRIORITY(1);

    bg2->graphics.dest = (void *)BG_CHAR_ADDR(3);
    bg2->graphics.anim = 0;
    bg2->layoutVram = (u16 *)BG_SCREEN_ADDR(28);
    bg2->unk18 = 0;
    bg2->unk1A = 0;
    bg2->tilemapId = TM_UNKNOWN_358;
    bg2->unk1E = 0;
    bg2->unk20 = 0;
    bg2->unk22 = 0;
    bg2->unk24 = 0;
    bg2->targetTilesX = 128 / TILE_WIDTH;
    bg2->targetTilesY = 128 / TILE_WIDTH;
    bg2->paletteOffset = 0;
    bg2->flags = 6;
    DrawBackground(bg2);

    SA2_LABEL(sub_8003EE4)(0U, 0x100, 0x100, 0x40, 0x40, 0x2150, -gBgScrollRegs[1][1] + 92, gBgAffineRegs);
    gCurTask->main = Task_808B9B4;
}

#if 01
void sub_808B664(OptionsMenu *options, u8 arg1)
{
    s32 *sp0;
    s32 *sp4;
    Vec2_32 *sp10;
    s32 *sp14;
    Vec2_32 *sp20;
    s32 *sp24;
    u8 *vram;
    Sprite *s;
    Sprite *var_r0;
    Vec2_32 *temp_r0;
    s16 var_r0_2;
    s32 *temp_r1;
    u8 i;

    options->lang0 = LOADED_SAVE->language;
    options->unk14[options->unk8] = (u32)LOADED_SAVE->language;
    if (arg1 != 0) {
        vram = options->spr16C[0].tiles;
    } else {
        vram = options->vramA8;
    }

    for (i = 0; i < 8; i++) {
        Sprite *s = &options->spr16C[i];
        s->tiles = vram;
        vram += gUnknown_080D6960[i + options->lang0 * 8].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6960[i + options->lang0 * 8].anim;
        s->variant = gUnknown_080D6960[i + options->lang0 * 8].variant;
        s->prevVariant = -1;

        if (i == 0) {
            s->oamFlags = 0x100;
        } else {
            s->oamFlags = 0x180;
        }

        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x43080;
        s->hitboxes[0].index = -1;
        s->x = I(options->unk38[i].x);
        s->y = I(options->unk38[i].y);
        UpdateSpriteAnimation(s);
    }

    if (arg1 == 0) {
        options->vramA8 += 0x3200;
    }

    s = &options->spr34C;
    if (arg1 == 0) {
        s->tiles = options->vramA8;
        options->vramA8 += 0x380;
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x43000;
        s->hitboxes[0].index = -1;
    }
    s->anim = gUnknown_080D6BD8[options->lang0].anim;
    s->variant = gUnknown_080D6BD8[options->lang0].variant;
    s->prevVariant = 0xFF;
    s->x = I(options->unkA0.x);
    s->y = I(options->unkA0.y);
    UpdateSpriteAnimation(s);

    {
        Sprite *s = &options->spr2AC;
        if (arg1 == 0) {
            s->tiles = options->vramA8;
            options->vramA8 += gUnknown_080D6AE0.numTiles * TILE_SIZE_4BPP;
            s->oamFlags = 0xC0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0x43080;
            s->hitboxes[0].index = -1;
        }
        s->anim = gUnknown_080D6AE0.anim;
        s->variant = gUnknown_080D6AE0.variant;
        s->prevVariant |= ~0;
        s->x = I(options->unk90.x);
        s->y = I(options->unk90.y);
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &options->spr2D4;
        if (arg1 == 0) {
            s->tiles = options->vramA8;
            options->vramA8 += 0x200;
            s->oamFlags = 0x140;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0x43080;
            s->hitboxes[0].index = -1;
        }
        s->anim = gUnknown_080D6AE8[options->lang0 * 2].anim;
        s->variant = gUnknown_080D6AE8[options->lang0 * 2].variant;
        s->prevVariant |= ~0;
        s->x = (s16)((s32)options->unk78[0].x >> 8);
        s->y = (s16)((s32)options->unk78[0].y >> 8);
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &options->spr2FC;
        if (arg1 == 0) {
            s->tiles = options->vramA8;
            options->vramA8 += 0x200;
            s->oamFlags = 0x140;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0x43080;
            s->hitboxes[0].index = -1;
        }
        s->anim = gUnknown_080D6B48[options->lang0 * 2].anim;
        s->variant = gUnknown_080D6B48[options->lang0 * 2].variant;
        s->prevVariant = -1;
        s->x = I(options->unk78[1].x);
        s->y = I(options->unk78[1].y);
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &options->spr324;
        if (arg1 == 0) {
            s->tiles = options->vramA8;
            options->vramA8 += 0x200;
            s->oamFlags = 0x140;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0x43080;
            s->hitboxes[0].index = -1;
        }
        s->anim = gUnknown_080D6BA8[options->lang0].anim;
        s->variant = gUnknown_080D6BA8[options->lang0].variant;
        s->prevVariant |= ~0;
        s->x = I(options->unk78[2].x);
        s->y = I(options->unk78[2].y);
        UpdateSpriteAnimation(s);
    }
}

void Task_808B9B4(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    Sprite *s;
    u16 temp_r1;
    u16 var_r0;
    u8 i;

    for (i = 0; i < 6; i++) {
#ifndef NON_MATCHING
        // NOTE: Function only matches if this is declared here, evne if it'S unused..
        u8 *vram = options->vramA8;
#endif
        const TileInfo2 *tileInfo = &gUnknown_080D7458;
        s = &options->spr374[i];
        s->tiles = options->vramA8;
        options->vramA8 += tileInfo->numTiles * TILE_SIZE_4BPP;

        if (LOADED_SAVE->playerName[i] != 0xFFFF) {
            if (LOADED_SAVE->playerName[i] > 0xFFU) {
                s->variant = LOADED_SAVE->playerName[i];
                s->anim = gUnknown_080D7460.anim;
            } else {
                s->variant = LOADED_SAVE->playerName[i];
                s->anim = tileInfo->anim;
            }
            options->unk4 += 1;
        } else {
            s->anim = tileInfo->anim;
            s->variant = 0;
        }
        s->prevVariant = -1;
        s->x = I(options->unk78[2].x);
        s->y = I(options->unk78[2].y);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 9;
        s->frameFlags = 0x43080;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    sub_808B664(options, 0U);
    if (options->initArg0 != 0) {
        Options_LoadSelectedMenu(options);
    }

    gCurTask->main = Task_808B294;
}

void Task_808BAA8(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    s32 temp_r0;

    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808C008(options) == 8) {
        options->unkC = 1;
        gBldRegs.bldCnt = 0x3F40;
        gBldRegs.bldAlpha = 1;
        gCurTask->main = Task_808BD90;
        return;
    }
    temp_r0 = I(options->unk30.x);
    if (temp_r0 > 0x59) {
        gBgScrollRegs[1][0] = 0 - temp_r0;
    }
}

void Task_808BB34(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    s32 temp_r0;

    gBldRegs.bldAlpha = 0xF;
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if ((u32)sub_808C08C(options) > 3U) {
        options->unkC = 1;
        gBldRegs.bldCnt = 0x3F40;
        gBldRegs.bldAlpha = 1;
        options->unk3 = 0;
        gCurTask->main = Task_808B398;
        return;
    }
    temp_r0 = I(options->unk30.x);
    if (temp_r0 > 0x6E) {
        gBgScrollRegs[1][0] = 0 - temp_r0;
    }
}

void Task_808BBBC(void)
{
    // TODO: This seems like a fake-match!
    Task **t = &gCurTask;
    OptionsMenu *options = TASK_DATA(*t);

    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);

    if (gBgScrollRegs[1][0] <= -40) {
        sub_808CC48(options);
        sub_808CCA0(options);
        sub_808CD14(options);
        sub_808CD88(options);
    }
    if (sub_808C1BC(options)) {
        options->unkC = 0;
        if (options->unk8 == 5) {
            Background *bg1 = &options->bgEC;
            gDispCnt &= ~DISPCNT_BG2_ON;
            gBgCntRegs[1] = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2) | BGCNT_16COLOR | BGCNT_TXT512x256;
            bg1->graphics.dest = (void *)BG_CHAR_ADDR(1);
            bg1->graphics.anim = 0;
            bg1->layoutVram = (u16 *)BG_SCREEN_ADDR(30);
            bg1->unk18 = 0;
            bg1->unk1A = 0;
            bg1->tilemapId = TM_UNKNOWN_350;
            bg1->unk1E = 0;
            bg1->unk20 = 0;
            bg1->unk22 = 0;
            bg1->unk24 = 0;
            bg1->targetTilesX = 30;
            bg1->targetTilesY = 20;
            bg1->paletteOffset = 0;
            bg1->flags = 1;
            DrawBackground(bg1);
        }

        if (options->unk8 == 6) {
            if (options->unk3 != 0) {
                (*t)->main = Task_808CA9C;
                return;
            }
            options->unk3 = 0;
        }

        (*t)->main = Task_808BD90;
        return;
    } else {
        gBgScrollRegs[1][0] = -I(options->unk30.x);
    }
}

void Task_808BCD8(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);

    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808BFA0(options) == 1) {
        options->unkA0.x = 0;
    }
    if ((options->unk6 == 0) && ((s32)gBgScrollRegs[1][0] <= -0xC8)) {
        options->unk14[6] = 1;
        Options_LoadSelectedMenu(options);
        return;
    }
    if (gUnknown_080D6E38[options->unk8](options) != 1) {
        if ((s32)options->unk8 <= 6) {
            sub_808C250(options);
        }
        gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
    }
}

void Task_808BD90(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    s16 temp_r0;
    s16 temp_r2_3;
    s16 var_r0;
    u16 temp_r2;
    u16 temp_r2_2;

    sub_808BEEC(options);
    sub_808C2E4(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808BFA0(options) == 1) {
        options->unkA0.x = 0;
    }
    if (1 & gPressedKeys) {
        m4aSongNumStart(SE_SELECT);
        options->unkC = 0;
        if (options->unk8 != 7) {
            gCurTask->main = Task_808BCD8;
            return;
        }

        sub_808CFC4(options);
        gCurTask->main = Task_808BB34;
        return;
    } else if (2 & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
    block_7:
        sub_808CFC4(options);
        gCurTask->main = Task_808BB34;
        return;
    }
    if (0xC0 & gRepeatedKeys) {
        m4aSongNumStart(0x6CU);

        if (0x40 & gRepeatedKeys) {
            if (options->unk8 == 0) {
                options->unk8 = 7;
            } else {
                options->unk8 -= 1;

                if ((options->unk8 == 5) && !(1 & LOADED_SAVE->unlockFlags)) {
                    options->unk8 -= 1;
                }
            }
        } else if (0x80 & gRepeatedKeys) {
            if (options->unk8 == 7) {
                options->unk8 = 0;
            } else {
                options->unk8 += 1;
                if ((options->unk8 == 5) && !(1 & LOADED_SAVE->unlockFlags)) {
                    options->unk8 += 1;
                }
            }
        }
        options->unkC = 0;
    }
    gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
}

void sub_808BEEC(OptionsMenu *options)
{
    s32 temp_r0;
    u16 *offsets;
    u8 var_r5 = 0;
    u8 unk8 = options->unk8;
    u8 var_r4;
    u8 var_r1;

    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BLDALPHA;
    gHBlankCopySize = sizeof(REG_BLDALPHA);
    offsets = gBgOffsetsHBlankPrimary;
    options->unk12 = 0;
    for (var_r4 = 0; var_r4 < DISPLAY_HEIGHT; var_r4++) {
        temp_r0 = I(options->unk38[var_r5].y);
        if ((var_r4 >= temp_r0) && (var_r4 < (s32)(temp_r0 + 0x10))) {
            for (var_r1 = 0; var_r1 < 16; var_r1++, var_r4++) {
                *offsets = gUnknown_080D6E54[unk8][options->unk12];
                offsets += 1;
            }
            options->unk12 += 1;
            var_r5 += 1;
        } else {
#ifdef BUG_FIX
            *offsets = gUnknown_080D6E54[0][0];
#else
            // BUG: Pointer gets downcast to s16!
            *offsets = (s16)&gUnknown_080D6E54;
#endif
            offsets += 1;
        }
    }
}

u32 sub_808BFA0(OptionsMenu *options)
{
    u8 unk2 = options->unk2;
    options->unkA0.x += gUnknown_080D6ED4[unk2];

    if ((unk2 == 0) && options->unkA0.x >= +Q(10)) {
        options->unk2 += 1;
    } else if ((unk2 == 1) && ((s32)options->unkA0.x <= -Q(10))) {
        options->unk2 += 1;
    } else if ((unk2 == 2) && ((s32)options->unkA0.x > 0)) {
        options->unkA0.x = 0;
        return 1U;
    }

    return 0U;
}

u8 sub_808C008(OptionsMenu *options)
{
    u8 var_r6 = 0;
    u8 var_r5;

    for (var_r5 = 0; var_r5 < 8; var_r5++) {
        s32 var_r2;

        if (var_r5 == options->unk8) {
            var_r2 = 0x21;
        } else {
            var_r2 = 0x2B;
        }

        if ((u32)options->unk38[var_r5].x > Q(var_r2)) {
            options->unk38[var_r5].x -= Q(8);
        } else {
            options->unk38[var_r5].x = Q(var_r2);
            if (options->unk38[var_r5].y < (var_r5 << 12) + 0x1D00) {
                options->unk38[var_r5].y += Q(8);
            } else {
                options->unk38[var_r5].y = (var_r5 << 12) + 0x1D00;
                var_r6 += 1;
            }
        }
    }

    options->unk30.x = options->unk38[options->unk8].x + 0xB400;

    return var_r6;
}

u8 sub_808C08C(OptionsMenu *options)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_3;
    u8 var_r5;
    u8 var_r8;
    u8 var_sb = 0;

    if (((s32)options->unk8 > 5) && !GetBit(LOADED_SAVE->unlockFlags, 0)) {
        var_r8 = (u16)options->unk8 - 1;
    } else {
        var_r8 = (u8)options->unk8;
    }

    for (var_r5 = 0; var_r5 < 8; var_r5++) {
        if (options->unk38[var_r5].y <= options->unk38[var_r8].y) {
            if ((options->unk38[var_r5].y == options->unk38[var_r8].y)
                || (temp_r0_2 = options->unk38[var_r5].y + Q((var_r8 - var_r5) << 1), options->unk38[var_r5].y = temp_r0_2,
                    (temp_r0_2 >= options->unk38[var_r8].y))) {
                options->unk38[var_r5].y = options->unk38[var_r8].y;
                var_sb += 1;
                if (options->unk38[var_r5].y >= options->unk38[var_r8].y) {
                    if (options->unk38[var_r5].y != options->unk38[var_r8].y) {
                        goto block_10;
                    } else {
                        goto block_11;
                    }
                }
            }
        } else {
        block_10:
            temp_r1_3 = options->unk38[var_r5].y - ((var_r5 - var_r8) << 9);
            options->unk38[var_r5].y = temp_r1_3;
            if (temp_r1_3 <= options->unk38[var_r8].y) {
            block_11:
                options->unk38[var_r5].y = options->unk38[var_r8].y;
                var_sb += 1;
            }
        }
    }

    if (var_sb == 0x10) {
        if (options->unk38[var_r8].x < Q(180)) {
            options->unk38[var_r8].x += Q(16);
            var_sb = 0xF;
        }

        for (var_r5 = 0; var_r5 < 8; var_r5++) {
            options->unk38[var_r5].x = options->unk38[var_r8].x;
        }
    }
    if (options->unk30.x < 0xDF00) {
        options->unk30.x = options->unk38[var_r8].x + Q(180);
    }
    gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
    return (u8)(var_sb >> 1);
}

bool8 sub_808C1BC(OptionsMenu *options)
{
    s32 var_r6 = 0;

    if ((options->unkC == 0) && (options->unk38[options->unk8].x < 0x2600)) {
        options->unk38[options->unk8].x += Q(20);
    } else if ((options->unkC == 0) && (options->unk38[options->unk8].x < 0x2F00)) {
        options->unk38[options->unk8].x += Q(8);
    } else if (options->unk38[options->unk8].x > 0x2B00) {
        options->unkC = 1;
        options->unk38[options->unk8].x -= Q(8);
    } else {
        var_r6 = 1;
        options->unk38[options->unk8].x = 0x2B00;
    }

    options->unk30.x = options->unk38[options->unk8].x + 0xB400;
    return var_r6;
}

// TODO: Fake-match
void sub_808C250(OptionsMenu *options)
{
#ifndef NON_MATCHING
    register OptionsMenu *options_r1 asm("r1");
#else
    OptionsMenu *options_r1;
#endif
    if ((options->unkC == 0) && (options->unk38[options->unk8].x > -0xBA00)) {
        options->unk38[options->unk8].x -= Q(20);
    } else {
        if (options->unk38[options->unk8].x <= -0xB100) {
            if (options->unk38[options->unk8].x < -0xB400) {
                options->unkC = 1;
                options->unk38[options->unk8].x += 0x600;
            } else {
                options->unk38[options->unk8].x = -0xB400;
            }
        } else {
            options->unk38[options->unk8].x -= Q(1);
        }
    }

#ifndef NON_MATCHING
    asm("mov %0, %1" : "=r"(options_r1) : "r"(options));
#else
    options_r1 = options;
#endif

    options->unk30.x = options->unk38[options_r1->unk8].x + 0xB400;
}

void sub_808C2E4(OptionsMenu *options)
{
    Vec2_32 *temp_r1_2;
    Vec2_32 *temp_r1_3;
    Vec2_32 *temp_r1_4;
    Vec2_32 *var_r5;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 var_r0;
    u8 i;

    if ((options->unkC == 0) && (options->unk38[options->unk8].x > 0x1C00)) {
        options->unk38[options->unk8].x -= Q(3);
    } else {
        if (options->unk38[options->unk8].x <= 0x20FF) {
            options->unkC = 1;
            options->unk38[options->unk8].x += 0x400;
        } else {
            options->unk38[options->unk8].x = 0x2100;
        }
    }

    for (i = 0; i < 8; i++) {
        if (i != options->unk8) {
            if (options->unk38[i].x < 0x2B00) {
                options->unk38[i].x += 0x200;
            }
        }
    }

    options->unk30.x = options->unk38[options->unk8].x + 0xB400;
}

s32 sub_808C390(OptionsMenu *options)
{
    if (options->unk6 == 0) {
        options->unk8 = 0;
        options->unkC = 0;
        gCurTask->main = Task_808BBBC;
        return 1;
    } else if ((gBgScrollRegs[1][0] == 0) && (1 & gPressedKeys)) {
        m4aSongNumStart(SE_SELECT);
        if ((s32)options->unk14[options->unk8] <= 2) {
            options->unk3 = 1;
            gBldRegs.bldCnt = 0x3F40;
            gBldRegs.bldAlpha = 1;
            gCurTask->main = Task_808B398;
        } else {
            options->unk8 = 0;
            options->unkC = 0;
            gCurTask->main = Task_808BBBC;
        }

        return 1;
    }

    gBgScrollRegs[1][0] = -I(options->unk30.x);
    return 0;
}

s32 sub_808C424(OptionsMenu *options)
{
    if (B_BUTTON & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
        options->unk14[options->unk8] = (u32)options->unkA;
        options->unkC = 0;
        gCurTask->main = Task_808BBBC;
        return 1;
    }

    if (gBgScrollRegs[1][0] == 0) {
        if (1 & gPressedKeys) {
            m4aSongNumStart(SE_SELECT);
            options->unkC = 0;
            gCurTask->main = Task_808BBBC;
            return 1;
        }
        if (0x30 & gRepeatedKeys) {
            m4aSongNumStart(0x6CU);

            if (0x10 & gRepeatedKeys) {
                if (options->unk14[options->unk8] == 0) {
                    options->unk14[options->unk8] = gUnknown_080D6C08[options->unk8];
                } else {
                    options->unk14[options->unk8] -= 1;
                }
            } else if (0x20 & gRepeatedKeys) {
                if (options->unk14[options->unk8] == gUnknown_080D6C08[options->unk8]) {
                    options->unk14[options->unk8] = 0;
                } else {
                    options->unk14[options->unk8] += 1;
                }
            }
        }
        goto block_16;
    }
block_16:
    gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
    return 0;
}

s32 sub_808C514(OptionsMenu *options)
{
    if ((gBgScrollRegs[1][0] == 0) && (options->unk6 != 0) && (A_BUTTON & gPressedKeys)) {
        m4aSongNumStart(SE_SELECT);
        options->unkC = 0;

        if (LOADED_SAVE->language != options->unk14[options->unk8]) {
            LOADED_SAVE->language = options->unk14[options->unk8];
            options->unkA = options->unk14[options->unk8];
            options->lang0 = LOADED_SAVE->language;
            sub_808B664(options, 1U);
        }
        options->unk6 = 0;
    } else {
        if (!(2 & gPressedKeys)) {
            gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
            return 0;
        }
        m4aSongNumStart(SE_ABORT);
        options->unk14[options->unk8] = (u32)options->unkA;
        options->unkC = 0;
    }

    gCurTask->main = Task_808BBBC;
    return 1;
}

s32 sub_808C5D4(OptionsMenu *options)
{
    s16 temp_r1;
    s16 temp_r5;
    u16 temp_r3;
    u16 var_r0;
    u32 *var_r2;
    u32 temp_r0;
    u32 temp_r0_2;
    u8 temp_r2;

    if (2 & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);

        if (options->unk3 == 0) {
            options->unk14[options->unk8] = (u32)options->unkA;
            options->unkC = 0;
            gCurTask->main = Task_808BBBC;
            return 1;
        }
        options->unk3 = 0;
    }

    if (gBgScrollRegs[1][0] == 0) {
        if (A_BUTTON & gPressedKeys) {
            m4aSongNumStart(SE_SELECT);
            options->unk3 = 0;
        }
        if (gBgScrollRegs[1][0] == 0) {
            if (0xC0 & gRepeatedKeys) {
                m4aSongNumStart(0x6CU);

                if (0x40 & gRepeatedKeys) {
                    if (options->unk14[options->unk8] == 0) {
                        options->unk14[options->unk8] = gUnknown_080D6C08[options->unk8];
                    } else {
                        options->unk14[options->unk8] -= 1;
                    }
                } else if (0x80 & gRepeatedKeys) {
                    temp_r1 = options->unk8;
                    if (options->unk14[temp_r1] == gUnknown_080D6C08[temp_r1]) {
                        options->unk14[temp_r1] = 0;
                    } else {
                        options->unk14[temp_r1] += 1;
                    }
                }
            }
            if ((gBgScrollRegs[1][0] == 0) && (0x30 & gRepeatedKeys)) {
                m4aSongNumStart(0x6CU);
                options->unk3 = 1;
            }
        }
    }
    gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
    return 0;
}

s32 sub_808C704(OptionsMenu *options)
{
    s16 temp_r5;
    u32 *temp_r1;
    u8 temp_r0;
    void (*var_r0)(OptionsMenu *);

    if (gPressedKeys & B_BUTTON) {
        m4aSongNumStart(SE_ABORT);
        options->unk3 = 0;
        options->unk14[options->unk8] = (u32)options->unkA;
        options->unkC = 0;
        gCurTask->main = Task_808BBBC;
        return 1;
    }

    if ((gBgScrollRegs[1][0] == 0) && (gPressedKeys & A_BUTTON)) {
        m4aSongNumStart(SE_SELECT);
        if (options->unk14[options->unk8] != 0) {
            options->unk3 = 0;
            options->unk14[options->unk8] = (u32)options->unkA;
            options->unkC = 0;
            gCurTask->main = Task_808BBBC;
            return 1;
        }

        if (++options->unk3 == 2) {
            options->unk5 = 1;
        }
    }

    if (options->unk5 != 0) {
        gCurTask->main = sub_808C9B0;
        return 1;
    } else {
        gBgScrollRegs[1][0] = 0 - ((s32)options->unk30.x >> 8);
        return 0;
    }
}

void Options_LoadSelectedMenu(OptionsMenu *options)
{
    Sprite *s;
    s16 temp_r1;
    s16 temp_r2;
    s16 temp_r6;
    u8 i;

    if (options->unk6 == 0) {
        temp_r6 = options->unk8;
        if (temp_r6 < 7) {
            options->unk3 = 0;
            options->unkA = options->unk14[options->unk8];
            if (temp_r6 == 5) {
                Background *bg1 = &options->bgEC;
                gDispCnt |= DISPCNT_BG2_ON;
                gBgCntRegs[1] = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2) | BGCNT_256COLOR | BGCNT_TXT512x256;
                bg1->graphics.dest = (void *)BG_CHAR_ADDR(1);
                bg1->graphics.anim = 0;
                bg1->layoutVram = (u16 *)BG_SCREEN_ADDR(30);
                bg1->unk18 = 0;
                bg1->unk1A = 0;
                bg1->tilemapId = TM_UNKNOWN_357;
                bg1->unk1E = 0;
                bg1->unk20 = 0;
                bg1->unk22 = 0;
                bg1->unk24 = 0;
                bg1->targetTilesX = 30;
                bg1->targetTilesY = 20;
                bg1->paletteOffset = 0;
                bg1->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(1);
                DrawBackground(bg1);
            }

            if (options->unk8 == 0) {
                options->unk14[options->unk8] = 0;
            }
            temp_r2 = options->unk8;
            sOptionsSlideInits[temp_r2](options->unk14[temp_r2], options->vramA8, &options->unk14[temp_r2], &options->unk6);
            options->unk6 = 1;
            return;
        }

        for (i = 0; i < 8; i++) {
            s = &options->spr16C[i];
            if (i == options->unk8) {
                s->oamFlags = SPRITE_OAM_ORDER(0);
            } else {
                s->oamFlags = SPRITE_OAM_ORDER(4);
            }
            UpdateSpriteAnimation(s);
        }
    }
}

void Task_808C8DC(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);

    if (options->unk10 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] |= 0x3F;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldY = 0x10;
        options->unkE = 0x1000;
        options->unk10 = 1;
    }
    gBldRegs.bldCnt = 0x3EFF;

    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(options->unkE);
        options->unkE -= Q(1);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gBldRegs.bldCnt = 0x3FFF;
    gCurTask->main = Task_808BD90;
}

void sub_808C9B0(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    if (options->unk10 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs[0] = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3EFF;
        options->unkE = 0;
        options->unk10 = 0;
    }
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)options->unkE >> 8);
        options->unkE += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    options->unk4 = 0;
    sub_8001DDC(LOADED_SAVE->playerId);
    sub_8001E0C();
    options->unk14[options->unk8] = (u32)options->unkA;
    options->unkC = 0;
    gCurTask->main = Task_808BBBC;
}

void Task_808CA9C(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < 6; i++) {
        Sprite *s = &options->spr374[i];
        if (LOADED_SAVE->playerName[i] != 0xFFFF) {
            if (LOADED_SAVE->playerName[i] > 0xFFU) {
                s->variant = LOADED_SAVE->playerName[i] + 1;
                s->anim = gUnknown_080D7460.anim;
            } else {
                s->variant = LOADED_SAVE->playerName[i];
                s->anim = gUnknown_080D7458.anim;
            }
            options->unk4 += 1;
        } else {
            s->anim = gUnknown_080D7458.anim;
            s->variant = 0;
        }
        UpdateSpriteAnimation(s);
    }

    options->unk5 = 0;
    options->unk3 = 0;
    options->unk14[6] = 1;
    options->unk14[1] = LOADED_SAVE->difficulty;
    options->unk14[2] = LOADED_SAVE->disableTimeLimit;
    options->unk14[3] = LOADED_SAVE->language;
    options->unkA = 1;
    sub_8001E58();
    CreateOptions(0U);
    gWinRegs[WINREG_WININ] = 0;
    TaskDestroy(gCurTask);
}

void sub_808CB74(OptionsMenu *options)
{
    Sprite *s;
    u8 var_r5;
    u8 var_r0;

    for (var_r5 = 0; var_r5 < 8; var_r5++) {
        if ((var_r5 != 5) || (1 & LOADED_SAVE->unlockFlags)) {
            s = &options->spr16C[var_r5];
            s->anim = gUnknown_080D6960[var_r5 + options->lang0 * 8].anim;
            s->variant = gUnknown_080D6960[var_r5 + options->lang0 * 8].variant;
            s->x = I(options->unk38[var_r5].x);
            if ((var_r5 > 5U) && !(1 & LOADED_SAVE->unlockFlags)) {
                var_r0 = var_r5 - 1;
            } else {
                var_r0 = (u8)var_r5;
            }
            s->y = I(options->unk38[var_r0].y);
            if (var_r5 != options->unk8) {
                s->palId = 1;
                s->frameFlags = s->frameFlags | 0x80;
            } else {
                s->palId = 0;
                s->frameFlags = s->frameFlags & ~0x80;
            }
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

void sub_808CC48(OptionsMenu *options)
{
    u32 var_r0;
    Sprite *s = &options->spr2AC;

    s->anim = gUnknown_080D6AE0.anim;
    s->variant = gUnknown_080D6AE0.variant;
    s->x = (s16)((s32)(options->unk38[0].x + 0x6B00) >> 8);
    s->y = (s16)((s32)options->unk38[0].y >> 8);
    if (options->unk8 == 0) {
        s->palId = 0;
        s->frameFlags &= ~0x80;
    } else {
        s->palId = 4;
        s->frameFlags |= 0x80;
    }
    DisplaySprite(s);
}

void sub_808CCA0(OptionsMenu *options)
{
    u8 temp_r2 = options->unk14[1];
    Sprite *s = &options->spr2D4;

    s->anim = gUnknown_080D6AE8[temp_r2 + (options->lang0 * 2)].anim;
    s->variant = gUnknown_080D6AE8[temp_r2 + (options->lang0 * 2)].variant;
    s->x = I(options->unk38[1].x + Q(115));
    s->y = I(options->unk38[1].y);

    if (options->unk8 == 1) {
        s->palId = 0;
        s->frameFlags &= ~0x80;
    } else {
        s->palId = 4;
        s->frameFlags |= 0x80;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_808CD14(OptionsMenu *options)
{
    u8 temp_r2 = options->unk14[2];
    Sprite *s = &options->spr2FC;

    s->anim = gUnknown_080D6B48[temp_r2 + (options->lang0 * 2)].anim;
    s->variant = gUnknown_080D6B48[temp_r2 + (options->lang0 * 2)].variant;
    s->x = I(options->unk38[2].x + Q(115));
    s->y = I(options->unk38[2].y);
    if (options->unk8 == 2) {
        s->palId = 0;
        s->frameFlags &= ~0x80;
    } else {
        s->palId = 4;
        s->frameFlags |= 0x80;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_808CD88(OptionsMenu *options)
{
    Sprite *s = &options->spr324;

    s->anim = gUnknown_080D6BA8[options->lang0].anim;
    s->variant = gUnknown_080D6BA8[options->lang0].variant;
    s->x = I(options->unk38[3].x + Q(115));
    s->y = I(options->unk38[3].y);

    if (options->unk8 == 3) {
        s->palId = 0;
        s->frameFlags &= ~0x80;
    } else {
        s->palId = 4;
        s->frameFlags |= 0x80;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_808CDF4() { CreateOptions(0U); }

void Task_808CE00(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);

    sub_808BEEC(options);
    sub_808C250(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);

    if (sub_808BFA0(options) == 1) {
        options->unkA0.x = 0;
    }

    gUnknown_080D6E38[options->unk8](options);
    gBgScrollRegs[1][0] = -I(options->unk30.x);
}

s32 sub_808CE88(OptionsMenu *options)
{
    if (options->unk14[options->unk8] == 123) {
        options->unk14[options->unk8] = options->unkA;
        options->unkC = 0;
        gCurTask->main = Task_808BBBC;
        return 1;
    } else {
        gBgScrollRegs[1][0] = -I(options->unk30.x);
        return 0;
    }
}

void sub_808CED0(OptionsMenu *options)
{
    options->unk98.x += 0x180;
    options->unk98.y -= Q(1.5);
    gBgScrollRegs[0][0] = I(options->unk98.x);
    gBgScrollRegs[0][1] = I(options->unk98.y);
}

void sub_808CF00(OptionsMenu *options)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < options->unk4; i++) {
        if (i < (u32)options->unk4) {
            s = &options->spr374[i];
            s->x = I(options->unk38[0].x + Q(107)) + (i * 8) + (i * 2) + 10;
            s->y = I(options->unk38[0].y) + 8;
            DisplaySprite(s);
        }
    }
}

void sub_808CF4C(OptionsMenu *options)
{
    Sprite *s = &options->spr34C;
    s->x = I(options->unkA0.x);
    s->y = I(options->unkA0.y);
    DisplaySprite(s);
}

void Task_808CF74(void)
{
    OptionsMenu *options = TASK_DATA(gCurTask);

    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);

    TaskDestroy(gCurTask);
}

void sub_808CFC4(OptionsMenu *options)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < 8; i++) {
        s = &options->spr16C[i];
        if (i == options->unk8) {
            s->oamFlags = 0;
        } else {
            s->oamFlags = 0x100;
        }
        UpdateSpriteAnimation(s);
    }
}

void TaskDestructor_Options(Task *t) { gWinRegs[WINREG_WININ] = 0; }

#endif
