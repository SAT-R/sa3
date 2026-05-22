#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "module_unclear.h"
#include "game/stage.h"
#include "constants/animations.h"

typedef struct {
    /* 0x000 */ Sprite sprites0[13];
    /* 0x208 */ SpriteTransform tf;
    /* 0x214 */ ColorRaw palette214[16];
    /* 0x234 */ u8 unk234;
} StageUiSinglePak; /* 0x238 */

void Task_8022FEC();
void sub_8022E84(void);
bool8 sub_8023000();

void sub_8022978(void);
void sub_8022A24(void);
void sub_8022B30(StageUiSinglePak *strc);

extern const u8 gUnknown_080CE438[][2];
extern const u8 gUnknown_080CE4B2[][2];
extern const u16 gUnknown_080CEE40[4][16];

#define VRAM_BASE_SINGLEPAK_UI (u8 *)(OBJ_VRAM0 + 0x2000)

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
    s = &strc->sprites0[6];
    s->variant = gUnknown_080CE4B2[index][0] + 16;
    s = &strc->sprites0[7];
    s->variant = gUnknown_080CE4B2[index][1] + 16;
    temp_r0_2 = Div(temp_r4, 60);
    temp_r4 = (temp_r4 - (temp_r0_2 * 60));

    temp_r4_2 = temp_r4;
    temp_r0_3 = temp_r0_2;
    s = &strc->sprites0[4];
    s->variant = gUnknown_080CE438[temp_r4_2][0] + 16;
    s = &strc->sprites0[5];
    s->variant = gUnknown_080CE438[temp_r4_2][1] + 16;
    s = &strc->sprites0[3];
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

    if ((u32)gStageData.unk8E <= 3U) {
        strc->unk234 = (strc->unk234 + 1) % 64u;
        if (0x20 & strc->unk234) {
            var_r0 = 0x40 - strc->unk234;
        } else {
            var_r0 = strc->unk234;
        }

        for (i = 0, local_var = var_r0; i < (s32)ARRAY_COUNT(strc->palette214); i++) {
            ColorRaw r, g, b;

            temp_r3 = gUnknown_080CEE40[gStageData.unk8E][i];

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

    s = &strc->sprites0[0];
    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites0); i++, s++) {
        CpuCopy32(&spriteTemplate, s, sizeof(spriteTemplate));
    }

    s = &strc->sprites0[0];
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

    s = &strc->sprites0[0];
    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites0); i++, s++) {
        UpdateSpriteAnimation(s);
    }
}

// (95.80%) https://decomp.me/scratch/Ylee6
NONMATCH("asm/non_matching/game/stage_ui_sp__sub_8022D40.inc", void sub_8022D40(void))
{
    Sprite *var_r4;
    Sprite *s2;
    s16 var_r5;
    u32 var_r6;
    u32 timer;
    u32 max;
    u8 pPalId;

    StageUiSinglePak *strc = TASK_DATA(gCurTask);

    for (var_r5 = 0; var_r5 < 4; var_r5++) {
        if (gStageData.unk8E == var_r5) {
            s2 = &strc->sprites0[var_r5 + 8];
            s2->palId = 8;
        } else {
            s2 = &strc->sprites0[var_r5 + 8];
            s2->palId = var_r5;
        }
    }

    if ((gStageData.unk8E != gStageData.playerIndex) && (gStageData.unk8E != 0xFF) && !sub_8023000()) {
        sub_8022E84();
        var_r4 = &strc->sprites0[12];
        UpdateSpriteAnimation(var_r4);
        DisplaySprite(var_r4);
    }

    var_r4 = &strc->sprites0[8];
    for (var_r5 = 0; var_r5 < 4; var_r5++, var_r4++) {
        if (GetBit(gUnknown_03001060.unk7, var_r5)) {
            UpdateSpriteAnimation(var_r4);
            DisplaySprite(var_r4);
        }
    }

    var_r4 = &strc->sprites0[0];
    UpdateSpriteAnimation(var_r4);
    DisplaySprite(var_r4);
    var_r4++;
    for (var_r5 = 0; var_r5 < 2; var_r5++, var_r4++) {
        UpdateSpriteAnimation(var_r4);
        DisplaySprite(var_r4);
    }

    timer = gStageData.levelTimer;
    max = TIME(1, 0) - 1;
    var_r6 = 0;
    if (timer <= max) {
        var_r6 = (u32)(0 - (u16)(0x10 & timer)) >> 0x1F;
    }

    for (var_r5 = 0; var_r5 < 5; var_r5++, var_r4++) {
        UpdateSpriteAnimation(var_r4);
        var_r4->palId = (u8)var_r6;
        DisplaySprite(var_r4);
        var_r4->palId = 0;
    }
}
END_NONMATCH

