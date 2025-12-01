#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "code_z_1.h"
#include "game/camera.h"
#include "game/enemies/hariisen.h"
#include "game/enemy_unknown.h"
#include "game/entity.h"
#include "game/stage.h"
#include "module_unclear.h"

/* NOTE: Task_806152C hits one of the rare occasions where agbcc generates different code when a function is in the beginning of a module
 * vs. in the middle. */

void Task_806152C(void)
{
    Stack_806152C sp00;
    Sprite2 *s;
    u32 temp_r7;
    u8 var_r3;
    AnimCmdResult acmdRes;

    Hariisen *enemy = TASK_DATA(gCurTask);

    temp_r7 = sub_80617E0(enemy, 1U);
    sub_8061AC8(enemy);
    acmdRes = sub_806253C(enemy);
    sub_8061BD4(enemy);
    sub_80619EC(enemy);
    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if ((acmdRes == ACMD_RESULT__ENDED) && (temp_r7 == 1)) {
            if (++enemy->unkA == 80) {
                s = &enemy->s;
                s->anim = gUnknown_080D2044[2].anim;
                s->variant = gUnknown_080D2044[2].variant;
                s->frameFlags &= ~0x40000;
                sp00.unk4.x = enemy->qPos.x;
                sp00.unk4.y = enemy->qPos.y;
                sp00.unk8.x = enemy->region[0];
                sp00.unk8.y = enemy->region[1];
                sp00.unkC[0] = enemy->unk10;
                sp00.unkC[1] = enemy->unk14;
                sub_8061D3C(sp00);

                for (var_r3 = 0; var_r3 < 2; var_r3++) {
                    enemy->qUnk2C[var_r3].x = 0;
                    enemy->qUnk2C[var_r3].y = 0;
                    enemy->unk10[var_r3] = 0;
                }

                for (var_r3 = 0; var_r3 < 4; var_r3++) {
                    enemy->qUnk3C[var_r3].x = 0;
                    enemy->qUnk3C[var_r3].y = 0;
                    enemy->unk14[var_r3] = 0;
                }

                enemy->unkA = 0;
                enemy->unkC[0] = 0;
                enemy->unkC[1] = 0;
                gCurTask->main = Task_80624E4;
                return;
            }
        }
        if (sub_8062580(enemy) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}

void sub_80616A0(void)
{
    Hariisen *enemy = TASK_DATA(gCurTask);

    sub_806253C(enemy);
    sub_8061AC8(enemy);

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) {
        if ((enemy->unkA >= 300) || (++enemy->unkA >= 300)) {
            sub_8061BD4(enemy);

            if (sub_80617E0(enemy, 0U) == 1) {
                enemy->unkA = 0;
                gCurTask->main = Task_HariisenMain;
                return;
            }
        }

        if (sub_8062580(enemy) == 1) {
            TaskDestroy(gCurTask);
        }
    }
}

bool32 sub_806172C(Hariisen *enemy)
{
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = sub_805CD20(i);
        if (p == NULL)
            break;

        {
            s32 dy = p->qWorldY - Q(TO_WORLD_POS(0, enemy->region[1]));
            if (ABS(dy - enemy->qPos.y) <= Q(DISPLAY_WIDTH / 2)) {
                s32 dx = p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0]));
                if (ABS(dx - enemy->qPos.x) <= Q(DISPLAY_WIDTH / 2)) {
                    return TRUE;
                }
            }
        }

#ifndef NON_MATCHING
        { // NOTE: This is just the exact same check as above.
            s32 dy = p->qWorldY - Q(TO_WORLD_POS(0, enemy->region[1]));
            if (ABS(dy - enemy->qPos.y) <= Q(DISPLAY_WIDTH / 2)) {
                s32 dx = p->qWorldX - Q(TO_WORLD_POS(0, enemy->region[0]));
                if (ABS(dx - enemy->qPos.x) <= Q(DISPLAY_WIDTH / 2)) {
                    return TRUE;
                }
            }
        }
#endif
    }

    return FALSE;
}

