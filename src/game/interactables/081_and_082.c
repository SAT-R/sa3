#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/move_states.h"

#define IA081_TYPE_0 0
#define IA081_TYPE_1 1

void Task_IA081_082(void);
void TaskDestructor_IA081_082(struct Task *t);
static void Create_Interactable081or082(u8 type, MapEntity *me, u16 regionX, u16 regionY, u8 id);

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 type;
    /* 0x0D */ u8 unkD[NUM_SINGLE_PLAYER_CHARS];
} IA081_082;

// TODO: Fakematch
// (100.0%) https://decomp.me/scratch/ehSCd
void Task_IA081_082(void)
{
    IA081_082 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    s32 worldX, worldY;
    s32 qLeft, qTop, qRight, qBottom;
    s32 i;

    worldX = TO_WORLD_POS(ia->base.spriteX, ia->base.regionX);
    worldY = TO_WORLD_POS(me->y, ia->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }
    // _0803D820

    qTop = Q(worldY) + Q(me->d.sData[1] * TILE_WIDTH);
    qBottom = qTop + Q(me->d.uData[3] * TILE_WIDTH);
    qLeft = Q(worldX) + Q(me->d.sData[0] * TILE_WIDTH);
    qRight = qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    if (ia->type == IA081_TYPE_0) {
        qRight -= Q_8_8(6.0);
    } else {
        qLeft += Q_8_8(6.0);
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        bool32 r3 = FALSE;

        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
            if (!sub_802C0D4(p)) {
                if ((p->qWorldX > qLeft) && (p->qWorldX < qRight) && (p->qWorldY > qTop) && (p->qWorldY < qBottom)) {
                    // __ia_ptr
                    if (ia->unkD[i] == FALSE) {
                        if (!(p->moveState & MOVESTATE_IN_AIR)) {
                            if (p->moveState & MOVESTATE_800000) {
                                SetPlayerCallback(p, (void *)Player_80077CC);
                            } else if (!(p->moveState & MOVESTATE_2)) {
                                SetPlayerCallback(p, (void *)Player_8005380);
                            } else {
                                SetPlayerCallback(p, (void *)Player_800891C);
                            }
                        }

                        ia->unkD[i] = TRUE;
                    }
                } else {
                    // _0803D928
                    if (ia->unkD[i] == TRUE) {
                        if (!(p->moveState & MOVESTATE_IN_AIR)) {
                            if (ia->type == 0) {
                                if (p->qWorldX > qRight) {
                                    p->qUnk70 = qRight;
                                    p->qUnk74 = qBottom;
#ifndef NON_MATCHING
                                    asm("mov r3, #1");
                                    goto lbl;
#else
                                    r3 = TRUE;
#endif
                                }
                            } else {
                                // _0803D956
                                if (p->qWorldX < qLeft) {
                                    p->qUnk70 = qLeft;
                                    p->qUnk74 = qBottom;
                                    r3 = TRUE;
                                }
                            }
                            // _0803D964

                            if (r3) {
                            lbl:
                                sub_8016F28(p);
                                sub_800A218(p);
                            }
                        }
                    }

                    ia->unkD[i] = FALSE;
                }
            }
        }
    }
}

void CreateEntity_Interactable081(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Create_Interactable081or082(IA081_TYPE_0, me, regionX, regionY, id);
}

void CreateEntity_Interactable082(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Create_Interactable081or082(IA081_TYPE_1, me, regionX, regionY, id);
}

void TaskDestructor_IA081_082(struct Task *t) { }

static void Create_Interactable081or082(u8 type, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_IA081_082, sizeof(IA081_082), 0x2100, 0, TaskDestructor_IA081_082);
    IA081_082 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.id = id;
    SET_MAP_ENTITY_INITIALIZED(me);

    ia->type = type;
    ia->unkD[0] = 0;
    ia->unkD[1] = 0;
}