#if 0
void sub_8022E84(void *arg0) {
    void *sp0;
    Player *temp_r0;
    Player *temp_r6;
    Sprite *temp_r1;
    s16 temp_r0_2;
    s16 temp_r4_2;
    u16 temp_r4;
    u16 var_r5;
    u16 var_r7;
    u32 temp_r5;
    u32 temp_r7;

    temp_r6 = &gPlayers[gStageData.playerIndex];
    temp_r0 = &gPlayers[gStageData.unk8E];
    temp_r1 = arg0 + 0x1E0;
    temp_r7 = (u32) ((temp_r6->qWorldX - temp_r0->qWorldX) << 8) >> 0x10;
    temp_r5 = (u32) ((temp_r6->qWorldY - temp_r0->qWorldY) << 8) >> 0x10;
    temp_r1->frameFlags = gNextFreeAffineIndex | 0x40020;
    gNextFreeAffineIndex += 1;
    sp0 = arg0;
    arg0->unk208 = (s16) ((sa2__sub_8004418((s16) ((s32) (temp_r5 << 0x10) >> 0x12), (s16) ((s32) (temp_r7 << 0x10) >> 0x12)) + 0xFFFFFF00) & 0x3FF);
    temp_r4 = (s16) (0 - (s16) temp_r7) + (((s32) temp_r6->qWorldX >> 8) - gCamera.x);
    var_r5 = (s16) (0 - (s16) temp_r5) + (((s32) temp_r6->qWorldY >> 8) - gCamera.y);
    var_r7 = temp_r4;
    temp_r4_2 = (s16) temp_r4;
    if ((s32) temp_r4_2 <= 0xF) {
        var_r7 = 0x10;
    } else if ((s32) temp_r4_2 > 0xE0) {
        var_r7 = 0xE0;
    }
    temp_r0_2 = (s16) var_r5;
    if ((s32) temp_r0_2 <= 0x17) {
        var_r5 = 0x18;
    } else if ((s32) temp_r0_2 > 0x90) {
        var_r5 = 0x90;
    }
    arg0->unk20E = var_r7;
    arg0->unk210 = var_r5;
    TransformSprite(temp_r1, arg0 + 0x208);
}

void CreateSinglePakStageUI(void) {
    u16 temp_r4;

    temp_r4 = TaskCreate(Task_8022FEC, 0x238U, 0x2100U, 0U, NULL)->data;
    sub_8022B30((StageUiSinglePak *) temp_r4);
    temp_r4->unk234 = 0;
}

void Task_8022FEC(void) {
    sub_8022978(NULL);
    sub_8022A24(NULL);
    sub_8022D40(NULL);
}

s32 sub_8023000(void) {
    PlayerSpriteInfo *temp_r0;
    s16 temp_r0_2;

    temp_r0 = gPlayers[gStageData.unk8E].spriteInfoBody;
    if ((u32) (u16) ((u16) temp_r0->s.x - 1) <= 0xEEU) {
        temp_r0_2 = temp_r0->s.y;
        if (((s32) temp_r0_2 > 0) && ((s32) temp_r0_2 <= 0x9F)) {
            return 1;
        }
    }
    return 0;
}
#endif