bool32 sub_80617E0(Hariisen *enemy, u8 param1)
{
    Vec2_32 sp00[2];
    s32 var_r1;
    u32 var_r2;
    u16 theta;
    u8 i;
    s32 shift = 6;
    u8 var_sb;

    var_sb = 0;
    for (i = 0; i < 2; i++) {
        sp00[0].x = 0;
        sp00[0].y = 0;
        theta = gUnknown_080D20AC[i];
        sp00[1].x = (SIN_24_8(((theta & 0xFF) * 4)) * 16) + (SIN_24_8(((theta & 0xFF) * 4)) << 1);
        sp00[1].y = (COS_24_8(((theta & 0xFF) * 4)) * 16) + (COS_24_8(((theta & 0xFF) * 4)) << 1);
        if (i != 0) {
            sp00[1].y += 0x100;
        }
        enemy->qUnk2C[i].y = sp00[0].y;
        enemy->qUnk2C[i].x = sp00[0].x;
        enemy->qUnk2C[i].y += ((sp00[1].y - sp00[0].y) >> shift) * ((enemy->unk10[i]) >> 6);
        enemy->qUnk2C[i].x += ((sp00[1].x - sp00[0].x) >> shift) * ((enemy->unk10[i]) >> 6);

        if (param1 == 1) {
            var_r2 = 0x48;
            var_r1 = 1;
        } else {
            var_r2 = 0x40;
            var_r1 = 4;
        }

        if ((u32)(enemy->unk10[i] >> 6) < var_r2) {
            enemy->unk10[i] += (1 << (var_r1 + 3));
        } else {
            enemy->unk10[i] = var_r2 << 6;
            var_sb += 1;
        }
    }

    for (i = 0; i < 4; i++) {
        sp00[0].x = 0;
        sp00[0].y = 0;
        theta = gUnknown_080D20B0[i];
        sp00[1].x = (SIN_24_8(((theta & 0xFF) * 4)) << 3) + (SIN_24_8(((theta & 0xFF) * 4)) << 2);
        sp00[1].y = (COS_24_8(((theta & 0xFF) * 4)) << 3) + (COS_24_8(((theta & 0xFF) * 4)) << 2);

        if (i < 2) {
            sp00[1].x += 0x200;
        }
        if ((i == 0) || (i == 3)) {
            sp00[1].y += 0x200;
        }

        enemy->qUnk3C[i].y = sp00[0].y;
        enemy->qUnk3C[i].x = sp00[0].x;
        enemy->qUnk3C[i].y += ((sp00[1].y - sp00[0].y) >> shift) * (enemy->unk14[i] >> 6);
        enemy->qUnk3C[i].x += ((sp00[1].x - sp00[0].x) >> shift) * (enemy->unk14[i] >> 6);

        if (param1 == 1) {
            var_r2 = 0x54;
            var_r1 = 1;
        } else {
            var_r2 = 0x40;
            var_r1 = 4;
        }

        if ((enemy->unk14[i] >> 6) < var_r2) {
            enemy->unk14[i] += (1 << (var_r1 + 3));
        } else {
            enemy->unk14[i] = var_r2 << 6;
            var_sb += 1;
        }
    }

    if (var_sb == 6) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_80619EC(Hariisen *enemy)
{
    if (++enemy->unkC[0] > gUnknown_080D20B8[enemy->unkC[1]]) {
        enemy->unkC[0] = 0;

        if (gObjPalette[12 * 16 + 8] == gPalette_080D206C[8]) {
            if (FLAGS_20000 & gFlags) {
                CopyPalette(gPalette_080D208C, 12 * 16, 16);
            } else {
                DmaCopy16(3, gPalette_080D208C, &gObjPalette[12 * 16], sizeof(gPalette_080D208C));
                gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
            }
            if (enemy->unkC[1] < 8) {
                enemy->unkC[1]++;
            }
        } else if (FLAGS_20000 & gFlags) {
            CopyPalette(gPalette_080D206C, 12 * 16, 16);
        } else {
            DmaCopy16(3, gPalette_080D206C, &gObjPalette[12 * 16], sizeof(gPalette_080D206C));
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }
    }

    return FALSE;
}

bool32 sub_8061AC8(Hariisen *enemy)
{
    Player *p;
    Sprite2 *s;
    s32 worldX, worldY;
    u8 j;
    s32 j2;
    u8 i;

    p = NULL;
    for (j = 0; j < 6; j++) {
        if (j < HSEN_COUNT_A) {
            s = &enemy->s2;
            worldX = I(enemy->qUnk2C[j].x) + I(enemy->qPos.x);
            worldY = I(enemy->qUnk2C[j].y) + I(enemy->qPos.y);
        } else {
            s = &enemy->s3;
            j2 = j - HSEN_COUNT_A;
            worldX = I(enemy->qUnk3C[j2].x) + I(enemy->qPos.x);
            worldY = I(enemy->qUnk3C[j2].y) + I(enemy->qPos.y);
        }

        worldX = TO_WORLD_POS_RAW(worldX, enemy->region[0]);
        worldY = TO_WORLD_POS_RAW(worldY, enemy->region[1]);

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            if (!sub_802C080(p) && (sub_8020700((Sprite *)s, worldX, worldY, 1, p, 0) != 0)) {
                if (p->framesInvincible == 0) {
                    sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
                }
                return TRUE;
            }
        }
    }

    return FALSE;
}

