#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/chao.h"
#include "game/save.h"
#include "game/shared/stage/player.h"
#include "game/stage.h"
#include "constants/animations.h"

void TaskDestructor_80227A4(Task *); /* extern */
void Task_34C_8022868(); /* extern */
Task *sub_8021EE8(); /* extern */
extern TileInfo gUnknown_080CECF8[12];
extern TileInfo sEmeraldOverviewZoneNums[];
extern TileInfo sEmeraldOverviewEmeraldNums[];
extern TileInfo sEmeraldOverviewEmeraldGotIcons[];
extern u8 gUnknown_080CEE20[5];
extern u8 gUnknown_080CEE25[5][5];

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ bool8 isExtended;
    /* 0x004 */ Sprite sprites[12];
    /* 0x1E4 */ Sprite sprite1E4;
    /* 0x20C */ Sprite sprite20C;
    /* 0x234 */ Sprite sprite234;
    /* 0x25C */ Sprite sprite25C;
    /* 0x284 */ Sprite sprite284;
    /* 0x2AC */ Sprite sprite2AC;
} StageUiBase; /* 0x2D4 */

typedef struct {
    /* 0x000 */ StageUiBase base;
    /* 0x2D4 */ Sprite sprite2D4;
    /* 0x2FC */ Sprite sprite2FC;
    /* 0x324 */ Sprite sprite324;
} StageUi; /* 0x34C */

Task *sub_80215A0(void)
{
    u8 sp4[5];
    u8 spC[5][5];
    Task *resultTask;
    Player *p;
    Player *partner;
    Sprite *s;
    u8 i;
    StageUi *strc;
    void *tiles;

    memcpy(&sp4, &gUnknown_080CEE20, sizeof(sp4));
    memcpy(&spC, &gUnknown_080CEE25, sizeof(spC));
    if (gStageData.act == ACT_BONUS_CAPSULE || gStageData.act == ACT_BONUS_ENEMIES) {
        return NULL;
    }
    if (gStageData.gameMode == 6) {
        return sub_8021EE8();
    }
    if (gStageData.currentLevel == 11) {
        resultTask = TaskCreate(Task_34C_8022868, sizeof(StageUi), 0x2100U, 0U, TaskDestructor_80227A4);
        strc = TASK_DATA(resultTask);
        strc->base.isExtended = 1;
    } else {
        resultTask = TaskCreate(Task_34C_8022868, sizeof(StageUiBase), 0x2100U, 0U, TaskDestructor_80227A4);
        strc = TASK_DATA(resultTask);
        strc->base.isExtended = 0;
    }
    strc->base.unk0 = 0x10;
    tiles = (OBJ_VRAM0 + 0x3800);
    for (i = 0; i < (s32)ARRAY_COUNT(strc->base.sprites); i++) {
        s = &strc->base.sprites[i];
        s->tiles = tiles + ((i * 2) * TILE_SIZE_4BPP);
        s->anim = gUnknown_080CECF8[i].anim;
        s->variant = gUnknown_080CECF8[i].variant;
        s->oamFlags = SPRITE_OAM_ORDER(6);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
    }
    tiles += (24 * TILE_SIZE_4BPP);

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);
    s = &strc->base.sprite1E4;
    s->tiles = tiles;
    s->anim = 1423;
    s->variant = sp4[p->charFlags.character];
    s->oamFlags = SPRITE_OAM_ORDER(5);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    if (gStageData.zone == ZONE_UNUSED) {
        s->variant = 5;
    }
    UpdateSpriteAnimation(s);
    tiles += 6 * TILE_SIZE_4BPP;

    s = &strc->base.sprite20C;
    s->tiles = tiles;
    s->anim = 1423;
    s->variant = sp4[partner->charFlags.character];
    s->oamFlags = 0x180;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    if (gStageData.zone == ZONE_UNUSED) {
        s->variant = 6;
    }
    UpdateSpriteAnimation(s);

    tiles += 6 * TILE_SIZE_4BPP;
    if (gStageData.gameMode != 5) {
        s = &strc->base.sprite234;
        s->tiles = tiles;
        s->anim = 0x58E;
        s->variant = 0;
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant |= -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
        tiles += 4 * TILE_SIZE_4BPP;
    }

    s = &strc->base.sprite25C;
    s->tiles = tiles;
    s->anim = 0x58C;
    s->variant = spC[p->charFlags.character][partner->charFlags.character];
    s->oamFlags = 0x180;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    tiles += 9 * TILE_SIZE_4BPP;

    s = &strc->base.sprite284;
    s->tiles = tiles;
    s->anim = 0x58D;
    s->variant = 0;
    s->oamFlags = 0x180;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &strc->base.sprite2AC;
    if ((gStageData.act < 3) && (gStageData.zone < 7)) {
        s->tiles = VramMalloc(32);
        s->anim = ANIM_ZONEX_NAME;
        s->variant = gStageData.zone;
        s->oamFlags = 0x180;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant |= -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    } else {
        s->tiles = NULL;
    }

    if (strc->base.isExtended == 1) {
        s16 zone = gStageData.zone;
        s16 chaoCount = GetChaoCount(zone);
        s = &strc->sprite2D4;
        s->tiles = VramMalloc(sEmeraldOverviewZoneNums[zone].numTiles);
        s->anim = sEmeraldOverviewZoneNums[zone].anim;
        s->variant = sEmeraldOverviewZoneNums[zone].variant;
        s->oamFlags = SPRITE_OAM_ORDER(3);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        s->x = 160;
        s->y = 40;
        UpdateSpriteAnimation(s);

        s = &strc->sprite2FC;
        s->tiles = VramMalloc(sEmeraldOverviewEmeraldNums[chaoCount].numTiles);
        s->anim = sEmeraldOverviewEmeraldNums[chaoCount].anim;
        s->variant = sEmeraldOverviewEmeraldNums[chaoCount].variant;
        s->oamFlags = SPRITE_OAM_ORDER(3);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        s->x = 180;
        s->y = 58;
        UpdateSpriteAnimation(s);

        s = &strc->sprite324;
        s->tiles = VramMalloc(sEmeraldOverviewEmeraldGotIcons[zone].numTiles);
        s->anim = sEmeraldOverviewEmeraldGotIcons[zone].anim;
        s->variant = sEmeraldOverviewEmeraldGotIcons[zone].variant;
        s->oamFlags = SPRITE_OAM_ORDER(3);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0;
        s->x = 208;
        s->y = 58;
        UpdateSpriteAnimation(s);
    }
    return resultTask;
}

