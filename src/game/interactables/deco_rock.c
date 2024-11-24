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
    /* 0x34 */ Sprite s2;
    /* 0x5C */ Sprite s3;
    /* 0x84 */ u8 unk84;
    /* 0x85 */ u8 unk85;
    /* 0x86 */ u8 unk86;
    /* 0x87 */ u8 unk87;
    /* 0x88 */ Vec2_32 qPositions[4];
    /* 0xA8 */ s16 qUnkA8[4][2];
} DecoRock; /* 0xB8 */

void Task_DecoRockInit(void);
void TaskDestructor_DecoRock(struct Task *t);
void sub_803765C(Sprite *s, Sprite *s2, Sprite *s3);
void Task_80379F4(void);
void sub_8037A44(void);

void CreateEntity_DecoRock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_DecoRockInit, sizeof(DecoRock), 0x2100, 0, TaskDestructor_DecoRock);
    DecoRock *deco = TASK_DATA(t);
    Sprite *s, *s2, *s3;
    u8 i;

    s = &deco->s;
    s2 = &deco->s2;
    s3 = &deco->s3;

    deco->base.regionX = regionX;
    deco->base.regionY = regionY;
    deco->base.me = me;
    deco->base.spriteX = me->x;
    deco->base.id = id;

    deco->unk86 = 0;
    deco->unk85 = me->d.uData[0];

    if (deco->unk85 == 0) {
        deco->unk85 = 1;
    }

    // NOTE: Sprite.x|y should be screen pos, not world pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s2->x = s->x;
    s2->y = s->y;
    s3->x = s->x;
    s3->y = s->y;

    for (i = 0; i < 4; i++) {
        deco->qPositions[i].x = Q(s->x);
        deco->qPositions[i].y = Q(s->y);
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803765C(s, s2, s3);
}

void sub_8037388(void)
{
    bool32 sb = 0;
    DecoRock *deco = TASK_DATA(gCurTask);
    Sprite *s = &deco->s;
    MapEntity *me = deco->base.me;
    Player *p;
    s16 worldX, worldY;
    u32 res;
    u8 i, j;

    worldX = TO_WORLD_POS(deco->base.spriteX, deco->base.regionX);
    worldY = TO_WORLD_POS(me->y, deco->base.regionY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        bool32 r8;

        p = GET_SP_PLAYER_V1(i);

        r8 = FALSE;

        if (!sub_802C0D4(p)) {
            if ((sub_8020E3C(s, worldX, worldY, 0, p) == 1) && (p->qSpeedAirY >= 0) && !(p->moveState & MOVESTATE_10)) {
                if (deco->unk86 < 8) {
                    deco->unk86 = 0x10;
                }

                r8 = TRUE;

                if (deco->unk85 != 0) {
                    deco->unk85--;
                }
            }

            res = sub_8020950(s, worldX, worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            } else if (res & 0x40000) {
                p->qWorldX += (s16)(res & 0xFF00);
                p->qSpeedGround = 0;

                if (p->keyInput & DPAD_LEFT) {
                    p->qWorldX -= Q(1);
                    p->moveState |= MOVESTATE_40;
                }
            } else if (res & 0x80000) {
                p->qWorldX += (s16)(res & 0xFF00);
                p->qSpeedGround = 0;

                if (p->keyInput & DPAD_RIGHT) {
                    p->qWorldX += Q(1);
                    p->moveState |= MOVESTATE_40;
                }
            }

            if (deco->unk85 != 0) {
                if (r8) {
                    p->callback = Player_8005380;
                    p->moveState &= ~MOVESTATE_10;
                    p->moveState &= ~MOVESTATE_2;
                    p->moveState |= MOVESTATE_40;
                }
            } else {
                for (j = 0; j < 4; j++) {
                    deco->qUnkA8[j][0] = (j & 0x1) ? -Q(0.8125) : +Q(0.8125);
                    deco->qUnkA8[j][0] += (j & 0x2) ? +Q(0.1875) : -Q(0.1875);
                    deco->qUnkA8[j][1] = (j & 0x2) ? -Q(5) : -Q(6);
                }

                deco->unk86 = 90;
                gCurTask->main = Task_80379F4;
                sb = TRUE;

                HALVE(p->qSpeedAirX);
                p->qSpeedAirY = -Q(3);
                SetPlayerCallback(p, Player_800DB30);
                sub_8003DF0(SE_SMASH_ROCK);
            }
        }
    }

    if (sb) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            if (!(p->moveState & MOVESTATE_10000000)) {
                ResolvePlayerSpriteCollision(s, p);
            }
        }
    }
}

