#ifndef GUARD_SA3_PLAYER_H
#define GUARD_SA3_PLAYER_H

#include "sprite.h"
#include "game/entity.h" // SpriteBase

typedef enum {
    SONIC, // 0
#if (GAME > GAME_SA1)
    CREAM, // 1
#endif
    TAILS, // 2
    KNUCKLES, // 3
    AMY, // 4
    PLAYERCHAR_COUNT, // 5
    PLAYERCHAR_NONE = 0xFF,
} eCharacter;

#define NUM_SINGLE_PLAYER_CHARS 2
#define NUM_MULTI_PLAYER_CHARS  4

#define MAX_PLAYER_NAME_LENGTH 6

#define PLAYER_LAYER_FRONT 0
#define PLAYER_LAYER_BACK  1

// Declared beforehand because it's used inside Player struct
struct Player;
typedef struct Player Player;
typedef void (*PlayerCallback)(Player *p);

#define PLAYER_1                0
#define PLAYER_2                1
#define PLAYER_3                2
#define PLAYER_4                3
#define GET_SP_PLAYER_V0(index) ((index == PLAYER_1) ? &gPlayers[gStageData.playerIndex] : &gPlayers[p->charFlags.partnerIndex])
#define GET_SP_PLAYER_V1(index) ((index != PLAYER_1) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.playerIndex])

PACKED_UNION(StateNum, {
    u16 raw;

    // TODO: This is from old documentation.
    //       Double-check these!
    struct {
        u8 subCount : 4;
        u8 other : 3; // TODO: name
        u8 subHighBit : 1;
        s8 highValue : 8;
    } split;
});

// SA3
//
// Pointed to by Player::unkE0
typedef struct {
    /* 0x00 */ SpriteBase base; // maybe SpriteTransform instead?
    /* 0x0C */ Sprite s;
} PlayerSprite; /* size: 0xF0 ? */

struct Player {
    // Code (Character Movement) to be executed
    PlayerCallback callback; // 0x00

    /* v4-values:
        0x00000001: Facing left
        0x00000004: In Air
        0x00000006: Jumping (-> 0x7 = Jumping & face left)
    */
    /* 0x04 */ u32 moveState;
    /* 0x08 */ u32 moveState2; // TODO: More specific name!

    u32 unkC; // Bitfield

    /* 0x10 */ s32 qWorldX;
    /* 0x14 */ s32 qWorldY;

    // Speed values.
    // Horizontal Speed has 2 values [Air/Ground]
    // (used for speeding up after hitting the ground)
    // Vertical speed only has one
    // (Since no acceleration happens after touching the ground or a platform)
    s16 qSpeedAirX; // 0x18
    s16 qSpeedAirY; // 0x1A
    s16 qSpeedGround; // 0x1C

    u16 keyInput; // 0x1E
    u16 keyInput2; // 0x20
    u16 unk22;

    u8 unk24;
    s8 unk25;
    u8 unk26; // maybe a bitfield (upper 2 bits is 1 value)
    u8 unk27; // SA2: Player.unk38 (layer?)

    struct {
        u16 padding0; // 0x28
        u8 character : 4; // CHARACTER_SONIC, ..., CHARACTER_AMY | 0x2A
        u8 padding1 : 4; // 0x2A

        u8 partnerIndex : 2; // Index of the partner in gPlayers[] | 0x2B
        u8 someIndex : 3;
        u8 someFlag0 : 1;
        u8 someFlag1 : 1;
        u8 boostIsActive : 1;

        u8 unk2C_01 : 1; // 0x2C
        u8 unk2C_02 : 1; // 0x2C
        u8 unk2C_04 : 1;
        u8 unk2C_padding_08 : 3;
        u8 unk2C_40 : 1; // 0x2C
        u8 unk2C_80 : 1; // 0x2C

        u8 unk2D_0 : 4; // 0x2D
        u8 unk2D_padding : 4; // 0x2D

        // StateNum state0;    // 0x2E-0x2F
        u8 state0_subCount : 4;
        u8 state0_other : 3; // TODO: name
        u8 state0_subHighBit : 1;
        s8 state0_highValue : 8;

