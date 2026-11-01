#ifndef GUARD_SA3_BOSS_EXTRA_H
#define GUARD_SA3_BOSS_EXTRA_H

#include "game/shared/stage/player.h" // Player

typedef enum {
    ENAP_SONIC,
    ENAP_EGGMAN,

    ENAP_COUNT
} ENonAggressionPlayers;

typedef struct {
    /* 0x00 */ s32 qOffsetX; // TODO: Is it qWorldX instead?
    /* 0x04 */ s32 qOffsetY; // TODO: Is it qWorldY instead?
    /* 0x14 */ s32 unk8;
    /* 0x14 */ s32 unkC;
    /* 0x14 */ s32 unk10;
    /* 0x14 */ u16 unk14;
} UltimateGemerlSub10C; /* 0x18 */

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u8 filler8[0x8];
    /* 0x14 */ s32 unk10;
} UltimateGemerlSub16C; /* 0x14 */

typedef struct {
    /* 0x000 */ u8 lives;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ s16 unk4;
    /* 0x008 */ s16 ringCountdownDelay;
    /* 0x008 */ s16 unk8;
    /* 0x00A */ u8 unkA;
    /* 0x00B */ u8 unkB;
    /* 0x00C */ u8 unkC;
    /* 0x00D */ u8 unkD;
    /* 0x00E */ u8 unkE;
    /* 0x00F */ u8 unkF;
    /* 0x010 */ s16 unk10;
    /* 0x012 */ s16 unk12;
    /* 0x014 */ u8 filler14[0x3];
    /* 0x017 */ u8 unk17;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ u8 *vram1C;
    /* 0x020 */ u8 *vram20;
    /* 0x024 */ u8 *vram24;
    /* 0x028 */ Player *players[ENAP_COUNT]; // 0 : Sonic, 1 : Eggman
    /* 0x030 */ Task *taskCutscene; // -> (AltarEmeraldCutsceneEggmanEscape *)
    /* 0x030 */ u8 filler34[0x2A];
    /* 0x060 */ u8 unk5E;
    /* 0x060 */ u8 unk5F;
    /* 0x060 */ u8 filler60[0xC];
    /* 0x06C */ u8 *vram6C;
    /* 0x072 */ u8 unk70;
    /* 0x072 */ u8 unk71;
    /* 0x072 */ s16 unk72;
    /* 0x074 */ Sprite spr74;
    /* 0x09C */ s32 qUnk9C;
    /* 0x09C */ s32 qUnkA0;
    /* 0x0A4 */ s32 unkA4;
    /* 0x0A8 */ s32 unkA8;
    /* 0x0AC */ u8 fillerAC[0x4];
    /* 0x0B0 */ s32 qUnkB0;
    /* 0x0B4 */ s32 qUnkB4;
    /* 0x0B8 */ u16 rotation;
    /* 0x0BA */ u8 fillerBA[0x2];
    /* 0x0B4 */ u8 unkBC[7];
    /* 0x0C3 */ u8 unkC3;
    /* 0x0C4 */ u8 unkC4;
    /* 0x0C5 */ u8 unkC5;
    /* 0x0C6 */ u8 unkC6;
    /* 0x0C7 */ u8 fillerC7[5];
    /* 0x0CC */ u16 unkCC;
    /* 0x0CE */ u8 fillerCE[6];
    /* 0x0D4 */ s32 unkD4;
    /* 0x0D8 */ s32 unkD8;
    /* 0x0DC */ u8 fillerDC[0x4];
    /* 0x0E0 */ u16 unkE0;
    /* 0x0E2 */ u8 fillerE2[0xA];
    /* 0x0BC */ u8 unkEC;
    /* 0x0BD */ u8 unkED;
    /* 0x0BE */ u8 unkEE;
    /* 0x0BF */ u8 unkEF;
    /* 0x0BA */ u16 unkF0;
    /* 0x0F4 */ s32 qUnkF4;
    /* 0x0F8 */ s32 qUnkF8;
    /* 0x0F8 */ s32 unkFC;
    /* 0x0FC */ u8 filler100[0x8];
    /* 0x108 */ u8 unk108;
    /* 0x10C */ UltimateGemerlSub10C strc10C[4];
    /* 0x16C */ UltimateGemerlSub16C strc16C[4][6];
    /* 0x34C */ u8 filler34C[0x40];
    /* 0x38C */ Sprite spr38C;
    /* 0x3B4 */ Sprite spr3B4[4];
    /* 0x454 */ Sprite spr454[4][6];
    /* 0x814 */ Sprite spr814;
    /* 0x83C */ SpriteTransform tf83C;
    /* 0x848 */ SpriteTransform tf848[4];
} UltimateGemerl; /* 0x878 */

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u8 filler8[0xC];
    /* 0x14 */ u16 rotation;
    /* 0x16 */ u8 filler16[0x2];
    /* 0x18 */ Sprite spr18;
    /* 0x40 */ SpriteTransform tf40;
    /* 0x4C */ UltimateGemerl *boss;
} UltimateGemerlMissile;

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x04 */ s16 unk8;
    /* 0x04 */ s16 unkA;
    /* 0x04 */ s16 unkC;
    /* 0x04 */ s16 unkE;
    /* 0x10 */ Sprite s;
} UltimateGemerlExplosion; /* 0x38 */

