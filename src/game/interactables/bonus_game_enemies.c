#include <string.h> // memcpy
#include "global.h"
#include "core.h"
#include "flags.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "game/screen_fade.h"
#include "game/interactables/bonus_game_ui.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

#define NUM_DEFEATABLE_ENEMIES 8
#define SIZEOF_BAR_FRAME       (MAX_TILES(ANIM_BONUS_UI_BAR) * TILE_SIZE_4BPP)
#define BAR_WIDTH              (NUM_DEFEATABLE_ENEMIES * ANIM_BONUS_UI_BAR_WIDTH)
// NOTE: Technically this is offset by (ANIM_BONUS_UI_BAR_WIDTH / 2)
#define FIRST_ELEM_X (((DISPLAY_WIDTH / 2) - (BAR_WIDTH / 2)) + ANIM_BONUS_UI_BAR_WIDTH)

#define LIFE_ICON_P1_X      95
#define LIFE_ICON_P1_Y      78
#define LIFE_ICON_P2_X      105
#define LIFE_ICON_P2_Y      78
#define LIFE_BACKDROP_X     108
#define LIFE_BACKDROP_Y     85
#define EXTRALIFE_COUNTER_X 150
#define EXTRALIFE_COUNTER_Y 85
#define LIFE_COUNT_X_X      138
#define LIFE_COUNT_X_Y      86
#define COUNTDOWN_DIGIT_X   (DISPLAY_WIDTH / 2)
#define COUNTDOWN_DIGIT_Y   (DISPLAY_HEIGHT / 2)

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ s32 qUnk28;
    /* 0x2C */ s32 qUnk2C;
    /* 0x30 */ s16 unk30;
    /* 0x32 */ s16 unk32;
    /* 0x34 */ u8 unk34;
} BonusFlower;

typedef struct {
    /* 0x000 */ SpriteBase base;
    /* 0x00C */ u8 unkC[4];
    /* 0x010 */ s16 timer;
    /* 0x012 */ s16 unk12;
    /* 0x014 */ u8 unk14;
    /* 0x015 */ u8 unk15;
    /* 0x016 */ s8 unk16;
    /* 0x017 */ u8 unk17;
    /* 0x018 */ Sprite sprTimer[21];
    /* 0x360 */ Sprite sprCountdownDigit;
    /* 0x388 */ Sprite sprKillBar[NUM_DEFEATABLE_ENEMIES];
    /* 0x4C8 */ Sprite sprPlayer1Icon;
    /* 0x4F0 */ Sprite sprPlayer2Icon;
    /* 0x518 */ Sprite spr518;
    /* 0x540 */ Sprite spr540;
    /* 0x568 */ Sprite spr568;
    /* 0x590 */ ScreenFade fade;
} BonusGameUI;

void Task_BonusGameUIInit(void);
void TaskDestructor_BonusGameUI(struct Task *);
void Task_BonusFlower_803C4A0(void);
void sub_803C6F4(s16);
void Task_803C898(void);
void Task_803CA28(void);
void Task_803CF84(void);
void Task_803D248(void);
void Task_803D324(void);
void Task_803D39C(void);
void InitCountdownDigitSprite(Sprite *s);
void sub_803D4C8(void);
void sub_803D614(void);
void Task_803D750(void);
void sub_803D784(bool32 param0);

// TODO: Merge ia_bonus_capsule and bonus_game_UI?
extern void sub_8039D60(Sprite *, u8 i, void *tiles);

