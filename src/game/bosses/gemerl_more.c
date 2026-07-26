#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "constants/animations.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u8 unk2A;
} GemerlMore_2C;

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ s32 unk4[3][2];
    /* 0x1C */ Sprite sprEggman;
    /* 0x44 */ u8 filler44[0x10];
    /* 0x54 */ Sprite sprEggMobile;
    /* 0x7C */ u8 filler7C[0x10];
    /* 0x8C */ Sprite sprGemerl;
    /* 0xB4 */ u8 fillerB4[0x10];
    /* 0xC4 */ VoidFn func;
} GemerlMore_C8;

void sub_8078E34(s32 *param0, VoidFn fn);
void Task_C8_807990C(void);
void TaskDestructor_C8_807A500(struct Task *t);
void Task_2C_807A514(void);

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

    s = &strcC8->sprEggman;
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

    s2 = &strcC8->sprEggMobile;
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

    s = &strcC8->sprGemerl;
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