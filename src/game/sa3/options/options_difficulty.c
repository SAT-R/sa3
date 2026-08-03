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
    /* 0x00 */ u8 filler2C[0x8];
    /* 0x38 */ u16 unk34;
    /* 0x38 */ u16 unk36;
    /* 0x38 */ s32 unk38; // <- param1 on creation
    /* 0x3C */ Sprite spr3C[2];
    /* 0x8C */ Sprite spr8C;
    /* 0xB4 */ Sprite sprB4;
    /* 0xDC */ Sprite sprDC;
} OptionsDifficulty; /* 0x104 */

void Task_Options_Difficulty_Init(void);
void sub_808F748(OptionsDifficulty *difficulty);
void TaskDestructor_Options_Difficulty(struct Task *t);

void Options_Difficulty(s16 arg0, s32 arg1, s32 unused, s32 arg3)
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
    difficulty->unk38 = arg1;
    difficulty->unk0 = LOADED_SAVE->language;

    sub_808F748(difficulty);
}

#if 0
void sub_808F748(OptionsDifficulty *difficulty)
{
    Sprite *temp_r0;
    s32 temp_r2;
    u8 var_r4;

    difficulty->sprDC.tiles = (u8 *)difficulty->unk38;
    difficulty->unk38 += *((difficulty->unk0 * 8) + (&gUnknown_080D7084 + 4)) << 5;
    difficulty->sprDC.anim = *((difficulty->unk0 * 8) + &gUnknown_080D7084);
    difficulty->sprDC.variant = ((difficulty->unk0 * 8) + &gUnknown_080D7084)->unk2;
    difficulty->sprDC.prevVariant = 0xFF;
    difficulty->sprDC.x = (s16)((u16)difficulty->unk34 >> 8);
    difficulty->sprDC.y = (s16)((u16)difficulty->unk36 >> 8);
    difficulty->sprDC.oamFlags = 0;
    difficulty->sprDC.animCursor = 0;
    difficulty->sprDC.qAnimDelay = 0;
    difficulty->sprDC.animSpeed = 0x10;
    difficulty->sprDC.palId = 0;
    difficulty->sprDC.frameFlags = 0;
    difficulty->sprDC.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&difficulty->sprDC);
    var_r4 = 0;
    do {
        temp_r0 = &difficulty->spr3C[var_r4];
        temp_r0->tiles = (u8 *)difficulty->unk38;
        difficulty->unk38 += *(((var_r4 + (difficulty->unk0 * 2)) * 8) + (&gUnknown_080D6AE8 + 4)) << 5;
        temp_r0->anim = *(((var_r4 + (difficulty->unk0 * 2)) * 8) + &gUnknown_080D6AE8);
        temp_r0->variant = (((var_r4 + (difficulty->unk0 * 2)) * 8) + &gUnknown_080D6AE8)->unk2;
        temp_r0->prevVariant = 0xFF;
        temp_r2 = var_r4 * 8;
        temp_r0->x = (s16)((s32) * (difficulty->fillerC + temp_r2) >> 8);
        temp_r0->y = (s16)((s32) * (&difficulty->fillerC[4] + temp_r2) >> 8);
        temp_r0->oamFlags = 0x40;
        temp_r0->animCursor = 0;
        temp_r0->qAnimDelay = 0;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = 0;
        temp_r0->hitboxes[0].index = -1;
        UpdateSpriteAnimation(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1U);
    difficulty->spr8C.tiles = (u8 *)difficulty->unk38;
    difficulty->unk38 += *((difficulty->unk0 * 8) + (&gUnknown_080D7024 + 4)) << 5;
    difficulty->spr8C.anim = *((difficulty->unk0 * 8) + &gUnknown_080D7024);
    difficulty->spr8C.variant = ((difficulty->unk0 * 8) + &gUnknown_080D7024)->unk2;
    difficulty->spr8C.prevVariant |= ~0;
    difficulty->spr8C.x = (s16)((s32)difficulty->unk1C >> 8);
    difficulty->spr8C.y = (s16)((s32)difficulty->unk20 >> 8);
    difficulty->spr8C.oamFlags = 0;
    difficulty->spr8C.animCursor = 0;
    difficulty->spr8C.qAnimDelay = 0;
    difficulty->spr8C.animSpeed = 0x10;
    difficulty->spr8C.palId = 0;
    difficulty->spr8C.frameFlags = 0;
    difficulty->spr8C.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&difficulty->spr8C);
    difficulty->sprB4.tiles = (u8 *)difficulty->unk38;
    difficulty->unk38 += gUnknown_080D70B4.unk4 << 5;
    difficulty->sprB4.anim = gUnknown_080D70B4.unk0;
    difficulty->sprB4.variant = gUnknown_080D70B4.unk2;
    difficulty->sprB4.prevVariant |= ~0;
    difficulty->sprB4.x = (s16)((s32)difficulty->unk2C >> 8);
    difficulty->sprB4.y = (s16)((s32)difficulty->unk30 >> 8);
    difficulty->sprB4.oamFlags = 0;
    difficulty->sprB4.animCursor = 0;
    difficulty->sprB4.qAnimDelay = 0;
    difficulty->sprB4.animSpeed = 0x10;
    difficulty->sprB4.palId = 0;
    difficulty->sprB4.frameFlags = 0;
    difficulty->sprB4.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&difficulty->sprB4);
}