// const TileInfo gUnknown_080CF770[7] = {
//     [0] = {ANIM_BONUS_STATUS_TEXT, 0},
//     [1] = {ANIM_BONUS_STATUS_TEXT, 1},
//     [2] = {ANIM_BONUS_STATUS_TEXT, 2},
//     [3] = {ANIM_BONUS_STATUS_TEXT, 3},
//     [4] = {ANIM_BONUS_COUNTDOWN_DIGIT, 0},
//     [5] = {ANIM_BONUS_COUNTDOWN_DIGIT, 1},
//     [6] = {ANIM_BONUS_COUNTDOWN_DIGIT, 2},
// };
extern const TileInfo gUnknown_080CF770[7];
// const u8 sBonusLifeIconVariants[5] = {
//      [CHARACTER_SONIC] = 0,
//      [CHARACTER_CREAM] = 4,
//      [CHARACTER_TAILS] = 2,
//      [CHARACTER_KNUCKLES] = 1,
//      [CHARACTER_AMY] = 3,
//  };
extern const u8 sBonusLifeIconVariants[5];

void Task_BonusFlower_Spawn(void);
void TaskDestructor_BonusFlower(struct Task *);

void CreateBonusFlower(s16 worldX, s16 worldY)
{
    struct Task *t = TaskCreate(Task_BonusFlower_Spawn, sizeof(BonusFlower), 0x2100, 0, TaskDestructor_BonusFlower);
    BonusFlower *flower = TASK_DATA(t);

    Player *p = &gPlayers[gStageData.playerIndex];
    flower->unk30 = worldX;
    flower->unk32 = worldY;
    flower->qUnk2C = Q(worldY);

    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        flower->unk34 = 1;
        flower->qUnk28 = +Q(3);
    } else {
        flower->unk34 = 0;
        flower->qUnk28 = -Q(3);
    }
    sub_8003DF0(SE_POOF);

    flower->s.tiles = ALLOC_TILES(ANIM_BONUS_UI_FLOWER);
    flower->s.oamFlags = SPRITE_OAM_ORDER(22);
    flower->s.anim = ANIM_BONUS_UI_FLOWER;
    flower->s.variant = 0;
    flower->s.qAnimDelay = Q(0);
    flower->s.prevVariant = -1;
    flower->s.animSpeed = SPRITE_ANIM_SPEED(1.0);
    flower->s.palId = 0;
    flower->s.x = I(flower->unk30); // TODO: This doesn't make sense... should be qUnk28
    flower->s.y = I(flower->unk32); // TODO: This doesn't make sense... should be qUnk2C
    flower->s.frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
        gUnknown_03001D00++;
    }
}

void CreateEntity_BonusGameUI(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    BonusGameUI *ui;
    ScreenFade *fade;
    Sprite *s;
    void *tiles;
    u8 i;

    gUnknown_03001D00 = FALSE;
    t = TaskCreate(Task_BonusGameUIInit, sizeof(BonusGameUI), 0x2100, 0, TaskDestructor_BonusGameUI);
    ui = TASK_DATA(t);
    fade = &ui->fade;

    ui->base.regionX = regionX;
    ui->base.regionY = regionY;
    ui->base.me = me;
    ui->base.spriteX = me->x;
    ui->base.id = id;

    ui->unk16 = 0;
    ui->unk12 = 216;
    ui->timer = ZONE_TIME_TO_INT(1, 0);
    ui->unk17 = 60;

    ui->sprPlayer1Icon.tiles = NULL;
    ui->unk14 = 0;
    ui->unk15 = 0;

    for (i = 0; i < 4; i++) {
        ui->unkC[i] = gPlayers[i].charFlags.someIndex;

        if (gPlayers[i].charFlags.someIndex != 3)
            gPlayers[i].charFlags.someIndex = 1;
    }

    fade->window = 0;
    fade->flags = SCREEN_FADE_FLAG_2;
    fade->brightness = Q(0);
    fade->speed = Q(0.5);
    fade->bldCnt = (BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL);
    fade->bldAlpha = 0;

    SET_MAP_ENTITY_INITIALIZED(me);

    ScreenFadeUpdateValues(&ui->fade);

    InitCountdownDigitSprite(&ui->sprCountdownDigit);

    for (i = 0; i < (s32)ARRAY_COUNT(ui->sprTimer); i++) {
        sub_8039D60(&ui->sprTimer[i], i, ui->sprTimer[0].tiles);
    }

    tiles = VramMalloc(ARRAY_COUNT(ui->sprKillBar) * MAX_TILES(ANIM_BONUS_UI_BAR));

    for (i = 0; i < (s32)ARRAY_COUNT(ui->sprKillBar); i++) {
        Sprite *s = &ui->sprKillBar[i];

        s->tiles = tiles + (i * SIZEOF_BAR_FRAME);
        s->oamFlags = SPRITE_OAM_ORDER(0);
        s->anim = ANIM_BONUS_UI_BAR;
        s->variant = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->x = FIRST_ELEM_X + i * ANIM_BONUS_UI_BAR_WIDTH;
        s->y = DISPLAY_HEIGHT - 10;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
        UpdateSpriteAnimation(s);
    }

    gStageData.unk4 = 2;
}

