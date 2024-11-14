#include "global.h"
#include "sprite.h"
#include "task.h"
#include "module_unclear.h" // sub_8020950
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ bool8 unk34;
    /* 0x35 */ u8 qEpsilon; // Q_4_4
    /* 0x36 */ u16 delay;
    /* 0x38 */ const u16 *path;
    /* 0x3C */ Vec2_32 qWorld;
    /* 0x44 */ Vec2_32 qTarget;
} PlatformOnPath; /* size: 0x4C */

void Task_PlatformOnPath(void);
static void InitSprite(Sprite *);
void sub_8042520(void);
void TaskDestructor_PlatformOnPath(struct Task *);

extern const u16 **sPlatformPathTable[NUM_COURSE_ZONES];

#define ADVANCE_PATH(platform) ((platform)->path += 3)
#define PATH_STATE_DELAY       ((u16)-2)
#define PATH_STATE_END         ((u16)-1)

void CreateEntity_PlatformOnAPath(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 zone = gStageData.zone;
    struct Task *t = TaskCreate(Task_PlatformOnPath, sizeof(PlatformOnPath), 0x2100, 0, TaskDestructor_PlatformOnPath);
    PlatformOnPath *platform = TASK_DATA(t);
    const u16 *path;
    s32 pathNum;
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;
    platform->unk34 = FALSE;

    platform->qWorld.x = Q(TO_WORLD_POS(me->x, regionX));
    platform->qWorld.y = Q(TO_WORLD_POS(me->y, regionY));

    path = sPlatformPathTable[zone][me->d.uData[4]];
    platform->path = path;
    platform->qTarget.x = Q(path[0]);
    platform->qTarget.y = Q(path[1]);
    platform->qEpsilon = path[2];
    platform->delay = 0;
    ADVANCE_PATH(platform);

    s = &platform->s;
    s->x = I(platform->qWorld.x);
    s->y = I(platform->qWorld.y);

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(s);
}

void Task_PlatformOnPath(void)
{
    s32 qWorldX = 0;
    s32 qWorldY = 0;
    PlatformOnPath *platform = TASK_DATA(gCurTask);
    s16 qEpsilon = platform->qEpsilon << 4;
    Sprite *s;
    s16 i;

    if (platform->unk34) {
        qWorldX = platform->qWorld.x;
        qWorldY = platform->qWorld.y;

        if (platform->qWorld.x < platform->qTarget.x) {
            platform->qWorld.x = platform->qWorld.x + qEpsilon;
        } else if (platform->qWorld.x > platform->qTarget.x) {
            platform->qWorld.x = platform->qWorld.x - qEpsilon;
        }

        if (platform->qWorld.y < platform->qTarget.y) {
            platform->qWorld.y = platform->qWorld.y + qEpsilon;
        } else if (platform->qWorld.y > platform->qTarget.y) {
            platform->qWorld.y = platform->qWorld.y - qEpsilon;
        }

        if (ABS(platform->qWorld.x - platform->qTarget.x) < qEpsilon) {
            platform->qWorld.x = platform->qTarget.x;
        }

        if (ABS(platform->qWorld.y - platform->qTarget.y) < qEpsilon) {
            platform->qWorld.y = platform->qTarget.y;
        }

        {
            const u16 *node = platform->path;

            if ((node[0] != PATH_STATE_END) && (node[1] != PATH_STATE_END) && (platform->qWorld.x == platform->qTarget.x)
                && (platform->qWorld.y == platform->qTarget.y)) {
                if (node[0] == PATH_STATE_DELAY) {
                    if (node[1] <= platform->delay) {
                        platform->delay = 0;
                        ADVANCE_PATH(platform);

                        platform->qTarget.x = Q(platform->path[0]);
                        platform->qTarget.y = Q(platform->path[1]);
                        platform->qEpsilon = platform->path[2];

                        ADVANCE_PATH(platform);
                    } else {
                        platform->delay++;
                    }
                } else {
                    platform->qTarget.x = Q(node[0]);
                    platform->qTarget.y = Q(node[1]);
                    platform->qEpsilon = platform->path[2];

                    ADVANCE_PATH(platform);
                }
            }
        }

        qWorldX -= platform->qWorld.x;
        qWorldY -= platform->qWorld.y;
    }

    s = &platform->s;
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C0D4(p)) {
            s32 res;

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->qWorldX -= qWorldX;

                qWorldY += (p->moveState & MOVESTATE_GRAVITY_SWITCHED) ? +Q(2) : -Q(2);

                p->qWorldY -= qWorldY;

                platform->unk34 = TRUE;
            }

            res = sub_8020950(s, I(platform->qWorld.x), I(platform->qWorld.y), p, 1);
            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);

                if ((platform->qWorld.y != platform->qTarget.y) && (platform->qWorld.y > platform->qTarget.y) && (sub_801226C(p) < 0)
                    && (sub_802C080(p) == 0)) {
                    sub_8008E38(p);
                }
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
                p->qWorldX += Q_8_8((s16)res >> 8);
                p->qSpeedAirX = 0;

                if (!(p->moveState & MOVESTATE_IN_AIR)) {
                    if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                        p->qWorldX -= Q(1);
                        p->qSpeedGround = 0;
                        p->moveState |= MOVESTATE_40;
                    } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                        p->qWorldX += Q(1);
                        p->qSpeedGround = 0;
                        p->moveState |= MOVESTATE_40;
                    }
                }
            }
        }
    }

    sub_8042520();
}

static void InitSprite(Sprite *s)
{
    switch (gStageData.zone) {
        case ZONE_3: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_ON_A_PATH_3);
            s->anim = ANIM_PLATFORM_ON_A_PATH_3;
            s->variant = 0;
        } break;

        case ZONE_6: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_ON_A_PATH_6);
            s->anim = ANIM_PLATFORM_ON_A_PATH_6;
            s->variant = 0;
        } break;

        default:
            return;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_8042520(void)
{
    PlatformOnPath *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;
    s16 i;
    s32 screenX, screenY;

    screenX = I(platform->qWorld.x) - gCamera.x;
    s->x = screenX;
    screenY = I(platform->qWorld.y) - gCamera.y;
    s->y = screenY;

    if (!sub_802C1D0((s16)screenX, (s16)screenY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);

            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_PlatformOnPath(struct Task *t)
{
    PlatformOnPath *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}
