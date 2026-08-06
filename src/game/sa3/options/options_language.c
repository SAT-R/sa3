#include "global.h"
#include "core.h"
#include "flags.h"
#include "game/save.h"

typedef struct {
    u8 unk0;
    u8 *initArg3;
    u8 unk8;
    u8 unk9;
    s16 highlitButton;
    s16 *initArg2;
    u8 filler10[0x4];
    Vec2_32 unk14[NUM_LANGUAGES];
    Vec2_32 unk44;
    Vec2_32 unk4C;
    Vec2_u16 unk54;
    u8 filler58[0x8];
    u8 *vram60;
    Sprite buttonsLang[NUM_LANGUAGES];
    Sprite spr154;
    Sprite spr17C;
    Sprite spr1A4;
    Background bg1CC;
    Background bg20C;
} OptionsLanguage; /* 0x24C */

void Options_Language(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3);
void Task_Options_Language_Init(void);
void sub_808FDCC(OptionsLanguage *lang);
void sub_808FCF4(OptionsLanguage *lang);
void TaskDestructor_Options_Language(struct Task *t);
extern const ColorRaw gUnknown_080D6C1C[256];

void Options_Language(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3)
{
    s32 sp8;
    s32 temp_r1;
    u16 temp_r0;
    u8 var_r3;
    OptionsLanguage *lang;
    struct Task *t = TaskCreate(Task_Options_Language_Init, sizeof(OptionsLanguage), 0x100U, 0U, TaskDestructor_Options_Language);

    if (arg2 == NULL) {
        gBgScrollRegs[1][0] = 0;
        gBgScrollRegs[1][1] = -10;
    }

    lang = TASK_DATA(t);
    lang->initArg3 = arg3;
    lang->highlitButton = highlitButton;
    lang->initArg2 = arg2;
    lang->unk8 = 0;

    for (var_r3 = 0; var_r3 < ARRAY_COUNT(lang->unk14); var_r3++) {
        lang->unk14[var_r3].x = 40 - gBgScrollRegs[1][0];
        lang->unk14[var_r3].y = 38 - gBgScrollRegs[1][1];
    }

    lang->unk44.x = -gBgScrollRegs[1][0];
    lang->unk44.y = -gBgScrollRegs[1][1];
    lang->unk54.x = -gBgScrollRegs[1][0] + 100;
    lang->unk54.y = -gBgScrollRegs[1][1];
    lang->unk4C.x = -gBgScrollRegs[1][0];
    lang->unk4C.y = -gBgScrollRegs[1][1];
    lang->vram60 = vramBase;
    lang->unk0 = LOADED_SAVE->language;
    *lang->initArg2 = LOADED_SAVE->language;
    lang->highlitButton = LOADED_SAVE->language;

    sub_808FDCC(lang);

    if (arg2 == NULL) {
        sub_808FCF4(lang);
        CpuFastCopy(gUnknown_080D6C1C, gObjPalette, sizeof(gUnknown_080D6C1C));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}
