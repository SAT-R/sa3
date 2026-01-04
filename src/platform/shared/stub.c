/* General module of stub of functions that have not been decompiled */

#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/player.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/songs.h"
//#include "module_unclear.h"

// Multiplayer-related (used in IA item_box_mp.c)
typedef struct {
    /* 0x00 */ u8 filler0[0x4C];
    /* 0x4C */ u8 unk4C;
    /* 0x4D */ u8 unk4D;
    /* 0x4E */ u8 filler4E[0x4];
    /* 0x52 */ u16 unk52;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55; // used to determine item type in MP itemboxes (15 + (unk55 & 0x1))
    /* 0x56 */ u8 unk56;
} Struct_03001060; /* size: ??? */

void *ewram_end = 0;
void *iwram_end = 0;
char gNumMusicPlayers = 4;
int gMaxLines = 0;

u8 gUnknown_02035000[0xA000] = {};
Struct_03001060 gUnknown_03001060 = {};
Player gPlayers[4] = {};
u8 gUnknown_03001D00 = 0;
struct Task *gTask_03001CFC = NULL;
StageData gStageData = {};
SaveGame gLoadedSaveGame = {};
SaveGame gUnknown_03000980 = {};
SaveSectorData gSaveSectorData = {};
struct Camera gCamera = {};

void sub_8000D68() { }
void Task_800303C() { }
void sub_8003D2C() { }
void sub_8003DC4() { }
void sub_8003DF0() { }
void sub_8003E0C() { }
void sub_8003E28(u16 song) { }
void sub_8003F40() { }
void sub_8003F8C() { }
void sub_8003FC8() { }
void Stop() { }
void Player_801D73C(Player *p) { }
void Player_801DF18(Player *p) { }
bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5) { return FALSE; }
void sub_8020874() { }
u32 sub_8020950(Sprite *s, s32 worldX, s32 worldY, Player *p, u8 param4) { return 0; }
void sub_8020A58() { }
bool32 sub_8020CE0(Sprite *s, s32 worldX, s32 worldY, u16 param3, Player *p) { return FALSE; }
void sub_8020E3C() { }
void /* 0x080213B0 */ ResolvePlayerSpriteCollision() { }
void Call__Player_8014550(Player *p) { }

void /* 0x080213FC */ UpdateScreenFade() { }
void /* 0x080214F0 */ ScreenFadeUpdateValues() { }
void sub_80236C8() { }
void sub_8023734() { }
void sub_80239A8() { }
void sub_802616C() { }
void sub_80274F4() { }
void sub_80276F4() { }
void sub_80276A8() { }
void sub_802954C() { }
void sub_80296F8() { }
void sub_80299FC() { }
void sub_8029A18() { }
void sub_80275B8(u32 level, u8 param1, u8 param2) { }
void TaskDestructor_8029774(struct Task *t) { }
void sub_8029C54(s32 param0, s32 param1) { }
bool32 sub_802C080(Player *p) { return FALSE; }
bool32 sub_802C0D4(Player *p) { return FALSE; }
bool32 sub_802C140(s32 worldX, s32 worldY, s32 screenX, s32 screenY) { return FALSE; }
bool32 /* 0x0802C198 */ IsWorldPtActive(s32 worldX, s32 worldY) { return TRUE; }
bool32 /* 0x0802C1D0 */ IsScreenPtActive(s32 screenX, s32 screenY) { return TRUE; }
void sub_802C1F8() { }
void sub_80519EC() { }
void sub_80517FC() { }
void sub_8051F54() { }
u8 sub_805203C(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4) { return 0; }
u8 sub_805217C(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4) { return 0; }
s32 sub_8052394(s32 worldX, s32 worldY, s32 param2, s32 param3, void *param4, void *callback) { return 0; }
void sub_8052418() { }
void sub_8052D8C() { }
void sub_8053128() { }
void sub_8057AA0(u16 param0, u16 param1, u8 param2) { }
void sub_805C280() { }
void sub_805C510() { }
void sub_805C890() { }
void sub_805C63C() { }
void sub_805CD70() { }
void sub_805CD20() { }
void sub_805CE14() { }
void CreateGmerl1() { }
void CreateBoss_8068B3C() { }
void CreateBoss_806A90C() { }
void CreateBoss_806D1A0() { }
void CreateBoss_806EADC() { }
void CreateBoss_8071A08() { }
void CreateBoss_8073640() { }
void CreateBoss_8074E88() { }
void sub_8079FFC() { }
void sub_807A074() { }
void sub_807B6C8() { }
void sub_807C670() { }
void sub_807C728() { }
void sub_807C8AC() { }
void sub_807C9C0() { }
void sub_807CA38() { }
void sub_807CB78() { }
void sub_807DCD8() { }
void sub_807DE20() { }
void sub_807E214() { }
void sub_807E54C() { }
void sub_807E99C() { }
void sub_807EBB8() { }
void sub_807ECFC() { }
void sub_807FEB4() { }
void sub_808007C() { }
void sub_8081B18() { }
void sub_8083BE4() { }
void sub_8083F8C() { }
void sub_808439C() { }
void sub_808491C() { }
void sub_8084B2C() { }
void sub_8084BEC() { }
void sub_8084C50() { }
void sub_80870B0() { }
void sub_808723C() { }
void sub_808ADF0() { }
void sub_808AF44() { }
void sub_808ECB8() { }
void /* 0x0808EF9C */ OptionsSlideInit_PlayerData() { }
void /* 0x0808F664 */ OptionsSlideInit_Difficulty() { }
void /* 0x0808FBB4 */ OptionsSlideInit_Language() { }
void /* 0x08090390 */ OptionsSlideInit_DeleteSaveData() { }
void /* 0x08090A1C */ OptionsSlideInit_TimeUp() { }
void /* 0x08090F70 */ OptionsSlideInit_ButtonConfig() { }
void /* 0x08093954 */ OptionsSlideInit_SoundTest() { }
void /* 0x08097C54 */ CreateCharacterSelect(u16 param0) { }
void /* 0x080A209C */ CreateGameIntroState() { }
void sub_80B75E4() { }
void nullsub_80B7AAC() { }
void /* 0x080C4564 */ CopyPalette() { }
void sub_80C460C(const u16 *pal, u8 paletteOffset, u16 palSize) { }
void sub_80C4B48() { }
void sub_80C4C60() { }
void sub_80C4E24() { }
void sub_80C4EB0() { }
void sub_80C59E8() { }
void sub_80C60B0() { }
void sub_80C610C() { }
void sub_80C66DC() { }
void sub_80C6908() { }
void /* 0x080C7558 */ SoundBiasReset() { }
void /* 0x080C7560 */ SoundBiasSet() { }
