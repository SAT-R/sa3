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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite sprites[2];
    /* 0x5C */ u8 *unk5C; // points to a single byte, not an array
    /* 0x60 */ s16 unk60;
    /* 0x64 */ s32 worldX;
    /* 0x68 */ s32 worldY;
} GoalRingImpl; /* 0x6C */

void sub_8046760(Sprite *s);
void sub_80467F0(void);
void Task_8046900(void);
void Task_8046948(void);
void Task_804697C(void);
void sub_80469AC(void);
void sub_80469E0(void);

void Task_GoalRingImplInit(void);
void TaskDestructor_GoalRingImpl(struct Task *);

// BossInitFunc CreateGoalRing;
struct Task *CreateGoalRing(u8 *param0, s32 worldX, s32 worldY);

void Task_GoalRingImplInit(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->sprites[0];
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

void Task_80465F4(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->sprites[0];
    Player *p, *p2;
    s16 characterTemp, character1, character2;
    s16 i;

    if (ring->unk60++ >= 120) {
        if (gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
            for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
                p = GET_SP_PLAYER_V0(i);
                SetPlayerCallback(p, Player_8005E80);
            }

            TaskDestroy(gCurTask);
            return;
        } else {
            p = GET_SP_PLAYER_V0(0);
            character1 = p->charFlags.character;
            p2 = GET_SP_PLAYER_V0(1);
            character2 = p2->charFlags.character;

            sub_8003D2C();
            TasksDestroyAll();

            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            PAUSE_GRAPHICS_QUEUE();

            if (gStageData.playerIndex > p->charFlags.partnerIndex) {
                characterTemp = character1;
                character1 = character2;
                character2 = characterTemp;
            }

            sub_8053128(character1, character2);
        }
    } else {
        for (i = 0; i < (s32)ARRAY_COUNT(ring->sprites); i++, s++) {
            s->y -= (ring->unk60 >> 3);

            if (s->y < -16) {
                s->y = -16;
            }

            if (s->animSpeed < SPRITE_ANIM_SPEED(4.0)) {
                s->animSpeed += (ring->unk60 >> 1);
            }
        }

        sub_80469E0();
    }
}

void sub_8046760(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_GOAL_RING);
    s->anim = ANIM_GOAL_RING;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    s++;
    s->tiles = ALLOC_TILES_VARIANT(ANIM_GOAL_RING, 8);
    s->anim = ANIM_GOAL_RING;
    s->variant = 8;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG_MASK_18;
    UpdateSpriteAnimation(s);
}

void sub_80467F0(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->sprites[0];
    MapEntity *me = ring->base.me;
    u16 screenX, screenY;
    s16 i;

    if (!IsWorldPtActive(ring->worldX, ring->worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, ring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    screenX = ring->worldX - gCamera.x;
    screenY = ring->worldY - gCamera.y;

    for (i = 0; i < (s32)ARRAY_COUNT(ring->sprites); i++, s++) {
        s->x = screenX;
        s->y = screenY;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

struct Task *CreateGoalRing(u8 *param0, s32 worldX, s32 worldY)
{
    struct Task *t = TaskCreate(Task_GoalRingImplInit, sizeof(GoalRingImpl), 0x2100, 0, TaskDestructor_GoalRingImpl);
    GoalRingImpl *ring = TASK_DATA(t);
    Sprite *s = &ring->sprites[0];
    s16 i;

    ring->unk5C = param0;
    ring->unk60 = 0;
    ring->worldX = worldX;
    ring->worldY = worldY;

    for (i = 0; i < (s32)ARRAY_COUNT(ring->sprites); i++, s++) {
        // NOTE: Sprite initialized to world-, not screen-pos
        s->x = worldX;
        s->y = worldY;
    }

    sub_8046760(&ring->sprites[0]);

    if (gStageData.gameMode == GAME_MODE_5) {
        t->main = Task_8046900;
    }

    return t;
}

void TaskDestructor_GoalRingImpl(struct Task *t)
{
    GoalRingImpl *ring = TASK_DATA(t);
    VramFree(ring->sprites[0].tiles);
    VramFree(ring->sprites[1].tiles);
}

void Task_8046900(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);

    if (*ring->unk5C == 3) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((*ring->unk5C == 2) && sub_8079FFC()) {
        gCurTask->main = Task_8046948;
    }

    sub_80467F0();
}

void Task_8046948(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);

    if (sub_807A074()) {
        ring->base.unk8 = 0;
        gCurTask->main = Task_804697C;
    }

    sub_80467F0();
}

void Task_804697C(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);

    if (++ring->base.unk8 > 8) {
        gCurTask->main = Task_GoalRingImplInit;
    }

    sub_80467F0();
}

void sub_80469AC()
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);
    Sprite *s;

    ring->unk60 = 0;

    s = &ring->sprites[0];
    s->variant = 4;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    gCurTask->main = Task_80465F4;
}

void sub_80469E0(void)
{
    GoalRingImpl *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->sprites[0];
    s16 screenX, screenY;
    s16 i;

    screenY = s->y;
    screenX = s->x;

    if (!IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
        for (i = 0; i < (s32)ARRAY_COUNT(ring->sprites); i++, s++) {
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}
