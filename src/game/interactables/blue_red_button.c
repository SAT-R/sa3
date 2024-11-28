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
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

#define BUTTON_KIND_BLUE 0
#define BUTTON_KIND_RED  1

#define GET_ACTIVE_SECONDS(me) (me)->d.sData[0]

#define APPLY_BLUE_BUTTON(me, button, sprite)                                                                                              \
    if (((sprite)->variant == 3) || ((sprite)->variant == 7)) {                                                                            \
        SetBit(gStageData.platformTimerEnableBits, (button)->unk36);                                                                       \
        gStageData.platformTimers[(button)->unk36] = GET_ACTIVE_SECONDS(me) * GBA_FRAMES_PER_SECOND;                                       \
        (sprite)->variant++;                                                                                                               \
        sub_8003DF0(SE_BUTTON_HIT);                                                                                                        \
    }

#define APPLY_RED_BUTTON(me, button, sprite)                                                                                               \
    if (((sprite)->variant == 15) || ((sprite)->variant == 19)) {                                                                          \
        SetBit(gStageData.springTimerEnableBits, (button)->unk36);                                                                         \
        gStageData.springTimers[(button)->unk36] = GET_ACTIVE_SECONDS(me) * GBA_FRAMES_PER_SECOND;                                         \
        (sprite)->variant++;                                                                                                               \
        sub_8003DF0(SE_BUTTON_HIT);                                                                                                        \
    }

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 kind;
    /* 0x35 */ u8 unk35;
    /* 0x35 */ u8 unk36;
} BlueRedButton;

void Task_BlueRedButton(void);
void sub_80302A0(s16 kind, s16 param1, s16 param2, Sprite *s);
void sub_80303B4(void);
void TaskDestructor_BlueRedButton(struct Task *t);

void CreateBlueOrRedButton(u16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BlueRedButton, sizeof(BlueRedButton), 0x2100, 0, TaskDestructor_BlueRedButton);
    BlueRedButton *button = TASK_DATA(t);
    Sprite *s = &button->s;
    s16 worldX, worldY;
    u16 v;
    s16 i;

    button->base.regionX = regionX;
    button->base.regionY = regionY;
    button->base.me = me;
    button->base.spriteX = me->x;
    button->base.id = id;
    button->kind = kind;
    button->unk35 = me->d.uData[1];

    if (button->unk35 == 0) {
        button->unk35 = 1;
    }

    GetFirstSetBitIndexExt(me->d.uData[4], 8, i);
    button->unk36 = i;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80302A0(button->kind, button->unk35 - 1, button->unk36, s);
}

void Task_BlueRedButton(void)
{
    struct Task *stageTask = gStageData.task98;
    MapEntity *me;
    StageDataTask98 *stg98 = TASK_DATA(stageTask);
    BlueRedButton *button = TASK_DATA(gCurTask);
    Sprite *s = &button->s;
    Player *p;
    s16 worldX, worldY;
    s32 r6;
    me = button->base.me;

    worldX = TO_WORLD_POS(button->base.spriteX, button->base.regionX);
    worldY = TO_WORLD_POS(me->y, button->base.regionY);

    if ((s->variant == 3) || (s->variant == 7) || (s->variant == 15) || (s->variant == 19)) {
        if (stg98->unk16 & 0x4) {
            sub_8004DD8(Q(worldX), Q(worldY));
        }
    }

    p = &gPlayers[gStageData.playerIndex];
    if (!sub_802C080(p)) {
        u32 res;

        r6 = 0x10000 << (button->unk35 - 1);

        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            if (r6 == 0x10000) {
                r6 = 0x20000;
            } else if (r6 == 0x20000) {
                r6 = 0x10000;
            }
        }

        res = sub_8020950(s, worldX, worldY, p, 0);

        if (res) {
            if (res & r6) {
                if (button->kind == BUTTON_KIND_BLUE) {
                    APPLY_BLUE_BUTTON(me, button, s);
                } else {
                    APPLY_RED_BUTTON(me, button, s);
                }

                p->qWorldY += Q_8_8(res);
            } else if ((res & 0xC0000) && (p->charFlags.anim0 != 239)) {
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;
                p->qWorldX += (s16)(res & 0xFF00);

                if (!(p->moveState & MOVESTATE_8000)) {
                    if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                        p->qWorldX -= Q(1);
                        p->moveState |= MOVESTATE_40;
                    } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                        p->qWorldX += Q(1);
                        p->moveState |= MOVESTATE_40;
                    }
                }
            } else {
                p->qWorldY += Q_8_8(res);
            }

            if (res & 0x20000) {
                p->qSpeedAirY = 0;
            }
        } else {
            Player *p2 = stg98->player;

            if ((p2->charFlags.someIndex == 1) || (p2->charFlags.someIndex == 4)) {
                if (((stg98->unk16 & 0x6) == 0x6) && (sub_805C510(s) == TRUE)) {
                    if (button->kind == BUTTON_KIND_BLUE) {
                        APPLY_BLUE_BUTTON(me, button, s);
                    } else {
                        APPLY_RED_BUTTON(me, button, s);
                    }
                }
            }

            res = sub_8020700(s, worldX, worldY, 0, p, 1);

            if (res) {
                if (button->kind == BUTTON_KIND_BLUE) {
                    APPLY_BLUE_BUTTON(me, button, s);
                } else {
                    APPLY_RED_BUTTON(me, button, s);
                }
            }
        }
    }

    if ((gStageData.zone == ZONE_2) && (gStageData.act == ACT_BOSS)) {
        if (me->d.uData[4] == 0xFF) {
            p->moveState &= ~MOVESTATE_COLLIDING_ENT;
            TaskDestroy(gCurTask);
            return;
        }

        if ((me->d.uData[4] == 2) && (button->kind == BUTTON_KIND_BLUE)) {
            APPLY_BLUE_BUTTON(me, button, s);
        }

        if ((s->variant != 3) && (s->variant != 7)) {
            me->d.uData[4] = 1;
        }
    }

    sub_80303B4();
}

