#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/save.h"

#include "constants/songs.h"
#include "constants/zones.h"

typedef struct GameOver60 {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ u8 unk54[0xC];
} GameOver60;

void Task_60_8003FEC(void);
void TaskDestructor_8003D28(struct Task *t);

extern void sub_80299FC(void);
extern void sub_8053284(UNUSED u32, UNUSED u32, UNUSED s16, UNUSED s32);
extern void AddLives(u16 count);

void sub_8002414(void)
{
    GameOver60 *strc;
    Sprite *s;
    Player *p;
    s16 pid;

    strc = TASK_DATA(TaskCreate(Task_60_8003FEC, sizeof(GameOver60), 0x2000U, 0U, TaskDestructor_8003D28));
    strc->unk0 = 0;
    s = &strc->s;
    s->tiles = OBJ_VRAM0 + 0x2800;
    s->anim = 1427;
    s->variant = 0;
    s->oamFlags = 0;
    s->x = 0;
    s->y = DISPLAY_CENTER_Y;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    s = &strc->s2;
    s->tiles = OBJ_VRAM0 + 0x29C0;
    s->anim = 1427;
    s->variant = 1;
    s->oamFlags = 0;
    s->x = 0;
    s->y = DISPLAY_CENTER_Y;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    gStageData.unk4 = 7;
    for (pid = 0; pid < MULTI_SIO_PLAYERS_MAX; pid++) {
        p = &gPlayers[pid];
        p->unk13C = 0;
        p->unk13D = 0;
    }
    sub_80299FC();
    m4aSongNumStart(MUS_GAME_OVER);
}

void sub_8002508(void)
{
    StageData *sd = &gStageData; // for matching...
    Player *p;
    s16 var_r2;
    s8 character, characterPartner;

    if (sd->unk4 != 6) {
        p = GET_SP_PLAYER_V0(PLAYER_1);
        character = p->charFlags.character;
        characterPartner = GET_SP_PLAYER_V0(PLAYER_2)->charFlags.character;
        if (gStageData.act == ACT_1 || gStageData.act == ACT_2 || gStageData.act == ACT_3 || gStageData.act == ACT_4) {
            var_r2 = -2 + gStageData.act;
        } else {
            var_r2 = 4;
        }
        sd->unk4 = 6;

        if (gStageData.flagSpKey != 0) {
            if (LOADED_SAVE->specialKeys[gStageData.zone] < 9) {
                LOADED_SAVE->specialKeys[gStageData.zone]++;
            }
        }
        sub_8053284(character, characterPartner, var_r2, 0);
    }
}

// TODO: Add a macro for this
void AddRings(u16 count)
{
    s32 oldLives, newLives;
    u16 oldRings;

    oldRings = RING_COUNT;
    RING_COUNT = oldRings + count;
    if (!(IS_EXTRA_STAGE(CURRENT_LEVEL))) {
        newLives = Div(RING_COUNT, 100);
        oldLives = Div(oldRings, 100);
        if ((newLives != oldLives) && ((gStageData.gameMode == GAME_MODE_SINGLE_PLAYER) || (gStageData.gameMode == 5))) {
            AddLives(1U);
        }
    }
    if (gStageData.gameMode == 7) {
        if (RING_COUNT > 255) {
            RING_COUNT = 255;
        }
    } else if (RING_COUNT > 999) {
        RING_COUNT = 999;
    }
}
