#include "global.h"
#include "core.h"
#include "game/save.h"

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x004 */ u8 *initArg3;
    /* 0x008 */ s16 *initArg2;
    /* 0x00C */ u8 fillerC[8];
    /* 0x014 */ Vec2_32 unk14[4];
    /* 0x034 */ s32 unk34;
    /* 0x038 */ s32 unk38;
    /* 0x03C */ s32 unk3C;
    /* 0x040 */ s32 unk40;
    /* 0x044 */ u16 unk44;
    /* 0x046 */ u16 unk46;
    /* 0x048 */ u8 *vram48;
    /* 0x04C */ Sprite spr4C[4];
    /* 0x13C */ Sprite sprEC;
    /* 0x114 */ Sprite spr114;
    /* 0x13C */ Sprite spr13C;
} OptionsPlayerData; /* 0x164 */

void Task_Options_PlayerData(void);
void sub_808F070(OptionsPlayerData *pd);
void TaskDestructor_Options_PlayerData(struct Task *t);

extern const TileInfo2 gUnknown_080D6F5C[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D701C[1];
extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D7054[1];

void Options_PlayerData(s16 difficultyValue, u8 *vramBase, s16 *arg2, u8 *arg3)
{
    u8 i;
    OptionsPlayerData *pd
        = TASK_DATA(TaskCreate(Task_Options_PlayerData, sizeof(OptionsPlayerData), 0x100, 0, TaskDestructor_Options_PlayerData));

    pd->initArg2 = arg2;
    pd->initArg3 = arg3;

    for (i = 0; i < 4; i++) {
        pd->unk14[i].x = -gBgScrollRegs[1][0];
        pd->unk14[i].y = -gBgScrollRegs[1][0] + 10;
    }

    pd->unk34 = -gBgScrollRegs[1][0];
    pd->unk38 = -gBgScrollRegs[1][1];
    pd->unk44 = -gBgScrollRegs[1][0] + 100;
    pd->unk46 = -gBgScrollRegs[1][1];
    pd->unk3C = -gBgScrollRegs[1][0];
    pd->unk40 = -gBgScrollRegs[1][1];
    pd->vram48 = vramBase;
    pd->language = LOADED_SAVE->language;

    sub_808F070(pd);
}

// (99.04%) https://decomp.me/scratch/Psvoq
NONMATCH("asm/non_matching/game/sa3/options/opt__sub_808F070.inc", void sub_808F070(OptionsPlayerData *pd))
{
    u8 i;

    {
        Sprite *s = &pd->spr114;
        s->tiles = pd->vram48;
        pd->vram48 += gUnknown_080D7054[pd->language].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7054[pd->language].anim;
        s->variant = gUnknown_080D7054[pd->language].variant;
        s->prevVariant = -1;
        s->x = I(pd->unk44);
        s->y = I(pd->unk46);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < ARRAY_COUNT(pd->spr4C); i++) {
        Sprite *s = &pd->spr4C[i];
        s->tiles = pd->vram48;
        pd->vram48 += gUnknown_080D6F5C[i + pd->language * 4].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6F5C[i + pd->language * 4].anim;
        s->variant = gUnknown_080D6F5C[i + pd->language * 4].variant;
        s->prevVariant = -1;
        s->x = I(pd->unk14[i].x);
        s->y = I(pd->unk14[i].y);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &pd->sprEC;
        s->tiles = pd->vram48;
        pd->vram48 += gUnknown_080D7024[pd->language].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7024[pd->language].anim;
        s->variant = gUnknown_080D7024[pd->language].variant;
        s->prevVariant = -1;
        s->x = I(pd->unk34);
        s->y = I(pd->unk38);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &pd->spr13C;
        s->tiles = pd->vram48;
        pd->vram48 += gUnknown_080D701C[0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D701C[0].anim;
        s->variant = gUnknown_080D701C[0].variant;
        s->prevVariant |= ~0;
        s->x = pd->unk14[*pd->initArg2].x - 1;
        s->y = pd->unk14[*pd->initArg2].y + (u16)*pd->initArg2 * 16 + 1;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}
END_NONMATCH

#if 0
#endif