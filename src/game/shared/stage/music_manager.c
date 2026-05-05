#include "global.h"
#include "core.h"

//#include "game/globals.h"
#include "game/stage.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/music_manager.h"
#include "constants/move_states.h"

#include "lib/m4a/m4a.h"

#if (GAME == GAME_SA1)
#include "constants/sa1/songs.h"
#elif (GAME == GAME_SA2)
#include "constants/sa2/songs.h"
#elif (GAME == GAME_SA3)
#include "constants/songs.h"
#endif

#if (GAME == GAME_SA1)
#define SET_UNK5(v)
#elif (GAME >= GAME_SA2)
#define SET_UNK5(v) gMusicManagerState.unk5 = (v);
#endif

void Task_StageMusicManager(void);
// static
void MusManager_UpdateBgmParams(void);
void MusManager_Fadeout(u16 fadeoutSpeed);

#if (GAME == GAME_SA3)
void MusManager_TempoSettings(void);
#endif

// SA12: game/globals.h
typedef struct MusicManagerState {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
#if (GAME == GAME_SA3)
    u16 song;
#endif
} MusicManagerState; /* size: 0xC */

MusicManagerState ALIGNED(8) gMusicManagerState = { 0 };

#if 0
ALIGNED(4)
const u16 gLevelSongs[] = {
#if (GAME == GAME_SA1)
    MUS_NEO_GREEN_HILL__ACT_1,
    MUS_NEO_GREEN_HILL__ACT_2,
    MUS_SECRET_BASE__ACT_1,
    MUS_SECRET_BASE__ACT_2,
    MUS_CASINO_PARADISE__ACT_1,
    MUS_CASINO_PARADISE__ACT_2,
    MUS_ICE_MOUNTAIN__ACT_1,
    MUS_ICE_MOUNTAIN__ACT_2,
    MUS_ANGEL_ISLAND__ACT_1,
    MUS_ANGEL_ISLAND__ACT_2,
    MUS_EGG_ROCKET,
    MUS_COSMIC_ANGEL,
    MUS_X_ZONE,
    MUS_EXTRA_BOSS,

    // MP Chao Gardens
    MUS_NEO_GREEN_HILL__ACT_1,
    MUS_SECRET_BASE__ACT_1,
    MUS_CASINO_PARADISE__ACT_1,
    MUS_COSMIC_ANGEL,
#elif (GAME == GAME_SA2)
    MUS_LEAF_FOREST__ACT_1,
    MUS_LEAF_FOREST__ACT_2,
    MUS_BOSS,
    MUS_BOSS_PINCH,
    MUS_HOT_CRATER__ACT_1,
    MUS_HOT_CRATER__ACT_2,
    MUS_BOSS,
    MUS_BOSS_PINCH,
    MUS_MUSIC_PLANT__ACT_1,
    MUS_MUSIC_PLANT__ACT_2,
    MUS_BOSS,
    MUS_BOSS_PINCH,
    MUS_ICE_PARADISE__ACT_1,
    MUS_ICE_PARADISE__ACT_2,
    MUS_BOSS,
    MUS_BOSS_PINCH,
    MUS_SKY_CANYON__ACT_1,
    MUS_SKY_CANYON__ACT_2,
    MUS_BOSS,
    MUS_BOSS_PINCH,
    MUS_TECHNO_BASE__ACT_1,
    MUS_TECHNO_BASE__ACT_2,
    MUS_BOSS,
    MUS_BOSS_PINCH,
    MUS_EGG_UTOPIA__ACT_1,
    MUS_EGG_UTOPIA__ACT_2,
    MUS_7_BOSS,
    MUS_7_BOSS_PINCH,
    MUS_XX__FINAL_ZONE,
    MUS_TRUE_AREA_53,
    MUS_FINAL_BOSS,
    MUS_FINAL_BOSS_PINCH,
    MUS_BOSS_KNUCKLES,
    MUS_BOSS,
    MUS_BOSS,
    MUS_BOSS,
    MUS_BOSS,
    MUS_BOSS,
    MUS_BOSS,
    MUS_DUMMY,
#endif
};

const static u16 sBossSongIndices[] = {
#if (GAME == GAME_SA1)
    MUS_BOSS_FIGHT,       MUS_BOSS_INTRO,         MUS_BOSS_MECHA_KNUCKLES, MUS_BOSS_EGG_SNAKE,
    MUS_BOSS_EGG_WRECKER, MUS_BOSS_EGG_DRILLSTER, MUS_FINAL_BOSS
#endif
};

