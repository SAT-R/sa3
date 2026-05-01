#include "global.h"
#include "core.h"
//#include "sprite.h"
#include "game/camera.h"
#include "game/stage.h"
#include "game/shared/stage/tilemap_table.h"
#include "constants/move_states.h"
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
extern const u16 gUnknown_080D05A8[][2];
extern const CamBgFuncs sBackgroundProcs[];
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

const u16 gUnknown_080D0914[] = { 455, 456, 457, 458, 459, 460 };
const u16 gUnknown_080D0920[] = { 461, 462, 463, 464, 465, 466 };
const s8 gUnknown_080D092C[] = { 0x01, 0x01, 0x02, 0x03, 0x03, 0x03, 0x02, 0x03, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04,
                                 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04 };
const s8 gUnknown_080D094C[] = { 0x02, 0x02, 0x02, 0x02, 0x02, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0x01, 0x01, 0x01, 0x01, 0x01, 0xFF,
                                 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE };
const s8 gUnknown_080D096C[] = { 0x01, 0x02, 0x02, 0x03, 0x03, 0x03, 0x02, 0x02, 0x04, 0x04, 0x04, 0x01, 0x02, 0x02, 0x02, 0x02,
                                 0x01, 0x02, 0x02, 0x03, 0x03, 0x03, 0x02, 0x02, 0x04, 0x04, 0x04, 0x01, 0x02, 0x02, 0x02, 0x02 };
const s8 gUnknown_080D098C[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x02, 0x03,
                                 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04 };

