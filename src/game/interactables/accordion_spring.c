#include "global.h"
#include "core.h"
#include "sprite.h"
#include "malloc_vram.h"
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
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x14 */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u16 worldX;
    /* 0x40 */ u16 worldY;
} AccordionSpring; /* 0x44 */

void Task_AccordionSpringMain(void);
void Task_803F6D8(void);
bool32 sub_803F938(Player *);
void sub_803F9F0(Sprite *);
void sub_803FA5C(void);
void TaskDestructor_AccordionSpring(struct Task *);

void CreateEntity_AccordionSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_AccordionSpringMain, sizeof(AccordionSpring), 0x2100, 0, TaskDestructor_AccordionSpring);
    AccordionSpring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;
    s16 i;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->unk3C = 0;
    spring->unk3D = 0;

    spring->players[0] = &gPlayers[gStageData.playerIndex];
    spring->players[1] = &gPlayers[spring->players[0]->charFlags.partnerIndex];

    spring->worldX = TO_WORLD_POS(me->x, regionX);
    spring->worldY = TO_WORLD_POS(me->y, regionY);

    s->x = spring->worldX;
    s->y = spring->worldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803F9F0(s);
}

void Task_AccordionSpringMain(void)
{
    AccordionSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    Player *p;
    u8 i;
    u8 r6 = 0;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = spring->players[i];

        if (sub_802C0D4(p)) {
            ClearBit(r6, i);
        } else if (sub_803F938(p)) {
            SetBit(r6, i);
        }
    }

    if (r6) {
        spring->unk3C = 0;
        spring->unk3D = r6;
#ifndef NON_MATCHING
        spring->unk3C = 0;
#endif
        s->variant = 1;
        s->prevVariant = -1;

        gCurTask->main = Task_803F6D8;
    }

    sub_803FA5C();
}