AnimCmdResult sub_8061BD4(Hariisen *enemy)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;
    u8 i;

    for (i = 0; i < HSEN_COUNT_A; i++) {
        s = &enemy->s2;
        s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
        s->x += I(enemy->qUnk2C[i].x);
        s->y += I(enemy->qUnk2C[i].y);

        if (i != 0) {
            SPRITE_FLAG_CLEAR(s, Y_FLIP);
            s->y += 2;
        } else {
            SPRITE_FLAG_SET(s, Y_FLIP);
            s->y -= 2;
        }

        UpdateSpriteAnimation((Sprite *)s);
        DisplaySprite((Sprite *)s);
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        s = &enemy->s3;

        if (i == 0) {
            SPRITE_FLAG_SET(s, X_FLIP);
            SPRITE_FLAG_SET(s, Y_FLIP);
        } else if (i == 1) {
            SPRITE_FLAG_SET(s, X_FLIP);
            SPRITE_FLAG_CLEAR(s, Y_FLIP);
        } else if (i == 2) {
            SPRITE_FLAG_CLEAR(s, Y_FLIP);
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else if (i == 3) {
            SPRITE_FLAG_SET(s, Y_FLIP);
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        }

        s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
        s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
        s->x += I(enemy->qUnk3C[i].x);
        s->y += I(enemy->qUnk3C[i].y);

        acmdRes = UpdateSpriteAnimation((Sprite *)s);
        DisplaySprite((Sprite *)s);
    }

    return acmdRes;
}

void sub_8061D3C(Stack_806152C arg0)
{
    HariisenProj *proj;
    u8 i;

    proj = TASK_DATA(TaskCreate(Task_HariisenProjInit, sizeof(HariisenProj), 0x4040U, 0U, TaskDestructor_HariisenProj));
    for (i = 0; i < HSEN_COUNT_A; i++) {
        proj->qUnk2C[i].x = 0;
        proj->qUnk2C[i].y = 0;
        proj->unk0[i] = 1;
        proj->unkC[i] = arg0.unkC[0][i];
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        proj->qUnk3C[i].x = 0;
        proj->qUnk3C[i].y = 0;
        proj->unk2[i] = 1;
        proj->unk14[i] = arg0.unkC[1][i];
    }

    proj->qPos.x = arg0.unk4.x;
    proj->qPos.y = arg0.unk4.y;
    proj->region[0] = arg0.unk8.x;
    proj->region[1] = arg0.unk8.y;
    CpuFill16(0, &proj->s.hitboxes[1].b, sizeof(proj->s.hitboxes[1].b));
    CpuFill16(0, &proj->s2.hitboxes[1].b, sizeof(proj->s.hitboxes[1].b));

    sub_8061E5C(proj);
}

