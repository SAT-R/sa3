#include "global.h"
#include "core.h"
#include "game/save.h"

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ Vec2_32 unkC[2];
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x38 */ u16 unk34;
    /* 0x38 */ u16 unk36;
    /* 0x38 */ u8 *vram38; // <- param1 on creation
    /* 0x3C */ Sprite spr3C[2];
    /* 0x8C */ Sprite spr8C;
    /* 0xB4 */ Sprite sprB4;
    /* 0xDC */ Sprite sprDC;
} OptionsDifficulty; /* 0x104 */

void Task_Options_Difficulty_Init(void);
void sub_808F748(OptionsDifficulty *difficulty);
void TaskDestructor_Options_Difficulty(struct Task *t);

void Options_Difficulty(s16 arg0, u8 *vramBase, s32 unused, s32 arg3)
{
    u8 *sp4;
    s32 temp_r1;
    u8 var_r4;
    Task *t = TaskCreate(Task_Options_Difficulty_Init, sizeof(OptionsDifficulty), 0x100U, 0U, TaskDestructor_Options_Difficulty);
    OptionsDifficulty *difficulty = TASK_DATA(t);

    difficulty->unk8 = arg0;
    difficulty->unk4 = arg3;

    for (var_r4 = 0; var_r4 < ARRAY_COUNT(difficulty->unkC); var_r4++)
	{
        difficulty->unkC[var_r4].x = 55 - gBgScrollRegs[1][0];
        difficulty->unkC[var_r4].y = 70 - gBgScrollRegs[1][1];
    }

    difficulty->unk1C = -gBgScrollRegs[1][0];
    difficulty->unk20 = -gBgScrollRegs[1][1];
    difficulty->unk34 = -gBgScrollRegs[1][0] + 100;
    difficulty->unk36 = -gBgScrollRegs[1][1];
    difficulty->unk24 = -gBgScrollRegs[1][0];
    difficulty->unk28 = -gBgScrollRegs[1][1];
    difficulty->vram38 = vramBase;
    difficulty->unk0 = LOADED_SAVE->language;

    sub_808F748(difficulty);
}

extern const TileInfo2 gUnknown_080D6AE8[12];
extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D7084[6];
extern const TileInfo2 gUnknown_080D70B4[1];

#if 0
void sub_808F748(OptionsDifficulty *difficulty)
{
    s32 temp_r2;
    u8 var_r4;
    Sprite *s;//    = &difficulty->sprDC;

    difficulty->sprDC.tiles = difficulty->vram38;
    difficulty->vram38 += gUnknown_080D7084[difficulty->unk0].numTiles * TILE_SIZE_4BPP;
    difficulty->sprDC.anim = gUnknown_080D7084[difficulty->unk0].anim;
    difficulty->sprDC.variant = gUnknown_080D7084[difficulty->unk0].variant;
    difficulty->sprDC.prevVariant = -1;
    difficulty->sprDC.x = I(difficulty->unk34);
    difficulty->sprDC.y = I(difficulty->unk36);
    difficulty->sprDC.oamFlags = 0;
    difficulty->sprDC.animCursor = 0;
    difficulty->sprDC.qAnimDelay = 0;
    difficulty->sprDC.animSpeed = 0x10;
    difficulty->sprDC.palId = 0;
    difficulty->sprDC.frameFlags = 0;
    difficulty->sprDC.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&difficulty->sprDC);

    for(var_r4 = 0; var_r4 < 2; var_r4++)
	{
        s = &difficulty->spr3C[var_r4];
        s->tiles = difficulty->vram38;
	    difficulty->vram38 += gUnknown_080D6AE8[difficulty->unk0].numTiles * TILE_SIZE_4BPP;
	    s->anim    = gUnknown_080D6AE8[difficulty->unk0].anim;
	    s->variant = gUnknown_080D6AE8[difficulty->unk0].variant;
        s->prevVariant = 0xFF;
        s->x = I(difficulty->unkC[var_r4].x);
        s->y = I(difficulty->unkC[var_r4].y);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

	s = &difficulty->spr8C;
    s->tiles = difficulty->vram38;
    difficulty->vram38 += gUnknown_080D7024[difficulty->unk0].numTiles * TILE_SIZE_4BPP;
    s->anim    = gUnknown_080D7024[difficulty->unk0].anim;
    s->variant = gUnknown_080D7024[difficulty->unk0].variant;
    s->prevVariant = -1;
    s->x = I(difficulty->unk1C);
    s->y = I(difficulty->unk20);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);

	s = &difficulty->sprB4;
    s->tiles = difficulty->vram38;
    difficulty->vram38 += gUnknown_080D70B4[0].numTiles * TILE_SIZE_4BPP;
    s->anim    = gUnknown_080D70B4[0].anim;
    s->variant = gUnknown_080D70B4[0].variant;
    s->prevVariant = -1;
    s->x = I(difficulty->unk2C);
    s->y = I(difficulty->unk30);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

