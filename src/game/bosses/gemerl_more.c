#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/shared/stage/camera.h"
#include "constants/animations.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u8 unk2A;
} GemerlMore_2C;

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ s32 unk4[3][2];
	/* 0: sprEggman
	   1: sprEggMobile
	   2: sprGemerl */
    /* 0x1C */ Sprite3 sprites[3];
    /* 0xC4 */ VoidFn func;
} GemerlMore_C8;

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ u8 unkE;
    /* 0x0F */ bool8 vramUsesHeap;
    /* 0x10 */ Sprite s;
} GemerlMore_38;

typedef struct {
    /* 0x00 */ AnimId anim;
    /* 0x02 */ u8 pattern;
    /* 0x04 */ u32 numTiles;
    /* 0x08 */ u32 vramOffset;
} Strc_80D5A6C;


void sub_8078E34(s32 *param0, VoidFn fn);
void Task_38_807989C(void);
void Task_C8_807990C(void);
void TaskDestructor_38_807A4E4(struct Task *t);
void TaskDestructor_C8_807A500(struct Task *t);
void Task_2C_807A514(void);

extern const Strc_80D5A6C gUnknown_080D5A6C[10];

void sub_8078DB0(s16 anim, s8 pattern, s16 param2, bool8 param3)
{
    GemerlMore_2C *strc2C = TASK_DATA(TaskCreate(Task_2C_807A514, sizeof(GemerlMore_2C), 0xF000U, 0U, NULL));
    Sprite *s = &strc2C->s;

    strc2C->unk28 = param2;
    strc2C->unk2A = param3;

    s->tiles = 0;
    s->oamFlags = 0;
    s->anim = anim;
    s->variant = pattern;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(10. / 16.);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x80000;
}

void sub_8078E34(s32 *param0, VoidFn fn)
{
    s32 var_r0;
    u8 *vram;
    u8 *temp_r5;
    u8 *var_r1;
    u8 var_r2;
    u8 var_r3;
    GemerlMore_C8 *strcC8 = TASK_DATA(TaskCreate(Task_C8_807990C, 0xC8U, 0x2100U, 0U, TaskDestructor_C8_807A500));
    Sprite *s, *s2, *s3;
    strcC8->unk0 = 0;
    strcC8->func = fn;

    for (var_r3 = 0; var_r3 < 3; var_r3++) {
        for (var_r2 = 0; var_r2 < 2; var_r2++) {
            if (var_r3 != 2) {
                strcC8->unk4[var_r3][var_r2] = param0[var_r2 + 0];
            } else {
                strcC8->unk4[var_r3][var_r2] = param0[var_r2 + 2];
            }
        }
    }

    vram = VramMalloc(88);

    s = (Sprite *)&strcC8->sprites[0];
    s->tiles = vram;
    s->oamFlags = 0x4C0;
    s->anim = ANIM_EGGMAN_SIDE;
    s->variant = 4;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = param0[0];
    s->y = param0[1];
    s->frameFlags = 0x2000;
    vram += 16 * TILE_SIZE_4BPP;

    s2 = (Sprite*)&strcC8->sprites[1];
    s2->tiles = vram;
    s2->oamFlags = 0x500;
    s2->anim = ANIM_NEO_EGGMOBILE;
    s2->variant = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 9;
    s2->x = param0[0];
    s2->y = param0[1];
    s2->frameFlags = 0x2000;
    vram += 36 * TILE_SIZE_4BPP;

    s = (Sprite *)&strcC8->sprites[2];
    s->tiles = vram;
    s->oamFlags = 0x480;
    s->anim = ANIM_GEMERL_IDLE;
    s->variant = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = param0[0];
    s->y = param0[1];
    s->frameFlags = 0x2000;
}

// TODO: This *might* be an inline function?
//       It is unused, but there's similar structure below it.
//       But usually an implementation of an inlined function appears later in OG code
NONMATCH("asm/non_matching/game/bosses/gmore__GemerlUnusedRecursiveFunc.inc", void GemerlUnusedRecursiveFunc()) { }
END_NONMATCH

// Very similar to sub_8079468
NONMATCH("asm/non_matching/game/bosses/gmore__sub_8079194.inc", void sub_8079194(u8 *arg0, u8 arg1, u8 arg2, u8 *arg3)) { }
END_NONMATCH

// Very similar to sub_8079194
NONMATCH("asm/non_matching/game/bosses/gmore__sub_8079468.inc", void sub_8079468(u8 *arg0, u8 arg1, u8 arg2, u8 *arg3)) { }
END_NONMATCH

struct Task *sub_8079758(u8 stateIndex, s16 x, s16 y, s16 arg3, u16 angle, u8 arg5, s16 arg6, u8 *vram)
{
    Task *spC;
    Task *temp_r0_2;
    s16 temp_r4;
    s32 temp_r1_2;
    s32 var_r4;
    u8 *vramTarget;
    void *temp_r0_4;
    struct Task *t = TaskCreate(Task_38_807989C, sizeof(GemerlMore_38), 0x2100U, 0U, TaskDestructor_38_807A4E4);
    GemerlMore_38 *strc38 = TASK_DATA(t);
    Sprite *s = &strc38->s;
    strc38->unkE = arg5;
    strc38->unk8 = ((COS(angle % SIN_PERIOD) * arg3) >> 14);
    strc38->unkA = ((SIN(angle % SIN_PERIOD) * arg3) >> 14);
    strc38->unkC = arg6;

