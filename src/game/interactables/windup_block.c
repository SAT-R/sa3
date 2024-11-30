#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
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
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;

    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 unk62;
    /* 0x64 */ s16 unk64;
    /* 0x66 */ s16 unk66;
    /* 0x68 */ s16 unk68;
    /* 0x6A */ s16 unk6A;
    /* 0x6C */ u8 unk6C_05 : 6;
    /* 0x6C */ u8 unk6C_67 : 2;
    /* 0x6D */ u8 unk6D;
    /* 0x6E */ u8 unk6E;
    /* 0x6F */ u8 unk6F;
} WindupBlock;

void Task_WindupBlock(void);
void TaskDestructor_WindupBlock(struct Task *t);
void sub_804783C(WindupBlock *block);

extern const AnimId gPlayerCharacterIdleAnims[NUM_CHARACTERS];

void CreateEntity_WindupBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WindupBlock, sizeof(WindupBlock), 0x2100, 0, TaskDestructor_WindupBlock);
    WindupBlock *block = TASK_DATA(t);
    s32 worldX, worldY;
    Sprite *s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.spriteX = me->x;
    block->base.id = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    block->worldX = worldX;
    block->unk64 = worldX;
    block->unk68 = worldX;

    worldY = TO_WORLD_POS(me->y, regionY);
    block->worldY = worldY;
    block->unk66 = worldY;
    block->unk6A = worldY;
    block->unk6C_05 = 0;
    block->unk6E = 0;
    block->unk6F = me->d.uData[4] & 0x3;
    block->unk6D = 0;

    if (block->unk6F & 0x1) {
        block->unk6A -= 0x60;
        block->unk66 -= 0x10;
    } else if (!(block->unk6F & 0x2)) {
        block->unk68 += 0x60;
        block->unk64 += 0x10;
    } else {
        block->unk68 -= 0x60;
        block->unk64 -= 0x10;
    }

    block->unk60 = block->unk68;
    block->unk62 = block->unk6A;

    s = &block->s;
    s->x = block->worldX - gCamera.x;
    s->y = block->worldY - gCamera.y;

    s = &block->s2;
    s->x = block->unk68 - gCamera.x;
    s->y = block->unk6A - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804783C(block);
}

