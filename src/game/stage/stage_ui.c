#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/chao.h"
#include "game/save.h"
#include "game/shared/stage/player.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/songs.h"

Task *sub_80215A0(void);
void sub_8021A64(void);
Task *sub_8021EE8(); /* extern */
void TaskDestructor_80227A4(Task *); /* extern */
void Task_34C_8022868(); /* extern */
extern TileInfo gUnknown_080CECF8[12];
extern TileInfo sEmeraldOverviewZoneNums[];
extern TileInfo sEmeraldOverviewEmeraldNums[];
extern TileInfo sEmeraldOverviewEmeraldGotIcons[];
extern u8 gUnknown_080CEE20[NUM_CHARACTERS];
extern u8 gUnknown_080CEE25[NUM_CHARACTERS][NUM_CHARACTERS];

extern const u8 gUnknown_080CF8BC[61][2];
extern const s16 sFrameCountPerSecond[61];
extern const u16 gUnknown_080CFA28[61];
extern const u8 gUnknown_080CF936[60][2];
extern const Vec2_u16 *gRespawnPositions[NUM_LEVEL_IDS];

typedef struct {
    u16 unk0;
    u16 unk2;
    u8 unk4;
} Strc_80D1874;

extern const Strc_80D1874 *gUnknown_080D191C[NUM_LEVEL_IDS];

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ bool8 extensionType;
    /* 0x004 */ Sprite sprites[12];
    /* 0x1E4 */ Sprite sprite1E4;
    /* 0x20C */ Sprite sprite20C;
    /* 0x234 */ Sprite sprite234;
    /* 0x25C */ Sprite sprite25C;
    /* 0x284 */ Sprite sprite284;
    /* 0x2AC */ Sprite sprite2AC;
} StageUiBase; /* 0x2D4 */

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ bool8 extensionType;
    /* 0x004 */ Sprite sprites4[12];
    /* 0x1E4 */ Sprite sprites1E4[4];
    /* 0x284 */ Sprite sprites284[2];
} StageUiBase2; /* 0x2D4 */

typedef struct {
    /* 0x000 */ StageUiBase base;
    /* 0x2D4 */ Sprite sprite2D4;
    /* 0x2FC */ Sprite sprite2FC;
    /* 0x324 */ Sprite sprite324;
} StageUi; /* 0x34C */

typedef struct {
    /* 0x000 */ StageUiBase2 base;
    /* 0x2D4 */ SpriteTransform tf;
    /* 0x2E0 */ Sprite sprite2E0;
    /* 0x308 */ Sprite sprite308;
    /* 0x330 */ Sprite sprite330;
} StageUi2; /* 0x358 */

void sub_80219E8();
void sub_8022234(void);
void Task_80227F8();
void Task_8022824();
void Task_8022898();
void Task_80228C8();
void Task_80228F0();
void sub_8022664(s16 pid, Sprite *s);
u8 sub_8022934(s16 arg0);

typedef enum {
    EXT_NONE = 0,
    EXT_1 = 1,
    EXT_2 = 2,
} ExtType;

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ bool8 extensionType;
    /* 0x004 */ Sprite sprites[12];
    /* 0x1E4 */ u8 filler1[0x174];
} UiStrc_358;

