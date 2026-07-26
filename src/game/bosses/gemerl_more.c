#include "global.h"
#include "core.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u8 unk2A;
} GemerlMore_2C;

void Task_2C_807A514(void);

void sub_8078DB0(s16 anim, s8 pattern, s16 param2, bool8 param3)
{
    GemerlMore_2C *strc2C = TASK_DATA(TaskCreate(Task_2C_807A514, sizeof(GemerlMore_2C), 0xF000U, 0U, NULL));
    Sprite *s = &strc2C->s;

    strc2C->unk28 = param2;
    strc2C->unk2A = param3;

    s->tiles = 0;
    s->oamFlags = 0;
    s->anim = (u16)anim;
    s->variant = (u8)pattern;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(10. / 16.);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x80000;
}