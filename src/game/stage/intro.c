#include "global.h"
#include "core.h"
#include "color.h"
#include "flags.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/screen_fade.h"
#include "game/shared/stage/player.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"

extern ColorRaw Palette_unknown_354[]; // Pal of Tilemap 354

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ int_vcount unk1;
    /* 0x02 */ int_vcount unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x08 */ Background bg;
    /* 0x48 */ Sprite s;
} StageIntro_70; /* 0x70 */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ int_vcount unk1;
    /* 0x02 */ s16 unk2;
    /* 0x04 */ s16 unk4;
    /* 0x06 */ s16 unk6;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite s;
    /* 0x44 */ Background bg;
} StageIntro_84; /* 0x84 */

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ int_vcount unk4;
    /* 0x005 */ int_vcount unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7[3];
    /* 0x00A */ u16 unkA;
    /* 0x00C */ u16 unkC;
    /* 0x010 */ s32 unk10;
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ Sprite sprites20[3];
    /* 0x098 */ Sprite sprite98;
    /* 0x0C0 */ Sprite spritesC0[3];
    /* 0x138 */ Sprite sprite138;
    /* 0x160 */ SpriteTransform tf;
    /* 0x16C */ NotificationText *notifText;
} StageIntro_170;

void Task_170_80577D4(void);
void Task_70_8057054(void);
void Task_70_805722C(void);
void Task_70_80572CC(void);
void Task_170_80575F0(void);
void Task_StageIntroScreenFade(void);
void Task_170_80573AC(void);
void sub_8057848(void);
void Task_84_8057B70(void);
void Task_70_8057F7C(void);
void Task_170_8057FE8(void);
void TaskDestructor_84_80580EC(struct Task *t);
void TaskDestructor_StageIntro(struct Task *t);
void sub_80578EC(s32, s32);
u32 sub_80C4C0C(u16 color);

extern s16 gUnknown_080D1D58[];
extern s8 gUnknown_080D1D7C[][2];
extern const TileInfo2 gUnknown_080D1D88[];
extern u8 gUnknown_080D1E18[6];

void CreateStageIntroScreenFade(void)
{
    ScreenFade *fade = TASK_DATA(TaskCreate(Task_StageIntroScreenFade, sizeof(ScreenFade), 0x2100U, 0U, NULL));
    fade->window = 0;
    fade->flags = 2;
    fade->brightness = 0;
    fade->speed = 0x80;
    fade->bldCnt = 0xFF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
    gStageData.unk4 = 3;
}

void sub_8056AFC(u8 param0)
{
    struct Task *t = TaskCreate(Task_70_8057054, sizeof(StageIntro_70), 0x84 << 6, 0, NULL);
    StageIntro_70 *strc70 = TASK_DATA(t);

    strc70->unk0 = param0;
    strc70->unk4 = 0;
    strc70->unk1 = 0;
    strc70->unk2 = DISPLAY_HEIGHT;
    strc70->unk3 = 16;

    gDispCnt |= 0x4000;
    gDispCnt &= ~0x2000;

    gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] = 0x3F00;
    gWinRegs[WINREG_WINOUT] = 0;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
}

