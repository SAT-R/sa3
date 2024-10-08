#include "global.h"
#include "trig.h"
#include "game/interactables/platform_shared.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

u16 sub_804DC38(u8 kind, s32 worldX, s32 worldY, MapEntity *me)
{
    s32 r0;
    s32 r1;
    s32 r2_32;
    s16 r2;
    bool32 r6;
    u16 i;

    // TODO(Jace): This was likely not written this way, and might actually be a bug?
    //             I don't think MapEntity structs are always aligned in memory.
    u32 data = *((u32 *)&me->d.uData[1]);
    if (data & 0x00FFFF00) {
        if (me->d.uData[3] < me->d.uData[2]) {
            r2_32 = (me->d.uData[2] * (TILE_WIDTH / 2));
            r1 = worldX;
            r0 = worldX + (me->d.sData[0] * TILE_WIDTH);
            r6 = FALSE;
        } else {
            r2_32 = (me->d.uData[3] * (TILE_WIDTH / 2));
            r1 = worldY;
            r0 = worldY + (me->d.sData[1] * TILE_WIDTH);
            r6 = TRUE;
        }

        r2 = ((r1 - (r0 + r2_32)) << 14) / r2_32;
        if (r2 >= 0) {
            for (i = 0; (i < Q(1)) && (r2 > SIN(i));) {
                i += 4;
            }

            switch (kind) {
                case 0: {
                    return Q(2) - i;
                } break;

                case 1: {
                    if (r6) {
                        return i;
                    } else {
                        return Q(2) - i;
                    }
                } break;

                case 2: {
                    if (!r6) {
                        return i;
                    } else {
                        return Q(2) - i;
                    }
                } break;

                default: {
                    return i;
                }
            }

        } else {
            for (i = Q(2); (i < Q(3)) && (r2 < SIN(i));) {
                i += 4;
            }

            switch (kind) {
                case 0: {
                    return i;
                } break;

                case 1: {
                    if (!r6) {
                        return i;
                    } else {
                        return Q(6) - i;
                    }
                } break;

                case 2: {
                    if (r6) {
                        return i;
                    } else {
                        return Q(6) - i;
                    }
                } break;

                case 3: {
                    return Q(6) - i;
                } break;
            }
        }
    }

    return 0;
}

// (95.10%) https://decomp.me/scratch/6Dbbz
NONMATCH("asm/non_matching/game/interactables/platform_shared__sub_804DD68.inc", void sub_804DD68(PlatformShared *platform))
{
    s32 sinVal, theta;
    u32 unk2A = platform->unk2A;
    u32 unk28 = platform->unk28;
    s32 qMiddleX = platform->qMiddleX;
    s32 qMiddleY = platform->qMiddleY;
    s32 qHalfWidth = platform->qHalfWidth;
    s32 qHalfHeight = platform->qHalfHeight;

    if (unk2A) {
        unk28 += (unk2A * gStageData.timer);
        theta = (unk28 & ONE_CYCLE);
    } else {
        s32 timer = gStageData.timer;
        theta = (((timer + (unk28 / 4)) % (SIN_PERIOD >> 2)) * 4);
    }

    sinVal = SIN(theta);

    platform->qWorldX = qMiddleX + (((qHalfWidth * sinVal)) >> 14);
    platform->qWorldY = qMiddleY + ((qHalfHeight * sinVal) >> 14);
}
END_NONMATCH

void DrawPlatformShared(PlatformShared *platform, Sprite *s)
{
    s16 worldX, worldY;
    worldX = s->x = I(platform->qWorldX) - gCamera.x;
    worldY = s->y = I(platform->qWorldY) - gCamera.y;

    UpdateSpriteAnimation(s);

    if ((worldX > -31) && (worldX < (DISPLAY_WIDTH + 32))) {
        if (worldY > -32) {
            if (worldY < DISPLAY_HEIGHT + 32) {
                DisplaySprite(s);
            }
        }
    }
}
