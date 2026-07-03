#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/bosses/gemerl_states.h"
#include "game/stage.h"
#include "game/shared/stage/player_callbacks.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ GemerlCallback callbackA;
    /* 0x04 */ void *funcB;
    /* 0x08 */ u8 unk8;
} Strc_80D5B00;

void sub_80678C0(Sprite *s0, Sprite *s1, Sprite *s2);
void sub_806799C(void *);
void Task_Gemerl_8068860(void);
void sub_8068908(void);
void sub_8068954(void *);
void Gemerl_SwitchState(Gemerl *gemerl, s32 state);
void sub_8067590(Gemerl *gemerl);
void sub_8067A64(Gemerl *gemerl);
void sub_8067B20(Gemerl *gemerl);
bool32 sub_8067B94(Gemerl *gemerl, s32 state);
void sub_8068AAC(Gemerl *gemerl);
void sub_8068ACC(Gemerl *gemerl);
void sub_8068B10(Gemerl *gemerl);
void TaskDestructor_Gemerl(Task *t);
extern void sub_807A4A8(void);
void sub_8068A6C(Gemerl *gemerl, s16, s16);
void sub_8068A38(Gemerl *gemerl, s16, u8);
bool32 sub_8068984(Gemerl *gemerl, s16);

extern Task *sub_8079758(s32, s16, s16, s16, s16, u8, s16, u8 *);
extern void sub_807A574(Gemerl *, u8, u8, u8);

// if gStageData.gameMode is Single Player TimeAttack,
// then set gPseudoRandom = (gStageData.zone * 1001)
extern void SetFixedRandomIfTimeAttackMode(void);

// TODO: Better name than IS_BETWEEN and IS_BETWEEN_2!
//       The problem with the name is that the max-value, is a delta between min/max, not the max itself.
#define IS_BETWEEN(_value, _min, _deltaMax) ((_value) > (_min) && (_value) < (_min) + (_deltaMax))

#define IS_BETWEEN_2(_valueX, _valueY, _minX, _minY, _deltaMaxX, _deltaMaxY)                                                               \
    (IS_BETWEEN(_valueX, _minX, _deltaMaxX) && ((_valueY) > (_minY)) && ((_valueY) < (_minY) + (_deltaMaxY)))

extern const s16 gUnknown_080D56DC[][2];
extern const s16 gUnknown_080D56F0[][5];
extern const Strc_80D5B00 gUnknown_080D5B00[];

