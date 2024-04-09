#ifndef GUARD_SA3_PLAYER_H
#define GUARD_SA3_PLAYER_H

#include "sprite.h"

#define MAX_PLAYER_NAME_LENGTH 6

#define PLAYER_LAYER_FRONT 0
#define PLAYER_LAYER_BACK  1

// Declared beforehand because it's used inside Player struct
struct Player;
typedef void (*PlayerCallback)(struct Player *);

typedef struct Player Player;
struct Player {
    // Code (Character Movement) to be executed
    PlayerCallback callback; // 0x00

    /* v4-values:
        0x00000001: Facing left
        0x00000004: In Air
        0x00000006: Jumping (-> 0x7 = Jumping & face left)
    */
    u32 moveState; // 0x04

    u32 unk8; // 0x08 | bitfield?

    u8 Padding[0x04];

    /* 0x10 */ s32 qWorldX;
    /* 0x14 */ s32 qWorldY;

    // Speed values.
    // Horizontal Speed has 2 values [Air/Ground]
    // (used for speeding up after hitting the ground)
    // Vertical speed only has one
    // (Since no acceleration happens after touching the ground or a platform)
    s16 speedAirX; // 0x18
    s16 speedAirY; // 0x1A
    s16 speedGround; // 0x1C

    u16 keyInput; // 0x1E
    u16 keyInput2; // 0x20

    u8 Padding2[0x02];

    u8 unk24;
    s8 unk25;
    u8 unk26; // maybe a bitfield (upper 2 bits is 1 value)
    u8 unk27; // SA2: Player.unk38 (layer?)

    struct {
        u16 padding0; // 0x28
        u8 charId : 4; // 0x2A /* Index of the player character (I think?) */
        u8 padding1 : 4; // 0x2A

        u8 partnerIndex : 2; // Defines at which of the 0-3 "Player" the partner is
                             // located | 0x2B
        u8 someIndex : 3;
        u8 someFlag0 : 1;
        u8 someFlag1 : 1;
        u8 boostIsActive : 1;

        u8 unk2C_padding_00 : 2; // 0x2C
        u8 unk2C_04 : 1;
        u8 unk2C_padding_08 : 3;
        u8 unk2C_40 : 1; // 0x2C
        u8 unk2C_80 : 1; // 0x2C

        u8 unk2D_0 : 4; // 0x2D
        u8 unk2D_padding : 4; // 0x2D

        // Sprite state manages the sprite's animations
        // The spriteState-vals are (always?) the same that
        // they are the "main indices" of the animations'
        // 'stateNumber0/1' are sub-values which allow
        // an animation to have multiple states!
        // @TODO: Are these bitfields?
        // SpriteStateNumber stateNumber0;    // 0x2E-0x2F
        u8 state0_subCount : 4;
        u8 state0_other : 3; // TODO: name
        u8 state0_subHighBit : 1;
        s8 state0_highValue : 8;

        s16 spriteState0; // 0x30
        s16 spriteState1; // 0x32
        s16 spriteAnimation; // 0x34
        // SpriteStateNumber stateNumber1;    // 0x36-0x37
        u8 state1_subCount : 4;
        u8 state1_other : 3; // TODO: name
        u8 state1_subHighBit : 1;
        s8 state1_highValue : 8;
    } charFlags;

    u8 Padding4[0x0D];

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
    s16 v4E;

    u16 boostEffectCounter; // 0x50

    u16 idleAndCamCounter; // 0x52 | counter until idle-animation
                           // or camera-movement when looking up/down (starts at 0x28)

    u8 Padding53[0x6];

    u8 v5A;
    u8 v5B;

    u8 v5C;
    u8 v5D;

    u16 v5E;
    u16 v60;

    u8 Padding_62[0x8 + 2];

    Sprite *v6C; // set when interacting with some interactables

    u8 Padding_70[0x1C];

    // x8C and v90 are speed-related
    s32 v8C; // max speed?
    s32 v90; // acceleration?

    s32 v94;

    u8 v98; // is this a union?
    u8 v99; // is this a union?
    u8 v9A; // is this a union?
    u8 v9B; // is this a union?

    u16 v9C;
    u16 v9E; // 0x9E

    u8 PaddingA0[0x4];

    u8 vA4;
    u8 PaddingA5[0x3];

    // Maybe vA8 -> vC2 are signed?
    u32 vA8;
    u32 vAC;
    u32 vB0;
    u32 vB4;
    u32 vB8;
    u32 vBC;
    u16 vC0;
    u16 vC2;

    struct Task *vC4[0x03];
    struct Task *vD0; // Points to something while the "Tag-Action" is toggled (not
                      // anymore once released)
    u32 vD4;
    u32 vD8;
    u32 vDC;

    u8 Padding62[0x4];

    //    spriteInfo* spriteInfo; // 0xE0 | the information is 0x3C bytes long
    u32 vE4;

    u8 Padding7[0x54];

    u8 v13C;
    u8 v13D;
    u8 Padding72[0x2];

    u16 *demoplayInput_Start;
    u16 *demoplayInput_Current;

    u8 Padding8[0x8];
};

extern Player gPlayers[4];

bool32 sub_802C0D4(Player *p);

#endif // GUARD_SA3_PLAYER_H