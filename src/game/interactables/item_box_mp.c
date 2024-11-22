#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
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
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ u8 filler5C[0x10];
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u16 unk70;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ u8 unk74;
} ItemBoxMP; /* 0x78 */

void Task_ItemBoxMP(void);
void TaskDestructor_ItemBoxMP(struct Task *t);
void sub_804ED44(ItemBoxMP *itembox);

void CreateEntity_MultiplayerItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ItemBoxMP, sizeof(ItemBoxMP), 0x2100, 0, TaskDestructor_ItemBoxMP);
    ItemBoxMP *itembox = TASK_DATA(t);
    Sprite *s;

    itembox->base.regionX = regionX;
    itembox->base.regionY = regionY;
    itembox->base.me = me;
    itembox->base.spriteX = me->x;
    itembox->base.id = id;

    itembox->worldX = TO_WORLD_POS(me->x, regionX);
    itembox->worldY = TO_WORLD_POS(me->y, regionY);
    itembox->unk70 = 0;
    itembox->unk72 = me->d.uData[4];
    itembox->unk73 = 0;
    itembox->unk74 = 0;

    s = &itembox->s;
    s->x = itembox->worldX - gCamera.x;
    s->y = itembox->worldY - gCamera.y;

    s = &itembox->s2;
    s->x = itembox->worldX - gCamera.x;
    s->y = itembox->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804ED44(itembox);
}