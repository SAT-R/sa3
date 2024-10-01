#include "global.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;
    /* 0x60 */ s32 qWorldX;
    /* 0x64 */ s32 qWorldY;
    /* 0x68 */ s32 unk68;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ void *tiles;
    /* 0x78 */ s16 unk78;
    /* 0x7A */ u8 unk7A;
    /* 0x7B */ u8 unk7B;
    /* 0x7C */ u8 filler7C[0x14];
} Boulder;

void Task_Boulder(void);
void sub_804A0B0(Boulder *);
void TaskDestructor_Boulder(struct Task *);

void CreateEntity_Boulder(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Boulder, sizeof(Boulder), 0x2100, 0, TaskDestructor_Boulder);
    Boulder *boulder = TASK_DATA(t);
    Sprite *s;

    boulder->base.regionX = regionX;
    boulder->base.regionY = regionY;
    boulder->base.me = me;
    boulder->base.spriteX = me->x;
    boulder->base.id = id;

    boulder->worldX = TO_WORLD_POS(me->x, regionX);
    boulder->worldY = TO_WORLD_POS(me->y, regionY);
    boulder->qWorldX = Q(boulder->worldX);
    boulder->qWorldY = Q(boulder->worldY);
    boulder->unk68 = 0;
    boulder->unk6C = 0;
    boulder->unk70 = 0;
    boulder->unk78 = 0;
    boulder->unk7A = 0;
    boulder->unk7B = 0;
    boulder->tiles = NULL;

    s = &boulder->s;
    s->x = boulder->worldX - gCamera.x;
    s->y = boulder->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804A0B0(boulder);
}