void Task_BonusFlower_Spawn(void)
{
    s32 r3 = 0;
    BonusFlower *flower = TASK_DATA(gCurTask);
    Sprite *s = &flower->s;
    s32 checkY;

    if (flower->unk34 == 0) {
        flower->qUnk28 += Q(0.1875);
        flower->qUnk2C += flower->qUnk28;
        SPRITE_FLAG_CLEAR(s, Y_FLIP);

        checkY = Q(flower->unk32 + 16);
        if (flower->qUnk2C >= checkY) {
            r3 = sub_8052418(I(flower->qUnk2C), flower->unk30, 1, +8, sub_8051F54);
        }
    } else {
        flower->qUnk28 -= Q(0.1875);
        flower->qUnk2C += flower->qUnk28;
        SPRITE_FLAG_SET(s, Y_FLIP);

        checkY = Q(flower->unk32 - 16);
        if (flower->qUnk2C <= checkY) {
            r3 = sub_8052418(I(flower->qUnk2C), flower->unk30, 1, -8, sub_8051F54);
        }
    }

    if (r3 < 0) {
        flower->qUnk2C += Q(r3 + 2);
        flower->qUnk28 = 0;
        s->variant = 1;
        s->prevVariant = -1;
        sub_8003DF0(SE_BONUS_DEFEATED_ENEMY);
        gCurTask->main = Task_BonusFlower_803C4A0;
    }

    s->x = flower->unk30 - gCamera.x;
    s->y = I(flower->qUnk2C) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_BonusFlower_803C4A0(void)
{
    s32 res = 0;
    BonusFlower *flower = TASK_DATA(gCurTask);
    s8 r3;
    Sprite *s = &flower->s;
    s32 checkY;

    if (flower->unk34 == 0) {
        SPRITE_FLAG_CLEAR(s, Y_FLIP);

        res = +sub_8052418(I(flower->qUnk2C), flower->unk30, 1, +8, sub_8051F54);
    } else {
        SPRITE_FLAG_SET(s, Y_FLIP);

        res = -sub_8052418(I(flower->qUnk2C), flower->unk30, 1, -8, sub_8051F54);
    }

    if (ABS(res) > 1) {
        flower->qUnk2C += Q(res);
        r3 = 0;
    } else {
        r3 = res;
    }

    s->x = flower->unk30 - gCamera.x;
    s->y = (I(flower->qUnk2C) - gCamera.y) + r3;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_803C560(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    if (ui->unk12 != 0) {
        ui->unk12--;

        ScreenFadeUpdateValues(&ui->fade);
    } else if (UpdateScreenFade(&ui->fade) == SCREEN_FADE_COMPLETE) {
        ui->unk12 = 216;
        gCurTask->main = Task_BonusGameUIInit;
    }

    sub_803D4C8();
}

void Task_BonusGameUIInit(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    u8 i;

    gDispCnt |= DISPCNT_BG0_ON;
    gStageData.unk4 = 1;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);
        p->moveState |= MOVESTATE_IGNORE_INPUT;
        p->charFlags.state1 = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->qSpeedGround = 0;
        p->keyInput = 0;
    }

    if (--ui->unk12 == 0) {
        gDispCnt &= ~DISPCNT_BG0_ON;
        gFlags &= ~FLAGS_4;

        ui->unk12 = 180;
        gCurTask->main = Task_803C898;
    } else {
        u16 value;

        if (216 - ui->unk12 <= 48) {
            value = (216 - ui->unk12);
        } else if (ui->unk12 <= 48) {
            value = (ui->unk12);
        } else {
            value = 48;
        }
        sub_803C6F4(value);
    }

    sub_803D4C8();
}

