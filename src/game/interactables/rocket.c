#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/parameters/interactables.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase5 base;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 qWorldX;
    /* 0x14 */ s32 qWorldY;
    /* 0x18 */ s16 worldX;
    /* 0x1A */ s16 worldY;
    /* 0x1C */ s32 qTop;
    /* 0x20 */ Vec2_16 unk20[16];
    /* 0x60 */ Vec2_32 unk60[16];
    /* 0xE0 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0xE8 */ Sprite sprites[4];
} Rocket; /* 0x188 */

void Task_RocketMain(void);
void Task_8045F48(void);
void Task_8046298(void);
void sub_804646C(struct Task *t);
void sub_8046438(Rocket *rocket);

// const u8 gUnknown_080D0328[0x8] = {0, 24, 1, 2, 2, 1, 3, 1};
extern const u8 gUnknown_080D0328[4][2];
extern const s16 gUnknown_080D0330[16][4];

void CreateEntity_Rocket(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    Rocket *rocket;
    Player *p;
    void *tiles;
    u8 i;
    u8 sp04[4][2];
    s16 sp0C[16][4];

    memcpy(sp04, gUnknown_080D0328, sizeof(sp04));
    memcpy(sp0C, gUnknown_080D0330, sizeof(sp0C));

    t = TaskCreate(Task_RocketMain, sizeof(Rocket), 0x2100, 0, sub_804646C);
    rocket = TASK_DATA(t);

    rocket->base.regionX = regionX;
    rocket->base.regionY = regionY;
    rocket->base.me = me;
    rocket->base.spriteX = me->x;
    rocket->base.id = id;

    rocket->worldX = TO_WORLD_POS(me->x, regionX);
    rocket->worldY = TO_WORLD_POS(me->y, regionY);
    rocket->qWorldX = Q(rocket->worldX);
    rocket->qWorldY = Q(rocket->worldY);
    rocket->players[PLAYER_1] = p = GET_SP_PLAYER_V0(PLAYER_1);
    rocket->players[PLAYER_2] = GET_SP_PLAYER_V0(PLAYER_2);

    rocket->base.unkA = 0;
    rocket->qTop = rocket->qWorldY + Q(me->d.sData[1] * TILE_WIDTH);

    for (i = 0; i < 16; i++) {
        rocket->unk60[i].x = sp0C[i][0] + rocket->qWorldX;
        rocket->unk60[i].y = sp0C[i][1] + rocket->qTop;
        rocket->unk20[i].x = sp0C[i][2] >> 1;
        rocket->unk20[i].y = sp0C[i][3] >> 1;
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    tiles = VramMalloc(sp04[0][1]);

    for (i = 0; i < 4; i++) {
        Sprite *s = &rocket->sprites[i];

        s->tiles = tiles;
        s->anim = ANIM_ROCKET;
        s->variant = sp04[i][0];

        s->oamFlags = (i == 0) ? (SPRITE_FLAG(X_FLIP, 1) | SPRITE_FLAG(MOSAIC, 1)) : SPRITE_FLAG_MASK_MOSAIC;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

        if (i == 0) {
            s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
        } else {
            s->frameFlags = 0;
        }

        if (i != 0) {
            tiles += sp04[i][1] * TILE_SIZE_4BPP;
        } else {
            UpdateSpriteAnimation(s);
        }
    }
}

// (94.46%) https://decomp.me/scratch/2IQPo
NONMATCH("asm/non_matching/game/interactables/rocket__Task_RocketMain.inc", void Task_RocketMain(void))
{
    Rocket *rocket = TASK_DATA(gCurTask);
    MapEntity *me = rocket->base.me;
    Player *p;
    s16 worldX, worldY;

#ifndef NON_MATCHING
    register Sprite *s asm("r8") = &rocket->sprites[0];
    register s32 worldPos asm("r7") = *(s32 *)&rocket->worldX;
    u8 i;
    rocket->base.unkA = 0;
#else
    Sprite *s = &rocket->sprites[0];
    s32 worldPos = *(s32 *)&rocket->worldX;
    u8 i;
    rocket->base.unkA = 0;
#endif

    for (i = 0, worldX = rocket->worldX, worldY = rocket->worldY; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = rocket->players[i];

        if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) && (p->callback != Player_801D73C) && (p->moveState & MOVESTATE_IN_AIR)) {
#ifndef NON_MATCHING
            if (sub_8020700(s, (s16)worldPos, worldY, 0, p, 0))
#else
            if (sub_8020700(s, worldX, worldY, 0, p, 0))
#endif
            {
                sub_8016F28(p);
                Player_800BE60(p);
                p->moveState |= MOVESTATE_COLLIDING_ENT;
                p->sprColliding = s;
                rocket->base.unkA |= (1 << (i * 2));
            }
        }
    }

    if (rocket->base.unkA) {
        sub_8003DF0(SE_ROCKET_ACCELERATING);
        gCurTask->main = Task_8045F48;
    }

    if (!sub_802C140((s16)worldPos, worldY, (s16)worldPos - gCamera.x, worldY - gCamera.y)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = rocket->players[i];

            if (GetBit(rocket->base.unkA, i * 2)) {
                Player_8009E8C(p);

                p->moveState &= ~MOVESTATE_10000000;
                p->qSpeedAirY = -Q(4);
                p->qSpeedAirX = Q(0);
            }
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, rocket->base.spriteX);
        sub_8003E28(SE_ROCKET_ACCELERATING);
        TaskDestroy(gCurTask);
    } else {
        sub_8046438(rocket);
    }
}
END_NONMATCH

