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

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ s32 qUnk28;
    /* 0x2C */ s32 qUnk2C;
    /* 0x30 */ s16 unk30;
    /* 0x32 */ s16 unk32;
    /* 0x34 */ u8 unk34;
} BonusFlower; /* 0x38 */

typedef struct {
    /* 0x000 */ SpriteBase base;
    /* 0x00C */ u8 unkC[4];
    /* 0x010 */ u16 timer;
    /* 0x012 */ s16 unk12;
    /* 0x014 */ u8 unk14;
    /* 0x015 */ u8 unk15;
    /* 0x016 */ u8 unk16;
    /* 0x017 */ u8 unk17;
    /* 0x018 */ Sprite spr18[21];
    /* 0x360 */ Sprite sprCountdownDigit;
    /* 0x388 */ Sprite sprKillBar[NUM_DEFEATABLE_ENEMIES];
    /* 0x4C8 */ Sprite spr4C8;
    /* 0x4F0 */ Sprite spr4F0;
    /* 0x518 */ Sprite spr518;
    /* 0x540 */ Sprite spr540;
    /* 0x568 */ Sprite spr568;
    /* 0x590 */ ScreenFade fade;
} BonusGameUI; /* size: 0x59C */

void Task_BonusGameUIInit(void);
void TaskDestructor_BonusGameUI(struct Task *);
void Task_BonusFlower_803C4A0(void);
void sub_803D47C(Sprite *s);
void sub_803D4C8(void);
void Task_803C898(void);
void sub_803C6F4(s16);

// TODO: Merge ia_bonus_capsule and bonus_game_UI?
extern void sub_8039D60(Sprite *, u8 i, void *tiles);

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

    ui->spr4C8.tiles = NULL;
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

    sub_803D47C(&ui->sprCountdownDigit);

    for (i = 0; i < (s32)ARRAY_COUNT(ui->spr18); i++) {
        sub_8039D60(&ui->spr18[i], i, ui->spr18[0].tiles);
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

void Task_BonusFlower_803C3A8(void)
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
        Player *p = (i != 0) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.charId];

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

extern u16 **gUnknown_03002B84;

// TODO: Type properly
extern void *gUnknown_03003C5C;
extern u8 gUnknown_03003F30;

// VERY unfinished.
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
    gUnknown_03003C5C = (void *)&REG_BG0VOFS;
    gUnknown_03003F30 = 2;

    ptr = *gUnknown_03002B84;
    for (i = 0; i < DISPLAY_HEIGHT; i += 2) {
        // _0803C75A
        *ptr++ = -i;
    }

    r0 = 72 - r3;
    for (i = 0; i < 6; i++) {
        *gUnknown_03002B84[i] = r0;
    }
}
END_NONMATCH