void sub_80219E8(void)
{
    StageUi *strc = TASK_DATA(gCurTask);
    Sprite *s;

    u8 var_r2;

    for (var_r2 = 0; var_r2 < (s32)ARRAY_COUNT(strc->base.sprites); var_r2++) {
        s = &strc->base.sprites[var_r2];
        s->prevVariant = -1;
    }

    s = &strc->base.sprite1E4;
    s->prevVariant = -1;
    s = &strc->base.sprite20C;
    s->prevVariant = -1;
    s = &strc->base.sprite234;
    s->prevVariant = -1;
    s = &strc->base.sprite25C;
    s->prevVariant = -1;
    s = &strc->base.sprite284;
    s->prevVariant = -1;
    s = &strc->base.sprite2AC;
    s->prevVariant = -1;
}

#if 0
void sub_8021A64(void) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    Sprite *temp_r4_4;
    Sprite *temp_r7;
    Sprite *temp_r7_10;
    Sprite *temp_r7_11;
    Sprite *temp_r7_12;
    Sprite *temp_r7_13;
    Sprite *temp_r7_14;
    Sprite *temp_r7_15;
    Sprite *temp_r7_16;
    Sprite *temp_r7_17;
    Sprite *temp_r7_18;
    Sprite *temp_r7_2;
    Sprite *temp_r7_3;
    Sprite *temp_r7_4;
    Sprite *temp_r7_5;
    Sprite *temp_r7_6;
    Sprite *temp_r7_7;
    Sprite *temp_r7_8;
    Sprite *temp_r7_9;
    s16 temp_r3_2;
    s16 temp_r3_3;
    s16 temp_r4_6;
    s16 temp_r4_7;
    s16 temp_r4_8;
    s16 temp_r6_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r3;
    s32 temp_r4_9;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 temp_r5_4;
    u16 temp_r4_5;
    u32 temp_r4;
    u32 var_r5;
    u32 var_r8;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r1;
    u8 temp_r6;
    u8 var_r1;

    StageUi *strc = TASK_DATA(gCurTask);

    sp4 = (s32) gStageData.flagSpKey;
    sp8 = 0;
    temp_r1 = strc->base.unk0;
    if ((((u32) gStageData.act <= 2U) || ((u32) gStageData.zone > 6U)) && (gStageData.zone != 7) && (gStageData.zone != 8)) {
        if (gStageData.gameMode != 5) {
            sp4 = 1;
            temp_r7 = &strc->base.sprites[LOADED_SAVE->specialKeys[gStageData.zone]];
            temp_r4 = temp_r1 << 0x10;
            temp_r7->x = 0x24 - (temp_r4 >> 0xF);
            temp_r7->y = 0x28;
            UpdateSpriteAnimation(temp_r7);
            DisplaySprite(temp_r7);
            var_r8 = temp_r4;
        } else {
            sp4 = 0;
            var_r8 = temp_r1 << 0x10;
        }
        temp_r7_2 = &strc->base.sprite2AC;
        if (strc->base.sprite2AC.tiles != NULL) {
            strc->base.sprite2AC.x = 0x70;
            strc->base.sprite2AC.y = ((s32) var_r8 >> 0x10) + 0x90;
            UpdateSpriteAnimation(temp_r7_2);
            DisplaySprite(temp_r7_2);
        }
        temp_r6 = strc->base.isExtended;
        if (temp_r6 == 1) {
            temp_r4_2 = &strc->sprite2D4;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            temp_r4_3 = &strc->sprite2FC;
            UpdateSpriteAnimation(temp_r4_3);
            DisplaySprite(temp_r4_3);
            if (((s32) LOADED_SAVE->collectedEmeralds >> gStageData.zone) & temp_r6) {
                temp_r4_4 = &strc->sprite324;
                UpdateSpriteAnimation(temp_r4_4);
                DisplaySprite(temp_r4_4);
            }
        }
    } else {
        temp_r4_5 = gStageData.levelTimer;
        temp_r0 = Div((s32) temp_r4_5, 0x3C);
        temp_r0_2 = Div(temp_r0, 0x3C);
        sp0 = temp_r0_2;
        temp_r1_2 = temp_r0_2 * 2;
        temp_r3 = temp_r0 - *(temp_r1_2 + &sFrameCountPerSecond);
        temp_r5 = (temp_r4_5 - *((temp_r3 * 2) + &sFrameCountPerSecond)) - *(temp_r1_2 + &gUnknown_080CFA28);
        if (gStageData.unk2 == 0) {
            if (((u32) gStageData.levelTimer > 0x7E8FU) && (gStageData.timer & 0x10)) {
                sp8 = 1;
            }
            if (((u32) gStageData.levelTimer > 0x87EFU) && (temp_r5 == 0)) {
                m4aSongNumStart(0x8BU);
            }
        }
        temp_r5_2 = temp_r5 * 2;
        temp_r7_3 = strc + ((*(temp_r5_2 + &gUnknown_080CF936) * 0x28) + 0xFFFFFE74);
        temp_r7_3->x = 0x90;
        sp10 = temp_r1 << 0x10;
        temp_r3_2 = (s16) temp_r1;
        spC = (s32) temp_r3_2;
        temp_r3_3 = 0x12 - temp_r3_2;
        temp_r7_3->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_3);
        temp_r7_3->palId = sp0.unk8;
        DisplaySprite(temp_r7_3);
        temp_r7_3->palId = 0;
        temp_r7_4 = strc + ((*(temp_r5_2 + (&gUnknown_080CF936 + 1)) * 0x28) + 0xFFFFFE74);
        temp_r7_4->x = 0x98;
        temp_r7_4->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_4);
        temp_r7_4->palId = sp0.unk8;
        DisplaySprite(temp_r7_4);
        temp_r7_4->palId = 0;
        temp_r7_5 = &strc->base.sprites[0xB];
        strc->base.sprites[0xB].x = 0x89;
        temp_r6_2 = 0x11 - spC;
        strc->base.sprites[0xB].y = temp_r6_2;
        UpdateSpriteAnimation(temp_r7_5);
        DisplaySprite(temp_r7_5);
        temp_r5_3 = temp_r3 * 2;
        temp_r7_6 = &strc->base.sprites[*(temp_r5_3 + &gUnknown_080CF8BC)];
        temp_r7_6->x = 0x7A;
        temp_r7_6->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_6);
        temp_r7_6->palId = sp0.unk8;
        DisplaySprite(temp_r7_6);
        temp_r7_6->palId = 0;
        temp_r7_7 = &strc->base.sprites[*(temp_r5_3 + (&gUnknown_080CF8BC + 1))];
        temp_r7_7->x = 0x82;
        temp_r7_7->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_7);
        temp_r7_7->palId = sp0.unk8;
        DisplaySprite(temp_r7_7);
        temp_r7_7->palId = 0;
        temp_r7_8 = &strc->base.sprites[0xA];
        strc->base.sprites[0xA].x = 0x75;
        strc->base.sprites[0xA].y = temp_r6_2;
        UpdateSpriteAnimation(temp_r7_8);
        DisplaySprite(temp_r7_8);
        temp_r7_9 = &strc->base.sprites[sp0];
        temp_r7_9->x = 0x6E;
        temp_r7_9->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_9);
        temp_r7_9->palId = sp0.unk8;
        DisplaySprite(temp_r7_9);
        temp_r7_9->palId = 0;
        temp_r7_10 = &strc->base.sprite284;
        strc->base.sprite284.x = 0x58;
        strc->base.sprite284.y = 7 - spC;
        UpdateSpriteAnimation(temp_r7_10);
        DisplaySprite(temp_r7_10);
        temp_r4_6 = (s16) gStageData.rings;
        temp_r0_3 = (u8) Div((s32) temp_r4_6, 0x64);
        temp_r4_7 = temp_r4_6 - (temp_r0_3 * 0x64);
        temp_r0_4 = (u8) Div((s32) temp_r4_7, 0xA);
        sp14 = temp_r0_4 * 5;
        var_r5 = 0;
        var_r8 = (u32) sp10;
        if (gStageData.rings == 0) {
            var_r5 = (u32) (0 - (gStageData.timer & 0x10)) >> 0x1F;
        }
        temp_r7_11 = &strc->base.sprites[temp_r0_3];
        temp_r7_11->x = 0x28;
        temp_r7_11->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_11);
        temp_r7_11->palId = (u8) var_r5;
        DisplaySprite(temp_r7_11);
        temp_r7_11->palId = 0;
        temp_r7_12 = strc + ((sp14 * 8) + 4);
        temp_r7_12->x = 0x30;
        temp_r7_12->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_12);
        temp_r7_12->palId = (u8) var_r5;
        DisplaySprite(temp_r7_12);
        temp_r7_12->palId = 0;
        temp_r7_13 = &strc->base.sprites[(u8) (temp_r4_7 - (temp_r0_4 * 0xA))];
        temp_r7_13->x = 0x38;
        temp_r7_13->y = temp_r3_3;
        UpdateSpriteAnimation(temp_r7_13);
        temp_r7_13->palId = (u8) var_r5;
        DisplaySprite(temp_r7_13);
        temp_r7_13->palId = 0;
    }
    if ((u32) (u8) (gStageData.gameMode - 3) > 1U) {
        var_r1 = gStageData.lives;
        if ((u32) var_r1 > 9U) {
            var_r1 = 9;
        }
        temp_r7_14 = &strc->base.sprites[var_r1];
        temp_r7_14->x = 0x24;
        temp_r7_14->y = ((s32) var_r8 >> 0x10) + 0x9C;
        UpdateSpriteAnimation(temp_r7_14);
        DisplaySprite(temp_r7_14);
    }
    temp_r7_15 = &strc->base.sprite1E4;
    strc->base.sprite1E4.x = 5;
    temp_r5_4 = (s32) var_r8 >> 0x10;
    temp_r4_8 = temp_r5_4 + 0x8D;
    strc->base.sprite1E4.y = temp_r4_8;
    UpdateSpriteAnimation(temp_r7_15);
    DisplaySprite(temp_r7_15);
    temp_r7_16 = &strc->base.sprite20C;
    strc->base.sprite20C.x = 0xF;
    strc->base.sprite20C.y = temp_r4_8;
    UpdateSpriteAnimation(temp_r7_16);
    DisplaySprite(temp_r7_16);
    temp_r7_17 = &strc->base.sprite25C;
    temp_r4_9 = temp_r5_4 * 2;
    strc->base.sprite25C.x = 8 - temp_r4_9;
    strc->base.sprite25C.y = 0;
    UpdateSpriteAnimation(temp_r7_17);
    DisplaySprite(temp_r7_17);
    if (sp4 != 0) {
        temp_r7_18 = &strc->base.sprite234;
        strc->base.sprite234.x = 0xB - temp_r4_9;
        strc->base.sprite234.y = 0x18;
        UpdateSpriteAnimation(temp_r7_18);
        DisplaySprite(temp_r7_18);
    }
}
#endif