void CreateStageIntro(void)
{
    u8 sp4[6];
    u8 *sp1C;
    Player *temp_r1;
    Sprite *s;
    StageData *var_ip;
    s32 var_r1;
    s32 var_r3;
    StageIntro_170 *strc;
    u8 *temp_r2_2;
    u8 *temp_r2_3;
    u8 *temp_r2_4;
    u8 *var_r0;
    u8 *var_r0_2;
    u8 *var_r2;
    u8 temp_r0;
    u8 temp_r1_4;
    u8 var_r0_3;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r4_3;
    u8 var_r5;
    u8 var_r6;
    u8 zone;
    SpriteTransform *temp_r1_5;
    u8 gameMode;
    u8 playerIndex;

    memcpy(&sp4, &gUnknown_080D1E18, sizeof(sp4));
    playerIndex = gStageData.playerIndex;
    if (gStageData.zone == 7) {
        gameMode = gStageData.gameMode;
        if (gameMode != 0) {
            if (gameMode == 5) {
                var_r5 = sp4[gPlayers[PLAYER_1].charFlags.character];
                var_r4 = sp4[gPlayers[PLAYER_2].charFlags.character];
            } else {
                var_r5 = sp4[gPlayers[playerIndex].charFlags.character];
                var_r4 = sp4[gPlayers[gPlayers[playerIndex].charFlags.partnerIndex].charFlags.character];
            }
        } else {
            var_r5 = sp4[gPlayers[playerIndex].charFlags.character];
            var_r4 = sp4[gPlayers[gPlayers[playerIndex].charFlags.partnerIndex].charFlags.character];
        }
        zone = 7;
        var_r6 = 7;
    } else if (gStageData.zone == 8) {
        var_r5 = 0;
        var_r4 = 6;
        zone = 8;
        var_r6 = 7;
        if (gStageData.unkBA == 0) {
            gCamera.sa2__unk50 |= 1;
        }
    } else {
        if (gStageData.act == 0 || gStageData.act == 1 || gStageData.act == 2 || gStageData.act >= 8) {
            return;
        }
        if (gStageData.gameMode == 0) {
            var_r5 = sp4[gPlayers[playerIndex].charFlags.character];
            var_r4 = sp4[gPlayers[gPlayers[gStageData.playerIndex].charFlags.partnerIndex].charFlags.character];
        } else if (gStageData.gameMode == 5) {
            var_r5 = sp4[gPlayers[PLAYER_1].charFlags.character];
            var_r4 = sp4[gPlayers[PLAYER_2].charFlags.character];
        } else if (gStageData.gameMode == 6) {
            if ((playerIndex == 0) || (playerIndex == 2)) {
                var_r5 = sp4[gUnknown_03001060.unk4C];
                var_r4 = sp4[gUnknown_03001060.filler4E[0]];
            } else {
                var_r5 = sp4[gUnknown_03001060.unk4D];
                var_r4 = sp4[gUnknown_03001060.filler4E[1]];
            }
        } else {
            var_r5 = sp4[gPlayers[gStageData.playerIndex].charFlags.character];
            var_r4 = sp4[gPlayers[gPlayers[gStageData.playerIndex].charFlags.partnerIndex].charFlags.character];
        }
        zone = gStageData.zone;
        var_r6 = gStageData.act;
    }

    strc = TASK_DATA(TaskCreate(Task_170_8057FE8, sizeof(StageIntro_170), 0x2100U, 0U, TaskDestructor_StageIntro));
    strc->unk0 = 0;
    strc->unk1 = zone;
    strc->unk2 = (u8)(var_r6 - 3);
    strc->unk5 = 80;
    strc->unk6 = 80;
    strc->unkA = 0;
    strc->unkC = 0x100;
    strc->unk10 = 0x15400;
    strc->unk14 = 0x6400;
    strc->unk18 = -Q(3);
    strc->unk1C = -Q(2);
    strc->unk3 = var_r5;
    strc->unk4 = var_r4;
    strc->notifText = 0;

    sub_80578EC(1, 1);
    switch (var_r6) {
        case 3:
        case 4:
        case 5:
            var_r6 = gStageData.act - 3;
            break;
        case 7:
            var_r6 = 3;
            break;
        default:
            var_r6 = 0;
            break;
    }

    var_ip = &gStageData;

    {
        u8 medals = LOADED_SAVE->collectedMedals[zone][var_r6];
        for (var_r4 = 0; var_r4 < 3; var_r4++) {
            strc->unk7[var_r4] = GetBit(medals, 2 - var_r4);
        }
    }

    if (gStageData.gameMode == GAME_MODE_DEMO) {
        strc->unk7[0] = 1;
        strc->unk7[1] = 1;
        strc->unk7[2] = 1;
    }
    gDispCnt |= DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gBgPalette[0] = sub_80C4C0C(0x7FFF);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    gWinRegs[WINREG_WININ] = 0x3F10;
    gWinRegs[WINREG_WINOUT] = 0x3F;
    gBldRegs.bldCnt = 0x3FEF;
    gBldRegs.bldY = 0x10;

    var_r2 = VramMalloc(156);
    s = &strc->sprites20[0];

    if (LOADED_SAVE->language != JAPANESE) {
        var_r3 = 9;
    } else {
        var_r3 = 0;
    }

    s->tiles = var_r2;
    s = &strc->sprites20[0];
    s->oamFlags = 0;
    s->anim = gUnknown_080D1D88[strc->unk1 + var_r3].anim;
    s->variant = gUnknown_080D1D88[strc->unk1 + var_r3].variant;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x3000;
    sp1C = var_r2;
    UpdateSpriteAnimation(s);
    var_r2 = var_r2 + 0x380;

    for (var_r4 = 0; var_r4 < 3; var_r4++) {
        s = &strc->spritesC0[var_r4];
        s->tiles = var_r2;
        s->oamFlags = 0;
        s->anim = ANIM_ACT_MEDALS;
        s->variant = var_r4;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = 0x3000;
        UpdateSpriteAnimation(s);
        var_r2 += 0x200;
    }
    var_r2 += 0x200;

    s = &strc->sprites20[1];
    strc->sprites20[1].tiles = var_r2;
    s->oamFlags = 0;
    s->anim = ANIM_CHARACTER_NAMES;
    s->variant = strc->unk3;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0;
    sp1C = var_r2;
    UpdateSpriteAnimation(s);
    var_r2 += 0xE0;

    s = &strc->sprites20[2];
    strc->sprites20[2].tiles = var_r2;
    s->oamFlags = 0;
    s->anim = ANIM_CHARACTER_NAMES;
    s->variant = strc->unk4;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0;
    sp1C = var_r2;
    UpdateSpriteAnimation(s);
    var_r2 += 0xE0;

    s = &strc->sprite98;
    s->tiles = var_r2;
    s->oamFlags = 0;
    s->anim = ANIM_CHARACTER_NAMES;
    s->variant = 5;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0;
    sp1C = var_r2;
    UpdateSpriteAnimation(s);
    var_r2 += 0x40;

    s = &strc->sprite138;
    s->tiles = var_r2;
    s->oamFlags = 0;
    s->anim = ANIM_ACT_EMBLEM;
    s->variant = strc->unk2;
    s->qAnimDelay = 0;
    s->prevVariant |= ~0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 200;
    s->y = 150;
    s->frameFlags = (gNextFreeAffineIndex++ | 0x60);
    UpdateSpriteAnimation(s);

    temp_r1_5 = &strc->tf;
    temp_r1_5->x = s->x;
    temp_r1_5->y = s->y;
    temp_r1_5->rotation = 0;

    if (gStageData.zone == 8) {
        strc->unk4 = 5;
    }
}

