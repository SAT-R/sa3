#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "multi_sio_stuff.h"
#include "game/stage.h"
#include "constants/animations.h"

// TODO: Make sense of the various sprite array sizes...
#define SPRITE_COUNT_A     8
#define SPRITE_COUNT_B     5
#define SPRITE_COUNT_TOTAL (SPRITE_COUNT_A + SPRITE_COUNT_B)
typedef struct {
    union {
        struct {
            /* 0x000 */ Sprite sprites0[SPRITE_COUNT_A];
            /* 0x140 */ Sprite sprites140[SPRITE_COUNT_B];
        } split;

        Sprite spritesAll[SPRITE_COUNT_TOTAL];
    } s;
    /* 0x208 */ SpriteTransform tf;
    /* 0x214 */ ColorRaw palette214[16];
    /* 0x234 */ u8 unk234;
} StageUiSinglePak; /* 0x238 */

void Task_8022FEC();
void sub_8022E84(void);
bool8 IsOpponentOnScreen();

void sub_8022978(void);
void sub_8022A24(void);
void sub_8022B30(StageUiSinglePak *strc);

extern const u8 gUnknown_080CE438[][2];
extern const u8 gUnknown_080CE4B2[][2];
extern const u16 gUnknown_080CEE40[4][16];

#define VRAM_BASE_SINGLEPAK_UI (u8 *)(OBJ_VRAM0 + 0x2000)

// TODO: Take this from pre-compiled graphics info data
#define INDICATOR_WIDTH 16

void sub_8022978(void)
{
    u32 seconds;
    u32 temp_r0_2;
    u16 temp_r0_3;
    u32 temp_r4;
    u16 index;
    u16 temp_r4_2;
    StageUiSinglePak *strc = TASK_DATA(gCurTask);
    Sprite *s;

    seconds = Div(gStageData.levelTimer, 60);
    temp_r4 = seconds;
    index = (gStageData.levelTimer - (seconds * 60));
    temp_r4 = (u16)temp_r4;
    s = &strc->s.split.sprites0[6];
    s->variant = gUnknown_080CE4B2[index][0] + 16;
    s = &strc->s.split.sprites0[7];
    s->variant = gUnknown_080CE4B2[index][1] + 16;
    temp_r0_2 = Div(temp_r4, 60);
    temp_r4 = (temp_r4 - (temp_r0_2 * 60));

    temp_r4_2 = temp_r4;
    temp_r0_3 = temp_r0_2;
    s = &strc->s.split.sprites0[4];
    s->variant = gUnknown_080CE438[temp_r4_2][0] + 16;
    s = &strc->s.split.sprites0[5];
    s->variant = gUnknown_080CE438[temp_r4_2][1] + 16;
    s = &strc->s.split.sprites0[3];
    s->variant = temp_r0_3 + 16;
}

