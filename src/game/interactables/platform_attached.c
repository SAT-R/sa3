#include "global.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/shared/entities_manager.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

// Platform that is connected to a hook and rotates around it.

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
    /* 0x3C */ Sprite2 s2;
    /* 0x6C */ s32 qWorldX;
    /* 0x70 */ s32 qWorldY;
    /* 0x74 */ s32 qHookWorldX;
    /* 0x78 */ s32 qHookWorldY;
    /* 0x7C */ s16 unk7C;
    /* 0x7E */ s16 qRadius;
    /* 0x80 */ u16 angle;
} PlatformAttached;

void Task_AttachedPlatformInit(void);
void sub_803EBE0(Sprite *s, Sprite2 *s2);
void sub_803EA98(void);
void sub_803ECE4(void);
static void UpdateAngle(void);
void TaskDestructor_AttachedPlatform(struct Task *);

void CreateEntity_AttachedPlatform(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_AttachedPlatformInit, sizeof(PlatformAttached), 0x2100, 0, TaskDestructor_AttachedPlatform);
    PlatformAttached *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    Sprite2 *s2 = &platform->s2;
    s32 diameter;
    s32 qDirX, qDirY;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.meX = me->x;
    platform->base.id = id;

    diameter = ((me->d.uData[3] * TILE_WIDTH) * 2) + 128;

    if (me->d.sData[0] != 0) {
        diameter = -diameter;
    }

    platform->unk7C = diameter;
    platform->qRadius = Q(me->d.uData[2] * TILE_WIDTH) + Q(1);
    platform->angle = 0;

    platform->qHookWorldX = Q(TO_WORLD_POS(me->x, regionX));
    platform->qHookWorldY = Q(TO_WORLD_POS(me->y, regionY));

    qDirX = SIN_24_8(platform->angle);
    qDirY = COS_24_8(platform->angle);

    // TODO: Why is this set to an I() value?
    platform->qWorldX = I(platform->qHookWorldX + Q_MUL(qDirX, platform->qRadius));
    platform->qWorldY = I(platform->qHookWorldY + Q_MUL(qDirY, platform->qRadius));

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803EBE0(s, s2);
}

void sub_803EA98(void)
{
    PlatformAttached *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    Player *p;
    s32 dx, dy;
    s32 qDirX, qDirY;
    u8 i;

    dx = platform->qWorldX;
    dy = platform->qWorldY;

    qDirX = SIN_24_8(platform->angle);
    qDirY = COS_24_8(platform->angle);

    platform->qWorldX = (platform->qHookWorldX + Q_MUL(qDirX, platform->qRadius));
    platform->qWorldY = (platform->qHookWorldY + Q_MUL(qDirY, platform->qRadius));

    dx = dx - platform->qWorldX;
    dy = dy - platform->qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            u32 res;

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->qWorldX -= dx;
                p->qWorldY -= dy;

                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                    p->qWorldY -= Q(1);
                } else {
                    p->qWorldY += Q(1);
                }
            }

            res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);
            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            }
        }
    }
}

void sub_803EBE0(Sprite *s, Sprite2 *s2)
{
    u16 tileSizes[2];
    u16 anims[2];
    u16 patterns[2];
    void *tiles;

    if ((gStageData.zone == ZONE_2) || ((gStageData.zone != ZONE_6) && (gStageData.act == 9))) {
        tileSizes[0] = MAX_TILES_VARIANT(ANIM_PLATFORM_2_2, 0);
        anims[0] = ANIM_PLATFORM_2_2;
        patterns[0] = 0;

        tileSizes[1] = MAX_TILES_VARIANT(ANIM_BUNGEE_CORD, 0);
        anims[1] = ANIM_BUNGEE_CORD;
        patterns[1] = 0;
    } else {
        tileSizes[0] = MAX_TILES_VARIANT(ANIM_ATTACHED_PLATFORM, 0);
        anims[0] = ANIM_ATTACHED_PLATFORM;
        patterns[0] = 0;

        tileSizes[1] = MAX_TILES_VARIANT(ANIM_ATTACHED_PLATFORM, 2);
        anims[1] = ANIM_ATTACHED_PLATFORM;
        patterns[1] = 2;
    }

    tiles = VramMalloc(tileSizes[0] + tileSizes[1]);
    s->tiles = tiles;
    s->anim = anims[0];
    s->variant = patterns[0];
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    tiles += tileSizes[0] * TILE_SIZE_4BPP;
    s2->tiles = tiles;
    s2->anim = anims[1];
    s2->variant = patterns[1];
    s2->oamFlags = SPRITE_OAM_ORDER(25);
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation((Sprite *)s2);
}

void sub_803ECE4()
{
    PlatformAttached *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    Sprite2 *s2 = &platform->s2;
    MapEntity *me = platform->base.me;
    Player *p;
    s32 qHookWorldX, qHookWorldY;
    s32 hookWorldX, hookWorldY;
    s32 hookScreenX, hookScreenY;
    s16 i;
    s32 qRadMax;

    qHookWorldX = platform->qHookWorldX;
    qHookWorldY = platform->qHookWorldY;

    hookWorldX = I(qHookWorldX);
    hookWorldY = I(qHookWorldY);

    hookScreenX = hookWorldX - gCamera.x;
    hookScreenY = hookWorldY - gCamera.y;

    if (!sub_802C140(hookWorldX, hookWorldY, hookScreenX, hookScreenY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s32 qRad;
        s32 qDirX, qDirY;

        UpdateSpriteAnimation((Sprite *)s2);

        qDirX = SIN_24_8(platform->angle);
        qDirY = COS_24_8(platform->angle);

        qRadMax = platform->qRadius - Q(22);

        for (qRad = 0; qRad < qRadMax;) {
            qRad += Q(22);

            s2->x = I(qHookWorldX + Q_MUL(qDirX, qRad)) - gCamera.x;
            s2->y = I(qHookWorldY + Q_MUL(qDirY, qRad)) - gCamera.y;

            DisplaySprite((Sprite *)s2);
        }

        s->x = I(qHookWorldX + Q_MUL(qDirX, platform->qRadius)) - gCamera.x;
        s->y = I(qHookWorldY + Q_MUL(qDirY, platform->qRadius)) - gCamera.y;

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_AttachedPlatformInit(void)
{
    UpdateAngle();
    sub_803EA98();
    sub_803ECE4();
}

void UpdateAngle(void)
{
    PlatformAttached *platform = TASK_DATA(gCurTask);
    platform->angle = ((gStageData.timer * platform->unk7C) << 14) >> 22;
}

void TaskDestructor_AttachedPlatform(struct Task *t)
{
    PlatformAttached *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}