// (99.18%) https://decomp.me/scratch/FLvBg
NONMATCH("asm/non_matching/game/stage/intro__Task_70_8057054.inc", void Task_70_8057054(void))
{
    s32 var_r1;
    s32 zone;
    StageIntro_70 *strc70 = TASK_DATA(gCurTask);
    Background *bg;
    Sprite *s;

    strc70->unk1 += 8;
    strc70->unk2 -= 8;
    if (strc70->unk1 < 68) {
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(strc70->unk1, strc70->unk2);
        return;
    }
    strc70->unk1 = 68;
    strc70->unk2 = 92;
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(strc70->unk1, strc70->unk2);
    zone = gStageData.zone;
    bg = &strc70->bg;
    bg->graphics.dest = (void *)(BG_VRAM + 0x8000);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)(BG_VRAM + 0xA000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 354;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 21;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->flags = 0x10;
    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);

    gDispCnt |= DISPCNT_BG0_ON;
    gBgCntRegs[0] = BGCNT_SCREENBASE(20) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(0);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = (zone * 24) - 68;
    DmaCopy16(3, &Palette_unknown_354[7 * PALETTE_LEN_4BPP], &gBgPalette[7 * PALETTE_LEN_4BPP],
              ((9 * PALETTE_LEN_4BPP) * sizeof(ColorRaw)));
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;

    var_r1 = (LOADED_SAVE->language != JAPANESE) ? 9 : 0;

    s = &strc70->s;
    s->tiles = VramMalloc(gUnknown_080D1D88[zone += var_r1].numTiles);
    s->anim = gUnknown_080D1D88[zone].anim;
    s->variant = gUnknown_080D1D88[zone].variant;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->x = 168;
    s->y = DISPLAY_CENTER_Y;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
    strc70->unk4 = 0x3C;
    gWinRegs[WINREG_WININ] = 0x3F00;
    gBldRegs.bldCnt = 0xAE;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    gCurTask->main = Task_70_8057F7C;
}
END_NONMATCH

