/* General module of stub of functions that have not been decompiled */

#include "global.h"
#include "core.h"
#include "module_unclear.h"

void *ewram_end = 0;
void *iwram_end = 0;
char gNumMusicPlayers = 4;
int gMaxLines = 0;

u8 gUnknown_02035000[0xA000] = {};
Struct_03001060 gUnknown_03001060 = {};
u8 gUnknown_03001D00 = 0;

void sub_80C460C() { }
void sub_80C4B48() { }
void SoundBiasReset() { }
void Stop() { }
void SoundBiasSet() { }
void SetPlayerCallback(Player *p, void *callback) { p->callback = callback; }
void sub_80C6908() { }
void sub_80C66DC() { }
void sub_805C63C() { }
void sub_805C280() { }
void sub_805CD70() { }
// void gPlayers() { }
void gStageData() { }
void gCamera() { }
void sub_805CD20() { }
void sub_802C080() { }
void sub_8020700() { }
void sub_8020CE0() { }
void sub_8052394() { }
void sub_805217C() { }
void sub_8029C54() { }
void gTask_03001CFC() { }
void sub_805CE14() { }
void sub_805C890() { }
void CopyPalette() { }
void sub_805203C() { }
void sub_807B6C8() { }
void sub_807B6C8() { }
void sub_802C0D4() { }
void sub_8016F28() { }
void sub_80110E8() { }
void sub_8006824() { }
void sub_8003E28() { }
void sub_8020950() { }
void sub_8019A64() { }
void sub_80275B8() { }
void gSaveGame() { }
void sub_802C140() { }
void sub_8004E20() { }
void sub_8020A58() { }
void sub_8016D04() { }
void sub_8003DF0() { }
void sub_8004DD8() { }
void sub_805C510() { }
void sub_80C60B0() { }
void sub_80C4EB0() { }
void sub_80C59E8() { }
void sub_8052418() { }
void sub_80C4C60() { }
void sub_80C4E24() { }
void sub_80C610C() { }
void sub_8003DC4() { }
void sub_8020E3C() { }
void ScreenFadeUpdateValues() { }
void UpdateScreenFade() { }
void sub_8002210() { }
void sub_8051F54() { }
void Player_80072D8(Player *p) { }
void Player_800EB4C(Player *p) { }
void Player_800AEF4(Player *p) { }
void Player_8005528(Player *p) { }
void Player_8007898(Player *p) { }
void Player_800891C(Player *p) { }
void Player_8005380(Player *p) { }
void Player_800EB5C(Player *p) { }
void Player_8006CF0(Player *p) { }
void Player_800AAC0(Player *p) { }
void Player_800AB48(Player *p) { }
void Player_Flyer_SoundStop(Player *p) { }
void Player_800A218(Player *p) { }
void Player_80077CC(Player *p) { }
void Player_8008A8C(Player *p) { }
void Player_800A438(Player *p) { }
void Player_800B240(Player *p) { }
void Player_800B374(Player *p) { }
void Player_800BD88(Player *p) { }
void Player_800BCE0(Player *p) { }
void Player_800ED80(Player *p) { }
void Player_800B1B8(Player *p) { }
void Player_800B3FC(Player *p) { }
void Player_800E604(Player *p) { }
void Player_800E5EC(Player *p) { }
void Player_800E5D0(Player *p) { }
void Player_StopSong(Player *p) { }
void Player_800A724(Player *p) { }
void Player_800A690(Player *p) { }
void Player_800A7CC(Player *p) { }
void Player_800A860(Player *p) { }
void Player_800A90C(Player *p) { }
void Player_800A98C(Player *p) { }
void Player_8009E8C(Player *p) { }
void Player_PlaySong(Player *p) { }
void Player_800522C(Player *p) { }
void Player_80052C8(Player *p) { }
void Player_800AD24(Player *p) { }
void Player_8014550(Player *p) { }
void Player_8012FE0(Player *p) { }
void Player_800DAF4(Player *p) { }
void Player_800BEE8(Player *p) { }
void Player_800EAA8(Player *p) { }
void Player_8006DB8(Player *p) { }
void Player_801DF18(Player *p) { }
void Player_801D73C(Player *p) { }
void Player_800BB34(Player *p) { }
void Player_800A3C0(Player *p) { }
void Player_8006F98(Player *p) { }
void Player_8007044(Player *p) { }
void Player_8009BF0(Player *p) { }
void Player_80071A8(Player *p) { }
void Player_8007240(Player *p) { }
void Player_8007110(Player *p) { }
void Player_800DB30(Player *p) { }
void Player_800AE14(Player *p) { }
void Player_800D944(Player *p) { }
void Player_800E5CC(Player *p) { }
void Player_800BA78(Player *p) { }
void Player_800D880(Player *p) { }
void Player_801479C(Player *p) { }
void Player_8005BD4(Player *p) { }
void Player_8005E80(Player *p) { }
void Player_800613C(Player *p) { }
void Player_800D978(Player *p) { }
void Player_800D9B4(Player *p) { }
void Player_800DCB4(Player *p) { }
void Player_800DDD0(Player *p) { }
void Player_80098D8(Player *p) { }
void Player_CollideGroundAfterIceLauncher(Player *p) { }
void Player_800DEC4(Player *p) { }
void Player_800B920(Player *p) { }
void Player_IceLauncherLaunch(Player *p) { }
void Player_800E67C(Player *p) { }
void Player_800A094(Player *p) { }
void Player_800A168(Player *p) { }
void Player_800B5A4(Player *p) { }
void Player_800B628(Player *p) { }
void Player_800DD0C(Player *p) { }
void Player_800DD28(Player *p) { }
void Player_800DD44(Player *p) { }
void Player_800DDB4(Player *p) { }
void Player_800DE48(Player *p) { }
void Player_800B748(Player *p) { }
void Player_800B6C4(Player *p) { }
void Player_800DBE8(Player *p) { }
void Player_800ED14(Player *p) { }
void Player_800ED34(Player *p) { }
void Player_800DB7C(Player *p) { }
void Player_80149E4(Player *p) { }
void Player_800E6CC(Player *p) { }
void Player_800A5B0(Player *p) { }
void Player_8009F7C(Player *p) { }
void Player_800BE60(Player *p) { }
void Player_8006250(Player *p) { }
void Player_8006310(Player *p) { }
void Player_800EB58(Player *p) { }
void Player_8009C94(Player *p) { }
void Player_800EA74(Player *p) { }
void Player_8009B4C(Player *p) { }
void Player_800EA0C(Player *p) { }
void Player_8009D04(Player *p) { }
void Player_800E9A4(Player *p) { }
void Player_800E398(Player *p) { }
void Player_800E370(Player *p) { }
void Player_800E348(Player *p) { }
void Player_800E3C4(Player *p) { }
void Player_800E4E0(Player *p) { }
void Player_800E468(Player *p) { }
void Player_800E490(Player *p) { }
void Player_800E4B8(Player *p) { }
void Player_800B128(Player *p) { }
void Player_800E564(Player *p) { }
void Player_800B004(Player *p) { }
void Player_800E3EC(Player *p) { }
void Player_800BC38(Player *p) { }
void Player_800E1E4(Player *p) { }
void Player_8008CD0(Player *p) { }
void Player_800DE64(Player *p) { }
void Player_800B81C(Player *p) { }
void Player_800A4C8(Player *p) { }
void Player_UseSpecialSpringWithKey(Player *p) { }
void ResolvePlayerSpriteCollision() { }
void sub_8008E38() { }
void sub_8019A58() { }
void sub_8020874() { }
void sub_8001E58() { }
void sub_8023734() { }
void GetChaoCount() { }
void sub_80236C8() { }
void sub_80299FC() { }
void GetChaoFlag() { }
void SetChaoFlag() { }
void sub_80239A8() { }
void sub_8029A18() { }
void sub_80274F4() { }
void sub_801226C() { }
void sub_8012368() { }
void IsScreenPtActive() { }
void Task_800303C() { }
void sub_8079FFC() { }
void sub_807A074() { }
void sub_8003D2C() { }
void sub_8053128() { }
void sub_8003E0C() { }
void sub_802C1F8() { }
void sub_80519EC() { }
void sub_80517FC() { }
void sub_80276F4() { }
void sub_80296F8() { }
void sub_80276A8() { }
void sub_802954C() { }
void sub_8012550() { }
s32 sub_801246C(Player *) { }
void sub_80213F0() { }
void sub_8004D30() { }
void CreateCharacterSelect() { }
void sub_8057AA0() { }
void GameInit() { }
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
void nullsub_80B7AAC() { }
void sub_80B75E4() { }
void CreateGmerl1() { }
void CreateBoss_8068B3C() { }
void CreateBoss_806A90C() { }
void CreateBoss_806D1A0() { }
void CreateBoss_806EADC() { }
void CreateBoss_8071A08() { }
void CreateBoss_8073640() { }
void CreateBoss_8074E88() { }
void OptionsSlideInit_PlayerData() { }
void OptionsSlideInit_Difficulty() { }
void OptionsSlideInit_TimeUp() { }
void OptionsSlideInit_Language() { }
void OptionsSlideInit_ButtonConfig() { }
void OptionsSlideInit_SoundTest() { }
void OptionsSlideInit_DeleteSaveData() { }
