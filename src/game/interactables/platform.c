#include <string.h> // memcpy
#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/interactables/platform_shared.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/zones.h"

void Task_Platform(void);
bool16 sub_802F1B8(Sprite *s);
bool16 sub_802F2C8(void);
void Task_802F368(void);
void Task_802F698(void);
void TaskDestructor_Platform(struct Task *);

typedef struct {
    /* 0x00 */ PlatformShared shared;
    /* 0x2C */ Sprite s;
    /* 0x54 */ u8 kindA;
    /* 0x55 */ u8 flags_lo : 2;
    /* 0x55 */ u8 flags_2 : 1;
    /* 0x55 */ u8 flags_3 : 1;
    /* 0x55 */ u8 flags_4 : 1;
    /* 0x55 */ u8 flags_5 : 1;
} Platform;

static void InitSprite(u16, u16, Sprite *);

extern const u16 sPlatformAnimsDefault[8][3];
extern const u16 sPlatformAnimsHubworld[7][3];
extern const u16 gUnknown_080CF4F2[7][3];

void CreateEntity_Platform(s16 kindA, s16 sharedKind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Platform, sizeof(Platform), 0x2100, 0, TaskDestructor_Platform);
    Platform *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    PlatformShared *shared = &platform->shared;
    s32 qWorldX, qWorldY;
    s32 qLeft, qTop;
    s32 qHalfHeight, qHalfWidth;
    s16 i;

    shared->base.regionX = regionX;
    shared->base.regionY = regionY;
    shared->base.me = me;
    shared->base.meX = me->x;
    shared->base.id = id;

    qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    shared->qWorldX = qWorldX;
    qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    shared->qWorldY = qWorldY;

    shared->unk28 = sub_804DC38(sharedKind, I(qWorldX), I(qWorldY), me);
    shared->kind = sharedKind;
    platform->kindA = 0;

    platform->flags_lo = kindA;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qHalfHeight = Q(me->d.uData[3] * (TILE_WIDTH / 2));

    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qHalfWidth = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    shared->qHalfHeight = qHalfHeight;
    shared->qHalfWidth = qHalfWidth;

    shared->qMiddleX = qLeft + qHalfWidth;
    shared->qMiddleY = qTop + qHalfHeight;

    for (i = 0; i < 5; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    shared->unk2A = i + 1;

    switch (kindA) {
        case 0: {
            if (me->d.uData[4] & 0x80) {
                platform->flags_3 = 1;
            } else {
                platform->flags_3 = 0;
            }

            platform->flags_2 = 0;
            platform->flags_4 = 0;
            platform->flags_5 = 0;
        } break;

        case 1: {
            platform->flags_3 = 0;
            platform->flags_2 = 1;
            platform->flags_4 = 0;
            platform->flags_5 = 0;
        } break;

        case 2: {
            platform->flags_3 = 1;

            if (me->d.uData[4] & 0x80) {
                platform->flags_2 = 1;
            } else {
                platform->flags_2 = 0;
            }

            if (me->d.uData[4] & 0x40) {
                platform->flags_4 = 1;
            } else {
                platform->flags_4 = 0;
            }

            if (me->d.uData[4] & 0x20) {
                platform->flags_5 = 1;
            } else {
                platform->flags_5 = 0;
            }

        } break;
    }

    s->x = I(qWorldX);
    s->y = I(qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(platform->flags_lo, platform->flags_5, s);
}

void Task_Platform()
{
    Platform *platform;
    PlatformShared *shared;
    Sprite *s;
    s32 qWorldX, qWorldY;
    s32 qInitialWorldX, qInitialWorldY;
    s16 i;
    s16 qSpeed;
    s16 sp10 = 0;
    platform = TASK_DATA(gCurTask);
    shared = &platform->shared;
    s = &platform->s;

    qWorldX = platform->shared.qWorldX;
    qWorldY = platform->shared.qWorldY;

    sub_804DD68(&platform->shared);

    // TODO: Why are they doing this?
    qInitialWorldX = qWorldX -= shared->qWorldX;
    qInitialWorldY = qWorldY -= shared->qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if ((gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) || (i == 0)) {
            Player *p = GET_SP_PLAYER_V0(i);

            if (!sub_802C0D4(p)) {
                u32 res;

                if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                    p->qWorldX -= qWorldX;

                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        qWorldY += Q(4);
                    } else {
                        qWorldY -= Q(4);
                    }

                    p->qWorldY -= qWorldY;
                    sp10 = +1;

                    if (platform->flags_2) {
                        if (sub_802F2C8()) {
                            return;
                        }
                    }
                } else if (sp10 == 0) {
                    sp10 = -1;
                }

                res = sub_8020950(s, I(shared->qWorldX), I(shared->qWorldY), p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                    p->qSpeedAirY = Q(0);
                    p->unk26 = 0;

                    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
                        if (((sp10 == +1) && (qInitialWorldY > Q(2))) || ((sp10 != +1) && (qInitialWorldY > Q(0)))) {
                            if (sub_801226C(p) < 0) {
                                if (!sub_802C080(p)) {
                                    Player_HitWithoutRingsUpdate(p);
                                }
                            }
                        }
                    }
                } else if (!platform->flags_3) {
                    continue;
                } else if (res & 0x20000) {
                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        s32 qPlayerY;
                        s32 qOffsetY = Q(res & 0xFF00);
                        qPlayerY = p->qWorldY;

                        if (sp10 == +1) {
                            p->qWorldY = qPlayerY - Q(6);
                            p->qWorldY += qOffsetY;
                        } else {
                            p->qWorldY = qPlayerY - Q(4);
                            p->qWorldY += qOffsetY;
                        }

                    } else {
                        s32 qDiff = Q(res & 0xFF00);
                        s32 qPlayerY = p->qWorldY;

                        if (sp10 == +1) {
                            p->qWorldY = qPlayerY + Q(6);
                            p->qWorldY += qDiff;
                        } else {
                            p->qWorldY = qPlayerY + Q(4);
                            p->qWorldY += qDiff;
                        }

                        if (((sp10 == +1) && (qInitialWorldY < Q(2))) || ((sp10 != +1) && (qInitialWorldY < Q(0)))) {
                            p->qWorldY -= qInitialWorldY;
                        }
                    }

#ifndef NON_MATCHING
                    // NOTE: This is only here to prevent a jump from being optimized out
                    asm("");
#endif
                    if (sp10 == +1) {
                        if (qInitialWorldY < Q(2)) {
                            // TODO: Remove goto
                            goto test;
                        } else {
                            p->qSpeedAirY = Q(0);
                        }
                    } else {
                        if (qInitialWorldY < Q(0)) {
                        test:
                            p->qSpeedAirY = -qInitialWorldY;
                        } else {
                            p->qSpeedAirY = Q(0);
                        }
                    }

                    if (!sub_802C080(p)) {
                        if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
                            if (sub_8012368(p) < 0) {
                                Player_HitWithoutRingsUpdate(p);
                            } else if (!(p->moveState & MOVESTATE_IN_AIR)) {
                                Player_8012FE0(p);

                                p->charFlags.anim0 = 24;
                                Player_800DAF4(p);
                            }
                        }
                    }
                }

                if ((platform->flags_3) && (res & 0xC0000)) {
                    p->qWorldX += Q_8_8((s16)res >> 8);

                    if (((res & 0x40000) && (p->moveState & MOVESTATE_FACING_LEFT))
                        || ((res & 0x80000) && !(p->moveState & MOVESTATE_FACING_LEFT))) {
                        if (p->moveState & MOVESTATE_JUMPING) {
                            p->qSpeedAirX = 0;
                            p->qSpeedGround = 0;

                            if (sub_80110E8(3, p, 0, 0) < 0) {
                                p->qWorldY -= Q(9);

                                if (p->moveState & MOVESTATE_FACING_LEFT) {
                                    p->qWorldX += Q(16);
                                } else {
                                    p->qWorldX -= Q(16);
                                }
                            }
                        } else {
                            if ((p->charFlags.character != CHARACTER_KNUCKLES) || (p->charFlags.anim0 != 231)) {
                                if ((res & MOVESTATE_40000) && (p->keyInput & DPAD_LEFT)) {
                                    if (qWorldX != Q(0)) {
                                        p->qWorldX -= Q(2);
                                    } else {
                                        p->qWorldX -= Q(1);
                                    }

                                    p->qSpeedGround = -qWorldX; // huh?
                                    p->moveState |= MOVESTATE_40;
                                } else if ((res & MOVESTATE_80000) && (p->keyInput & DPAD_RIGHT)) {
                                    if (qWorldX != Q(0)) {
                                        p->qWorldX += Q(2);
                                    } else {
                                        p->qWorldX += Q(1);
                                    }

                                    p->qSpeedGround = -qWorldX; // huh?
                                    p->moveState |= MOVESTATE_40;
                                } else {
                                    p->qSpeedGround = Q(0);
                                }
                            }
                        }
                    }

                    if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                        || (p->charFlags.anim0 == 245)) {
                        Player_HitWithoutRingsUpdate(p);
                    }

                    if ((sub_801246C(p) < 0) || (sub_8012550(p) < 0)) {
                        if (!sub_802C080(p)) {
                            Player_HitWithoutRingsUpdate(p);
                        }
                    }
                }
            }
        }
    }

    if (sp10 != 0) {
        if ((sp10 == +1) && (platform->kindA < 16)) {
            platform->kindA++;
        } else if ((sp10 == -1) && (platform->kindA > 0)) {
            platform->kindA--;
        }
    }

    qSpeed = SIN(platform->kindA * 16) >> 5;
    shared->qWorldY += qSpeed;

    if (!sub_802F1B8(s)) {
        DrawPlatformShared(shared, s);
    }
}