// Called on init of Gmerl (in Boss 1 and Extra Boss)
// struct Task CreateGemerl(u8 *param0, s32 worldX, s32 worldY);
Task *CreateGemerl(u8 *param0, s32 worldX, s32 worldY)
{
    Task *t;
    Sprite *s;
    Sprite *spr78;
    Sprite *sprA0;
    Sprite *sprC8;
    Player *p;
    SpriteTransform *tf;
    s32 var_r0;
    s32 initialState;
    u8 *var_r1;
    u8 var_r4;
    Gemerl *gemerl;

    t = TaskCreate(Task_Gemerl_8068860, sizeof(Gemerl), 0x2100U, 0U, TaskDestructor_Gemerl);
    gStageData.taskGemerl = t;
    gemerl = TASK_DATA(t);
    s = (Sprite *)&gemerl->spr3C;
    spr78 = &gemerl->spr78;
    sprA0 = &gemerl->sprA0;
    tf = &gemerl->tf6C;

    s->x = worldX;
    if ((gStageData.zone == 7) || ((gStageData.zone == ZONE_1 && gStageData.act == ACT_BOSS))) {
        s->y = gCamera.minY;
    } else {
        s->y = worldY - 116;
    }
    gemerl->vram4 = VramMalloc(120);
    gemerl->unk18 = 0;
    gemerl->qSomeX = Q(s->x);
    gemerl->qSomeY = Q(s->y);
    gemerl->unk14 = 0xFC00;
    gemerl->unk16 = 0;
    gemerl->unk21 = 0;
    gemerl->unk22 = 0;

    if (gStageData.difficulty == 0) {
        gemerl->unk20 = 4;
    } else {
        gemerl->unk20 = 2;
    }

    gemerl->inputArg0 = param0;

    for (var_r4 = 0; var_r4 < 10; var_r4++) {
        gemerl->unk24[var_r4] = 0;
    }

    gemerl->zone = gStageData.zone;
    gemerl->unk2E = 0;
    gemerl->unk2F = 0;
    gemerl->unk30 = 2;
    gemerl->unk31 = 0;
    gemerl->unk32 = 0;
    gemerl->unk33 = 1;
    tf->rotation = 0;
    tf->x = 0;
    tf->y = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    sub_80678C0(s, spr78, sprA0);

    switch (gemerl->zone) {
        case ZONE_4:
            initialState = 12;
            break;
        case ZONE_6:
            initialState = 14;
            break;
        case 7:
            initialState = 14;
            gStageData.act = 3;
            break;
        default:
        case ZONE_1:
        case ZONE_2:
        case ZONE_3:
        case ZONE_5:
        case ZONE_7:
            initialState = 10;
            break;
    }

    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        p = &gPlayers[var_r4];
        p->framesInvincible = 0;
        p->unk13C &= 0xBF;
        p->framesInvulnerable = 0;
        p->timerSpeedup = 0;
    }

    Gemerl_SwitchState(gemerl, initialState);
    SetFixedRandomIfTimeAttackMode();

    s = &gemerl->sprC8;
    s->tiles = gemerl->vram4 + 4 * TILE_SIZE_4BPP;
    s->anim = 1273;
    s->variant = 1;
    s->oamFlags = 0x280;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    s->x = 0;
    s->y = 0;
    UpdateSpriteAnimation(s);

    return t;
}

void Task_Gemerl_80663F0()
{
    Gemerl *gemerl = TASK_DATA(gCurTask);
    s32 x;
    s32 y;
    s16 i;

    if (gemerl->inputArg0[0] == 3) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8068954(gemerl);
    sub_806799C(gemerl);

    for (i = 0; i < 2; i++) {
        Player *p = &gPlayers[i];
        p->framesInvincible = 0;
        p->unk13C &= 0xBF;
    }

    if (gemerl->inputArg0[0] == 2) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = &gPlayers[i];
            switch (gStageData.zone) {
                case ZONE_1: {
                    if (!IS_BETWEEN(I(p->qWorldX), 1184, DISPLAY_WIDTH)) {
                        return;
                    }
                } break;

                case ZONE_2: {
                    if (!(IS_BETWEEN_2(I(p->qWorldX), I(p->qWorldY), 6856, 1602, DISPLAY_WIDTH, 139))) {
                        return;
                    }
                } break;

                case ZONE_4: {
                    if (!(IS_BETWEEN_2(I(p->qWorldX), I(p->qWorldY), 7528, 640, DISPLAY_WIDTH, 131))) {
                        return;
                    }
                } break;

                case ZONE_6: {
                    if (!IS_BETWEEN_2(I(p->qWorldX), I(p->qWorldY), 11944, 349, DISPLAY_WIDTH, 152)) {
                        return;
                    }
                } break;

                case ZONE_FINAL: {
                    if (!IS_BETWEEN(I(p->qWorldX), 1104, DISPLAY_WIDTH)) {
                        return;
                    }
                } break;
            }
        }

        sub_807A4A8();
        if (!gemerl->callback(gemerl)) {
            gCurTask->main = sub_8068908;
        }
    }
}

