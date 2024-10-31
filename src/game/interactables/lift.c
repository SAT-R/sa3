#include "global.h"
#include "task.h"
#include "sprite.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

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