// (91.18%) https://decomp.me/scratch/KKcmK
NONMATCH("asm/non_matching/game/interactables/rocket__Task_8045F48.inc", void Task_8045F48(void))
{
    Rocket *rocket = TASK_DATA(gCurTask);
    MapEntity *me = rocket->base.me;
    Sprite *s = &rocket->sprites[0];
    Player *p;
    s32 worldPos; // sp10
    s32 worldX, worldY;
#ifndef NON_MATCHING
    register s32 sb asm("sb");
    register s32 sl asm("sl");
    register s32 qWorldX asm("r5");
    register s32 qWorldY asm("r6");
#else
    s32 sb;
    s32 sl;
    s32 qWorldX;
    s32 qWorldY;
#endif
    u8 i;

    qWorldX = rocket->qWorldX;
    qWorldY = rocket->qWorldY;
    worldPos = *(s32 *)&rocket->worldX;
    qWorldY -= Q(6);
    rocket->qWorldX = qWorldX;
    rocket->qWorldY = qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = rocket->players[i];

        if (p->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) {
            rocket->base.unkA &= ~(1 << i * 2);
            rocket->base.unkA |= (2 << i * 2);
        }
        // _08045FB4

        if (!(rocket->base.unkA & (3 << i * 2))) {
            u32 msMask = (p->moveState & (MOVESTATE_1000000 | MOVESTATE_100));
            sl = I(qWorldX);
            sb = I(qWorldY);

            if (!msMask) {

                if ((p->moveState & MOVESTATE_IN_AIR) && (p->qSpeedAirY > 0)) {
                    // _08045FEC

                    if (sub_8020700(s, sl, sb, 0, p, 0)) {
                        // _08046000

                        sub_8016F28(p);
                        Player_800BE60(p);
                        p->moveState |= MOVESTATE_COLLIDING_ENT;
                        p->sprColliding = s;
                        rocket->base.unkA |= (1 << i * 2);
                    }
                }
            }
        } else {
            // _0804603C ^ else if
            sl = I(qWorldX);
            sb = I(qWorldY);

            if (!(rocket->base.unkA & (1 << i * 2))) {
                rocket->qWorldY -= Q(6);

                if (!(p->moveState & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != s)) {
                    // _0804606A
                    rocket->base.unkA &= ~(1 << i * 2);
                    rocket->base.unkA |= (2 << i * 2);
                }
                // _0804607A

                if ((p->callback == Player_800D944) || (p->callback != Player_800EB58)) {
                    // _08046088
                    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_COLLIDING_ENT);
                    p->sprColliding = NULL;
                    rocket->base.unkA &= ~(1 << i * 2);
                    rocket->base.unkA |= (2 << i * 2);
                } else if (p->keyInput2 & gStageData.buttonConfig.jump) {
                    // _080460B8+0xA
                    rocket->base.unkA &= ~(1 << i * 2);
                    rocket->base.unkA |= (2 << i * 2);
                    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_COLLIDING_ENT);
                    p->sprColliding = NULL;
                    p->qSpeedAirY = 0;
                    p->qSpeedAirX = 0;

                    if (p->unkC & 0x40) {
                        SetPlayerCallback(p, Player_8006250);
                        sl = I(qWorldX);
                        sb = I(qWorldY);

                        asm("" ::"r"(qWorldX), "r"(qWorldY));
                    } else {
                        SetPlayerCallback(p, Player_8006310);
                        sl = I(qWorldX);
                        sb = I(qWorldY);

                        asm("" ::"r"(qWorldX), "r"(qWorldY));
                    }
                } else {
                    // _08046128
                    rocket->qWorldY += Q(IA_ROCKET_SPEED);

                    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
                        p->qWorldX -= Q(4);
                    } else {
                        // _0804614C
                        p->qWorldX += Q(4);
                    }
                    sl = I(qWorldX);
                    sb = I(qWorldY);
                }
            }
        }
    }
    // _08046170

    {
        s32 qTop = rocket->qTop;
        ;
        worldX = (s16)worldPos;
        worldY = (worldPos >> 16);

        if (qWorldY < qTop) {
            for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
                p = rocket->players[i];

                if (GetBit(rocket->base.unkA, i * 2)) {
                    Player_8009E8C(p);

                    p->moveState &= ~MOVESTATE_10000000;
                    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                    p->sprColliding = NULL;
                    p->qSpeedAirY = -Q(4);
                    p->qSpeedAirX = +Q(0);
                }
            }

            rocket->unkC = 90;
            gCurTask->main = Task_8046298;
            sub_8003E28(SE_ROCKET_ACCELERATING);
            sub_8003DF0(SE_ROCKET_EXPLODING);
        }
    }
    // _080461E8

    if (!sub_802C140((s16)worldPos, worldPos >> 16, sl - gCamera.x, sb - gCamera.y)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = rocket->players[i];

            if (GetBit(rocket->base.unkA, i * 2)) {
                Player_8009E8C(p);

                p->moveState &= ~MOVESTATE_10000000;
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->sprColliding = NULL;
                p->qSpeedAirY = -Q(4);
                p->qSpeedAirX = +Q(0);
            }
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, rocket->base.spriteX);
        TaskDestroy(gCurTask);
        sub_8003E28(SE_ROCKET_ACCELERATING);
        return;
    } else {
        sub_8046438(rocket);
    }
}
END_NONMATCH