bool32 Gemerl_State_17(Gemerl *gemerl)
{
    Sprite2 *s = &gemerl->spr3C;
    bool32 result = (gemerl->unk18 ^ 1) ? TRUE : FALSE;

    if (--gemerl->unk18 == 0) {
        const GemerlState *state = &gGemerlStates[5];
        gemerl->callback = state->callback;
        gemerl->unk18 = state->unk4[0];
        gemerl->unk16 = 0;

        s->anim = state->anim;
        s->variant = state->pattern;
        s->prevAnim = -1;
        s->prevVariant = -1;

        sub_8068AD8(gemerl);
        gemerl->unk10 = gemerl->qSomeY;
        m4aSongNumStart(SE_547);
    }

    return result;
}

bool32 Gemerl_State_5(Gemerl *gemerl)
{
    Sprite2 *s = &gemerl->spr3C;

    if (s->frameFlags & 0x400) {
        if (Q(gCamera.maxX - 46) < gemerl->qSomeX) {
            Gemerl_SwitchState(gemerl, 6);
            m4aSongNumStop(SE_547);
            gemerl->unk14 >>= 1;
            sub_8068ACC(gemerl);
        }
    } else {
        if (Q(gCamera.minX + 46) > gemerl->qSomeX) {
            Gemerl_SwitchState(gemerl, 6);
            m4aSongNumStop(SE_547);
            gemerl->unk14 >>= 1;
            sub_8068ACC(gemerl);
        }
    }

    if (sub_8067B94(gemerl, 1)) {
        sub_8068AAC(gemerl);
        sub_8067590(gemerl);
    }

    sub_8067A64(gemerl);
    return 0U;
}

bool32 Gemerl_State_6(Gemerl *gemerl)
{
    Sprite2 *s = &gemerl->spr3C;
    s32 v = gUnknown_080D56DC[(4 - (s8)gemerl->unk20)][1];
    bool32 var_r6 = FALSE;

    sub_8068A6C(gemerl, v, 0);
    if (SPRITE_FLAG_GET(s, X_FLIP)) {
        var_r6 = (gemerl->unk14 < 0) ? TRUE : FALSE;
    } else {
        var_r6 = (gemerl->unk14 > 0) ? TRUE : FALSE;
    }

    if (var_r6 != 0) {
        sub_8068A38(gemerl, 0, 0);
        gemerl->unk18 = 1;
    }

    if (--gemerl->unk18 == 0) {
        switch (gemerl->zone) {
            case ZONE_4:
            case ZONE_6:
            case ZONE_FINAL: {
                Gemerl_SwitchState(gemerl, 50);
            } break;

            default: {
                Gemerl_SwitchState(gemerl, 7);
            } break;
        }
    }

    if (sub_8067B94(gemerl, 1)) {
        sub_8068AAC(gemerl);
        sub_8067590(gemerl);
    }

    sub_8067A64(gemerl);
    return 0U;
}