Task *sub_80215A0(void)
{
    u8 sp4[NUM_CHARACTERS];
    u8 spC[NUM_CHARACTERS][NUM_CHARACTERS];
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
        strc->base.extensionType = 1;
    } else {
        resultTask = TaskCreate(Task_34C_8022868, sizeof(StageUiBase), 0x2100U, 0U, TaskDestructor_80227A4);
        strc = TASK_DATA(resultTask);
        strc->base.extensionType = 0;
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

    if (strc->base.extensionType == 1) {
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

// (99.08%) https://decomp.me/scratch/kY8aP
NONMATCH("asm/non_matching/game/stgui__sub_8021A64.inc", void sub_8021A64(void))
{
    StageData *sd = &gStageData;
    s32 sp0;
    s32 sp4 = (s32)sd->flagSpKey;
    s32 palId = 0;
    s32 sp14;
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    Sprite *temp_r4_4;
    Sprite *s;
    s16 temp_r3_2;
    s16 ringCount;
    s16 temp_r4_7;
    u8 temp_r4_8;
    s16 temp_r6_2;
    s32 timerSecs;
    s32 timerMins;
    s32 temp_r3;
    s32 temp_r5;
    u16 timerFrames;
    u32 temp_r4;
    u32 var_r5;
    u8 temp_r0_3;
    u8 temp_r0_4;
    s16 temp_r1;
    u8 temp_r6;
    u8 var_r1;

    StageUi *strc = TASK_DATA(gCurTask);
    temp_r1 = strc->base.unk0;
    if (((gStageData.act > 2U) && ((u32)gStageData.zone <= 6U)) || (gStageData.zone == 7) || (gStageData.zone == 8)) {
        StageData *sd = &gStageData;
        timerFrames = gStageData.levelTimer;
        timerSecs = Div(timerFrames, 60);
        timerMins = Div(timerSecs, 60);
        sp0 = timerMins;
        timerSecs = timerSecs - sFrameCountPerSecond[timerMins];
        temp_r5 = (timerFrames - sFrameCountPerSecond[timerSecs]) - gUnknown_080CFA28[timerMins];
        if (sd->unk2 == 0) {
            if (sd->levelTimer >= TIME(9, 0)) {
                if (sd->timer & 0x10) {
                    palId = 1;
                }
            }

            if ((gStageData.levelTimer > TIME(9.666666, 0)) && (temp_r5 == 0)) {
                m4aSongNumStart(SE_139);
            }
        }

        s = &strc->base.sprites[gUnknown_080CF936[temp_r5][0] - 10];
        s->x = 144;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = palId;
        DisplaySprite(s);
        s->palId = 0;
        s = &strc->base.sprites[gUnknown_080CF936[temp_r5][1] - 10];
        s->x = 0x98;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = palId;
        DisplaySprite(s);
        s->palId = 0;
        s = &strc->base.sprites[11];
        s->x = 0x89;
        s->y = 17 - temp_r1;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        s = &strc->base.sprites[gUnknown_080CF8BC[timerSecs][0]];
        s->x = 122;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = palId;
        DisplaySprite(s);
        s->palId = 0;
        s = &strc->base.sprites[gUnknown_080CF8BC[timerSecs][1]];
        s->x = 130;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = palId;
        DisplaySprite(s);
        s->palId = 0;
        s = &strc->base.sprites[0xA];
        s->x = 0x75;
        s->y = 17 - temp_r1;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        s = &strc->base.sprites[sp0];
        s->x = 0x6E;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = palId;
        DisplaySprite(s);
        s->palId = 0;
        s = &strc->base.sprite284;
        s->x = 88;
        s->y = 7 - temp_r1;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        ringCount = gStageData.rings;
        temp_r0_3 = (u8)Div(ringCount, 100);
        temp_r4_7 = ringCount - (temp_r0_3 * 100);
        temp_r0_4 = (u8)Div(temp_r4_7, 10);
        sp14 = temp_r0_4 * 5;
#if 0
        // NOTE: This cast makes the code match better overall, but is very slow and inaccurate...
        temp_r4_8 = (u8)(float) (temp_r4_7 - (temp_r0_4 * 10));
#else
        temp_r4_8 = (u8)(temp_r4_7 - (temp_r0_4 * 10));
#endif

        {
            s32 rings = gStageData.rings;
            var_r5 = 0;
            if (rings == 0) {
                var_r5 = (u32)(0 - (gStageData.timer & 0x10)) >> 0x1F;
            }
        }
        s = &strc->base.sprites[temp_r0_3];
        s->x = 0x28;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = (u8)var_r5;
        DisplaySprite(s);
        s->palId = 0;

        s = &strc->base.sprites[temp_r0_4];
        s->x = 48;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);

        s->palId = (u8)var_r5;
        DisplaySprite(s);
        s->palId = 0;
        s = &strc->base.sprites[temp_r4_8];
        s->x = 0x38;
        s->y = 18 - temp_r1;
        UpdateSpriteAnimation(s);
        s->palId = (u8)var_r5;
        DisplaySprite(s);
        s->palId = 0;
    } else {
        if (gStageData.gameMode != 5) {
            s8 keyCount;
            sp4 = 1;
            keyCount = LOADED_SAVE->specialKeys[gStageData.zone];
            s = &strc->base.sprites[keyCount];
            s->x = 36 - temp_r1 * 2;
            s->y = 40;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        } else {
            sp4 = 0;
        }

        s = &strc->base.sprite2AC;
        if (s->tiles != NULL) {
            s->x = 112;
            s->y = temp_r1 + 144;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

        if (strc->base.extensionType == TRUE) {
            temp_r4_2 = &strc->sprite2D4;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            temp_r4_3 = &strc->sprite2FC;
            UpdateSpriteAnimation(temp_r4_3);
            DisplaySprite(temp_r4_3);

            if (GetBit(LOADED_SAVE->collectedEmeralds, gStageData.zone)) {
                temp_r4_4 = &strc->sprite324;
                UpdateSpriteAnimation(temp_r4_4);
                DisplaySprite(temp_r4_4);
            }
        }
    }
    if ((u32)(u8)(gStageData.gameMode - 3) > 1U) {
        var_r1 = gStageData.lives;
        if ((u32)var_r1 > 9U) {
            var_r1 = 9;
        }
        s = &strc->base.sprites[var_r1];
        s->x = 36;
        s->y = temp_r1 + 0x9C;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    s = &strc->base.sprite1E4;
    s->x = 5;
    s->y = temp_r1 + 0x8D;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->base.sprite20C;
    s->x = 0xF;
    s->y = temp_r1 + 0x8D;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->base.sprite25C;
    s->x = 8 - temp_r1 * 2;
    s->y = 0;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (sp4 != 0) {
        s = &strc->base.sprite234;
        s->x = 0xB - temp_r1 * 2;
        s->y = 0x18;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}
END_NONMATCH

Task *sub_8021EE8(void)
{
    u8 sp4[NUM_CHARACTERS];
    u8 spC[NUM_CHARACTERS][NUM_CHARACTERS];
    Task *resultTask;
    Player *p;
    Player *partner;
    Sprite *s;
    u8 i, j;
    StageUi2 *strc;
    void *tiles;

    memcpy(&sp4, gUnknown_080CEE20, 5);
    memcpy(&spC, *gUnknown_080CEE25, 0x19);
    resultTask = TaskCreate(Task_8022898, sizeof(StageUi2), 0x2100U, 0U, NULL);
#if !BUG_FIX
    // BUG: Assignment to uninitialized pointer
    strc->base.unk0 = 0x10;
    strc = TASK_DATA(resultTask);
#else
    strc = TASK_DATA(resultTask);
    strc->base.unk0 = 0x10;
#endif
    strc->base.extensionType = EXT_2;

    tiles = (OBJ_VRAM0 + 0x3800);
    for (i = 0; i < (s32)ARRAY_COUNT(strc->base.sprites4); i++) {
        s = &strc->base.sprites4[i];
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

    for (i = 0; i < (s32)ARRAY_COUNT(strc->base.sprites1E4); i++) {
        p = &gPlayers[i];
        s = &strc->base.sprites1E4[i];
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

        UpdateSpriteAnimation(s);
        tiles += 4 * TILE_SIZE_4BPP;
    }

    s = &strc->base.sprites284[0];
    s->tiles = tiles;
    s->anim = 1511;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(5);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x40000;

    UpdateSpriteAnimation(s);

    tiles += 4 * TILE_SIZE_4BPP;

    s = &strc->base.sprites284[1];
    s->tiles = tiles;
    s->anim = 0x5E7;
    s->variant = 1;
    s->oamFlags = 0x180;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x40000;
    UpdateSpriteAnimation(s);
    tiles += 4 * TILE_SIZE_4BPP;

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);
    s = &strc->sprite2E0;
    s->tiles = tiles;
    s->anim = 0x58C;
    s->variant = spC[p->charFlags.character][partner->charFlags.character];
    s->oamFlags = 0x180;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    tiles += 9 * TILE_SIZE_4BPP;

    s = &strc->sprite308;
    s->tiles = tiles;
    s->anim = 1515;
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

    s = &strc->sprite330;
    s->tiles = tiles;
    s->anim = 1514;
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

    return resultTask;
}

void sub_8022198(void)
{
    Sprite *s;
    u8 var_r3;
    u8 i;

    StageUi2 *strc = TASK_DATA(gCurTask);

    for (var_r3 = 0; var_r3 < (s32)ARRAY_COUNT(strc->base.sprites4); var_r3++) {
        s = &strc->base.sprites4[var_r3];
        s->prevVariant = -1;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->base.sprites1E4); i++) {
        s = &strc->base.sprites1E4[i];
        s->prevVariant = -1;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->base.sprites284); i++) {
        s = &strc->base.sprites284[i];
        s->prevVariant = -1;
    }

    s = &strc->sprite2E0;
    s->prevVariant = -1;
    s = &strc->sprite308;
    s->prevVariant = -1;
    s = &strc->sprite330;
    s->prevVariant = -1;
}
