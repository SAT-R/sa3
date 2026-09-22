#include "global.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/game_over.h"
#include "game/shared/entities_manager.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/entity.h"
#include "game/parameters/interactables.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase5 base;
    /* 0x0C */ u16 unkC;
    /* 0x10 */ s32 qWorldX;
    /* 0x14 */ s32 qWorldY;
    /* 0x18 */ s16 worldX;
    /* 0x1A */ s16 worldY;
    /* 0x1C */ s32 qTop;
    /* 0x20 */ Vec2_16 qStarSpeeds[16];
    /* 0x60 */ Vec2_32 qStarWorldPos[16];
    /* 0xE0 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0xE8 */ Sprite sprites[4];
} Rocket; /* 0x188 */

enum {
    STARPART_OFFX = 0,
    STARPART_OFFY = 1,
    STARPART_VELX = 2,
    STARPART_VELY = 3,

    STARPART_COUNT
} EStarParticle;

typedef enum {
    SPTI_PATTERN = 0,
    SPTI_NUM_TILES = 1,

    SPTI_COUNT
} EStarParticleTileInfo;

void Task_RocketMain(void);
void Task_8045F48(void);
void Task_UpdateStarParticles(void);
void TaskDestructor_RocketMain(struct Task *t);
void sub_8046358(Rocket *rocket);
void sub_8046438(Rocket *rocket);

void CreateEntity_Rocket(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    // TODO(Jace): Maybe this can be matched as struct arrays, but I wasn't successful with that.
    u8 tileInfo[4][SPTI_COUNT] = { { 0, MAX_TILES_VARIANT(ANIM_ROCKET, 0) },
                                   { 1, MAX_TILES_VARIANT(ANIM_ROCKET, 1) },
                                   { 2, MAX_TILES_VARIANT(ANIM_ROCKET, 2) },
                                   { 3, MAX_TILES_VARIANT(ANIM_ROCKET, 3) } };
    s16 qStar[16][STARPART_COUNT] = {
        // STARPART_OFFX, STARPART_OFFY, STARPART_VELX, STARPART_VELY
        { +Q(2.00), +Q(16.0), +Q(1.000), -Q(1.750) }, //
        { +Q(4.00), +Q(4.00), -Q(1.125), +Q(2.000) }, //
        { +Q(10.0), +Q(10.0), +Q(1.250), +Q(1.750) }, //
        { -Q(14.0), -Q(8.00), -Q(1.375), -Q(2.000) }, //
        { -Q(8.00), -Q(0.00), +Q(1.500), -Q(1.750) }, //
        { -Q(6.00), -Q(18.0), -Q(1.625), +Q(1.500) }, //
        { -Q(0.00), -Q(10.0), +Q(1.750), +Q(2.000) }, //
        { -Q(2.00), -Q(8.00), -Q(1.875), -Q(2.000) }, //
        { -Q(10.0), -Q(12.0), +Q(2.000), -Q(1.750) }, //
        { +Q(12.0), -Q(0.00), -Q(2.125), +Q(2.000) }, //
        { +Q(16.0), +Q(8.00), +Q(2.250), +Q(2.000) }, //
        { +Q(18.0), +Q(6.00), -Q(2.375), -Q(1.750) }, //
        { -Q(4.00), -Q(4.00), +Q(2.500), -Q(2.250) }, //
        { -Q(8.00), -Q(10.0), -Q(2.625), +Q(2.250) }, //
        { -Q(12.0), -Q(16.0), +Q(2.750), +Q(1.750) }, //
        { -Q(10.0), -Q(18.0), -Q(2.875), -Q(2.6875) }, //
    };
    struct Task *t = TaskCreate(Task_RocketMain, sizeof(Rocket), 0x2100, 0, TaskDestructor_RocketMain);
    Rocket *rocket = TASK_DATA(t);
    Player *p;
    void *tiles;
    u8 i;

    rocket->base.regionX = regionX;
    rocket->base.regionY = regionY;
    rocket->base.me = me;
    rocket->base.meX = me->x;
    rocket->base.id = id;

    rocket->worldX = TO_WORLD_POS(me->x, regionX);
    rocket->worldY = TO_WORLD_POS(me->y, regionY);
    rocket->qWorldX = Q(rocket->worldX);
    rocket->qWorldY = Q(rocket->worldY);
    rocket->players[PLAYER_1] = p = GET_SP_PLAYER_V0(PLAYER_1);
    rocket->players[PLAYER_2] = GET_SP_PLAYER_V0(PLAYER_2);

    rocket->base.unkA = 0;
    rocket->qTop = rocket->qWorldY + Q(me->d.sData[1] * TILE_WIDTH);

    for (i = 0; i < ARRAY_COUNT(qStar); i++) {
        rocket->qStarWorldPos[i].x = qStar[i][STARPART_OFFX] + rocket->qWorldX;
        rocket->qStarWorldPos[i].y = qStar[i][STARPART_OFFY] + rocket->qTop;
        rocket->qStarSpeeds[i].x = qStar[i][STARPART_VELX] >> 1;
        rocket->qStarSpeeds[i].y = qStar[i][STARPART_VELY] >> 1;
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    tiles = VramMalloc(tileInfo[0][SPTI_NUM_TILES]);

    for (i = 0; i < 4; i++) {
        Sprite *s = &rocket->sprites[i];

        s->tiles = tiles;
        s->anim = ANIM_ROCKET;
        s->variant = tileInfo[i][SPTI_PATTERN];

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
            tiles += tileInfo[i][SPTI_NUM_TILES] * TILE_SIZE_4BPP;
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

        if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_DEAD)) && (p->callback != Player_801D73C)
            && (p->moveState & MOVESTATE_IN_AIR)) {
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

        SET_MAP_ENTITY_NOT_INITIALIZED(me, rocket->base.meX);
        sub_8003E28(SE_ROCKET_ACCELERATING);
        TaskDestroy(gCurTask);
    } else {
        sub_8046438(rocket);
    }
}
END_NONMATCH

