#include "global.h"
#include "core.h"
#include "trig.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ u8 filler0[0xC];
    /* 0x00C */ s32 unkC, unk10[8];
    /* 0x030 */ u8 filler30[0x18];
    /* 0x058 */ s16 unk48;
    /* 0x04C */ u8 *vram4C;
    /* 0x050 */ u8 *vram50;
    /* 0x054 */ u8 *vram54;
    /* 0x058 */ s16 unk58;
    /* 0x05A */ s16 unk5A;
    /* 0x05C */ u8 filler5C[0xC];
    /* 0x068 */ Player *players[2];
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ Sprite spr98;
    /* 0x0C0 */ Sprite sprC0;
    /* 0x0E8 */ Sprite sprE8;
    /* 0x0E8 */ Sprite spr110;
    /* 0x0E8 */ Sprite spr138;
    /* 0x160 */ SpriteTransform tf160;
} EggPinball; /* 0x16C */

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s16 unkC;
    /* 0x0C */ s16 unkE;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
    /* 0x1C */ Sprite s;
    /* 0x44 */ Player *players[2];
} EggPinballBall; /* 0x4C */

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ u8 filler20[8];
    /* 0x28 */ Sprite s;
} EggPinballPlatform; /* 0x50 */
