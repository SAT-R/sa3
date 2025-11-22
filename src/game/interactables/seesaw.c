#include "global.h"
#include "core.h"
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
    /* 0x68 */ s16 unk68;
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
void sub_8037224(void);
void sub_803724C(void);
void sub_8037130(struct Task *t);
void sub_8036F0C(Sprite *s, Sprite *s2);
s32 sub_8037144(Player *p, Sprite *s, s16 arg2, s32 arg3, s32 arg4, s32 arg5);
s32 sub_8036BC4(s32 arg0, u8 arg1);

bool32 sub_8036E34(Player *p);

void CreateEntity_Seesaw(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Seesaw *entity;
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
        t = TaskCreate(sub_8037224, sizeof(Seesaw), 0x2100U, 0U, sub_8037130);
    } else {
        t = TaskCreate(sub_803724C, sizeof(Seesaw), 0x2100U, 0U, sub_8037130);
    }
    entity = TASK_DATA(t);
    s = &entity->s;
    s2 = &entity->s2;
    tf = &entity->tf;
    entity->base.regionX = regionX;
    entity->base.regionY = regionY;
    entity->base.me = me;
    entity->base.meX = me->x;
    entity->base.id = id;
    entity->unk78[0] = 0;
    entity->unk78[1] = 0;

    if (temp_r0 != 0) {
        entity->unk68 = 0x54;
    } else {
        entity->unk68 = 0x3AC;
    }
    entity->unk74 = 0;
    entity->unk76 = 0;
    s->x = TO_WORLD_POS_RAW(me->x * TILE_WIDTH, regionX);
    s->y = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, regionY);

    if (temp_r0 != 0) {
        entity->unk6C = Q(s->x + 24);
    } else {
        entity->unk6C = Q(s->x - 24);
    }

    entity->unk70 = Q(s->y + 5);
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
    Seesaw *entity;
    Sprite *s;
    s32 sp18 = 0;
    s16 sp1C;
    s16 sp20;
    u8 i;
    Player *p;
    s16 temp_r7;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 var_r4;
    u16 temp_r8;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r2;
    u32 temp_r3;
    u32 var_r1;
    u8 *temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    MapEntity *me;

    entity = TASK_DATA(gCurTask);
    me = entity->base.me;
    s = &entity->s;

    sp1C = (s32)(u16)((entity->base.meX * 8) + (entity->base.regionX << 8));
    sp20 = (s32)(u16)((me->y * 8) + (entity->base.regionY << 8));

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);
        temp_r0 = sub_802C0D4(p);
        if (temp_r0 == 0) {
            temp_r3 = sub_8020874(s, sp1C, sp20, 0, p, 0, 0);
            if (temp_r3 == 0) {
                if (entity->unk78[i]) {
                    temp_r1 = p->moveState;
                    if ((0x20 & temp_r1) && (p->sprColliding == s)) {
                        p->moveState = temp_r1 & ~0x20;
                        p->sprColliding = (Sprite *)NULL;
                    }
                    entity->unk78[i] = 0;
                }
            } else {
                temp_r2 = p->moveState;
                if (!(temp_r2 & MOVESTATE_COLLIDING_ENT) || (p->sprColliding != s)) {
                    if (arg0 != 0) {
                        if (0x80000 & temp_r3) {
                            if (0x10 & p->keyInput) {
                                p->qWorldX += 0x100;
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
                            entity->unk78[i] = 1;
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
                    if (entity->unk78[i] != 0) {
                        if (((arg0 != 0) && (sp1C > I(p->qWorldX))) || ((arg0 == 0) && (sp1C < I(p->qWorldX)))) {
                            temp_r8 = (u16)p->qSpeedAirY;
                            temp_r5 = p->qWorldY;
                            temp_r7 = (s16)sp1C;
                            if (0x10000 & sub_8020950(s, (s32)temp_r7, sp20, p, 0U)) {
                                p->moveState |= 4;
                                p->qSpeedAirY = (s16)temp_r8;
                                p->qWorldY = temp_r5;
                                sp18 = 1;
                            }
                            if (((sub_8020700(s, (s32)temp_r7, sp20, 0, p, 0) == 1) && (p->moveState & 0x20) && (p->sprColliding == s))
                                || ((p->moveState & 4) && ((s32)p->qSpeedAirY > 0))) {
                                sp18 |= sub_8037144(p, s, (s16)sp1C, sp20, (s32)(u16)entity->unk68, 0x30);
                            } else {
                                ResolvePlayerSpriteCollision(s, p);
                            }
                        } else {
                            if (sub_8037144(p, s, (s16)sp1C, sp20, (s32)(u16)entity->unk68, 0x30) == 0) {
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

    temp_r4 = sp18 | sub_8036BC4(arg0, 0U);
    sp18 = temp_r4;
    return temp_r4;
}
