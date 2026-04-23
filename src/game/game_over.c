#include "global.h"
#include "core.h"
#include "color.h"
#include "flags.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/main_menu.h"
#include "game/stage.h"
#include "game/save.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/screen_fade.h"
#include "game/camera.h" // TODO: for CamCoord used in entities_manager.h
#include "game/shared/entities_manager.h"
#include "game/shared/rings_manager.h"
#include "module_unclear.h"

#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct GameOver {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ ScreenFade fade;
} GameOver;

typedef struct GameOver38 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 input;
    /* 0x04 */ ColorRaw unk4[3];
    /* 0x04 */ ColorRaw unkA[3];
    /* 0x10 */ Sprite s;
} GameOver38;

typedef struct TimeOver {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ ScreenFade fade;
} TimeOver;

typedef struct RectU8 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
} RectU8;

extern RectU8 gUnknown_03000970[4];

void sub_80525F0(s32, s32); /* extern */
extern ScreenFade gUnknown_030010C0;
extern u8 gUnknown_080CE548[4];
extern void *gUnknown_08E2EC78[8];
extern u16 gUnknown_080CE54C[][NUM_LANGUAGES][3];

void sub_8001D58(VoidFn proc, ColorRaw color);
void Task_60_8003FEC(void);
void TaskDestructor_8003D28(struct Task *t);
void sub_8029990(u16 song);
void Task_00_8002988();
void Task_38_8003620();
void Task_800368C();
void TaskDestructor_8003D68(struct Task *t);
void sub_8002618();
void sub_8002838(s16);
void Task_8002BBC();
void Task_8003084();
void sub_80031C8();
void Task_8003288();
void Task_80033B8();
void sub_800341C();
void sub_8003A14();
void Task_8003C38();
extern void sub_8003E44(s16);
void sub_8003F40();
void Task_8004058(void);
void sub_80040D8(s16 arg0, s16 arg1);
void Task_TimeOver_InitSprites(void);
void Task_TimeOver_Update(void);
void sub_80043B8();
void ClearCameraStruct();
void TaskDestructor_80040BC(Task *);
void sub_80105F0();
void sub_8026478();
s16 sub_80264F0();
void sub_8026720();
void sub_802789C();
void sub_8028850();
extern void Create_gTask_03001CFC();
extern void sub_8001E84();
extern void sub_8013D70(s16, s16);
extern void sub_8051140(void);
extern void sub_809BFE8(s32);
extern struct Task *sub_80215A0();
extern void sub_8022FB0();
extern bool16 sub_802610C();
extern void sub_80260F0();
extern void sub_802613C();
extern void sub_80261B0();
extern void sub_80275F0(u8, u8, u8);
extern void sub_8027878(u8 lives);
extern void sub_804F740(u16, u8);
extern void sub_805235C();
extern void sub_8056090(s32, u8, s32);
extern void sub_8056AB0();
extern void sub_8056AFC(u8);
extern void sub_8056B78();
extern void sub_8057ECC();
extern void sub_806611C(u8);
extern void sub_8081C80();
extern void sub_808ADF0(s32);
extern void sub_8052E30();
extern void sub_8053030();
extern void LaunchGameIntro();

extern void sub_80299FC(void);
extern void sub_8053284(UNUSED u32, UNUSED u32, UNUSED s16, UNUSED s32);
extern void AddLives(u16 count);

// TODO: Put these into a parameters.h file
#define GAME_OVER_SCREEN_DURATION TIME(0, 7)
#define TIME_OVER_SCREEN_DURATION TIME(0, 5)