// There is an old scratch that "matches more" but its code logic is wrong
// (74.21%) https://decomp.me/scratch/NmSzO
NONMATCH("asm/non_matching/game/interactables/rocket__Task_8045F48.inc", void Task_8045F48(void))
{
    MapEntity *sp8;
    Sprite *spC;
    s32 sp10;
    u8 sp14;
    s32 sp18;
    Player **sp1C;
    Player *p;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r2;
    s32 var_sb;
    s32 var_sl;
    u32 temp_r1;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    void (*temp_r1_2)(Player *);
    Rocket *rocket = TASK_DATA(gCurTask);

    sp8 = rocket->base.me;
    spC = &rocket->sprites[0];
    temp_r5 = rocket->qWorldX;
    sp10 = *(s32 *)&rocket->worldX;
    temp_r6 = rocket->qWorldY - Q(6);
    rocket->qWorldX = temp_r5;
    rocket->qWorldY = temp_r6;
    for (sp14 = 0; sp14 < 2; sp14++) {
        p = rocket->players[sp14];
        if (p->moveState & 0x01000100) {
            rocket->base.unkA = (rocket->base.unkA & ~(1 << (sp14 * 2))) | (2 << (sp14 * 2));
        }
        temp_r3 = rocket->base.unkA & (3 << sp14 * 2);
        if (temp_r3 == 0) {
            temp_r1 = p->moveState;
            var_sl = temp_r5 >> 8;
            temp_r2 = temp_r6 >> 8;
            var_sb = temp_r2;
            if (temp_r1 & 0x01000100) {

            } else if (!(temp_r1 & 4)) {

            } else if ((s32)p->qSpeedAirY <= 0) {

            } else if (sub_8020700(spC, var_sl, temp_r2, 0, p, (s16)temp_r3) == 0) {

            } else {
                sub_8016F28(p);
                Player_800BE60(p);
                p->moveState |= MOVESTATE_COLLIDING_ENT;
                p->sprColliding = spC;
                rocket->base.unkA |= 1 << (sp14 * 2);
            }
        } else {
            temp_r2_2 = (1 << (sp14 * 2));
            var_sl = temp_r5 >> 8;
            var_sb = temp_r6 >> 8;
            if (temp_r3 == (rocket->base.unkA & temp_r2_2)) {
                p->qWorldY -= Q(6);
                if (!(p->moveState & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != spC)) {
                    rocket->base.unkA = (rocket->base.unkA & ~temp_r2_2) | (2 << (sp14 * 2));
                }
                temp_r1_2 = p->callback;
                if ((temp_r1_2 == Player_800D944) || (temp_r1_2 != Player_800EB58)) {
                    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_COLLIDING_ENT);
                    p->sprColliding = NULL;
                    rocket->base.unkA = (rocket->base.unkA & ~(1 << (sp14 * 2))) | (2 << (sp14 * 2));
                    var_sl = temp_r5 >> 8;
                    var_sb = temp_r6 >> 8;
                } else if (gStageData.buttonConfig.jump & p->keyInput2) {
                    rocket->base.unkA = (rocket->base.unkA & ~(1 << (sp14 * 2))) | (2 << (sp14 * 2));
                    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_COLLIDING_ENT | MOVESTATE_8);
                    p->sprColliding = NULL;
                    p->qSpeedAirY = 0;
                    p->qSpeedAirX = 0;
                    if (p->unkC & 0x40) {
                        SetPlayerCallback(p, Player_8006250);
                        var_sl = temp_r5 >> 8;
                        var_sb = temp_r6 >> 8;
                    } else {
                        SetPlayerCallback(p, Player_8006310);
                        var_sl = temp_r5 >> 8;
                        var_sb = temp_r6 >> 8;
                    }
                } else {
                    p->qWorldY = rocket->qWorldY + 0x2700;
                    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
                        p->qWorldX = rocket->qWorldX - Q(4);
                    } else {
                        p->qWorldX = rocket->qWorldX + Q(4);
                    }
                    var_sl = temp_r5 >> 8;
                    var_sb = temp_r6 >> 8;
                }
            }
        }
    }
    sp18 = sp10 >> 0x10;
    if (temp_r6 < (s32)rocket->qTop) {
        for (sp14 = 0; sp14 < 2; sp14++) {
            p = rocket->players[sp14];
            if (((s32)rocket->base.unkA >> (sp14 * 2)) & 1) {
                Player_8009E8C(p);
                p->moveState &= ~MOVESTATE_10000000;
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->sprColliding = NULL;
                p->qSpeedAirY = -Q(4);
                p->qSpeedAirX = 0;
            }
        }
        rocket->unkC = TIME(0, 1.5);
        gCurTask->main = Task_UpdateStarParticles;
        sub_8003E28(SE_ROCKET_ACCELERATING);
        sub_8003DF0(SE_ROCKET_EXPLODING);
    }
    if (sub_802C140((s32)(s16)sp10, sp18, var_sl - gCamera.x, var_sb - gCamera.y) == 0) {
        for (sp14 = 0; sp14 < 2; sp14++) {
            p = rocket->players[sp14];
            if (GetBit(rocket->base.unkA, sp14 * 2)) {
                Player_8009E8C(p);
                p->moveState &= ~MOVESTATE_10000000;
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                p->sprColliding = NULL;
                p->qSpeedAirY = -Q(4);
                p->qSpeedAirX = 0;
            }
        }
        sp8->x = rocket->base.meX;
        TaskDestroy(gCurTask);
        sub_8003E28(SE_ROCKET_ACCELERATING);
    } else {
        sub_8046438(rocket);
    }
}
END_NONMATCH

