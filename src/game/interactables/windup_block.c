#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
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
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;

    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 unk62;
    /* 0x64 */ s16 unk64;
    /* 0x66 */ s16 unk66;
    /* 0x68 */ s16 unk68;
    /* 0x6A */ s16 unk6A;
    /* 0x6C */ u8 unk6C_05 : 6;
    /* 0x6C */ u8 unk6C_67 : 2;
    /* 0x6D */ u8 unk6D;
    /* 0x6E */ u8 unk6E;
    /* 0x6F */ u8 unk6F;
} WindupBlock;

void Task_WindupBlock(void);
void TaskDestructor_WindupBlock(struct Task *t);
void sub_804783C(WindupBlock *block);

void CreateEntity_WindupBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WindupBlock, sizeof(WindupBlock), 0x2100, 0, TaskDestructor_WindupBlock);
    WindupBlock *block = TASK_DATA(t);
    s32 worldX, worldY;
    Sprite *s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.spriteX = me->x;
    block->base.id = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    block->worldX = worldX;
    block->unk64 = worldX;
    block->unk68 = worldX;

    worldY = TO_WORLD_POS(me->y, regionY);
    block->worldY = worldY;
    block->unk66 = worldY;
    block->unk6A = worldY;
    block->unk6C_05 = 0;
    block->unk6E = 0;
    block->unk6F = me->d.uData[4] & 0x3;
    block->unk6D = 0;

    if (block->unk6F & 0x1) {
        block->unk6A -= 0x60;
        block->unk66 -= 0x10;
    } else if (!(block->unk6F & 0x2)) {
        block->unk68 += 0x60;
        block->unk64 += 0x10;
    } else {
        block->unk68 -= 0x60;
        block->unk64 -= 0x10;
    }

    block->unk60 = block->unk68;
    block->unk62 = block->unk6A;

    s = &block->s;
    s->x = block->worldX - gCamera.x;
    s->y = block->worldY - gCamera.y;

    s = &block->s2;
    s->x = block->unk68 - gCamera.x;
    s->y = block->unk6A - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804783C(block);
}