bool16 sub_802F1B8(Sprite *s)
{
    Platform *platform = TASK_DATA(gCurTask);
    PlatformShared *shared = &platform->shared;
    MapEntity *me = platform->shared.base.me;
    s16 i, j;
    s16 k = 0;

    for (i = 0; i < 2; i++) {
        s32 screenX, screenY;

        if (i == 0) {
            screenX = TO_WORLD_POS(shared->base.meX, shared->base.regionX) - gCamera.x;
            screenY = TO_WORLD_POS(me->y, shared->base.regionY) - gCamera.y;
        } else {
            screenX = I(shared->qWorldX) - gCamera.x;
            screenY = I(shared->qWorldY) - gCamera.y;
        }

        if (IS_OUT_OF_CAM_RANGE_TYPED(u32, screenX, screenY)) {
            k++;
        }
    }

    if (k >= 2) {
        for (j = 0; j < NUM_SINGLE_PLAYER_CHARS; j++) {
            Player *p = (j != 0) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.playerIndex];

            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, shared->base.meX);
        TaskDestroy(gCurTask);
        return TRUE;
    } else {
        return FALSE;
    }
}

bool16 sub_802F2C8(void)
{
    Platform *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    s16 i;

    platform->kindA = 0;

    if (sub_802F1B8(s)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V0(i);

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->moveState |= MOVESTATE_IN_AIR;
                p->sprColliding = NULL;
            }
        }

        return TRUE;
    } else {
        gCurTask->main = Task_802F368;
        return FALSE;
    }
}