void sub_8061E5C(HariisenProj *enemy)
{
    u8 *vram = VramMalloc(2U);
    Sprite2 *s = &enemy->s;

    s->tiles = vram;
    vram += (gUnknown_080D2044[3].numTiles * TILE_SIZE_4BPP);
    s->anim = gUnknown_080D2044[3].anim;
    s->variant = gUnknown_080D2044[3].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s2;
    s->tiles = vram;
    s->anim = gUnknown_080D2044[4].anim;
    s->variant = gUnknown_080D2044[4].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

// (99.78%) https://decomp.me/scratch/d0Gv6
NONMATCH("asm/non_matching/game/enemies/hariisen__sub_8061F50.inc", bool32 sub_8061F50(HariisenProj *proj))
{
    Vec2_32 sp00[2];
    u8 i;
    s32 r0;
    s32 r1;

    s32 shift = 6;

    for (i = 0; i < HSEN_COUNT_A; i++) {
        if (proj->unk0[i] != 0) {
            sp00[0].x = 0;
            sp00[0].y = 0;
            sp00[1].x = (SIN_24_8((gUnknown_080D20AC[i] & 0xFF) * 4) << 4) + (SIN_24_8((gUnknown_080D20AC[i] & 0xFF) * 4) << 1);
            sp00[1].y = (COS_24_8((gUnknown_080D20AC[i] & 0xFF) * 4) << 4) + (COS_24_8((gUnknown_080D20AC[i] & 0xFF) * 4) << 1);
            if (i != 0) {
                sp00[1].y += 0x100;
            }
            proj->qUnk2C[i].y = sp00[0].y;
            proj->qUnk2C[i].x = sp00[0].x;
            proj->qUnk2C[i].y += ((sp00[1].y - sp00[0].y) >> shift) * (proj->unkC[i] >> 6);
            proj->qUnk2C[i].x += ((sp00[1].x - sp00[0].x) >> shift) * (proj->unkC[i] >> 6);
            r0 = 3;
#ifndef NON_MATCHING
            asm("" ::"r"(r0));
#endif
            r1 = r0 << 8;
            r0 = proj->unkC[i];
            r0 += r1;
            proj->unkC[i] = r0;
        }
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        if (proj->unk2[i] != 0) {
            sp00[0].x = 0;
            sp00[0].y = 0;
            sp00[1].x = (SIN_24_8((gUnknown_080D20B0[i] & 0xFF) * 4) << 3) + (SIN_24_8((gUnknown_080D20B0[i] & 0xFF) * 4) << 2);
            sp00[1].y = (COS_24_8((gUnknown_080D20B0[i] & 0xFF) * 4) << 3) + (COS_24_8((gUnknown_080D20B0[i] & 0xFF) * 4) << 2);

            if ((i == 0) || (i == 1)) {
                sp00[1].x += 0x200;
            }

            // TODO: Is this a copy-paste bug?
            //       My gut feeling says this should be 2 and 3...
            if ((i == 0) || (i == 3)) {
                sp00[1].y += 0x200;
            }

            proj->qUnk3C[i].y = sp00[0].y;
            proj->qUnk3C[i].x = sp00[0].x;
            proj->qUnk3C[i].y += ((sp00[1].y - sp00[0].y) >> shift) * (proj->unk14[i] >> 6);
            proj->qUnk3C[i].x += ((sp00[1].x - sp00[0].x) >> shift) * (proj->unk14[i] >> 6);
            r0 = 3;
#ifndef NON_MATCHING
            asm("" ::"r"(r0));
#endif
            r1 = r0 << 8;
            r0 = proj->unk14[i];
            r0 += r1;
            proj->unk14[i] = r0;
        }
    }

    return FALSE;
}
END_NONMATCH

bool32 sub_80620EC(HariisenProj *proj)
{
    u8 i;
    u8 total;
    s16 screenX, screenY;

    total = 0;
    for (i = 0; i < HSEN_COUNT_A; i++) {
        screenX = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
        screenX += I(proj->qUnk2C[i].x);
        screenY = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
        screenY += I(proj->qUnk2C[i].y);

        if ((ABS(proj->qUnk2C[i].y) >= Q(200)) || (screenX < 0 || screenX > DISPLAY_WIDTH) || (screenY < 0 || screenY > DISPLAY_HEIGHT)
            || (proj->unk0[i] == 0)) {
            proj->unk0[i] = 0;
            total += 1;
        }
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        screenX = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
        screenX += I(proj->qUnk3C[i].x);
        screenY = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
        screenY += I(proj->qUnk3C[i].y);

        if (((ABS(proj->qUnk3C[i].y) >= Q(140)) && (ABS(proj->qUnk3C[i].x) >= Q(140)))
            || ((screenX < 0 || screenX > DISPLAY_WIDTH) || (screenY < 0 || screenY > DISPLAY_HEIGHT) || (proj->unk2[i] == 0))) {
            proj->unk2[i] = 0;
            total += 1;
        }
    }

    if (total == 6) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_8062250(HariisenProj *proj)
{
    Player *p;
    Sprite2 *s;
    s32 worldX;
    s32 worldY;
    u8 var_sl;
    u8 var_r1;
    u8 i, pid;

    p = NULL;
    for (var_sl = 0; var_sl < 6; var_sl++) {
        if (var_sl < HSEN_COUNT_A) {
            s = &proj->s;
            worldX = I(proj->qUnk2C[var_sl].x) + I(proj->qPos.x);
            worldY = I(proj->qUnk2C[var_sl].y) + I(proj->qPos.y);
            var_r1 = proj->unk0[var_sl];
        } else {
            s = &proj->s2;
            worldX = I(proj->qUnk3C[var_sl - HSEN_COUNT_A].x) + I(proj->qPos.x);
            worldY = I(proj->qUnk3C[var_sl - HSEN_COUNT_A].y) + I(proj->qPos.y);
            var_r1 = proj->unk2[var_sl - HSEN_COUNT_A];
        }

        worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
        worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

        if (var_r1 != 0) {
            for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
                p = GET_SP_PLAYER_V0(pid);
                if (!sub_802C080(p) && sub_8020700((Sprite *)s, worldX, worldY, 1, p, 0)) {
                    if (p->framesInvincible == 0) {
                        sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
                    }

                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

AnimCmdResult sub_8062374(HariisenProj *proj)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;
    u8 i;

    acmdRes = ACMD_RESULT__RUNNING;
    for (i = 0; i < HSEN_COUNT_A; i++) {
        if (proj->unk0[i] != 0) {
            s = &proj->s;
            s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
            s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
            s->x += I(proj->qUnk2C[i].x);
            s->y += I(proj->qUnk2C[i].y);
            if (i != 0) {
                SPRITE_FLAG_CLEAR(s, Y_FLIP);
                s->y += 2;
            } else {
                SPRITE_FLAG_SET(s, Y_FLIP);
                s->y -= 2;
            }
            acmdRes = UpdateSpriteAnimation((Sprite *)s);
            DisplaySprite((Sprite *)s);
        }
    }

    for (i = 0; i < HSEN_COUNT_B; i++) {
        if (proj->unk2[i] != 0) {
            s = &proj->s2;

            if (i == 0) {
                SPRITE_FLAG_SET(s, X_FLIP);
                SPRITE_FLAG_SET(s, Y_FLIP);
            } else if (i == 1) {
                SPRITE_FLAG_SET(s, X_FLIP);
                SPRITE_FLAG_CLEAR(s, Y_FLIP);
            } else if (i == 2) {
                SPRITE_FLAG_CLEAR(s, Y_FLIP);
                SPRITE_FLAG_CLEAR(s, X_FLIP);
            } else if (i == 3) {
                SPRITE_FLAG_SET(s, Y_FLIP);
                SPRITE_FLAG_CLEAR(s, X_FLIP);
            }

            s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
            s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;
            s->x += I(proj->qUnk3C[i].x);
            s->y += I(proj->qUnk3C[i].y);
            acmdRes = UpdateSpriteAnimation((Sprite *)s);
            DisplaySprite((Sprite *)s);
        }
    }

    return acmdRes;
}

void Task_80624E4(void)
{
    Hariisen *enemy = TASK_DATA(gCurTask);
    Sprite2 *s;

    if (sub_806253C(enemy) == ACMD_RESULT__ENDED) {
        s = &enemy->s;
        s->anim = gUnknown_080D2044[0].anim;
        s->variant = gUnknown_080D2044[0].variant;
        gCurTask->main = sub_80616A0;
        return;
    }

    if (sub_8062580(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    }
}

AnimCmdResult sub_806253C(Hariisen *enemy)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;

    s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
    return acmdRes;
}

bool32 sub_8062580(Hariisen *enemy)
{
    Sprite *s;
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_80625BC(enemy, &unk);
    unk.spr = (Sprite *)&enemy->s;
    unk.posX = enemy->qUnk1C.x;
    unk.posY = enemy->qUnk1C.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.meX = enemy->meX;

    return sub_805C280(&unk);
}

bool32 sub_80625BC(Hariisen *enemy, EnemyUnknownStruc0 *arg1)
{
    arg1->me = NULL;
    arg1->meX = 0;
    arg1->unk4 = 0;
    arg1->spr = (Sprite *)&enemy->s;
    arg1->posX = enemy->qPos.x;
    arg1->posY = enemy->qPos.y;
    arg1->regionX = enemy->region[0];
    arg1->regionY = enemy->region[1];
    return sub_805C63C(arg1);
}

void TaskDestructor_Hariisen(struct Task *t)
{
    Hariisen *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void Task_HariisenProjInit(void)
{
    HariisenProj *enemy = TASK_DATA(gCurTask);

    sub_8061F50(enemy);
    sub_8062374(enemy);
    sub_8062250(enemy);

    if (sub_80620EC(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_HariisenProj(struct Task *t)
{
    HariisenProj *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}