void Task_StageMusicManager(void)
{
    struct MP2KSongHeader *songHeader = gMPlayTable[0].info->songHeader;
    Player *p;

    if ((gMusicManagerState.unk0 == 0) && PLAYER_IS_ALIVE) {
#if (GAME >= GAME_SA2)
        if ((gMusicManagerState.unk1 & 0xF0) == 0x30) {
            MPlayStop(&gMPlayInfo_BGM);

            gMusicManagerState.unk0 = 0xFF;
            gMusicManagerState.unk1 &= 0x0F;
        } else if (gMusicManagerState.fadeoutSpeed != 0) {
            MusManager_Fadeout(gMusicManagerState.fadeoutSpeed);

            gMusicManagerState.unk0 = 0xFF;
            gMusicManagerState.fadeoutSpeed = 0;
            SET_UNK5(1);
        } else
#endif
            if ((songHeader == gSongTable[MUS_DROWNING].header) && (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK)
                && !(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)) {
            SET_UNK5(1);
            gMusicManagerState.unk2 = 0;
            gMusicManagerState.unk3 = 0;
        } else if (gMusicManagerState.unk4 != 0) {
            gMusicManagerState.unk4 = 0;
            SET_UNK5(1);

            m4aSongNumStart(MUS_DROWNING);
        } else if ((songHeader == gSongTable[MUS_INVINCIBILITY].header) && (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK)
                   && !(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE) && !(GET_SP_PLAYER_V0(PLAYER_1)->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY)) {
            SET_UNK5(1);
            m4aSongNumStop(MUS_INVINCIBILITY);
        } else if ((songHeader != gSongTable[MUS_1_UP].header) && (songHeader != gSongTable[MUS_INVINCIBILITY].header)
                   && (GET_SP_PLAYER_V0(PLAYER_1)->itemEffect & PLAYER_ITEM_EFFECT__INVINCIBILITY) && (gMusicManagerState.unk2 == 0)) {
            gMusicManagerState.unk2 = 0;
            SET_UNK5(1);
            m4aSongNumStart(MUS_INVINCIBILITY);
            MusManager_UpdateBgmParams();
        } else if (gMusicManagerState.unk2 != 0) {
            gMusicManagerState.unk2 = 0;
            SET_UNK5(1);
            m4aSongNumStart(MUS_INVINCIBILITY);
        } else if (gMusicManagerState.unk3 != 0) {
            gMusicManagerState.unk3 = 0;
            SET_UNK5(1);
            m4aSongNumStart(MUS_1_UP);
        } else if ((gMusicManagerState.unk1 & 0xF0) == 0x10) {
            u32 unk1 = (gMusicManagerState.unk1 &= 0x0F);

#if (GAME == GAME_SA1)
            m4aSongNumStart(sBossSongIndices[gMusicManagerState.unk1]);
            gMusicManagerState.unk1 |= 0x20;
#elif (GAME == GAME_SA2)
            m4aSongNumStart(gLevelSongs[gCurrentLevel + unk1]);
#elif (GAME == GAME_SA3)
            m4aSongNumStart(gMusicManagerState.song);
#endif
#if (GAME == GAME_SA1)
        } else if ((gMusicManagerState.unk1 & 0xF0) == 0x30) {
            gMusicManagerState.unk1 &= 0xF;
            m4aSongNumStop(sBossSongIndices[gMusicManagerState.unk1]);

            m4aSongNumStart(gLevelSongs[gCurrentLevel]);
            MusManager_UpdateBgmParams();

            if ((u8)(gMusicManagerState.unk1 - 4) > 1) {
                gMusicManagerState.unk0 = 0xFF;
            }
            gMusicManagerState.unk1 = 0;
#endif
        } else if (((gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK) == 0) || (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)) {
            if ((gMusicManagerState.unk1 & (0x10 | 0x20 | 0x40 | 0x80)) == 0x20) {
#if (GAME == GAME_SA1)
                m4aSongNumStart(sBossSongIndices[gMusicManagerState.unk1 & 0xF]);
#else
                m4aSongNumStart(sBossSongIndices[gMusicManagerState.unk1]);
#endif
                MusManager_UpdateBgmParams();
            } else {
#if (GAME == GAME_SA1)
                m4aSongNumStart(gLevelSongs[gCurrentLevel]);
                MusManager_UpdateBgmParams();
#elif (GAME >= GAME_SA2)
#if (GAME == GAME_SA2)
                m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel + (gMusicManagerState.unk1 & 0x0F)]);
#elif (GAME == GAME_SA3)
                m4aSongNumStartOrContinue(gMusicManagerState.song);
#endif
                if (gMusicManagerState.unk5 != 0) {
                    SET_UNK5(0)
                    MusManager_UpdateBgmParams();
                }
#endif
            }
        }
    }
}
#endif // if 0

