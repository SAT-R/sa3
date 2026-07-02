#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/bosses/gemerl_states.h"
#include "game/stage.h"
#include "constants/songs.h"

void sub_80678C0(Sprite *s0, Sprite *s1, Sprite *s2);
void sub_806799C(void *);
void Task_Gemerl_8068860(void);
void sub_8068908(void);
void sub_8068954(void *);
void Gemerl_SwitchState(Gemerl *gemerl, s32 state);
void sub_8067590(Gemerl *gemerl);
void sub_8067A64(Gemerl *gemerl);
bool32 sub_8067B94(Gemerl *gemerl, s32 state);
void sub_8068AAC(Gemerl *gemerl);
void sub_8068ACC(Gemerl *gemerl);
void TaskDestructor_Gemerl(Task *t);

extern void sub_807A4A8(void);

// if gStageData.gameMode is Single Player TimeAttack,
// then set gPseudoRandom = (gStageData.zone * 1001)
extern void SetFixedRandomIfTimeAttackMode(void);

// TODO: Better name than IS_BETWEEN and IS_BETWEEN_2!
//       The problem with the name is that the max-value, is a delta between min/max, not the max itself.
#define IS_BETWEEN(_value, _min, _deltaMax) ((_value) > (_min) && (_value) < (_min) + (_deltaMax))

#define IS_BETWEEN_2(_valueX, _valueY, _minX, _minY, _deltaMaxX, _deltaMaxY)                                                               \
    (IS_BETWEEN(_valueX, _minX, _deltaMaxX) && ((_valueY) > (_minY)) && ((_valueY) < (_minY) + (_deltaMaxY)))

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

bool32 Gemerl_State_5(Gemerl *gemerl) {
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
