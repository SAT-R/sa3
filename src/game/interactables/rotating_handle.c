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
    /* 0x00 */ SpriteBase4 base;
    /* 0x10 */ Sprite s;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ s16 unk3A;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x40 */ Player *player;
} RotatingHandle;

void Task_RotatingHandleInit(void);
void sub_8032410(s16 param0);
void Task_80326D8(void);
void sub_8032B18(Sprite *s);
void TaskDestructor_RotatingHandle(struct Task *t);

void CreateEntity_RotatingHandle(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_RotatingHandleInit, sizeof(RotatingHandle), 0x2100, 0, TaskDestructor_RotatingHandle);
    RotatingHandle *handle = TASK_DATA(t);
    Sprite *s = &handle->s;

    handle->base.regionX = regionX;
    handle->base.regionY = regionY;
    handle->base.me = me;
    handle->base.spriteX = me->x;
    handle->base.id = id;

    handle->unk38 = 0;
    handle->unk3A = 0;
    handle->unk3C = 0;
    handle->unk3D = 0;
    handle->player = NULL;
    handle->base.qSpeedAirX = 0;
    handle->base.qSpeedAirY = 0;

    // NOTE: Sprite.x|y should be screen pos, not world pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8032B18(s);
}

void sub_8032410(s16 param0)
{
    RotatingHandle *handle = TASK_DATA(gCurTask);
    Sprite *s = &handle->s;
    MapEntity *me = handle->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(handle->base.spriteX, handle->base.regionX);
    worldY = TO_WORLD_POS(me->y, handle->base.regionY);

    if (!param0 && !IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, handle->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_RotatingHandleInit(void)
{
    s32 sp08 = 0;
    RotatingHandle *handle = TASK_DATA(gCurTask);
    Sprite *s = &handle->s;
    MapEntity *me = handle->base.me;
    s32 worldX, worldY;
    u8 i;

    worldX = TO_WORLD_POS(handle->base.spriteX, handle->base.regionX);
    worldY = TO_WORLD_POS(me->y, handle->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        if ((p->charFlags.someIndex != 2) && (GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode) || p->charFlags.someIndex != 3) && !sp08
            && !sub_802C0D4(p) && (sub_8020700(s, worldX, worldY, 0, p, 0) == 1)) {
            s32 speedSum;
            sp08 = 1;
            handle->player = p;
            handle->unk3D = i;
            handle->unk38 = 0;
            speedSum = ABS(p->qSpeedAirX);
            speedSum += ABS(p->qSpeedAirY);
            handle->unk3A = speedSum;

            CLAMP_INLINE_NO_ELSE(handle->unk3A, 0xE0, 0x180);

            if (p->qSpeedAirX > 0) {
                p->moveState &= ~MOVESTATE_FACING_LEFT;

                if (I(p->qWorldY) > worldY) {
                    SPRITE_FLAG_SET(s, X_FLIP);
                    p->charFlags.anim0 = 120;
                    handle->unk3C = 0;
                } else {
                    SPRITE_FLAG_CLEAR(s, X_FLIP);
                    p->charFlags.anim0 = 121;
                    handle->unk3C = sp08;
                }
            } else {
                p->moveState |= sp08;

                if (I(p->qWorldY) > worldY) {
                    SPRITE_FLAG_CLEAR(s, X_FLIP);
                    p->charFlags.anim0 = 120;
                    handle->unk3C = 2;
                } else {
                    SPRITE_FLAG_SET(s, X_FLIP);
                    p->charFlags.anim0 = 121;
                    handle->unk3C = 3;
                }
            }

            p->qWorldX = Q(worldX);
            p->qWorldY = Q(worldY);
            p->charFlags.state1 = 0;

            p->charFlags.someFlag1 = 1;
            sub_8016F28(p);
            Player_PlaySong(p, SE_ROTATING_HANDLE);

            p->unk99 = 0;
            handle->base.qSpeedAirX = p->qSpeedAirX;
            handle->base.qSpeedAirY = p->qSpeedAirY;

            p->moveState |= MOVESTATE_20000000;
            p->moveState |= MOVESTATE_10000000;
            gCurTask->main = Task_80326D8;
        }
    }

    sub_8032410(0);
}