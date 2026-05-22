#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/chao.h"
#include "game/save.h"
#include "game/shared/stage/player.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/songs.h"

#define UI_SP_KEY_COUNT_X (36)
#define UI_SP_KEY_COUNT_Y (40)

#define UI_RINGS_X (48)
#define UI_RINGS_Y (18)

// Timer layout  :  TIME M'SS"FF
#define UI_TIMER_TIME_TEXT_X    (DISPLAY_CENTER_X - 32)
#define UI_TIMER_TIME_TEXT_Y    (7)
#define UI_TIMER_MINUTES_X      (DISPLAY_CENTER_X - 10)
#define UI_TIMER_MINUTES_Y      (18)
#define UI_TIMER_APSTROPHE_X    (DISPLAY_CENTER_X - 3)
#define UI_TIMER_APSTROPHE_Y    (17)
#define UI_TIMER_SECONDS_TENS_X (DISPLAY_CENTER_X + 2)
#define UI_TIMER_SECONDS_TENS_Y (18)
#define UI_TIMER_SECONDS_ONES_X (DISPLAY_CENTER_X + 10)
#define UI_TIMER_SECONDS_ONES_Y (18)
#define UI_TIMER_AIR_QUOTES_X   (DISPLAY_CENTER_X + 17)
#define UI_TIMER_AIR_QUOTES_Y   (17)
#define UI_TIMER_FRAMES_TENS_X  (DISPLAY_CENTER_X + 24)
#define UI_TIMER_FRAMES_TENS_Y  (18)
#define UI_TIMER_FRAMES_ONES_X  (DISPLAY_CENTER_X + 32)
#define UI_TIMER_FRAMES_ONES_Y  (18)

#define UI_ZONE_TEXT_X (DISPLAY_WIDTH - 128)
#define UI_ZONE_TEXT_Y (DISPLAY_HEIGHT - 16)

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
    /* 0x004 */ Sprite sprites4[12];
    /* 0x1E4 */ Sprite sprites1E4[4];
    /* 0x284 */ Sprite sprites284[2];
} StageUiBase; /* 0x2D4 */

typedef struct {
    /* 0x000 */ StageUiBase base;
    /* 0x2D4 */ Sprite sprite2D4;
    /* 0x2FC */ Sprite sprite2FC;
    /* 0x324 */ Sprite sprite324;
} StageUi; /* 0x34C */

