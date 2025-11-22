#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ Hitbox reserved;
    /* 0x64 */ s16 worldX;
    /* 0x66 */ s16 worldY;
    /* 0x68 */ u8 unk68;
    /* 0x69 */ bool8 unk69;
    /* 0x69 */ u16 unk6A;
} Suction; /* 0x6C */

void Task_Suction(void);
void TaskDestructor_Suction(struct Task *);
void sub_80433C8(Suction *);
void sub_8043530(void);
void sub_8043708(Player *p, u8 unk68, s16 worldX, s16 worldY);
void sub_80437A0(Player *p, u8 unk68, s16 worldX, s16 worldY);

void CreateEntity_Suction(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Suction, sizeof(Suction), 0x2100, 0, TaskDestructor_Suction);
    Suction *suction = TASK_DATA(t);
    Sprite *s;
    s16 i;

    suction->base.regionX = regionX;
    suction->base.regionY = regionY;
    suction->base.me = me;
    suction->base.meX = me->x;
    suction->base.id = id;

    suction->unk69 = (me->d.uData[4] & 0xF0) ? 1 : 0;

    for (i = 0; i < 8; i++) {
        if (GetBit(me->d.uData[4], i)) {
            suction->unk68 = i;
            break;
        }
    }

    if (suction->unk68 >= 4) {
        suction->unk68 -= 4;
    }

    suction->unk6A = 0;

    suction->worldX = TO_WORLD_POS(me->x, regionX);
    suction->worldY = TO_WORLD_POS(me->y, regionY);

    s = &suction->s2;
    s->x = suction->worldX - gCamera.x;
    s->y = suction->worldY - gCamera.y;

    suction->s.tiles = NULL;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80433C8(suction);
}

void Task_Suction(void)
{
    Suction *suction = TASK_DATA(gCurTask);
    Sprite *s = &suction->s2;
    s16 worldX, worldY;
    u32 res;
    s16 i;

    worldX = suction->worldX;
    worldY = suction->worldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C080(p)) {
            if (!suction->unk69) {
                if ((p->callback == Player_800E3EC) || (p->callback == Player_800B004)) {
                    continue;
                }

                res = sub_8020700(s, worldX, worldY, 1, p, 0);
                if (res) {
                    suction->unk6A = 60;
                    sub_8043708(p, suction->unk68, worldX, worldY);

                    sub_8003DF0(SE_SUCTION);

                    sub_8016F28(p);
                    continue;
                }
            } else {
                if ((p->callback == Player_800B128) || (p->callback == Player_800E564)) {
                    continue;
                }

                res = sub_8020700(s, worldX, worldY, 1, p, 0);
                if (res) {
                    sub_80437A0(p, suction->unk68, worldX, worldY);
                    continue;
                }
            }
        }

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                    p->qWorldY += Q(1);
                }

                res = sub_8020950(s, worldX, worldY, p, 0);
                if (res & 0x30000) {
                    p->qWorldY += Q_8_8(res);

                    if (res & 0x20000) {
                        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                            p->qWorldY -= Q(1);
                        } else {
                            p->qWorldY += Q(1);
                        }

                        p->qSpeedAirY = 0;
                        p->qSpeedGround = 0;
                    }
                }

                if (res & 0xC0000) {
                    p->qWorldX += Q((s16)res >> 8);

                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
            }
        }
    }

    sub_8043530();
}

