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
        if (gStageData.gameMode != 7) {
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

        if (gStageData.gameMode != 7) {
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

    if (gStageData.gameMode != 7) {
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
    if (gStageData.gameMode != 7) {
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

    if (gStageData.gameMode != 7) {
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
