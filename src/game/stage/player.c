#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "module_unclear.h"
#include "code_z_1.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/interactables/ice_launcher.h"
#include "game/interactables/ramp.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/anim_commands.h" // for ANIM_CMD__PALETTE
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef enum ERingSpeedFactor {
    RSF_0,
    RSF_1,
    RSF_2,
    RSF_3,
    RSF_4,

    RSF_COUNT
} ERingSpeedFactor;

void sub_8003D2C(void);
void Task_80045EC(void); // -> PlayerUnkC4
void sub_8004B14();
void sub_8004BD0(Player *p, s32 arg1, s32 arg2);
void Task_8005068(void); // -> PlayerUnkC4
void Task_80050E0(void); // -> PlayerUnkC4
void sub_8005130(Player *p, s32 arg1, s32 arg2);
void sub_80051CC(Player *p, s32 arg1, s32 arg2);
void sub_80059A0(Player *, u16);
s8 sub_8005A24(Player *p, s32 unused);
u8 sub_8005B04(Player *p);
s8 sub_8005B78(Player *p);
void sub_80063B4(Player *p, s32 param1);
void sub_801300C(s16 playerId);
void sub_801310C(s16 playerId);
void sub_8013F4C(Player *p);
void sub_80141EC(Player *p, u8 param1, u8 param2);
bool16 sub_8016D88(Player *p);
void sub_80B7914(Struc_3001150 *strc);
void sub_80B794C(Struc_3001150 *strc);
bool32 sub_80B7AA4(Struc_3001150 *strc);
void sub_80B8E24(void *strc, Player *p, s32 param2, s32 param3);
void sub_8001D58(VoidFn voidFn, u16 color);
void sub_8002414();
void sub_808723C(s16 param0, u8 param1);
extern void sub_8002388(void);
void TaskDestructor_8004D2C(struct Task *t);

void Task_8010008(void);
void TaskDestructor_8010F34(struct Task *t);
void Task_8018238_30(void);
void Task_80186A0_CC(void);
void sub_8018984(void);
void Task_8018AF8(void);
void Task_801952C_2C(void);
void Task_80184F8(void);
void sub_8018C6C(void);
void sub_8018814(void);
void sub_8018DDC(void);
void sub_80190C8(void);
void sub_8019150(void);
void Task_80191C8(void);
void Task_TagActionInit(void);
void Task_8019628(void);
void Task_AfterImages();
void sub_8019A7C();
void RetrieveInitialAnimationPalette(u16 animId, u16 insertOffset);
void Player_InitializeAfterImagesTask(Player *p);
void TaskDestructor_AfterImages(Task *t);
void TaskDestructor_80194B4(Task *t);
void sub_80194DC(Task *t);
void sub_801957C(void);

void TaskDestructor_8019318(struct Task *t);
void TaskDestructor_801932C(struct Task *t);
void TaskDestructor_8019340(struct Task *t);
void TaskDestructor_8019354(struct Task *t);
void TaskDestructor_8019368(struct Task *t);
void TaskDestructor_8019390(struct Task *t);
void TaskDestructor_TagAction(struct Task *t);
void TaskDestructor_80193EC(struct Task *t);
void TaskDestructor_8019400(Task *t);
void TaskDestructor_8019428(struct Task *t);
void TaskDestructor_801948C(struct Task *t);
void TaskDestructor_80194B4(struct Task *t);
void TaskDestructor_80194C8(struct Task *t);
void TaskDestructor_8019504(struct Task *t);

void sub_801320C(Player *p, PlayerSpriteInfo *spriteInfoBody);
void sub_80136DC(s16 param0);
void sub_8013A68(s16 param0);
bool16 sub_8014A60(Player *p);
bool16 sub_8014D70(Player *p);
s16 sub_8015064(Player *p);
bool32 sub_8015568(Player *p);
bool16 sub_8016EDC(Player *p);
bool32 sub_8017058(Player *p);
extern void Task_8019240(void);
void Task_80182D4(void);
void Task_801839C_E0(void);
void Task_8018550(void);
void sub_801862C(void);
void TaskDestructor_80194A0(struct Task *t);
void Task_8019698(void);
void sub_8019CF0(Player *p);
void sub_801A224(Player *p);
void sub_801D5CC(Player *p);
void sub_801DAD8(Player *p);
void sub_801EBC0(s32, Player *p);
void sub_8023634();
void sub_8026254(Player *p);
void sub_80268B8(s16);
void sub_8027878(u8);
void sub_80278DC(void);

void sub_80B7968(Struc_3001150 *, Player *);
u16 sub_80B7A94(Struc_3001150 *);

extern void sub_8002508(void);
extern void sub_802785C(void);
extern void sub_8056120(s16 param0);
extern void sub_8056168(void);

bool32 sub_8010184(Sprite *s, s32 offsetX, s32 offsetY, s16 hbIndex, Player *p);

typedef struct {
    AnimId anim;
    u16 variant;
} TileInfoShield;

typedef struct Strc_800FF68 {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u8 fillerC[0x4];
    /* 0x10 */ Player *p;
    /* 0x14 */ Sprite s;
} Strc_800FF68; /* size: 0x3C */

typedef struct Strc_PlayerStrc2C {
    /* 0x00 */ Sprite s;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ s16 unk2A;
} Strc_PlayerStrc2C; /* 0x2C */

typedef struct Strc_PlayerStrc2C_2 {
    /* 0x00 */ Sprite s;
    /* 0x28 */ Player *p;
} Strc_PlayerStrc2C_2; /* 0x2C */

// NOTE/TODO: It's possible every single Strc_PlayerStrc30 task creates its own version
//            of the struct, with different layouts.
typedef struct Strc_PlayerStrc30 {
    /* 0x00 */ Sprite s;
    /* 0x28 */ Player *p;
    /* 0x2C */ s16 someY;
} Strc_PlayerStrc30; /* 0x30 */

typedef struct Strc_PlayerStrc30_2 {
    /* 0x00 */ Sprite s;
    /* 0x2C */ s16 someY;
    /* 0x28 */ Player *p;
} Strc_PlayerStrc30_2; /* 0x30 */

typedef struct Strc_PlayerStrc50 {
    /* 0x00 */ Sprite s;
    /* 0x28 */ Player *p;
    /* 0x2C */ s8 unk2C;
    /* 0x2D */ s8 unk2D;
    /* 0x2E */ s16 unk2E[8][2];
} Strc_PlayerStrc50;

typedef struct PlayerStrcCC_Sprite {
    Sprite s;
    u8 unk28;
    u8 filler29[0x1];
    s16 worldX;
    s16 worldY;
    u8 filler2E[0x2];
} PlayerStrcCC_Sprite;

typedef struct Strc_PlayerStrcCC {
    /* 0x00 */ u8 *vram;
    /* 0x04 */ s16 unk4;
    /* 0x06 */ s16 unk6;
    /* 0x08 */ Player *p;
    /* 0x0C */ PlayerStrcCC_Sprite sprites[4];
    /* 0xA8 */
} Strc_PlayerStrcCC;

typedef struct Strc_PlayerUnkE0 {
    /* 0x00 */ void *vram;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ Vec2_16 unk54[10];
    /* 0x7C */ s16 unk7C;
    /* 0x7E */ s16 unk7E;
    /* 0x84 */ s16 unk80[12][2];
    /* 0xB4 */ s16 unkB0[12][2];
} Strc_PlayerUnkE0;

typedef struct AfterImages {
    /* 0x00 */ SpriteTransform tf;
    /* 0x0C */ Sprite2 s;
    /* 0x3C */ u8 unk3C;
    /* 0x3C */ u8 filler3D[3];
} AfterImages;

typedef struct SomeSubStruct_3001BF0 {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u32 frameFlags;
    /* 0x0C */ u32 moveState;
    /* 0x10 */ s16 anim2;
    /* 0x12 */ s16 rotation;
    /* 0x14 */ s8 state1;
    /* 0x15 */ s8 animSpeed;
} SomeSubStruct_3001BF0; /* size: 0x18 */
typedef struct Strc_03001BF0 {
    SomeSubStruct_3001BF0 unk0[8];
    Player *unkC0;
    u8 index;
} Strc_03001BF0;

extern Strc_03001BF0 gUnknown_03001BF0;
extern u16 gUnknown_080CE7E2[][2];

typedef struct Strc_03001CF0 {
    u8 unk0;
    u8 filler1[3];
    u8 unk4;
    u16 unk6;
} Strc_03001CF0;

extern Strc_03001CF0 gUnknown_03001CF0;

extern u16 gMedalTimes[][2];
extern u8 gUnknown_080CF468[];
extern s16 gUnknown_080CF470[][2];
extern s16 gUnknown_080CE5B8[9]; // Spindash accel related
extern u16 gCharVoicesLifeLost[NUM_CHARACTERS];
extern u16 gUnknown_080CE5CA[10];
extern u16 gUnknown_080CE5E8[NUM_CHARACTERS];
extern s16 gUnknown_080CE5F2[5];
extern s16 gUnknown_080CE5FC[8];
extern u16 gUnknown_080CE60C[8];
extern s16 gUnknown_080CE61C[8][2];
extern s16 gUnknown_080CE63C[4];
extern s32 gUnknown_080CE644[25];
extern s16 gUnknown_080CE6A8[4][2];
extern s16 gUnknown_080CE6B8[RSF_COUNT][2];
extern PlayerCallback gUnknown_080CE6CC[54];
extern u8 gUnknown_080CE7A4[4];
extern s8 gUnknown_080CE7A8[][2];
extern s8 gUnknown_080CE7B0[][2];
extern s8 gUnknown_080CE7B8[][2];
extern s8 gUnknown_080CE7C0[][2];
extern s8 gUnknown_080CE7C8[][2];
extern u16 gUnknown_080CE7E2[][2];
extern s16 gUnknown_080CECB2[RSF_COUNT][2];
extern s16 gUnknown_080CECC6[RSF_COUNT];
extern u16 gUnknown_080D05A8[][2];
extern Vec2_16 *gUnknown_080D1750[];

extern PlayerSpriteInfo gUnknown_030010D0; // Tails
extern PlayerSpriteInfo gUnknown_0300110C; // Cream
extern PlayerSpriteInfo gUnknown_03001B00[4];

extern TileInfoShield sTileInfoShields[];
extern u16 gUnknown_08E2EAD0[][3];
extern u16 gUnknown_08E2EB04[NUM_CHARACTERS][2];

static inline void SongStopCheck_inline(Player *p, u16 song)
{
    if (gStageData.gameMode != 7) {
        if (p->moveState & MOVESTATE_1000) {
            Player_StopSong(p, song);
        }
    }
}

static inline void BoostEngage_inline(Player *p)
{
    if (p->unk148.ptr->a.unkC != 0) {
        p->unk148.ptr->a.unkC -= 1;
    } else {
        Player_BoostModeEngage(p);
    }
}

static inline void sub_8015568__shared_inline(Player *p)
{
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);
    sub_80193A4(p);
    Player_StopSong(p, SE_TAGACTION_BUILDUP);
    if (p->moveState & 0x400000) {
        p->unk42 = 0;
        p->moveState &= 0xFFBFFFFF;
    }

    if (0x800000 & p->moveState) {
        p->moveState &= 0xFF7FFFFF;
        partner->qWorldX = p->qWorldX;
        partner->qWorldY = p->qWorldY;
        partner->moveState &= 0xFEFFFFFF;
    }
}

static inline void AdvanceVariant(Player *p)
{
    if (p->taskTagAction != NULL) {
        Strc_PlayerStrc30 *strcTag = TASK_DATA(p->taskTagAction);
        strcTag->s.variant = 1;
        p->taskTagAction->main = sub_8019150;
    }
}

void InitializePlayer(s16 playerId)
{
    Player *player;
    Player *partner;
    PlayerUnkC4 *unkC4;
    Task *t;
    Task *temp_r0_4;
    Task *temp_r0_6;
    s16 temp_r4_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r0_7;

    player = &gPlayers[playerId];
    partner = &gPlayers[player->charFlags.partnerIndex];

    player->unkC4[0] = TaskCreate(Task_80045EC, sizeof(PlayerUnkC4), playerId + 0x3000, 0U, TaskDestructor_8004D2C);
    unkC4 = TASK_DATA(player->unkC4[0]);
    unkC4->playerId = playerId;
    unkC4->unk0 = 0;

    player->unkC4[1] = TaskCreate(Task_8005068, sizeof(PlayerUnkC4), playerId + 0x3010, 0U, NULL);
    unkC4 = TASK_DATA(player->unkC4[1]);
    unkC4->playerId = playerId;
    unkC4->unk0 = 0;

    player->unkC4[2] = TaskCreate(Task_80050E0, sizeof(PlayerUnkC4), playerId + 0x3020, 0U, NULL);
    unkC4 = TASK_DATA(player->unkC4[2]);
    unkC4->playerId = playerId;
    unkC4->unk0 = 0;

    sub_8013F4C(player);
    sub_80141EC(player, player->charFlags.character, partner->charFlags.character);

    if ((gStageData.zone != 8) && (player->callback != Player_800522C)) {
        SetPlayerCallback(player, Player_8005380);
    }

    sub_801300C(playerId);
    if (gStageData.gameMode != 7) {
        sub_801310C(playerId);
        if (playerId == gStageData.playerIndex) {
            if (gStageData.currMapIndex != 72) {
                Player_InitializeAfterImagesTask(player);
            } else {
                Player_InitializeAfterImagesTask(&gPlayers[PLAYER_1]);
            }
        }

        sub_80203D4(player);
        sub_80B7914(&gUnknown_03001150);

        if ((u32)gStageData.gameMode < 6) {
            Player_InitializeShieldSprite(player);
        }
    }
}

void sub_80042F4(Player *p, s32 spriteOffsetY)
{
    s32 var_r0;
    u8 var_r2;

    if (p->spriteOffsetY != spriteOffsetY) {
        var_r2 = p->unk26;
        if (p->moveState & 0x10000) {
            var_r2 += 0x40;
            var_r2 = -var_r2;
            var_r2 = var_r2 - 0x40;
        }

        var_r0 = var_r2 + 0x20;
        if (var_r0 > 0) {
            if (var_r2 != 0) {
                var_r0 -= 1;
                var_r2 = (u8)var_r0;
            } else {
                var_r2 = 0x20;
            }
        } else if (var_r2 != 0) {
            var_r2 = var_r0;
        } else {
            var_r2 = 0x1F;
        }

        switch (var_r2 >> 6) {
            case 0:
                p->qWorldY -= Q(spriteOffsetY - p->spriteOffsetY);
                return;
            case 2:
                p->qWorldY += Q(spriteOffsetY - p->spriteOffsetY);
                return;
            case 1:
                p->qWorldX += Q(spriteOffsetY - p->spriteOffsetY);
                break;
            case 3:
                p->qWorldX -= Q(spriteOffsetY - p->spriteOffsetY);
                break;
        }
    }
}

void sub_80043B8(void)
{
    Player *p = &gPlayers[PLAYER_1];
    s16 i;

    for (i = 0; i < 4; i++, p++) {
        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 4)) {
            p->unkA8 = -1U;
            p->unkAC = -1;
            p->unkB0 = -1;
            p->unkB4 = -1;
            p->unkB8 = -1;
            p->unkBC = -1;
            p->unkC0 |= 0xFFFF;
            p->unkC2 |= 0xFFFF;
        }
    }
}

void sub_8004428(s32 arg0, s32 arg1)
{
    Player *player;
    s16 i;

    player = gPlayers;
    for (i = 0; i < 4; i++, player++) {
        if ((player->charFlags.someIndex == 1) || (player->charFlags.someIndex == 4)) {
            switch (player->charFlags.character) {
                case 0:
                    sub_8004BD0(player, arg0, arg1);
                    sub_8005130(player, arg0, arg1);
                    break;
                case 1:
                    sub_8005130(player, arg0, arg1);
                    break;
                case 2:
                    sub_8004BD0(player, arg0, arg1);
                    sub_8005130(player, arg0, arg1);
                    break;
                case 3:
                    sub_80051CC(player, arg0, arg1);
                    sub_8005130(player, arg0, arg1);
                    break;
                case 4:
                    sub_8005130(player, arg0, arg1);
                    break;
            }
        }
    }
}

void sub_80044CC(Player *p)
{
    p->moveState |= MOVESTATE_4000;

    if (gStageData.act == 7) {
        if (p->moveState & MOVESTATE_IN_AIR) {
            p->qSpeedAirX = 0;

            if (gStageData.zone == ZONE_3) {
                p->qSpeedAirY = 0;
            } else {
                p->qSpeedAirY = -Q(3);
            }
            Player_800DB30(p);
        }
    } else if (((p->moveState & MOVESTATE_JUMPING) == MOVESTATE_JUMPING) || (p->charFlags.anim0 == 259) || (p->charFlags.anim0 == 260)) {
        p->qSpeedAirX >>= 1;

        if (p->qSpeedAirY >= 0) {
            p->qSpeedAirY = -Q(3);
        }

        Player_800DB30(p);
        Player_BoostModeDisengage(p);
    }
}

void Task_8004550(void)
{
    s16 i;

    for (i = 0; i < 4; i++) {
        Player *p = &gPlayers[i];
        s32 magic = 0x68FC;

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 3))) {
            union MultiSioData *sioData = &gMultiSioRecv[i];
            if (sioData->pat0.unk0 != magic) {
                return;
            }
        }
    }

    sub_8003D2C();

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    CreateCharacterSelect(4U);
}

// (99.49%) https://decomp.me/scratch/zjUHD
NONMATCH("asm/non_matching/game/stage/player__Task_80045EC.inc", void Task_80045EC(void))
{
    Player *p;
    Player *partner;
    u16 temp_r0_8;
    u16 temp_r2_5;
    u16 temp_r6_4;

    PlayerUnkC4 *strc = TASK_DATA(gCurTask);

    p = &gPlayers[strc->playerId];
    if (gStageData.gameMode != 7) {
        sub_8014258(p);
        sub_80143E0(p);
    }
    sub_80142CC(p);
    sub_80144B4(p);
    switch (p->charFlags.someIndex - 1) {
        case 0:
            sub_8004B14();

            if (gStageData.currMapIndex == 11) {
                if (4 & p->keyInput2) {
                    sub_8003D2C();
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    gBgSpritesCount = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    sub_8023634();
                    return;
                }
            }
            break;
        case 1:
        case 4:
            partner = GET_SP_PLAYER_V0(PLAYER_2);

            if (MOVESTATE_1000000 & p->moveState) {
                if (p->unk44 > 30) {
                    s32 qX;
                    if (SPRITE_FLAG_GET(&partner->spriteInfoBody->s, X_FLIP)) {
                        qX = partner->qWorldX + Q(10);
                    } else {
                        qX = partner->qWorldX - Q(10);
                        asm("");
                    }
                    p->qWorldX = qX;
                    p->qWorldY = partner->qWorldY;

                    if (partner->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        p->moveState |= MOVESTATE_GRAVITY_SWITCHED;
                    } else {
                        p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                    }
                }

                p->keyInput = 0;
                p->keyInput2 = 0;
                break;
            } else {
                if (p->charFlags.someIndex == 5) {
                    return;
                }

                if (gStageData.gameMode != 1 && gStageData.gameMode != 2) {
                    if (p->charFlags.partnerIndex != gStageData.playerIndex) {
                        p->charFlags.someIndex = 5;
                        return;
                    }
                }

                temp_r6_4 = p->keyInput;
                if ((gStageData.unk4 != 9) && (gStageData.unk4 != 4)) {
                    if (MOVESTATE_2000000 & p->moveState) {
                        p->keyInput = partner->keyInput;
                        p->keyInput2 = partner->keyInput2;
                    } else {
                        if (gStageData.zone != 8) {
                            sub_80B7968(&gUnknown_03001150, p);
                            p->keyInput = sub_80B7A94(&gUnknown_03001150);
                        } else {
                            p->keyInput = 0;

                            if (p->qWorldY < partner->qWorldY - Q(32)) {
                                p->keyInput |= DPAD_DOWN;
                            } else if (p->qWorldY > partner->qWorldY + Q(32)) {
                                p->keyInput |= DPAD_UP;
                            }

                            if (p->qWorldX < partner->qWorldX - Q(32)) {
                                p->keyInput |= DPAD_RIGHT;
                            } else if (p->qWorldX > partner->qWorldX + Q(32)) {
                                p->keyInput |= DPAD_LEFT;
                            }
                        }

                        p->keyInput2 = (temp_r6_4 ^ p->keyInput) & p->keyInput;
                    }
                }
            }
            break;
        case 2:
            sub_80268B8((s16)strc->playerId);
            partner = GET_SP_PLAYER_V0(PLAYER_2);

            if (MOVESTATE_800000 & partner->moveState) {
                if (!(partner->moveState & MOVESTATE_100)) {
                    s32 qX = partner->qWorldX;
                    p->qWorldX = qX;

                    if (partner->moveState & 1) {
                        p->qWorldX = qX - Q(10);
                        p->qWorldY = partner->qWorldY;
                    } else {
                        p->qWorldX = qX + Q(10);
                        p->qWorldY = partner->qWorldY;
                    }
                }
            }
            break;
        case 3:
            temp_r2_5 = *p->demoplayInput_Current;
            p->demoplayInput_Current++;

            if (p->moveState & MOVESTATE_IGNORE_INPUT) {
                p->keyInput = 0;
                p->keyInput2 = 0;
            } else {
                temp_r0_8 = p->keyInput;
                p->keyInput = temp_r2_5;
                p->keyInput2 = p->keyInput & ~temp_r0_8;
            }
            break;

        default:
            return;
    }

    if (gStageData.gameMode != 7) {
        sub_80153BC(p);
        if (gStageData.zone != 8) {
            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                if (!(p->moveState & MOVESTATE_10000000)) {
                    p->callback(p);
                }
                if (gStageData.unk4 == 3) {
                    if ((u32)gStageData.gameMode > 5U) {
                        sub_8015A44(p);
                    }
                }
            }
        } else if (!(p->moveState & MOVESTATE_10000000)) {
            p->callback(p);
        }

        if (gStageData.unk4 == 3) {
            if (!(p->moveState & MOVESTATE_100)) {
                if (MOVESTATE_400000 & p->moveState) {
                    Player_InitializeTagAction(p);
                    if (++p->unk42 == 30) {
                        partner = GET_SP_PLAYER_V0(PLAYER_2);
                        if (!(partner->moveState & MOVESTATE_100) || ((partner->charFlags.someIndex) == 2)) {
                            partner->unk44 = 0;
                            partner->moveState = (partner->moveState & ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_100 | MOVESTATE_10000000))
                                | MOVESTATE_1000000;
                            partner->sprColliding = NULL;
                            Player_8007930(partner);
                            if (gStageData.unkBD == 0) {
                                gStageData.unkBD = 1;
                            } else if ((partner->charFlags.someIndex) == 1) {
                                u16 map = gStageData.currMapIndex;
                                gCamera.unk18 = 0;
                                gCamera.unk10 = 0;
                                gCamera.unk1C = gUnknown_080D05A8[map][0];
                                gCamera.unk14 = gUnknown_080D05A8[map][1];
                            }
                        }
                    }
                } else if (MOVESTATE_800000 & p->moveState) {
                    partner = GET_SP_PLAYER_V0(PLAYER_2);
                    sub_80193A4(p);
                    p->unk42 = 0;

                    if (partner->moveState & MOVESTATE_100) {
                        sub_8016F28(p);
                        sub_8016F28(partner);
                    }
                } else {
                    if (0x01000000 & p->moveState) {
                        partner = GET_SP_PLAYER_V0(PLAYER_2);
                        sub_8016F28(p);
                        sub_801816C(p);
                        p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                        p->sprColliding = NULL;
                        p->unk42 = 0;

                        if (partner->moveState & MOVESTATE_100) {
                            sub_8016F28(p);
                            sub_8016F28(partner);
                        }
                    } else {
                        sub_80193CC(p);
                        p->unk42 = 0;
                    }
                }
            }
        }

        if (p->moveState & 0x200) {
            if ((p->unk5C != 0) && (--p->unk5C == 0)) {
                if (gStageData.act == 7) {
                    Player_800613C(p);
                    return;
                }
                Player_8005E80(p);
                return;
            }
        }
    } else {
        if (p->charFlags.someIndex == 1) {
            if (!(p->moveState & MOVESTATE_10000000)) {
                p->callback(p);
            }
            sub_8015A44(p);
        }
    }
}
END_NONMATCH

// TODO: Fake-match!
void sub_8004B14(void)
{
    Player *p;
#ifndef NON_MATCHING
    register u32 var_r0 asm("r0");
    register s32 var_r1 asm("r1");
#else
    u32 var_r0;
    s32 var_r1;
#endif
    u16 var_r4;
    u8 var_r2;
    u32 input;

    PlayerUnkC4 *strc = TASK_DATA(gCurTask);

    p = &gPlayers[strc->playerId];
    if (gStageData.unk4 != 9) {
        if (p->moveState & MOVESTATE_IGNORE_INPUT) {
            p->keyInput = 0;
            p->keyInput2 = 0;
            p->unk22 = gInput;
        } else {
            if (p->unk22) {
                var_r4 = p->unk22;
                p->unk22 = 0;
            } else {
                var_r4 = p->keyInput;
            }
            input = gInput;
            p->keyInput = input;
            if ((gStageData.gameMode == 6) && (p->unk62 != 0)) {
                u32 dpadAny;
                u32 dpad;
#ifndef NON_MATCHING
                asm("mov %0, #0xF0" : "=r"(dpadAny));
#else
                dpadAny = DPAD_ANY;
#endif
                dpad = (input & dpadAny) >> 4;

                var_r0 = ((gStageData.timer));
                var_r1 = var_r0 >> 6;
                var_r1 = var_r1 % 4u;
                if (var_r1 == 0) {
                    var_r1 = 1;
                }

                var_r2 = dpad << var_r1;
                p->keyInput = (var_r2 | (var_r2 >> 4));
                var_r1 = ((u16) ~(DPAD_ANY)&input);
                var_r1 |= (((var_r2 | (var_r2 >> 4)) << 4) & DPAD_ANY);
                p->keyInput = var_r1;
            }

            p->keyInput2 = (var_r4 ^ p->keyInput) & p->keyInput;
        }
    }
}

// (71.60%) https://decomp.me/scratch/JzXgk
NONMATCH("asm/non_matching/game/stage/player__sub_8004BD0.inc", void sub_8004BD0(Player *p, s32 arg1, s32 arg2))
{
    ECharacters partnerChar;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r7;
    s32 temp_r7_2;
    s32 var_r3;
    s16 var_r1;
    u32 temp_r1;

    partnerChar = gPlayers[p->charFlags.partnerIndex].charFlags.character;
    if (partnerChar == CHARACTER_CREAM) {
        temp_r3 = p->qWorldX;
        temp_r7 = p->qWorldY;
        if ((MOVESTATE_GRAVITY_SWITCHED & p->moveState) && (temp_r7 >= arg2)) {
            if (!(MOVESTATE_FACING_LEFT & p->moveState)) {
                if (temp_r3 >= arg1) {
                    goto block_10;
                }
            } else {
                goto block_9;
            }
        } else if (temp_r7 <= arg2) {
            if (MOVESTATE_FACING_LEFT & p->moveState) {
            block_7:
                if (temp_r3 >= arg1) {
                    goto block_10;
                }
            } else {
            block_9:
                if (temp_r3 <= arg1) {
                block_10:
                    temp_r4 = I(arg1 - temp_r3);
                    var_r3 = I(arg2 - temp_r7);
                    temp_r7_2 = SQUARE(temp_r4) + SQUARE(var_r3);
                    if (temp_r7_2 <= Q(SQUARE(5))) {
                        if (p->unkB8 >= temp_r7_2) {
                            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                var_r3 = -var_r3;
                            }

                            var_r1 = (u16)sa2__sub_8004418(var_r3, temp_r4);
                            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                var_r1 = (0x400 - var_r1) & 0x3FF;
                            }
                            p->unkA8 = arg1;
                            p->unkAC = arg2;
                            p->unkB8 = temp_r7_2;
                            p->unkC0 = var_r1;
                        }
                    }
                }
            }
        }
    }
}
END_NONMATCH

void sub_8004CC8(s16 playerId)
{
    Player *p;
    Task **temp_r0;
    Task **temp_r0_2;
    Task **temp_r6;
    Task **temp_r6_2;

    p = &gPlayers[playerId];
    TaskDestroy(p->unkC4[0]);
    p->unkC4[0] = NULL;
    TaskDestroy(p->unkC4[1]);
    p->unkC4[1] = NULL;
    TaskDestroy(p->unkC4[2]);
    p->unkC4[2] = NULL;

    p->taskTagAction = NULL;
    p->unkD4 = 0;
    p->unkD8 = 0;
    p->unkDC = 0;

    if (playerId != PLAYER_1) {
        sub_80B794C(&gUnknown_03001150);
    }
}

void TaskDestructor_8004D2C(Task *t) { }

void sub_8004D30(void)
{
    Player *p = &gPlayers[gStageData.playerIndex];
    gMultiSioSend.pat0.unk0 = 0x68FC;
    p->unkC4[0]->main = Task_8004550;
}

void sub_8004D68(s32 x, s32 y)
{
    Player *p;
    s16 i;

    p = &gPlayers[PLAYER_1];
    for (i = 0; i < 4; i++, p++) {
        if (((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5)) && sub_80B7AA4(&gUnknown_03001150)) {
            sub_80B8E24(&gUnknown_03001150.filler1C[0], p, x, y);
        }
    }
    sub_8004428(x, y);
}

void sub_8004DD8(s32 qWorldX, s32 qWorldY)
{
    Player *p;
    s16 i;

    p = &gPlayers[PLAYER_1];
    for (i = 0; i < 4; i++, p++) {
        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 4)) {
            sub_8005130(p, qWorldX, qWorldY);
        }
    }
}

bool16 sub_8004E20(s16 arg0, s16 arg1, s16 *param2)
{
    u16 *var_r2;
    s16 i;
    s32 max;
    s16 temp_r1;

    temp_r1 = gStageData.unk84;
    if (temp_r1 == 0) {
        return FALSE;
    }

    var_r2 = gStageData.unk80;
    for (i = 0; i < temp_r1; i++, var_r2 += 4) {
        if ((var_r2[0] < arg0) && (var_r2[2] > arg0)) {
            if (param2 != NULL) {
                *param2 = var_r2[1];
            }

            if ((var_r2[1] < arg1) && (var_r2[3] > arg1)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

bool32 Player_PlaySong(Player *p, u16 song)
{
    if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
        m4aSongNumStart(song);
        return TRUE;
    }
    return FALSE;
}

s32 Player_PlayOrContinueSong(Player *p, u16 arg1)
{
    if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
        m4aSongNumStartOrContinue(arg1);
        return TRUE;
    }
    return FALSE;
}

void Player_StopSong(Player *p, u16 song)
{
    if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
        m4aSongNumStop(song);
    }
}

extern u8 *gDemoRecordings[];
void DemoPlayAlloc(Player *p, s16 demoIndex)
{
    const s32 BUFFER_SIZE = 0x1000;

    void *compressedInput = gDemoRecordings[demoIndex];
    void *inputBuffer = EwramMalloc(BUFFER_SIZE);
    CpuFill16(0, inputBuffer, BUFFER_SIZE);
    LZ77UnCompWram(compressedInput, inputBuffer);

    p->demoplayInput_Start = p->demoplayInput_Current = inputBuffer;
}

// // DemoPlayAlloc gets called on demo creation, but DemoPlayFree is not called when it is done.
void DemoPlayFree(Player *p)
{
    u16 *inputBuffer = p->demoplayInput_Start;

    if (inputBuffer) {
        EwramFree(inputBuffer);
    }

    p->demoplayInput_Start = NULL;
    p->demoplayInput_Current = NULL;
}

void Player_8004FC4(Player *p)
{
    u16 prevInput;
    u16 newInput;
    u16 *temp_r0;

    temp_r0 = p->demoplayInput_Current;
    newInput = *p->demoplayInput_Current;
    p->demoplayInput_Current = temp_r0 += 1;

    if (p->moveState & MOVESTATE_IGNORE_INPUT) {
        p->keyInput = 0;
        p->keyInput2 = 0;
    } else {
        prevInput = p->keyInput;
        p->keyInput = newInput;
        p->keyInput2 = newInput & ~prevInput;
    }
}

void Player_Flyer_SoundStop(Player *p)
{
    switch (p->charFlags.character) {
        case CHARACTER_TAILS:
            if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
                m4aSongNumStop(SE_TAILS__FLYING);
                return;
            }
            return;
        case CHARACTER_CREAM:
            if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
                m4aSongNumStop(SE_CREAM__FLYING);
            }
            break;
    }
}

void Task_8005068(void)
{
    PlayerUnkC4 *temp_r1 = TASK_DATA(gCurTask);
    Player *p = &gPlayers[temp_r1->playerId];

    if (p->charFlags.someIndex != 5) {
        sub_801320C(p, p->spriteInfoBody);
        sub_80136DC(temp_r1->playerId);
        if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
            sub_8013A68(temp_r1->playerId);
        }
        sub_8014670(p);
        if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
            sub_8017618(p);
        }
    }
}

void Task_80050E0(void)
{
    PlayerUnkC4 *temp_r1 = TASK_DATA(gCurTask);
    Player *p;

    p = &gPlayers[temp_r1->playerId];
    p->moveState2 = p->moveState;

    if (gStageData.gameMode > GAME_MODE_BOSS_TIME_ATTACK) {
        if (p->charFlags.someIndex == 1) {
            sub_8026254(p);
        }
    }
}

// (95.99%) https://decomp.me/scratch/WQnfu
NONMATCH("asm/non_matching/game/stage/player__sub_8005130.inc", void sub_8005130(Player *p, s32 qWorldX, s32 qWorldY))
{
    s32 dy;
    s32 dx;
    s32 distance;
    s32 max;
    s16 temp_r2;
    s32 qPlayerWorldX = p->qWorldX;
    s32 qPlayerWorldY = p->qWorldY;

    dx = I(qWorldX - qPlayerWorldX);
    dy = I(qWorldY - qPlayerWorldY);
    max = SQUARE(120);
    distance = SQUARE(dx) + SQUARE(dy);
    if ((max >= distance) && (p->unkBC >= distance)) {
        temp_r2 = sa2__sub_8004418(dy, dx);

        if (((p->moveState & MOVESTATE_FACING_LEFT) && ((temp_r2 > 256) && (temp_r2 < 768)))
            || (!(p->moveState & MOVESTATE_FACING_LEFT) && ((temp_r2 < 256) || (temp_r2 > 768)))) {
            p->unkB0 = qWorldX;
            p->unkB4 = qWorldY;
            p->unkBC = distance;
            p->unkC2 = temp_r2;
        }
    }
}
END_NONMATCH

void sub_80051CC(Player *p, s32 qWorldX, s32 qWorldY)
{
    s32 dy;
    s32 dx;
    s32 distance;
    s32 max;
    s16 temp_r2;
    s32 qPlayerWorldX = p->qWorldX;
    s32 qPlayerWorldY = p->qWorldY;

    dx = I(qWorldX - qPlayerWorldX);
    dy = I(qWorldY - qPlayerWorldY);
    max = SQUARE(120);
    distance = SQUARE(dx) + SQUARE(dy);

    if ((max >= distance) && (p->unkBC >= distance)) {
        temp_r2 = sa2__sub_8004418(dy, dx);

        p->unkA8 = qWorldX;
        p->unkAC = qWorldY;
        p->unkB8 = distance;
        p->unkC0 = temp_r2;
    }
}

// TODO: Fake-match
void Player_800522C(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= 0x08000000;
    if (gStageData.act == 2) {
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->moveState |= MOVESTATE_JUMPING;
        sub_8012FC0(p);
        p->charFlags.anim0 = 0x13;
    } else {
        sub_8012FA0(p);
        p->charFlags.anim0 = 0;
    }
    p->callback = Player_80052C8;
    Player_80052C8(p);
}

void Player_80052C8(Player *p)
{
    s16 *var_r1;
    s16 var_r0_2;
    u32 temp_r0;
    void (*var_r0)(Player * p);

    if (!sub_8015064(p)) {
        if (!(p->moveState & 4)) {
            sub_8005800(p);
            sub_8015144(p);
            Player_801479C(p);
            sub_8016D30(p);
            sub_8012EB8(p);
        } else {
            sub_801350C(p);
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
        }
        if ((gStageData.unk4 == 1) || (gStageData.unk4 == 8) || (gStageData.unk4 == 2)) {
            p->callback = Player_80052C8;
        } else {
            if (gStageData.gameMode == 6) {
                p->framesInvulnerable = 120;
            } else {
                p->framesInvulnerable = 0;
            }

            p->moveState &= ~MOVESTATE_IGNORE_INPUT;
            if (p->moveState & MOVESTATE_IN_AIR) {
                p->callback = Player_800DB30;
            } else {
                p->callback = Player_8005380;
            }
        }
    }
}

void Player_8005380(Player *p)
{
    s16 temp_r1_2;
    u16 *temp_r2;
    u8 *temp_r1;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    sub_8012FA0(p);
    if ((p->qSpeedGround != 0) || (temp_r1_2 = (p->unk26 + 0x20) & 0xC0, (temp_r1_2 != 0))) {
        Player_8005528(p);
        return;
    }
    p->idleAndCamCounter = 360;
    p->charFlags.anim0 = temp_r1_2;
    p->charFlags.unk2D_0 = 0;
    Player_BoostModeDisengage(p);
    p->callback = Player_8005434;
    Player_8005434(p);
}

void Player_8005434(Player *p)
{
    Player *partner = GET_SP_PLAYER_V0(PLAYER_2);

    if (((p->moveState & 0x224) != 0x200) && !sub_8014BC4(p) && !sub_8014A60(p) && !sub_8016EDC(p) && !sub_8015568(p)) {
        sub_8015228(p);
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);
            sub_8014AF8(p);

            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);

                if (!sub_8015064(p)) {
                    if (p->qSpeedGround != 0) {
                        p->callback = Player_8005528;
                        return;
                    }

                    if (((p->charFlags.someIndex == 2) && (p->charFlags.character == CHARACTER_AMY))
                        && ((partner->charFlags.character == CHARACTER_SONIC) && (p->charFlags.anim0 == 0))) {
                        p->charFlags.anim0 = 249;
                    }
                }
            }
        }
    }
}

void Player_8005528(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);

    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    sub_8012FA0(p);
    p->charFlags.anim0 = 8;
    p->unk5A = 0;
    p->idleAndCamCounter = 0;
    p->charFlags.unk2D_0 = 0;
    p->callback = Player_80055B8;
    Player_80055B8(p);
}

void Player_80055B8(Player *p)
{
    Player *partner = GET_SP_PLAYER_V0(PLAYER_2);

    if (((p->moveState & (MOVESTATE_200 | MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR)) != MOVESTATE_200) && !sub_8014BC4(p)
        && !sub_8014A60(p) && !sub_8015568(p)) {
        sub_8015228(p);
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);

            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);
                sub_800D7C8(p);

                if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0)) {
                    {
                        if (p->idleAndCamCounter < 10) {
                            p->idleAndCamCounter++;
                        } else {
                            p->callback = Player_8005380;
                            return;
                        }
                    }
                } else {
                    p->idleAndCamCounter = 0;
                }

                if (gStageData.gameMode != 7) {
                    if (((p->charFlags.someIndex == 2) && (p->charFlags.character == CHARACTER_AMY))
                        && ((partner->charFlags.character == CHARACTER_SONIC) && (p->charFlags.anim0 == 8))) {
                        p->charFlags.anim0 = 250;
                    }
                }
            }
        }
    }
}

void sub_80056CC(Player *p)
{
    if (p->moveState & MOVESTATE_IN_AIR) {
        p->unk26 = 0;
    }

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    sub_8012FA0(p);

    p->moveState |= (MOVESTATE_20000000 | MOVESTATE_2000000);
    p->charFlags.anim0 = 8;

    p->unk5A = 0;
    p->idleAndCamCounter = 30;
    p->charFlags.unk2D_0 = 0;
    p->callback = Player_80055B8;
    Player_80055B8(p);
}

void sub_8005778(Player *p)
{
    if (!sub_8014BC4(p) && !sub_8014A60(p) && !sub_8015568(p)) {
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);
            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);

                if (--p->idleAndCamCounter == 0) {
                    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000);
                    Player_8005528(p);
                }
            }
        }
    }
}

void sub_8005800(Player *p)
{
    s16 temp_r0;
    s16 anim;
    s16 var_r0_2;
    s8 temp_r1_3;
    s8 var_r5;

    var_r5 = -1;
    if ((p->unk4E == 0) && (0x30 & p->keyInput) != 0) {
        if (p->qSpeedGround > 0) {
            if (DPAD_RIGHT & p->keyInput) {
                sub_80059A0(p, 0U);
            } else {
                var_r5 = sub_8005A24(p, 0);
            }
        } else if (p->qSpeedGround < 0) {
            if (DPAD_LEFT & p->keyInput) {
                sub_80059A0(p, 1U);
            } else {
                var_r5 = sub_8005A24(p, 1);
            }
        } else {
            var_r5 = sub_8005B78(p);
        }
    } else {
        var_r5 = sub_8005B04(p);
    }
    if (gStageData.gameMode != 7) {
        if (0x800000 & p->moveState) {
            if (p->charFlags.state0_subCount > 3U) {
                p->qSpeedGround = Q(7);
                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    p->qSpeedGround = -p->qSpeedGround;
                }
                p->charFlags.state0_subCount = 3;
            }

            switch (var_r5) {
                case 16:
                case 17:
                    var_r5 = 0x12;
                    break;
                case 0:
                    var_r5 = 3;
                    break;
                case 8:
                    var_r5 = 9;
                    break;
            }
        }

        if (var_r5 != -1) {
            p->charFlags.anim0 = var_r5;
        }
    }
    sub_8014E70(p);
    if (gStageData.gameMode != 7) {
        if (((0x44 & p->moveState) == 0x40) && !((p->unk26 + 0x20) & 0xC0)) {
            if (((0x10 & p->keyInput) && !(0x10 & p->keyInput2)) || ((0x20 & p->keyInput) && !(0x20 & p->keyInput2))) {
                if (!(0x800000 & p->moveState)) {
                    var_r0_2 = 0x21;
                    p->charFlags.anim0 = var_r0_2;
                }
            } else {
                var_r0_2 = 0;
                p->charFlags.anim0 = var_r0_2;
            }
        } else {
            anim = p->charFlags.anim0;
            if ((anim != 0) && (anim != 0x11) && (anim != 0x10) && (anim != 3) && (anim != 0xE) && (anim != 0xF) && (anim != 0x12)) {
                if (0x800000 & p->moveState) {
                    p->charFlags.anim0 = 9;
                } else {
                    p->charFlags.anim0 = 8;
                }
            }
        }
        if (p->moveState2 & 0x40) {
            p->moveState = -0x41 & p->moveState;
        }
    }
}

// TODO: Fake-match!
void sub_80059A0(Player *p, u16 arg1)
{
    s16 temp_r4;
#ifndef NON_MATCHING
    register s32 r0 asm("r0");
#else
    s32 r0;
#endif
    s32 temp_r5;
    s32 temp_r6;

    temp_r6 = p->unk90;
    if (p->moveState & MOVESTATE_800000) {
        p->charFlags.anim0 = 9;
    } else {
        p->charFlags.anim0 = 8;
    }

    r0 = arg1 << 0x10;
    temp_r5 = r0;
#ifndef NON_MATCHING
    asm("" ::"r"(r0));
#endif
    if (temp_r5 == 0) {
        temp_r4 = +p->qSpeedGround;
    } else {
        temp_r4 = -p->qSpeedGround;
    }

    if (temp_r4 < p->unk8C) {
        temp_r4 += temp_r6;
        if (temp_r4 > p->unk8C) {
            temp_r4 = (u16)p->unk8C;
        }
    } else {
        p->boostEffectCounter += temp_r6;
    }
    if (temp_r5 == 0) {
        p->qSpeedGround = +temp_r4;
        p->moveState &= ~MOVESTATE_FACING_LEFT;
    } else {
        p->qSpeedGround = -temp_r4;
        p->moveState |= MOVESTATE_FACING_LEFT;
    }
}

s8 sub_8005A24(Player *p, s32 unused)
{
    s16 temp_r2;
    s16 var_r2;
    s32 var_r5;
    u16 temp_r1;
    u16 temp_r3;
    s16 var_r6;
    u8 result;
    void (*var_r0)(Player * p);
    s16 qSpeed;

    result = 0xFF;
    qSpeed = ABS(p->qSpeedGround);
    var_r6 = qSpeed - p->unk94;
    temp_r1 = p->charFlags.anim0;
    if (temp_r1 >= 16 && temp_r1 <= 18) {
        result = (u8)temp_r1;
    } else {
        if (var_r6 >= 512) {
            if (p->charFlags.state0_subCount > 3U) {
                result = 0x11;
            } else {
                if (p->moveState & 0x800000) {
                    result = 0x12;
                } else {
                    result = 0x10;
                }
            }

            Player_PlayOrContinueSong(p, SE_STOPPING);
        }
    }

    if (var_r6 > 0 && var_r6 < 512) {
        if ((((p->qSpeedGround < 0)) && (1 & p->moveState)) || ((p->qSpeedGround > 0) && !(MOVESTATE_FACING_LEFT & p->moveState))) {
            if ((gStageData.gameMode != 7) && (0x800000 & p->moveState)) {
                p->callback = Player_800E084;
            } else {
                p->callback = Player_800D9F4;
            }
        }
    }
    if (p->qSpeedGround < 0) {
        var_r6 = -var_r6;
    }
    p->qSpeedGround = (s16)var_r6;

    return result;
}

u8 sub_8005B04(Player *p)
{
    s16 qSpeed;

    if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0)) {
        return 0U;
    }

    qSpeed = ABS(p->qSpeedGround);

    qSpeed -= 8;
    if (qSpeed < 0) {
        if (((p->unk26 + 0x20) & 0xC0) == 0) {
            p->qSpeedGround = 0;
            p->idleAndCamCounter = 360;
            return 0U;
        }
    }

    if (p->qSpeedGround < 0) {
        qSpeed = -qSpeed;
    }
    p->qSpeedGround = qSpeed;
    return 8U;
}

s8 sub_8005B78(Player *p)
{
    s8 result;
    s32 temp_r5;
    u32 temp_r3;
    void (*var_r0_2)(Player * p);

    temp_r5 = p->unk90;
    if ((MOVESTATE_FACING_LEFT & p->moveState) != ((DPAD_RIGHT & p->keyInput) >> 4)) {
        if (MOVESTATE_FACING_LEFT & p->moveState) {
            p->qSpeedGround = p->qSpeedGround - temp_r5;
        } else {
            p->qSpeedGround = p->qSpeedGround + temp_r5;
        }
        result = 8;

        sub_8012FA0(p);
    } else {
        if (p->moveState & MOVESTATE_800000) {
            p->callback = Player_800E084;
        } else {
            p->callback = Player_800D9F4;
        }

        result = 8;
    }

    return result;
}

void Player_8005BD4(Player *p)
{
    u32 temp_r2;
    u8 *temp_r1;
    u32 r6 = ((-((s32)p->moveState & 0x4)) >> 31) & 4;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~MOVESTATE_10000000;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_200);
    p->moveState |= r6;
    p->unk5C = 0x78;
    gStageData.unk4 = 5;
    sub_8012FA0(p);
    p->charFlags.unk2D_0 = 0;
    sub_8016F28(p);
    sub_8016F28(GET_SP_PLAYER_V0(PLAYER_2));
    Player_BoostModeDisengage(p);
    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    p->callback = Player_8005CB8;
    Player_8005CB8(p);
}

void Player_8005CB8(Player *p)
{
    s32 var_r1;
    s32 var_r2;
    s16 screenX = I(p->qWorldX) - gCamera.x;

    if ((uintptr_t)p < (uintptr_t)GET_SP_PLAYER_V0(PLAYER_2)) {
        var_r2 = 0x96;
        var_r1 = 0x82;
    } else {
        var_r2 = 0x6E;
        var_r1 = 0x5A;
    }

    if ((s32)screenX < var_r1) {
        p->keyInput2 = 0x10;
        p->keyInput = 0x10;
    } else if ((s32)screenX > var_r2) {
        p->keyInput = 0x20;
        p->keyInput2 = 0x20;
    } else {
        p->keyInput = 0;
        p->keyInput2 = 0;
        if (!(p->moveState & 4)) {
            if (p->qSpeedGround == 0) {
                p->charFlags.anim0 = 0;
            }
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        if (!(p->moveState & 4)) {
            sub_8005800(p);
            sub_8015144(p);
            Player_801479C(p);
            sub_8016D30(p);
            sub_8012EB8(p);
            p->charFlags.anim0 = 8;
        } else {
            sub_8014940(p);
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            p->charFlags.anim0 = 0x18;
            if (!(p->moveState & 4)) {
                p->charFlags.anim0 = 8;
                Player_Flyer_SoundStop(p);
            }
        }
        p->callback = Player_8005CB8;
    }
}

void Player_8005DAC(Player *p)
{
    u32 temp_r2;
    u8 *temp_r1;
    u32 r6 = ((-((s32)p->moveState & 0x4)) >> 31) & 4;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~MOVESTATE_10000000;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_200);
    p->moveState |= r6;
    sub_8016F28(p);
    sub_8016F28(GET_SP_PLAYER_V0(PLAYER_2));
    Player_BoostModeDisengage(p);
    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    gStageData.unk4 = 5;
    p->unk5C = 0x78;
    sub_8012FA0(p);
    p->callback = sub_800D8DC;
    sub_800D8DC(p);
}

void Player_8005E80(Player *p)
{
    u16 sp00[ARRAY_COUNT(gUnknown_080CE5CA) / 2][2];
    s16 *temp_r0_2;
    s16 temp_r2;
    u8 *temp_r0;
    u8 var_r0;
#ifndef NON_MATCHING
    register s32 r1 asm("r1");
    register u32 gameMode asm("r2");
#else
    s32 r1;
    u32 gameMode;
#endif
    u16 time;
    StageData *pStageData;

    memcpy(&sp00[0][0], &gUnknown_080CE5CA, 0x14);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= 0xDC510BA1;
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    sub_8016F28(GET_SP_PLAYER_V0(PLAYER_2));
    Player_BoostModeDisengage(p);
    p->moveState &= ~0x10000;
    p->unk13C = 0;
    p->unk13D = 0;
    p->moveState &= ~0x20;
    p->sprColliding = NULL;
    p->qCamOffsetY = -0x320;
    if (p->charFlags.someIndex == 2) {
        p->qWorldX = Q(gCamera.x + 100);
        p->qWorldY = Q(gCamera.y + 120);
        p->layer = gPlayers[p->charFlags.partnerIndex].layer;
    }

    gameMode = gStageData.gameMode;
    if (gameMode == 6) {
        r1 = gStageData.unk5;
        r1 >>= (gStageData.playerIndex * 2);
        r1 &= 3;
        if (r1 == 0) {
            p->charFlags.anim0 = 0x9E;
        } else {
            p->charFlags.anim0 = gameMode;
        }
    } else if ((gStageData.levelTimer <= gMedalTimes[gStageData.currMapIndex][0]) && (gStageData.unk20 == 0)) {
        p->charFlags.anim0 = 0x9E;
        Player_PlaySong(p, sp00[p->charFlags.character][1]);
    } else {
        p->charFlags.anim0 = 0x9D;
        Player_PlaySong(p, sp00[p->charFlags.character][0]);
    }

    if ((gStageData.gameMode != 7) && (p->charFlags.character == CHARACTER_CREAM)) {
        if ((gStageData.gameMode != 6) || (p->charFlags.anim0 == 0x9E)) {
            p->moveState &= ~1;
            if (p->charFlags.anim0 == 0x9D) {
                sub_801EBC0(6U, p);
            } else {
                sub_801EBC0(7U, p);
            }
        }
    }
    if (gStageData.gameMode == 6) {
        p->idleAndCamCounter = 0x1E;
        p->callback = Player_800D944;
        Player_800D944(p);
        return;
    }
    sub_80299FC();
    if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
        u8 zone = gStageData.zone;
        if (gStageData.act == 7) {
            var_r0 = 3;
        } else {
            var_r0 = gStageData.act - 3;
        }

        if (LOADED_SAVE->timeRecords.table[zone][var_r0][0].time > gStageData.levelTimer) {
            sub_8003DF0(0x60U);
        } else {
            sub_8003DF0(0x5FU);
        }
    } else if (gStageData.zone == 7) {
        sub_8003DF0(0x58U);
    } else {
        u8 map = gStageData.currMapIndex;
        if ((gStageData.levelTimer <= gMedalTimes[map][0]) && (gStageData.unk20 == 0)) {
            sub_8003DF0(0x54U);
        } else {
            sub_8003DF0(0x55U);
        }
    }
    p->idleAndCamCounter = 0x1E;
    p->callback = Player_800D944;
    Player_800D944(p);
}

void Player_800613C(Player *p)
{
    u32 temp_r2;
    u8 *temp_r1;
    u32 r5;
    sub_8016F28(p);
    r5 = ((-((s32)p->moveState & 0x4)) >> 31) & 4;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_200);
    p->moveState |= r5;
    p->moveState &= ~1;
    gStageData.unk4 = 5;
    sub_8012FA0(p);
    p->callback = Player_80061D8;
    Player_80061D8(p);
}

void Player_80061D8(Player *p)
{
    p->keyInput = DPAD_RIGHT;
    p->keyInput2 = DPAD_RIGHT;

    if (!(p->moveState & MOVESTATE_IN_AIR)) {
        sub_8005800(p);
        sub_8015144(p);
        Player_801479C(p);
        sub_8016D30(p);
        sub_8012EB8(p);
    } else {
        sub_8014940(p);
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        p->charFlags.anim0 = 0x18;

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->charFlags.anim0 = 8;
            Player_Flyer_SoundStop(p);
        }
    }

    p->callback = Player_80061D8;
}

void Player_8006250(Player *p)
{
    s32 var_r1_2;
    u32 r6 = ((-((s32)p->moveState & 0x2)) >> 31) & 8;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    p->moveState |= r6;
    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
    Player_8012FF0(p);

    if (ABS(p->qSpeedAirX) < 0x140) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        var_r1_2 = 0x2A0;
    } else {
        var_r1_2 = 0x4E0;
    }
    sub_80063B4(p, var_r1_2);
    p->callback = sub_800EDC8;
    sub_800EDC8(p);
}

void Player_8006310(Player *p)
{
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    u32 temp_r1;
    u8 *temp_r1_2;
    u32 r6 = ((-((s32)p->moveState & 0x2)) >> 31) & 8;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= r6;
    sub_8012FA0(p);

    p->charFlags.anim0 = 0x6C;

    if (p->moveState & 0x80) {
        var_r1_2 = 0x2A0;
    } else {
        var_r1_2 = 0x4E0;
    }
    sub_80063B4(p, var_r1_2);
    p->callback = Player_80064D4;
    Player_80064D4(p);
}

void sub_80063B4(Player *p, s32 arg1)
{
    PlayerSpriteInfo *playerSprite;
    u8 temp_r2;

    temp_r2 = p->unk26 - 0x40;
    p->qSpeedAirX += I(arg1 * (COS_24_8(temp_r2 * 4)));
    p->qSpeedAirY += I(arg1 * (SIN_24_8(temp_r2 * 4)));
    p->charFlags.unk2C_04 = 0;
    Player_PlayOrContinueSong(p, 0x74U);

    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= ~0x4000;
}

void Player_8006424(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    sub_8012FC0(p);

    if (ABS(p->qSpeedAirX) < Q(1.25)) {
        p->charFlags.anim0 = 19;
    } else {
        p->charFlags.anim0 = 20;
    }

    {
        PlayerSpriteInfo *playerSprite = p->spriteInfoBody;
        playerSprite->s.frameFlags &= ~0x4000;
    }
    Player_PlaySong(p, 0x71);
    p->callback = sub_800EDC8;
    sub_800EDC8(p);
}

void Player_80064D4(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r5;
    s16 temp_r0;
    u16 var_r0;
    u32 temp_r1;

    var_r5 = -Q(3);
    if (p->moveState & MOVESTATE_80) {
        var_r5 = -Q(1.5);
    }
    if ((sub_8017058(p) == 0) && ((sub_8014BC4(p) << 0x10) == 0)) {
        if ((p->qSpeedAirY < var_r5) && !(p->keyInput & gStageData.buttonConfig.jump)) {
            p->qSpeedAirY = var_r5;
            p->callback = sub_800EE64;
        } else if (p->qSpeedAirY > 0) {
            p->callback = sub_800EE64;
        }

        if ((p->charFlags.state1 == 0) && (p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            temp_r2 = p->spriteInfoBody;
            if (temp_r2->s.frameFlags & 0x4000) {
                temp_r2->s.frameFlags &= ~0x4000;
                p->charFlags.state1 = 2;
            }
        }
        sub_800EF18(p);
    }
}

void Player_800657C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r1;
    void (*var_r0)(Player * p);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= ~0x4000;
    p->moveState ^= 1;
    p->unk26 = 0;
    p->qSpeedAirX = +Q(3);
    p->qSpeedAirY = -Q(2.625);

    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedAirX = -p->qSpeedAirX;
    }

    if (p->unkC & 0x40) {
        p->moveState |= 6;
        Player_8012FF0(p);
        p->charFlags.anim0 = 0x14;
        p->callback = sub_800EE38;
    } else {
        p->moveState |= 4;
        Player_8012FE0(p);
        p->charFlags.anim0 = 0x6C;
        p->callback = sub_800EE64;
    }
}

void sub_800DF10(Player *);

void Player_8006654(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    u8 *temp_r1;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= 4;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0x6D;
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * 39) >> 3);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * 39) >> 3);

    p->charFlags.unk2C_04 = 1;
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_800673C(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    u8 *temp_r1;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= 4;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0xB3;
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * 39) >> 3);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * 39) >> 3);

    p->charFlags.unk2C_04 = 1;
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_8006824(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    u32 temp_r1;
    u8 *temp_r1_2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IN_AIR;
    Player_8012FE0(p);
    p->charFlags.unk2C_04 = 1;

    p->charFlags.anim0 = 0x6D;
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    if (p->qSpeedAirX < Q(0.00)) {
        p->qSpeedAirX = -Q(5);
    } else {
        p->qSpeedAirX = +Q(5);
    }
    p->qSpeedAirY = -Q(7);

    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;

    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_80068EC(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    Player_8012FF0(p);

    if (ABS(p->qSpeedAirX) < 0x140) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }

    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * var_r3) >> 8);
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_80069E4(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;
    s32 qSpeed;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    Player_8012FF0(p);

    if (ABS(p->qSpeedAirX) < 0x140) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }

    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= ~0x4000;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY >>= 2;
    p->qSpeedAirY += p->qSpeedAirY >> 2;
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_8006AE4(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    sub_8012FC0(p);

    if (ABS(p->qSpeedAirX) < Q(1.25)) {
        p->charFlags.anim0 = 19;
    } else {
        p->charFlags.anim0 = 20;
    }

    {
        PlayerSpriteInfo *playerSprite = p->spriteInfoBody;
        playerSprite->s.frameFlags &= ~0x4000;
    }

    p->callback = sub_800DF5C;
    sub_800DF5C(p);
}

void Player_8006B8C(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;
    s32 qSpeed;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~0x20;
    p->moveState |= MOVESTATE_IN_AIR;
    sub_8012FA0(p);

    p->charFlags.anim0 = 0x6C;

    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }

    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * var_r3) >> 8);
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= ~0x4000;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_8006C70(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u16 temp_r0;
    u16 var_r0;
    u32 temp_r1;

    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && ((s32)p->qSpeedAirY >= 0)) {
            var_r0 = 1;
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            if (0x4000 & p->spriteInfoBody->s.frameFlags) {
                p->spriteInfoBody->s.frameFlags &= ~0x4000;
                p->charFlags.state1 = 2;
            }
        }
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8006CF0(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;
    s32 qSpeed;
    s32 theta;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~0x20;
    p->moveState |= MOVESTATE_IN_AIR;
    sub_8012FA0(p);

    p->charFlags.anim0 = 11;

    theta = 768;
    var_r3 = 0x4E0;
    p->qSpeedAirX += ((COS_24_8(theta) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(theta) * var_r3) >> 8);
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= ~0x4000;
    p->callback = Player_800EB5C;
    Player_800EB5C(p);
}

void Player_8006DB8(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r5;
    u8 v;

    var_r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);

    p->moveState |= (MOVESTATE_20000000 | MOVESTATE_IN_AIR);
    p->moveState |= var_r5;

    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    p->idleAndCamCounter = 0xa;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->charFlags.anim0 = 0x6C;
        p->callback = Player_8006E70;
        Player_8006E70(p);
    }
}

void Player_8006E70(Player *p)
{
    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && ((s32)p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            if (0x4000 & p->spriteInfoBody->s.frameFlags) {
                p->spriteInfoBody->s.frameFlags &= ~0x4000;
                p->charFlags.state1 = 2;
            }
        }
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);

            if (--p->idleAndCamCounter == 0) {
                p->callback = Player_8006F98;
            }
        }
    }
}

void Player_8006F08(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r5;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT | MOVESTATE_8 | MOVESTATE_2);

    p->moveState |= (MOVESTATE_IN_AIR);

    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    p->charFlags.anim0 = 0x6C;

    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_8006F98(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s32 var_r5;
    u8 v;

    var_r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);

    p->moveState |= (MOVESTATE_IN_AIR);
    p->moveState |= var_r5;

    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->charFlags.anim0 = 0x6C;
        p->callback = Player_8006C70;
        Player_8006C70(p);
    }
}

void Player_8007044(Player *p)
{
    PlayerSpriteInfo *playerSprite;
    s32 var_r5;
    u8 v;

    var_r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);

    p->moveState |= (MOVESTATE_IN_AIR);
    p->moveState |= var_r5;

    if (p->moveState & 0x10000) {
        s32 qSpeed = p->qSpeedAirY;
        p->qSpeedAirY = -qSpeed;
    }

    p->charFlags.unk2C_04 = 1;
    p->charFlags.state1 = 0;
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->charFlags.anim0 = 0x6D;
        p->callback = sub_800DFA0;
        sub_800DFA0(p);
    }
}

void Player_8007110(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x6E;
    p->charFlags.state1 = 0;
    p->callback = sub_800DFA0;
    sub_800DFA0(p);
}

void Player_80071A8(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_8007240(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x18;
    p->callback = sub_800DFA0;
    sub_800DFA0(p);
}

void Player_80072D8(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);
    p->moveState |= MOVESTATE_IN_AIR;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->charFlags.anim0 = 0x7F;
    p->callback = sub_800DFA0;
    sub_800DFA0(p);
}

void Player_8007368(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    s32 var_r1;
    u32 temp_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState = (p->moveState & ~0x20) | 4;
    sub_8012FA0(p);
    switch (p->charFlags.character) {
        case CHARACTER_SONIC:
            p->charFlags.anim0 = 0xAD;
            break;
        case CHARACTER_AMY:
            p->charFlags.anim0 = 0x107;
            break;
    }
    if (p->moveState & 0x80) {
        var_r1 = 0x2A0;
    } else {
        var_r1 = 0x4E0;
    }
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0 - var_r1;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = Player_8007430;
    Player_8007430(p);
}

void Player_8007430(Player *p)
{
    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && (p->spriteInfoBody->s.frameFlags & 0x4000)) {
            p->charFlags.state1 = 1;
        } else if ((p->charFlags.state1 == 1) && ((s32)p->qSpeedAirY >= 0)) {
            p->spriteInfoBody->s.frameFlags &= ~0x4000;
            p->charFlags.state1 = 2;
        }
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_80074B8(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    s32 var_r1;
    u32 temp_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->spriteInfoBody->s.frameFlags &= ~0x4000;
    Player_8012FE0(p);

    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->moveState |= MOVESTATE_IN_AIR;

    switch (p->charFlags.character) {
        case CHARACTER_CREAM:
            p->charFlags.anim0 = 0xC6;
            break;
        case CHARACTER_TAILS:
            p->charFlags.anim0 = 0xDC;
            break;
    }
    if (p->moveState & MOVESTATE_80) {
        var_r1 = 0x2A0;
    } else {
        var_r1 = 0x4E0;
    }
    p->callback = Player_8007560;
    Player_8007560(p);
}

void Player_8007560(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1 = 1;
            if (p->moveState & 1) {
                if (p->qSpeedAirX > -Q(3)) {
                    p->qSpeedAirX -= Q(3);

                    if (p->qSpeedAirX < -Q(5)) {
                        p->qSpeedAirX = -Q(5);
                    }
                }
            } else if (p->qSpeedAirX < Q(3)) {
                p->qSpeedAirX += Q(3);
                if (p->qSpeedAirX > +Q(5)) {
                    p->qSpeedAirX = +Q(5);
                }
            }
            p->qSpeedAirY = -Q(3);
        }
    }

    if (p->charFlags.state1 != 0) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8007620(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1_2;
    u8 *temp_r1;

    if (p->unkB8 != -1U) {
        SongStopCheck_inline(p, SE_281);

        p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                          | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                          | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
        p->charFlags.someFlag0 = 0;
        p->charFlags.state0_highValue = 0;
        p->unk99 = 0;
        p->unk9A = 0;
        p->qCamOffsetY = 0;
        p->moveState |= 0x8006;
        temp_r2 = p->spriteInfoBody;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->charFlags.anim0 = 0x14;
        sub_8012FC0(p);
        temp_r1_2 = (s16)p->unkC0;
        p->qSpeedAirX = COS(temp_r1_2) >> 4; // = COS_24_8(temp_r1_2) * 4;
        p->qSpeedAirY = SIN(temp_r1_2) >> 4; // = SIN_24_8(temp_r1_2) * 4;
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        p->idleAndCamCounter = 0x1E;
        Player_PlaySong(p, 0x70U);
        Player_BoostModeEngage(p);
        p->callback = Player_8007714;
        Player_8007714(p);
    }
}

void Player_8007714(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 theta;
    u8 *temp_r1;

    if ((--p->idleAndCamCounter == 0) || (p->unkB8 == -1)) {
        p->moveState &= 0xFFFF7FFF;
        p->callback = Player_800DB30;
        Player_BoostModeDisengage(p);
        return;
    }

    theta = (s16)p->unkC0;
    p->qSpeedAirX = COS(theta) >> 3; // = COS_24_8(theta) * 2;
    p->qSpeedAirY = SIN(theta) >> 3; // = SIN_24_8(theta) * 2;
    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        s32 qSpeedAirY = p->qSpeedAirY;
        p->qSpeedAirY = -qSpeedAirY;
    }

    sub_801350C(p);
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void Player_80077CC(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1_2;
    u8 *temp_r1;
    u32 moveState = (p->moveState & 0x24);

    if (moveState || !(p->moveState & 0x800)) {
        SongStopCheck_inline(p, SE_281);

        p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                          | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                          | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
        p->charFlags.someFlag0 = 0;
        p->charFlags.state0_highValue = 0;
        p->unk99 = 0;
        p->unk9A = 0;
        p->qCamOffsetY = 0;
        p->moveState |= 0x800000;
        temp_r2 = p->spriteInfoBody;
        sub_8012FA0(p);
        p->unk5A = 0;

        if (p->qSpeedGround) {
            p->charFlags.anim0 = 9;
        } else if (p->moveState & MOVESTATE_40) {
            p->charFlags.anim0 = 33;
            p->callback = Player_80077CC;
            return;
        } else {
            p->charFlags.anim0 = 3;
        }

        p->charFlags.unk2D_0 = 0;
        p->callback = Player_8007898;
        Player_8007898(p);
    }
}

void Player_8007898(Player *p)
{
    u32 temp_r1 = p->moveState & 0x24;

    if ((temp_r1 || !(p->moveState & MOVESTATE_800)) && sub_8014BC4(p) && !sub_8014D70(p) && !sub_8014A60(p) && !sub_8016EDC(p)) {
        sub_8005800(p);
        sub_8015144(p);
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        if (!sub_801480C(p)) {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (!sub_8015064(p)) {
                sub_800D7C8(p);
            }
        }
    }
}

void Player_8007930(Player *p)
{
    PlayerUnkC4 *unkC4 = TASK_DATA(gCurTask);
    Player *partner;
    Task *temp_r0_2;
    s16 temp_r1_3;
    s16 colorId;
    s32 temp_r2_2;
    s32 screenY;
    s32 screenX;
    u16 temp_r1_2;
    u16 temp_r1_4;
    u32 temp_r1;
    void *temp_r0;

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->moveState &= 0xFDFFFEFF;
    if (partner->moveState & MOVESTATE_1000000) {
        p->moveState &= ~0x1000000;
        p->callback = Player_8005380;
        return;
    }
    p->moveState &= ~0x40;
    p->moveState |= MOVESTATE_1000000;
    p->charFlags.anim0 = 0xB;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk42 = 0;
    p->unk44 = 0;
    p->qCamOffsetY = 0;
    p->layer = partner->layer;
    p->moveState = (p->moveState & 0xFFFEFFFE) | (partner->moveState & 0x10001);

    for (colorId = 0; colorId < 16; colorId++) {
        p->palette[colorId] = gObjPalette[unkC4->playerId * 16 + colorId];
    }

    sub_8016F28(p);
    if ((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5) || (p->charFlags.someIndex == 4)) {
        screenX = I(p->qWorldX) - gCamera.x;
        screenY = I(p->qWorldY) - gCamera.y;
    } else {
        screenX = I(partner->qWorldX) - gCamera.x;
        screenY = I(partner->qWorldY) - gCamera.y;
    }
    p->qUnk38 = partner->qWorldX;
    p->qUnk3C = partner->qWorldY;

    // TODO: cam-range!
    if (((u32)(screenX + 32) <= (DISPLAY_WIDTH + 32) + 32) && (screenY >= -32) && (screenY <= (DISPLAY_HEIGHT + 32))) {
        p->qUnkF0 = p->qWorldY;
        p->callback = Player_8007B00;
        Player_8007B00(p);
    } else {
        p->callback = Player_8007C28;
        Player_8007C28(p);
    }

    if (gStageData.task98 != NULL) {
        StageDataTask98 *task98 = TASK_DATA(gStageData.task98);
        screenX = I(task98->qWorldX) - gCamera.x;
        screenY = I(task98->qWorldY) - gCamera.y;

        // TODO: cam-range!
        if ((((u32)(screenX + 32) > (DISPLAY_WIDTH + 32) + 32)) || (screenY < -32) || (screenY > (DISPLAY_HEIGHT + 32))) {
            task98->qWorldX = partner->qWorldX - Q(150);
            task98->qWorldY = partner->qWorldY;
        }
    }
}

void Player_8007B00(Player *p)
{
    Player *partner;
    s16 temp_r0;
    s32 temp_r1_2;
    s16 *temp_r1;
    s32 temp_r3;
    s32 temp_r4_2;
    s32 qWorldY;
    s32 var_r1;
    s32 var_r2;
    u32 temp_r1_3;
    s32 qWorldX;

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->layer = partner->layer;
    p->moveState = (p->moveState & 0xFFFEFFFE) | (partner->moveState & 0x10001);
    if (!(partner->moveState & MOVESTATE_1000000)) {
        p->qUnk38 = partner->qWorldX;
        p->qUnk3C = partner->qWorldY;
    }
    qWorldX = p->qUnk38;
    qWorldY = p->qUnk3C;

    if (++p->unk44 <= 0x1E) {
        s32 qUnkF0 = p->qUnkF0;

        if (qUnkF0 < qWorldY) {
            var_r2 = qUnkF0 - Q(32);
        } else {
            var_r2 = qWorldY - Q(32);
        }
        temp_r1_2 = SIN(p->unk44 * 16);
        if (p->unk44 > 0xF) {
            var_r1 = (temp_r1_2 * (var_r2 - qWorldY)) >> 0xE;
            p->qWorldY = qWorldY;
        } else {
            var_r1 = (temp_r1_2 * (var_r2 - qUnkF0)) >> 0xE;
            p->qWorldY = qUnkF0;
        }
        p->qWorldY += var_r1;
        p->qWorldX += partner->qSpeedAirX;
        p->qWorldX += ((qWorldX - p->qWorldX) / (30 - p->unk44));
    } else {
        p->qWorldX = partner->qWorldX;
        p->qWorldY = partner->qWorldY;
        if (!(MOVESTATE_400000 & partner->moveState)) {
            if (!(partner->moveState & MOVESTATE_800000)) {
                p->callback = Player_8005380;
            } else {
                p->callback = Player_8007DF4;
            }
        }
    }
}

void Player_8007C28(Player *p)
{
    Player *partner;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r0_2;
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;
    u32 var_r0_3;
    u32 var_r0_4;
    void (*var_r0)(Player *);

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    var_r5 = 0;
    p->layer = partner->layer;
    p->moveState = (p->moveState & ~(MOVESTATE_GRAVITY_SWITCHED | MOVESTATE_FACING_LEFT))
        | (partner->moveState & (MOVESTATE_GRAVITY_SWITCHED | MOVESTATE_FACING_LEFT));
    if (!(partner->moveState & MOVESTATE_1000000)) {
        p->qUnk38 = partner->qWorldX;
        p->qUnk3C = partner->qWorldY;
    }

    if (p->qWorldX < p->qUnk38) {
        var_r5 = 1;
    }
    p->qWorldX = p->qUnk38;
    p->qWorldY = p->qUnk3C;
    if (++p->unk44 <= 30) {
        p->qWorldY -= SIN(p->unk44 * 16) >> 1;
        if (var_r5 != 0) {
            p->qWorldX = p->qWorldX - ((30 - p->unk44) * Q(5));
        } else {
            p->qWorldX = p->qWorldX + ((30 - p->unk44) * Q(5));
        }

        if (p->qWorldX < 0) {
            p->qWorldX = 0;
        } else {
            var_r0_3 = Q(gUnknown_080D05A8[gStageData.currMapIndex][0]) - 1;

            if (p->qWorldX > var_r0_3) {
                p->qWorldX = var_r0_3;
            }
        }

        if (p->qWorldY < 0) {
            p->qWorldY = 0;
        } else {
            var_r0_4 = Q(gUnknown_080D05A8[gStageData.currMapIndex][1]) - 1;

            if (p->qWorldY > var_r0_4) {
                p->qWorldY = var_r0_4;
            }
        }

        if (p->qWorldX < 0) {
            p->qWorldX = 0;
        }

        if (p->charFlags.someIndex == 1) {
            var_r4 = I(p->qWorldX) - (DISPLAY_WIDTH / 2);
            var_r2 = I(p->qWorldY) - (DISPLAY_HEIGHT / 2);
            if (var_r4 < 0) {
                var_r4 = 0;
            } else {
                temp_r0_2 = gUnknown_080D05A8[gStageData.currMapIndex][0] - 0xF1;
                if (var_r4 > temp_r0_2) {
                    var_r4 = temp_r0_2;
                }
            }
            if (var_r2 < 0) {
                var_r2 = 0;
            } else {
                temp_r0_3 = gUnknown_080D05A8[gStageData.currMapIndex][1] - 0xA1;
                if (var_r2 > temp_r0_3) {
                    var_r2 = temp_r0_3;
                }
            }
            gCamera.x = var_r4;
            gCamera.unk28 = var_r4;
            gCamera.y = var_r2;
            gCamera.unk2C = var_r2;
        }
    } else {
        if (!(MOVESTATE_400000 & partner->moveState)) {
            if (!(partner->moveState & MOVESTATE_800000)) {
                p->callback = Player_8005380;
            } else {
                p->callback = Player_8007DF4;
            }
        }
    }
}

void Player_8007DF4(Player *p)
{
    Player *partner;
    s16 *temp_r1;
    s32 temp_r2;
    s32 var_r1;

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->layer = partner->layer;
    p->moveState = (p->moveState & 0xFFFEFFFE) | (partner->moveState & 0x10001);
    temp_r2 = partner->qWorldX;
    p->qWorldX = temp_r2;
    if (partner->moveState & 1) {
        p->qWorldX += -Q(10);
    } else {
        p->qWorldX += +Q(10);
    }

    p->qWorldY = partner->qWorldY;
    p->unk44++;
    if (MOVESTATE_2000000 & partner->moveState) {
        sub_800BF78(partner);
        p->moveState &= 0xFE7FFFFF;
        Player_StopSong(p, SE_TAGACTION_BUILDUP);
        return;
    }
    if (!(partner->moveState & MOVESTATE_800000)) {
        p->qWorldX = partner->qWorldX;
        p->qWorldY = partner->qWorldY;
        p->callback = Player_8005380;
    }
}

void Player_8007EAC(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1_2;
    s32 var_r5;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= 0xDFFFFFFF;
    p->moveState |= 0x800004;
    p->charFlags.anim0 = 0x15;
    if (p->moveState & 0x80) {
        var_r5 = 0x2A0;
    } else {
        var_r5 = 0x4E0;
    }
    sub_8012FA0(p);
    sub_80063B4(p, var_r5);

    p->callback = Player_8007F4C;
    Player_8007F4C(p);
}

void Player_8007F4C(Player *p)
{
    s16 var_r5;

    var_r5 = -Q(3);
    if (p->moveState & MOVESTATE_80) {
        var_r5 = -Q(1.5);
    }
    if (!sub_8017058(p) && sub_8014BC4(p)) {
        if ((p->qSpeedAirY < var_r5) && !(p->keyInput & gStageData.buttonConfig.jump)) {
            p->qSpeedAirY = var_r5;
            p->callback = sub_800EEC4;
        } else if (p->qSpeedAirY > 0) {
            p->callback = sub_800EEC4;
        }
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8007FE8(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1_2;
    s32 var_r5;
    u8 *temp_r1;
    s32 r5 = p->moveState & 0x800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= r5;

    if (p->moveState & 0x800000) {
        p->charFlags.anim0 = 5;
    } else {
        p->charFlags.anim0 = 2;
    }

    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    p->idleAndCamCounter = 0x28;
    p->callback = Player_8008080;
    Player_8008080(p);
}

void Player_8008080(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    Sprite2 *s;
    s16 temp_r1;
    s16 temp_r6_2;
    s16 var_r0_2;
    s16 var_r5;
    s16 *temp_r2_2;
    s16 *temp_r2_3;
    s16 *var_r1;
    s32 temp_r1_2;
    u16 charAnim;
    void (*var_r0)(Player *);
    void (*var_r0_3)(Player *);

    s = &p->spriteInfoBody->s;
    charAnim = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];
    if (sub_8016D88(p)) {
        p->moveState &= 0xFF7FFFFF;
        p->qCamOffsetY = 0;
        return;
    }
    if (p->moveState & MOVESTATE_800000) {
        if (sub_8014BC4(p) == 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        sub_8014BC4(p);
    }

    if (!(p->moveState & MOVESTATE_800000)) {
        p->charFlags.anim0 = 2;
        if (sub_8015568(p) != 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        p->charFlags.anim0 = 5;
    }

    if ((DPAD_ANY & p->keyInput) == 0) {
        u16 state1 = p->charFlags.state1;
        if (((charAnim == 2) && (state1 == 0))) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteInfoBody;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        } else if ((charAnim == 5) && (p->charFlags.state1 == 0)) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteInfoBody;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        }
    } else if ((DPAD_ANY & p->keyInput) != DPAD_DOWN) {
        if (p->moveState & MOVESTATE_800000) {
            p->callback = Player_80077CC;
        } else {
            p->callback = Player_8005380;
        }
        p->qCamOffsetY = 0;
    }
    if (((charAnim == 2) || (charAnim == 5)) && (p->charFlags.state1 == 0)) {
        if (p->idleAndCamCounter > 0) {
            p->idleAndCamCounter = p->idleAndCamCounter - 1;
        } else if (p->moveState & 0x10000) {
            if (p->qCamOffsetY > -Q(3.75)) {
                p->qCamOffsetY -= 0x20;
            }
        } else {
            if (p->qCamOffsetY <= 0x3BF) {
                p->qCamOffsetY += 0x20;
            }
        }
    } else if ((charAnim == 2) || (charAnim == 5)) {
        if (p->charFlags.state1 == 1) {
            if (p->moveState & 0x10000) {
                if (p->qCamOffsetY < 0) {
                    p->qCamOffsetY += 0x20;
                }
            } else {
                if (p->qCamOffsetY > 0) {
                    p->qCamOffsetY -= 0x20;
                }
            }
        } else {
            goto block_48;
        }
    }
block_40:
    if ((p->charFlags.state1 == 1) && (s->frameFlags & 0x4000)) {
        if (charAnim == 2) {
            p->callback = Player_8005380;
        } else {
            if (charAnim != 5) {
                p->callback = Player_8005380;
                return;
            }
            p->callback = Player_80077CC;
        }

        p->qCamOffsetY = 0;
    }
block_48:
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);

        if (sub_801480C(p)) {
            p->qCamOffsetY = 0;
        } else {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (p->moveState & MOVESTATE_IN_AIR) {
                p->qCamOffsetY = 0;
            }
        }
    }
}

void Player_80082BC(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1_2;
    s32 var_r5;
    u8 *temp_r1;
    s32 r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= r5;

    if (p->moveState & MOVESTATE_800000) {
        p->charFlags.anim0 = 4;
    } else {
        p->charFlags.anim0 = 1;
    }

    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    p->idleAndCamCounter = 0x28;
    p->callback = Player_8008354;
    Player_8008354(p);
}

void Player_8008354(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    Sprite2 *s;
    s16 temp_r1;
    s16 temp_r6_2;
    s16 var_r0_2;
    s16 var_r5;
    s16 *temp_r2_2;
    s16 *temp_r2_3;
    s16 *var_r1;
    s32 temp_r1_2;
    u16 charAnim;
    void (*var_r0)(Player *);
    void (*var_r0_3)(Player *);

    s = &p->spriteInfoBody->s;
    charAnim = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];

    if (p->moveState & MOVESTATE_800000) {
        if (sub_8014BC4(p) == 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        sub_8014BC4(p);
    }

    if (!(p->moveState & MOVESTATE_800000)) {
        p->charFlags.anim0 = 1;
        if (sub_8015568(p) != 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        p->charFlags.anim0 = 4;
    }

    if ((DPAD_ANY & p->keyInput) == 0) {
        u16 state1 = p->charFlags.state1;
        if (((charAnim == 1) && (state1 == 0))) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteInfoBody;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        } else if ((charAnim == 4) && (p->charFlags.state1 == 0)) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteInfoBody;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        }
    } else if ((DPAD_ANY & p->keyInput) != DPAD_UP) {
        if (p->moveState & 0x800000) {
            p->callback = Player_80077CC;
        } else {
            p->callback = Player_8005380;
        }
        p->qCamOffsetY = 0;
    }
    if (((charAnim == 1) || (charAnim == 4)) && (p->charFlags.state1 == 0)) {
        if (p->idleAndCamCounter > 0) {
            p->idleAndCamCounter = p->idleAndCamCounter - 1;
        } else if (p->moveState & 0x10000) {
            if (p->qCamOffsetY < +Q(4.3125)) {
                p->qCamOffsetY += 0x20;
            }
        } else {
            if (p->qCamOffsetY > -Q(4.3125)) {
                p->qCamOffsetY -= 0x20;
            }
        }
    } else if ((charAnim == 1) || (charAnim == 4)) {
        if (p->charFlags.state1 == 1) {
            if (p->moveState & 0x10000) {
                if (p->qCamOffsetY > 0) {
                    p->qCamOffsetY -= 4;
                }
            } else {
                if (p->qCamOffsetY < 0) {
                    p->qCamOffsetY += 4;
                }
            }
        } else {
            goto block_48;
        }
    }
block_40:
    if ((p->charFlags.state1 == 1) && (s->frameFlags & 0x4000)) {
        if (charAnim == 1) {
            p->callback = Player_8005380;
        } else {
            if (charAnim != 4) {
                p->callback = Player_8005380;
                return;
            }
            p->callback = Player_80077CC;
        }

        p->qCamOffsetY = 0;
    }
block_48:
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);

        if (sub_801480C(p)) {
            p->qCamOffsetY = 0;
        } else {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (p->moveState & MOVESTATE_IN_AIR) {
                p->qCamOffsetY = 0;
            }
        }
    }
}

// TODO: Fake-match!
void Player_800856C(Player *p)
{
    s32 var_r0;
    s32 var_r5;

    if (!sub_8014BC4(p)) {
        if (p->moveState & 1) {
            if (DPAD_SIDEWAYS & p->keyInput) {
                if (DPAD_RIGHT & p->keyInput) {
                    p->moveState &= ~1;
                }
                var_r0 = 1;
            } else {
                var_r0 = 2;
            }
        } else {
            if (DPAD_SIDEWAYS & p->keyInput) {
                if (DPAD_LEFT & p->keyInput) {
                    p->moveState |= 1;
                }

                var_r0 = 1;
            } else {
                var_r0 = 2;
            }
        }

#ifndef NON_MATCHING
        asm("mov %0, %1" : "=r"(var_r5) : "r"(var_r0));
#else
        var_r5 = var_r0;
#endif

        if (var_r5 != 0) {
            sub_8005800(p);
            if (var_r5 == 1) {
                p->callback = Player_8005380;
                sub_8015228(p);
                if (p->callback != &sub_800DFEC) {
                    return;
                }

                p->callback = Player_800856C;
            } else {
                p->charFlags.anim0 = 0x22;
            }
        }

        if ((p->keyInput & gStageData.buttonConfig.trick) && (p->charFlags.anim0 == 0x22)) {
            p->charFlags.anim0 = 0;
        }
        sub_8015144(p);
        if (!sub_8015064(p)) {
            Player_801479C(p);
            sub_8016D30(p);
            sub_8014E70(p);
            if (!sub_801480C(p)) {
                sub_8012EB8(p);
                sub_8016E00(p);
            }
        }
    }
}

void Player_8008654(Player *p)
{
    u32 temp_r2;
    u32 var_r2;

    if (!sub_8014BC4(p)) {
        temp_r2 = p->moveState;
        if (p->moveState & 1) {
            if (0x10 & p->keyInput) {
                p->moveState &= ~1;
                p->callback = sub_800DFEC;
                return;
            }
        } else if (0x20 & p->keyInput) {
            p->moveState |= 1;
            p->callback = sub_800DFEC;
            return;
        }

        sub_8005800(p);
        p->callback = Player_8005380;
        sub_8015228(p);

        if (p->callback == sub_800E01C) {
            p->callback = Player_8008654;
            if (p->qSpeedGround == 0) {
                p->charFlags.anim0 = 0x23;
            }
            if ((p->keyInput & gStageData.buttonConfig.trick) && (p->charFlags.anim0 == 0x23)) {
                p->charFlags.anim0 = 0;
            }
            sub_8015144(p);
            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8014E70(p);
                if (!sub_801480C(p)) {
                    sub_8012EB8(p);
                    sub_8016E00(p);
                }
            }
        }
    }
}

void Player_800872C(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_10 | MOVESTATE_2;
    p->charFlags.anim0 = 10;
    sub_8012FC0(p);

    p->Spindash_Velocity = Q(2);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;

    sub_8016F28(p);
    sub_80170A0(p);

    Player_PlaySong(p, SE_SPIN_ATTACK);

    p->callback = Player_80087CC;
    Player_80087CC(p);
}

// (92.40%) https://decomp.me/scratch/z8Vt4
NONMATCH("asm/non_matching/game/stage/player__Player_80087CC.inc", void Player_80087CC(Player *p))
{
    Sprite2 *temp_r8;
    s16 temp_r1;
    s32 qSpeed;
    s16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r7;
    s16 qVelocity;

    temp_r8 = &p->spriteInfoBody->s;
    temp_r7 = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];
    if (!(0x80 & p->keyInput)) {
        s16 velocityLutIndex;
        p->moveState &= ~0x10;
        velocityLutIndex = (s32)(p->Spindash_Velocity << 0x10) >> 0x18;
        if (velocityLutIndex > 8) {
            velocityLutIndex = 8;
        }

        qSpeed = gUnknown_080CE5B8[velocityLutIndex];
        if (p->moveState & 1) {
            qSpeed = -qSpeed;
        }
        p->qSpeedGround = qSpeed;
        p->callback = Player_800891C;
        Player_PlaySong(p, 0x6EU);
        return;
    }

    qVelocity = p->Spindash_Velocity;
    temp_r1 = (s16)qVelocity;
    if (temp_r1 != 0) {
        temp_r0 = temp_r1 - (qVelocity >> 5);
        qVelocity = temp_r0;
        if (temp_r0 << 0x10 <= 0) {
            qVelocity = 0;
        }
    }
    if (p->keyInput2 & gStageData.buttonConfig.jump) {
        qVelocity += Q(2);
        temp_r0 = qVelocity;
        if (temp_r0 < Q(8)) {
            qVelocity = Q(8);
        }

        p->charFlags.state1 = 1;
        p->charFlags.someFlag1 = 1;
        Player_PlaySong(p, SE_SPIN_ATTACK);
    }
    p->Spindash_Velocity = qVelocity;
    if ((temp_r7 == 10) && (p->charFlags.state1 == 1) && (temp_r8->frameFlags & 0x4000)) {
        p->charFlags.state1 = 0;
    }
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->moveState & 4) {
            p->callback = Player_8005380;
        }
    }
}
END_NONMATCH

void Player_800891C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1_2;
    u8 *temp_r1;
    u32 moveState = (p->moveState & 0x24);

    if (moveState || !(p->moveState & 0x800)) {
        SongStopCheck_inline(p, SE_281);

        p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                          | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                          | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
        p->charFlags.someFlag0 = 0;
        p->charFlags.state0_highValue = 0;
        p->unk99 = 0;
        p->unk9A = 0;
        p->qCamOffsetY = 0;
        p->moveState |= MOVESTATE_2;
        sub_8012FC0(p);
        sub_8016F28(p);
        p->charFlags.anim0 = 11;
        p->spriteInfoBody->s.frameFlags &= ~0x4000;
        p->unk78[0] = 0;

        p->callback = Player_80089CC;
        Player_80089CC(p);
    }
}

void Player_80089CC(Player *p)
{
    u32 moveState = p->moveState;

    if ((((MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR) & p->moveState) || !(moveState & MOVESTATE_800)) && !sub_8014BC4(p)) {
        if (p->qSpeedGround > 0) {
            p->qSpeedGround = p->qSpeedGround - 8;
        } else if (p->qSpeedGround < 0) {
            p->qSpeedGround = p->qSpeedGround + 8;
        }
        if ((u16)(p->qSpeedGround + Q(0.5) - 1) < Q(1) - 1) {
            p->qSpeedGround = 0;
        }

        if (p->qSpeedGround == 0) {
            Player_8005380(p);
        } else {
            sub_8015144(p);
            if (!sub_8015064(p)) {
                Player_801479C(p);
                if (p->moveState & MOVESTATE_IN_AIR) {
                    sub_8016E50(p);
                }
                sub_8016D30(p);
                sub_8014E70(p);

                if (p->unk78[0] != 0) {
                    p->unk78[0] -= 1;
                } else if (sub_801480C(p)) {
                    return;
                }

                sub_8012EB8(p);
                sub_8016E00(p);
            }
        }
    }
}

// (90.44%) https://decomp.me/scratch/FrTJ0
NONMATCH("asm/non_matching/game/stage/player__Player_8008A8C.inc", void Player_8008A8C(Player *p))
{
    Vec2_16 *temp_r1;
    Vec2_16 *temp_r1_2;
    s16 temp_r0;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 var_r1;
    s32 var_r6;

    if (++p->idleAndCamCounter > 0x1F) {
        p->qCamOffsetY = 0;
        temp_r0_2 = (p->moveState & ~(0x22000040)) | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
        return;
    }
    if (gUnknown_03001060.unk7 != gUnknown_03001060.unk8) {
        return;
    }

    //    var_r6 = 0;
    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        if (p == &gPlayers[var_r1]) {
            var_r6 = var_r1;
            break;
        }
    }

    var_r3 = (2 & var_r6) | (1 & ~(var_r6 & 1));
    if (!((gUnknown_03001060.unk7 >> var_r3) & 1)) {
        var_r3 &= 1;
    }
    if ((gUnknown_03001060.unk8 >> var_r3) & 1) {
        if (((gUnknown_03001060.unk9 >> (var_r3 + 4)) & 1) && ((gUnknown_03001060.unk9 >> (var_r6 + 4)) & 1)) {
            temp_r2_2 = var_r3 * 0x150;
            p->unkE8.x = I(gPlayers[var_r3].qWorldX);
            p->unkE8.y = I(gPlayers[var_r3].qWorldY);
            temp_r0_3 = GetBit(gUnknown_03001060.unk9, var_r3) | (-0x10 & p->unkEC);
            p->unkEC = temp_r0_3;
            var_r1_2 = ((gPlayers[var_r3].moveState >> 16) & 0x1) << 4;
            var_r0 = temp_r0_3 & 0xF;
        } else {
            u8 unk27, *pUnkEC;
            u8 unkEC;
            s32 mask;
            p->unkE8.x = I(p->qWorldX);
            p->unkE8.y = I(p->qWorldY);
            unk27 = p->layer;
            pUnkEC = &p->unkEC;
            unk27 = (0xF & unk27);
            unkEC = *pUnkEC;
            mask = -0x10;
            p->unkEC = (unkEC & mask) | unk27;
            var_r1_2 = ((p->moveState >> 16) & 0x1) << 4;
            var_r0 = p->unkEC & 0xF;
        }
        p->unkEC = (s8)(var_r0 | var_r1_2);
    }
    p->idleAndCamCounter = 0;
    p->callback = Player_800ED80;
}
END_NONMATCH

void Player_8008C1C(Player *p)
{
    p->qWorldX = Q((u16)p->unkE8.x);
    p->qWorldY = Q((u16)p->unkE8.y);
    p->layer = (u8)((u32)(p->unkEC << 0x1C) >> 0x1C);

    if (0xF0 & p->unkEC) {
        p->moveState |= MOVESTATE_GRAVITY_SWITCHED;
    } else {
        p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    }

    p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    gUnknown_03001060.unk8 = 0;
    gUnknown_03001060.unk9 = 0;

    if (&gPlayers[gStageData.playerIndex] == p) {
        gCamera.x = I(p->qWorldX) - (DISPLAY_WIDTH / 2);
        gCamera.unk28 = gCamera.x;
        gCamera.y = I(p->qWorldY) - (DISPLAY_HEIGHT / 2);
        gCamera.unk2C = gCamera.y;
    }
    p->callback = Player_800DAF4;
}

void Player_8008CD0(Player *p)
{
    s16 temp_r1;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_r0_3;
    u8 *temp_r1_2;

    p->framesInvulnerable = 120;
    sub_8016F28(p);
    p->moveState &= 0xFDFFFFFF;
    Player_BoostModeDisengage(p);
    Player_Flyer_SoundStop(p);

    if (ABS(p->qSpeedAirX) <= Q(2.5)) {
        temp_r1 = p->qSpeedAirX;
        if (temp_r1 > 0xA0) {
            var_r0 = -Q(1.5);
            p->qSpeedAirX = var_r0;
        } else if (temp_r1 < -Q(0.625)) {
            p->qSpeedAirX = Q(1.5);
        } else {
            if (p->moveState & MOVESTATE_FACING_LEFT) {
                p->qSpeedAirX = +Q(1.5);
            } else {
                p->qSpeedAirX = -Q(1.5);
            }
        }
        p->charFlags.anim0 = 0x66;
    } else {
        if (p->qSpeedAirX >= 0) {
            p->qSpeedAirX = +Q(1.5);
        } else {
            p->qSpeedAirX = -Q(1.5);
        }
        p->charFlags.anim0 = 0x66;
    }
    p->qSpeedAirY = -Q(3);
    if (MOVESTATE_80 & p->moveState) {
        p->qSpeedAirY >>= 1;
        p->qSpeedAirX >>= 1;
    }

    SongStopCheck_inline(p, SE_281);

    p->moveState &= 0xDC510BA1;
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    temp_r1_2 = &p->filler6A[0x2F];
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    if ((p->charFlags.character) == CHARACTER_CREAM) {
        if (p->unk54 == 0) {
            goto block_26;
        }
    } else if (p->unk54 != 0) {
    block_26:
        sub_801EBC0(4U, p);
    }
    p->moveState = (p->moveState | 4) & ~(0x28000022);
    sub_8012FA0(p);
    p->callback = Player_800E1E4;
    Player_800E1E4(p);
}

void Player_HitWithoutRingsUpdate(Player *p)
{
    s16 sp00[5];
    Player *partner;

    memcpy(&sp00, &gCharVoicesLifeLost[0], sizeof(gCharVoicesLifeLost));

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState &= ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_FACING_LEFT);
    p->moveState &= 0xEFFFFFFF;
    p->moveState |= 0x100;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0x67;
    p->unk13C = 0;
    p->unk13D = 0;
    p->framesInvincible = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = (p->moveState & 0x80) ? -Q(2.625) : -Q(4.875);
    p->qCamOffsetY = 0;

    if ((gStageData.levelTimer == (MAX_COURSE_TIME - 1)) && (gStageData.unk2 == 0)) {
        // TODO: You get longer invulnerability when you reached the max timer?
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 10);
    } else if ((p->moveState & MOVESTATE_80) && (gStageData.gameMode == 0)) {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 3);
    } else {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);
    }

    sub_8016F28(p);
    p->moveState &= ~(MOVESTATE_2000000);
    Player_PlaySong(p, SE_HIT_WITH_NO_RINGS);
    Player_PlaySong(p, sp00[p->charFlags.character]);
    if (gStageData.gameMode > 4U) {
        if (p->charFlags.someIndex == 1) {
            partner = &gPlayers[p->charFlags.partnerIndex];
            if (!(partner->moveState & MOVESTATE_100)) {
                sub_8009518(partner);
            }
            sub_80278DC();
            if (gStageData.gameMode == 5) {
                sub_8027878(gStageData.lives);
            }
        }
    }
    p->callback = sub_800913C;
    sub_800913C(p);
}

void Player_HitWithoutRings(Player *p)
{
    s16 sp00[NUM_CHARACTERS];
    Player *partner;

    memcpy(&sp00, &gCharVoicesLifeLost[0], sizeof(gCharVoicesLifeLost));

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState &= ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_FACING_LEFT);
    p->moveState &= 0xEFFFFFFF;
    p->moveState |= 0x100;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0x67;
    p->unk13C = 0;
    p->unk13D = 0;
    p->framesInvincible = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qCamOffsetY = 0;
    p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);

    sub_8016F28(p);
    p->moveState &= 0xFDFFFFFF;
    Player_PlaySong(p, SE_HIT_WITH_NO_RINGS);
    Player_PlaySong(p, sp00[p->charFlags.character]);
    if (gStageData.gameMode > 4U) {
        if (p->charFlags.someIndex == 1) {
            partner = &gPlayers[p->charFlags.partnerIndex];
            if (!(partner->moveState & MOVESTATE_100)) {
                sub_8009518(partner);
            }
            sub_80278DC();
            if (gStageData.gameMode == 5) {
                sub_8027878(gStageData.lives);
            }
        }
    }
    p->callback = sub_800913C;
    sub_800913C(p);
}

#define SUB_800913C_PSET(_player)                                                                                                          \
    (_player)->moveState = MOVESTATE_IGNORE_INPUT;                                                                                         \
    (_player)->qWorldX = Q(gStageData.respawnX);                                                                                           \
    (_player)->qWorldY = Q(gStageData.respawnY);                                                                                           \
    (_player)->qSpeedAirX = 0;                                                                                                             \
    (_player)->qSpeedAirY = 0;                                                                                                             \
    (_player)->qSpeedGround = 0;                                                                                                           \
    (_player)->charFlags.boostIsActive = 0;                                                                                                \
    (_player)->boostEffectCounter = 0;                                                                                                     \
    (_player)->layer = PLAYER_LAYER_BACK;                                                                                                  \
    (_player)->unk40 = 0;                                                                                                                  \
    (_player)->unk42 = 0;                                                                                                                  \
    (_player)->unk44 = 0;                                                                                                                  \
    (_player)->Spindash_Velocity = 0;                                                                                                      \
    (_player)->unk48 = 0;                                                                                                                  \
    (_player)->framesInvulnerable = 0;                                                                                                     \
    (_player)->framesInvincible = 0;                                                                                                       \
    (_player)->unk4E = 0;                                                                                                                  \
    (_player)->boostEffectCounter = 0;                                                                                                     \
    (_player)->idleAndCamCounter = 0;                                                                                                      \
    (_player)->unk54 = 0;                                                                                                                  \
    (_player)->unk59 = 0;                                                                                                                  \
    (_player)->unk5A = 0;                                                                                                                  \
    (_player)->unk5B = 0;                                                                                                                  \
    (_player)->unk5E = 0;                                                                                                                  \
    (_player)->unk60 = 0;                                                                                                                  \
    (_player)->unk62 = 0;                                                                                                                  \
    (_player)->unk64 = 0;                                                                                                                  \
    (_player)->unk66 = 0;                                                                                                                  \
    (_player)->unk68 = 0;

void sub_800913C(Player *p)
{
    Player *partner;
    u32 temp_r0;

    sub_8016E50(p);
    sub_8016D30(p);
    if (I(p->qWorldY) - gCamera.y > 0xD0) {
        p->qSpeedAirY = 0;
    }

    if (p->framesInvulnerable > 0) {
        return;
    }

    partner = &gPlayers[p->charFlags.partnerIndex];
    if (p->charFlags.someIndex == 2) {
        if (((s32)partner->framesInvulnerable > 0) && (gStageData.gameMode == 0)) {
            return;
        }
        if ((gStageData.gameMode == 0) && (gStageData.lives == 0) && (partner->moveState & 0x100)) {
            return;
        }
        p->qSpeedGround = 0;
        p->qSpeedAirY = 0;
        p->qSpeedAirX = 0;
        p->qWorldX = partner->qWorldX;
        p->qWorldY = partner->qWorldY;
        p->layer = partner->layer;
        p->framesInvulnerable = 0x78;
        p->unk56 = 0xE;
        p->unk57 = 0x3C;
        temp_r0 = p->moveState & ~MOVESTATE_100;
        p->moveState = temp_r0;
        p->moveState = (temp_r0 & ~MOVESTATE_GRAVITY_SWITCHED) | (partner->moveState & MOVESTATE_GRAVITY_SWITCHED);
        p->callback = Player_8005380;
        return;
    }

    if (gStageData.gameMode == 3) {
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_808723C(0, 2);
        return;
    }

    if (gStageData.gameMode == 4) {
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_808723C(0, 3);
        return;
    }

    if ((u32)gStageData.gameMode <= 5U) {
        if (gStageData.lives == 0) {
            if (gStageData.act != 9) {
                sub_8002414();
            }
            goto block_22;
        } else if (gStageData.act == 9) {
        block_22:
            p->callback = sub_800DF9C;
            return;
        }
        gStageData.lives--;
        if (((u32)gStageData.zone < 7) && ((u32)gStageData.act > 2U) && ((u32)gStageData.act < 7)) {
            gStageData.flagSpKey = 0;
        }
        partner = &gPlayers[p->charFlags.partnerIndex];
        if (partner->charFlags.someIndex == 2) {
            partner->framesInvulnerable = 0;
        }
        sub_8001D58(&sub_8002388, 0);
        return;
    }
    if (gStageData.unk4 == 5) {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 0.5);
        return;
    }

    SUB_800913C_PSET(p);
    p->unk56 = 14;
    p->unk57 = 60;

    gStageData.unkBD = 1;
    p->callback = Player_800522C;
    if (p->charFlags.someIndex == 1) {
        gStageData.rings = 1;
    }
    gStageData.unkBB = 7;
    MPlayStop(&gMPlayInfo_SE1);
    MPlayStop(&gMPlayInfo_SE2);
    MPlayStop(&gMPlayInfo_SE3);
    partner = &gPlayers[p->charFlags.partnerIndex];
    if (partner->charFlags.someIndex == 2) {
        SUB_800913C_PSET(partner);
        p->unk56 = 14; // TODO: Should these not be set to partner->?
        p->unk57 = 60;
        partner->callback = Player_800522C;
    }
    gCamera.x = gCamera.unk28 = gStageData.respawnX - (DISPLAY_WIDTH / 2);
    gCamera.y = gCamera.unk2C = gStageData.respawnY - (DISPLAY_HEIGHT / 2);
}

void sub_8009518(Player *p)
{
    Player *partner;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);

    p->moveState &= 0xEDFFFFFF;
    p->moveState &= ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_FACING_LEFT);
    p->moveState |= 0x100;
    p->charFlags.anim0 = 0xA2;
    p->unk13C = 0;
    p->unk13D = 0;
    p->framesInvincible = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;

    if ((gStageData.levelTimer == (MAX_COURSE_TIME - 1)) && (gStageData.unk2 == 0)) {
        // TODO: You get longer invulnerability when you reached the max timer?
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 10);
    } else {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);
    }

    p->callback = sub_80095E8;
    sub_80095E8(p);
}

void sub_80095E8(Player *p)
{
    Player *partner;
    u32 temp_r0;

    if (p->framesInvulnerable > 0) {
        return;
    }

    // partner = &gPlayers[p->charFlags.partnerIndex];

    if (gStageData.gameMode == GAME_MODE_TIME_ATTACK || gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_808723C(0, 2);
        return;
    }

    if (gStageData.gameMode != 6) {
        if ((gStageData.lives == 0) && (gStageData.act != 9)) {
            sub_8002414();
            p->callback = sub_800DF9C;
            return;
        } else {
            gStageData.lives--;
            sub_8001D58(sub_8002388, 0);
            return;
        }
    }

    MPlayStop(&gMPlayInfo_SE1);
    MPlayStop(&gMPlayInfo_SE2);
    MPlayStop(&gMPlayInfo_SE3);

    if (p->charFlags.someIndex == 1) {
        gStageData.rings = 1;
    }

    gStageData.unkBB = 7;

    SUB_800913C_PSET(p);

    p->unk56 = 14;
    p->unk57 = 60;
    gStageData.unkBD = 1;

    p->callback = Player_800522C;

    gCamera.x = gStageData.respawnX;
    gCamera.y = gStageData.respawnY;
}

void Player_8009780(Player *p)
{
    u16 sp00[NUM_CHARACTERS];
    PlayerSpriteInfo *playerSprite;

    memcpy(&sp00, &gUnknown_080CE5E8, 0xA);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    playerSprite = p->spriteInfoBody;
    playerSprite->s.frameFlags &= ~0x4000;
    sub_8012FA0(p);
    p->qSpeedGround = 0;
    p->moveState |= 0x8000;
    p->charFlags.anim0 = sp00[p->charFlags.character];
    p->unk5B = 0xA;

    if (p->charFlags.character == CHARACTER_AMY) {
        Player_8017D18(p);
    }

    p->callback = sub_800E2C8;
    sub_800E2C8(p);
}

void Player_8009850(Player *p)
{
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    p->moveState &= 0xFDFFFFFF;
    if (p->charFlags.anim0 != 0x66) {
        p->charFlags.anim0 = 0x66;
    }
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->callback = Player_800EB58;
}

void Player_80098D8(Player *p)
{
    Player *partner;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState & ~6) | MOVESTATE_20000;
    sub_8012FA0(p);

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    if ((p->charFlags.character == CHARACTER_SONIC) && (partner->charFlags.character == CHARACTER_AMY)) {
        p->charFlags.anim0 = 177;
    } else {
        p->charFlags.anim0 = 111;
    }

    if (p->qSpeedAirX > -Q(1) && p->qSpeedAirX < Q(1)) {
        if (p->qSpeedAirX < 0) {
            p->qSpeedGround = -Q(1);
        } else {
            p->qSpeedGround = +Q(1);
        }
    } else {
        p->qSpeedGround = p->qSpeedAirX;
    }

    p->layer = PLAYER_LAYER_FRONT;
    p->charFlags.unk2D_0 = p->unkA4;
    p->charFlags.unk2C_04 = 0;
    p->unk5A = 0;
    Player_PlaySong(p, SE_GRINDING);
    p->callback = sub_80099FC;
    sub_80099FC(p);
}

void sub_80099FC(Player *p)
{
    s32 var_r1;
    s8 *var_r2;
    u32 temp_r1;
    u32 var_r0;
    u8 var_r1_2;

    if (p->moveState & 4) {
        Player_StopSong(p, 0x72U);
        p->callback = Player_800DAF4;
    } else {
        sub_80151C4(p);
        if (sub_8015064(p)) {
            return;
        }
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014FA4(p);
        var_r1 = 1;
        if ((s32)p->qSpeedGround < 0) {
            var_r1 = 0xFF;
        }
        if ((s32)(var_r1 << 0x18) < 0) {
            p->moveState = p->moveState | 1;
        } else {
            p->moveState = p->moveState & ~1;
        }

        if ((sub_801480C(p) << 0x10) != 0) {
            p->moveState &= 0xFFFDFFFF;
            Player_StopSong(p, 0x72U);
            p->layer = PLAYER_LAYER_BACK;
            p->charFlags.unk2C_01 = 0;
            return;
        } else {
            sub_800D81C(p);
            sub_8012EB8(p);
            if ((p->qSpeedGround == 0) && (p->unk26 == 0)) {
                p->layer = PLAYER_LAYER_BACK;
                p->charFlags.unk2C_01 = 0;
                Player_StopSong(p, 0x72U);
                p->moveState &= 0xFFFDFFFF;
                Player_8012FE0(p);
                p->charFlags.anim0 = 0x18;
                p->callback = Player_800DAF4;
                return;
            }
        }
    }

    sub_8014BC4(p);
    if (MOVESTATE_20000 & p->moveState) {
        if (p->moveState & MOVESTATE_800000) {
            p->layer = PLAYER_LAYER_BACK;
            Player_StopSong(p, 0x72U);
            p->moveState &= ~MOVESTATE_20000;
            p->moveState |= 4;
            p->callback = sub_800E150;
        }
    }

    p->charFlags.unk2C_01 = 0;
}

void Player_8009B4C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u32 temp_r1;

    sub_8009D74(p);
    temp_r1 = p->moveState;
    if (temp_r1 & 0x800000) {
        p->moveState = (temp_r1 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r2 = p->spriteInfoBody;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6D;
    p->callback = sub_800DFA0;
    if ((sub_8014BC4(p) << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8009BF0(Player *p)
{
    sub_8009D74(p);
    if (p->moveState & 0x800000) {
        p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x18;
    p->callback = sub_800DFA0;
    if ((sub_8014BC4(p) << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8009C94(Player *p)
{
    sub_8009D74(p);
    p->qSpeedAirX += p->qSpeedAirX >> 1;
    p->qSpeedAirY += p->qSpeedAirY >> 1;
    p->charFlags.anim0 = 0x6D;
    p->callback = sub_800DFA0;

    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8009D04(Player *p)
{
    sub_8009D74(p);
    p->qSpeedAirX += p->qSpeedAirX >> 1;
    p->qSpeedAirY += p->qSpeedAirY >> 1;
    p->charFlags.anim0 = 0x18;
    p->callback = sub_800DFA0;

    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_8009D74(Player *p)
{
    PlayerSpriteInfo *temp_r2_2;
    s16 qSpeedFactorX;
    s32 temp_r6;
    s16 qSpeedFactorY;
    u32 moveState;
    u32 temp_r7;
    u8 temp_r0;

    temp_r0 = p->unkA4;
    temp_r7 = temp_r0 >> 4;
    temp_r6 = 0xF & temp_r0;
    moveState = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);
    p->moveState |= 4;
    p->moveState |= moveState;
    qSpeedFactorX = gUnknown_080CF470[temp_r7][0];
    qSpeedFactorY = gUnknown_080CF470[temp_r7][1];

    if (MOVESTATE_GRAVITY_SWITCHED & p->moveState) {
        qSpeedFactorY = -qSpeedFactorY;
    }

    if (qSpeedFactorX != 0) {
        p->qSpeedAirX = (qSpeedFactorX * gUnknown_080CF468[temp_r6]) >> 4;
        if (p->qSpeedAirX < 0) {
            p->moveState |= 1;
        } else if (p->qSpeedAirX > 0) {
            p->moveState &= ~1;
        }
    }

    if (qSpeedFactorY != 0) {
        p->qSpeedAirY = (qSpeedFactorY * gUnknown_080CF468[temp_r6]) >> 4;
    }
    temp_r2_2 = p->spriteInfoBody;
    temp_r2_2->s.frameFlags &= 0xFFFFBFFF;
    p->charFlags.unk2C_04 = 1;
    p->charFlags.state1 = 0;
    p->charFlags.unk2D_0 = 0;
}

void Player_8009E8C(Player *p)
{
    PlayerSpriteInfo *temp_r2_2;
    s16 qSpeedFactorX;
    s32 temp_r6;
    s16 qSpeedFactorY;
    u32 moveState;
    u32 temp_r7;
    u8 temp_r0;

    moveState = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT | MOVESTATE_COLLIDING_ENT);
    p->sprColliding = NULL;
    p->moveState |= 4;
    p->moveState |= moveState;
    sub_8012FA0(p);

    p->charFlags.unk2D_0 = 0;
    temp_r2_2 = p->spriteInfoBody;
    temp_r2_2->s.frameFlags &= ~0x4000;

    if (p->moveState & MOVESTATE_800000) {
        p->moveState &= ~0x2000002;
        p->moveState |= MOVESTATE_800000;
        p->charFlags.anim0 = 21;
        sub_8012FA0(p);
        p->spriteInfoBody->s.frameFlags &= ~0x4000;
        p->callback = sub_800E198;
        sub_800E198(p);
    } else {
        p->charFlags.anim0 = 108;
        p->charFlags.state1 = 0;
        p->callback = Player_8006C70;
        Player_8006C70(p);
    }
}

void Player_8009F7C(Player *p, s16 someX, s16 someY)
{
    PlayerSpriteInfo **temp_r5;
    PlayerSpriteInfo *temp_r1_2;
    PlayerSpriteInfo *temp_r1_4;
    u32 moveState;
    u32 temp_r1_3;
    u8 *temp_r0;

    moveState = p->moveState & MOVESTATE_800000;
    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT | MOVESTATE_COLLIDING_ENT);
    p->sprColliding = NULL;
    p->moveState |= 0xC;
    p->moveState |= moveState;
    temp_r5 = &p->spriteInfoBody;
    temp_r1_2 = *temp_r5;
    temp_r1_2->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedAirX += someX;
    p->qSpeedAirY = someY - Q(4.875);
    Player_PlaySong(p, 0x114U);
    temp_r1_3 = p->moveState;
    if (temp_r1_3 & 0x800000) {
        p->moveState = (temp_r1_3 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r1_4 = *temp_r5;
        temp_r1_4->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.unk2C_04 = 1;
    p->charFlags.anim0 = 0x6E;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800A094(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState | 6) & ~0x10000000;
    sub_8012FC0(p);
    p->charFlags.anim0 = 0x13;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800DF10;
    if ((sub_8014BC4(p) << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_800A168(Player *p)
{
    PlayerSpriteInfo *temp_r2_2;
    u8 *temp_r1;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState & ~6) | 0x30000000;
    sub_8012FC0(p);
    p->charFlags.anim0 = 0x7A;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    temp_r2_2 = p->spriteInfoBody;
    temp_r2_2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800DF9C;
    sub_800DF9C(p);
}

void Player_800A218(Player *p)
{
    PlayerSpriteInfo *temp_r2_2;
    u8 *temp_r1;
    u8 *temp_r2;
    u32 moveState = p->moveState & MOVESTATE_2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState & ~0x44) | moveState;

    if (!(p->moveState & MOVESTATE_2)) {
        p->charFlags.anim0 = 0x81;
    }
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = sub_800A2B8;
    sub_800A2B8(p);
}

void sub_800A2B8(Player *p)
{
    u16 theta;
    s32 var_r7;
    s16 var_r5;
    s32 cosValue;
    s32 cosValueB;
    s32 v;

    if (p->qWorldX < p->qUnk70) {
        var_r5 = I(p->qUnk70 - p->qWorldX);
        var_r7 = 1;
    } else {
        var_r5 = I(p->qWorldX - p->qUnk70);
        var_r7 = 0;
    }

    if (ABS(p->qSpeedGround) < Q(4)) {
        if (!(p->moveState & 2)) {
            p->callback = Player_8005380;
        } else {
            p->callback = Player_800DB30;
        }

        return;
    }

    sub_8005800(p);

    if (!sub_801480C(p)) {
        sub_8016D30(p);
        p->qSpeedAirX = p->qSpeedGround;
        theta = ((((var_r5 << 16) >> 6) + 0x1000) / 288);
        cosValue = COS(theta & 0x3FF);
        cosValueB = (0x26 - p->spriteOffsetY);
        v = cosValue;
        v *= cosValueB;
        v >>= 6;
        v -= Q(35);
        p->qWorldY = p->qUnk74 + v;

        if (!(p->moveState & 2)) {
            p->charFlags.anim0 = 0x81;
            p->charFlags.anim2 = gPlayerCharacterIdleAnims[p->charFlags.character] + 0x81;
            var_r5 = ((unsigned)((theta & 0x3FF) * 11) >> 10);
            if (var_r7 == 0) {
                p->charFlags.state1 = 00 + var_r5;
            } else {
                p->charFlags.state1 = 10 - var_r5;
            }
        } else {
            p->charFlags.anim0 = 0xB;
        }
    }
}

void Player_800A3C0(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFF5) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8A;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = Q(5);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = Player_800A438;
    Player_800A438(p);
}

void Player_800A438(Player *p)
{
    if (p->qSpeedAirY <= -Q(10)) {
        p->charFlags.unk2C_04 = 1;
        p->callback = Player_8006F98;
        p->moveState &= ~0x20;
        p->sprColliding = NULL;
        Player_PlaySong(p, 0x24FU);
    } else {
        if (p->qSpeedAirY > 0) {
            p->qSpeedAirY -= 24;
        } else if (p->qSpeedAirY > -Q(10)) {
            p->qSpeedAirY -= 80;
        }

        if (!sub_8015064(p)) {
            sub_8016D30(p);

            if ((p->qSpeedAirY > 0) && sub_801480C(p)) {
                p->moveState &= ~0x20;
                p->sprColliding = NULL;
            }
        }
    }
}

void Player_800A4C8(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFF1) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x89;
    p->charFlags.state1 = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = sub_800A540;
    sub_800A540(p);
}

void sub_800A540(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        p->qSpeedAirX = Q(3.5);
        p->qSpeedAirY = -Q(6);

        if (MOVESTATE_FACING_LEFT & p->moveState) {
            p->qWorldX += Q(20);
        } else {
            p->qSpeedAirX = -p->qSpeedAirX;
            p->qWorldX -= Q(20);
        }
        p->qWorldY -= Q(20);
        p->moveState = MOVESTATE_IN_AIR | (~(0x20000020) & p->moveState);
        p->sprColliding = NULL;
        p->charFlags.state1 = 1;
        p->callback = Player_800DAF4;
    }
}

void Player_800A5B0(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1);
    sub_8016F28(p);
    p->charFlags.anim0 = 0x85;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(1);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_PlaySong(p, SE_290);
    p->callback = sub_800A62C;
    sub_800A62C(p);
}

void sub_800A62C(Player *p)
{
    s32 var_r1;

    sub_8016D30(p);
    if (sub_801480C(p)) {
        Player_StopSong(p, SE_290);

        if (DPAD_LEFT & p->keyInput) {
            var_r1 = 0;
        } else {
            var_r1 = 1;
        }

        p->qSpeedAirX = Q(3);
        if (var_r1 == 0) {
            p->qSpeedAirX = -p->qSpeedAirX;
        }

        p->qWorldX += p->qSpeedAirX * 2;
        p->qSpeedAirY = -Q(1);
        p->moveState |= 4;
        p->callback = Player_800DB30;
    }
}

void Player_800A690(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    Player_8012FE0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1) | MOVESTATE_20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8E;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;

    if (p->qSpeedAirX < 0) {
        p->qSpeedAirX = -Q(1);
    } else {
        p->qSpeedAirX = +Q(1);
    }

    p->qSpeedAirY = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_PlaySong(p, SE_607);
    p->callback = Player_800A724;
    Player_800A724(p);
}

void Player_800A724(Player *p)
{
    u8 tempUnk26;

    p->unk26 += 8;
    p->charFlags.state1 = p->unk26 / 26U;
    tempUnk26 = p->unk26;
    p->unk26 = 0;
    sub_8016D30(p);
    if (sub_801480C(p)) {
        Player_StopSong(p, SE_607);
        p->qSpeedAirX = 0;
        if (tempUnk26 & 0x80) {
            p->qSpeedAirY = +0x700;
        } else {
            p->qSpeedAirY = -0x700;
        }

        if (0x10000 & p->moveState) {
            p->qWorldY = p->qWorldY - (p->qSpeedAirY * 2);
        } else {
            p->qWorldY = p->qWorldY + (p->qSpeedAirY * 2);
        }

        p->moveState = MOVESTATE_IN_AIR | (0xDFFFFFFF & p->moveState);
        p->callback = Player_800DB30;
        return;
    } else {
        Player_80149E4(p);
        p->unk26 = tempUnk26;
    }
}

void Player_800A7CC(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    Player_8012FE0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8E;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;

    if (p->qSpeedAirX < 0) {
        p->qSpeedAirX = -Q(1);
    } else {
        p->qSpeedAirX = +Q(1);
    }

    p->qSpeedAirY = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_PlaySong(p, SE_607);
    p->callback = Player_800A860;
    Player_800A860(p);
}

void Player_800A860(Player *p)
{
    u8 tempUnk26;

    p->unk26 += 8;
    p->charFlags.state1 = 9 - (p->unk26 / 26U);
    tempUnk26 = p->unk26;
    p->unk26 = 0;
    sub_8016D30(p);
    if (sub_801480C(p)) {
        Player_StopSong(p, SE_607);
        p->qSpeedAirX = 0;
        if (tempUnk26 & 0x80) {
            p->qSpeedAirY = +0x700;
        } else {
            p->qSpeedAirY = -0x700;
        }

        if (0x10000 & p->moveState) {
            p->qWorldY = p->qWorldY - (p->qSpeedAirY * 2);
        } else {
            p->qWorldY = p->qWorldY + (p->qSpeedAirY * 2);
        }

        p->moveState = MOVESTATE_IN_AIR | (0xDFFFFFFF & p->moveState);
        p->callback = Player_800DB30;
        return;
    } else {
        Player_80149E4(p);
        p->unk26 = tempUnk26;
    }
}

void Player_800A90C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    u8 tempUnk26 = p->unk26;
    p->unk26 = 0;
    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8E;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedGround = 0;

    p->qSpeedAirX = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->unk26 = tempUnk26;
    Player_PlaySong(p, SE_610);
    p->callback = Player_800A98C;
    Player_800A98C(p);
}

void Player_800A98C(Player *p)
{
    PlayerSpriteInfo *temp_r2_3;
    PlayerSpriteInfo *temp_r2_4;
    PlayerSpriteInfo *temp_r2_5;
    PlayerSpriteInfo *temp_r2_6;
    PlayerSpriteInfo *var_r2;
    PlayerSpriteInfo **temp_r3;
    PlayerSpriteInfo **temp_r3_2;
    PlayerSpriteInfo **temp_r3_3;
    s16 *temp_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    u32 var_r0;
    u8 tempUnk26;
    s32 var_r1;

    p->unk26 += 8;
    p->idleAndCamCounter += 8;

    p->charFlags.state1 = (0x80 & p->unk26) ? (((p->unk26 - 128) / 26) + 5) : (((p->unk26 + 000) / 26) + 0);

    tempUnk26 = p->unk26;
    p->unk26 = 0;
    p->qWorldY = p->qUnk74 + COS_24_8(tempUnk26 * 4) * 24;

    if (p->idleAndCamCounter > 0x180) {
        p->qSpeedAirX = 0;

        if (tempUnk26 & 0x80) {
            p->qSpeedAirY -= Q(8);
        } else {
            p->qSpeedAirY += Q(3);
        }

        p->qWorldY += p->qSpeedAirY * 2;
        p->spriteInfoBody->s.frameFlags &= 0xFFFFCFFF;
        p->spriteInfoBody->s.frameFlags |= 0x1000;
        p->moveState |= 4;
        p->callback = Player_800DB30;
        Player_StopSong(p, 0x262U);
        return;
    }
    if (0x80 & tempUnk26) {
        p->spriteInfoBody->s.frameFlags &= 0xFFFFCFFF;
        p->spriteInfoBody->s.frameFlags |= 0x2000;
    } else {
        p->spriteInfoBody->s.frameFlags &= 0xFFFFCFFF;
        p->spriteInfoBody->s.frameFlags |= 0x1000;
    }
    Player_80149E4(p);
    p->unk26 = tempUnk26;
}

void Player_800AAC0(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFD7) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 0x3C;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->moveState |= 0x20000000;
    p->callback = Player_800AB48;
    Player_800AB48(p);
}

void Player_800AB48(Player *p)
{
    s32 temp_r1;
    s32 temp_r2;

    temp_r1 = p->qUnk70;
    temp_r2 = p->qUnk74 - Q(24);

    if (p->qWorldX > temp_r1) {
        p->qWorldX -= Q(1);
    }

    if (p->qWorldX < temp_r1) {
        p->qWorldX += Q(1);
    }

    if (p->qWorldY > temp_r2) {
        p->qWorldY -= Q(1);
    }

    if (p->qWorldY < temp_r2) {
        p->qWorldY += Q(1);
    }

    p->charFlags.unk2C_40 = 1;
    if (--p->idleAndCamCounter == 0) {
        p->qSpeedAirX = +Q(0);
        p->qSpeedAirY = -Q(11);
        p->moveState &= 0xDFFFFFFF;
        p->charFlags.anim0 = 19;
        p->callback = Player_800E67C;
    }
}

void Player_UseSpecialSpringWithKey(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= 0x204;
    p->qSpeedAirX = +Q(0);
    p->qSpeedAirY = -Q(5);
    sub_8016F28(p);
    p->charFlags.anim0 = 0x6C;
    p->charFlags.state1 = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= ~0x4000;
    p->idleAndCamCounter = 0;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    gCamera.unk18 = gCamera.x;
    gCamera.unk1C = gCamera.x + DISPLAY_WIDTH;
    gCamera.unk10 = gCamera.y;
    gCamera.unk14 = gCamera.y + DISPLAY_HEIGHT;
    p->callback = sub_800ACAC;
    sub_800ACAC(p);
}

void sub_800ACAC(Player *p)
{
    sub_8016D30(p);

    // TODO: Macro!
    if (((gCamera.x - 32) > I(p->qWorldX)) || ((gCamera.x + (DISPLAY_WIDTH + 32)) < I(p->qWorldX)) || (((gCamera.y - 32) > I(p->qWorldY)))
        || (((gCamera.y + (DISPLAY_HEIGHT + 32)) < I(p->qWorldY)))) {
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->qSpeedGround = 0;
        p->idleAndCamCounter++;
    }

    if (p->idleAndCamCounter > 89) {
        sub_80533F4(p->charFlags.character);
        p->callback = Player_800EB4C;
    }
}

// Used by Special Spring, Act Ring and Final Zone Ring.
void Player_800AD24(Player *p)
{
    s16 *temp_r0_2;
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= MOVESTATE_4000000;
    p->moveState |= MOVESTATE_200 | MOVESTATE_IN_AIR;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    gStageData.unk4 = 8;
    p->charFlags.anim0 = 10;
    p->idleAndCamCounter = 90;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    if (gStageData.playerIndex != 0) {
        p->idleAndCamCounter += 30;
    }
    sub_80173F0(p);
    gCamera.unk18 = gCamera.x;
    gCamera.unk1C = gCamera.x + DISPLAY_WIDTH;
    gCamera.unk10 = gCamera.y;
    gCamera.unk14 = gCamera.y + DISPLAY_HEIGHT;
    Player_Flyer_SoundStop(p);
    p->callback = Player_800EAAC;
    Player_800EAAC(p);
}

void Player_800AE14(Player *p)
{
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= MOVESTATE_4000000;
    p->moveState |= MOVESTATE_200 | MOVESTATE_IN_AIR;
    gStageData.unk4 = 8;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    gCamera.unk18 = gCamera.x;
    gCamera.unk1C = gCamera.x + DISPLAY_WIDTH;
    gCamera.unk10 = gCamera.y;
    gCamera.unk14 = gCamera.y + DISPLAY_HEIGHT;
    p->charFlags.anim0 = 10;
    p->idleAndCamCounter = 90;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    sub_80173F0(p);
    Player_Flyer_SoundStop(p);
    p->callback = sub_800EAEC;
    sub_800EAEC(p);
}

void Player_800AEF4(Player *p)
{
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= MOVESTATE_200 | MOVESTATE_IN_AIR;
    p->idleAndCamCounter = 90;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->charFlags.anim0 = 11;
    p->callback = sub_800EB14;
    sub_800EB14(p);
}

void sub_800AF98(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->idleAndCamCounter = 0x3C;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
}

void Player_800B004(Player *p)
{
    u8 *temp_r5;

    if (p->moveState & MOVESTATE_IN_AIR) {
        p->qWorldX += p->qSpeedAirX;
        p->qWorldY += p->qSpeedAirY;
        sub_800F0BC(p);
        Player_80149E4(p);
        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->charFlags.anim0 = 11;
            p->callback = Player_800B004;
        }
    } else {
        p->qSpeedGround = Q(12);
        p->qSpeedAirX = Q_MUL(p->qSpeedGround, COS_24_8(p->unk26 * 4));
        p->qSpeedAirY = Q(0);
        p->qSpeedAirY = Q_MUL(p->qSpeedGround, SIN_24_8(p->unk26 * 4));
        sub_800B0B0(p);
        p->qWorldX += p->qSpeedAirX;
        p->qWorldY += p->qSpeedAirY;
        sub_8012EA8(p);
    }
}

void sub_800B0B0(Player *p)
{
    s32 temp_r1;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r1;
    u8 temp_r5;

    var_r1 = 0x40;
    if ((s32)p->qSpeedGround >= 0) {
        var_r1 = 0xC0;
    }
    temp_r5 = p->unk26 + var_r1;
    temp_r2 = Q(sub_8011BFC(temp_r5, p));
    if (temp_r2 <= 0) {
        temp_r1 = (s32)((temp_r5 + 0x20) & 0xC0) >> 6;
        switch (temp_r1) {
            case 0:
                p->qWorldY += temp_r2;
                p->qSpeedAirY = (s16)temp_r1;
                return;
            case 1:
                var_r0 = p->qWorldX - temp_r2;
                p->qWorldX = var_r0;
                p->qSpeedAirX = 0;
                break;
            case 2:
                p->qWorldY -= temp_r2;
                p->qSpeedAirY = 0;
                return;
            case 3:
                var_r0 = p->qWorldX + temp_r2;
                p->qWorldX = var_r0;
                p->qSpeedAirX = 0;
                break;
        }
    }
}

void Player_800B128(Player *p)
{
    s32 qSomeX;
    s32 qSomeY;

    qSomeX = p->qUnk70;
    qSomeY = p->qUnk74;
    if (p->qWorldX > qSomeX) {
        p->qWorldX -= Q(5);
        if (p->qWorldX < qSomeX) {
            p->qWorldX = qSomeX;
            goto block_3;
        }
    } else {
    block_3:
        if (p->qWorldX < qSomeX) {
            p->qWorldX += Q(5);
            if (p->qWorldX > qSomeX) {
                p->qWorldX = qSomeX;
            }
        }
    }

    if (p->qWorldY > qSomeY) {
        p->qWorldY -= Q(5);

        if (p->qWorldY < qSomeY) {
            p->qWorldY = qSomeY;
            goto block_9;
        }
    } else {
    block_9:
        if (p->qWorldY < qSomeY) {
            p->qWorldY += Q(5);
            if (p->qWorldY > qSomeY) {
                p->qWorldY = qSomeY;
            }
        }
    }

    if (--p->idleAndCamCounter == 0) {
        sub_8003DF0(0x252U);
        p->idleAndCamCounter = 0xA;
        p->qWorldX = qSomeX;
        p->qWorldY = qSomeY;
        p->callback = Player_800E564;
        Player_800E564(p);
    }
}

void Player_800B1B8(Player *p)
{
    u32 temp_r0;
    u8 *temp_r2;

    p->moveState &= 0xFDFFFFF9;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x8D;
    gPlayers[p->charFlags.partnerIndex].moveState &= 0xFDFFFFFF;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->callback = Player_800B240;
    Player_800B240(p);
}

void Player_800B240(Player *p)
{
    u16 temp_r1;
    u16 temp_r1_2;
    u8 var_r5;

    var_r5 = p->unk26;
    if (p->moveState & 0x10000) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    if ((sub_801480C(p) << 0x10) != 0) {
        p->qWorldX = p->qUnk70 + (SIN_24_8(var_r5 * 4) << 6);
        p->qWorldY = p->qUnk74 - (COS_24_8(var_r5 * 4) << 6);
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->moveState |= 4;
        return;
    }

    if (0x20 & p->keyInput) {
        p->charFlags.anim0 = 8;
        p->qSpeedGround = -Q(3);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState &= ~1;
        } else {
            p->moveState |= 1;
        }
    } else if (0x10 & p->keyInput) {
        var_r5 += 4;
        p->charFlags.anim0 = 8;
        p->qSpeedGround = +Q(6);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState |= 1;
        } else {
            p->moveState &= ~1;
        }
    } else {
        var_r5 += 2;
        p->qSpeedGround = Q(0);
        p->charFlags.anim0 = 141;
    }
    p->qWorldX = p->qUnk70 + (0x34 * SIN_24_8(var_r5 * 4));
    p->qWorldY = p->qUnk74 - (0x34 * COS_24_8(var_r5 * 4));
    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    p->unk26 = var_r5 & 0xFE;
}

void Player_800B374(Player *p)
{
    u32 temp_r0;
    u8 *temp_r2;

    p->moveState &= 0xFDFFFFF9;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x8D;
    gPlayers[p->charFlags.partnerIndex].moveState &= 0xFDFFFFFF;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->callback = Player_800B3FC;
    Player_800B3FC(p);
}

void Player_800B3FC(Player *p)
{
    u16 temp_r1;
    u16 temp_r1_2;
    u8 var_r5;

    var_r5 = p->unk26;
    if (p->moveState & 0x10000) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    if ((sub_801480C(p) << 0x10) != 0) {
        p->qWorldX = p->qUnk70 + (SIN_24_8(var_r5 * 4) << 6);
        p->qWorldY = p->qUnk74 - (COS_24_8(var_r5 * 4) << 6);
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->moveState |= 4;
        return;
    }

    if (0x20 & p->keyInput) {
        var_r5 -= 4;
        p->charFlags.anim0 = 8;
        p->qSpeedGround = -Q(6);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState &= ~1;
        } else {
            p->moveState |= 1;
        }
    } else if (0x10 & p->keyInput) {
        p->charFlags.anim0 = 8;
        p->qSpeedGround = +Q(3);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState |= 1;
        } else {
            p->moveState &= ~1;
        }
    } else {
        var_r5 -= 2;
        p->qSpeedGround = Q(0);
        p->charFlags.anim0 = 141;
    }
    p->qWorldX = p->qUnk70 + (0x34 * SIN_24_8(var_r5 * 4));
    p->qWorldY = p->qUnk74 - (0x34 * COS_24_8(var_r5 * 4));
    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    p->unk26 = var_r5 & 0xFE;
}

void sub_800B530(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = ZONE_TIME_TO_INT(0, 5);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
}

void Player_800B5A4(Player *p)
{
    s16 var_r0;

    sub_800F170(p);
    if (0x20 & p->idleAndCamCounter) {
        p->qSpeedAirY = -0x800;
    } else {
        p->qSpeedAirY = +0x800;
    }

    p->charFlags.unk2C_40 = 1;
    if ((p->idleAndCamCounter == 0) || (p->keyInput2 & gStageData.buttonConfig.jump)) {
        Player_PlaySong(p, SE_608);

        p->qWorldX = p->qUnk70;
        p->qWorldY = p->qUnk74;
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        p->callback = Player_800DDD0;
        Player_800DDD0(p);
    }
}

void Player_800B628(Player *p)
{
    s16 temp_r0_5;
    s16 *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;
    sub_8016F28(p);
    temp_r0 = p->qWorldX;
    if (temp_r0 > temp_r5) {
        p->qWorldX = temp_r0 + 0xFFFFFE00;
    }
    temp_r0_2 = p->qWorldX;
    if (temp_r0_2 < temp_r5) {
        p->qWorldX = temp_r0_2 + 0x200;
    }
    temp_r0_3 = p->qWorldY;
    if (temp_r0_3 > temp_r6) {
        p->qWorldY = temp_r0_3 + 0xFFFFFE00;
    }
    temp_r0_4 = p->qWorldY;
    if (temp_r0_4 < temp_r6) {
        p->qWorldY = temp_r0_4 + 0x200;
    }

    if (--p->idleAndCamCounter == 0) {
        Player_PlaySong(p, 0x260U);
        p->qWorldX = p->qUnk70 + p->qSpeedAirX;
        p->qWorldY = p->qUnk74 + p->qSpeedAirY;
        if (p->moveState & 0x10000) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        p->callback = Player_800DDD0;
        Player_800DDD0(p);
    }
}

void Player_800B6C4(Player *p)
{
    s16 *temp_r3;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;
    sub_8016F28(p);

    if (p->qWorldX > temp_r5) {
        p->qWorldX -= Q(2);
    }

    if (p->qWorldX < temp_r5) {
        p->qWorldX += Q(2);
    }

    if (p->qWorldY > temp_r6) {
        p->qWorldY -= Q(2);
    }

    if (p->qWorldY < temp_r6) {
        p->qWorldY += Q(2);
    }

    p->idleAndCamCounter--;
    p->charFlags.unk2C_40 = 1;

    if (p->idleAndCamCounter == 0) {
        p->idleAndCamCounter = 30;
        p->qWorldX = p->qUnk70;
        p->qWorldY = p->qUnk74;
        p->callback = Player_800B748;
        Player_800B748(p);
    }
}

void Player_800B748(Player *p)
{
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 var_r0_2;
    s16 *temp_r1;
    s32 var_r0;
    u32 temp_r0_4;
    u32 temp_r1_2;

    p->charFlags.unk2C_40 = 1;
    if (--p->idleAndCamCounter == 0) {
        Player_PlaySong(p, 0x260U);

        if (p->qSpeedAirX > 0) {
            p->qWorldX += 0x1C00;
        } else if (p->qSpeedAirX < 0) {
            p->qWorldX -= 0x1C00;
        } else {
            temp_r0_3 = p->qSpeedAirY;
            if ((s32)temp_r0_3 > 0) {
                var_r0 = p->qWorldY + 0x2000;
                goto block_9;
            }
            if ((s32)temp_r0_3 < 0) {
                var_r0 = p->qWorldY + 0xFFFFE000;
            block_9:
                p->qWorldY = var_r0;
            }
        }

        if (0x10000 & p->moveState) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        if (p->qSpeedAirX == 0) {
            p->charFlags.anim0 = 0x13;
        } else {
            p->charFlags.anim0 = 0x14;
        }

        p->callback = Player_800DAF4;
        temp_r0_4 = (0xDDFFFFBF & p->moveState) | 4;
        p->moveState = temp_r0_4;
        if (temp_r0_4 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
    }
}

void Player_800B81C(Player *p)
{
    u16 temp_r1;
    u32 temp_r1_2;
    u32 temp_r2;

    sub_8005800(p);
    sub_8016E00(p);
    p->callback = Player_800B81C;
    if ((sub_801480C(p) << 0x10) != 0) {
        p->moveState &= ~0x20;
        p->qWorldY -= Q(8);
        Player_StopSong(p, 0x263U);
        return;
    }

    if (0x30 & p->keyInput) {
        if (0x20 & p->keyInput) {
            if (!(p->moveState & 1)) {
                p->moveState |= 1;
                return;
            }
        }
        if (0x10 & p->keyInput) {
            if (1 & p->moveState) {
                p->moveState &= ~1;
            }
        }
    }
}

void Player_IceLauncherLaunch(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 30;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = Player_800B920;
}

// TODO: Fake-match
void Player_800B920(Player *p)
{
    s16 temp_r0_5;
    s16 temp_r2;
    s16 temp_r5;
    s16 var_r0;
    s16 *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
#ifndef NON_MATCHING
    register s32 temp_r3 asm("r3");
#else
    s32 temp_r3;
#endif
    s32 temp_r6;

    temp_r3 = p->qUnk70 & 0xFFFFFF00;
    temp_r6 = p->qUnk74;

    if (p->qWorldX > temp_r3) {
        p->qWorldX += 0xFFFFFE00;
    }

    if (p->qWorldX < temp_r3) {
        p->qWorldX += 0x200;
    }

    if (p->qWorldY > temp_r6) {
        p->qWorldY = p->qWorldY + 0xFFFFFE00;
    }

    if (p->qWorldY < temp_r6) {
        p->qWorldY = p->qWorldY + 0x200;
    }
    if (--p->idleAndCamCounter == 0) {
        temp_r2 = (p->qUnk70 & 3);
        p->qWorldX = temp_r3;
        p->qWorldY = temp_r6;
        p->qSpeedGround = 0;

        if ((p->qUnk70 & 3) == 0) {
            p->qSpeedAirX = 0;
            p->qSpeedAirY = -Q(12);
        } else {
            p->qSpeedAirX = Q(8);
            if ((p->qUnk70 & 3) == 2) {
                p->qSpeedAirX = -p->qSpeedAirX;
            }
            p->qSpeedAirY = -0xB00;
        }

        p->idleAndCamCounter = 0x1E;
        p->charFlags.anim0 = 0x8F;
        sub_8003DF0(0x25CU);
        p->callback = Player_800DEC4;
        Player_800DEC4(p);
    }
}

void Player_CollideGroundAfterIceLauncher(Player *p)
{
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->qSpeedAirX >>= 1;
            p->qSpeedAirY = -Q(3);
            p->callback = Player_800DB30;
            CreateIceShiver(I(p->qWorldX) - 8, I(p->qWorldY) + 0, 0x200, 0x2C4U, 0x1EU);
            CreateIceShiver(I(p->qWorldX) + 0, I(p->qWorldY) + 0, 0x200, 0x314U, 0x1EU);
            CreateIceShiver(I(p->qWorldX) + 8, I(p->qWorldY) + 0, 0x200, 0x33CU, 0x1EU);
        }
    }
}

void Player_800BA78(Player *p)
{
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8012FA0(p);
    p->moveState |= MOVESTATE_20000000;
    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
    p->sprColliding = NULL;
    p->charFlags.anim0 = 0x8C;
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = Player_800E5CC;
    Player_800E5CC(p);
}

void Player_800BB34(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r0;
    s16 var_r0;

    sub_8016F28(p);
    if (p->qSpeedAirX < 0) {
        p->qSpeedAirX = +0x200;
    } else if (p->qSpeedAirX > 0) {
        p->qSpeedAirX = -0x200;
    }
    p->moveState = (p->moveState & 0xDDFFFFDF) | 6;
    Player_8012FF0(p);
    p->charFlags.anim0 = 0x13;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->callback = Player_800E6CC;
    Player_800E6CC(p);
}

void sub_800BBA0(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    Player_BoostModeDisengage(p);
    sub_8016F28(p);
    sub_8012FA0(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 36;
    p->callback = sub_800EC20;
    sub_800EC20(p);
}

void Player_800BC38(Player *p)
{
    PlayerSpriteInfo *temp_r1;
    PlayerSpriteInfo *temp_r1_3;
    PlayerSpriteInfo **temp_r5;
    u32 temp_r1_2;
    void *temp_r2;

    p->moveState = (p->moveState & 0xE5FFFFF5) | 4;
    temp_r2 = p + 0x2C;
    p->charFlags.unk2C_04 = 1;
    p->charFlags.state1 = 0;
    p->charFlags.unk2D_0 = 0;
    if (p->moveState & 0x10000) {
        s32 qSpeedAirY = p->qSpeedAirY;
        p->qSpeedAirY = -qSpeedAirY;
    }
    temp_r5 = &p->spriteInfoBody;
    temp_r1 = *temp_r5;
    temp_r1->s.frameFlags &= 0xFFFFBFFF;

    if (p->moveState & 0x800000) {
        p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r1_3 = *temp_r5;
        temp_r1_3->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800BCE0(Player *p)
{
    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~6;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x8B;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_BoostModeDisengage(p);
    sub_8016F28(p);
    sub_8017914(p);
    p->callback = Player_800BD88;
    Player_800BD88(p);
}

void Player_800BD88(Player *p)
{
    s32 temp_r3 = (SIN_24_8(p->unk26 * 4) * 0xF) >> 6;

    if (p->qSpeedGround == 0) {
        p->qSpeedGround = p->qSpeedGround + temp_r3;
    } else if (p->qSpeedGround > 0) {
        if (temp_r3 <= 0) {
            p->qSpeedGround >>= 1;
        }
    } else if (temp_r3 >= 0) {
        p->qSpeedGround >>= 1;
    }
    p->qSpeedGround += temp_r3;

    if (ABS(p->qSpeedGround) < Q(1)) {
        if (p->moveState & 1) {
            p->qSpeedGround = -Q(1);
        } else {
            p->qSpeedGround = +Q(1);
        }
    }
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        if (sub_801480C(p)) {
            p->moveState |= 4;
            return;
        }
        sub_8012EB8(p);
        sub_8016E00(p);

        if ((p->charFlags.unk2C_02 == 0) || (p->moveState & 4)) {
            sub_800EC68(p);
        }
        p->charFlags.unk2C_02 = 0;
    }
}

void Player_800BE60(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r0;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x10000000;
    p->charFlags.anim0 = 122;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    temp_r2 = p->spriteInfoBody;
    p->callback = Player_800EB58;
}

void Player_800BEE8(Player *p)
{
    u8 *temp_r1;
    void *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->charFlags.anim0 = 0x7A;
    p->charFlags.unk2C_04 = 1;
    sub_8016F28(p);
    p->moveState |= 0x20000000;
    sub_8012FA0(p);
    p->callback = Player_nullsub_800EAA8;
    Player_nullsub_800EAA8(p);
}

void sub_800BF78(Player *p)
{
    Player *temp_r0;
    u32 temp_r4;

    temp_r0 = &gPlayers[p->charFlags.partnerIndex];
    temp_r4 = temp_r0->charFlags.character;
    temp_r0->layer = p->layer;
    temp_r0->moveState = (temp_r0->moveState & 0xFFFEFFFF) | (p->moveState & 0x10000);
    if (p->moveState & 4) {
#ifndef NON_MATCHING
        register s32 var_r0 asm("r0") = temp_r4;
#else
        s32 var_r0 = temp_r4;
#endif
        switch (var_r0) {
            case 0:
                sub_800C064(p);
                break;
            case 1:
                sub_0800C104(p);
                break;
            case 2:
                sub_0800C1FC(p);
                break;
            case 3:
                sub_0800C338(p);
                break;
            case 4:
                sub_0800F004(p);
                break;
        }
    } else {
#ifndef NON_MATCHING
        register s32 var_r0 asm("r0") = temp_r4;
#else
        s32 var_r0 = temp_r4;
#endif
        switch (var_r0) {
            case 0:
                sub_800C064(p);
                break;
            case 1:
                sub_0800C104(p);
                break;
            case 2:
                sub_800EF50(p);
                break;
            case 3:
                sub_800EFB0(p);
                break;
            case 4:
                sub_0800F004(p);
                break;
            default:
                break;
        }
    }
}

void sub_800C064(Player *p)
{
    Player *partner;
    s16 var_r6;

    partner = &gPlayers[p->charFlags.partnerIndex];
    var_r6 = +Q(12);
    p->unk99 = 0;
    Player_BoostModeEngage(p);
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        // TODO: Macro?
        partner->moveState |= MOVESTATE_FACING_LEFT;
        var_r6 = -var_r6;
    } else {
        partner->moveState &= ~MOVESTATE_FACING_LEFT;
    }
    if (p->moveState & MOVESTATE_IN_AIR) {
        p->unk26 = 0;
        partner->unk26 = 0;
    }
    partner->moveState |= p->moveState & 4;
    partner->qWorldX = p->qWorldX;
    partner->qWorldY = p->qWorldY;
    sub_800E724(partner);
    p->qSpeedAirX = var_r6;
    p->qSpeedAirY = 0;
    p->qSpeedGround = var_r6;
    sub_80056CC(p);

    Player_PlaySong(p, SE_SPEED_BOOSTER);
}

void sub_0800C104(Player *p)
{
    Player *partner;
    u32 temp_r1;
    s32 r5;
    u8 *temp_r1_2;

    partner = &gPlayers[p->charFlags.partnerIndex];
    r5 = GetBit(p->moveState, 2);
    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000000;
    if (r5) {
        p->unk26 = 0;
        partner->unk26 = 0;
        if (p->unkC & 0x40) {
            sub_800C5D0(p);
        } else {
            sub_800C714(p);
        }
        if (partner->unkC & 0x40) {
            sub_800C5D0(partner);
        } else {
            sub_800C714(partner);
        }
        Player_PlaySong(p, 0x74U);
    } else {
        sub_0800E218(p);
        sub_0800E218(partner);
    }
    p->unk54 = 600;
    partner->unk54 = 600;
    sub_801EBC0(0xC, p);
}

void sub_0800C1FC(Player *p)
{
    Player *partner;
    s32 temp_r6;
    s32 var_r1;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r1;
    u32 var_r1_2;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    temp_r6 = p->qWorldY;
    if (p->moveState & 0x10000) {
        p->qWorldY += -Q(32);
    } else {
        p->qWorldY += +Q(32);
    };
    p->unk26 = 0;
    partner->unk26 = 0;
    if (sub_8012E18(1, p, 0, 0) < 0) {
        p->qWorldY = temp_r6;
        sub_8016F28(p);
        Player_8012FE0(p);
        p->charFlags.anim0 = 0x18;
        if ((s32)p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
        temp_r0 = (p->moveState & 0xDDFFFFBF) | 4;
        p->moveState = temp_r0;
        if (temp_r0 & 0x800000) {
            sub_800E150(p);
        } else {
            p->callback = sub_800DF10;
            sub_800DF10(p);
        }
        partner->qWorldX = p->qWorldX;
        partner->qWorldY = p->qWorldY;
        sub_8016F28(partner);
        Player_8012FE0(partner);
        partner->charFlags.anim0 = 0x18;
        if ((s32)partner->qSpeedAirY < 0) {
            partner->qSpeedAirY = 0;
        }
        partner->moveState = (partner->moveState & 0xDDFFFFBF) | 4;
        if (partner->moveState & 0x800000) {
            sub_800E150(partner);
        } else {
            partner->callback = sub_800DF10;
            sub_800DF10(partner);
        }
    } else {
        p->qWorldY = temp_r6;
        temp_r1 = partner->moveState | 0x22000004;
        partner->moveState = temp_r1;
        if (p->moveState & 1) {
            partner->moveState = temp_r1 | 1;
        } else {
            partner->moveState = temp_r1 & ~1;
        }

        partner->qWorldX = p->qWorldX;
        partner->qWorldY = p->qWorldY;
        sub_801BE40(partner);
        sub_800E7BC(p);
    }
}

void sub_0800C338(Player *p)
{
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    p->unk26 = 0;
    partner->unk26 = 0;
    sub_800CF08(p);
    partner->moveState |= 0x22000000;
    if (p->moveState & 1) {
        partner->moveState |= 0x1;
    } else {
        partner->moveState &= ~1;
    }

    partner->qWorldX = p->qWorldX;
    partner->qWorldY = p->qWorldY;
    partner->qSpeedAirY = -0x200;
    partner->charFlags.anim0 = 0xE7;
    sub_801D8A8(partner);
}

void sub_800C3AC(Player *p)
{
    s16 sp[5];
    u16 temp_r1;
    s32 character;
    u8 temp_r2;

    memcpy(&sp, &gUnknown_080CE5F2[0], 10);

    if ((p->charFlags.character != KNUCKLES) && (p->moveState & MOVESTATE_IN_AIR) && (p->unkC & 0x800000)) {
        character = p->charFlags.character;
        Player_PlaySong(p, sp[character]);
        if (DPAD_UP & p->keyInput) {
            switch (character) {
                case CREAM:
                    sub_800F074(p);
                    break;
                case TAILS:
                    sub_800F074(p);
                    break;
                case SONIC:
                    sub_800F068(p);
                    break;
                case AMY:
                    sub_800F068(p);
                    break;
            }
        } else if (DPAD_DOWN & p->keyInput) {
            switch (character) {
                case SONIC:
                    sub_800F080(p);
                    break;
                case CREAM:
                    sub_800F08C(p);
                    break;
                case TAILS:
                    sub_800F08C(p);
                    break;
                case AMY:
                    sub_800F098(p);
                    break;
            }
        } else {
            switch (character) {
                case SONIC:
                    sub_800F0A4(p);
                    break;
                case CREAM:
                    sub_800F0B0(p);
                    break;
                case TAILS:
                    sub_800F0B0(p);
                    break;
                case AMY:
                    sub_800F0A4(p);
                    break;
            }
        }
    }
}

void sub_800C494(Player *p)
{
    if (!sub_8014BC4(p) && !sub_8014A60(p) && !sub_8016EDC(p) && !sub_8015568(p)) {
        sub_8015228(p);
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);

            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);
                if (p->qSpeedGround != 0) {
                    p->callback = sub_0800E27C;
                    return;
                }

                if (--p->idleAndCamCounter == 0) {
                    p->moveState &= 0xDDFFFFFF;
                    Player_8005380(p);
                }
            }
        }
    }
}

void sub_800C540(Player *p)
{
    if (!sub_8014BC4(p) && !sub_8014A60(p) && !sub_8015568(p)) {
        sub_8015228(p);
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);

            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);

                if (--p->idleAndCamCounter == 0) {
                    p->moveState &= 0xDDFFFFFF;
                    Player_8005528(p);
                }
            }
        }
    }
}

void sub_800C5D0(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    s32 var_r1;
    s32 qSpeed;

    p->moveState = (p->moveState | 6) & 0xDFFFFFFF;
    Player_8012FF0(p);
    var_r1 = p->qSpeedAirX;
    if (var_r1 < 0) {
        var_r1 = -var_r1;
    }
    if (var_r1 < Q(1.25)) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        qSpeed = 0x2A0;
    } else {
        qSpeed = 0x4E0;
    }
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;

    p->unk26 = 0;
    p->qSpeedAirX += Q_MUL(qSpeed, COS_24_8(0x300));
    p->qSpeedAirY += Q_MUL(qSpeed, SIN_24_8(0x300));
    p->idleAndCamCounter = 30;
    p->callback = sub_800C684;
    sub_800C684(p);
}

void sub_800C684(Player *p)
{
    s16 temp_r0;
    s16 *temp_r1;
    u32 temp_r0_2;

    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);

            if (--p->idleAndCamCounter == 0) {
                p->moveState &= 0xDDFFFFFF;
                p->moveState &= 0xDDFFFFBF;
                p->moveState |= MOVESTATE_IN_AIR;

                if (p->moveState & MOVESTATE_800000) {
                    sub_800E150(p);
                } else {
                    p->callback = sub_800DF10;
                    sub_800DF10(p);
                }
            }
        }
    }
}

void sub_800C714(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s32 var_r3;
    u8 temp_r1;

    p->moveState &= ~0x20;
    p->moveState &= 0xDFFFFFFF;
    p->moveState |= 4;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x6C;
    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }
    temp_r1 = p->unk26 - 0x40;
    p->qSpeedAirX += Q_MUL(var_r3, COS_24_8(temp_r1 * 4));
    p->qSpeedAirY += Q_MUL(var_r3, SIN_24_8(temp_r1 * 4));
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->idleAndCamCounter = 30;
    p->callback = sub_800C7B8;
    sub_800C7B8(p);
}

void sub_800C7B8(Player *p)
{
    PlayerSpriteInfo *spriteSprite;
    u32 temp_r1;

    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && (p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            spriteSprite = p->spriteInfoBody;
            if (0x4000 & spriteSprite->s.frameFlags) {
                spriteSprite->s.frameFlags &= 0xFFFFBFFF;
                p->charFlags.state1 = 2;
            }
        }

        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);

            if (--p->idleAndCamCounter == 0) {
                p->moveState &= 0xDDFFFFFF;
                p->moveState &= 0xDDFFFFBF;
                p->moveState |= MOVESTATE_IN_AIR;

                if (p->moveState & MOVESTATE_800000) {
                    sub_800E150(p);
                } else {
                    p->callback = sub_800DF10;
                    sub_800DF10(p);
                }
            }
        }
    }
}

void sub_800C87C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);

    if (p->qSpeedGround == 0) {
        p->charFlags.anim0 = 0x62;
    } else {
        p->charFlags.anim0 = 0x63;
    }

    p->callback = sub_801AA78;
    sub_801AA78(p);
}

void sub_800C910(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);

    p->moveState |= 4;
    p->charFlags.anim0 = 100;
    p->callback = Player_800DAF4;
    p->moveState &= 0xddffffbf;
    p->moveState |= 4;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->callback = sub_800DF10;
        sub_800DF10(p);
    }
}

// (99.62%) https://decomp.me/scratch/qQ4o8
NONMATCH("asm/non_matching/game/stage/player__sub_800C9C4.inc", void sub_800C9C4(Player *p))
{
    Player *partner;
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1_2;
    u32 temp_r0;
    u32 temp_r1;
    void (*callback)(Player *);

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    if (p->moveState & 0x10000) {
        p->qWorldY += -Q(32);
    } else {
        p->qWorldY += +Q(32);
    }

    if (partner->moveState & 1) {
        p->moveState |= 1;
    } else {
        p->moveState &= ~1;
    }

    temp_r1 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r1;
    p->moveState = temp_r1 | (partner->moveState & 0x10000);
    if (sub_8015064(p)) {
        return;
    }
    sub_8011D08(p);
    sub_8011E70(p);
    sub_8011FB8(p);
    sub_8012118(p);
    if ((p->charFlags.anim0 != 0x5C) || (callback = p->callback, (callback != sub_800C9C4))
        || (sub_8017004(p), (p->charFlags.anim0 != 0x5C)) || (p->callback != callback)) {
        partner->moveState &= 0xFDFFFFFF;
        p->callback(p);
        return;
    }
    if (p->moveState & 0x10000) {
        p->qWorldY += +Q(32);
    } else {
        p->qWorldY += -Q(32);
    }

    if ((gStageData.gameMode < 5) || (p->charFlags.someIndex == 2) || (partner->charFlags.someIndex == 2)) {
        if (partner->charFlags.anim0 == 206 || partner->charFlags.anim0 == 207 || partner->charFlags.anim0 == 208) {
            return;
        } else {
            goto block_25;
        }
    }
    {
        if ((partner->charFlags.anim2 != 0x151) && (partner->charFlags.anim2 != 0x15F) && (partner->charFlags.anim2 != 0x19D)
            && (partner->charFlags.anim2 != 0x160)) {
        block_25:
            p->qSpeedAirX = 0;
            partner->moveState &= 0xFDFFFFFF;
            Player_8012FE0(p);
            p->charFlags.anim0 = 0x18;
            temp_r0 = (p->moveState & 0xDDFFFFBF) | 4;
            p->moveState = temp_r0;
            if (temp_r0 & 0x800000) {
                sub_800E150(p);
                return;
            }
            p->callback = sub_800DF10;
            sub_800DF10(p);
        }
    }
}
END_NONMATCH

void sub_800CB5C(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000000;
    p->charFlags.anim0 = 91;
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;

    p->qSpeedGround = 0;

    p->callback = sub_800CBE8;
    sub_800CBE8(p);
}

void sub_800CBE8(Player *p)
{
    Player *partner;
    s32 var_r0;
    s32 var_r2;
    u32 temp_r1;
    u32 temp_r1_2;
    gPlayers;

    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;

    p->moveState |= gPlayers[p->charFlags.partnerIndex].moveState & 0x10000;

    if (0x4000 & p->spriteInfoBody->s.frameFlags) {
        if (SPRITE_FLAG_GET(&p->spriteInfoBody->s, X_FLIP)) {
            p->qSpeedAirX = Q(2);
            p->qWorldX += Q(5);
            p->qSpeedAirY = -Q(11);
        } else {
            p->qSpeedAirX = -Q(2);
            p->qWorldX += -Q(5);
            p->qSpeedAirY = -Q(11);
        }

        if (MOVESTATE_GRAVITY_SWITCHED & p->moveState) {
            p->qWorldY += +Q(5);
        } else {
            p->qWorldY += -Q(5);
        }

        p->moveState |= MOVESTATE_IN_AIR;
        p->callback = sub_800E808;
        p->charFlags.state1 += 1;
        Player_PlaySong(p, 0x74U);
    }
    sub_8014E70(p);
}

void sub_800CCB0(Player *p)
{
    Player *partner;
    PlayerSpriteInfo *temp_r2;
    u32 temp_r0_2;
    u8 *temp_r0;

    partner = GET_SP_PLAYER_V1(PLAYER_2);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r0_2 = (p->moveState | 0x20000000) & ~1;
    p->moveState = temp_r0_2;
    p->moveState = temp_r0_2 | (partner->moveState & 1);
    p->charFlags.anim0 = 0xDE;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedGround = 0;
    p->callback = sub_800E880;
    sub_800E880(p);
}

void sub_800CD68(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    s32 character_r0;
    s32 character_r5;
    u8 *temp_r1;

    character_r5 = p->charFlags.character;
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000000;

#ifndef NON_MATCHING
    asm("mov %0, %1" : "=r"(character_r0) : "r"(character_r5));
#else
    character_r0 = character_r5;
#endif

    switch (character_r0) {
        case 0:
            p->charFlags.anim0 = 0xAE;
            break;
        case 1:
            p->charFlags.anim0 = 0xC7;
            break;
        case 2:
            p->charFlags.anim0 = 0xDF;
            break;
        case 4:
            p->charFlags.anim0 = 0x109;
            break;
    }
    p->idleAndCamCounter = 0x14;
    p->qSpeedGround = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800CE30;
    sub_800CE30(p);
}

void sub_800CE30(Player *p)
{
    Player *temp_r2;
    s16 temp_r0;
    s16 var_r0;
    u16 temp_r3;

    temp_r2 = GET_SP_PLAYER_V1(PLAYER_2);

    if (p->idleAndCamCounter > 0) {
        p->idleAndCamCounter--;
        temp_r2->qWorldX = p->qWorldX;
        temp_r2->qWorldY = p->qWorldY;
    } else if (p->idleAndCamCounter == 0) {
        p->idleAndCamCounter = -1;
        if (p->moveState & 1) {
            temp_r2->qSpeedAirX = -Q(7);
        } else {
            temp_r2->qSpeedAirX = +Q(7);
        }
        temp_r2->qSpeedAirY = -Q(2);

        temp_r2->idleAndCamCounter = 0;
        Player_PlaySong(p, SE_542);
    }

    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        p->moveState &= 0xDDFFFFFF;
        p->callback = Player_8005380;
    }

    sub_8015144(p);

    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_800CF08(Player *p)
{
    s16 var_r0;
    u32 temp_r2;
    s8 character = p->charFlags.character;

    p->moveState = (p->moveState & ~0x40) | 0x22000000;
    switch (character) {
        case 0:
            p->charFlags.anim0 = 0xAF;
            break;
        case 1:
            p->charFlags.anim0 = 0xC8;
            break;
        case 2:
            p->charFlags.anim0 = 0xE0;
            break;
        case 4:
            p->charFlags.anim0 = 0x10A;
            break;
    }
    p->qSpeedGround = 0;
    p->callback = sub_800CF60;
}

// TODO: Fake-match!
void sub_800CF60(Player *p)
{
    Player *partner;
    s32 var_r0_5;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r5;
    u16 temp_r1;
    u16 var_r0_2;
    u32 temp_r0_3;
    u32 temp_r2;
    u32 var_r0;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    var_r5 = 0;
    if (partner->moveState & 1) {
        p->moveState = p->moveState | 1;
    } else {
        p->moveState = p->moveState & ~1;
    }

    temp_r2 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r2;
    p->moveState = temp_r2 | (partner->moveState & 0x10000);
    if ((u32)gStageData.gameMode <= 4U) {
        if (partner->charFlags.anim0 == 0xE8) {
            var_r2 = 1;
        } else {
            var_r2 = 2;
        }
    } else {
        if (partner->charFlags.anim2 == 0x203) {
            var_r2 = 1;
        } else {
            var_r2 = 2;
        }
    }

    var_r0_5 = var_r2;
    if (var_r0_5 == 1) {
        switch (p->charFlags.character) {
            case SONIC:
                p->charFlags.anim0 = 0xB0;
                p->charFlags.anim2 = 0x5F;
                break;
            case CREAM:
                p->charFlags.anim0 = 0xC9;
                p->charFlags.anim2 = 0x102;
                break;
            case TAILS:
                p->charFlags.anim0 = 0xE1;
                p->charFlags.anim2 = 0x1A5;
                break;
            case AMY:
                p->charFlags.anim0 = 0x10B;
                p->charFlags.anim2 = 0x2EB;
                break;
        }
        p->charFlags.state1 = partner->charFlags.state1;
    } else if (var_r0_5 == 2) {
        switch (p->charFlags.character) {
            case SONIC:
                p->charFlags.anim0 = 0xAF;
                break;
            case CREAM:
                p->charFlags.anim0 = 0xC8;
                break;
            case TAILS:
                p->charFlags.anim0 = 0xE0;
                break;
            case AMY:
                p->charFlags.anim0 = 0x10A;
                break;
        }
    }
    if (((u32)gStageData.gameMode < 5) || ((p->charFlags.someIndex) == 2) || (partner->charFlags.someIndex == 2)) {
        if (partner->charFlags.anim0 != 231 && partner->charFlags.anim0 != 232) {
#ifndef NON_MATCHING
            // NOTE: Weirdly the fake-match compile only matches with var_r5 as input, not as output variable.
            asm("mov %0, #1" ::"r"(var_r5));
#else
            var_r5 = 1;
#endif
            goto block_44;
        }
    } else {
        temp_r1 = partner->charFlags.anim2;
        if (((u32)(u16)(temp_r1 - 514) > 1U) && (temp_r1 != 0x1F4)) {
            var_r5 = 1;
        }
    }
block_43:
    if (var_r5 != 0) {
    block_44:
        if (p->moveState & 0x10000) {
            p->qWorldY += +0x900;
        } else {
            p->qWorldY += -0x900;
        }

        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        partner->moveState &= 0xFDFFFFFF;
        Player_8012FE0(p);
        p->charFlags.anim0 = 0x18;
        temp_r0_3 = (p->moveState & 0xDDFFFFBF) | 4;
        p->moveState = temp_r0_3;
        if (temp_r0_3 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
        return;
    }
    if (sub_80110E8(3U, p, NULL, NULL) < 0) {
        if (0x10000 & p->moveState) {
            p->qWorldY += 0x900;
        } else {
            p->qWorldY += -0x900;
        }

        if (1 & p->moveState) {
            var_r0_5 = p->qWorldX + 0x1000;
        } else {
            var_r0_5 = p->qWorldX + 0xFFFFF000;
        }
        p->qWorldX = var_r0_5;
    }
    Player_80149E4(p);
    sub_8017004(p);
    sub_8015064(p);
}

void sub_800D19C(Player *p)
{
    PlayerSpriteInfo *temp_r3;
    u8 *temp_r0;

    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000004;
    p->charFlags.anim0 = 0xB;
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    p->idleAndCamCounter = 0xF;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->callback = sub_800D500;
    sub_800D500(p);
}

void sub_800D238(Player *p)
{
    s32 var_r6;
    u16 temp_r0;
    u32 temp_r0_2;
    u32 temp_r3;
    void (*var_r0)(Player *);

    var_r6 = 0;
    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    p->moveState |= gPlayers[p->charFlags.partnerIndex].moveState & 0x10000;
    if (--p->idleAndCamCounter == 0) {
        temp_r0_2 = p->moveState | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & MOVESTATE_GRAVITY_SWITCHED) {
            if (sub_80519EC(I(p->qWorldY), I(p->qWorldX), (s32)p->layer, 8, NULL, sub_805217C) >= 40) {
                goto block_6;
            } else {
                goto block_7;
            }
        }
        if (sub_80519EC((s32)p->qWorldY >> 8, (s32)p->qWorldX >> 8, (s32)p->layer, -8, NULL, sub_805217C) <= 0x27) {
            var_r6 = 1;
        }
    block_6:
        if (var_r6 != 0) {
        block_7:
            p->qSpeedAirY = -0x600;
            var_r0 = Player_8006F08;
        } else {
            p->charFlags.anim0 = 0x65;
            sub_8012FA0(p);
            var_r0 = sub_800D32C;
        }
        p->callback = var_r0;
        Player_PlaySong(p, 0x80U);
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D32C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1;
    s16 var_r3;
    s32 var_r1;
    s32 var_r1_2;

    var_r3 = 0;
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1 = 1;
            if (p->moveState & 0x10000) {
                p->qWorldY += 0x100;
            } else {
                p->qWorldY += 0xFFFFFF00;
            }
            p->qSpeedAirY = -0x400;
        } else {
            var_r3 = 1;
        }
        temp_r2 = p->spriteInfoBody;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
    }
    if (var_r3 != 0) {
        p->idleAndCamCounter = -1;
        if (p->moveState & 0x10000) {
            p->qWorldY += 0x100;
        } else {
            p->qWorldY += 0xFFFFFF00;
        }

        p->qSpeedAirY = -0x400;
        p->charFlags.anim0 = 0x13;
    } else {
        temp_r1 = p->idleAndCamCounter;
        if (temp_r1 == -1) {
            p->idleAndCamCounter = -2;
            p->qSpeedAirX = var_r3;
            p->qSpeedAirY = -0xA00;
        } else if (temp_r1 == -2) {
            p->callback = Player_8006F08;
            p->moveState |= 4;
        }
    }
    if (!sub_8015064(p)) {
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D424(Player *p)
{
    Player *temp_r5;
    PlayerSpriteInfo *temp_r2;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 var_r1;
    u8 *temp_r1;

    temp_r5 = GET_SP_PLAYER_V1(PLAYER_2);
    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    temp_r1_2 = p->moveState;
    temp_r1_3 = p->moveState |= 0x20000000;
    p->moveState = temp_r1_3;
    p->qWorldX = temp_r5->qWorldX;
    p->qWorldY = temp_r5->qWorldY;

    if (temp_r5->moveState & 1) {
        p->moveState |= 1;
    } else {
        p->moveState = temp_r1_3 & ~1;
    }

    p->qWorldY = temp_r5->qWorldY;
    p->idleAndCamCounter = 0x14;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    Player_8017D18(p);
    p->callback = sub_800E924;
    sub_800E924(p);
}

void sub_800D500(Player *p)
{
    s32 var_r6;
    u16 temp_r0;
    u32 temp_r0_2;
    u32 temp_r3;
    void (*var_r0)(Player *);

    var_r6 = 0;
    temp_r3 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r3;
    p->moveState |= gPlayers[p->charFlags.partnerIndex].moveState & 0x10000;
    if (--p->idleAndCamCounter == 0) {
        temp_r0_2 = p->moveState | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x10000) {
            if (sub_80519EC(I(p->qWorldY), I(p->qWorldX), p->layer, 8, NULL, sub_805217C) >= 40) {
                goto block_6;
            } else {
                goto block_7;
            }
        }
        if (sub_80519EC((s32)p->qWorldY >> 8, (s32)p->qWorldX >> 8, (s32)p->layer, -8, NULL, sub_805217C) <= 0x27) {
            var_r6 = 1;
        }
    block_6:
        if (var_r6 != 0) {
        block_7:
            p->qSpeedAirY = -0x600;
            p->callback = Player_800DB30;
        } else {
            p->charFlags.anim0 = 0x65;
            sub_8012FA0(p);
            p->callback = sub_800D5F4;
        }

        Player_PlaySong(p, 0x80U);
    }

    if (!sub_8015064(p)) {
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D5F4(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r1;
    s16 var_r3;
    s32 var_r1;
    s32 var_r1_2;

    var_r3 = 0;
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1 = 1;
            if (p->moveState & 0x10000) {
                p->qWorldY += 0x100;
            } else {
                p->qWorldY -= 0x100;
            }
            p->qSpeedAirY = -0x400;
        } else {
            var_r3 = 1;
        }
        temp_r2 = p->spriteInfoBody;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
    }
    if (var_r3 != 0) {
        p->idleAndCamCounter = -1;
        if (p->moveState & 0x10000) {
            p->qWorldY += 0x100;
        } else {
            p->qWorldY -= 0x100;
        }
        p->qSpeedAirY = -0x400;
        p->charFlags.anim0 = 0x13;
    } else {
        temp_r1 = p->idleAndCamCounter;
        if (temp_r1 == -1) {
            p->idleAndCamCounter = -2;
            p->qSpeedAirX = var_r3;
            p->qSpeedAirY = -0x700;
        } else if (temp_r1 == -2) {
            p->callback = Player_800DB30;
            p->moveState |= 4;
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D6EC(Player *p)
{
    Player *temp_r5;
    PlayerSpriteInfo *temp_r2;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 var_r1;
    u8 *temp_r1;

    temp_r5 = GET_SP_PLAYER_V1(PLAYER_2);
    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;

    p->moveState |= 0x20000004;
    p->qWorldX = temp_r5->qWorldX;
    p->qWorldY = temp_r5->qWorldY;

    if (temp_r5->moveState & 1) {
        p->moveState |= 1;
    } else {
        p->moveState = p->moveState & ~1;
    }

    p->qWorldY = temp_r5->qWorldY;
    p->idleAndCamCounter = 30;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    sub_8017DB4(p);
    p->callback = sub_800E968;
    sub_800E968(p);
}

void sub_800D7C8(Player *p)
{
    s32 temp_r1;
    u8 *temp_r2;
    u8 temp_r0;

    if ((gStageData.gameMode != 7) && (((p->charFlags.someIndex == 1)) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4))
        && ((u32)(u16)((u16)p->charFlags.anim0 - 0x10) <= 2U)) {
        s32 r0, r1;
        r0 = p->unk5A = (p->unk5A + 1) % 16u;
        r1 = 3;
        r1 &= r0;
        if (r1 == 3) {
            sub_8017134(p);
        }
    }
}

void sub_800D81C(Player *p)
{
    s32 r0, r1;
    s32 temp_r1;
    u8 temp_r1_2;
    u8 *temp_r2;

    if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && (p->moveState & 0x20000)) {
        temp_r2 = &p->unk5A;
        temp_r1_2 = (*temp_r2 + 1) & 0xF;
        *temp_r2 = temp_r1_2;
        if (p->charFlags.anim0 == 177 || p->charFlags.anim0 == 178) {
            r0 = 7;
            r1 = temp_r1_2;
            r0 &= r1;
            if (r0 == 7) {
                sub_8017258(p);
            }
        } else {
            r0 = 7;
            r1 = temp_r1_2;
            r0 &= r1;
            if (r0 == 7) {
                sub_80171C0(p);
            }
        }
    }
}

void SetPlayerCallback(Player *p, void (*callback)(Player *)) { p->callback = callback; }

void Player_800D880(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 var_r1;
    u8 *temp_r1;

    // NOTE: This only matches without call to SongStopCheck_inline().
    if (gStageData.gameMode != 7) {
        if (p->moveState & MOVESTATE_1000) {
            Player_StopSong(p, SE_281);
        }
    }

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
}

void sub_800D8DC(Player *p)
{
    if (!(MOVESTATE_10000000 & p->moveState)) {
        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            sub_8005800(p);
            sub_8015144(p);
            Player_801479C(p);
            sub_8016D30(p);
            sub_8012EB8(p);
            return;
        }
        sub_8014940(p);
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->charFlags.anim0 = 8;
        }
    }
}

void Player_800D944(Player *p)
{
    if (p->idleAndCamCounter != -1) {
        p->idleAndCamCounter--;
    }
    if ((p->idleAndCamCounter == 0) && ((u32)gStageData.gameMode < 6)) {
        sub_8002508();
    }
}

void Player_800D978(Player *p)
{
    p->moveState &= 0xFFFDFFFF;
    p->layer = PLAYER_LAYER_BACK;
    Player_StopSong(p, SE_GRINDING);

    p->charFlags.unk2D_0 = 0;
    Player_8005380(p);
}

void Player_800D9B4(Player *p)
{
    p->moveState &= 0xFFFDFFFF;
    p->layer = PLAYER_LAYER_BACK;
    Player_StopSong(p, SE_GRINDING);

    if ((u32)(u16)((u16)p->charFlags.anim0 - 0xB1) <= 1U) {
        Player_800673C(p);
        return;
    }
    Player_8006654(p);
}

void Player_800D9F4(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u16 var_r0;

    p->moveState &= 0xFDFFFFBF;
    if ((u32)(u16)(p->charFlags.anim0 - 0x10) <= 1U) {
        p->charFlags.anim0 = 0xD;
    } else {
        p->charFlags.anim0 = 0xC;
    }

    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->charFlags.unk2D_0 = 0;
    Player_BoostModeDisengage(p);
    p->qSpeedGround = 0;
    p->moveState ^= 1;
    p->callback = sub_800DA60;
    sub_800DA60(p);
}

void sub_800DA60(Player *p)
{
    if (!sub_8014A60(p) && !sub_8016EDC(p)) {
        if (sub_8014BC4(p)) {
            p->callback = Player_80077CC;
            return;
        }
        if (sub_8015568(p) == 0) {
            if (p->spriteInfoBody->s.frameFlags & 0x4000) {
                p->callback = Player_8005380;
                return;
            }
            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8014E70(p);
                if (!sub_801480C(p)) {
                    sub_8012EB8(p);
                    sub_8016E00(p);
                }
            }
        }
    }
}

void Player_800DAF4(Player *p)
{
    u32 temp_r0;

    temp_r0 = (p->moveState & 0xDDFFFFBF) | 4;
    p->moveState = temp_r0;
    if (temp_r0 & 0x800000) {
        sub_800E150(p);
        return;
    }
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_800DB30(Player *p)
{
    s16 var_r0;
    s16 var_r1;

    p->moveState = (p->moveState & 0xDDFFFFBF) | 6;

    if (ABS(p->qSpeedAirX) < Q(1.25)) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    Player_8012FF0(p);
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_800DB7C(Player *p)
{
    p->moveState = (p->moveState & 0xFDFFFFF5) | 0x20000000;
    sub_8016F28(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->charFlags.anim0 = 0x90;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    Player_PlaySong(p, SE_PANDA_CART);
    p->callback = Player_800DCB4;
    Player_800DCB4(p);
}

void Player_800DBE8(Player *p)
{
    u8 *temp_r2;

    p->moveState = (p->moveState & 0xFDFFFFF5) | 0x20000000;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->charFlags.anim0 = 0x8D;
    Player_PlaySong(p, SE_MINECART_ROLL);
    p->callback = sub_800DC50;
    sub_800DC50(p);
}

void sub_800DC50(Player *p)
{
    if ((sub_801480C(p) << 0x10) != 0) {
        Player_StopSong(p, 0x25EU);
        return;
    }

    Player_PlayOrContinueSong(p, 0x25E);
    if (!(p->moveState & 0x20)) {
        p->unk26 = 0;
        p->qSpeedGround = Q(0);
        p->qSpeedAirX = Q(0);
        p->qSpeedAirY = Q(0);
        p->qWorldY -= Q(32);
        p->callback = Player_80068EC;
        Player_StopSong(p, 0x25EU);
    }
}

void Player_800DCB4(Player *p)
{
    u8 temp_r1;

    if ((sub_801480C(p) << 0x10) != 0) {
        Player_StopSong(p, 0x257U);
        return;
    }

    if (!(p->moveState & 0x20)) {
        p->unk26 = 0;
        p->qSpeedGround = Q(0);
        p->qSpeedAirX = Q(0);
        p->qSpeedAirY = Q(0);
        p->qWorldY -= Q(32);
        p->callback = Player_80068EC;
        Player_StopSong(p, 0x257U);
    }
}

void Player_800DD0C(Player *p)
{
    sub_800B530(p);
    p->callback = Player_800B5A4;
    Player_800B5A4(p);
}

void Player_800DD28(Player *p)
{
    sub_800B530(p);
    p->callback = Player_800DD44;
    Player_800DD44(p);
}

void Player_800DD44(Player *p)
{
    s16 var_r0;

    sub_800F170(p);
    if (0x20 & (u16)p->idleAndCamCounter) {
        p->qSpeedAirX = -0x800;
    } else {
        p->qSpeedAirX = +0x800;
    }

    p->charFlags.unk2C_40 = 1;
    if ((p->idleAndCamCounter == 0) || (p->keyInput2 & gStageData.buttonConfig.jump)) {
        Player_PlaySong(p, SE_608);
        p->qWorldX = p->qUnk70;
        p->qWorldY = p->qUnk74;
        p->callback = Player_800DDD0;
        Player_800DDD0(p);
    }
}

void Player_800DDB4(Player *p)
{
    p->idleAndCamCounter = 10;
    p->callback = Player_800B628;
    Player_800B628(p);
}

void Player_800DDD0(Player *p)
{
    s16 temp_r1;
    s32 var_r0;
    s16 screenX, screenY;

    p->qWorldX += p->qSpeedAirX;
    if (p->moveState & 0x10000) {
        p->qWorldY = p->qWorldY - p->qSpeedAirY;
    } else {
        p->qWorldY = p->qWorldY + p->qSpeedAirY;
    }

    screenX = I(p->qWorldX) - gCamera.x;
    screenY = I(p->qWorldY) - gCamera.y;

    if ((screenX < -127) || (screenX > (DISPLAY_WIDTH + 127)) || (((s32)screenY <= -128)) || ((s32)screenY >= DISPLAY_HEIGHT + 128)) {
        Player_8005380(p);
    }
}

void Player_800DE48(Player *p)
{
    p->idleAndCamCounter = 0x1E;
    p->callback = Player_800B6C4;
    Player_800B6C4(p);
}

void Player_800DE64(Player *p)
{
    u8 *temp_r2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFF9) | 0x20000000;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk26 = 0;
    p->charFlags.anim0 = 8;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    sub_8016F28(p);
    p->callback = Player_800B81C;
    Player_800B81C(p);
}

void Player_800DEC4(Player *p)
{
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);

        if (--p->idleAndCamCounter == 0) {
            p->callback = Player_CollideGroundAfterIceLauncher;
        }
    }
}

void sub_800DF10(Player *p)
{
    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_800DF5C(Player *p)
{
    sub_801350C(p);
    sub_8014940(p);
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800DF9C(Player *p) { }

void sub_800DFA0(Player *p)
{
    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_800DFEC(Player *p)
{
    p->moveState &= 0xFDFFFFFF;
    p->charFlags.anim0 = 0x22;
    p->qSpeedGround = 0;
    p->unk26 = 0;
    p->callback = Player_800856C;
    Player_800856C(p);
}

void sub_800E01C(Player *p)
{
    p->moveState &= 0xFDFFFFFF;
    p->charFlags.anim0 = 0x23;
    p->qSpeedGround = 0;
    p->unk26 = 0;
    p->callback = Player_8008654;
    Player_8008654(p);
}

void sub_800E04C(Player *p)
{
    p->unk90 >>= 1;
    sub_8014940(p);
    sub_8016D30(p);
    sub_8016EB0(p);
    Player_80149E4(p);
    sub_8017004(p);
    sub_8015064(p);
}

void Player_800E084(Player *p)
{
    p->moveState = (p->moveState & 0xFDFFFFBF) | 0x800000;
    p->charFlags.anim0 = 0xE;
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedGround = 0;
    p->moveState ^= 1;
    p->callback = sub_800E0CC;
    sub_800E0CC(p);
}

void sub_800E0CC(Player *p)
{
    if (sub_8014BC4(p) && !sub_8014A60(p) && !sub_8016EDC(p)) {
        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            p->callback = Player_80077CC;
        }
        sub_8015144(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            Player_801479C(p);
            sub_8016D30(p);
            sub_8014E70(p);
            if ((sub_801480C(p) << 0x10) == 0) {
                sub_8012EB8(p);
                sub_8016E00(p);
            }
        }
    }
}

void sub_800E150(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
    p->charFlags.anim0 = 0x15;
    sub_8012FA0(p);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800E198;
    sub_800E198(p);
}

void sub_800E198(Player *p)
{
    if (sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_800E1E4(Player *p)
{
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8014E70(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_0800E218(Player *p)
{
    p->moveState = (p->moveState | 0x02000000) & 0xDFFFFFFF;
    sub_8012FA0(p);
    p->idleAndCamCounter = 360;
    if (p->qSpeedGround != 0) {
        sub_0800E27C(p);
    } else {
        p->charFlags.anim0 = 0;
        p->idleAndCamCounter = 30;
        p->charFlags.unk2D_0 = 0;
        Player_BoostModeDisengage(p);
        p->callback = sub_800C494;
        sub_800C494(p);
    }
}

void sub_0800E27C(Player *p)
{
    p->moveState = (p->moveState | 0x02000000) & 0xDFFFFFFF;
    sub_8012FA0(p);
    p->charFlags.anim0 = 8;
    p->unk5A = 0;
    p->charFlags.unk2D_0 = 0;
    p->callback = sub_800C540;
    sub_800C540(p);
}

void sub_800E2C8(Player *p)
{
    u8 *temp_r1;
    u8 temp_r0;
    u8 temp_r0_2;

    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);

        if (p->unk5B != 0) {
            if (--p->unk5B == 0) {
                Player_PlaySong(p, SE_AMY__PIKO_PIKO_NEUTRAL);
            }
        }
        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            p->callback = Player_8005380;
        }
        if (p->moveState & MOVESTATE_IN_AIR) {
            p->callback = Player_800DB30;
        }
    }
}

void Player_800E348(Player *p)
{
    sub_800AF98(p);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0xC00;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E370(Player *p)
{
    sub_800AF98(p);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0xC00;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E398(Player *p)
{
    sub_800AF98(p);
    p->qSpeedAirX = -0xC00;
    p->qSpeedAirY = -0x80;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E3C4(Player *p)
{
    sub_800AF98(p);
    p->qSpeedAirX = 0xC00;
    p->qSpeedAirY = 0x80;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E3EC(Player *p)
{
    s16 *temp_r1;
    s16 temp_r0_5;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;
    temp_r0 = p->qWorldX;
    if (temp_r0 > temp_r5) {
        p->qWorldX = temp_r0 + 0xFFFFFE00;
    }
    temp_r0_2 = p->qWorldX;
    if (temp_r0_2 < temp_r5) {
        p->qWorldX = temp_r0_2 + 0x200;
    }
    temp_r0_3 = p->qWorldY;
    if (temp_r0_3 > temp_r6) {
        p->qWorldY = temp_r0_3 + 0xFFFFFE00;
    }
    temp_r0_4 = p->qWorldY;
    if (temp_r0_4 < temp_r6) {
        p->qWorldY = temp_r0_4 + 0x200;
    }

    if (--p->idleAndCamCounter == 0) {
        sub_8003E28(0x251U);
        sub_8003DF0(0x252U);
        p->qWorldX = temp_r5;
        p->qWorldY = temp_r6;
        p->callback = Player_800B004;
        Player_800B004(p);
    }
}

void Player_800E468(Player *p)
{
    sub_800E508(p);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0xA00;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void Player_800E490(Player *p)
{
    sub_800E508(p);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0xA00;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void Player_800E4B8(Player *p)
{
    sub_800E508(p);
    p->qSpeedAirX = -0xA00;
    p->qSpeedAirY = 0;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void Player_800E4E0(Player *p)
{
    sub_800E508(p);
    p->qSpeedAirX = 0xA00;
    p->qSpeedAirY = 0;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void sub_800E508(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 6;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->idleAndCamCounter = 30;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
}

void Player_800E564(Player *p)
{
    u32 temp_r0_2;

    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;

    if (--p->idleAndCamCounter == 0) {
        p->callback = Player_800DAF4;
        temp_r0_2 = (p->moveState & 0xDDFFFFBF) | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
    }
}

void Player_800E5CC(Player *p) { }

void Player_800E5D0(Player *p)
{
    p->moveState &= ~1;
    p->qSpeedGround = 0x300;
    sub_800F1C4(p);
}

void Player_800E5EC(Player *p)
{
    p->moveState |= 1;
    p->qSpeedGround = -0x300;
    sub_800F1C4(p);
}

void Player_800E604(Player *p)
{
    s16 var_r0;
    s16 var_r1;

    if (ABS(p->qSpeedGround) < Q(3)) {
        if ((s32)p->qSpeedGround < 0) {
            p->qSpeedGround = -Q(3);
        } else {
            p->qSpeedGround = +Q(3);
        }
    }
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->callback != Player_800E604) {
            Player_StopSong(p, SE_PANDA_CART);
        }
    }
}

void Player_800E67C(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    p->moveState = (p->moveState & 0xDDFFFFDF) | 6;
    Player_8012FF0(p);
    p->charFlags.anim0 = 0x13;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->callback = Player_800E6CC;
    Player_800E6CC(p);
}

void Player_800E6CC(Player *p)
{
    sub_801350C(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((s32)p->qSpeedAirY >= 0) {
            p->charFlags.anim0 = 0x18;
            Player_8012FE0(p);
            p->callback = Player_800DAF4;
        }
    }
}

void sub_800E720(void) { }

void sub_800E724(Player *arg0)
{
    arg0->moveState = (arg0->moveState & ~0x40) | 0x20000002;
    sub_8012FC0(arg0);
    arg0->charFlags.anim0 = 0xA;
    arg0->qSpeedGround = 0;
    arg0->idleAndCamCounter = 0xA;
    arg0->callback = sub_800E764;
    sub_800E764(arg0);
}

void sub_800E764(Player *p)
{
    s16 *temp_r1;
    s16 temp_r0;
    u32 temp_r0_2;
    void (*var_r0)(Player *);

    if (--p->idleAndCamCounter == 0) {
        temp_r0_2 = p->moveState & 0xDFFFFFFF;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 4) {
            p->callback = Player_800DB30;
        } else {
            p->callback = Player_8005380;
        }
    }
    if (!sub_8015064(p)) {
        sub_8014E70(p);
        sub_8017004(p);
    }
}

void sub_800E7BC(Player *arg0)
{
    arg0->moveState = (arg0->moveState & ~0x40) | 0x22000004;
    arg0->charFlags.anim0 = 0x5C;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->unk26 = 0;
    Player_8012FE0(arg0);
    Player_PlaySong(arg0, SE_TAILS__FLYING);
    arg0->callback = sub_800C9C4;
    sub_800C9C4(arg0);
}

void sub_800E808(Player *p)
{
    if ((s32)p->qSpeedAirY >= 0) {
        if (p->charFlags.state1 == 1) {
            p->charFlags.state1++;
        }
    }
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 2) {
            p->charFlags.state1++;
            p->callback = sub_800DF10;
        }
    }
    sub_801350C(p);
    sub_8014940(p);

    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800E880(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 1) {
            p->callback = Player_8005380;
        } else {
            p->charFlags.state1++;
        }
    }
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_0800E8E0(Player *arg0)
{
    PlayerSpriteInfo *temp_r3;

    arg0->moveState |= 0x22000000;
    arg0->charFlags.anim0 = 0xB;
    temp_r3 = arg0->spriteInfoBody;
    temp_r3->s.frameFlags &= 0xFFFFBFFF;
    arg0->idleAndCamCounter = 0xA;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->callback = sub_800D238;
    sub_800D238(arg0);
}

void sub_800E924(Player *p)
{
    if (!sub_8015064(p)) {
        sub_8014E70(p);
        sub_8016E00(p);
        if (--p->idleAndCamCounter == 0) {
            p->moveState &= 0xDFFFFFFF;
            p->callback = Player_8005380;
        }
    }
}

void sub_800E968(Player *p)
{
    s16 *temp_r1;
    s16 temp_r0;

    if (!sub_8015064(p)) {
        sub_8017004(p);
        if (--p->idleAndCamCounter == 0) {
            p->moveState |= 0x20000000;
            p->callback = Player_800DAF4;
        }
    }
}

void Player_800E9A4(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u32 temp_r1;

    sub_8009D74(p);
    temp_r1 = p->moveState;
    if (temp_r1 & 0x800000) {
        p->moveState = (temp_r1 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r2 = p->spriteInfoBody;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800EA0C(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    u32 temp_r1;

    sub_8009D74(p);
    if (p->moveState & 0x800000) {
        p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r2 = p->spriteInfoBody;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800EA74(Player *p)
{
    sub_8009D74(p);
    p->qSpeedAirX += p->qSpeedAirX >> 1;
    p->qSpeedAirY += p->qSpeedAirY >> 1;
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_nullsub_800EAA8(Player *p) { }

void Player_800EAAC(Player *p)
{
    if (--p->idleAndCamCounter <= 0) {
        if (p->charFlags.someIndex == 1) {
            sub_8056120(gStageData.nextMapIndex);
        }
        p->callback = Player_800EB4C;
    }
}

void sub_800EAEC(Player *p)
{
    if (--p->idleAndCamCounter <= 0) {
        sub_8056168();
        p->callback = Player_800EB4C;
    }
}

void sub_800EB14(Player *p)
{
    s16 *temp_r1;
    s16 temp_r0;

    p->charFlags.unk2C_40 = 1;
    if (--p->idleAndCamCounter == 0) {
        sub_8056120((s16)p->unkA4);
        p->callback = Player_800EB4C;
    }
}

void Player_800EB4C(Player *p) { p->charFlags.unk2C_40 = 1; }

void Player_800EB58(Player *p) { }

void Player_800EB5C(Player *p)
{
    sub_8016F28(p);
    sub_8014940(p);
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800EB9C(Player *arg0)
{
    arg0->charFlags.anim0 = 8;
    arg0->qWorldY = 0xB100;
    sub_8016F28(arg0);
    arg0->moveState &= 0xFDFFFFFF;
    arg0->moveState &= ~4;
    arg0->callback = sub_800EBD8;
    sub_800EBD8(arg0);
}

void sub_800EBD8(Player *p)
{
    p->qSpeedGround = Q(3);
    Player_801479C(p);
    sub_8016D30(p);
    sub_8012EB8(p);
    sub_8016E00(p);

    if (I(p->qWorldX) > Q(6.421875)) {
        p->charFlags.anim0 = 1;
        p->qSpeedGround = 0;
        p->callback = sub_800F228;
    }
}

void sub_800EC20(Player *p)
{
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            p->callback = Player_8005380;
        }
    }
}

void sub_800EC68(Player *p)
{
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 4;
    Player_BoostModeDisengage(p);
    p->callback = sub_800ECE0;
    sub_800ECE0(p);
}

void sub_800ECE0(Player *p)
{
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void Player_800ED14(Player *p)
{
    sub_8016F28(p);
    p->charFlags.anim0 = 0xA3;
    p->callback = Player_800ED4C;
    Player_800ED4C(p);
}

void Player_800ED34(Player *p)
{
    p->charFlags.anim0 = 0xA4;
    p->callback = Player_800ED4C;
    Player_800ED4C(p);
}

void Player_800ED4C(Player *p) { }

void sub_800ED50(Player *arg0)
{
    arg0->framesInvulnerable = 0x3C;
    sub_8016F28(arg0);
    arg0->idleAndCamCounter = 0;
    arg0->callback = Player_8008A8C;
    Player_8008A8C(arg0);
}

void Player_800ED80(Player *p)
{
    s16 *temp_r1;
    s16 temp_r0;

    if (((p->idleAndCamCounter & 7) == 0) && (p->charFlags.someIndex == 1)) {
        sub_802785C();
    }

    if (++p->idleAndCamCounter > 0x1F) {
        p->qCamOffsetY = 0;
        Player_8008C1C(p);
    }
}

void sub_800EDC8(Player *p)
{
    s16 var_r5;

    var_r5 = -Q(3);
    if (p->moveState & 0x80) {
        var_r5 = -Q(1.5);
    }

    if (!sub_8017058(p) && ((sub_8014BC4(p) << 0x10) == 0)) {
        if (((s32)p->qSpeedAirY < (s32)var_r5) && !(p->keyInput & gStageData.buttonConfig.jump)) {
            p->qSpeedAirY = var_r5;
            p->callback = sub_800EE38;
        } else if (p->qSpeedAirY > 0) {
            p->callback = sub_800EE38;
        }
        sub_801350C(p);
        sub_800EF18(p);
    }
}

void sub_800EE38(Player *p)
{
    if ((sub_8017058(p) == 0) && !sub_8014BC4(p)) {
        sub_801350C(p);
        sub_800EF18(p);
    }
}

void sub_800EE64(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    if (!sub_8017058(p) && !sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && (p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            if (0x4000 & p->spriteInfoBody->s.frameFlags) {
                p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
                p->charFlags.state1 = 2;
            }
        }
        sub_800EF18(p);
    }
}

void sub_800EEC4(Player *p)
{
    if (!sub_8017058(p) && sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_800EF18(Player *p)
{
    sub_8014940(p);

    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800EF50(Player *p)
{
    Player *partner;
    u32 var_r0;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    Player_StopSong(p, SE_TAILS__FLYING);
    partner->charFlags.anim0 = 0xDE;
    if (p->moveState & 1) {
        partner->moveState = partner->moveState | 1;
    } else {
        partner->moveState = partner->moveState & ~1;
    }

    sub_800CCB0(partner);
    sub_800CB5C(p);
    partner->qWorldX = p->qWorldX;
    partner->qWorldY = p->qWorldY;
}

void sub_800EFB0(Player *p)
{
    Player *partner;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 var_r2;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    temp_r2 = partner->moveState;
    temp_r2_2 = temp_r2 | 0x22000000;
    partner->moveState = temp_r2_2;
    if (p->moveState & 1) {
        partner->moveState |= 0x1;
    } else {
        partner->moveState &= ~1;
    }

    sub_801D978(partner);
    sub_800CD68(p);
}

void sub_0800F004(Player *p)
{
    Player *partner;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    if (p->moveState & 4) {
        partner->charFlags.anim0 = 0x10D;
        p->unk26 = 0;
        partner->unk26 = 0;
        sub_800D19C(p);
        sub_800D6EC(partner);
    } else {
        partner->charFlags.anim0 = 0x10C;
        sub_0800E8E0(p);
        sub_800D424(partner);
    }
}

void sub_800F068(Player *p) { p->callback = Player_8007368; }

void sub_800F074(Player *p) { p->callback = sub_801A3DC; }

void sub_800F080(Player *p) { p->callback = Player_Sonic_BoundAttack; }

void sub_800F08C(Player *p) { p->callback = sub_801A46C; }

void sub_800F098(Player *p) { p->callback = sub_801E7BC; }

void sub_800F0A4(Player *p) { p->callback = sub_8019C24; }

void sub_800F0B0(Player *p) { p->callback = Player_80074B8; }

void sub_800F0BC(Player *p)
{
    if (p->qSpeedAirY >= 0) {
        sub_800F0E8(p);
        sub_800F12C(p);
        return;
    }
    sub_800F12C(p);
    sub_800F0E8(p);
}

void sub_800F0E8(Player *p)
{
    u8 sp[4];
    u32 sp4;
    s32 temp_r0;

    temp_r0 = sub_8012E18(1U, p, sp, &sp4);
    if (temp_r0 <= 0) {
        p->moveState &= ~0xC;
        p->qWorldY += temp_r0 << 8;
        p->unk26 = sp[0];
        p->qSpeedAirY = 0;
        p->qSpeedGround = (s16)(u16)p->qSpeedAirX;
    }
}

void sub_800F12C(Player *p)
{
    u8 sp[4];
    u32 sp4;
    s32 temp_r0;

    temp_r0 = sub_8012E18(0U, p, sp, &sp4);
    if (temp_r0 <= 0) {
        p->moveState &= ~0xC;
        p->qWorldY += temp_r0 << 8;
        p->unk26 = sp[0];
        p->qSpeedAirY = 0;
        p->qSpeedGround = (s16)(u16)p->qSpeedAirX;
    }
}

void sub_800F170(Player *p)
{
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;

    sub_8016F28(p);
    if (p->qWorldX > temp_r5) {
        p->qWorldX -= Q(2);
    }
    if (p->qWorldX < temp_r5) {
        p->qWorldX += Q(2);
    }
    if (p->qWorldY > temp_r6) {
        p->qWorldY -= Q(2);
    }
    if (p->qWorldY < temp_r6) {
        p->qWorldY += Q(2);
    }
    p->idleAndCamCounter--;
}

void sub_800F1C4(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    sub_8012FC0(p);
    p->moveState &= 0xFDFFFFDF;
    p->moveState |= 2;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x88;
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->charFlags.unk2D_0 = 0;
    Player_PlaySong(p, SE_PANDA_CART);
    p->callback = Player_800E604;
    Player_800E604(p);
}

void sub_800F228(Player *p) { }

void sub_800F22C(Player *p)
{
    s16 *temp_r0;
    PlayerUnk148 *unk148;

    unk148 = p->unk148.ptr;
    Player_800D880(p);
    gStageData.rings = 0x32;
    p->charFlags.anim0 = 270;
    p->charFlags.character = SONIC;
    p->framesInvincible = 0;
    p->framesInvulnerable = 0;
    unk148->a.unkB = 0;
    unk148->a.unk7 = 0;
    unk148->a.unkC = 0;
    p->qWorldX = Q(gCamera.x);
    p->qWorldY = Q(gCamera.y + 104);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk14C.arr_u8[0] = 0;
    SetPlayerCallback(p, Player_801080C);
    Player_801080C(p);
}

void sub_800F2B0(Player *p)
{
    PlayerUnk148 *unk148;
    u8 *temp_r0;
    u16 var_r0;

    unk148 = p->unk148.ptr;
    Player_800D880(p);
    p->charFlags.anim0 = 0x10E;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk26 = 0;
    p->unk48 = 0;
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex != 0)) {
        SetPlayerCallback(p, sub_8010F38);
        sub_8010E04(p);
        sub_8010E94(p);
        sub_800FABC(p);

        BoostEngage_inline(p);

        if (p->charFlags.state1 == 0) {
            p->charFlags.anim0 = 0x111;
            return;
        }
        p->charFlags.anim0 = -1;
        return;
    }
    var_r0 = p->keyInput & gStageData.buttonConfig.trick;
    if (var_r0 != 0) {
        var_r0 = 1;
    }
    unk148->a.unkB = var_r0;
    SetPlayerCallback(p, Player_801086C);
    Player_801086C(p);
}

void sub_800F378(Player *p)
{
    PlayerUnk148 *temp_r2;
    u8 *temp_r2_2;

    temp_r2 = p->unk148.ptr;
    p->charFlags.anim0 = gUnknown_080CE5FC[temp_r2->a.unk4];
    p->qSpeedAirX = gUnknown_080CE61C[temp_r2->a.unk4][0];
    p->qSpeedAirY = gUnknown_080CE61C[temp_r2->a.unk4][1];
    temp_r2->a.unk6 = 0;
    p->unk14C.arr_u8[0] |= 1;
    Player_BoostModeDisengage(p);
    m4aSongNumStart(0x70U);
    SetPlayerCallback(p, sub_800F3E8);
    sub_800F3E8(p);
}

void sub_800F3E8(Player *p)
{
    PlayerUnk148 *unk148;
    s16 temp_r1;
    s16 temp_r1_2;
    s32 temp_r0;
    s32 temp_r0_4;
    u8 *temp_r2;
    u8 temp_r0_7;

    unk148 = p->unk148.ptr;
    sub_8010E4C(p);
    sub_8010ED0(p);
    sub_800FABC(p);
    temp_r0 = p->qSpeedAirX;
    temp_r1 = p->qSpeedAirX;
    if (temp_r1 != 0) {
        if ((s32)temp_r1 < 0) {
            p->qSpeedAirX += 0x64;
            if (p->qSpeedAirX >= 0) {
                p->qSpeedAirX = 0;
            }
        } else {
            p->qSpeedAirX -= 0x64;
            if (p->qSpeedAirX <= 0) {
                p->qSpeedAirX = 0;
            }
        }
    }

    if (p->qSpeedAirY != 0) {
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY += 0x64;
            if (p->qSpeedAirY >= 0) {
                p->qSpeedAirY = 0;
            }
        } else {
            p->qSpeedAirY -= 0x64;
            if (p->qSpeedAirY <= 0) {
                p->qSpeedAirY = 0;
            }
        }
    }

    unk148->a.unk6 += 1;
    switch (unk148->a.unk6) {
        case 8:
            p->charFlags.anim0 = gUnknown_080CE60C[unk148->a.unk4];
            return;
        case 20:
            unk148->a.unk6 = 0;
            unk148->a.unkC = 8;
            p->unk14C.arr_u8[0] &= 0xFE;
            SetPlayerCallback(p, sub_800F2B0);
            return;
    }
}

void sub_800F4A4(Player *p)
{
    PlayerUnk148 *temp_r1;
    PlayerUnk148 *temp_r4;
    s16 temp_r0;
    s16 temp_r1_2;
    s32 var_r6;
    u16 temp_r0_2;
    u16 temp_r2;

    var_r6 = 0;
    temp_r4 = p->unk148.ptr;
    sub_8010E04(p);
    sub_800FD60(p);
    sub_8010E94(p);
    sub_800FABC(p);

    BoostEngage_inline(p);

    if (p->keyInput & gStageData.buttonConfig.trick) {
        if (++temp_r4->a.unk0 > 480) {
            temp_r4->a.unk0--;
        }
        goto block_13;
    } else {
        if (temp_r4->a.unk0 < 120) {
            temp_r4->a.unk2 = 0;
            SetPlayerCallback(p, sub_800F2B0);
        } else {
            if (temp_r4->a.unk0 <= 0xEF) {
                temp_r4->a.unk2 = 60;
                goto block_14;
            } else if (temp_r4->a.unk0 < 0x168) {
                temp_r4->a.unk2 = 0x78;
                goto block_14;
            } else {
                temp_r4->a.unk2 = 0xF0;
                var_r6 = 1;
            }
        }
    }
block_13:
    if (var_r6 != 0) {
    block_14:
        SetPlayerCallback(p, Player_80109C0);
    }
}

void sub_800F55C(Player *p)
{
    PlayerUnk148 *temp_r1;
    PlayerUnk148 *temp_r5;
    u8 temp_r0;

    temp_r5 = p->unk148.ptr;
    sub_8010E04(p);
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX = (u16)p->qSpeedAirX + 0x20;
    }
    sub_8010E94(p);
    sub_800FABC(p);

    BoostEngage_inline(p);

    if (--temp_r5->a.unk5 == 0) {
        SetPlayerCallback(p, sub_800F2B0);
    }
}

void sub_800F5C8(Player *p)
{
    PlayerUnk148 *temp_r1_2;
    u8 *temp_r1;
    u8 *temp_r2;

    temp_r1 = &p->unk26;
    *temp_r1 -= 0x10;
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1_2 = p->unk148.ptr;
    if ((s16)temp_r1_2->a.unkC != 0) {
        temp_r1_2->a.unkC -= 1;
    } else {
        Player_BoostModeEngage(p);
    }
    if ((s32)p->framesInvulnerable <= 0x3C) {
        temp_r2 = &p->unk14C.arr_u8[0];
        *temp_r2 &= 0xFD;
        SetPlayerCallback(p, sub_800F2B0);
    }
}

void sub_800F634(Player *p)
{
    PlayerUnk148 *temp_r1;
    PlayerUnk148 *temp_r5;
    s32 var_r3;
    u16 temp_r0;
    u8 *temp_r2;

    temp_r5 = p->unk148.ptr;
    sub_8010E4C(p);
    sub_8010ED0(p);
    sub_800FABC(p);

    BoostEngage_inline(p);

    if (temp_r5->a.unk8 == 0) {
        p->unk14C.arr_u8[0] &= 0xF7;
        SetPlayerCallback(p, sub_800F2B0);
        return;
    }
    var_r3 = 1;
    if ((DPAD_ANY | gStageData.buttonConfig.jump | gStageData.buttonConfig.attack) & p->keyInput2) {
        var_r3 = 5;
    }

    temp_r5->a.unk8 -= var_r3;
    if (temp_r5->a.unk8 <= 0) {
        temp_r5->a.unk8 = 0U;
    }
}

void sub_800F6C8(Player *p)
{
    PlayerUnk148 *temp_r2;
    u8 *temp_r2_2;

    temp_r2 = p->unk148.ptr;
    if (p->qSpeedAirX != 0) {
        s32 qSpeedAirY = -gUnknown_080CE61C[temp_r2->a.unk4][0];
        p->qSpeedAirX = qSpeedAirY;
    }
    if (p->qSpeedAirY != 0) {
        s32 qSpeedAirY = gUnknown_080CE61C[temp_r2->a.unk4][1];
        p->qSpeedAirY = -qSpeedAirY;
    }

    p->unk14C.arr_u8[0] &= 0xFE;
    SetPlayerCallback(p, sub_800F734);
    sub_800F734(p);
}

void sub_800F734(Player *p)
{
    PlayerUnk148 *temp_r5;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s16 temp_r1;
    s16 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_4;

    temp_r5 = p->unk148.ptr;
    sub_8010E04(p);

    if (p->qSpeedAirX != 0) {
        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX += 0x64;
            if (p->qSpeedAirX >= 0) {
                p->qSpeedAirX = 0;
            }
        } else {
            p->qSpeedAirX -= 0x64;
            if (p->qSpeedAirX <= 0) {
                p->qSpeedAirX = 0;
            }
        }
    }

    if (p->qSpeedAirY != 0) {
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY += 0x64;
            if (p->qSpeedAirY >= 0) {
                p->qSpeedAirY = 0;
            }
        } else {
            p->qSpeedAirY -= 0x64;
            if (p->qSpeedAirY <= 0) {
                p->qSpeedAirY = 0;
            }
        }
    }

    if (p->qSpeedAirX == 0 && p->qSpeedAirY == 0) {
        temp_r5->a.unkC = 8;
        SetPlayerCallback(p, sub_800F2B0);
    }
    sub_8010E94(p);
    sub_800FABC(p);
}

void sub_800F7C0(Player *p)
{
    PlayerUnk148 *temp_r4;
    s16 *temp_r0;

    temp_r4 = p->unk148.ptr;
    Player_800D880(p);
    p->charFlags.anim0 = 300;
    p->charFlags.character = TAILS;
    p->framesInvincible = 0;
    p->framesInvulnerable = 0;
    p->qWorldX = Q(gCamera.x);
    p->qWorldY = Q(gCamera.y + 104);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    temp_r4->a.unk0 = 0;
    p->unk14C.arr_u8[0] = 0;
    SetPlayerCallback(p, Player_80108B8);
    Player_80108B8(p);
}

void sub_800F838(Player *p)
{
    PlayerUnk148 *temp_r4;
    s16 temp_r1_2;
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r2;
    u32 var_r6;
    u8 var_r7;

    var_r7 = 0;
    var_r6 = 0;
    temp_r4 = gPlayers->unk148.ptr;
    sub_8010E04(p);
    sub_800FD60(p);
    sub_8010E94(p);
    sub_800FABC(p);
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex != 0)) {
        temp_r1 = (gStageData.buttonConfig.jump | gStageData.buttonConfig.attack | gStageData.buttonConfig.trick) & p->keyInput;
        var_r6 = (u32)((0 - temp_r1) | temp_r1) >> 0x1F;
    } else if ((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack) & p->keyInput) {
        var_r6 = 1;
    }
    if (var_r6 != 0) {
        if (++temp_r4->a.unk0 > 0x01E0) {
            temp_r4->a.unk0--;
        }
        goto block_15;
    }
    temp_r1_2 = (s16)temp_r4->a.unk0;
    if ((s32)temp_r1_2 <= 0x77) {
        temp_r4->a.unk2 = (s16)var_r6;
        SetPlayerCallback(p, Player_80108FC);
        goto block_15;
    }
    if ((s32)temp_r1_2 <= 0xEF) {
        temp_r4->a.unk2 = 0x3C;
        var_r7 = 2;
        goto block_16;
    }
    if ((s32)temp_r1_2 <= 0x167) {
        temp_r4->a.unk2 = 0x78;
        var_r7 = 3;
        goto block_16;
    }
    temp_r4->a.unk2 = 0xF0;
    var_r7 = 4;
block_15:
    if (var_r7 != 0) {
    block_16:
        p->unk26 = var_r7;
        SetPlayerCallback(p, Player_8010AA0);
    }
    sub_8010430(p);
}

void sub_800F920(Player *p)
{
    s16 sp[4];
    PlayerUnk148 *temp_r5;
    PlayerUnk148 *temp_r6;
    u16 temp_r0_2;
    u16 temp_r2;
    u8 temp_r0;
    void (*var_r1)(Player *);

    memcpy(&sp[0], &gUnknown_080CE63C, 8);
    temp_r5 = gPlayers->unk148.ptr;
    temp_r6 = p->unk148.ptr;
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);

    switch (p->unk26) {
        case 2:
        case 3:
        case 4:
            temp_r5->a.unk2 = sp[p->unk26 - 2];
            temp_r6->b.unk8 = 1;
            m4aSongNumStart(0x21FU);
            SetPlayerCallback(p, sub_8010FE0);
            break;
        case 0:
            SetPlayerCallback(p, Player_8010F88);
            break;
        case 1:
            if (++temp_r5->a.unk0 > 0x01E0) {
                temp_r5->a.unk0--;
            }
            break;
    }
    sub_8010430(p);
}

void sub_800F9C0(Player *p)
{
    PlayerUnk148 *temp_r2;
    u8 *temp_r2_2;

    temp_r2 = p->unk148.ptr;
    p->charFlags.anim0 = 0x133;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    if (temp_r2->b.unk0 == 0) {
        temp_r2->b.unk0 = 240;
        temp_r2->b.unk2 = 0;
        m4aSongNumStart(SE_578);
    }

    p->unk14C.arr_u8[0] |= 8;
    SetPlayerCallback(p, Player_800FA1C);
    Player_800FA1C(p);
}

void Player_800FA1C(Player *p)
{
    PlayerUnk148 *temp_r4;
    s16 temp_r1_2;
    u16 temp_r1;
    s16 var_r2;
    u8 *temp_r2;

    temp_r4 = p->unk148.ptr;
    sub_8010E4C(p);
    sub_8010ED0(p);
    sub_800FABC(p);
    if (temp_r4->a.unk0 == 0) {
        temp_r2 = &p->unk14C.arr_u8[0];
        *temp_r2 &= 0xF7;
        SetPlayerCallback(p, Player_80108FC);
    } else {
        var_r2 = 1;
        if (0x20 & p->keyInput) {
            if (temp_r4->b.unk2 == 0) {
                temp_r4->b.unk2 += 1;
            }
        } else if ((0x10 & p->keyInput) && (temp_r4->b.unk2 == 1)) {
        block_7:
            temp_r4->b.unk2 += 1;
        }
        if (temp_r4->b.unk2 == 2) {
            var_r2 += 2;
            temp_r4->b.unk2 = 0;
        }

        temp_r4->b.unk0 -= var_r2;
        if (temp_r4->b.unk0 <= 0) {
            temp_r4->b.unk0 = 0;
        }
    }
    sub_8010430(p);
}

void sub_800FABC(Player *p)
{
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 var_r2;
    s32 temp_r0;
    s32 temp_r4;
    s32 var_r0;
    s16 var_r3;

    if (gStageData.gameMode == 5) {
        if ((gStageData.playerIndex == 0) && (p->charFlags.character != SONIC)) {
            p->qWorldX += 0x1000;
            return;
        }
        if ((gStageData.playerIndex != 1) || (p->charFlags.character != SONIC)) {
            goto block_6;
        }
    } else {
    block_6:
        temp_r4 = p->qWorldX;
        var_r3 = (temp_r4 >> 8) - gCamera.x;
        if (gStageData.gameMode == 5) {
            if (ABS(var_r3) > 0x1E0) {
                temp_r0 = temp_r4 + 0xFFF5B000;
                p->qWorldX = temp_r0;
                var_r3 = (temp_r0 >> 8) - gCamera.x;
            }
        }
        temp_r0_2 = (s16)var_r3;
        if ((s32)temp_r0_2 <= 7) {
            var_r0 = gCamera.x + 8;
            goto block_15;
        }
        if ((s32)temp_r0_2 > 0xE8) {
            var_r0 = gCamera.x + 0xE8;
        block_15:
            p->qWorldX = var_r0 << 8;
        }
        temp_r0_3 = ((s32)p->qWorldY >> 8) - gCamera.y;
        if ((s32)temp_r0_3 <= 7) {
            p->qWorldY = Q(gCamera.y + 8);
            return;
        }
        if ((s32)temp_r0_3 > 0xA0) {
            p->qWorldY = Q(gCamera.y + DISPLAY_HEIGHT);
        }
    }
}

void sub_800FB94(Player *p, u8 arg1)
{
    s16 temp_r0;
    if ((gStageData.gameMode != 5)
        || (((gStageData.playerIndex != PLAYER_1) || (p->charFlags.character == SONIC))
            && ((gStageData.playerIndex != PLAYER_2) || (p->charFlags.character != SONIC)))) {
        if (arg1 == 0) {
            temp_r0 = (p->qWorldX >> 8) - gCamera.x;
            if (temp_r0 <= 7) {
                p->qWorldX = Q(gCamera.x + 8);
            } else if (temp_r0 > DISPLAY_WIDTH) {
                p->qWorldX = Q(gCamera.x + DISPLAY_WIDTH);
            }
        } else {
            temp_r0 = (p->qWorldY >> 8) - gCamera.y;
            if (temp_r0 <= 7) {
                p->qWorldY = Q(gCamera.y + 8);
            } else if (temp_r0 > DISPLAY_HEIGHT) {
                p->qWorldY = Q(gCamera.y + DISPLAY_HEIGHT);
            }
        }
    }
}

void sub_800FC30(Player *p)
{
    s32 temp_r0_3;
    s32 temp_r1_3;
    s32 temp_r1_5;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s16 var_r1;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u16 temp_r1_4;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_r0_5;
    s16 var_r0_6;
    bool32 playerNotSonic = (p->charFlags.character == SONIC) ? FALSE : TRUE;

    if (0x40 & p->keyInput) {
        p->qSpeedAirY -= 0x40;
    } else if (0x80 & p->keyInput) {
        p->qSpeedAirY += 0x40;
    } else {
        if (p->qSpeedAirY != 0) {
            if (p->qSpeedAirY < 0) {
                p->qSpeedAirY += 0x10;
            } else {
                p->qSpeedAirY -= 0x10;
            }
        }

        if (ABS(p->qSpeedAirY) < 0x40) {
            p->qSpeedAirY = 0;
        }
    }

    if (ABS(p->qSpeedAirY) > Q(2)) {
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = -Q(2);
        } else {
            p->qSpeedAirY = +Q(2);
        }
    }

    if (0x20 & p->keyInput) {
        p->qSpeedAirX -= 0x40;
    } else if (0x10 & p->keyInput) {
        p->qSpeedAirX += 0x40;
    } else {
        if (p->qSpeedAirX != 0) {
            if (p->qSpeedAirX < 0) {
                p->qSpeedAirX += 0x10;
            } else {
                p->qSpeedAirX -= 0x10;
            }
        }

        if (ABS(p->qSpeedAirX) < 0x40) {
            p->qSpeedAirX = 0;
        }
    }

    if (ABS(p->qSpeedAirX) > Q(2)) {
        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX = -Q(2);
        } else {
            p->qSpeedAirX = +Q(2);
        }
    }
    temp_r0_3 = (s16)p->qSpeedAirY;
    if ((s32)temp_r0_3 < 0) {
        p->charFlags.anim0 = (!playerNotSonic) ? 0x10F : 0x12D;
    } else if ((s32)temp_r0_3 > 0) {
        p->charFlags.anim0 = (!playerNotSonic) ? 0x110 : 0x12E;
    } else {
        p->charFlags.anim0 = (!playerNotSonic) ? 0x10E : 0x12C;
    }
}

void sub_800FD60(Player *p)
{
    if (DPAD_UP & p->keyInput) {
        p->qSpeedAirY -= 0x40;
    } else if (DPAD_DOWN & p->keyInput) {
        p->qSpeedAirY += 0x40;
    } else {
        if (p->qSpeedAirY != 0) {
            if (p->qSpeedAirY < 0) {
                p->qSpeedAirY += 0x10;
            } else {
                p->qSpeedAirY -= 0x10;
            }
        }

        if (ABS(p->qSpeedAirY) < 0x40) {
            p->qSpeedAirY = 0;
        }
    }

    if (ABS(p->qSpeedAirY) > 0x180) {
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = -0x180;
        } else {
            p->qSpeedAirY = +0x180;
        }
    }

    if (DPAD_LEFT & p->keyInput) {
        p->qSpeedAirX -= Q(0.25);
    } else if (DPAD_RIGHT & p->keyInput) {
        p->qSpeedAirX += Q(0.25);
    } else {
        if (p->qSpeedAirX != 0) {
            if (p->qSpeedAirX < 0) {
                p->qSpeedAirX += 0x10;
            } else {
                p->qSpeedAirX -= 0x10;
            }
        }

        if (ABS(p->qSpeedAirX) <= 0x3F) {
            p->qSpeedAirX = 0;
        }
    }

    if (ABS(p->qSpeedAirX) > 0x180) {
        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX = -0x180;
        } else {
            p->qSpeedAirX = +0x180;
        }
    }
}

void Player_800FE44(Player *p)
{
    PlayerUnk148 *temp_r2;

    if (p->charFlags.character == SONIC) {
        temp_r2 = p->unk148.ptr;
        if (gStageData.gameMode != 5) {
            if ((p->keyInput2 & gStageData.buttonConfig.trick) || (temp_r2->a.unkB != 0)) {
                temp_r2->a.unkB = 0;
                SetPlayerCallback(p, sub_801098C);
            }
        } else {
            temp_r2->a.unkB = 0;
        }
    } else if (gStageData.gameMode != GAME_MODE_5) {
        if (gPlayers->charFlags.anim0 == 0x122) {
            SetPlayerCallback(p, sub_80109FC);
        }
    } else if ((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack | gStageData.buttonConfig.trick) & p->keyInput2) {
        SetPlayerCallback(p, sub_8010DC4);
    }
}

void Player_800FED8(Player *p)
{
    u8 var_r3 = 0;
    PlayerUnk148 *unk148 = p->unk148.ptr;

    if (!(p->keyInput & gStageData.buttonConfig.trick)
        && ((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack) & p->keyInput2)) {
        if (DPAD_UP & p->keyInput) {
            var_r3 = 6;
            if (DPAD_LEFT & p->keyInput) {
                var_r3 = 5;
            } else if (DPAD_RIGHT & p->keyInput) {
                var_r3 = 7;
            }
        } else if (DPAD_DOWN & p->keyInput) {
            var_r3 = 2;
            if (DPAD_LEFT & p->keyInput) {
                var_r3 = 3;
            } else if (DPAD_RIGHT & p->keyInput) {
                var_r3 = 1;
            }
        } else if (DPAD_LEFT & p->keyInput) {
            var_r3 = 4;
        }
        unk148->a.unk4 = var_r3;
        SetPlayerCallback(p, sub_800F378);
    }
}

void sub_800FF68(Player *p)
{
    PlayerUnk148 *temp_r6;
    Sprite *s;
    struct Task *t;
    Strc_800FF68 *strc;

    temp_r6 = p->unk148.ptr;
    t = TaskCreate(Task_8010008, sizeof(Strc_800FF68), 0x2100U, 0U, TaskDestructor_8010F34);

    strc = TASK_DATA(t);
    strc->p = p;
    strc->unk8 = 1;
    strc->unkA = 0;
    strc->qWorldX = p->qWorldX;
    strc->qWorldY = p->qWorldY;

    s = &strc->s;
    s->tiles = temp_r6->c.tiles;
    s->anim = 1314;
    s->variant = 0;
    s->oamFlags = 0x2C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    s->x = I(strc->qWorldX) - gCamera.x;
    s->y = I(strc->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
}

// (99.86%) https://decomp.me/scratch/pBsMo
// NOTE: Reg-swap
NONMATCH("asm/non_matching/game/stage/player__Task_8010008.inc", void Task_8010008(void))
{
    Player *p0 = &gPlayers[PLAYER_1];
    PlayerUnk148 *unk148 = p0->unk148.ptr;
    struct Task **t = &gCurTask;
    Strc_800FF68 *strc = TASK_DATA(*t);
    Sprite *s = &strc->s;
    Player *p;

    switch (strc->unkA) {
        case 0x0:
            if (unk148->a.unk0 >= 70) {
                s->anim = 0x522;
                s->variant = 1;
                strc->unkA = 0xA;
            }
            break;
        case 0xA:
            if (unk148->a.unk0 >= 120) {
                s->anim = 0x51B;
                s->variant = 0;
                strc->unkA = 0xB;
            }
            break;
        case 0xB:
            if (unk148->a.unk0 >= 180) {
                s->anim = 0x51B;
                s->variant = 1;
                strc->unkA = 0x14;
            }
            break;
        case 0x14:
            if (unk148->a.unk0 >= 240) {
                s->anim = 0x51B;
                s->variant = 2;
                strc->unkA = 0x15;
            }
            break;
        case 0x15:
            if (unk148->a.unk0 >= 300) {
                s->anim = 0x51B;
                s->variant = 3;
                strc->unkA = 0x64;
            }
            break;
        case 0x64:
            if (unk148->a.unk0 >= 360) {
                s->anim = 0x51B;
                s->variant = 4;
                strc->unkA = 0xC8;
            }
            break;
    }

    p = strc->p;
    strc->qWorldX = p->qWorldX;
    strc->qWorldY = p->qWorldY;

    if (gStageData.gameMode != 5) {
        if (gPlayers->charFlags.anim0 != 290) {
            TaskDestroy(*t);
            return;
        }
    } else if (gStageData.playerIndex == 0) {
        if (p->unk26 != 1) {
            TaskDestroy(*t);
            return;
        }
    } else if (!((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack | gStageData.buttonConfig.trick) & p->keyInput)
               || (0xA & p->unk14C.arr_u8[0])) {
        TaskDestroy(*t);
        return;
    }

    s->x = I(strc->qWorldX) - gCamera.x;
    s->y = I(strc->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
END_NONMATCH

bool32 sub_8010184(Sprite *s, s32 offsetX, s32 offsetY, s16 hbIndex, Player *p)
{
    Sprite2 *sprite = &p->spriteInfoBody->s;

    if (!(p->moveState & MOVESTATE_100)) {
        if ((s->hitboxes[hbIndex].index != -1) && (sprite->hitboxes[0].index != -1)) {
            if (HB_COLLISION(offsetX, offsetY, s->hitboxes[hbIndex].b, I(p->qWorldX) + gCamera.unk6A, I(p->qWorldY),
                             sprite->hitboxes[0].b)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

bool32 sub_8010288(Sprite *s, s32 offsetX, s32 offsetY, s16 hbIndex, Player *p)
{
    Sprite2 *sprite = &p->spriteInfoBody->s;

    if (!(p->moveState & MOVESTATE_100)) {
        if ((s->hitboxes[hbIndex].index != -1) && (sprite->hitboxes[1].index != -1)) {
            if (HB_COLLISION(offsetX, offsetY, s->hitboxes[hbIndex].b, I(p->qWorldX) + gCamera.unk6A, I(p->qWorldY),
                             sprite->hitboxes[1].b)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

void sub_801038C(Player *p, u8 arg1)
{
    if (p->framesInvulnerable <= 0) {
        p->unk48 = 1;
        if (p->charFlags.character == SONIC) {
            PlayerUnk148 *unk148 = p->unk148.ptr;
            if (arg1 == 1) {
                if (8 & p->unk14C.arr_u8[0]) {
                    unk148->a.unk8 = 0;
                    return;
                }
                p->framesInvulnerable = 120;

                SetPlayerCallback(p, sub_8010BBC);
            } else {
                SetPlayerCallback(p, sub_8010C04);
            }
        } else {
            PlayerUnk148 *unk148 = p->unk148.ptr;
            PlayerUnk148_A *unk148_A = &unk148->a;

            if (arg1 == 1) {
                if (8 & p->unk14C.arr_u8[0]) {
                    unk148_A->unk0 = 0;
                    return;
                }
                p->framesInvulnerable = 120;
                SetPlayerCallback(p, sub_8010D28);
                return;
            } else {
                SetPlayerCallback(p, sub_800F9C0);
            }
        }
    }
}

void sub_8010430(Player *p)
{
    PlayerUnk148 *temp_r5;
    s16 temp_r0_2;
    Sprite *s;
    s32 var_r0_2;
    s32 var_r8;
    s8 var_r0;

    temp_r5 = p->unk148.ptr;
    s = &temp_r5->d.s;
    var_r8 = 0;
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex == PLAYER_1)) {
        switch (p->charFlags.state1) {
            case 0:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 0;
                break;
            case 2:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 9;
                break;
            case 3:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 0xA;
                break;
            case 1:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 1;
                break;
            case 4:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 0xB;
                break;
            case 5:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 0xC;
                break;
        }
    } else if (p->charFlags.anim0 != temp_r5->d.someAnim0) {
        switch (p->charFlags.anim0) {
            case 300:
                s->anim = ANIM_EGGMAN_SIDE;
                s->variant = 0;
                break;
            case 301:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 9;
                s->variant = var_r0;
                break;
            case 302:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 0xA;
                s->variant = var_r0;
                break;
            case 303:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 1;
                s->variant = var_r0;
                break;
            case 304:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 0xB;
                s->variant = var_r0;
                break;
            case 305:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 2;
                s->variant = var_r0;
                break;
            case 306:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 0xC;
                s->variant = var_r0;
                break;
            case 307:
                s->anim = ANIM_EGGMAN_SIDE;
                var_r0 = 6;
                s->variant = var_r0;
                break;
        }
        temp_r5->d.someAnim0 = p->charFlags.anim0;
    }

    s->x = (I(p->qWorldX) - gCamera.x);
    s->y = (I(p->qWorldY) - gCamera.y);

    if (gStageData.unk4 == 1) {
        if (gStageData.unkBC & 1) {
            s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);
        } else {
            s->frameFlags &= ~SPRITE_FLAG(OBJ_MODE, 1);
        }

        if (2 & gStageData.unkBC) {
            var_r8 = 1;
        }
    } else {
        s->frameFlags &= ~0x80;
    }
    UpdateSpriteAnimation(s);
    if (var_r8 == 0) {
        DisplaySprite(s);
    }
}

void sub_80105F0(Player *p)
{
    s16 *temp_r1;
    s16 *var_r1_2;
    s16 temp_r4;
    s16 var_r0;
    s16 var_r1;
    u32 temp_r0;

    if (p->charFlags.character == SONIC) {
        Player_800D880(p);
        p->moveState = (p->moveState & ~0x21);
        p->moveState |= 0x100;
        p->charFlags.anim0 = 0x67;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = (p->moveState & 0x80) ? -672 : -1248;

        p->framesInvulnerable = 120;
        p->unk48 = 1;
        Player_PlaySong(p, SE_HIT_WITH_NO_RINGS);
        Player_PlaySong(p, VOICE__SONIC__WHOA);
        Player_BoostModeDisengage(p);
        SetPlayerCallback(p, sub_80106E0);
        sub_80106E0(p);
    } else {
        p->moveState |= 0x100;
        if ((gStageData.levelTimer == 0x8C9F) && (gStageData.unk2 == 0)) {
            p->framesInvulnerable = 600;
        } else {
            p->framesInvulnerable = 120;
        }
        p->unk48 = 1;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        SetPlayerCallback(p, sub_80107B4);
        sub_80107B4(p);
    }
    gStageData.rings = 0;
}

void sub_80106E0(Player *arg0)
{
    PlayerUnk148 *temp_r5;
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    u8 prevLives;

    temp_r5 = arg0->unk148.ptr;
    if (gCamera.unk6A != 0) {
        var_r0 = arg0->qWorldX + Q(gCamera.unk6A) + Q(4.5);
        var_r1 = 0;
        arg0->qWorldX = var_r0 + var_r1;
    } else {
        if (gCamera.x == 0) {
            arg0->qWorldX -= 896;
        }
        var_r1 = Q(gCamera.unk6A);
        var_r0 = arg0->qWorldX;
        arg0->qWorldX = var_r0 + var_r1;
    }

    var_r2 = Q(3.5);
    if (arg0->charFlags.someIndex != 0x3) {
        if (gStageData.unk4 != 3) {
            var_r2 = 0;
        }
        arg0->qWorldX += arg0->qSpeedAirX + var_r2;
        arg0->qWorldY += arg0->qSpeedAirY;
    }
    sub_8016E50(arg0);
    sub_800FB94(arg0, 0);

    if (arg0->framesInvulnerable <= 0) {
        if (gStageData.lives == 0) {
            sub_8002414();
            SetPlayerCallback(arg0, sub_800DF9C);
            temp_r5->a.unk7 = 1;
        } else {
            gStageData.lives--;
            sub_8001D58(&sub_8002388, 0);
        }
    }
}

void sub_80107B4(Player *arg0)
{
    s32 temp_r3;
    s32 qPrevWorldX;
    s32 var_r0;

    qPrevWorldX = arg0->qWorldX;
    temp_r3 = qPrevWorldX - Q(1);
    arg0->qWorldX -= Q(1);

    if (gCamera.unk6A != 0) {
        arg0->qWorldX = temp_r3 + Q(gCamera.unk6A) + Q(4.5);
    } else {
        if (gCamera.x == 0) {
            arg0->qWorldX = qPrevWorldX - Q(4.5);
        }
        arg0->qWorldX = arg0->qWorldX + Q(gCamera.unk6A);
    }

    sub_8010430(arg0);
}

void Player_801080C(Player *p)
{
    PlayerUnk148 *temp_r1;

    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->unk148.ptr;
    if (temp_r1->a.unkC != 0) {
        temp_r1->a.unkC--;
    } else {
        Player_BoostModeEngage(p);
    }
    if (gStageData.unk4 == 3) {
        gStageData.timer = 8;
        p->moveState &= ~0x8000000;
        SetPlayerCallback(p, sub_800F2B0);
    }
}

void Player_801086C(Player *p)
{
    PlayerUnk148 *temp_r1;

    sub_8010E04(p);
    sub_800FC30(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->unk148.ptr;
    if (temp_r1->a.unkC != 0) {
        temp_r1->a.unkC = (u16)temp_r1->a.unkC - 1;
    } else {
        Player_BoostModeEngage(p);
    }
    Player_800FE44(p);
    Player_800FED8(p);
}

void Player_80108B8(Player *p)
{
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    sub_8010430(p);
    if (gStageData.unk4 == 3) {
        p->moveState &= 0xF7FFFFFF;
        SetPlayerCallback(p, Player_80108FC);
    }
}

void Player_80108FC(Player *p)
{
    Player_800D880(p);
    p->charFlags.anim0 = 0x12C;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk26 = 0;
    p->unk48 = 0;

    if ((gStageData.gameMode == 5) && (gStageData.playerIndex == PLAYER_1)) {
        SetPlayerCallback(p, Player_8010F88);
        Player_8010F88(p);
        return;
    }
    SetPlayerCallback(p, sub_8010960);
    sub_8010960(p);
}

void sub_8010960(Player *p)
{
    sub_8010E04(p);
    sub_800FC30(p);
    sub_8010E94(p);
    sub_800FABC(p);
    Player_800FE44(p);
    sub_8010430(p);
}

void sub_801098C(Player *p)
{
    PlayerUnk148 *unk148;

    unk148 = p->unk148.ptr;
    p->charFlags.anim0 = 0x122;
    unk148->a.unk0 = 0;
    unk148->a.unk2 = 0;
    SetPlayerCallback(p, sub_800F4A4);
    sub_800F4A4(p);
}

void Player_80109C0(Player *p)
{
    PlayerUnk148 *unk148 = p->unk148.ptr;

    p->charFlags.anim0 = 0x123;
    p->qSpeedAirX = -0x200;
    p->qSpeedAirY = 0;
    unk148->a.unk5 = 0x14;
    SetPlayerCallback(p, sub_800F55C);
    sub_800F55C(p);
}

void sub_80109FC(Player *p)
{
    p->unk148.ptr->b.unk8 = 0;
    p->unk14C.arr_u8[0] |= 4;
    sub_800FF68(p);
    SetPlayerCallback(p, sub_8010A3C);
    sub_8010A3C(p);
}

// TODO: Remove gotos!
void sub_8010A3C(Player *p)
{
    p->qWorldX = gPlayers->qWorldX + Q(48);
    p->qWorldY = gPlayers->qWorldY;

    if (gPlayers->charFlags.anim0 == 0x122) {
        goto lbl;
    } else if (gPlayers->charFlags.anim0 > 0x122) {
        if (gPlayers->charFlags.anim0 == 0x123) {
            SetPlayerCallback(p, Player_8010AA0);
            goto lbl;
        }
    }

    p->unk14C.arr_u8[0] &= 0xFB;
    SetPlayerCallback(p, Player_80108FC);

lbl:

    sub_8010430(p);
}

void Player_8010AA0(Player *p)
{
    PlayerUnk148 *unk148 = p->unk148.ptr;

    p->charFlags.anim0 = 304;
    unk148->b.unk8 = 1;
    p->qSpeedAirX = Q(8);
    p->qSpeedAirY = 0;
    m4aSongNumStart(0x21FU);
    SetPlayerCallback(p, sub_8010AE4);
    sub_8010AE4(p);
}

void sub_8010AE4(Player *p)
{
    PlayerUnk148 *unk148;
    s16 temp_r1;
    u8 *temp_r2;

    unk148 = p->unk148.ptr;
    sub_8010E04(p);
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX -= Q(0.25);
    } else {
        // NOTE: union variant b might not  be correct!
        unk148->b.unk8 = 0;
        p->unk14C.arr_u8[0] &= 0xFB;
        SetPlayerCallback(p, Player_80108FC);
    }
    sub_8010E94(p);
    sub_800FABC(p);
    sub_8010430(p);
}

void sub_8010B3C(Player *p)
{
    u8 *temp_r2;

    p->unk148.ptr->b.unk8 = 0;
    p->unk14C.arr_u8[0] &= 0xFB;
    p->qSpeedAirX = -0x800;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, sub_8010B7C);
    sub_8010B7C(p);
}

void sub_8010B7C(Player *p)
{
    sub_8010E04(p);
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX += Q(0.5);
    } else {
        SetPlayerCallback(p, Player_80108FC);
    }
    sub_8010E94(p);
    sub_800FABC(p);
    sub_8010430(p);
}

void sub_8010BBC(Player *p)
{
    u8 *temp_r2;

    p->charFlags.anim0 = 0x111;
    p->qSpeedAirX = -0x400;
    p->qSpeedAirY = 0;
    m4aSongNumStart(SE_578);
    p->unk14C.arr_u8[0] |= 2;
    SetPlayerCallback(p, sub_800F5C8);
    sub_800F5C8(p);
}

void sub_8010C04(Player *p)
{
    PlayerUnk148 *temp_r2;
    u8 *temp_r2_2;

    temp_r2 = p->unk148.ptr;
    p->charFlags.anim0 = 0x124;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    temp_r2->a.unk8 = 0xF0;
    temp_r2->a.unkA = 0;
    m4aSongNumStart(SE_578);
    p->unk14C.arr_u8[0] |= 8;
    SetPlayerCallback(p, sub_800F634);
    sub_800F634(p);
}

void sub_8010C58(Player *p)
{
    if (p->charFlags.character == SONIC) {
        SetPlayerCallback(p, sub_8010C98);
        return;
    }
    SetPlayerCallback(p, sub_8010B3C);
}

void sub_8010C88(Player *p) { SetPlayerCallback(p, sub_800F6C8); }

void sub_8010C98(Player *p)
{
    u8 *temp_r2;

    p->unk14C.arr_u8[0] &= 0xFE;
    p->qSpeedAirX = -0x800;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, sub_8010CD0);
    sub_8010CD0(p);
}

void sub_8010CD0(Player *p)
{
    PlayerUnk148 *temp_r1;

    sub_8010E04(p);
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX += Q(0.5);
    } else {
        SetPlayerCallback(p, sub_800F2B0);
    }
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->unk148.ptr;
    if (temp_r1->a.unkC != 0) {
        temp_r1->a.unkC--;
        return;
    }
    Player_BoostModeEngage(p);
}

void sub_8010D28(Player *p)
{
    u8 *temp_r2;

    p->charFlags.anim0 = 0x131;
    p->qSpeedAirX = -0x400;
    p->qSpeedAirY = 0;
    m4aSongNumStart(SE_578);
    p->unk14C.arr_u8[0] |= 2;
    SetPlayerCallback(p, sub_8010D70);
    sub_8010D70(p);
}

void sub_8010D70(Player *p)
{
    u8 *temp_r1;
    u8 *temp_r2;

    p->unk26 -= 0x10;
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    if ((s32)p->framesInvulnerable <= 0x3C) {
        p->unk14C.arr_u8[0] &= 0xFD;
        SetPlayerCallback(p, Player_80108FC);
    }
    sub_8010430(p);
}

void sub_8010DC4(Player *p)
{
    PlayerUnk148 *temp_r2;

    temp_r2 = gPlayers->unk148.ptr;
    p->unk26 = 1;
    temp_r2->a.unk0 = 0;
    temp_r2->a.unk2 = 0;
    sub_800FF68(p);
    SetPlayerCallback(p, sub_800F838);
    sub_800F838(p);
}

void sub_8010E04(Player *p)
{
    s32 qWorldX;

    if (gCamera.unk6A != 0) {
        qWorldX = p->qWorldX + Q(gCamera.unk6A);
        p->qWorldX = qWorldX + Q(4.5);
    } else {
        if (gCamera.x == 0) {
            p->qWorldX -= Q(3.5);
        }

        p->qWorldX += Q(gCamera.unk6A);
    }
}

void sub_8010E4C(Player *p)
{
    s32 qWorldX;

    if (gCamera.unk6A != 0) {
        qWorldX = p->qWorldX + Q(gCamera.unk6A);
        p->qWorldX = qWorldX + Q(4.0);
    } else {
        if (gCamera.x == 0) {
            p->qWorldX -= Q(4.0);
        }

        p->qWorldX += Q(gCamera.unk6A);
    }
}

void sub_8010E94(Player *p)
{
    s32 var_r3;

    var_r3 = Q(3.5);
    if (p->charFlags.someIndex != 3) {
        if (gStageData.unk4 != 3) {
            var_r3 = 0;
        }
        p->qWorldX += p->qSpeedAirX + var_r3;
        p->qWorldY += p->qSpeedAirY;
    }
}

void sub_8010ED0(Player *p)
{
    s32 var_r3;

    var_r3 = Q(4.0);
    if (p->charFlags.someIndex != 3) {
        if (gStageData.unk4 != 3) {
            var_r3 = 0;
        }
        p->qWorldX += p->qSpeedAirX + var_r3;
        p->qWorldY += p->qSpeedAirY;
    }
}

void sub_8010F0C(Player *p)
{
    PlayerUnk148 *unk148;

    unk148 = p->unk148.ptr;
    if ((s16)unk148->a.unkC != 0) {
        unk148->a.unkC -= 1;
        return;
    }
    Player_BoostModeEngage(p);
}

void TaskDestructor_8010F34(Task *t) { }

void sub_8010F38(Player *p)
{
    PlayerUnk148 *unk148;
    s16 var_r0;

    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    unk148 = p->unk148.ptr;
    if (unk148->a.unkC != 0) {
        unk148->a.unkC--;
    } else {
        Player_BoostModeEngage(p);
    }

    if (p->charFlags.state1 == 0) {
        p->charFlags.anim0 = 0x111;
    } else {
        p->charFlags.anim0 = -1;
    }
}

void Player_8010F88(Player *arg0)
{
    PlayerUnk148 *temp_r5;
    PlayerUnk148 *temp_r6;

    temp_r5 = gPlayers->unk148.ptr;
    temp_r6 = arg0->unk148.ptr;
    sub_8010E04(arg0);
    sub_8010E94(arg0);
    sub_800FABC(arg0);
    if (arg0->unk26 != 0) {
        temp_r6->b.unk8 = 0;
        temp_r5->a.unk0 = 0;
        temp_r5->a.unk2 = 0;
        sub_800FF68(arg0);
        SetPlayerCallback(arg0, sub_800F920);
    }
    sub_8010430(arg0);
}

void sub_8010FE0(Player *p)
{
    PlayerUnk148 *unk148;
    u8 temp_r0;

    unk148 = p->unk148.ptr;
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r0 = p->unk26;
    if (temp_r0 == 0) {
        unk148->b.unk8 = temp_r0;
        SetPlayerCallback(p, Player_8010F88);
    }
    sub_8010430(p);
}

s32 sub_8011024(s16 arg0, Player *arg1, u8 *arg2, u32 *arg3)
{
    u8 dummyArg2;
    u32 dummyArg3;
    s32 temp_r2;
    u16 tempArg0;
    u16 var_r0;
    s32 tempArg2;

    tempArg0 = arg0;
    if (arg2 == NULL) {
        arg2 = &dummyArg2;
    }
    if (arg3 == NULL) {
        arg3 = &dummyArg3;
    }
    if ((tempArg0 != 2) && sub_80114CC(arg1)) {
        *arg2 = 0;
        *arg3 = 0;
        arg1->qSpeedGround = arg1->qSpeedAirX;

        if (arg1->moveState & MOVESTATE_2) {
            SetPlayerCallback(arg1, Player_800891C);
        } else {
            SetPlayerCallback(arg1, Player_8005380);
        }
        return 0;
    }
    switch (tempArg0) {
        case 0:
            var_r0 = 0;
            temp_r2 = sub_80110E8(var_r0, arg1, arg2, arg3);
            break;
        case 1:
            var_r0 = 1;
            temp_r2 = sub_80110E8(var_r0, arg1, arg2, arg3);
            break;
        case 2:
            var_r0 = 2;
            temp_r2 = sub_80110E8(var_r0, arg1, arg2, arg3);
            break;
        case 3:
            var_r0 = 3;
            temp_r2 = sub_80110E8(var_r0, arg1, arg2, arg3);
            break;
        default:
            return 0;
    }

    tempArg2 = *arg2;
    if (1 & tempArg2) {
        *arg2 = 0;
    } else if (arg1->moveState & 0x10000) {
        s32 v = (0 - 128) - tempArg2;
        *arg2 = v;
    }
    return temp_r2;
}

// (88.55%) https://decomp.me/scratch/X0l5n
NONMATCH("asm/non_matching/game/stage/player__sub_80110E8.inc", s32 sub_80110E8(u16 arg0, Player *p, u8 *arg2, u32 *arg3))
{
    u8 sp08;
    u8 sp09;
    u8 sp0A;
    u32 sp0C;
    s32 sp18;
    s16 temp_r7;
    s32 temp_r0_4;
    s32 var_r0;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r5;
    s32 var_r8;
    u16 temp_r1;
    s16 worldX;
    s16 worldY;
    u32 var_r2;
    u8 var_r2_2;
    s32 px;
    s32 py;

    if (arg2 == NULL) {
        arg2 = &sp08;
    }
    if (arg3 == NULL) {
        arg3 = &sp0C;
    }
    worldX = I(p->qWorldX);
    worldY = I(p->qWorldY);
    switch (arg0) {
        case 0:
            px = worldX - 2;
            px -= p->spriteOffsetX;
            py = worldY - p->spriteOffsetY;
            var_r2 = p->layer;
            if (p->qSpeedAirY < Q(3)) {
                var_r2 |= 0x80;
            }
            var_r8 = sub_80517FC(px, py, var_r2, -8, &sp09, sub_805203C);

            px = worldX - 2;
            px -= p->spriteOffsetX;
            py = worldY + p->spriteOffsetY;
            var_r2_2 = p->layer;
            if (p->qSpeedAirY < Q(3)) {
                var_r2_2 |= 0x80;
            }
            var_r5 = sub_80517FC(px, py, var_r2_2, -8, &sp0A, sub_805203C);
            break;
        case 1:
            temp_r0_4 = worldX + 2;
            px = temp_r0_4 + p->spriteOffsetX;
            py = worldY - p->spriteOffsetY;
            var_r2_2 = p->layer;
            if (p->qSpeedAirY < Q(3)) {
                var_r2_2 |= 0x80;
            }
            var_r8 = sub_80517FC(py, px, var_r2_2, +8, &sp09, sub_805203C);
            px = temp_r0_4 + p->spriteOffsetX;
            py = worldY + p->spriteOffsetY;
            var_r2 = p->layer;
            if (p->qSpeedAirY < Q(3)) {
                var_r2 |= 0x80;
            }
            var_r5 = sub_80517FC(px, py, var_r2, +8, &sp0A, sub_805217C);
            break;
        case 2:
            py = worldY - p->spriteOffsetY;
            px = (worldX - 2);
            px -= p->spriteOffsetX;
            var_r2 = p->layer;
            if (p->qSpeedAirY < Q(3)) {
                var_r2 |= 0x80;
            }
            var_r8 = sub_80517FC(py, px, var_r2, -8, &sp09, sub_805217C);
            py = worldY - p->spriteOffsetY;
            px = worldX + 2;
            px += p->spriteOffsetX;
            var_r2 = p->layer;
            if (p->qSpeedAirY < Q(3)) {
                var_r2 |= 0x80;
            }
            var_r5 = sub_80517FC(py, px, var_r2, -8, &sp0A, sub_805217C);
            break;
        case 3:
            py = worldY + p->spriteOffsetY;
            px = worldX;
            px = (px - 2);
            px -= p->spriteOffsetX;
            var_r2 = p->layer;
            if (p->qSpeedAirY < 0) {
                var_r2 |= 0x80;
            }
            var_r8 = sub_80517FC(py, px, var_r2, +8, &sp09, sub_805217C);
            py = worldY + p->spriteOffsetY;
            px = worldX + 2;
            px += p->spriteOffsetX;
            var_r2 = p->layer;
            if (p->qSpeedAirY < 0) {
                var_r2 |= 0x80;
            }

            var_r5 = sub_80517FC(py, px, var_r2, +8, &sp0A, sub_805217C);
            break;
    }
    if (var_r8 < var_r5) {
        var_r1 = var_r8;
        *arg2 = sp09;
        *arg3 = var_r5;
    } else {
        var_r1 = var_r5;
        *arg2 = sp0A;
        *arg3 = var_r8;
    }
    return var_r1;
}
END_NONMATCH

// NOTE: Basically identical to sub_8011434()!
// (96.80%) https://decomp.me/scratch/344V6
NONMATCH("asm/non_matching/game/stage/player__sub_801139C.inc", s16 sub_801139C(Player *p))
{
    s32 param;
    u8 var_r0_2;
    s8 var_r3;
    s16 result = 0;

    if (0x20 & p->moveState) {
        p->charFlags.unk29 = 0;
        p->charFlags.unk28 = 0;
    } else {
        var_r3 = p->unk26;
        if (p->moveState & 0x10000) {
            var_r3 = ((s32)(0 - ((var_r3 << 0x18) + 0x40000000)) >> 0x18) - 0x40;
        }

        if (var_r3 + 0x20 > 0) {
            if (var_r3 <= 0) {
                var_r0_2 = var_r3 + 0x20;
            } else {
                var_r0_2 = (var_r3 + 0x1F);
            }
        } else if (var_r3 > 0) {
            var_r0_2 = var_r3 + 0x20;
        } else {
            var_r0_2 = (var_r3 + 0x1F);
        }

        switch (var_r0_2 >> 6) {
            case 0:
                param = 0;
                break;
            case 1:
                param = 2;
                break;
            case 2:
                param = 1;
                break;
            case 3:
                param = 3;
                break;
            default:
                return 0;
        }

        result = sub_80116A4(param, p);
        return result;
    }

    return 0;
}
END_NONMATCH

// NOTE: Basically identical to sub_801139C()!
/// (96.80%) https://decomp.me/scratch/keBUN
NONMATCH("asm/non_matching/game/stage/player__sub_8011434.inc", s16 sub_8011434(Player *p))
{
    s32 param;
    u8 var_r0_2;
    s8 var_r3;
    s16 result = 0;

    if (0x20 & p->moveState) {
        p->charFlags.unk29 = 0;
        p->charFlags.unk28 = 0;
    } else {
        var_r3 = p->unk26;
        if (p->moveState & 0x10000) {
            var_r3 = ((s32)(0 - ((var_r3 << 0x18) + 0x40000000)) >> 0x18) - 0x40;
        }

        if (var_r3 + 0x20 > 0) {
            if (var_r3 <= 0) {
                var_r0_2 = var_r3 + 0x20;
            } else {
                var_r0_2 = (var_r3 + 0x1F);
            }
        } else if (var_r3 > 0) {
            var_r0_2 = var_r3 + 0x20;
        } else {
            var_r0_2 = (var_r3 + 0x1F);
        }

        switch (var_r0_2 >> 6) {
            case 0:
                param = 0;
                break;
            case 1:
                param = 2;
                break;
            case 2:
                param = 1;
                break;
            case 3:
                param = 3;
                break;
            default:
                return 0;
        }

        result = sub_8011978(param, p);
        return result;
    }

    return 0;
}
END_NONMATCH

u16 sub_80114CC(Player *p)
{
    s16 sp00;
    s16 temp_r6;
    u32 mask;

    if (gCamera.unk67[2] == 0) {
        return 0U;
    }
    temp_r6 = I(p->qWorldY);
    sub_8004E20(I(p->qWorldX), (p->spriteOffsetY + I(p->qWorldY)), &sp00);
    mask = ~3;
    temp_r6 = (u16)temp_r6 & mask;
    sp00 = (sp00 - p->spriteOffsetY) & mask;
    if ((temp_r6 == sp00) && (p->qSpeedAirY >= 0)) {
        if ((u8)(p->unk26 + 24) <= 48) {
            if ((!(p->moveState & 4) && (ABS(p->qSpeedGround) >= Q(4)))
                || ((p->moveState & 4) && ((ABS(p->qSpeedAirX) >= Q(4)) && (ABS(p->qSpeedAirY) <= Q(1.5))))) {
                sub_80116A4(0, p);
                if (p->qWorldY >= Q(sp00)) {
                    if (!(p->moveState & 0x1000)) {
                        p->moveState = p->moveState | 0x1000;
                        Player_8017364(p);
                        Player_PlaySong(p, SE_281);
                    }
                    Player_PlayOrContinueSong(p, SE_281);
                    p->qWorldY = Q(sp00);
                    p->unk26 = 0;
                    p->moveState &= ~4;
                    return 1U;
                }
                if (p->moveState & 0x1000) {
                    Player_StopSong(p, SE_281);
                }

                p->moveState &= ~0x1000;
                return 0;
            }
        }
    }

    if ((temp_r6 >= sp00) && (temp_r6 <= (sp00 + 8)) && ((0x180000 & p->unkC) != 0)) {
        if (p->moveState & MOVESTATE_IN_AIR) {
            if (p->unkC & 0x80000) {
                SetPlayerCallback(p, sub_801A504);
            } else {
                SetPlayerCallback(p, sub_801C234);
            }
        }
        Player_StopSong(p, SE_281);
        p->moveState |= 0x1000;
        p->moveState &= ~4;
        return 0U;
    } else {
        if (0x1000 & p->moveState) {
            p->moveState &= ~0x1000;
            Player_StopSong(p, SE_281);
        }

        return 0U;
    }
}

// (97.56%) https://decomp.me/scratch/KnAcj
NONMATCH("asm/non_matching/game/stage/player__sub_80116A4.inc", s16 sub_80116A4(s16 arg0, Player *p))
{
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r2;
    s32 var_r3;
    u8 var_r0_n;
    u8 var_r6;
    s32 a, b;
    s32 ispC;
    s32 isp10;

    spC = p->qWorldX;
    sp10 = p->qWorldY;
    sp14 = (s32)p->layer;
    switch (arg0) {
        case 0:
            isp10 = I(sp10);
            a = isp10 + p->spriteOffsetY;
            ispC = I(spC);
            b = ispC - 2;
            b -= p->spriteOffsetX;
            sp18 = sub_80517FC(a, b, sp14, 8, &p->charFlags.unk28, sub_805217C);
            var_r3 = sub_80517FC(isp10 + p->spriteOffsetY, (ispC += 2) + p->spriteOffsetX, sp14, 8, &p->charFlags.unk29, sub_805217C);
            break;
        case 1:
            sp18 = sub_80517FC(I(sp10) - p->spriteOffsetY, +I(spC) + 2 + p->spriteOffsetX, sp14, -8, &p->charFlags.unk28, sub_805217C);
            var_r3 = sub_80517FC(I(sp10) - p->spriteOffsetY, -2 - p->spriteOffsetX + I(spC), sp14, -8, &p->charFlags.unk29, sub_805217C);
            break;
        case 2:
            sp18 = sub_80517FC(I(spC) - p->spriteOffsetY, -2 - p->spriteOffsetX + I(sp10), sp14, -8, &p->charFlags, sub_805203C);
            var_r3 = sub_80517FC(I(spC) - p->spriteOffsetY, +2 + I(sp10) + p->spriteOffsetX, sp14, -8, &p->charFlags.unk29, sub_805203C);
            break;
        case 3:
            sp18 = sub_80517FC(I(spC) + p->spriteOffsetY, +2 + I(sp10) + p->spriteOffsetX, sp14, 8, &p->charFlags.unk28, sub_805203C);
            var_r3 = sub_80517FC(I(spC) + p->spriteOffsetY, -2 - p->spriteOffsetX + I(sp10), sp14, 8, &p->charFlags.unk29, sub_805203C);
            break;
        default:
            return 0;
    }

    var_r2 = var_r3;
    if (var_r3 > sp18) {
        var_r2 = sp18;
    }
    if (var_r2 != 0) {
        if (var_r2 < 0) {
            if (var_r2 >= -14) {
                switch (arg0) {
                    case 0:
                        sp10 += Q(var_r2);
                        break;
                    case 1:
                        sp10 -= Q(var_r2);
                        break;
                    case 2:
                        spC -= Q(var_r2);
                        break;
                    case 3:
                        spC += Q(var_r2);
                        break;
                }
            } else {
                return 0;
            }
        } else {
            if (!((s16)arg0 & 2)) {
                var_r0 = p->qSpeedAirX;
            } else {
                var_r0 = p->qSpeedAirY;
            }
            var_r0_3 = I(ABS(var_r0)) + 3;
            if (var_r0_3 > 11) {
                var_r0_3 = 11;
            }
            if (var_r2 <= var_r0_3) {
                switch (arg0) {
                    case 0:
                        sp10 += Q(var_r2);
                        break;
                    case 1:
                        sp10 -= Q(var_r2);
                        break;
                    case 2:
                        spC -= Q(var_r2);
                        break;
                    case 3:
                        spC += Q(var_r2);
                        break;
                }
            } else {
                return 1;
            }
        }
    }
block_43:
    if (sp18 < var_r3) {
        var_r0_n = p->charFlags.unk28;
    } else {
        var_r0_n = p->charFlags.unk29;
    }
    var_r6 = var_r0_n;
    if (!((s16)arg0 & 2)) {
        p->qWorldY = sp10;
    } else {
        p->qWorldX = spC;
    }
    if (!(1 & var_r6)) {
        p->unk26 = var_r6;
        if (p->moveState & 0x10000) {
            var_r6 = p->unk26;
            var_r6 = ((u32)(0 - ((var_r6 + 0x40) << 0x18)) >> 0x18);
            p->unk26 = var_r6 - 0x40;
        }
    }

    return 0;
}
END_NONMATCH

// (87.57%) https://decomp.me/scratch/0sHHf
NONMATCH("asm/non_matching/game/stage/player__sub_8011978.inc", s16 sub_8011978(s16 arg0, Player *p))
{
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 var_r0_2;
    s32 var_r2;
    u8 temp_r1;
    u8 var_r6;
    u8 var_r0_n;

    spC = p->qWorldX;
    sp10 = p->qWorldY;
    temp_r1 = p->layer;
    sp8 = (u16)arg0;
    switch (arg0) {
        case 0:
            sp14 = sub_80517FC(I(sp10) + p->spriteOffsetY, +I(spC) - 2 - p->spriteOffsetX, temp_r1, +8, &p->charFlags.unk28, sub_805217C);
            var_r2 = sub_80517FC(I(sp10) + p->spriteOffsetY, +I(spC) + 2 + p->spriteOffsetX, temp_r1, +8, &p->charFlags.unk29, sub_805217C);
            break;
        case 1:
            sp14 = sub_80517FC(I(sp10) - p->spriteOffsetY, +2 + I(spC) + p->spriteOffsetX, temp_r1, -8, &p->charFlags.unk28, sub_805217C);
            var_r2 = sub_80517FC(I(sp10) - p->spriteOffsetY, -2 + I(spC) - p->spriteOffsetX, temp_r1, -8, &p->charFlags.unk29, sub_805217C);
            break;
        case 2:
            sp14 = sub_80517FC(I(spC) - p->spriteOffsetY, +I(sp10) - 2 - p->spriteOffsetX, temp_r1, -8, &p->charFlags.unk28, sub_805203C);
            var_r2 = sub_80517FC(I(spC) - p->spriteOffsetY, +I(sp10) + 2 + p->spriteOffsetX, temp_r1, -8, &p->charFlags.unk29, sub_805203C);
            break;
        case 3:
            sp14 = sub_80517FC(I(spC) + p->spriteOffsetY, +2 + I(sp10) + p->spriteOffsetX, temp_r1, +8, &p->charFlags.unk28, sub_805203C);
            var_r2 = sub_80517FC(I(spC) + p->spriteOffsetY, -2 - p->spriteOffsetX + I(sp10), temp_r1, +8, &p->charFlags.unk29, sub_805203C);
            break;
    }

    var_r0_2 = var_r2;

    if (var_r0_2 > sp14) {
        var_r0_2 = sp14;
    }
    if (var_r0_2 != 0) {
        switch (arg0) {
            case 0:
                sp10 += Q(var_r0_2);
                break;
            case 1:
                sp10 -= Q(var_r0_2);
                break;
            case 2:
                spC -= Q(var_r0_2);
                break;
            case 3:
                spC += Q(var_r0_2);
                break;
        }
    }

    if (sp14 < var_r0_2) {
        var_r0_n = p->charFlags.unk28;
    } else {
        var_r0_n = p->charFlags.unk29;
    }
    var_r6 = var_r0_n;

    if (!(arg0 & 2)) {
        p->qWorldY = sp10;
    } else {
        p->qWorldX = spC;
    }
    if (!(1 & var_r6)) {
        p->unk26 = var_r6;
        if (p->moveState & 0x10000) {
            var_r6 = p->unk26;
            var_r6 = ((u32)(0 - ((var_r6 + 0x40) << 0x18)) >> 0x18);
            p->unk26 = var_r6 - 0x40;
        }
    }
    return 0;
}
END_NONMATCH

// (94.17%) https://decomp.me/scratch/EeIHZ
NONMATCH("asm/non_matching/game/stage/player__sub_8011BFC.inc", s32 sub_8011BFC(u8 arg0, Player *p))
{
    s32 worldY;
    s32 worldX;
    s8 var_r0;
    s8 var_r0_2;
    s32 var_r1;
    s32 var_r3;
    u8 var_r2;
    s32 temp;
    s32 r1;
    s32 r2;

    worldX = I(p->qWorldX);
    worldY = I(p->qWorldY);
    p->charFlags.unk29 = arg0;
    var_r3 = (s8)arg0;
    p->charFlags.unk28 = arg0;
    var_r0 = (arg0 + 0x20);
    arg0 += (((var_r0 > 0) && (var_r3 > 0)) || ((var_r0 <= 0) && (var_r3 <= 0))) ? 0x1F : 0x20;

    switch (arg0 >> 6) {
        case 0: {
            s32 p0 = +2 + worldY;
            return sub_80517FC(p0 + p->spriteOffsetX, worldX, p->layer, +8, NULL, sub_805217C);
        } break;

        case 2: {
            s32 p0 = -2 + worldY;
            return sub_80517FC(p0 - p->spriteOffsetX, worldX, p->layer, -8, NULL, sub_805217C);
        } break;

        case 1: {
            s32 p0 = -2 + worldX;
            return sub_80517FC(p0 - p->spriteOffsetX, worldY, p->layer, -8, NULL, sub_805203C);
        } break;

        case 3: {
            s32 p0 = worldX + 2;
            return sub_80517FC(p0 + p->spriteOffsetX, worldY, p->layer, +8, NULL, sub_805203C);
        } break;
        default:
            return 0;
    }
}
END_NONMATCH

// TODO: Fake-match!
void sub_8011D08(Player *p)
{
    s8 sp8;
    u32 spC;
    u32 *pSpC;
    s32 temp_r1_2;
    s32 var_r1;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r2_3;
    s32 var_r2_4;
    s8 *temp_r1;
    s32 var_r0_2;
    u8 temp_r2;
#ifndef NON_MATCHING
    register s32 temp_r0_2 asm("r0");
    register s32 var_r3 asm("r3");
    register s32 temp_r5 asm("r5");
#else
    s32 temp_r0_2;
    s32 var_r3;
    s32 temp_r5;
#endif
    u8 var_r2;
    u8 var_r2_2;
    s32 worldX, worldY;

    temp_r5 = p->layer;
    worldX = -3 - p->spriteOffsetX + I(p->qWorldX);
    worldY = I(p->qWorldY);
    var_r2 = temp_r5;
    if ((s32)p->qSpeedAirY < Q(3)) {
        var_r2 = 0x80;
        var_r2 |= temp_r5;
    }
    temp_r0 = sub_80517FC(worldX, worldY, var_r2, -8, NULL, sub_805203C);
    var_r2_4 = temp_r0;
    if (var_r2_4 <= 0) {
        p->qWorldX -= Q(var_r2_4);
        p->qSpeedAirX = 0;
    }
    temp_r0_2 = I(p->qWorldX);
    temp_r0_2 += 3;
    var_r1 = p->spriteOffsetX;
    var_r3 = temp_r0_2 + var_r1;
    worldY = I(p->qWorldY);
    var_r2_2 = temp_r5;
    if ((s32)p->qSpeedAirY < Q(3)) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(var_r3, worldY, (s32)var_r2_2, 8, NULL, sub_805203C);
    var_r2_4 = temp_r0_2;
    if (var_r2_4 <= 0) {
        p->qWorldX += Q(var_r2_4);
        p->qSpeedAirX = 0;
    }
    pSpC = &spC;
    var_r2_3 = 1;
    if (p->moveState & 0x10000) {
        var_r2_3 = 0;
    }
    if (var_r2_3 == 0) {
        var_r0 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_4 = var_r0;
    if (var_r2_4 < 0) {
        p->unk26 = sp8;
        if (p->moveState & 0x10000) {
            var_r2_4 = -var_r2_4;
        }
        p->qWorldY += var_r2_4 << 8;
        sub_8012F10(p);
        temp_r2 = sp8;
        if ((temp_r2 + 0x20) & 0x40) {
            p->qSpeedAirX = 0;
            if ((s32)p->qSpeedAirY > Q(11.8125)) {
                p->qSpeedAirY = Q(11.8125);
            }
            goto block_22;
        }
        temp_r1_2 = (temp_r2 + 0x10) & 0x20;
        if (temp_r1_2 == 0) {
            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        } else {
            p->qSpeedAirY >>= 1;
        block_22:
            var_r1 = ABS(p->qSpeedAirY);
            p->qSpeedGround = var_r1;
            if (sp8 < 0) {
                p->qSpeedGround = -var_r1;
            }
        }
    }
}

// (95.85%) https://decomp.me/scratch/HDLzj
NONMATCH("asm/non_matching/game/stage/player__sub_8011E70.inc", void sub_8011E70(Player *p))
{
    u8 sp8;
    u32 spC;
    u32 *pSpC;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r2_3;
    u8 temp_r2;
    s32 temp_r6;
    s32 worldX, worldY;
    u8 var_r2;
    u8 var_r2_2;
    s32 var_r2_m;
    s32 var_r2_n;

    temp_r6 = p->layer;
    temp_r5 = p->moveState & 0x80000;
    if (temp_r5 != 0) {
        sub_8016E70(p);
        return;
    }

    worldX = -3 - p->spriteOffsetX + I(p->qWorldX);
    worldY = I(p->qWorldY);
    var_r2 = temp_r6;
    if (p->qSpeedAirY < Q(3)) {
        var_r2 = 0x80;
        var_r2 |= temp_r6;
    }
    temp_r0 = sub_80517FC(worldX, worldY, var_r2, -8, NULL, sub_805203C);
    var_r2_m = temp_r0;
    if (var_r2_m <= 0) {
        p->qWorldX -= Q(var_r2_m);
        p->qSpeedAirX = Q(0);
    }
    temp_r0 = I(p->qWorldX);
    temp_r0 += 3;
    worldX = temp_r0 + p->spriteOffsetX;
    worldY = I(p->qWorldY);
    var_r2_2 = temp_r6;
    if (p->qSpeedAirY < Q(3)) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(worldX, worldY, var_r2_2, 8, NULL, sub_805203C);
    var_r2_n = temp_r0_2;
    if (var_r2_n <= 0) {
        p->qWorldX += Q(var_r2_n);
        p->qSpeedAirX = Q(0);
    }
    pSpC = &spC;
    if (!(p->moveState & 0x10000)) {
        var_r0 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_3 = var_r0;
    if (var_r2_3 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_3 = 0 - var_r2_3;
        }
        p->qWorldY -= var_r2_3 << 8;
        temp_r2 = sp8;
        if (((temp_r2 + 0x20) & 0x40) && ((s32)((s8)sp8 - 0x40) > 0)) {
            p->unk26 = temp_r2;
            sub_8012F10(p);
            p->qSpeedGround = ABS(p->qSpeedAirY);
            return;
        }
        p->qSpeedAirY = 0;
    }
}
END_NONMATCH

// Very close to sub_8012118
// (91.65%) https://decomp.me/scratch/E38s3
NONMATCH("asm/non_matching/game/stage/player__sub_8011FB8.inc", void sub_8011FB8(Player *p))
{
    u8 sp8;
    u32 spC;
    u32 *pSpC;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 temp_r0;
    u8 var_r2;
    u32 moveState;

    temp_r0 = p->layer;
    if (p->moveState & 0x10000) {
        var_r0 = -3 - p->spriteOffsetX + I(p->qWorldX);
        var_r1 = I(p->qWorldY);
        var_r2 = temp_r0;
        temp_r0_2 = sub_80517FC(var_r0, var_r1, var_r2, -8, NULL, sub_805203C);
    } else {
        var_r0 = -3 - p->spriteOffsetX + I(p->qWorldX);
        var_r1 = I(p->qWorldY);
        var_r2 = temp_r0;
        if (p->qSpeedAirY < Q(3)) {
            var_r2 |= 0x80;
        }
        temp_r0_2 = sub_80517FC(var_r0, var_r1, var_r2, -8, NULL, sub_805203C);
    }
    var_r2_2 = temp_r0_2;
    if (var_r2_2 <= 0) {
        p->qWorldX -= Q(var_r2_2);
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    moveState = p->moveState & 0x10000;
    pSpC = &spC;
    if (moveState == 0) {
        var_r0_2 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0_2 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_2 = var_r0_2;
    if (var_r2_2 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_2 = -var_r2_2;
        }
        p->qWorldY -= Q(var_r2_2);
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {
        pSpC = &spC;
        var_r2_3 = 1;
        if (p->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_3 = sub_8011024(2, p, &sp8, pSpC);
        } else {
            var_r0_3 = sub_8011024(3, p, &sp8, pSpC);
        }
        var_r2_4 = var_r0_3;
        if (var_r2_4 <= 0) {
            if (p->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            p->qWorldY += var_r2_4 << 8;
            p->unk26 = sp8;
            sub_8012F10(p);
            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}
END_NONMATCH

// Very close to sub_8011FB8
// (83.60%) https://decomp.me/scratch/nAeTi
NONMATCH("asm/non_matching/game/stage/player__sub_8012118.inc", void sub_8012118(Player *p))
{
    u8 sp8;
    u32 spC;
    u32 *pSpC;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 temp_r0;
    u8 var_r2;
    u32 moveState;

    temp_r0 = p->layer;
    if (p->moveState & 0x10000) {
        var_r0 = +3 + p->spriteOffsetX + I(p->qWorldX);
        var_r1 = I(p->qWorldY);
        var_r2 = temp_r0;
        temp_r0_2 = sub_80517FC(var_r0, var_r1, var_r2, +8, NULL, sub_805203C);
    } else {
        var_r0 = +3 + p->spriteOffsetX + I(p->qWorldX);
        var_r1 = I(p->qWorldY);
        var_r2 = temp_r0;
        if (p->qSpeedAirY < Q(3)) {
            var_r2 |= 0x80;
        }
        temp_r0_2 = sub_80517FC(var_r0, var_r1, var_r2, +8, NULL, sub_805203C);
    }
    var_r2_2 = temp_r0_2;
    if (var_r2_2 <= 0) {
        p->qWorldX += Q(var_r2_2);
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    moveState = p->moveState & 0x10000;
    pSpC = &spC;
    if (moveState == 0) {
        var_r0_2 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0_2 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_2 = var_r0_2;
    if (var_r2_2 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_2 = -var_r2_2;
        }
        p->qWorldY -= Q(var_r2_2);
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {
        pSpC = &spC;
        var_r2_3 = 1;
        if (p->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_3 = sub_8011024(2, p, &sp8, pSpC);
        } else {
            var_r0_3 = sub_8011024(3, p, &sp8, pSpC);
        }
        var_r2_4 = var_r0_3;
        if (var_r2_4 <= 0) {
            if (p->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            p->qWorldY += var_r2_4 << 8;
            p->unk26 = sp8;
            sub_8012F10(p);
            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}
END_NONMATCH

// (88.00%) https://decomp.me/scratch/tA5Se
NONMATCH("asm/non_matching/game/stage/player__sub_801226C.inc", s32 sub_801226C(Player *p))
{
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s8 *temp_r7;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;
    s32 worldX, worldY;
    s32 worldX2, worldY2;

    temp_r5 = p->layer;
    sp8 = p->qWorldX;
    spC = p->qWorldY;
    sp10 = p->qSpeedAirX;
    sp14 = p->qSpeedAirY;
    worldX = -3 - p->spriteOffsetX + I(sp8);
    worldY = I(spC);
    var_r2 = temp_r5;
    if (p->qSpeedAirY < Q(3)) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC(worldX, worldY, var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        p->qWorldX -= Q(temp_r0);
    }
    worldX2 = +3 + I(p->qWorldX) + p->spriteOffsetX;
    worldY2 = I(p->qWorldY);
    var_r2_2 = temp_r5;
    if (p->qSpeedAirY < Q(3)) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(worldX2, worldY2, var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0_2 <= 0) {
        p->qWorldX += temp_r0_2 << 8;
    }
    if (!(p->moveState & 0x10000)) {
        var_r0 = sub_8011024(2, p, NULL, NULL);
    } else {
        var_r0 = sub_8011024(3, p, NULL, NULL);
    }
    p->qWorldX = sp8;
    p->qWorldY = spC;
    p->qSpeedAirX = sp10;
    p->qSpeedAirY = sp14;
    return var_r0;
}
END_NONMATCH

// Very close to sub_801226C
// (88.39%) https://decomp.me/scratch/vRdzU
NONMATCH("asm/non_matching/game/stage/player__sub_8012368.inc", s32 sub_8012368(Player *p))
{
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s8 *temp_r7;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;
    s32 worldX, worldY;
    s32 worldX2, worldY2;
    s32 r2;

    temp_r5 = p->layer;
    sp8 = p->qWorldX;
    spC = p->qWorldY;
    sp10 = p->qSpeedAirX;
    sp14 = p->qSpeedAirY;
    worldX = -3 - p->spriteOffsetX + I(sp8);
    worldY = I(spC);
    var_r2 = temp_r5;
    if (p->qSpeedAirY < Q(3)) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC(worldX, worldY, var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        p->qWorldX -= Q(temp_r0);
    }
    worldX2 = +3 + I(p->qWorldX) + p->spriteOffsetX;
    worldY2 = I(p->qWorldY);
    var_r2_2 = temp_r5;
    if (p->qSpeedAirY < Q(3)) {
        var_r2_2 |= 0x80;
    }
    temp_r0 = sub_80517FC(worldX2, worldY2, var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        p->qWorldX += Q(temp_r0);
    }

    r2 = TRUE;
    if (p->moveState & 0x10000) {
        r2 = FALSE;
    }
    if (!r2) {
        var_r0 = sub_8011024(2, p, NULL, NULL);
    } else {
        r2 = FALSE;
        var_r0 = sub_8011024(3, p, NULL, NULL);
    }
    p->qWorldX = sp8;
    p->qWorldY = spC;
    p->qSpeedAirX = sp10;
    p->qSpeedAirY = sp14;
    return var_r0;
}
END_NONMATCH

// NOTE: There has GOT to be a way to make inlines work!
//       I cannot explain not being able to match all these functions, otherwise...
static inline void test(Player *p, s32 qSpeedCap, u8 layer, bool32 negative)
{
    s32 worldX;
    s32 worldY;
    s32 res;
    s32 delta;
    u8 mask;

    if (negative) {
        worldX = -3 - p->spriteOffsetY + I(p->qWorldX);
        worldY = I(p->qWorldY);
    } else {
        worldX = +I(p->qWorldY);
        worldX += +3 + p->spriteOffsetY;
        worldY = I(p->qWorldX);
    }

    mask = layer;
    if (p->qSpeedAirY <= qSpeedCap - 1) {
        mask |= 0x80;
    }

    if (negative) {
        delta = -8;
    } else {
        delta = +8;
    }
    res = sub_80517FC(worldX, worldY, mask, delta, NULL, sub_805217C);
    if (res <= 0) {
        p->qWorldY -= Q(res);
    }
}

// (77.20%) https://decomp.me/scratch/ldMnN
NONMATCH("asm/non_matching/game/stage/player__sub_801246C.inc", s32 sub_801246C(Player *p))
{
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    u8 layer;
    u8 var_r2;
    u8 var_r2_2;

    layer = p->layer;
    temp_r0_2 = p->qWorldX;
    sp8 = temp_r0_2;
    temp_r1 = p->qWorldY;
    spC = temp_r1;
    sp10 = (s32)p->qSpeedAirX;
    sp14 = (s32)p->qSpeedAirY;

#if 01
    test(p, Q(3), layer, TRUE);
    test(p, Q(0), layer, FALSE);
#else
    var_r2 = layer;
    if ((s32)p->qSpeedAirY < Q(3)) {
        var_r2 = 0x80 | layer;
    }
    temp_r0_3 = sub_80517FC(((temp_r1 >> 8) - 3) - p->spriteOffsetY, temp_r0_2 >> 8, var_r2, -8, NULL, sub_805217C);
    if (temp_r0_3 <= 0) {
        p->qWorldY -= temp_r0_3 << 8;
    }

    var_r2_2 = layer;
    if ((s32)p->qSpeedAirY < 0) {
        var_r2_2 |= 0x80;
    }
    temp_r0_4 = sub_80517FC(((s32)p->qWorldY >> 8) + 3 + p->spriteOffsetY, (s32)p->qWorldX >> 8, (s32)var_r2_2, 8, NULL, sub_805217C);
    if (temp_r0_4 <= 0) {
        p->qWorldY += temp_r0_4 << 8;
    }
#endif

    temp_r0 = sub_8011024(0, p, NULL, NULL);
    p->qWorldX = sp8;
    p->qWorldY = spC;
    p->qSpeedAirX = sp10;
    p->qSpeedAirY = sp14;
    return temp_r0;
}
END_NONMATCH

// (91.03%) https://decomp.me/scratch/K83Y8
NONMATCH("asm/non_matching/game/stage/player__sub_8012550.inc", s32 sub_8012550(Player *p))
{
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s8 *temp_r7;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;
    s32 worldX, worldY;
    s32 worldX2, worldY2;
    s32 r2;

    temp_r5 = p->layer;
    sp8 = p->qWorldX;
    spC = p->qWorldY;
    sp10 = p->qSpeedAirX;
    sp14 = p->qSpeedAirY;
    worldX = -3 - p->spriteOffsetY + I(sp8);
    worldY = I(spC);
    var_r2 = temp_r5;
    if (p->qSpeedAirY < Q(3)) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC(worldX, worldY, var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        p->qWorldY -= Q(temp_r0);
    }
    worldX2 = +I(p->qWorldY);
    worldX2 += +3;
    worldX2 += p->spriteOffsetY;
    worldY2 = I(p->qWorldX);
    var_r2_2 = temp_r5;
    if (p->qSpeedAirY < Q(0)) {
        var_r2_2 |= 0x80;
    }
    temp_r0 = sub_80517FC(worldX2, worldY2, var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        p->qWorldY += Q(temp_r0);
    }

    var_r0 = sub_8011024(1, p, NULL, NULL);

    p->qWorldX = sp8;
    p->qWorldY = spC;
    p->qSpeedAirX = sp10;
    p->qSpeedAirY = sp14;
    return var_r0;
}
END_NONMATCH

// NOTE: Fake-match!
void sub_8012634(Player *p)
{
    s16 qSpeedAirX = p->qSpeedAirX;
    s16 qSpeedAirY = p->qSpeedAirY;
    u16 zero = 0;

    if (p->moveState & 0x20) {
        p->unk148.arr_u8[2] &= ~0x4;
        p->charFlags.unk29 = zero;
        p->charFlags.unk28 = zero;
        return;
    }

    zero = ArcTan2(qSpeedAirX, qSpeedAirY) >> 8;
    zero = zero;
    zero = ((zero - 0x20) & 0xC0);
    zero = zero >> 6;

    switch (zero) {
        case 0:
            sub_80126B8(p);
            return;
        case 1:
            sub_8012930(p);
            return;
        case 2:
            sub_8012804(p);
            return;
        case 3:
            sub_8012A6C(p);
            return;
    }
}

// NOTE: Fake-match!
void sub_80126B8(Player *p)
{
    u8 sp8;
    u32 spC;
    u32 *pSpC;
    s32 var_r0;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 var_r2;
    s32 worldX, worldY;
    s32 worldX2, worldY2;
    s32 worldX3, worldY3;
#ifndef NON_MATCHING
    register s32 temp_r0 asm("r0");
    register s32 off asm("r2");
    register u32 unk27 asm("r5") = p->layer;
#else
    s32 temp_r0;
    s32 off;
    u32 unk27 = p->layer;
#endif

    worldX = -3 - p->spriteOffsetX + I(p->qWorldX);
    worldY = I(p->qWorldY);

    var_r2 = unk27;
    if ((s32)p->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80;
        var_r2 |= unk27;
    }
    temp_r0 = sub_80517FC(worldX, worldY, (s32)var_r2, -8, NULL, sub_805203C);
    off = temp_r0;
    if (off <= 0) {
        temp_r0 = Q(off);
        p->qWorldX -= temp_r0;
        if ((s32)p->qSpeedAirX < 0) {
            p->unk148.arr_u8[2] |= 0x40;
        }
        p->qSpeedAirX = 0;
    }

    worldX2 = I(p->qWorldX);
    worldX2 += 3;
    worldX3 = worldX2 + p->spriteOffsetX;
    worldY3 = I(p->qWorldY);

    var_r2 = unk27;
    if ((s32)p->qSpeedAirY <= 0x2FF) {
        var_r2 |= 0x80;
    }
    temp_r0 = sub_80517FC(worldX3, worldY3, var_r2, 8, NULL, sub_805203C);
    off = temp_r0;
    if (off <= 0) {
        temp_r0 = Q(off);
        p->qWorldX += temp_r0;
        if (p->qSpeedAirX > 0) {
            p->unk148.arr_u8[2] |= 0x40;
        }
        p->qSpeedAirX = 0;
    }
    pSpC = &spC;
    var_r2_3 = 1;
    if (p->moveState & 0x10000) {
        var_r2_3 = 0;
    }
    if (var_r2_3 == 0) {
        var_r0 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_4 = var_r0;
    if (var_r2_4 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_4 = 0 - var_r2_4;
        }
        p->qWorldY += var_r2_4 << 8;
        p->unk26 = sp8;
        p->qSpeedAirY = 0;
        p->unk148.arr_u8[2] &= ~0x4;
    }
}

// NOTE: Fake-match!
void sub_8012804(Player *p)
{
    u8 sp8;
    u32 spC;
    u32 *pSpC;
    s32 var_r0;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 var_r2;
    s32 worldX, worldY;
    s32 worldX2, worldY2;
    s32 worldX3, worldY3;
#ifndef NON_MATCHING
    register s32 temp_r0 asm("r0");
    register s32 off asm("r2");
    register u32 unk27 asm("r5") = p->layer;
#else
    s32 temp_r0;
    s32 off;
    u32 unk27 = p->layer;
#endif

    worldX = -3 - p->spriteOffsetX + I(p->qWorldX);
    worldY = I(p->qWorldY);

    var_r2 = unk27;
    if ((s32)p->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80;
        var_r2 |= unk27;
    }
    temp_r0 = sub_80517FC(worldX, worldY, (s32)var_r2, -8, NULL, sub_805203C);
    off = temp_r0;
    if (off <= 0) {
        temp_r0 = Q(off);
        p->qWorldX -= temp_r0;
        if ((s32)p->qSpeedAirX < 0) {
            p->unk148.arr_u8[2] |= 0x40;
        }
        p->qSpeedAirX = 0;
    }

    worldX2 = I(p->qWorldX);
    worldX2 += 3;
    worldX3 = worldX2 + p->spriteOffsetX;
    worldY3 = I(p->qWorldY);

    var_r2 = unk27;
    if ((s32)p->qSpeedAirY <= 0x2FF) {
        var_r2 |= 0x80;
    }
    temp_r0 = sub_80517FC(worldX3, worldY3, var_r2, 8, NULL, sub_805203C);
    off = temp_r0;
    if (off <= 0) {
        temp_r0 = Q(off);
        p->qWorldX += temp_r0;
        if (p->qSpeedAirX > 0) {
            p->unk148.arr_u8[2] |= 0x40;
        }
        p->qSpeedAirX = 0;
    }
    pSpC = &spC;

    if (!(p->moveState & 0x10000)) {
        var_r0 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_4 = var_r0;
    if (var_r2_4 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_4 = -var_r2_4;
        }
        p->qWorldY -= Q(var_r2_4);
        p->qSpeedAirY = 0;
    }
}

// NOTE: Fake-match!
void sub_8012930(Player *p)
{
    u8 sp8;
    u32 spC;
    u32 *pSpC, *pSpC2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 unk27;
    u8 *pUnk27;
    s32 worldX, worldY;
    u32 mask;
#ifndef NON_MATCHING
    register s32 temp_r0 asm("r0");
    register s32 res asm("r2");
#else
    s32 temp_r0;
    s32 res;
#endif

    pUnk27 = &p->layer;
    worldX = -2 - p->spriteOffsetX + I(p->qWorldX);
    worldY = I(p->qWorldY);
    unk27 = *pUnk27;
    if ((s32)p->qSpeedAirY <= 0x2FF) {
        unk27 |= 0x80;
    }
    temp_r0 = sub_80517FC(worldX, worldY, unk27, -8, NULL, sub_805203C);
    res = temp_r0;
    if (res <= 0) {
        temp_r0 = Q(res);
        p->qWorldX -= temp_r0;
        if ((s32)p->qSpeedAirX < 0) {
            p->unk148.arr_u8[2] |= 0x40;
        }
        p->qSpeedAirX = 0;
    }

    mask = p->moveState & 0x10000;
    pSpC = &spC;

    if (!mask) {
        var_r0 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_2 = var_r0;
    if (var_r2_2 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        p->qWorldY -= var_r2_2 << 8;
        if ((s32)p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if ((s32)p->qSpeedAirY >= 0) {
        pSpC2 = &spC;
        var_r2_3 = 1;
        if (p->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_2 = sub_8011024(2, p, &sp8, pSpC2);
        } else {
            var_r0_2 = sub_8011024(3, p, &sp8, pSpC2);
        }
        var_r2_4 = var_r0_2;
        if (var_r2_4 <= 0) {
            if (p->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            p->qWorldY += var_r2_4 << 8;
            p->unk26 = sp8;
            p->qSpeedAirY = 0;
            p->unk148.arr_u8[2] &= 0xFB;
        }
    }
}

void sub_8012A6C(Player *p)
{
    u8 sp8;
    u32 spC;
    u32 *pSpC, *pSpC2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 unk27;
    u8 *pUnk27;
    s32 worldX, worldY;
    s32 worldX2;
    u32 mask;
#ifndef NON_MATCHING
    register s32 temp_r0 asm("r0");
    register s32 res asm("r2");
#else
    s32 temp_r0;
    s32 res;
#endif

    pUnk27 = &p->layer;
    worldX = I(p->qWorldX) + 2;
    worldX2 = worldX + p->spriteOffsetX;
    worldY = I(p->qWorldY);
    unk27 = *pUnk27;
    if (p->qSpeedAirY < Q(3)) {
        unk27 |= 0x80;
    }
    temp_r0 = sub_80517FC(worldX2, worldY, unk27, +8, NULL, sub_805203C);
    res = temp_r0;
    if (res <= 0) {
        temp_r0 = Q(res);
        p->qWorldX += temp_r0;
        if (p->qSpeedAirX > 0) {
            p->unk148.arr_u8[2] |= 0x40;
        }
        p->qSpeedAirX = 0;
    }

    mask = p->moveState & 0x10000;
    pSpC = &spC;

    if (!mask) {
        var_r0 = sub_8011024(2, p, &sp8, pSpC);
    } else {
        var_r0 = sub_8011024(3, p, &sp8, pSpC);
    }
    var_r2_2 = var_r0;
    if (var_r2_2 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        p->qWorldY -= var_r2_2 << 8;
        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {
        pSpC2 = &spC;
        var_r2_3 = 1;
        if (p->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_2 = sub_8011024(2, p, &sp8, pSpC2);
        } else {
            var_r0_2 = sub_8011024(3, p, &sp8, pSpC2);
        }
        var_r2_4 = var_r0_2;
        if (var_r2_4 <= 0) {
            if (p->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            p->qWorldY += var_r2_4 << 8;
            p->unk26 = sp8;
            p->qSpeedAirY = 0;
            p->unk148.arr_u8[2] &= 0xFB;
        }
    }
}

void sub_8012BA4(Player *p)
{
    s32 worldY;

    if (!(MOVESTATE_2 & p->moveState)) {
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
    } else {
        p->moveState &= ~MOVESTATE_2;
        p->charFlags.anim0 = 0;
        worldY = p->spriteOffsetY - 14;
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            worldY = -worldY;
        }
        if ((s8)(p->unk26 + 0x40) <= 0) {
            worldY = -worldY;
        }
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
        p->qWorldY += Q(worldY);
    }
    p->moveState &= ~(MOVESTATE_40 | MOVESTATE_IN_AIR | MOVESTATE_2);
    p->charFlags.state0_highValue = 0;

    if (p->charFlags.anim0 > 230) {
        p->charFlags.anim0 = 0;
    }
}

void sub_8012C34(Player *p)
{
    u8 sp0;
    u32 sp4;
    u32 *pSp4;
    s32 var_r0;
    s32 var_r2;
    s32 var_r2_2;
    s8 *temp_r1_2;
    u32 temp_r1;

    pSp4 = &sp4;
    var_r2 = 1;
    if (p->moveState & 0x10000) {
        var_r2 = 0;
    }
    if (var_r2 == 0) {
        var_r0 = sub_8011024(2, p, &sp0, pSp4);
    } else {
        var_r0 = sub_8011024(3, p, &sp0, pSp4);
    }
    var_r2_2 = var_r0;
    if (var_r2_2 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        p->qWorldY += var_r2_2 << 8;
        p->unk26 = sp0;
        if (p->moveState & 0x800000) {
            SetPlayerCallback(p, Player_80077CC);
        } else {
            SetPlayerCallback(p, Player_8005380);
        }
        temp_r1 = p->moveState;
        if (2 & temp_r1) {
            p->moveState = temp_r1 & ~2;
            sub_80042F4(p, 0xE);
        }
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
        p->moveState &= ~0xC;
        p->qSpeedAirY = 0;
        p->qSpeedGround = (s16)(u16)p->qSpeedAirX;
    }
}

void sub_8012CF8(Player *p)
{
    s8 sp0;
    u32 sp4;
    s16 var_r1;
    s32 var_r0;
    s32 var_r2;
    s8 *temp_r1_2;
    u32 temp_r0;
    u32 temp_r1;
    u32 var_r0_2;
    u32 *pSp4 = &sp4;
    u8 state0_other;

    if (!(p->moveState & 0x10000)) {
        var_r0 = sub_8011024(2, p, &sp0, pSp4);
    } else {
        var_r0 = sub_8011024(3, p, &sp0, pSp4);
    }
    var_r2 = var_r0;
    if (var_r2 <= 0) {
        if (p->moveState & 0x10000) {
            var_r2 = -var_r2;
        }
        p->qWorldY -= var_r2 << 8;
        p->unk26 = sp0;
        if (p->moveState & 0x800000) {
            SetPlayerCallback(p, Player_80077CC);
        } else {
            SetPlayerCallback(p, Player_8005380);
        }
        temp_r1 = p->moveState;
        if (2 & temp_r1) {
            p->moveState = temp_r1 & ~2;
            sub_80042F4(p, 0xE);
        }
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
        p->moveState &= ~0xC;
        p->qSpeedGround = ABS(p->qSpeedAirY);
        if (sp0 >= 0) {
            p->qSpeedGround = -p->qSpeedGround;
        }

        state0_other = p->charFlags.state0_other;
        switch (state0_other) {
            case 0:
                break;
            case 1:
                p->moveState &= ~1;
                break;
            case 2:
                p->moveState |= 1;
                break;
            case 3:
                p->moveState ^= 1;
                break;
        }
        if (p->charFlags.state0_subHighBit) {
            p->moveState ^= MOVESTATE_FACING_LEFT;
            p->qSpeedGround = 0 - (u16)p->qSpeedGround;
        }
    }
}

s32 sub_8012E18(s32 arg0, Player *arg1, u8 *arg2, u32 *arg3)
{
    s32 result;
    u16 var_r2;

    var_r2 = arg0;
    if (arg1->moveState & 0x10000) {
        var_r2 = (var_r2 ^ 1) & 1;
    }

    if (var_r2 == 0) {
        result = sub_8011024(2, arg1, arg2, arg3);
    } else {
        result = sub_8011024(3, arg1, arg2, arg3);
    }

    return result;
}

s32 sub_8012E54(u8 arg0, Player *p)
{
    s16 var_r0;
    s32 temp_r0_2;
    s32 var_r3;
    u8 temp_r0;

    temp_r0 = arg0;
    var_r3 = 0;
    p->charFlags.unk29 = temp_r0;
    p->charFlags.unk28 = temp_r0;
    temp_r0_2 = (s32)((temp_r0 + 0x20) & 0xC0) >> 6;
    switch (temp_r0_2) { /* irregular */
        case 0:
            var_r0 = 3;
        block_11:
            var_r3 = sub_8011024(var_r0, p, NULL, NULL);
            break;
        case 1:
            var_r0 = 0;
            var_r3 = sub_8011024(var_r0, p, NULL, NULL);
            break;
        case 2:
            var_r0 = 2;
            var_r3 = sub_8011024(var_r0, p, NULL, NULL);
            break;
        case 3:
            var_r0 = 1;
            var_r3 = sub_8011024(var_r0, p, NULL, NULL);
            break;
    }
    return var_r3;
}

s16 sub_8012EA8(Player *p) { return sub_801139C(p); }

void sub_8012EB8(Player *p)
{
    if ((sub_80114CC(p) << 0x10) == 0) {
        if ((sub_801139C(p) << 0x10) != 0) {
            p->moveState |= 4;
            SetPlayerCallback(p, Player_800DAF4);
            return;
        }
        p->charFlags.unk2C_04 = 0;
        p->moveState &= ~4;
    }
}

void sub_8012F04(Player *p) { sub_8011434(p); }

void sub_8012F10(Player *p)
{
    if (p->moveState & MOVESTATE_800000) {
        SetPlayerCallback(p, Player_80077CC);
    } else {
        SetPlayerCallback(p, Player_8005380);
    }

    if (MOVESTATE_2 & p->moveState) {
        p->moveState &= ~MOVESTATE_2;
        sub_80042F4(p, 0xE);
    }
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 14;
    p->moveState &= ~0xC;
}

void sub_8012F74(Player *p, s32 spriteOffsetX, s32 spriteOffsetY)
{
    sub_80042F4(p, spriteOffsetY);
    p->spriteOffsetX = spriteOffsetX;
    p->spriteOffsetY = spriteOffsetY;
}

void sub_8012F94(Player *p, s8 spriteOffsetX, s8 spriteOffsetY)
{
    p->spriteOffsetX = spriteOffsetX;
    p->spriteOffsetY = spriteOffsetY;
}

void sub_8012FA0(Player *p)
{
    s32 offsetX = 6;
    s32 offsetY = 14;
    sub_80042F4(p, offsetY);
    p->spriteOffsetX = offsetX;
    p->spriteOffsetY = offsetY;
}

void sub_8012FC0(Player *p)
{
    s32 offsetX = 6;
    s32 offsetY = 9;
    sub_80042F4(p, offsetY);
    p->spriteOffsetX = offsetX;
    p->spriteOffsetY = offsetY;
}

void Player_8012FE0(Player *p)
{
    s32 offsetX = 6;
    s32 offsetY = 14;
    p->spriteOffsetX = offsetX;
    p->spriteOffsetY = offsetY;
}

void Player_8012FF0(Player *p)
{
    s32 offsetX = 6;
    s32 offsetY = 9;
    p->spriteOffsetX = offsetX;
    p->spriteOffsetY = offsetY;
}

void sub_8013000(Player *p) { sub_801139C(p); }

void sub_801300C(s16 playerId)
{
    Player *p;
    PlayerSpriteInfo *playerSprite;
    Sprite2 *s;
    u8 priority;

    p = &gPlayers[playerId];
    playerSprite = p->spriteInfoBody;
    s = &playerSprite->s;

    if (gStageData.gameMode < 6) {
        if (playerId == 0) {
            playerSprite->s.tiles = (u8 *)OBJ_VRAM0;
        } else {
            playerSprite->s.tiles = (u8 *)(OBJ_VRAM0 + 0x800);
        }
    } else if (gStageData.gameMode == 6) {
        switch (playerId) {
            case 0:
                playerSprite->s.tiles = OBJ_VRAM0;
                break;
            case 1:
                playerSprite->s.tiles = (OBJ_VRAM0 + 0x800);
                break;
            case 2:
                playerSprite->s.tiles = (OBJ_VRAM0 + 0x1000);
                break;
            case 3:
                playerSprite->s.tiles = (OBJ_VRAM0 + 0x1800);
                break;
        }
    } else {
        playerSprite->s.tiles = OBJ_VRAM0 + (playerId << 0xB);
    }

    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->frameFlags |= playerId | SPRITE_FLAG(ROT_SCALE_ENABLE, 1);
    s->anim = p->charFlags.anim2;
    s->x = I(p->qWorldX);
    s->y = I(p->qWorldY);

    if (gStageData.playerIndex == playerId) {
        priority = 16;
    } else {
        priority = 17 + playerId;
    }

    s->oamFlags = SPRITE_OAM_ORDER(priority);
    s->qAnimDelay = 0;
    s->prevAnim = 0xFFFF;
    s->variant = p->charFlags.state1;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = playerId;
    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;
    playerSprite->tf.rotation = 0;
    playerSprite->tf.qScaleX = Q(1);
    playerSprite->tf.qScaleY = Q(1);
    playerSprite->tf.x = 0;
    playerSprite->tf.y = 0;
}

void sub_801310C(s16 playerIndex)
{
    Player *p;
    s32 var_r0;
    s32 var_r0_2;
    void *var_r0_4;
    PlayerSpriteInfo *temp_r3;
    u8 prio;
    Sprite2 *s;
    u8 *tiles;

    p = &gPlayers[playerIndex];
    temp_r3 = p->spriteInfoLimbs;
    s = &temp_r3->s;

    switch (p->charFlags.character) {
        case CREAM:
            if (gStageData.gameMode < 6) {
                s->tiles = OBJ_VRAM0 + 0x1800;
            } else if (gStageData.gameMode == 6) {
                s->tiles = OBJ_VRAM0 + 0x3000;
            }

            s->anim = 0xAE;
            s->variant = 1;
            s->frameFlags = SPRITE_FLAG(ROT_SCALE, 2);
            goto block_15;
            break;
        case TAILS:
            if ((u32)gStageData.gameMode < 6) {
                s->tiles = OBJ_VRAM0 + 0x1000;
            } else if (gStageData.gameMode == 6) {
                s->tiles = OBJ_VRAM0 + 0x2800;
            }
            s->anim = 0x151;
            s->variant = 1;
            s->frameFlags = SPRITE_FLAG(ROT_SCALE, 3);
        block_15:
            s->frameFlags |= MOVESTATE_1000;
            s->frameFlags |= (MOVESTATE_40000 | MOVESTATE_COLLIDING_ENT);
            s->x = I(p->qWorldX);
            s->y = I(p->qWorldY);
            if (gStageData.playerIndex == playerIndex) {
                prio = 16;
            } else {
                prio = 17 + playerIndex;
            }
            s->oamFlags = SPRITE_OAM_ORDER(prio);
            s->qAnimDelay = 0;
            s->prevVariant = 0xFF;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = (s8)playerIndex;
            s->hitboxes[0].index = -1;
            s->hitboxes[1].index = -1;

            temp_r3->tf.rotation = 0;
            temp_r3->tf.qScaleX = 0x100;
            temp_r3->tf.qScaleY = 0x100;
            temp_r3->tf.x = 0;
            temp_r3->tf.y = 0;
            break;
    }
}

void sub_801320C(Player *p, PlayerSpriteInfo *spriteInfoBody)
{
    Player *temp_r2_3;
    Player *temp_r6;
    Sprite2 *s;
    s16 temp_r0_3;
    s16 temp_r1;
    s32 temp_r0;
    s32 var_r0_2;
    s32 var_r7;
    u16 temp_r1_4;
    u16 temp_r2;
    u16 *temp_r0_2;
    u32 temp_r0_4;
    u32 temp_r1_3;
    u32 temp_r1_5;
    u32 var_r0;

    s = &spriteInfoBody->s;
    if (p->charFlags.anim0 != -1) {
        if (p->charFlags.anim0 != p->charFlags.anim1) {
            s16 anim0 = gUnknown_080CE7E2[p->charFlags.anim0][0];
            s16 anim1 = gUnknown_080CE7E2[p->charFlags.anim0][1];
            if (anim1 != -1) {
                p->charFlags.anim2 = anim0;
                p->charFlags.state1 = anim1;
            }
            s->animSpeed = 0x10;
        }
        temp_r0_3 = p->charFlags.anim0;
        switch (temp_r0_3) {
            case 8:
                p->charFlags.anim2 = gPlayerCharacterIdleAnims[p->charFlags.character] + 8;
                var_r0 = p->charFlags.state0_subCount;
                p->charFlags.state1 = (u16)var_r0;
                sub_8014230(p, s);
                break;
            case 250:
                p->charFlags.anim2 = 0x2BD;
                var_r0 = MIN(4, p->charFlags.state0_subCount);
                p->charFlags.state1 = var_r0;
                sub_8014230(p, s);
                break;
            case 9:
                p->charFlags.anim2 = gPlayerCharacterIdleAnims[p->charFlags.character] + 9;
                var_r0 = MIN(3, p->charFlags.state0_subCount);
                p->charFlags.state1 = var_r0;
                sub_8014230(p, s);
                break;
            default:
                if ((p->charFlags.anim0 <= 0xA4) && (p->charFlags.anim0 != -1)) {
                    p->charFlags.anim2 = gUnknown_080CE7E2[p->charFlags.anim0][0] + gPlayerCharacterIdleAnims[p->charFlags.character];
                }
                break;
        }
    }
    if (p->charFlags.someIndex == 3) {
        if ((p->charFlags.anim2 == gPlayerCharacterIdleAnims[p->charFlags.character] + 8)
            || (p->charFlags.anim2 == gPlayerCharacterIdleAnims[p->charFlags.character] + 9)) {
            sub_8014230(p, s);
        } else {
            s->animSpeed = 0x10;
        }
    }
    if ((p->charFlags.someFlag1) || (s->anim != p->charFlags.anim2) || (s->variant != p->charFlags.state1)) {
        p->charFlags.someFlag1 = 0;
        s->anim = p->charFlags.anim2;
        s->variant = (u8)p->charFlags.state1;
        s->prevVariant = -1;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;
    }
    sub_801409C(p);
    var_r7 = 0;
    temp_r6 = &gPlayers[p->charFlags.partnerIndex];
    if (temp_r6->charFlags.someIndex != 5) {
        if (((s->anim == gPlayerCharacterIdleAnims[p->charFlags.character] + 0x5C)
             || (s->anim == gPlayerCharacterIdleAnims[p->charFlags.character] + 0x5D))
            && ((temp_r1_4 = temp_r6->charFlags.anim2, (temp_r1_4 == 0x15F)) || (temp_r1_4 == 0x19D) || (temp_r1_4 == 0x160))) {
            var_r7 = 1;
        }
        if ((s->anim == (gPlayerCharacterIdleAnims[p->charFlags.character] + 0x5E)) && (temp_r6->charFlags.anim2 == 0x202)) {
            var_r7 = 1;
        }
        if ((s->anim == (gPlayerCharacterIdleAnims[p->charFlags.character] + 0x5F)) && (temp_r6->charFlags.anim2 == 0x203)) {
            var_r7 = 2;
        }

        if ((0x01000000 & p->moveState) && (gPlayers[p->charFlags.partnerIndex].moveState & 0x800000)) {
            var_r7 = 3;
        }
        if (var_r7 != 0) {
            temp_r2_3 = &gPlayers[p->charFlags.partnerIndex];
            p->qWorldX = temp_r2_3->qWorldX;
            p->qWorldY = temp_r2_3->qWorldY;
            p->moveState = (-2 & p->moveState) | (temp_r2_3->moveState & 1) | p->moveState;
            if (var_r7 == 2) {
                p->charFlags.state1 = temp_r2_3->charFlags.state1;
                s->variant = (u8)temp_r2_3->charFlags.state1;
            }
            if (var_r7 == 3) {
                if (temp_r2_3->moveState & 1) {
                    var_r0_2 = p->qWorldX - Q(10);
                } else {
                    var_r0_2 = p->qWorldX + Q(10);
                }
                p->qWorldX = var_r0_2;
            }
        }
    }
    p->charFlags.anim1 = (s16)(u16)p->charFlags.anim0;
}

void sub_801350C(Player *p)
{
    Sprite2 *s;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 var_r0;
    u16 temp_r2;
    u16 temp_r7;
    u16 anim2;

    s = &p->spriteInfoBody->s;
    temp_r2 = p->charFlags.anim0;
    anim2 = p->charFlags.anim2;
    temp_r7 = p->charFlags.state1;
    anim2 -= gPlayerCharacterIdleAnims[p->charFlags.character];
    if (p->charFlags.anim0 == 19 || p->charFlags.anim0 == 20) {
        if ((temp_r7 == 0) && (s->frameFlags & 0x4000) && (anim2 == 19 || anim2 == 20)) {
            p->charFlags.state1 = 1;
            p->moveState |= 2;
            Player_8012FF0(p);
            return;
        }
        if ((s32)p->qSpeedAirY <= 0) {
            return;
        }
        if (temp_r7 != 1) {
            return;
        }
        if (anim2 == 19 || anim2 == 20) {
            temp_r3 = p->moveState & MOVESTATE_GRAVITY_SWITCHED;
            if (temp_r3 != 0) {
                var_r0 = sub_80519EC(I(p->qWorldY) - p->spriteOffsetY, I(p->qWorldX), p->layer, -8, NULL, sub_805217C);
            } else {
                var_r0 = sub_80519EC(I(p->qWorldY) + p->spriteOffsetY, I(p->qWorldX), p->layer, +8, NULL, sub_805217C);
            }
            if (var_r0 <= 32) {
                p->charFlags.state1 = 2;
                return;
            }
        }
    } else if ((p->charFlags.anim0 == 0x15) && ((s32)p->qSpeedAirY > 0)) {
        if (p->moveState & 0x10000) {
            temp_r2_2 = sub_80519EC(I(p->qWorldY) - p->spriteOffsetY, I(p->qWorldX), p->layer, -8, NULL, sub_805217C);
        } else {
            temp_r2_2 = sub_80519EC(I(p->qWorldY) + p->spriteOffsetY, I(p->qWorldX), p->layer, +8, NULL, sub_805217C);
        }
        if ((anim2 == 0x15) && (temp_r7 == 0)) {
            p->charFlags.state1 = 1;
            return;
        }
        if ((p->charFlags.state1 == 1) && (anim2 == 0x15) && (s->frameFlags & 0x4000)) {
            p->charFlags.state1 = 2;
            return;
        }
        if (temp_r2_2 <= 0x20) {
            if (!(p->moveState & 0x800000)) {
                p->charFlags.anim2 = 0x17 + gPlayerCharacterIdleAnims[p->charFlags.character];
                p->charFlags.state1 = 0;
            }
        }
    }
}

// (99.81%) https://decomp.me/scratch/7XgDy
NONMATCH("asm/non_matching/game/stage/player__sub_80136DC.inc", void sub_80136DC(s16 playerId))
{
    Player *p;
    PlayerSpriteInfo *temp_r0;
    Sprite2 *s;
    s16 temp_r0_3;
    s16 temp_r1_2;
    s16 var_r0_2;
#ifndef NON_MATCHING
    register s32 r0 asm("r0");
    register u32 temp_r2 asm("r2");
    register u32 temp_r3 asm("r3");
    register s32 var_r7 asm("r7");
#else
    s32 r0;
    u32 temp_r2;
    u32 temp_r3;
    s32 var_r7;
#endif
    u16 var_ip;
    u16 var_r1;
    u32 temp_r1_4;
    u32 temp_r2_2;
    u32 var_r0;
    u32 var_r0_3;
    u32 var_r0_4;
    u16 var_sb;
    SpriteTransform *tf;
    CamCoord camX, camY;

    p = &gPlayers[playerId];
    temp_r0 = p->spriteInfoBody;
    s = &temp_r0->s;
    tf = &temp_r0->tf;
    camX = gCamera.x;
    camY = gCamera.y;
    var_ip = 0;
    s->x = I(p->qWorldX) - camX;
    s->y = I(p->qWorldY) - camY;
    tf->x = I(p->qWorldX) - camX;
    tf->y = I(p->qWorldY) - camY;
    if (gStageData.gameMode == 7) {
        if (gStageData.playerIndex != playerId) {
            s->frameFlags = s->frameFlags | 0x200;
        } else {
            s->frameFlags = s->frameFlags & 0xFFFFFDFF;
        }
    }
    if (p->charFlags.someIndex == 3) {
        var_r1 = p->charFlags.anim2;
        var_sb = p->charFlags.state1;
        if (var_r1 - gPlayerCharacterIdleAnims[p->charFlags.character] <= 0xA4) {
            var_r1 -= gPlayerCharacterIdleAnims[p->charFlags.character];
        }
        if ((var_r1 != 8) && (var_r1 != 0x6F) && (var_r1 != 0x8C) && (var_r1 != 0x8D) && (var_r1 != 0x2BD) && (var_r1 != 0x73)
            && (var_r1 != 0x2BD)) {
            if ((var_r1 == 0x519) && (var_sb == 0)) {
                var_ip = 1;
            }
        } else {
            var_ip = 1;
        }
    } else if ((p->charFlags.anim0 == 8) || (p->charFlags.anim0 == 0x6F) || (p->charFlags.anim0 == 0x8C) || (p->charFlags.anim0 == 0x8D)
               || (p->charFlags.anim0 == 0xFA) || (p->charFlags.anim0 == 0xB1) || (p->charFlags.anim0 == 0xB2)
               || (p->charFlags.anim0 == 0x111)) {
        var_ip = 1;
    }

    if (var_ip != 0) {
        s32 tfX, tfY;
        tf->rotation = p->unk26 * 4;
        s->frameFlags &= ~(0xC00);
        s->frameFlags &= ~0x1F;
        s->frameFlags |= ((s16)playerId | 0x20);
        if (!(p->moveState & 1)) {
            tf->qScaleX = -0x100;
        } else {
            tf->qScaleX = 0x100;
        }

        if (p->moveState & 0x10000) {
            tf->qScaleX = 0 - (u16)tf->qScaleX;
        }
        if (tf->qScaleX < 0) {
            tf->x--;
        }
        if (p->moveState & 0x10000) {
            s32 rot;
            tf->qScaleY = 0x100;
            rot = tf->rotation;
            rot += 0x100;
            temp_r2 = -0x100;
#ifndef NON_MATCHING
            asm("mov %0, %1\n" : "=r"(r0) : "r"(temp_r2));
#else
            r0 = temp_r2;
#endif
            r0 -= rot;
            r0 &= 0x3FF;
            tf->rotation = r0;
        } else {
            tf->qScaleY = 0x100;
        }
        tfX = I(tf->qScaleX * p->unkA0);
        tfY = I(tf->qScaleY * p->unkA2);
        tf->qScaleX = tfX;
        tf->qScaleY = tfY;
        s->frameFlags &= 0xFFFFCFFF;
        if ((p->charFlags.anim0 != 0x6F) && (p->charFlags.anim0 != 0xB1) && (p->charFlags.anim0 != 0xB2)) {
            s->frameFlags |= 0x1000;
        }
        UpdateSpriteAnimation((Sprite *)s);
        TransformSprite((Sprite *)s, tf);
    } else {
        tf->rotation = 0;
        s->frameFlags &= ~0x3F;

        if (!(p->moveState & 1)) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
            s->x++;
        }
        if (p->moveState & 0x10000) {
            s->frameFlags |= 0x800;
        } else {
            s->frameFlags &= ~0x800;
        }

        if (p->charFlags.anim0 == 0x67) {
            s->frameFlags &= 0xFFFFCFFF;
        } else if ((p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character]) != 0x8E) {
            s->frameFlags &= 0xFFFFCFFF;
            s->frameFlags |= 0x1000;
        }
        UpdateSpriteAnimation((Sprite *)s);
    }
    var_r7 = 1;
    {
        u32 ms_r2 = p->moveState;
        u32 ms = (0x100 & ms_r2);
        temp_r3 = ms_r2;
        if (!ms) {
            if ((gStageData.gameMode != 7) || (gStageData.levelTimer != 0)) {
                temp_r3 &= 0x04000000;
                if ((temp_r3)) {
                    var_r7 = 0;
                } else {
                    ms_r2 &= 0x200;
                    if (!ms_r2) {
                        if ((p->framesInvulnerable != 0) && (gStageData.timer & 2)) {
                            var_r7 = 0;
                        }

                        if (p->unk66 != 0) {
                            if ((p != &gPlayers[gStageData.playerIndex]) || (gStageData.timer & 2)) {
                                var_r7 = 0;
                            }
                        }
                    }
                    if (gStageData.unk4 == 5) {
                        var_r7 = 1;
                    }
                }
            }
        }
    }

    if (var_r7 != 0) {
        DisplaySprite((Sprite *)s);
    }

    if (gStageData.gameMode != 7) {
        if ((((playerId == gStageData.playerIndex)) && (gStageData.zone != 8)) || ((gStageData.zone == 8) && (playerId == 0))) {
            Player_8019858(p);
        }
    }
}
END_NONMATCH

// (96.70%) https://decomp.me/scratch/pN1OQ
NONMATCH("asm/non_matching/game/stage/player__sub_8013A68.inc", void sub_8013A68(s16 arg0))
{
    Player *temp_r5;
    PlayerSpriteInfo *temp_r0;
    Sprite2 *s;
    s32 qSpeedAirX;
    s32 qSpeedAirY;
    s16 var_r0;
    u16 temp_r2;
    u16 temp_r3;
    u8 temp_r1;
    u8 temp_r1_2;
    u8 theta;
    s32 qScaleX, qScaleY;
    CamCoord camX, camY;
    SpriteTransform *tf;
    u16 anim2;
    s32 state1;

    temp_r5 = &gPlayers[arg0];
    s = &temp_r5->spriteInfoLimbs->s;
    tf = &temp_r5->spriteInfoLimbs->tf;
    camX = gCamera.x;
    camY = gCamera.y;
    if (!(temp_r5->charFlags.character == CREAM || temp_r5->charFlags.character == TAILS)) {
        return;
    }
    if (temp_r5->moveState & 0x01000000) {
        return;
    }
    if (temp_r5->charFlags.unk2C_40) {
        temp_r5->charFlags.unk2C_40 = 0;
        return;
    }
    tf->x = I(temp_r5->qWorldX) - camX;
    tf->y = I(temp_r5->qWorldY) - camY;
    s->animSpeed = 0x10;
    if (temp_r5->moveState & 0x80) {
        s->animSpeed = 8;
    }
    anim2 = temp_r5->charFlags.anim2;
    temp_r3 = temp_r5->charFlags.state1;
    anim2 -= gPlayerCharacterIdleAnims[temp_r5->charFlags.character];
    if ((!(anim2 == 19 || anim2 == 20) || (temp_r3 != 1)) && ((anim2 != 0xB) || (temp_r3 != 0))) {
        if (anim2 != 0x83) {
            return;
        }
        if (temp_r3 != 0) {
            return;
        }
    }

    if (temp_r5->charFlags.character == CREAM) {
        temp_r1_2 = temp_r5->unk26;
        temp_r5->unk14C.arr_u8[0] = temp_r1_2;
        tf->rotation = temp_r1_2 * 4;
        s->frameFlags = (s->frameFlags & ~0x1F) | 0x24;

        if (!(temp_r5->moveState & 1)) {
            tf->qScaleX = -0x100;
        } else {
            tf->qScaleX = +0x100;
        }

        if (temp_r5->moveState & 0x10000) {
            tf->qScaleX = 0 - (u16)tf->qScaleX;
        }
        if (tf->qScaleX < 0) {
            tf->x = (u16)tf->x - 1;
        }
        if (temp_r5->moveState & 0x10000) {
            s32 rot, rot0;
            tf->qScaleY = 0x100;
            rot0 = (tf->rotation + 0x100);
            rot = -0x100;
            tf->rotation = (rot - rot0) & 0x3FF;
        } else {
            tf->qScaleY = 0x100;
        }
        qScaleX = I(tf->qScaleX * temp_r5->unkA0);
        qScaleY = I(tf->qScaleY * temp_r5->unkA2);
        tf->qScaleX = qScaleX;
        tf->qScaleY = qScaleY;
        UpdateSpriteAnimation((Sprite *)s);
        TransformSprite((Sprite *)s, &temp_r0->tf);
        if (!(MOVESTATE_100 & temp_r5->moveState)) {
            if (temp_r5->moveState & MOVESTATE_4000000) {
                return;
            }
            if ((temp_r5->framesInvulnerable != 0) && (gStageData.timer & 2)) {
                return;
            }
        }

        DisplaySprite((Sprite *)s);
    } else if (temp_r5->charFlags.character == TAILS) {
        qSpeedAirX = temp_r5->qSpeedAirX;
        qSpeedAirY = temp_r5->qSpeedAirY;
        if ((qSpeedAirX != 0) || (qSpeedAirY != 0)) {
            theta = (ArcTan2(qSpeedAirX, qSpeedAirY) >> 8) + 0x40;
        } else {
            if (temp_r5->moveState & MOVESTATE_FACING_LEFT) {
                theta = -0x40;
            } else {
                theta = +0x40;
            }
        }
        temp_r5->unk148.arr_u8[1] = theta;
        tf->rotation = theta * 4;
        s->frameFlags = (s->frameFlags & ~0x1F) | 0x25;
        if (!(temp_r5->moveState & 1)) {
            tf->qScaleX = -0x100;
        } else {
            tf->qScaleX = +0x100;
        }

        if (temp_r5->moveState & 0x10000) {
            tf->qScaleX = -tf->qScaleX;
        }
        if (tf->qScaleX < 0) {
            tf->x--;
        }
        if (temp_r5->moveState & 0x10000) {
            s32 rot;
            tf->qScaleY = 0x100;
            rot = (tf->rotation + 0x100);
            tf->rotation = ((-0x100) - rot) & 0x3FF;
        } else {
            tf->qScaleY = 0x100;
        }
        qScaleX = I(tf->qScaleX * temp_r5->unkA0);
        qScaleY = I(tf->qScaleY * temp_r5->unkA2);
        tf->qScaleX = qScaleX;
        tf->qScaleY = qScaleY;
        UpdateSpriteAnimation((Sprite *)s);
        TransformSprite((Sprite *)s, tf);

        if ((MOVESTATE_100 & temp_r5->moveState)
            || (!(temp_r5->moveState & 0x04000000) && ((temp_r5->framesInvulnerable == 0) || !(gStageData.timer & 2)))) {
            DisplaySprite((Sprite *)s);
        }
    }
}
END_NONMATCH

void sub_8013D70(s32 levelIndex, s32 arg1)
{
    s16 sp00[ARRAY_COUNT(gUnknown_080CE6A8)][2];
    Player *p;
    u8 entryIndex;

    p = &gPlayers[arg1];
    entryIndex = gStageData.entryIndex;
    if (GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode) || gStageData.gameMode == GAME_MODE_5) {
        gStageData.respawnX = gUnknown_080D1750[levelIndex][entryIndex].x;
        gStageData.respawnY = gUnknown_080D1750[levelIndex][entryIndex].y;
    } else if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        gStageData.respawnX = gUnknown_080D1750[levelIndex][entryIndex].x;
        gStageData.respawnY = gUnknown_080D1750[levelIndex][entryIndex].y;
    } else {
        memcpy(sp00, &gUnknown_080CE6A8, 0x10);
        if (gStageData.playerIndex == arg1) {
            gStageData.respawnX = sp00[entryIndex][0];
            gStageData.respawnY = sp00[entryIndex][1];
        }
    }
    gStageData.unk24 = 0;
    gStageData.unk20 = 0;
    p->qSpeedGround = 0;
    if ((gStageData.gameMode == 2) && (arg1 == 0)) {
        switch (levelIndex) {
            case 13:
            case 24:
            case 35:
            case 45:
            case 55:
                p->qSpeedGround = 0;
                break;
        }
    }
    p->qWorldX = -1;
    p->qWorldY = -1;
    p->spriteInfoBody = &gUnknown_03001B00[arg1];
    if (gStageData.gameMode != 7) {
        switch (p->charFlags.character) {
            case TAILS:
                p->spriteInfoLimbs = &gUnknown_030010D0;
                break;
            case CREAM:
                p->spriteInfoLimbs = &gUnknown_0300110C;
                break;
            default:
                p->spriteInfoLimbs = NULL;
                break;
        }
    } else {
        p->spriteInfoLimbs = NULL;
    }
}

void sub_8013F4C(Player *p)
{
    s32 temp_r0_12;
    s32 var_r2;
    s8 *temp_r4;
    s32 *var_r1_2;
    void (*var_r1)(Player *);
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_5;

    p->qWorldX = gStageData.respawnX << 8;
    p->qWorldY = gStageData.respawnY << 8;
    if ((gStageData.gameMode != 7) && (gStageData.zone == 8)) {
        if (p == gPlayers) {
            var_r1 = sub_800F22C;
        } else {
            var_r1 = sub_800F7C0;
        }
        p->callback = var_r1;
    } else {
        p->callback = Player_800522C;
    }
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->moveState = 0x08000000;
    if (((gStageData.currMapIndex == 0xB) && (gStageData.entryIndex == 0))
        || ((gStageData.currMapIndex == 1) && (gStageData.entryIndex == 1))) {
        p->moveState |= 1;
    }
    temp_r1 = p + 0x24;
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 0xE;
    p->layer = PLAYER_LAYER_BACK;
    p->unk88 = Q(9.5);
    p->unk8C = Q(7.5);
    p->unk90 = 8;
    p->unk94 = 0x40;
    p->charFlags.anim0 = 0;
    p->charFlags.anim1 = -1;
    p->charFlags.anim2 = -1;
    p->charFlags.state1 = -1;
    p->unk40 = 0;
    p->unk42 = 0;
    p->unk44 = 0;
    p->Spindash_Velocity = 0;
    p->unk48 = 0;
    p->framesInvulnerable = 0;
    p->framesInvincible = 0;
    p->unk4E = 0;
    p->idleAndCamCounter = 360;
    p->unk54 = 0;
    p->unk58 = 0x3C;
    p->unk59 = 0xA;
    p->unk56 = 0xE;
    p->unk57 = 0x3C;
    p->boostEffectCounter = 0;
    p->unk5E = 0;
    p->unk5A = 0;
    p->unk5B = 0;
    p->unk5C = 0;
    p->unkA0 = 0x100;
    p->unkA2 = 0x100;

    if (gStageData.gameMode != 7) {
        sub_8014258(p);
    }

#ifndef NON_MATCHING
    var_r1_2 = (s32 *)&p->unk78[0];
    var_r2 = sizeof(p->unk78) / sizeof(*var_r1_2);
    while (var_r2-- != 0) {
        *var_r1_2 = 0;
        var_r1_2++;
    }
#else
    memset(p->unk78, 0, sizeof(p->unk78));
#endif
    p->unk78[0] = 0x7F;
}

void sub_801409C(Player *p)
{
    Player *temp_r5;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_5;
    s16 temp_r0_6;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 temp_r1_4;

    temp_r5 = GET_SP_PLAYER_V1(PLAYER_2);
    if ((p->charFlags.anim1 == 0xCB) && (p->charFlags.anim0 != 0xCB)) {
        Player_StopSong(p, 0x214U);
    }
    if ((p->charFlags.anim1 == 0x5C) && ((p->charFlags.anim0 != 0x5C) || (temp_r5->charFlags.anim0 == 0xD0))) {
        Player_StopSong(p, 0x78U);
    }
    temp_r1 = (u16)p->charFlags.anim1;
    if (((u32)(u16)(temp_r1 - 0xCE) <= 1U) || (temp_r0 = (s16)temp_r1, (temp_r0 == 0xD1)) || (temp_r0 == 0xD2) || (temp_r0 == 0xD5)
        || (temp_r0 == 0xD4)) {
        temp_r1_2 = (u16)p->charFlags.anim0;
        if ((u32)(u16)(temp_r1_2 - 0xCE) > 1U) {
            temp_r0_2 = (s16)temp_r1_2;
            if (temp_r0_2 != 0xD1) {
                if ((temp_r0_2 != 0xD2) && (temp_r0_2 != 0xD5) && (temp_r0_2 != 0xD4)) {
                    Player_StopSong(p, 0x78U);
                }
            }
        }
    }
    temp_r0_3 = p->charFlags.anim1;
    if ((temp_r0_3 == 0x6F) || (temp_r0_3 == 0xB1) || (temp_r0_3 == 0xB2)) {
        temp_r0_4 = p->charFlags.anim0;
        if ((temp_r0_4 != 0x6F) && (temp_r0_4 != 0xB1) && (temp_r0_4 != 0xB2)) {
            Player_StopSong(p, 0x72U);
        }
    }
    temp_r1_3 = (u16)p->charFlags.anim1;
    if (((u32)(u16)(p->charFlags.anim1 - 0xD6) <= 1U) || (temp_r0_5 = (s16)p->charFlags.anim1, (temp_r0_5 == 0xD9))
        || (temp_r0_5 == 0xDA)) {
        temp_r1_4 = (u16)p->charFlags.anim0;
        if (temp_r1_4 != 0xD6 && temp_r1_4 != 0xD7) {
            temp_r0_6 = (s16)temp_r1_4;
            if (temp_r0_6 != 0xD9) {
                if (temp_r0_6 != 0xDA) {
                    Player_StopSong(p, 0x21AU);
                }
            }
        }
    }
    if (((u32)(u16)((u16)p->charFlags.anim1 - 0xBC) <= 1U) && ((u32)(u16)((u16)p->charFlags.anim0 - 0xBC) > 1U)) {
        Player_StopSong(p, 0xE3U);
    }
    if ((p->charFlags.anim1 == 0xF7) && (p->charFlags.anim0 != 0xF7)) {
        Player_StopSong(p, 0x211U);
    }
}

void sub_80141EC(Player *p, u8 param1, u8 param2)
{
    s32 sp[25];
    u32 var_r0;

    memcpy(sp, &gUnknown_080CE644, 100);

    if (gStageData.gameMode != 7) {
        p->unkC = sp[(param1 * 5) + param2];
    } else {
        p->unkC = 0x42;
    }
}

void sub_8014230(Player *p, Sprite2 *s)
{
    s32 speed;

    speed = p->qSpeedGround;
    speed = (speed >> 5) + (speed >> 6);
    speed = ABS(speed);
    if (speed > 7) {
        if (speed > SPRITE_ANIM_SPEED(8)) {
            speed = SPRITE_ANIM_SPEED(8);
        }
    } else {
        speed = 8;
    }
    s->animSpeed = speed;
}

void sub_8014258(Player *p)
{
    u16 rings = gStageData.rings;

    if (p->unkC & 1) {
        if (rings > 149) {
            p->charFlags.ringSpeedFactor = RSF_4;
        } else if (rings > 99) {
            p->charFlags.ringSpeedFactor = RSF_3;
        } else if (rings > 49) {
            p->charFlags.ringSpeedFactor = RSF_2;
        } else if (rings > 10) {
            p->charFlags.ringSpeedFactor = RSF_1;
        } else {
            p->charFlags.ringSpeedFactor = RSF_0;
        }
    } else {
        p->charFlags.ringSpeedFactor = 0;
    }
}

void sub_80142CC(Player *arg0)
{
    u8 ringSpeedFactor = arg0->charFlags.ringSpeedFactor;

    if (gStageData.gameMode != 7) {
        if ((arg0->charFlags.boostIsActive) && (arg0->unkC & 1) && !(0x800000 & arg0->moveState)) {
            arg0->unk8C = Q(10);
            arg0->unk88 = Q(12);
        } else if (arg0->moveState & 2) {
            arg0->unk8C = Q(10);
            arg0->unk88 = Q(12);
        } else {
            arg0->unk8C = Q(7.5);
            arg0->unk88 = Q(9.5);
        }

        arg0->unk90 = gUnknown_080CECB2[ringSpeedFactor][0];
        arg0->unk94 = gUnknown_080CECB2[ringSpeedFactor][1];

        if ((s16)arg0->unk5E != 0) {
            arg0->unk90 *= 2;
            arg0->unk94 *= 2;
            return;
        }
        if ((gStageData.gameMode == 6) && ((s16)arg0->unk60 != 0)) {
            arg0->unk8C >>= 2;
            arg0->unk88 >>= 2;
            arg0->unk90 >>= 1;
            arg0->unk94 >>= 1;
        }
    } else {
        arg0->unk8C = 0x780;
        arg0->unk88 = 0x980;
        arg0->unk90 = 0xC;
        arg0->unk94 = 0x40;
    }
}

void sub_80143E0(Player *p)
{
    if (p->unkC & 1) {
        if (p->charFlags.boostIsActive) {
            if (!(p->moveState & MOVESTATE_IN_AIR)) {
                p->boostEffectCounter = gUnknown_080CECC6[p->charFlags.ringSpeedFactor];
                if (ABS(p->qSpeedGround) < Q(4.75)) {
                    Player_BoostModeDisengage(p);
                }
            }
        } else if (!(p->moveState & MOVESTATE_IN_AIR)) {
            if (ABS(p->qSpeedGround) >= p->unk8C) {
                s16 boostEffectCounter = p->boostEffectCounter;
                s16 newCounter = gUnknown_080CECC6[p->charFlags.ringSpeedFactor];
                if (boostEffectCounter >= newCounter) {
                    Player_BoostModeEngage(p);

                    if (p->charFlags.someIndex == 1) {
                        gCamera.unk20 = 0x400;
                        Player_PlaySong(p, SE_CHAR_BOOST);
                    }
                }
            } else {
                p->boostEffectCounter = 0;
            }
        } else {
        block_14:
            p->boostEffectCounter = 0;
        }
    }
}

void sub_80144B4(Player *p)
{
    s32 qSpeedGround = ABS(p->qSpeedGround);

    if (qSpeedGround <= Q(1.25)) {
        p->charFlags.state0_subCount = 0;
    } else if (qSpeedGround <= Q(2.5)) {
        p->charFlags.state0_subCount = 1;
    } else if (qSpeedGround <= Q(4)) {
        p->charFlags.state0_subCount = 2;
    } else if ((qSpeedGround <= Q(7)) || (p->moveState & MOVESTATE_800000)) {
        p->charFlags.state0_subCount = 3;
    } else if (qSpeedGround <= Q(9)) {
        p->charFlags.state0_subCount = 4;
    } else {
        p->charFlags.state0_subCount = 5;
    }
}

void Player_8014550(Player *p)
{
    u16 rings;

    if (!(gStageData.unk4 == 5 || gStageData.unk4 == 6) && ((p->framesInvulnerable <= 0)) && (p->framesInvincible <= 0)) {
        if (p->moveState & MOVESTATE_20000) {
            p->layer = PLAYER_LAYER_BACK;
            Player_StopSong(p, SE_GRINDING);
            p->moveState &= ~MOVESTATE_20000;
        }

        p->qCamOffsetY = 0;

        if (gStageData.gameMode != 7) {
            Player_BoostModeDisengage(p);
            if ((p->charFlags.someIndex != 2) && (gStageData.act != ACT_SPECIAL && gStageData.act != ACT_OVERWORLD)
                && (gStageData.act != ACT_BONUS_CAPSULE) && (gStageData.act != ACT_BONUS_ENEMIES)) {
                if (0x30 & p->unk13C) {
                    p->unk13C &= 0xCF;
                } else if (gStageData.rings == 0) {
                    Player_HitWithoutRingsUpdate(p);
                    return;
                } else if (p->charFlags.someIndex == 1) {
                    rings = gStageData.rings;
                    gStageData.rings = 0;
                    sub_802AE64(p, rings);
                    if ((gStageData.gameMode > 4) && (p->charFlags.someIndex == 1)) {
                        sub_80274AC(rings, gStageData.rings);
                    }
                }
            }
        }

        p->moveState &= ~MOVESTATE_COLLIDING_ENT;
        p->sprColliding = NULL;
        SetPlayerCallback(p, Player_8008CD0);
        p->framesInvulnerable = 120;
    }
}

void sub_8014670(Player *p)
{
    if (gStageData.unk4 == 3) {
        if (p->charFlags.anim0 != 0x66) {
            if (p->framesInvulnerable > 0) {
                p->framesInvulnerable--;
            }
        }

        if (p->framesInvincible > 0) {
            if (--p->framesInvincible == 0) {
                p->unk13C &= 0xBF;
            }
        }

        if (p->unk5E > 0) {
            p->unk5E--;
        }

        if (p->unk60 > 0) {
            p->unk60--;
        }

        if (p->unk62 > 0) {
            p->unk62--;
        }

        if (p->unk66 > 0) {
            p->unk66--;
        }
    }
}

// NOTE: Same link as Player_801479C
// (87.52%) https://decomp.me/scratch/gwcRp
NONMATCH("asm/non_matching/game/stage/player__sub_8014710.inc", void sub_8014710(Player *arg0))
{
    u8 temp_r0;

    if (arg0->charFlags.someIndex == 1) {
        bool32 var_r5 = FALSE;

        if ((gStageData.unk4 == 3) && !(arg0->unkC & 0x40000) && !(arg0->moveState & MOVESTATE_100)) {
            if ((arg0->unk57 == 0) || (--arg0->unk57 == 0)) {
                if (arg0->unk56 == 0) {
                    var_r5 = TRUE;
                    asm("");
                } else {
                    arg0->unk56 -= 1;
                    arg0->unk57 = 0x78;
                    sub_801782C(arg0, arg0->unk56);
                }
            }

            if (var_r5) {
                Player_PlaySong(arg0, SE_157);
                Player_HitWithoutRings(arg0);
            }
        }
    }
}
END_NONMATCH

// NOTE: Same link as sub_8014710
// (87.52%) https://decomp.me/scratch/gwcRp
NONMATCH("asm/non_matching/game/stage/player__Player_801479C.inc", void Player_801479C(Player *p))
{
    u8 *pUnk26;
    u8 unk26;
    s32 unk88;
    u8 temp_r3_2;
    s32 *pUnk88 = &p->unk88;
    s32 qSpeed;

    if (p->qSpeedGround > p->unk88) {
        p->qSpeedGround = +p->unk88;
    } else if (p->qSpeedGround < p->unk88) {
        p->qSpeedGround = -p->unk88;
    }

    qSpeed = p->qSpeedGround;
    pUnk26 = &p->unk26;

    p->qSpeedAirX = Q_MUL(COS_24_8((unk26 = *pUnk26) * 4), qSpeed);
    if (!(p->moveState & MOVESTATE_IN_AIR)) {
        p->qSpeedAirY = 0;
    }
    p->qSpeedAirY += Q_MUL(SIN_24_8(unk26 * 4), qSpeed);
}
END_NONMATCH

s16 sub_801480C(Player *p)
{
    u32 temp_r1;
    u8 temp_r6;
    u8 var_r5;
    void (*callback)(Player *);

    var_r5 = p->unk26;
    if (p->keyInput2 & gStageData.buttonConfig.jump) {
        temp_r6 = sub_8031BAC(p);
        if (temp_r6 != 2) {
            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                var_r5 = ((u32)(0 - ((var_r5 + 0x40) << 0x18)) >> 0x18);
                var_r5 = var_r5 - 0x40;
            }
            if (sub_8012E54((u8)(var_r5 + 0x80), p) > 3) {
                if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
                    if (p->moveState & MOVESTATE_800000) {
                        if (temp_r6 != 0) {
                            p->qWorldY -= Q(2);
                        }
                        callback = Player_8007EAC;
                    } else {
                        temp_r1 = p->unkC;
                        if (0x40 & temp_r1) {
                            if (temp_r6 != 0) {
                                p->qWorldY -= Q(2);
                            }
                            callback = Player_8006250;
                        } else if (((temp_r1 & 6) == 4) && (DPAD_DOWN & p->keyInput)) {
                            callback = sub_801DFC4;
                        } else {
                            if (temp_r6 != 0) {
                                p->qWorldY -= Q(2);
                            }
                            callback = Player_8006310;
                        }
                    }
                    SetPlayerCallback(p, callback);
                } else {
                    if (temp_r6 != 0) {
                        p->qWorldY -= Q(2);
                    }
                    SetPlayerCallback(p, Player_8006250);
                }

                if (MOVESTATE_COLLIDING_ENT & p->moveState) {
                    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                    p->sprColliding = NULL;
                }
                return TRUE;
            }
        }
    }

    return FALSE;
}

void sub_8014940(Player *p)
{
    s32 forMatching;
    s32 temp_r5;
    s32 temp_r6;
    s16 qSpeed;

    forMatching = p->unk90 * 2;
    temp_r5 = forMatching;

    temp_r6 = p->unk8C;
    if (p->charFlags.anim0 != 0x66) {
        if (!(MOVESTATE_8 & p->moveState)) {
            qSpeed = p->qSpeedAirX;
            if (DPAD_LEFT & p->keyInput) {
                if (!(MOVESTATE_2000 & p->moveState)) {
                    p->moveState |= MOVESTATE_FACING_LEFT;
                }

                qSpeed -= temp_r5;
                if (qSpeed < -temp_r6) {
                    qSpeed += temp_r5;
                    if (qSpeed > -temp_r6) {
                        qSpeed = -temp_r6;
                    }
                }
            } else if (DPAD_RIGHT & p->keyInput) {
                if (!(MOVESTATE_2000 & p->moveState)) {
                    p->moveState &= ~MOVESTATE_FACING_LEFT;
                }
                qSpeed += temp_r5;
                if (qSpeed > temp_r6) {
                    qSpeed -= temp_r5;
                    if (qSpeed < temp_r6) {
                        qSpeed = temp_r6;
                    }
                }
            }
            p->qSpeedAirX = (s16)qSpeed;
        }
    }
}

void Player_80149E4(Player *p)
{
    s16 temp_r0;
    s16 temp_r2;
    u8 var_r1;

    temp_r2 = (u16)p->qSpeedAirY;
    var_r1 = (p->moveState & 0x10000) ? 0x80 : 0;
    temp_r0 = p->qSpeedAirX;
    if ((temp_r0 != 0) || (temp_r2 != 0)) {
        var_r1 = ArcTan2(temp_r0, (s16)temp_r2) >> 0x8;
    }
    var_r1 = ((var_r1 - 0x20) & ~0x3F);
    switch (var_r1 >> 6) {
        case 0:
            sub_8011D08(p);
            break;
        case 2:
            sub_8011E70(p);
            break;
        case 1:
            sub_8011FB8(p);
            break;
        case 3:
            sub_8012118(p);
            break;
    }
}

bool16 sub_8014A60(Player *p)
{
    if ((DPAD_ANY & p->keyInput) == DPAD_DOWN) {
        if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0) && !(p->moveState & (MOVESTATE_20000 | MOVESTATE_JUMPING))) {
            SetPlayerCallback(p, Player_8007FE8);
            return TRUE;
        }

        if (p->qSpeedGround <= -Q(0.5) || p->qSpeedGround >= +Q(0.5)) {
            if (!((MOVESTATE_20000 | MOVESTATE_JUMPING) & p->moveState) && ((p->unkC & 6) == 2) && !(p->moveState & MOVESTATE_800000)) {
                SetPlayerCallback(p, Player_800891C);
                Player_PlaySong(p, SE_SPIN_ATTACK);

                return TRUE;
            }
        }
    }

    return FALSE;
}

bool32 sub_8014AF8(Player *p)
{
    PlayerUnkC4 *unkC4 = TASK_DATA(gCurTask);
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    if (gStageData.gameMode != 7) {
        if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0) && !(p->keyInput & gStageData.buttonConfig.trick)
            && !(p->moveState & 0x08820046)) {
            u16 newAnim;
            if (p->idleAndCamCounter > 0) {
                p->idleAndCamCounter--;
            } else {
                if (unkC4->playerId == 0) {
                    p->charFlags.anim0 = 6;
                } else if ((gStageData.gameMode < 5) && (p->charFlags.character == AMY) && (partner->charFlags.character == SONIC)) {
                    p->charFlags.anim0 = 251;
                } else {
                    p->charFlags.anim0 = 7;
                }

                return TRUE;
            }
        } else {
            p->idleAndCamCounter = 360;
        }
    }

    return FALSE;
}

s16 sub_8014BC4(Player *p)
{
    Player *partner;
    s16 temp_r0_2;
    s16 temp_r2;
    s16 *temp_r0;
    s16 *temp_r0_3;
    s16 *temp_r1;
    s16 *temp_r1_2;
    s16 *var_r4;
    u32 temp_r2_2;
    u8 temp_r3;

    if (gStageData.gameMode == 7) {
        return FALSE;
    }
    if (gStageData.currMapIndex == 1) {
        return FALSE;
    }
    if (gStageData.currMapIndex == 11) {
        return FALSE;
    }

    if (p->keyInput & gStageData.buttonConfig.trick) {
        temp_r2_2 = p->moveState;
        if (0x800000 & p->moveState) {
            return TRUE;
        }

        if (p->unk40 < 30) {
            p->unk40++;
        } else {
            if (!(p->moveState & MOVESTATE_400000)) {
                Player_PlaySong(p, SE_TAGACTION_BUILDUP);
            }
            p->moveState |= MOVESTATE_400000;

            if (p->unk42 == 60) {
                Player_BoostModeDisengage(p);
                sub_80193A4(p);

                if ((p->moveState & 0x24) == 4) {
                    SetPlayerCallback(p, sub_800E150);
                } else {
                    SetPlayerCallback(p, Player_80077CC);
                }

                Player_StopSong(p, SE_TAGACTION_BUILDUP);
                Player_PlaySong(p, SE_TAGACTION_CHARGED);
                p->moveState &= 0xFFBFFFF5;
                p->moveState |= 0x800000;
                p->unk42 = 0;
                return TRUE;
            }
        }
    } else {
        if ((p->unkC & 0x800000) && (p->charFlags.unk2C_04) && (p->unk40 != 0) && (p->unk40 < 30)) {
            p->charFlags.unk2C_04 = 0;
            p->unk40 = 0;
            sub_800C3AC(p);
        } else {
            p->unk40 = 0;

            if (p->moveState & 0x800000) {
                partner = GET_SP_PLAYER_V1(PLAYER_2);
                sub_800BF78(p);
                partner->moveState &= 0xFE7FFFFF;
                p->moveState &= 0xFE7FFFFF;
                sub_80193CC(p);
                Player_StopSong(p, SE_TAGACTION_BUILDUP);
            } else {
                if (p->unk42 != 0) {
                    Player_StopSong(p, SE_TAGACTION_BUILDUP);
                }
                sub_80193A4(p);
                p->moveState &= 0xFFBFFFFF;
            }
            p->unk42 = 0;
        }
    }

    return FALSE;
}

bool16 sub_8014D70(Player *p)
{
    Player *partner;

    if ((p->moveState & 0x800000) && ((p->unk26 + 0x20) & 0xC0)) {
        switch (p->charFlags.anim0) {
            case 8:
            case 9:
                p->charFlags.anim0 = 8;
                SetPlayerCallback(p, Player_8005380);
                break;
            case 18:
                p->charFlags.anim0 = 16;
                SetPlayerCallback(p, Player_8005380);
                break;
            case 0:
            case 3:
            case 14:
                p->charFlags.anim0 = 0;
                SetPlayerCallback(p, Player_8005380);
                break;
            case 21:
                if (p->unkC & 0x40) {
                    p->charFlags.anim0 = 20;
                } else {
                    p->charFlags.anim0 = 108;
                }

                SetPlayerCallback(p, Player_800DAF4);
                break;
        }
        partner = GET_SP_PLAYER_V1(PLAYER_2);
        partner->moveState &= 0xFE7FFFFF;
        p->moveState &= 0xFE7FFFFF;
    }

    return 0;
}

void sub_8014E70(Player *p)
{
    s32 temp_r1;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r8;
    s8 var_r2;
    u8 var_r4;
    s16 i;

    var_r8 = 0;
    for (i = 0; i < 2; i++) {
        var_r2 = 0x40;
        if (p->qSpeedGround != 0) {
            if (p->qSpeedGround > 0) {
                var_r2 = 0xC0;
            }
        } else if (!(p->moveState & 1)) {
            var_r2 = -0x40;
        }

        if (i != 0) {
            if (ABS(p->qSpeedGround) <= Q(3)) {
                var_r2 += 0x80;
            } else {
                continue;
            }
        }

        var_r4 = p->unk26;
        var_r4 += var_r2;
        if (p->moveState & 0x10000) {
            var_r4 += 0x40;
            var_r4 = ((-(var_r4 << 0x18)) >> 0x18);
            var_r4 -= 0x40;
        }
        temp_r2 = Q(sub_8011BFC(var_r4, p));

        if (temp_r2 <= 0) {
            var_r8 = 1;
            temp_r1 = (s32)((var_r4 + 0x20) & 0xC0) >> 6;
            switch (temp_r1) {
                case 0:
                    p->qWorldY += temp_r2;
                    p->unk26 = (u8)temp_r1;
                    if (i == 0) {
                        p->qSpeedAirY = 0;
                        p->qSpeedGround = 0;
                    }
                    break;
                case 1:
                    var_r0 = p->qWorldX - temp_r2;
                    goto block_28;
                case 2:
                    p->qWorldY -= temp_r2;
                    p->unk26 = 0;
                    if (i == 0) {
                        p->qSpeedAirY = 0;
                        p->qSpeedAirX = 0;
                        p->qSpeedGround = 0;
                    }
                    p->moveState |= 4;
                    break;
                case 3:
                    var_r0 = p->qWorldX + temp_r2;
                block_28:
                    p->qWorldX = var_r0;
                    if (i == 0) {
                        if (!(0x800000 & p->moveState)) {
                            p->moveState |= 0x40;
                        }
                        p->qSpeedAirX = 0;
                        p->qSpeedGround = 0;
                    }
                    break;
            }
        }
    }

    if (var_r8 != 0) {
        p->unk99 = 0;
        p->unk9A = 0;
    }
}

void sub_8014FA4(Player *p)
{
    u8 sp00[2];
    s32 temp_r0;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r2;
    struct _anonymous *temp_r4;
    u8 temp_r7;
    u8 *temp_r0_2;
    u8 *temp_r6;
    s32 qSpeedGround;
    s32 qSpeedX;
    s32 qSpeedY;

    var_r2 = 0x40;
    if (!(p->moveState & 1)) {
        var_r2 = 0xC0;
    }
    temp_r7 = p->unk26 + var_r2;
    sp00[0] = p->charFlags.unk28;
    sp00[1] = p->charFlags.unk29;
    temp_r2 = Q(sub_8011BFC(temp_r7, p));
    p->charFlags.unk28 = sp00[0];
    p->charFlags.unk29 = sp00[1];
    if (temp_r2 <= 0) {
        temp_r0 = (s32)((temp_r7 + 0x20) & 0xC0) >> 6;
        switch (temp_r0) {
            case 0:
                p->qWorldY += temp_r2;
                qSpeedY = p->qSpeedAirY;
                p->qSpeedAirY = -qSpeedY;
                break;
            case 1:
                p->qWorldX -= temp_r2;
                qSpeedX = p->qSpeedAirX;
                p->qSpeedAirX = -qSpeedX;
                break;
            case 2:
                p->qWorldY -= temp_r2;
                qSpeedY = p->qSpeedAirY;
                p->qSpeedAirY = -qSpeedY;
                qSpeedX = p->qSpeedAirX;
                p->qSpeedAirX = -qSpeedX;
                break;
            case 3:
                p->qWorldX += temp_r2;
                qSpeedX = p->qSpeedAirX;
                p->qSpeedAirX = -qSpeedX;
                break;
        }
        qSpeedGround = p->qSpeedGround;
        p->qSpeedGround = -qSpeedGround;
        p->unk99 = 0;
        p->unk9A = 0;
    }
}

// (88.35%) https://decomp.me/scratch/Ao5NW
NONMATCH("asm/non_matching/game/stage/player__sub_8015064.inc", s16 sub_8015064(Player *p))
{
    s16 var_r0;
    s16 result;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 qWorldX;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 qWorldY;
    u32 temp_r0;
    s32 camUnk10, camUnk14;
    struct Camera *cam = &gCamera;

    qWorldX = p->qWorldX;
    qWorldY = p->qWorldY;
    result = 0;

    if (p->moveState & MOVESTATE_100) {
        return TRUE;
    }

    if ((sub_8016FA8(p) << 0x10) != 0) {
        p->moveState |= MOVESTATE_100;
        if (p->moveState & 0x80) {
            p->qSpeedAirY = -0x2A0;
        } else {
            p->qSpeedAirY = -0x4E0;
        }

        if (p->moveState & 0x10000) {
            qWorldY = Q(cam->unk10);
        } else {
            qWorldY = Q(cam->unk14) - 1;
        }
        Player_HitWithoutRingsUpdate(p);
        result = 1;
    }

    camUnk10 = cam->unk10;
    camUnk14 = cam->unk14;

    var_r0_2 = Q(cam->unk18 + 12);
    if (qWorldX >= var_r0_2) {
        temp_r1 = Q(cam->unk1C) - Q(11) - 1;
        var_r0_2 = qWorldX;
        if (var_r0_2 > temp_r1) {
            var_r0_2 = temp_r1;
        }
    }

    var_r0_3 = Q(camUnk10);
    if (qWorldY >= var_r0_3) {
        temp_r1_2 = Q(camUnk14) - 1;
        var_r0_3 = qWorldY;
        if (var_r0_3 > temp_r1_2) {
            var_r0_3 = temp_r1_2;
        }
    }
    if (var_r0_2 != qWorldX) {
        p->qSpeedAirX = 0;
        p->qSpeedGround = 0;
    }
    if (var_r0_3 != qWorldY) {
        p->qSpeedAirY = 0;
        p->qSpeedGround = 0;
    }
    p->qWorldX = var_r0_2;
    p->qWorldY = var_r0_3;

    return result;
}
END_NONMATCH

void sub_8015144(Player *p)
{
    s32 sinValue;
    s32 var_r0;
    s32 qSpeed;

    var_r0 = (p->unk26 + 0x60) & 0xFF;
    if (var_r0 < (u8)-0x40) {
        if (!(p->moveState & 2)) {
            qSpeed = (SIN_24_8(p->unk26 * 4) * 3) >> 5;
            if (p->qSpeedGround != 0) {
                p->qSpeedGround += qSpeed;
            }
        } else {
            if (p->qSpeedGround != 0) {
                sinValue = SIN_24_8(p->unk26 * 4) * 60;
                qSpeed = I(sinValue);

                if (p->qSpeedGround > 0) {
                    if (qSpeed <= 0) {
                        qSpeed = I(sinValue) >> 2;
                    }
                } else if (qSpeed >= 0) {
                    qSpeed = I(sinValue) >> 2;
                }

                p->qSpeedGround += qSpeed;
            }
        }
    }
}

void sub_80151C4(Player *p)
{
    p->qSpeedGround += ((SIN_24_8(p->unk26 * 4) * 5) >> 5);

    if (DPAD_LEFT & p->keyInput) {
        if (p->qSpeedGround < 0 || p->qSpeedGround > Q(1)) {
            p->qSpeedGround -= Q(8. / 256.);
        }
    } else if (DPAD_RIGHT & p->keyInput) {
        if ((p->qSpeedGround + Q(1)) < Q(0) || (p->qSpeedGround + Q(1)) > Q(1)) {
            p->qSpeedGround += Q(8. / 256.);
        }
    }
}

void sub_8015228(Player *p)
{
    u8 sp8, sp9;
    s16 var_r0;
    s32 worldX;
    s32 worldY;
    s32 var_r0_2;
    s32 var_sl;
    s8 *temp_r4;
    s8 *temp_r4_2;
    s8 *temp_r7;
    u8 worldX_2;
    u8 temp_r4_3;
    u8 *temp_r3;
    u8 *var_r4;
    void (*var_r1)(Player *);

    worldX = I(p->qWorldX);
    worldY = I(p->qWorldY);
    if (gStageData.gameMode == 7) {
        return;
    }

    if (ABS(p->qSpeedGround) >= Q(0.5)) {
        return;
    }

    if (sub_80517FC(worldY + p->spriteOffsetY, worldX, p->layer, 8, NULL, sub_805217C) < 9) {
        return;
    }
    if (p->moveState & 0x10000) {
        {
            s32 y = worldY - p->spriteOffsetY;
            s32 v = worldX - 2;
            var_sl = sub_80517FC(y, v - p->spriteOffsetX, p->layer, -8, &sp8, sub_805217C);
        }
        {
            s32 y = worldY - p->spriteOffsetY;
            s32 v = worldX + 2;
            var_r0_2 = sub_80517FC(y, v + p->spriteOffsetX, p->layer, -8, &sp9, sub_805217C);
        }
    } else {
        {
            s32 y = worldY + p->spriteOffsetY;
            s32 v = worldX - 2;
            var_sl = sub_80517FC(y, v - p->spriteOffsetX, p->layer, 8, &sp8, sub_805217C);
        }
        {
            s32 y = worldY + p->spriteOffsetY;
            s32 v = worldX + 2;
            var_r0_2 = sub_80517FC(y, v + p->spriteOffsetX, p->layer, 8, &sp9, sub_805217C);
        }
    }
    if ((var_sl > 8) && (var_r0_2 == 0) && ((sp9 == 0xFF) || (sp9 == 1) || (sp9 == 0x7F) || (sp9 == 0x81))) {
        if (p->moveState & 1) {
            SetPlayerCallback(p, sub_800DFEC);
        } else {
            SetPlayerCallback(p, sub_800E01C);
        }
    } else if ((var_sl == 0) && (var_r0_2 > 8) && ((sp8 == 0xFF) || (sp8 == 1) || (sp8 == 0x7F) || (sp8 == 0x81))) {
        if (p->moveState & 1) {
            SetPlayerCallback(p, sub_800E01C);
        } else {
            SetPlayerCallback(p, sub_800DFEC);
        }
    }
}

void sub_80153BC(Player *p)
{
    u16 param2;
    s32 var_r5;
    s8 *temp_r1_3;
    u32 temp_r1;
    u32 temp_r1_2;

    var_r5 = 0;
    if ((sub_8004E20(I(p->qWorldX), I(p->qWorldY), &param2) << 0x10) != 0) {
        if (!(p->moveState & MOVESTATE_80)) {
            var_r5 = 1;
            p->qSpeedAirX >>= 2;
            p->qSpeedAirY >>= 2;
        }
        p->moveState |= MOVESTATE_80;
    } else {
        if (MOVESTATE_80 & p->moveState) {
            var_r5 = 1;
        }
        p->moveState &= ~MOVESTATE_80;
        p->unk56 = 0xE;
        p->unk57 = 0x78;
    }
    if ((var_r5 != 0) && (gStageData.unk4 == 3) && !(p->moveState & 0x100)) {
        sub_80172F0(p, param2);
        Player_PlaySong(p, SE_156);
    }
    sub_8014710(p);
}

s32 sub_8015460(Player *p)
{
    s16 sp00;
    s32 temp_r1;
    s32 var_r5;
    u16 temp_r1_2;
    u16 var_r0;
    u16 var_r0_2;
    u32 temp_r1_3;
    u32 temp_r1_4;

    var_r5 = 0;
    sub_8004E20(I(p->qWorldX), I(p->qWorldY) + p->spriteOffsetY, &sp00);
    if ((p->qWorldY > Q(sp00)) || (p->qSpeedAirY > 0)) {
        p->qSpeedAirY -= Q(16. / 256.);
    } else {
        p->qWorldY = Q(sp00);
        p->qSpeedAirY = 0;
    }

    if (DPAD_RIGHT & p->keyInput) {
        if (1 & p->moveState) {
            p->moveState &= ~1;
            var_r0 = 0;
            p->qSpeedAirX = var_r0;
            var_r5 = 3;
        } else if (p->qSpeedAirX < +Q(1)) {
            p->qSpeedAirX += 8;
            var_r5 = 1;
        } else {
            var_r5 = 1;
        }
    } else if (DPAD_LEFT & p->keyInput) {
        if (!(p->moveState & 1)) {
            p->moveState |= 1;
            p->qSpeedAirX = 0;
            var_r5 = 3;
        } else {
            if (p->qSpeedAirX > -Q(1)) {
                p->qSpeedAirX -= Q(8. / 256.);
            }

            var_r5 = 1;
        }
    } else if (DPAD_UP & p->keyInput) {
        p->qSpeedAirX >>= 1;
        if (p->qSpeedAirY != 0) {
            p->qSpeedAirY -= Q(32. / 256.);
        }
        var_r5 = 2;
    } else if (DPAD_DOWN & p->keyInput) {
        var_r5 = 4;
    } else {
        p->qSpeedAirX >>= 1;
    }

    Player_80149E4(p);
    p->moveState &= ~MOVESTATE_40;
    return var_r5;
}

bool32 sub_8015568(Player *p)
{
    Player *partner;
    s16 temp_r6;
    s16 *temp_r0_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r1_4;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 var_r1;
    void (*var_r1_2)(Player *);

    if (gStageData.gameMode == 7) {
        return 0;
    }
    if ((s32)((p->unk26 + 0x40) << 0x18) <= 0) {
        return 0;
    }
    if (!(p->keyInput2 & gStageData.buttonConfig.attack)) {
        return 0;
    }

    switch (p->charFlags.character) { /* irregular */
        case SONIC: {
            sub_8015568__shared_inline(p);

            if (p->unk54 != 0) {
                SetPlayerCallback(p, sub_800C87C);
                sub_801EBC0(0xD, p);
                return 1;
            }

            switch (p->unkC & 0x18) {
                case 0:
                    SetPlayerCallback(p, sub_8019FF8);
                    return 1;
                case 8:
                    SetPlayerCallback(p, sub_801A05C);
                    return 1;
                case 0x18:
                    SetPlayerCallback(p, Player_8009780);
                    return 1;
            }
        } break;

        case CREAM: {
            sub_8015568__shared_inline(p);

            switch (p->unkC & 0x18) {
                case 0:
                    SetPlayerCallback(p, sub_801AA54);
                    return 1;
                case 8:
                    SetPlayerCallback(p, sub_801AAEC);
                    return 1;
                case 0x10:
                    SetPlayerCallback(p, sub_801AB10);
                    return 1;
                case 0x18:
                    SetPlayerCallback(p, Player_8009780);
                    return 1;
            }
        } break;

        case TAILS: {
            sub_8015568__shared_inline(p);

            if (p->unk54 != 0) {
                SetPlayerCallback(p, sub_800C87C);
                sub_801EBC0(0xD, p);
                return 1;
            }

            switch (p->unkC & 0x18) {
                case 0:
                    SetPlayerCallback(p, sub_801BCCC);
                    return 1;
                case 8:
                    SetPlayerCallback(p, sub_801BD1C);
                    return 1;
                case 0x18:
                    SetPlayerCallback(p, Player_8009780);
                    return 1;
            }
        } break;

        case KNUCKLES: {
            sub_8015568__shared_inline(p);

            if (p->unk54 == 0) {
                switch (p->unkC & 0x18) {
                    case 0:
                        SetPlayerCallback(p, sub_801D7B0);
                        return 1;
                    case 8:
                        SetPlayerCallback(p, sub_801D804);
                        return 1;
                    case 0x18:
                        SetPlayerCallback(p, Player_8009780);
                        return 1;
                }
            } else {
                SetPlayerCallback(p, sub_800C87C);
                sub_801EBC0(0xD, p);
                return 1;
            }
        } break;

        case AMY: {
            temp_r0_2 = &p->unk54;
            temp_r6 = p->unk54;
            if (p->unk54 != 0) {
                sub_8015568__shared_inline(p);

                SetPlayerCallback(p, sub_800C87C);
                sub_801EBC0(0xD, p);
                return 1;
            } else if (((DPAD_ANY & p->keyInput) == 0x80) && (p->unkC & 0x20)) {
                sub_8015568__shared_inline(p);

                SetPlayerCallback(p, sub_801E888);
                return 1;
            } else {
                sub_8015568__shared_inline(p);

                switch (p->unkC & 0x18) {
                    case 0:
                        SetPlayerCallback(p, sub_801E69C);
                        return 1;
                    case 0x18:
                        SetPlayerCallback(p, Player_8009780);
                        return 1;
                }
            }
        } break;
    }

    return 0;
}

// (90.11%) https://decomp.me/scratch/TR6YA
NONMATCH("asm/non_matching/game/stage/player__sub_8015A44.inc", void sub_8015A44(Player *p))
{
    s16 dx;
    s16 dy;
    s16 i;
    s32 param2;

#ifndef NON_MATCHING
    register Player *partner asm("sl") = GET_SP_PLAYER_V1(PLAYER_2);
#else
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);
#endif
    if ((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5)) {
        return;
    }
    if (gStageData.unk4 != 3) {
        return;
    }
    if (p->framesInvulnerable != 0) {
        return;
    }
    if (p->moveState & 0x01000000) {
        return;
    }

    for (i = 0; i < 4; i++) {
        Player *playerLoop = &gPlayers[i];
        if (playerLoop == p) {
            continue;
        }

        if (playerLoop->charFlags.someIndex == 5) {
            continue;
        }
        if (playerLoop->charFlags.someIndex == 2) {
            continue;
        }

        if (0x01000000 & playerLoop->moveState) {
            continue;
        }
        if (p->moveState & 0x20000000) {
            continue;
        }
        if (playerLoop->moveState & 0x20000000) {
            continue;
        }
        dx = I(p->qWorldX - playerLoop->qWorldX);
        dy = I(p->qWorldY - playerLoop->qWorldY);
        if (ABS(dx) > 0x40) {
            continue;
        }
        if (ABS(dy) > 0x40) {
            continue;
        }
        if ((param2 = sub_80210BC(playerLoop, 1, p, 1))) {
            if (gStageData.gameMode != 7) {
                sub_8015C90(p, param2);
                break;
            } else if (p->charFlags.anim0 != 0xA) {
                if (playerLoop->charFlags.anim0 == 0xA) {
                    sub_8015C90(p, param2);
                    playerLoop->framesInvulnerable = 120;

                    if (gStageData.gameMode == 7) {

#if 01
                        goto line158;
#else
                        sub_80276A8(gStageData.playerIndex);
                        sub_80293E8(p);
#endif
                    } else {
                        break;
                    }
                } else {
                    sub_8015C90(p, param2);
                    break;
                }
            } else if (playerLoop->charFlags.anim0 != 0xA) {
                Player_8014550(p);
                if ((gStageData.unk8E == i) || (gStageData.unk8E == gStageData.playerIndex)) {
                    sub_80276A8(i);
                    sub_80293E8(playerLoop);
                }
                break;
            line158:
                if ((gStageData.unk8E == i) || (gStageData.unk8E == gStageData.playerIndex)) {
                    sub_80276A8(gStageData.playerIndex);
                    sub_80293E8(p);
                }
                break;
            } else {
                sub_8015C90(p, param2);
                break;
            }
        } else if ((param2 = sub_80210BC(playerLoop, 1, p, 0))) {
            if (gStageData.gameMode != 7) {
                if (playerLoop != partner) {
                    Player_8014550(p);
                } else {
                    sub_8015C90(p, param2);
                }
            } else {
                Player_8014550(p);
                if ((gStageData.unk8E == i) || (gStageData.unk8E == gStageData.playerIndex)) {
                    sub_80276A8(i);
                    sub_80293E8(playerLoop);
                }
            }

            break;
        } else if ((param2 = sub_80210BC(playerLoop, 0, p, 1))) {
            sub_8015C90(p, param2);
            playerLoop->framesInvulnerable = 120;
            if (gStageData.gameMode == 7) {
                if ((gStageData.unk8E == i) || (gStageData.unk8E == gStageData.playerIndex)) {
                blk:
                    sub_80276A8(gStageData.playerIndex);
                    sub_80293E8(p);
                }
            }

            break;
        } else if ((param2 = sub_80210BC(playerLoop, 0, p, 0))) {
            sub_8015C90(p, param2);
            break;
        }
    }
}
END_NONMATCH

// (96.29%) https://decomp.me/scratch/Hbq4u
NONMATCH("asm/non_matching/game/stage/player__sub_8015C90.inc", void sub_8015C90(Player *p, u32 param2))
{
    s16 temp_r0;
    s16 temp_r0_2;
    s16 *temp_r1;
    s32 temp_r1_2;
    u16 var_r0;
    u8 *var_r5;

    temp_r1 = &p->framesInvulnerable;
    p->framesInvulnerable = 4;
    if (0xC0000 & param2) {
        if (0x40000 & param2) {
            p->qSpeedAirX = +gUnknown_080CE6B8[p->charFlags.character][0];
        } else {
            p->qSpeedAirX = -gUnknown_080CE6B8[p->charFlags.character][0];
        }
    }
    if (!(0x20000 & param2)) {
        p->qSpeedAirY = -gUnknown_080CE6B8[p->charFlags.character][1];
    } else {
        p->qSpeedAirY = 0;
    }
    if (p->moveState & 0x20000) {
        p->layer = 1;
        Player_StopSong(p, 0x72U);
        p->moveState &= 0xFFFDFFFF;
    }

    if (p->charFlags.character == KNUCKLES) {
        temp_r0 = p->charFlags.anim0;
        if ((temp_r0 < 0xF3)) {
            if (temp_r0 >= 0xF0) {
                p->charFlags.anim0 = 0x18;
            } else {
                if (p->charFlags.anim0 == 0x85) {
                    p->charFlags.anim0 = 0x18;
                }
            }
        } else {
            goto block_17;
        }
    } else if ((p->charFlags.character != CREAM) || ((p->charFlags.anim0 > 0xC4)) || (p->charFlags.anim0 < 0xC1)) {
    block_17:
        if (p->charFlags.anim0 == 0x85) {
            p->charFlags.anim0 = 0x18;
        }
    } else {
        p->charFlags.anim0 = 0x18;
    }
    SetPlayerCallback(p, Player_800DAF4);
}
END_NONMATCH

s32 Player_8015D7C(Player *p)
{
    PlayerCallback callbacks[ARRAY_COUNT(gUnknown_080CE6CC)];
    s16 i;

    if ((gStageData.gameMode != GAME_MODE_MP_MULTI_PACK) || (gStageData.unk4 != 3) || (p->moveState & 0x59000200)
        || (gCamera.unk1C != gUnknown_080D05A8[gStageData.currMapIndex][0])
        || (gCamera.unk14 != gUnknown_080D05A8[gStageData.currMapIndex][1])) {
        return FALSE;
    }
    memcpy(&callbacks, &gUnknown_080CE6CC, sizeof(callbacks));

    for (i = 0; callbacks[i] != NULL; i++) {
        if (p->callback == callbacks[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

bool32 sub_8015E0C(Player *p)
{
    Player *partner;

    if (p->keyInput2 & gStageData.buttonConfig.attack) {
        switch (p->charFlags.character) {
            case SONIC: {
                if (p->unk54 != 0) {
                    sub_8015568__shared_inline(p);
                    SetPlayerCallback(p, sub_800C910);
                    sub_801EBC0(0xD, p);
                    return 1;
                }

                switch (DPAD_ANY & p->keyInput) {
                    case DPAD_UP:
                        if (0x10000 & p->unkC) {
                            sub_8015568__shared_inline(p);
                            SetPlayerCallback(p, Player_Sonic_TrickUp);
                            return 1;
                        }
                        break;
                    case DPAD_DOWN:
                        if (0x20000 & p->unkC) {
                            sub_8015568__shared_inline(p);
                            SetPlayerCallback(p, Player_Sonic_BoundAttack);
                            return 1;
                        }
                        break;
                }

                switch (0xC000 & p->unkC) {
                    case 0x4000:
                        if (!(p->moveState & 2)) {
                            sub_8015568__shared_inline(p);
                            SetPlayerCallback(p, Player_8006424);
                            return 1;
                        } else {
                            return 0;
                        }
                    case 0x8000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801A0C0);
                        return 1;
                }

            } break;

            case CREAM: {
                if (((DPAD_ANY & p->keyInput) == DPAD_DOWN) && (0x20000 & p->unkC)) {
                    sub_8015568__shared_inline(p);
                    SetPlayerCallback(p, sub_801A46C);
                    return 1;
                }

                switch (p->unkC & 0xC000) {
                    case 0x4000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801AB34);
                        return 1;
                    case 0x8000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801AB58);
                        return 1;
                    case 0xC000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801AB7C);
                        return 1;
                }
            } break;

            case TAILS: {
                if (p->unk54 != 0) {
                    sub_8015568__shared_inline(p);
                    SetPlayerCallback(p, sub_800C910);
                    sub_801EBC0(0xD, p);
                    return 1;
                }

                switch (p->unkC & 0xC000) {
                    case 0x4000:
                        if (p->moveState & 2) {
                            return 0;
                        }
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, Player_8006424);
                        return 1;
                    case 0x8000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801BD84);
                        return 1;
                }
            } break;

            case KNUCKLES: {
                if (p->unk54 != 0) {
                    sub_8015568__shared_inline(p);

                    SetPlayerCallback(p, sub_800C910);
                    sub_801EBC0(0xD, p);
                    return 1;
                }
                if (((DPAD_ANY & p->keyInput) == DPAD_DOWN) && (0x20000 & p->unkC)) {
                    sub_8015568__shared_inline(p);
                    SetPlayerCallback(p, sub_801D84C);
                    return 1;
                }
                if ((0xC000 & p->unkC) != 0x4000) {
                    return 0;
                }

                if (!(p->moveState & MOVESTATE_2)) {
                    sub_8015568__shared_inline(p);
                    SetPlayerCallback(p, Player_8006424);
                    return 1;
                } else {
                    return 0;
                }
            } break;

            case AMY: {
                if (p->unk54 != 0) {
                    sub_8015568__shared_inline(p);

                    SetPlayerCallback(p, sub_800C910);
                    sub_801EBC0(0xD, p);
                    return 1;
                }

                if (((DPAD_ANY & p->keyInput) == DPAD_DOWN) && (0x20000 & p->unkC)) {
                    sub_8015568__shared_inline(p);
                    SetPlayerCallback(p, sub_801E7BC);
                    return 1;
                }

                switch (0xC000 & p->unkC) {
                    case 0x4000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801E6F4);
                        return 1;
                    case 0x8000:
                        sub_8015568__shared_inline(p);
                        SetPlayerCallback(p, sub_801E758);
                        return 1;
                }
            } break;
        }
    }

    return 0;
}

bool32 sub_80167A4(Player *p)
{
    Player *partner;

    if (!(p->keyInput2 & gStageData.buttonConfig.jump)) {
        return 0;
    }
    switch (p->charFlags.character) {
        case SONIC: {
            if ((p->unkC & 0x180) != 0x100) {
                return 0;
            }
            sub_8015568__shared_inline(p);

            if (p->unkB8 != -1U) {
                SetPlayerCallback(p, Player_8007620);
                Player_8007620(p);
            } else {
                SetPlayerCallback(p, sub_8019B4C);
                sub_8019B4C(p);
            }

            return 1;
        } break;

        case CREAM: {
            sub_8015568__shared_inline(p);

            switch (p->unkC & 0x180) { /* switch 1; irregular */
                case 0x80:
                    SetPlayerCallback(p, sub_801A9EC);
                    return 1;
                case 0x100:
                    if (p->moveState & 0x80) {
                        return 0;
                    }
                    SetPlayerCallback(p, sub_801ABA0);
                    return 1;
                case 0x180:
                    if (p->moveState & 0x80) {
                        return 0;
                    }
                    SetPlayerCallback(p, sub_801ABA0);
                    return 1;
            }
        } break;

        case TAILS: {
            if (p->moveState & 0x80) {
                if (0x200000 & p->unkC) {
                    sub_8015568__shared_inline(p);

                    SetPlayerCallback(p, sub_801BF6C);
                    return 1;
                } else if (!(p->unkC & 0x400000)) {
                    return 0;
                }
                sub_8015568__shared_inline(p);
                SetPlayerCallback(p, sub_801AE70);
                return 1;
            } else {
                sub_8015568__shared_inline(p);

                switch (p->unkC & 0x180) {
                    case 0x0:
                        SetPlayerCallback(p, sub_801BDD8);
                        return 1;
                    case 0x80:
                        SetPlayerCallback(p, sub_801ADF4);
                        return 1;
                    case 0x100:
                        if (p->unkB8 != -1U) {
                            SetPlayerCallback(p, Player_8007620);
                            Player_8007620(p);
                        } else {
                            SetPlayerCallback(p, sub_801BEA0);
                            sub_801BEA0(p);
                        }
                        return 1;
                    case 0x180:
                        SetPlayerCallback(p, sub_801BF08);
                        return 1;
                }
            }
        } break;

        case KNUCKLES: {
            sub_8015568__shared_inline(p);
            if (p->moveState & 0x80) {
                SetPlayerCallback(p, sub_801D950);
                return 1;
            }

            switch (p->unkC & 0x180) { /* switch 3; irregular */
                case 0x80:
                    SetPlayerCallback(p, sub_801D8A8);
                    return 1;
                case 0x100:
                    SetPlayerCallback(p, sub_801C348);
                    return 1;
                case 0x180:
                    SetPlayerCallback(p, sub_801C2D8);
                    return 1;
            }
        } break;

        case AMY: {
            sub_8015568__shared_inline(p);

            switch (p->unkC & 0x180) { /* switch 4; irregular */
                case 0x80:
                    SetPlayerCallback(p, sub_801E828);
                    return 1;
                case 0x100:
                    SetPlayerCallback(p, sub_801E038);
                    return 1;
                case 0x180:
                    SetPlayerCallback(p, sub_801E8E0);
                    return 1;
            }
        } break;
    }

    return 0;
}

void sub_8016D04(Player *p)
{
    SetPlayerCallback(p, sub_800BBA0);
    Player_PlaySong(p, SE_158);
    p->unk56 = 14;
    p->unk57 = 120;
}

void sub_8016D30(Player *p)
{
    s16 qSpeedAirY;

    p->qWorldX += p->qSpeedAirX;

    if ((p->moveState ^ p->moveState2) & 0x10000) {
        p->qSpeedAirY = -p->qSpeedAirY;
    }

    qSpeedAirY = p->qSpeedAirY;
    if (p->qSpeedAirY > Q(15)) {
        qSpeedAirY = Q(15);
    }
    p->qSpeedAirY = qSpeedAirY;

    if (p->moveState & 0x10000) {
        p->qWorldY = p->qWorldY - p->qSpeedAirY;
    } else {
        p->qWorldY = p->qWorldY + p->qSpeedAirY;
    }
}

// (85.85%) https://decomp.me/scratch/OJETZ
NONMATCH("asm/non_matching/game/stage/player__sub_8016D88.inc", bool16 sub_8016D88(Player *p))
{
    if ((p->charFlags.anim0 == 2) && (p->keyInput2 & gStageData.buttonConfig.jump)) {
        if (gStageData.gameMode != 7) {
            switch (p->unkC & 6) {
                case 2:
                    SetPlayerCallback(p, Player_800872C);
                    break;
                case 4:
                    SetPlayerCallback(p, sub_801DFC4);
                    break;
                case 6:
                    SetPlayerCallback(p, sub_801E65C);
                    break;
                default:
                    return 0;
            }
        } else {
            SetPlayerCallback(p, Player_800872C);
            return 1;
        }
    } else {
        return 0;
    }

    return 1;
}
END_NONMATCH

void sub_8016E00(Player *p)
{
    if (p->unk4E != 0) {
        p->unk4E--;
    } else if ((p->unk26 + 0x20) & 0xC0) {
        if (ABS(p->qSpeedGround) < 0x1E0) {
            SetPlayerCallback(p, Player_800DAF4);
            p->unk4E = 30;
        }
    }
}

void sub_8016E50(Player *p)
{
    if (p->moveState & 0x80) {
        p->qSpeedAirY += 0xC;
    } else {
        p->qSpeedAirY += 0x2A;
    }
}

void sub_8016E70(Player *arg0)
{
    if (arg0->qSpeedAirY >= 0) {
        sub_8012C34(arg0);
        sub_8012CF8(arg0);
    } else {
        sub_8012CF8(arg0);
        sub_8012C34(arg0);
    }

    if (!(4 & arg0->moveState)) {
        arg0->moveState = arg0->moveState & 0xFFF7FFFF;
    }
}

void sub_8016EB0(Player *p)
{
    s32 unk26;

    unk26 = (s8)p->unk26;
    if (unk26 < 0) {
        unk26 += 2;
        if (unk26 > 0) {
            unk26 = 0;
        }
    } else if (unk26 > 0) {
        unk26 -= 2;
        if (unk26 < 0) {
            unk26 = 0;
        }
    }
    p->unk26 = unk26;
}

bool16 sub_8016EDC(Player *arg0)
{
    if ((DPAD_ANY & arg0->keyInput) == DPAD_UP) {
        if ((arg0->qSpeedGround == 0) && !((arg0->unk26 + 0x20) & 0xC0) && !(arg0->moveState & 0x20006)) {
            SetPlayerCallback(arg0, Player_80082BC);
            return 1;
        }
    }
    return 0;
}

// TODO: Implementation of sub_8015568__shared_inline() ?
//       Unlikely, because it's called a lot, instead of not getting called ever.
void sub_8016F28(Player *p)
{
    Player *partner;
    u32 temp_r1;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    sub_80193A4(p);
    Player_StopSong(p, SE_TAGACTION_BUILDUP);
    if (p->moveState & 0x400000) {
        p->unk42 = 0;
        p->moveState &= 0xFFBFFFFF;
    }
    temp_r1 = p->moveState;
    if (0x800000 & temp_r1) {
        p->moveState = temp_r1 & 0xFF7FFFFF;
        partner->qWorldX = p->qWorldX;
        partner->qWorldY = p->qWorldY;
        partner->moveState &= 0xFEFFFFFF;
    }
}

u32 sub_8016FA8(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 qWorldY = p->qWorldY;

    if ((p == &gPlayers[gStageData.playerIndex]) || (gStageData.unk4 != 1)) {
        if (p->moveState & 0x10000) {
            if (qWorldY <= Q(cam->unk10)) {
                return 1U;
            }
            return 0U;
        }
        if (qWorldY < (Q(cam->unk14) - 1)) {
            return 0U;
        }
        return 1U;
    }
    return 0U;
}

void sub_8017004(Player *p)
{
    if ((0x24 & p->moveState) == 0x20) {
        if ((gStageData.gameMode != 7) && (p->moveState & 0x800000)) {
            SetPlayerCallback(p, Player_80077CC);
        } else {
            SetPlayerCallback(p, Player_8005380);
        }
        p->qSpeedGround = p->qSpeedAirX;
        p->unk26 = 0;
    }
}

bool32 sub_8017058(Player *p)
{
    s32 moveState;

    if ((gStageData.gameMode == 7) || (moveState = p->moveState, (p->moveState & 0x8000)) || (p->moveState & 0x800000)
        || (!sub_8015E0C(p) && !sub_80167A4(p))) {
        return 0;
    }
    return 1;
}

void sub_80170A0(Player *p)
{
    Strc_PlayerStrc30 *strc;
    Sprite *s;

    strc = TASK_DATA(TaskCreate(Task_8018238_30, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, TaskDestructor_8019318));
    strc->p = p;
    s = &strc->s;
    s->tiles = VramMalloc(0x14U);
    s->frameFlags = 0x1000;
    if (!(p->moveState & 1)) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }
    if (p->moveState & 0x10000) {
        s->frameFlags |= 0x800;
    }
    s->anim = 0x533;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
}

void sub_8017134(Player *p)
{
    s16 var_r0;
    Strc_PlayerStrc2C *strc;
    Sprite *s;

    strc = TASK_DATA(TaskCreate(Task_801952C_2C, sizeof(Strc_PlayerStrc2C), 0x3100U, 0U, TaskDestructor_801932C));
    s = &strc->s;
    s->tiles = VramMalloc(4U);
    s->frameFlags = 0x1000;
    s->anim = 0x534;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;

    strc->unk28 = I(p->qWorldX);
    if (p->moveState & 0x10000) {
        strc->unk2A = I(p->qWorldY) - 14;
    } else {
        strc->unk2A = I(p->qWorldY) + 14;
    }
}

void sub_80171C0(Player *p)
{
    Strc_PlayerStrc2C *strc;
    Sprite *s;
    Sprite2 *s2;

    strc = TASK_DATA(TaskCreate(Task_801952C_2C, sizeof(Strc_PlayerStrc2C), 0x3100U, 0U, TaskDestructor_8019340));
    s = &strc->s;
    s->tiles = VramMalloc(20);
    s->frameFlags = p->spriteInfoBody->s.frameFlags & 0x3000;
    if (p->qSpeedGround > 0) {
        s->frameFlags |= 0x400;
    }
    s->anim = 0x531;
    s->x = 0;
    s->y = 0;
    s->oamFlags = p->spriteInfoBody->s.oamFlags + 0x40;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;

    strc->unk28 = I(p->qWorldX);
    strc->unk2A = I(p->qWorldY) + 14;
}

void sub_8017258(Player *p)
{
    Strc_PlayerStrc2C *strc;
    Sprite *s;
    Sprite2 *s2;

    strc = TASK_DATA(TaskCreate(Task_801952C_2C, sizeof(Strc_PlayerStrc2C), 0x3100U, 0U, TaskDestructor_8019340));
    s = &strc->s;
    s->tiles = VramMalloc(25);
    s->frameFlags = p->spriteInfoBody->s.frameFlags & 0x3000;
    if (p->qSpeedGround > 0) {
        s->frameFlags |= 0x400;
    }
    s->anim = 0x543;
    s->x = 0;
    s->y = 0;
    s->oamFlags = p->spriteInfoBody->s.oamFlags + 0x40;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;

    strc->unk28 = I(p->qWorldX);
    strc->unk2A = I(p->qWorldY) + 14;
}

void sub_80172F0(Player *p, s16 newY)
{
    s16 var_r0;
    Strc_PlayerStrc2C *strc;
    Sprite *s;

    strc = TASK_DATA(TaskCreate(sub_801957C, sizeof(Strc_PlayerStrc2C), 0x3100U, 0U, TaskDestructor_8019354));
    s = &strc->s;
    s->tiles = VramMalloc(12);
    s->frameFlags = 0x0000;
    s->anim = 0x3CB;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;

    strc->unk28 = I(p->qWorldX);
    strc->unk2A = newY;
}

void Player_8017364(Player *p)
{
    Strc_PlayerStrc30 *strc;
    Sprite *s;

    if (p->unkD8 == 0) {
        p->unkD8 = TaskCreate(Task_80182D4, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, TaskDestructor_8019368);
        strc = TASK_DATA(p->unkD8);
        strc->p = p;
        strc->someY = I(p->qWorldY);
        s = &strc->s;
        s->tiles = VramMalloc(12);
        s->frameFlags = 0x1000;
        if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
            s->frameFlags |= 0x400;
            s->frameFlags |= 0x1000;
        }
        s->anim = ANIM_WATER_RUNNING_PARTICLES;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
    }
}

void sub_80173F0(Player *p)
{
    Sprite *s;
    s16 temp_r3_2;
    s16 var_r2;
    s32 temp_r2;
    s32 temp_r4;
    u16 temp_r3;
    Strc_PlayerUnkE0 *strc;
    u16 theta;
    void *vram;
    void **temp_r7;

    strc = TASK_DATA(TaskCreate(Task_801839C_E0, sizeof(Strc_PlayerUnkE0), 0x3100U, 0U, TaskDestructor_8019318));
    vram = VramMalloc(0xDU);
    strc->vram = vram;
    strc->unk7C = I(p->qWorldX);
    strc->unk7E = I(p->qWorldY);
    s = &strc->s;
    s->tiles = vram;
    s->frameFlags = 0x1000;
    s->anim = ANIM_FACTORY_RING;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = 0xFFFF;
    s->variant = 1;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
    strc->unk80[0][0] = 0;
    strc->unk80[0][1] = 0;
    strc->unkB0[0][0] = 0;
    strc->unkB0[0][1] = 0;
    s = &strc->s2;
    s->tiles = (vram + 0x120);
    s->frameFlags = 0x1000;
    s->anim = ANIM_FACTORY_RING;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 2;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
    theta = sa2__sub_8004418(p->qSpeedAirY >> 6, p->qSpeedAirX >> 6);

    for (var_r2 = 1; var_r2 < (s32)ARRAY_COUNT(strc->unk80); var_r2++) {
        var_r2 = var_r2;
        strc->unk80[var_r2][0] = 0;
        strc->unk80[var_r2][1] = 0;
        strc->unkB0[var_r2][0] = COS(theta) >> ((var_r2 >> 2) + 8);
        strc->unkB0[var_r2][1] = SIN(theta) >> ((var_r2 >> 2) + 8);
        theta = (theta + 0xE0) % 1024u & 0x3FF; // NOTE/TODO: Match without double "% 1024u & 0x3FF" expr.
    }
}

void Player_InitializeShieldSprite(Player *p)
{
    Sprite *s;

    if ((gStageData.act != 7) && ((u32)gStageData.gameMode <= 5U)) {
        if (p == gPlayers) {
            p->sprShield.tiles = OBJ_VRAM0 + 0x2800;
        } else {
            p->sprShield.tiles = OBJ_VRAM0 + 0x3000;
        }

        s = &p->sprShield;
        s->frameFlags = 0x1000;
        s->anim = sTileInfoShields[0].anim;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = sTileInfoShields[0].variant;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = -1;

        p->unk13C = 0;
        p->unk13D = 0;
    }
}

// (92.20%) https://decomp.me/scratch/3gRhu
NONMATCH("asm/non_matching/game/stage/player__sub_8017618.inc", void sub_8017618(Player *p))
{
    PlayerSpriteInfo **temp_r2;
    u8 temp_r7;
    bool32 shouldRender;
    u8 var_r5;
    Sprite *s;

    shouldRender = FALSE;
    if (gStageData.gameMode > 5U) {
        return;
    }
    if (gStageData.unk4 == 5 || gStageData.unk4 == 6) {
        return;
    }
    if (gStageData.unk85 != 0) {
        p->unk13D = 0;
        return;
    }
    if (gStageData.act == 7) {
        return;
    }

    var_r5 = 0x40 & p->unk13C;
    if (var_r5 == 0) {
        var_r5 = 0x20 & p->unk13C;
        if (var_r5 == 0) {
            var_r5 = 0x10 & p->unk13C;
            if ((var_r5 == 0) && (p->unkC & 0x40000) && ((p->moveState & 0x180) == 0x80)) {
                var_r5 = 0x80;
            }
        }
    }

    temp_r7 = (0xF & p->unk13C);
    temp_r7++;
    p->unk13C = (0xF0 & p->unk13C) | (temp_r7 & 0xF);

    if (var_r5 == 0) {
        p->unk13C = 0;
        p->unk13D = 0;
        return;
    }

    s = &p->sprShield;
    if (p->unk13D != var_r5) {
        switch (var_r5) {
            case 0x40:
                s->anim = sTileInfoShields[2].anim;
                s->variant = sTileInfoShields[2].variant;
                s->prevAnim = -1;
                s->prevVariant = -1;
                p->unk13D = var_r5;
                break;
            case 0x20:
                s->anim = sTileInfoShields[1].anim;
                s->variant = sTileInfoShields[1].variant;
                Player_PlaySong(p, SE_SHIELD_ACTIVATE);
                s->prevAnim = -1;
                s->prevVariant = -1;
                p->unk13D = var_r5;
                break;
            case 0x10:
                s->anim = sTileInfoShields[0].anim;
                s->variant = sTileInfoShields[0].variant;
                Player_PlaySong(p, SE_SHIELD_ACTIVATE);
                s->prevAnim = -1;
                s->prevVariant = -1;
                p->unk13D = var_r5;
                break;
            case 0x80:
                s->anim = sTileInfoShields[3].anim;
                s->variant = sTileInfoShields[3].variant;
                Player_PlaySong(p, SE_SHIELD_ACTIVATE);
                s->prevAnim = -1;
                s->prevVariant = -1;
                p->unk13D = var_r5;
                break;
            default:
                return;
        }
    }
    {
        s->x = I(p->qWorldX) - gCamera.x;
        s->y = I(p->qWorldY) - gCamera.y;
        s->oamFlags = ((u16)p->spriteInfoBody->s.oamFlags - 0x40);
        s->frameFlags = (s->frameFlags & 0xFFFFCFFF);
        s->frameFlags = (p->spriteInfoBody->s.frameFlags & 0x3000);
        UpdateSpriteAnimation((Sprite *)s);
        if (p == gPlayers) {
            if (temp_r7 & 2) {
                shouldRender = TRUE;
            }
        } else if (!(temp_r7 & 2)) {
            shouldRender = TRUE;
        }
        if (gStageData.unk4 == 1) {
            if (gStageData.unkBC & 1) {
                s->frameFlags |= 0x80;
            } else {
                s->frameFlags &= ~0x80;
            }
            if (MOVESTATE_2 & gStageData.unkBC) {
                return;
            }
        } else {
            s->frameFlags &= ~0x80;
        }

        if (shouldRender != 0) {
            DisplaySprite(s);
        }
    }
}
END_NONMATCH

void sub_801782C(Player *p, s16 arg1)
{
    Sprite *s;
    Strc_PlayerStrc30_2 *strc;

    if (arg1 < 6) {
        if ((arg1 == 5) && (&gPlayers[gStageData.playerIndex] == p)) {
            gUnknown_03001CF0.unk4 = 0x10;
        }
        strc = TASK_DATA(TaskCreate(Task_80184F8, sizeof(Strc_PlayerStrc30_2), 0x3100U, 0U, TaskDestructor_80193EC));
        strc->p = p;
        strc->someY = 0;
        s = &strc->s;
        s->tiles = VramMalloc(gUnknown_08E2EAD0[arg1][2]);
        s->frameFlags = 0;
        s->anim = gUnknown_08E2EAD0[arg1][0];
        s->variant = gUnknown_08E2EAD0[arg1][1];
        s->x = I(p->qWorldX) - gCamera.x;
        s->y = I(p->qWorldY) - gCamera.y - 16;
        s->oamFlags = 0;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

void sub_8017914(Player *p)
{
    s16 var_r0;
    Strc_PlayerStrc30 *temp_r0;
    Sprite *s;

    temp_r0 = TASK_DATA(TaskCreate(Task_8019698, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, TaskDestructor_8019400));
    temp_r0->p = p;
    s = &temp_r0->s;
    if (gStageData.zone == 6) {
        s->tiles = VramMalloc(0xFU);
        s->anim = 0x3E8;
        s->variant = 0;
    } else {
        s->tiles = VramMalloc(0xFU);
        s->anim = 0x3CA;
        s->variant = 0;
    }
    s->frameFlags = 0x1000;
    if (p->moveState & 1) {
        s->frameFlags = 0x400;
        s->frameFlags |= 0x1000;
    }
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    Player_PlaySong(p, SE_282);
}

void sub_80179BC(Player *p)
{
    Task *temp_r0;
    s32 temp_r1;
    Strc_PlayerStrc30 *temp_r1_2;
    Sprite *s;

    if ((p->charFlags.someIndex != 0) && (p->charFlags.someIndex != 5)) {
        if (p->unkDC == NULL) {
            p->unkDC = TaskCreate(Task_80191C8, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, TaskDestructor_8019390);
            temp_r1_2 = TASK_DATA(p->unkDC);
            temp_r1_2->p = p;
            s = &temp_r1_2->s;
            s->tiles = VramMalloc(8U);
            s->frameFlags = 0x1000;
            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
                s->frameFlags |= 0x1000;
            }
            s->anim = 0x5E3;
            s->x = 0;
            s->y = 0;
            s->oamFlags = 0;
            s->qAnimDelay = 0;
            s->prevAnim = -1;
            s->variant = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
        }
    }
}

void sub_8017A58(Player *p)
{
    Strc_PlayerStrc30 *strc;
    Sprite *s;

    if ((p->charFlags.someIndex != 0) && (p->charFlags.someIndex != 5)) {
        strc = TASK_DATA(TaskCreate(Task_8019240, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, NULL));
        strc->p = p;
        strc->someY = 30;
        s = &strc->s;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4180;
        } else if (gStageData.gameMode == 6) {
            s->tiles = OBJ_VRAM0 + 0x41A0;
        }
        s->oamFlags = 0x280;
        s->anim = ANIM_RING;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0xC1200;
        s->hitboxes[0].index = -1;
    }
}

void sub_8017AF4(Player *p)
{
    s16 var_r0;
    Strc_PlayerStrc2C *strc;
    Sprite *s;

    strc = TASK_DATA(TaskCreate(Task_801952C_2C, sizeof(Strc_PlayerStrc2C), 0x3100U, 0U, TaskDestructor_8019428));
    s = &strc->s;
    s->tiles = VramMalloc(4U);
    s->frameFlags = 0x1000;
    s->anim = ANIM_SMALL_DUST_PARTICLE;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(0.5);
    s->palId = 0;
    s->hitboxes[0].index = -1;

    strc->unk28 = I(p->qWorldX);
    if (p->moveState & 0x10000) {
        strc->unk2A = I(p->qWorldY) - 14;
    } else {
        strc->unk2A = I(p->qWorldY) + 14;
    }
}

void Task_80195CC(void);
void TaskDestructor_8019464(struct Task *t);

void sub_8017B80(Player *p)
{
    s16 var_r0;
    Strc_PlayerStrc2C_2 *strc;
    Sprite *s;

    strc = TASK_DATA(TaskCreate(Task_80195CC, sizeof(Strc_PlayerStrc2C_2), 0x3100U, 0U, TaskDestructor_8019464));
    strc->p = p;
    s = &strc->s;
    s->tiles = VramMalloc(16);
    s->frameFlags = 0x1000;
    if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
        s->frameFlags |= 0x400;
    }
    s->anim = CHAR_ANIM_SPIN_ATTACK;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 1;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
}

void sub_8017BFC(Player *p)
{
    struct Task *t;
    Strc_PlayerStrc50 *strc;
    Sprite *s;
    s16 i;

    t = TaskCreate(Task_8018550, sizeof(Strc_PlayerStrc50), 0x3100U, 0U, TaskDestructor_801948C);
    strc = TASK_DATA(t);
    strc->p = p;
    strc->s.tiles = VramMalloc(16);
    strc->s.frameFlags = 0x1000;
    strc->s.anim = CHAR_ANIM_ATK_DOWN_B;
    strc->s.x = 0;
    strc->s.y = 0;
    strc->s.oamFlags = 0x600;
    strc->s.qAnimDelay = 0;
    strc->s.prevAnim = 0xFFFF;
    strc->s.variant = 3;
    strc->s.prevVariant = 0xFF;
    strc->s.animSpeed = 0x10;
    strc->s.palId = 0;
    strc->s.hitboxes[0].index = -1;
    strc->unk2C = 0;
    strc->unk2D = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(strc->unk2E); i++) {
        strc->unk2E[i][0] = I(p->qWorldX);
        strc->unk2E[i][1] = I(p->qWorldY);
    }
}

void sub_8017CA8(Player *p)
{
    s16 var_r0;
    Strc_PlayerStrc2C_2 *strc;
    Sprite *s;

    strc = TASK_DATA(TaskCreate(sub_801862C, sizeof(Strc_PlayerStrc2C_2), 0x3100U, 0U, TaskDestructor_80194A0));
    strc->p = p;
    s = &strc->s;
    s->tiles = VramMalloc(8);
    s->frameFlags = 0x1000;
    s->anim = ANIM_1343;
    s->x = 0;
    s->y = 0;
    s->oamFlags = 0x3C0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
}

void Player_8017D18(Player *p)
{
    Strc_PlayerStrcCC *strc;
    void *tiles;
    Sprite *s;
    s16 i;

    strc = TASK_DATA(TaskCreate(Task_80186A0_CC, sizeof(Strc_PlayerStrcCC), 0x3100U, 0U, TaskDestructor_80194B4));
    strc->p = p;
    strc->unk4 = 0;

    strc->vram = VramMalloc(0x10U);
    tiles = strc->vram;

    for (i = 0; i < 4; i++) {
        strc->sprites[i].unk28 = 0;

        s = &strc->sprites[i].s;
        s->tiles = tiles;
        s->frameFlags = 0x1000;
        s->anim = ANIM_HEART;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x500;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tiles += 0x80;
    }
}

void sub_8017DB4(Player *p)
{
    Strc_PlayerStrcCC *strc;
    void *tiles;
    Sprite *s;
    s16 i;

    strc = TASK_DATA(TaskCreate(sub_8018984, sizeof(Strc_PlayerStrcCC), 0x3100U, 0U, TaskDestructor_8019504));
    strc->p = p;
    strc->unk4 = 0;

    strc->vram = VramMalloc(0x10U);
    tiles = strc->vram;

    for (i = 0; i < 4; i++) {
        strc->sprites[i].unk28 = 0;

        s = &strc->sprites[i].s;
        s->tiles = tiles;
        s->frameFlags = 0x1000;
        s->anim = ANIM_HEART;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x500;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tiles += 0x80;
    }
}

void Player_8017E50(Player *p)
{
    Strc_PlayerStrcCC *strc;
    void *tiles;
    Sprite *s;
    s16 i;

    strc = TASK_DATA(TaskCreate(Task_8018AF8, sizeof(Strc_PlayerStrcCC), 0x3100U, 0U, TaskDestructor_80194C8));
    strc->p = p;
    strc->unk4 = 0;
    strc->unk6 = p->moveState & 1;

    strc->vram = VramMalloc(0x10U);
    tiles = strc->vram;

    for (i = 0; i < 4; i++) {
        strc->sprites[i].unk28 = 0;

        s = &strc->sprites[i].s;
        s->tiles = tiles;
        s->frameFlags = 0x1000;
        s->anim = ANIM_HEART;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x500;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tiles += 0x80;
    }
}

void sub_8017EF4(Player *p)
{
    Strc_PlayerStrcCC *strc;
    void *tiles;
    Sprite *s;
    s16 i;

    strc = TASK_DATA(TaskCreate(sub_8018C6C, sizeof(Strc_PlayerStrcCC), 0x3100U, 0U, sub_80194DC));
    strc->p = p;
    strc->unk4 = 0;
    strc->unk6 = p->moveState & 1;

    strc->vram = VramMalloc(0x10U);
    tiles = strc->vram;

    for (i = 0; i < 4; i++) {
        strc->sprites[i].unk28 = 0;

        s = &strc->sprites[i].s;
        s->tiles = tiles;
        s->frameFlags = 0x1000;
        s->anim = ANIM_HEART;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x500;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tiles += 0x80;
    }
}

void sub_8017F98(Player *p)
{
    Strc_PlayerStrcCC *strc;
    void *tiles;
    Sprite *s;
    s16 i;

    strc = TASK_DATA(TaskCreate(sub_8018814, sizeof(Strc_PlayerStrcCC), 0x3100U, 0U, TaskDestructor_80194B4));
    strc->p = p;
    strc->unk4 = 0;

    strc->vram = VramMalloc(0x10U);
    tiles = strc->vram;

    for (i = 0; i < 4; i++) {
        strc->sprites[i].unk28 = 0;

        s = &strc->sprites[i].s;
        s->tiles = tiles;
        s->frameFlags = 0x1000;
        s->anim = ANIM_HEART;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x500;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tiles += 0x80;
    }
}

void sub_8018034(Player *p)
{
    Strc_PlayerStrcCC *strc;
    void *tiles;
    Sprite *s;
    s16 i;

    strc = TASK_DATA(TaskCreate(sub_8018DDC, sizeof(Strc_PlayerStrcCC), 0x3100U, 0U, sub_80194DC));
    strc->p = p;
    strc->unk4 = 0;
    strc->unk6 = p->moveState & 1;

    strc->vram = VramMalloc(0x10U);
    tiles = strc->vram;

    for (i = 0; i < 4; i++) {
        strc->sprites[i].unk28 = 0;

        s = &strc->sprites[i].s;
        s->tiles = tiles;
        s->frameFlags = 0x1000;
        s->anim = ANIM_HEART;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x500;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        tiles += 0x80;
    }
}

void Player_InitializeTagAction(Player *p)
{
    Task *temp_r0;
    s32 var_r0;
    Strc_PlayerStrc30 *strc;
    Sprite *s;

    if (p->taskTagAction == NULL) {
        p->taskTagAction = TaskCreate(Task_TagActionInit, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, TaskDestructor_TagAction);
        strc = TASK_DATA(p->taskTagAction);
        strc->p = p;
        s = &strc->s;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4580;
        } else {
            s->tiles = OBJ_VRAM0 + 0x45A0;
        }

        s->frameFlags = 0x1000;
        s->anim = ANIM_TAG_ACTION_CHARGE;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x3C0;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
    }
}

void sub_801816C(Player *p)
{
    Strc_PlayerStrc30 *strc;
    Sprite *s;
    s16 i;

    if (p->unkD4 == NULL) {
        for (i = 0; i < 4; i++) {
            if (p == &gPlayers[i]) {
                break;
            }
        }

        p->unkD4 = TaskCreate(Task_TagActionInit, sizeof(Strc_PlayerStrc30), 0x3100U, 0U, NULL);
        strc = TASK_DATA(p->unkD4);
        s = &strc->s;
        strc->p = p;
        s->tiles = NULL;
        s->frameFlags = 0x80000;
        s->anim = gUnknown_08E2EB04[p->charFlags.character][0];
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = gUnknown_08E2EB04[p->charFlags.character][1];
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = i;
        s->hitboxes[0].index = -1;

        p->unkD4->main = Task_8019628;
    }
}

void Task_8018238_30(void)
{
    Player *p;
    s16 temp_r0;
    s16 temp_r2;
    s16 var_r0_2;
    u16 var_r0;
    s32 velocity;

    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);

    p = strc->p;
    if (((p->charFlags.anim0 != 0xA) && (p->charFlags.anim0 != 0xF7)) || (p->moveState & 0x200)) {
        TaskDestroy(gCurTask);
        return;
    }

    velocity = p->Spindash_Velocity;
    if (velocity < Q(1)) {
        strc->s.anim = 0x532;
        strc->s.variant = 0;
    } else {
        strc->s.anim = 0x533;
        strc->s.variant = 0;
    }

    strc->s.x = I(p->qWorldX) - gCamera.x;
    strc->s.y = I(p->qWorldY) - gCamera.y;

    if (p->moveState & 0x10000) {
        strc->s.y -= 9;
    } else {
        strc->s.y += 9;
    }

    UpdateSpriteAnimation(&strc->s);
    DisplaySprite(&strc->s);
}

void Task_80182D4(void)
{
    Player *p;
    Sprite *s;
    struct Task **t = &gCurTask;
    Strc_PlayerStrc30 *strc = TASK_DATA(*t);

    s = &strc->s;
    ;
    p = strc->p;
    if (((0x01041000 & p->moveState) != 0x1000) || ((s16)I(p->qWorldY) < (strc->someY - 8)) || ((s16)I(p->qWorldY) > (strc->someY + 8))) {
        Player_StopSong(p, 0x119U);
        p->unkD8 = NULL;
        TaskDestroy(*t);
        return;
    }

    if (p->moveState & 1) {
        s->x = I(p->qWorldX) - gCamera.x;
        s->frameFlags |= 0x400;
    } else {
        s->x = I(p->qWorldX) - gCamera.x;
        s->frameFlags &= ~0x400;
    }

    s->y = I(p->qWorldY) - gCamera.y + p->spriteOffsetY + 2;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// (96.91%) https://decomp.me/scratch/8K6dv
NONMATCH("asm/non_matching/game/stage/player__Task_801839C_E0.inc", void Task_801839C_E0(void))
{
    Sprite *s;
    s16 i;
    Strc_PlayerUnkE0 *strc = TASK_DATA(gCurTask);

    for (i = 0; i < 12; i++) {
        strc->unk80[i][0] += strc->unkB0[i][0];
        strc->unk80[i][1] += strc->unkB0[i][1];
    }

    s = &strc->s;
    s->x = (strc->unk7C - gCamera.x) + (strc->unk80[0][0] >> 4);
    s->y = (strc->unk7E - gCamera.y) + (strc->unk80[0][1] >> 4);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->s2;
    s->x = (strc->unk7C - gCamera.x) + (strc->unk80[1][0] >> 4);
    s->y = (strc->unk7E - gCamera.y) + (strc->unk80[1][1] >> 4);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    for (i = 0; i < 10; i++) {
        Vec2_16 *pos = &strc->unk54[i];
        pos->x = strc->unk7C - gCamera.x + (strc->unk80[i + 2][0] >> 4);
        pos->y = strc->unk7E - gCamera.y + (strc->unk80[i + 2][1] >> 4);
    }

    DisplaySprites(s, strc->unk54, ARRAY_COUNT(strc->unk54));
}
END_NONMATCH

void Task_80184F8(void)
{
    Strc_PlayerStrc30_2 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;

    if (++strc->someY > 0x27) {
        TaskDestroy(gCurTask);
        return;
    }

    s->x = I(p->qWorldX) - gCamera.x;
    s->y = I(p->qWorldY) - gCamera.y - 16 - (strc->someY >> 1);
    DisplaySprite(s);
}

void Task_8018550(void)
{
    u8 sp[ARRAY_COUNT(gUnknown_080CE7A4)];
    s32 index, index0;
    Strc_PlayerStrc50 *strc;
    Sprite *s;
    Player *p;

    memcpy(sp, gUnknown_080CE7A4, sizeof(sp));

    strc = TASK_DATA(gCurTask);
    s = &strc->s;
    p = strc->p;
    strc->unk2C = (u8)((strc->unk2C + 1) & 3);

    if ((p->charFlags.anim0 != 170) || ((u32)p->charFlags.state1 > 1U)) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk2D = (u8)((strc->unk2D + 1) & 7);
    strc->unk2E[strc->unk2D][0] = I(p->qWorldX);
    strc->unk2E[strc->unk2D][1] = I(p->qWorldY);

    if ((p->charFlags.state1 == 1) && (p->qSpeedAirY >= 0)) {
        index0 = sp[strc->unk2C] - 8;
        index = ((u8)strc->unk2D - index0) & 7;
        s->x = strc->unk2E[index][0] - gCamera.x;
        s->y = strc->unk2E[index][1] - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_801862C(void)
{
    Strc_PlayerStrc2C_2 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;

    if (p->charFlags.anim0 != (ANIM_CREAM_IDLE + 77) && p->charFlags.anim0 != (ANIM_CREAM_IDLE + 78)
        && p->charFlags.anim0 != (ANIM_CREAM_IDLE + 79) && p->charFlags.anim0 != (ANIM_CREAM_IDLE + 80)) {
        TaskDestroy(gCurTask);
        return;
    }

    s->x = I(p->qWorldX) - gCamera.x;
    s->y = I(p->qWorldY) - gCamera.y;

    if (p->moveState & MOVESTATE_FACING_LEFT) {
        s->frameFlags &= ~0x400;
    } else {
        s->frameFlags |= 0x400;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_80186A0_CC()
{
    Player *p;
    PlayerStrcCC_Sprite *temp_r2;
    PlayerStrcCC_Sprite *temp_r4_2;
    s16 spriteIndex;
    s16 temp_r1;
    s16 i;
    u32 oldUnk4;
    Strc_PlayerStrcCC *strc = TASK_DATA(gCurTask);

    p = strc->p;
    temp_r1 = p->charFlags.anim0;
    if ((temp_r1 != 0xFE) && (temp_r1 != 0x10C)) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk4++;
    if ((strc->unk4 >= 9 && strc->unk4 < 16) && (strc->unk4 & 1)) {
        spriteIndex = (strc->unk4 - 9) >> 1;
        temp_r2 = &strc->sprites[spriteIndex];
        temp_r2->unk28 = 1;
        temp_r2->worldX = I(p->qWorldX);
        temp_r2->worldY = I(p->qWorldY);

        if (p->moveState & 1) {
            temp_r2->worldX += gUnknown_080CE7A8[spriteIndex][0];
        } else {
            temp_r2->worldX -= gUnknown_080CE7A8[spriteIndex][0];
        }

        if (p->moveState & 0x10000) {
            temp_r2->worldY -= gUnknown_080CE7A8[spriteIndex][1];
        } else {
            temp_r2->worldY += gUnknown_080CE7A8[spriteIndex][1];
        }
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites); i++) {
        temp_r4_2 = &strc->sprites[i];
        if (temp_r4_2->unk28 != 0) {
            Sprite *s = &temp_r4_2->s;

            s->x = temp_r4_2->worldX - gCamera.x;
            s->y = temp_r4_2->worldY - gCamera.y;

            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
            } else {
                s->frameFlags &= ~0x800;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            if (s->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0;
            }
        }
    }
}

void sub_8018814()
{
    Player *p;
    PlayerStrcCC_Sprite *temp_r2;
    PlayerStrcCC_Sprite *temp_r4_2;
    s16 spriteIndex;
    s16 temp_r1;
    s16 i;
    u32 oldUnk4;
    Strc_PlayerStrcCC *strc = TASK_DATA(gCurTask);

    p = strc->p;
    temp_r1 = p->charFlags.anim0;
    if ((temp_r1 != 0x102)) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk4++;
    if ((strc->unk4 >= 3 && strc->unk4 < 10) && (strc->unk4 & 1)) {
        spriteIndex = (strc->unk4 - 3) >> 1;
        temp_r2 = &strc->sprites[spriteIndex];
        temp_r2->unk28 = 1;
        temp_r2->worldX = I(p->qWorldX);
        temp_r2->worldY = I(p->qWorldY);

        if (p->moveState & 1) {
            temp_r2->worldX += gUnknown_080CE7A8[spriteIndex][0];
        } else {
            temp_r2->worldX -= gUnknown_080CE7A8[spriteIndex][0];
        }

        if (p->moveState & 0x10000) {
            temp_r2->worldY -= gUnknown_080CE7A8[spriteIndex][1];
        } else {
            temp_r2->worldY += gUnknown_080CE7A8[spriteIndex][1];
        }
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites); i++) {
        temp_r4_2 = &strc->sprites[i];
        if (temp_r4_2->unk28 != 0) {
            Sprite *s = &temp_r4_2->s;

            s->x = temp_r4_2->worldX - gCamera.x;
            s->y = temp_r4_2->worldY - gCamera.y;

            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
            } else {
                s->frameFlags &= ~0x800;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            if (s->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0;
            }
        }
    }
}

void sub_8018984()
{
    Player *p;
    PlayerStrcCC_Sprite *temp_r2;
    PlayerStrcCC_Sprite *temp_r4_2;
    s16 spriteIndex;
    s16 temp_r1;
    s16 i;
    u32 oldUnk4;
    Strc_PlayerStrcCC *strc = TASK_DATA(gCurTask);

    p = strc->p;
    if (p->charFlags.anim0 != 0x10D) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk4++;
    if ((strc->unk4 >= 17 && strc->unk4 < 24) && (strc->unk4 & 1)) {
        spriteIndex = (strc->unk4 - 17) >> 1;
        temp_r2 = &strc->sprites[spriteIndex];
        temp_r2->unk28 = 1;
        temp_r2->worldX = I(p->qWorldX);
        temp_r2->worldY = I(p->qWorldY);

        if (p->moveState & 1) {
            temp_r2->worldX += gUnknown_080CE7B0[spriteIndex][0];
        } else {
            temp_r2->worldX -= gUnknown_080CE7B0[spriteIndex][0];
        }

        if (p->moveState & 0x10000) {
            temp_r2->worldY -= gUnknown_080CE7B0[spriteIndex][1];
        } else {
            temp_r2->worldY += gUnknown_080CE7B0[spriteIndex][1];
        }
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites); i++) {
        temp_r4_2 = &strc->sprites[i];
        if (temp_r4_2->unk28 != 0) {
            Sprite *s = &temp_r4_2->s;

            s->x = temp_r4_2->worldX - gCamera.x;
            s->y = temp_r4_2->worldY - gCamera.y;

            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
            } else {
                s->frameFlags &= ~0x800;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            if (s->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0;
            }
        }
    }
}

void Task_8018AF8()
{
    PlayerStrcCC_Sprite *temp_r2;
    PlayerStrcCC_Sprite *temp_r4_2;
    s16 spriteIndex;
    s16 temp_r1;
    s16 i;
    u32 oldUnk4;
    Strc_PlayerStrcCC *strc = TASK_DATA(gCurTask);
    Player *p = strc->p;

    if ((p->charFlags.anim0 != 0x103)) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk4++;
    if ((strc->unk4 >= 9 && strc->unk4 < 16) && (strc->unk4 & 1)) {
        spriteIndex = (strc->unk4 - 9) >> 1;
        temp_r2 = &strc->sprites[spriteIndex];
        temp_r2->unk28 = 1;
        temp_r2->worldX = I(p->qWorldX);
        temp_r2->worldY = I(p->qWorldY);

        if (strc->unk6) {
            temp_r2->worldX += gUnknown_080CE7B8[spriteIndex][0];
        } else {
            temp_r2->worldX -= gUnknown_080CE7B8[spriteIndex][0];
        }

        if (p->moveState & 0x10000) {
            temp_r2->worldY -= gUnknown_080CE7B8[spriteIndex][1];
        } else {
            temp_r2->worldY += gUnknown_080CE7B8[spriteIndex][1];
        }
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites); i++) {
        temp_r4_2 = &strc->sprites[i];
        if (temp_r4_2->unk28 != 0) {
            Sprite *s = &temp_r4_2->s;

            s->x = temp_r4_2->worldX - gCamera.x;
            s->y = temp_r4_2->worldY - gCamera.y;

            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
            } else {
                s->frameFlags &= ~0x800;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            if (s->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0;
            }
        }
    }
}

void sub_8018C6C()
{
    PlayerStrcCC_Sprite *temp_r2;
    PlayerStrcCC_Sprite *temp_r4_2;
    s16 spriteIndex;
    s16 temp_r1;
    s16 i;
    u32 oldUnk4;
    Strc_PlayerStrcCC *strc = TASK_DATA(gCurTask);
    Player *p = strc->p;

    if ((p->charFlags.anim0 != 0x104)) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk4++;
    if ((strc->unk4 >= 13 && strc->unk4 < 20) && (strc->unk4 & 1)) {
        spriteIndex = (strc->unk4 - 13) >> 1;
        temp_r2 = &strc->sprites[spriteIndex];
        temp_r2->unk28 = 1;
        temp_r2->worldX = I(p->qWorldX);
        temp_r2->worldY = I(p->qWorldY);

        if (strc->unk6) {
            temp_r2->worldX += gUnknown_080CE7B8[spriteIndex][0];
        } else {
            temp_r2->worldX -= gUnknown_080CE7B8[spriteIndex][0];
        }

        if (p->moveState & 0x10000) {
            temp_r2->worldY -= gUnknown_080CE7B8[spriteIndex][1];
        } else {
            temp_r2->worldY += gUnknown_080CE7B8[spriteIndex][1];
        }
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites); i++) {
        temp_r4_2 = &strc->sprites[i];
        if (temp_r4_2->unk28 != 0) {
            Sprite *s = &temp_r4_2->s;

            s->x = temp_r4_2->worldX - gCamera.x;
            s->y = temp_r4_2->worldY - gCamera.y;

            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
            } else {
                s->frameFlags &= ~0x800;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            if (s->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0;
            }
        }
    }
}

void sub_8018DDC()
{
    PlayerStrcCC_Sprite *temp_r2;
    PlayerStrcCC_Sprite *temp_r4_2;
    s16 spriteIndex;
    s16 temp_r1;
    s16 i;
    u32 oldUnk4;
    Strc_PlayerStrcCC *strc = TASK_DATA(gCurTask);
    Player *p = strc->p;
    PlayerSpriteInfo *psiBody = p->spriteInfoBody;

    if ((psiBody->s.anim == 0x2F7 && psiBody->s.variant == 2)) {
        TaskDestroy(gCurTask);
        return;
    }

    if ((p->charFlags.anim0 != 0x100 && p->charFlags.anim0 != 0x108)) {
        TaskDestroy(gCurTask);
        return;
    }

    strc->unk4++;
    if (strc->unk4 > 9 && (strc->unk4 & 4)) {
        s16 spriteIndex = ((u32)(strc->unk4 - 10) & 0xF) >> 2;
        temp_r2 = &strc->sprites[spriteIndex];
        temp_r2->unk28 = 1;
        temp_r2->worldX = I(p->qWorldX);
        temp_r2->worldY = I(p->qWorldY);

        if (strc->unk6) {
            temp_r2->worldX += gUnknown_080CE7C0[spriteIndex][0];
        } else {
            temp_r2->worldX -= gUnknown_080CE7C0[spriteIndex][0];
        }

        if (p->moveState & 0x10000) {
            temp_r2->worldY -= gUnknown_080CE7C0[spriteIndex][1];
        } else {
            temp_r2->worldY += gUnknown_080CE7C0[spriteIndex][1];
        }

        temp_r2->s.prevAnim = -1;
        temp_r2->s.prevVariant = -1;
        temp_r2->s.frameFlags &= ~0x4000;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(strc->sprites); i++) {
        temp_r4_2 = &strc->sprites[i];
        if (temp_r4_2->unk28 != 0) {
            Sprite *s = &temp_r4_2->s;

            s->x = temp_r4_2->worldX - gCamera.x;
            s->y = temp_r4_2->worldY - gCamera.y;

            if (p->moveState & 0x10000) {
                s->frameFlags |= 0x800;
            } else {
                s->frameFlags &= ~0x800;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            if (s->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0;
            }
        }
    }
}

void Task_TagActionInit(void)
{
    s16 partnerChar;
    u32 moveState;
    u32 mask;
    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;

    moveState = p->moveState;
    mask = MOVESTATE_100;
    mask &= moveState;

    if (mask) {
        AdvanceVariant(p);
        return;
    }

    if (0x4000 & s->frameFlags) {
        Player *partner;
        gCurTask->main = sub_80190C8;
        partner = GET_SP_PLAYER_V1(PLAYER_2);
        partnerChar = partner->charFlags.character;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4580;
        } else {
            s->tiles = OBJ_VRAM0 + 0x45A0;
        }

        s->frameFlags = 0x1000;
        s->x = 0;
        s->y = 0;
        s->oamFlags = 0x600;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;

        if ((partnerChar == SONIC) || (partnerChar == KNUCKLES) || (partnerChar == AMY)) {
            s->anim = 0x53D;
            s->variant = 0;
        } else {
            s->anim = 0x53D;
            s->variant = 1;
        }
    } else {
        if (p->moveState & 1) {
            s->frameFlags &= ~0x400;
        } else {
            s->frameFlags |= 0x400;
        }

        s->x = I(p->qWorldX) - gCamera.x;
        s->y = I(p->qWorldY) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80190C8(void)
{
    void *temp_r0;
    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    if (p->moveState & 0x100) {
        AdvanceVariant(p);
    } else {
        s->x = I(partner->qWorldX) - gCamera.x;
        s->y = I(partner->qWorldY) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8019150(void)
{
    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;

    if (0x4000 & s->frameFlags) {
        TaskDestroy(p->taskTagAction);
        p->taskTagAction = NULL;
        return;
    }
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        SPRITE_FLAG_CLEAR(s, X_FLIP);
    } else {
        SPRITE_FLAG_SET(s, X_FLIP);
    }

    s->x = I(p->qWorldX) - gCamera.x;
    s->y = I(p->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_80191C8(void)
{
    Sprite *s;
    s32 temp_r1;
    u32 var_r0;
    Player *p;
    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);

    s = &strc->s;
    p = strc->p;

    if (p->unk60 == 0 && p->unk62 == 0) {
        p->unkDC = NULL;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = I(p->qWorldX) - gCamera.x;
    s->y = I(p->qWorldY) - gCamera.y;
    if (p->moveState & 0x10000) {
        s->frameFlags |= 0x800;
    } else {
        s->frameFlags &= ~0x800;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// (68.24%) https://decomp.me/scratch/ukmtA
NONMATCH("asm/non_matching/game/stage/player__Task_8019240.inc", void Task_8019240(void))
{
    s8 sp[2][4];
    Player *p;
    Sprite *s;
    s16 temp_r4_3;
    s16 temp_r6;
    s16 i;
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r4;
    u16 temp_r4_2;
    Strc_PlayerStrc30 *strc;

    memcpy(sp, gUnknown_080CE7C8, sizeof(sp));
    strc = TASK_DATA(gCurTask);
    s = &strc->s;
    p = strc->p;
    if (--strc->someY == 0) {
        sub_8003DF0(SE_RING_OLD_2);
        TaskDestroy(gCurTask);
        return;
    }
    temp_r4 = strc->someY;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 4; i++) {
        struct Camera *cam = &gCamera;
        s8 v = (temp_r4 * sp[1 & temp_r4][i]) >> 2;

        s->x = v + (I(p->qWorldX) - cam->x);
        s->y = v + (I(p->qWorldY) - cam->y) + 8;
        DisplaySprite(s);
    }
}
END_NONMATCH

void TaskDestructor_8019318(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_801932C(Task *t)
{
    Strc_PlayerStrc2C *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

void TaskDestructor_8019340(Task *t)
{
    Strc_PlayerStrc2C *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

void TaskDestructor_8019354(Task *t)
{
    Strc_PlayerStrc2C *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

void TaskDestructor_8019368(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_801937C(Task *t)
{
    Strc_PlayerStrc30 *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

void TaskDestructor_8019390(Task *t)
{
    Strc_PlayerStrc30 *strc = TASK_DATA(t);
    VramFree(strc->s.tiles);
}

void sub_80193A4(Player *p) { AdvanceVariant(p); }

void sub_80193CC(Player *p)
{
    if (p->taskTagAction != NULL) {
        TaskDestroy(p->taskTagAction);
        p->taskTagAction = NULL;
    }
}

void TaskDestructor_TagAction(Task *t) { }

void TaskDestructor_80193EC(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_8019400(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_8019414(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_8019428(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_801943C(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_8019450(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_8019464(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_8019478(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_801948C(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_80194A0(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_80194B4(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_80194C8(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_80194DC(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_80194F0(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void TaskDestructor_8019504(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void sub_8019518(Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void Task_801952C_2C(void)
{
    Strc_PlayerStrc2C *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;

    if (s->frameFlags & 0x4000) {
        TaskDestroy(gCurTask);
        return;
    }
    s->x = strc->unk28 - gCamera.x;
    s->y = strc->unk2A - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_801957C(void)
{
    Strc_PlayerStrc2C *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;

    if (s->frameFlags & 0x4000) {
        TaskDestroy(gCurTask);
        return;
    }
    s->x = strc->unk28 - gCamera.x;
    s->y = strc->unk2A - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_80195CC(void)
{
    Strc_PlayerStrc2C_2 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;

    if ((s->frameFlags & 0x4000) || (p->charFlags.anim0 != 167)) {
        TaskDestroy(gCurTask);
        return;
    }
    s->x = I(p->qWorldX) - gCamera.x;
    s->y = I(p->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8019628(void)
{
    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;
    Player *p = strc->p;

    if (0x100 & p->moveState) {
        AdvanceVariant(p);
    } else {
        if (!(MOVESTATE_1000000 & p->moveState)) {
            TaskDestroy(p->unkD4);
            p->unkD4 = NULL;
            return;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_8019698(void)
{
    Player *temp_r4;
    Strc_PlayerStrc30 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;

    temp_r4 = strc->p;
    if (temp_r4->callback != Player_800BD88) {
        Player_StopSong(temp_r4, 0x11AU);
        TaskDestroy(gCurTask);
        return;
    }
    Player_PlayOrContinueSong(temp_r4, 0x11A);
    s->x = ((s32)temp_r4->qWorldX >> 8) - gCamera.x;
    s->y = ((s32)temp_r4->qWorldY >> 8) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_8019704(struct Task *t)
{
    Strc_PlayerUnkE0 *strc = TASK_DATA(t);
    VramFree(strc->vram);
}

void Player_InitializeAfterImagesTask(Player *p)
{
    AfterImages *strc;
    u32 temp_r0;
    Sprite2 *s;
    SpriteTransform *tf;

    if (gStageData.gameMode == 6) {
        gStageData.task9C = NULL;
        return;
    }

    if (((gStageData.zone != 8) && (&gPlayers[gStageData.playerIndex] != p)))
        return;

    if ((gStageData.zone != 8) || (p == &gPlayers[PLAYER_1])) {
        if (gStageData.task9C == 0) {
            gStageData.task9C = TaskCreate(Task_AfterImages, sizeof(AfterImages), 0x4000U, 0U, TaskDestructor_AfterImages);
            strc = TASK_DATA(gStageData.task9C);
            s = &strc->s;
            if ((gStageData.gameMode <= 5U)) {
                s->tiles = OBJ_VRAM0 + 0x2000;
            } else if (gStageData.gameMode == 6) {
                s->tiles = OBJ_VRAM0 + 0x2000;
            }
            s->frameFlags = 0x2000;
            s->anim = 0;
            s->x = 0;
            s->y = 0;
            s->oamFlags = 0x480;
            s->qAnimDelay = 0;
            s->prevAnim = -1;
            s->variant = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 2;
            s->hitboxes[0].index = -1;
            s->hitboxes[1].index = -1;
            tf = &strc->tf;
            tf->rotation = 0;
            tf->qScaleX = Q(1);
            tf->qScaleY = Q(1);
            tf->x = 0;
            tf->y = 0;
            strc->unk3C = 2;

            if (gStageData.zone != 8) {
                RetrieveInitialAnimationPalette((u16)(gUnknown_080CE7E2[135][0] + gPlayerCharacterIdleAnims[p->charFlags.character]), 0x10);
            } else {
                RetrieveInitialAnimationPalette(1313, 0x10);
            }

            gUnknown_03001BF0.unkC0 = p;
            gUnknown_03001BF0.index = 0;
            sub_8019A7C();
        }
    }
}

void Player_8019858(Player *p)
{
    PlayerSpriteInfo *psiBody;
    SpriteTransform *tf;
    SomeSubStruct_3001BF0 *temp_r3;
    Sprite2 *s;

    temp_r3 = &gUnknown_03001BF0.unk0[gUnknown_03001BF0.index];
    psiBody = p->spriteInfoBody;
    tf = &psiBody->tf;
    s = &psiBody->s;
    gUnknown_03001BF0.index = (u8)((gUnknown_03001BF0.index + 1) & 7);
    temp_r3->qWorldX = p->qWorldX;
    temp_r3->qWorldY = p->qWorldY;
    temp_r3->frameFlags = s->frameFlags;
    temp_r3->moveState = p->moveState;
    temp_r3->anim2 = p->charFlags.anim2;
    temp_r3->rotation = tf->rotation;
    temp_r3->state1 = p->charFlags.state1;
    temp_r3->animSpeed = s->animSpeed;
}

void Task_AfterImages(void)
{
    SomeSubStruct_3001BF0 *subStrc;
    AfterImages *afterImgs = TASK_DATA(gCurTask);
    Sprite2 *s;
    u32 unkVal;

    if (!gUnknown_03001BF0.unkC0->charFlags.boostIsActive) {
        return;
    }
    if (gStageData.unk85 != 0) {
        return;
    }
    if ((gStageData.zone == 8) && (gPlayers->moveState & 0x100)) {
        return;
    }

    subStrc = &gUnknown_03001BF0.unk0[((gUnknown_03001BF0.index + 8 - afterImgs->unk3C) % 8u & 6)];
    if (afterImgs->unk3C == 6) {
        afterImgs->unk3C = 2;
    } else {
        afterImgs->unk3C += 2;
    }

    s = &afterImgs->s;
    s->anim = subStrc->anim2;
    s->variant = subStrc->state1;
    s->animSpeed = subStrc->animSpeed;
    s->frameFlags = subStrc->frameFlags | 0x40000;
    s->x = I(subStrc->qWorldX) - gCamera.x;
    s->y = I(subStrc->qWorldY) - gCamera.y;
    afterImgs->tf.rotation = (u16)subStrc->rotation;
    afterImgs->tf.x = s->x;
    afterImgs->tf.y = s->y;
    UpdateSpriteAnimation((Sprite *)s);

    if (0x20 & s->frameFlags) {
        s->frameFlags = s->frameFlags & ~0x1F;
        s->frameFlags |= (u8)(gNextFreeAffineIndex++ | 0x20);
        if (subStrc->moveState & 1) {
            afterImgs->tf.qScaleX = +Q(1);
        } else {
            afterImgs->tf.qScaleX = -Q(1);
        }

        if (subStrc->moveState & 0x10000) {
            afterImgs->tf.qScaleX = -afterImgs->tf.qScaleX;
        }
        TransformSprite((Sprite *)s, &afterImgs->tf);
    } else {
        s->frameFlags &= ~0x3F;
        if (subStrc->moveState & 0x10000) {
            s->frameFlags |= 0x800;
        } else {
            s->frameFlags &= ~0x800;
        }
    }
    if (gStageData.unk4 == 1) {
        if (gStageData.unkBC & 1) {
            s->frameFlags |= 0x80;
        } else {
            s->frameFlags &= ~0x80;
        }
        if (2 & gStageData.unkBC) {
            unkVal = 0;
        }
    } else {
        s->frameFlags &= ~0x80;
        unkVal = 1;
    }
    if (unkVal != 0) {
        DisplaySprite((Sprite *)s);
    }
}

void Player_BoostModeEngage(Player *p) { p->charFlags.boostIsActive = TRUE; }

void Player_BoostModeDisengage(Player *p)
{
    p->charFlags.boostIsActive = FALSE;
    p->boostEffectCounter = 0;
}

void TaskDestructor_AfterImages(struct Task *t) { }

void sub_8019A7C(void)
{
    SomeSubStruct_3001BF0 *var_r1 = &gUnknown_03001BF0.unk0[0];
    s16 i;

    for (i = 0; i < (s32)ARRAY_COUNT(gUnknown_03001BF0.unk0); i++, var_r1++) {
        var_r1->qWorldX = 0;
        var_r1->qWorldY = 0;
        var_r1->frameFlags = 0;
        var_r1->moveState = 0;
        var_r1->anim2 = 0;
        var_r1->rotation = 0;
        var_r1->state1 = 0;
        var_r1->animSpeed = 0x10;
    }
}

#ifndef NON_MATCHING
void RetrieveInitialAnimationPalette(u16 animId, u16 insertOffset)
{
    s32 palId;
    u16 destOffset;
    u32 numColors;
    const s32 *cmd;
    u32 cmdId;
#ifndef NON_MATCHING
    // NOTE: This #ifdef is a bit unnecessary,
    //       since other platforms use the ACmd implementation, but we'll keep it for now.
    register u32 flags asm("r3");
#else
    u32 flags;
#endif

    cmd = (s32 *)*gAnimations[animId];
    cmdId = *cmd, cmd++;
    if (cmdId == ANIM_CMD__PALETTE) {
        palId = *cmd, cmd++;
        numColors = *cmd;
        destOffset = (numColors >> 16);
        destOffset += insertOffset;
        numColors &= 0xFF;
        flags = gFlags;
        if (FLAGS_20000 & flags) {
            CopyPalette(&gRefSpriteTables->palettes[palId * 16], destOffset, numColors);
            return;
        }

        DmaCopy16(3, &gRefSpriteTables->palettes[palId * 16], &gObjPalette[destOffset], numColors << 1);

        flags |= FLAGS_UPDATE_SPRITE_PALETTES;
        gFlags = flags;
    }
}
#else
// This should be kept for Big Endian platforms...
void RetrieveInitialAnimationPalette(u16 animId, u16 insertOffset)
{
    s32 palId;
    u16 destOffset;
    u32 numColors;
    const ACmd *cmd;
    u32 cmdId;

    cmd = *gAnimations[animId];
    if (cmd->pal.cmdId == ANIM_CMD__PALETTE) {
        palId = cmd->pal.palId;
        numColors = cmd->pal.numColors;
        destOffset = cmd->pal.insertOffset + insertOffset;
        if (FLAGS_20000 & gFlags) {
            CopyPalette(&gRefSpriteTables->palettes[palId * 16], destOffset, numColors);
            return;
        }

        DmaCopy16(3, &gRefSpriteTables->palettes[palId * 16], &gObjPalette[destOffset], numColors << 1);

        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}
#endif

void sub_8019B4C(Player *p)
{
    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= ~0x4000;
    p->moveState |= (MOVESTATE_IN_AIR | MOVESTATE_2);
    Player_8012FF0(p);
    p->charFlags.anim0 = 171;
    p->charFlags.state1 = 0;
    p->unk26 = 0;

    if (p->moveState & 1) {
        if (p->qSpeedAirX > -Q(4)) {
            p->qSpeedAirX -= Q(4);
            if (p->qSpeedAirX < -Q(6)) {
                p->qSpeedAirX = -Q(6);
            } else if (p->qSpeedAirX > -Q(4)) {
                p->qSpeedAirX = -Q(4);
            }
        }
    } else if (p->qSpeedAirX < +Q(4)) {
        p->qSpeedAirX += Q(4);

        if (p->qSpeedAirX > +Q(6)) {
            p->qSpeedAirX = +Q(6);
        } else if (p->qSpeedAirX < +Q(4)) {
            p->qSpeedAirX = +Q(4);
        }
    }
    p->qSpeedAirY = -Q(1.5);
    p->idleAndCamCounter = 4;
    Player_PlaySong(p, 0x70U);
    SetPlayerCallback(p, sub_8019CF0);
    sub_8019CF0(p);
}

void sub_8019C24(Player *p)
{
    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= ~0x4000;
    Player_8012FE0(p);
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        if (p->qSpeedAirX > -Q(3)) {
            p->qSpeedAirX -= Q(3);
            if (p->qSpeedAirX < -Q(5)) {
                p->qSpeedAirX = -Q(5);
            }
        }
    } else {
        if (p->qSpeedAirX < Q(3)) {
            p->qSpeedAirX += Q(3);
            if (p->qSpeedAirX > +Q(5)) {
                p->qSpeedAirX = +Q(5);
            }
        }
    }
    p->qSpeedAirY = -Q(1);
    p->moveState |= (MOVESTATE_8000 | MOVESTATE_IN_AIR);

    switch (p->charFlags.character) {
        case SONIC:
            p->charFlags.anim0 = 169;
            break;
        case AMY:
            p->charFlags.anim0 = 264;
            sub_8018034(p);
            break;
    }

    SetPlayerCallback(p, sub_801A224);
    sub_801A224(p);
}

void sub_8019CF0(Player *p)
{
    if (p->charFlags.state1 != 0) {
        if (p->charFlags.state1 == 1) {
            if (--p->idleAndCamCounter == 0) {
                p->charFlags.state1 += 1;
                Player_8012FE0(p);
                p->moveState &= ~2;
                p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
                SetPlayerCallback(p, Player_800DAF4);
                return;
            }
        }
    } else {
        if (--p->idleAndCamCounter == 0) {
            p->charFlags.state1 += 1;
            p->idleAndCamCounter = 20;
        }
    }

    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_8019DA0(Player *p)
{
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedGround += 14;
        if (p->qSpeedGround > 0) {
            p->qSpeedGround = 0;
        }
    } else {
        p->qSpeedGround -= 14;
        if (p->qSpeedGround < 0) {
            p->qSpeedGround = 0;
        }
    }

    if ((p->spriteInfoBody->s.frameFlags & 0x4000) || ((s16)p->qSpeedGround == 0)) {
        p->charFlags.state1 = 1;
        p->charFlags.someFlag1 = 1;
        SetPlayerCallback(p, sub_8019E94);

        if ((s8)p->unk5A == -1) {
            Player_PlaySong(p, SE_531);
            p->idleAndCamCounter = 64;
        } else {
            Player_PlaySong(p, SE_GROUND_SLIDE);
            p->idleAndCamCounter = 32;
        }
    }
    if (sub_8015064(p) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);

        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
            Player_StopSong(p, SE_531);
            Player_StopSong(p, SE_GROUND_SLIDE);
        }
    }
}

void sub_8019E94(Player *p)
{
    if (p->moveState & 1) {
        p->qSpeedGround += 14;
        if (p->qSpeedGround > 0) {
            p->qSpeedGround = 0;
        }
    } else {
        p->qSpeedGround -= 14;
        if (p->qSpeedGround < 0) {
            p->qSpeedGround = 0;
        }
    }

    if (p->idleAndCamCounter-- == 0) {
        p->charFlags.state1 = 2;
        p->charFlags.someFlag1 = 1;
        p->qSpeedGround = 0;
        SetPlayerCallback(p, sub_801A1D4);
    }

    if (sub_8015064(p) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
            Player_StopSong(p, 0x213U);
            Player_StopSong(p, 0x6FU);
        }

        if (((s8)p->unk5A != -1) && !(p->unkC & 0x18)) {
            p->unk5A = (p->unk5A + 1) & 0xF;
            if ((p->unk5A & 0x7) == 7) {
                sub_8017AF4(p);
            }
        }
    }
}

void sub_8019F80(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1++;
        }
    }

    sub_801350C(p);

    if (sub_8015064(p) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (p->qSpeedAirY > 0) {
            p->charFlags.state1 = 2;
            p->moveState &= 0xFFFF7FFD;
            SetPlayerCallback(p, Player_800DAF4);
        }
    }
}

void sub_8019FF8(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;
    u32 temp_r1;

    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);

    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xA5;

    if (p->moveState & 1) {
        p->qSpeedGround = -Q(3);
    } else {
        p->qSpeedGround = +Q(3);
    }
    p->unk5A = 0;
    SetPlayerCallback(p, sub_8019DA0);
    sub_8019DA0(p);
}

void sub_801A05C(Player *p)
{
    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xA6;
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedGround = -Q(5);
    } else {
        p->qSpeedGround = +Q(5);
    }
    p->unk5A = -1;
    SetPlayerCallback(p, sub_8019DA0);
    sub_8019DA0(p);
}

void sub_801A0C0(Player *p)
{
    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x8000 | MOVESTATE_JUMPING;
    p->charFlags.anim0 = 167;
    p->idleAndCamCounter = 0x10;
    Player_PlaySong(p, SE_113);
    sub_8017B80(p);
    SetPlayerCallback(p, sub_801A280);
    sub_801A280(p);
}

void Player_Sonic_TrickUp(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x8000 | MOVESTATE_JUMPING;
    p->charFlags.anim0 = 0xAC;
    p->qSpeedAirX = +Q(0);
    p->qSpeedAirY = -Q(5);
    Player_PlaySong(p, SE_112);
    SetPlayerCallback(p, sub_8019F80);
    sub_8019F80(p);
}

void Player_Sonic_BoundAttack(Player *p)
{
    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x8000 | MOVESTATE_IN_AIR;
    p->charFlags.anim0 = 170;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    sub_8017BFC(p);
    SetPlayerCallback(p, sub_801A2DC);
    sub_801A2DC(p);
}

void sub_801A1D4(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }

    if (sub_8015064(p) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801A224(Player *p)
{
    if ((p->spriteInfoBody->s.frameFlags & 0x4000) && (p->charFlags.state1 == 0)) {
        p->charFlags.state1 = 1;
    }
    sub_801350C(p);
    sub_8014940(p);
    if (sub_8015064(p) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801A280(Player *p)
{
    sub_801350C(p);
    sub_8014940(p);

    if (sub_8015064(p) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);

        if (--p->idleAndCamCounter == 0) {
            SetPlayerCallback(p, sub_800DF10);
        }
    }
}

void sub_801A2DC(Player *p)
{
    if (sub_8015064(p) == 0) {
        Player_80149E4(p);
        sub_8017004(p);

        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            if (p->charFlags.state1 == 0) {
                p->charFlags.state1++;
                p->qSpeedAirX = Q(0);
                p->qSpeedAirY = Q(3);
                SetPlayerCallback(p, sub_801A330);
            }
        }
    }
}

void sub_801A330(Player *p)
{
    if (sub_8015064(p) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->qSpeedAirX = +Q(0);
            p->qSpeedAirY = -Q(4.5);
            SetPlayerCallback(p, sub_801A38C);
            Player_PlaySong(p, SE_223);
        }
    }
}

void sub_801A38C(Player *p)
{
    if (sub_8015064(p) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);

        if (p->qSpeedAirY > 0) {
            p->charFlags.state1 = 2;
            Player_8012FE0(p);
            SetPlayerCallback(p, Player_800DAF4);
        }
    }
}

void sub_801A3DC(Player *p)
{
    Player_800D880(p);

    if (MOVESTATE_2 & p->moveState) {
        p->moveState &= ~MOVESTATE_2;
        sub_8012FA0(p);
    }
    sub_8016F28(p);
    switch (p->charFlags.character) {
        case CREAM:
            p->charFlags.anim0 = 197;
            break;
        case TAILS:
            p->charFlags.anim0 = 219;
    }
    p->charFlags.state1 = 0;
    p->charFlags.state0_highValue = 1;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    Player_BoostModeDisengage(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    p->moveState |= MOVESTATE_40000 | MOVESTATE_IN_AIR;
    SetPlayerCallback(p, sub_801A644);
    sub_801A644(p);
}

void sub_801A46C(Player *p)
{
    Player_800D880(p);

    if (MOVESTATE_2 & p->moveState) {
        p->moveState &= ~2;
        sub_8012FA0(p);
    }
    sub_8016F28(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;

    switch (p->charFlags.character) {
        case CREAM:
            p->charFlags.anim0 = 187;
            Player_PlaySong(p, SE_AIR_TRICK_SA2);
            break;
        case TAILS:
            p->charFlags.anim0 = 221;
            break;
    }

    p->charFlags.state0_highValue = 1;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    Player_BoostModeDisengage(p);
    p->moveState |= MOVESTATE_40000 | MOVESTATE_IN_AIR;
    SetPlayerCallback(p, sub_801AD10);
    sub_801AD10(p);
}

void sub_801A504(Player *p)
{
    s16 sp;
    p->moveState &= ~2;
    sub_8012FA0(p);
    sub_8016F28(p);
    p->moveState &= ~4;
    p->moveState |= 0x40000;
    sub_8004E20(I(p->qWorldX), I(p->qWorldY), &sp);
    p->charFlags.anim0 = 193;
    if (p->qSpeedAirY < Q(1)) {
        p->qSpeedAirY = Q(1);
    }
    p->qWorldY = Q(sp) + p->qSpeedAirY;
    p->qSpeedAirY >>= 2;
    p->qSpeedGround = 0;
    p->unk26 = 0;
    p->charFlags.unk2D_0 = 0;
    SetPlayerCallback(p, sub_801A87C);
    sub_801A87C(p);
}

void sub_801A5A0(Player *p)
{
    if (!(p->keyInput & gStageData.buttonConfig.jump)) {
        p->charFlags.state1 = 2;
        p->charFlags.someFlag1 = 1;
        SetPlayerCallback(p, sub_801AC04);
        return;
    }
    if ((p->charFlags.state1 == 0) && (p->spriteInfoBody->s.frameFlags & 0x4000)) {
        p->charFlags.state1 = 1;
        p->charFlags.someFlag1 = 1;
    }
    sub_8014940(p);
    p->qSpeedAirX = (p->qSpeedAirX * 15) >> 4;
    if (p->qSpeedAirY < Q(0.5)) {
        p->qSpeedAirY += Q(16. / 256.);
    }
    if (!sub_8015064(p)) {
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801A644(Player *p)
{
    s32 var_r2;
    u16 temp_r0;

    if (p->moveState & 0x80) {
        var_r2 = 0x2A0;
    } else {
        var_r2 = 0x4E0;
    }
    if ((p->charFlags.state1 == 0) && (p->spriteInfoBody->s.frameFlags & 0x4000)) {
        p->charFlags.state1 = 1;
        p->qSpeedAirY = ((-var_r2 * 5) >> 2);
    }

    if ((p->charFlags.state1 == 1) && (p->qSpeedAirY >= 0)) {
        p->charFlags.state1 = 2;
        SetPlayerCallback(p, sub_800DF10);
        return;
    }

    if (p->charFlags.state1 != 0) {
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_801A6E0(Player *p)
{
    if (p->unk148.arr_s16[0] != 0) {
        p->unk148.arr_s16[0]--;

        if (p->keyInput & gStageData.buttonConfig.attack) {
            p->charFlags.anim0 = 0xBF;
            SetPlayerCallback(p, Player_800DAF4);
            Player_StopSong(p, SE_CREAM__FLYING);
            return;
        }
    }
    if ((u8)p->charFlags.state0_highValue != 1) {
        if (p->qSpeedAirY >= -Q(0.75)) {
            p->qSpeedAirY = p->qSpeedAirY - 24;

            if ((u8)++p->charFlags.state0_highValue == 0x20)
                p->charFlags.state0_highValue = 1U;
        } else {
            p->charFlags.state0_highValue = 1U;
        }

    } else {
        if ((p->keyInput2 & gStageData.buttonConfig.jump) && ((s32)p->qSpeedAirY >= -0xC0) && (p->unk148.arr_s16[0] != 0)) {
            p->charFlags.state0_highValue = 2U;
        }
        p->qSpeedAirY = (u16)p->qSpeedAirY + 8;
    }
    sub_801A7FC(p);

    if (ABS(p->qSpeedAirX) > Q(8)) {
        if (p->qSpeedAirX > 0) {
            p->qSpeedAirX -= (p->unk90 * 2);
        } else {
            p->qSpeedAirX += (p->unk90 * 2);
        }
    }
    sub_800E04C(p);
    if (!sub_8015064(p) && !(p->moveState & 4)) {
        Player_StopSong(p, SE_CREAM__FLYING);
        SetPlayerCallback(p, Player_8005380);
    }
}

void sub_801A7FC(Player *p)
{
    if (p->unk148.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xBE;
        Player_StopSong(p, SE_CREAM__FLYING);
        sub_801EBC0(5, p);
        return;
    }

    if (((DPAD_LEFT & p->keyInput) && !(p->moveState & 1)) || ((DPAD_RIGHT & p->keyInput) && (p->moveState & 1))) {
        p->charFlags.anim0 = 0xBD;
    } else if ((p->charFlags.anim0 != 0xBD) || (p->spriteInfoBody->s.frameFlags & 0x4000)) {
        p->charFlags.anim0 = 0xBC;
    }
    Player_PlayOrContinueSong(p, SE_CREAM__FLYING);
}

void sub_801A87C(Player *p)
{
    s16 temp_r0;
    s16 temp_r0_2;

    if ((sub_801480C(p) << 0x10) != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    temp_r0_2 = temp_r0;
    switch (temp_r0_2) {
        case 0:
            p->charFlags.anim0 = 0xC1;
            goto def;
            break;
        case 1:
            p->charFlags.anim0 = 0xC4;
            goto def;
            break;
        case 2:
            sub_801ADC0(p);
            break;
        case 3:
            p->charFlags.anim0 = 0xC2;
            goto def;
            break;
        case 4:
            p->moveState |= 4;
            p->moveState &= 0xFFFBFFFF;
            p->qSpeedGround = 0;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = 0;
            p->charFlags.anim0 = 0x18;
            Player_800DAF4(p);
            break;
        default:
        def:
            if (!sub_8015064(p)) {
                sub_8017004(p);
            }
            break;
    }
}

void sub_801A930(Player *p)
{

    if (sub_801480C(p)) {
        p->qCamOffsetY = 0;
        return;
    } else {
        s16 res = sub_8015460(p);
        p->qWorldX += p->qSpeedAirX;
        p->qWorldY += p->qSpeedAirY;
        if (res != 2) {
            SetPlayerCallback(p, sub_801A87C);
            sub_801A87C(p);
            p->qCamOffsetY = 0;
        } else {
            if (p->idleAndCamCounter > 0) {
                p->idleAndCamCounter--;
            } else {
                if (p->qCamOffsetY > -1104) {
                    p->qCamOffsetY -= Q(32. / 256.);
                }
            }

            if ((p->charFlags.state1 == 0) && (p->spriteInfoBody->s.frameFlags & 0x4000)) {
                p->charFlags.state1++;
            }
            if ((sub_8015064(p) << 0x10) == 0) {
                sub_8017004(p);
            }
        }
    }
}

void sub_801A9EC(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    sub_8012FA0(p);
    p->qSpeedAirY = -0x1D4;
    p->charFlags.anim0 = 0xC0;
    p->charFlags.state0_highValue = 1;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801A5A0);
    sub_801A5A0(p);
}

void sub_801AA54(Player *p)
{
    if (p->unk54 == 0) {
        sub_801EBC0(9, p);
    }
    sub_801AC58(p, 0);
}

void sub_801AA78(Player *p)
{
    sub_8005B04(p);
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            SetPlayerCallback(p, Player_8005380);
        }
        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
        }
    }
}

void sub_801AAEC(Player *p)
{
    if (p->unk54 == 0) {
        sub_801EBC0(0xA, p);
    }
    sub_801AC58(p, 1);
}

void sub_801AB10(Player *p)
{
    if (p->unk54 == 0) {
        sub_801EBC0(9, p);
    }
    sub_801AC58(p, 2);
}

void sub_801AB34(Player *p)
{
    if (p->unk54 == 0) {
        sub_801EBC0(9, p);
    }
    sub_801ACBC(p, 0);
}

void sub_801AB58(Player *p)
{
    if (p->unk54 == 0) {
        sub_801EBC0(0xA, p);
    }
    sub_801ACBC(p, 1);
}

void sub_801AB7C(Player *p)
{
    if (p->unk54 == 0) {
        sub_801EBC0(9, p);
    }
    sub_801ACBC(p, 2);
}

void sub_801ABA0(Player *p)
{
    Player_800D880(p);
    if (2 & p->moveState) {
        p->moveState = p->moveState & ~2;
        sub_8012FA0(p);
    }
    p->unk148.arr_s16[0] = 0xF0;
    p->charFlags.state0_highValue = 1;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801A6E0);
    sub_801A6E0(p);
}

void sub_801AC04(Player *p)
{
    sub_8014940(p);
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            p->charFlags.anim0 = 0xBF;
            SetPlayerCallback(p, Player_800DAF4);
        }
    }
}

void sub_801AC58(Player *p, u16 arg1)
{
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;

    Player_800D880(p);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);

    if (arg1 == 1) {
        if (p->qSpeedGround == 0) {
            p->charFlags.anim0 = 0xB6;
        } else {
            p->charFlags.anim0 = 0xB7;
        }
    } else if (p->qSpeedGround == 0) {
        p->charFlags.anim0 = 0xB4;
    } else {
        p->charFlags.anim0 = 0xB5;
    }

    SetPlayerCallback(p, sub_801AA78);
    sub_801AA78(p);
}

void sub_801ACBC(Player *p, u16 arg1)
{
    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= MOVESTATE_IN_AIR;

    if (arg1 == 1) {
        p->charFlags.anim0 = 0xBA;
    } else {
        p->charFlags.anim0 = 0xB9;
    }

    SetPlayerCallback(p, Player_800DAF4);
    Player_800DAF4(p);
}

void sub_801AD10(Player *p)
{
    u16 temp_r2;

    if ((sub_8015064(p) << 0x10) == 0) {
        Player_80149E4(p);
        sub_8017004(p);
        if ((p->charFlags.state1 == 0) && (p->spriteInfoBody->s.frameFlags & 0x4000)) {
            p->charFlags.state1++;
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = Q(1);
            SetPlayerCallback(p, sub_801AD64);
        }
    }
}

void sub_801AD64(Player *p)
{
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (p->qSpeedAirY < -Q(0.5)) {
            p->qSpeedAirY -= Q(8. / 256.);
        }
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801ADC0(Player *p)
{
    p->charFlags.anim0 = 0xC3;
    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    p->idleAndCamCounter = 0x28;
    SetPlayerCallback(p, sub_801A930);
    sub_801A930(p);
}

void sub_801ADF4(Player *p)
{
    s16 var_r0;
    u32 temp_r1;

    Player_800D880(p);

    if (2 & p->moveState) {
        p->moveState = p->moveState & ~2;
        Player_8012FE0(p);
    }
    p->unk14C.arr_s16[0] = 120;
    p->charFlags.state0_highValue = 1;
    Player_BoostModeDisengage(p);

    if (p->moveState & 1) {
        p->qSpeedAirX = -Q(1);
    } else {
        p->qSpeedAirX = +Q(1);
    }
    p->qSpeedAirY = -Q(0.5);

    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801B608);
    sub_801B608(p);
}

void sub_801AE70(Player *p)
{
    s16 temp_r0;
    s16 temp_r0_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u8 *temp_r6;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->qSpeedAirY += Q(1.5);
    if (p->qSpeedAirY < 0) {
        p->qSpeedAirY = 0;
    }
    p->qSpeedGround = Q(1);
    if (p->moveState & 0x80) {
        p->qSpeedGround = Q(0.5);
    }
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedAirX = p->qSpeedGround = -p->qSpeedGround;
        p->unk148.arr_u8[0] = 0x80;
    } else {
        p->qSpeedAirX = p->qSpeedGround;
        p->unk148.arr_u8[0] = 0;
    }
    p->unk14C.arr_s16[0] = 0xF0;
    p->charFlags.state0_highValue = 1;
    p->charFlags.anim0 = 0xD9;
    Player_BoostModeDisengage(p);
    p->unk26 = 0;
    p->unk148.arr_u8[2] = 0;
    p->unk148.arr_u8[3] = 0;
    Player_BoostModeDisengage(p);
    p->unk148.arr_u8[2] |= 4;
    p->moveState = (p->moveState | 0x40004) & ~8;
    SetPlayerCallback(p, sub_801BA2C);
    sub_801BA2C(p);
}

void sub_801AF50(Player *p)
{
    bool32 speedIsNegative;
    s16 qSpeed;

    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }

    speedIsNegative = (p->qSpeedGround < 0) ? 1 : 0;
    qSpeed = ABS(p->qSpeedGround);
    qSpeed -= Q(32. / 256.);
    if (qSpeed < 0) {
        p->qSpeedGround = Q(0);
    } else {
        if (speedIsNegative) {
            p->qSpeedGround = -qSpeed;
        } else {
            p->qSpeedGround = +qSpeed;
        }
    }
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);

        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
        }
    }
}

void sub_801AFEC(Player *p)
{
    s16 qSpeed;
    bool32 speedIsNegative;

    p->unk14C.arr_s16[1] -= 1;
    p->unk14C.arr_s16[0]++;
    if (p->unk14C.arr_s16[1] == 0) {
        p->charFlags.state1 = 2;
        p->charFlags.someFlag1 = 1;
        SetPlayerCallback(p, sub_801B11C);
        p->unk14C.arr_s16[0] = 0;
        Player_StopSong(p, SE_532);
        return;
    }
    if (p->unk14C.arr_s16[0] > 0xB3) {
        p->charFlags.state1 = 1;
        p->charFlags.someFlag1 = 1;
        Player_StopSong(p, SE_532);
        SetPlayerCallback(p, sub_801B1B0);
        p->unk14C.arr_s16[1] = 120;
        return;
    }
    if (p->keyInput2 & gStageData.buttonConfig.attack) {
        p->unk14C.arr_s16[1] = 0x1E;
    }

    speedIsNegative = (p->qSpeedGround < 0) ? 1 : 0;
    qSpeed = ABS(p->qSpeedGround);

    if (qSpeed < Q(4)) {
        qSpeed -= Q(16. / 256.);
    } else {
        qSpeed -= Q(64. / 256.);
    }

    if (qSpeed < Q(0)) {
        p->qSpeedGround = Q(0);
    } else {
        if (speedIsNegative) {
            p->qSpeedGround = -qSpeed;
        } else {
            p->qSpeedGround = +qSpeed;
        }
    }

    if (DPAD_SIDEWAYS & p->keyInput) {
        if (DPAD_LEFT & p->keyInput) {
            p->qSpeedGround -= Q(16. / 256.);
        } else {
            p->qSpeedGround += Q(16. / 256.);
        }
    }
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801B11C(Player *p)
{
    s16 qSpeed;
    bool32 speedIsNegative;

    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }

    speedIsNegative = (p->qSpeedGround < 0) ? 1 : 0;
    qSpeed = ABS(p->qSpeedGround);

    if (qSpeed < Q(4)) {
        qSpeed -= Q(32. / 256.);
    } else {
        qSpeed -= Q(128. / 256.);
    }

    if (qSpeed < Q(0)) {
        p->qSpeedGround = Q(0);
    } else {
        if (speedIsNegative) {
            p->qSpeedGround = -qSpeed;
        } else {
            p->qSpeedGround = +qSpeed;
        }
    }
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801B1B0(Player *p)
{
    s16 qSpeed;
    bool32 speedIsNegative;

    if (--p->unk14C.arr_s16[1] == 0) {
        p->charFlags.state1 = 3;
        p->charFlags.someFlag1 = 1;
        SetPlayerCallback(p, sub_801B11C);
        return;
    }

    speedIsNegative = (p->qSpeedGround < 0) ? 1 : 0;
    qSpeed = ABS(p->qSpeedGround);

    if (qSpeed < Q(4)) {
        qSpeed -= Q(32. / 256.);
    } else {
        qSpeed -= Q(128. / 256.);
    }

    if (qSpeed < Q(0)) {
        p->qSpeedGround = Q(0);
    } else {
        if (speedIsNegative) {
            p->qSpeedGround = -qSpeed;
        } else {
            p->qSpeedGround = +qSpeed;
        }
    }
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801B258(Player *p)
{
    sub_8014940(p);

    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (0x4000 & p->spriteInfoBody->s.frameFlags) {
            p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
            p->charFlags.anim0 = 0x14;
            p->charFlags.anim2 = gPlayerCharacterIdleAnims[p->charFlags.character] + 0x13;
            p->charFlags.state1 = 1;
            sub_8012FC0(p);
            SetPlayerCallback(p, sub_800DF5C);
        }
    }
}

void sub_801B2E4(Player *p)
{
    Player *partner;
    s32 var_r6;
    u16 temp_r3_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u8 temp_r0;
    u8 temp_r3;

    var_r6 = 0;
    if (p->unk14C.arr_s16[0] != 0) {
        p->unk14C.arr_s16[0]--;
    }
    if ((u8)p->charFlags.state0_highValue != 1) {
        if ((p->qSpeedAirY < -Q(0.75)) || (p->qSpeedAirY -= 0x18, (u8)++p->charFlags.state0_highValue == 0x20)) {
            p->charFlags.state0_highValue = 1U;
        }
    } else {
        if ((p->keyInput2 & gStageData.buttonConfig.jump) && (p->qSpeedAirY >= -Q(0.75)) && (p->unk14C.arr_s16[0] != 0)) {
            p->charFlags.state0_highValue = 2U;
        }
        p->qSpeedAirY += 8;
    }
    if ((!sub_8015064(p)) && (sub_801B458(p), sub_800E04C(p), temp_r1 = p->moveState, ((0x100 & temp_r1) == 0))) {
        if (!(4 & temp_r1)) {
            SetPlayerCallback(p, Player_8005380);
            Player_StopSong(p, 0x78U);
            return;
        }
        if (temp_r1 & 0x02000000) {
            partner = GET_SP_PLAYER_V1(PLAYER_2);
            if ((gStageData.gameMode < 5) || ((p->charFlags.someIndex) == 2) || ((partner->charFlags.someIndex) == 2)) {
                if ((partner->charFlags.anim0 != 92) && (partner->charFlags.anim0 != 93)) {
                    var_r6 = 1;
                }
            } else {
                temp_r3_2 = partner->charFlags.anim2;
                if ((partner->charFlags.anim2 != (gPlayerCharacterIdleAnims[partner->charFlags.character] + 0x5C))
                    && (partner->charFlags.anim2 != (gPlayerCharacterIdleAnims[partner->charFlags.character] + 0x5D))) {
                    var_r6 = 1;
                }
            }
        block_24:
            if (var_r6 != 0) {
            block_25:
#ifndef NON_MATCHING
                // TODO: Make the jump without this assembly hack
                asm("" ::"r"(var_r6));
#endif
                p->moveState &= 0xDDFBFFFF;
                Player_8012FE0(p);
                p->charFlags.anim0 = 0x18;
                Player_800DAF4(p);
            }
        } else {
            sub_801C1D4(p);
        }
    }
}

void sub_801B458(Player *p)
{
    s16 var_r0;
    u16 temp_r3;

    if (p->unk14C.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xD0;
        Player_StopSong(p, SE_TAILS__FLYING);
        return;
    }

    if (((0x20 & p->keyInput) && !(p->moveState & 1)) || ((0x10 & p->keyInput) && (p->moveState & 1))) {
        p->charFlags.anim0 = 0xCF;
    } else if ((p->charFlags.anim0 != 0xCF) || (p->spriteInfoBody->s.frameFlags & 0x4000)) {
        p->charFlags.anim0 = 0xCE;
    }
    Player_PlayOrContinueSong(p, SE_TAILS__FLYING);
}

void sub_801B4CC(Player *p)
{
    u8 temp_r0;

    if ((s16)p->unk14C.arr_s16[0] != 0) {
        p->unk14C.arr_s16[0] = (u16)(p->unk14C.arr_s16[0] - 1);
    }
    if (p->charFlags.state0_highValue != 1) {
        if ((p->qSpeedAirY < -Q(1.5)) || (p->qSpeedAirY -= 0x30, ++p->charFlags.state0_highValue == 0x20)) {
            p->charFlags.state0_highValue = 1U;
        }
    } else {
        if ((p->keyInput2 & gStageData.buttonConfig.jump) && (p->qSpeedAirY >= -Q(1.5)) && (p->unk14C.arr_s16[0] != 0)) {
            p->charFlags.state0_highValue = 2U;
        }
        p->qSpeedAirY += 8;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_801B58C(p);
        sub_801C00C(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
            Player_StopSong(p, SE_TAILS__FLYING);
            return;
        }
        sub_801C1D4(p);
    }
}

void sub_801B58C(Player *p)
{
    if (p->unk14C.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xD0;
        p->qSpeedAirY += Q(16. / 256.);
        Player_StopSong(p, SE_TAILS__FLYING);
        return;
    }

    if (((0x20 & p->keyInput) && !(p->moveState & 1)) || ((0x10 & p->keyInput) && (p->moveState & MOVESTATE_FACING_LEFT))) {
        p->charFlags.anim0 = 0xD2;
    } else if ((p->charFlags.anim0 != 0xCF) || (p->spriteInfoBody->s.frameFlags & 0x4000)) {
        p->charFlags.anim0 = 0xD1;
    }
    Player_PlayOrContinueSong(p, SE_TAILS__FLYING);
}

void sub_801B608(Player *p)
{
    s16 temp_r0;
    u32 var_r0;
    void (*var_r1)(Player *);

    if (!(p->keyInput & gStageData.buttonConfig.jump)) {
        p->charFlags.anim0 = 0xD3;
        SetPlayerCallback(p, sub_801BFD4);
        Player_StopSong(p, SE_TAILS__FLYING);
        return;
    } else {
        p->qSpeedAirY += 8;
        sub_801B6A8(p);
        sub_8014940(p);

        if (p->qSpeedAirX < 0) {
            p->moveState |= 1;
        } else if (p->qSpeedAirX > 0) {
            p->moveState &= ~1;
        }
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
            if (!(p->moveState & 4)) {
                SetPlayerCallback(p, Player_8005380);
                Player_StopSong(p, SE_TAILS__FLYING);
                return;
            }
            sub_801C1D4(p);
        }
    }
}

void sub_801B6A8(Player *p)
{
    if (p->unk14C.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xD0;
        Player_StopSong(p, SE_TAILS__FLYING);
        return;
    }

    if (((0x20 & p->keyInput) && !(p->moveState & 1)) || ((0x10 & p->keyInput) && (p->moveState & 1)) || (p->charFlags.anim0 != 0xD4)) {
        p->charFlags.anim0 = 0xD4;
    } else if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        p->charFlags.anim0 = 0xD4;
    }
    Player_PlayOrContinueSong(p, SE_TAILS__FLYING);
}

void sub_801B71C(Player *p)
{
    u32 temp_r1;
    u8 temp_r0;
    u8 *temp_r2;
    void (*var_r1)(Player *);

    if (p->unk14C.arr_s16[0] != 0) {
        p->unk14C.arr_s16[0]--;
    }
    if (p->charFlags.state0_highValue != 1) {
        if (((s32)p->qSpeedAirY < -Q(1.5)) || (p->qSpeedAirY -= 0x30, ++p->charFlags.state0_highValue == 0x20)) {
            p->charFlags.state0_highValue = 1U;
        }
    } else {
        if ((p->keyInput2 & gStageData.buttonConfig.jump) && ((s32)p->qSpeedAirY >= -Q(1.5)) && (p->unk14C.arr_s16[0] != 0)) {
            p->charFlags.state0_highValue = 2U;
        }
        p->qSpeedAirY = (u16)p->qSpeedAirY + 8;
    }
    if ((p->charFlags.anim0 != 0xD0) && (p->unk14C.arr_s16[0] <= 0xEE) && (p->keyInput2 & gStageData.buttonConfig.attack)) {
        p->charFlags.state1 = 1;
        p->charFlags.someFlag1 = 1;
        var_r1 = sub_801B824;
        goto block_19;
    }
    if (((sub_8015064(p) << 0x10) == 0) && (sub_801C068(p), sub_800E04C(p), temp_r1 = p->moveState, ((0x100 & temp_r1) == 0))) {
        if (!(temp_r1 & 4)) {
            Player_StopSong(p, SE_TAILS__FLYING);
            var_r1 = Player_8005380;
        block_19:
            SetPlayerCallback(p, var_r1);
            return;
        }
        sub_801C1D4(p);
    }
}

void sub_801B824(Player *p)
{
    u32 temp_r1_2;
    u8 temp_r0;
    u8 *temp_r1;

    if (p->unk14C.arr_s16[0] != 0) {
        p->unk14C.arr_s16[0]--;
    }
    if (p->charFlags.state0_highValue != 1) {
        if (((s32)p->qSpeedAirY < -Q(1.5)) || (p->qSpeedAirY = (u16)p->qSpeedAirY - 0x30, ++p->charFlags.state0_highValue == 0x20)) {
            p->charFlags.state0_highValue = 1U;
        }
    } else {
        p->qSpeedAirY += 8;
    }
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        p->charFlags.state1 = 0;
        SetPlayerCallback(p, sub_801B71C);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_800E04C(p);

        if (!(MOVESTATE_100 & p->moveState)) {
            if (!(p->moveState & MOVESTATE_IN_AIR)) {
                Player_StopSong(p, SE_TAILS__FLYING);
                SetPlayerCallback(p, Player_8005380);
            }
        }
    }
}

void sub_801B8DC(Player *p)
{
    u32 temp_r1;
    u8 temp_r0;

    if ((s16)p->unk14C.arr_s16[0] != 0) {
        p->unk14C.arr_s16[0] = (u16)(p->unk14C.arr_s16[0] - 1);
    }
    if (p->charFlags.state0_highValue != 1) {
        if ((p->qSpeedAirY < -Q(0.75)) || (p->qSpeedAirY -= 0x18, ++p->charFlags.state0_highValue == 0x20)) {
            p->charFlags.state0_highValue = 1U;
        }
    } else {
        if ((p->keyInput2 & gStageData.buttonConfig.jump) && ((s32)(s16)p->qSpeedAirY >= -0xC0) && ((s16)p->unk14C.arr_s16[0] != 0)) {
            p->charFlags.state0_highValue = 2U;
        }
        p->qSpeedAirY += 8;
    }
    if (((sub_8015064(p) << 0x10) == 0) && (sub_801B9A8(p), sub_800E04C(p), temp_r1 = p->moveState, ((0x100 & temp_r1) == 0))) {
        if (!(temp_r1 & 4)) {
            SetPlayerCallback(p, Player_8005380);
            return;
        }
        Player_PlayOrContinueSong(p, SE_538);
        sub_801C14C(p);
    }
}

void sub_801B9A8(Player *p)
{
    if (p->unk14C.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xD8;
        Player_StopSong(p, SE_538);
        return;
    }

    if (((0x20 & p->keyInput) && !(p->moveState & 1)) || ((0x10 & p->keyInput) && (p->moveState & 1))) {
        p->charFlags.anim0 = 0xD7;
        return;
    }
    if (p->charFlags.anim0 != 0xCF) {
        p->charFlags.anim0 = 0xD6;
        return;
    }
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        p->charFlags.anim0 = 0xD6;
        Player_PlayOrContinueSong(p, SE_538);
    }
}

void sub_801BA2C(Player *p)
{
    u8 temp_r0 = p->unk148.arr_u8[3];

    if (temp_r0 == 0) {
        sub_801BAFC(p);
    } else {
        if (--p->unk148.arr_u8[3] == 0) {
            p->charFlags.state1 = 0;
        }
    }
    if (p->unk14C.arr_s16[0] != 0) {
        p->unk14C.arr_s16[0]--;
    }
    if ((u8)p->charFlags.state0_highValue != 1) {
        if ((p->qSpeedAirY < -Q(1)) || (p->qSpeedAirY -= Q(32. / 256.), ++p->charFlags.state0_highValue == 0x20)) {
            p->charFlags.state0_highValue = 1U;
        }
    } else {
        if ((p->keyInput2 & gStageData.buttonConfig.jump) && (p->qSpeedAirY >= -Q(1)) && (p->unk14C.arr_s16[0] != 0)) {
            p->charFlags.state0_highValue = 2U;
        }
        p->qSpeedAirY += Q(8. / 256.);
    }
    sub_801BC48(p);

    if (!sub_8015064(p)) {
        sub_8016D30(p);
        sub_801C098(p);
        sub_801C14C(p);
    }
}

void sub_801BAFC(Player *p)
{
    if (p->charFlags.anim0 == 0xDA) {
        if (p->spriteInfoBody->s.frameFlags & 0x4000) {
            if (p->moveState & 1) {
                p->moveState = p->moveState & ~1;
            } else {
                p->moveState = p->moveState | 1;
            }
            p->charFlags.anim0 = 0xD9;
        }
    } else {
        if (0x20 & p->keyInput) {
            if (!(p->moveState & 1)) {
                p->charFlags.anim0 = 0xDA;
            }
            p->qSpeedAirX -= 0x20;
        } else if (0x10 & p->keyInput) {
            if (p->moveState & 1) {
                p->charFlags.anim0 = 0xDA;
            }
            p->qSpeedAirX += 0x20;
        }
    }
    if (ABS(p->qSpeedAirX) < 8) {
        p->qSpeedAirX = 0;
    } else if (ABS(p->qSpeedAirX) > Q(3)) {
        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX = -Q(3);
        } else {
            p->qSpeedAirX = +Q(3);
        }
    } else {
        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX += 8;
        } else {
            p->qSpeedAirX -= 8;
        }
    }
    if ((p->unk14C.arr_s16[0] != 0) && (p->keyInput2 & gStageData.buttonConfig.attack)) {
        p->unk148.arr_u8[3] = 0x3C;
        p->charFlags.anim0 = 0xD9;
        p->charFlags.anim2 = 0x18C;
        p->charFlags.state1 = 1;
        Player_PlaySong(p, SE_538);
        if (p->moveState & 1) {
            p->qSpeedAirX = -Q(3);
        } else {
            p->qSpeedAirX = +Q(3);
        }
    }

    if (p->qSpeedAirY < Q(0.5)) {
        p->qSpeedAirY += 24;
    } else {
        p->qSpeedAirY -= 24;
    }

    if (gCamera.unk40 > 0) {
        gCamera.unk40 -= 2;
    } else if (gCamera.unk40 < 0) {
        gCamera.unk40 += 4;
    }
}

void sub_801BC48(Player *p)
{
    u16 temp_r1;

    if (p->unk14C.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xD8;
        Player_StopSong(p, SE_538);

        if (DPAD_LEFT & p->keyInput) {
            p->moveState |= MOVESTATE_FACING_LEFT;
        } else if (DPAD_RIGHT & p->keyInput) {
            p->moveState &= ~MOVESTATE_FACING_LEFT;
        }
    } else {
        if (p->unk148.arr_u8[3] != 0) {
            p->charFlags.anim0 = 0xD9;
            p->charFlags.anim2 = 0x18C;
            p->charFlags.state1 = 1;
            if ((s32)p->qSpeedAirX < 0) {
                p->moveState |= MOVESTATE_FACING_LEFT;
                return;
            } else {
                p->moveState &= ~MOVESTATE_FACING_LEFT;
            }
        } else {
            Player_PlayOrContinueSong(p, 0x21A);
        }
    }
}

void sub_801BCCC(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xCA;
    Player_PlaySong(p, SE_TAILS__TAIL_HIT);
    SetPlayerCallback(p, sub_801AF50);
    sub_801AF50(p);
}

void sub_801BD1C(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    Player_800D880(p);
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xCB;
    p->unk14C.arr_s16[0] = 0;
    p->unk14C.arr_s16[1] = 30;
    Player_PlaySong(p, 0x214U);
    SetPlayerCallback(p, sub_801AFEC);
    sub_801AFEC(p);
}

void sub_801BD84(Player *p)
{
    PlayerSpriteInfo *temp_r2;

    Player_800D880(p);
    p->moveState |= 0x8006;
    sub_8012FC0(p);
    p->charFlags.anim0 = 0xCD;
    p->spriteInfoBody->s.frameFlags &= 0xFFFFBFFF;
    Player_PlaySong(p, 0x71U);
    SetPlayerCallback(p, sub_801B258);
    sub_801B258(p);
}

void sub_801BDD8(Player *p)
{
    u32 temp_r1;

    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->unk14C.arr_s16[0] = 0xF0;
    p->charFlags.state0_highValue = 1;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0xCE;
    Player_BoostModeDisengage(p);
    p->moveState = (p->moveState | 0x40004) & ~8;
    SetPlayerCallback(p, sub_801B2E4);
    sub_801B2E4(p);
}

void sub_801BE40(Player *p)
{
    u32 temp_r1;

    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->unk14C.arr_s16[0] = 0x186;
    p->charFlags.state0_highValue = 1;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0xCE;
    Player_BoostModeDisengage(p);
    p->moveState = (p->moveState | 0x20040004) & ~8;
    SetPlayerCallback(p, sub_801B2E4);
}

void sub_801BEA0(Player *p)
{
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->unk14C.arr_s16[0] = 0x78;
    p->charFlags.state0_highValue = 1;
    p->qSpeedAirY = -0x200;
    p->qSpeedAirX = 0;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801B4CC);
    sub_801B4CC(p);
}

void sub_801BF08(Player *p)
{
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->unk14C.arr_s16[0] = 0xF0;
    p->charFlags.state0_highValue = 1;
    p->charFlags.anim0 = 0xD5;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801B71C);
    sub_801B71C(p);
}

void sub_801BF6C(Player *p)
{
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->unk14C.arr_s16[0] = 0xF0;
    p->charFlags.state0_highValue = 1;
    p->charFlags.anim0 = 0xD6;
    Player_BoostModeDisengage(p);
    p->moveState = (p->moveState | 0x40004) & ~8;
    SetPlayerCallback(p, sub_801B8DC);
    sub_801B8DC(p);
}

void sub_801BFD4(Player *p)
{
    p->qSpeedAirY += 0x2A;
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_801C00C(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801C00C(Player *p)
{
    s16 temp_r1;
    s16 var_r0;

    p->unk90 = (s32)p->unk90 >> 1;
    sub_8014940(p);
    temp_r1 = p->qSpeedAirX;
    if ((s32)temp_r1 < -0x80) {
        var_r0 = -0x80;
        goto block_4;
    }
    if ((s32)temp_r1 > 0x80) {
        var_r0 = 0x80;
    block_4:
        p->qSpeedAirX = var_r0;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801C068(Player *p)
{
    if (p->unk14C.arr_s16[0] == 0) {
        p->charFlags.anim0 = 0xD0;
        Player_StopSong(p, 0x78U);
        return;
    }
    p->charFlags.anim0 = 0xD5;
    Player_PlayOrContinueSong(p, 0x78);
}

void sub_801C098(Player *p)
{
    u32 var_r0;
    u32 var_r0_2;

    sub_8012634(p);
    if (!(4 & p->unk148.arr_u8[2])) {
        if ((s32)p->qSpeedAirX <= 0) {
            p->moveState = p->moveState | 1;
        } else {
            p->moveState = p->moveState & ~1;
        }

        if ((s32)((p->unk148.arr_u8[0] + 0x40) << 0x18) <= 0) {
            p->moveState = p->moveState | 1;
        } else {
            p->moveState = p->moveState & ~1;
        }

        p->qSpeedAirY = 0;
        SetPlayerCallback(p, Player_8005380);
        Player_StopSong(p, SE_538);
    }
}

void sub_801C110(Player *p)
{
    s16 sp0;
    s16 qWorldX = I(p->qWorldX);
    s16 qWorldY = I(p->qWorldY);
    sub_8004E20(qWorldX, qWorldY, &sp0);
    if ((p->qWorldY + p->qSpeedAirY) <= Q(sp0 + 4)) {
        p->qSpeedAirY = 0;
    }
}

void sub_801C14C(Player *p)
{
    if (!(p->moveState & 0x80) && (p->unk14C.arr_s16[0] != 0)) {
        switch (p->unkC & 0x180) { /* irregular */
            case 0x0:
                SetPlayerCallback(p, sub_801B2E4);
                break;
            case 0x80:
                SetPlayerCallback(p, sub_801B608);
                break;
            case 0x100:
                SetPlayerCallback(p, sub_801B4CC);
                break;
            case 0x180:
                SetPlayerCallback(p, sub_801B71C);
                break;
        }
        Player_StopSong(p, SE_538);
        Player_PlayOrContinueSong(p, 0x78);
    }
}

void sub_801C1D4(Player *p)
{
    s16 var_r0;
    u32 temp_r1;

    if ((p->moveState & 0x80) && (p->unk14C.arr_s16[0] != 0)) {
        temp_r1 = p->unkC;
        if (0x200000 & temp_r1) {
            SetPlayerCallback(p, sub_801B8DC);
            var_r0 = 0xD6;
            goto block_6;
        }
        if (temp_r1 & 0x400000) {
            SetPlayerCallback(p, sub_801BA2C);
            var_r0 = 0xD9;
        block_6:
            p->charFlags.anim0 = var_r0;
        }
        Player_StopSong(p, 0x78U);
    }
}

void sub_801C234(Player *p)
{
    s16 sp;
    p->moveState &= ~2;
    sub_8012FA0(p);
    p->moveState = (p->moveState & ~4) | 0x40000;
    sub_8004E20(I(p->qWorldX), I(p->qWorldY), &sp);
    p->charFlags.anim0 = 0xF0;
    if ((s32)p->qSpeedAirY <= 0xFF) {
        p->qSpeedAirY = 0x100;
    }
    p->qWorldY = Q(sp) + p->qSpeedAirY;
    p->qSpeedAirY >>= 2;
    p->qSpeedGround = 0;
    p->unk26 = 0;
    sub_8016F28(p);
    sub_8017CA8(p);
    p->charFlags.unk2D_0 = 0;
    SetPlayerCallback(p, sub_801CB68);
    sub_801CB68(p);
}

void sub_801C2D8(Player *p)
{
    u8 *temp_r5;

    p->moveState &= ~2;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0x300;
    p->charFlags.anim0 = 0xEB;
    p->unk26 = 0;
    p->unk148.arr_u8[2] = 0;
    p->idleAndCamCounter = 0xF;
    Player_BoostModeDisengage(p);
    p->unk148.arr_u8[2] |= 4;
    p->moveState |= 0x40004;
    Player_PlaySong(p, 0x74U);
    SetPlayerCallback(p, sub_801CFFC);
    sub_801CFFC(p);
}

void sub_801C348(Player *p)
{
    PlayerSpriteInfo *temp_r2;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 var_r0;

    Player_800D880(p);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->moveState |= 6;
    Player_8012FF0(p);
    p->charFlags.anim0 = 0xED;
    p->charFlags.state1 = 0;
    p->unk26 = 0;

    if (p->moveState & 1) {
        if (p->qSpeedAirX > -Q(4)) {
            p->qSpeedAirX -= Q(4);
            if (p->qSpeedAirX < -Q(6)) {
                p->qSpeedAirX = -Q(6);
            } else if (p->qSpeedAirX > -Q(4)) {
                p->qSpeedAirX = -Q(4);
            }
        }
    } else if (p->qSpeedAirX <= 0x3FF) {
        p->qSpeedAirX += Q(4);
        if (p->qSpeedAirX > Q(6)) {
            p->qSpeedAirX = Q(6);
        } else if (p->qSpeedAirX < Q(4)) {
            p->qSpeedAirX = Q(4);
        }
    }

    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 0x10;
    SetPlayerCallback(p, sub_801D5CC);
    sub_801D5CC(p);
}

void sub_801C414(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        if (p->moveState & 0x10000) {
            p->qWorldY += Q(3);
        } else {
            p->qWorldY -= Q(3);
        }
        p->qSpeedAirY = -Q(3);
        p->charFlags.state1 += 1;
        Player_PlaySong(p, SE_533);
        p->sprColliding = NULL;
        p->moveState = (p->moveState & ~MOVESTATE_COLLIDING_ENT);
        p->moveState |= MOVESTATE_IN_AIR;
        SetPlayerCallback(p, sub_801DAD8);
        return;
    }

    if (!sub_8015064(p)) {
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

// TODO: Fix gotos.
void sub_801C4A0(Player *p)
{
    u8 sp0;
    s32 sp4;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r4;
    s32 var_r6;
    s32 var_r6_2;

    if ((s8)p->unk148.arr_u8[1] >= 0) {
        if (0x20 & p->moveState) {
            goto block_52;
        }
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        if (p->charFlags.anim0 != 0xEE) {
            p->charFlags.anim0 = 0xEF;
        }

        if ((0x40 & p->keyInput) && (p->charFlags.anim2 == 0x23C)) {
            p->moveState = p->moveState & 0xDFFFFFFF;
            p->unk5B = (p->unk5B + 1) & 0xF;
            var_r6_2 = (s8)(u8)p->spriteOffsetY << 8;
            if (p->moveState & 0x10000) {
                var_r6_2 = -var_r6_2;
            }
            p->qWorldY -= var_r6_2;
            sp4 = (s32)0;
            var_r4 = sub_801C884(p);
            p->qWorldY += var_r6_2;
            if (var_r4 > 2) {
                sub_801DE1C(p);
                return;
            }
            if (var_r4 > 0) {
                p->unk26 = sp0;
                p->qSpeedGround = 0;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;
                p->charFlags.anim0 = 0xE9;
                Player_8012FE0(p);
                p->qWorldY += 0xFFFFFB00;
                var_r0 = p->moveState | 4;
                p->moveState = var_r0 & 0xDFFFFFFF;
                SetPlayerCallback(p, sub_801D9D0);
                sub_801D9D0(p);
                return;
            }
            p->charFlags.anim0 = 0xEF;
            p->charFlags.state1 = (u16)0;
            if (p->unk5B == 1) {
                Player_StopSong(p, 0x7DU);
                Player_PlaySong(p, 0x7DU);
            }
            if (var_r4 < 0) {
                return;
            }
            if (p->moveState & 0x10000) {
                p->qWorldY += Q(9);
                var_r4 = sub_8011024(3, p, &sp0, NULL);
                p->qWorldY -= Q(9);
            } else {
                p->qWorldY -= Q(9);
                var_r4 = sub_8011024(2, p, &sp0, NULL);
                p->qWorldY += Q(9);
            }
            if (var_r4 < 0) {
                if (p->moveState & 0x10000) {
                    p->qWorldY += (var_r4 + 1) << 8;
                } else {
                    p->qWorldY -= (var_r4 + 1) << 8;
                }
                var_r4 = 0;
            } else {
                s32 qSpeedAirY;
                if (p->moveState & 0x80) {
                    qSpeedAirY = Q(0.50);
                } else {
                    qSpeedAirY = Q(0.75);
                }
                p->qSpeedAirY = -qSpeedAirY;
                var_r4 = 0;
            }
        } else if ((p->keyInput & 0x80) && (p->charFlags.anim2 == 0x23C)) {
            p->moveState = p->moveState & 0xDFFFFFFF;
            p->unk5B = (p->unk5B + 1) & 0xF;
            var_r6_2 = Q(p->spriteOffsetY);
            if (p->moveState & 0x10000) {
                var_r6_2 = -var_r6_2;
            }
            p->qWorldY += var_r6_2;
            var_r4 = sub_801C884(p);
            p->qWorldY -= var_r6_2;
            if (var_r4 > 0) {
                p->charFlags.anim0 = 0xE9;
                Player_8012FE0(p);
                p->qWorldY -= Q(5);
                p->moveState |= 4;

                p->moveState &= 0xDFFFFFFF;
                SetPlayerCallback(p, sub_801D9D0);
                sub_801D9D0(p);
                return;
            } else {
                if (p->moveState & 0x10000) {
                    var_r4 = sub_8011024(2, p, &sp0, NULL);
                } else {
                    var_r4 = sub_8011024(3, p, &sp0, NULL);
                }

                if (var_r4 < 0) {
                    if (!(p->moveState & 0x10000)) {
                        goto block_50;
                    } else {
                        var_r0_3 = p->qWorldY - Q(var_r4);
                        goto block_51;
                    }
                } else {
                    p->charFlags.anim0 = 0xEF;
                    p->charFlags.state1 = 1;
                    {
                        s32 qSpeedAirY;
                        if (p->moveState & 0x80) {
                            qSpeedAirY = Q(0.50);
                        } else {
                            qSpeedAirY = Q(0.75);
                        }
                        p->qSpeedAirY = +qSpeedAirY;

                        if (p->unk5B == 1) {
                            Player_StopSong(p, 0x7DU);
                            Player_PlaySong(p, 0x7DU);
                        }
                        goto block_47;
                    }
                }
            }
            var_r4 = 1;
        } else {
            p->unk5B = 0;
            var_r4 = sub_801C884(p);
        }

        if (var_r4 <= 0) {
        block_47:
            if (!(0xC0 & p->keyInput) || (p->charFlags.anim2 == 0x23B)) {
                var_r4 = sub_8011024(3, p, &sp0, NULL);
                if (var_r4 < 0) {
                block_50:
                    var_r0_3 = p->qWorldY + (var_r4 << 8);
                block_51:
                    p->qWorldY = var_r0_3;
                    p->unk26 = sp0;
                    p->qSpeedGround = 0;
                    p->qSpeedAirX = 0;
                    p->qSpeedAirY = 0;
                block_52:
                    p->charFlags.anim0 = 0xE9;
                    Player_8012FE0(p);
                    p->qWorldY += 0xFFFFFB00;
                    var_r0 = p->moveState | 4;

                    p->moveState = var_r0 & 0xDFFFFFFF;
                    SetPlayerCallback(p, sub_801D9D0);
                    sub_801D9D0(p);
                    return;
                }
                if ((p->charFlags.anim2 != 0x23B) || (p->spriteInfoBody->s.frameFlags & 0x4000)) {
                    p->charFlags.anim0 = 0xEF;
                    p->charFlags.anim1 = -1;
                }
            }
        } else {
            goto block_52;
        }

        if (p->keyInput2 & gStageData.buttonConfig.jump) {
            if ((p->unkC & 0x1800) == 0x1000) {
                if (p->moveState & 1) {
                    if (0x20 & p->keyInput) {
                        SetPlayerCallback(p, sub_801DE94);
                    } else {
                        SetPlayerCallback(p, Player_800657C);
                    }
                } else if (0x10 & p->keyInput) {
                    SetPlayerCallback(p, sub_801DE94);
                } else {
                    SetPlayerCallback(p, Player_800657C);
                }
            } else {
                SetPlayerCallback(p, Player_800657C);
            }
        }
    } else {
        p->charFlags.anim0 = 0xE9;
        Player_8012FE0(p);
        p->qWorldY += 0xFFFFFB00;
        p->moveState = (p->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(p, sub_801D9D0);
        sub_801D9D0(p);
    }
}

s32 sub_801C884(Player *p)
{
    u8 rotation;
    s32 res;

    if (p->moveState & 1) {
        s32 qWorldX = I(p->qWorldX) - 2;
        res = sub_80517FC(qWorldX - p->spriteOffsetX, I(p->qWorldY), p->layer, -8, &rotation, sub_805203C);
        if (1 & rotation) {
            p->unk26 = +0x40;
        } else {
            p->unk26 = rotation;
        }
    } else {
        s32 qWorldX = I(p->qWorldX) + 2;
        res = sub_80517FC(qWorldX + p->spriteOffsetX, I(p->qWorldY), p->layer, +8, &rotation, sub_805203C);
        if (!(1 & rotation)) {
            p->unk26 = rotation;
        } else {
            p->unk26 = -0x40;
        }
    }
    return res;
}

void sub_801C934(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & 0x4000) {
        p->unk26 = 0;

        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->qWorldY = p->qWorldY + Q(p->spriteOffsetY);
        } else {
            p->qWorldY = p->qWorldY - Q(p->spriteOffsetY);
        }

        if (p->moveState & 1) {
            p->qWorldX += -Q(16);
        } else {
            p->qWorldX += +Q(16);
        }

        Player_8005380(p);
    } else if (p->moveState & 0x20) {
        p->charFlags.anim0 = 233;
        Player_8012FE0(p);
        p->qWorldY -= Q(5);
        p->moveState = (p->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(p, sub_801D9D0);
        sub_801D9D0(p);
    } else if (!sub_8015064(p)) {
        sub_8016D30(p);
    }
}

// TODO: Fake-match!
void sub_801CA00(Player *p)
{
    s16 temp_r1_3;
    s32 qSpeedGround;
    s16 *temp_r0_2;
    s32 temp_r0;
    s32 temp_r0_4;
    s32 temp_r1_2;
    u16 temp_r0_3;
    s16 var_r4;
    u32 temp_r2;
    u32 temp_r4;
    u32 var_r2;
    u32 var_r2_2;

#ifndef NON_MATCHING
    register s32 var_r3 asm("r3") = 0;
#else
    s32 var_r3 = 0;
#endif

    if (p->moveState & 0x20) {
        p->charFlags.anim0 = 0xE9;
        Player_8012FE0(p);
        p->qWorldY += 0xFFFFFB00;
        p->moveState = (p->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(p, sub_801D9D0);
        sub_801D9D0(p);
        return;
    } else {
        if (p->moveState & 1) {
            if (DPAD_LEFT & p->keyInput) {
                var_r3 = 1;
            }
        } else {
            if (DPAD_RIGHT & p->keyInput) {
                var_r3 = 1;
            }
        }

        if (var_r3 == 0) {
            p->moveState &= ~0x10;

            var_r4 = I(p->Spindash_Velocity);
            if (var_r4 > 8) {
                var_r4 = 8;
            }
            qSpeedGround = gUnknown_080CE5B8[var_r4];
            if (p->moveState & MOVESTATE_FACING_LEFT) {
                qSpeedGround = -qSpeedGround;
            }
            if (0x10000 & p->moveState) {
                if (p->moveState & 1) {
                    p->moveState = p->moveState & ~1;
                } else {
                    p->moveState = p->moveState | 1;
                }
            }
            p->qSpeedGround = qSpeedGround;
            Player_800891C(p);
            Player_PlaySong(p, 0x6EU);
            return;
        } else {
#ifndef NON_MATCHING
            asm("" ::"r"(var_r3));
#endif
            var_r4 = p->Spindash_Velocity;
            temp_r1_3 = var_r4;
            if (temp_r1_3 != 0) {
                var_r4 = temp_r1_3 - (p->Spindash_Velocity >> 5);
                if (var_r4 <= 0) {
                    var_r4 = 0;
                }
            }
            if (p->keyInput2 & gStageData.buttonConfig.jump) {
                s32 q8;
                var_r4 += 0x0200;

#ifndef NON_MATCHING
                asm("mov %0, %1" : "=r"(temp_r1_3) : "r"(var_r4));
#else
                temp_r1_3 = var_r4;
#endif
                if (var_r4 < (q8 = Q(8))) {
                    temp_r1_3 = q8;
                }
#ifndef NON_MATCHING
                asm("mov %0, %1" : "=r"(var_r4) : "r"(temp_r1_3));
#else
                var_r4 = temp_r1_3;
#endif
                Player_PlaySong(p, SE_SPIN_ATTACK);
            }
            p->Spindash_Velocity = (s16)var_r4;
            if (!sub_8015064(p)) {
                sub_8012EB8(p);
                if ((p->moveState & 0x104) == 4) {
                    Player_8012FE0(p);
                    p->charFlags.anim0 = 0x18;
                    Player_800DAF4(p);
                }
            }
        }
    }
}

// TODO: Fix gotos!
void sub_801CB68(Player *p)
{
    s16 temp_r0;
    s16 temp_r0_2;

    if ((sub_801480C(p) << 0x10) != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    temp_r0_2 = temp_r0;
    switch (temp_r0_2) {
        case 0:
        case 1:
            p->charFlags.anim0 = 0xF0;

            goto def;
            break;
        case 2:
            sub_801DEE4(p);
            break;
        case 3:
            p->charFlags.anim0 = 0xF1;
            goto def;
            break;
        case 4:
            p->moveState = (p->moveState | 4) & 0xFFFBFFFF;
            p->qSpeedGround = 0;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = 0;
            p->charFlags.anim0 = 0x18;
            Player_800DAF4(p);
            break;
        default:
        def:
            if (!sub_8015064(p)) {
                sub_8017004(p);
            }
            break;
    }
}

void sub_801CC14(Player *p)
{
    s16 temp_r0;
    s32 temp_r6;
    s16 *temp_r1;
    s16 *temp_r2;

    temp_r6 = sub_801480C(p);
    if (temp_r6 != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    if (temp_r0 != 2) {
        SetPlayerCallback(p, sub_801CB68);
        sub_801CB68(p);
        p->qCamOffsetY = temp_r6;
        return;
    }

    if (p->idleAndCamCounter > 0) {
        p->idleAndCamCounter--;
    } else {
        if (p->qCamOffsetY > -1104) {
            p->qCamOffsetY -= 0x20;
        }
    }
    if (!sub_8015064(p)) {
        sub_8017004(p);
    }
}

void sub_801CCB4(Player *p)
{
    s16 temp_r0;
    s16 temp_r0_2;
    u32 temp_r1;
    u8 *temp_r5;

    p->moveState &= ~2;
    sub_8012F94(p, 6, 6);
    p->qSpeedAirY += Q(1.5);
    if (p->qSpeedAirY < 0) {
        p->qSpeedAirY = 0;
    }
    p->qSpeedGround = 0x300;
    temp_r1 = p->moveState;
    if (temp_r1 & 0x80) {
        p->qSpeedGround >>= 1;
    }
    if (temp_r1 & 1) {
        p->qSpeedAirX = p->qSpeedGround = -p->qSpeedGround;
        p->unk148.arr_u8[0] = 0x80;
    } else {
        p->qSpeedAirX = (s16)(u16)p->qSpeedGround;
        p->unk148.arr_u8[0] = 0;
    }
    p->unk26 = 0;
    p->unk148.arr_u8[2] = 0;
    Player_BoostModeDisengage(p);
    p->unk148.arr_u8[2] |= 4;
    p->moveState |= 0x40004;
}

#if 0
void sub_801CD50(Player *arg0) {
    s32 sp14;
    Player *temp_r2;
    s16 temp_r3_2;
    s32 var_r7;
    u16 temp_r2_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u8 temp_r3;

    var_r7 = 0;
    memcpy(&subroutine_arg0, &gUnknown_080CECD0, 0x14);
    memcpy(&sp14, &gUnknown_080CECE4, 0x14);
    sub_801D1D0(arg0);
    if ((sub_801D2FC(arg0) << 0x10) == 0) {
        sub_801CE94(arg0);
    }
    temp_r1 = arg0->moveState;
    if (0x02000000 & temp_r1) {
        temp_r3 = arg0->unk2B;
        temp_r2 = &gPlayers[(u32) (temp_r3 << 0x1E) >> 0x1E];
        if (((u32) gStageData.gameMode <= 4U) || ((0x1C & temp_r3) == 8) || ((0x1C & temp_r2->unk2B) == 8)) {
            temp_r3_2 = temp_r2->charFlags.anim0;
            temp_r1_2 = temp_r2->unk2A << 0x1C;
            if ((temp_r3_2 != *((temp_r1_2 >> 0x1A) + sp)) && (temp_r3_2 != *(&subroutine_arg0 + 2 + (temp_r1_2 >> 0x1A)))) {
                goto block_13;
            }
            goto block_12;
        }
        temp_r1_3 = temp_r2->unk2A << 0x1C;
        temp_r2_2 = temp_r2->charFlags.anim2;
        if ((temp_r2_2 != *(&sp14 + (temp_r1_3 >> 0x1A))) && (temp_r2_2 != *(&subroutine_arg0 + 0x16 + (temp_r1_3 >> 0x1A)))) {
            var_r7 = 1;
        }
block_12:
        if (var_r7 != 0) {
block_13:
            arg0->moveState = 0xDDFBFFFF & temp_r1;
            Player_8012FE0(arg0);
            arg0->charFlags.anim0 = 0x18;
            Player_800DAF4(arg0);
            return;
        }
        goto block_18;
    }
    if ((arg0->unkC & 0x400) && (arg0->unkB8 != -1U) && (gStageData.buttonConfig.attack & arg0->keyInput)) {
        Player_8007620(arg0);
        return;
    }
block_18:
    sub_8016D30(arg0);
    sub_8015064(arg0);
}

void sub_801CE94(Player *arg0) {
    Player *temp_r5;
    u32 var_r0;
    u32 var_r3;

    temp_r5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    var_r3 = 0;
    if (gStageData.buttonConfig.jump & arg0->keyInput2) {
        var_r3 = (u32) (0 - (arg0->moveState & 0x02000000)) >> 0x1F;
    }
    if (!(gStageData.buttonConfig.jump & arg0->keyInput) && !(arg0->moveState & 0x02000000)) {
        var_r3 = 1;
    }
    if (var_r3 != 0) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    sub_801CF4C(arg0);
    if (arg0->moveState & 0x02000000) {
        temp_r5->qWorldX = arg0->qWorldX + arg0->qSpeedAirX;
        temp_r5->qWorldY = arg0->qWorldY + arg0->qSpeedAirY;
    }
}

void sub_801CF4C(Player *arg0) {
    s8 temp_r1;
    u32 temp_r2;
    u8 var_r4;

    var_r4 = arg0->unk148.ptr;
    temp_r2 = arg0->moveState & ~0x41;
    arg0->moveState = temp_r2;
    temp_r1 = (s8) var_r4;
    if (!(temp_r1 & 0x7F)) {
        arg0->charFlags.anim0 = 0xE7;
        if (var_r4 == 0x80) {
            arg0->moveState = temp_r2 | 1;
        }
    } else {
        if ((s32) temp_r1 < 0) {
            var_r4 = 0 - temp_r1;
        }
        arg0->charFlags.anim0 = 0xE8;
        arg0->charFlags.anim2 = 0x203;
        arg0->charFlags.state1 = (u16) ((u32) (var_r4 & 0x7F) >> 5);
    }
}

void sub_801CFA4(Player *arg0) {
    s8 temp_r1;
    u32 temp_r2;
    u8 var_r4;

    var_r4 = arg0->unk148.ptr;
    temp_r2 = arg0->moveState & ~0x41;
    arg0->moveState = temp_r2;
    temp_r1 = (s8) var_r4;
    if (!(temp_r1 & 0x7F)) {
        arg0->charFlags.anim0 = 0xF3;
        if (var_r4 == 0x80) {
            arg0->moveState = temp_r2 | 1;
        }
    } else {
        if ((s32) temp_r1 < 0) {
            var_r4 = 0 - temp_r1;
        }
        arg0->charFlags.anim0 = 0xE8;
        arg0->charFlags.anim2 = 0x203;
        arg0->charFlags.state1 = (u16) ((u32) (var_r4 & 0x7F) >> 5);
    }
}

void sub_801CFFC(Player *arg0) {
    s16 *temp_r1;
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r2;
    u32 temp_r1_2;
    u8 *temp_r0_2;

    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if (!(arg0->moveState & 0x100)) {
            temp_r1 = &arg0->idleAndCamCounter;
            temp_r0 = (u16) *temp_r1 - 1;
            *temp_r1 = temp_r0;
            temp_r2 = temp_r0;
            if (temp_r2 == 0) {
                *temp_r1 = 0xE;
                arg0->moveState &= ~2;
                temp_r0_2 = &arg0->unk24;
                temp_r0_2->unk0 = 6;
                temp_r0_2->unk1 = 6;
                temp_r0_3 = (u16) arg0->qSpeedAirY + 0x180;
                arg0->qSpeedAirY = temp_r0_3;
                if ((s32) (temp_r0_3 << 0x10) < 0) {
                    arg0->qSpeedAirY = temp_r2;
                }
                arg0->qSpeedGround = 0x300;
                temp_r1_2 = arg0->moveState;
                if (temp_r1_2 & 0x80) {
                    arg0->qSpeedGround = (s16) (0x300 >> 1);
                }
                if (temp_r1_2 & 1) {
                    temp_r0_4 = 0 - (u16) arg0->qSpeedGround;
                    arg0->qSpeedGround = temp_r0_4;
                    arg0->qSpeedAirX = temp_r0_4;
                    arg0->unk148 = 0x80;
                } else {
                    arg0->qSpeedAirX = (s16) (u16) arg0->qSpeedGround;
                    arg0->unk148 = 0;
                }
                arg0->charFlags.anim0 = 0xEC;
                arg0->unk26 = 0;
                arg0->unk14A = 0U;
                Player_BoostModeDisengage(arg0);
                arg0->unk14A = (u8) (4 | arg0->unk14A);
                arg0->moveState |= 0x40004;
                SetPlayerCallback(arg0, sub_801DCDC);
            }
        }
    }
}

void sub_801D0E8(Player *arg0) {
    u32 temp_r4;
    u32 var_r5;

    var_r5 = 0;
    if (gStageData.buttonConfig.jump & arg0->keyInput2) {
        var_r5 = (u32) (0 - (arg0->moveState & 0x02000000)) >> 0x1F;
    }
    temp_r4 = arg0->moveState;
    if (!(gStageData.buttonConfig.jump & arg0->keyInput) && !(0x02000000 & temp_r4)) {
        var_r5 = 1;
    }
    if (0x80 & temp_r4) {
        var_r5 = 1;
    }
    if (var_r5 != 0) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            arg0->moveState = temp_r4 | 1;
        } else {
            arg0->moveState = temp_r4 & ~1;
        }
        arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    sub_801D16C(arg0);
}

void sub_801D16C(Player *arg0) {
    s8 temp_r1;
    u32 temp_r2;
    u8 var_r4;

    var_r4 = arg0->unk148.ptr;
    temp_r2 = arg0->moveState & ~0x41;
    arg0->moveState = temp_r2;
    temp_r1 = (s8) var_r4;
    if (!(temp_r1 & 0x7F)) {
        arg0->charFlags.anim0 = 0xEC;
        if (var_r4 == 0x80) {
            arg0->moveState = temp_r2 | 1;
        }
    } else {
        if ((s32) temp_r1 < 0) {
            var_r4 = 0 - temp_r1;
        }
        arg0->charFlags.anim0 = 0xE8;
        arg0->charFlags.anim2 = 0x203;
        arg0->charFlags.state1 = (u16) ((u32) (var_r4 & 0x7F) >> 5);
        SetPlayerCallback(arg0, sub_801CD50);
    }
}

void sub_801D1D0(Player *arg0) {
    s16 var_r3;
    s32 var_r0_3;
    s8 temp_r0;
    s8 temp_r0_2;
    s8 temp_r1_2;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 var_r0;
    u8 var_r2;

    var_r3 = arg0->qSpeedGround;
    if ((s32) var_r3 < 0) {
        var_r3 = 0 - var_r3;
    }
    var_r2 = arg0->unk148.ptr;
    if ((s32) var_r3 <= 0x2FF) {
        var_r3 += 6;
    } else if (((s32) var_r3 <= 0xEFF) && !(0x7F & var_r2)) {
        var_r3 += 3;
    }
    if ((arg0->moveState & 0x80) && ((s32) var_r3 > 0x300)) {
        var_r3 -= 9;
        if ((s32) var_r3 < 0x300) {
            var_r3 = 0x300;
        }
    }
    if ((s32) ((arg0->unk148 + 0x40) << 0x18) <= 0) {
        arg0->qSpeedGround = 0 - var_r3;
    } else {
        arg0->qSpeedGround = var_r3;
    }
    temp_r1 = arg0->keyInput;
    if (0x20 & temp_r1) {
        if (var_r2 != 0x80) {
            temp_r0 = (s8) var_r2;
            if ((s32) temp_r0 < 0) {
                var_r2 = 0 - temp_r0;
            }
            var_r0 = (var_r2 << 0x18) + 0x02000000;
            goto block_26;
        }
    } else if (0x10 & temp_r1) {
        temp_r0_2 = (s8) var_r2;
        if (temp_r0_2 != 0) {
            if ((s32) temp_r0_2 > 0) {
                var_r2 = 0 - temp_r0_2;
            }
            var_r0 = (var_r2 << 0x18) + 0x02000000;
            goto block_26;
        }
    } else {
        temp_r1_2 = (s8) var_r2;
        if (0x7F & temp_r1_2) {
            var_r0 = (temp_r1_2 + 2) << 0x18;
block_26:
            var_r2 = (u8) (var_r0 >> 0x18);
        }
    }
    arg0->unk148 = var_r2;
    arg0->qSpeedAirX = (s16) ((s32) (var_r3 * ((s32) (*(((u32) (var_r2 << 0x18) >> 0x15) + 0x200 + gSineTable) << 0x10) >> 0x16)) >> 8);
    temp_r1_3 = arg0->qSpeedAirY;
    if ((s32) (s16) arg0->qSpeedAirY <= 0x7F) {
        var_r0_2 = temp_r1_3 + 0x18;
    } else {
        var_r0_2 = temp_r1_3 - 0x18;
    }
    arg0->qSpeedAirY = var_r0_2;
    if ((s32) gCamera.unk40 > 0) {
        var_r0_3 = gCamera.unk40 - 2;
        goto block_34;
    }
    if ((s32) gCamera.unk40 < 0) {
        var_r0_3 = gCamera.unk40 + 4;
block_34:
        gCamera.unk40 = var_r0_3;
    }
}

s32 sub_801D2FC(Player *arg0) {
    u32 var_r0;
    u32 var_r0_2;
    u8 temp_r1;

    sub_8012634();
    temp_r1 = arg0->unk14A;
    if (!(4 & temp_r1)) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        if ((((arg0->unk26 + 0x20) & ~0x3F) << 0x18) != 0) {
            if ((s32) ((arg0->unk148 + 0x40) << 0x18) <= 0) {
                var_r0_2 = arg0->moveState | 1;
            } else {
                var_r0_2 = arg0->moveState & ~1;
            }
            arg0->moveState = var_r0_2;
            arg0->qSpeedAirY = 0;
            sub_8012BA4(arg0);
            SetPlayerCallback(arg0, Player_8005380);
        } else {
            SetPlayerCallback(arg0, sub_801DD2C);
            arg0->charFlags.anim0 = 0xEA;
            arg0->moveState &= ~4;
            sub_8012F74(arg0, 6U, 6);
            Player_PlaySong(arg0, 0x6FU);
        }
        goto block_13;
    }
    if (0x40 & temp_r1) {
        if ((s32) (s8) arg0->unk149 >= 0) {
            sub_801D3F0(arg0);
            arg0->qSpeedGround = 0;
            arg0->qSpeedAirX = 0;
            arg0->qSpeedAirY = 0;
            SetPlayerCallback(arg0, sub_801D8E8);
        }
block_13:
        return 1;
    }
    return 0;
}

void sub_801D3F0(Player *arg0) {
    u32 sp8;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 var_r0;

    if ((s32) ((arg0->unk148 + 0x40) << 0x18) <= 0) {
        arg0->moveState |= 1;
        temp_r0 = sub_8011024(0U, arg0, NULL, &sp8);
        if (temp_r0 != sp8) {
            goto block_14;
        }
        if (temp_r0 == 0) {
            return;
        }
        temp_r3 = arg0->moveState & 0x10000;
        if (temp_r3 != 0) {
            if (sub_80517FC((((s32) arg0->qWorldY >> 8) - 1) - (s8) (u8) arg0->unk25, (((s32) arg0->qWorldX >> 8) - 1) - (s8) arg0->unk24, (s32) arg0->layer, -8, NULL, sub_805217C) < 0) {
                goto block_14;
            }
            goto block_9;
        }
        if (sub_80517FC(((s32) arg0->qWorldY >> 8) + 1 + (s8) (u8) arg0->unk25, (((s32) arg0->qWorldX >> 8) - 1) - (s8) arg0->unk24, (s32) arg0->layer, 8, (void *) temp_r3, sub_805217C) >= 0) {
block_9:
            var_r0 = arg0->qWorldX - (temp_r0 << 8);
            goto block_16;
        }
        goto block_14;
    }
    arg0->moveState &= ~1;
    temp_r0_2 = sub_8011024(1U, arg0, NULL, &sp8);
    if (temp_r0_2 == sp8) {
        if (temp_r0_2 != 0) {
            temp_r3_2 = arg0->moveState & 0x10000;
            if ((temp_r3_2 == 0) && (sub_80517FC(((s32) arg0->qWorldY >> 8) + 1 + (s8) (u8) arg0->unk25, ((s32) arg0->qWorldX >> 8) + 1 + (s8) arg0->unk24, (s32) arg0->layer, 8, (void *) temp_r3_2, sub_805217C) < 0)) {
                goto block_14;
            }
            var_r0 = arg0->qWorldX + (temp_r0_2 << 8);
block_16:
            arg0->qWorldX = var_r0;
        }
    } else {
block_14:
        SetPlayerCallback(arg0, sub_801DF80);
    }
}

void sub_801D550(Player *arg0) {
    s16 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    temp_r1 = arg0->qSpeedAirX;
    if ((s32) (s16) arg0->qSpeedAirX <= 0) {
        temp_r0 = temp_r1 + 0x18;
        arg0->qSpeedAirX = temp_r0;
        if ((s32) (temp_r0 << 0x10) < 0) {
            goto block_4;
        }
        goto block_5;
    }
    temp_r0_2 = temp_r1 - 0x18;
    arg0->qSpeedAirX = temp_r0_2;
    if ((s32) (temp_r0_2 << 0x10) > 0) {
block_4:
        sub_801DD68(arg0);
        return;
    }
block_5:
    temp_r1_2 = arg0->moveState & 4;
    if (temp_r1_2 != 0) {
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    arg0->qSpeedGround = temp_r1_2;
    arg0->qSpeedAirX = temp_r1_2;
    arg0->qSpeedAirY = temp_r1_2;
    sub_8012BA4(arg0);
    arg0->unk4E = 0xF;
    Player_8005380(arg0);
    sub_8012EA8(arg0);
    SetPlayerCallback(arg0, Player_8005380);
}

void sub_801D5CC(Player *arg0) {
    s16 *temp_r1;
    s16 temp_r0;
    u32 temp_r1_2;
    u32 temp_r1_3;

    temp_r1 = &arg0->idleAndCamCounter;
    if (*temp_r1 != 0) {
        temp_r0 = (u16) *temp_r1 - 1;
        *temp_r1 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            arg0->qSpeedAirY = -0x180;
            Player_PlaySong(arg0, 0x70U);
        }
        sub_8017004(arg0);
        temp_r1_2 = arg0->moveState;
        if ((0x24 & temp_r1_2) != 4) {
            arg0->moveState = temp_r1_2 | 2;
            sub_8012FC0(arg0);
            arg0->charFlags.state1 = 1;
            SetPlayerCallback(arg0, sub_801D684);
        }
    } else if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        temp_r1_3 = arg0->moveState;
        if (!(0x100 & temp_r1_3) && ((0x24 & temp_r1_3) != 4)) {
            arg0->moveState = temp_r1_3 | 2;
            sub_8012FC0(arg0);
            arg0->charFlags.state1 = 1;
            SetPlayerCallback(arg0, sub_801D684);
        }
    }
}

void sub_801D684(Player *arg0) {
    s16 temp_r1;
    s16 var_r0;
    u16 temp_r0;

    if (arg0->spriteInfoBody->s.frameFlags & 0x4000) {
        SetPlayerCallback(arg0, Player_800891C);
        return;
    }
    temp_r0 = (u16) arg0->qSpeedGround;
    temp_r1 = arg0->qSpeedGround;
    if ((s32) temp_r1 > 0) {
        var_r0 = temp_r0 - 8;
        goto block_6;
    }
    if ((s32) temp_r1 < 0) {
        var_r0 = temp_r0 + 8;
block_6:
        arg0->qSpeedGround = var_r0;
    }
    if ((u32) (u16) ((u16) arg0->qSpeedGround + 0x7F) <= 0xFEU) {
        arg0->qSpeedGround = 0;
    }
    if (arg0->qSpeedGround == 0) {
        Player_8005380(arg0);
        sub_8012EA8(arg0);
        return;
    }
    sub_8015144(arg0);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        Player_801479C(arg0);
        sub_8016D30(arg0);
        sub_8014E70(arg0);
        if ((sub_801480C(arg0) << 0x10) == 0) {
            sub_8012EB8(arg0);
            sub_8016E00(arg0);
            if (arg0->moveState & 4) {
                SetPlayerCallback(arg0, Player_800DB30);
            }
        }
    }
}

void Player_801D73C(Player *arg0) {
    s16 *temp_r1;
    s16 temp_r0;
    s16 var_r0;

    temp_r1 = &arg0->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        if (gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E].moveState & 1) {
            var_r0 = -0x700;
        } else {
            var_r0 = 0x700;
        }
        arg0->qSpeedAirX = var_r0;
        arg0->qSpeedAirY = -0x200;
        arg0->moveState |= 4;
        arg0->charFlags.anim0 = 0x14;
        arg0->charFlags.anim2 = 0x1FC;
        arg0->charFlags.state1 = 1;
        SetPlayerCallback(arg0, Player_801DF18);
    }
}

void sub_801D7B0(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->moveState |= 0x8000;
    arg0->charFlags.anim0 = 0xE2;
    Player_PlaySong(arg0, 0x7EU);
    arg0->qSpeedGround = 0;
    SetPlayerCallback(arg0, sub_801DA04);
    sub_801DA04(arg0);
}

void sub_801D804(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->moveState |= 0x8000;
    arg0->charFlags.anim0 = 0xE3;
    SetPlayerCallback(arg0, sub_801C414);
    sub_801C414(arg0);
}

void sub_801D84C(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->moveState |= 0x8004;
    arg0->charFlags.anim0 = 0xE5;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0x100;
    Player_PlaySong(arg0, 0xE2U);
    SetPlayerCallback(arg0, sub_801DB20);
    sub_801DB20(arg0);
}

void sub_801D8A8(Player *arg0) {
    s16 temp_r1;
    s16 var_r0;

    sub_801CCB4();
    arg0->charFlags.anim0 = 0xE7;
    temp_r1 = arg0->qSpeedAirY;
    var_r0 = 0x300;
    if (((s32) temp_r1 > 0x300) || (var_r0 = 0xFFFFFD00, ((s32) temp_r1 < 0xFFFFFD00))) {
        arg0->qSpeedAirY = var_r0;
    }
    SetPlayerCallback(arg0, sub_801CD50);
    sub_801CD50(arg0);
}

void sub_801D8E8(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    arg0->unk148 = 3;
    arg0->charFlags.anim0 = 0xEE;
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    arg0->moveState = (arg0->moveState & ~0xE) | 0x40000;
    sub_8012F94(arg0, 6U, 0xA);
    arg0->unk2D = (u8) (-0x10 & arg0->unk2D);
    SetPlayerCallback(arg0, sub_801DDF4);
    sub_801DDF4(arg0);
}

void sub_801D950(Player *arg0) {
    sub_801CCB4();
    arg0->charFlags.anim0 = 0xF3;
    SetPlayerCallback(arg0, sub_801DC34);
    sub_801DC34(arg0);
}

void sub_801D978(Player *p) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x20008004;
    p->charFlags.anim0 = 0xF6;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 0x14;
    SetPlayerCallback(p, Player_801D73C);
    Player_801D73C(p);
}

void sub_801D9D0(Player *arg0) {
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801DA04(Player *arg0) {
    sub_8015144(arg0);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        Player_801479C(arg0);
        sub_8016D30(arg0);
        sub_8014E70(arg0);
        sub_8012EB8(arg0);
        sub_8016E00(arg0);
        if (!(arg0->moveState & 0x100) && (arg0->spriteInfoBody->s.frameFlags & 0x4000)) {
            Player_PlaySong(arg0, 0x7EU);
            arg0->charFlags.state1 += 1;
            SetPlayerCallback(arg0, sub_801DA74);
        }
    }
}

void sub_801DA74(Player *arg0) {
    sub_8015144(arg0);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        Player_801479C(arg0);
        sub_8016D30(arg0);
        sub_8014E70(arg0);
        sub_8012EB8(arg0);
        sub_8016E00(arg0);
        if (!(arg0->moveState & 0x100) && (arg0->spriteInfoBody->s.frameFlags & 0x4000)) {
            SetPlayerCallback(arg0, Player_8005380);
        }
    }
}

void sub_801DAD8(Player *arg0) {
    if ((s32) arg0->qSpeedAirY > 0) {
        SetPlayerCallback(arg0, Player_800DAF4);
        return;
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801DB20(Player *arg0) {
    if ((sub_8015064(arg0) << 0x10) == 0) {
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if (!(arg0->moveState & 0x100) && (arg0->spriteInfoBody->s.frameFlags & 0x4000)) {
            arg0->charFlags.state1 += 1;
            SetPlayerCallback(arg0, sub_801DB70);
        }
    }
}

void sub_801DB70(Player *arg0) {
    void (*temp_r1)(Player *);

    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if (!(arg0->moveState & 0x100) && ((temp_r1 = arg0->callback, (temp_r1 == Player_8005380)) || (temp_r1 == Player_80077CC))) {
            arg0->charFlags.state1 += 1;
            SetPlayerCallback(arg0, sub_801DBD0);
        }
    }
}

void sub_801DBD0(Player *arg0) {
    sub_8015144(arg0);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        Player_801479C(arg0);
        sub_8016D30(arg0);
        sub_8014E70(arg0);
        sub_8012EB8(arg0);
        sub_8016E00(arg0);
        if (!(arg0->moveState & 0x100) && (arg0->spriteInfoBody->s.frameFlags & 0x4000)) {
            SetPlayerCallback(arg0, Player_8005380);
        }
    }
}

void sub_801DC34(Player *arg0) {
    sub_801D1D0();
    if ((sub_801D2FC(arg0) << 0x10) == 0) {
        sub_801DC60(arg0);
    }
    sub_8016D30(arg0);
    sub_8015064(arg0);
}

void sub_801DC60(Player *arg0) {
    u32 var_r0;
    u32 var_r4;

    var_r4 = 0;
    if (gStageData.buttonConfig.jump & arg0->keyInput2) {
        var_r4 = (u32) (0 - (arg0->moveState & 0x02000000)) >> 0x1F;
    }
    if (!(gStageData.buttonConfig.jump & arg0->keyInput) && !(arg0->moveState & 0x02000000)) {
        var_r4 = 1;
    }
    if (var_r4 != 0) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    sub_801CFA4(arg0);
}

void sub_801DCDC(Player *arg0) {
    s16 *temp_r1;
    s16 temp_r0;

    temp_r1 = &arg0->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        SetPlayerCallback(arg0, sub_801DD00);
    }
}

void sub_801DD00(Player *arg0) {
    sub_801D1D0();
    if ((sub_801D2FC(arg0) << 0x10) == 0) {
        sub_801D0E8(arg0);
    }
    sub_8016D30(arg0);
    sub_8015064(arg0);
}

void sub_801DD2C(Player *arg0) {
    sub_801D550();
    if (arg0->moveState & 4) {
        sub_8016E50(arg0);
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        sub_8014E70(arg0);
        sub_8016E00(arg0);
    }
}

void sub_801DD68(Player *arg0) {
    s32 var_r2;

    sub_8012634();
    var_r2 = sub_8012E18(1, arg0, &subroutine_arg0, NULL);
    if (var_r2 <= 0xB) {
        if (arg0->moveState & 0x10000) {
            var_r2 = 0 - var_r2;
        }
        arg0->qWorldY += var_r2 << 8;
        arg0->unk26 = subroutine_arg0;
        return;
    }
    if (!(arg0->moveState & 0x20)) {
        arg0->charFlags.anim0 = 0xE9;
        Player_8012FE0(arg0);
        arg0->qWorldY += 0xFFFFFB00;
        arg0->moveState = (arg0->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(arg0, sub_801D9D0);
        sub_801D9D0(arg0);
    }
}

void sub_801DDF4(Player *arg0) {
    sub_801C4A0();
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        sub_8017004(arg0);
    }
}

void sub_801DE1C(Player *arg0) {
    PlayerSpriteInfo *temp_r2;
    s32 var_r0;
    u32 temp_r0;

    arg0->charFlags.anim0 = 0xF5;
    temp_r0 = arg0->moveState & 0xDFFFFFFF;
    arg0->moveState = temp_r0;
    if (temp_r0 & 0x10000) {
        var_r0 = arg0->qWorldY + (arg0->unk25 << 8);
    } else {
        var_r0 = arg0->qWorldY - (arg0->unk25 << 8);
    }
    arg0->qWorldY = var_r0;
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    arg0->unk148 = 0;
    SetPlayerCallback(arg0, sub_801C934);
    sub_801C934(arg0);
}

void sub_801DE94(Player *arg0) {
    Player_800D880(arg0);
    arg0->moveState |= 0x12;
    arg0->charFlags.anim0 = 0xF4;
    sub_8012FC0(arg0);
    arg0->Spindash_Velocity = 0x200;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->qSpeedGround = 0;
    Player_PlaySong(arg0, 0x6DU);
    SetPlayerCallback(arg0, sub_801CA00);
    sub_801CA00(arg0);
}

void sub_801DEE4(Player *arg0) {
    arg0->charFlags.anim0 = 0xF2;
    arg0->qSpeedGround = 0;
    arg0->qCamOffsetY = 0;
    arg0->idleAndCamCounter = 0x28;
    SetPlayerCallback(arg0, sub_801CC14);
    sub_801CC14(arg0);
}

void Player_801DF18(Player *arg0) {
    u32 temp_r2;

    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if (arg0->charFlags.state1 != 1) {
            arg0->charFlags.state1 = 1;
        }
        temp_r2 = arg0->moveState;
        if (!(4 & temp_r2) || (arg0->callback != Player_801DF18)) {
            arg0->moveState = temp_r2 & 0xDDFFFFFF;
            SetPlayerCallback(arg0, Player_800891C);
        }
    }
}

void sub_801DF80(Player *arg0) {
    arg0->charFlags.anim0 = 0xE9;
    Player_8012FE0(arg0);
    arg0->qWorldY += 0xFFFFFB00;
    arg0->moveState = (arg0->moveState | 4) & 0xDFFFFFFF;
    SetPlayerCallback(arg0, sub_801D9D0);
    sub_801D9D0(arg0);
}

void sub_801DFC4(Player *arg0) {
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;

    Player_800D880(arg0);
    arg0->moveState |= 4;
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->charFlags.anim0 = 0xF8;
    if (arg0->moveState & 1) {
        var_r0 = -0x400;
    } else {
        var_r0 = 0x400;
    }
    arg0->qSpeedAirX = var_r0;
    arg0->qSpeedAirY = -0x200;
    Player_PlaySong(arg0, 0x212U);
    sub_8016F28(arg0);
    SetPlayerCallback(arg0, sub_801E92C);
    sub_801E92C(arg0);
}

void sub_801E038(Player *arg0) {
    PlayerSpriteInfo *temp_r2;
    s16 var_r0;

    Player_800D880(arg0);
    arg0->moveState |= 4;
    sub_8012FA0(arg0);
    arg0->charFlags.anim0 = 0xFD;
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    if (arg0->moveState & 1) {
        var_r0 = -0x300;
    } else {
        var_r0 = 0x300;
    }
    arg0->qSpeedAirX = var_r0;
    arg0->qSpeedAirY = 0;
    arg0->unk148 = 0x14;
    Player_PlaySong(arg0, 0x70U);
    SetPlayerCallback(arg0, sub_801EAF4);
    sub_801EAF4(arg0);
}

void sub_801E0AC(Player *arg0) {
    s16 var_r0;

    sub_8012FC0(arg0);
    if ((u32) (((u16) arg0->qSpeedAirX + 0x400) << 0x10) <= 0x08000000U) {
        if (arg0->moveState & 1) {
            var_r0 = -0x400;
        } else {
            var_r0 = 0x400;
        }
        arg0->qSpeedAirX = var_r0;
    }
    arg0->qSpeedAirY = 0;
    arg0->qSpeedGround = 0;
    arg0->moveState |= 0x8000;
    arg0->charFlags.anim0 = 0x101;
    Player_PlaySong(arg0, 0x6FU);
    sub_8016F28(arg0);
    SetPlayerCallback(arg0, sub_801E4C0);
    sub_801E4C0(arg0);
}

void sub_801E120(Player *arg0) {
    s16 temp_r1;
    s16 var_r2;
    s32 temp_r0;
    s32 temp_r0_4;
    u16 *temp_r0_2;
    u16 temp_r0_3;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r4;
    u32 var_r2_2;

    if (!(0x80 & arg0->keyInput)) {
        temp_r0 = (s32) (arg0->Spindash_Velocity << 0x10) >> 0x18;
        var_r4 = (u16) temp_r0;
        if ((s32) (s16) temp_r0 > 8) {
            var_r4 = 8;
        }
        var_r2 = *(((s32) (var_r4 << 0x10) >> 0xF) + &gUnknown_080CE5B8);
        if (arg0->moveState & 1) {
            var_r2 = 0 - var_r2;
        }
        arg0->qSpeedGround = var_r2;
        SetPlayerCallback(arg0, Player_8005380);
        Player_PlaySong(arg0, 0x6EU);
    } else {
        temp_r0_2 = &arg0->Spindash_Velocity;
        var_r4_2 = *temp_r0_2;
        temp_r1 = (s16) var_r4_2;
        if (temp_r1 != 0) {
            temp_r0_3 = temp_r1 - ((s32) (var_r4_2 << 0x10) >> 0x15);
            temp_r0_4 = temp_r0_3 << 0x10;
            var_r4_2 = temp_r0_3;
            if (temp_r0_4 <= 0) {
                var_r4_2 = 0;
            }
        }
        if (gStageData.buttonConfig.jump & arg0->keyInput2) {
            temp_r4 = (u32) ((var_r4_2 << 0x10) + 0x02000000) >> 0x10;
            var_r2_2 = temp_r4;
            if ((s32) (s16) temp_r4 < 0x800) {
                var_r2_2 = 0x800;
            }
            var_r4_2 = (u16) var_r2_2;
            arg0->unk2B = (u8) (arg0->unk2B | 0x40);
            Player_PlaySong(arg0, 0x211U);
        }
        *temp_r0_2 = var_r4_2;
    }
    if (arg0->moveState & 4) {
        if ((sub_8015064(arg0) << 0x10) == 0) {
            sub_8016E50(arg0);
            sub_8016D30(arg0);
            sub_8014E70(arg0);
            sub_8016EB0(arg0);
            Player_80149E4(arg0);
            sub_8017004(arg0);
        }
    } else {
        sub_8015144(arg0);
        if ((sub_8015064(arg0) << 0x10) == 0) {
            Player_801479C(arg0);
            sub_8016D30(arg0);
            sub_8014E70(arg0);
            sub_8012EB8(arg0);
            sub_8016E00(arg0);
        }
    }
}

void sub_801E250(Player *arg0) {
    void (*temp_r1)(Player *);

    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if ((arg0->charFlags.state1 == 0) && (arg0->spriteInfoBody->s.frameFlags & 0x4000)) {
            arg0->charFlags.state1 = 1;
        }
        temp_r1 = arg0->callback;
        if ((temp_r1 == Player_8005380) || (temp_r1 == Player_80077CC) || ((arg0->moveState & 0x4024) != 4)) {
            arg0->qSpeedAirY = -0x400;
            SetPlayerCallback(arg0, sub_801EA44);
            if (!(arg0->moveState & 0x4000)) {
                Player_PlaySong(arg0, 0xDFU);
            }
        }
    }
}

void sub_801E2E4(Player *arg0) {
    PlayerUnk148 **temp_r1;
    u16 temp_r0;
    u8 *temp_r1_2;
    u8 temp_r0_2;
    u8 temp_r0_3;

    temp_r1 = &arg0->unk148.ptr;
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        arg0->moveState &= 0xFFFF7FFF;
        SetPlayerCallback(arg0, Player_800DAF4);
    }
    temp_r1_2 = &arg0->unk5B;
    temp_r0_2 = *temp_r1_2;
    if (temp_r0_2 != 0) {
        temp_r0_3 = temp_r0_2 - 1;
        *temp_r1_2 = temp_r0_3;
        if ((temp_r0_3 << 0x18) == 0) {
            Player_PlaySong(arg0, 0x81U);
        }
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801E358(Player *arg0) {
    PlayerUnk148 **temp_r1;
    u16 temp_r0;
    u8 *temp_r1_2;
    u8 temp_r0_2;
    u8 temp_r0_3;

    temp_r1 = &arg0->unk148.ptr;
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        arg0->qSpeedAirY = -0x400;
        arg0->moveState &= 0xFFFF7FFF;
        SetPlayerCallback(arg0, Player_800DAF4);
        return;
    }
    temp_r1_2 = &arg0->unk5B;
    temp_r0_2 = *temp_r1_2;
    if (temp_r0_2 != 0) {
        temp_r0_3 = temp_r0_2 - 1;
        *temp_r1_2 = temp_r0_3;
        if ((temp_r0_3 << 0x18) == 0) {
            Player_PlaySong(arg0, 0x81U);
        }
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801E3D8(Player *arg0) {
    PlayerUnk148 **temp_r1;
    s16 temp_r1_2;
    s16 var_r0;
    s16 var_r0_2;
    u16 temp_r0;

    temp_r1 = &arg0->unk148.ptr;
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        if (arg0->moveState & 0x80) {
            var_r0 = -0x1F8;
        } else {
            var_r0 = -0x3A8;
        }
        arg0->qSpeedAirY = var_r0;
        temp_r1_2 = arg0->qSpeedAirX;
        if ((s32) temp_r1_2 < 0xFFFFFD00) {
            var_r0_2 = -0x300;
            goto block_7;
        }
        var_r0_2 = 0x300;
        if ((s32) temp_r1_2 > 0x300) {
block_7:
            arg0->qSpeedAirX = var_r0_2;
        }
        SetPlayerCallback(arg0, sub_801EA9C);
        return;
    }
    Player_80149E4(arg0);
    sub_8017004(arg0);
}

void sub_801E44C(Player *arg0) {
    PlayerUnk148 **temp_r5;
    s16 var_r0;
    u16 temp_r0;

    temp_r5 = &arg0->unk148.ptr;
    temp_r0 = *temp_r5 - 1;
    *temp_r5 = temp_r0;
    if ((s16) temp_r0 == 1) {
        Player_PlaySong(arg0, 0x80U);
    }
    if ((s16) *temp_r5 == 0) {
        arg0->qSpeedAirY = -0x5B0;
        if (arg0->moveState & 1) {
            var_r0 = -0x200;
        } else {
            var_r0 = 0x200;
        }
        arg0->qSpeedAirX = var_r0;
        SetPlayerCallback(arg0, Player_800DAF4);
        return;
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
    }
}

void sub_801E4C0(Player *arg0) {
    PlayerSpriteInfo *temp_r2;
    PlayerSpriteInfo *temp_r2_2;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 temp_r1_3;
    u16 temp_r0;
    u32 temp_r1_2;
    u32 var_r0;
    void (*var_r1)(Player *);

    temp_r0 = (u16) arg0->qSpeedAirX;
    temp_r1 = arg0->qSpeedAirX;
    if ((s32) temp_r1 < 0) {
        temp_r0_2 = temp_r0 + 0x10;
        arg0->qSpeedAirX = temp_r0_2;
        if ((s32) (temp_r0_2 << 0x10) > 0) {
            goto block_5;
        }
    } else if ((s32) temp_r1 > 0) {
        temp_r0_3 = temp_r0 - 0x10;
        arg0->qSpeedAirX = temp_r0_3;
        if ((s32) (temp_r0_3 << 0x10) < 0) {
block_5:
            arg0->qSpeedAirX = 0;
        }
    }
    if (arg0->charFlags.state1 == 0) {
        temp_r2 = arg0->spriteInfoBody;
        temp_r1_2 = temp_r2->s.frameFlags;
        if (0x4000 & temp_r1_2) {
            temp_r2->s.frameFlags = temp_r1_2 & 0xFFFFBFFF;
            arg0->charFlags.state1 = 1;
        }
    }
    if (arg0->qSpeedAirX == 0) {
        temp_r1_3 = arg0->moveState & 4;
        if (temp_r1_3 == 0) {
            arg0->qSpeedAirY = temp_r1_3;
            arg0->qSpeedAirX = temp_r1_3;
            arg0->qSpeedGround = temp_r1_3;
            temp_r2_2 = arg0->spriteInfoBody;
            temp_r2_2->s.frameFlags &= 0xFFFFBFFF;
            arg0->charFlags.state1 = 2;
            var_r1 = sub_801EB94;
            goto block_16;
        }
        goto block_13;
    }
    if (arg0->moveState & 4) {
block_13:
        if ((sub_8015064(arg0) << 0x10) == 0) {
            sub_8016E50(arg0);
            sub_8016D30(arg0);
            sub_8016EB0(arg0);
            Player_80149E4(arg0);
            sub_8017004(arg0);
            if (!(arg0->moveState & 4)) {
                Player_8012FF0(arg0);
                arg0->charFlags.anim0 = 0x101;
                var_r1 = sub_801E4C0;
block_16:
                SetPlayerCallback(arg0, var_r1);
            }
        }
    } else if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        sub_8012EA8(arg0);
        if ((M2C_ERROR(/* Read from unset register $r0 */) << 0x10) != 0) {
            var_r0 = arg0->moveState | 4;
        } else {
            var_r0 = arg0->moveState & ~4;
        }
        arg0->moveState = var_r0;
        sub_8016E00(arg0);
        sub_8014E70(arg0);
    }
}

void sub_801E5E0(Player *arg0) {
    if (!(gStageData.buttonConfig.jump & arg0->keyInput)) {
        arg0->charFlags.state1 = 1;
        arg0->unk2B = (u8) (arg0->unk2B | 0x40);
        SetPlayerCallback(arg0, Player_800DAF4);
        return;
    }
    sub_8014940(arg0);
    arg0->qSpeedAirX = (s16) ((s32) (arg0->qSpeedAirX * 0xF) >> 4);
    if ((s32) arg0->qSpeedAirY <= 0x7F) {
        arg0->qSpeedAirY = (u16) arg0->qSpeedAirY + 0x10;
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801E65C(Player *arg0) {
    sub_8012FC0(arg0);
    arg0->charFlags.anim0 = 0xF7;
    sub_8016F28(arg0);
    sub_80170A0(arg0);
    Player_PlaySong(arg0, 0x211U);
    SetPlayerCallback(arg0, sub_801E120);
    sub_801E120(arg0);
}

void sub_801E69C(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->unk5B = 0x1E;
    arg0->moveState |= 0x8000;
    arg0->charFlags.anim0 = 0xFF;
    SetPlayerCallback(arg0, sub_801E980);
    sub_801E980(arg0);
}

void sub_801E6F4(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->moveState |= 0x8004;
    arg0->charFlags.anim0 = 0x103;
    arg0->unk148 = 0x10;
    arg0->unk5B = 0xA;
    Player_8017E50(arg0);
    SetPlayerCallback(arg0, sub_801E2E4);
    sub_801E2E4(arg0);
}

void sub_801E758(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->moveState |= 0x8004;
    arg0->charFlags.anim0 = 0x104;
    arg0->unk148 = 0x10;
    arg0->unk5B = 0xA;
    sub_8017EF4(arg0);
    SetPlayerCallback(arg0, sub_801E358);
    sub_801E358(arg0);
}

void sub_801E7BC(Player *arg0) {
    PlayerSpriteInfo *temp_r2;

    Player_800D880(arg0);
    arg0->moveState |= 0x8004;
    temp_r2 = arg0->spriteInfoBody;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0x100;
    arg0->unk148 = 0xA;
    arg0->moveState |= 0x8000;
    arg0->charFlags.anim0 = 0x100;
    sub_8018034(arg0);
    SetPlayerCallback(arg0, sub_801E9E0);
    sub_801E9E0(arg0);
}

void sub_801E828(Player *arg0) {
    Player_800D880(arg0);
    sub_8012FA0(arg0);
    arg0->qSpeedAirY = 0;
    arg0->qSpeedAirX = 0;
    arg0->unk26 = 0;
    arg0->charFlags.anim0 = 0x105;
    arg0->unk2F = 1;
    Player_BoostModeDisengage(arg0);
    arg0->unk148 = 0x14;
    arg0->moveState |= 4;
    SetPlayerCallback(arg0, sub_801E3D8);
    sub_801E3D8(arg0);
}

void sub_801E888(Player *arg0) {
    Player_800D880(arg0);
    arg0->moveState |= 4;
    sub_8012FA0(arg0);
    arg0->qSpeedAirY = 0;
    arg0->charFlags.anim0 = 0x102;
    arg0->unk2F = 1;
    Player_BoostModeDisengage(arg0);
    arg0->unk148 = 4;
    sub_8017F98(arg0);
    SetPlayerCallback(arg0, sub_801E44C);
    sub_801E44C(arg0);
}

void sub_801E8E0(Player *arg0) {
    Player_800D880(arg0);
    sub_8012FA0(arg0);
    arg0->qSpeedAirY = 0;
    arg0->charFlags.anim0 = 0x106;
    arg0->unk2F = 1;
    Player_BoostModeDisengage(arg0);
    arg0->moveState |= 0x40004;
    SetPlayerCallback(arg0, sub_801E5E0);
    sub_801E5E0(arg0);
}

void sub_801E92C(Player *arg0) {
    if (gStageData.buttonConfig.attack & arg0->keyInput2) {
        SetPlayerCallback(arg0, sub_801E0AC);
        return;
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801E980(Player *arg0) {
    u8 *temp_r1;
    u8 temp_r0;
    u8 temp_r0_2;

    temp_r1 = &arg0->unk5B;
    temp_r0 = *temp_r1;
    if (temp_r0 != 0) {
        temp_r0_2 = temp_r0 - 1;
        *temp_r1 = temp_r0_2;
        if ((temp_r0_2 << 0x18) == 0) {
            Player_PlaySong(arg0, 0x216U);
        }
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8014E70(arg0);
        if (arg0->spriteInfoBody->s.frameFlags & 0x4000) {
            SetPlayerCallback(arg0, Player_8005380);
        }
    }
}

void sub_801E9E0(Player *arg0) {
    PlayerUnk148 **temp_r0;

    temp_r0 = &arg0->unk148.ptr;
    *temp_r0 = (u16) (*temp_r0 - 1);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8014E70(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if ((arg0->charFlags.state1 == 0) && (arg0->spriteInfoBody->s.frameFlags & 0x4000)) {
            arg0->charFlags.state1 = 1;
            SetPlayerCallback(arg0, sub_801E250);
        }
    }
}

void sub_801EA44(Player *arg0) {
    if ((s32) arg0->qSpeedAirY > 0) {
        arg0->charFlags.state1 = 2;
        arg0->moveState &= 0xFFFF7FFF;
        SetPlayerCallback(arg0, Player_800DAF4);
        return;
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801EA9C(Player *arg0) {
    if ((sub_8014BC4(arg0) << 0x10) == 0) {
        if ((arg0->charFlags.state1 == 0) && ((s32) arg0->qSpeedAirY >= 0)) {
            arg0->charFlags.state1 = 1;
        }
        sub_8014940(arg0);
        if ((sub_8015064(arg0) << 0x10) == 0) {
            sub_8016E50(arg0);
            sub_8016D30(arg0);
            sub_8016EB0(arg0);
            Player_80149E4(arg0);
            sub_8017004(arg0);
        }
    }
}

void sub_801EAF4(Player *arg0) {
    PlayerUnk148 **temp_r5;

    temp_r5 = &arg0->unk148.ptr;
    *temp_r5 = (u16) (*temp_r5 - 1);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if ((s32) (s16) *temp_r5 <= 0) {
            SetPlayerCallback(arg0, sub_801EB44);
        }
    }
}

void sub_801EB44(Player *arg0) {
    sub_8014940(arg0);
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016E50(arg0);
        sub_8016D30(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
        if (!(arg0->moveState & 4)) {
            SetPlayerCallback(arg0, Player_8005380);
        }
    }
}

void sub_801EB94(Player *arg0) {
    if (arg0->spriteInfoBody->s.frameFlags & 0x4000) {
        SetPlayerCallback(arg0, Player_8005380);
    }
    sub_8014E70(arg0);
}

void sub_801EBC0(u16 arg0, Player *arg1) {
    Task *temp_r0;
    s16 temp_r1;
    s8 temp_r0_4;
    u16 temp_r0_2;
    u16 temp_r6;
    u8 temp_r0_3;

    temp_r6 = arg0;
    temp_r0 = gStageData.task98;
    if ((temp_r0 != NULL) && (arg1 != NULL)) {
        temp_r0_2 = temp_r0->data;
        temp_r1 = (s16) temp_r6;
        if (temp_r1 != 6) {
            if (temp_r1 != 7) {
                if (temp_r0_2->unk50 != arg1) {
                    sub_801ECAC(arg1);
                    return;
                }
                temp_r0_3 = temp_r0_2->unk18;
                if ((temp_r0_3 != temp_r1) && (temp_r0_3 != 0xF)) {
                    switch (temp_r1) {
                    case 0:
                    case 1:
                    case 12:
                        sub_8020444(arg1);
                        break;
                    case 9:
                    case 10:
                    case 13:
                        sub_8020488(arg1);
                        break;
                    case 4:
                        sub_802051C(arg1);
                        break;
                    case 5:
                        sub_8020530(arg1);
                        break;
                    }
                    temp_r0_2->unk50 = arg1;
                    temp_r0_2->unk18 = (u8) temp_r6;
                    temp_r0_4 = arg1->moveState & 1;
                    if (temp_r0_4 != 0) {
                        temp_r0_2->unk1C = 1;
                    } else {
                        temp_r0_2->unk1C = temp_r0_4;
                    }
                    temp_r0_2->unk1D = (u8) arg1->unk26;
                }
            } else {
                temp_r0_2->unk50 = arg1;
                temp_r0_2->unk54 = 0;
                sub_8020558(arg1);
            }
        } else {
            temp_r0_2->unk50 = arg1;
            temp_r0_2->unk54 = 0;
            sub_8020544(arg1);
        }
    }
}

void sub_801ECAC(Player *arg0) {
    Player *temp_r0;
    Player *temp_r0_2;
    Player *temp_r4;
    Task *temp_r6;
    s32 var_r1;
    s32 var_r1_2;
    s8 temp_r0_3;
    u16 temp_r1;
    u8 var_r1_3;

    temp_r6 = gStageData.task98;
    temp_r1 = temp_r6->data;
    temp_r4 = temp_r1->unk50;
    if ((temp_r4 != arg0) && (arg0 != NULL)) {
        if ((0xF & arg0->unk2A) == 1) {
            if (temp_r1->unk54 != NULL) {
                temp_r4->unk54 = 0;
            }
            temp_r1->unk54 = NULL;
        } else {
            temp_r1->unk54 = temp_r4;
        }
        temp_r1->unk50 = arg0;
        temp_r0 = temp_r1->unk54;
        if ((temp_r0 != NULL) && ((0x1C & temp_r0->unk2B) == 0x14)) {
            temp_r0_2 = temp_r1->unk50;
            if (temp_r0_2->moveState & 1) {
                var_r1 = 0x1800;
            } else {
                var_r1 = 0xFFFFE800;
            }
            temp_r1->unk0 = (s32) (temp_r0_2->qWorldX + var_r1);
            if (temp_r0_2->moveState & 0x10000) {
                var_r1_2 = 0x1800;
            } else {
                var_r1_2 = 0xFFFFE800;
            }
            temp_r1->unk4 = (s32) (temp_r0_2->qWorldY + var_r1_2);
        }
        temp_r1->unk18 = 0xF;
        temp_r0_3 = arg0->moveState & 1;
        if (temp_r0_3 != 0) {
            temp_r1->unk1C = 1;
        } else {
            temp_r1->unk1C = temp_r0_3;
        }
        temp_r1->unk1D = (u8) arg0->unk26;
        if ((u32) gStageData.gameMode > 4U) {
            var_r1_3 = 0;
            if (gPlayers != arg0) {
loop_22:
                var_r1_3 += 1;
                if ((u32) var_r1_3 <= 3U) {
                    if (&gPlayers[var_r1_3] != arg0) {
                        goto loop_22;
                    }
                }
            }
            if (var_r1_3 == gStageData.playerIndex) {
                sub_80276A8(var_r1_3);
            }
        }
        temp_r6->main = sub_801F064;
    }
}

void sub_801EDB4(void) {
    s32 var_r0;
    u16 temp_r3;
    void *temp_r5;

    temp_r3 = gCurTask->data;
    temp_r3->unk8 = (s32) (temp_r3->unk0 + 0x1800);
    temp_r3->unkC = (s32) (temp_r3->unk4 + 0xFFFFE800);
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk14 = 0x100;
    temp_r3->unk16 = 0;
    temp_r3->unk1A = 0x3C;
    temp_r3->unk1B = 0;
    temp_r3->unk19 = 0;
    temp_r5 = temp_r3 + 0x20;
    if ((u32) gStageData.gameMode <= 5U) {
        var_r0 = OBJ_VRAM0 + 0x4000;
        goto block_4;
    }
    if (gStageData.gameMode == 6) {
        var_r0 = OBJ_VRAM0 + 0x4020;
block_4:
        temp_r3->unk20 = var_r0;
    }
    temp_r5->unk8 = 0x1000;
    temp_r5->unkC = (u16) gUnknown_08E2EB18.unk0;
    temp_r5->unk10 = (s16) ((s32) temp_r3->unk50->unk10 >> 8);
    temp_r5->unk12 = (s16) ((s32) temp_r3->unk50->unk14 >> 8);
    temp_r5->unk14 = 0x540;
    temp_r5->unk16 = 0;
    temp_r5->unk18 = 0xFFFF;
    temp_r5->unk1A = (s8) gUnknown_08E2EB18.unk2;
    temp_r5->unk1B = 0xFF;
    temp_r5->unk1C = 0x10;
    temp_r5->unk1F = 0;
    temp_r5->unk20 = -1;
    temp_r5->unk28 = -1;
    gCurTask->main = sub_802056C;
}

void sub_801EE74(void) {
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = gCurTask->data;
    temp_r2->unk8 = (s32) temp_r2->unk0;
    temp_r2->unkC = (s32) temp_r2->unk4;
    temp_r2->unk10 = 0;
    temp_r2->unk12 = 0;
    temp_r2->unk16 = (u16) (0xFFF9 & temp_r2->unk16);
    temp_r2->unk18 = 0;
    temp_r2->unk19 = 0;
    temp_r2->unk1A = 0;
    temp_r2_2 = temp_r2 + 0x20;
    temp_r2_2->unkC = (u16) gUnknown_08E2EB18.unk0;
    temp_r2_2->unk1A = (s8) gUnknown_08E2EB18.unk2;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk18 = 0xFFFF;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk28 = -1;
    gCurTask->main = sub_801EEE8;
    sub_801EEE8();
}

void sub_801EEE8(void) {
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u16 var_r0;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r0 = temp_r1->unk50;
    if (temp_r0->unk4 & 0x10000) {
        var_r1_2 = 0x1800;
    } else {
        var_r1_2 = 0xFFFFE800;
    }
    temp_r1->unkC = (s32) (temp_r0->unk14 + var_r1_2);
    if ((s32) temp_r0->unk10 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(1U);
    sub_8020284();
}

void sub_801EF6C(void) {
    u16 temp_r3;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r3->unk8 = (s32) temp_r3->unk0;
    temp_r3->unkC = (s32) temp_r3->unk4;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk16 = (u16) ((0xFFFB & temp_r3->unk16) | 2);
    temp_r3->unk18 = 1;
    temp_r3->unk19 = 4;
    temp_r3->unk1A = 0;
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk10;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk12;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_801EFE8;
    sub_801EFE8();
}

void sub_801EFE8(void) {
    s32 temp_r2;
    u16 temp_r1;
    u16 var_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r1->unk1B = (u8) ((temp_r1->unk1B + 1) & 0x3F);
    temp_r3 = temp_r1->unk50;
    temp_r2 = temp_r1->unk1B * 0x10;
    temp_r1->unk8 = (s32) (temp_r3->unk10 + ((s16) gSineTable[temp_r2 + 0x100] >> 1));
    temp_r1->unkC = (s32) (temp_r3->unk14 + ((s16) gSineTable[temp_r2] >> 1));
    if (temp_r3->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(4U);
    sub_8020284();
}

void sub_801F064(void) {
    u16 temp_r3;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r3->unk8 = (s32) temp_r3->unk0;
    temp_r3->unkC = (s32) temp_r3->unk4;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk16 = (u16) ((0xFFFD & temp_r3->unk16) | 4);
    temp_r3->unk18 = 0xF;
    temp_r3->unk19 = 0xC;
    temp_r3->unk1A = 0x1E;
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk30;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk32;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_80205F4;
}

void sub_801F0DC(void) {
    s32 temp_r1_2;
    u16 temp_r1;
    u32 temp_r6;
    void *temp_r2;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk50;
    temp_r6 = (u32) (((u32) (temp_r3->unk2A << 0x1C) >> 0xA) + 0xF0000) >> 0x10;
    temp_r1_2 = temp_r6 * 4;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk18 = 4;
    if ((0xF & temp_r3->unk2A) != 1) {
        temp_r1->unk19 = (s8) temp_r6;
    } else {
        temp_r1->unk19 = 6;
    }
    temp_r1->unk16 = (u16) (0xFFFD & temp_r1->unk16);
    temp_r1->unk1A = 0x3C;
    temp_r2 = temp_r1 + 0x20;
    temp_r2->unk8 = (s32) ((temp_r2->unk8 & 0x400) | 0x1000);
    temp_r2->unkC = (u16) *(temp_r1_2 + &gUnknown_08E2EB18);
    temp_r2->unk1A = (s8) *(temp_r1_2 + (&gUnknown_08E2EB18 + 2));
    temp_r2->unk16 = 0;
    temp_r2->unk18 = 0xFFFF;
    temp_r2->unk1B = 0xFF;
    temp_r2->unk20 = -1;
    temp_r2->unk28 = -1;
    gCurTask->main = sub_801F184;
}

void sub_801F184(void) {
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u8 temp_r0;
    void (*var_r0)();
    void *temp_r2;
    void *temp_r2_2;
    void *temp_r2_3;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r2_2 = temp_r1->unk50;
    if (temp_r2_2->unk4 & 0x10000) {
        var_r1_2 = 0x1800;
    } else {
        var_r1_2 = 0xFFFFE800;
    }
    temp_r1->unkC = (s32) (temp_r2_2->unk14 + var_r1_2);
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r2_3 = temp_r1->unk50;
        if ((0xF & temp_r2_3->unk2A) != 1) {
            var_r0 = sub_801FC2C;
            goto block_14;
        }
        if (temp_r2_3->unk4 & 0x100) {
            temp_r1->unk1A = 0x3CU;
            return;
        }
        if ((temp_r2_3->unkC & 0x18) == 0x10) {
            var_r0 = sub_801EF6C;
        } else {
            var_r0 = sub_801EE74;
        }
block_14:
        gCurTask->main = var_r0;
    }
}

void sub_801F258(void) {
    s32 var_r1;
    s32 var_r5;
    u16 temp_r1;
    void *temp_r2;
    void *temp_r4;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    temp_r4 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r4->unk10;
    if (temp_r4->unk4 & 0x10000) {
        var_r1 = 0x1000;
    } else {
        var_r1 = 0xFFFFF000;
    }
    temp_r1->unkC = (s32) (temp_r4->unk14 + var_r1);
    temp_r1->unk1A = 0x18;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk18 = 5;
    temp_r1->unk19 = 7;
    temp_r1->unk16 = (u16) (0xFFF9 & temp_r1->unk16);
    temp_r2 = temp_r1 + 0x20;
    if (temp_r1->unk50->unk4 & 1) {
        var_r5 = 0x400;
    }
    temp_r2->unk8 = var_r5;
    temp_r2->unkC = (u16) gUnknown_08E2EB18.unk0;
    temp_r2->unk1A = (s8) gUnknown_08E2EB18.unk2;
    temp_r2->unk16 = 0;
    temp_r2->unk18 = 0xFFFF;
    temp_r2->unk1B = 0xFF;
    temp_r2->unk20 = -1;
    temp_r2->unk28 = -1;
    gCurTask->main = sub_801F2FC;
}

void sub_801F2FC(void) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 var_r0;
    u16 temp_r1;
    u16 var_r0_2;
    u8 temp_r0;
    void (*var_r0_3)();
    void *temp_r1_4;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r2->unk10;
    if (temp_r2->unk4 & 0x10000) {
        var_r0 = temp_r2->unk14 + 0xC00;
    } else {
        var_r0 = temp_r2->unk14 + 0xFFFFF400;
    }
    temp_r1->unkC = var_r0;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0_2 = 1 | temp_r1->unk16;
    } else {
        var_r0_2 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0_2;
    temp_r0 = temp_r1->unk1A;
    if (temp_r0 != 0) {
        temp_r1->unk1A = (u8) (temp_r0 - 1);
        sub_8020130(4U);
    } else {
        sub_8020130(6U);
    }
    sub_8020284();
    temp_r0_2 = temp_r1->unk8;
    temp_r1_2 = temp_r1->unk0;
    temp_r2_2 = temp_r0_2 - temp_r1_2;
    if (temp_r2_2 >= 0) {
        if (temp_r2_2 > 0x3FE) {

        } else {
            goto block_13;
        }
    } else if ((s32) (temp_r1_2 - temp_r0_2) <= 0x3FE) {
block_13:
        temp_r0_3 = temp_r1->unkC;
        temp_r1_3 = temp_r1->unk4;
        temp_r2_3 = temp_r0_3 - temp_r1_3;
        if (temp_r2_3 >= 0) {
            if (temp_r2_3 > 0x4FE) {

            } else {
                goto block_17;
            }
        } else if ((s32) (temp_r1_3 - temp_r0_3) <= 0x4FE) {
block_17:
            temp_r1->unk2C = (u16) gUnknown_08E2EB18.unk1C;
            temp_r1->unk3A = (s8) gUnknown_08E2EB18.unk1E;
            gCurTask->main = sub_801F418;
        }
    }
    temp_r1_4 = temp_r1->unk50;
    if (temp_r1_4->unk30 != 0xBE) {
        if ((temp_r1_4->unkC & 0x18) == 0x10) {
            var_r0_3 = sub_801EF6C;
        } else {
            var_r0_3 = sub_801EE74;
        }
        gCurTask->main = var_r0_3;
    }
}

void sub_801F418(void) {
    s32 var_r0;
    u16 temp_r1;
    u16 var_r0_2;
    void (*var_r0_3)();
    void *temp_r1_2;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    temp_r1->unk0 = (s32) temp_r2->unk10;
    if (temp_r2->unk4 & 0x10000) {
        var_r0 = temp_r2->unk14 + 0xC00;
    } else {
        var_r0 = temp_r2->unk14 + 0xFFFFF400;
    }
    temp_r1->unk4 = var_r0;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0_2 = 1 | temp_r1->unk16;
    } else {
        var_r0_2 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0_2;
    sub_8020284();
    temp_r1_2 = temp_r1->unk50;
    if (temp_r1_2->unk30 != 0xBE) {
        if ((temp_r1_2->unkC & 0x18) == 0x10) {
            var_r0_3 = sub_801EF6C;
        } else {
            var_r0_3 = sub_801EE74;
        }
        gCurTask->main = var_r0_3;
    }
}

void sub_801F4B4(void) {
    u16 temp_r3;
    void *temp_r2;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r2 = temp_r3->unk50;
    temp_r3->unk8 = (s32) temp_r2->unk10;
    temp_r3->unkC = (s32) temp_r2->unk14;
    temp_r3->unk0 = (s32) temp_r2->unk10;
    temp_r3->unk4 = (s32) temp_r2->unk14;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk18 = 4;
    temp_r3->unk19 = 9;
    temp_r3->unk16 = (u16) (0xFFF9 & temp_r3->unk16);
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unk8 = 0x1000;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk24;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk26;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_8020660;
}

void sub_801F534(void) {
    u16 temp_r3;
    void *temp_r2;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r2 = temp_r3->unk50;
    temp_r3->unk8 = (s32) temp_r2->unk10;
    temp_r3->unkC = (s32) temp_r2->unk14;
    temp_r3->unk0 = (s32) temp_r2->unk10;
    temp_r3->unk4 = (s32) temp_r2->unk14;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk18 = 4;
    temp_r3->unk19 = 0xA;
    temp_r3->unk16 = (u16) (0xFFF9 & temp_r3->unk16);
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unk8 = 0x1000;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk28;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk2A;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_80206B0;
}

void sub_801F5B4(void) {
    Player *temp_r0;
    u16 temp_r3;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r0 = temp_r3->unk50;
    temp_r3->unk8 = (s32) temp_r0->unkB0;
    temp_r3->unkC = (s32) temp_r0->unkB4;
    temp_r3->unk16 = (u16) (temp_r3->unk16 | 2);
    temp_r3->unk18 = 9;
    temp_r3->unk19 = 2;
    temp_r3->unk1A = 0x1E;
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk8;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unkA;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    Player_PlaySong(temp_r3->unk50, 0x210U);
    gCurTask->main = sub_801F630;
}

void sub_801F630(void) {
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;
    void (*var_r0_2)();
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unkBC != -1) {
        temp_r1->unk8 = (s32) temp_r2->unkB0;
        temp_r1->unkC = (s32) temp_r2->unkB4;
    }
    if ((s32) temp_r1->unk8 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r1->unk16 = (u16) (0xFFFD & temp_r1->unk16);
        if ((temp_r1->unk50->unkC & 0x18) == 0x10) {
            var_r0_2 = sub_801EF6C;
        } else {
            var_r0_2 = sub_801EE74;
        }
        gCurTask->main = var_r0_2;
    }
}

void sub_801F6D8(void) {
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = gCurTask->data;
    temp_r2->unk16 = (u16) (0xFFFD & temp_r2->unk16);
    temp_r2->unk18 = 0xB;
    temp_r2->unk19 = 3;
    temp_r2->unk1A = 0x1E;
    temp_r2_2 = temp_r2 + 0x20;
    temp_r2_2->unkC = (u16) gUnknown_08E2EB18.unkC;
    temp_r2_2->unk1A = (s8) gUnknown_08E2EB18.unkE;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk18 = 0xFFFF;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk28 = -1;
    gCurTask->main = sub_801F740;
}

void sub_801F740(void) {
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0_2;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r0 = temp_r1->unk50;
    if (temp_r0->unk4 & 0x10000) {
        var_r1_2 = 0x1800;
    } else {
        var_r1_2 = 0xFFFFE800;
    }
    temp_r1->unkC = (s32) (temp_r0->unk14 + var_r1_2);
    if ((s32) temp_r0->unk10 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(1U);
    sub_8020284();
    temp_r0_2 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0_2;
    if ((temp_r0_2 << 0x18) == 0) {
        gCurTask->main = sub_801EE74;
    }
}

void sub_801F7E0(void) {
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = gCurTask->data;
    temp_r2->unk16 = (u16) (0xFFFD & temp_r2->unk16);
    temp_r2->unk18 = 0xB;
    temp_r2->unk19 = 3;
    temp_r2->unk1A = 0x1E;
    temp_r2_2 = temp_r2 + 0x20;
    temp_r2_2->unkC = (u16) gUnknown_08E2EB18.unkC;
    temp_r2_2->unk1A = (s8) gUnknown_08E2EB18.unkE;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk18 = 0xFFFF;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk28 = -1;
    gCurTask->main = sub_801F848;
}

void sub_801F848(void) {
    s32 temp_r2;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk50;
    temp_r2 = temp_r1->unk1B * 0x10;
    temp_r1->unk8 = (s32) (temp_r3->unk10 + ((s16) gSineTable[temp_r2 + 0x100] >> 1));
    temp_r1->unkC = (s32) (temp_r3->unk14 + ((s16) gSineTable[temp_r2] >> 1));
    if (temp_r3->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        gCurTask->main = sub_801EF6C;
    }
}

void sub_801F8D8(void) {
    Player *temp_r2;
    s32 var_r1;
    u16 temp_r1;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->moveState & 1) {
        var_r1 = 0xFFFFE800;
    } else {
        var_r1 = 0x1800;
    }
    temp_r1->unk8 = (s32) (temp_r2->qWorldX + var_r1);
    temp_r1->unkC = (s32) temp_r1->unk50->qWorldY;
    temp_r1->unk16 = (u16) (2 | temp_r1->unk16);
    temp_r1->unk18 = 9;
    temp_r1->unk19 = 8;
    temp_r1->unk1A = 0xA;
    temp_r1_2 = temp_r1 + 0x20;
    temp_r1_2->unkC = (u16) gUnknown_08E2EB18.unk20;
    temp_r1_2->unk1A = (s8) gUnknown_08E2EB18.unk22;
    temp_r1_2->unk16 = 0;
    temp_r1_2->unk18 = 0xFFFF;
    temp_r1_2->unk1B = 0xFF;
    temp_r1_2->unk20 = -1;
    temp_r1_2->unk28 = -1;
    Player_PlaySong(temp_r1->unk50, 0x210U);
    gCurTask->main = sub_801F970;
}

void sub_801F970(void) {
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r1->unk1A = 0xFU;
        gCurTask->main = sub_801F9D4;
    }
}

void sub_801F9D4(void) {
    s32 var_r0_2;
    u16 temp_r1;
    u16 var_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(0U);
    temp_r1->unk1A = (u8) (temp_r1->unk1A - 1);
    if (temp_r1->unk1C != 0) {
        var_r0_2 = temp_r1->unk50->unk10 - ((0xF - temp_r1->unk1A) * 0x600);
    } else {
        var_r0_2 = temp_r1->unk50->unk10 + ((0xF - temp_r1->unk1A) * 0x600);
    }
    temp_r1->unk0 = var_r0_2;
    sub_8020284();
    if (temp_r1->unk1A == 0) {
        gCurTask->main = sub_801EE74;
    }
}

void sub_801FA64(void) {
    Player *temp_r2;
    s32 var_r1;
    u16 temp_r1;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->moveState & 1) {
        var_r1 = 0xFFFFE800;
    } else {
        var_r1 = 0x1800;
    }
    temp_r1->unk8 = (s32) (temp_r2->qWorldX + var_r1);
    temp_r1->unkC = (s32) temp_r1->unk50->qWorldY;
    temp_r1->unk16 = (u16) (2 | temp_r1->unk16);
    temp_r1->unk18 = 9;
    temp_r1->unk19 = 8;
    temp_r1->unk1A = 0xA;
    temp_r1_2 = temp_r1 + 0x20;
    temp_r1_2->unkC = (u16) gUnknown_08E2EB18.unk20;
    temp_r1_2->unk1A = (s8) gUnknown_08E2EB18.unk22;
    temp_r1_2->unk16 = 0;
    temp_r1_2->unk18 = 0xFFFF;
    temp_r1_2->unk1B = 0xFF;
    temp_r1_2->unk20 = -1;
    temp_r1_2->unk28 = -1;
    Player_PlaySong(temp_r1->unk50, 0x210U);
    gCurTask->main = sub_801FAFC;
}

void sub_801FAFC(void) {
    s32 temp_r1_2;
    s32 temp_r6;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r6 = (s32) (*((temp_r1->unk1D * 8) + 0x200 + gSineTable) * 2) / 20;
        temp_r1->unk8 = temp_r6;
        temp_r1_2 = (s32) (*((temp_r1->unk1D * 8) + gSineTable) * 2) / 20;
        temp_r1->unkC = temp_r1_2;
        if (temp_r1->unk1C != 0) {
            temp_r1->unk8 = (s32) (0 - temp_r6);
            temp_r1->unkC = (s32) (0 - temp_r1_2);
        }
        temp_r1->unk1A = 0xFU;
        gCurTask->main = sub_801FBA8;
    }
}

void sub_801FBA8(void) {
    u16 temp_r1;
    u16 var_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(0U);
    temp_r1->unk1A = (u8) (temp_r1->unk1A - 1);
    temp_r3 = temp_r1->unk50;
    temp_r1->unk0 = (s32) (temp_r3->unk10 + ((0xF - temp_r1->unk1A) * temp_r1->unk8));
    temp_r1->unk4 = (s32) (temp_r3->unk14 + ((0xF - temp_r1->unk1A) * temp_r1->unkC));
    sub_8020284();
    if (temp_r1->unk1A == 0) {
        gCurTask->main = sub_801EE74;
    }
}

void sub_801FC2C(void) {
    s32 temp_r1;
    u16 temp_r5;
    u32 temp_r4;
    void *temp_r5_2;

    temp_r5 = gCurTask->data;
    temp_r4 = (u32) (((u32) (temp_r5->unk50->unk2A << 0x1C) >> 0xA) + 0xD0000) >> 0x10;
    temp_r1 = temp_r4 * 4;
    temp_r5->unk8 = (s32) temp_r5->unk0;
    temp_r5->unkC = (s32) temp_r5->unk4;
    temp_r5->unk10 = 0;
    temp_r5->unk12 = 0;
    temp_r5->unk16 = (u16) ((0xFFFD & temp_r5->unk16) | 4);
    temp_r5->unk18 = 0;
    temp_r5->unk19 = (s8) temp_r4;
    temp_r5->unk1A = 0;
    temp_r5_2 = temp_r5 + 0x20;
    temp_r5_2->unkC = (u16) *(temp_r1 + &gUnknown_08E2EB18);
    temp_r5_2->unk1A = (s8) *(temp_r1 + (&gUnknown_08E2EB18 + 2));
    temp_r5_2->unk16 = 0;
    temp_r5_2->unk18 = 0xFFFF;
    temp_r5_2->unk1B = 0xFF;
    temp_r5_2->unk20 = -1;
    temp_r5_2->unk28 = -1;
    gCurTask->main = sub_801FCD8;
}

void sub_801FCD8(void) {
    Player *temp_r0_2;
    s16 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    u16 temp_r1;
    u16 var_r0_3;
    void *temp_r0;
    void *temp_r2;
    void *temp_r2_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r0 = temp_r2->unk10 + 0x1800;
    } else {
        var_r0 = temp_r2->unk10 + 0xFFFFE800;
    }
    temp_r1->unk8 = var_r0;
    temp_r2_2 = temp_r1->unk50;
    if (temp_r2_2->unk4 & 0x10000) {
        var_r0_2 = temp_r2_2->unk14 + 0x1800;
    } else {
        var_r0_2 = temp_r2_2->unk14 + 0xFFFFE800;
    }
    temp_r1->unkC = var_r0_2;
    if ((s32) temp_r1->unk50->unk10 < (s32) temp_r1->unk0) {
        var_r0_3 = 1 | temp_r1->unk16;
    } else {
        var_r0_3 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0_3;
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk50;
    if ((s16) temp_r0->unk54 != 0) {
        temp_r0->unk54 = (u16) (temp_r0->unk54 - 1);
    }
    temp_r0_2 = temp_r1->unk54;
    if ((s16) temp_r0_2->unk54 != 0) {
        temp_r0_2->unk54 -= 1;
    }
    temp_r1_2 = (s16) temp_r1->unk50->unk54;
    if (temp_r1_2 == 0) {
        temp_r1->unk54->unk54 = (u16) temp_r1_2;
        temp_r1->unk16 = (u16) (0xFFFB & temp_r1->unk16);
        sub_801ECAC(temp_r1->unk54);
    }
}

void sub_801FDAC(void) {
    Player *temp_r3;
    s32 temp_r1;
    s32 temp_r1_2;
    u16 temp_r0;
    u32 temp_r5;
    u32 temp_r5_2;
    void (*var_r0)();
    void *temp_r3_2;
    void *temp_r3_3;

    temp_r0 = gCurTask->data;
    temp_r3 = temp_r0->unk50;
    if (temp_r3->unkBC == -1U) {
        temp_r5 = (u32) (((u32) (temp_r3->unk2A << 0x1C) >> 0xA) + 0x100000) >> 0x10;
        temp_r1 = temp_r5 * 4;
        temp_r0->unk16 = (u16) (0xFFFD & temp_r0->unk16);
        temp_r0->unk18 = 0xB;
        temp_r0->unk19 = (s8) temp_r5;
        temp_r0->unk1A = 0x1E;
        temp_r3_2 = temp_r0 + 0x20;
        temp_r3_2->unkC = (u16) *(temp_r1 + &gUnknown_08E2EB18);
        temp_r3_2->unk1A = (s8) *(temp_r1 + (&gUnknown_08E2EB18 + 2));
        temp_r3_2->unk16 = 0;
        temp_r3_2->unk18 = 0xFFFF;
        temp_r3_2->unk1B = 0xFF;
        temp_r3_2->unk20 = -1;
        temp_r3_2->unk28 = -1;
        var_r0 = sub_8020038;
    } else {
        temp_r5_2 = (u32) (((u32) (temp_r3->unk2A << 0x1C) >> 0xA) + 0xE0000) >> 0x10;
        temp_r1_2 = temp_r5_2 * 4;
        temp_r0->unk8 = (s32) temp_r3->unkB0;
        temp_r0->unkC = (s32) temp_r3->unkB4;
        temp_r0->unk16 = (u16) (2 | temp_r0->unk16);
        temp_r0->unk18 = 9;
        temp_r0->unk19 = (s8) temp_r5_2;
        temp_r0->unk1A = 0x1E;
        temp_r3_3 = temp_r0 + 0x20;
        temp_r3_3->unkC = (u16) *(temp_r1_2 + &gUnknown_08E2EB18);
        temp_r3_3->unk1A = (s8) *(temp_r1_2 + (&gUnknown_08E2EB18 + 2));
        temp_r3_3->unk16 = 0;
        temp_r3_3->unk18 = 0xFFFF;
        temp_r3_3->unk1B = 0xFF;
        temp_r3_3->unk20 = -1;
        temp_r3_3->unk28 = -1;
        Player_PlaySong(temp_r0->unk50, 0x210U);
        var_r0 = sub_801FED0;
    }
    gCurTask->main = var_r0;
}

void sub_801FED0(void) {
    Player *temp_r0_3;
    s16 temp_r1_2;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;
    void *temp_r0_2;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unkBC != -1) {
        temp_r1->unk8 = (s32) temp_r2->unkB0;
        temp_r1->unkC = (s32) temp_r2->unkB4;
    }
    if ((s32) temp_r1->unk8 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r1->unk16 = (u16) (0xFFFD & temp_r1->unk16);
        gCurTask->main = sub_801FC2C;
        return;
    }
    temp_r0_2 = temp_r1->unk50;
    if ((s16) temp_r0_2->unk54 != 0) {
        temp_r0_2->unk54 = (u16) (temp_r0_2->unk54 - 1);
    }
    temp_r0_3 = temp_r1->unk54;
    if ((s16) temp_r0_3->unk54 != 0) {
        temp_r0_3->unk54 -= 1;
    }
    temp_r1_2 = (s16) temp_r1->unk50->unk54;
    if (temp_r1_2 == 0) {
        temp_r1->unk54->unk54 = (u16) temp_r1_2;
        temp_r1->unk16 = (u16) (0xFFF9 & temp_r1->unk16);
        sub_801ECAC(temp_r1->unk54);
    }
}

void sub_801FFA8(void) {
    s32 temp_r1;
    u16 temp_r5;
    u32 temp_r3;
    void *temp_r5_2;

    temp_r5 = gCurTask->data;
    temp_r3 = (u32) (((u32) (temp_r5->unk50->unk2A << 0x1C) >> 0xA) + 0x100000) >> 0x10;
    temp_r1 = temp_r3 * 4;
    temp_r5->unk16 = (u16) (0xFFFD & temp_r5->unk16);
    temp_r5->unk18 = 0xB;
    temp_r5->unk19 = (s8) temp_r3;
    temp_r5->unk1A = 0x1E;
    temp_r5_2 = temp_r5 + 0x20;
    temp_r5_2->unkC = (u16) *(temp_r1 + &gUnknown_08E2EB18);
    temp_r5_2->unk1A = (s8) *(temp_r1 + (&gUnknown_08E2EB18 + 2));
    temp_r5_2->unk16 = 0;
    temp_r5_2->unk18 = 0xFFFF;
    temp_r5_2->unk1B = 0xFF;
    temp_r5_2->unk20 = -1;
    temp_r5_2->unk28 = -1;
    gCurTask->main = sub_8020038;
    sub_8020038();
}

void sub_8020038(void) {
    Player *temp_r0_4;
    s16 temp_r1;
    s32 var_r0;
    s32 var_r0_2;
    u16 temp_r4;
    u16 var_r0_3;
    u8 temp_r0_2;
    void *temp_r0;
    void *temp_r0_3;
    void *temp_r2;

    temp_r4 = gCurTask->data;
    sub_8020130(1U);
    sub_8020284();
    temp_r2 = temp_r4->unk50;
    if (temp_r2->unk4 & 1) {
        var_r0 = temp_r2->unk10 + 0x1800;
    } else {
        var_r0 = temp_r2->unk10 + 0xFFFFE800;
    }
    temp_r4->unk8 = var_r0;
    temp_r0 = temp_r4->unk50;
    if (temp_r0->unk4 & 0x10000) {
        var_r0_2 = temp_r0->unk14 + 0x1800;
    } else {
        var_r0_2 = temp_r0->unk14 + 0xFFFFE800;
    }
    temp_r4->unkC = var_r0_2;
    if ((s32) temp_r0->unk10 < (s32) temp_r4->unk0) {
        var_r0_3 = 1 | temp_r4->unk16;
    } else {
        var_r0_3 = 0xFFFE & temp_r4->unk16;
    }
    temp_r4->unk16 = var_r0_3;
    temp_r0_2 = temp_r4->unk1A - 1;
    temp_r4->unk1A = temp_r0_2;
    if ((temp_r0_2 << 0x18) == 0) {
        gCurTask->main = sub_801FC2C;
        return;
    }
    temp_r0_3 = temp_r4->unk50;
    if ((s16) temp_r0_3->unk54 != 0) {
        temp_r0_3->unk54 = (u16) (temp_r0_3->unk54 - 1);
    }
    temp_r0_4 = temp_r4->unk54;
    if ((s16) temp_r0_4->unk54 != 0) {
        temp_r0_4->unk54 -= 1;
    }
    temp_r1 = (s16) temp_r4->unk50->unk54;
    if (temp_r1 == 0) {
        temp_r4->unk54->unk54 = (u16) temp_r1;
        temp_r4->unk16 = (u16) (0xFFFB & temp_r4->unk16);
        sub_801ECAC(temp_r4->unk54);
    }
}

void sub_8020130(u16 arg0, ? arg3) {
    Player *temp_r2_2;
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 temp_r2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u16 var_r2;
    u32 temp_r1_3;

    temp_r1 = gCurTask->data;
    temp_r7 = temp_r1->unk8;
    temp_r0 = temp_r1->unkC;
    var_r2 = 0;
    if ((gStageData.unk85 != 0) && (gStageData.act != 8) && (gStageData.act != 9) && (gStageData.unk4 != 9)) {
        return;
    }
    temp_r6 = (s32) (temp_r7 - temp_r1->unk0) >> 8;
    temp_r4 = (s32) (temp_r0 - temp_r1->unk4) >> 8;
    if ((temp_r6 != 0) || (temp_r4 != 0)) {
        var_r2 = (u16) sa2__sub_8004418((s16) temp_r4, (s16) temp_r6);
    }
    var_r1 = temp_r6;
    if (temp_r6 < 0) {
        var_r1 = 0 - temp_r6;
    }
    var_r0 = temp_r4;
    if (temp_r4 < 0) {
        var_r0 = 0 - temp_r4;
    }
    if (var_r1 > var_r0) {
        var_r0_2 = temp_r6;
    } else {
        var_r0_2 = temp_r4;
    }
    if (var_r0_2 < 0) {
        var_r0_2 = 0 - var_r0_2;
    }
    temp_r0_2 = (s16) arg0;
    var_r1_2 = temp_r0_2 * (var_r0_2 << 5);
    if (var_r1_2 > 0x7FFF) {
        var_r1_2 = 0x7FFF;
    } else {
        temp_r0_3 = temp_r0_2 << 7;
        if (var_r1_2 < temp_r0_3) {
            var_r1_2 = temp_r0_3;
        }
    }
    temp_r1->unk14 = (s16) var_r1_2;
    temp_r2 = (s16) var_r2;
    temp_r1_2 = temp_r1->unk14;
    temp_r3 = (s32) ((temp_r1_2 * ((s32) ((u16) gSineTable[temp_r2 + 0x100] << 0x10) >> 0x16)) << 8) >> 0x10;
    temp_r6_2 = temp_r1->unk0 + temp_r3;
    temp_r1->unk0 = temp_r6_2;
    temp_r1_3 = (((s32) ((u16) gSineTable[temp_r2] << 0x10) >> 0x16) * temp_r1_2) << 8;
    temp_r1->unk4 = (s32) (temp_r1->unk4 + ((s32) temp_r1_3 >> 0x10));
    if (temp_r3 < 0) {
        if (temp_r7 > temp_r6_2) {
            goto block_25;
        }
    } else if (temp_r7 < temp_r6_2) {
block_25:
        temp_r1->unk0 = temp_r7;
    }
    if ((s32) ((temp_r1_3 >> 0x10) << 0x10) < 0) {
        if (temp_r0 > (s32) temp_r1->unk4) {
            temp_r1->unk4 = temp_r0;
        }
    } else if (temp_r0 < (s32) temp_r1->unk4) {
        temp_r1->unk4 = temp_r0;
    }
    temp_r2_2 = temp_r1->unk50;
    if (temp_r2_2->moveState & 0x100) {
        if (temp_r1->unk54 != 0) {
            sub_801EBC0(0U);
            return;
        }
        sub_801EBC0(4U, temp_r2_2);
    }
}

void sub_8020284(void) {
    Sprite *temp_r4;
    s32 temp_r1_3;
    u16 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 var_r0;
    u32 var_r0_2;
    u32 var_r2;
    void *temp_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk50;
    temp_r4 = temp_r1 + 0x20;
    if ((0x1C & temp_r3->unk2B) == 0x14) {
        return;
    }
    temp_r4->x = (s16) (((s32) temp_r1->unk0 >> 8) - gCamera.x) + temp_r1->unk10;
    temp_r4->y = (s16) (((s32) temp_r1->unk4 >> 8) - gCamera.y) + temp_r1->unk12;
    temp_r4->oamFlags = temp_r3->unkE0->unk20 + 0x40;
    temp_r1_2 = temp_r4->frameFlags & 0xFFFFCFFF;
    temp_r4->frameFlags = temp_r1_2;
    temp_r2 = (temp_r3->unkE0->unk14 & 0x3000) | temp_r1_2;
    temp_r4->frameFlags = temp_r2;
    if ((u32) temp_r1->unk19 > 0xCU) {
        temp_r4->palId = temp_r3->unkE0->unk2B;
        var_r2 = temp_r2 | 0x40000;
    } else {
        temp_r4->palId = 0;
        var_r2 = temp_r2 & 0xFFFBFFFF;
    }
    temp_r4->frameFlags = var_r2;
    if (1 & temp_r1->unk16) {
        var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
    } else {
        var_r0 = temp_r4->frameFlags | 0x400;
    }
    temp_r4->frameFlags = var_r0;
    if (temp_r1->unk50->unk4 & 0x10000) {
        var_r0_2 = temp_r4->frameFlags | 0x800;
    } else {
        var_r0_2 = temp_r4->frameFlags & 0xFFFFF7FF;
    }
    temp_r4->frameFlags = var_r0_2;
    UpdateSpriteAnimation(temp_r4);
    temp_r0 = temp_r1->unk50;
    temp_r1_3 = temp_r0->unk0;
    if ((temp_r1_3 == sub_800EAEC) || (temp_r1_3 == Player_800EAAC) || (temp_r1_4 = (u32) (temp_r0->unk2B << 0x1E) >> 0x1E, (gPlayers[temp_r1_4].callback == sub_800EAEC)) || (gPlayers[temp_r1_4].callback == Player_800EAAC)) {
        temp_r1->unk16 = (u16) (8 | temp_r1->unk16);
    }
    if (!(8 & temp_r1->unk16)) {
        DisplaySprite(temp_r4);
    }
}

void sub_80203D4(Player *p) {
    Task *temp_r0;
    Task *temp_r5;
    u16 temp_r1;

    temp_r5 = gStageData.task98;
    if ((temp_r5 == NULL) && ((0xF & p->unk2A) == 1)) {
        temp_r0 = TaskCreate(sub_801EDB4, 0x58U, 0x3010U, 0U, sub_8020434);
        gStageData.task98 = temp_r0;
        temp_r1 = temp_r0->data;
        temp_r1->unk0 = (s32) p->qWorldX;
        temp_r1->unk4 = (s32) p->qWorldY;
        temp_r1->unk50 = p;
        temp_r1->unk54 = temp_r5;
    }
}

void sub_8020434(Task *t) {
    gStageData.task98 = NULL;
}

void sub_8020444(Player *arg0) {
    void (*var_r0)();

    if ((0xF & arg0->unk2A) == 1) {
        if ((arg0->unkC & 0x18) != 0x10) {
            var_r0 = sub_801EE74;
        } else {
            var_r0 = sub_801EF6C;
        }
    } else {
        var_r0 = sub_801FC2C;
    }
    gStageData.task98->main = var_r0;
}

void sub_8020488(Player *arg0) {
    s32 temp_r2;
    void (*var_r0)();

    if ((0xF & arg0->unk2A) == 1) {
        temp_r2 = arg0->unkC & 0x18;
        if (temp_r2 != 8) {
            if (arg0->unkBC == -1U) {
                if (temp_r2 != 0x10) {
                    var_r0 = sub_801F6D8;
                } else {
                    var_r0 = sub_801F7E0;
                }
            } else {
                var_r0 = sub_801F5B4;
            }
        } else if (arg0->moveState & 4) {
            var_r0 = sub_801F8D8;
        } else {
            var_r0 = sub_801FA64;
        }
    } else if (arg0->unkBC == -1U) {
        var_r0 = sub_801FFA8;
    } else {
        var_r0 = sub_801FDAC;
    }
    gStageData.task98->main = var_r0;
}

void sub_802051C(void) {
    gStageData.task98->main = sub_801F0DC;
}

void sub_8020530(void) {
    gStageData.task98->main = sub_801F258;
}

void sub_8020544(void) {
    gStageData.task98->main = sub_801F4B4;
}

void sub_8020558(void) {
    gStageData.task98->main = sub_801F534;
}

void sub_802056C(void) {
    s32 var_r1;
    u16 temp_r1;
    u8 temp_r0;
    void (*var_r0)();
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r1->unkC = (s32) (temp_r1->unk50->unk14 + 0xFFFFE800);
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        if ((temp_r1->unk50->unkC & 0x18) == 0x10) {
            var_r0 = sub_801EF6C;
        } else {
            var_r0 = sub_801EE74;
        }
        gCurTask->main = var_r0;
    }
}

void sub_80205F4(void) {
    u16 temp_r4;
    u8 temp_r0;
    void (*var_r0)();
    void *temp_r3;

    temp_r4 = gCurTask->data;
    sub_8020130(0U);
    temp_r0 = temp_r4->unk1A - 1;
    temp_r4->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r3 = temp_r4->unk50;
        if ((0xF & temp_r3->unk2A) == 1) {
            if ((temp_r3->unkC & 0x18) != 0x10) {
                var_r0 = sub_801EE74;
            } else {
                var_r0 = sub_801EF6C;
            }
        } else {
            var_r0 = sub_801FC2C;
        }
        gStageData.task98->main = var_r0;
    }
    sub_8020284();
}

void sub_8020660(void) {
    u16 temp_r1;
    u16 var_r0;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    temp_r1_2 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r1_2->unk10;
    temp_r1->unkC = (s32) temp_r1_2->unk14;
    temp_r1->unk0 = (s32) temp_r1_2->unk10;
    temp_r1->unk4 = (s32) temp_r1_2->unk14;
    sub_8020284();
}

void sub_80206B0(void) {
    u16 temp_r1;
    u16 var_r0;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    temp_r1_2 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r1_2->unk10;
    temp_r1->unkC = (s32) temp_r1_2->unk14;
    temp_r1->unk0 = (s32) temp_r1_2->unk10;
    temp_r1->unk4 = (s32) temp_r1_2->unk14;
    sub_8020284();
}

u32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5) {
    PlayerSpriteInfo *temp_r3;
    Sprite *temp_r6;
    s16 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r5;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r6_2;
    s8 temp_r6_3;
    u8 temp_r2_2;
    u8 temp_r3_2;
    void *temp_r3_3;
    void *temp_r3_4;

    temp_r3 = p->spriteInfoBody;
    temp_r6 = &temp_r3->s;
    if (p->moveState & 0x100) {
        goto block_22;
    }
    temp_r2 = (u16) p3 << 0x10;
    if (*(s->hitboxes + (temp_r2 >> 0xD)) == -1) {
        goto block_22;
    }
    temp_r1 = (s16) (u16) (s32) p5;
    if (temp_r3->s.hitboxes[temp_r1].index == -1) {
        goto block_22;
    }
    if (temp_r1 == 0) {
        temp_r3_2 = p->spriteOffsetX;
        subroutine_arg0.unk0 = (u8) (0 - temp_r3_2);
        temp_r2_2 = (u8) p->spriteOffsetY;
        subroutine_arg0.unk1 = (u8) (0 - temp_r2_2);
        subroutine_arg0.unk2 = temp_r3_2;
        subroutine_arg0.unk3 = temp_r2_2;
    } else {
        subroutine_arg0.unk0 = (u8) temp_r6->hitboxes[temp_r1].b.left;
        subroutine_arg0.unk1 = (u8) temp_r6->hitboxes[temp_r1].b.top;
        subroutine_arg0.unk2 = (u8) temp_r6->hitboxes[temp_r1].b.right;
        subroutine_arg0.unk3 = (u8) temp_r6->hitboxes[temp_r1].b.bottom;
    }
    var_r5 = (s32) p->qWorldY >> 8;
    if ((u32) (u16) ((u16) p->charFlags.anim0 - 0x5C) <= 1U) {
        if (p->moveState & 0x10000) {
            var_r5 -= 0x20;
        } else {
            var_r5 += 0x20;
        }
    }
    temp_r3_3 = s + (temp_r2 >> 0xD);
    temp_r4 = temp_r3_3->unk24;
    temp_r1_2 = worldX + temp_r4;
    temp_r6_2 = (s8) subroutine_arg0.unk0;
    temp_r2_3 = ((s32) p->qWorldX >> 8) + temp_r6_2;
    if (temp_r1_2 <= temp_r2_3) {
        if ((s32) (temp_r1_2 + ((s8) temp_r3_3->unk26 - temp_r4)) < temp_r2_3) {
            if (temp_r1_2 >= temp_r2_3) {
                goto block_16;
            }
            goto block_22;
        }
        goto block_17;
    }
block_16:
    if ((s32) (temp_r2_3 + ((s8) subroutine_arg0.unk2 - temp_r6_2)) >= temp_r1_2) {
block_17:
        temp_r3_4 = s + (temp_r2 >> 0xD);
        temp_r4_2 = temp_r3_4->unk25;
        temp_r2_4 = worldY + temp_r4_2;
        temp_r6_3 = (s8) subroutine_arg0.unk1;
        temp_r1_3 = var_r5 + temp_r6_3;
        if (temp_r2_4 <= temp_r1_3) {
            if ((s32) (temp_r2_4 + ((s8) temp_r3_4->layer - temp_r4_2)) < temp_r1_3) {
                if (temp_r2_4 >= temp_r1_3) {
                    goto block_20;
                }
                goto block_22;
            }
            goto block_21;
        }
block_20:
        if ((s32) (temp_r1_3 + ((s8) subroutine_arg0.unk3 - temp_r6_3)) >= temp_r2_4) {
block_21:
            return 1U;
        }
        goto block_22;
    }
block_22:
    return 0U;
}

u32 sub_8020874(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5, u8 p6) {
    ? spC;
    s32 sp10;
    PlayerSpriteInfo *temp_r3;
    Sprite *temp_r6;
    s16 temp_r1;
    u16 temp_r2;
    u8 temp_r2_2;
    u8 temp_r3_2;

    sp10 = worldY;
    temp_r2 = (u16) p3;
    temp_r3 = p->spriteInfoBody;
    temp_r6 = &temp_r3->s;
    if ((p->moveState & 0x100) || (*(s->hitboxes + ((s32) (temp_r2 << 0x10) >> 0xD)) == -1) || (temp_r1 = (s16) (u16) (s32) p5, (temp_r3->s.hitboxes[temp_r1].index == -1))) {
        return 0U;
    }
    if (temp_r1 == 0) {
        temp_r3_2 = p->spriteOffsetX;
        spC.unk0 = (u8) (0 - temp_r3_2);
        temp_r2_2 = (u8) p->spriteOffsetY;
        spC.unk1 = (u8) (0 - temp_r2_2);
        spC.unk2 = temp_r3_2;
        spC.unk3 = temp_r2_2;
    } else {
        spC.unk0 = (u8) temp_r6->hitboxes[temp_r1].b.left;
        spC.unk1 = (u8) temp_r6->hitboxes[temp_r1].b.top;
        spC.unk2 = (u8) temp_r6->hitboxes[temp_r1].b.right;
        spC.unk3 = (u8) temp_r6->hitboxes[temp_r1].b.bottom;
    }
    return sub_8020A58(s, (s16) temp_r2, worldX, sp10, &spC, p, (u8) (s32) (u8) (s32) p6);
}

u32 sub_8020950(Sprite *s, s32 worldX, s32 worldY, Player *p, u8 param4) {
    s32 spC;
    s8 sp10;
    s16 temp_r0_3;
    s32 var_r4;
    u16 temp_r1_2;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_3;
    u8 temp_r3;
    u8 temp_r4;
    u8 var_r7;
    void *temp_r0_2;

    var_r7 = (u8) (s32) param4;
    temp_r4 = p->spriteOffsetX;
    sp10 = 0 - temp_r4;
    temp_r3 = (u8) p->spriteOffsetY;
    temp_r0_2 = &subroutine_arg0 + 0x11;
    subroutine_arg0.unk11 = (s8) (0 - temp_r3);
    temp_r0_2->unk1 = temp_r4;
    (temp_r0_2 + 1)->unk1 = temp_r3;
    memcpy(&spC, &sp10, 4);
    var_r4 = 0;
    if ((s->hitboxes[0].index == -1) || (temp_r1 = p->moveState, ((0x100 & temp_r1) != 0))) {
        return 0U;
    }
    if ((0x20 & temp_r1) && (p->sprColliding == s)) {
        var_r4 = 1;
        p->moveState = (temp_r1 & ~0x20) | 4;
    }
    temp_r1_2 = (u16) p->charFlags.anim0;
    if (((u32) (u16) (temp_r1_2 - 0xCE) <= 2U) || (temp_r0_3 = (s16) temp_r1_2, (temp_r0_3 == 0xBC)) || (temp_r0_3 == 0xBD) || (temp_r0_3 == 0xBE)) {
        var_r7 = 1;
    }
    temp_r0 = sub_8020A58(s, 0, worldX, worldY, &spC, p, (u8) (s32) var_r7);
    if (temp_r0 != 0) {
        if (0x10000 & temp_r0) {
            p->moveState = (p->moveState | 0x20) & ~4;
            p->sprColliding = s;
            if ((var_r4 == 0) && (s == NULL)) {
                p->qSpeedGround = (s16) (u16) p->qSpeedAirX;
            }
        }
    } else if (var_r4 != 0) {
        temp_r1_3 = p->moveState;
        if (!(0x20 & temp_r1_3)) {
            p->moveState = (temp_r1_3 & ~0x40) | 4;
            p->sprColliding = (Sprite *) temp_r0;
        }
    }
    return temp_r0;
}

u32 sub_8020A58(Sprite *s, s16 param1, s32 worldX, s32 worldY, void *param4, Player *p, u8 param6) {
    Sprite *sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s16 temp_r2_3;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r2;
    s32 var_r5;
    s32 var_r6_2;
    s32 var_r6_3;
    s32 var_r7;
    s8 temp_r0_2;
    s8 temp_r0_3;
    s8 temp_r0_4;
    s8 temp_r4_2;
    s8 temp_r4_3;
    s8 temp_r5;
    u32 temp_r1_4;
    u32 temp_r1_5;
    u32 var_r6;
    u32 var_r7_2;
    u8 var_r3;
    void *temp_r0_5;
    void *temp_r1_3;
    void *temp_r3_2;
    void *temp_r4;

    sp0 = s;
    sp4 = worldY;
    sp8 = (s32) (u8) (s32) param6;
    temp_r0 = (s32) p->qWorldX >> 8;
    var_r7 = (s32) p->qWorldY >> 8;
    var_r6 = 0;
    if ((u32) (u16) ((u16) p->charFlags.anim0 - 0x5C) <= 1U) {
        if (p->moveState & 0x10000) {
            var_r7 -= 0x20;
        } else {
            var_r7 += 0x20;
        }
    }
    temp_r1 = (u16) param1 << 0x10;
    temp_r4 = sp0 + (temp_r1 >> 0xD);
    temp_r0_2 = (s8) temp_r4->unk24;
    sp14 = (s32) temp_r0_2;
    temp_r3 = temp_r0_2 + worldX;
    temp_r0_3 = param4->unk0;
    temp_r2 = temp_r0 + temp_r0_3;
    sp10 = (s32) temp_r0_3;
    if (temp_r3 <= temp_r2) {
        if ((s32) (temp_r3 + ((s8) temp_r4->unk26 - sp14)) < temp_r2) {
            if (temp_r3 < temp_r2) {
                goto block_52;
            }
            goto block_8;
        }
        goto block_10;
    }
block_8:
    if ((s32) (temp_r2 + (param4->unk2 - sp10)) < temp_r3) {
        goto block_52;
    }
block_10:
    temp_r3_2 = sp0 + (temp_r1 >> 0xD);
    temp_r4_2 = temp_r3_2->unk25;
    temp_r2_2 = sp4 + temp_r4_2;
    temp_r0_4 = param4->unk1;
    temp_r1_2 = var_r7 + temp_r0_4;
    spC = (s32) temp_r0_4;
    if (temp_r2_2 <= temp_r1_2) {
        if ((s32) (temp_r2_2 + ((s8) temp_r3_2->layer - temp_r4_2)) < temp_r1_2) {
            if (temp_r2_2 < temp_r1_2) {
                goto block_52;
            }
            goto block_14;
        }
        goto block_16;
    }
block_14:
    if ((s32) (temp_r1_2 + (param4->unk3 - spC)) < temp_r2_2) {
        goto block_52;
    }
block_16:
    temp_r1_3 = sp0 + (temp_r1 >> 0xD);
    temp_r0_5 = temp_r1_3 + 0x24;
    temp_r5 = temp_r1_3->unk24;
    temp_r4_3 = temp_r0_5->unk2;
    if ((s32) (((s32) (temp_r5 + temp_r4_3) >> 1) + worldX) <= temp_r0) {
        var_r5 = (worldX + temp_r4_3) - (sp10 + temp_r0);
        var_r0 = 0x40000;
    } else {
        var_r5 = (worldX + temp_r5) - (param4->unk2 + temp_r0);
        var_r0 = 0x80000;
    }
    if ((s32) (sp4 + ((s32) ((s8) *((temp_r0_5 + 2) - 1) + (s8) temp_r1_3->layer) >> 1)) > var_r7) {
        var_r3 = (sp4 + (sp0 + (temp_r1 >> 0xD))->unk25) - (var_r7 + param4->unk3);
        temp_r1_4 = p->moveState;
        var_r7_2 = temp_r1_4;
        if (temp_r1_4 & 0x10000) {
            var_r1 = var_r3 - 2;
            if (var_r1 > 0) {
                goto block_30;
            }
            goto block_31;
        }
        var_r1 = var_r3 + 5;
        if (var_r1 > 0) {
            goto block_27;
        }
        goto block_28;
    }
    var_r3 = (sp4 + (s8) (sp0 + (temp_r1 >> 0xD))->layer) - (var_r7 + spC);
    temp_r1_5 = p->moveState;
    var_r7_2 = temp_r1_5;
    if (temp_r1_5 & 0x10000) {
        var_r1 = var_r3 - 5;
        if (var_r1 < 0) {
block_27:
            var_r1 = 0;
        }
block_28:
        var_r6_2 = var_r0 | 0x10000;
    } else {
        var_r1 = var_r3 + 2;
        if (var_r1 < 0) {
block_30:
            var_r1 = 0;
        }
block_31:
        var_r6_2 = var_r0 | 0x20000;
    }
    var_r2 = var_r5;
    if (var_r5 < 0) {
        var_r2 = 0 - var_r5;
    }
    var_r0_2 = var_r1;
    if (var_r0_2 < 0) {
        var_r0_2 = 0 - var_r0_2;
    }
    if (var_r2 < var_r0_2) {
        var_r6_3 = var_r6_2 & 0xC0000;
        goto block_45;
    }
    var_r6_3 = var_r6_2 & 0x30000;
    if (0x10000 & var_r6_3) {
        if (((s32) p->qSpeedAirY < 0) && (sp8 == 0)) {
            return 0U;
        }
        temp_r2_3 = 4 & var_r7_2;
        if ((temp_r2_3 == 0) && ((p->unk26 + 0x20) & 0x40)) {
            p->qSpeedGround = temp_r2_3;
        }
        goto block_45;
    }
block_45:
    var_r6 = var_r6_3 | (((var_r5 << 8) & 0xFF00) | var_r3);
    if (0xC0000 & var_r6) {
        if (!(var_r6 & 0xFF00)) {
            var_r0_3 = 0xFFF300FF;
            goto block_49;
        }
    } else {
        var_r0_3 = 0xFFFF00FF;
block_49:
        var_r6 &= var_r0_3;
    }
    if (!(0x30000 & var_r6)) {
        var_r6 &= 0xFFFFFF00;
    }
block_52:
    return var_r6;
}

u32 sub_8020CE0(Sprite *s, s32 worldX, s32 worldY, u16 param3, Player *p) {
    s8 sp4;
    Sprite *temp_r7;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r1;
    s8 temp_r3_2;
    s8 temp_r4_3;
    s8 temp_r5;
    s8 temp_r7_2;
    u32 var_r5;
    u8 temp_r3;
    u8 temp_r4;
    void *temp_r0;
    void *temp_r2_2;
    void *temp_r3_3;

    temp_r7 = &p->spriteInfoBody->s;
    temp_r4 = p->spriteOffsetX;
    sp4 = 0 - temp_r4;
    temp_r3 = (u8) p->spriteOffsetY;
    temp_r0 = &subroutine_arg0 + 5;
    subroutine_arg0.unk5 = (s8) (0 - temp_r3);
    temp_r0->unk1 = temp_r4;
    (temp_r0 + 1)->unk1 = temp_r3;
    memcpy(&subroutine_arg0, &sp4, 4);
    if (sub_802C080(p) == 0) {
        temp_r2 = param3 << 0x10;
        if ((*(s->hitboxes + (temp_r2 >> 0xD)) != -1) && (temp_r7->hitboxes[0].index != -1)) {
            var_r5 = (u32) (p->qWorldY << 8) >> 0x10;
            if ((u32) (u16) ((u16) p->charFlags.anim0 - 0x5C) <= 1U) {
                if (p->moveState & 0x10000) {
                    var_r0 = var_r5 << 0x10;
                    var_r1 = 0xFFE00000;
                } else {
                    var_r0 = var_r5 << 0x10;
                    var_r1 = 0x200000;
                }
                var_r5 = (u32) (var_r0 + var_r1) >> 0x10;
            }
            temp_r2_2 = s + (temp_r2 >> 0xD);
            temp_r3_2 = temp_r2_2->unk24;
            temp_r4_2 = worldX + temp_r3_2;
            temp_r7_2 = subroutine_arg0.unk0;
            temp_r1 = (s16) ((u32) (p->qWorldX << 8) >> 0x10) + temp_r7_2;
            if (temp_r4_2 <= temp_r1) {
                if ((s32) (temp_r4_2 + ((s8) temp_r2_2->unk26 - temp_r3_2)) < temp_r1) {
                    if (temp_r4_2 >= temp_r1) {
                        goto block_11;
                    }
                    goto block_17;
                }
                goto block_12;
            }
block_11:
            if ((s32) (temp_r1 + ((s8) subroutine_arg0.unk2 - temp_r7_2)) >= temp_r4_2) {
block_12:
                temp_r3_3 = s + (temp_r2 >> 0xD);
                temp_r4_3 = temp_r3_3->unk25;
                temp_r2_3 = worldY + temp_r4_3;
                temp_r5 = subroutine_arg0.unk1;
                temp_r1_2 = (s16) var_r5 + temp_r5;
                if (temp_r2_3 <= temp_r1_2) {
                    if ((s32) (temp_r2_3 + ((s8) temp_r3_3->layer - temp_r4_3)) < temp_r1_2) {
                        if (temp_r2_3 >= temp_r1_2) {
                            goto block_15;
                        }
                        goto block_17;
                    }
                    goto block_16;
                }
block_15:
                if ((s32) (temp_r1_2 + ((s8) subroutine_arg0.unk3 - temp_r5)) >= temp_r2_3) {
block_16:
                    Player_8014550(p);
                    return 1U;
                }
                goto block_17;
            }
            goto block_17;
        }
    }
block_17:
    return 0U;
}

u32 sub_8020E3C(Sprite *s, s32 param1, s32 param2, s16 param3, Player *p) {
    PlayerSpriteInfo *temp_r0;
    Sprite *temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r5;
    s8 temp_r5_2;
    void *temp_r3;
    void *temp_r3_2;

    temp_r0 = p->spriteInfoBody;
    temp_r0_2 = &temp_r0->s;
    if (!(p->moveState & 0x100)) {
        temp_r0_3 = (u16) param3 << 0x10;
        temp_r2 = temp_r0_3 >> 0xD;
        if ((*(s->hitboxes + temp_r2) != -1) && (temp_r0_2->unk28 != -1)) {
            temp_r3 = s + temp_r2;
            temp_r4 = temp_r3->unk24;
            temp_r2_2 = param1 + temp_r4;
            temp_r5 = temp_r0->unk38;
            temp_r1 = ((s32) p->qWorldX >> 8) + temp_r5;
            if (temp_r2_2 <= temp_r1) {
                if ((s32) (temp_r2_2 + ((s8) temp_r3->unk26 - temp_r4)) < temp_r1) {
                    if (temp_r2_2 >= temp_r1) {
                        goto block_6;
                    }
                    goto block_12;
                }
                goto block_7;
            }
block_6:
            if ((s32) (temp_r1 + ((s8) temp_r0->unk3A - temp_r5)) >= temp_r2_2) {
block_7:
                temp_r3_2 = s + (temp_r0_3 >> 0xD);
                temp_r4_2 = temp_r3_2->unk25;
                temp_r2_3 = param2 + temp_r4_2;
                temp_r5_2 = temp_r0_2->unk2D;
                temp_r1_2 = ((s32) p->qWorldY >> 8) + temp_r5_2;
                if (temp_r2_3 <= temp_r1_2) {
                    if ((s32) (temp_r2_3 + ((s8) temp_r3_2->layer - temp_r4_2)) < temp_r1_2) {
                        if (temp_r2_3 >= temp_r1_2) {
                            goto block_10;
                        }
                        goto block_12;
                    }
                    goto block_11;
                }
block_10:
                if ((s32) (temp_r1_2 + ((s8) temp_r0_2->unk2F - temp_r5_2)) >= temp_r2_3) {
block_11:
                    return 1U;
                }
                goto block_12;
            }
            goto block_12;
        }
    }
block_12:
    return 0U;
}

s32 sub_8020F30(void *arg0, u16 arg1, void *arg2, u16 arg3) {
    ? sp4;
    s16 temp_r0;
    s16 temp_r3_2;
    s32 temp_r1;
    s32 temp_r2_2;
    s32 temp_r2_7;
    s32 temp_r2_8;
    s32 temp_r3;
    s32 temp_r3_6;
    s32 temp_r4;
    s8 temp_r1_2;
    s8 temp_r3_5;
    s8 temp_r4_2;
    s8 temp_r4_3;
    u16 temp_r2;
    u8 temp_r2_3;
    u8 temp_r2_5;
    u8 temp_r3_3;
    u8 temp_r3_4;
    void *temp_r2_4;
    void *temp_r2_6;

    temp_r2 = arg1;
    temp_r4 = arg2->unkE0;
    temp_r3 = arg0->unkE0;
    if (arg2->unk4 & 0x100) {
        goto block_21;
    }
    if (*(temp_r3 + 0x2C + ((s32) (temp_r2 << 0x10) >> 0xD)) == -1) {
        goto block_21;
    }
    temp_r3_2 = (s16) arg3;
    temp_r2_2 = temp_r3_2 * 8;
    if (*(temp_r4 + 0x2C + temp_r2_2) == -1) {
        goto block_21;
    }
    if (temp_r3_2 == 0) {
        temp_r3_3 = arg2->unk24;
        subroutine_arg0.unk0 = (u8) (0 - temp_r3_3);
        temp_r2_3 = arg2->unk25;
        subroutine_arg0.unk1 = (u8) (0 - temp_r2_3);
        subroutine_arg0.unk2 = temp_r3_3;
        subroutine_arg0.unk3 = temp_r2_3;
    } else {
        temp_r2_4 = temp_r4 + 0xC + temp_r2_2;
        subroutine_arg0.unk0 = (u8) temp_r2_4->unk24;
        subroutine_arg0.unk1 = (u8) temp_r2_4->unk25;
        subroutine_arg0.unk2 = (u8) temp_r2_4->unk26;
        subroutine_arg0.unk3 = (u8) temp_r2_4->layer;
    }
    temp_r0 = (s16) temp_r2;
    if (temp_r0 == 0) {
        temp_r3_4 = arg0->unk24;
        sp4.unk0 = (u8) (0 - temp_r3_4);
        temp_r2_5 = arg0->unk25;
        sp4.unk1 = (u8) (0 - temp_r2_5);
        sp4.unk2 = temp_r3_4;
        sp4.unk3 = temp_r2_5;
    } else {
        temp_r2_6 = temp_r3 + 0xC + (temp_r0 * 8);
        sp4.unk0 = (u8) temp_r2_6->unk24;
        sp4.unk1 = (u8) temp_r2_6->unk25;
        sp4.unk2 = (u8) temp_r2_6->unk26;
        sp4.unk3 = (u8) temp_r2_6->layer;
    }
    temp_r3_5 = sp4.unk0;
    temp_r2_7 = ((s32) arg0->unk10 >> 8) + temp_r3_5;
    temp_r4_2 = (s8) subroutine_arg0.unk0;
    temp_r1 = ((s32) arg2->unk10 >> 8) + temp_r4_2;
    if (temp_r2_7 <= temp_r1) {
        if ((s32) (temp_r2_7 + (sp4.unk2 - temp_r3_5)) < temp_r1) {
            if (temp_r2_7 >= temp_r1) {
                goto block_15;
            }
            goto block_21;
        }
        goto block_16;
    }
block_15:
    if ((s32) (temp_r1 + ((s8) subroutine_arg0.unk2 - temp_r4_2)) >= temp_r2_7) {
block_16:
        temp_r4_3 = sp4.unk1;
        temp_r3_6 = ((s32) arg0->unk14 >> 8) + temp_r4_3;
        temp_r1_2 = (s8) subroutine_arg0.unk1;
        temp_r2_8 = ((s32) arg2->unk14 >> 8) + temp_r1_2;
        if (temp_r3_6 <= temp_r2_8) {
            if ((s32) (temp_r3_6 + (sp4.unk3 - temp_r4_3)) < temp_r2_8) {
                if (temp_r3_6 >= temp_r2_8) {
                    goto block_19;
                }
                goto block_21;
            }
            goto block_20;
        }
block_19:
        if ((s32) (temp_r2_8 + ((s8) subroutine_arg0.unk3 - temp_r1_2)) >= temp_r3_6) {
block_20:
            return 1;
        }
        goto block_21;
    }
block_21:
    return 0;
}

s32 sub_80210BC(Player *arg0, u16 arg1, Player *arg2, u16 arg3) {
    ? sp4;
    s32 sp8;
    s32 spC;
    PlayerSpriteInfo *temp_r3;
    PlayerSpriteInfo *temp_r6;
    s16 temp_r0;
    s16 temp_r3_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_8;
    s32 temp_r2_9;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r4_2;
    s8 temp_r0_4;
    s8 temp_r0_5;
    s8 temp_r3_6;
    s8 temp_r3_7;
    s8 temp_r3_8;
    s8 temp_r5;
    u16 temp_r2;
    u8 temp_r2_3;
    u8 temp_r2_6;
    u8 temp_r2_7;
    u8 temp_r3_3;
    u8 temp_r3_4;
    u8 temp_r3_5;
    void *temp_r2_4;
    void *temp_r2_5;

    temp_r2 = arg1;
    temp_r6 = arg2->spriteInfoBody;
    temp_r3 = arg0->spriteInfoBody;
    var_r4 = 0;
    if ((arg2->moveState & 0x100) || (*(temp_r3 + 0x2C + ((s32) (temp_r2 << 0x10) >> 0xD)) == -1) || (temp_r3_2 = (s16) arg3, temp_r2_2 = temp_r3_2 * 8, (*(temp_r6 + 0x2C + temp_r2_2) == -1))) {
        return 0;
    }
    if (gStageData.gameMode != 7) {
        if (temp_r3_2 == 0) {
            temp_r3_3 = arg2->unk24;
            subroutine_arg0.unk0 = (u8) (0 - temp_r3_3);
            temp_r2_3 = arg2->unk25;
            subroutine_arg0.unk1 = (u8) (0 - temp_r2_3);
            subroutine_arg0.unk2 = temp_r3_3;
            subroutine_arg0.unk3 = temp_r2_3;
        } else {
            temp_r2_4 = temp_r2_2 + (temp_r6 + 0xC);
            subroutine_arg0.unk0 = (u8) temp_r2_4->unk24;
            subroutine_arg0.unk1 = (u8) temp_r2_4->unk25;
            subroutine_arg0.unk2 = (u8) temp_r2_4->unk26;
            subroutine_arg0.unk3 = (u8) temp_r2_4->layer;
        }
        temp_r0 = (s16) temp_r2;
        if (temp_r0 != 0) {
            temp_r2_5 = temp_r3 + 0xC + (temp_r0 * 8);
            sp4.unk0 = (u8) temp_r2_5->unk24;
            sp4.unk1 = (u8) temp_r2_5->unk25;
            sp4.unk2 = (u8) temp_r2_5->unk26;
            sp4.unk3 = (u8) temp_r2_5->layer;
        } else {
            goto block_11;
        }
    } else {
        temp_r3_4 = arg2->unk24;
        subroutine_arg0.unk0 = (u8) (0 - temp_r3_4);
        temp_r2_6 = arg2->unk25;
        subroutine_arg0.unk1 = (u8) (0 - temp_r2_6);
        subroutine_arg0.unk2 = temp_r3_4;
        subroutine_arg0.unk3 = temp_r2_6;
block_11:
        temp_r3_5 = arg0->unk24;
        sp4.unk0 = (u8) (0 - temp_r3_5);
        temp_r2_7 = arg0->unk25;
        sp4.unk1 = (u8) (0 - temp_r2_7);
        sp4.unk2 = temp_r3_5;
        sp4.unk3 = temp_r2_7;
    }
    temp_r7 = (s32) arg2->qWorldX >> 8;
    temp_r0_2 = (s32) arg2->qWorldY >> 8;
    temp_r6_2 = (s32) arg0->qWorldX >> 8;
    temp_r0_3 = (s32) arg0->qWorldY >> 8;
    temp_r3_6 = sp4.unk0;
    temp_r2_8 = temp_r6_2 + temp_r3_6;
    temp_r0_4 = (s8) subroutine_arg0.unk0;
    sp8 = (s32) temp_r0_4;
    temp_r1 = temp_r7 + temp_r0_4;
    if (temp_r2_8 <= temp_r1) {
        if ((s32) (temp_r2_8 + (sp4.unk2 - temp_r3_6)) < temp_r1) {
            if (temp_r2_8 < temp_r1) {

            } else {
                goto block_16;
            }
        } else {
            goto block_18;
        }
    } else {
block_16:
        if ((s32) (temp_r1 + ((s8) subroutine_arg0.unk2 - sp8)) < temp_r2_8) {

        } else {
block_18:
            temp_r3_7 = sp4.unk1;
            temp_r2_9 = temp_r0_3 + temp_r3_7;
            temp_r0_5 = (s8) subroutine_arg0.unk1;
            sp8 = (s32) temp_r0_5;
            temp_r1_2 = temp_r0_5 + temp_r0_2;
            if (temp_r2_9 <= temp_r1_2) {
                if ((s32) (temp_r2_9 + (sp4.unk3 - temp_r3_7)) < temp_r1_2) {
                    if (temp_r2_9 < temp_r1_2) {

                    } else {
                        goto block_22;
                    }
                } else {
                    goto block_24;
                }
            } else {
block_22:
                if ((s32) (temp_r1_2 + ((s8) subroutine_arg0.unk3 - sp8)) < temp_r2_9) {

                } else {
block_24:
                    temp_r5 = sp4.unk0;
                    temp_r3_8 = sp4.unk2;
                    spC = ((s32) (sp4.unk1 + (s8) (u8) sp4.unk3) >> 1) + temp_r0_3;
                    if ((s32) (temp_r6_2 + ((s32) (temp_r5 + temp_r3_8) >> 1)) <= temp_r7) {
                        var_r3 = (temp_r6_2 + temp_r3_8) - (temp_r7 + (s8) subroutine_arg0.unk0);
                        var_r0 = 0x40000;
                    } else {
                        var_r3 = (temp_r6_2 + temp_r5) - (temp_r7 + (s8) subroutine_arg0.unk2);
                        var_r0 = 0x80000;
                    }
                    if (spC > temp_r0_2) {
                        var_r2 = (sp4.unk1 + temp_r0_3) - ((s8) subroutine_arg0.unk3 + temp_r0_2);
                        if (!(arg2->moveState & 0x10000)) {
                            goto block_31;
                        }
                        goto block_32;
                    }
                    var_r2 = (sp4.unk3 + temp_r0_3) - ((s8) subroutine_arg0.unk1 + temp_r0_2);
                    if (arg2->moveState & 0x10000) {
block_31:
                        var_r4_2 = var_r0 | 0x10000;
                    } else {
block_32:
                        var_r4_2 = var_r0 | 0x20000;
                    }
                    var_r1 = var_r3;
                    if (var_r3 < 0) {
                        var_r1 = 0 - var_r3;
                    }
                    var_r0_2 = var_r2;
                    if (var_r2 < 0) {
                        var_r0_2 = 0 - var_r2;
                    }
                    if (var_r1 < var_r0_2) {
                        var_r0_3 = 0xC0000;
                    } else {
                        var_r0_3 = 0x30000;
                    }
                    var_r4 = (var_r4_2 & var_r0_3) | (((var_r3 << 8) & 0xFF00) | (u8) var_r2);
                    if (0xC0000 & var_r4) {
                        if (!(var_r4 & 0xFF00)) {
                            var_r0_4 = 0xFFF300FF;
                            goto block_44;
                        }
                    } else {
                        var_r0_4 = 0xFFFF00FF;
block_44:
                        var_r4 &= var_r0_4;
                    }
                    if (0x30000 & var_r4) {
                        if (!(0xFF & var_r4)) {
                            var_r0_5 = 0xFFFCFF00;
                            goto block_49;
                        }
                    } else {
                        var_r0_5 = 0xFFFFFF00;
block_49:
                        var_r4 &= var_r0_5;
                    }
                }
            }
        }
    }
    return var_r4;
}

void ResolvePlayerSpriteCollision(Sprite *s, Player *p) {
    s32 temp_r3;
    u32 temp_r1;

    if (s->hitboxes[0].index != -1) {
        temp_r1 = p->moveState;
        temp_r3 = 0x100 & temp_r1;
        if ((temp_r3 == 0) && (0x20 & temp_r1) && (p->sprColliding == s)) {
            p->moveState = (temp_r1 & ~0x20) | 4;
            p->sprColliding = (Sprite *) temp_r3;
        }
    }
}

void sub_80213F0(Player *p) {
    Player_8014550(p);
}
#endif