// VERY unfinished.
// Maybe close to sub_803A3B4 ?
NONMATCH("asm/non_matching/game/interactables/bonus_game_ui__unfinished_sub_803C6F4.inc", void sub_803C6F4(s16 param0))
{
    u16 r6 = 0;
    u16 r1 = param0;
    s32 r0;
    s16 r3;
    s16 sl;
    s32 sp00;
    s16 i;
    s16 *ptr;

    if (param0 < 16) {
        sp00 = 0;

        if (param0 < 2) {
            r1 = 2;
        }

        r3 = r1 * 6;
    } else {
        // _0803C724
        if (param0 > 24) {
            param0 = 24;
        }

        sp00 = 1;

        r3 = 24;

        sl = (r1 * 4) - 64;
    }
    // _0803C73A

    gFlags |= FLAGS_4;

    // TODO: Cast properly
    sa2__gUnknown_03002878 = (void *)&REG_BG0VOFS;
    sa2__gUnknown_03002A80 = 2;

    ptr = *(u16 **)gBgOffsetsHBlank;
    for (i = 0; i < DISPLAY_HEIGHT; i += 2) {
        // _0803C75A
        *ptr++ = -i;
    }

    r0 = 72 - r3;
    for (i = 0; i < 6; i++) {
        //*((u16 *)gBgOffsetsHBlank[i]) = r0;
    }
}
END_NONMATCH

void Task_803C898(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    Sprite *s = &ui->sprCountdownDigit;
    Player *p;
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
        p->charFlags.state1 = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->qSpeedGround = 0;
        p->keyInput = 0;
    }

    if (--ui->unk12 == 0) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            p->moveState &= ~MOVESTATE_IGNORE_INPUT;
        }

        // "START!"
        s->anim = gUnknown_080CF770[0].anim;
        s->variant = gUnknown_080CF770[0].variant;
        s->prevVariant = -1;

        ui->unk17 = 128;

        for (i = 0; i < (s32)ARRAY_COUNT(ui->unkC); i++) {
            gPlayers[i].charFlags.someIndex = ui->unkC[i];
            gPlayers[i].idleAndCamCounter = ZONE_TIME_TO_INT(0, 6);
        }

        gCurTask->main = Task_803CA28;
        gCurTask->main();

        gStageData.unk4 = 3;
        gStageData.unk85 = 1;
        return;
    } else if (ui->unk12 == 120) {
        ui->unk17 = 60;

        // "2"
        s->anim = gUnknown_080CF770[5].anim;
        s->variant = gUnknown_080CF770[5].variant;
        s->prevVariant = -1;
    } else if (ui->unk12 == 60) {
        ui->unk17 = 60;

        // "1"
        s->anim = gUnknown_080CF770[4].anim;
        s->variant = gUnknown_080CF770[4].variant;
        s->prevVariant = -1;
    }

    sub_803D784(TRUE);
    sub_803D4C8();
}