#if 1
NONMATCH("asm/non_matching/game/interactables/windup_block__Task_WindupBlock.inc", void Task_WindupBlock(void))
{
    // Unfinished (see #else block)
    WindupBlock *block = TASK_DATA(gCurTask);
    Sprite *s2 = &block->s2;
    Player *p;
    s16 i;
    s32 r8;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (sub_802C0D4(p)) {
            continue;
        }

        r8 = sub_8020950(s2, block->unk68, block->unk6A, p, 0);

        if (block->unk6F & 0x1) {
            // _080471DC

            if (block->unk6D != 0x2) {
                // _080471E6

                if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s2)) {
                    s32 r2 = 0;

                    if (GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode)) {

                    } else {
                        // _08047218
                        u16 r0 = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];

                        if (r0 == 2 || r0 == 5) {
                            r2 = 1;
                        }
                    }
                }
                // _080472AA

                // _08047302
            } else if (sub_8020700(s2, block->unk68, block->unk6A, 0, p, 0)) {
                // _0804731E
                p->qSpeedAirY = -((block->unk6E + 8) * Q(0.4375));
                p->qWorldY -= Q(8);

                sub_8016F28(p);

                p->qCamOffsetY = 0;
                p->moveState &= ~MOVESTATE_40;
                p->moveState |= MOVESTATE_IN_AIR;

                SetPlayerCallback(p, Player_800DB30);
                continue;
            }
        } else if (r8 & 0x10000) {
            // _08047364
            p->qWorldY += Q_8_8(r8);
            p->qSpeedAirY = Q(0);
        } else if (r8 & 0x20000) {
            p->qWorldY += Q_8_8(r8) + Q(1);
            p->qSpeedAirY = Q(0);
        }

        // _0804739E
        if (r8 & 0xC0000) {
            if (block->unk6D != 2) {
                if (!(block->unk6F & 0x2)) {
                    if (r8 & 0x40000) {
                        // _080473DA
                        if (block->unk68 > block->unk64) {
                            // _080473EC
                            p->qWorldX += Q_8_8(r8 >> 8);
                        } else {
                            // _08047508
                            p->qWorldX += Q_8_8(r8);
                        }
                        // _0804751C
                        p->qSpeedAirX = 0;
                        p->qSpeedGround = 0;
                    }
                } else {
                    // _08047460
                }
                // _08047508
            } else {
                // _080475E4
            }
        } else {
            continue;
        }
    }
    // _08047666
}
END_NONMATCH
#else
// Decompiler output:
void sub_804713C(void)
{
    short sVar1;
    short sVar2;
    bool bVar3;
    undefined *puVar4;
    int iVar5;
    int iVar6;
    uint r8;
    uint uVar8;
    byte bVar9;
    s16 i;
    uint uVar11;
    byte block->unk6F;
    ushort tskOffset;
    short *psVar14;
    ushort *puVar15;
    ushort uVar16;
    byte *pbVar17;
    int iVar18;
    ushort *puVar19;
    short *psVar20;
    int iVar21;
    undefined4 *unaff_r9;
    undefined4 in_lr;
    char *local_2c;

    tskOffset = *(ushort *)(gCurTask + 6);
    puVar4 = &DAT_03000034 + tskOffset;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if (i == 0) {
            uVar11 = gStageData.playerIndex;
        } else {
            uVar11 = p->*(byte *)((int)unaff_r9 + 0x2b) & 3;
        }
        iVar5 = uVar11 * 0x150;
        unaff_r9 = &gUnknown_030015C0 + uVar11 * 0x54;
        iVar6 = sub_802C0D4(unaff_r9);
        pbVar12 = &block->unk6F;
        if (iVar6 == 0) {
            psVar20 = block->unk68;
            psVar14 = block->unk6A;
            r8 = sub_8020950(puVar4, (int)*psVar20, (int)*psVar14, unaff_r9, 0);

            if ((block->unk6F & 1) == 0) {
                if ((r8 & 0x10000) == 0) {
                    if ((r8 & 0x20000) != 0) {
                        (&DAT_030015d4)[uVar11 * 0x54] = (&DAT_030015d4)[uVar11 * 0x54] + 0x100 + ((int)(r8 << 0x18) >> 0x10);
                        (&DAT_030015da)[uVar11 * 0xa8] = 0;
                    }
                } else {
                    (&DAT_030015d4)[uVar11 * 0x54] = (&DAT_030015d4)[uVar11 * 0x54] + ((int)(r8 << 0x18) >> 0x10);
                    (&DAT_030015da)[uVar11 * 0xa8] = block->unk6F & 1;
                }
                if ((r8 & 0xC0000) != 0) {
                    if (block->unk6D == '\x02') {
                        iVar5 = sub_8020700(puVar4, (int)*psVar20, (int)*psVar14, 0, unaff_r9, 0);
                        if (iVar5 != 0) {
                            (&DAT_030015dc)[uVar11 * 0xa8] = (ushort)(byte)(&DAT_0300006e)[tskOffset] << 7;
                            if ((block->unk6F & 2) == 0) {
                                uVar8 = (&DAT_030015c4)[uVar11 * 0x54] & 0xfffffffe;
                            } else {
                                (&DAT_030015dc)[uVar11 * 0xa8] = -(&DAT_030015dc)[uVar11 * 0xa8];
                                uVar8 = (&DAT_030015c4)[uVar11 * 0x54] | 1;
                            }
                            (&DAT_030015c4)[uVar11 * 0x54] = uVar8;
                            (&DAT_030015d0)[uVar11 * 0x54] = (&DAT_030015d0)[uVar11 * 0x54] + ((int)(r8 << 0x10) >> 0x18) * 0x200;
                            (&DAT_030015c4)[uVar11 * 0x54] = (&DAT_030015c4)[uVar11 * 0x54] & 0xffffffbf;
                            sub_800D87C(unaff_r9, 0x800891d);
                        }
                    } else {
                        if ((block->unk6F & 2) == 0) {
                            if (((r8 & 0x40000) == 0) || (*psVar20 <= *(short *)(&DAT_03000064 + tskOffset))) {
                            _08047508:
                                (&DAT_030015d0)[uVar11 * 0x54] = (&DAT_030015d0)[uVar11 * 0x54] + ((int)(r8 << 0x10) >> 0x18) * 0x100;
                            } else {
                                (&DAT_030015d0)[uVar11 * 0x54] = (&DAT_030015d0)[uVar11 * 0x54] + ((int)((r8 >> 8) << 0x18) >> 0x10);
                                if ((((&DAT_030015c4)[uVar11 * 0x54] & 4) == 0)
                                    && ((((sVar1 = (&DAT_030015f0)[uVar11 * 0xa8], sVar1 == 0 || (sVar1 == 8)) || (sVar1 == 0x21))
                                         || (sVar1 == 9)))) {
                                    *psVar20 = *psVar20 - (short)((int)((r8 >> 8) << 0x18) >> 0x19);
                                    if ((((&DAT_030015de)[uVar11 * 0xa8] & 0x20) != 0) || (((&gUnknown_030015EB)[iVar5] & 0x1c) == 0xC)) {
                                        (&DAT_0300006c)[tskOffset] = (&DAT_0300006c)[tskOffset] & 0xC0 | 0xf;
                                        iVar6 = (&DAT_030015d0)[uVar11 * 0x54];
                                        iVar18 = -0x100;
                                    _080474E6:
                                        (&DAT_030015d0)[uVar11 * 0x54] = iVar6 + iVar18;
                                        (&DAT_030015c4)[uVar11 * 0x54] = (&DAT_030015c4)[uVar11 * 0x54] | 0x40;
                                    }
                                _080474F4:
                                    block->unk6D = '\x01';
                                    sub_8003E0C(0x25d);
                                }
                            }
                        } else {
                            if (((r8 & 0x80000) == 0) || (*(short *)(&DAT_03000064 + tskOffset) <= *psVar20))
                                goto _08047508;
                            (&DAT_030015d0)[uVar11 * 0x54] = (&DAT_030015d0)[uVar11 * 0x54] + ((int)((r8 >> 8) << 0x18) >> 0x10);
                            if ((((&DAT_030015c4)[uVar11 * 0x54] & 4) == 0)
                                && ((((sVar1 = (&DAT_030015f0)[uVar11 * 0xa8], sVar1 == 0 || (sVar1 == 8)) || (sVar1 == 0x21))
                                     || (sVar1 == 9)))) {
                                *psVar20 = *psVar20 - (short)((int)((r8 >> 8) << 0x18) >> 0x19);
                                if ((((&DAT_030015de)[uVar11 * 0xa8] & 0x10) != 0) || (((&gUnknown_030015EB)[iVar5] & 0x1c) == 0xC)) {
                                    (&DAT_0300006c)[tskOffset] = (&DAT_0300006c)[tskOffset] & 0xC0 | 0xf;
                                    iVar6 = (&DAT_030015d0)[uVar11 * 0x54];
                                    iVar18 = 0x100;
                                    goto _080474E6;
                                }
                                goto _080474F4;
                            }
                        }
                        pbVar17 = &DAT_0300006c + tskOffset;
                        (&DAT_030015d8)[uVar11 * 0xa8] = 0;
                        (&DAT_030015dc)[uVar11 * 0xa8] = 0;
                        if ((((&DAT_030015c4)[uVar11 * 0x54] & 4) == 0)
                            && (((sVar1 = (&DAT_030015f0)[uVar11 * 0xa8], sVar1 == 0 || (sVar1 == 8))
                                 || ((sVar1 == 0x21 || (sVar1 == 9)))))) {
                            if ((r8 & 0x40000) == 0) {
                                if (((r8 & 0x80000) != 0)
                                    && ((((&DAT_030015de)[uVar11 * 0xa8] & 0x10) != 0 || (((&gUnknown_030015EB)[iVar5] & 0x1c) == 0xC)))) {
                                    if ((block->unk6F & 2) != 0) {
                                        *pbVar17 = *pbVar17 & 0xC0 | 0xf;
                                    }
                                    iVar5 = (&DAT_030015d0)[uVar11 * 0x54];
                                    iVar6 = 0x100;
                                    goto _080475D6;
                                }
                            } else if ((((&DAT_030015de)[uVar11 * 0xa8] & 0x20) != 0) || (((&gUnknown_030015EB)[iVar5] & 0x1c) == 0xC)) {
                                if ((block->unk6F & 2) == 0) {
                                    *pbVar17 = *pbVar17 & 0xC0 | 0xf;
                                }
                                iVar5 = (&DAT_030015d0)[uVar11 * 0x54];
                                iVar6 = -0x100;
                            _080475D6:
                                (&DAT_030015d0)[uVar11 * 0x54] = iVar5 + iVar6;
                                (&DAT_030015c4)[uVar11 * 0x54] = (&DAT_030015c4)[uVar11 * 0x54] | 0x40;
                            }
                        }
                    }
                }
            } else if (block->unk6D == 2) {
                iVar5 = sub_8020700(puVar4, (int)*psVar20, (int)*psVar14, 0, unaff_r9, 0);
                if (iVar5 != 0) {
                    (&DAT_030015da)[uVar11 * 0xa8] = ((byte)(&DAT_0300006e)[tskOffset] + 8) * -0x70;
                    (&DAT_030015d4)[uVar11 * 0x54] = (&DAT_030015d4)[uVar11 * 0x54] + -0x800;
                    sub_8016F28(unaff_r9);
                    (&DAT_0300165e)[uVar11 * 0xa8] = 0;
                    (&DAT_030015c4)[uVar11 * 0x54] = (&DAT_030015c4)[uVar11 * 0x54] & 0xffffffbf | 4;
                    sub_800D87C(unaff_r9, 0x800db31);
                }
            } else {
                if ((((&DAT_030015c4)[uVar11 * 0x54] & 0x20) != 0) && ((undefined *)(&DAT_0300162c)[uVar11 * 0x54] == puVar4)) {
                    bVar3 = false;
                    if (DAT_030008a3 < 5) {
                        if (((&DAT_030015f0)[uVar11 * 0xa8] != 2) && ((&DAT_030015f0)[uVar11 * 0xa8] != 5))
                            goto _0804723A;
                    } else {
                        if (((short)(*(short *)(&DAT_030015f4 + iVar5)
                                     - *(short *)(&gUnknown_080CE7D8 + (((uint)(byte)(&gUnknown_030015EA)[iVar5] << 0x1c) >> 0x1b)))
                             == 2)
                            || ((short)(*(short *)(&DAT_030015f4 + iVar5)
                                        - *(short *)(&gUnknown_080CE7D8 + (((uint)(byte)(&gUnknown_030015EA)[iVar5] << 0x1c) >> 0x1b)))
                                == 5)) {
                            bVar3 = true;
                        }
                    _0804723A:
                        if (!bVar3)
                            goto _080472AA;
                    }
                    pbVar17 = &DAT_0300006c + tskOffset;
                    bVar9 = ((*pbVar17 >> 6) - 1) * 0x40;
                    *pbVar17 = *pbVar17 & 0x3f | bVar9;
                    if (bVar9 == 0) {
                        *psVar14 = *psVar14 + 2;
                        *pbVar17 = *pbVar17 | 0xC0;
                    }
                    (&DAT_030015d4)[uVar11 * 0x54] = (&DAT_030015d4)[uVar11 * 0x54] + 0x300;
                    *pbVar17 = *pbVar17 & 0xC0 | 4;
                    block->unk6D = 1;
                    if (*psVar14 < *(short *)(&DAT_03000066 + tskOffset)) {
                        sub_8003E0C(0x25d);
                    }
                }
            _080472AA:
                if ((r8 & 0x10000) == 0) {
                    if ((r8 & 0x20000) != 0) {
                        (&DAT_030015d4)[uVar11 * 0x54] = (&DAT_030015d4)[uVar11 * 0x54] + 0x100 + ((int)(r8 << 0x18) >> 0x10);
                        (&DAT_030015da)[uVar11 * 0xa8] = 0;
                    }
                } else {
                    (&DAT_030015d4)[uVar11 * 0x54] = (&DAT_030015d4)[uVar11 * 0x54] + ((int)(r8 << 0x18) >> 0x10);
                }
                if ((r8 & 0xC0000) != 0) {
                    (&DAT_030015d8)[uVar11 * 0xa8] = 0;
                    (&DAT_030015dc)[uVar11 * 0xa8] = 0;
                }
            }
        }
        local_2c = &DAT_0300006d + tskOffset;
        puVar15 = (ushort *)(&DAT_0300006c + tskOffset);
        uVar11 = i * 0x10000 + 0x10000;
        i = uVar11 >> 0x10;
    };

    if (!(block->unk6F & 0x1)) {
        if (!(block->unk6F & 2)) {
            psVar14 = block->unk68;
            sVar1 = *(short *)(&DAT_03000064 + tskOffset);
            if (*psVar14 <= *(short *)(&DAT_03000064 + tskOffset)) {
                *psVar14 = sVar1;
                sub_8003E28(0x25d);
                // goto _080476AE;
            }
        } else if (*(short *)(&DAT_03000064 + tskOffset) <= *block->unk68) {
            block->unk68 = *(short *)(&DAT_03000064 + tskOffset);
            sub_8003E28(0x25d);
        }
    } else {
        psVar14 = block->unk6A;
        sVar1 = *(short *)(&DAT_03000066 + tskOffset);
        if (*(short *)(&DAT_03000066 + tskOffset) < *psVar14) {
        _080476AE:
            *psVar14 = sVar1;
            sub_8003E28(0x25d);
        }
    }
    bVar9 = *(byte *)puVar15;
    if ((bVar9 & 0x3f) != 0) {
        *(byte *)puVar15 = bVar9 & 0xC0 | (bVar9 & 0x3f) - 1 & 0x3f;
    }
    if ((*puVar15 & 0xff3f) == 0x100) {
        sub_8003E28(0x25d);
        *local_2c = 2;
        iVar18 = block->unk68;
        iVar6 = block->unk60;
        iVar5 = iVar18 - iVar6;
        if (iVar5 < 0) {
            iVar5 = iVar6 - iVar18;
        }
        iVar21 = block->unk6A;
        iVar18 = block->unk62;
        iVar6 = iVar21 - iVar18;
        if (iVar6 < 0) {
            if (iVar5 <= iVar18 - iVar21) {
                sVar1 = *block->unk6A;
                sVar2 = *block->unk62;
            } else {
            _08047762:
                sVar1 = *block->unk68;
                sVar2 = block->unk60;
            }
        } else {
            if (iVar6 < iVar5) {
                sVar1 = *block->unk68;
                sVar2 = block->unk60;
            } else {
            _0804776E:
                sVar1 = *block->unk6A;
                sVar2 = *block->unk62;
            }
        }
        iVar5 = (int)sVar1 - (int)sVar2;
        if (iVar5 < 0) {
            iVar5 = (int)sVar2 - (int)sVar1;
        }
        (&DAT_0300006e)[tskOffset] = (char)(iVar5 >> 2) + '\x01';
    }
    if (*local_2c != 0x2)
        goto _08047828;
    if (*(int *)(&DAT_03000068 + tskOffset) == block->unk60) {
        *local_2c = 0;
        goto _08047828;
    }
    puVar19 = (ushort *)(&DAT_03000068 + tskOffset);
    puVar15 = (ushort *)(&block->unk60);
    if ((short)*puVar19 < (short)*puVar15) {
        iVar5 = *puVar19 + 0x10;
        *puVar19 = (ushort)iVar5;
        uVar16 = *puVar15;
        if ((int)(short)*puVar15 < iVar5 * 0x10000 >> 0x10) {
        _080477E4:
            *puVar19 = uVar16;
        }
    } else if ((short)*puVar15 < (short)*puVar19) {
        iVar5 = *puVar19 - 0x10;
        *puVar19 = (ushort)iVar5;
        uVar16 = *puVar15;
        if (iVar5 * 0x10000 >> 0x10 < (int)(short)*puVar15)
            goto _080477E4;
    }
    puVar19 = (ushort *)(&DAT_0300006a + tskOffset);
    puVar15 = (ushort *)(&DAT_03000062 + tskOffset);
    if ((short)*puVar19 < (short)*puVar15) {
        iVar5 = *puVar19 + 0x10;
        *puVar19 = (ushort)iVar5;
        tskOffset = *puVar15;
        if (iVar5 * 0x10000 >> 0x10 <= (int)(short)*puVar15)
            goto _08047828;
    } else {
        if ((short)*puVar19 <= (short)*puVar15)
            goto _08047828;
        iVar5 = *puVar19 - 0x10;
        *puVar19 = (ushort)iVar5;
        tskOffset = *puVar15;
        if ((int)(short)*puVar15 <= iVar5 * 0x10000 >> 0x10)
            goto _08047828;
    }
    *puVar19 = tskOffset;
_08047828:
    sub_80479B0();
    return in_lr;
}
#endif
