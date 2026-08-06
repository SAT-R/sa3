#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "constants/songs.h"

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
void Task_808F434(); /* static */
void Task_808F5E0(); /* static */
void sub_808F3AC(OptionsPlayerData *pd); /* static */
void sub_808F4AC(OptionsPlayerData *pd); /* static */
void sub_808F528(OptionsPlayerData *pd); /* static */
void sub_808F564(OptionsPlayerData *pd); /* static */
void sub_808F598(OptionsPlayerData *pd); /* static */
void TaskDestructor_Options_PlayerData(struct Task *t);

extern const TileInfo2 gUnknown_080D6F5C[NUM_LANGUAGES * 4];
extern const TileInfo2 gUnknown_080D701C[1];
extern const TileInfo2 gUnknown_080D7024[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D7054[NUM_LANGUAGES];

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

void sub_808F070(OptionsPlayerData *pd)
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

void Task_Options_PlayerData(void)
{
    s16 *temp_r1;
    s16 *temp_r1_2;
    s16 var_r0;
    u16 temp_r3;
    u8 temp_r5;
    OptionsPlayerData *pd = TASK_DATA(gCurTask);

    sub_808F4AC(pd);
    if ((gBgScrollRegs[1][0] <= -200) && (pd->unk3C <= -gBgScrollRegs[1][0])) {
        *pd->initArg3 = 0;
        TaskDestroy(gCurTask);
        return;
    }
    pd->unk3C = -gBgScrollRegs[1][0];
    if (gBgScrollRegs[1][0] >= -100) {
        sub_808F3AC(pd);
        sub_808F564(pd);
        sub_808F598(pd);
        sub_808F528(pd);
    }
    if ((gBldRegs.bldY == 0) && (gBgScrollRegs[1][0] == 0)) {
        if (!(1 & gPressedKeys)) {
            if (2 & gPressedKeys) {
                m4aSongNumStart(SE_ABORT);
                *pd->initArg3 = 0;
                gCurTask->main = Task_808F434;
                return;
            }
        } else if (*pd->initArg2 <= 2) {
            gCurTask->main = Task_808F5E0;
            return;
        }

        if ((gBgScrollRegs[1][0] == 0) && (0xC0 & gRepeatedKeys)) {
            m4aSongNumStart(SE_DPAD_SELECT);
            temp_r3 = 0x40 & gRepeatedKeys;
            if (0x40 & gRepeatedKeys) {
                temp_r1 = pd->initArg2;
                if (*temp_r1 == 0) {
                    *pd->initArg2 = 3;
                } else {
                    *pd->initArg2 = (u16)*temp_r1 - 1;
                }
            } else if (0x80 & gRepeatedKeys) {
                temp_r1_2 = pd->initArg2;
                if (*pd->initArg2 == 3) {
                    *pd->initArg2 = 0;
                    return;
                }
                *pd->initArg2 += 1;
            }
        }
    }
}

void sub_808F3AC(OptionsPlayerData *arg0)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(arg0->spr4C); i++) {
        Sprite *s = &arg0->spr4C[i];
        s->anim = gUnknown_080D6F5C[i + (arg0->language * 4)].anim;
        s->variant = gUnknown_080D6F5C[i + (arg0->language * 4)].variant;
        s->x = arg0->unk14[i].x;
        s->y = arg0->unk14[i].y + i * 16;

        if (i != *arg0->initArg2) {
            s->palId = 1;
        } else {
            s->palId = 0;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_808F434(void)
{
    OptionsPlayerData *pd = TASK_DATA(gCurTask);

    sub_808F4AC(pd);

    if ((gBgScrollRegs[1][0] <= -200) && (pd->unk3C <= -gBgScrollRegs[1][0])) {
        *pd->initArg3 = 0;
        TaskDestroy(gCurTask);
        return;
    }

    pd->unk3C = -gBgScrollRegs[1][0];

    if (gBgScrollRegs[1][0] >= -100) {
        sub_808F3AC(pd);
        sub_808F564(pd);
        sub_808F598(pd);
        sub_808F528(pd);
    }
}

void sub_808F4AC(OptionsPlayerData *arg0)
{
    s32 temp_r1;
    u8 i;

    for (i = 0; i < 4; i++) {
        temp_r1 = i * 8;
        arg0->unk14[i].x = 40 - gBgScrollRegs[1][0];
        arg0->unk14[i].y = 50 - gBgScrollRegs[1][1];
    }

    arg0->unk34 = 120 - gBgScrollRegs[1][0];
    arg0->unk38 = 135 - gBgScrollRegs[1][1];
    arg0->unk44 = 120 - (u16)gBgScrollRegs[1][0];
    arg0->unk46 = 30 - (u16)gBgScrollRegs[1][1];
}

void sub_808F528(OptionsPlayerData *arg0)
{
    Sprite *s = &arg0->spr114;
    s->anim = gUnknown_080D7054[arg0->language].anim;
    s->variant = gUnknown_080D7054[arg0->language].variant;
    s->x = arg0->unk44;
    s->y = arg0->unk46;
    DisplaySprite(s);
}

void sub_808F564(OptionsPlayerData *arg0)
{
    Sprite *s = &arg0->sprEC;
    s->anim = gUnknown_080D7024[arg0->language].anim;
    s->variant = gUnknown_080D7024[arg0->language].variant;
    s->x = (s16)arg0->unk34;
    s->y = (s16)arg0->unk38;
    DisplaySprite(s);
}

void sub_808F598(OptionsPlayerData *arg0)
{
    Sprite *s = &arg0->spr13C;
    s->x = arg0->unk14[*arg0->initArg2].x - 1;
    s->y = arg0->unk14[*arg0->initArg2].y + (u16)*arg0->initArg2 * 16 + 1;
    DisplaySprite(s);
}

void TaskDestructor_Options_PlayerData(Task *t) { }

void Task_808F5E0(void)
{
    OptionsPlayerData *pd = TASK_DATA(gCurTask);

    sub_808F4AC(pd);
    sub_808F3AC(pd);
    sub_808F528(pd);
    sub_808F564(pd);
    sub_808F598(pd);

    if ((gBgScrollRegs[1][0] <= -200) && (pd->unk3C <= -gBgScrollRegs[1][0])) {
        *pd->initArg3 = 0;
        TaskDestroy(gCurTask);
        return;
    }
    pd->unk3C = -gBgScrollRegs[1][0];
    if (gBldRegs.bldY > 14) {
        TaskDestroy(gCurTask);
    }
}