void Task_UpdateStarParticles(void)
{
    Rocket *rocket = TASK_DATA(gCurTask);
    MapEntity *me = rocket->base.me;
    u8 arr[0x10] = { 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1 };
    u8 i;
    Vec2_32 *qPoint;

    if (--rocket->unkC == 0) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, rocket->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        sub_8046358(rocket);

        if ((rocket->unkC < TIME(0, 0.5)) && (rocket->unkC & 0x2)) {
            return;
        }

        UpdateSpriteAnimation(&rocket->sprites[1]);
        UpdateSpriteAnimation(&rocket->sprites[2]);
        UpdateSpriteAnimation(&rocket->sprites[3]);

        for (i = 0, qPoint = &rocket->qStarWorldPos[0]; i < (s32)ARRAY_COUNT(arr); i++) {
            Sprite *s = &rocket->sprites[arr[i]];
            s->x = I(qPoint->x) - gCamera.x;
            s->y = I(qPoint->y) - gCamera.y;
            qPoint++;
            DisplaySprite(s);
        }
    }
}

void sub_8046358(Rocket *rocket)
{
    Vec2_32 *qStarPoint = &rocket->qStarWorldPos[0];
    Vec2_16 *qStarSpeeds = &rocket->qStarSpeeds[0];
    u8 i;

    if (rocket->unkC >= 26) {
        s16 theta = rocket->unkC - 26;

        s16 v = Q(0.25) - (COS_24_8(theta * 4) >> 2);
        v = Q(0.25) - (COS_24_8(v * 4) >> 2);
        v = Q(0.25) - (COS_24_8(v * 4) >> 2);
        v = Q(0.375) - (((COS(v * 4)) * 3) >> 9);

        if (v < 10) {
            v = 10;
        }

        for (i = 0; i < 16; i++) {
            qStarSpeeds->y += Q(16. / 256.);
            qStarPoint->x += (qStarSpeeds->x * v) >> 5;
            qStarPoint->y += (qStarSpeeds->y * v) >> 5;
            qStarPoint++;
            qStarSpeeds++;
        }
    } else {
        for (i = 0; i < 16; i++) {
            qStarSpeeds->y += Q(32. / 256.);
            qStarPoint->x += qStarSpeeds->x;
            qStarPoint->y += qStarSpeeds->y;
            qStarPoint++;
            qStarSpeeds++;
        }
    }
}

void sub_8046438(Rocket *rocket)
{
    Sprite *s = &rocket->sprites[0];
    s->x = I(rocket->qWorldX) - gCamera.x;
    s->y = I(rocket->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_RocketMain(struct Task *t)
{
    Rocket *rocket = TASK_DATA(t);
    VramFree(rocket->sprites[0].tiles);
}