void Task_70_805722C()
{
    StageIntro_70 *strc70 = TASK_DATA(gCurTask);

    strc70->unk1 += 4;
    strc70->unk2 -= 4;
    if (strc70->unk1 < strc70->unk2) {
        DisplaySprite(&strc70->s);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(strc70->unk1, strc70->unk2);
        return;
    }
    gDispCnt = (0xBEFF & gDispCnt) | 0x2000;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    VramFree(strc70->s.tiles);
    gWinRegs[WINREG_WININ] = 0x3F;
    gWinRegs[WINREG_WINOUT] = 0;
    gBldRegs.bldCnt = 0xFF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    strc70->unk3 = 0x10;
    gCurTask->main = Task_70_80572CC;
}

void Task_70_80572CC()
{
    StageIntro_70 *strc70 = TASK_DATA(gCurTask);

    strc70->unk3 -= 1;
    gBldRegs.bldY = strc70->unk3;
    if (strc70->unk3 == 0) {
        if ((gStageData.gameMode > 4U) && (gStageData.gameMode != 7)) {
            gStageData.unk4 = 2;
        } else {
            gStageData.unk4 = 3;
        }

        gDispCnt &= 0xDFFF;
        TaskDestroy(gCurTask);
    }
}

void Task_170_805732C()
{
    Sprite *s;
    s16 temp_r1;
    u16 temp_r0;
    StageIntro_170 *strc170 = TASK_DATA(gCurTask);

    s = strc170->sprites20;
    strc170->unkA++;
    strc170->unk5 = ((strc170->unkA * 7) >> 1) + 80;
    if (strc170->unkA > 8U) {
        if (strc170->unkC != 0) {
            strc170->unkC -= 0x10;
        }

        sub_80578EC(1, 0);
    } else {
        sub_80578EC(1, 1);
    }
    if (strc170->unkA == 0x10) {
        strc170->unkA = 0;
        gCurTask->main = Task_170_80573AC;
    }
    sub_8057848();
    s->y = strc170->unk5;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_170_80573AC()
{
    Sprite *s;
    s16 var_r1;
    s16 var_r2;
    s16 var_r3;
    s16 var_r5;
    s16 var_r8;
    u8 i;
    StageIntro_170 *strc170 = TASK_DATA(gCurTask);
    SpriteTransform *tf;

    if (strc170->unkC != 0) {
        strc170->unkC -= 0x10;
    }
    s = &strc170->sprites20[0];
    strc170->unkA++;
    if (strc170->unkA == 105) {
        strc170->unkA = 0;
        gCurTask->main = Task_170_80575F0;
        gCurTask->main();
        return;
    }
    if (strc170->unkA != 0) {
        s->x = (strc170->unkA * 10) + 120;
        if (s->x >= gUnknown_080D1D58[(strc170->unk0 * 9) + strc170->unk1]) {
            s->x = gUnknown_080D1D58[(strc170->unk0 * 9) + strc170->unk1];
        }
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    if (strc170->unkA <= 0x10U) {
        var_r1 = strc170->unkA;
    } else {
        var_r1 = 0x10;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc170->unk7); i++) {
        if (strc170->unk7[i] != 0) {
            s = &strc170->spritesC0[i];
            s->x = (var_r1 * 6) - ((2 - i) << 5);
            s->y = strc170->unk5;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }

    if (strc170->unkA > 0x10U) {
        var_r3 = 0;
        if (strc170->unkA > 0x24U) {
            var_r2 = 0;
        } else {
            var_r2 = 2 & strc170->unkA;
        }
    } else {
        var_r2 = 0;
        var_r3 = 0x10 - strc170->unkA;
    }

    s = &strc170->sprite138;
    tf = &strc170->tf;
    s->x = var_r2 + 0xC7;
    s->frameFlags = (gNextFreeAffineIndex++ | 0x60);
    tf->qScaleX = ((var_r3 * 16)) + Q(1);
    tf->qScaleY = ((var_r3 * 16)) + Q(1);
    tf->x = s->x;
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    strc170->unk1C += 0x20;
    strc170->unk10 += strc170->unk18;
    strc170->unk14 += strc170->unk1C;
    var_r5 = I(strc170->unk10);
    var_r8 = I(strc170->unk14);

    if (var_r5 < DISPLAY_WIDTH - 20) {
        var_r5 = DISPLAY_WIDTH - 20;
    }
    if (var_r8 > DISPLAY_HEIGHT - 40) {
        var_r8 = DISPLAY_HEIGHT - 40;
    }

    var_r5 = var_r5 - gUnknown_080D1D7C[strc170->unk4][1];
    s = &strc170->sprites20[2];
    s->x = var_r5;
    s->y = var_r8;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    var_r5 = var_r5 - gUnknown_080D1D7C[strc170->unk4][0];
    var_r5 -= 5;
    s = &strc170->sprite98;
    s->x = var_r5;
    s->y = var_r8;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    var_r5 -= 5;
    var_r5 -= gUnknown_080D1D7C[strc170->unk3][1];
    s = &strc170->sprites20[1];
    s->x = var_r5;
    s->y = var_r8;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    sub_8057848();
    sub_80578EC(1, 0);
}

void Task_170_80575F0()
{
    Sprite *s;
    s16 temp_r5;
    s16 temp_r4;
    u8 var_r6;

    StageIntro_170 *strc170 = TASK_DATA(gCurTask);
    strc170->unkA++;
    temp_r5 = (strc170->unkA * 0x14);
    if (strc170->unkA == 0xC) {
        if ((gStageData.zone == 8) && (gStageData.unkBA == 0) && (gStageData.gameMode != 5)) {
            strc170->notifText = (NotificationText *)EwramMalloc(sizeof(NotificationText));
            sub_80236C8(NULL, 0x2DU, strc170->notifText);
            strc170->notifText->unk1F = 1;
            gStageData.unk85 = 1;
            gStageData.unkBA = 1;
            gCurTask->main = Task_170_80577D4;
        } else {
            if (GAME_MODE_IS_MULTI_PLAYER(gStageData.gameMode) && (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK)) {
                gStageData.unk4 = 2;
            } else {
                gStageData.unk4 = 3;
            }
            TaskDestroy(gCurTask);
            return;
        }
    } else {
        s = &strc170->sprites20[0];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        for (var_r6 = 0; var_r6 < 3; var_r6++) {
            if (strc170->unk7[var_r6] != 0) {
                s = &strc170->spritesC0[var_r6];
                s->y = (s16)strc170->unk5;
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        }

        s = &strc170->sprite138;
        s->x = 200 - temp_r5;
        s->y = 150;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        temp_r4 = 0xDC;
        ;
        temp_r4 -= temp_r5;
        temp_r4 -= gUnknown_080D1D7C[strc170->unk4][1];
        s = &strc170->sprites20[2];
        s->x = temp_r4;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        temp_r4 -= gUnknown_080D1D7C[strc170->unk4][0];
        temp_r4 -= 5;
        s = &strc170->sprite98;
        s->x = (s16)temp_r4;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        temp_r4 -= 5;
        temp_r4 -= gUnknown_080D1D7C[strc170->unk3][1];

        s = &strc170->sprites20[1];
        s->x = temp_r4;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        strc170->unk6 = 0xB - (u8)strc170->unkA;
        sub_8057848();
    }
}

void Task_170_80577D4()
{
    u8 var_r0;
    NotificationText *textData;
    StageIntro_170 *strc170 = TASK_DATA(gCurTask);

    textData = strc170->notifText;
    if (sub_8023734(textData) != 0) {
        gCamera.SA2_LABEL(unk50) &= ~1;
        gStageData.unk85 = 0;

        if (GAME_MODE_IS_MULTI_PLAYER(gStageData.gameMode) && (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK)) {
            gStageData.unk4 = 2;
        } else {
            gStageData.unk4 = 3;
        }

        TaskDestroy(gCurTask);
        return;
    }

    sub_80239A8(textData);
}

// TODO: Match is weird...
void sub_8057848(void)
{
    s32 xForMatching;
    s16 x;
    s16 y;
    StageIntro_170 *strc170 = TASK_DATA(gCurTask);

    gDispCnt |= 0x6000;
    xForMatching = (strc170->unk5 - strc170->unk6) << 16;
    y = strc170->unk5 + strc170->unk6;
    x = xForMatching >> 16;
    if (xForMatching < 0) {
        x = 0;
    }
    if (y > DISPLAY_HEIGHT) {
        y = DISPLAY_HEIGHT;
    }
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(x, y);
    gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] = 0x3F10;
    gWinRegs[WINREG_WINOUT] = 0x3F;
    gBgPalette[0] = sub_80C4C0C(0x7FFFU);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    gBldRegs.bldCnt = 0x3FEF;
    gBldRegs.bldY = (strc170->unkC >> 4);
    gBldRegs.bldAlpha = 0x10 - (strc170->unkC >> 4);
}

void sub_80578EC(s32 arg0, s32 arg1)
{
    Player *p;
    PlayerSpriteInfo *psi;
    u8 i;
    Cheese *cheese;

    gStageData.unkBC = 0;
    if (arg0 != 0) {
        for (i = 0; i < (s32)ARRAY_COUNT(gPlayers); i++) {
            p = &gPlayers[i];
            if (p->charFlags.someIndex != 0) {
                psi = p->spriteInfoBody;
                psi->s.frameFlags |= 0x80;
                psi = p->spriteInfoLimbs;
                if (psi != NULL) {
                    psi->s.frameFlags |= 0x80;
                }
            }
        }

        if (gStageData.taskCheese != NULL) {
            Cheese *cheese = TASK_DATA(gStageData.taskCheese);
            cheese->s.frameFlags |= 0x80;
        }
        gStageData.unkBC |= 1;
    } else {
        for (i = 0; i < (s32)ARRAY_COUNT(gPlayers); i++) {
            p = &gPlayers[i];
            if (p->charFlags.someIndex != 0) {
                psi = p->spriteInfoBody;
                psi->s.frameFlags &= ~0x80;
                psi = p->spriteInfoLimbs;
                if (psi != NULL) {
                    psi->s.frameFlags &= ~0x80;
                }
            }
        }

        if (gStageData.taskCheese != NULL) {
            Cheese *cheese = TASK_DATA(gStageData.taskCheese);
            cheese->s.frameFlags &= ~0x80;
        }
    }
    if (arg1 != 0) {
        for (i = 0; i < (s32)ARRAY_COUNT(gPlayers); i++) {
            p = &gPlayers[i];
            if (p->charFlags.someIndex != 0) {
                p->moveState |= MOVESTATE_4000000;
            }
        }

        if (gStageData.taskCheese != NULL) {
            Cheese *cheese = TASK_DATA(gStageData.taskCheese);
            cheese->moveState |= CMS_INVISIBLE;
        }
        gStageData.unkBC |= 2;
    } else {
        for (i = 0; i < (s32)ARRAY_COUNT(gPlayers); i++) {
            p = &gPlayers[i];
            if (p->charFlags.someIndex != 0) {
                p->moveState &= ~MOVESTATE_4000000;
            }
        }

        if (gStageData.taskCheese != NULL) {
            Cheese *cheese = TASK_DATA(gStageData.taskCheese);
            cheese->moveState &= ~CMS_INVISIBLE;
        }
    }
}

void StageIntro_ShowZoneName(u16 arg0, u16 arg1, u8 arg2)
{
    s32 sp4;
    StageIntro_84 *strc84;

    gDispCnt = 0x1040;
    strc84 = TASK_DATA(TaskCreate(Task_84_8057B70, sizeof(StageIntro_84), 0x2100U, 0U, TaskDestructor_84_80580EC));
    strc84->unk0 = arg2;
    strc84->unk1 = 0;
    strc84->unk2 = 0;
    strc84->unk4 = 0;
    strc84->unk6 = arg1;
    strc84->unk8 = arg0;
    strc84->unkA = 0;
    strc84->unkC = 0;
    strc84->unk10 = 0xA0;
    strc84->unk14 = Q(168);
    strc84->unk18 = Q(80);

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

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
}
