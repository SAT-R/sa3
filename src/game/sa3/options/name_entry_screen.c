#include "global.h"
#include "core.h"
#include "game/save.h"

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x001 */ u8 initArg0;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7;
    /* 0x008 */ u8 filler8[0x2];
    /* 0x00A */ u16 unkA;
    /* 0x00C */ u16 unkC;
    /* 0x00E */ u16 unkE;
    /* 0x010 */ u16 unk10;
    /* 0x012 */ u16 unk12;
    /* 0x014 */ s16 unk14; // TODO: unsure about signedness
    /* 0x016 */ s16 unk16; // TODO: unsure about signedness
    /* 0x018 */ u8 filler18[0x4];
    /* 0x020 */ u16 unk1C;
    /* 0x020 */ u16 unk1E;
    /* 0x020 */ u16 unk20;
    /* 0x022 */ u16 unk22;
    /* 0x024 */ u16 unk24;
    /* 0x026 */ u16 unk26;
    /* 0x028 */ u8 *vram28;
    /* 0x02C */ s32 unk2C;
    /* 0x030 */ s32 unk30;
    /* 0x034 */ s32 unk34;
    /* 0x038 */ s32 unk38;
    /* 0x03C */ s32 unk3C;
    /* 0x040 */ s32 unk40;
    /* 0x044 */ s32 unk44;
    /* 0x048 */ s32 unk48;
    /* 0x04C */ s32 unk4C;
    /* 0x050 */ s32 unk50;
    /* 0x054 */ s32 unk54;
    /* 0x058 */ s32 unk58;
    /* 0x05C */ s32 unk5C;
    /* 0x060 */ s32 unk60;
    /* 0x064 */ s32 unk64;
    /* 0x068 */ s32 unk68;
    /* 0x06C */ s32 unk6C;
    /* 0x070 */ s32 unk70;
    /* 0x074 */ Sprite spr74;
    /* 0x09C */ Sprite spr9C[2];
    /* 0x0EC */ Sprite sprEC;
    /* 0x114 */ Sprite spr114;
    /* 0x13C */ Sprite spr13C;
    /* 0x164 */ Sprite spr164;
    /* 0x18C */ Sprite spr18C;
    /* 0x1B4 */ Sprite spr1B4;
    /* 0x1DC */ Sprite spr1DC[6];
    /* 0x2CC */ Sprite spr2CC;
    /* 0x2F4 */ SpriteTransform tf2F4;
    /* 0x300 */ Background bg300;
    /* 0x340 */ Background bg340;
} NameEntryScreen; /* 0x380 */

void CreateNameEntryScreen(u8 arg0);
void Task_NameEntryScreen(void);
void sub_8091DD0(NameEntryScreen *nes);
void sub_8091E84(NameEntryScreen *nes);
void sub_8092274(NameEntryScreen *nes);
void sub_8092320(NameEntryScreen *nes);
bool32 sub_8093784(NameEntryScreen *nes);
void Task_8093710(void);
void sub_80937DC(NameEntryScreen *nes);
void sub_809380C(NameEntryScreen *nes);
void sub_809382C(NameEntryScreen *nes);
void sub_809384C(NameEntryScreen *nes);
void sub_809386C(NameEntryScreen *nes);
void sub_80938B4(NameEntryScreen *nes);
void sub_8093904(NameEntryScreen *nes);
void TaskDestructor_NameEntryScreen(struct Task *t);

extern TileInfo2 gUnknown_080D73C8;
extern TileInfo2 gUnknown_080D73D0[12];
extern TileInfo2 gUnknown_080D7430;
extern TileInfo2 gUnknown_080D7438;
extern TileInfo2 gUnknown_080D7440;
extern TileInfo2 gUnknown_080D7448;
extern TileInfo2 gUnknown_080D7450;
extern TileInfo2 gUnknown_080D7458;
extern TileInfo2 gUnknown_080D7460;
extern TileInfo2 gUnknown_080D7468;
extern const u16 gUnknown_080D74A8[8];

void CreateNameEntryScreen(u8 arg0)
{
    NameEntryScreen *nes;

    gDispCnt = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;

    nes = TASK_DATA(TaskCreate(Task_NameEntryScreen, sizeof(NameEntryScreen), 0x101U, 0U, TaskDestructor_NameEntryScreen));
    nes->initArg0 = arg0;

    sub_8091DD0(nes);

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;

    sub_8092320(nes);
    sub_8091E84(nes);
}

void sub_8091DD0(NameEntryScreen *nes)
{
    nes->language = LOADED_SAVE->language;
    nes->unkE = 0;
    nes->unkA = 0;
    nes->unk20 = 0;
    nes->unk22 = 0;
    nes->unk2 = 0;
    nes->unk3 = 0;
    nes->unkC = 0;
    nes->unk4 = 0;
    nes->unk5 = 0;
    nes->unk6 = 0;
    nes->unk14 = 0x100;
    nes->unk16 = 0x100;
    nes->unk24 = 0x800;
    nes->unk26 = 0x800;
    nes->unk7 = 0;
    nes->unk1C = 0;
    nes->unk1E = 0;
    nes->unk10 = 0;
    nes->unk2C = -0xE00;
    nes->unk30 = 0x6000;
    nes->unk5C = 0x9600;
    nes->unk60 = 0x1800;
    nes->unk3C = 0x1A;
    nes->unk40 = 0x34;
    nes->unk12 = 0x90;
    nes->unk44 = nes->unk5C + Q(10);
    nes->unk48 = nes->unk60 + Q(1);
    nes->unk4C = -0x8C00;
    nes->unk50 = 0x1000;
    nes->unk54 = 0xD900;
    nes->unk58 = 0x8C00;
    nes->unk34 = 0xD900;
    nes->unk38 = 0x8C00;
    nes->unk64 = 0xD900;
    nes->unk68 = 0x8C00;
    nes->unk6C = 0x500;
    nes->unk70 = 0x2A00;
    nes->vram28 = (u8 *)OBJ_VRAM0;
}

