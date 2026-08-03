#include <math.h> // powf
#include <limits.h> // UINT_MAX, USHRT_MAX
#include "global.h"
#include "flags.h"
#include "malloc_vram.h"
#include "core.h"
#include "color.h"
#include "code_z_1.h"

// TODO: Merge this module with code_z_1.c!

bool32 sub_80C5E9C(UnknownIwramData **arg0, u8 hitboxCount, u8 arg2, Rect8 *arg3, s16 screenX, s16 screenY)
{
    s32 result = 0;
    s16 i;

    for (i = 0; i < hitboxCount; i++) {
        UnknownIwramData *data = arg0[i];
        if (data->spr14->hitboxes[arg2].index != HITBOX_STATE_INACTIVE) {
            if (HB_COLLISION(screenX, screenY, (*arg3), data->spr14->x, data->spr14->y, data->spr14->hitboxes[arg2].b)) {
                result = 1;
            }
        }

        if ((data->unk2 != 0) && (sub_80C5E9C(&data->unk30[0], data->unk2, arg2, arg3, screenX, screenY) != 0)) {
            result = 1;
        }
    }

    return result;
}

static inline s32 getSpriteX(Sprite *s) { return s->x; }

static inline s32 getSpriteY(Sprite *s) { return s->y; }

// TODO: Fake-match!
bool32 sub_80C5FCC(UnknownIwramData **param0, u8 arg1, u8 arg2, s16 arg3, s16 arg4)
{
    bool32 result = FALSE;
    s16 i;

    for (i = 0; i < arg1; i++) {
        UnknownIwramData *data = param0[i];
        Sprite *s = data->spr14;
        if (s->hitboxes[arg2].index != -1) {
            Hitbox *hb = &s->hitboxes[arg2];
            if ((s->hitboxes[arg2].b.left <= getSpriteX(s)) && (s->hitboxes[arg2].b.right >= s->x)
                && (s->hitboxes[arg2].b.top <= getSpriteY(s)) && (s->hitboxes[arg2].b.bottom >= s->y)) {
                result = TRUE;
            }
        }
        if ((data->unk2 != 0) && (sub_80C5FCC(&data->unk30[0], data->unk2, arg2, arg3, arg4) != 0)) {
            result = TRUE;
        }
    }
    return result;
}

void FreeUnknownIwramDataArray(UnknownIwramData **arr, u8 arrCount)
{
    s16 i;

    for (i = 0; i < arrCount; i++) {
        UnknownIwramData *data = arr[i];

        if (data->unk2 != 0) {
            FreeUnknownIwramDataArray(&data->unk30[0], data->unk2);
        }

        if (data->spr14 != NULL) {
            if (data->unk20[1] == 0) {
                VramFree(data->spr14->tiles);
            }
            IwramFree(data->spr14);
        }

        IwramFree(data);
    }
}

void sub_80C610C(UnknownIwramData **param0, u8 param1)
{
    s16 i;

    for (i = 0; i < param1; i++) {
        UnknownIwramData *data = param0[i];
        Sprite *s = data->spr14;

        if (s != NULL) {
            if (SPRITE_FLAG_GET(s, BG_ID) != 0) {
                UpdateSpriteAnimation_BG(s);
            } else {
                UpdateSpriteAnimation(s);
            }
        }

        if (data->unk2 != 0) {
            sub_80C610C(&data->unk30[0], data->unk2);
        }
    }
}
