#include "global.h"
#include "module_unclear.h"
#include "task.h"
#include "game/game.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s0;
    /* 0x34 */ Sprite s1;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;
    /* 0x60 */ u8 unk60;
    /* 0x61 */ u8 act;
    /* 0x62 */ u8 unk62;
    /* 0x63 */ u8 unk63;
} ActRing; /* size: 0x64 */

void Task_ActRingMain(void);
void TaskDestructor_ActRing(struct Task *);
void sub_8040B34(ActRing *);
void sub_8040BE4(void);

void CreateEntity_ActRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ActRingMain, sizeof(ActRing), 0x2100, 0, TaskDestructor_ActRing);
    ActRing *ring = TASK_DATA(t);
    s16 act;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.spriteX = me->x;
    ring->base.id = id;

    for (act = 0; act < 3; act++) {
        if (GetBit(me->d.uData[4], act)) {
            break;
        }
    }

    ring->worldX = TO_WORLD_POS(me->x, regionX);
    ring->worldY = TO_WORLD_POS(me->y, regionY);
    ring->act = act;
    ring->unk60 = 0;
    ring->unk62 = me->d.uData[4] >> 7;
    ring->unk63 = GetBit(gSaveGame.unlockedStages[gStageData.zone], act);

    {
        Sprite *s = &ring->s0;
        s->x = ring->worldX - gCamera.x;
        s->y = ring->worldY - gCamera.y;
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8040B34(ring);
}

void Task_ActRingMain(void)
{
    Player *p = &gPlayers[gStageData.charId];
    ActRing *ring = TASK_DATA(gCurTask);
    Player *partner;
    s16 i;

    if ((p->callback != Player_80052C8) && (p->callback != Player_800522C)) {
        if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_200 | MOVESTATE_100)) && (gStageData.charId == CHARACTER_SONIC)) {
            Sprite *s = &ring->s0;
            s16 worldX = ring->worldX;
            s16 worldY = ring->worldY;
            if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                sub_8016F28(p);
                sub_8019A64(p);
                sub_8004E98(p, SE_BIG_WARP_RING);

                gStageData.nextMapIndex = (gStageData.zone * 10) + ring->act + 3;
                gStageData.unkC = 0;

                SetPlayerCallback(p, (void *)Player_800AD24);

                partner = &gPlayers[p->charFlags.partnerIndex];

                if (partner->charFlags.someIndex == 2) {
                    SetPlayerCallback(partner, (void *)Player_800AD24);
                }

                if (GAME_MODE_IS_MULTI_PLAYER(gStageData.gameMode)) {
                    sub_80275B8((u8)gStageData.nextMapIndex, 0, gStageData.unkC);
                }

                gStageData.unk4 = 8;
            }
        }
    } else {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            if (i == 0) {
                p = &gPlayers[gStageData.charId];
            } else {
                p = &gPlayers[p->charFlags.partnerIndex];
            }

            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                if (gStageData.entryIndex == (ring->act + 1)) {
                    if (ring->unk62 != 0) {
                        p->qSpeedAirX = -Q(4);
                        p->moveState |= MOVESTATE_FACING_LEFT;
                    } else {
                        p->qSpeedAirX = +Q(4);
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                    }
                }
            }
        }
    }

    sub_8040BE4();
}
