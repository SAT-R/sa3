#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "module_unclear.h"

#include "constants/move_states.h"

typedef struct Seesaw {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ SpriteTransform tf;
    /* 0x40 */ Sprite s2;
    /* 0x68 */ u16 unk68;
    /* 0x6A */ s16 unk6A;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s16 unk74;
    /* 0x76 */ s16 unk76;
    /* 0x78 */ u8 unk78[2];
    /* 0x7A */ u8 unk7A;
    /* 0x7B */ u8 unk7B;
} Seesaw;

void CreateEntity_Seesaw(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void sub_8036FBC(void);
u32 sub_8036BC4(u8 arg0, u8 arg1);
bool32 sub_8036E34(Player *p);
void sub_8036F0C(Sprite *s, Sprite *s2);
void TaskDestructor_Seesaw(struct Task *t);
s32 sub_8037144(Player *p, Sprite *s, s16 worldX, s16 worldY, u16 arg4, s16 arg5);
void Task_SeesawInitA(void);
void Task_SeesawInitB(void);

void CreateEntity_Seesaw(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Seesaw *seesaw;
    Sprite *s2;
    Sprite *s;
#ifndef NON_MATCHING
    register SpriteTransform *tf asm("r5");
#else
    SpriteTransform *tf;
#endif
    struct Task *t;
    u32 temp_r0;
    u8 temp_r1_2;

    temp_r1_2 = me->d.sData[4];
    temp_r0 = (u32)((0 - temp_r1_2) | temp_r1_2) >> 0x1F;
    if (temp_r0 != 0) {
        t = TaskCreate(Task_SeesawInitA, sizeof(Seesaw), 0x2100U, 0U, TaskDestructor_Seesaw);
    } else {
        t = TaskCreate(Task_SeesawInitB, sizeof(Seesaw), 0x2100U, 0U, TaskDestructor_Seesaw);
    }
    seesaw = TASK_DATA(t);
    s = &seesaw->s;
    s2 = &seesaw->s2;
    tf = &seesaw->tf;
    seesaw->base.regionX = regionX;
    seesaw->base.regionY = regionY;
    seesaw->base.me = me;
    seesaw->base.meX = me->x;
    seesaw->base.id = id;
    seesaw->unk78[0] = 0;
    seesaw->unk78[1] = 0;

    if (temp_r0 != 0) {
        seesaw->unk68 = 84;
    } else {
        seesaw->unk68 = 1024 - 84;
    }
    seesaw->unk74 = 0;
    seesaw->unk76 = 0;
    s->x = TO_WORLD_POS_RAW(me->x * TILE_WIDTH, regionX);
    s->y = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, regionY);

    if (temp_r0 != 0) {
        seesaw->unk6C = Q(s->x + 24);
    } else {
        seesaw->unk6C = Q(s->x - 24);
    }

    seesaw->unk70 = Q(s->y + 5);
    s2->x = s->x;
    s2->y = s->y;
    tf->scaleX = Q(1);
    tf->scaleY = Q(1);
    tf->rotation = 0;
    SET_MAP_ENTITY_INITIALIZED(me);
    sub_8036F0C(s, s2);
}