    if (vram != NULL) {
        strc38->vramUsesHeap = FALSE;
        vramTarget = (vram + gUnknown_080D5A6C[stateIndex].vramOffset);
    } else {
        strc38->vramUsesHeap = TRUE;
        vramTarget = VramMalloc(gUnknown_080D5A6C[stateIndex].numTiles);
    }
    s->tiles = vramTarget;
    s->oamFlags = 0x200;
    s->anim = gUnknown_080D5A6C[stateIndex].anim;
    s->variant = gUnknown_080D5A6C[stateIndex].pattern;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x1000;

    strc38->qWorldX = Q(x);
    strc38->qWorldY = Q(y);

	return t;
}

void Task_38_807989C(void)
{
    s32 temp_r1;
    GemerlMore_38 *strc38 = TASK_DATA(gCurTask);
    Sprite *s = &strc38->s;

    if (strc38->unkE == 0) {
        TaskDestroy(gCurTask);
        return;
    }

    strc38->unkE--;
    strc38->unkA += strc38->unkC;
    strc38->qWorldX += strc38->unk8;
    strc38->qWorldY += strc38->unkA;

    s->x = I(strc38->qWorldX) - gCamera.x;
    s->y = I(strc38->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

#if 0
void Task_C8_807990C(void)
{
    Sprite *temp_r4_6;
    s32 temp_r2;
    u16 temp_r0;
    u8 var_r5;
    u8 var_r5_2;
    void (*var_r0)();
    void *temp_r4;
    void *temp_r4_2;
    void *temp_r4_3;
    void *temp_r4_4;
    void *temp_r4_5;
    GemerlMore_C8 *strc38 = TASK_DATA(gCurTask);

    for(var_r5 = 0; var_r5 < 3; var_r5++)
	{
        temp_r2 = var_r5 * 8;
        temp_r4 = strc38 + ((var_r5 * 0x38) + 0x1C);
        temp_r4->unk10 = (s16)(*(strc38->unk4[0] + temp_r2) - gCamera.x);
        temp_r4->unk12 = (s16)(*(&strc38->unk4[0][1] + temp_r2) - gCamera.y);
    }

    if (++strc38->unk0 > 0x96U) {
        strc38->unk0 = 0;
        switch (gStageData.zone) {
            case 1:
                strc38->sprGemerl.anim = 0x50A;
                strc38->sprGemerl.variant = 0;
                strc38->sprGemerl.prevVariant = 0xFF;
                var_r0 = sub_8079C60;
                break;
            case 3:
                strc38->sprGemerl.anim = 0x517;
                strc38->sprGemerl.variant = 0;
                strc38->sprGemerl.prevVariant = 0xFF;
                strc38->sprGemerl.frameFlags |= 0x400;
                var_r0 = sub_8079B8C;
                break;
            case 5:
                strc38->sprEggman.oamFlags = 0x2C0;
                strc38->sprEggman.frameFlags = 0;
                temp_r4_2 = &strc38->sprEggman + 0x38;
                temp_r4_2->unk14 = 0x300;
                temp_r4_2->unk8 = 0;
                temp_r4_3 = temp_r4_2 + 0x38;
                temp_r4_3->unkC = 0x50A;
                temp_r4_3->unk1A = 0;
                temp_r4_3->unk1B = 0xFF;
                temp_r4_3->unk14 = 0x280;
                temp_r4_3->unk8 = 0;
                var_r0 = sub_8079D40;
                break;
            case 4:
                strc38->sprEggman.oamFlags = 0x2C0;
                strc38->sprEggman.frameFlags = 0;
                temp_r4_4 = &strc38->sprEggman + 0x38;
                temp_r4_4->unk14 = 0x300;
                temp_r4_4->unk8 = 0;
                temp_r4_5 = temp_r4_4 + 0x38;
                temp_r4_5->unkC = 0x50A;
                temp_r4_5->unk1A = 0;
                temp_r4_5->unk1B = 0xFF;
                temp_r4_5->unk14 = 0x280;
                temp_r4_5->unk8 = 0;
                var_r0 = Task_C8_8079DFC;
                break;
            default:
                var_r0 = sub_8079AB4;
                break;
        }
        gCurTask->main = var_r0;
    }
    var_r5_2 = 0;
    do {
        temp_r4_6 = strc38 + ((var_r5_2 * 0x38) + 0x1C);
        UpdateSpriteAnimation(temp_r4_6);
        DisplaySprite(temp_r4_6);
        var_r5_2 += 1;
    } while ((u32)var_r5_2 <= 2U);
}
#endif