// (90.57%) https://decomp.me/scratch/559LU
NONMATCH("asm/non_matching/game/sa3/options/nes__sub_8091E84.inc", void sub_8091E84(NameEntryScreen *nes))
{
    s32 var_r1 = 0;
    u8 lang = nes->language;
    Sprite *s;
    SpriteTransform *tf;
    u8 i, i2;

    if (nes->initArg0 == 1) {
        var_r1 = 1;
    }

    {
    	s = &nes->spr114;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D73D0[var_r1 + (lang * 2)].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D73D0[var_r1 + (lang * 2)].anim;
        s->variant = gUnknown_080D73D0[var_r1 + (lang * 2)].variant;
        s->prevVariant = 0xFF;
        s->x = I(nes->unk4C);
        s->y = I(nes->unk50);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
    	s = &nes->spr18C;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7430.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7430.anim;
        s->variant = gUnknown_080D7430.variant;
        s->prevVariant = -1;
        s->x = I(nes->unk64);
        s->y = I(nes->unk68);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
    	s = &nes->spr13C;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7438.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7438.anim;
        s->variant = gUnknown_080D7438.variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) nes->unk54 >> 8);
        s->y = (s16) ((s32) nes->unk58 >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
    	s = &nes->spr74;
        s->tiles = nes->vram28;
        nes->vram28 += (gUnknown_080D7440.numTiles * TILE_SIZE_4BPP);
        s->anim = gUnknown_080D7440.anim;
        s->variant = gUnknown_080D7440.variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) nes->unk34 >> 8);
        s->y = (s16) ((s32) nes->unk38 >> 8);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
    	s = &nes->spr164;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D73C8.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D73C8.anim;
        s->variant = gUnknown_080D73C8.variant;
        s->prevVariant = -1;
        s->x = I(nes->unk5C);
        s->y = I(nes->unk60);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    tf = &nes->tf2F4;
    for(i = 0; i < 2; i++)
    {
        s = &nes->spr9C[i];
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7448.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7448.anim;
        s->variant = gUnknown_080D7448.variant;
        s->prevVariant = 0xFF;
        s->x = I(nes->unk3C);
        s->y = I(nes->unk40);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;

        if (i != 0) {
            s->frameFlags = 0xE1;
            tf->rotation = 0;
            tf->qScaleX = nes->unk14;
            tf->qScaleY = nes->unk16;
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite(s, tf);
        } else {
            s->frameFlags = 0;
        }
        UpdateSpriteAnimation(s);
    }

    {
        s = &nes->sprEC;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7450.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7450.anim;
        s->variant = gUnknown_080D7450.variant;
        s->prevVariant = 0xFF;
        s->x = (s16) ((s32) nes->unk44 >> 8);
        s->y = (s16) ((s32) nes->unk48 >> 8);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
    	s = &nes->spr1B4;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7458.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7458.anim;
        s->variant = nes->unk2 + gUnknown_080D7458.variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) nes->unk3C >> 8);
        s->y = (s16) ((s32) nes->unk40 >> 8);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for(i2 = 0; i2 < 6; i2++)
    {
        s = &nes->spr1DC[i2];
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7458.numTiles * TILE_SIZE_4BPP;
        
        if (LOADED_SAVE->playerName[i2] != 0xFFFF) {
            s->variant = LOADED_SAVE->playerName[i2];
            if (LOADED_SAVE->playerName[i2] > 0xFFU) {
                s->anim = gUnknown_080D7460.anim;
            } else {
                s->anim = gUnknown_080D7458.anim;
            }
            nes->unk5 += 1;
        } else {
            s->anim = gUnknown_080D7458.anim;
            s->variant = 0;
        }
        s->prevVariant = -1;
        s->x = I(nes->unk44);
        s->y = I(nes->unk48);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    nes->unk6 = nes->unk5;

    {
    	s = &nes->spr2CC;
        s->tiles = nes->vram28;
        nes->vram28 += gUnknown_080D7468.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7468.anim;
        s->variant = gUnknown_080D7468.variant;
        s->prevVariant = -1;
        s->x = I(nes->unk6C);
        s->y = I(nes->unk70);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}
END_NONMATCH

// TODO: Very fake-matchy
void sub_8092274(NameEntryScreen *nes) {
    u16 temp_r2;
    u16 temp_r2_2;
    u16 var_r0;
    u16 var_r0_2;
    u8 var_r4;
    u16 temp;

    var_r4 = 0;
    temp = nes->unk14;
    if ((u16)(temp - 1) < 0x0190) {
        nes->unk14 = temp + 8;
    } else if ((s16)temp > 0x0190) {
        nes->unk14 = temp + 0x10;
    }
    if ((s16)nes->unk14 >= 0x200) {
        nes->unk14 = 0x100;
        var_r4 += 0x01;
    }

    temp = nes->unk16;
    if ((u16)(temp - 1) << 16 <= (0x018FU << 16)) {
        nes->unk16 = temp + 8;
    } else if (nes->unk16 > 0x0190) {
        nes->unk16 = temp + 0x10;
    }

    if (nes->unk16 >= 0x200) {
        nes->unk16 = 0x100;
        var_r4 += 1;
    }
    if (var_r4 == 0) {
        gBldRegs.bldAlpha = gUnknown_080D74A8[(nes->unk16 >> 5) - 8];
    }
}

#if 0
void sub_8092320(NameEntryScreen *nes) {
    gBgCntRegs->unk0 = 0x602;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    nes->bg300.graphics.dest = (void *)0x06000000;
    nes->bg300.graphics.anim = 0;
    nes->bg300.layoutVram = (u16 *)0x06003000;
    nes->bg300.unk18 = 0;
    nes->bg300.unk1A = 0;
    nes->bg300.tilemapId = 0x15F;
    nes->bg300.unk1E = 0;
    nes->bg300.unk20 = 0;
    nes->bg300.unk22 = 0;
    nes->bg300.unk24 = 0;
    nes->bg300.targetTilesX = 0x20;
    nes->bg300.targetTilesY = 0x20;
    nes->bg300.paletteOffset = 0;
    nes->bg300.flags = 0;
    DrawBackground(nes + 0x300);

    gBgCntRegs[1] = 0x9007;

    gBgScrollRegs[1][0] = 0x16;
    gBgScrollRegs[1][1] = 0x24;

    nes->bg340.graphics.dest = (void *)0x06004000;
    nes->bg340.graphics.anim = 0;
    nes->bg340.layoutVram = (u16 *)0x06008000;
    nes->bg340.unk18 = 0;
    nes->bg340.unk1A = 0;
    nes->bg340.tilemapId = 0x160;
    nes->bg340.unk1E = 0;
    nes->bg340.unk20 = 0;
    nes->bg340.unk22 = 0;
    nes->bg340.unk24 = 0;
    nes->bg340.targetTilesX = 0x20;
    nes->bg340.targetTilesY = 0x40;
    nes->bg340.paletteOffset = 0;
    nes->bg340.flags = 1;
    DrawBackground(&nes->bg340);

    gWinRegs[2] = ((u16) nes->unkC >> 8) + 0x2A2A;
}

void Task_NameEntryScreen(NameEntryScreen *nes) {
    u16 temp_r5;

    temp_r5 = nes->unk22;
    if (temp_r5 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x3D32;
        gWinRegs[5] = temp_r5;
        gBldRegs.bldY = 0x10;
        nes->unk20 = 0x1000;
        nes->unk22 = 1;
    }
    sub_80933B0(nes);
    sub_80934B0(nes);
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_8093640(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    gWinRegs[2] = nes->unkC + 0x2A2A;
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) nes->unk20 >> 8);
        nes->unk20 += 0xFFFFFF00;
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_8092604;
}

void Task_80924DC(NameEntryScreen *nes) {
    s32 temp_r0;
    u8 temp_r0_2;

    if (nes->unk22 != 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x3D32;
        gWinRegs[5] = 0;
        nes->unk20 = 0;
        nes->unk22 = 0;
    }
    sub_80934B0(nes);
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        sub_80933B0(nes);
        gBldRegs.bldY = (u16) ((u16) nes->unk20 >> 8);
        nes->unk20 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    if (gLoadedSaveGame.playerId == 0) {
        temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        gLoadedSaveGame.playerId = (u32) temp_r0;
    }
    sub_8001E58();
    temp_r0_2 = nes->initArg0;
    switch (temp_r0_2) {                            /* irregular */
    case 2:
        gStageData.gameMode = 6;
        sub_80003B8();
        sub_808D0F0(0);
        break;
    case 3:
        gStageData.gameMode = 7;
        sub_80003B8();
        sub_8000340(0);
        break;
    case 1:
        LaunchOptionsMenu(8);
        break;
    default:
        LaunchGameIntro();
        break;
    }
    TaskDestroy(gCurTask);
}