        // NOTE: In rotating_handle.c:Task_80326D8 anim0 is divided by 86
        // TODO: Find meaning of that value!
        s16 anim0; // 0x30
        s16 anim1; // 0x32
        u16 anim2; // 0x34

        // TODO: Anim variant?
        u16 state1; // 0x36-0x37
    } charFlags;

    s32 qUnk38;
    s32 qUnk3C;
    u8 Padding40[0x2];

    s16 unk42;
    s16 unk44;

    u16 Spindash_Velocity; // 0x46

    u8 Padding5[0x2];

    s16 framesInvulnerable; // 0x4A
    s16 framesInvincible; // 0x4C

    /* Not sure whether this is of type charFlags or not, but between @ _80006AE and
       _8000718 sub_8000538() takes the lower nybble of the v4E, containing the partner's
       charId
        --- UPDATE: This seems to be a frame counter of some sort?
                    If it's > 0 input is ignored if the character is on the ground and
                    tries to move left or right.
    */
    s16 unk4E;

    u16 boostEffectCounter; // 0x50

    s16 idleAndCamCounter; // 0x52 | counter until idle-animation
                           // or camera-movement when looking up/down (starts at 0x28)

    u16 unk54; // 0x54

    s8 unk56;
    u8 unk57;

    u8 filler58[0x2];

    u8 unk5A;
    u8 unk5B;

    u8 unk5C;
    u8 unk5D;

    u16 unk5E;
    u16 unk60;

    s16 unk62;
    u8 filler64[0x2];

    u16 unk66;
    u8 unk68;
    u8 unk69;
    u8 filler6A[0x2];

    /* 0x6C */ Sprite *sprColliding; // set when interacting with some interactables

    s32 qUnk70;
    s32 qUnk74;
    s8 unk78;
    u8 filler79[0x13];

    // x8C and v90 are speed-related
    s32 unk8C; // max speed?
    s32 unk90; // acceleration?

    s32 unk94;

    u8 unk98; // is this a union?
    u8 unk99; // is this a union?
    u8 unk9A; // is this a union?
    u8 unk9B; // is this a union?

    /* 0x9C */ s16 qCamOffsetX;
    /* 0x9E */ s16 qCamOffsetY;

    u8 PaddingA0[0x4];

    u8 unkA4;
    u8 PaddingA5[0x3];

    // Maybe vA8 -> vC2 are signed?
    u32 unkA8;
    u32 unkAC;
    u32 unkB0;
    u32 unkB4;
    u32 unkB8;
    u32 unkBC;
    u16 unkC0;
    u16 unkC2;

    struct Task *unkC4[0x03]; // -> (PlayerUnkC4 *)
    struct Task *taskTagAction;
    u32 unkD4;
    u32 unkD8;
    u32 unkDC;

    PlayerSprite *spriteData;

    //    SpriteInfo* spriteInfo; // 0xE0 | the information is 0x3C bytes long
    u32 unkE4;

    Vec2_16 unkE8;
    s8 unkEC;
    s32 qUnkF0;
    u16 palette[16];
    u8 Padding114[0x28];

    u8 unk13C;
    u8 unk13D;

    u16 *demoplayInput_Start;
    u16 *demoplayInput_Current;

    u8 Padding8[0x8];
};

typedef struct PlayerUnkC4 {
    u32 unk0;
    s16 playerId;
} PlayerUnkC4;

extern Player gPlayers[NUM_MULTI_PLAYER_CHARS];

typedef struct Struc_3001150 {
    u8 filler0[0x1C];
    u8 filler1C[0x4];
    u8 filler20[0x450];
} Struc_3001150;
Struc_3001150 gUnknown_03001150;

extern s16 sub_801480C(Player *p);
void sub_80213F0(Player *p);
bool32 sub_802C080(Player *p); // Player_Hurt ?
bool32 sub_802C0D4(Player *p);

#endif // GUARD_SA3_PLAYER_H