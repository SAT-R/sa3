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
#include "game/interactables/trigger_boss_and_goal_ring.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ u8 *unk5C; // points to a single byte, not an array
    /* 0x60 */ u16 unk60;
    /* 0x64 */ s32 worldX;
    /* 0x68 */ s32 worldY;
} GoalRingImpl; /* 0x6C */

void sub_80467F0(void);
void sub_80469AC(void);

void Task_GoalRingImplInit(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    s16 worldX, worldY;
    Player *p, *p2;
    worldX = ring->worldX;
    worldY = ring->worldY;
    sub_80467F0();

    p = GET_SP_PLAYER_V0(PLAYER_1);
    p2 = GET_SP_PLAYER_V0(PLAYER_2);

    if (gStageData.gameMode == GAME_MODE_5) {
        if ((!(p->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p, 0))
            || (!(p2->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p2, 0)) || (gStageData.unk4 == GAME_MODE_5)) {
            Player_PlaySong(p, SE_GOAL_RING);
            sub_8016F28(p);

            gStageData.unk4 = 5;

            SetPlayerCallback(p, Player_800613C);
            sub_80469AC();
        }
    } else {
        if (!(p->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p, 0)) {
            Player_PlaySong(p, SE_GOAL_RING);
            sub_8016F28(p);

            gStageData.unk4 = 5;

            if (gStageData.gameMode != GAME_MODE_BOSS_TIME_ATTACK) {
                SetPlayerCallback(p, Player_800613C);
                SetPlayerCallback(p2, Player_800613C);
            } else {
                SetPlayerCallback(p, Player_8005BD4);
            }
            sub_80469AC();
        }
    }
}