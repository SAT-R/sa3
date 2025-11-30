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
                gCurTask->main = sub_80624E4;
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
