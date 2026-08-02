#include <math.h> // powf
#include <limits.h> // UINT_MAX, USHRT_MAX
#include "global.h"
#include "flags.h"
#include "malloc_vram.h"
#include "core.h"
#include "color.h"
#include "code_z_1.h"

// TODO: Merge this module with code_z_1.c!

static inline s32 getSpriteX(Sprite *s) { return s->x; }

static inline s32 getSpriteY(Sprite *s) { return s->y; }

// TODO: Fake-match!
bool32 sub_80C5FCC(UnknownIwramData **param0, u8 arg1, u8 arg2, s16 arg3, s16 arg4)
{
    s16 var_r2;
    u8 temp_r1;
    UnknownIwramData *temp_r4;
    bool32 result = 0;
    Sprite *s;

    for (var_r2 = 0; var_r2 < arg1; var_r2++) {
        temp_r4 = param0[var_r2];
        s = temp_r4->spr14;
        if (s->hitboxes[arg2].index != -1) {
            Hitbox *hb = &s->hitboxes[arg2];
            if ((s->hitboxes[arg2].b.left <= getSpriteX(s)) && (s->hitboxes[arg2].b.right >= s->x)
                && (s->hitboxes[arg2].b.top <= getSpriteY(s)) && (s->hitboxes[arg2].b.bottom >= s->y)) {
                result = 1;
            }
        }
        if ((temp_r4->unk2 != 0) && (sub_80C5FCC(&temp_r4->unk30[0], temp_r4->unk2, arg2, arg3, arg4) != 0)) {
            result = 1;
        }
    }
    return result;
}

void sub_80C60B0(UnknownIwramData **arr, u8 arrCount)
{
    s16 i;

    for (i = 0; i < arrCount; i++) {
        UnknownIwramData *temp_r4 = arr[i];

        if (temp_r4->unk2 != 0) {
            sub_80C60B0(&temp_r4->unk30[0], temp_r4->unk2);
        }

        if (temp_r4->spr14 != NULL) {
            if (temp_r4->unk20[1] == 0) {
                VramFree(temp_r4->spr14->tiles);
            }
            IwramFree(temp_r4->spr14);
        }

        IwramFree(temp_r4);
    }
}

void sub_80C610C(UnknownIwramData **param0, u8 param1)
{
    Sprite *s;
    s32 temp_r1;
    u32 temp_r0;
    s16 i;
    UnknownIwramData *temp_r4;

    for (i = 0; i < param1; i++) {
        temp_r4 = param0[i];

        s = temp_r4->spr14;
        if (s != NULL) {
            if (SPRITE_FLAG_GET(s, BG_ID) != 0) {
                UpdateSpriteAnimation_BG(s);
            } else {
                UpdateSpriteAnimation(s);
            }
        }

        if (temp_r4->unk2 != 0) {
            sub_80C610C(&temp_r4->unk30[0], temp_r4->unk2);
        }
    }
}
