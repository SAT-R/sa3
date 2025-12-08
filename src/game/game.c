#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/stage.h"

void sub_80001EC(void);
void Task_8000284(void);
void sub_8000390(void);
void sub_80003B8(void);
void sub_8001E48(void);
void sub_8001E84(void);
void sub_8027960(u16 param0); // either no param or unused
void sub_8052D8C(void);
void sub_808AF44(s16 param0);
void sub_808ECB8(s16 param0);
void CreateGameIntroState(u16 state);
void sub_808723C(s16 param0, u8 param1);
void sub_808ADF0(u8 param0);
bool16 sub_8001E94(void);
void sub_8001DDC(s32 param0);

// ref to this inside sOptionsSlideInits[]
void OptionsSlideInit_Language(u16 param0, void *vram, s32 param2, s32 param3);

void GameInit(void)
{
    gTilemapsRef = UNDEF_PTR;
    gRefSpriteTables = UNDEF_PTR;
    sub_80001EC();
}

void sub_80001EC(void)
{
    u16 *maxTileSlots;
    void *vram;
    u16 tileSlots;

    sub_80003B8();
    gStageData.unk7 = 0;
    gStageData.levelTimer = 0;
    gStageData.timer = 0;
    gStageData.unk8 = 0;
    gTask_03001CFC = NULL;
    maxTileSlots = &gVramHeapMaxTileSlots;
    vram = OBJ_VRAM0 + 0x4D80;
    tileSlots = 1616 / VRAM_TILE_SLOTS_PER_SEGMENT;
    *maxTileSlots = tileSlots;
    gVramHeapStartAddr = vram;
    sub_8001DDC(0U);

    if (gFlags & 0x100) {
        sub_8001E48();
        TaskCreate(Task_8000284, 0U, 0x100U, 0U, NULL);
    } else if (sub_8001E94()) {
        sub_8001E84();
        TaskCreate(Task_8000284, 0U, 0x100U, 0U, NULL);
    } else {
        sub_8000390();
    }
}

void Task_8000284(void)
{
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 2 * TILE_SIZE_4BPP);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gStageData.timer = 0;
    sub_80003B8();
    CreateGameIntroState(1);

    TaskDestroy(gCurTask);
}

void LaunchGameIntro(void)
{
    sub_80003B8();
    CreateGameIntroState(1);
}

void LaunchDemoPlay(void) { sub_8052D8C(); }

void LaunchTitleScreen(void)
{
    sub_80003B8();
    sub_808ADF0(1);
}

void LaunchChaoMenu(s16 arg0, u8 arg1) { sub_808723C(arg0, arg1); }

void sub_8000340(u16 arg0)
{
    sub_80003B8();
    sub_808ECB8(arg0);
}

void LaunchOptionsMenu(u16 arg0)
{
    sub_80003B8();
    sub_808AF44((s16)arg0);
}

void sub_8000378(void) { sub_80003B8(); }

void sub_8000384(void) { sub_80003B8(); }

void sub_8000390(void)
{
    sub_80003B8();
    OptionsSlideInit_Language(0, OBJ_VRAM0, 0, 0);
}

void sub_80003AC(void) { sub_80003B8(); }