// TODO: Make this color-format-independent!
void sub_8022A24(void)
{
    s32 temp_r5;
    s8 temp_r4_2;
    s8 i;
    u16 temp_r3;
    u16 temp_r0;
    u8 *temp_r3_2;
    u8 temp_r1;
    u8 temp_r4;
    s8 var_r0;
    s8 local_var;
    u32 channelMask;

    StageUiSinglePak *strc = TASK_DATA(gCurTask);

    if (gStageData.mpOpponentPlayerIndex < NUM_MULTI_PLAYER_CHARS) {
        strc->unk234 = (strc->unk234 + 1) % 64u;
        if (0x20 & strc->unk234) {
            var_r0 = 0x40 - strc->unk234;
        } else {
            var_r0 = strc->unk234;
        }

        for (i = 0, local_var = var_r0; i < (s32)ARRAY_COUNT(strc->palette214); i++) {
            ColorRaw r, g, b;

            temp_r3 = gUnknown_080CEE40[gStageData.mpOpponentPlayerIndex][i];

            temp_r0 = (31 * (32 - local_var)) >> 5;
            r = ((((temp_r3 & 0x1F) * local_var) >> 5) + temp_r0) & 0x1F;
            g = (((((temp_r3 >> 5) & 0x1F) * local_var) >> 5) + temp_r0) & 0x1F;
            b = (((((temp_r3 >> 10) & 0x1F) * local_var) >> 5) + temp_r0) & 0x1F;
            strc->palette214[i] = r | (g << 5) | b << 10;
        }

        DmaCopy16(3, &strc->palette214[0], &gObjPalette[8 * PALETTE_LEN_4BPP], sizeof(strc->palette214));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}

void sub_8022B30(StageUiSinglePak *strc)
{
    Sprite spriteTemplate;
    s32 sp28;
    Sprite *s;
    s16 i;
    void *tiles;

    CpuFill32(0, &spriteTemplate, sizeof(spriteTemplate));
    spriteTemplate.prevAnim = -1;
    spriteTemplate.prevVariant = -1;
    spriteTemplate.animSpeed = SPRITE_ANIM_SPEED(1.0);
    spriteTemplate.hitboxes[0].index = -1;

    s = &strc->s.spritesAll[0];
    for (i = 0; i < (s32)ARRAY_COUNT(strc->s.spritesAll); i++, s++) {
        CpuCopy32(&spriteTemplate, s, sizeof(spriteTemplate));
    }

    s = &strc->s.spritesAll[0];
    tiles = VRAM_BASE_SINGLEPAK_UI;
    s->tiles = tiles;
    s->anim = 1421;
    s->variant = 0;
    s->x = 140;
    s->y = 10;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 26;
    s->x = 180;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 26;
    s->x = 210;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 16;
    s->x = 170;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 16;
    s->x = 190;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 16;
    s->x = 200;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 16;
    s->x = 220;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_ASCII;
    s->variant = 16;
    s->x = 230;
    s->y = 20;
    tiles += 2 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_VS_CHAO_ICON;
    s->variant = 0;
    s->frameFlags |= 0x40000;
    s->palId = 0;
    s->x = 10;
    s->y = 2;
    tiles += 6 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_VS_CHAO_ICON;
    s->variant = 0;
    s->frameFlags |= 0x40000;
    s->palId = 1;
    s->x = 30;
    s->y = 2;
    tiles += 6 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_VS_CHAO_ICON;
    s->variant = 0;
    s->frameFlags |= 0x40000;
    s->palId = 2;
    s->x = 50;
    s->y = 2;
    tiles += 6 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_VS_CHAO_ICON;
    s->variant = 0;
    s->frameFlags |= 0x40000;
    s->palId = 3;
    s->x = 70;
    s->y = 2;
    tiles += 6 * TILE_SIZE_4BPP;

    s++;
    s->tiles = tiles;
    s->anim = ANIM_INDICATOR_SONIC;
    s->variant = 0;
    s->frameFlags |= 0x40020 | gNextFreeAffineIndex;
    s->palId = 8;
    s->x = 120;
    s->y = 140;
    tiles += 4 * TILE_SIZE_4BPP;

    gNextFreeAffineIndex += 1;
    strc->tf.rotation = 0;
    strc->tf.qScaleX = Q(1);
    strc->tf.qScaleY = Q(1);
    strc->tf.x = 120;
    strc->tf.y = 140;
    TransformSprite(s, &strc->tf);

    s = &strc->s.spritesAll[0];
    for (i = 0; i < (s32)ARRAY_COUNT(strc->s.spritesAll); i++, s++) {
        UpdateSpriteAnimation(s);
    }
}

void sub_8022D40()
{
    Sprite *var_r4;
    Sprite *s2;
    s16 i;
    u32 var_r6;
    u32 timer;
    u32 max;
    u8 pPalId;

    StageUiSinglePak *strc = TASK_DATA(gCurTask);

    for (i = 0; i < SPRITE_COUNT_B - 1; i++) {
        if (gStageData.mpOpponentPlayerIndex == i) {
            strc->s.split.sprites140[i].palId = 8;
        } else {
            strc->s.split.sprites140[i].palId = i;
        }
    }

    if ((gStageData.mpOpponentPlayerIndex != gStageData.playerIndex) && (gStageData.mpOpponentPlayerIndex != 0xFF)
        && !IsOpponentOnScreen()) {
        sub_8022E84();
        var_r4 = &strc->s.split.sprites140[SPRITE_COUNT_B - 1];
        UpdateSpriteAnimation(var_r4);
        DisplaySprite(var_r4);
    }
    var_r4 = &strc->s.split.sprites140[0];
    for (i = 0; i < 4; i++, var_r4++) {
        if (GetBit(gUnknown_03001060.unk7, i)) {
            UpdateSpriteAnimation(var_r4);
            DisplaySprite(var_r4);
        }
    }
    var_r4 = &strc->s.spritesAll[0];
    UpdateSpriteAnimation(var_r4);
    DisplaySprite(var_r4);

#define SPR_ITER_COUNT 2
    var_r4 = &strc->s.spritesAll[1];
    for (i = 0; i < SPR_ITER_COUNT; i++, var_r4++) {
        UpdateSpriteAnimation(var_r4);
        DisplaySprite(var_r4);
    }

    if ((gStageData.levelTimer < TIME(1, 0)) && (gStageData.levelTimer & 0x10)) {
        var_r6 = 1;
    } else {
        var_r6 = 0;
    }

    for (i = 0; i < (SPRITE_COUNT_A - SPR_ITER_COUNT - 1); i++, var_r4++) {
        UpdateSpriteAnimation(var_r4);
        var_r4->palId = (u8)var_r6;
        DisplaySprite(var_r4);
        var_r4->palId = 0;
    }
#undef SPR_ITER_COUNT
}

void sub_8022E84()
{
    Player *player;
    Player *opponent;
    s16 indicatorX;
    s16 indicatorY;
    Sprite *s;
    SpriteTransform *tf;
    StageUiSinglePak *strc = TASK_DATA(gCurTask);

    player = &gPlayers[gStageData.playerIndex];
    opponent = &gPlayers[gStageData.mpOpponentPlayerIndex];
    s = &strc->s.split.sprites140[4];
    indicatorX = I(player->qWorldX - opponent->qWorldX);
    indicatorY = I(player->qWorldY - opponent->qWorldY);
    s->frameFlags = 0x40020 | gNextFreeAffineIndex;
    gNextFreeAffineIndex++;

    strc->tf.rotation = (sa2__sub_8004418(indicatorY >> 2, indicatorX >> 2) - Q(1)) & 0x3FF;

    indicatorX = -indicatorX;
    indicatorX += (I(player->qWorldX) - gCamera.x);
    indicatorY = -indicatorY;
    indicatorY += (I(player->qWorldY) - gCamera.y);

    if (indicatorX < INDICATOR_WIDTH) {
        indicatorX = INDICATOR_WIDTH;
    } else if (indicatorX > DISPLAY_WIDTH - INDICATOR_WIDTH) {
        indicatorX = DISPLAY_WIDTH - INDICATOR_WIDTH;
    }

    if (indicatorY < INDICATOR_WIDTH + 8) {
        indicatorY = INDICATOR_WIDTH + 8;
    } else if (indicatorY > DISPLAY_HEIGHT - INDICATOR_WIDTH) {
        indicatorY = DISPLAY_HEIGHT - INDICATOR_WIDTH;
    }
    strc->tf.x = indicatorX;
    strc->tf.y = indicatorY;
    TransformSprite(s, &strc->tf);
}

void CreateSinglePakStageUI(void)
{
    StageUiSinglePak *strc;

    strc = TASK_DATA(TaskCreate(Task_8022FEC, sizeof(StageUiSinglePak), 0x2100U, 0U, NULL));
    sub_8022B30(strc);
    strc->unk234 = 0;
}

void Task_8022FEC(void)
{
    sub_8022978();
    sub_8022A24();
    sub_8022D40();
}

bool8 IsOpponentOnScreen(void)
{
    Player *opponent = &gPlayers[gStageData.mpOpponentPlayerIndex];
    Sprite2 *s = &opponent->spriteInfoBody->s;

    if ((s->x > 0) && (s->x < DISPLAY_WIDTH) && (s->y > 0) && (s->y < DISPLAY_HEIGHT)) {
        return TRUE;
    }
    return FALSE;
}
