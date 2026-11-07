#ifndef GUARD_SA3_EGGMAN_ESCAPE_H
#define GUARD_SA3_EGGMAN_ESCAPE_H

// TODO: This might be multiple utility modules

typedef struct {
    u8 filler0[2];
    u8 unk2;
    u8 unk3;
    u8 filler4[0x10];
    Sprite2 *spr14;
    u8 filler18[0x18];
} Something;

// TODO: Might be identical to HyberEggRoboStrc194
typedef struct {
    /* 0x00 */ Vec2_32 qWorld;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u16 unk18;
    /* 0x1A */ s16 unk1A;
} EggmanEscapeStrc14; /* 0x1C */

// TODO: Probably identical to HyberEggRoboPlatform?
typedef struct {
    /* 0x00 */ u8 initialArg0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u8 *vram8;
    /* 0x0C */ u8 *vramC;
    /* 0x10 */ u8 *vram10;
    /* 0x14 */ EggmanEscapeStrc14 unk14[3];
    /* 0x68 */ Sprite3 sprites[3]; // 0 : Eggman, 1 : Neo Egg Mobile, 2 : Gemerl
    /* 0x110 */ SpriteTransform tf;
} AltarEmeraldCutsceneEggmanEscape; /* 0x11C */

void sub_8078DB0(s16 anim, s8 pattern, s16 param2, bool8 param3);
void sub_807A0E8(u8 *param0, s16 param1);
void PlayVoiceEggmanHit(void);
void sub_807A4A8(void);
void sub_807F4F0(u8 *param0, s16 param1);

void SetFixedRandomIfTimeAttackMode(void);

Task *sub_8079758(u8 stateIndex, s16 x, s16 y, s16 arg3, u16 angle, u8 arg5, s16 arg6, u8 *vram);

#endif // GUARD_SA3_EGGMAN_ESCAPE_H
