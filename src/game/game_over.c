#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/save.h"
#include "module_unclear.h"

#include "constants/songs.h"
#include "constants/zones.h"

typedef struct GameOver60 {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ u8 unk54[0xC];
} GameOver60;

void sub_80525F0(s32, s32); /* extern */
extern void *gUnknown_08E2EC78[8];

void Task_60_8003FEC(void);
void TaskDestructor_8003D28(struct Task *t);
void sub_8029990(u16 song);

extern void Create_gTask_03001CFC();
extern void DemoPlayAlloc(Player *, u8);
void Task_00_8002988();
extern void sub_8002618();
extern void sub_8002838(s16);
extern void sub_8003E44(s16);
extern struct Task *sub_80215A0();
extern void sub_8022FB0();
extern void sub_8052E30();
extern void sub_8053030();

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

        if ((newLives != oldLives) && ((CURRENT_GAME_MODE == GAME_MODE_SINGLE_PLAYER) || (CURRENT_GAME_MODE == 5))) {
            AddLives(1);
        }
    }
    if (CURRENT_GAME_MODE == GAME_MODE_MP_SINGLE_PACK) {
        if (RING_COUNT > 255) {
            RING_COUNT = 255;
        }
    } else {
        if (RING_COUNT > 999) {
            RING_COUNT = 999;
        }
    }
}

#ifndef NON_MATCHING
const u8 gUnknown_080CE52C[NUM_COURSE_ZONES][4] = { { MUS_OVERWORLD__ROUTE_99, MUS_ROUTE_99__ACT_1, MUS_ROUTE_99__ACT_2, MUS_ROUTE_99__ACT_3 },
                                     { MUS_OVERWORLD__SUNSET_HILL, MUS_SUNSET_HILL__ACT_1, MUS_SUNSET_HILL__ACT_2, MUS_SUNSET_HILL__ACT_3 },
                                     { MUS_OVERWORLD__OCEAN_BASE, MUS_OCEAN_BASE__ACT_1, MUS_OCEAN_BASE__ACT_2, MUS_OCEAN_BASE__ACT_3 },
                                     { MUS_OVERWORLD__TOY_KINGDOM, MUS_TOY_KINGDOM__ACT_1, MUS_TOY_KINGDOM__ACT_2, MUS_TOY_KINGDOM__ACT_3 },
									 { MUS_OVERWORLD__TWINKLE_SNOW, MUS_TWINKLE_SNOW__ACT_1, MUS_TWINKLE_SNOW__ACT_2, MUS_TWINKLE_SNOW__ACT_3 },
									 { MUS_OVERWORLD__CYBER_TRACK, MUS_CYBER_TRACK__ACT_1, MUS_CYBER_TRACK__ACT_2, MUS_CYBER_TRACK__ACT_3 },
									 { MUS_OVERWORLD__CHAOS_ANGEL, MUS_CHAOS_ANGEL__ACT_1, MUS_CHAOS_ANGEL__ACT_2, MUS_CHAOS_ANGEL__ACT_3 } 
};
#endif
// (92.91%) https://decomp.me/scratch/FqhOj
NONMATCH("asm/non_matching/game/shared/go__sub_8002618.inc", void sub_8002618(void))
{
    s16 act;
    u16 zone;
    u16 song;
#ifndef NON_MATCHING
    u8 actSongs[NUM_COURSE_ZONES][4];
    memcpy(actSongs, gUnknown_080CE52C, sizeof(actSongs));
#else
    u8 actSongs[NUM_COURSE_ZONES][4] = { 
			{ MUS_OVERWORLD__ROUTE_99, MUS_ROUTE_99__ACT_1, MUS_ROUTE_99__ACT_2, MUS_ROUTE_99__ACT_3 },
            { MUS_OVERWORLD__SUNSET_HILL, MUS_SUNSET_HILL__ACT_1, MUS_SUNSET_HILL__ACT_2, MUS_SUNSET_HILL__ACT_3 },
            { MUS_OVERWORLD__OCEAN_BASE, MUS_OCEAN_BASE__ACT_1, MUS_OCEAN_BASE__ACT_2, MUS_OCEAN_BASE__ACT_3 },
            { MUS_OVERWORLD__TOY_KINGDOM, MUS_TOY_KINGDOM__ACT_1, MUS_TOY_KINGDOM__ACT_2, MUS_TOY_KINGDOM__ACT_3 },
            { MUS_OVERWORLD__TWINKLE_SNOW, MUS_TWINKLE_SNOW__ACT_1, MUS_TWINKLE_SNOW__ACT_2, MUS_TWINKLE_SNOW__ACT_3 },
            { MUS_OVERWORLD__CYBER_TRACK, MUS_CYBER_TRACK__ACT_1, MUS_CYBER_TRACK__ACT_2, MUS_CYBER_TRACK__ACT_3 },
            { MUS_OVERWORLD__CHAOS_ANGEL, MUS_CHAOS_ANGEL__ACT_1, MUS_CHAOS_ANGEL__ACT_2, MUS_CHAOS_ANGEL__ACT_3 } 
	};
#endif
    act = gStageData.act;
    zone = gStageData.zone;
    song = zone;

    if (gStageData.zone == 8) {
        song = MUS_VS__EX_BOSS;
    } else if (gStageData.zone == 7) {
        song = MUS_OVERWORLD__ALTAR_EMERALD;
    } else {
        switch (act) {
            case ACT_SPECIAL:
                song = (gStageData.currentLevel == LEVEL_INDEX(ZONE_2, ACT_SPECIAL)) ? MUS_CHAO_PLAYGROUND : MUS_SONIC_FACTORY;
                break;
            case ACT_OVERWORLD:
            case ACT_1:
            case ACT_2:
            case ACT_3:
                song = (actSongs[zone][act - ACT_OVERWORLD]);
                break;
            case ACT_BONUS_CAPSULE:
            case ACT_BONUS_ENEMIES:
                song = (0x4C);
                break;
            case ACT_BOSS:
                song = (actSongs[zone][1]);
                break;
        }
    }

    sub_8029990(song);
}
END_NONMATCH

