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
#include "game/save.h"
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
    /* 0x38 */ u8 direction;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A;
} Spring;

void Task_SpringMain(void);
void sub_802E0D8(void);
void sub_802DFC8(s16 direction, Sprite *s);
void TaskDestructor_Spring(struct Task *t);

void CreateEntity_Spring(u16 direction, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpringMain, sizeof(Spring), 0x2100, 0, TaskDestructor_Spring);
    Spring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;
    s32 absPosX;
    s32 absPosY;
    s16 i;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;

    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->direction = direction;
    spring->unk3A = 0;

    for (i = 0; i < 8; i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }

    spring->unk39 = i;

    spring->worldX = TO_WORLD_POS(me->x, regionX);
    spring->worldY = TO_WORLD_POS(me->y, regionY);

    s->x = spring->worldX - gCamera.x;
    s->y = spring->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_802DFC8(direction, s);
}

void Task_SpringMain(void)
{
    Spring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;

    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = spring->worldX;
    worldY = spring->worldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        u8 someIndex;
        u32 sb;
        s16 anim;

        if ((gStageData.gameMode == GAME_MODE_MP_SINGLE_PACK) && (i != 0)) {
            continue;
        }

        p = GET_SP_PLAYER_V1(i);

        if ((p->charFlags.someIndex != 0x1) && (p->charFlags.someIndex != 0x2) && (p->charFlags.someIndex != 0x4)) {
            continue;
        }

        if (sub_802C0D4(p))
            continue;

        sb = 0;

        anim = p->charFlags.anim0;
        if ((anim == 168) || (anim == 184) || (anim == 204) || ((anim == 213) && (p->charFlags.state1 == 1)) || (anim == 230)
            || (anim == 254) || (anim == 255) || (anim == 258) || (anim == 259) || (anim == 260) || (anim == 256)) {

            if (sub_8020700(s, worldX, worldY, 0, p, 1)) {
                sb = 1;
            }
        }

        if ((sb != 0) || (sub_8020700(s, worldX, worldY, 0, p, sb))) {
            bool32 shouldSwapVerticalAcceleration = FALSE;

            if (!GetBit(spring->unk3A, i)) {
                SetBit(spring->unk3A, i);
                sub_8004E98(p, SE_SPRING);
            }

            if ((s->variant & 1) == 0) {
                s->variant++;
            }

            switch (spring->direction) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 6:
                case 8:
                case 9: {
                    shouldSwapVerticalAcceleration = FALSE;
                } break;

                case 1:
                case 5:
                case 7: {
                    shouldSwapVerticalAcceleration = TRUE;
                } break;
            }

            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                shouldSwapVerticalAcceleration = (shouldSwapVerticalAcceleration == FALSE) ? TRUE : FALSE;
            }

            if (sb != 0) {
                if (shouldSwapVerticalAcceleration == FALSE) {
                    if (p->qSpeedAirX > 640) {
                        SetPlayerCallback(p, sub_8009C94);
                    } else {
                        SetPlayerCallback(p, Player_800EA74);
                    }
                } else {
                    SetPlayerCallback(p, sub_8009D04);
                }
            } else if (shouldSwapVerticalAcceleration == FALSE) {
                if (p->qSpeedAirX > 640) {
                    SetPlayerCallback(p, Player_8009B4C);
                } else {
                    SetPlayerCallback(p, Player_800EA0C);
                }
            } else {
                SetPlayerCallback(p, sub_8009BF0);
            }

            {
                u8 direction = spring->direction;
                u8 otherVal = spring->unk39;
                p->unkA4 = ((direction & 0xF) << 4) | (otherVal & 0xF);
            }

        } else {
            ClearBit(spring->unk3A, i);
        }
    }

    sub_802E0D8();
}

void sub_802DFC8(s16 direction, Sprite *s)
{
    s32 mask = 0;
    s32 variant;

    if (direction & 0x8) {
        variant = 6;

        mask = (direction & 1) ? SPRITE_FLAG(X_FLIP, 1) : 0;
    } else if (direction & 0x4) {
        variant = 4;

        if (direction & 0x2) {
            mask = SPRITE_FLAG(X_FLIP, 1);
        }

        if (direction & 0x1) {
            mask |= SPRITE_FLAG(Y_FLIP, 1);
        }
    } else if (direction & 0x2) {
        variant = 2;

        if (direction & 0x1) {
            mask = SPRITE_FLAG(X_FLIP, 1);
        }
    } else {
        variant = 0;

        if (direction & 0x1) {
            mask = SPRITE_FLAG(Y_FLIP, 1);
        }
    }

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if ((gStageData.act >= ACT_1) && (gStageData.act <= ACT_BONUS_CAPSULE)) {
            if (gStageData.zone == ZONE_6) {
                s->tiles = ALLOC_TILES(ANIM_SPRING_6);
                s->anim = ANIM_SPRING_6;
            } else if (gStageData.zone == ZONE_4) {
                s->tiles = ALLOC_TILES(ANIM_SPRING_4);
                s->anim = ANIM_SPRING_4;
            } else {
                s->tiles = ALLOC_TILES(ANIM_SPRING);
                s->anim = ANIM_SPRING;
            }
        } else {
            s->tiles = ALLOC_TILES(ANIM_SPRING);
            s->anim = ANIM_SPRING;
        }
    } else {
        s->tiles = ALLOC_TILES(ANIM_SPRING);
        s->anim = ANIM_SPRING;
        mask |= SPRITE_FLAG_MASK_MOSAIC;
    }

    s->variant = variant;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = mask | SPRITE_FLAG(PRIORITY, 1);
}

void sub_802E0D8(void)
{
    Spring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    s16 worldX, worldY;

    worldX = spring->worldX;
    worldY = spring->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        if (s->variant & 0x1) {
            s->variant--;
        }
    }

    DisplaySprite(s);
}

void CreateEntity_Spring_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(0, me, regionX, regionY, id); }

void CreateEntity_Spring_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(1, me, regionX, regionY, id); }

void CreateEntity_Spring_Left(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(3, me, regionX, regionY, id); }

void CreateEntity_Spring_Right(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(2, me, regionX, regionY, id); }

void CreateEntity_Spring_UpLeft(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(6, me, regionX, regionY, id); }

void CreateEntity_Spring_DownLeft(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(7, me, regionX, regionY, id); }

void CreateEntity_Spring_UpRight(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(4, me, regionX, regionY, id); }

void CreateEntity_Spring_DownRight(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(5, me, regionX, regionY, id); }

void CreateEntity_Spring_Small_UpRight(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(8, me, regionX, regionY, id); }

void CreateEntity_Spring_Small_UpLeft(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Spring(9, me, regionX, regionY, id); }

void TaskDestructor_Spring(struct Task *t)
{
    Spring *spring = TASK_DATA(t);
    VramFree(spring->s.tiles);
}
