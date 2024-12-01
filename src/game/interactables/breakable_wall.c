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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A;
} BreakableWall; /* 0x3C */

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x0F */ u16 unkF;
    /* 0x10 */ Sprite s;
} BreakableWallDebris; /* 0x38 */

void Task_BreakableWall(void);
s16 sub_8034A20(Player *p);
void sub_8034C60(s16);
void sub_8034D74(void);
void Task_8034E44(void);
void sub_803516C(Sprite *s, u8 param1);
void sub_80351A8(Sprite *s, u8 param1, u8 param2);
void TaskDestructor_BreakableWall(struct Task *t);
void CreateBreakableWallDebris(s16 worldX, s16 worldY, s16 param2, s16 rand, u8 param4, u8 param5, void *tiles);
void Task_DebrisInit(void);

extern const u16 gUnknown_080CF590[6][2][3];
extern const u16 gUnknown_080CF5D8[0x30];
extern const u16 gUnknown_080CF638[6][2][3];

void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BreakableWall, sizeof(BreakableWall), 0x2100, 0, TaskDestructor_BreakableWall);
    BreakableWall *wall = TASK_DATA(t);
    Sprite *s;
    s16 i;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.spriteX = me->x;
    wall->base.id = id;
    wall->base.unk8 = 0;

    wall->worldX = TO_WORLD_POS(me->x, regionX);
    wall->worldY = TO_WORLD_POS(me->y, regionY);

    for (i = 0; i < 3; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    wall->unk39 = i;
    wall->unk38 = me->d.uData[4] >> 7;
    wall->unk3A = me->d.sData[0];

    s = &wall->s;
    s->x = wall->worldX - gCamera.x;
    s->y = wall->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803516C(s, wall->unk38);
}

void Task_BreakableWall(void)
{
    BreakableWall *wall = TASK_DATA(gCurTask);
    Sprite *s = &wall->s;
    s16 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);
        u32 res;

        if (!sub_802C0D4(p) && (gStageData.unk4 != 6) && (gStageData.unk4 != 7) && (gStageData.unk4 != 8)
            && (res = sub_8020874(s, wall->worldX, wall->worldY, 0, p, 1, 1))) {
            if (res & 0x10000) {
                if (wall->unk38 == 0) {
                    p->qWorldY += Q_8_8(res);
                    p->qSpeedAirY = -Q(2);
                } else {
                    p->qWorldX -= p->qSpeedAirX;
                    p->qSpeedAirX = 0;
                }
            } else if (res & 0x20000) {
                if (wall->unk38 == 0) {
                    p->qWorldY += Q_8_8(res);

                    if (p->moveState & 0x10000) {
                        p->qWorldY -= Q(1);
                    } else {
                        p->qWorldY += Q(1);
                    }

                    p->qSpeedAirY = 0;
                } else {
                    p->qWorldX -= p->qSpeedAirX;
                    p->qSpeedAirX = Q(0);
                }
            } else {
                p->qWorldX += Q((s16)res >> 8);

                if (wall->unk38 != 0) {
                    p->qSpeedAirY = -Q(2);
                }
            }

            sub_8034C60(sub_8034A20(p));
            Player_800BB34(p);
        } else if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            res = sub_8020950(s, wall->worldX, wall->worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
                p->qSpeedAirY = 0;
            } else if (res & 0x20000) {
                p->qWorldY += Q_8_8(res);
                if (p->moveState & 0x10000) {
                    p->qWorldY -= Q(1);
                } else {
                    p->qWorldY += Q(1);
                }

                p->qSpeedAirY = 0;
            }

            if (res & 0xC0000) {
                p->qWorldX += Q((s16)res >> 8);
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;

                if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                    p->qWorldX -= Q(1);
                    p->moveState |= MOVESTATE_40;
                } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                    p->qWorldX += Q(1);
                    p->moveState |= MOVESTATE_40;
                }
            }
        }
    }

    if (wall->unk3A == 0) {
        gCurTask->main = Task_8034E44;
    }

    sub_8034D74();
}

// (98.91%) https://decomp.me/scratch/SCkrx
NONMATCH("asm/non_matching/game/interactables/breakable_wall__sub_8034A20.inc", s16 sub_8034A20(Player *p))
{
    if (p->charFlags.someIndex != 3) {
        switch (p->charFlags.anim0) {
            case 166:
            case 168:
            case 184:
            case 204:
            case 230:
            case 254:
            case 259: {
                return 2;
            } break;

            case 226:
            case 227:
            case 229:
            case 255: {
                return 3;
            } break;
        }
    } else {
        switch (p->charFlags.anim2) {
            case 526:
            case 527:
            case 570:
            case 690: {
                return 3;
            } break;

            case 42:
            case 205:
            case 368:
            case 531:
            case 689:
            case 695: {
                return 2;
            } break;

            case 38: {
                if (p->charFlags.state1 != 2) {
                    return 2;
                }
            } break;
        }
    }

    if ((p->charFlags.anim0 == 213) && (p->charFlags.state1 == 1)) {
        return 2;
    }

    if ((p->callback == Player_801D73C) || (p->callback == Player_801DF18)) {
        return 3;
    }

    return 1;
}
END_NONMATCH

