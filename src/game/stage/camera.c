#include "global.h"
#include "core.h"
//#include "sprite.h"
#include "game/camera.h"
#include "game/stage.h"
#include "game/shared/stage/tilemap_table.h"
#include "constants/tilemaps.h"
#include "constants/zones.h"

enum {
    BGID_BACKGROUND_HI = 0,
    BGID_STAGE_HI = 1,
    BGID_STAGE_LO = 2,
    BGID_BACKGROUND_LO = 3,

    BGID_COUNT
};

typedef struct StrcCamera0C {
    /* 0x00 */ s32 x;
    /* 0x04 */ s32 y;
    /* 0x08 */ void *data;
} StrcCamera0C;

typedef struct CamBgFuncs {
    /* 0x00 */ VoidFn init;
    /* 0x04 */ TaskMain update; // gCurTask -> StrcCamera0C
} CamBgFuncs;

struct Camera gCamera = { 0 };
Background ALIGNED(16) gStageBackgroundsRam[BGID_COUNT] = { 0 };
extern Background gStageCameraBgTemplates[];
extern const s16 gUnknown_080D05A8[][2];
extern const CamBgFuncs gUnknown_080D06CC[];
extern const Collision CollHeader_85D8C64_fg;

void sub_80510F8(void);
void Task_8051668(void);
void Task_8051688(void);
void Task_80516C0(void);
void Task_80516CC(void);
void Task_80516D8(void);
void Task_8051748(void);
void Task_80517B8(void);
void TaskDestructor_805116C(struct Task *t);
void TaskDestructor_80511A4(struct Task *t);

