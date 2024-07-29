#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 kind;
    /* 0x35 */ u8 unk35;
} FlatSpring;

void Task_FlatSpring(void);
void TaskDestructor_FlatSpring(struct Task *);
void sub_8037CA4(u8, Sprite *s);

extern const u32 sOamFlags[4];

void CreateEntity_FlatSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_FlatSpring, sizeof(FlatSpring), 0x2100, 0, TaskDestructor_FlatSpring);
    FlatSpring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->kind = me->d.uData[4] & 0x3;
    spring->unk35 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8037CA4(spring->kind, s);
}

void FlatSpringTaskA(void)
{
    FlatSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s16 worldX, worldY;
    u8 i;

    worldX = TO_WORLD_POS(spring->base.spriteX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    spring->unk35 = 1;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if (i != 0) {
            p = &gPlayers[p->charFlags.partnerIndex];
        } else {
            p = &gPlayers[gStageData.charId];
        }

        if (sub_802C0D4(p))
            continue;

        if (!sub_8020700(s, worldX, worldY, 0, p, 0))
            continue;

        spring->unk35 = 0;

        switch (spring->kind) {
            case 0: {
                if ((p->qSpeedGround <= 0) || (p->qSpeedAirX <= 0)) {
                    p->qSpeedGround = +Q(4);
                    p->qSpeedAirX = +Q(4);
                    s->variant = 3;
                } else if (I(p->qWorldX) < worldX) {
                    s->variant = 1;
                }
            } break;

            case 1: {
                if (p->qSpeedAirY >= 0) {
                    p->qSpeedAirY = -Q(4);
                    s->variant = 7;
                } else if (I(p->qWorldY) < worldY) {
                    s->variant = 5;
                }
            } break;

            case 2: {
                if ((p->qSpeedGround >= 0) || (p->qSpeedAirX >= 0)) {
                    p->qSpeedGround = -Q(4);
                    p->qSpeedAirX = -Q(4);
                    s->variant = 3;
                } else if (I(p->qWorldX) > worldX) {
                    s->variant = 1;
                }
            } break;

            case 3: {
                if (p->qSpeedAirY <= 0) {
                    p->qSpeedAirY = +Q(4);
                    s->variant = 7;
                } else if (I(p->qWorldY) > worldY) {
                    s->variant = 5;
                }
            } break;
        }
    }
}

void sub_8037CA4(u8 param0, Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_FLAT_SPRING);
    s->anim = ANIM_FLAT_SPRING;
    s->variant = ((param0 & 0x1) == 0) ? 0 : 4;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = sOamFlags[param0];
    UpdateSpriteAnimation(s);
}

void FlatSpringTaskB(void)
{
    FlatSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s16 worldX, worldY;
    u16 acmdRes;

    worldX = TO_WORLD_POS(spring->base.spriteX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = spring->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        acmdRes = UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (acmdRes == ACMD_RESULT__ENDED) {
            if (spring->unk35 != 0) {
                if (s->variant == 1) {
                    s->variant = 2;
                    return;
                } else if (s->variant == 5) {
                    s->variant = 6;
                    return;
                }
            }

            if ((s->variant == 2) || (s->variant == 3)) {
                s->variant = 0;
                return;
            } else if ((s->variant == 6) || (s->variant == 7)) {
                s->variant = 4;
                return;
            }
        }
    }
}

void TaskDestructor_FlatSpring(struct Task *t)
{
    FlatSpring *spring = TASK_DATA(t);
    VramFree(spring->s.tiles);
}

void Task_FlatSpring(void)
{
    FlatSpringTaskA();
    FlatSpringTaskB();
}