// (92.67%) https://decomp.me/scratch/l8RRD
NONMATCH("asm/non_matching/game/stage/cam__InitCamera.inc", void InitCamera(s32 level, u8 UNUSED entryIndex))
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
            if (sBackgroundProcs[level].init) {
                sBackgroundProcs[level].init();
            }
            if (sBackgroundProcs[level].update) {
                cam->task50 = TaskCreate(sBackgroundProcs[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
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

                if (sBackgroundProcs[level].init != NULL) {
                    sBackgroundProcs[level].init();
                }

                if (gTilemaps[TM_LEVEL_BG0(level)]) {
                    gStageBackgroundsRam[BGID_BACKGROUND_LO].tilemapId = TM_LEVEL_BG0(level);
                    DrawBackground(&gStageBackgroundsRam[BGID_BACKGROUND_LO]);
                    sd->unk10 |= 0x800;
                }

                if (sBackgroundProcs[level].update != NULL) {
                    cam->task50 = TaskCreate(sBackgroundProcs[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
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

                if (sBackgroundProcs[level].init != NULL) {
                    sBackgroundProcs[level].init();
                }

                if (sBackgroundProcs[level].update != NULL) {
                    cam->task50 = TaskCreate(sBackgroundProcs[level].update, sizeof(StrcCamera0C), 0x1002U, 0U, TaskDestructor_80511A4);
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
        cam->maxY = gUnknown_080D05A8[level][1];
        cam->maxX = gUnknown_080D05A8[level][0];
    } else {
        cam->maxY = ((DISPLAY_CENTER_Y + 4) << 4);
        cam->maxX = (DISPLAY_CENTER_X << 4);
    }
    cam->SA2_LABEL(qUnk8) = Q(16);
    cam->SA2_LABEL(unkC) = 0xC;
    cam->SA2_LABEL(unk10) = cam->x;
    cam->SA2_LABEL(unk14) = cam->y;
    cam->SA2_LABEL(unk44) = 8;
    cam->SA2_LABEL(unk64) = 0xFFFC;

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

void UpdateCamera(s16 arg0)
{
    s32 temp_r0_2;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_7;
    s32 var_r1_3;
    s32 var_r1_5;
    s32 temp_r1;
    s32 temp_r2;
    struct Camera *cam = &gCamera;
    Player *p = &gPlayers[gStageData.playerIndex];
    s32 newX = cam->x;
    s32 newY = cam->y;

    if (CURRENT_GAME_MODE != GAME_MODE_MP_SINGLE_PACK) {
        temp_r2 = gUnknown_080D05A8[gStageData.currentLevel][1];
        if (cam->maxY > temp_r2) {
            cam->maxY = temp_r2;
        }
        temp_r1 = gUnknown_080D05A8[gStageData.currentLevel][0];
        if (cam->maxX > temp_r1) {
            cam->maxX = temp_r1;
        }
        if (cam->minY > temp_r2) {
            cam->minY = 0;
        }
        if (cam->minX > temp_r1) {
            cam->minX = 0;
        }
    }
    cam->dx = newX;
    cam->dy = newY;
    cam->shiftX = (p->qCamOffsetX >> 4);
    cam->shiftY = (p->qCamOffsetY >> 4);

    newX = CLAMP(newX, cam->minX, cam->maxX - (DISPLAY_WIDTH + 1));
    newY = CLAMP(newY, cam->minY, cam->maxY - (DISPLAY_HEIGHT + 1));

    if (cam->SA2_LABEL(unk40) != 0) {
        cam->SA2_LABEL(unk40)--;
    } else {
        if (!(cam->SA2_LABEL(unk50) & 1)) {
            s16 qSpeedX = p->qSpeedAirX;
            cam->SA2_LABEL(unk10) = I(p->qWorldX) + cam->shiftX - DISPLAY_CENTER_X;
            cam->SA2_LABEL(unk56) = (qSpeedX + (cam->SA2_LABEL(unk56) * 15)) >> 4;
            cam->SA2_LABEL(unk10) += (cam->SA2_LABEL(unk56) >> 5);
        }
        if (!(cam->SA2_LABEL(unk50) & 2)) {
            s32 unk64 = cam->SA2_LABEL(unk64);
            s32 temp8 = p->spriteOffsetY - 4;
            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                temp8 = -temp8;
            }
            if (unk64 != temp8) {
                if (unk64 < temp8) {
                    unk64 += 5;
                    if (unk64 > temp8) {
                        unk64 = temp8;
                    }
                } else {
                    unk64 -= 5;
                    if (unk64 < temp8) {
                        unk64 = temp8;
                    }
                }
                cam->SA2_LABEL(unk64) = unk64;
            }
            cam->SA2_LABEL(unk14) = I(p->qWorldY) + cam->shiftY - DISPLAY_CENTER_Y + cam->unk40 + unk64;
        }

        if (cam->SA2_LABEL(unk10) - newX > cam->SA2_LABEL(unk44)) {
            temp_r2_2 = cam->SA2_LABEL(unk10) - newX - cam->SA2_LABEL(unk44);
            var_r1_3 = cam->SA2_LABEL(qUnk8) >> 8;
            if (var_r1_3 > temp_r2_2) {
                var_r1_3 = temp_r2_2;
            }
            newX += var_r1_3;
        } else if ((cam->SA2_LABEL(unk10) - newX) < -cam->SA2_LABEL(unk44)) {
            temp_r1_4 = cam->SA2_LABEL(unk10) - newX + cam->SA2_LABEL(unk44);
            var_r0_3 = -I(cam->SA2_LABEL(qUnk8));
            if (var_r0_3 < temp_r1_4) {
                var_r0_3 = temp_r1_4;
            }
            newX += var_r0_3;
        }
        newX = CLAMP(newX, cam->minX, cam->maxX - DISPLAY_WIDTH);

        if (cam->SA2_LABEL(qUnk8) < Q(16)) {
            cam->SA2_LABEL(qUnk8) += Q(0.125);
        }
        if ((p->moveState & MOVESTATE_IN_AIR) && ((p->charFlags.character != KNUCKLES) || (p->charFlags.SA2_LABEL(unk61) != 9))) {
            cam->SA2_LABEL(unk48) += 4;
            cam->SA2_LABEL(unk48) = MIN(cam->SA2_LABEL(unk48), 24);
        } else {
            cam->SA2_LABEL(unk48) -= 4;
            cam->SA2_LABEL(unk48) = MAX(cam->SA2_LABEL(unk48), 0);
        }

        if ((cam->SA2_LABEL(unk14) - newY) > cam->SA2_LABEL(unk48)) {
            temp_r0_2 = (cam->SA2_LABEL(unk14) - newY) - cam->SA2_LABEL(unk48);
            var_r1_5 = cam->SA2_LABEL(unkC);
            if (var_r1_5 > temp_r0_2) {
                var_r1_5 = temp_r0_2;
            }
            newY += var_r1_5;
        } else if ((cam->SA2_LABEL(unk14) - newY) < -cam->SA2_LABEL(unk48)) {
            temp_r1_6 = (cam->SA2_LABEL(unk14) - newY) + cam->SA2_LABEL(unk48);
            var_r0_7 = -cam->SA2_LABEL(unkC);
            if (var_r0_7 < temp_r1_6) {
                var_r0_7 = temp_r1_6;
            }
            newY += var_r0_7;
        }

        // NOTE: HUH!?
        if (arg0 == 0) {
            newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);
        } else {
            newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);
        }
    }

    newX = CLAMP(newX, cam->minX, cam->maxX - DISPLAY_WIDTH);
    newY = CLAMP(newY, cam->minY, cam->maxY - DISPLAY_HEIGHT);

    newX += cam->unkC;
    newY += cam->unkE;
    newX += cam->unk62;
    newY += cam->unk64;
    cam->x = newX;
    cam->y = newY;

    if (arg0 == 0) {
        cam->dx -= newX;
        cam->dy -= newY;
    }
}
