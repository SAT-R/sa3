#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/shared/stage/player.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"

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
    /* 0x000 */ u8 unk0;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7[3];
    /* 0x00A */ s16 unkA;
    /* 0x00C */ s16 unkC;
    /* 0x010 */ s32 unk10;
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ Sprite sprites20[3];
    /* 0x098 */ Sprite sprite98;
    /* 0x0C0 */ Sprite spritesC0[3];
    /* 0x138 */ Sprite sprite138;
    /* 0x160 */ SpriteTransform tf;
    /* 0x16C */ void *unk16C;
} Strc_170_StageIntro;

void sub_8057054(void);
void Task_8057FE8(void);
void TaskDestructor_StageIntro(struct Task *t);
void sub_80578EC(s32, s32);
u32 sub_80C4C0C(u16 color);

extern u8 gUnknown_080D1E18[6];
extern const TileInfo2 gUnknown_080D1D88[];

void sub_8056AFC(u8 param0)
{
	struct Task *t = TaskCreate(sub_8057054, sizeof(StageIntro_70), 0x84 << 6, 0, NULL);
    StageIntro_70 *strc70 = TASK_DATA(t);

	strc70->unk0 = param0;
	strc70->unk4 = 0;
	strc70->unk1 = 0;
	strc70->unk2 = DISPLAY_HEIGHT;
	strc70->unk3 = 16;

	gDispCnt |= 0x4000;
	gDispCnt &= ~0x2000;

	gWinRegs[1] = WIN_RANGE(0, DISPLAY_WIDTH);
	gWinRegs[3] = WIN_RANGE(0, DISPLAY_HEIGHT);
	gWinRegs[4] = 0x3F00;
	gWinRegs[5] = 0;
	gBldRegs.bldCnt   = 0xBF;
	gBldRegs.bldAlpha = 0;
	gBldRegs.bldY     = 0x10;
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
    Strc_170_StageIntro *strc;
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

    strc = TASK_DATA(TaskCreate(Task_8057FE8, sizeof(Strc_170_StageIntro), 0x2100U, 0U, TaskDestructor_StageIntro));
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
    strc->unk16C = 0;

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
    gDispCnt |= 0x6000;
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[1] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[3] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gBgPalette[0] = sub_80C4C0C(0x7FFF);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    gWinRegs[4] = 0x3F10;
    gWinRegs[5] = 0x3F;
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

#if 0
void sub_8057054(StageIntro_70 *strc70)
{
    s32 sp0;
    TileInfo2 *temp_r4_3;
    s32 temp_r4_2;
    s32 var_r1;
    u8 temp_r1;
    u8 temp_r4;

    temp_r1 = strc70->unk1 + 8;
    strc70->unk1 = temp_r1;
    strc70->unk2 -= 8;
    if ((u32)temp_r1 <= 0x43U) {
        gWinRegs[3] = strc70->unk2 | (strc70->unk1 << 8);
        return;
    }
    strc70->unk1 = 0x44;
    strc70->unk2 = 0x5C;
    gWinRegs[3] = 0x4400 | 0x5C;
    temp_r4 = gStageData.zone;
    strc70->bg.graphics.dest = (void *)0x06008000;
    strc70->bg.graphics.anim = 0;
    strc70->bg.layoutVram = (u16 *)0x0600A000;
    strc70->bg.unk18 = 0;
    strc70->bg.unk1A = 0;
    strc70->bg.tilemapId = 0x162;
    strc70->bg.unk1E = 0;
    strc70->bg.unk20 = 0;
    strc70->bg.unk22 = 0;
    strc70->bg.unk24 = 0;
    strc70->bg.targetTilesX = 0x20;
    strc70->bg.targetTilesY = 0x15;
    strc70->bg.paletteOffset = 0;
    strc70->bg.animFrameCounter = 0;
    strc70->bg.animDelayCounter = 0;
    strc70->bg.flags = 0x10;
    strc70->bg.scrollX = 0;
    strc70->bg.scrollY = 0;
    sp0 = 0;
    DrawBackground(&strc70->bg);
    gDispCnt |= 0x100;
    *gBgCntRegs = 0x1408;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = (temp_r4 * 0x18) - 0x44;
    (void *)0x040000D4->unk0 = (void *)(&Palette_unknown_354 + 0xE0);
    (void *)0x040000D4->unk4 = &gBgPalette[0x70];
    (void *)0x040000D4->unk8 = 0x80000090;
    gFlags |= 1;
    var_r1 = 0;
    if (gLoadedSaveGame.unk366 != 0) {
        var_r1 = 9;
    }
    temp_r4_2 = temp_r4 + var_r1;
    sp0 = 0;
    strc70->s.tiles = VramMalloc(*((temp_r4_2 * 8) + &gUnknown_080D1D88->numTiles));
    temp_r4_3 = &gUnknown_080D1D88[temp_r4_2];
    strc70->s.anim = temp_r4_3->anim;
    strc70->s.variant = temp_r4_3->variant;
    strc70->s.oamFlags = 0x480;
    strc70->s.animCursor = 0;
    strc70->s.qAnimDelay = 0;
    strc70->s.prevVariant = 0xFF;
    strc70->s.animSpeed = 0x10;
    strc70->s.palId = 0;
    strc70->s.frameFlags = 0;
    strc70->s.x = 0xA8;
    strc70->s.y = 0x50;
    strc70->s.hitboxes[0].index = -1;
    sp0 = 0;
    UpdateSpriteAnimation(&strc70->s);
    strc70->unk4 = 0x3C;
    gWinRegs[4] = 0x3F00;
    gBldRegs.bldCnt = 0xAE;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    gCurTask->main = sub_8057F7C;
}
#endif
