#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x8];
    /* 0x3C */ s16 worldX;
    /* 0x3E */ s16 worldY;
    /* 0x40 */ s16 unk40;
    /* 0x40 */ s16 unk42;
    /* 0x44 */ u8 unk44;
    /* 0x45 */ u8 unk45;
} PlatformRaisingWheel; /* size: 0x48 */

void Task_PlatformRaisingWheel(void);
void TaskDestructor_PlatformRaisingWheel(struct Task *t);
void sub_8035F8C(void);
static void InitSprite(Sprite *s);

void CreateEntity_PlatformRaisingWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformRaisingWheel, sizeof(PlatformRaisingWheel), 0x2100, 0, TaskDestructor_PlatformRaisingWheel);
    PlatformRaisingWheel *wheel = TASK_DATA(t);
    Sprite *s = &wheel->s;
    s16 i;

    wheel->base.regionX = regionX;
    wheel->base.regionY = regionY;
    wheel->base.me = me;
    wheel->base.meX = me->x;
    wheel->base.id = id;

    i = GetFirstSetBitIndex(me->d.uData[4], 8);

    wheel->unk44 = i;
    wheel->unk40 = (me->d.sData[0] * TILE_WIDTH);
    wheel->unk42 = 0;
    wheel->worldX = TO_WORLD_POS(me->x, regionX);
    wheel->worldY = TO_WORLD_POS(me->y, regionY);
    wheel->unk45 = 0;

    s->x = wheel->worldX - gCamera.x;
    s->y = wheel->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(s);
}

void Task_PlatformRaisingWheel(void)
{
    PlatformRaisingWheel *wheel = TASK_DATA(gCurTask);
    Sprite *s = &wheel->s;
    Player *p;
    s16 worldX, worldY;

    worldX = wheel->worldX;
    worldY = wheel->worldY;

    p = &gPlayers[gStageData.playerIndex];

    if (!sub_802C0D4(p)) {
        u32 mask = sub_8020950(s, worldX, worldY, p, 0);
        s16 qDX, qDY;

        if (mask) {
            if (!(mask & 0x10000) && (mask & 0xC0000)) {
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;

                qDX = mask & 0xFF00;
                p->qWorldX += qDX;

                if ((mask & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                    p->qWorldX -= Q(1.0);
                    p->moveState |= MOVESTATE_40;
                } else if ((mask & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                    p->qWorldX += Q(1.0);
                    p->moveState |= MOVESTATE_40;
                }
            } else {
                qDY = (mask & 0x00FF) << 8;
                p->qWorldY += qDY;
            }
        }

        if (sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if ((p->charFlags.anim0 == 10) || (p->charFlags.anim0 == 247)) {
                if ((p->keyInput2 & gStageData.buttonConfig.jump) || (wheel->unk45 == 0)) {
                    wheel->unk42 = wheel->unk40;
                    wheel->unk45 = 1;
                    gStageData.unk6E[wheel->unk44] = 0;
                }
            } else {
                wheel->unk45 = 0;
            }
        } else {
            s->animSpeed = 0;
        }
    }
    gStageData.unk4E[wheel->unk44] += wheel->unk42 >> 4;

    if (wheel->unk42 != 0) {
        wheel->unk42 -= 2;
        sub_8003E0C(588);
    }

    if (wheel->unk42 < 0) {
        wheel->unk42 = 0;
    }

    {
        s16 speed = (wheel->unk42 >> 2);
        s->animSpeed = (speed > SPRITE_ANIM_SPEED(2.0)) ? SPRITE_ANIM_SPEED(2.0) : speed;
    }

    sub_8035F8C();
}

void sub_8035F8C(void)
{
    PlatformRaisingWheel *wheel = TASK_DATA(gCurTask);
    Sprite *s = &wheel->s;
    MapEntity *me = wheel->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = wheel->worldX;
    worldY = wheel->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);

            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, wheel->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_PlatformRaisingWheel(struct Task *t)
{
    PlatformRaisingWheel *wheel = TASK_DATA(t);
    VramFree(wheel->s.tiles);
}

static void InitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_PLATFORM_RAISING_WHEEL);
    s->anim = ANIM_PLATFORM_RAISING_WHEEL;
    s->variant = 1;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(0.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    UpdateSpriteAnimation(s);
}
