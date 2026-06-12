#include "global.h"
#include "core.h"
#include "code_0_1.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/chao.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    s16 unk4;
    s16 unk6;
} ChaoMapPos;

typedef struct {
    /* 0x000 */ s16 unk0;
    /* 0x002 */ s16 unk2;
    /* 0x004 */ s16 unk4;
    /* 0x006 */ s16 unk6;
    /* 0x008 */ Background bg8;
    /* 0x048 */ Background bg48;
    /* 0x088 */ Background bg88;
    /* 0x0C8 */ Sprite spritesC8[6];
    /* 0x1B8 */ Vec2_16 positions1B8[40];
    /* 0x258 */ ChaoMapPos positions[7 * 10];
    /* 0x488 */ Sprite sprites488[7];
} ChaoMap; /* 0x5A0 */

void sub_802304C(ChaoMap *chaomap);
void ChaoMap_InitSprites(ChaoMap *chaomap);
void ChaoMap_DestroySprites(void);
void sub_8023354(void);
void Task_80233C8(void);
void sub_8023440(void);
void Task_ChaoMap(void);

extern u16 gTilemapIdsChaoMap;
extern u8 gUnknown_080CEECC[];
extern u8 gUnknown_080D0410[7][10][2];
extern const u16 sChaoIATilesInfo[3][2];

void sub_802304C(ChaoMap *chaomap)
{
    u16 sp00[6];
    Background *bg;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;

    memcpy(&sp00, &gTilemapIdsChaoMap, sizeof(sp00));
    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x0700;
    gBgCntRegs[1] = 0x8E06;
    gBgCntRegs[2] = 0x970B;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    bg = &chaomap->bg8;
    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0x3800);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = sp00[gStageData.language];
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 32;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->flags = 0;
    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);

    bg = &chaomap->bg48;
    bg->graphics.dest = (void *)(BG_VRAM + 0x4000);
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0x7000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 453;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 64;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->flags = 1;
    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);

    bg = &chaomap->bg88;
    bg->graphics.dest = (void *)(BG_VRAM + 0x8000);
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0xB800);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 454;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 32;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->flags = 2;
    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);
}