void Task_803CA28(void)
{
    s8 r6 = 0;
    BonusGameUI *ui = TASK_DATA(gCurTask);
    ScreenFade *fade = &ui->fade;
    u8 arr[ARRAY_COUNT(sBonusLifeIconVariants)];
    Player *p;
    Sprite *s;
    s8 i;

    for (i = ui->unk16; i < gUnknown_03001D00; i++) {
        s = &ui->sprKillBar[i];
        s->variant = 1;
        s->prevVariant = -1;
    }

    s = &ui->sprCountdownDigit;

    if (!(gUnknown_03001D00 < 8) || (--ui->timer == 0)) {

        ui->unk17 = 128;

        fade->flags = SCREEN_FADE_FLAG_LIGHTEN;
        fade->brightness = Q(0);
        fade->bldCnt = (BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL);

        if (ui->timer == 0) {
            for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
                p = GET_SP_PLAYER_V1(i);

                p->moveState |= MOVESTATE_IGNORE_INPUT;
            }

            if (gStageData.playerIndex != 0) {
                s->anim = gUnknown_080CF770[2].anim;
                s->variant = gUnknown_080CF770[2].variant;
                s->prevVariant = -1;
            }

            ui->unk12 = 30;
            sub_803D4C8();

            gCurTask->main = Task_803CF84;
        } else {
            for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
                p = GET_SP_PLAYER_V1(i);

                p->moveState |= MOVESTATE_IGNORE_INPUT;
            }

            s->anim = gUnknown_080CF770[1].anim;
            s->variant = gUnknown_080CF770[1].variant;
            s->prevVariant = -1;

            s->y = 60;
            sub_803D4C8();

            ui->unk12 = 100;
            memcpy(arr, sBonusLifeIconVariants, sizeof(arr));
            {
                void *tiles = (OBJ_VRAM0 + 0x2800);
                Player *p1 = &gPlayers[gStageData.playerIndex];
                Player *p2 = &gPlayers[p1->charFlags.partnerIndex];
                s32 r4;

                s = &ui->sprPlayer1Icon;
                s->tiles = tiles;
                tiles += MAX_TILES(ANIM_LIFE_ICONS) * TILE_SIZE_4BPP;
                s->anim = ANIM_LIFE_ICONS;
                s->variant = arr[p1->charFlags.character];
                s->oamFlags = SPRITE_OAM_ORDER(0);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_ICON_P1_X;
                s->y = LIFE_ICON_P1_Y;
                UpdateSpriteAnimation(s);

                s = &ui->sprPlayer2Icon;
                s->tiles = tiles;
                tiles += MAX_TILES(ANIM_LIFE_ICONS) * TILE_SIZE_4BPP;
                s->anim = ANIM_LIFE_ICONS;
                s->variant = arr[p2->charFlags.character];
                s->oamFlags = SPRITE_OAM_ORDER(1);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_ICON_P2_X;
                s->y = LIFE_ICON_P2_Y;
                UpdateSpriteAnimation(s);

                s = &ui->spr518;
                s->tiles = tiles;
                tiles += MAX_TILES_VARIANT(ANIM_BONUS_UI_X, 1) * TILE_SIZE_4BPP;
                s->anim = ANIM_BONUS_UI_X;
                s->variant = 1;
                s->oamFlags = SPRITE_OAM_ORDER(2);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_BACKDROP_X;
                s->y = LIFE_BACKDROP_Y;
                UpdateSpriteAnimation(s);

                s = &ui->spr540;
                s->tiles = tiles;
                tiles += MAX_TILES_VARIANT(ANIM_BONUS_UI_X, 0) * TILE_SIZE_4BPP;
                s->anim = ANIM_BONUS_UI_X;
                s->variant = 0;
                s->oamFlags = SPRITE_OAM_ORDER(1);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_COUNT_X_X;
                s->y = LIFE_COUNT_X_Y;
                UpdateSpriteAnimation(s);

                if (ui->timer >= 1500) {
                    r4 = 5;
                } else if (ui->timer >= 600) {
                    r4 = 2;
                } else {
                    r4 = 1;
                }

                // Lives counter?
                s = &ui->spr568;
                s->tiles = tiles;
                s->anim = ANIM_BONUS_UI_TIMER_DIGITS;
                s->variant = 0;
                s->oamFlags = SPRITE_OAM_ORDER(1);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = EXTRALIFE_COUNTER_X;
                s->y = EXTRALIFE_COUNTER_Y;
                UpdateSpriteAnimation(s);

                sub_8003DC4(r4);
                ui->unk14 = r4;
            }

            gCurTask->main = Task_803D324;
        }

        gStageData.unk4 = 6;
        return;
    } else if (gStageData.gameMode != GAME_MODE_5) {
        p = &gPlayers[gStageData.playerIndex];

        if (p->moveState & MOVESTATE_100) {
            r6++;
        }
    } else {
        for (i = 0, r6 = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            if (p->moveState & MOVESTATE_100) {
                r6++;
            }
        }
    }

    if (r6 != 0) {
        ui->unk17 = 128;

        fade->flags = SCREEN_FADE_FLAG_LIGHTEN;
        fade->brightness = Q(0);
        fade->bldCnt = (BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL);

        ui->unk12 = 60;

        gCurTask->main = Task_803D750;

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            p->moveState |= MOVESTATE_IGNORE_INPUT;
        }

        s->anim = gUnknown_080CF770[3].anim;
        s->variant = gUnknown_080CF770[3].variant;
        s->prevVariant = -1;

        gStageData.unk4 = 6;
    } else {
        u8 prevUnk17 = ui->unk17;

        sub_803D784(FALSE);

        if ((prevUnk17 != 0) && (ui->unk17 == 0)) {
            gStageData.unk85 = 0;
        }
    }

    sub_803D4C8();

    ui->unk16 = gUnknown_03001D00;
}

