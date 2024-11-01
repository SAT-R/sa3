#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "module_unclear.h"
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
    /* 0x0C */ Sprite s[3];
    /* 0x84 */ s32 worldX;
    /* 0x88 */ s32 worldY;
    /* 0x8C */ s16 unk8C;
    /* 0x8E */ u8 unk8E[NUM_SINGLE_PLAYER_CHARS];
} Lift; /* 0x90 */

void Task_LiftIdle(void);
void TaskDestructor_Lift(struct Task *t);
void Task_8032D64(void);
void sub_8032FDC(void);
void sub_8033158(void);
void sub_8033098(Sprite *s, Sprite *s2, Sprite *s3);

void CreateEntity_Lift(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_LiftIdle, sizeof(Lift), 0x2100, 0, TaskDestructor_Lift);
    Lift *lift = TASK_DATA(t);
    Sprite *s, *s2, *s3;

    lift->base.regionX = regionX;
    lift->base.regionY = regionY;
    lift->base.me = me;
    lift->base.spriteX = me->x;
    lift->base.id = id;

    lift->unk8C = Q(120);
    lift->unk8E[0] = 0;
    lift->unk8E[1] = 0;

    lift->worldX = TO_WORLD_POS(lift->base.spriteX, lift->base.regionX);
    lift->worldY = TO_WORLD_POS(me->y, lift->base.regionY) - 32;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8033098(&lift->s[0], &lift->s[1], &lift->s[2]);
}

void Task_LiftIdle(void)
{
    Sprite *s;
    Sprite *s2;
    Player *p;
    u8 i;

    bool32 sp10 = 0;
    Lift *lift = TASK_DATA(gCurTask);
    s = &lift->s[0];
    s2 = &lift->s[2];

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        lift->unk8E[i] = 0;
        p = GET_SP_PLAYER_V1(i);

        if (!sub_802C0D4(p)) {
            u32 res = sub_8020950(s, lift->worldX, lift->worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            }

            if (sub_8020700(s2, lift->worldX, lift->worldY + 120, 0, p, 0) == TRUE) {
                sub_8016F28(p);

                p->charFlags.unk2C_04 = 0;

                SetPlayerCallback(p, Player_800A168);

                lift->unk8E[i] = 1;
                sp10 = 1;
            }
        }
    }

    if (sp10) {
        sub_8003DF0(SE_LIFT);
        gCurTask->main = Task_8032D64;
    }

    sub_8033158();
}

void Task_8032D64(void)
{
    Lift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s[0];
    Sprite *s2 = &lift->s[2];
    s32 worldX, worldY;
    s32 qRight, qLeft;
    u8 i;

    lift->unk8C -= Q(2);

    if (lift->unk8C < Q(8)) {
        lift->unk8C = Q(8);
        sub_8003E28(SE_LIFT);
    }

    worldX = lift->worldX;
    worldY = lift->worldY + I(lift->unk8C);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        if ((p->charFlags.someIndex != 1) && (p->charFlags.someIndex != 2) && (p->charFlags.someIndex != 4)) {
            lift->unk8E[i] = 0;
        } else {
            if (!sub_802C0D4(p)) {
                u32 res = sub_8020950(s, lift->worldX, lift->worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                }
            }

            if (p->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) {
                p->moveState &= ~MOVESTATE_10000000;
                lift->unk8E[i] = 0;
            }

            if (p->callback == Player_800D944) {
                p->moveState &= ~MOVESTATE_10000000;
                lift->unk8E[i] = 0;
            }

            if (lift->unk8E[i] != 0) {
                p->charFlags.anim0 = 122;

                p->qSpeedAirX = Q(0);
                p->qSpeedAirY = Q(0);

                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    p->qWorldX = Q(worldX) + Q(4);
                } else {
                    p->qWorldX = Q(worldX) - Q(4);
                }

                p->qWorldY = Q(worldY) + Q(40);

                if (p->keyInput2 & gStageData.buttonConfig.jump) {
                    p->moveState &= ~MOVESTATE_10000000;

                    SetPlayerCallback(p, Player_800A094);

                    p->qSpeedAirY = -Q(5);
                    p->qSpeedAirX = +Q(0);
                    lift->unk8E[i] = 0;
                }
            } else if ((!sub_802C0D4(p)) && (p->qSpeedAirY > 0)) {
                if (sub_8020700(s2, lift->worldX, lift->worldY + I(lift->unk8C), 0, p, 0) == TRUE) {
                    sub_8016F28(p);

                    p->charFlags.unk2C_04 = 0;

                    SetPlayerCallback(p, Player_800A168);

                    lift->unk8E[i] = 1;
                }
            }
        }
    }

    if ((lift->unk8E[0] == 0) && (lift->unk8E[1] == 0)) {
        sub_8003E28(SE_LIFT);
        gCurTask->main = sub_8032FDC;
    }

    sub_8033158();
}

void sub_8032FDC(void)
{
    Lift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s[0];
    Player *p;
    u8 i;

    lift->unk8C += Q(2);

    if (lift->unk8C >= Q(120)) {
        lift->unk8C = Q(120);
        gCurTask->main = Task_LiftIdle;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        if (!sub_802C0D4(p)) {
            u32 res = sub_8020950(s, lift->worldX, lift->worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            }
        }
    }

    sub_8033158();
}

void sub_8033098(Sprite *s, Sprite *s2, Sprite *s3)
{
    void *tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_LIFT, 0) + MAX_TILES_VARIANT(ANIM_LIFT, 1) + MAX_TILES_VARIANT(ANIM_LIFT, 2));

    s->tiles = tiles;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->anim = ANIM_LIFT;
    s->variant = 2;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    tiles += MAX_TILES_VARIANT(ANIM_LIFT, 2) * TILE_SIZE_4BPP;
    s2->tiles = tiles;
    s2->oamFlags = SPRITE_OAM_ORDER(25);
    s2->anim = ANIM_LIFT;
    s2->variant = 1;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->x = 0;
    s2->y = 0;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    tiles += MAX_TILES_VARIANT(ANIM_LIFT, 1) * TILE_SIZE_4BPP;
    s3->tiles = tiles;
    s3->oamFlags = SPRITE_OAM_ORDER(24);
    s3->anim = ANIM_LIFT;
    s3->variant = 0;
    s3->qAnimDelay = Q(0);
    s3->prevVariant = -1;
    s3->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s3->palId = 0;
    s3->x = 0;
    s3->y = 0;
    s3->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    UpdateSpriteAnimation(s3);
}

// (95.41%) https://decomp.me/scratch/yPSfH
NONMATCH("asm/non_matching/game/interactables/lift__sub_8033158.inc", void sub_8033158(void))
{
    Lift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s[0];
    MapEntity *me = lift->base.me;

    s16 worldX, worldY;
    s16 screenX, screenY, handleY;

    worldX = lift->worldX;
    worldY = lift->worldY;
    handleY = (worldY - gCamera.y) + I(lift->unk8C);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (((lift->unk8E[0] == 0) && (lift->unk8E[1] == 0)) && !sub_802C140(worldX, worldY + 0x20, s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, lift->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }
    // _080331F8

    screenX = s->x;
    screenY = s->y;
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);

    s = &lift->s[2];
    s->x = screenX;
    s->y = handleY;
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);

    s = &lift->s[1];

    for (; handleY > screenY; handleY -= 16) {
        s->x = screenX;
        s->y = handleY;
        DisplaySprite(s);
    }
}
END_NONMATCH

void TaskDestructor_Lift(struct Task *t)
{
    Lift *lift = TASK_DATA(t);
    VramFree(lift->s->tiles);
}