void sub_80433C8(Suction *suction)
{
    Sprite *s;

    s = &suction->s2;
    s->frameFlags = 0;
    if (suction->unk69) {
        if (suction->unk68 & 0x2) {
            s->tiles = ALLOC_TILES(ANIM_SUCTION_VERTICAL);
            s->anim = ANIM_SUCTION_VERTICAL;
            s->variant = 0;

            if (suction->unk68 & 0x1) {
                s->frameFlags = SPRITE_FLAG(Y_FLIP, 1);
            }
        } else {
            s->tiles = ALLOC_TILES(ANIM_SUCTION_HORIZONTAL);
            s->anim = ANIM_SUCTION_HORIZONTAL;
            s->variant = 0;

            if (suction->unk68 & 0x1) {
                s->frameFlags = SPRITE_FLAG(X_FLIP, 1);
            }
        }
    } else {
        if (suction->unk68 & 0x2) {
            s->tiles = ALLOC_TILES(ANIM_SUCTION_3_VERTICAL);
            s->anim = ANIM_SUCTION_3_VERTICAL;
            s->variant = 0;

            if (suction->unk68 & 0x1) {
                s->frameFlags = SPRITE_FLAG(Y_FLIP, 1);
            }
        } else {
            s->tiles = ALLOC_TILES(ANIM_SUCTION_3_HORIZONTAL);
            s->anim = ANIM_SUCTION_3_HORIZONTAL;
            s->variant = 0;

            if (suction->unk68 & 0x1) {
                s->frameFlags = SPRITE_FLAG(X_FLIP, 1);
            }
        }
    }

    s->oamFlags = SPRITE_OAM_ORDER(9);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation(s);

    s = &suction->s;
    s->frameFlags = 0;
    if (suction->unk68 & 0x2) {
        s->tiles = ALLOC_TILES(ANIM_SUCTION_STREAM_VERTICAL);
        s->anim = ANIM_SUCTION_STREAM_VERTICAL;
        s->variant = 0;

        if (suction->unk68 & 0x1) {
            s->frameFlags = SPRITE_FLAG(Y_FLIP, 1);
        }
    } else {
        s->tiles = ALLOC_TILES(ANIM_SUCTION_STREAM_HORIZONTAL);
        s->anim = ANIM_SUCTION_STREAM_HORIZONTAL;
        s->variant = 0;

        if (suction->unk68 & 0x1) {
            s->frameFlags = SPRITE_FLAG(X_FLIP, 1);
        }
    }

    s->oamFlags = SPRITE_OAM_ORDER(9);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation(s);
}

void sub_8043530(void)
{
    Suction *suction = TASK_DATA(gCurTask);
    Sprite *s = &suction->s2;
    MapEntity *me = suction->base.me;
    s16 worldX, worldY;
    s16 i;
    u8 j;

    worldX = suction->worldX;
    worldY = suction->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, suction->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        if (suction->unk68 & 0x2) {
            worldX += 4;
        } else {
            worldY += 4;
        }

        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);

        if (suction->unk68 & 0x2) {
            for (j = 0; j < 2; j++) {
                if (j != 0) {
                    SPRITE_FLAG_SET(s, X_FLIP);
                } else {
                    SPRITE_FLAG_CLEAR(s, X_FLIP);
                }
                DisplaySprite(s);
            }
        } else {
            for (j = 0; j < 2; j++) {
                if (j != 0) {
                    SPRITE_FLAG_SET(s, Y_FLIP);
                } else {
                    SPRITE_FLAG_CLEAR(s, Y_FLIP);
                }

                DisplaySprite(s);
            }
        }

        if (!suction->unk69) {
            s = &suction->s;
            s->x = worldX - gCamera.x;
            s->y = worldY - gCamera.y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

void TaskDestructor_Suction(struct Task *t)
{
    Suction *suction = TASK_DATA(t);
    VramFree(suction->s2.tiles);

    if (suction->s.tiles) {
        VramFree(suction->s.tiles);
    }
}

void sub_8043708(Player *p, u8 unk68, s16 worldX, s16 worldY)
{
    p->qUnk70 = Q(worldX);
    p->qUnk74 = Q(worldY);

    switch (unk68) {
        case 0: {
            p->qUnk70 += Q(20);
            p->qUnk74 += Q(5);
            SetPlayerCallback(p, Player_800E3C4);
        } break;

        case 1: {
            p->qUnk70 -= Q(20);
            p->qUnk74 += Q(5);
            SetPlayerCallback(p, Player_800E398);
        } break;

        case 2: {
            p->qUnk74 -= Q(20);
            SetPlayerCallback(p, Player_800E348);
        } break;

        case 3: {
            p->qUnk74 += Q(20);
            SetPlayerCallback(p, Player_800E370);
        } break;
    }
}

void sub_80437A0(Player *p, u8 unk68, s16 worldX, s16 worldY)
{
    p->qUnk70 = Q(worldX);
    p->qUnk74 = Q(worldY);

    switch (unk68) {
        case 0: {
            p->qUnk70 -= Q(16. / 256.);
            SetPlayerCallback(p, Player_800E4B8);
        } break;

        case 1: {
            p->qUnk70 += Q(16. / 256.);
            SetPlayerCallback(p, Player_800E4E0);
        } break;

        case 2: {
            p->qUnk70 += Q(4. / 256.);
            p->qUnk74 += Q(16. / 256.);
            SetPlayerCallback(p, Player_800E490);
        } break;

        case 3: {
            p->qUnk70 += Q(4. / 256.);
            p->qUnk74 -= Q(16. / 256.);
            SetPlayerCallback(p, Player_800E468);
        } break;
    }
}
