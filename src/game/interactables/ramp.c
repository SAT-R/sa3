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
bool32 sub_803205C(Ramp *ramp, Player *p);
void sub_80322D8(Player *p, u8 param1, u8 param2, u8 param3);

extern s8 gUnknown_080CF51C[2][40];
extern s16 gUnknown_080CF56C[6][2];

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

// (94.21%) https://decomp.me/scratch/37MIJ
NONMATCH("asm/non_matching/game/interactables/ramp__sub_8031C10.inc", void sub_8031C10(u8 param0))
{
    Ramp *ramp = TASK_DATA(gCurTask);
    Sprite *s = &ramp->s;
    Player *p;
    s16 worldX, worldY;
    s32 qWorldX, qWorldY;
    u8 i;

    worldX = ramp->worldX;
    worldY = ramp->worldY;

    // TODO: WHAT THE .... is that condition!?!?!?
    for (i = 0; (i == 0); i++) {
        if ((gStageData.gameMode == GAME_MODE_MP_SINGLE_PACK) && (i != 0)) {
            continue;
        }

        p = GET_SP_PLAYER_V1(i);

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            // _08031CBA
            if (!(p->moveState & (MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR))) {
                u32 res = sub_8020874(s, worldX, worldY, 0, p, 0, 0);

                if (param0) {
                    if (res & 0x80000) {
                        if (p->keyInput & DPAD_RIGHT) {
                            p->qWorldX += Q(1);
                            p->moveState |= MOVESTATE_40;
                        }

                        p->qWorldX += (s16)(res & 0xFF00);
                        p->qSpeedGround = 0;

                        continue;
                    }
                } else {
                    // _08031D28
                    if (res & 0x40000) {
                        if (p->keyInput & DPAD_LEFT) {
                            p->qWorldX -= Q(1);
                            p->moveState |= MOVESTATE_40;
                        }

                        p->qWorldX += (s16)(res & 0xFF00);
                        p->qSpeedGround = 0;

                        continue;
                    }
                }
            }
            // _08031D68

            if (!sub_803205C(ramp, p)) {
                // _08031D76
                if (!(p->moveState & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != s)) {
                    continue;
                }
                // _08031D8C

                if ((p->charFlags.state0_subCount > 1)
                    && (((I(p->qWorldX) < worldX) && param0 && (p->qSpeedGround < 0))
                        || ((I(p->qWorldX) > worldX) && !param0 && (p->qSpeedGround > 0)))) {
                    // _08031DCC
                    sub_80322D8(p, ramp->unk39, ramp->unk38, 0);
                    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                    continue;
                } else {
                    // _08031DEA
                    if (((ABS(I(p->qWorldX) - worldX) >= 0) && (ABS(I(p->qWorldX) - worldX) < 20)) && (p->qSpeedAirY >= 0)) {
                        s16 dx = I(p->qWorldX) - ramp->worldX;
                        s32 x;

                        if (ramp->unk39 != 0) {
                            dx = -dx;
                        }

                        // TODO: CLAMP
                        dx += 20;

                        if (dx < 0)
                            dx = 0;

                        else if (dx > 39)
                            dx = 39;

                        x = ramp->worldY + gUnknown_080CF51C[ramp->unk38][dx];
                        p->qWorldY = Q(x - p->unk25);
                    } else {
                        // _08031E74
                        p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                        p->sprColliding = NULL;
                    }
                }

                continue;
            } else if (!(p->moveState & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != s)) {
                // _08031E94
                p->moveState |= MOVESTATE_COLLIDING_ENT;
                p->sprColliding = s;

                if (p->moveState & MOVESTATE_IN_AIR) {
                    p->qSpeedGround = p->qSpeedAirX;
                }
                // _08031EA8

                if (p->moveState & MOVESTATE_800000) {
                    SetPlayerCallback(p, Player_80077CC);
                } else {
                    SetPlayerCallback(p, Player_8005528);
                }
            }
            // _08031ECC

            if ((p->qSpeedAirY >= 0) && !(gStageData.buttonConfig.jump & p->keyInput2) && !(p->moveState & MOVESTATE_IN_AIR)
                && ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s))
                && ((((I(p->qWorldX) - worldX) >= 0) && ((I(p->qWorldX) - worldX) < 20))
                    || (((I(p->qWorldX) - worldX) < 0) && (worldX - I(p->qWorldX) < 20)))) {
                s16 dx;
                s32 x;

                dx = I(p->qWorldX) - worldX;

                if (ramp->unk39 != 0) {
                    dx = -dx;
                }

                // TODO: CLAMP
                dx += 20;

                if (dx < 0)
                    dx = 0;

                else if (dx > 39)
                    dx = 39;

                x = ramp->worldY + gUnknown_080CF51C[ramp->unk38][dx];
                p->qWorldY = Q(x - p->unk25);
            }
            // _08031F86

            if (p->qSpeedGround >= Q(9.25)) {
                // TODO: Why is worldX different depending on direction?
                if (p->qSpeedGround < 0) {
                    p->qWorldX += +Q(4);
                    p->qWorldY += -Q(1);
                } else {
                    p->qWorldX += -Q(3);
                    p->qWorldY += -Q(1);
                }
            }
            // _08031FB8

            if ((p->keyInput2 & gStageData.buttonConfig.jump) && (p->charFlags.state0_subCount > 1)) {
                if (ramp->unk39 == 0) {
                    if (p->qSpeedGround > 0) {
                        if (ramp->worldX >= I(p->qWorldX)) {
                            sub_80322D8(p, ramp->unk39, ramp->unk38, 2);
                        } else {
                            sub_80322D8(p, ramp->unk39, ramp->unk38, 1);
                        }
                    }
                } else {
                    // _08032008
                    if (p->qSpeedGround < 0) {
                        if (ramp->worldX > I(p->qWorldX)) {
                            sub_80322D8(p, ramp->unk39, ramp->unk38, 1);
                        } else {
                            sub_80322D8(p, ramp->unk39, ramp->unk38, 2);
                        }
                    }
                }
            }
        }
    }
}
END_NONMATCH

