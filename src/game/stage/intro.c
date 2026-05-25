#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/shared/stage/player.h"
#include "game/save.h"
#include "game/stage.h"

extern u8 gUnknown_080D1E18[6];
void sub_80578EC(s32, s32);
u32 sub_80C4C0C(u16 color);
extern const TileInfo2 gUnknown_080D1D88[];

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7[3];
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ Sprite sprites20[3];
    /* 0x98 */ Sprite sprite98;
    /* 0xC0 */ Sprite spritesC0[3];
    /* 0x138 */ Sprite sprite138;
    /* 0x160 */ SpriteTransform tf;
    /* 0x16C */ void *unk16C;
} Strc_170_StageIntro;

void Task_8057FE8(void);
void TaskDestructor_StageIntro(struct Task *t);

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
        s->anim = 862;
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
    s->anim = 0x35D;
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
    s->anim = 861;
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
    s->anim = 861;
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
    s->anim = 0x35C;
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