void sub_803765C(Sprite *s, Sprite *s2, Sprite *s3)
{
    void *tiles = ALLOC_TILES(ANIM_DECO_ROCK);

    s->tiles = tiles;
    s->anim = ANIM_DECO_ROCK;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(23);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    s2->tiles = tiles;
    s2->anim = ANIM_DECO_ROCK;
    s2->variant = 1;
    s2->oamFlags = SPRITE_OAM_ORDER(8);
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 0);

    s3->tiles = tiles + 4 * TILE_SIZE_4BPP;
    s3->anim = ANIM_DECO_ROCK;
    s3->variant = 2;
    s3->oamFlags = SPRITE_OAM_ORDER(8);
    s3->animCursor = 0;
    s3->qAnimDelay = Q(0);
    s3->prevVariant = -1;
    s3->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s3->palId = 0;
    s3->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s3->frameFlags = SPRITE_FLAG(PRIORITY, 0);

    UpdateSpriteAnimation(s);
}

// (99.38%) https://decomp.me/scratch/RELxP
NONMATCH("asm/non_matching/game/interactables/deco_rock__sub_8037710.inc", void sub_8037710(void))
{
    DecoRock *deco = TASK_DATA(gCurTask);
    Sprite *s = &deco->s;
    MapEntity *me = deco->base.me;
    s16 worldX, worldY;
    s32 screenX, screenY;
    s16 i;

    worldX = TO_WORLD_POS(deco->base.spriteX, deco->base.regionX);
    worldY = TO_WORLD_POS(me->y, deco->base.regionY);

    screenX = worldX - gCamera.x;
    if (deco->unk86 & 0x2) {
        screenX -= 2;
    } else {
        screenX += 2;
    }

    s->x = screenX;

    screenY = (worldY - gCamera.y);
    screenY += (deco->unk86 & 0x4) ? -1 : +1;
    s->y = screenY;

    if (deco->unk86 > 0) {
        deco->unk86--;
    }

    if (!IsPointInScreenRect(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, deco->base.spriteX);
        TaskDestroy(gCurTask);
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}
END_NONMATCH

void sub_8037828(void)
{
    DecoRock *deco = TASK_DATA(gCurTask);
    Sprite *s = &deco->s;
    MapEntity *me = deco->base.me;
    s16 worldX, worldY;
    s32 res;
    u8 i;

    worldX = TO_WORLD_POS(deco->base.spriteX, deco->base.regionX);
    worldY = TO_WORLD_POS(me->y, deco->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, deco->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < 4; i++) {
        switch (i) {
            case 0: {
                s = &deco->s2;
            } break;

            case 1: {
                s = &deco->s3;
            } break;

            case 2: {
                s = &deco->s3;
            } break;

            case 3: {
                s = &deco->s2;
            } break;
        }

        deco->qUnkA8[i][1] += Q(0.5);

        deco->qPositions[i].x += deco->qUnkA8[i][0];
        deco->qPositions[i].y += deco->qUnkA8[i][1];

        res = sub_8052418(I(deco->qPositions[i].y), I(deco->qPositions[i].x), 1, +8, sub_8051F54);

        if (res < 0) {
            deco->qPositions[i].y += Q(res);
            deco->qUnkA8[i][0] = +(deco->qUnkA8[i][0] * 3) >> 2;
            deco->qUnkA8[i][1] = -(deco->qUnkA8[i][1] * 3) >> 2;
        }

        s->x = I(deco->qPositions[i].x) - gCamera.x;
        s->y = I(deco->qPositions[i].y) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_DecoRock(struct Task *t)
{
    DecoRock *deco = TASK_DATA(t);
    VramFree(deco->s.tiles);
}

void Task_DecoRockInit(void)
{
    sub_8037388();
    sub_8037710();
}

void Task_80379F4(void)
{
    DecoRock *deco = TASK_DATA(gCurTask);
    MapEntity *me = deco->base.me;

    sub_8037A44();

    if ((deco->unk86 & 0x2) || (deco->unk86 > 30)) {
        sub_8037828();
    }

    if (deco->unk86 == 0) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, deco->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }
}

void sub_8037A44(void)
{
    DecoRock *deco = TASK_DATA(gCurTask);

    if (deco->unk86 > 0) {
        deco->unk86--;
    }
}