void sub_80026BC(void)
{
    s16 tid;
    s32 temp_r0;
    u16 temp_r2;
    u16 var_r0;
    StageData *sd = &gStageData;

    if (sd->gameMode == 6) {
        sd->rings = 1;
    } else {
        sd->rings = 0;
    }

    sd->levelTimer = (u16)sd->unk24;
    sd->unkB5 = 0;
    sd->unk86 = PseudoRandom32() % 8u;
    sd->flagSpKey = 0;
    sd->unk85 = 0;
    sd->unk4 = 1;
    sd->task90 = TaskCreate(Task_00_8002988, 0, 0x100U, 0U, NULL);
    sd->taskEntitiesManager = NULL;
    sd->taskCheese = NULL;
    sd->taskAfterImages = NULL;
    sd->taskA0 = NULL;
    sd->taskA4 = NULL;
    sd->stageFlags = 0;
    sd->unkB2 = 0;
    sd->platformTimerEnableBits = 0;
    sd->springTimerEnableBits = 0;

    for (tid = 0; tid < TIMER_ID_COUNT; tid++) {
        sd->platformTimers[tid] = 0;
        sd->springTimers[tid] = 0;
        sd->unk4E[tid] = 0;
        sd->unk5E[tid] = 0;
        sd->unk6E[tid] = 0;
    }

    gUnknown_03001060.unk52 = 0;
    sub_8003E44(gStageData.currentLevel);
    sub_8002838(sd->currentLevel);

    if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
        Create_gTask_03001CFC();

		if (CURRENT_GAME_MODE == GAME_MODE_DEMO) {
            sub_8052E30();
            DemoPlayAlloc(gPlayers, gStageData.zone);
        } else if (CURRENT_GAME_MODE == GAME_MODE_2) {
            sub_8053030();
            DemoPlayAlloc(gPlayers, gStageData.zone);
            return;
        } else {
            gStageData.taskA4 = sub_80215A0();
        }
        sub_8002618();
    } else {
        sub_8022FB0();
        m4aSongNumStart(MUS_VS_BGM_7);
    }
}


void sub_8002838(s16 level)
{
    StageData *sd = &gStageData;
    u16 *data = NULL;

    if (sd->gameMode != GAME_MODE_MP_SINGLE_PACK) {
        switch (level) {
            case 13:
                data = gUnknown_08E2EC78[0];
                break;
            case 24:
                data = gUnknown_08E2EC78[1];
                break;
            case 25:
                data = gUnknown_08E2EC78[2];
                break;
            case 43:
                data = gUnknown_08E2EC78[4];
                break;
            case 44:
                data = gUnknown_08E2EC78[5];
                break;
            case 49:
                data = gUnknown_08E2EC78[6];
                break;
            case 45:
                data = gUnknown_08E2EC78[7];
                break;
        }

        if (data != NULL) {
            sd->unk84 = data[0];
            sd->unk80 = &data[2];
            sub_80525F0(data[1] << 16 | data[1], 0);
            return;
        } else {
            sd->unk84 = 0;
            sd->unk80 = NULL;
        }
    } else {
        sd->unk84 = 0;
        sd->unk80 = NULL;
    }
}
