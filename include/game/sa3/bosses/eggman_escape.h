#ifndef GUARD_SA3_EGGMAN_ESCAPE_H
#define GUARD_SA3_EGGMAN_ESCAPE_H

// TODO: This might be multiple utility modules

typedef struct {
    u8 filler0[2];
    u8 unk2;
    u8 unk3;
    u8 filler4[0x10];
    s32 unk14;
    u8 filler18[0x18];
} Something;

void sub_8078DB0(s16 anim, s8 pattern, s16 param2, bool8 param3);
void sub_807A0E8(u8 *param0, s16 param1);
void PlayVoiceEggmanHit(void);
void sub_807A4A8(void);

void SetFixedRandomIfTimeAttackMode(void);

Task *sub_8079758(u8 stateIndex, s16 x, s16 y, s16 arg3, u16 angle, u8 arg5, s16 arg6, u8 *vram);

#endif // GUARD_SA3_EGGMAN_ESCAPE_H