// -> (AltarEmeraldCutsceneEggmanEscape *)
void CreateUltimateGemerlForCutscene(Task *taskCutscene);

// TODO: These are all temporarily in the header.
//       Move back into boss_extra.c once no longer needed by M2C.
void CreateUltimateGemerlBoss(void);
void TaskDestructor_878_8081D64(Task *t);
void Task_878_8081E74(void);
void sub_878_8081EFC(UltimateGemerl *boss);
void sub_878_8081FBC(UltimateGemerl *boss);
void sub_878_808211C(UltimateGemerl *boss);
void sub_878_8082388(UltimateGemerl *boss);
void sub_878_8082428(UltimateGemerl *boss);
void sub_878_80824F4(UltimateGemerl *boss);
void sub_878_8082794(UltimateGemerl *boss);
void sub_878_8082A4C(UltimateGemerl *boss);
void sub_878_8082D08(UltimateGemerl *boss);
s32 sub_878_8082E2C(UltimateGemerl *boss, u8 param1);
void sub_878_8083A44(UltimateGemerl *boss, u8 param1);
void sub_8086FF8(UltimateGemerl *boss, u8 param1);
void sub_878_8083BE4(UltimateGemerl *boss);
void sub_878_8083F8C(UltimateGemerl *boss);
void sub_878_808439C(UltimateGemerl *boss);
void sub_878_808491C(UltimateGemerl *boss);
void sub_878_8084B2C(UltimateGemerl *boss);
void sub_878_8084BEC(UltimateGemerl *boss);
void sub_878_8084C50(UltimateGemerl *boss);
void sub_878_8084EB4(UltimateGemerl *boss);
void sub_878_80851FC(UltimateGemerl *boss, u8 param1);
void sub_878_80853D8(UltimateGemerl *boss);
void sub_878_8085458(UltimateGemerl *boss);
void sub_878_80854B8(UltimateGemerl *boss, u8 param1);
void sub_8085588(u8 *param0, s16 param1);
void sub_8085618(u16 param0, u16 param1, s16 param2);
void unused_80856DC(u16 param0, u16 param1, s16 param2);
void sub_808587C(u16 param0, u16 param1, s16 param2);
void sub_878_80862D8(UltimateGemerl *boss);
void TaskDestructor_878_8086ED8(Task *t);
void Task_878_8086F08(void);
void Task_878_8086F48(void);
void Task_878_8086FA4(void);
void Task_878_CallDestroy(Task *t);
void Task_Missile_8086B94(void);
void sub_808706C(UltimateGemerl *boss, u8 param1);
void sub_878_80870B0(UltimateGemerl *boss);
u8 sub_80871CC(UltimateGemerl *boss, Player *p);

// TODO: Remove these once module is finished!
#ifdef M2C
void CreateUltimateGemerlBoss(UltimateGemerl *boss);
void Task_878_8081E74(UltimateGemerl *boss);
void sub_8085588(u8 *param0, s16 param1, UltimateGemerl *boss);
void Task_Missile_8086B94(UltimateGemerlMissile *missile);
void Task_878_8086F08(UltimateGemerl *boss);
void Task_878_8086F48(UltimateGemerl *boss);
void Task_878_8086FA4(UltimateGemerl *boss);
void TaskDestructor_878_8081D64(UltimateGemerl *boss);
#endif

#endif // GUARD_SA3_BOSS_EXTRA_H
