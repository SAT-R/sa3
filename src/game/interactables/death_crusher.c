#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "module_unclear.h"
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
    /* 0x34 */ u8 filler[8];
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ u16 unk48;
    /* 0x4A */ u16 unk4A;
    /* 0x4C */ u8 unk4C;
} DeathCrusher;

extern const u16 gUnknown_080CFBC8[];

void Task_DeathCrusher(void);
void sub_8041E74(Sprite *s, u8 i);
void TaskDestructor_DeathCrusher(struct Task *);

void CreateEntity_DeathCrusher(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u16 arr[6];
    struct Task *t;
    DeathCrusher *crusher;
    Sprite *s;
    s16 i;
    s32 r1;

    memcpy(arr, gUnknown_080CFBC8, sizeof(arr));

    t = TaskCreate(Task_DeathCrusher, sizeof(DeathCrusher), 0x2100, 0, TaskDestructor_DeathCrusher);
    crusher = TASK_DATA(t);

    crusher->base.regionX = regionX;
    crusher->base.regionY = regionY;
    crusher->base.me = me;
    crusher->base.spriteX = me->x;
    crusher->base.id = id;

    crusher->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    crusher->qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    crusher->unk46 = 0;
    crusher->unk4A = 0;
    crusher->unk44 = 0;

    crusher->unk4C = (me->d.uData[4] & 0x1);

    for (i = 2; i <= 6; i++) {
        if ((me->d.uData[4] >> i) & 0x1)
            break;
    }

    if ((me->d.uData[4] & 0xFC) != 0) {
        r1 = arr[i - 2];
    } else {
        r1 = 0;
    }

    crusher->unk48 = r1;

    s = &crusher->s;
    s->x = I(crusher->qWorldX);
    s->y = I(crusher->qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8041E74(s, crusher->unk4C);
}