#if (GAME <= GAME_SA2)
void CreateStageMusicManager(void)
#elif (GAME == GAME_SA3)
void CreateStageMusicManager(u16 song)
#endif
{
    TaskCreate(Task_StageMusicManager, 0, 0x4000, 0, NULL);

#if (GAME == GAME_SA3)
    gMusicManagerState.song = song;
    gMusicManagerState.unk1 = 1;
    gMusicManagerState.unk0 = 0;
#else
    gMusicManagerState.unk0 = 0;
    gMusicManagerState.unk1 = 0;
#endif // GAME_SA3
    gMusicManagerState.unk2 = 0;
    gMusicManagerState.unk3 = 0;
    gMusicManagerState.unk4 = 0;
    SET_UNK5(0)
#if (GAME >= GAME_SA2)
    gMusicManagerState.fadeoutSpeed = 0;
#endif // GAME_SA2
}

#if (GAME == GAME_SA3)
void sub_80299D4(u16 song)
{
    gMusicManagerState.unk0 = 0;
    gMusicManagerState.song = song;
    gMusicManagerState.unk1 = 1;
}

void sub_80299E8(u16 song)
{
    gMusicManagerState.unk0 = 0;
    gMusicManagerState.song = song;
    gMusicManagerState.unk1 = 2;
}

void sub_80299FC(u16 song)
{
    struct MP2KPlayerState *bgmInfo = &gMPlayInfo_BGM;
    MPlayStop(bgmInfo);
    gMusicManagerState.unk0 = (u8)-1;
}

void sub_8029A18(u16 song)
{
    m4aSongNumStartOrContinue(song);
    gMusicManagerState.unk0 = 0;
}
#endif

// static
void MusManager_UpdateBgmParams(void)
{
    struct MP2KPlayerState *bgmInfo = &gMPlayInfo_BGM;
    Player *p;

    m4aMPlayImmInit(bgmInfo);
    m4aMPlayVolumeControl(bgmInfo, 0xFF, 4);
    m4aMPlayFadeIn(bgmInfo, 4);

#if (GAME <= GAME_SA2)
    if (GET_SP_PLAYER_V0(PLAYER_1)->itemEffect & PLAYER_ITEM_EFFECT__SPEED_UP) {
        m4aMPlayTempoControl(bgmInfo, Q(2));
    }
#elif (GAME == GAME_SA3)
    MusManager_TempoSettings();
#endif
}

#if (GAME >= GAME_SA2)
void MusManager_Fadeout(u16 fadeoutSpeed)
{
#if (GAME == GAME_SA1)
    struct MusicPlayerInfo *bgmInfo = &gMPlayInfo_BGM;
#else
    struct MP2KPlayerState *bgmInfo = &gMPlayInfo_BGM;
#endif

    m4aMPlayFadeOutTemporarily(bgmInfo, fadeoutSpeed / 16);

#if (GAME <= GAME_SA2)
    if (GET_SP_PLAYER_V0(PLAYER_1)->itemEffect & PLAYER_ITEM_EFFECT__SPEED_UP) {
        m4aMPlayTempoControl(bgmInfo, Q(2));
    }
#elif (GAME == GAME_SA3)
    MusManager_TempoSettings();
#endif
}
#endif

#if (GAME == GAME_SA3)
void MusManager_TempoSettings(void)
{
    Player *p;
#ifndef NON_MATCHING
    Player *ps = gPlayers;
    asm("" ::"r"(ps));
#endif
    p = &gPlayers[gStageData.playerIndex];

    if (p->unk5E > 0) {
        // TODO: Probably a macro...
        struct MP2KPlayerState *bgmInfo = &gMPlayInfo_BGM;
        m4aMPlayTempoControl(bgmInfo, Q(2.0));
    } else if (p->unk60 > 0) {
        struct MP2KPlayerState *bgmInfo = &gMPlayInfo_BGM;
        m4aMPlayTempoControl(bgmInfo, Q(0.5));
    } else {
        struct MP2KPlayerState *bgmInfo = &gMPlayInfo_BGM;
        m4aMPlayTempoControl(bgmInfo, Q(1.0));
    }
}
#endif