void sub_80302A0(s16 kind, s16 param1, s16 param2, Sprite *s)
{
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (kind == BUTTON_KIND_BLUE) {
        if (param1 == 1) {
            SPRITE_FLAG_SET(s, Y_FLIP);
        } else if (param1 == 3) {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        s->tiles = ALLOC_TILES(ANIM_BUTTON_BLUE);
        s->anim = ANIM_BUTTON_BLUE;

        if (GetBit(gStageData.platformTimerEnableBits, param2)) {
            if (param1 & 0x2) {
                s->variant = 9;
            } else {
                s->variant = 5;
            }
        } else {
            if (param1 & 0x2) {
                s->variant = 7;
            } else {
                s->variant = 3;
            }
        }
    } else {
        if (param1 == 1) {
            SPRITE_FLAG_SET(s, Y_FLIP);
        } else if (param1 == 3) {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        s->tiles = ALLOC_TILES_VARIANT(ANIM_BUTTON_SPRING_1, 15);
        s->anim = ANIM_BUTTON_SPRING_1;

        if (GetBit(gStageData.springTimerEnableBits, param2)) {
            if (param1 & 0x2) {
                s->variant = 21;
            } else {
                s->variant = 17;
            }
        } else {
            if (param1 & 0x2) {
                s->variant = 19;
            } else {
                s->variant = 15;
            }
        }
    }

    UpdateSpriteAnimation(s);
}

void sub_80303B4(void)
{
    BlueRedButton *button = TASK_DATA(gCurTask);
    Sprite *s = &button->s;
    MapEntity *me = button->base.me;
    s16 worldX, worldY;
    AnimCmdResult acmdRes;
    s16 i;
    u8 unk35 = button->unk35 - 1;

    worldX = TO_WORLD_POS(button->base.spriteX, button->base.regionX);
    worldY = TO_WORLD_POS(me->y, button->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, button->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    // TODO: This cast is weird, but required for matching.
    acmdRes = (u16)UpdateSpriteAnimation(s);

    if (button->kind == BUTTON_KIND_BLUE) {
        if (unk35 & 0x2) {
            if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 8)) {
                s->variant = 9;
            } else if (!GetBit(gStageData.platformTimerEnableBits, button->unk36) && (s->variant == 9)) {
                s->variant = 10;
            } else if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 10)) {
                s->variant = 7;
            }
        } else {
            if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 4)) {
                s->variant = 5;
            } else if (!GetBit(gStageData.platformTimerEnableBits, button->unk36) && (s->variant == 5)) {
                s->variant = 6;
            } else if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 6)) {
                s->variant = 3;
            }
        }
    } else {
        if (unk35 & 0x2) {
            if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 20)) {
                s->variant = 21;
            } else if (!GetBit(gStageData.springTimerEnableBits, button->unk36) && s->variant == 21) {
                s->variant = 22;
            } else if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 22)) {
                s->variant = 19;
            }
        } else {
            if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 16)) {
                s->variant = 17;
            } else if (!GetBit(gStageData.springTimerEnableBits, button->unk36) && (s->variant == 17)) {
                s->variant = 18;
            } else if ((acmdRes == ACMD_RESULT__ENDED) && (s->variant == 18)) {
                s->variant = 15;
            }
        }
    }

    DisplaySprite(s);
}

void CreateEntity_BlueButton(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateBlueOrRedButton(BUTTON_KIND_BLUE, me, regionX, regionY, id);
}

void CreateEntity_RedButton(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateBlueOrRedButton(BUTTON_KIND_RED, me, regionX, regionY, id);
}

void TaskDestructor_BlueRedButton(struct Task *t)
{
    BlueRedButton *button = TASK_DATA(t);
    VramFree(button->s.tiles);
}