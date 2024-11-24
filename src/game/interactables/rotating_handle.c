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
void Task_8032A8C(void);
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

// (86.19%) https://decomp.me/scratch/aQecB
NONMATCH("asm/non_matching/game/interactables/rotating_handle__Task_80326D8.inc", void Task_80326D8(void))
{
    s32 sp08 = 0;
#ifdef NON_MATCHING
    register RotatingHandle *handle asm("r7") = TASK_DATA(gCurTask);
    register Sprite *s asm("r8") = &handle->s;
#else
    RotatingHandle *handle = TASK_DATA(gCurTask);
    Sprite *s = &handle->s;
#endif
    MapEntity *me = handle->base.me;
    s32 worldX, worldY;
    s32 r6;
    u8 i;

    worldX = TO_WORLD_POS(handle->base.spriteX, handle->base.regionX);
    worldY = TO_WORLD_POS(me->y, handle->base.regionY);

    handle->unk38 = (handle->unk38 + handle->unk3A) & 0x3FF0;
    r6 = handle->unk38 >> 4;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);
        Player *handlePlayer;

        if (GAME_MODE_IS_MULTI_PLAYER(gStageData.gameMode) && p->charFlags.someIndex == 3) {
            continue;
        }

        if (handle->unk3D != i) {
            if (p->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) {
                continue;
            }

            if (sub_8020700(s, worldX, worldY, 0, p, 0) != 1) {
                continue;
            }
            // _080327D6

            handlePlayer = handle->player;

            if (handlePlayer->charFlags.someIndex == 2) {
                handlePlayer->keyInput2 |= gStageData.buttonConfig.jump;
                HALVE(p->qSpeedAirX);
                HALVE(p->qSpeedAirY);
                gCurTask->main = Task_8032A8C;
                asm("");
                continue;
            } else if ((handlePlayer->charFlags.someIndex == 1) && (p->charFlags.someIndex == 2)) {
                // _08032820+0x14
                sub_8032410(1);
                return;
            }
        } else if (p->charFlags.anim0 == 102) {
            // _0803283A
            handlePlayer = handle->player;
            handlePlayer->keyInput2 |= gStageData.buttonConfig.jump;
            HALVE(p->qSpeedAirX);
            HALVE(p->qSpeedAirY);
            gCurTask->main = Task_8032A8C;
            return;
        } else if ((p->charFlags.anim0 != 120) && (p->charFlags.anim0 != 121)) {
            // _08032860+0xC
            gCurTask->main = Task_8032A8C;
            return;
        } else {
            // _08032880
            p->qSpeedAirX = handle->base.qSpeedAirX;
            p->qSpeedAirY = handle->base.qSpeedAirY;
        }
        // _08032888

        if ((p->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) || p->callback == Player_800D944) {
            p->moveState &= ~MOVESTATE_10000000;
            gCurTask->main = Task_8032A8C;
        } else if (p->keyInput2 & gStageData.buttonConfig.jump) {
            u32 theta;
            // _080328C0+0xE

            p->charFlags.unk2C_04 = 1;
            SetPlayerCallback(p, Player_800DB30);
            p->moveState &= ~(MOVESTATE_1000000 | MOVESTATE_8);

            gCurTask->main = Task_8032A8C;

            Player_StopSong(p, SE_ROTATING_HANDLE);

            switch (handle->unk3C) {
                case 0: {
                    theta = (32 - r6) & ONE_CYCLE;

                    p->qWorldX += (SIN(r6) * 32);
                    p->qWorldY += (COS(r6) >> 1);
                } break;

                case 1: {
                    theta = (32 + r6) & ONE_CYCLE;

                    p->qWorldX += (SIN(r6) * 32);
                    p->qWorldY += (COS(r6) >> 1);
                } break;

                case 2: {
                    theta = (480 + r6) & ONE_CYCLE;

                    p->qWorldX -= (SIN(r6) >> 1);
                    p->qWorldY += (COS(r6) >> 1);
                } break;

                case 3: {
                    theta = (544 - r6) & ONE_CYCLE;

                    p->qWorldX -= (SIN(r6) >> 1);
                    p->qWorldY -= (COS(r6) >> 1);
                } break;

                default: {
                    theta = 0;
                }
            }

            p->qSpeedAirX = Div((COS(theta) * 2), 17);
            p->qSpeedAirY = Div((SIN(theta) * 2), 17);
            p->charFlags.someFlag1 = 1;
        } else {
            // _08032A20
            u8 newVariant;

#ifndef NON_MATCHING
            u32 a0 = p->charFlags.anim0;
            asm("" ::"r"(a0));
#endif

            newVariant = Div(r6, 86);
            if (newVariant > 11) {
                newVariant = 11;
            }
            // _08032A36

            s->anim = ANIM_ROTATING_HANDLE;
            s->variant = newVariant;
            s->prevVariant = -1;

            p->charFlags.state1 = newVariant;
            p->charFlags.someFlag1 = 1;
            p->qWorldX = Q(worldX);
            p->qWorldY = Q(worldY);
            p->qSpeedAirX = 0;
            p->qSpeedAirY = 0;
        }
    }

    sub_8032410(1);
}
END_NONMATCH