// (97.14%) https://decomp.me/scratch/5QXwT
NONMATCH("asm/non_matching/game/bosses/gemerl__gemerl_state_51.inc", bool32 Gemerl_State_51(Gemerl *gemerl))
{
    s16 temp_r0;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r6_2;
    s32 temp_r7;
    u32 var_r0_2;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    s32 temp_r6;
    u32 var_r0;
    Sprite2 *s = &gemerl->spr3C;

    switch (gemerl->unk18) {
        case 1:
            temp_r2 = Q(gCamera.x + DISPLAY_CENTER_X) - gemerl->qSomeX;
            if (temp_r2 < 0) {
                temp_r2 += 0x3F;
            }
            gemerl->unk14 = (s16)(temp_r2 >> 6);
            gemerl->unk3A = I(gemerl->qSomeY);
            gemerl->unk16 = 0;
            gemerl->unk18 = 10;
            gemerl->unk1A = 0;
            /* fallthrough */
        case 10: {
            s32 sinVal = SIN(gemerl->unk1A);
            gemerl->qSomeY = (gemerl->unk3A << 8) - sinVal;
            gemerl->unk1A += 8;

            if (gemerl->unk1A > 0x0200) {
                gemerl->unk14 = 0;
                gemerl->unk18 = 100;
                gemerl->unk1A = 120;
            }

            if ((gStageData.timer & 3) == 0) {
                u32 x0, y0;
                s32 x, y;
                temp_r4 = PseudoRandom32() & 0x3FF;
                temp_r6 = PseudoRandom32() & 0xF;

                x0 = COS(temp_r4);
                x0 *= temp_r6;
                x = x0 >> 6;
                y0 = SIN(temp_r4);
                y0 *= temp_r6;
                temp_r6 = y0 >> 6;

                sub_8079758(9, I(gemerl->qSomeX + x), I(gemerl->qSomeY + temp_r6), 0x100, temp_r4, 30, 0,
                            gemerl->vram4 + 4 * TILE_SIZE_4BPP);
            }

            if ((gStageData.timer & 0x3F) == 0) {
                m4aSongNumStart(SE_545);
            }
        } break;

        case 100: {
            if (--gemerl->unk1A == 0) {
                gemerl->unk18 = 0;
                temp_r6 = s->frameFlags;
                Gemerl_SwitchState(gemerl, 9);

                if (temp_r6 & 0x400) {
                    SPRITE_FLAG_SET(s, X_FLIP);
                } else {
                    SPRITE_FLAG_CLEAR(s, X_FLIP);
                }
            }
        } break;
    }

    return 0U;
}
END_NONMATCH

bool32 Gemerl_State_8(Gemerl *gemerl)
{
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r6;
    Sprite2 *s = &gemerl->spr3C;

    if (gemerl->qSomeX > Q(gCamera.maxX + 16)) {
        if (gemerl->unk33 != 0) {
            VramFree(gemerl->spr3C.tiles);
            VramFree(gemerl->spr78.tiles);
            VramFree(gemerl->sprA0.tiles);
            VramFree(gemerl->vram4);
            gemerl->vram4 = NULL;
            gemerl->unk33 = 0;
        }

        if (--gemerl->unk18 == 0) {
            return TRUE;
        }
    } else {
        s->frameFlags |= 0x400;
        sub_8068A38(gemerl, 0x200, 0);

        if ((gStageData.timer % 8u) == 0) {
            s32 x, y;
            temp_r3 = PseudoRandom32() & 0x3FF;
            temp_r1 = PseudoRandom32() & 0xF;
            x = ((u32)(COS(temp_r3) * temp_r1) >> 6);
            y = ((u32)(SIN(temp_r3) * temp_r1) >> 6);
            sub_8079758(8, I(gemerl->qSomeX + x), I(gemerl->qSomeY + y), 0x10, temp_r3, 0x10, 0, NULL);
        }
    }

    return FALSE;
}

// (98.14%) https://decomp.me/scratch/6wOfK
NONMATCH("asm/non_matching/game/bosses/gemerl__gemerl_state_20.inc", bool32 Gemerl_State_20(Gemerl *gemerl))
{
    s32 var_r1;
    s16 temp_r2;
    s32 temp_r4;
    u32 var_r0;
    u32 var_r4;
    Player *p = &gPlayers[PLAYER_1];
    Sprite2 *s = &gemerl->spr3C;
    s32 a = -gUnknown_080D56F0[gemerl->unk20][1];

    sub_8068A6C(gemerl, 0U, a);
    if (gemerl->unk16 < -Q(3)) {
        var_r4 = (u16)sa2__sub_8004418(I(p->qWorldY - gemerl->qSomeY), I(p->qWorldX - gemerl->qSomeX));
        if (s->frameFlags & 0x400) {
            if (var_r4 >= 0 && var_r4 > 0x1FFU) {
                var_r4 = 0;
            } else if (var_r4 >= 0 && var_r4 > 0xFFU) {
                var_r4 = 0x100;
            }
        } else {
            if (var_r4 >= 0 && var_r4 > 0x200) {
                var_r4 = 0x200;
            } else if (var_r4 >= 0 && var_r4 < 0x100) {
                var_r4 = 0x100;
            }
        }
        var_r1 = COS(var_r4);
        temp_r2 = gUnknown_080D56F0[gemerl->unk20][2];
        var_r1 = ABS((var_r1 * temp_r2) >> 14);

        var_r0 = SIN(var_r4);
        var_r4 = (u32)(var_r0 * temp_r2 * 4) >> 16;
        sub_8068A38(gemerl, var_r1, 0);
        sub_8068A38(gemerl, var_r4, 1);
        Gemerl_SwitchState(gemerl, 21);

        if (s->frameFlags & 0x400) {
            s->variant += 1;
        }

        m4aSongNumStart(SE_231);
    }
    sub_8067B94(gemerl, 0);
    return 0U;
}
END_NONMATCH