void ChaoMap_InitSprites(ChaoMap *chaomap)
{
    u8 chaoIds[10];
    s32 sp10;
    s32 sp14;
    s32 var_r1;
    s16 var_r0_2;
    s16 i;
    s16 zone;
    Sprite *s;
    Sprite *s2;
    ChaoMapPos *pos;

    // TODO: Remove memcpy!
    memcpy(chaoIds, gUnknown_080CEECC, sizeof(chaoIds));

    // TODO: If possible, match without this two-step declaration of s!
    s2 = &chaomap->spritesC8[0];
    for (i = 0; i < 6; i++, s2 = ++s) {
        s = s2;
        s->tiles = VramMalloc(0x10U);
        s->frameFlags = 0x2000;
        s->anim = sChaoIATilesInfo[i][0];
        s->x = 0;
        s->y = 0;
        s->oamFlags = (s16)(i << 6);
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = sChaoIATilesInfo[i][1];
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
#ifndef BUG_FIX
        // BUG: No space is reserved for a 2nd hitbox because chaomap->spritesC8 is type Sprite, not Sprite2!
        s->hitboxes[1].index = -1;
#endif
    }

    pos = chaomap->positions;
    for (i = 0; i < 10; i++, pos++) {
        if (i < 5) {
            sp10 = 0x38;
            sp14 = 0x10;
            var_r0_2 = i;
        } else {
            sp10 = 0x4A;
            sp14 = 0x20;
            var_r0_2 = i - 5;
        }

        for (zone = 0; zone < 7; zone++) {
            if (GetChaoFlag(zone, chaoIds[i])) {
                s32 val;
                s32 val2;
                pos[zone * 10].unk0 = 1;

                pos[zone * 10].unk1 = val = gUnknown_080D0410[zone][i][0];
                if (val > 2U) {
                    var_r1 = 8;
                } else {
                    var_r1 = 0;
                }
                pos[zone * 10].unk2 = var_r1;
                pos[zone * 10].unk4 = sp10 + var_r0_2 * 32;
                val2 = zone * 48;
                val2 += 32;
                pos[zone * 10].unk6 = sp14 + (val2);
            } else {
                pos[zone * 10].unk0 = 0;
            }
        }
    }

    for (i = 0; i < 7; i++) {
        s = &chaomap->sprites488[i];
        s->tiles = VramMalloc(20);
        s->frameFlags = 0x1000;
        s->anim = ANIM_CHAOS_EMERALD_BIG;
        s->x = 120;
        s->y = 0;
        s->oamFlags = 0;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = (u8)i;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = i + 1;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

void sub_8023354(void)
{
    ChaoMap *chaomap = TASK_DATA(gCurTask);

    if ((DPAD_UP & gInput) && (chaomap->unk0 > 0)) {
        chaomap->unk0 = --chaomap->unk2;
    }

    if ((DPAD_DOWN & gInput) && (chaomap->unk0 < 5)) {
        chaomap->unk2++;
    }

    chaomap->unk6 = (chaomap->unk2 * 0x30);
    if (chaomap->unk6 > 0xD4) {
        chaomap->unk6 = 0xD4;
    }

    gCurTask->main = Task_80233C8;
}

void Task_80233C8(void)
{
    ChaoMap *chaomap = TASK_DATA(gCurTask);

    if (chaomap->unk6 < chaomap->unk4) {
        chaomap->unk4 -= 4;
        if (chaomap->unk6 > chaomap->unk4) {
            chaomap->unk4 = chaomap->unk6;
        }
    } else if (chaomap->unk6 > chaomap->unk4) {
        chaomap->unk4 += 4;
        if (chaomap->unk6 < chaomap->unk4) {
            chaomap->unk4 = chaomap->unk6;
        }
    }

    gBgScrollRegs[1][1] = chaomap->unk4;
    sub_8023440();

    if (chaomap->unk6 == chaomap->unk4) {
        chaomap->unk0 = chaomap->unk2;
        gCurTask->main = Task_ChaoMap;
    }
}

// (98.82%) https://decomp.me/scratch/wYxOV
NONMATCH("asm/non_matching/game/sa3/chao_map__sub_8023440.inc", void sub_8023440(void))
{
    Sprite *sprites;
    Sprite *s;
    s16 var_r4;
    s16 var_r2;
    s16 var_r3;
    s16 var_sb;
    s16 var_r1;
    s16 var_r8;
    Vec2_16 *var_r6;
    Vec2_16 *var_sl;
    ChaoMapPos *temp_r2;
    ChaoMap *chaomap = TASK_DATA(gCurTask);

    var_r1 = (chaomap->unk0 > 4) ? 4 : chaomap->unk0;

    var_r4 = var_r1 * 10;
    var_r2 = (var_r1 + 4) * 10;

    if (var_r2 > 70) {
        var_r2 = 70;
    }
    sprites = chaomap->spritesC8;
    var_sl = chaomap->positions1B8;

    for (var_sb = 0; var_sb < 6; var_sb++, sprites++) {
        s = sprites;
        var_r8 = 0;
        var_r6 = var_sl;
        var_r3 = var_r4;

        while (var_r3 < var_r2) {
            temp_r2 = &chaomap->positions[var_r3];
            if ((temp_r2->unk0 != 0) && (temp_r2->unk1 == var_sb)) {
                if (var_r8 == 0) {
                    s->x = temp_r2->unk4;
                    s->y = (temp_r2->unk6 + temp_r2->unk2) - chaomap->unk4;
                } else {
                    var_r6->x = temp_r2->unk4;
                    var_r6->y = (temp_r2->unk6 + temp_r2->unk2) - chaomap->unk4;
                    var_r6++;
                }
                var_r8++;
            }
            var_r3++;
        }
        UpdateSpriteAnimation(s);

        if (var_r8 != 0) {
            DisplaySprite(s);
        }
        if (var_r8 > 1) {
            DisplaySprites(s, (Vec2_16 *)var_sl, (u16)(u8)(var_r8 - 1));
            var_sl = var_r6;
        }
    }

    for (var_sb = 0; var_sb < 7; var_sb++) {
        if (GetBit(LOADED_SAVE->collectedEmeralds, var_sb)) {
            s = &chaomap->sprites488[var_sb];
            s->y = (var_sb * 0x30) - ((u16)chaomap->unk4 - 0x38);
            DisplaySprite(s);
        }
    }
}
END_NONMATCH

void ChaoMap_DestroySprites(void)
{
    ChaoMap *chaomap = TASK_DATA(gCurTask);
    Sprite *s = chaomap->spritesC8;
    s16 i;

    for (i = 0; i < 6; i++, s++) {
        if (s->tiles) {
            VramFree(s->tiles);
        }
    }

    for (i = 0; i < 7; i++) {
        VramFree(chaomap->sprites488[i].tiles);
    }

    WarpToMap(LEVEL_INDEX(ZONE_2, ACT_CHAO_PLAYGROUND), 1);
}

void CreateChaoMap(void)
{
    ChaoMap *temp_r4 = TASK_DATA(TaskCreate(Task_ChaoMap, sizeof(ChaoMap), 0x100U, 0U, NULL));
    sub_802304C(temp_r4);
    ChaoMap_InitSprites(temp_r4);
    MPlayStop(&gMPlayInfo_SE1);
    MPlayStop(&gMPlayInfo_SE2);
    MPlayStop(&gMPlayInfo_SE3);
    temp_r4->unk0 = 0;
    temp_r4->unk2 = 0;
    temp_r4->unk4 = 0;
    temp_r4->unk6 = 0;
}

void Task_ChaoMap(void)
{
    if (DPAD_VERTICAL & gInput) {
        sub_8023354();
    }

    if (SELECT_BUTTON & gPressedKeys) {
        ChaoMap_DestroySprites();
        return;
    }
    sub_8023440();
}
