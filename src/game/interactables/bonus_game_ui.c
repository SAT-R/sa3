#include "global.h"
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
#include "constants/zones.h"

#define NUM_DEFEATABLE_ENEMIES 8
#define SIZEOF_BAR_FRAME       (MAX_TILES(ANIM_BONUS_UI_BAR) * TILE_SIZE_4BPP)
#define BAR_WIDTH              (NUM_DEFEATABLE_ENEMIES * ANIM_BONUS_UI_BAR_WIDTH)
// NOTE: Technically this is offset by (ANIM_BONUS_UI_BAR_WIDTH / 2)
#define FIRST_ELEM_X (((DISPLAY_WIDTH / 2) - (BAR_WIDTH / 2)) + ANIM_BONUS_UI_BAR_WIDTH)

typedef struct {
    /* 0x000 */ SpriteBase base;
    /* 0x00C */ u8 unkC[4];
    /* 0x010 */ u16 timer;
    /* 0x012 */ u16 unk12;
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
void sub_803D47C(Sprite *s);

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