// (99.47%) https://decomp.me/scratch/dxwOr
// TODO: The non-match of this is basically the same as Task_802F698.
//       So if one of them gets a match, the other one's should be free.
//       It's about the multiple "Platform" pointers being accessed differently.
NONMATCH("asm/non_matching/game/interactables/platform__Task_802F368.inc", void Task_802F368(void))
{
    Platform *platform = TASK_DATA(gCurTask);
    PlatformShared *shared = &platform->shared;
    Platform *platform2 = TASK_DATA(gCurTask);
#ifndef NON_MATCHING
    register Sprite *s asm("sl") = &platform->s;
#else
    Sprite *s = &platform->s;
#endif
    Player *p;
    s32 qWorldY;
    s16 i;

    qWorldY = shared->qWorldY;
    platform->shared.qWorldY += platform->kindA * 42;
    platform->kindA++;

    qWorldY -= shared->qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            u32 res;

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->qWorldY -= qWorldY * 2;
                Player_80149E4(p);
            }

            res = sub_8020950(s, I(platform->shared.qWorldX), I(platform->shared.qWorldY), p, 0);
            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
                p->unk26 = 0;

                if (sub_801226C(p) < 0) {
                    if (!sub_802C080(p)) {
                        Player_HitWithoutRingsUpdate(p);
                    }
                }
            } else if (!platform2->flags_3) {
                continue;
            } else if (res & 0x20000) {
                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                    p->qWorldY += -Q(4) + Q_8_8(res);
                } else {
                    p->qWorldY += +Q(4) + Q_8_8(res);
                }
                p->qSpeedAirY = 0;

                if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
                    if (sub_8012368(p) < 0) {
                        if (!sub_802C080(p)) {
                            Player_HitWithoutRingsUpdate(p);
                        }
                    } else if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                               || (p->charFlags.anim0 == 245)) {
                        Player_8012FE0(p);

                        p->charFlags.anim0 = 24;
                        Player_800DAF4(p);
                    }
                }
            }

            if (platform2->flags_3 && (res & 0xC0000)) {
                p->qWorldX += Q_8_8((s16)res >> 8);
                p->qSpeedAirX = 0;

                if (((res & 0x40000) && (p->moveState & MOVESTATE_FACING_LEFT))
                    || ((res & 0x80000) && !(p->moveState & MOVESTATE_FACING_LEFT))) {
                    p->qSpeedGround = 0;
                }

                if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                    || (p->charFlags.anim0 == 245)) {
                    if (!sub_802C080(p)) {
                        Player_HitWithoutRingsUpdate(p);
                    }
                }

                if (sub_801246C(p) < 0) {
                    if (!sub_802C080(p)) {
                        Player_HitWithoutRingsUpdate(p);
                    }
                }

                if ((sub_8012550(p) < 0) && !sub_802C080(p)) {
                    Player_HitWithoutRingsUpdate(p);
                }
            }
        }
    }

    if (sub_802F1B8(s)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->moveState |= MOVESTATE_IN_AIR;
                p->sprColliding = NULL;
            }
        }
    } else {
        if (platform->flags_4) {
            s32 res = sub_8052418(I(platform->shared.qWorldY), I(platform->shared.qWorldX), 1, 8, sub_8051F54);

            if (res <= 0) {
                platform->shared.qWorldY -= Q(res);
                platform2->kindA = 0xFF;
                gCurTask->main = Task_802F698;
            }
        }

        DrawPlatformShared(&platform->shared, s);

        if (platform2->kindA >= 30) {
            gCurTask->main = Task_802F698;
        }
    }
}
END_NONMATCH