void Task_Options_Difficulty_Init(OptionsDifficulty *difficulty)
{
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
        switch (temp_r1) { /* irregular */
            case 0:
                gLoadedSaveGame.language = (u8)temp_r1;
                return;
            case 1:
                gLoadedSaveGame.language = 1;
                return;
        }
    } else {
        if (((s32)gBgScrollRegs[1][0] <= -0xC8) && ((s64)(difficulty->unk24 + gBgScrollRegs[1][0]) <= 0)) {
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
                    var_r0 = (u16)difficulty->unk8 - 1;
                }
                goto block_20;
            }
            if (0x20 & gRepeatedKeys) {
                if (difficulty->unk8 == 1) {
                    difficulty->unk8 = (s16)temp_r2;
                    return;
                }
                var_r0 = (u16)difficulty->unk8 + 1;
            block_20:
                difficulty->unk8 = var_r0;
            }
        }
    }
}

void sub_808FA18(OptionsDifficulty *arg0)
{
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
        temp_r4->y = (s16) * (arg0 + 0x10 + temp_r2);
        if (var_r5 != arg0->unk8) {
            var_r0 = 1;
        } else {
            var_r0 = 0;
        }
        temp_r4->palId = var_r0;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r5 += 1;
    } while ((u32)var_r5 <= 1U);
}

void sub_808FA9C(OptionsDifficulty *difficulty)
{
    s32 temp_r1;
    u8 var_r2;

    var_r2 = 0;
    do {
        temp_r1 = var_r2 * 8;
        *(difficulty->fillerC + temp_r1) = 0x37 - gBgScrollRegs[1][0];
        *(&difficulty->fillerC[4] + temp_r1) = 0x46 - gBgScrollRegs[1][1];
        var_r2 += 1;
    } while ((u32)var_r2 <= 1U);
    difficulty->unk1C = 0x78 - gBgScrollRegs[1][0];
    difficulty->unk20 = 0x87 - gBgScrollRegs[1][1];
    difficulty->unk34 = 0x78 - (u16)gBgScrollRegs[1][0];
    difficulty->unk36 = 0x1E - (u16)gBgScrollRegs[1][1];
}

void sub_808FB10(OptionsDifficulty *difficulty)
{
    difficulty->sprDC.anim = *((difficulty->unk0 * 8) + &gUnknown_080D7084);
    difficulty->sprDC.variant = ((difficulty->unk0 * 8) + &gUnknown_080D7084)->unk2;
    difficulty->sprDC.x = (s16)difficulty->unk34;
    difficulty->sprDC.y = (s16)difficulty->unk36;
    DisplaySprite(&difficulty->sprDC);
}

void sub_808FB44(OptionsDifficulty *difficulty)
{
    difficulty->spr8C.anim = *((difficulty->unk0 * 8) + &gUnknown_080D7024);
    difficulty->spr8C.variant = ((difficulty->unk0 * 8) + &gUnknown_080D7024)->unk2;
    difficulty->spr8C.x = (s16)difficulty->unk1C;
    difficulty->spr8C.y = (s16)difficulty->unk20;
    DisplaySprite(&difficulty->spr8C);
}

void sub_808FB78(OptionsDifficulty *difficulty)
{
    difficulty->sprB4.x = (*(difficulty->fillerC + (difficulty->unk8 * 8)) + ((u16)difficulty->unk8 << 6)) - 3;
    difficulty->sprB4.y = (s16) * (&difficulty->fillerC[4] + (difficulty->unk8 * 8));
    DisplaySprite(&difficulty->sprB4);
}

void TaskDestructor_Options_Difficulty(Task *arg0) { }
#endif
