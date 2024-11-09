#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

#include "game/interactables/platform_shared.h"

#define MIN_BOUNCE_SPEED Q(3)
#define MAX_BOUNCE_SPEED Q(8)

typedef struct {
    /* 0x00 */ PlatformShared shared;
    /* 0x2C */ Sprite s;
    /* 0x54 */ u8 filler54[4];
} Trampoline;

static bool32 UpdatePlayerSpeed(void);
static u8 UpdatePlayer(void);
void Task_Trampoline(void);
static void InitSprite(Sprite *);
void TaskDestructor_Trampoline(struct Task *);

static void CreateTrampoline(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Trampoline, sizeof(Trampoline), 0x2100, 0, TaskDestructor_Trampoline);
    Trampoline *trampoline = TASK_DATA(t);
    Sprite *s = &trampoline->s;
    s32 qLeft, qTop, qMiddleX, qMiddleY;
    s32 qHalfWidth, qHalfHeight;
    s32 qWorldX, qWorldY;
    u8 i;

    trampoline->shared.base.regionX = regionX;
    trampoline->shared.base.regionY = regionY;
    trampoline->shared.base.me = me;
    trampoline->shared.base.spriteX = me->x;
    trampoline->shared.base.id = id;
    qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    trampoline->shared.qWorldX = qWorldX;
    qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    trampoline->shared.qWorldY = qWorldY;

    trampoline->shared.unk28 = sub_804DC38(kind, I(qWorldX), I(qWorldY), me);
    trampoline->shared.kind = kind;

    for (i = 0; (i < 6); i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }

    trampoline->shared.unk2A = i + 1;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qHalfHeight = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qHalfWidth = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    trampoline->shared.qHalfHeight = qHalfHeight;
    trampoline->shared.qHalfWidth = qHalfWidth;
    trampoline->shared.qMiddleX = qLeft + qHalfWidth;
    trampoline->shared.qMiddleY = qTop + qHalfHeight;

    s->x = I(trampoline->shared.qWorldX);
    s->y = I(trampoline->shared.qWorldY);
    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(s);
}

static bool32 UpdatePlayerSpeed(void)
{
    u8 r1 = UpdatePlayer();
    Trampoline *trampoline = TASK_DATA(gCurTask);
    Sprite *s = &trampoline->s;
    s32 qSpeedAirY;
    u8 i;

    if (r1 & 0x80) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);

            if (!((~r1 >> i) & 0x1)) {
                qSpeedAirY = ABS(p->qSpeedAirY);

                sub_80213B0(s, p);

                p->charFlags.unk2C_04 = 1;
                SetPlayerCallback(p, Player_800BC38);

                p->qSpeedAirY = qSpeedAirY + (qSpeedAirY >> 3);

                CLAMP_INLINE_NO_ELSE_2(p->qSpeedAirY, MIN_BOUNCE_SPEED, MAX_BOUNCE_SPEED);

                p->qSpeedAirY = -p->qSpeedAirY;

                Player_PlaySong(p, SE_TRAMPOLINE);
            }
        }

        s->anim = ANIM_TRAMPOLINE;
        s->variant = 1;
        s->prevAnim = -1;
        s->prevVariant = -1;
    }

    return TRUE;
}

static u8 UpdatePlayer(void)
{
    u8 result = 0;
    Trampoline *trampoline = TASK_DATA(gCurTask);
    Sprite *s = &trampoline->s;
    s32 qWorldX = trampoline->shared.qWorldX;
    s32 qWorldY = trampoline->shared.qWorldY;
    u8 i;

    sub_804DD68(&trampoline->shared);

    // TODO: Why?
    qWorldX -= trampoline->shared.qWorldX;
    qWorldY -= trampoline->shared.qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
            s32 qY;
            p->qWorldX -= qWorldX;
            qY = (p->qWorldY + Q(2));
            p->qWorldY = qY - qWorldY;

            result |= (1 << i);
        }

        if (!sub_802C0D4(p)) {
            s32 qSpeedAirY = p->qSpeedAirY;
            u32 mask = sub_8020950(s, I(trampoline->shared.qWorldX), I(trampoline->shared.qWorldY), p, 0);

            if (mask & 0x10000) {
                if (qSpeedAirY > MIN_BOUNCE_SPEED) {
                    result |= 0x80;
                }

                p->qWorldY += Q((s8)mask);

                result |= (1 << i);
            }
        }
    }

    return result;
}

static void UpdateAnimation(void)
{
    Trampoline *trampoline = TASK_DATA(gCurTask);
    Sprite *s = &trampoline->s;
    MapEntity *me = trampoline->shared.base.me;
    s32 qMiddleX = trampoline->shared.qMiddleX;
    s32 qMiddleY = trampoline->shared.qMiddleY;

    s->x = I(trampoline->shared.qWorldX) - gCamera.x;
    s->y = I(trampoline->shared.qWorldY) - gCamera.y;

    if (!sub_802C140(qMiddleX, qMiddleY, s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, trampoline->shared.base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        if (s->variant != 0) {
            DisplaySprite(s);
            s->anim = ANIM_TRAMPOLINE;
            s->variant = 0;
            s->prevAnim = -1;
            s->prevVariant = -1;
            return;
        }
    }
    DisplaySprite(s);
}

void CreateEntity_TrampolineA(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateTrampoline(0, me, regionX, regionY, id); }

void CreateEntity_TrampolineB(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateTrampoline(3, me, regionX, regionY, id); }

void TaskDestructor_Trampoline(struct Task *t)
{
    Trampoline *trampoline = TASK_DATA(t);
    VramFree(trampoline->s.tiles);
}

void Task_Trampoline(void)
{
    if (UpdatePlayerSpeed() == TRUE) {
        UpdateAnimation();
    }
}

static void InitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_TRAMPOLINE);
    s->anim = ANIM_TRAMPOLINE;
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
}