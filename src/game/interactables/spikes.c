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
void sub_8030D30(s16 kind, Sprite *s);
void sub_8030EC8(s16 kind, Sprite *s);
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

void sub_8030D30(s16 kind, Sprite *s)
{
    u32 mask = 0;
    s->tiles = ALLOC_TILES(ANIM_SPIKES);
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (kind < 2) {
            s->anim = (gStageData.zone == ZONE_4) ? ANIM_SPIKES_4 : ANIM_SPIKES;
            s->variant = 0;
        } else {
            s->anim = (gStageData.zone == ZONE_4) ? ANIM_SPIKES_4 : ANIM_SPIKES;
            s->variant = 3;
        }
    } else {
        s->anim = ANIM_SPIKES;
        s->variant = 0;
        mask = SPRITE_FLAG(MOSAIC, 1);
    }

    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | mask;

    if ((kind & 0x3) == 1) {
        SPRITE_FLAG_SET(s, Y_FLIP);
    }

    if (kind == 2) {
        SPRITE_FLAG_SET(s, X_FLIP);
    }

    UpdateSpriteAnimation(s);
}

void sub_8030DEC(void)
{
    Spikes *spikes = TASK_DATA(gCurTask);
    Sprite *s = &spikes->s;
    MapEntity *me = spikes->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = TO_WORLD_POS(spikes->base.spriteX, spikes->base.regionX);
    worldY = TO_WORLD_POS(me->y, spikes->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, spikes->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8030EC8(s16 kind, Sprite *s)
{
    u32 timer = gStageData.timer % 128u;
    u32 mask;

    s->tiles = ALLOC_TILES(ANIM_SPIKES);
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    s->anim = (gStageData.zone == ZONE_4) ? ANIM_SPIKES_4 : ANIM_SPIKES;

    if (timer < 62) {
        s->variant = 1;
    } else if (timer < 64) {
        s->variant = 2;
    } else if (timer < 124) {
        s->variant = 0;
    } else if (timer < 126) {
        s->variant = 2;
    } else if (timer < 128) {
        s->variant = 1;
    }

    mask = SPRITE_FLAG(PRIORITY, 1);
    s->frameFlags = mask;

    if ((kind & 0x1) == 1) {
        s->frameFlags = SPRITE_FLAG(Y_FLIP, 1) | mask;
    }

    UpdateSpriteAnimation(s);
}

void sub_8030F70(void)
{
    Spikes *spikes = TASK_DATA(gCurTask);
    Sprite *s = &spikes->s;
    MapEntity *me = spikes->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = TO_WORLD_POS(spikes->base.spriteX, spikes->base.regionX);
    worldY = TO_WORLD_POS(me->y, spikes->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {

        SET_MAP_ENTITY_NOT_INITIALIZED(me, spikes->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (spikes->kind >= 4) {
        u32 timer = gStageData.timer % 128u;
        if (timer < 60) {
            s->variant = 1;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation(s);
            return;
        } else if ((timer == 60) || (timer == 126)) {
            s->variant = 1;
            s->hitboxes[0].index = -1;
        } else if ((timer == 62) || (timer == 124)) {
            s->variant = 2;
            s->hitboxes[0].index = -1;
        } else if ((timer == 64)) {
            s->variant = 0;
            s->hitboxes[0].index = -1;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreateEntity_Spikes_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateSpikes(0, me, regionX, regionY, id); }

void CreateEntity_Spikes_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateSpikes(1, me, regionX, regionY, id); }

void CreateEntity_Spikes_Left(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateSpikes(2, me, regionX, regionY, id); }

void CreateEntity_Spikes_Right(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateSpikes(3, me, regionX, regionY, id); }

void CreateEntity_Spikes_HidingUp(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateSpikes(4, me, regionX, regionY, id); }

void CreateEntity_Spikes_HidingDown(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateSpikes(5, me, regionX, regionY, id); }

void TaskDestructor_Spikes(struct Task *t)
{
    Spikes *spikes = TASK_DATA(t);
    VramFree(spikes->s.tiles);
}