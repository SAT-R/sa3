#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 unk8; // only in SA3
    /* 0x09 */ u8 unk9; // only in SA3
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 spriteX;
    /* 0x0C */ u8 id;
    /* 0x10 */ Sprite s;
    /* 0x38 */ s32 qWorldX;
    /* 0x3C */ s32 qWorldY;
    /* 0x40 */ s16 unk40;
    /* 0x42 */ u16 unk42;
    /* 0x44 */ Vec2_16 world; // TODO: Rename to 'start' ?
    /* 0x48 */ Vec2_16 destination;
} UfoPlatform;

void Task_UfoPlatform(void);
void sub_804A800(void);
void sub_804A8F4(Sprite *);
void TaskDestructor_UfoPlatform(struct Task *);

void CreateEntity_UfoPlatform(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_UfoPlatform, sizeof(UfoPlatform), 0x2100, 0, TaskDestructor_UfoPlatform);
    UfoPlatform *ufo = TASK_DATA(t);
    Sprite *s;
    s32 worldX, worldY;

    ufo->regionX = regionX;
    ufo->regionY = regionY;
    ufo->me = me;
    ufo->spriteX = me->x;
    ufo->id = id;
    ufo->unk40 = 0;
    ufo->unk42 = 0;
    ufo->world.x = TO_WORLD_POS(me->x, regionX);
    ufo->world.y = TO_WORLD_POS(me->y, regionY);

    ufo->qWorldX = Q(ufo->world.x);
    ufo->qWorldY = Q(ufo->world.y);

    ufo->destination.x = ufo->world.x + (me->d.sData[0] * TILE_WIDTH);
    ufo->destination.y = ufo->world.y + (me->d.sData[1] * TILE_WIDTH);
    ufo->unkA = 0;

    s = &ufo->s;
    s->x = ufo->world.x;
    s->y = ufo->world.y;

    SET_MAP_ENTITY_INITIALIZED(me);
    sub_804A8F4(s);
}

void Task_UfoPlatform(void)
{
    UfoPlatform *ufo = TASK_DATA(gCurTask);
    Sprite *s = &ufo->s;
    s16 r5;
    s16 r7;
    s16 i;
    Player *p;

    r7 = 0;
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if ((p->callback == Player_8008CD0) || (p->callback == Player_800E1E4)) {
            continue;
        }

        if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
            if ((p->callback != Player_800B81C) && (p->qSpeedGround != 0)) {
                SetPlayerCallback(p, Player_800DE64);
            }

            p->qWorldX = ufo->qWorldX;
            p->qWorldY = ufo->qWorldY - Q(p->unk25 + 12);

            r7 += I(p->qSpeedGround);
        } else {
            if (!sub_802C0D4(p)) {
                u32 res = sub_8020950(s, I(ufo->qWorldX), I(ufo->qWorldY), p, 0);

                if (res & 0x10000) {
                    sub_8016F28(p);
                    p->qWorldY += Q_8_8(res);

                    if (sub_801226C(p) < 0) {
                        sub_8008E38(p);
                    } else if (p->callback != Player_800B81C) {
                        Player_800DE64(p);
                    }
                } else if (res & 0x20000) {
                    p->qWorldY += Q(1) + Q_8_8(res);
                    p->qSpeedAirY = 0;

                    if (sub_8012368(p) < 0) {
                        sub_8008E38(p);
                    }
                }

                if (res & 0xC0000) {
                    if (res & 0x80000) {
                        if (p->keyInput & DPAD_RIGHT) {
                            p->qWorldX += Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                    } else {
                        if (p->keyInput & DPAD_LEFT) {
                            p->qWorldX -= Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                    }

                    p->qSpeedGround = 0;
                    p->qWorldX += Q((s16)res >> 8);
                    p->qSpeedAirX = 0;
                }
            }
        }
    }

    if (r7 != 0) {
        if (r7 < 0) {
            if (++r7 > 0) {
                r7 = 0;
            }
        } else {
            if (--r7 < 0) {
                r7 = 0;
            }
        }
    }

    ufo->unk42 += r7;
    s->variant = (((-ufo->unk42) >> 2) & 0x7);

    if (r7 != 0) {
        // TODO: p doesn't make sense. Or it's always the partner here?
#ifndef NON_MATCHING
        u32 v = p->moveState & MOVESTATE_FACING_LEFT;
        asm("" ::"r"(v));
#endif

        if (ufo->unkA == 0) {
            sub_8003DF0(SE_UFO_PLATFORM);
            ufo->unkA = 1;
        }
    } else {
        sub_8003E28(SE_UFO_PLATFORM);
        ufo->unkA = 0;
    }

    if (r7 > 0) {
        if (I(ufo->qWorldX) < ufo->destination.x) {
            ufo->qWorldX += Q(r7) / 4;

            if (I(ufo->qWorldX) > ufo->destination.x) {
                ufo->qWorldX = Q(ufo->destination.x);
            }
        } else if (I(ufo->qWorldX) < ufo->world.x) {
            ufo->qWorldX += Q(r7) / 4;

            if (I(ufo->qWorldX) > ufo->world.x) {
                ufo->qWorldX = Q(ufo->world.x);
            }
        }

        if (I(ufo->qWorldY) > ufo->destination.y) {
            ufo->qWorldY -= Q(r7) / 4;

            if (I(ufo->qWorldY) < ufo->destination.y) {
                ufo->qWorldY = Q(ufo->destination.y);
            }
        } else if (I(ufo->qWorldY) > ufo->world.y) {
            ufo->qWorldY -= Q(r7) / 4;

            if (I(ufo->qWorldY) < ufo->world.y) {
                ufo->qWorldY = Q(ufo->world.y);
            }
        }
    } else if (r7 < 0) {
        if (I(ufo->qWorldX) > ufo->destination.x) {
            ufo->qWorldX += Q(r7) / 4;

            if (I(ufo->qWorldX) < ufo->destination.x) {
                ufo->qWorldX = Q(ufo->destination.x);
            }
        } else if (I(ufo->qWorldX) > ufo->world.x) {
            ufo->qWorldX += Q(r7) / 4;

            if (I(ufo->qWorldX) < ufo->world.x) {
                ufo->qWorldX = Q(ufo->world.x);
            }
        }

        if (I(ufo->qWorldY) < ufo->destination.y) {
            ufo->qWorldY -= Q(r7) / 4;

            if (I(ufo->qWorldY) > ufo->destination.y) {
                ufo->qWorldY = Q(ufo->destination.y);
            }
        } else if (I(ufo->qWorldY) < ufo->world.y) {
            ufo->qWorldY -= Q(r7) / 4;

            if (I(ufo->qWorldY) > ufo->world.y) {
                ufo->qWorldY = Q(ufo->world.y);
            }
        }
    }

    sub_804A800();
}
