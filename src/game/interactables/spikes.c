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
    /* 0x34 */ u8 kind;
} Spikes;

void Task_Spikes7(void);
void Task_Spikes_4_6(void);
void sub_8030DEC(void);
void sub_8030D30(s16 param0, Sprite *s);
void sub_8030EC8(s16 param0, Sprite *s);
void sub_8030F70(void);
void TaskDestructor_Spikes(struct Task *t);

void CreateSpikes(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    Spikes *spikes;
    Sprite *s;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (kind < 4) {
            t = TaskCreate(Task_Spikes7, sizeof(Spikes), 0x2100, 0, TaskDestructor_Spikes);
        } else {
            t = TaskCreate(Task_Spikes_4_6, sizeof(Spikes), 0x2100, 0, TaskDestructor_Spikes);
        }
    } else {
        t = TaskCreate(Task_Spikes7, sizeof(Spikes), 0x2100, 0, TaskDestructor_Spikes);
    }

    spikes = TASK_DATA(t);
    s = &spikes->s;

    spikes->base.regionX = regionX;
    spikes->base.regionY = regionY;
    spikes->base.me = me;
    spikes->base.spriteX = me->x;
    spikes->base.id = id;
    spikes->kind = kind;

    // NOTE: Sprite pos set to World pos, instead of screen pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (kind < 4) {
            sub_8030D30(spikes->kind, s);
        } else {
            sub_8030EC8(spikes->kind, s);
        }
    } else {
        sub_8030D30(spikes->kind, s);
    }
}

void Task_Spikes7(void)
{
    Spikes *spikes = TASK_DATA(gCurTask);
    Sprite *s = &spikes->s;
    MapEntity *me = spikes->base.me;
    s16 worldX, worldY;
    u32 mask;
    s16 i;
    u8 kind = spikes->kind;

    worldX = TO_WORLD_POS(spikes->base.spriteX, spikes->base.regionX);
    worldY = TO_WORLD_POS(me->y, spikes->base.regionY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);
        u32 res;
        s32 res2;

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            switch (kind) {
                case 0: {
                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        mask = 0x20000;
                    } else {
                        mask = 0x10000;
                    }
                } break;

                case 1: {

                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        mask = 0x10000;
                    } else {
                        mask = 0x20000;
                    }
                } break;

                case 2: {
                    mask = 0x80000;
                } break;

                case 3: {
                    mask = 0x40000;
                } break;

#ifdef BUG_FIX
                default: {
                    mask = 0;
                } break;
#endif
            }

            res = sub_8020950(s, worldX, worldY, p, 0);

            if (res) {
                if (res & mask) {
                    if ((mask)&0x30000) {
                        s->hitboxes[0].b.left++;
                        s->hitboxes[0].b.right--;

                        res2 = sub_8020950(s, worldX, worldY, p, 0);

                        s->hitboxes[0].b.left--;
                        s->hitboxes[0].b.right++;

                    } else {
                        res2 = res;
                    }

                    if (res2 & mask) {
                        if ((p->framesInvulnerable == 0) && p->framesInvincible == 0) {
                            if (!sub_802C080(p)) {
                                Player_8014550(p);
                                Player_PlaySong(p, SE_SPIKES);
                            }
                        } else {
                            p->qWorldY += Q_8_8(res2);
                            p->qSpeedAirY = 0;
                        }
                    }
                }

                if (res & 0xC0000) {
                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                    p->qWorldX += (s16)(res & 0xFF00);

                    if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                        p->qWorldX -= Q(1);
                        p->moveState |= MOVESTATE_40;
                    } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                        p->qWorldX += Q(1);
                        p->moveState |= MOVESTATE_40;
                    }
                } else if (!(res & mask)) {
                    p->qWorldY += Q_8_8(res);

                    if (res & 0x20000) {
                        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                            p->qWorldY -= Q(1);
                        } else {
                            p->qWorldY += Q(1);
                        }
                        p->qSpeedAirY = 0;
                    }
                }
            }
        }
    }

    sub_8030DEC();
}

void Task_Spikes_4_6(void)
{
    Spikes *spikes = TASK_DATA(gCurTask);
    Sprite *s = &spikes->s;
    MapEntity *me = spikes->base.me;
    s16 worldX, worldY;
    u8 kind = spikes->kind;
    u16 timer = gStageData.timer % 128u;
    Player *p;
    u32 mask;
    u16 sp14;
    s16 i;

    sub_8030F70();

    worldX = TO_WORLD_POS(spikes->base.spriteX, spikes->base.regionX);
    worldY = TO_WORLD_POS(me->y, spikes->base.regionY);

    if ((u16)(timer - 64) >= 60u) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i); // r6
            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->moveState |= MOVESTATE_IN_AIR;
                p->sprColliding = NULL;
            }
        }

        return;
    }

    switch (kind) {
        case 4: {
            mask = 0x10000;
        } break;

        case 5: {
            mask = 0x20000;
        } break;
    }

    for (i = 0, sp14 = timer - 60; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        u32 res;
        if ((gStageData.gameMode == 7) && (i != 0)) {
            continue;
        }

        p = GET_SP_PLAYER_V0(i);

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            res = sub_8020950(s, worldX, worldY, p, 0);

            if (res) {
                if (((res & mask)) || (sp14 < 5)) {
                    s->hitboxes[0].b.left++;
                    s->hitboxes[0].b.right--;

                    res = sub_8020950(s, worldX, worldY, p, 0);

                    s->hitboxes[0].b.left--;
                    s->hitboxes[0].b.right++;

                    if ((res & mask) || (res && (sp14 < 5))) {
                        if ((p->framesInvulnerable == 0) && p->framesInvincible == 0) {
                            if (!sub_802C080(p)) {
                                Player_8014550(p);
                                Player_PlaySong(p, SE_SPIKES);
                            }
                        } else {
                            p->qWorldY += Q_8_8(res);
                            p->qSpeedAirY = 0;
                        }
                    }
                }

                if (!sub_802C0D4(p)) {
                    if (sp14 < 5) {
                        if ((mask != 0x20000)) {
                            if (!(p->moveState & MOVESTATE_COLLIDING_ENT)) {
                                p->moveState &= ~MOVESTATE_IN_AIR;
                                p->moveState |= MOVESTATE_COLLIDING_ENT;
                                p->sprColliding = s;
                            }
                            p->qWorldY = Q(gCamera.y + s->y + s->hitboxes[0].b.top - p->unk25);
                            p->qSpeedAirY = 0;
                        } else {
                            p->qWorldY = Q(gCamera.y + s->y + s->hitboxes[0].b.bottom + p->unk25);
                            p->qSpeedAirY = 0;
                        }
                    } else if (res & 0xC0000) {
                        p->qSpeedAirX = 0;
                        p->qSpeedGround = 0;
                        p->qWorldX += (s16)(res & 0xFF00);

                        if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                            p->qWorldX -= Q(1);
                            p->moveState |= MOVESTATE_40;
                        } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                            p->qWorldX += Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                    } else {
                        p->qWorldY += Q_8_8(res);

                        if (!(res & 0x20000) || (p->moveState & MOVESTATE_GRAVITY_SWITCHED)) {
                            if (!(res & 0x10000) || !(p->moveState & MOVESTATE_GRAVITY_SWITCHED)) {
                                continue;
                            }
                        }

                        p->qSpeedAirY = 0;
                    }
                }
            }
        }
    }
}