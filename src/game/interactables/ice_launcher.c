#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x8];
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ s16 worldX;
    /* 0x40 */ s16 worldY;
    /* 0x42 */ u8 unk42;
} IceLauncher; /* 0x44 */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[4];
} IceShiver; /* 0x38 */

void Task_IceLauncher(void);
void sub_804B168(void);
void TaskDestructor_IceLauncher(struct Task *t);
void sub_804B0F8(Sprite *s, s16 param1);

void CreateEntity_IceLauncher(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_IceLauncher, sizeof(IceLauncher), 0x2100, 0, TaskDestructor_IceLauncher);
    IceLauncher *launcher = TASK_DATA(t);
    Sprite *s;

    launcher->base.regionX = regionX;
    launcher->base.regionY = regionY;
    launcher->base.me = me;
    launcher->base.spriteX = me->x;
    launcher->base.id = id;
    launcher->unk3C = 0;
    launcher->worldX = TO_WORLD_POS(me->x, regionX);
    launcher->worldY = TO_WORLD_POS(me->y, regionY);
    launcher->unk42 = me->d.uData[4] & 0x3;

    s = &launcher->s;
    s->x = launcher->worldX - gCamera.x;
    s->y = launcher->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);
    sub_804B0F8(s, launcher->unk42);
}

void Task_IceLauncher(void)
{
    IceLauncher *launcher = TASK_DATA(gCurTask);
    Sprite *s = &launcher->s;
    s16 worldX = launcher->worldX;
    s16 worldY = launcher->worldY;
    s16 i;
    u32 res;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (!sub_802C080(p)) {
            if ((p->callback == Player_800B920) || (p->callback == Player_800DEC4)) {
                continue;
            }

            res = sub_8020700(s, worldX, worldY, 1, p, 0);
            if (res) {
                launcher->unk3C = 30;

                p->qUnk70 = Q(launcher->worldX) | launcher->unk42;
                p->qUnk74 = Q(launcher->worldY);

                SetPlayerCallback(p, Player_IceLauncherLaunch);
                sub_8016F28(p);
                continue;
            }
        }

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                res = sub_8020950(s, worldX, worldY, p, 0);

                if ((p->callback == Player_CollideGroundAfterIceLauncher) && res) {
                    p->qUnk70 = Q(launcher->worldX) | launcher->unk42;
                    p->qUnk74 = Q(launcher->worldY);

                    SetPlayerCallback(p, Player_IceLauncherLaunch);
                } else {
                    if (res & 0x10000) {
                        p->qWorldY += Q_8_8(res);
                    } else if (res & 0x20000) {
                        p->qWorldY += Q_8_8(res);

                        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                            p->qWorldY -= Q(1.0);
                        } else {
                            p->qWorldY += Q(1.0);
                        }

                        p->qSpeedAirY = 0;
                        p->qSpeedGround = 0;
                    }

                    if (res & 0xC0000) {
                        p->qWorldX += Q((s16)res >> 8);
                        p->qSpeedAirX = 0;
                        p->qSpeedGround = 0;
                    }
                }
            }
        }
    }

    sub_804B168();
}

void sub_804B0F8(Sprite *s, s16 param1)
{
    u32 xFlipBit = 0;
    s->tiles = ALLOC_TILES(ANIM_ICE_LAUNCHER);

    if (param1 == 0) {
        s->anim = ANIM_ICE_LAUNCHER;
        s->variant = 0;
    } else {
        s->anim = ANIM_ICE_LAUNCHER;
        s->variant = 2;

        if (param1 == 1) {
            xFlipBit = SPRITE_FLAG(X_FLIP, 1);
        }
    }

    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = xFlipBit | SPRITE_FLAG(PRIORITY, 1);

    UpdateSpriteAnimation(s);
}

void sub_804B168(void)
{
    IceLauncher *launcher = TASK_DATA(gCurTask);
    Sprite *s = &launcher->s;
    MapEntity *me = launcher->base.me;
    s16 worldX, worldY;

    worldX = launcher->worldX;
    worldY = launcher->worldY;
    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, launcher->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    if (launcher->unk3C) {
        launcher->unk3C--;

        if (launcher->unk42 == 0) {
            s->variant = 1;
        } else {
            s->variant = 3;
        }
    } else {
        // _0804B1DC
        if (launcher->unk42 != 0) {
            s->variant = 2;
        } else {
            s->variant = 0;
        }
    }
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!launcher->unk42) {
        SPRITE_FLAG_SET(s, X_FLIP);
        DisplaySprite(s);

        SPRITE_FLAG_CLEAR(s, X_FLIP);
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

#if 01
#endif