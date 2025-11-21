#include "global.h"
#include "core.h"
#include "game/entity.h"

typedef struct GuardState {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 mePos[2];
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 id;
    /* 0x0F */ u8 meX;
    /* 0x10 */ u16 region[2];
    /* 0x14 */ u8 unk14[4];
} GuardState; /* 0x18 */

typedef struct Guard {
    /* 0x00 */ u8 *mePos;
    /* 0x04 */ u8 meX;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 mePosX;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x09 */ s8 dir;
    /* 0x0A */ u8 fillerB[1];
    /* 0x0C */ u16 region[2];
    /* 0x10 */ u8 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ Vec2_32 unk18;
    /* 0x20 */ Vec2_32 unk20;
    /* 0x28 */ Vec2_32 unk28;
    /* 0x30 */ Sprite2 s;
} Guard; /* 0x60 */

typedef struct GuardProj {
    u8 filler0[0x18];
    Sprite2 s;
} GuardProj; /* 0x48 */

void Task_805F418(void);
void sub_805F398(Guard *guard);
void TaskDestructor_805F9A4(struct Task *t);

void sub_805F2C0(u8 *param0, u16 regionX, u16 regionY, u8 meX, s32 unkD, u8 unkC)
{
    s16 sp4;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s8 var_r0;
    Guard *guard;
    u8 temp_r0;

    guard = TASK_DATA(TaskCreate(Task_805F418, sizeof(Guard), 0x2100U, 0U, TaskDestructor_805F9A4));
    guard->mePos = param0;
    guard->mePosX = param0[0];
    guard->meX = meX;
    guard->region[0] = regionX;
    guard->region[1] = regionY;
    temp_r1_2 = ((unkC * 2) + param0[0]) << 0xB;
    guard->unk20.x = temp_r1_2;
    temp_r0_2 = param0[1] << 0xB;
    guard->unk20.y = temp_r0_2;
    guard->unk18.x = guard->unk20.x;
    guard->unk18.y = guard->unk20.y;
    temp_r1_3 = temp_r1_2 + ((s8)param0[3] << 0xB);
    guard->unk28.x = temp_r1_3;
    guard->unk28.y = (s32)(temp_r1_3 + (param0[5] << 0xB));
    guard->unk14 = unkD;
    guard->unk10 = unkC;
    guard->unk5 = 0;
    guard->unk7 = 0;
    guard->unk8 = 0;
    guard->unk9 = 0;

    if (8 & param0[7]) {
        guard->dir = -1;
    } else {
        guard->dir = +1;
    }

    CpuFill16(0, &guard->s.hitboxes[1].b, sizeof(guard->s.hitboxes[1].b));
    sub_805F398(guard);
}
