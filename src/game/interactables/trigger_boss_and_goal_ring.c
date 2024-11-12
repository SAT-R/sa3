#include "global.h"
#include "core.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 qCamX;
    /* 0x14 */ s32 qCamY;
} Trigger14;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ Trigger14 unk14;
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ u32 unk30;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u16 unk36;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ u16 unk3A;
    /* 0x3C */ u32 unk3C;
} TriggerBossOrGoal; /* 0x40 */

void Task_DestroyTrigger(void);

void sub_803E900(Trigger14 *unk14)
{
    unk14->qCamX = Q(gCamera.x);

    if ((gStageData.act == ACT_BOSS) && ((gStageData.zone == ZONE_5) || (gStageData.zone == ZONE_6))) {
#ifndef NON_MATCHING
        // NOTE: This introduces a redundant check, already handled by the 'else'.
        if (gStageData.zone != ZONE_5) {
            unk14->qCamY = Q(gCamera.y);
            return;
        }
#endif

        if (gCamera.x < 0x500) {
            unk14->qCamY = Q(gCamera.y);
            unk14->unk8 = Q(1340);
        } else {
            unk14->qCamY = Q(gCamera.y);
            unk14->unk8 = Q(1304);
        }
    } else {
        unk14->qCamY = Q(gCamera.y);
    }
}

void Task_DestroyTrigger(void) { TaskDestroy(gCurTask); }