#ifndef GUARD_SA3_PLAYER_CALLBACKS_H
#define GUARD_SA3_PLAYER_CALLBACKS_H

#include "game/player.h"

extern void Player_8004FF8(Player *p);
extern void Player_800522C(Player *p);
extern void Player_80052C8(Player *p);
extern void Player_8005380(Player *p);
extern void Player_8005528(Player *p);
extern void Player_8005BD4(Player *p);
extern void Player_8005E80(Player *p);
extern void Player_8006250(Player *p);
extern void Player_8006310(Player *p);
extern void Player_8006CF0(Player *p);
extern void Player_8006DB8(Player *p);
extern void Player_8006F98(Player *p); // ButtonSpring ver. of Player_800EA74
extern void Player_8007044(Player *p); // ButtonSpring ver. of Player_8009C94
extern void Player_8007110(Player *p); // DashRing 3, 4, 7, 8
extern void Player_80071A8(Player *p); // DashRing 0
extern void Player_8007240(Player *p); // DashRing 1, 9
extern void Player_80072D8(Player *p);
extern void Player_80077CC(Player *p);
extern void Player_8007898(Player *p);
extern void Player_800891C(Player *p);
extern void Player_8008A8C(Player *p);
extern void Player_8008CD0(Player *p);
extern void Player_80098D8(Player *p); // Grinding-related
extern void Player_8009B4C(Player *p);
extern void Player_8009BF0(Player *p); // ButtonSpring ver. of Player_8009D04
extern void Player_8009C94(Player *p);
extern void Player_8009D04(Player *p);
extern void Player_8009E8C(Player *p);
extern void Player_8009F7C(Player *p, s16 someX, s16 someY);
extern void Player_800A094(Player *p);
extern void Player_800A168(Player *p);
extern void Player_800A218(Player *p);
extern void Player_800A3C0(Player *p);
extern void Player_800A438(Player *p);
extern void Player_800A4C8(Player *p);
extern void Player_800A5B0(Player *p);
extern void Player_800A690(Player *p);
extern void Player_800A724(Player *p);
extern void Player_800A7CC(Player *p);
extern void Player_800A860(Player *p);
extern void Player_800A90C(Player *p);
extern void Player_800A98C(Player *p);
extern void Player_800AAC0(Player *p);
extern void Player_800AB48(Player *p);
extern void Player_UseSpecialSpringWithKey(Player *p);
extern void Player_800AD24(Player *p);
extern void Player_800AE14(Player *p);
extern void Player_800AEF4(Player *p);
extern void Player_800B004(Player *p);
extern void Player_800B128(Player *p);
extern void Player_800B1B8(Player *p);
extern void Player_800B240(Player *p);
extern void Player_800B374(Player *p);
extern void Player_800B3FC(Player *p);
extern void Player_800B5A4(Player *p);
extern void Player_IceLauncherLaunch(Player *p);
extern void Player_800B628(Player *p);
extern void Player_800B6C4(Player *p);
extern void Player_800B748(Player *p);
extern void Player_800B920(Player *p);
extern void Player_800BA78(Player *p);
extern void Player_800B81C(Player *p);
extern void Player_800BB34(Player *);
extern void Player_CollideGroundAfterIceLauncher(Player *p);
extern void Player_800BC38(Player *p);
extern void Player_800BCE0(Player *p);
extern void Player_800BD88(Player *p);
extern void Player_800BE60(Player *p);
extern void Player_800BEE8(Player *p);
extern void Player_800D880(Player *p);
extern void Player_800D944(Player *p);
extern void Player_800D978(Player *p); // GrindRail-related
extern void Player_800D9B4(Player *p); // GrindRail-related
extern void SetPlayerCallback(Player *p, PlayerCallback callback);
extern void Player_800DAF4(Player *p);
extern void Player_800DB30(Player *p);
extern void Player_800DBE8(Player *p);
extern void Player_800DCB4(Player *p);
extern void Player_800DD0C(Player *p);
extern void Player_800DD28(Player *p);
extern void Player_800DD44(Player *p);
extern void Player_800DDB4(Player *p); // Player_InMazeAccelerated(?)
extern void Player_800DDD0(Player *p);
extern void Player_800DE48(Player *p);
extern void Player_800DE64(Player *p);
extern void Player_800DEC4(Player *p);
extern void Player_800E1E4(Player *p);
extern void Player_800E348(Player *p);
extern void Player_800E370(Player *p);
extern void Player_800E398(Player *p);
extern void Player_800E3C4(Player *p);
extern void Player_800E3EC(Player *p);
extern void Player_800E468(Player *p);
extern void Player_800E490(Player *p);
extern void Player_800E4B8(Player *p);
extern void Player_800E4E0(Player *p);
extern void Player_800E564(Player *p);
extern void Player_800E5CC(Player *p);
extern void Player_800E5D0(Player *p);
extern void Player_800E5EC(Player *p);
extern void Player_800E604(Player *p);
extern void Player_800E6CC(Player *p);
extern void Player_800E67C(Player *p);
extern void Player_800E9A4(Player *p);
extern void Player_800EA0C(Player *p);
extern void Player_800EAA8(Player *p);
extern void Player_800EA74(Player *p);
extern void Player_800EB4C(Player *p);
extern void Player_800EB58(Player *p); // nullsub
extern void Player_800EB5C(Player *p);
extern void Player_800ED14(Player *p);
extern void Player_800ED34(Player *p);
extern void Player_800ED80(Player *p);
extern void Player_8014550(Player *p);
extern void Player_801479C(Player *p);
extern void Player_801D73C(Player *p);
extern void Player_801DF18(Player *p);

#endif // GUARD_SA3_PLAYER_CALLBACKS_H