bool32 Gemerl_State_21(Gemerl *gemerl)
{
    s32 temp_ip;
    u16 temp_r3;
    u16 temp_r8;
    u16 temp_sb;
    Sprite2 *s = &gemerl->spr3C;
    SpriteTransform *tf = &gemerl->tf6C;

    temp_r8 = gUnknown_080D56DC[4 - gemerl->unk20][0];
    temp_sb = temp_r8;
    temp_ip = sub_8068984(gemerl, 0);

    if (s->frameFlags & 0x400) {
        tf->rotation = (tf->rotation + gUnknown_080D56F0[gemerl->unk20][4]) & 0x3FF;
        if (Q(gCamera.maxX - 46) < gemerl->qSomeX) {
            tf->rotation = 0;
            gemerl->unk14 >>= 1;
            Gemerl_SwitchState(gemerl, 22);
        } else if (temp_ip != 0) {
            tf->rotation = 0;
            sub_8068AD8(gemerl);
            Gemerl_SwitchState(gemerl, 23);
            sub_8068A38(gemerl, (s16)temp_r8, 0);
        }
    } else {
        tf->rotation = (tf->rotation - gUnknown_080D56F0[gemerl->unk20][4]) & 0x3FF;

        if (Q(gCamera.minX + 46) > gemerl->qSomeX) {
            tf->rotation = 0;
            gemerl->unk14 >>= 1;
            Gemerl_SwitchState(gemerl, 22);
        } else if (temp_ip != 0) {
            tf->rotation = 0;
            sub_8068AD8(gemerl);
            Gemerl_SwitchState(gemerl, 23);
            sub_8068A38(gemerl, (s16)temp_sb, 0);
        }
    }
    sub_8067B94(gemerl, 0);
    return 0U;
}

bool32 Gemerl_State_25(Gemerl *gemerl)
{
    const Strc_80D5B00 *strc = &gUnknown_080D5B00[gemerl->unk2E];

    if (--gemerl->unk18 == 0) {
        if (++gemerl->unk2F == strc->unk8) {
            Gemerl_SwitchState(gemerl, 26);
        } else {
            Gemerl_SwitchState(gemerl, 25);
        }
    } else if (gemerl->unk18 == 9) {
        gemerl->unk24[gemerl->unk2F] = 1;

        sub_807A574(gemerl, gemerl->unk2E, gemerl->unk2F, gemerl->unk30);

        if (++gemerl->unk30 == 10) {
            gemerl->unk30 = 0;
        }
        sub_8068B10(gemerl);
    }

    if (sub_8067B94(gemerl, 1)) {
        sub_8068AAC(gemerl);
        sub_8067590(gemerl);
    }

    sub_8067B20(gemerl);

    return FALSE;
}