void Task_803CEE4(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);

    if (ui->unk17 == 1) {
        ui->unk17 = 2;

        if (ui->unk12 == 0) {
            if (UpdateScreenFade(&ui->fade) != SCREEN_FADE_RUNNING) {
                TasksDestroyAll();

                gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
                sa2__gUnknown_03005390 = 0;
                gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;

                sub_8002210((gStageData.zone * 10) + 2, 7);
                return;
            }
        } else {
            ui->unk12--;
        }
    }

    sub_803D784(TRUE);
    sub_803D4C8();
}

void Task_803CF84(void)
{
    s8 r6 = 0;
    BonusGameUI *ui = TASK_DATA(gCurTask);
    u8 arr[ARRAY_COUNT(sBonusLifeIconVariants)];
    Player *p;
    Sprite *s;
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    if ((gStageData.playerIndex == 0) && (ui->unk17 >= 96)) {
        s = &ui->sprCountdownDigit;

        if (!(gUnknown_03001D00 < 8)) {
            s->anim = gUnknown_080CF770[1].anim;
            s->variant = gUnknown_080CF770[1].variant;
            s->prevVariant = -1;

            s->y = 60;
            sub_803D4C8();

            ui->unk12 = 100;
            memcpy(arr, sBonusLifeIconVariants, sizeof(arr));
            {
                void *tiles = (OBJ_VRAM0 + 0x2800);
                Player *p1 = &gPlayers[gStageData.playerIndex];
                Player *p2 = &gPlayers[p1->charFlags.partnerIndex];
                s32 r4;

                s = &ui->sprPlayer1Icon;
                s->tiles = tiles;
                tiles += MAX_TILES(ANIM_LIFE_ICONS) * TILE_SIZE_4BPP;
                s->anim = ANIM_LIFE_ICONS;
                s->variant = arr[p1->charFlags.character];
                s->oamFlags = SPRITE_OAM_ORDER(0);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_ICON_P1_X;
                s->y = LIFE_ICON_P1_Y;
                UpdateSpriteAnimation(s);

                s = &ui->sprPlayer2Icon;
                s->tiles = tiles;
                tiles += MAX_TILES(ANIM_LIFE_ICONS) * TILE_SIZE_4BPP;
                s->anim = ANIM_LIFE_ICONS;
                s->variant = arr[p2->charFlags.character];
                s->oamFlags = SPRITE_OAM_ORDER(1);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_ICON_P2_X;
                s->y = LIFE_ICON_P2_Y;
                UpdateSpriteAnimation(s);

                s = &ui->spr518;
                s->tiles = tiles;
                tiles += MAX_TILES_VARIANT(ANIM_BONUS_UI_X, 1) * TILE_SIZE_4BPP;
                s->anim = ANIM_BONUS_UI_X;
                s->variant = 1;
                s->oamFlags = SPRITE_OAM_ORDER(2);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_BACKDROP_X;
                s->y = LIFE_BACKDROP_Y;
                UpdateSpriteAnimation(s);

                s = &ui->spr540;
                s->tiles = tiles;
                tiles += MAX_TILES_VARIANT(ANIM_BONUS_UI_X, 0) * TILE_SIZE_4BPP;
                s->anim = ANIM_BONUS_UI_X;
                s->variant = 0;
                s->oamFlags = SPRITE_OAM_ORDER(1);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = LIFE_COUNT_X_X;
                s->y = LIFE_COUNT_X_Y;
                UpdateSpriteAnimation(s);

                if (ui->timer >= 1500) {
                    r4 = 5;
                } else if (ui->timer >= 600) {
                    r4 = 2;
                } else {
                    r4 = 1;
                }

                // Lives counter?
                s = &ui->spr568;
                s->tiles = tiles;
                s->anim = ANIM_BONUS_UI_TIMER_DIGITS;
                s->variant = 0;
                s->oamFlags = SPRITE_OAM_ORDER(1);
                s->animCursor = 0;
                s->qAnimDelay = Q(0);
                s->prevVariant = -1;
                s->animSpeed = SPRITE_ANIM_SPEED(1.0);
                s->palId = 0;
                s->hitboxes[0].index = -1;
                s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
                s->x = EXTRALIFE_COUNTER_X;
                s->y = EXTRALIFE_COUNTER_Y;
                UpdateSpriteAnimation(s);

                sub_8003DC4(r4);
                ui->unk14 = r4;
            }

            gCurTask->main = Task_803D324;
            gStageData.unk4 = 6;
            return;
        } else {
            s->anim = gUnknown_080CF770[2].anim;
            s->variant = gUnknown_080CF770[2].variant;
            s->prevVariant = -1;
        }
    }

    if (--ui->unk17 == 0) {
        ui->unk17 = 128;

        gCurTask->main = Task_803D248;
    }

    sub_803D4C8();
}

