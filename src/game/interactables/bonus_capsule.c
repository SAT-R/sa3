#include <string.h> // memcpy
#include "global.h"
#include "core.h"
#include "flags.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "game/screen_fade.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x000 */ SpriteBase base;
    /* 0x00C */ u8 fillerC[0xA4];
    /* 0x0B0 */ Sprite s;
    /* 0x0D8 */ u8 fillerD8[0x618];
    /* 0x6F0 */ ScreenFade fade;
    /* 0x6FC */ s32 random;
} Capsule; /* 0x700 */

void Task_BonusCapsuleMain(void);
void TaskDestructor_BonusCapsule(struct Task *);

#if 0
void CreateEntity_BonusCapsule(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BonusCapsuleMain, sizeof(Capsule), 0x2100, 0, TaskDestructor_BonusCapsule);
    Capsule *cap = TASK_DATA(t);


}
#endif