bool32 Gemerl_State_28(Gemerl *gemerl)
{
    const GemerlState *state = &gGemerlStates[29];
    s16 var = gUnknown_080D56DC[4 - gemerl->unk20][0];

    if (--gemerl->unk18 == 0) {
        sub_8068A38(gemerl, var, 0);
        sub_8068A38(gemerl, 0, 1U);
        gemerl->callback = state->callback;

        if (gemerl->unk20) {
            gemerl->unk18 = state->unk4[gemerl->unk20 - 1];
        } else {
            gemerl->unk18 = state->unk4[0];
        }

        sub_8068AD8(gemerl);
    }

    return FALSE;
}


#if 01
u32 Gemerl_State_29(Gemerl *gemerl)
{
    Player *temp_r4;
    Player *temp_r4_3;
    Sprite2 *temp_r1;
    Sprite2 *var_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1_3;
    s32 var_r1;
    s32 var_sb;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r1_2;
    u32 var_r0_2;
    u8 var_r6;
    u8 var_r6_2;
    u8 var_r6_3;

    var_sb = 0;
    temp_r1 = &gemerl->spr3C;
    if (gemerl->spr3C.frameFlags & 0x400) {
        if (Q(gCamera.maxX - 12) < gemerl->qSomeX) {
            var_sb = 1;
        }
    } else {
        if (Q(gCamera.minX + 12) > gemerl->qSomeX) {
            var_sb = 1;
        }
    }

    sub_8067A64(gemerl);

    for(var_r6 = 0; var_r6 < 2; var_r6++)
	{
        temp_r4 = &gPlayers[var_r6];
        temp_r0 = sub_802C080(temp_r4);
        if (temp_r0) {
            if ((0x20 & temp_r4->moveState) && (temp_r4->sprColliding == (Sprite*)temp_r1)) {
                temp_r4->moveState &= ~0x20;
                temp_r4->sprColliding = NULL;
            }
        } else {
            temp_r0_2 = sub_8020700((Sprite *)temp_r1, I(gemerl->qSomeX), I(gemerl->qSomeY), 1, temp_r4, 0);

            if (temp_r0_2 == 1) {
                Player_8009850(temp_r4);
                if (gemerl->spr3C.frameFlags & 0x400) {
                    temp_r4->moveState &= ~MOVESTATE_FACING_LEFT;
                } else {
                    temp_r4->moveState |= MOVESTATE_FACING_LEFT;
                }
                temp_r4->moveState |= 0x20;
                temp_r4->sprColliding = (Sprite *)temp_r1;
            }
        }
    }

    for(var_r6 = 0; var_r6 < 2; var_r6++)
	{
        temp_r4 = &gPlayers[var_r6];
        if ((temp_r4->moveState & 0x20) && (temp_r4->sprColliding == (Sprite*)temp_r1)) {
            if (gemerl->spr3C.frameFlags & 0x400) {
                var_r1 = +Q(30);
            } else {
                var_r1 = -Q(30);
            }
            temp_r4->qWorldX = gemerl->qSomeX + var_r1;
            temp_r4->qWorldY = gemerl->qSomeY;

			if (I(temp_r4->qWorldX) >= gCamera.maxX - 1) {
                temp_r4->qWorldX = Q(gCamera.maxX - 1);
                var_sb = 1;
            } else if (I(temp_r4->qWorldX) <= gCamera.minX + 1) {
                temp_r4->qWorldX = Q(gCamera.minX + 1);
                var_sb = 1;
            }
            
        }
    }

    if (var_sb == 1) {
        Gemerl_SwitchState(gemerl, 0x1E);
        sub_8068A38(gemerl, 0, 0U);
        sub_8068ACC(gemerl);
        for(var_r6 = 0; var_r6 < 2; var_r6++)
		{
            temp_r4 = &gPlayers[var_r6];
            if ((temp_r4->moveState & 0x20) && (temp_r4->sprColliding == (Sprite*)temp_r1)) {
                temp_r4->framesInvulnerable = 0;
                temp_r4->framesInvincible = 0;
                Call__Player_8014550(temp_r4);
            }
        }
    }
    return 0U;
}

#endif