void Task_803D248(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    if (ui->unk17 == 1) {
        ui->unk17 = 2;

        if (ui->unk12 == 0) {
            if (UpdateScreenFade(&ui->fade) != SCREEN_FADE_RUNNING) {
                TasksDestroyAll();

                gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
                sa2__gUnknown_03005390 = 0;
                gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;

                sub_8002210((gStageData.zone * 10) + 2, 7);
                return;
            }
        } else {
            ui->unk12--;
        }
    }

    sub_803D784(TRUE);
    sub_803D4C8();
}

void Task_803D324(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    if (--ui->unk17 == 0) {
        ui->unk17 = 128;

        gCurTask->main = Task_803D39C;
    }

    sub_803D4C8();
}

void Task_803D39C(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    if (ui->unk17 == 1) {
        ui->unk17 = 2;

        if (ui->unk12 == 0) {
            if (UpdateScreenFade(&ui->fade) != SCREEN_FADE_RUNNING) {
                TasksDestroyAll();

                gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
                sa2__gUnknown_03005390 = 0;
                gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;

                sub_8002210((gStageData.zone * 10) + 2, 7);
                return;
            }
        } else {
            ui->unk12--;
        }
    }

    sub_803D614();
    sub_803D784(TRUE);
    sub_803D4C8();
}

