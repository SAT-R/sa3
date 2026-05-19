#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/chao.h"
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