typedef struct {
    /* 0x000 */ StageUiBase base;
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
        strc->base.extensionType = EXT_1;
    } else {
        resultTask = TaskCreate(Task_34C_8022868, sizeof(StageUiBase), 0x2100U, 0U, TaskDestructor_80227A4);
        strc = TASK_DATA(resultTask);
        strc->base.extensionType = EXT_NONE;
    }
    strc->base.unk0 = 0x10;
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

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);
    s = &strc->base.sprites1E4[0];
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

    s = &strc->base.sprites1E4[1];
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
        s = &strc->base.sprites1E4[2];
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

    s = &strc->base.sprites1E4[3];
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

    s = &strc->base.sprites284[0];
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

    s = &strc->base.sprites284[1];
    if ((gStageData.act < 3) && (gStageData.zone < 7)) {
        s->tiles = ALLOC_TILES(ANIM_ZONEX_NAME);
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

    if (strc->base.extensionType == EXT_1) {
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

    for (var_r2 = 0; var_r2 < (s32)ARRAY_COUNT(strc->base.sprites4); var_r2++) {
        s = &strc->base.sprites4[var_r2];
        s->prevVariant = -1;
    }

    s = &strc->base.sprites1E4[0];
    s->prevVariant = -1;
    s = &strc->base.sprites1E4[1];
    s->prevVariant = -1;
    s = &strc->base.sprites1E4[2];
    s->prevVariant = -1;
    s = &strc->base.sprites1E4[3];
    s->prevVariant = -1;
    s = &strc->base.sprites284[0];
    s->prevVariant = -1;
    s = &strc->base.sprites284[1];
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
    s16 baseY;
    u8 temp_r6;
    u8 lives;

    StageUi *strc = TASK_DATA(gCurTask);
    baseY = strc->base.unk0;
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

        { /* Timer layout  :  TIME M'SS"FF */
            // FF
            s = &strc->base.sprites4[gUnknown_080CF936[temp_r5][0] - 10];
            s->x = UI_TIMER_FRAMES_TENS_X;
            s->y = UI_TIMER_FRAMES_TENS_Y - baseY;
            UpdateSpriteAnimation(s);
            s->palId = palId;
            DisplaySprite(s);
            s->palId = 0;
            s = &strc->base.sprites4[gUnknown_080CF936[temp_r5][1] - 10];
            s->x = UI_TIMER_FRAMES_ONES_X;
            s->y = UI_TIMER_FRAMES_ONES_Y - baseY;
            UpdateSpriteAnimation(s);
            s->palId = palId;
            DisplaySprite(s);

            // "
            s->palId = 0;
            s = &strc->base.sprites4[11];
            s->x = UI_TIMER_AIR_QUOTES_X;
            s->y = UI_TIMER_AIR_QUOTES_Y - baseY;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            // MM
            s = &strc->base.sprites4[gUnknown_080CF8BC[timerSecs][0]];
            s->x = UI_TIMER_SECONDS_TENS_X;
            s->y = UI_TIMER_SECONDS_TENS_Y - baseY;
            UpdateSpriteAnimation(s);
            s->palId = palId;
            DisplaySprite(s);
            s->palId = 0;
            s = &strc->base.sprites4[gUnknown_080CF8BC[timerSecs][1]];
            s->x = UI_TIMER_SECONDS_ONES_X;
            s->y = UI_TIMER_SECONDS_ONES_Y - baseY;
            UpdateSpriteAnimation(s);
            s->palId = palId;
            DisplaySprite(s);

            // M'
            s->palId = 0;
            s = &strc->base.sprites4[10];
            s->x = UI_TIMER_APSTROPHE_X;
            s->y = UI_TIMER_APSTROPHE_Y - baseY;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            s = &strc->base.sprites4[sp0];
            s->x = UI_TIMER_MINUTES_X;
            s->y = UI_TIMER_MINUTES_Y - baseY;
            UpdateSpriteAnimation(s);
            s->palId = palId;
            DisplaySprite(s);

            // "TIME"
            s->palId = 0;
            s = &strc->base.sprites284[0];
            s->x = UI_TIMER_TIME_TEXT_X;
            s->y = UI_TIMER_TIME_TEXT_Y - baseY;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

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
            /* Ring Counter */
            s32 rings = gStageData.rings;
            var_r5 = 0;
            if (rings == 0) {
                var_r5 = (u32)(0 - (gStageData.timer & 0x10)) >> 0x1F;
            }
            s = &strc->base.sprites4[temp_r0_3];
            s->x = UI_RINGS_X - 8;
            s->y = 18 - baseY;
            UpdateSpriteAnimation(s);
            s->palId = (u8)var_r5;
            DisplaySprite(s);
            s->palId = 0;

            s = &strc->base.sprites4[temp_r0_4];
            s->x = UI_RINGS_X + 0;
            s->y = 18 - baseY;
            UpdateSpriteAnimation(s);

            s->palId = (u8)var_r5;
            DisplaySprite(s);
            s->palId = 0;
            s = &strc->base.sprites4[temp_r4_8];
            s->x = UI_RINGS_X + 8;
            s->y = 18 - baseY;
            UpdateSpriteAnimation(s);
            s->palId = (u8)var_r5;
            DisplaySprite(s);
            s->palId = 0;
        }
    } else {
        if (gStageData.gameMode != GAME_MODE_5) {
            s8 keyCount;
            sp4 = 1;
            keyCount = LOADED_SAVE->specialKeys[gStageData.zone];
            s = &strc->base.sprites4[keyCount];
            s->x = UI_SP_KEY_COUNT_X - baseY * 2;
            s->y = UI_SP_KEY_COUNT_Y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        } else {
            sp4 = 0;
        }

        s = &strc->base.sprites284[1];
        if (s->tiles != NULL) {
            s->x = UI_ZONE_TEXT_X;
            s->y = baseY + UI_ZONE_TEXT_Y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

        if (strc->base.extensionType == EXT_1) {
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
        lives = gStageData.lives;
        if (lives > 9) {
            lives = 9;
        }
        s = &strc->base.sprites4[lives];
        s->x = 36;
        s->y = baseY + 156;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    s = &strc->base.sprites1E4[0];
    s->x = 5;
    s->y = baseY + 141;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->base.sprites1E4[1];
    s->x = 15;
    s->y = baseY + 141;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->base.sprites1E4[3];
    s->x = 8 - baseY * 2;
    s->y = 0;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (sp4 != 0) {
        s = &strc->base.sprites1E4[2];
        s->x = 11 - baseY * 2;
        s->y = 24;
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
#if !defined(BUG_FIX)
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

// (92.54%) https://decomp.me/scratch/W5nr5
NONMATCH("asm/non_matching/game/stage/stgui__sub_8022234.inc", void sub_8022234(void))
{
    s32 sp0[2];
    s8 sp8;
    u32 spC;
    s32 sp10[2];
    s32 sp18;
    s16 baseY;
    Player *temp_r6_3;
    Sprite *temp_r7;
    Sprite *s;
    s16 temp_r4_2;
    s32 temp_r4_3;
    s16 temp_r6;
    s16 var_r3;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r1;
    s32 var_r8;
    s8 temp_r0_3;
    s8 temp_r6_2;
    s32 timer;
    u32 palId;
    s32 var_sb;
    u32 max;
    u32 levelTimer;
    const Vec2_u16 *temp_r0_4;
    const Strc_80D1874 *temp_r0_5;
    StageUi2 *strc = TASK_DATA(gCurTask);

    baseY = strc->base.unk0;
    timer = gStageData.levelTimer;
    sp0[1] = Div(timer, 60);
    sp0[0] = Div(sp0[1], 60);
    sp0[1] -= sFrameCountPerSecond[sp0[0]];
    timer -= sFrameCountPerSecond[sp0[1]];
    temp_r5 = timer - gUnknown_080CFA28[sp0[0]];
    levelTimer = gStageData.levelTimer;
    max = TIME(9, 0);
    spC = 0;
    if (levelTimer > max) {
        spC = (u32)(0 - (gStageData.timer & 0x10)) >> 0x1F;
    }
    if (((u32)gStageData.levelTimer > 0x87EFU) && (temp_r5 == 0)) {
        m4aSongNumStart(SE_139);
    }
    temp_r7 = &strc->base.sprites4[gUnknown_080CF936[temp_r5][0] - 10];
    temp_r7->x = 0x90;
    var_sb = temp_r7->y = 18 - baseY;
    UpdateSpriteAnimation(temp_r7);
    temp_r7->palId = spC;
    DisplaySprite(temp_r7);
    temp_r7->palId = 0;
    s = &strc->base.sprites4[gUnknown_080CF936[temp_r5][1] - 10];
    s->x = 0x98;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = spC;
    DisplaySprite(s);
    s->palId = 0;
    s = &strc->base.sprites4[11];
    s->x = 0x89;
    s->y = 17 - baseY;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s = &strc->base.sprites4[gUnknown_080CF8BC[sp0[1]][0]];
    s->x = 0x7A;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = spC;
    DisplaySprite(s);
    s->palId = 0;
    s = &strc->base.sprites4[gUnknown_080CF8BC[sp0[1]][1]];
    s->x = 0x82;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = spC;
    DisplaySprite(s);
    s->palId = 0;
    s = &strc->base.sprites4[10];
    s->x = 0x75;
    s->y = 17 - baseY;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s = &strc->base.sprites4[sp0[0]];
    s->x = 0x6E;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = spC;
    DisplaySprite(s);
    s->palId = 0;
    temp_r4_2 = gStageData.rings;
    temp_r6_2 = (s8)Div(temp_r4_2, 100);
    temp_r4_3 = (s16)(temp_r4_2 - (temp_r6_2 * 100));
    temp_r0_3 = (s8)Div(temp_r4_3, 10);
    sp8 = (temp_r4_3 - (temp_r0_3 * 10));
    palId = 0;
    if (gStageData.rings == 0) {
        palId = (u32)(0 - (gStageData.timer & 0x10)) >> 0x1F;
    }
    s = &strc->base.sprites4[temp_r6_2];
    s->x = 40;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = (u8)palId;
    DisplaySprite(s);
    s->palId = 0;
    s = &strc->base.sprites4[temp_r0_3];
    s->x = 0x30;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = (u8)palId;
    DisplaySprite(s);
    s->palId = 0;
    s = &strc->base.sprites4[sp8];
    s->x = 0x38;
    s->y = var_sb;
    UpdateSpriteAnimation(s);
    s->palId = (u8)palId;
    DisplaySprite(s);
    s->palId = 0;
    temp_r0_4 = gRespawnPositions[gStageData.currentLevel];
    sp10[0] = temp_r0_4->x;
    sp10[1] = temp_r0_4->y;

    {
        s32 someX;
        s32 r2;
        temp_r0_5 = gUnknown_080D191C[gStageData.currentLevel];
        someX = temp_r0_5->unk0;
        r2 = temp_r0_5->unk2;
        var_sb = temp_r0_5->unk4;
        if (temp_r0_5->unk4 == 0) {
            var_r8 = someX - temp_r0_4->x;
        } else {
            var_r8 = r2 - sp10[1];
        }
    }

    for (var_r3 = 0; var_r3 < MULTI_SIO_PLAYERS_MAX; var_r3++) {
        s = &strc->base.sprites1E4[var_r3];
        temp_r6_3 = &gPlayers[var_r3];

        if ((temp_r6_3->charFlags.someIndex > 0) && (temp_r6_3->charFlags.someIndex < 4)) {
            if (var_sb == 0) {
                var_r1 = (temp_r6_3->qWorldX >> 8) - sp10[0];
            } else {
                var_r1 = (temp_r6_3->qWorldY >> 8) - sp10[1];
            }
            var_r0 = Div(var_r1 * 224, var_r8);

            if (var_r0 >= 0) {
                if (var_r0 > 224) {
                    var_r0 = 224;
                }
            } else {
                var_r0 = 0;
            }
            s->x = var_r0 + 8;
            s->y = baseY + 0x8D;
            s->palId = 0;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

        if ((gStageData.playerIndex != var_r3) && (temp_r6_3->charFlags.someIndex == 3) && ((sub_8022934(var_r3) << 0x18) == 0)) {
            if (gStageData.playerIndex == temp_r6_3->charFlags.partnerIndex) {
                s = &strc->base.sprites284[0];
            } else {
                s = &strc->base.sprites284[1];
            }
            sub_8022664(var_r3, s);
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }

    s = &strc->sprite2E0;
    s->x = 8 - (u16)baseY * 2;
    s->y = 0;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->sprite308;
    s->x = 8 - (u16)baseY * 2;
    s->y = 154;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->sprite330;
    s->x = (u16)baseY * 2 + 232;
    s->y = 150;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
END_NONMATCH

void sub_8022664(s16 pid, Sprite *s)
{
    StageUi2 *sp0;
    Player *playerA;
    Player *playerB;
    s16 dx;
    s16 dy;

    StageUi2 *strc = TASK_DATA(gCurTask);

    playerB = &gPlayers[gStageData.playerIndex];
    playerA = &gPlayers[pid];
    dx = I(playerB->qWorldX - playerA->qWorldX);
    dy = I(playerB->qWorldY - playerA->qWorldY);
    s->palId = (u8)(u16)pid;
    s->frameFlags = gNextFreeAffineIndex | 0x40020;
    gNextFreeAffineIndex += 1;
    strc->tf.rotation = (sa2__sub_8004418(dy >> 2, dx >> 2) - Q(1)) & ONE_CYCLE;
    dx = -dx;
    dx = dx + (I(playerB->qWorldX) - gCamera.x);
    dy = -dy;
    dy = dy + (I(playerB->qWorldY) - gCamera.y);

    if (dx < 16) {
        dx = 0x10;
    } else if ((s32)dx > 0xE0) {
        dx = 0xE0;
    }

    if ((s32)dy <= 0x17) {
        dy = 0x18;
    } else if ((s32)dy > 0x80) {
        dy = 0x80;
    }
    strc->tf.x = dx;
    strc->tf.y = dy;
    strc->tf.qScaleX = Q(1);
    strc->tf.qScaleY = Q(1);
    TransformSprite(s, &strc->tf);
}

void TaskDestructor_80227A4(Task *t)
{
    StageUi *timer = TASK_DATA(t);

    if (timer->base.sprites284[1].tiles != NULL) {
        VramFree(timer->base.sprites284[1].tiles);
    }
    if (timer->base.extensionType == EXT_1) {
        VramFree(timer->sprite2D4.tiles);
        VramFree(timer->sprite2FC.tiles);
        VramFree(timer->sprite324.tiles);
    }
}

void Task_80227F8(void)
{
    struct Task *t = gCurTask;
    sub_8021A64();
    if (gStageData.unk85 != 0) {
        gCurTask->main = Task_8022824;
    }
}

void Task_8022824(void)
{
    StageUi2 *temp_r1 = TASK_DATA(gCurTask);

    if (temp_r1->base.unk0 < 16) {
        temp_r1->base.unk0++;
        sub_8021A64();
    }
    if (gStageData.unk85 == 0) {
        sub_80219E8();
        gCurTask->main = Task_34C_8022868;
    }
}

void Task_34C_8022868(void)
{
    StageUi2 *temp_r1 = TASK_DATA(gCurTask);

    if (--temp_r1->base.unk0 == 0) {
        gCurTask->main = Task_80227F8;
    }
    sub_8021A64();
}

void Task_8022898(void)
{
    StageUi2 *temp_r1 = TASK_DATA(gCurTask);

    if (--temp_r1->base.unk0 == 0) {
        gCurTask->main = Task_80228C8;
    }
    sub_8022234();
}

void Task_80228C8(void)
{
    sub_8022234();

    if (gStageData.unk85 != 0) {
        gCurTask->main = Task_80228F0;
    }
}

void Task_80228F0(void)
{
    StageUi2 *temp_r1;
    u8 temp_r0;

    temp_r1 = TASK_DATA(gCurTask);
    if (temp_r1->base.unk0 < 16) {
        temp_r1->base.unk0++;
        sub_8022234();
    }
    if (gStageData.unk85 == 0) {
        sub_8022198();
        gCurTask->main = Task_8022898;
    }
}

u8 sub_8022934(s16 arg0)
{
    Player *p;
    Sprite2 *s;

    p = &gPlayers[arg0];
    s = &p->spriteInfoBody->s;

    if ((u32)(u16)(s->x - 1) <= 0xEEU) {
        s16 y = s->y;
        if ((y > 0) && (s->y < DISPLAY_HEIGHT)) {
            return 1;
        }
    }
    return 0;
}
