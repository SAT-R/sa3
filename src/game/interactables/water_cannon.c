/*
 * Entity-Name: Water Cannon
 *
 * Description: Player enters from the top and gets shot upwards.
 *              The graphics for this IA later get reused in Sonic Rush,
 *              where after being launched the Player hooks onto a paraglider.
 *
 * Entity-Type: Interactable
 * Graphics:    ANIM_WATER_CANNON (910), ANIM_WATER_CANNON_SPLASH (934)
 * Locations:   Ocean Base (Overworld)  (WIP)
 */

#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"
#include "game/player_callbacks.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

// TODO: Rename, this is not the "Ice Launcher" I thought it was!
typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved34[2];
    /* 0x44 */ Sprite s2;
    /* 0x6C */ void *tiles;
    /* 0x70 */ s16 worldX;
    /* 0x72 */ s16 worldY;
    /* 0x74 */ s8 unk74;
    /* 0x75 */ s8 unk75;
} WaterCannon; /* size: 0x78 */

void Task_WaterCannon(void);
void TaskDestructor_WaterCannon(struct Task *);
void sub_803F188(WaterCannon *);
void sub_803F1D4(void);

static inline void InitWaterEffectSprite_inline(WaterCannon *cannon)
{
    Sprite *s = &cannon->s2;
    s->tiles = cannon->tiles + MAX_TILES(ANIM_WATER_CANNON) * TILE_SIZE_4BPP;
    s->anim = ANIM_WATER_CANNON_SPLASH;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
}

void CreateEntity_WaterCannon(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WaterCannon, sizeof(WaterCannon), 0x2100, 0, TaskDestructor_WaterCannon);
    WaterCannon *cannon = TASK_DATA(t);
    Sprite *s;

    cannon->base.regionX = regionX;
    cannon->base.regionY = regionY;
    cannon->base.me = me;
    cannon->base.spriteX = me->x;
    cannon->base.id = id;
    cannon->tiles = NULL;
    cannon->worldX = TO_WORLD_POS(me->x, regionX);
    cannon->worldY = TO_WORLD_POS(me->y, regionY);
    cannon->unk74 = -1;
    cannon->unk75 = -1;

    s = &cannon->s;
    s->x = cannon->worldX - gCamera.x;
    s->y = cannon->worldY - gCamera.y;

    s = &cannon->s2;
    s->x = cannon->worldX - gCamera.x;
    s->y = cannon->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803F188(cannon);
}

void Task_WaterCannon(void)
{
    WaterCannon *cannon = TASK_DATA(gCurTask);
    Sprite *s = &cannon->s;
    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = cannon->worldX;
    worldY = cannon->worldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        // TODO: Maybe we should wrap this in a macro, if the ?-operator works everywhere else?
        p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (((p->callback != Player_800AB48) && (p->callback != Player_800E67C)) && (p->callback != Player_800E6CC)) {
            if (!sub_802C080(p) && sub_8020700(s, worldX, worldY, 2, p, 0)) {
                p->qUnk70 = Q(worldX);
                p->qUnk74 = Q(worldY);
                SetPlayerCallback(p, Player_800AAC0);
                sub_8016F28(p);

                if (cannon->unk74 == -1) {
                    cannon->unk74 = 62;
                } else if (cannon->unk75 == -1) {
                    cannon->unk75 = 62;
                }
            } else {
                if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                    if (!sub_802C0D4(p)) {
                        u32 res = sub_8020950(s, worldX, worldY, p, 0);
                        if (res) {
                            if (res & 0x10000) {
                                p->qWorldY += Q_8_8(res);
                            } else if (res & 0x20000) {
                                p->qWorldY += Q_8_8(res);

                                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                    p->qWorldY -= Q(1);
                                } else {
                                    p->qWorldY += Q(1);
                                }
                                p->qSpeedAirY = 0;
                            }

                            if (res & 0xC0000) {
                                p->qWorldX += Q((s16)res >> 8);
                                p->qSpeedAirX = Q(0);
                                p->qSpeedGround = Q(0);
                            }
                        }
                    }
                }
            }
        }
    }

    sub_803F1D4();
}

void sub_803F188(WaterCannon *cannon)
{
    Sprite *s;
    void *tiles;

    tiles = VramMalloc(MAX_TILES(ANIM_WATER_CANNON) + MAX_TILES(ANIM_WATER_CANNON_SPLASH));
    cannon->tiles = tiles;

    s = &cannon->s;
    s->tiles = tiles;
    s->anim = ANIM_WATER_CANNON;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[2].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_803F1D4(void)
{
    WaterCannon *cannon = TASK_DATA(gCurTask);
    Sprite *s = &cannon->s;
    Sprite *sprEffect;
    SpriteBase *base = &cannon->base;
    MapEntity *me = base->me;
    s16 worldX, worldY;
    u8 i;

    worldX = TO_WORLD_POS(base->spriteX, base->regionX);
    worldY = TO_WORLD_POS(me->y, base->regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, base->spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);

#ifndef NON_MATCHING
    // NOTE: This doesn't need to be a loop, but sure...
    for (i = 0; i < 2; i++) {
        if (i != 0) {
            SPRITE_FLAG_SET(s, X_FLIP);
            DisplaySprite(s);
        } else {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
            DisplaySprite(s);
        }
    }
#else
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);

    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
#endif

    if ((cannon->unk74 > 0) && (--cannon->unk74 == 0)) {
        /* Setup water effect sprite and play sound */

        sub_8003DF0(SE_WATER_CANNON);

        InitWaterEffectSprite_inline(cannon);
    }

    if (cannon->unk75 >= 0) {
        cannon->unk75--;
    }

    if (cannon->unk74 == 0) {
        s = &cannon->s2;

        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y - ANIM_WATER_CANNON_HEIGHT;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (SPRITE_FLAG_GET(s, ANIM_OVER)) {
            if (cannon->unk75 > 0) {
                cannon->unk74 = cannon->unk75;
                cannon->unk75 = -1;
            } else {
                cannon->unk74 = -1;
            }
        }
    }
}

void TaskDestructor_WaterCannon(struct Task *t)
{
    WaterCannon *cannon = TASK_DATA(t);
    VramFree(cannon->tiles);
}

void InitWaterEffectSprite(WaterCannon *cannon)
{
    Sprite *s = &cannon->s2;
    s->tiles = cannon->tiles + MAX_TILES(ANIM_WATER_CANNON) * TILE_SIZE_4BPP;
    s->anim = ANIM_WATER_CANNON_SPLASH;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
}