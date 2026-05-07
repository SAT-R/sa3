#include "global.h"
#include "core.h"
#include "game/shared/stage/player.h"

void sub_80B7AB0(Struc_3001150_1C *strc, u16 arg1);
void sub_80B8E24(Struc_3001150_1C *strc, Player *p, s32 param2, s32 param3);
u16 InputBufferGetCurrent(Struc_3001150_1C *strc);
u16 sub_80B7AEC(Struc_3001150_1C *strc, Player *p);
u16 sub_80B7C1C(Struc_3001150_1C *strc, Player *p);
bool32 sub_80B7CD0(Struc_3001150_1C *strc, Player *p);
u16 sub_80B7D74(Struc_3001150_1C *strc, Player *p);
u16 sub_80B7E1C(Struc_3001150_1C *strc);
u16 sub_80B7F00(Struc_3001150_1C *strc);
u16 sub_80B7F90(Struc_3001150_1C *strc);
u16 sub_80B8034(Struc_3001150_1C *strc);
u16 sub_80B80C8(Struc_3001150_1C *strc);
u16 sub_80B836C(Struc_3001150_1C *strc);
u16 sub_80B83FC(Struc_3001150_1C *strc);
bool32 sub_80B8168(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8218(Struc_3001150_1C *strc, Player *p);
u16 sub_80B82D8(Struc_3001150_1C *strc, Player *p);
u16 sub_80B84C8(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8584(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8620(Struc_3001150_1C *strc, Player *p);
u16 sub_80B86E4(Struc_3001150_1C *strc, Player *p);
u16 sub_80B87B0(Struc_3001150_1C *strc, Player *p);
u16 sub_80B88E0(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8980(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8A20(Struc_3001150_1C *strc);
u16 sub_80B8E88(Struc_3001150_1C *strc);
void sub_80B8E90(Struc_3001150_1C *strc, u16 input);
u16 sub_80B8EC4(Struc_3001150_1C *strc);
u16 sub_80B8F14(Struc_3001150_1C *strc);
u16 sub_80B8F70(Struc_3001150_1C *strc);
u16 sub_80B8FB8(Struc_3001150_1C *strc);
u16 sub_80B9008(Struc_3001150_1C *strc);
u16 sub_80B9024(Struc_3001150_1C *strc);
u16 sub_80B90B4(Struc_3001150_1C *strc);
u16 sub_80B9148(Struc_3001150_1C *strc);
u16 sub_80B915C(Struc_3001150_1C *strc);
u16 sub_80B9194(Struc_3001150_1C *strc, Player *p);
u16 sub_80B91EC(Struc_3001150_1C *strc, Player *p);
u16 sub_80B9234(Struc_3001150_1C *strc);
u16 sub_80B926C(Struc_3001150_1C *strc);
u16 sub_80B92A4(Struc_3001150_1C *strc);
u16 sub_80B92E0(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B9374(Struc_3001150_1C *strc);
u16 sub_80B93A4(Struc_3001150_1C *strc);
u16 sub_80B93E4(Struc_3001150_1C *strc);
u16 sub_80B94B0(Struc_3001150_1C *strc);
u16 sub_80B94F0(Struc_3001150_1C *strc);
u16 sub_80B9548(Struc_3001150_1C *strc);
u16 sub_80B95A0(Struc_3001150_1C *strc);
s32 sub_80B9650(Player *partner, Player *player, Struc_3001150_164 *strc164, s32 arg3, s32 arg4);
void sub_80B9744(Struc_3001150_164 *strc);
void sub_80B9774(Struc_3001150_1C *strc, Player *partner, Player *player);
bool32 sub_80B97A4(Struc_3001150_1C *strc, Player *partner, Player *player);

void sub_80B79C8(Struc_3001150 *strc, Player *partner, Player *player);