// (99,47%) https://decomp.me/scratch/F6jFq
// TODO: The non-match of this is basically the same as Task_802F368.
//       So if one of them gets a match, the other one's should be free.
//       It's about the multiple "Platform" pointers being accessed differently.
NONMATCH("asm/non_matching/game/interactables/platform__Task_802F698.inc", void Task_802F698(void))
{
    Platform *platform = TASK_DATA(gCurTask);
    PlatformShared *shared = &platform->shared;
    Platform *platform2 = TASK_DATA(gCurTask);
#ifndef NON_MATCHING
    register Sprite *s asm("sl") = &platform->s;
#else
    Sprite *s = &platform->s;
#endif
    Player *p;
    s32 qWorldY;
    s16 i;

    qWorldY = shared->qWorldY;
    if (platform->kindA != 0xFF) {
        platform->shared.qWorldY += platform->kindA * 42;
        platform->kindA++;
    }

    qWorldY -= shared->qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            u32 res;

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->qWorldY -= qWorldY;
                Player_80149E4(p);
            }

            res = sub_8020950(s, I(platform->shared.qWorldX), I(platform->shared.qWorldY), p, 0);
            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
                p->unk26 = 0;

                if (sub_801226C(p) < 0) {
                    if (!sub_802C080(p)) {
                        Player_HitWithoutRingsUpdate(p);
                    }
                }
            } else if (!platform2->flags_3) {
                continue;
            } else if (res & 0x20000) {
                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                    p->qWorldY += -Q(4) + Q_8_8(res);
                } else {
                    p->qWorldY += +Q(4) + Q_8_8(res);
                }
                p->qSpeedAirY = 0;

                if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
                    if (sub_8012368(p) < 0) {
                        if (!sub_802C080(p)) {
                            Player_HitWithoutRingsUpdate(p);
                        }
                    } else if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                               || (p->charFlags.anim0 == 245)) {
                        Player_8012FE0(p);

                        p->charFlags.anim0 = 24;
                        Player_800DAF4(p);
                    }
                }
            }

            if (platform2->flags_3 && (res & 0xC0000)) {
                p->qWorldX += Q_8_8((s16)res >> 8);
                p->qSpeedAirX = 0;

                if (((res & 0x40000) && (p->moveState & MOVESTATE_FACING_LEFT))
                    || ((res & 0x80000) && !(p->moveState & MOVESTATE_FACING_LEFT))) {
                    p->qSpeedGround = 0;
                }

                if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                    || (p->charFlags.anim0 == 245)) {
                    if (!sub_802C080(p)) {
                        Player_HitWithoutRingsUpdate(p);
                    }
                }

                if (sub_801246C(p) < 0) {
                    if (!sub_802C080(p)) {
                        Player_HitWithoutRingsUpdate(p);
                    }
                }

                if ((sub_8012550(p) < 0) && !sub_802C080(p)) {
                    Player_HitWithoutRingsUpdate(p);
                }
            }
        }
    }

    if (sub_802F1B8(s)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->moveState |= MOVESTATE_IN_AIR;
                p->sprColliding = NULL;
            }
        }
    } else {
        if ((platform->flags_4) && (platform2->kindA != 0xFF)) {

            s32 res = sub_8052418(I(platform->shared.qWorldY) + s->hitboxes[0].b.bottom, I(platform->shared.qWorldX), 1, 8, sub_8051F54);

            if (res <= 0) {
                platform->shared.qWorldY += Q(res);
                platform2->kindA = 0xFF;
            }
        }

        DrawPlatformShared(&platform->shared, s);
    }
}
END_NONMATCH