// (92.67%) https://decomp.me/scratch/l8RRD
NONMATCH("asm/non_matching/game/stage/cam__sub_804F740.inc", void sub_804F740(s32 level, u8 UNUSED entryIndex))
{
    s32 sp4;
    s32 tid;
    s16 layer;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r5_2;
    StrcCamera0C *strcC;
    VoidFn taskFunc;
    const Background *bgTemplates;

    struct Camera *cam = &gCamera;
    StageData *sd = &gStageData;

    gDispCnt = DISPCNT_OBJ_1D_MAP;
    sd->unk10 = 0x1600;
    if (gStageData.act != ACT_BOSS) {
        gBgCntRegs[1] = BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(0);
        gBgCntRegs[2] = BGCNT_SCREENBASE(31) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(1);
        if (CURRENT_GAME_MODE != 7) {
            gBgSprites_Unknown1[0] = 0;
            gBgSprites_Unknown2[0][0] = 0;
            gBgSprites_Unknown2[0][1] = 0;
            gBgSprites_Unknown2[0][2] = -1;
            gBgSprites_Unknown2[0][3] = 0x20;
            gBgSprites_Unknown1[1] = 0;
            gBgSprites_Unknown2[1][0] = 0;
            gBgSprites_Unknown2[1][1] = 0;
            gBgSprites_Unknown2[1][2] = -1;
            gBgSprites_Unknown2[1][3] = 0x20;
            gBgSprites_Unknown1[2] = 0;
            gBgSprites_Unknown2[2][0] = 0;
            gBgSprites_Unknown2[2][1] = 0;
            gBgSprites_Unknown2[2][2] = -1;
            gBgSprites_Unknown2[2][3] = 0x20;
            gBgSprites_Unknown1[3] = 0;
            gBgSprites_Unknown2[3][0] = 0;
            gBgSprites_Unknown2[3][1] = 0;
            gBgSprites_Unknown2[3][2] = -1;
            gBgSprites_Unknown2[3][3] = 0x20;
        }

        bgTemplates = gStageCameraBgTemplates;
        memcpy(&gStageBackgroundsRam[0], &bgTemplates[3], sizeof(Background));
        memcpy(&gStageBackgroundsRam[1], &bgTemplates[0], sizeof(Background));
        memcpy(&gStageBackgroundsRam[2], &bgTemplates[1], sizeof(Background));
        memcpy(&gStageBackgroundsRam[3], &bgTemplates[2], sizeof(Background));

        for (layer = 0; layer < 2; layer++) {
            gStageBackgroundsRam[layer + BGID_STAGE_HI].tilemapId = TM_LEVEL_METATILES_0(level) + layer;
            DrawBackground(&gStageBackgroundsRam[layer + BGID_STAGE_HI]);
        }

        if (CURRENT_GAME_MODE != 7) {
            if (gUnknown_080D06CC[level].init) {
                gUnknown_080D06CC[level].init();
            }
            if (gUnknown_080D06CC[level].update) {
                cam->task50 = TaskCreate(gUnknown_080D06CC[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
                strcC = TASK_DATA(cam->task50);
                strcC->x = 0;
                strcC->y = 0;
                strcC->data = 0;
            } else {
                cam->task50 = NULL;
            }

            if (gTilemaps[TM_LEVEL_BG0(level)] != NULL) {
                gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                sd->unk10 |= 0x800;
            }

            if (gTilemaps[TM_LEVEL_BG1(level)] != NULL) {
                gStageBackgroundsRam[BGID_BACKGROUND_HI].tilemapId = TM_LEVEL_BG1(level);
                DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_HI]);
                sd->unk10 |= 0x100;
            }
        } else {
            sub_80510F8();
            gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
            DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
            sd->unk10 |= 0x800;
            cam->task50 = TaskCreate(Task_8051668, sizeof(StrcCamera0C), 0x1002U, 0U, NULL);
            strcC = TASK_DATA(cam->task50);
            strcC->x = 0;
            strcC->y = 0;
            strcC->data = 0;
        }
    } else {
        switch (gStageData.zone) {
            default: {
                gStageData.unk10 = 0x1301;
                gBgCntRegs[0] = BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(3);
                gBgCntRegs[1] = BGCNT_SCREENBASE(31) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(2);
                gBgCntRegs[2] = BGCNT_SCREENBASE(26) | BGCNT_256COLOR | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(1);
                gBgSprites_Unknown1[0] = 0;
                gBgSprites_Unknown2[0][0] = 0;
                gBgSprites_Unknown2[0][1] = 0;
                gBgSprites_Unknown2[0][2] = -1;
                gBgSprites_Unknown2[0][3] = 0x20;
                gBgSprites_Unknown1[1] = 0;
                gBgSprites_Unknown2[1][0] = 0;
                gBgSprites_Unknown2[1][1] = 0;
                gBgSprites_Unknown2[1][2] = -1;
                gBgSprites_Unknown2[1][3] = 0x20;
                gBgSprites_Unknown1[2] = 0;
                gBgSprites_Unknown2[2][0] = 0;
                gBgSprites_Unknown2[2][1] = 0;
                gBgSprites_Unknown2[2][2] = -1;
                gBgSprites_Unknown2[2][3] = 0x20;
                DmaFill32(3, 0, BG_VRAM + 0x4000, 0x40);
                memcpy(&gStageBackgroundsRam[0], &gStageCameraBgTemplates[2], sizeof(Background));
                memcpy(&gStageBackgroundsRam[1], &gStageCameraBgTemplates[1], sizeof(Background));
                memcpy(&gStageBackgroundsRam[2], &gStageCameraBgTemplates[0], sizeof(Background));
                gStageBackgroundsRam[2].graphics.dest = (void *)BG_VRAM + 0x4000;
                gStageBackgroundsRam[2].layoutVram = (void *)BG_VRAM + 0xD000;
                gStageBackgroundsRam[0].flags = 0x10;
                gStageBackgroundsRam[1].flags = 0x61;
                gStageBackgroundsRam[2].flags = 0x16;
                gStageBackgroundsRam[0].tilemapId = TM_LEVEL_BG0(level);
                DrawBackground(&gStageBackgroundsRam[0]);
                gStageBackgroundsRam[1].tilemapId = TM_LEVEL_METATILES_1(level);
                DrawBackground(&gStageBackgroundsRam[1]);
                cam->task50 = NULL;
                gBgScrollRegs[0][0] = 0;
                gBgScrollRegs[0][1] = 0;
            } break;

            case ZONE_5: {
                gStageData.unk10 = 0x1200;
                gBgCntRegs[1] = BGCNT_SCREENBASE(31) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(2);
                gBgSprites_Unknown1[0] = 0;
                gBgSprites_Unknown2[0][0] = 0;
                gBgSprites_Unknown2[0][1] = 0;
                gBgSprites_Unknown2[0][2] = -1;
                gBgSprites_Unknown2[0][3] = 0x20;
                gBgSprites_Unknown1[1] = 0;
                gBgSprites_Unknown2[1][0] = 0;
                gBgSprites_Unknown2[1][1] = 0;
                gBgSprites_Unknown2[1][2] = -1;
                gBgSprites_Unknown2[1][3] = 0x20;
                gBgSprites_Unknown1[3] = 0;
                gBgSprites_Unknown2[3][0] = 0;
                gBgSprites_Unknown2[3][1] = 0;
                gBgSprites_Unknown2[3][2] = -1;
                gBgSprites_Unknown2[3][3] = 0x20;

                memcpy(&gStageBackgroundsRam[BGID_STAGE_HI], &gStageCameraBgTemplates[1], sizeof(Background));
                memcpy(&gStageBackgroundsRam[BGID_BACKGROUND_LO], &gStageCameraBgTemplates[2], sizeof(Background));
                gStageBackgroundsRam[BGID_STAGE_HI].flags = 0x61;
                gStageBackgroundsRam[BGID_STAGE_HI].tilemapId = TM_LEVEL_METATILES_1(level);
                DrawBackground(&gStageBackgroundsRam[BGID_STAGE_HI]);
                temp_r5_2 = level * 8;

                if (gUnknown_080D06CC[level].init != NULL) {
                    gUnknown_080D06CC[level].init();
                }

                if (gTilemaps[TM_LEVEL_BG0(level)]) {
                    gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                    sd->unk10 |= 0x800;
                }

                if (gUnknown_080D06CC[level].update != NULL) {
                    cam->task50 = TaskCreate(gUnknown_080D06CC[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
                    strcC = TASK_DATA(cam->task50);
                    strcC->x = 0;
                    strcC->y = 0;
                    strcC->data = 0;
                } else {
                    cam->task50 = NULL;
                }

            } break;

            case ZONE_7: {
                gBgCntRegs[1] = BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(0);
                gBgCntRegs[2] = BGCNT_SCREENBASE(31) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(1);
                gBgSprites_Unknown1[0] = 0;
                gBgSprites_Unknown2[0][0] = 0;
                gBgSprites_Unknown2[0][1] = 0;
                gBgSprites_Unknown2[0][2] = -1;
                gBgSprites_Unknown2[0][3] = 0x20;
                gBgSprites_Unknown1[1] = 0;
                gBgSprites_Unknown2[1][0] = 0;
                gBgSprites_Unknown2[1][1] = 0;
                gBgSprites_Unknown2[1][2] = -1;
                gBgSprites_Unknown2[1][3] = 0x20;
                gBgSprites_Unknown1[2] = 0;
                gBgSprites_Unknown2[2][0] = 0;
                gBgSprites_Unknown2[2][1] = 0;
                gBgSprites_Unknown2[2][2] = -1;
                gBgSprites_Unknown2[2][3] = 0x20;
                gBgSprites_Unknown1[3] = 0;
                gBgSprites_Unknown2[3][0] = 0;
                gBgSprites_Unknown2[3][1] = 0;
                gBgSprites_Unknown2[3][2] = -1;
                gBgSprites_Unknown2[3][3] = 0x20;
                bgTemplates = gStageCameraBgTemplates;
                memcpy(&gStageBackgroundsRam[BGID_BACKGROUND_HI], &bgTemplates[3], sizeof(Background));
                memcpy(&gStageBackgroundsRam[BGID_STAGE_HI], &bgTemplates[0], sizeof(Background));
                memcpy(&gStageBackgroundsRam[BGID_STAGE_LO], &bgTemplates[1], sizeof(Background));
                memcpy(&gStageBackgroundsRam[BGID_BACKGROUND_LO], &bgTemplates[2], sizeof(Background));
                for (layer = 0; layer < 2; layer++) {
                    gStageBackgroundsRam[layer + BGID_STAGE_HI].tilemapId = TM_LEVEL_METATILES_0(level) + layer;
                    DrawBackground(&gStageBackgroundsRam[layer + BGID_STAGE_HI]);
                }

                if (gUnknown_080D06CC[level].init != NULL) {
                    gUnknown_080D06CC[level].init();
                }

                if (gUnknown_080D06CC[level].update != NULL) {
                    cam->task50 = TaskCreate(gUnknown_080D06CC[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
                    strcC = TASK_DATA(cam->task50);
                    strcC->x = 0;
                    strcC->y = 0;
                    strcC->data = 0;
                } else {
                    cam->task50 = NULL;
                }

                if (gTilemaps[TM_LEVEL_BG0(level)] != NULL) {
                    gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                    gStageData.unk10 |= 0x800;
                }

                if (gTilemaps[TM_LEVEL_BG1(level)] != NULL) {
                    gStageBackgroundsRam[BGID_BACKGROUND_HI].tilemapId = TM_LEVEL_BG1(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_HI]);
                }
            } break;
        }
    }

    if (CURRENT_GAME_MODE != 7) {
        gRefCollision = gCollisionTable[level];
    } else {
        gRefCollision = &CollHeader_85D8C64_fg;
    }

    cam->x = gStageData.respawnX - DISPLAY_CENTER_X;
    if (cam->x < 0) {
        cam->x = 0;
    }

    cam->y = gStageData.respawnY - (DISPLAY_CENTER_Y + 4);
    if (cam->y < 0) {
        cam->y = 0;
    }
    if (CURRENT_GAME_MODE != 7) {
        cam->unk14 = gUnknown_080D05A8[level][1];
        cam->unk1C = gUnknown_080D05A8[level][0];
    } else {
        cam->unk14 = ((DISPLAY_CENTER_Y + 4) << 4);
        cam->unk1C = (DISPLAY_CENTER_X << 4);
    }
    cam->unk20 = 0x1000;
    cam->unk24 = 0xC;
    cam->unk28 = cam->x;
    cam->unk2C = cam->y;
    cam->unk38 = 8;
    cam->unk66 = 0xFFFC;

    if (CURRENT_GAME_MODE != 7) {
        if (gStageData.zone == ZONE_UNUSED) {
            cam->task48 = TaskCreate(Task_80516CC, 0U, 0x1000U, 0U, NULL);
        } else if ((gStageData.act == ACT_BOSS) && (gStageData.zone == ZONE_5 || gStageData.zone == ZONE_6)
                   && (gStageData.zone != ZONE_7)) {
            cam->task48 = TaskCreate(Task_80516C0, 0U, 0x1000U, 0U, NULL);
        } else {
            cam->task48 = TaskCreate(Task_8051688, 0U, 0x1000U, 0U, NULL);
        }
        if (gStageData.zone == ZONE_UNUSED) {
            cam->task4C = TaskCreate(Task_80517B8, 0U, 0x1001U, 0U, TaskDestructor_805116C);
        } else if ((gStageData.act == ACT_BOSS) && (gStageData.zone != ZONE_7)) {
            cam->task4C = TaskCreate(Task_8051748, 0U, 0x1001U, 0U, TaskDestructor_805116C);
        } else {
            cam->task4C = TaskCreate(Task_80516D8, 0U, 0x1001U, 0U, TaskDestructor_805116C);
        }
    } else {
        cam->task48 = TaskCreate(Task_8051688, 0U, 0x1000U, 0U, NULL);
        cam->task4C = TaskCreate(Task_80516D8, 0U, 0x1001U, 0U, NULL);
    }
}
END_NONMATCH

#if 0
void sub_804FE8C(u16 arg0)
{
    Player *p;
    s16 var_r4;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r2_2;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r0_10;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r1_5;
    s32 var_r1_6;
    s32 var_r1_7;
    s32 var_r1_8;
    s32 var_r2;
    s32 var_r3;
    s32 var_r5;
    s32 var_r6;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r2;

    temp_r0 = arg0;
    p = &gPlayers[gStageData.playerIndex];

    if (CURRENT_GAME_MODE != 7) {
        temp_r2 = gUnknown_080D05A8[gStageData.currentLevel][1];
        if (gCamera.unk14 > temp_r2) {
            gCamera.unk14 = temp_r2;
        }
        temp_r1 = gUnknown_080D05A8[gStageData.currentLevel][0];
        if (gCamera.unk1C > temp_r1) {
            gCamera.unk1C = temp_r1;
        }
        if (gCamera.unk10 > temp_r2) {
            gCamera.unk10 = 0;
        }
        if (gCamera.unk18 > temp_r1) {
            gCamera.unk18 = 0;
        }
    }
    gCamera.dx = gCamera.x;
    gCamera.dy = gCamera.y;
    gCamera.unk8 = (p->qCamOffsetX >> 4);
    gCamera.unkA = (p->qCamOffsetY >> 4);
    var_r0 = gCamera.unk18;
    if (((s32)gCamera.x < var_r0) || (var_r0 = gCamera.unk1C - (DISPLAY_WIDTH + 1), var_r1 = gCamera.x, (var_r1 > var_r0))) {
        var_r1 = var_r0;
    }
    var_r6 = var_r1;
    var_r0_2 = gCamera.unk10;
    if (((s32)gCamera.y < var_r0_2) || (var_r0_2 = gCamera.unk14 - (DISPLAY_HEIGHT + 1), var_r1_2 = gCamera.y, (var_r1_2 > var_r0_2))) {
        var_r1_2 = var_r0_2;
    }
    var_r5 = var_r1_2;
    if ((s16)gCamera.unk5A != 0) {
        gCamera.unk5A--;
        var_r2 = temp_r0 << 0x10;
    } else {
        if (!(1 & gCamera.unk5C)) {
            gCamera.unk28 = (((s32)p->qWorldX >> 8) + gCamera.unk8) - 0x78;
            temp_r1_2 = (s32)((s16)(u16)p->qSpeedAirX + (gCamera.unk58 * 0xF)) >> 4;
            gCamera.unk58 = (s16)temp_r1_2;
            gCamera.unk28 += (s32)(temp_r1_2 << 0x10) >> 0x15;
        }
        if (!(2 & gCamera.unk5C)) {
            var_r4 = gCamera.unk66;
            var_r3 = (s8)(u8)p->spriteOffsetY - 4;
            if (p->moveState & 0x10000) {
                var_r3 = 0 - var_r3;
            }
            if (var_r4 != var_r3) {
                if ((s32)var_r4 < var_r3) {
                    var_r4 += 5;
                    if ((s32)var_r4 > var_r3) {
                        goto block_27;
                    }
                } else {
                    var_r4 -= 5;
                    if ((s32)var_r4 < var_r3) {
                    block_27:
                        var_r4 = (s16)var_r3;
                    }
                }
                gCamera.unk66 = var_r4;
            }
            gCamera.unk2C = ((s32)p->qWorldY >> 8) + gCamera.unkA + (gCamera.unk40 - 0x50) + var_r4;
        }
        temp_r1_3 = gCamera.unk28 - var_r6;
        if (temp_r1_3 > (s32)gCamera.unk38) {
            temp_r2_2 = temp_r1_3 - gCamera.unk38;
            var_r1_3 = (s32)gCamera.unk20 >> 8;
            if (var_r1_3 > temp_r2_2) {
                var_r1_3 = temp_r2_2;
            }
            var_r6 += var_r1_3;
        } else if ((s64)(temp_r1_3 + gCamera.unk38) < 0) {
            temp_r1_4 = temp_r1_3 + gCamera.unk38;
            var_r0_3 = 0 - ((s32)gCamera.unk20 >> 8);
            if (var_r0_3 < temp_r1_4) {
                var_r0_3 = temp_r1_4;
            }
            var_r6 += var_r0_3;
        }
        var_r0_4 = gCamera.unk18;
        if ((var_r6 < var_r0_4) || (var_r0_4 = gCamera.unk1C - 0xF0, var_r1_4 = var_r6, (var_r1_4 > var_r0_4))) {
            var_r1_4 = var_r0_4;
        }
        var_r6 = var_r1_4;
        if (gCamera.unk20 <= 0xFFF) {
            gCamera.unk20 += 0x20;
        }
        if ((p->moveState & 4) && (((0xF & p->unk2A) != 3) || (p->unk2F != 9))) {
            var_r0_5 = gCamera.unk3C + 4;
            gCamera.unk3C = var_r0_5;
            if (var_r0_5 > 0x18) {
                var_r0_5 = 0x18;
            }
            gCamera.unk3C = var_r0_5;
        } else {
            var_r0_6 = gCamera.unk3C - 4;
            gCamera.unk3C = var_r0_6;
            if (var_r0_6 < 0) {
                var_r0_6 = 0;
            }
            gCamera.unk3C = var_r0_6;
        }
        temp_r1_5 = gCamera.unk2C - var_r5;
        if (temp_r1_5 > (s32)gCamera.unk3C) {
            temp_r0_2 = temp_r1_5 - gCamera.unk3C;
            var_r1_5 = gCamera.unk24;
            if (var_r1_5 > temp_r0_2) {
                var_r1_5 = temp_r0_2;
            }
            var_r5 += var_r1_5;
        } else if ((s64)(temp_r1_5 + gCamera.unk3C) < 0) {
            temp_r1_6 = temp_r1_5 + gCamera.unk3C;
            var_r0_7 = 0 - gCamera.unk24;
            if (var_r0_7 < temp_r1_6) {
                var_r0_7 = temp_r1_6;
            }
            var_r5 += var_r0_7;
        }
        var_r2 = temp_r0 << 0x10;
        if (var_r2 == 0) {
            var_r0_8 = gCamera.unk10;
            if (var_r5 >= var_r0_8) {
                goto block_65;
            }
            goto block_66;
        }
        var_r0_8 = gCamera.unk10;
        if (var_r5 >= var_r0_8) {
        block_65:
            var_r0_8 = gCamera.unk14 - 0xA0;
            var_r1_6 = var_r5;
            if (var_r1_6 > var_r0_8) {
                goto block_66;
            }
        } else {
        block_66:
            var_r1_6 = var_r0_8;
        }
        var_r5 = var_r1_6;
    }
    var_r0_9 = gCamera.unk18;
    if ((var_r6 < var_r0_9) || (var_r0_9 = gCamera.unk1C - 0xF0, var_r1_7 = var_r6, (var_r1_7 > var_r0_9))) {
        var_r1_7 = var_r0_9;
    }
    var_r0_10 = gCamera.unk10;
    if ((var_r5 < var_r0_10) || (var_r0_10 = gCamera.unk14 - 0xA0, var_r1_8 = var_r5, (var_r1_8 > var_r0_10))) {
        var_r1_8 = var_r0_10;
    }
    temp_r6 = var_r1_7 + gCamera.shiftX + gCamera.unk62;
    temp_r5 = var_r1_8 + gCamera.shiftY + gCamera.unk64;
    gCamera.x = temp_r6;
    gCamera.y = temp_r5;
    if (var_r2 == 0) {
        gCamera.dx -= temp_r6;
        gCamera.dy -= temp_r5;
    }
}
#endif
