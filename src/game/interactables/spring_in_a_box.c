#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 spriteX;
    /* 0x09 */ u8 id;
    /* 0x0A */ s16 worldX;
    /* 0x0C */ s16 worldY;
    /* 0x0E */ u8 unkE;
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u8 unk10;
    /* 0x14 */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x1C */ Sprite s;
} SpringInABox;

void Task_SpringInABox(void);
void Task_80458FC(void);
void TaskDestructor_SpringInABox(struct Task *);
u32 sub_8045A5C(SpringInABox *, Player *);
void sub_8045B40(SpringInABox *);

void CreateEntity_SpringInABox(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpringInABox, sizeof(SpringInABox), 0x2100, 0, TaskDestructor_SpringInABox);
    SpringInABox *spring = TASK_DATA(t);
    Sprite *s;

    spring->regionX = regionX;
    spring->regionY = regionY;
    spring->me = me;
    spring->spriteX = me->x;
    spring->id = id;

    spring->worldX = TO_WORLD_POS(me->x, regionX);
    spring->worldY = TO_WORLD_POS(me->y, regionY);
    spring->ps[0] = &gPlayers[gStageData.charId];
    spring->ps[1] = &gPlayers[spring->ps[0]->charFlags.partnerIndex];

    spring->unkE = 0;
    spring->unkF = 0;
    spring->unk10 = me->d.uData[2];

    SET_MAP_ENTITY_INITIALIZED(me);

    s = &spring->s;
    s->tiles = ALLOC_TILES(ANIM_SPRING_IN_A_BOX);
    s->anim = ANIM_SPRING_IN_A_BOX;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void Task_SpringInABox(void)
{
    SpringInABox *spring = TASK_DATA(gCurTask);
    MapEntity *me = spring->me;
    Sprite *s = &spring->s;
    Player *p;
    s16 worldX, worldY;
    u8 playerCharCollides;
    u8 i;

    worldX = spring->worldX;
    worldY = spring->worldY;
    playerCharCollides = 0;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = spring->ps[i];

        if (!sub_802C0D4(p)) {
            u32 res = sub_8045A5C(spring, p);
            if (res & 0x10000) {
                playerCharCollides = 1 << i;
            }
        }
    }

    if ((spring->unkE == 0) && ((gStageData.timer % 64u) == 0)) {
        if (gStageData.timer & 0x40) {
            s->variant = 2;
        } else {
            s->variant = 0;
        }
        s->prevVariant = -1;
    }

    if (playerCharCollides != 0) {
        if (spring->unkE == 0) {
            spring->unkE = 1;
            spring->unkF = 30;
        }
    }

    if (spring->unkE != 0) {
        if (--spring->unkF == 0) {
            spring->unkF = 24;
            spring->unkE = 0;

            if (s->variant == 0) {
                s->variant = 1;
            } else {
                s->variant = 3;
            }
            s->prevVariant = -1;

            gCurTask->main = Task_80458FC;

            sub_8003DF0(SE_SPRING_IN_A_BOX);

            for (i = 0; i < 2; i++) {
                if (!GetBit(playerCharCollides, i)) {
                    p = spring->ps[i];
                    sub_802C080(p);
                }
            }
        }
    }

    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    sub_8045B40(spring);
}