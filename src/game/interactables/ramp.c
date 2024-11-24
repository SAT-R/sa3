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
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 unk39;
} Ramp;

void sub_803213C(u8 unk38, u8 unk39, Sprite *s);
void Task_Ramp(void);
void TaskDestructor_Ramp(struct Task *t);

void CreateEntity_Ramp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Ramp, sizeof(Ramp), 0x2100, 0, TaskDestructor_Ramp);
    Ramp *ramp = TASK_DATA(t);
    Sprite *s = &ramp->s;

    ramp->base.regionX = regionX;
    ramp->base.regionY = regionY;
    ramp->base.me = me;
    ramp->base.spriteX = me->x;
    ramp->base.id = id;

    ramp->worldX = TO_WORLD_POS(me->x, regionX);
    ramp->worldY = TO_WORLD_POS(me->y, regionY);

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        ramp->unk38 = me->d.uData[4] & 0x1;
    } else {
        ramp->unk38 = 0;
    }

    ramp->unk39 = (me->d.uData[4] >> 1) & 0x1;

    s->x = ramp->worldX - gCamera.x;
    s->y = ramp->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803213C(ramp->unk38, ramp->unk39, s);
}

// Unused. Doesn't look like it's an inline
u32 sub_8031BAC(Player *p)
{
    if (!(p->moveState & MOVESTATE_COLLIDING_ENT) || (p->sprColliding == NULL) || (p->sprColliding->anim != ANIM_RAMP)
        || (p->sprColliding->variant > 1)) {
        return 0;
    } else if (p->charFlags.state0_subCount <= 1) {
        return 1;
    } else if (p->sprColliding->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (p->qSpeedGround > 0) {
            return 1;
        } else {
            return 2;
        }
    } else {
        // X_FLIP not set
        if (p->qSpeedGround >= 0) {
            return 2;
        } else {
            return 1;
        }
    }
}
