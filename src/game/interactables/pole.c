#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ bool8 unkC;
    /* 0x0D */ u8 unkD[NUM_SINGLE_PLAYER_CHARS];
} IA094;

static void Task_Interactable094Main(void)
{
    IA094 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    s16 i;

    s16 left, top, right, bottom, middle;

    s16 worldX = TO_WORLD_POS(ia->base.spriteX, ia->base.regionX);
    s16 worldY = TO_WORLD_POS(me->y, ia->base.regionY);
    top = worldY + me->d.sData[1] * TILE_WIDTH;
    bottom = top + me->d.uData[3] * TILE_WIDTH;
    left = worldX + me->d.sData[0] * TILE_WIDTH;
    right = left + me->d.uData[2] * TILE_WIDTH;
    middle = left + me->d.uData[2] * (TILE_WIDTH / 2) + 4;

    if (!IsPointInScreenRect(worldX, worldY)) {
        p = &gPlayers[gStageData.charId];

#ifdef BUG_FIX
        if (p->charFlags.anim0 != ANIM_CHAR_133)
#else
        if (p->callback != (void *)ANIM_CHAR_133)
#endif
        {
            sub_8004F10(p, SE_290);
        }

        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    } else {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            if (i == 0) {
                p = &gPlayers[gStageData.charId];
            } else {
                p = &gPlayers[p->charFlags.partnerIndex];
            }

            if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2
                || p->charFlags.someIndex == 4) {
                if (sub_802C0D4(p)) {
                    sub_8004F10(p, SE_290);
                } else {
                    s16 pWorldX = I(p->qWorldX);
                    s16 pWorldY = I(p->qWorldY);

                    if ((pWorldX > left) && (pWorldX < right) && (pWorldY > top)
                        && (pWorldY < bottom)) {
                        if (ia->unkC) {
                            if (p->charFlags.anim0 == ANIM_CHAR_133) {
                                sub_8004F10(p, SE_290);
                                sub_800E6CC(p);

                                p->qWorldX = Q(middle);

                                ia->unkD[i] = 0;
                            }

                        } else if (((middle - (TILE_WIDTH / 2)) <= pWorldX)
                                   && ((middle + (TILE_WIDTH / 2)) >= pWorldX)) {
                            if (p->charFlags.anim0 != ANIM_CHAR_133) {
                                sub_8016F28(p);
                                SetPlayerCallback(p, (void *)Player_800A5B0);
                                p->qWorldX = Q(middle);

                                ia->unkD[i] = 0;
                            }
                        } else {
                            s16 r2 = (middle > pWorldX) ? 1 : 2;

                            if (ia->unkD[i] != 0 && ia->unkD[i] != r2) {
                                sub_8016F28(p);
                                SetPlayerCallback(p, (void *)Player_800A5B0);

                                p->qWorldX = Q(middle);
                                ia->unkD[i] = 0;
                            } else {
                                ia->unkD[i] = r2;
                            }
                        }

                    } else {
                        ia->unkD[i] = 0;
                    }
                }
            }
        }
    }
}

void CreateEntity_Interactable094(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t
        = TaskCreate(Task_Interactable094Main, sizeof(IA094), 0x2100, 0, NULL);
    IA094 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    ia->unkC = (me->d.uData[4] > 0) ? TRUE : FALSE;
    ia->unkD[0] = 0;
    ia->unkD[1] = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}