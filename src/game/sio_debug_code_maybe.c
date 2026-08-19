#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/screen_fade.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ u8 filler0[0x10];
    /* 0x000 */ s16 unk10;
    /* 0x000 */ u8 filler12[0xFAE];
    /* 0xFC0 */ ScreenFade fade;
} SDC_FCC; /* 0xFCC */

typedef struct {
    /* 0x00 */ ScreenFade fade;
    /* 0x12 */ u16 unkC;
    /* 0x0E */ u8 unkE[4];
    /* 0x12 */ u8 unk12;
    /* 0x13 */ s8 unk13;
    /* 0x14 */ u8 unk14;
    /* 0x15 */ u8 unk15;
    /* 0x16 */ u8 unk16;
    /* 0x17 */ u8 unk17;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1C */ Background bg1C;
    /* 0x5C */ Background bg5C;
    /* 0x9C */ Sprite spr9C;
    /* 0xC4 */ Sprite sprC4;
} SDC_EC; /* 0xEC */