void Task_Options_Difficulty_Init(OptionsDifficulty *difficulty) {
    s16 temp_r1;
    s16 var_r0;
    u16 temp_r2;

    sub_808FA9C(difficulty);
    sub_808FA18(difficulty);
    sub_808FB10(difficulty);
    sub_808FB44(difficulty);
    sub_808FB78(difficulty);
    if ((gBgScrollRegs[1][0] == 0) && (1 & gPressedKeys)) {
        temp_r1 = difficulty->unk8;
        switch (temp_r1) {                          /* irregular */
        case 0:
            gLoadedSaveGame.language = (u8) temp_r1;
            return;
        case 1:
            gLoadedSaveGame.language = 1;
            return;
        }
    } else {
        if (((s32) gBgScrollRegs[1][0] <= -0xC8) && ((s64) (difficulty->unk24 + gBgScrollRegs[1][0]) <= 0)) {
            *difficulty->unk4 = 0;
            TaskDestroy(gCurTask);
            return;
        }
        difficulty->unk24 = 0 - gBgScrollRegs[1][0];
        if ((gBgScrollRegs[1][0] == 0) && (0x30 & gRepeatedKeys)) {
            temp_r2 = 0x10 & gRepeatedKeys;
            if (temp_r2 != 0) {
                if (difficulty->unk8 == 0) {
                    var_r0 = 1;
                } else {
                    var_r0 = (u16) difficulty->unk8 - 1;
                }
                goto block_20;
            }
            if (0x20 & gRepeatedKeys) {
                if (difficulty->unk8 == 1) {
                    difficulty->unk8 = (s16) temp_r2;
                    return;
                }
                var_r0 = (u16) difficulty->unk8 + 1;
block_20:
                difficulty->unk8 = var_r0;
            }
        }
    }
}

void sub_808FA18(OptionsDifficulty *arg0) {
    Sprite *temp_r4;
    s32 temp_r2;
    u8 var_r0;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r4 = arg0 + ((var_r5 * 0x28) + 0x3C);
        temp_r4->anim = *(((var_r5 + (arg0->unk0 * 2)) * 8) + &gUnknown_080D6AE8);
        temp_r4->variant = (((var_r5 + (arg0->unk0 * 2)) * 8) + &gUnknown_080D6AE8)->unk2;
        temp_r2 = var_r5 * 8;
        temp_r4->x = *(arg0 + 0xC + temp_r2) + (var_r5 << 6);
        temp_r4->y = (s16) *(arg0 + 0x10 + temp_r2);
        if (var_r5 != arg0->unk8) {
            var_r0 = 1;
        } else {
            var_r0 = 0;
        }
        temp_r4->palId = var_r0;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
}

void sub_808FA9C(OptionsDifficulty *difficulty) {
    u8 var_r2;

    var_r2 = 0;
    do {
        difficulty->unkC[var_r2].x = 0x37 - gBgScrollRegs[1][0];
        *(&difficulty->unkC[0].y + (var_r2 * 8)) = 0x46 - gBgScrollRegs[1][1];
        var_r2 += 1;
    } while ((u32) var_r2 <= 1U);
    difficulty->unk1C = 0x78 - gBgScrollRegs[1][0];
    difficulty->unk20 = 0x87 - gBgScrollRegs[1][1];
    difficulty->unk34 = 0x78 - (u16) gBgScrollRegs[1][0];
    difficulty->unk36 = 0x1E - (u16) gBgScrollRegs[1][1];
}

void sub_808FB10(OptionsDifficulty *difficulty)
{
	Sprite *s = &difficulty->sprDC;
    s->anim    =  gUnknown_080D7084[difficulty->unk0].anim;
    s->variant =  gUnknown_080D7084[difficulty->unk0].variant;
    s->x = (s16)difficulty->unk34;
    s->y = (s16)difficulty->unk36;
    DisplaySprite(s);
}

void sub_808FB44(OptionsDifficulty *difficulty)
{
	Sprite *s = &difficulty->spr8C;
    s->anim    = gUnknown_080D7024[difficulty->unk0].anim;
    s->variant = gUnknown_080D7024[difficulty->unk0].variant;
    s->x = (s16)difficulty->unk1C;
    s->y = (s16)difficulty->unk20;
    DisplaySprite(s);
}

void sub_808FB78(OptionsDifficulty *difficulty)
{
	Sprite *s = &difficulty->sprB4;
    s->x = (*(difficulty->fillerC + (difficulty->unk8 * 8)) + ((u16)difficulty->unk8 << 6)) - 3;
    s->y = (s16) * (&difficulty->fillerC[4] + (difficulty->unk8 * 8));
    DisplaySprite(&difficulty->sprB4);
}

void TaskDestructor_Options_Difficulty(Task *arg0) { }
#endif
