#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s0;
    /* 0x34 */ Sprite sprCompletionCrown;
    /* 0x5C */ u8 filler5C[0x50];
    /* 0xAC */ s16 worldX;
    /* 0xAE */ s16 worldY;
    /* 0xB0 */ bool8 wasCompletedBefore;
} SpecialSpring; /* size: 0xB4 */

void Task_SpecialSpring(void);
void TaskDestructor_SpecialSpring(struct Task *);
static void InitSprites(SpecialSpring *);
void sub_8040FD8(void);

void CreateEntity_SpecialSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpecialSpring, sizeof(SpecialSpring), 0x2100, 0, TaskDestructor_SpecialSpring);
    SpecialSpring *spring = TASK_DATA(t);
    Sprite *s;
    s16 worldX, worldY;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    spring->worldX = TO_WORLD_POS(me->x, regionX);
    spring->worldY = TO_WORLD_POS(me->y, regionY);
    spring->wasCompletedBefore = 0;

    s = &spring->s0;
    s->x = spring->worldX - gCamera.x;
    s->y = spring->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprites(spring);
}

void Task_SpecialSpring(void)
{
    SpecialSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s0;
    MapEntity *me = spring->base.me;
    Player *p;
    Player *partner;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(spring->base.meX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    p = &gPlayers[gStageData.playerIndex];

    if (!sub_802C080(p)) {

        u32 mask = sub_8020950(s, worldX, worldY, p, 0);

        if (mask) {
            if (mask & 0x10000) {
                u8 spKeys = LOADED_SAVE->specialKeys[gStageData.zone];
                if ((spKeys > 0) && (gStageData.gameMode == GAME_MODE_SINGLE_PLAYER)) {
                    LOADED_SAVE->specialKeys[gStageData.zone] = spKeys - 1;
                    SetPlayerCallback(p, Player_UseSpecialSpringWithKey);

                    partner = &gPlayers[p->charFlags.partnerIndex];

                    if (partner->charFlags.someIndex == 2) {
                        SetPlayerCallback(partner, Player_800AD24);
                    }

                    s->variant = 2;
                    sub_8003DF0(SE_SPECIAL_SPRING);
                    gStageData.unk4 = 4;
                } else {
                    s16 qDY = Q(mask & 0x00FF);
                    p->qWorldY += qDY;
                }
            } else if (mask & 0xC0000) {
                s16 qDX;

                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;

                qDX = mask & 0xFF00;
                p->qWorldX += qDX;

                // TODO: Maybe a macro?
                //       Used in platform_raising_wheel as well.
                if ((mask & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                    p->qWorldX -= Q(1.0);
                    p->moveState |= MOVESTATE_40;
                } else if ((mask & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                    p->qWorldX += Q(1.0);
                    p->moveState |= MOVESTATE_40;
                }
            } else {
                s16 qDY = Q(mask & 0x00FF);
                p->qWorldY += qDY;
            }
        }
    }

    sub_8040FD8();
}

static void InitSprites(SpecialSpring *spring)
{
    Sprite *s = &spring->s0;
    s->tiles = ALLOC_TILES(ANIM_SPECIAL_SPRING);
    s->anim = ANIM_SPECIAL_SPRING;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    if ((LOADED_SAVE->collectedEmeralds >> gStageData.zone) & 0x1) {
        s = &spring->sprCompletionCrown;
        s->tiles = ALLOC_TILES_VARIANT(ANIM_ACT_RING, 3);
        s->anim = ANIM_ACT_RING;
        s->variant = 3;
        s->oamFlags = SPRITE_OAM_ORDER(24);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
        UpdateSpriteAnimation(s);

        spring->wasCompletedBefore = 1;
    } else {
        spring->wasCompletedBefore = 0;
    }
}

void sub_8040FD8(void)
{
    SpecialSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s0;
    MapEntity *me = spring->base.me;
    s16 worldX, worldY;

    worldX = spring->worldX;
    worldY = spring->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (spring->wasCompletedBefore) {
            s = &spring->sprCompletionCrown;
            s->x = worldX - gCamera.x;
            s->y = worldY - gCamera.y - 24;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

void TaskDestructor_SpecialSpring(struct Task *t)
{
    SpecialSpring *spring = TASK_DATA(t);
    VramFree(spring->s0.tiles);

    if (spring->wasCompletedBefore) {
        VramFree(spring->sprCompletionCrown.tiles);
    }
}