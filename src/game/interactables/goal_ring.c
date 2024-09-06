#include "global.h"
#include "task.h"
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
    /* 0x0C */ Sprite s[2];
    /* 0x5C */ u8 filler[0x4];
} GoalRing; /* 0x60 */

void Task_GoalRing(void);
void TaskDestructor_GoalRing(struct Task *);
void sub_80340B4(Sprite *);
void sub_803414C(void);
void sub_803421C(void);

void CreateEntity_GoalRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (gStageData.unk4 == 3) {
        struct Task *t = TaskCreate(Task_GoalRing, sizeof(GoalRing), 0x2100, 0, TaskDestructor_GoalRing);
        GoalRing *ring = TASK_DATA(t);
        Sprite *s = &ring->s[0];
        s16 i;

        ring->base.regionX = regionX;
        ring->base.regionY = regionY;
        ring->base.me = me;
        ring->base.spriteX = me->x;
        ring->base.id = id;

        for (i = 0; i < 2; i++, s++) {
            // NOTE: Technically this is incorrect, since Sprite
            //       coordinates are usually in screen-space.
            s->x = TO_WORLD_POS(me->x, regionX);
            s->y = TO_WORLD_POS(me->y, regionY);
        }

        SET_MAP_ENTITY_INITIALIZED(me);

        sub_80340B4(ring->s);
    }
}

void Task_GoalRing(void)
{
    GoalRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s[0];
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;
    Player *p1, *p2;

    worldX = TO_WORLD_POS(ring->base.spriteX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

    sub_803414C();

    p1 = &gPlayers[gStageData.charId];
    p2 = &gPlayers[p1->charFlags.partnerIndex];

    if (gStageData.gameMode == GAME_MODE_5) {
        if ((!(p1->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p1, 0))
            || (!(p2->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p2, 0)) || (gStageData.unk4 == 5)) {
            sub_8004E98(p1, SE_GOAL_RING);
            SetPlayerCallback(p1, Player_8005BD4);
            gStageData.unk4 = 5;
            sub_803421C();
        }
    } else if ((!(p1->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) && sub_8020700(s, worldX, worldY, 0, p1, 0))
               || (gStageData.unk4 == 5)) {
        bool32 r7 = (gStageData.unk4 == 5) ? TRUE : FALSE;

        sub_8004E98(p1, SE_GOAL_RING);
        SetPlayerCallback(p1, Player_8005BD4);

        if (GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode) || gStageData.gameMode == GAME_MODE_5) {
            p2 = &gPlayers[p1->charFlags.partnerIndex];

            if (p2->charFlags.someIndex == 2) {
                SetPlayerCallback(p2, Player_8005BD4);
            }
        }

        gStageData.unk4 = 5;

        if ((gStageData.gameMode == GAME_MODE_MP_MULTI_PACK) && !r7) {
            s32 r3 = 85;
            r3 -= (1 << gStageData.charId * 2);
            r3 -= (1 << p1->charFlags.partnerIndex * 2);
            gStageData.unk5 = r3;

            gStageData.unk90->main = Task_800303C;
        }

        sub_803421C();
    }
}