typedef struct MusicManagerState {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState; /* size: 8 */

extern MusicManagerState gMusicManagerState;

void sub_8002414(void)
{
    GameOver *strc;
    Sprite *s;
    Player *p;
    s16 pid;

    strc = TASK_DATA(TaskCreate(Task_60_8003FEC, sizeof(GameOver), 0x2000U, 0U, TaskDestructor_8003D28));
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

void AddRings(u16 count)
{
    s32 oldLives, newLives;
    u16 oldRings;

    oldRings = RING_COUNT;
    RING_COUNT = oldRings + count;
    if (!(IS_EXTRA_STAGE(CURRENT_LEVEL))) {
        newLives = Div(RING_COUNT, 100);
        oldLives = Div(oldRings, 100);

        if ((newLives != oldLives) && ((CURRENT_GAME_MODE == GAME_MODE_SINGLE_PLAYER) || (CURRENT_GAME_MODE == GAME_MODE_5))) {
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
const u8 gUnknown_080CE52C[NUM_COURSE_ZONES][4]
    = { { MUS_OVERWORLD__ROUTE_99, MUS_ROUTE_99__ACT_1, MUS_ROUTE_99__ACT_2, MUS_ROUTE_99__ACT_3 },
        { MUS_OVERWORLD__SUNSET_HILL, MUS_SUNSET_HILL__ACT_1, MUS_SUNSET_HILL__ACT_2, MUS_SUNSET_HILL__ACT_3 },
        { MUS_OVERWORLD__OCEAN_BASE, MUS_OCEAN_BASE__ACT_1, MUS_OCEAN_BASE__ACT_2, MUS_OCEAN_BASE__ACT_3 },
        { MUS_OVERWORLD__TOY_KINGDOM, MUS_TOY_KINGDOM__ACT_1, MUS_TOY_KINGDOM__ACT_2, MUS_TOY_KINGDOM__ACT_3 },
        { MUS_OVERWORLD__TWINKLE_SNOW, MUS_TWINKLE_SNOW__ACT_1, MUS_TWINKLE_SNOW__ACT_2, MUS_TWINKLE_SNOW__ACT_3 },
        { MUS_OVERWORLD__CYBER_TRACK, MUS_CYBER_TRACK__ACT_1, MUS_CYBER_TRACK__ACT_2, MUS_CYBER_TRACK__ACT_3 },
        { MUS_OVERWORLD__CHAOS_ANGEL, MUS_CHAOS_ANGEL__ACT_1, MUS_CHAOS_ANGEL__ACT_2, MUS_CHAOS_ANGEL__ACT_3 } };
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
    u8 actSongs[NUM_COURSE_ZONES][4]
        = { { MUS_OVERWORLD__ROUTE_99, MUS_ROUTE_99__ACT_1, MUS_ROUTE_99__ACT_2, MUS_ROUTE_99__ACT_3 },
            { MUS_OVERWORLD__SUNSET_HILL, MUS_SUNSET_HILL__ACT_1, MUS_SUNSET_HILL__ACT_2, MUS_SUNSET_HILL__ACT_3 },
            { MUS_OVERWORLD__OCEAN_BASE, MUS_OCEAN_BASE__ACT_1, MUS_OCEAN_BASE__ACT_2, MUS_OCEAN_BASE__ACT_3 },
            { MUS_OVERWORLD__TOY_KINGDOM, MUS_TOY_KINGDOM__ACT_1, MUS_TOY_KINGDOM__ACT_2, MUS_TOY_KINGDOM__ACT_3 },
            { MUS_OVERWORLD__TWINKLE_SNOW, MUS_TWINKLE_SNOW__ACT_1, MUS_TWINKLE_SNOW__ACT_2, MUS_TWINKLE_SNOW__ACT_3 },
            { MUS_OVERWORLD__CYBER_TRACK, MUS_CYBER_TRACK__ACT_1, MUS_CYBER_TRACK__ACT_2, MUS_CYBER_TRACK__ACT_3 },
            { MUS_OVERWORLD__CHAOS_ANGEL, MUS_CHAOS_ANGEL__ACT_1, MUS_CHAOS_ANGEL__ACT_2, MUS_CHAOS_ANGEL__ACT_3 } };
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
            case LEVEL_INDEX(ZONE_2, ACT_1):
                data = gUnknown_08E2EC78[0];
                break;
            case LEVEL_INDEX(ZONE_3, ACT_2):
                data = gUnknown_08E2EC78[1];
                break;
            case LEVEL_INDEX(ZONE_3, ACT_3):
                data = gUnknown_08E2EC78[2];
                break;
            case LEVEL_INDEX(ZONE_5, ACT_1):
                data = gUnknown_08E2EC78[4];
                break;
            case LEVEL_INDEX(ZONE_5, ACT_2):
                data = gUnknown_08E2EC78[5];
                break;
            case LEVEL_INDEX(ZONE_5, ACT_BONUS_ENEMIES):
                data = gUnknown_08E2EC78[6];
                break;
            case LEVEL_INDEX(ZONE_5, ACT_3):
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

void Task_00_8002988(void)
{
    u8 characters[MULTI_SIO_PLAYERS_MAX];
    Player *p;
    s16 pid;
    StageData *sd = &gStageData;

    memcpy(&characters, &gUnknown_080CE548, MULTI_SIO_PLAYERS_MAX);
    sub_805235C();
    CreateStageEntitiesManager();
    if (sd->gameMode != 7) {
        CreateStageRingsManager();
    }
    gCamera.x = 0;
    gCamera.y = 0;
    sub_804F740(sd->currentLevel, sd->entryIndex);
    if (sd->gameMode != 7) {
        if (sd->gameMode < GAME_MODE_MP_MULTI_PACK) {
            u8 playerIndex = sd->playerIndex;
            InitializePlayer(playerIndex);
            InitializePlayer(gPlayers[playerIndex].charFlags.partnerIndex);
        } else if (sd->gameMode == GAME_MODE_MP_MULTI_PACK) {
            for (pid = 0; pid < MULTI_SIO_PLAYERS_MAX; pid++) {
                InitializePlayer(pid);
            }
        }
        if (sd->gameMode == 2) {
            sub_806611C(sd->zone);
            sub_8056AB0();
        } else {
            if (sd->zone < ZONE_FINAL) {
                if (sd->act == ACT_SPECIAL) {
                    if ((sd->currentLevel != LEVEL_INDEX(ZONE_2, ACT_SPECIAL)) && (sd->entryIndex != 2)) {
                        sub_8056AFC(sd->zone);
                    } else {
                        sub_8057ECC();
                    }
                } else if (sd->act == ACT_HUB) {
                    sub_806611C(sd->zone + 9);
                    sub_8057ECC();
                } else if (sd->act >= ACT_BONUS_CAPSULE) {
                    if (sd->act == ACT_BONUS_CAPSULE) {
                        gStageData.unkBE[sd->zone] |= 1;
                    } else {
                        gStageData.unkBE[sd->zone] |= 2;
                    }

                    sub_806611C(sd->zone + 18);
                    sub_8057ECC();
                } else {
                    sub_806611C(sd->zone);
                    sub_8056B78();
                }
            } else if (sd->zone == ZONE_FINAL) {
                sub_806611C(sd->zone);
                sub_8056B78();
            } else if (sd->zone == ZONE_UNUSED) {
                sub_806611C(sd->zone);
                sub_8056B78();
                sub_8081C80();
            }
        }
    } else {
        for (pid = 0; pid < MULTI_SIO_PLAYERS_MAX; pid++) {
            if ((gUnknown_03001060.unk7 >> pid) & 1) {
                s32 someIndex;
                InitializePlayer(pid);
                gPlayers[pid].charFlags.character = characters[pid];
                gPlayers[pid].charFlags.someIndex = (pid == gStageData.playerIndex) ? 1 : 3;
            }
        }
        sub_8057ECC();
        gStageData.levelTimer = TIME(3, 0);
    }
    REG_MOSAIC = 0;
    if (gStageData.gameMode > 4U) {
        sub_80261B0();

        if ((gStageData.gameMode == GAME_MODE_5) && (gStageData.playerIndex == 0)) {
            sub_80275F0(gStageData.currentLevel, gStageData.zone, gStageData.entryIndex);

            if (gStageData.gameMode == GAME_MODE_5) {
                sub_8027878(gStageData.lives);
            }
        }

        gStageData.unkB9 = 0;
        gStageData.unk85 = 0;
    }
    gCurTask->main = Task_8002BBC;
}

// (98.05%) https://decomp.me/scratch/wvbUa
NONMATCH("asm/non_matching/game/shared/go__Task_8002BBC.inc", void Task_8002BBC(void))
{
    Player *temp_r4;
    Player *temp_r5;
    s16 temp_r3_4;
    s16 tid;
    s16 temp_r0_10;
    s16 temp_r0_9;
    s16 var_sl;
    s16 *temp_r1_4;
    s16 *temp_r4_4;
    s16 *temp_r6;
    u8 unk4;
    StageData *sd = &gStageData;

    var_sl = 0;
    gNextFreeAffineIndex = 6;
    if ((sd->gameMode > 4U) && (sd->playerIndex != 0)) {
        var_sl = (u16)gMultiSioRecv->pat4.x - sd->timer;
        sd->timer = (u16)gMultiSioRecv->pat4.x;
        unk4 = sd->unk4;
    } else if ((unk4 = sd->unk4) != 4) {
        sd->timer += 1;
        var_sl = 1;
    }
    if (gStageData.gameMode != 7) {
        if (unk4 == 3) {
            sd->levelTimer += var_sl;
            if (sd->levelTimer > MAX_COURSE_TIME - 1) {
                sd->levelTimer = MAX_COURSE_TIME - 1;
                if ((gStageData.unk2 == 0) || (gStageData.gameMode == 6)) {
                    temp_r4 = &gPlayers[gStageData.playerIndex];
                    temp_r5 = &gPlayers[temp_r4->charFlags.partnerIndex];
                    if (!(temp_r4->moveState & 0x100)) {
                        sub_8003A14();

                        if (gStageData.gameMode == 5) {
                            sub_802789C();
                            sub_8027878(gStageData.lives);
                        }
                        if (gStageData.zone != 8) {
                            Player_HitWithoutRingsUpdate(temp_r4);
                            if (temp_r5->charFlags.someIndex == 2) {
                                Player_HitWithoutRingsUpdate(temp_r5);
                            }
                        } else if (gStageData.playerIndex == 0) {
                            Player_HitWithoutRingsUpdate(temp_r4);
                            if (temp_r5->charFlags.someIndex == 2) {
                                sub_80105F0(temp_r5);
                            }
                        } else {
                            Player_HitWithoutRingsUpdate(temp_r5);
                            temp_r5->moveState |= 0x100;
                            temp_r4->moveState |= 0x100;
                            sub_80105F0(temp_r4);
                        }
                    }
                }
            }
        }
    } else {
        if (unk4 == 3) {
            u16 *recv = &gMultiSioRecv->pat0.unk0;
            u16 *levelTimer = &sd->levelTimer;
            *levelTimer -= var_sl;

            if ((*levelTimer == TIME(0, 1)) || (*levelTimer == TIME(0, 2)) || (*levelTimer == TIME(0, 3)) || (*levelTimer == TIME(0, 4))
                || (*levelTimer == TIME(0, 5)) || (*levelTimer == TIME(0, 6)) || (*levelTimer == TIME(0, 7)) || (*levelTimer == TIME(0, 8))
                || (*levelTimer == TIME(0, 9)) || (*levelTimer == TIME(0, 10))) {
                m4aSongNumStart(SE_VS__DING_DONG);
            }
            if ((*levelTimer > TIME(3, 0)) || (*recv == 0x600E)) {
                *levelTimer = 0;
                gCurTask->main = Task_8003288;
            }
        }
        gUnknown_03001060.unk52 += var_sl;
        if (gUnknown_03001060.unk52 > 0x1FFU) {
            gStageData.unk8F = 0;
            gUnknown_03001060.unk52 = gUnknown_03001060.unk52 & 0x1FF;
            gUnknown_03001060.unk54 = (gUnknown_03001060.unk54 + 1) & 7;
            gUnknown_03001060.unk55 = (gUnknown_03001060.unk55 + 1) & 1;
        }
    }
    if (gStageData.gameMode == 7) {

    } else {
        if (gStageData.platformTimerEnableBits != 0) {
            for (tid = 0; tid < TIMER_ID_COUNT; tid++) {
                if ((gStageData.platformTimerEnableBits >> tid) & 1) {
                    if (gStageData.platformTimers[tid] - var_sl < 0) {
                        gStageData.platformTimers[tid] = 0;
                    } else {
                        gStageData.platformTimers[tid] -= var_sl;
                    }

                    if (!(0x1F & gStageData.platformTimers[tid])) {
                        m4aSongNumStart(SE_BUTTON_TIMER);
                    }
                    if (gStageData.platformTimers[tid] == 0) {
                        ClearBit(gStageData.platformTimerEnableBits, tid);
                    }
                }
            }
        }
        if (gStageData.springTimerEnableBits != 0) {
            for (tid = 0; tid < TIMER_ID_COUNT; tid++) {
                if (GetBit(gStageData.springTimerEnableBits, tid)) {
                    if (gStageData.springTimers[tid] - var_sl < 0) {
                        gStageData.springTimers[tid] = 0;
                    } else {
                        gStageData.springTimers[tid] -= var_sl;
                    }

                    if (!(0x1F & gStageData.springTimers[tid])) {
                        m4aSongNumStart(SE_BUTTON_TIMER);
                    }
                    if (gStageData.springTimers[tid] == 0) {
                        ClearBit(gStageData.springTimerEnableBits, tid);
                    }
                }
            }
        }

        for (tid = 0; tid < TIMER_ID_COUNT; tid++) {
            temp_r6 = &gStageData.unk5E[tid];
            temp_r4_4 = &gStageData.unk4E[tid];
            temp_r1_4 = &gStageData.unk6E[tid];
            if (gStageData.unk4E[tid] != 0) {
                temp_r3_4 = *temp_r1_4;
                if (gStageData.unk6E[tid] == 0) {
                    s32 v = -120;
                    gStageData.unk6E[tid] = v;
                } else if (gStageData.unk6E[tid] < 0) {
                    gStageData.unk6E[tid]++;
                    if (gStageData.unk6E[tid] == 0) {
                        gStageData.unk6E[tid] = 1;
                    }
                } else {
                    gStageData.unk4E[tid] -= gStageData.unk6E[tid];
                    if (gStageData.unk6E[tid] < TIMER_ID_COUNT) {
                        gStageData.unk6E[tid] += 1;
                    }
                    if (gStageData.unk4E[tid] <= 0) {
                        gStageData.unk4E[tid] = 0;
                        gStageData.unk6E[tid] = 0;
                    }
                }
            }

            if (*temp_r4_4 > 0x3FF) {
                *temp_r4_4 = 0x3FF;
            }

            if (*temp_r4_4 > *temp_r6) {
                temp_r0_9 = (*temp_r6 += 16);
                if (*temp_r4_4 < temp_r0_9) {
                    *temp_r6 = *temp_r4_4;
                }
            } else if (*temp_r4_4 < *temp_r6) {
                if (*temp_r4_4 > (*temp_r6 -= 16)) {
                    *temp_r6 = *temp_r4_4;
                }
            }
        }

        sub_80043B8();

        if ((gStageData.gameMode != 7) && (START_BUTTON & gPressedKeys) && (gStageData.gameMode != 1) && (gStageData.gameMode != 2)
            && ((gStageData.currentLevel != 1) || (gStageData.gameMode != 5))) {
            sub_800341C();
        }
    }
    if (gStageData.gameMode > 4U) {
        sub_8026478();
        sub_80264F0();
    }
    if (gStageData.unkBB != 0) {
        gStageData.unkBB -= 1;
    }
}
END_NONMATCH

void Task_800303C(void)
{
    u8 temp_r3 = (gStageData.unk5 >> (gStageData.playerIndex * 2)) & 3;
    if (temp_r3 == 2) {
        gStageData.unkB8 = temp_r3;
    } else if (temp_r3 == 0) {
        gStageData.unkB8 = gStageData.playerIndex & 1;
    } else {
        gStageData.unkB8 = (gStageData.playerIndex ^ 1) & 1;
    }

    gCurTask->main = Task_8003084;
}

NONMATCH("asm/non_matching/game/shared/go__Task_8003084.inc", void Task_8003084(void))
{
    s16 var_r1;
    s16 temp_r3;
    u8 var_r2;

    if (sub_802610C() != 0) {
        sub_802613C();
        return;
    }
    gPlayers[gStageData.playerIndex].moveState |= 0x08000000;
    if (gStageData.playerIndex == PLAYER_1) {
        gMultiSioSend.patU.unk0 = 0x68E8;
        gMultiSioSend.patU.unk12 = gStageData.unk5;
        gMultiSioSend.patU.levelTimer = gStageData.levelTimer;
    } else {
        struct MultiSioData_Unknown *recv = &gMultiSioRecv->patU;
        struct MultiSioData_Unknown *send;

        if (recv->unk0 == 0x68E8) {
            gStageData.unk5 = recv->unk12;
            gStageData.levelTimer = recv->levelTimer;
            send = &gMultiSioSend.patU;
            send->unk0 = 0x68E8;
            send->unk12 = gStageData.unk5;
            send->levelTimer = gStageData.levelTimer;
        }
    }

    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        if (GetBit(gUnknown_03001060.unk7, var_r1) && (gMultiSioRecv[var_r1].patU.unk0 != 0x68E8))
            return;
    }

    // Similar to Task_800303C (but without setting the task ptr), could be a macro?
    temp_r3 = (gStageData.unk5 >> (gStageData.playerIndex * 2)) & 3;
    var_r1 = temp_r3;
    if (var_r1 == 2) {
        gStageData.unkB8 = var_r1;
    } else if (var_r1 == 0) {
        gStageData.unkB8 = gStageData.playerIndex & 1;
    } else {
        gStageData.unkB8 = (gStageData.playerIndex ^ 1) & 1;
    }

    sub_8056090(0, temp_r3, 0);
    gUnknown_030010C0.window = 0;
    gUnknown_030010C0.flags = 1;
    gUnknown_030010C0.brightness = 0;
    gUnknown_030010C0.speed = Q(0.5);
    gUnknown_030010C0.bldCnt = 0xFF;
    gUnknown_030010C0.bldAlpha = 0;
    ScreenFadeUpdateValues(&gUnknown_030010C0);
    gStageData.platformTimers[7] = TIME(0, 6);
    gCurTask->main = sub_80031C8;
}
END_NONMATCH

void sub_80031C8(void)
{
    if (sub_802610C() != 0) {
        sub_802613C();
        return;
    }
    gPlayers[gStageData.playerIndex].moveState |= MOVESTATE_IGNORE_INPUT;
    if (gStageData.platformTimers[7]) {
        gStageData.platformTimers[7] -= 1;
    } else if (UpdateScreenFade(&gUnknown_030010C0) != SCREEN_FADE_RUNNING) {
        Player *p = GET_SP_PLAYER_V0(PLAYER_1);

        sub_8004CC8(gStageData.playerIndex);
        sub_8004CC8(p->charFlags.partnerIndex);
        DestroyStageEntitiesManager();
        sub_8051140();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_809BFE8(1);
    }
}

NONMATCH("asm/non_matching/game/shared/go__Task_8003288.inc", void Task_8003288(void))
{
    s16 var_r2;

    gPlayers[gStageData.playerIndex].moveState |= 0x08000000;
    gStageData.unk4 = 5;
    if (gStageData.playerIndex == 0) {
        gMultiSioSend.pat0.unk0 = 0x600E;
        gMultiSioSend.pat0.unk2 = gUnknown_03001060.unk7;
        gMultiSioSend.pat0.unk3 = gStageData.unk8E;
    } else if (gMultiSioRecv->pat0.unk0 == 0x600E) {
        gUnknown_03001060.unk7 = gMultiSioRecv->pat0.unk2;
        gStageData.unk8E = gMultiSioRecv->pat0.unk3;
        gMultiSioSend.pat0.unk0 = gMultiSioRecv->pat0.unk0;
        gMultiSioSend.pat0.unk2 = gUnknown_03001060.unk7;
        gMultiSioSend.pat0.unk3 = gStageData.unk8E;
    }

    for (var_r2 = 0; var_r2 < 4; var_r2++) {
        if (GetBit(gUnknown_03001060.unk7, var_r2) && (gMultiSioRecv[var_r2].pat0.unk0 != 0x600E)
            && (gMultiSioRecv[var_r2].pat0.unk0 != 0x6001)) {
            return;
        }
    }

    if (gStageData.unk8E != 0xFF) {
        if (gUnknown_03000970[gStageData.unk8E].unk1 < 99) {
            gUnknown_03000970[gStageData.unk8E].unk1++;
        }
    }
    m4aSongNumStart(MUS_VS_BGM_8);
    gUnknown_030010C0.window = 0;
    gUnknown_030010C0.flags = 1;
    gUnknown_030010C0.brightness = 0;
    gUnknown_030010C0.speed = Q(0.5);
    gUnknown_030010C0.bldCnt = 0xFF;
    gUnknown_030010C0.bldAlpha = 0;
    ScreenFadeUpdateValues(&gUnknown_030010C0);
    gStageData.platformTimers[0] = TIME(0, 4);
    gCurTask->main = Task_80033B8;
}
END_NONMATCH

void Task_80033B8(void)
{
    if (sub_802610C()) {
        sub_802613C();
    } else {
        gPlayers[gStageData.playerIndex].moveState |= MOVESTATE_IGNORE_INPUT;

        if (gStageData.platformTimers[0] != 0) {
            gStageData.platformTimers[0] -= 1;
        } else if (UpdateScreenFade(&gUnknown_030010C0) != SCREEN_FADE_RUNNING) {
            sub_8001D58(sub_8028850, RGB16(0, 0, 0));
        }
    }
}

void sub_800341C(void)
{
    u8 zone, actType;
    s32 var_r7;
    u16 temp_r6;
    u8 temp_r5;
    void *vram;

    if (gStageData.taskA0 != NULL) {
        return;
    }
    if (8 & gPressedKeys) {
        if (gStageData.unk4 != 3) {
            return;
        }
        if (gStageData.unk85 != 0) {
            return;
        }
        if (gPlayers[gStageData.playerIndex].moveState & MOVESTATE_100) {
            return;
        }
    }

    if (gStageData.gameMode < 5) {
        if (gStageData.act == 0xA) {
            if (((((u32)(((gLoadedSaveGame.collectedEmeralds) >> (gStageData.zone)) << 24) >> 24) & 1) || (gStageData.unkD == 1))) {
                var_r7 = 0;
            } else {
                var_r7 = 2;
            }
        } else if ((gStageData.zone > 6U) || (gStageData.act == 8) || (gStageData.act == 9) || (gStageData.act == 1)
                   || (gStageData.act == 2)) {
        lbl:
            var_r7 = 2;
        } else {
            GetZoneAndActTypeFromStageID(gStageData.currentLevel, &zone, &actType);
            if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
                var_r7 = 1;
            } else {
                if (gLoadedSaveGame.unlockedStages[zone] & actType) {
                    var_r7 = 0;
                } else {
                    var_r7 = 2;
                }
            }
        }
    } else {
#ifndef NON_MATCHING
        goto lbl;
#else
        var_r7 = 2;
#endif
    }

    vram = VramMalloc(gUnknown_080CE54C[var_r7][gLoadedSaveGame.language][0]);
    temp_r6 = gUnknown_080CE54C[var_r7][gLoadedSaveGame.language][1];
    temp_r5 = gUnknown_080CE54C[var_r7][gLoadedSaveGame.language][2];
    if (vram != ewram_end) {
        struct Task *t = TaskCreate(Task_38_8003620, sizeof(GameOver38), 0xFFFEU, 4U, TaskDestructor_8003D68);
        GameOver38 *strc;
        Sprite *s;
        gStageData.taskA0 = t;
        strc = TASK_DATA(t);
        strc->unk0 = 0;
        strc->unk1 = var_r7;
        strc->input = (3 & gInput);
        s = &strc->s;
        s->tiles = vram;
        s->frameFlags = 0;
        s->anim = temp_r6;
        s->x = DISPLAY_CENTER_X;
        s->y = DISPLAY_CENTER_Y;
        s->oamFlags = 0;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = temp_r5;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);

        DmaCopy16(3, &gObjPalette[249], &strc->unk4[0], sizeof(strc->unk4));
        DmaCopy16(3, &gObjPalette[252], &strc->unkA[0], sizeof(strc->unkA));
    }
}

void Task_38_8003620(void)
{
    s16 i;

    gFlags |= FLAGS_PAUSE_GAME;
    for (i = 0; i < 4; i++) {
        MPlayStop(gMPlayTable[i].info);
    }
    m4aSongNumStart(SE_PAUSE);

    if (gStageData.unkB9 == 0) {
        SetSoleBit(gStageData.unkB9, gStageData.playerIndex);
    }
    gCurTask->main = Task_800368C;
}

void Task_800368C(void)
{
    Player *temp_r4_2;
    Sprite *s;
    s16 temp_r1_2;
    s32 temp_r3;
    s32 var_r6;
    u16 temp_r5;
    ColorRaw *var_r2;
    ColorRaw *var_r5;
    u16 temp_r2;
    s32 var_r5_2;
    u8 var_r2_2;
    GameOver38 *temp_r4;

    temp_r4 = TASK_DATA(gCurTask);
    s = &temp_r4->s;
    var_r6 = 0;
    if (gStageData.gameMode > 4U) {
        sub_8026720();
        temp_r1_2 = sub_80264F0();
        if (temp_r1_2 == -1) {
            return;
        }
        if ((temp_r1_2 == 1) || (gStageData.unk4 != 3)) {
            gFlags &= ~0x400;
            gStageData.taskA0 = NULL;
            gStageData.unkB9 = 0;
            m4aMPlayContinue(gMPlayTable->info);
#ifndef BUG_FIX
            // NOTE: That's not how you use this function...
            MPlayStop((struct MP2KPlayerState *)SE_PAUSE);
#else
            m4aSongNumStop(SE_PAUSE);
#endif
            TaskDestroy(gCurTask);
            return;
        }
    }

    if (temp_r4->unk1 != 2) {
        u16 xorVal = (temp_r4->input ^ gReleasedKeys);
        u16 released = (3 & gReleasedKeys);
        temp_r3 = xorVal & released;
        temp_r4->input &= gInput;
        if (0xC0 & gPressedKeys) {
            temp_r4->unk0 = (u8)(temp_r4->unk0 ^ 1);
        }
        if (temp_r4->unk0 == 0) {
            var_r5 = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 9];
            var_r2 = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 12];
        } else {
            var_r2 = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 9];
            var_r5 = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 12];
        }

        DmaCopy16(3, &temp_r4->unkA, var_r2, sizeof(temp_r4->unkA));
        DmaCopy16(3, &temp_r4->unk4, var_r5, sizeof(temp_r4->unk4));
        if (2 & temp_r3) {
            var_r6 = 1;
        } else if (temp_r3 & 1) {
            if (temp_r4->unk0 != 0) {
                var_r6 = 2;
            } else {
                var_r6 = 1;
            }
        }
    }
    if (gStageData.gameMode > 4U) {
        var_r5_2 = 0;
        if (gStageData.unkB9 == (1 << gStageData.playerIndex)) {
            var_r5_2 = (u32)(0 - (u16)(START_BUTTON & gPressedKeys)) >> 0x1F;
        } else {
            union MultiSioData *recv;
            for (var_r2_2 = 0, recv = gMultiSioRecv; var_r2_2 < 4; var_r2_2++) {
                if (gStageData.unkB9 == (1 << var_r2_2)) {
                    break;
                }
            }

            if (recv[var_r2_2].pat0.unk0 != 0x68D0) {
                var_r5_2 = 1;
            }
        }
        if (gPlayers[gStageData.playerIndex].moveState & MOVESTATE_100) {
            var_r5_2 = 1;
        }
        if (var_r5_2 == 0) {
            goto block_51;
        } else {
            gFlags &= ~0x400;
            gStageData.taskA0 = NULL;
            gStageData.unkB9 = 0;
            m4aMPlayContinue(gMPlayTable->info);
#ifndef BUG_FIX
            // NOTE: That's not how you use this function...
            MPlayStop((struct MP2KPlayerState *)SE_PAUSE);
#else
            m4aSongNumStop(SE_PAUSE);
#endif
            TaskDestroy(gCurTask);
            return;
        }
    } else if ((START_BUTTON & gPressedKeys) || (var_r6 == 1)) {
        gFlags &= ~0x400;
        gStageData.taskA0 = NULL;
        m4aMPlayContinue(gMPlayTable->info);
#ifndef BUG_FIX
        // NOTE: That's not how you use this function...
        MPlayStop((struct MP2KPlayerState *)SE_PAUSE);
#else
        m4aSongNumStop(SE_PAUSE);
#endif
        TaskDestroy(gCurTask);
        return;
    } else if (var_r6 == 2) {
        gFlags &= ~0x400;
        m4aSongNumStart(SE_SELECT);
        if (gStageData.act == 10) {
            if (gStageData.unkD == 1) {
                TasksDestroyAll();
                PAUSE_BACKGROUNDS_QUEUE();
                gBgSpritesCount = 0;
                PAUSE_GRAPHICS_QUEUE();
                sub_808ADF0(1);
                return;
            }
        } else {
            temp_r4_2 = &gPlayers[gStageData.playerIndex];
            sub_8004CC8(gStageData.playerIndex);
            sub_8004CC8(temp_r4_2->charFlags.partnerIndex);
            DestroyStageEntitiesManager();
            sub_8051140();
        }
    block_41:
        sub_8001E58();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        if (gStageData.gameMode == 3) {
            CreateMainMenu(0, 2U);
        } else if (gStageData.gameMode == 4) {
            CreateMainMenu(0, 3U);
        } else if (((u32)gStageData.zone <= 6U) && ((u32)gStageData.act > 2U)) {
            if (gStageData.act == 10) {
                WarpToMap(LEVEL_INDEX(gStageData.zone, 2), 4);
            } else {
                WarpToMap(LEVEL_INDEX(gStageData.zone, 2), gStageData.act - 2);
            }
        } else {
            sub_808ADF0(1);
        }
    } else {
    block_51:
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8003A14(void)
{
    Player *p;
    s16 temp_r4_2;
    s16 pid;
    u16 temp_r4;
    TimeOver *timeOver;

    timeOver = TASK_DATA(TaskCreate(Task_TimeOver_InitSprites, sizeof(TimeOver), 0x2000U, 0U, TaskDestructor_80040BC));
    timeOver->unk0 = 0;

    for (pid = 0; pid < 4; pid++) {
        p = &gPlayers[pid];
        p->unk13C = 0;
        p->unk13D = 0;
        Player_BoostModeDisengage(p);
    }

    gStageData.unk24 = 0;
    gStageData.unk20 = 1;
}

void Task_TimeOver_InitSprites()
{
    TimeOver *timeOver = TASK_DATA(gCurTask);
    Sprite *s, *s2;

    if (gStageData.unk4 == 5) {
        TaskDestroy(gCurTask);
        return;
    }

    s = &timeOver->s;
    s->tiles = OBJ_VRAM0 + 0x2000;
    s->anim = 1427;
    s->variant = 2;
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

    s = &timeOver->s2;
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

    gCurTask->main = Task_TimeOver_Update;
}

void Task_TimeOver_Update()
{
    Sprite *s;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 timeTxtX;

    TimeOver *timeOver = TASK_DATA(gCurTask);

    if (gStageData.unk4 == 5) {
        TaskDestroy(gCurTask);
        return;
    }
    if (timeOver->unk0 == 4) {
        m4aSongNumStart(SE_149);
    }
    if (++timeOver->unk0 >= TIME_OVER_SCREEN_DURATION) {
        gCurTask->main = Task_8003C38;
        return;
    }
    timeTxtX = timeOver->unk0;
    if (timeTxtX > DISPLAY_CENTER_X) {
        timeTxtX = DISPLAY_CENTER_X;
    }
    if (timeOver->unk0 > 3U) {
        s = &timeOver->s;
        s->x = timeTxtX;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        s = &timeOver->s2;
        s->x = DISPLAY_WIDTH - timeTxtX;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

NONMATCH("asm/non_matching/game/shared/go__sub_8003BD8.inc", void sub_8003BD8(void))
{
    GameOver *temp_r2;
    ScreenFade *fade;

    temp_r2 = TASK_DATA(gCurTask);
    fade = &temp_r2->fade;
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.5);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
    gCurTask->main = Task_8003C38;
}
END_NONMATCH

void Task_8003C38(void)
{
    Player *p, *partner;

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->framesInvulnerable = 0;
    partner->framesInvulnerable = 0;
    if (gStageData.gameMode == 6) {
        gStageData.unk4 = 5;
        gStageData.unk5 = 0xAA;
        gStageData.task90->main = Task_800303C;
    }
    TaskDestroy(gCurTask);
}

NONMATCH("asm/non_matching/game/shared/go__sub_8003CA4.inc", void sub_8003CA4(void))
{
    GameOver *temp_r2;
    ScreenFade *fade;

    temp_r2 = TASK_DATA(gCurTask);
    fade = &temp_r2->fade;
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.5);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
    gCurTask->main = Task_8004058;
}
END_NONMATCH

void sub_8003D04(u8 zone)
{
    gStageData.zone = zone;
    gStageData.act = 1;
    CURRENT_LEVEL = 1;
    sub_8001D58(sub_8003F40, 0x7FFF);
}

void TaskDestructor_8003D28(Task *t) { }

void sub_8003D2C(void)
{
    Player *p;

    p = &gPlayers[gStageData.playerIndex];
    sub_8004CC8(gStageData.playerIndex);
    sub_8004CC8(p->charFlags.partnerIndex);
    DestroyStageEntitiesManager();
    sub_8051140();
}

void TaskDestructor_8003D68(struct Task *t)
{
#ifndef BUG_FIX
    // I mean like... this works, but it's not "correct".
    GameOver38 *strc = TASK_DATA(gCurTask);
#else
    GameOver38 *strc = TASK_DATA(t);
#endif
    VramFree(strc->s.tiles);
}

void sub_8003D84(void) { }

void sub_8003D88(void) { }

void sub_8003D8C(void) { }

void AddLives(u16 count)
{
    if ((u16)(count += gStageData.lives) > 255) {
        gStageData.lives = 255;
    } else {
        gStageData.lives = count;
    }

    // Music manager reset (plays the 1-Up fanfare)
    gMusicManagerState.unk3 = 0x10;
}

void sub_8003DC4(u16 count)
{
    if ((u16)(count += gStageData.lives) > 255) {
        gStageData.lives = 255;
    } else {
        gStageData.lives = count;
    }
}

void sub_8003DF0(u16 song)
{
    if (gStageData.gameMode != 2) {
        m4aSongNumStart(song);
    }
}

void sub_8003E0C(u16 song)
{
    if (gStageData.gameMode != 2) {
        m4aSongNumStartOrContinue(song);
    }
}

void sub_8003E28(u16 song)
{
    if (gStageData.gameMode != 2) {
        m4aSongNumStop(song);
    }
}

void sub_8003E44(s16 level)
{
    void *vramBase;

    if (gStageData.gameMode != 7) {
        vramBase = OBJ_VRAM0 + 0x4D80;
        if (gStageData.gameMode > 5U) {
            if (gStageData.gameMode == 6) {
                vramBase = OBJ_VRAM0 + 0x4DA0;
            }
        }

        switch (level) {
            case 13:
            case 24:
            case 25:
            case 43:
            case 44:
            case 45:
            case 49:
                vramBase += 2 * TILE_SIZE_4BPP;
                break;
        }
    } else {
        vramBase = OBJ_VRAM0 + 0x2700;
    }
    gVramHeapMaxTileSlots = GET_TILE_NUM_FROM_BASE(vramBase, OBJ_VRAM0 + 0x8000);
    gVramHeapStartAddr = vramBase;
}

void sub_8003F40(void)
{
    s16 level = CURRENT_LEVEL;

    gStageData.timer = 0;
    gStageData.unk21 = 0;
    sub_80040D8(level, 0);
    sub_80040D8(level, 1);
    sub_80040D8(level, 2);
    sub_80040D8(level, 3);
    if (gStageData.gameMode != 2) {
        m4aMPlayAllStop();
    }
    ClearCameraStruct();
}

void sub_8003F8C(void)
{
    s16 temp_r4_2;
    s16 var_r0;
    s32 temp_r5;
    u16 temp_r4;
    s16 level = CURRENT_LEVEL;

    gStageData.timer = 0;
    gStageData.unk21 = 0;
    for (var_r0 = 0; var_r0 < 4; var_r0++) {
        sub_80040D8(level, var_r0);
    }

    m4aMPlayAllStop();
    ClearCameraStruct();
}

void ClearCameraStruct(void)
{
    CpuFill32(0, &gCamera, sizeof(gCamera));
    sub_80026BC();
}

void Task_60_8003FEC(void)
{
    Sprite *s;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 timeTxtX;

    GameOver *gameOver = TASK_DATA(gCurTask);

    if (++gameOver->unk0 >= GAME_OVER_SCREEN_DURATION) {
        sub_8003CA4();
        return;
    }
    timeTxtX = gameOver->unk0;
    if (timeTxtX > DISPLAY_CENTER_X) {
        timeTxtX = DISPLAY_CENTER_X;
    }

    {
        s = &gameOver->s;
        s->x = timeTxtX;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        s = &gameOver->s2;
        s->x = DISPLAY_WIDTH - timeTxtX;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_8004058(void)
{
    // TODO: Unsure whether this is GameOver or TimeOver struct!
    GameOver *gameOver = TASK_DATA(gCurTask);

    if (UpdateScreenFade(&gameOver->fade) != SCREEN_FADE_RUNNING) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        sub_8001E84();
        sub_80260F0();
        LaunchGameIntro();
    }
}

void TaskDestructor_80040BC(Task *t)
{
    TimeOver *timeOver = TASK_DATA(t);

    VramFree(timeOver->s.tiles);
    VramFree(timeOver->s2.tiles);
}

void sub_80040D8(s16 level, s16 pid)
{
    Player *p = &gPlayers[pid];

    // Save important indices
    u32 partnerIndex = p->charFlags.partnerIndex;
    u32 character = p->charFlags.character;
    u32 someIndex = p->charFlags.someIndex;

    // Clear Player struct
    CpuFill32(0, p, sizeof(Player));

    // Restore important indices
    p->charFlags.partnerIndex = partnerIndex;
    p->charFlags.character = character;
    p->charFlags.someIndex = someIndex;

    sub_8013D70(level, pid);
}