static void InitSprite(u16 kindA, u16 flag5, Sprite *s)
{
    AnimId anim;
    u16 variant;
    u16 tileCount;
    s32 sb = 0;
    u16 array0[8][3];
    u16 array1[7][3];
    u16 array2[7][3];
    memcpy(array0, sPlatformAnimsDefault, sizeof(array0));
    memcpy(array1, sPlatformAnimsHubworld, sizeof(array1));
    memcpy(array2, gUnknown_080CF4F2, sizeof(array2));

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (kindA == 2) {
            if (gStageData.act == ACT_BONUS_ENEMIES) {
                anim = ANIM_PLATFORM_BONUS;
                variant = 0;
                tileCount = MAX_TILES_VARIANT(ANIM_PLATFORM_BONUS, 0);
            } else if (flag5) {
                anim = array0[7][0];
                variant = array0[7][1];
                tileCount = array0[7][2];
            } else {
                anim = array0[gStageData.zone][0];
                variant = array0[gStageData.zone][1];
                tileCount = array0[gStageData.zone][2];
            }
        } else if (gStageData.act == ACT_BONUS_ENEMIES) {
            anim = ANIM_PLATFORM_BONUS;
            variant = 1;
            tileCount = MAX_TILES_VARIANT(ANIM_PLATFORM_BONUS, 1);
        } else if (gStageData.act != ACT_HUB) {
            anim = array2[gStageData.zone][0];
            variant = array2[gStageData.zone][1];
            tileCount = array2[gStageData.zone][2];
        } else {
            anim = array1[gStageData.zone][0];
            variant = array1[gStageData.zone][1];
            tileCount = array1[gStageData.zone][2];
        }
    } else {
        anim = ANIM_PLATFORM_2;
        variant = 0;
        tileCount = MAX_TILES(ANIM_PLATFORM_2);
        sb = SPRITE_FLAG_MASK_MOSAIC;
    }

    s->tiles = VramMalloc(tileCount);
    s->anim = anim;
    s->variant = variant;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = sb | SPRITE_FLAG(PRIORITY, 1);
}

void CreateEntity_Platform_0_0(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(0, 0, me, regionX, regionY, id); }

void CreateEntity_Platform_0_1(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(0, 1, me, regionX, regionY, id); }

void CreateEntity_Platform_0_2(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(0, 2, me, regionX, regionY, id); }

void CreateEntity_Platform_0_3(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(0, 3, me, regionX, regionY, id); }

void CreateEntity_Platform_1_0(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(1, 0, me, regionX, regionY, id); }

void CreateEntity_Platform_1_1(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(1, 1, me, regionX, regionY, id); }

void CreateEntity_Platform_1_2(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(1, 2, me, regionX, regionY, id); }

void CreateEntity_Platform_1_3(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(1, 3, me, regionX, regionY, id); }

void CreateEntity_Platform_2_0(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(2, 0, me, regionX, regionY, id); }

void CreateEntity_Platform_2_1(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(2, 1, me, regionX, regionY, id); }

void CreateEntity_Platform_2_2(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(2, 2, me, regionX, regionY, id); }

void CreateEntity_Platform_2_3(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Platform(2, 3, me, regionX, regionY, id); }

void TaskDestructor_Platform(struct Task *t)
{
    Platform *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}