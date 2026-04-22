#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/save.h"
#include "game/player_callbacks.h"
#include "game/screen_fade.h"
#include "game/camera.h" // TODO: for CamCoord used in entities_manager.h
#include "game/shared/entities_manager.h"
#include "game/shared/rings_manager.h"
#include "module_unclear.h"

#include "constants/songs.h"
#include "constants/zones.h"

typedef struct GameOver {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ ScreenFade fade;
} GameOver;

typedef struct GameOver38 {
    /* 0x00 */ u8 padding[0x10];
    /* 0x10 */ Sprite s;
} GameOver38;

typedef struct TimeOver {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ ScreenFade fade;
} TimeOver;

void sub_80525F0(s32, s32); /* extern */
extern u8 gUnknown_080CE548[4];
extern void *gUnknown_08E2EC78[8];

void Task_60_8003FEC(void);
void TaskDestructor_8003D28(struct Task *t);
void sub_8029990(u16 song);

extern void Create_gTask_03001CFC();
extern void DemoPlayAlloc(Player *, u8);
void Task_00_8002988();
extern void sub_8002618();
extern void sub_8002838(s16);
void sub_8003288();
void sub_800341C();
void sub_8003A14();
void sub_80043B8();
void sub_80105F0();
void sub_8026478();
void sub_80264F0();
void sub_802789C();
extern void sub_8003E44(s16);
extern struct Task *sub_80215A0();
extern void sub_8022FB0();
void Task_8002BBC();
extern void sub_80261B0();
extern void sub_80275F0(u8, u8, u8);
extern void sub_8027878(u8 lives);
extern void sub_804F740(u16, u8);
extern void sub_805235C();
extern void sub_8056AB0();
extern void sub_8056AFC(u8);
extern void sub_8056B78();
extern void sub_8057ECC();
extern void sub_806611C(u8);
extern void sub_8081C80();
extern void InitializePlayer(s16 playerId);
extern void sub_8052E30();
extern void sub_8053030();

extern void sub_80299FC(void);
extern void sub_8053284(UNUSED u32, UNUSED u32, UNUSED s16, UNUSED s32);
extern void AddLives(u16 count);

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
                gCurTask->main = sub_8003288;
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

/* TODO: Append functions from game_over_z.c here!!! */