void sub_8034C60(s16 param0)
{
    BreakableWall *wall = TASK_DATA(gCurTask);
    s16 r3;

    if (wall->unk39 >= param0) {
        sub_8003DF0(SE_PENDULUM_HIT);
        return;
    }

    r3 = (param0 - wall->unk39);

    if (wall->unk3A <= r3) {
        Sprite *s;
        wall->unk3A = 0;

        sub_8003DF0(SE_ICE_SPIKE);

        s = &wall->s;
        sub_80351A8(s, wall->unk38, 1);
    } else {
        Sprite *s;
        wall->unk3A = wall->unk3A - r3;

        sub_8003DF0(SE_587);
        s = &wall->s;
        sub_80351A8(s, wall->unk38, wall->base.unk8);

        if (wall->base.unk8 == 0) {
            wall->base.unk8++;
        }
    }
}

void sub_8034D0C(Sprite *s, u8 param1)
{
    u16 arr[6][2][3];
    s32 zone;

    memcpy(arr, gUnknown_080CF590, sizeof(arr));

    if (gStageData.act == ACT_BONUS_ENEMIES) {
        zone = ZONE_1;
    } else {
        zone = (gStageData.zone != ZONE_7) ? gStageData.zone : ZONE_1;
    }

    s->tiles = VramMalloc(arr[zone][param1][2]);
    s->anim = arr[zone][param1][0];
    s->variant = arr[zone][param1][1];
}

void sub_8034D74(void)
{
    BreakableWall *wall = TASK_DATA(gCurTask);
    Sprite *s = &wall->s;
    MapEntity *me = wall->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = TO_WORLD_POS(wall->base.spriteX, wall->base.regionX);
    worldY = TO_WORLD_POS(me->y, wall->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, wall->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

// (89.40%) https://decomp.me/scratch/L5NH9
NONMATCH("asm/non_matching/game/interactables/breakable_wall__Task_8034E44.inc", void Task_8034E44(void))
{
    BreakableWall *wall = TASK_DATA(gCurTask);
    MapEntity *me = wall->base.me;
    Sprite *s = &wall->s;

    if (wall->unk3A != 0) {
        if (wall->unk3A == 40) {
            goto lbl_destroy_task;
        }

        goto inc_counter;
    } else {
        // _08034E84
        s16 worldX, worldY;
        u8 i;

        for (i = 0; i < 4; i++) {
            Player *p = &gPlayers[i];

            if (p->sprColliding == s) {
                p->sprColliding = NULL;
                p->moveState &= ~MOVESTATE_COLLIDING_ENT;
            }
        }

        worldX = TO_WORLD_POS(wall->base.spriteX, wall->base.regionX);
        worldX += (s32)(wall->s.hitboxes[0].b.right + ((wall->s.hitboxes[0].b.right & 0x80000000) >> 31)) >> 1;

        worldY = TO_WORLD_POS(me->y, wall->base.regionY);
        worldY += (s32)(wall->s.hitboxes[0].b.bottom + ((wall->s.hitboxes[0].b.bottom & 0x80000000) >> 31)) >> 1;

        for (i = 0; i < 6; i++) {
            s32 rand = PseudoRandom32() & 0x1FF;

            CreateBreakableWallDebris(worldX, worldY, 0x200, rand, 30, i, wall->s.tiles);
        }

        goto inc_counter;
    }

    do {
    lbl_destroy_task:
        SET_MAP_ENTITY_NOT_INITIALIZED(me, wall->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } while (0);

inc_counter:
    wall->unk3A++;
}
END_NONMATCH

// (99.88%) https://decomp.me/scratch/XSZVN
NONMATCH("asm/non_matching/game/interactables/breakable_wall__CreateBreakableWallDebris.inc",
         void CreateBreakableWallDebris(s16 worldX, s16 worldY, s16 param2, s16 rand, u8 param4, u8 param5, void *tiles))
{
    BreakableWallDebris *debris;
    struct Task *t;
    Sprite *sprNew;
    u16 arr[6][2][3]; // sp04
    s32 randClamped;
    s16 zone;
    s32 r3;

    memcpy(arr, gUnknown_080CF638, sizeof(arr));

    t = TaskCreate(Task_DebrisInit, sizeof(BreakableWallDebris), 0x2100, 0, NULL);
    debris = TASK_DATA(t);
    sprNew = &debris->s;

    debris->unkE = param4;
    debris->unkC = 32;

    randClamped = (rand & ONE_CYCLE);
    debris->unk8 = (COS(randClamped & ONE_CYCLE) * param2) >> 14;
    debris->unkA = (SIN(randClamped & ONE_CYCLE) * param2) >> 14;

    if (gStageData.act == ACT_BONUS_ENEMIES) {
        zone = ZONE_1;
    } else {
        zone = (gStageData.zone != ZONE_7) ? gStageData.zone : ZONE_1;
    }

    r3 = (param5 & 0x1);
    if (!r3) {
        sprNew->tiles = tiles;
    } else {
        sprNew->tiles = tiles + arr[zone][0][2] * TILE_SIZE_4BPP;
    }

    sprNew->anim = arr[zone][r3][0];
    sprNew->variant = arr[zone][r3][1];
    sprNew->oamFlags = SPRITE_OAM_ORDER(8);
    sprNew->animCursor = 0;
    sprNew->qAnimDelay = Q(0);
    sprNew->prevVariant = -1;
    sprNew->animSpeed = SPRITE_ANIM_SPEED(1.0);
    sprNew->palId = 0;
    sprNew->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    sprNew->frameFlags = SPRITE_FLAG(PRIORITY, 0);

    if (param5 > 1) {
        sprNew->frameFlags = SPRITE_FLAG_MASK_19;
    }

    debris->qWorldX = Q(worldX);
    debris->qWorldY = Q(worldY);
    UpdateSpriteAnimation(sprNew);
}
END_NONMATCH
