#include "global.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/interactables/platform_shared.h"

void Task_Platform(void);
void TaskDestructor_Platform(struct Task *);

typedef struct {
    /* 0x00 */ PlatformShared shared;
    /* 0x2C */ Sprite s;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55_lo : 2;
    /* 0x55 */ u8 unk55_2 : 1;
    /* 0x55 */ u8 unk55_3 : 1;
    /* 0x55 */ u8 unk55_4 : 1;
    /* 0x55 */ u8 unk55_5 : 1;
} Platform;

void sub_802F9C4(u16, u16, Sprite *);

void CreateEntity_Interactables016_027(s16 param0, s16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Platform, sizeof(Platform), 0x2100, 0, TaskDestructor_Platform);
    Platform *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    PlatformShared *shared = &platform->shared;
    s32 qWorldX, qWorldY;
    s32 qLeft, qTop;
    s32 qHalfHeight, qHalfWidth;
    s32 qMiddleX, qMiddleY;
    s16 i;

    shared->base.regionX = regionX;
    shared->base.regionY = regionY;
    shared->base.me = me;
    shared->base.spriteX = me->x;
    shared->base.id = id;

    qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    shared->qWorldX = qWorldX;
    qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    shared->qWorldY = qWorldY;

    shared->unk28 = sub_804DC38(kind, I(qWorldX), I(qWorldY), me);
    shared->kind = kind;
    platform->unk54 = 0;

    platform->unk55_lo = param0;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qHalfHeight = Q(me->d.uData[3] * (TILE_WIDTH / 2));

    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qHalfWidth = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    shared->qHalfHeight = qHalfHeight;
    shared->qHalfWidth = qHalfWidth;

    shared->qMiddleX = qLeft + qHalfWidth;
    shared->qMiddleY = qTop + qHalfHeight;

    for (i = 0; i < 5; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    shared->unk2A = i + 1;

    switch (param0) {
        case 0: {
            if (me->d.uData[4] & 0x80) {
                platform->unk55_3 = 1;
            } else {
                platform->unk55_3 = 0;
            }

            platform->unk55_2 = 0;
            platform->unk55_4 = 0;
            platform->unk55_5 = 0;
        } break;

        case 1: {
            platform->unk55_3 = 0;
            platform->unk55_2 = 1;
            platform->unk55_4 = 0;
            platform->unk55_5 = 0;
        } break;

        case 2: {
            platform->unk55_3 = 1;

            if (me->d.uData[4] & 0x80) {
                platform->unk55_2 = 1;
            } else {
                platform->unk55_2 = 0;
            }

            if (me->d.uData[4] & 0x40) {
                platform->unk55_4 = 1;
            } else {
                platform->unk55_4 = 0;
            }

            if (me->d.uData[4] & 0x20) {
                platform->unk55_5 = 1;
            } else {
                platform->unk55_5 = 0;
            }

        } break;
    }

    s->x = I(qWorldX);
    s->y = I(qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_802F9C4(platform->unk55_lo, platform->unk55_5, s);
}

#if 0
void CreateEntity_Interactable016(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Interactables016_027(0, 0, me, regionX, regionY, id);
}
#endif