void sub_8092604(NameEntryScreen *nes) {
    s32 temp_r1;
    u8 var_r5;

    var_r5 = 0;
    sub_80933B0(nes);
    sub_80934B0(nes);
    if (sub_8093784(nes) == 1) {
        var_r5 = 1;
    }
    if (sub_80934F0(nes, 0) == 1) {
        var_r5 += 1;
    }
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_8093640(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    temp_r1 = nes->unk30;
    gWinRegs[2] = temp_r1 + (temp_r1 >> 8) + ((u16) nes->unkC >> 8);
    if (var_r5 == 2) {
        gCurTask->main = Task_8092AC8;
    }
}

void Task_8092690(NameEntryScreen *nes) {
    s32 sp0;
    s32 sp4;
    Sprite *temp_r1;
    s16 temp_r0;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r5;
    s32 var_r1;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r3;
    u16 var_r0_2;
    u16 var_r0_3;
    u16 var_r0_4;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r5_2;
    u8 temp_r5_3;
    u8 temp_r6;
    u8 var_r0;
    u8 var_r1_2;
    u8 var_r2;
    u8 var_r3_2;
    u8 var_r3_3;
    u8 var_r3_4;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    temp_r5 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r5;
    sp0 = temp_r5;
    var_r3 = (sp0 & 0xF) << 0x10;
    if (var_r3 == 0) {
        goto block_4;
    }
    var_r1 = temp_r5;
loop_2:
    var_r1 = (0x196225 * var_r1) + 0x3C6EF35F;
    sp0 = var_r1;
    var_r3 += 0xFFFF0000;
    if ((var_r3 >> 0x10) != 0) {
        goto loop_2;
    }
    gPseudoRandom = var_r1;
block_4:
    gPseudoRandom = sp0;
    sub_80933B0(nes);
    sub_80934B0(nes);
    if (!(2 & gPressedKeys)) {
        goto block_6;
    }
    m4aSongNumStart(0x6BU);
    sub_8092D1C(nes);
block_6:
    if (!(0x200 & gPressedKeys)) {
        goto block_8;
    }
    nes->unk3 = 1;
    nes->unkE = 1;
    sub_80937DC(nes);
block_8:
    if (!(0x100 & gPressedKeys)) {
        goto block_10;
    }
    nes->unk3 = 2;
    nes->unkE = 2;
    sub_80937DC(nes);
block_10:
    sub_80935E4(nes);
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_8093640(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    if (!(1 & gPressedKeys)) {
        goto block_32;
    }
    m4aSongNumStart(0x6AU);
    temp_r0 = (s16) nes->unkE;
    if (temp_r0 == 1) {
        goto block_26;
    }
    if ((s32) temp_r0 > 1) {
        goto block_15;
    }
    if (temp_r0 == 0) {
        goto block_17;
    }
    goto block_32;
block_15:
    if (temp_r0 == 2) {
        goto block_28;
    }
    goto block_32;
block_17:
    var_r3_2 = 0;
    var_r2 = 0;
    temp_r0_2 = nes->unk5;
    if ((u32) temp_r0_2 <= 0U) {
        goto block_23;
    }
loop_19:
    temp_r1 = &nes->spr1DC[var_r2];
    if (temp_r1->variant != 0x4D) {
        goto block_22;
    }
    if (temp_r1->anim != 0x404) {
        goto block_22;
    }
    var_r3_2 += 1;
block_22:
    var_r2 += 1;
    if ((u32) var_r2 < (u32) temp_r0_2) {
        goto loop_19;
    }
block_23:
    if (temp_r0_2 == 0) {
        goto block_32;
    }
    if ((u32) var_r3_2 >= (u32) temp_r0_2) {
        goto block_32;
    }
    gCurTask->main = Task_8092A0C;
    return;
block_26:
    temp_r0_3 = nes->unk6;
    var_r1_2 = temp_r0_3;
    if (var_r1_2 == 0) {
        goto block_29;
    }
    var_r0 = temp_r0_3 - 1;
    goto block_31;
block_28:
    temp_r0_4 = nes->unk6;
    var_r1_2 = nes->unk5;
    if (temp_r0_4 != var_r1_2) {
        goto block_30;
    }
block_29:
    nes->unk6 = var_r1_2;
    goto block_32;
block_30:
    var_r0 = temp_r0_4 + 1;
block_31:
    nes->unk6 = var_r0;
block_32:
    if (0xF0 & gRepeatedKeys) {
        goto block_34;
    }
    return;
block_34:
    m4aSongNumStart(0x6CU);
    if (!(0x40 & gRepeatedKeys)) {
        goto block_39;
    }
    if ((s16) nes->unkE != 2) {
        goto block_37;
    }
    var_r0_2 = 0;
    goto block_38;
block_37:
    var_r0_2 = nes->unkE + 1;
block_38:
    nes->unkE = var_r0_2;
block_39:
    if (!(0x80 & gRepeatedKeys)) {
        goto block_44;
    }
    if ((s16) nes->unkE != 0) {
        goto block_42;
    }
    var_r0_3 = 2;
    goto block_43;
block_42:
    var_r0_3 = nes->unkE - 1;
block_43:
    nes->unkE = var_r0_3;
block_44:
    if (!(0x20 & gRepeatedKeys)) {
        goto block_63;
    }
    nes->unk3C = 0xBA;
    if (nes->filler8[0] != 0) {
        goto block_51;
    }
    temp_r0_5 = nes->unk40;
    if (temp_r0_5 != 0x34) {
        goto block_50;
    }
    if ((s16) nes->unk12 != 0) {
        goto block_49;
    }
    nes->unk40 = 0x84;
    nes->unk12 = 0x100;
    goto block_51;
block_49:
    nes->unk12 -= 0x10;
    goto block_51;
block_50:
    nes->unk40 = temp_r0_5 - 0x10;
block_51:
    if (0 == 0) {
        goto block_53;
    }
    goto block_81;
block_53:
    temp_r6 = ((s32) (nes->unk12 << 0x10) >> 0x14) + ((s32) (nes->unk40 - 0x34) >> 4);
loop_54:
    temp_r1_2 = nes->unk3C;
    temp_r5_2 = (u8) ((s32) (temp_r1_2 - 0x1A) >> 4);
    var_r3_3 = 0;
    if (gUnknown_080D7470.unk0 != temp_r5_2) {
        goto loop_56;
    }
    if (gUnknown_080D7470.unk2 == temp_r6) {
        goto block_59;
    }
loop_56:
    var_r3_3 += 1;
    if ((u32) var_r3_3 > 0xDU) {
        goto block_59;
    }
    temp_r2 = var_r3_3 * 4;
    if (*(temp_r2 + &gUnknown_080D7470) != temp_r5_2) {
        goto loop_56;
    }
    if (*(temp_r2 + (&gUnknown_080D7470 + 2)) != temp_r6) {
        goto loop_56;
    }
block_59:
    var_r2_2 = 1;
    if (var_r3_3 == 0xE) {
        goto block_61;
    }
    var_r2_2 = 0;
    nes->unk3C = temp_r1_2 - 0x10;
block_61:
    if (var_r2_2 == 0) {
        goto loop_54;
    }
    goto block_81;
block_63:
    if (!(0x10 & gRepeatedKeys)) {
        goto block_82;
    }
    nes->unk3C = 0x1A;
    if (nes->filler8[0] != 1) {
        goto block_70;
    }
    temp_r0_6 = nes->unk40;
    if (temp_r0_6 != 0x84) {
        goto block_69;
    }
    if ((s16) nes->unk12 != 0x100) {
        goto block_68;
    }
    nes->unk40 = 0x34;
    nes->unk12 = 0;
    goto block_70;
block_68:
    nes->unk12 += 0x10;
    goto block_70;
block_69:
    nes->unk40 = temp_r0_6 + 0x10;
block_70:
    if (0 != 0) {
        goto block_81;
    }
    sp4 = (s32) (u8) (((s32) (nes->unk12 << 0x10) >> 0x14) + ((s32) (nes->unk40 - 0x34) >> 4));
loop_72:
    temp_r1_3 = nes->unk3C;
    temp_r5_3 = (u8) ((s32) (temp_r1_3 - 0x1A) >> 4);
    var_r3_4 = 0;
    if (gUnknown_080D7470.unk0 != temp_r5_3) {
        goto loop_74;
    }
    var_r0_4 = gUnknown_080D7470.unk2;
    goto block_77;
loop_74:
    var_r3_4 += 1;
    if ((u32) var_r3_4 > 0xDU) {
        goto block_78;
    }
    temp_r2_2 = var_r3_4 * 4;
    if (*(temp_r2_2 + &gUnknown_080D7470) != temp_r5_3) {
        goto loop_74;
    }
    var_r0_4 = *(temp_r2_2 + (&gUnknown_080D7470 + 2));
block_77:
    if (var_r0_4 != sp4) {
        goto loop_74;
    }
block_78:
    var_r2_3 = 1;
    if (var_r3_4 == 0xE) {
        goto block_80;
    }
    var_r2_3 = 0;
    nes->unk3C = temp_r1_3 + 0x10;
block_80:
    if (var_r2_3 == 0) {
        goto loop_72;
    }
block_81:
    nes->unk7 = 0;
    gCurTask->main = Task_8092AC8;
    return;
block_82:
    nes->unk3 = (u8) nes->unkE;
    return;
}

void Task_8092A0C(NameEntryScreen *nes) {
    Sprite *temp_r0;
    u16 *temp_r0_2;
    u16 *temp_r1;
    u8 temp_r2;
    u8 var_r3;
    u8 var_r3_2;

    sub_80933B0(nes);
    sub_80934B0(nes);
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    var_r3 = 0;
    if ((u32) nes->unk5 > 0U) {
        do {
            temp_r0 = &nes->spr1DC[var_r3];
            temp_r1 = &gLoadedSaveGame.playerName[var_r3];
            temp_r2 = temp_r0->variant;
            *temp_r1 = (u16) temp_r2;
            if (temp_r0->anim != gUnknown_080D7458) {
                *temp_r1 = temp_r2 + 0x100;
            }
            var_r3 += 1;
        } while ((u32) var_r3 < (u32) nes->unk5);
    }
    var_r3_2 = nes->unk5;
    if ((u32) var_r3_2 <= 5U) {
        do {
            temp_r0_2 = &gLoadedSaveGame.playerName[var_r3_2];
            *temp_r0_2 |= 0xFFFF;
            var_r3_2 += 1;
        } while ((u32) var_r3_2 <= 5U);
    }
    gCurTask->main = Task_8093710;
}

void Task_8092AC8(NameEntryScreen *nes) {
    s32 sp0;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r1;
    s32 var_r3;
    s32 var_r3_2;
    u8 temp_r0;

    var_r3 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = var_r3;
    sp0 = var_r3;
    var_r1 = (sp0 & 0xF) << 0x10;
    if (var_r1 != 0) {
        do {
            var_r3 = (0x196225 * var_r3) + 0x3C6EF35F;
            sp0 = var_r3;
            var_r1 += 0xFFFF0000;
        } while ((var_r1 >> 0x10) != 0);
        gPseudoRandom = var_r3;
    }
    gPseudoRandom = sp0;
    if (2 & gPressedKeys) {
        m4aSongNumStart(0x6BU);
        sub_8092D1C(nes);
    }
    sub_80933B0(nes);
    sub_80934B0(nes);
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_8093640(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    sub_80936A0(nes);
    var_r3_2 = 0;
    if ((0x300 & gInput) == 0x300) {
        var_r3_2 = 1;
    }
    if (0xF0 & gRepeatedKeys) {
        if (var_r3_2 != 0) {
            var_r0 = sub_80930B8(nes);
        } else {
            m4aSongNumStart(0x6CU);
            var_r0 = sub_8092F60(nes);
        }
        if (var_r0 != 1) {
            goto block_13;
        }
    } else {
block_13:
        nes->unk2 = ((s32) (nes->unk3C - 0x1A) >> 4) + *((u8) (((s32) (nes->unk12 << 0x10) >> 0x14) + ((s32) (nes->unk40 - 0x34) >> 4)) + &gUnknown_080D74B8);
        if (0x200 & gPressedKeys) {
            nes->unk3 = 1;
            sub_80937DC(nes);
        }
        if (0x100 & gPressedKeys) {
            nes->unk3 = 2;
            sub_80937DC(nes);
        }
        sub_809386C(nes);
        sub_80935A4(nes);
        sub_8092274(nes);
        if ((1 & gPressedKeys) && ((u32) nes->unk6 <= 6U)) {
            m4aSongNumStart(0x6AU);
            temp_r0 = nes->unk2;
            if (temp_r0 == 0xA) {
                sub_8092D94(nes);
            } else if (temp_r0 == 0x15) {
                sub_8092EBC(nes);
            } else if ((u32) nes->unk6 <= 5U) {
                sub_8092CC8(nes);
            }
        }
        temp_r2 = 0x300 & gInput;
        if ((temp_r2 != 0x300) && (temp_r2 != 0)) {
            sub_80935E4(nes);
        }
        if (8 & gPressedKeys) {
            m4aSongNumStart(0x6AU);
            nes->unk3 = 0;
            nes->unkE = 0;
            gCurTask->main = Task_8092690;
        }
    }
}

void sub_8092CC8(NameEntryScreen *nes) {
    u8 temp_r0;
    u8 temp_r1;
    u8 temp_r1_2;
    u8 temp_r1_3;
    void *temp_r3;

    temp_r1 = arg0->unk6;
    temp_r3 = arg0 + ((temp_r1 * 0x28) + 0x1DC);
    temp_r1_2 = temp_r1 + 1;
    arg0->unk6 = temp_r1_2;
    if ((u32) temp_r1_2 > 6U) {
        arg0->unk6 = 6;
    }
    temp_r1_3 = arg0->unk5;
    if ((u32) arg0->unk6 > (u32) temp_r1_3) {
        temp_r0 = temp_r1_3 + 1;
        arg0->unk5 = temp_r0;
        if ((u32) temp_r0 > 6U) {
            arg0->unk5 = 6;
        }
    }
    temp_r3->unkC = (u16) gUnknown_080D7458.unk0;
    temp_r3->unk1A = (s8) (arg0->unk2 + gUnknown_080D7458.unk2);
}

void sub_8092D1C(NameEntryScreen *nes) {
    Sprite *temp_r0_2;
    s32 temp_r1_2;
    u8 temp_r0;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r1;
    u8 var_r4;
    void *temp_r2;

    arg0->unkA = 0;
    temp_r0 = arg0->unk6;
    temp_r1 = arg0->unk5;
    if (temp_r0 != temp_r1) {
        var_r4 = temp_r0;
        if ((u32) var_r4 < (u32) temp_r1) {
            do {
                temp_r1_2 = var_r4 * 0x28;
                temp_r0_2 = arg0 + (temp_r1_2 + 0x1DC);
                temp_r2 = arg0 + (temp_r1_2 + 0x204);
                temp_r0_2->anim = temp_r2->unkC;
                temp_r0_2->variant = temp_r2->unk1A;
                UpdateSpriteAnimation(temp_r0_2);
                var_r4 += 1;
            } while ((u32) var_r4 < (u32) arg0->unk5);
        }
        if (arg0->unk6 == arg0->unk5) {
            goto block_4;
        }
    } else {
block_4:
        temp_r0_3 = arg0->unk6 - 1;
        arg0->unk6 = temp_r0_3;
        if ((u32) temp_r0_3 > 6U) {
            arg0->unk6 = 0;
        }
    }
    temp_r0_4 = arg0->unk5 - 1;
    arg0->unk5 = temp_r0_4;
    if ((u32) temp_r0_4 > 6U) {
        arg0->unk5 = 0;
    }
}

void sub_8092D94(NameEntryScreen *nes) {
    s32 var_r5;
    u16 temp_r4;
    u8 temp_r2;
    u8 var_r0;
    u8 var_r0_2;
    void *temp_r0;

    var_r5 = 0;
    temp_r2 = arg0->unk6;
    temp_r0 = ((temp_r2 - 1) * 0x28) + arg0;
    temp_r4 = temp_r0->unk1F6 - gUnknown_080D7458.unk2;
    if (temp_r2 != 0) {
        if (((u32) (u16) (temp_r4 - 0xA) <= 5U) && (temp_r0->unk1E8 == gUnknown_080D7458.unk0)) {
            var_r0 = temp_r4 - 0x19;
            goto block_8;
        }
        if ((u32) (u16) (temp_r4 - 0x16) <= 4U) {
            var_r0 = temp_r4 - 0x1F;
            goto block_8;
        }
        if ((u32) (u16) (temp_r4 - 0x21) <= 3U) {
            var_r0 = temp_r4 - 0x25;
block_8:
            arg0->unk2 = var_r0;
            var_r5 = 1;
        } else {
            if (temp_r4 == 0x25) {
                var_r0_2 = 0;
                goto block_18;
            }
            if ((u32) (u16) (temp_r4 - 0x37) <= 4U) {
                var_r0_2 = temp_r4 - 0x36;
                goto block_18;
            }
            if (((u32) (u16) (temp_r4 - 6) <= 4U) && ((arg0 + ((arg0->unk6 - 1) * 0x28))->unk1E8 == gUnknown_080D7460.unk0)) {
                var_r0_2 = temp_r4 - 5;
                goto block_18;
            }
            if (temp_r4 == 2) {
                var_r0_2 = 0xB;
block_18:
                arg0->unk2 = var_r0_2;
                var_r5 = 2;
            }
        }
        switch (var_r5) {                           /* irregular */
        case 1:
            (arg0 + ((arg0->unk6 - 1) * 0x28))->unk1F6 = (u8) arg0->unk2;
            return;
        case 2:
            (arg0 + ((arg0->unk6 - 1) * 0x28))->unk1E8 = (u16) gUnknown_080D7460.unk0;
            (arg0 + ((arg0->unk6 - 1) * 0x28))->unk1F6 = (s8) (arg0->unk2 + gUnknown_080D7460.unk2);
            break;
        }
    }
}

void sub_8092EBC(NameEntryScreen *nes) {
    s32 var_r5;
    u16 temp_r1;
    u8 temp_r2;
    void *temp_r0;

    var_r5 = 0;
    temp_r2 = arg0->unk6;
    temp_r0 = ((temp_r2 - 1) * 0x28) + arg0;
    temp_r1 = temp_r0->unk1F6 - gUnknown_080D7458.unk2;
    if (temp_r2 != 0) {
        if ((u32) (u16) (temp_r1 - 0x37) <= 4U) {
            arg0->unk2 = temp_r1 - 0x31;
            goto block_7;
        }
        if (((u32) (u16) (temp_r1 - 1) <= 4U) && (temp_r0->unk1E8 == gUnknown_080D7460.unk0)) {
            arg0->unk2 = temp_r1 + 5;
            var_r5 = 1;
        }
        if (var_r5 != 0) {
block_7:
            (arg0 + ((arg0->unk6 - 1) * 0x28))->unk1E8 = (u16) gUnknown_080D7460.unk0;
            (arg0 + ((arg0->unk6 - 1) * 0x28))->unk1F6 = (s8) (arg0->unk2 + gUnknown_080D7460.unk2);
        }
    }
}

s32 sub_8092F60(NameEntryScreen *nes) {
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 var_r0;
    s32 var_r0_2;
    u8 temp_r1_2;
    u8 temp_r4;
    u8 temp_r4_2;
    u8 temp_r5;
    u8 temp_r5_2;
    u8 var_r3;
    u8 var_r3_2;

    if (0x40 & gRepeatedKeys) {
        sub_80932E0(arg0, 0U);
        goto block_32;
    }
    if (0x80 & gRepeatedKeys) {
        sub_80932E0(arg0, 1U);
        goto block_32;
    }
    if (0x20 & gRepeatedKeys) {
loop_5:
        temp_r1 = arg0->unk3C;
        if (temp_r1 == 0x1A) {
            temp_r1_2 = arg0->unk7;
            if (temp_r1_2 == 0) {
                arg0->unk7 = 1;
                arg0->filler8[0] = temp_r1_2;
                goto block_22;
            }
            goto block_9;
        }
        arg0->unk7 = 0;
        arg0->unk3C = temp_r1 - 0x10;
block_9:
        temp_r5 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        temp_r4 = (u8) ((s32) (arg0->unk3C - 0x1A) >> 4);
        var_r3 = 0;
        if ((gUnknown_080D7470.unk0 != temp_r4) || (gUnknown_080D7470.unk2 != temp_r5)) {
loop_11:
            var_r3 += 1;
            if ((u32) var_r3 <= 0xDU) {
                temp_r1_3 = var_r3 * 4;
                if ((*(temp_r1_3 + &gUnknown_080D7470) != temp_r4) || (*(temp_r1_3 + (&gUnknown_080D7470 + 2)) != temp_r5)) {
                    goto loop_11;
                }
            }
        }
        var_r0 = 0;
        if (var_r3 == 0xE) {
            var_r0 = 1;
        }
        if (var_r0 != 0) {
            goto block_32;
        }
        goto loop_5;
    }
    if (0x10 & gRepeatedKeys) {
loop_19:
        temp_r1_4 = arg0->unk3C;
        if (temp_r1_4 == 0xBA) {
            if (arg0->unk7 == 0) {
                arg0->unk7 = 1;
                arg0->filler8[0] = 1;
block_22:
                gCurTask->main = Task_8092690;
                return 1;
            }
            goto block_24;
        }
        arg0->unk7 = 0;
        arg0->unk3C = temp_r1_4 + 0x10;
block_24:
        temp_r5_2 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        temp_r4_2 = (u8) ((s32) (arg0->unk3C - 0x1A) >> 4);
        var_r3_2 = 0;
        if ((gUnknown_080D7470.unk0 != temp_r4_2) || (gUnknown_080D7470.unk2 != temp_r5_2)) {
loop_26:
            var_r3_2 += 1;
            if ((u32) var_r3_2 <= 0xDU) {
                temp_r1_5 = var_r3_2 * 4;
                if ((*(temp_r1_5 + &gUnknown_080D7470) != temp_r4_2) || (*(temp_r1_5 + (&gUnknown_080D7470 + 2)) != temp_r5_2)) {
                    goto loop_26;
                }
            }
        }
        var_r0_2 = 0;
        if (var_r3_2 == 0xE) {
            var_r0_2 = 1;
        }
        if (var_r0_2 != 0) {
            goto block_32;
        }
        goto loop_19;
    }
block_32:
    return 0;
}

s32 sub_80930B8(NameEntryScreen *nes) {
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r7;
    u16 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 temp_r4;
    u8 temp_r4_2;
    u8 temp_r4_3;
    u8 temp_r4_4;
    u8 var_r3;
    u8 var_r3_2;
    u8 var_r3_3;
    u8 var_r3_4;

    var_r7 = 0;
    if (0x40 & gRepeatedKeys) {
        temp_r0 = arg0->unk12 - 0x60;
        arg0->unk12 = temp_r0;
        if ((s32) (temp_r0 << 0x10) <= 0) {
            arg0->unk40 = 0x34;
            arg0->unk12 = 0;
        }
        temp_r2 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        temp_r4 = (u8) ((s32) (arg0->unk3C - 0x1A) >> 4);
        var_r3 = 0;
        if ((gUnknown_080D7470.unk0 != temp_r4) || (gUnknown_080D7470.unk2 != temp_r2)) {
loop_5:
            var_r3 += 1;
            if ((u32) var_r3 <= 0xDU) {
                temp_r1 = var_r3 * 4;
                if ((*(temp_r1 + &gUnknown_080D7470) != temp_r4) || (*(temp_r1 + (&gUnknown_080D7470 + 2)) != temp_r2)) {
                    goto loop_5;
                }
            }
        }
        if (var_r3 == 0xE) {

        } else {
            sub_80932E0(arg0, 1U);
        }
    } else if (0x80 & gRepeatedKeys) {
        arg0->unk12 += 0x60;
        if ((s32) (s16) arg0->unk12 >= 0x100) {
            arg0->unk40 = 0x84;
            arg0->unk12 = 0x100;
        }
        temp_r2_2 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        temp_r4_2 = (u8) ((s32) (arg0->unk3C - 0x1A) >> 4);
        var_r3_2 = 0;
        if ((gUnknown_080D7470.unk0 != temp_r4_2) || (gUnknown_080D7470.unk2 != temp_r2_2)) {
loop_16:
            var_r3_2 += 1;
            if ((u32) var_r3_2 <= 0xDU) {
                temp_r1_2 = var_r3_2 * 4;
                if ((*(temp_r1_2 + &gUnknown_080D7470) != temp_r4_2) || (*(temp_r1_2 + (&gUnknown_080D7470 + 2)) != temp_r2_2)) {
                    goto loop_16;
                }
            }
        }
        if (var_r3_2 == 0xE) {

        } else {
            sub_80932E0(arg0, 0U);
        }
    } else if (0x20 & gRepeatedKeys) {
        arg0->unk3C = 0x1A;
        temp_r0_2 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        do {
            temp_r1_3 = arg0->unk3C;
            temp_r4_3 = (u8) ((s32) (temp_r1_3 - 0x1A) >> 4);
            var_r3_3 = 0;
            if ((gUnknown_080D7470.unk0 != temp_r4_3) || (gUnknown_080D7470.unk2 != temp_r0_2)) {
loop_26:
                var_r3_3 += 1;
                if ((u32) var_r3_3 <= 0xDU) {
                    temp_r2_3 = var_r3_3 * 4;
                    if ((*(temp_r2_3 + &gUnknown_080D7470) != temp_r4_3) || (*(temp_r2_3 + (&gUnknown_080D7470 + 2)) != temp_r0_2)) {
                        goto loop_26;
                    }
                }
            }
            if (var_r3_3 != 0xE) {
                arg0->unk3C = temp_r1_3 + 0x10;
            } else {
                var_r7 = 1;
            }
        } while (var_r7 == 0);
    } else if (0x10 & gRepeatedKeys) {
        arg0->unk3C = 0xBA;
        temp_r0_3 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        do {
            temp_r1_4 = arg0->unk3C;
            temp_r4_4 = (u8) ((s32) (temp_r1_4 - 0x1A) >> 4);
            var_r3_4 = 0;
            if ((gUnknown_080D7470.unk0 != temp_r4_4) || (gUnknown_080D7470.unk2 != temp_r0_3)) {
loop_38:
                var_r3_4 += 1;
                if ((u32) var_r3_4 <= 0xDU) {
                    temp_r2_4 = var_r3_4 * 4;
                    if ((*(temp_r2_4 + &gUnknown_080D7470) != temp_r4_4) || (*(temp_r2_4 + (&gUnknown_080D7470 + 2)) != temp_r0_3)) {
                        goto loop_38;
                    }
                }
            }
            if (var_r3_4 != 0xE) {
                arg0->unk3C = temp_r1_4 - 0x10;
            } else {
                var_r7 = 1;
            }
        } while (var_r7 == 0);
    }
    return 0;
}

void sub_80932E0(NameEntryScreen *nes, u8 arg1) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 var_r0;
    s32 var_r0_2;
    u8 temp_r4;
    u8 temp_r5;
    u8 var_r3;

    do {
        if (arg1 == 0) {
            temp_r0 = arg0->unk40;
            if (temp_r0 == 0x34) {
                if ((s16) arg0->unk12 == 0) {
                    arg0->unk40 = 0x84;
                    arg0->unk12 = 0x100;
                } else {
                    arg0->unk12 -= 0x10;
                }
            } else {
                var_r0_2 = temp_r0 - 0x10;
                goto block_12;
            }
        } else {
            temp_r0_2 = arg0->unk40;
            if (temp_r0_2 == 0x84) {
                if ((s16) arg0->unk12 == 0x100) {
                    arg0->unk40 = 0x34;
                    arg0->unk12 = 0;
                } else {
                    arg0->unk12 += 0x10;
                }
            } else {
                var_r0_2 = temp_r0_2 + 0x10;
block_12:
                arg0->unk40 = var_r0_2;
            }
        }
        temp_r5 = ((s32) (arg0->unk12 << 0x10) >> 0x14) + ((s32) (arg0->unk40 - 0x34) >> 4);
        temp_r4 = (u8) ((s32) (arg0->unk3C - 0x1A) >> 4);
        var_r3 = 0;
        if ((gUnknown_080D7470.unk0 != temp_r4) || (gUnknown_080D7470.unk2 != temp_r5)) {
loop_15:
            var_r3 += 1;
            if ((u32) var_r3 <= 0xDU) {
                temp_r1 = var_r3 * 4;
                if ((*(temp_r1 + &gUnknown_080D7470) != temp_r4) || (*(temp_r1 + (&gUnknown_080D7470 + 2)) != temp_r5)) {
                    goto loop_15;
                }
            }
        }
        var_r0 = 0;
        if (var_r3 == 0xE) {
            var_r0 = 1;
        }
    } while (var_r0 == 0);
}

void sub_80933B0(NameEntryScreen *nes) {
    u32 sp0;
    u32 sp4;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u16 var_r3;
    u32 temp_r2_2;
    u32 var_r0;
    u32 var_r4;
    u8 temp_r1;
    u8 temp_r2;
    u8 temp_r5;
    void *var_r7;

    gFlags |= 4;
    temp_r5 = (u8) ((s32) arg0->unk30 >> 8);
    temp_r2 = temp_r5 + ((u16) arg0->unkC >> 8);
    temp_r1 = temp_r2;
    sp0 = (u32) ((temp_r2 << 0x18) + 0xE8000000) >> 0x18;
    temp_r2_2 = (u32) (arg0->unk2C << 8) >> 0x10;
    gHBlankCopyTarget = (void *)0x04000040;
    gHBlankCopySize = 2;
    var_r7 = gBgOffsetsHBlankPrimary;
    var_r4 = 0;
    sp4 = (temp_r2_2 + 0x1E) << 0x10;
    do {
        if ((var_r4 >= (u32) temp_r5) && ((s32) var_r4 < (s32) (temp_r5 + 0xC))) {
            temp_r1_2 = var_r4 - temp_r5;
            var_r3 = temp_r2_2 + *((temp_r1_2 * 4) + &gUnknown_080D74CE);
            var_r0 = (temp_r2_2 + *((temp_r1_2 * 4) + 2 + &gUnknown_080D74CE)) << 0x10;
        } else if (((s32) var_r4 >= (s32) (temp_r1 - 0xC)) && (var_r4 < (u32) temp_r1)) {
            temp_r1_3 = var_r4 - sp0;
            var_r3 = temp_r2_2 + *((temp_r1_3 * 4) + &gUnknown_080D74CE);
            var_r0 = (temp_r2_2 + *((temp_r1_3 * 4) + 2 + &gUnknown_080D74CE)) << 0x10;
        } else {
            var_r3 = (u16) (sp4 >> 0x10);
            var_r0 = (temp_r2_2 + 0xD3) << 0x10;
        }
        *var_r7 = (s16) ((var_r0 >> 0x10) + (var_r3 << 8));
        var_r7 += 2;
        var_r4 = (u32) (u8) (var_r4 + 1);
    } while (var_r4 <= 0x9FU);
}

void sub_80934B0(NameEntryScreen *nes) {
    u16 temp_r1;
    u16 temp_r2;

    temp_r1 = arg0->unk1C + 0xFFFFFF00;
    arg0->unk1C = temp_r1;
    temp_r2 = arg0->unk1E + 0x100;
    arg0->unk1E = temp_r2;
    gBgScrollRegs[0][0] = 0 - ((u32) (temp_r1 << 0x10) >> 0x18);
    gBgScrollRegs[0][1] = 0 - ((u32) (temp_r2 << 0x10) >> 0x18);
    gBgScrollRegs[1][0] = arg0->unk10 + 0x16;
    gBgScrollRegs[1][1] = arg0->unk12 + 0x24;
}

s32 sub_80934F0(NameEntryScreen *nes, s32 arg1) {
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r1;
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u8 var_r3;

    var_r3 = 0;
    if ((arg1 << 0x18) == 0) {
        temp_r0 = arg0->unkC;
        if ((u32) temp_r0 <= 0x6BFFU) {
            temp_r0_2 = temp_r0 + 0x1000;
            arg0->unkC = temp_r0_2;
            if ((u32) temp_r0_2 > 0x6BFFU) {
                arg0->unkC = 0x6C00;
            }
        } else {
            var_r3 = 1;
        }
        temp_r1 = arg0->unk30;
        if (temp_r1 > 0x2A00) {
            temp_r0_3 = temp_r1 - 0x800;
            arg0->unk30 = temp_r0_3;
            if (temp_r0_3 <= 0x29FF) {
                arg0->unk30 = 0x2A00;
            }
        } else {
            goto block_15;
        }
    } else {
        temp_r0_4 = arg0->unkC;
        if (temp_r0_4 != 0) {
            temp_r0_5 = temp_r0_4 + 0xFFFFF000;
            arg0->unkC = temp_r0_5;
            if ((u32) (temp_r0_5 << 0x10) > 0x6BFF0000U) {
                arg0->unkC = 0;
            }
        } else {
            var_r3 = 1;
        }
        temp_r1_2 = arg0->unk30;
        if (temp_r1_2 <= 0x5FFF) {
            temp_r0_6 = temp_r1_2 + 0x800;
            arg0->unk30 = temp_r0_6;
            if (temp_r0_6 > 0x6000) {
                arg0->unk30 = 0x6000;
            }
        } else {
block_15:
            var_r3 += 1;
        }
    }
    if (var_r3 == 2) {
        return 1;
    }
    return 0;
}

void sub_80935A4(NameEntryScreen *nes) {
    Sprite *temp_r4;
    SpriteTransform *temp_r1;

    temp_r1 = arg0 + 0x2F4;
    temp_r4 = arg0 + 0xC4;
    temp_r4->x = (u16) arg0->unk3C;
    temp_r4->y = (u16) arg0->unk40;
    temp_r4->frameFlags = 0xE1;
    arg0->tf2F4.rotation = 0;
    temp_r1->qScaleX = arg0->unk14;
    temp_r1->qScaleY = arg0->unk16;
    temp_r1->x = temp_r4->x;
    temp_r1->y = temp_r4->y;
    TransformSprite(temp_r4, temp_r1);
    DisplaySprite(temp_r4);
}

void sub_80935E4(NameEntryScreen *nes) {
    Sprite *temp_r1;
    s32 var_r0;
    u8 temp_r2;

    temp_r2 = arg0->unk3;
    subroutine_arg0.unk0 = 0;
    subroutine_arg0.unk1 = (u8) (subroutine_arg0.unk1 + 0xF);
    temp_r1 = arg0 + 0x74;
    temp_r1->x = ((s32) arg0->unk34 >> 8) - 1;
    switch (temp_r2) {                              /* irregular */
    case 0:
        var_r0 = (s32) arg0->unk38 >> 8;
block_9:
        temp_r1->y = (s16) var_r0;
        break;
    case 1:
        var_r0 = ((s32) arg0->unk38 >> 8) - 0xF;
        goto block_9;
    case 2:
        var_r0 = ((s32) arg0->unk38 >> 8) - 0x1E;
        goto block_9;
    }
    DisplaySprite(temp_r1);
}

void sub_8093640(NameEntryScreen *nes) {
    Sprite *temp_r5;
    u16 temp_r0_2;
    u32 var_r6;
    u8 temp_r0;

    var_r6 = 0;
    temp_r5 = arg0 + 0xEC;
    do {
        temp_r5->x = ((s32) arg0->unk44 >> 8) + (var_r6 * 8) + (var_r6 * 4);
        temp_r5->y = (s16) ((s32) arg0->unk48 >> 8);
        temp_r0 = arg0->unk6;
        if (var_r6 == temp_r0) {
            if ((u32) arg0->unkA <= 0x27U) {
                DisplaySprite(temp_r5);
            }
        } else if (var_r6 > (u32) temp_r0) {
            DisplaySprite(temp_r5);
        }
        var_r6 = (u32) (u8) (var_r6 + 1);
    } while (var_r6 <= 5U);
    temp_r0_2 = arg0->unkA + 1;
    arg0->unkA = temp_r0_2;
    if ((u32) temp_r0_2 > 0x3BU) {
        arg0->unkA = 0;
    }
}

void sub_80936A0(NameEntryScreen *nes) {
    Sprite *temp_r4;
    s32 var_r2;

    var_r2 = 0;
    temp_r4 = arg0 + 0x2CC;
    if ((s32) arg0->unk12 <= 0xF0) {
        temp_r4->x = (s16) ((s32) arg0->unk6C >> 8);
        temp_r4->y = ((s32) arg0->unk70 >> 8) + 0x6C;
        temp_r4->frameFlags |= 0x800;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r2 = 1;
    }
    if ((s32) arg0->unk12 > 0) {
        temp_r4->x = (s16) ((s32) arg0->unk6C >> 8);
        temp_r4->y = (s16) ((s32) arg0->unk70 >> 8);
        temp_r4->frameFlags &= 0xFFFFF7FF;
        if (var_r2 == 0) {
            UpdateSpriteAnimation(temp_r4);
        }
        DisplaySprite(temp_r4);
    }
}

void Task_8093710(NameEntryScreen *nes) {
    s32 temp_r1;
    s32 var_r5;

    var_r5 = 0;
    sub_80933B0(nes);
    sub_80934B0(nes);
    if (sub_80934F0(nes, 1) == 1) {
        var_r5 = 1;
    }
    sub_809380C(nes);
    sub_809382C(nes);
    sub_809384C(nes);
    sub_80938B4(nes);
    sub_8093904(nes);
    temp_r1 = nes->unk30;
    gWinRegs[2] = temp_r1 + (temp_r1 >> 8) + ((u16) nes->unkC >> 8);
    if (var_r5 != 0) {
        gCurTask->main = Task_80924DC;
    }
}

u32 sub_8093784(NameEntryScreen *nes) {
    s32 temp_r1;
    u8 temp_r3;

    temp_r3 = nes->unk4;
    temp_r1 = nes->unk4C + *((temp_r3 * 4) + &gUnknown_080D6ED4);
    nes->unk4C = temp_r1;
    switch (temp_r3) {                              /* irregular */
    case 0:
        if (temp_r1 <= 0x9FF) {
            if ((temp_r3 == 1) && ((s32) nes->unk4C <= 0xFFFFF600)) {
                goto block_4;
            }
            if ((temp_r3 == 2) && ((s32) nes->unk4C > 0)) {
                nes->unk4C = 0;
                return 1U;
            }
            goto block_8;
        }
block_4:
        nes->unk4 += 1;
block_8:
    default:
        return 0U;
    }
}

void sub_80937DC(NameEntryScreen *nes) {
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 var_r0;
    u8 var_r2;

    temp_r0 = nes->unk3;
    switch (temp_r0) {                              /* irregular */
    case 1:
        temp_r0_2 = nes->unk6;
        var_r2 = temp_r0_2;
        if (var_r2 != 0) {
            var_r0 = temp_r0_2 - 1;
block_7:
            nes->unk6 = var_r0;
            return;
        }
block_5:
        nes->unk6 = var_r2;
        return;
    case 2:
        temp_r0_3 = nes->unk6;
        var_r2 = nes->unk5;
        if (temp_r0_3 == var_r2) {
            goto block_5;
        }
        var_r0 = temp_r0_3 + 1;
        goto block_7;
    }
}

void sub_809380C(NameEntryScreen *nes) {
	Sprite *s = &nes->spr114;
    s->x = (s16) ((s32) nes->unk4C >> 8);
    s->y = (s16) ((s32) nes->unk50 >> 8);
    DisplaySprite(s);
}

void sub_809382C(NameEntryScreen *nes) {
	Sprite *s = &nes->spr114;
    s->x = (s16) ((s32) nes->unk5C >> 8);
    s->y = (s16) ((s32) nes->unk60 >> 8);
    DisplaySprite(s);
}

void sub_809384C(NameEntryScreen *nes) {
	Sprite *s = &nes->spr13C;
    s->x = (s16) ((s32) nes->unk54 >> 8);
    s->y = (s16) ((s32) nes->unk58 >> 8);
    DisplaySprite(s);
}

void sub_809386C(NameEntryScreen *nes) {
    Sprite *s = &nes->spr9C[0];

    s->x = (s16) nes->unk3C;
    s->y = (s16) nes->unk40;
    DisplaySprite(s);

    s = &nes->spr1B4;
    s->x = (s16) nes->unk3C;
    s->y = (s16) nes->unk40;
    s->variant = nes->unk2 + gUnknown_080D7458.unk2;
    s->prevVariant = -1;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_80938B4(NameEntryScreen *nes) {
    Sprite *s;

    s = &nes->spr18C;
    s->x = (s16) ((s32) nes->unk64 >> 8);
    s->y = ((s32) nes->unk68 >> 8) - 0xF;
    s->frameFlags |= 0x400;
    DisplaySprite(s);
    s->x = (s16) ((s32) nes->unk64 >> 8);
    s->y = ((s32) nes->unk68 >> 8) - 0x1E;
    s->frameFlags &= 0xFFFFFBFF;
    DisplaySprite(s);
}

void sub_8093904(NameEntryScreen *nes) {
    Sprite *temp_r4;
    u32 var_r6;

    var_r6 = 0;
loop_2:
    if (var_r6 < (u32) nes->unk5) {
        temp_r4 = &nes->spr1DC[var_r6];
        temp_r4->x = ((s32) nes->unk44 >> 8) + (var_r6 * 8) + (var_r6 * 4);
        temp_r4->y = ((s32) nes->unk48 >> 8) - 1;
        temp_r4->prevVariant = 0xFF;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r6 = (u32) (u8) (var_r6 + 1);
        goto loop_2;
    }
}

void TaskDestructor_NameEntryScreen(Task *t) {

}

#endif
