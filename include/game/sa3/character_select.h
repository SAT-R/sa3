#ifndef GUARD_SA3_CHARACTER_SELECT_H
#define GUARD_SA3_CHARACTER_SELECT_H

#include "constants/characters.h" // NUM_CHARACTERS

// BUG: Note that resultVar in the CS_SIO_CHECK_*() macros gets checked,
//      even though it is not set if (cs->createIndex == 1)!
//      All the functions using this code don't initialize the variable in the original game.
#define CS_SIO_CHECK_A(resultVar, playerIndex)                                                                                             \
    if ((cs->createIndex != 0) && (cs->createIndex != 3)) {                                                                                \
        if (cs->createIndex == 1) {                                                                                                        \
            if (playerIndex == 0) {                                                                                                        \
                resultVar = sub_8024074(cs->unk4);                                                                                         \
            } else {                                                                                                                       \
                resultVar = sub_8023E04();                                                                                                 \
            }                                                                                                                              \
            cs->unk9 |= 0x10 & resultVar;                                                                                                  \
        }                                                                                                                                  \
        if (resultVar < 0) {                                                                                                               \
            sub_802613C();                                                                                                                 \
            return;                                                                                                                        \
        }                                                                                                                                  \
    }

#define CS_SIO_CHECK_B(resultVar, playerIndex)                                                                                             \
    if ((cs->createIndex != 0) && (cs->createIndex != 3)) {                                                                                \
        if (cs->createIndex == 1) {                                                                                                        \
            if (playerIndex == 0) {                                                                                                        \
                resultVar = sub_80240B4(cs->unk3);                                                                                         \
            } else {                                                                                                                       \
                resultVar = sub_80240F4();                                                                                                 \
            }                                                                                                                              \
            cs->unk9 |= 0x10 & resultVar;                                                                                                  \
        }                                                                                                                                  \
                                                                                                                                           \
        if (resultVar < 0) {                                                                                                               \
            sub_802613C();                                                                                                                 \
            return;                                                                                                                        \
        }                                                                                                                                  \
    }

#define CS_SIO_CHECK_C(resultVar, playerIndex)                                                                                             \
    if (cs->createIndex != 0 && cs->createIndex != 3) {                                                                                    \
        if (cs->createIndex == 1) {                                                                                                        \
            if (playerIndex == 0) {                                                                                                        \
                resultVar = sub_8023E80();                                                                                                 \
            } else {                                                                                                                       \
                resultVar = sub_8024188(cs->unk4);                                                                                         \
            }                                                                                                                              \
            cs->unk9 |= 0x10 & resultVar;                                                                                                  \
        }                                                                                                                                  \
                                                                                                                                           \
        if (resultVar < 0) {                                                                                                               \
            sub_802613C();                                                                                                                 \
            return;                                                                                                                        \
        }                                                                                                                                  \
    }

#define CS_SIO_CHECK_D(resultVar, playerIndex)                                                                                             \
    if (cs->createIndex != 0 && cs->createIndex != 3) {                                                                                    \
        if (cs->createIndex == 1) {                                                                                                        \
            if (playerIndex == 0) {                                                                                                        \
                resultVar = sub_8023EFC();                                                                                                 \
            } else {                                                                                                                       \
                resultVar = sub_80241AC(cs->unk4);                                                                                         \
            }                                                                                                                              \
            cs->unk9 |= 0x10 & resultVar;                                                                                                  \
        }                                                                                                                                  \
                                                                                                                                           \
        if (resultVar < 0) {                                                                                                               \
            sub_802613C();                                                                                                                 \
            return;                                                                                                                        \
        }                                                                                                                                  \
    }

// NOTE: The way they use the allocated tiles is a bit inconsistent...
// TODO: Multiplayer indices...
#define CS_CHARID_ACTIVE  0 // Character the player currently chooses (Player or CPU)
#define CS_CHARID_CHOSEN  1 // Character the player chose as main character
#define CS_CHARID_PLAYER  PLAYER_1 // Main Character (after choosing both)
#define CS_CHARID_PARTNER PLAYER_2 // Partner Character (after choosing both)
#define CS_CHARID_COUNT   2

typedef struct CharacterSelect {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 createIndex;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x09 */ u8 language;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 qFadeBrightness;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ s16 qUnk16;
    /* 0x18 */ s16 qBgCharNameScale;
    /* 0x1C */ void *tilesCharacters[2];
    /* 0x24 */ s32 qTxtSelectAPlayerX;
    /* 0x28 */ s32 qTxtSelectAPlayerY;
    /* 0x2C */ s32 qUnk2C;
    /* 0x30 */ s32 qUnk30;
    /* 0x34 */ s32 qUnk34;
    /* 0x38 */ s32 qUnk38;
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s32 qUnk48;
    /* 0x4C */ s32 qUnk4C;
    /* 0x50 */ s32 qUnk50;
    /* 0x54 */ s32 qUnk54;
    /* 0x58 */ s32 qUnk58;
    /* 0x5C */ s32 qUnk5C;
    /* 0x60 */ s32 qUnk60;
    /* 0x64 */ Vec2_32 qNameTagPos[CS_CHARID_COUNT];
    /* 0x74 */ Sprite spr74;
    /* 0x9C */ Sprite spr9C;
    /* 0xC4 */ Sprite sprC4;
    /* 0xEC */ Sprite sprEC;
    /* 0x114 */ Sprite sprNameTagBack;
    /* 0x13C */ Sprite spr13C;
    /* 0x164 */ Sprite spr164;
    /* 0x18C */ Sprite spr18C;
    /* 0x1B4 */ Background bg1B4;
    /* 0x1F4 */ Background bg1F4;
    /* 0x234 */ Background bg234;
} CharacterSelect; /* 0x274 */

// NOTE(Jace):
// For this enum, make sure to only append new entries
typedef enum {
    /* 0x00 */ CSTMI_BACKDROP = 0,
    /* 0x01 */ CSTMI_UNUSED_1,
    /* 0x02 */ CSTMI_UNUSED_2,
    /* 0x03 */ CSTMI_UNUSED_3,
    /* 0x04 */ CSTMI_UNUSED_4,
    // Tilemaps used for spinning character names
    /* 0x05 */ CSTMI_AFFINE_NAMES,

    //
    // DO NOT PUT ANY ENTRIES HERE! (reserved space for character-names, if someone wants to add them)
    //

    // Tilemaps used for static, already-selected character names
    /* 0x0A */ CSTMI_TXTMAP_NAMES = (CSTMI_AFFINE_NAMES + NUM_CHARACTERS),

    //
    // DO NOT PUT ANY ENTRIES HERE! (reserved space for character-names, if someone wants to add them)
    //

    /* 0x0F */ CSTMI_AFFINE_OK = (CSTMI_TXTMAP_NAMES + NUM_CHARACTERS), // 'OK' string
    /* 0x10 */ CSTMI_AFFINE_QMARKS, // '???' string, for not-unlocked characters

    CSTMI_UNUSED_17,
    // Add new non-character entries HERE, or use UNUSED_x entries!

    CSTMI_COUNT
} ECharacterSelectTileMapIndex;

// TODO: enum for CreateCharacterSelect() 'createIndex' param

void CreateCharacterSelect(u8 createIndex);

/* Used in Single- and Multiplayer menu */
void CharSelect_InitBackgrounds(CharacterSelect *cs);
extern const u16 gCharSelect3_Tilemaps[CSTMI_COUNT];
extern const TileInfo2 gTileInfo_CharSelect3_HeaderBackdrop[1];
#endif // GUARD_SA3_CHARACTER_SELECT_H