s32 sub_8036584(u8 arg0)
{
    Seesaw *seesaw;
    Sprite *s;
    s32 sp18 = 0;
    s16 sp1C;
    s16 sp20;
    u8 i;
    Player *p;
    s32 var_r4;
    s16 qTempSpeedAirY;
    s32 qTempWorldY;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_3;
    u32 temp_r2;
    u32 temp_r3;
    MapEntity *me;

    seesaw = TASK_DATA(gCurTask);
    me = seesaw->base.me;
    s = &seesaw->s;

    sp1C = (s32)(u16)((seesaw->base.meX * 8) + (seesaw->base.regionX << 8));
    sp20 = (s32)(u16)((me->y * 8) + (seesaw->base.regionY << 8));

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);
        temp_r0 = sub_802C0D4(p);
        if (temp_r0 == 0) {
            temp_r3 = sub_8020874(s, sp1C, sp20, 0, p, 0, 0);
            if (temp_r3 == 0) {
                if (seesaw->unk78[i]) {
                    temp_r1 = p->moveState;
                    if ((0x20 & temp_r1) && (p->sprColliding == s)) {
                        p->moveState = temp_r1 & ~0x20;
                        p->sprColliding = (Sprite *)NULL;
                    }
                    seesaw->unk78[i] = 0;
                }
            } else {
                temp_r2 = p->moveState;
                if (!(temp_r2 & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != s)) {
                    if (arg0 != 0) {
                        if (0x80000 & temp_r3) {
                            if (0x10 & p->keyInput) {
                                p->qWorldX += Q(1);
                                p->moveState = temp_r2 | MOVESTATE_40;
                            }
                            p->qWorldX += (s16)(temp_r3 & 0xFF00);
                            p->qSpeedGround = 0;
                            p->qSpeedAirX = 0;
                        } else {
                            goto block_24;
                        }
                    } else if (0x40000 & temp_r3) {
                        if (0x20 & p->keyInput) {
                            p->qWorldX -= Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                        p->qWorldX += (s16)(temp_r3 & 0xFF00);
                        p->qSpeedGround = 0;
                        p->qSpeedAirX = 0;
                    } else {
                    block_24:
                        if (sub_8036E34(p) == 1) {
                            seesaw->unk78[i] = 1;
                            p->moveState |= MOVESTATE_COLLIDING_ENT;
                            p->sprColliding = s;
                            if (p->moveState & MOVESTATE_800000) {
                                SetPlayerCallback(p, Player_80077CC);
                            } else {
                                SetPlayerCallback(p, Player_8005380);
                            }
                            goto block_29;
                        }
                    }
                } else {
                block_29:
                    if (seesaw->unk78[i] != 0) {
                        if (((arg0 != 0) && (sp1C > I(p->qWorldX))) || ((arg0 == 0) && (sp1C < I(p->qWorldX)))) {
                            qTempSpeedAirY = p->qSpeedAirY;
                            qTempWorldY = p->qWorldY;
                            if (0x10000 & sub_8020950(s, sp1C, sp20, p, 0U)) {
                                p->moveState |= 4;
                                p->qSpeedAirY = qTempSpeedAirY;
                                p->qWorldY = qTempWorldY;
                                sp18 = 1;
                            }
                            if (((sub_8020700(s, sp1C, sp20, 0, p, 0) == 1) && (p->moveState & 0x20) && (p->sprColliding == s))
                                || ((p->moveState & 4) && ((s32)p->qSpeedAirY > 0))) {
                                sp18 |= sub_8037144(p, s, (s16)sp1C, sp20, (s32)(u16)seesaw->unk68, 0x30);
                            } else {
                                ResolvePlayerSpriteCollision(s, p);
                            }
                        } else {
                            if (sub_8037144(p, s, (s16)sp1C, sp20, (s32)(u16)seesaw->unk68, 0x30) == 0) {
                                temp_r1_3 = p->moveState;
                                if ((((MOVESTATE_JUMPING & temp_r1_3) != MOVESTATE_JUMPING) || ((s32)p->qSpeedAirY <= 0))
                                    && (temp_r1_3 & MOVESTATE_IN_AIR)
                                    && ((sub_8052418((s32)p->qWorldY >> 8, (s32)p->qWorldX >> 8, (s32)p->unk27, 8, sub_8051F54) <= 4)
                                        || ((p->moveState & MOVESTATE_IN_AIR) && ((s32)p->qSpeedAirY < 0)))) {
                                    var_r4 = 0;
                                } else {
                                    var_r4 = 1;
                                }
                                ResolvePlayerSpriteCollision(s, p);
                                if (var_r4 != 0) {
                                    p->moveState &= ~MOVESTATE_IN_AIR;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    sp18 |= sub_8036BC4(arg0, 0U);

    return sp18;
}

void sub_80368E4(u8 arg0)
{
    s16 worldX, worldY;
    Sprite *s;
    s16 var_r0;
    u32 coll;
    u8 i;

    Player *p;
    Seesaw *seesaw = TASK_DATA(gCurTask);
    MapEntity *me = seesaw->base.me;

    s = &seesaw->s;
    worldX = TO_WORLD_POS_RAW(seesaw->base.meX * TILE_WIDTH, seesaw->base.regionX);
    worldY = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, seesaw->base.regionY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);
        if (!sub_802C0D4(p)) {
            coll = sub_8020874(s, worldX, worldY, 0, p, 0, 0);
            if (coll == 0) {
                if (seesaw->unk78[i] != 0) {
                    if ((MOVESTATE_COLLIDING_ENT & p->moveState) && (p->sprColliding == s)) {
                        p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                        p->sprColliding = NULL;
                    }
                    seesaw->unk78[i] = 0;
                }
            } else {
                if (!(p->moveState & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != s)) {
                    if (arg0 != 0) {
                        if (0x80000 & coll) {
                            if (0x10 & p->keyInput) {
                                p->qWorldX += 0x100;
                                p->moveState |= MOVESTATE_40;
                            }
                            p->qWorldX += (s16)(coll & 0xFF00);
                            p->qSpeedGround = 0;
                            p->qSpeedAirX = 0;
                        } else {
                            goto block_24;
                        }
                    } else if (0x40000 & coll) {
                        if (DPAD_LEFT & p->keyInput) {
                            p->qWorldX -= Q(1);
                            p->moveState |= MOVESTATE_40;
                        }
                        p->qWorldX += (s16)(coll & 0xFF00);
                        p->qSpeedGround = 0;
                        p->qSpeedAirX = 0;
                    } else {
                    block_24:
                        if (sub_8036E34(p) == 1) {
                            seesaw->unk78[i] = 1;
                            p->moveState |= MOVESTATE_COLLIDING_ENT;
                            p->sprColliding = s;
                            if (p->moveState & MOVESTATE_800000) {
                                SetPlayerCallback(p, Player_80077CC);
                            } else {
                                SetPlayerCallback(p, Player_8005380);
                            }
                            goto block_29;
                        }
                    }
                } else {
                block_29:
                    if (seesaw->unk78[i] != 0) {
                        if (arg0 != 0) {
                            if (worldX < I(p->qWorldX)) {
                                goto block_34;
                            }
                            goto block_38;
                        }
                        if (worldX > I(p->qWorldX)) {
                        block_34:
                            if (sub_8037144(p, s, worldX, worldY, seesaw->unk68, 0x30) == 1) {
                                ResolvePlayerSpriteCollision(s, p);
                                var_r0 = I(p->qWorldX) - worldX;
                                p->qSpeedAirY = ((s32)(0 - (ABS(var_r0) << 10)) >> 5) - Q(5);
                                p->charFlags.unk2C_04 = 1;
                                SetPlayerCallback(p, Player_8006F98);
                                Player_PlaySong(p, 0x250U);
                            }
                        } else {
                        block_38:
                            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                                p->qWorldY += Q(16);
                                if (sub_8037144(p, s, worldX, worldY, seesaw->unk68, 0x30) == 0) {
                                    p->qWorldY -= Q(16);
                                    ResolvePlayerSpriteCollision(s, p);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    sub_8036BC4(arg0, 1U);
}

u32 sub_8036BC4(u8 arg0, u8 arg1)
{
    s32 sp4;
    s32 sp8;
    s32 spC = 0;
    s32 sp10;
    s32 temp_r1_4;
    s16 worldX, worldY;
    s32 temp_r5;
    s32 temp_r6;
    s16 var_r0;
    s32 unk70;
    u32 var_r1;
    u8 var_r6;
    s16 w;
    s32 sinVal;
    s32 qSinVal;
    s32 r0;

    Player *p;
    Seesaw *seesaw = TASK_DATA(gCurTask);
    MapEntity *me = seesaw->base.me;
    Sprite *s2 = &seesaw->s2;

    worldX = TO_WORLD_POS_RAW((seesaw->base.meX * TILE_WIDTH), seesaw->base.regionX);
    worldY = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, seesaw->base.regionY);
    seesaw->unk76 += Q(32. / 256.);
    if (seesaw->unk76 > Q(6)) {
        seesaw->unk76 = Q(6);
    }
    seesaw->unk70 += seesaw->unk76;

    for (var_r6 = 0; var_r6 < 2; var_r6++) {
        p = GET_SP_PLAYER_V1(var_r6);
        sub_8020CE0(s2, I(seesaw->unk6C), I(seesaw->unk70), 0U, p);
    }

    temp_r5 = I(seesaw->unk6C);
    w = (temp_r5 - worldX);
    sinVal = ((w * SIN(seesaw->unk68)) << 2);
    qSinVal = Q(worldY + (sinVal >> 16));

    if (seesaw->unk70 >= qSinVal) {
        seesaw->unk70 = qSinVal;
        if (arg1 != 0) {
            if (((arg0 != 0) && (worldX < temp_r5)) || ((arg0 == 0) && (worldX > temp_r5))) {
                seesaw->unk76 = -Q(6);
                seesaw->unk74 = (worldX > I(seesaw->unk6C)) ? +160 : -160;
            }
        } else {
            if (((arg0 != 0) && (worldX > temp_r5)) || ((arg0 == 0) && (worldX < temp_r5))) {
                spC = 1;
            }
        }
    } else {
        seesaw->unk6C += seesaw->unk74;
        if (worldX > I(seesaw->unk6C)) {
            var_r0 = worldX - I(seesaw->unk6C);
        } else {
            var_r0 = I(seesaw->unk6C) - worldX;
        }

        if (var_r0 > 30) {
            if (worldX > I(seesaw->unk6C)) {
                seesaw->unk6C = Q(worldX - 30);
            } else {
                seesaw->unk6C = Q(worldX + 30);
            }
        }
    }
    unk70 = I(seesaw->unk70);
    temp_r1_4 = TO_WORLD_POS_RAW((seesaw->base.me->y * TILE_WIDTH), seesaw->base.regionY);
    if (unk70 > (temp_r1_4 + 4)) {
        seesaw->unk70 = Q(temp_r1_4) + Q(4);
    }
    return spC;
}

void sub_8036D94()
{
    Seesaw *seesaw = TASK_DATA(gCurTask);

    sub_80368E4(1);

    seesaw->unk68 -= 20;
    seesaw->unk68 &= 0x3FF;

    if ((seesaw->unk68 > 512) && (seesaw->unk68 < 940)) {
        seesaw->unk68 = 940;
        gCurTask->main = Task_SeesawInitB;
    }

    sub_8036FBC();
}

void sub_8036DE8()
{
    Seesaw *seesaw = TASK_DATA(gCurTask);

    sub_80368E4(0);

    seesaw->unk68 += 20;
    seesaw->unk68 &= 0x3FF;

    if ((seesaw->unk68 > 84) && (seesaw->unk68 < 512)) {
        seesaw->unk68 = 84;
        gCurTask->main = Task_SeesawInitA;
    }

    sub_8036FBC();
}

u32 sub_8036E34(Player *p)
{
    s16 worldX, worldY;
    s16 dx;
    s32 var_r3;

    u32 result = 0;
    Seesaw *seesaw = TASK_DATA(gCurTask);
    MapEntity *me = seesaw->base.me;
    Sprite *s = &seesaw->s;
    s32 temp_r5 = seesaw->unk68;
    s32 sinVal;
    s16 r1;

    worldX = TO_WORLD_POS_RAW(seesaw->base.meX * TILE_WIDTH, seesaw->base.regionX);
    worldY = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, seesaw->base.regionY);

    dx = I(p->qWorldX) - worldX;
    if (ABS(dx) > 32) {
        ResolvePlayerSpriteCollision(s, p);
        return FALSE;
    }

    sinVal = SIN(temp_r5);
    r1 = ((dx * sinVal * 4) >> 16);
    temp_r5 = worldY + r1;
    var_r3 = I(p->qWorldY) + p->unk25;

    if (p->charFlags.anim0 == 92 || p->charFlags.anim0 == 93) {
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            var_r3 -= 32;
        } else {
            var_r3 += 32;
        }
    }

    if ((var_r3 > temp_r5) && (var_r3 < (temp_r5 + 8)) && (p->qSpeedAirY >= 0)) {
        p->qWorldY = (var_r3 - p->unk25) << 8;
        result = 1;
    }

    return result;
}

void sub_8036F0C(Sprite *s, Sprite *s2)
{
    s32 tilesBall;
    u16 anim;
    u8 variantA, variantB;
    u32 var_r0;
    s32 tileCount;
    u8 *vram;

    if (gStageData.zone == 6) {
        anim = 0x3C8;
        variantA = 0;
        variantB = 3;
        tilesBall = 40;
        tileCount = 44;
    } else {
        anim = 0x375;
        variantA = 0;
        variantB = 3;
        tilesBall = 48;
        tileCount = 52;
    }

    vram = VramMalloc(tileCount);

    s->tiles = vram;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->anim = anim;
    s->variant = variantA;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x1000;
    s2->tiles = vram + (tilesBall * TILE_SIZE_4BPP);
    s2->oamFlags = SPRITE_OAM_ORDER(23);
    s2->anim = anim;
    s2->variant = variantB;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
}

void sub_8036FBC()
{
    MapEntity *me;
    Player *p;
    Sprite *s;
    s16 worldX;
    s16 worldY;
    u16 var_r0_3;
    u32 temp_r2;
    s16 i;
    u8 variant;

    Seesaw *seesaw = TASK_DATA(gCurTask);

    s = &seesaw->s;
    me = seesaw->base.me;
    worldX = TO_WORLD_POS_RAW(seesaw->base.meX * TILE_WIDTH, seesaw->base.regionX);
    worldY = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, seesaw->base.regionY);

    if (IsWorldPtActive(worldX, worldY) == 0) {
        for (i = 0; i < 2; i++) {
            p = GET_SP_PLAYER_V1(i);
            ResolvePlayerSpriteCollision(s, p);
        }
        SET_MAP_ENTITY_NOT_INITIALIZED(me, seesaw->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    temp_r2 = 0x3FF & seesaw->unk68;
    if (temp_r2 > 0x200U) {
        SPRITE_FLAG_CLEAR(s, X_FLIP);
    } else {
        SPRITE_FLAG_SET(s, X_FLIP);
    }

    if (temp_r2 > 0x200U) {
        s32 v = 0x400 - temp_r2;
        if (v < 0) {
            var_r0_3 = temp_r2 - 0x400;
        } else {
            var_r0_3 = v;
        }
    } else {
        var_r0_3 = temp_r2;
    }
    variant = 0;
    if (var_r0_3 > 27) {
        if (var_r0_3 < 56) {
            variant = 1;
        } else {
            variant = 2;
        }
    }

    s->variant = variant;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &seesaw->s2;
    s->x = I(seesaw->unk6C) - gCamera.x;
    s->y = I(seesaw->unk70) - gCamera.y;
    DisplaySprite(s);
}

void TaskDestructor_Seesaw(struct Task *t)
{
    Seesaw *seesaw = TASK_DATA(t);
    VramFree(seesaw->s.tiles);
}

s32 sub_8037144(Player *p, Sprite *s, s16 worldX, s16 worldY, u16 arg4, s16 arg5)
{
    s16 temp_r2;
    s32 var_r1;
    s32 res;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r8;
    s16 temp_r1;
    s32 sinVal;

    var_r8 = 0;
    temp_r2 = I(p->qWorldX) - worldX;

    if (ABS(temp_r2) >= arg5) {
        ResolvePlayerSpriteCollision(s, p);
        return 0;
    }

    sinVal = SIN(arg4);
    temp_r1 = ((temp_r2 * sinVal * 4) >> 16);
    temp_r3 = worldY + temp_r1;

    if (MOVESTATE_2 & p->moveState) {
        var_r0 = Q(temp_r3 - 0xB);
    } else {
        var_r0 = Q(temp_r3 - 0x10);
    }

    if ((p->qWorldY >= var_r0)
        || ((((MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR) & p->moveState) == MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s))) {
        var_r8 = 1;
        p->qWorldY = var_r0;
        res = sub_80517FC(I(p->qWorldY), I(p->qWorldX), p->unk27, 8, NULL, sub_805217C);
        if (res < 0) {
            p->qWorldY += Q(res);
        }
        p->moveState = (p->moveState | 0x20) & ~4;
        p->sprColliding = s;
    }
    return var_r8;
}

void Task_SeesawInitA(void)
{
    Seesaw *seesaw = TASK_DATA(gCurTask);

    if (sub_8036584(1)) {
        gCurTask->main = sub_8036D94;
    }

    sub_8036FBC();
}

void Task_SeesawInitB(void)
{
    Seesaw *seesaw = TASK_DATA(gCurTask);

    if (sub_8036584(0)) {
        gCurTask->main = sub_8036DE8;
    }

    sub_8036FBC();
}