void InitCountdownDigitSprite(Sprite *s)
{
    s->tiles = VramMalloc(gUnknown_080CF770[0].numTiles);
    s->anim = gUnknown_080CF770[6].anim;
    s->variant = gUnknown_080CF770[6].variant;
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->x = COUNTDOWN_DIGIT_X;
    s->y = COUNTDOWN_DIGIT_Y;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    UpdateSpriteAnimation(s);
}

extern u8 gUnknown_080CF936[120];
extern s16 sFrameCountPerSecond[61];
extern u8 gUnknown_080CF8BC[122];
// (91.70%) https://decomp.me/scratch/Mzfqn
NONMATCH("asm/non_matching/game/interactables/bonus_game_ui__sub_803D4C8.inc", void sub_803D4C8(void))
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    Sprite *s;
    s32 r4;
    s32 r9;
    s32 temp;
    u8 i;

    r4 = ui->timer;
    r4 -= sFrameCountPerSecond[r4 / 60];

    s = &ui->sprTimer[ARRAY_COUNT(ui->sprTimer) - 1];
    s->x = 128;
    s->y = 22;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &ui->sprTimer[gUnknown_080CF936[(r4 * 2) + 0]];
    s->x = 134;
    s->y = 18;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &ui->sprTimer[gUnknown_080CF936[(r4 * 2) + 1]];
    s->x = 140;
    s->y = 18;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (gUnknown_080CF8BC[(r4 * 2) + 0]) {
        s = &ui->sprTimer[gUnknown_080CF8BC[(r4 * 2) + 0]];
        s->x = 112;
        s->y = 14;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    s = &ui->sprTimer[gUnknown_080CF8BC[(r4 * 2) + 1]];
    s->x = 120;
    s->y = 14;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    for (i = 0; i < (s32)ARRAY_COUNT(ui->sprKillBar); i++) {
        s = &ui->sprKillBar[i];

        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            DisplaySprite(s);

            if (s->variant == 1) {
                s->variant = 2;
                s->prevVariant = -1;
            }
        } else {
            DisplaySprite(s);
        }
    }
}
END_NONMATCH

void sub_803D614(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    Sprite *s;

    s = &ui->sprPlayer1Icon;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &ui->sprPlayer2Icon;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &ui->spr518;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &ui->spr540;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &ui->spr568;

    // TODO: Maybe a bug? (ui->unk15-- == 0)
    if ((ui->unk14 != 0) && (ui->unk15-- == 0)) {
        ui->unk15 = 20;

        sub_8003DF0(SE_BONUS_1UP_COUNTER);
        ui->unk14--;
        s->variant++;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_BonusFlower(struct Task *t)
{
    BonusFlower *flower = TASK_DATA(t);
    VramFree(flower->s.tiles);
}

void TaskDestructor_BonusGameUI(struct Task *t)
{
    BonusGameUI *ui = TASK_DATA(t);
    VramFree(ui->sprTimer[0].tiles);
    VramFree(ui->sprKillBar[0].tiles);
    VramFree(ui->sprCountdownDigit.tiles);

    if (ui->sprPlayer1Icon.tiles != NULL) {
        VramFree(ui->sprPlayer1Icon.tiles);
        VramFree(ui->sprPlayer2Icon.tiles);
        VramFree(ui->spr518.tiles);
        VramFree(ui->spr540.tiles);
        VramFree(ui->spr568.tiles);
    }
}

void Task_803D750(void)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);

    if (--ui->unk17 == 0) {
        ui->unk17 = 128;

        gCurTask->main = Task_803CEE4;
    }

    sub_803D4C8();
}

void sub_803D784(bool32 param0)
{
    BonusGameUI *ui = TASK_DATA(gCurTask);
    Sprite *s;

    if (ui->unk17 != 0) {
        --ui->unk17;

        if (!param0 && ui->unk17 <= 30) {
            if (!(ui->unk17 & 2)) {
                return;
            }
        }

        s = &ui->sprCountdownDigit;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}