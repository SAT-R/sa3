#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/interactables/platform_shared.h"
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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 unk34[0x10];
    /* 0x44 */ Sprite s2;
    /* 0x6C */ u16 unk6C;
    /* 0x6E */ u16 unk6E;
    /* 0x70 */ u8 kind;
    /* 0x71 */ u8 unk71;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ u8 unk74[NUM_SINGLE_PLAYER_CHARS];
    /* 0x76 */ s8 unk76[NUM_SINGLE_PLAYER_CHARS];
    /* 0x78 */ u16 unk78[NUM_SINGLE_PLAYER_CHARS];
    /* 0x7C */ s32 worldX;
    /* 0x80 */ s32 worldY;
    /* 0x84 */ Vec2_32 unk84[2];
} DashRing;

void Task_DashRing(void);
void sub_8035480(Player *p, u8 i);
void sub_8035540(Player *p, u8 i);
void sub_803598C(u8 type, Sprite *s, Sprite *s2);
void TaskDestructor_DashRing(struct Task *t);

void CreateDashRing(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_DashRing, sizeof(DashRing), 0x2100, 0, TaskDestructor_DashRing);
    DashRing *ring = TASK_DATA(t);
    Sprite *s = &ring->s;
    Sprite *s2 = &ring->s2;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.spriteX = me->x;
    ring->base.id = id;
    ring->kind = kind;
    ring->base.unk8 = 0;
    ring->unk74[PLAYER_1] = 0;
    ring->unk74[PLAYER_2] = 0;
    ring->unk78[PLAYER_1] = 0;
    ring->unk78[PLAYER_2] = 0;
    ring->unk84[0].x = 0;
    ring->unk84[0].y = 0;
    ring->unk84[1].x = 0;
    ring->unk84[1].y = 0;
    ring->unk76[PLAYER_1] = 0;
    ring->unk76[PLAYER_2] = 0;
    ring->worldX = TO_WORLD_POS(me->x, regionX);
    ring->worldY = TO_WORLD_POS(me->y, regionY);
    ring->unk6E = sub_804DC38(kind, ring->worldX, ring->worldY, ring->base.me);
    ring->unk6C = 0;
    ring->kind = kind;
    ring->unk71 = me->d.uData[4];
    ring->unk72 = 4;

    // NOTE: Set Sprite position to world position, not screen pos
    s->x = ring->worldX;
    s->y = ring->worldY;
    s2->x = s->x;
    s2->y = s->y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803598C(ring->unk71 & 0xF, s, s2);
}

void sub_8035374()
{
    u8 unused[0x8];
    s32 pindex = gStageData.playerIndex;
    s32 r7 = (pindex + 1) & 0x1;
    DashRing *ring = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i != 0) ? &gPlayers[r7] : &gPlayers[pindex];

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            if (ring->unk74[i] == 1) {
                if ((ring->unk71 & 0xF) > 2) {
                    if (ring->unk76[i] == -1) {
                        p->moveState |= MOVESTATE_FACING_LEFT;
                    } else if (ring->unk76[i] == +1) {
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                    }
                }

                sub_8035480(p, i);
            } else {
                sub_8035540(p, i);
            }

            if (ring->unk78[i] != 0) {
                if ((u16)(ring->unk78[i] - 1) < 30) {
                    ring->unk78[i]--;

                    if (ring->unk78[i] > 30) {
                        ring->unk78[i] = 0;
                    }
                    continue;
                } else {
                    p->moveState &= ~(MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
                }
            } else {
                p->moveState &= ~(MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
            }
        }
    }
}