bool32 sub_803205C(Ramp *ramp, Player *p)
{
    Sprite *s = &ramp->s;
    s16 dx, dy;
    s16 r0, r6;
    s32 r2;
    s8 r2_8;
    s32 unk39;

    if (!sub_8020700(s, ramp->worldX, ramp->worldY, 0, p, 0)) {
        return 0;
    }

    dx = I(p->qWorldX);
    dy = I(p->qWorldY);

    r0 = p->unk25 + I(p->qWorldY);

    dx -= ramp->worldX;
    dy = r0 - ramp->worldY;

    r6 = dy;
    r2 = dx;

    dx += 19;

    if ((u16)dx > 38) {
        return 0;
    }

    unk39 = ramp->unk39;
    if (ramp->unk38) {
        if (unk39) {
            r2_8 = gUnknown_080CF51C[0][20 - r2];
            if (r2_8 > r6) {
                return 0;
            }
        } else {
            r2_8 = gUnknown_080CF51C[0][r2 + 20];
            if (r2_8 > r6) {
                return 0;
            }
        }
    } else {
        if (unk39) {
            r2_8 = gUnknown_080CF51C[1][20 - r2];
            if (r2_8 > r6) {
                return 0;
            }
        } else {
            r2_8 = gUnknown_080CF51C[1][r2 + 20];
            if (r2_8 > r6) {
                return 0;
            }
        }
    }

    p->qWorldY = Q(ramp->worldY + r2_8 - p->unk25);

    if (p->qSpeedAirY > 0) {
        p->qSpeedAirY = 0;
    }

    return 1;
}

void sub_803213C(u8 unk38, u8 unk39, Sprite *s)
{
    u32 mask = (unk39 & 0x1) ? SPRITE_FLAG(X_FLIP, 1) : 0;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (unk38 != 0) {
            s->tiles = ALLOC_TILES(ANIM_RAMP);
            s->anim = ANIM_RAMP;
            s->variant = 0;
        } else {
            s->tiles = ALLOC_TILES_VARIANT(ANIM_RAMP, 1);
            s->anim = ANIM_RAMP;
            s->variant = 1;
        }
    } else {
        s->tiles = ALLOC_TILES_VARIANT(ANIM_RAMP, 1);
        s->anim = ANIM_RAMP;
        s->variant = 1;
        mask |= SPRITE_FLAG(MOSAIC, 1);
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | mask;
}

void sub_80321D8(void)
{
    Ramp *ramp = TASK_DATA(gCurTask);
    Sprite *s = &ramp->s;
    MapEntity *me = ramp->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = ramp->worldX;
    worldY = ramp->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, ramp->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x - 0;
        s->y = worldY - gCamera.y - 2;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_Ramp(struct Task *t)
{
    Ramp *ramp = TASK_DATA(t);
    VramFree(ramp->s.tiles);
}

void Task_Ramp(void)
{
    Ramp *ramp = TASK_DATA(gCurTask);
    sub_8031C10(ramp->unk39);
    sub_80321D8();
}

void sub_80322D8(Player *p, u8 param1, u8 param2, u8 param3)
{
    s16 arr[6][2];
    s16 r3, r2;
    memcpy(arr, gUnknown_080CF56C, sizeof(arr));

    r3 = arr[((param2 * 3) + param3)][0];
    r2 = arr[((param2 * 3) + param3)][1];

    if (param1) {
        r3 = -r3;
        p->moveState |= MOVESTATE_FACING_LEFT;
    } else {
        p->moveState &= ~MOVESTATE_FACING_LEFT;
    }

    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
    p->sprColliding = NULL;
    Player_8009F7C(p, r3, r2);
}
