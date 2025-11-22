#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

#define NUM_SPRITES         3
#define NUM_SEGMENT_SPRITES 4

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ u16 unk8[5]; // TODO: check size, 4 or 5?
    /* 0x12 */ u16 region[2];
    /* 0x18 */ s32 qLeft;
    /* 0x1C */ s32 qRight;
    /* 0x20 */ Vec2_32 qUnk20[NUM_SEGMENT_SPRITES];
    /* 0x40 */ Vec2_32 qUnk40;
    /* 0x48 */ Vec2_32 qPos;
    /* 0x50 */ Sprite2 s[NUM_SPRITES];
} GuruGuru; /* size: 0xE0 */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x04 */ u16 region[2];
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ Hitbox reserved;
} GuruGuruProjectile; /* size: 0x48 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

void Task_GuruGuru(void);
void sub_8060654(void);
void sub_80606CC(GuruGuru *enemy);
AnimCmdResult sub_8060704(GuruGuru *enemy);
bool32 sub_8060774(GuruGuru *enemy);
void sub_8060384(GuruGuru *enemy);
void sub_80604F0(GuruGuruProjectile *proj);
void sub_8065544(GuruGuru *enemy, Vec2_32 *param1, u8 param2);
bool32 sub_8065634(GuruGuru *enemy, Sprite2 *arg1, Vec2_32 *arg2, EnemyUnknownStruc0 *arg3);
s32 sub_80656B0(GuruGuru *enemy);
s32 sub_8065884(GuruGuru *enemy, Sprite2 *s, Vec2_32 *param2);
static bool32 CheckPlayerCollision(GuruGuru *enemy);
static void UpdateProjectilePos(GuruGuruProjectile *proj);
static AnimCmdResult DisplayProjectile(GuruGuruProjectile *proj);
void Task_80608CC(void);
bool32 sub_8060940(GuruGuruProjectile *proj);
void TaskDestructor_GuruGuru(struct Task *t);
void CreateGuruGuruProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, u8 param4);
void Task_GuruGuruProjectileInit(void);
void TaskDestructor_GuruGuruProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D2004[4]; // GuruGuru
extern const TileInfo2 gUnknown_080D2014[4]; // proj
extern const u8 gUnknown_080D1FF8[12];
extern const TileInfo2 gUnknown_080D2180[6];

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void sub_80651D0(GuruGuru *enemy, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s32 qX, qY;
    u16 value;
    u8 i;

    enemy->me = me;
    enemy->meX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk40.x = qX;
    enemy->qUnk40.y = qY;

    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    if ((me->d.uData[4] & 0x10) >> 4) {
        enemy->unk6 = 1;
    } else {
        enemy->unk6 = 0;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(enemy->qUnk20); i++) {
        enemy->qUnk20[i].x = enemy->qUnk40.x;
        enemy->qUnk20[i].y = enemy->qUnk40.y;
        enemy->unk8[i] = 0;
    }

    CpuFill16(0, &enemy->s[0].hitboxes[1].b, sizeof(enemy->s[0].hitboxes[1].b));
    CpuFill16(0, &enemy->s[1].hitboxes[1].b, sizeof(enemy->s[1].hitboxes[1].b));
    CpuFill16(0, &enemy->s[2].hitboxes[1].b, sizeof(enemy->s[2].hitboxes[1].b));
    CpuFill16(0, &enemy->s[0].hitboxes[0].b, sizeof(enemy->s[0].hitboxes[0].b));
    CpuFill16(0, &enemy->s[1].hitboxes[0].b, sizeof(enemy->s[1].hitboxes[0].b));
    CpuFill16(0, &enemy->s[2].hitboxes[0].b, sizeof(enemy->s[2].hitboxes[0].b));
}

void sub_8065300(GuruGuru *enemy)
{
    Sprite2 *s;
    u8 *vram;

    vram = VramMalloc(0x16U);
    s = &enemy->s[NUM_SPRITES - 1];
    s->tiles = vram;
    vram += (gUnknown_080D2180[NUM_SPRITES - 1].numTiles << 5);
    s->anim = gUnknown_080D2180[NUM_SPRITES - 1].anim;
    s->variant = gUnknown_080D2180[NUM_SPRITES - 1].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    if (enemy->unk6 != 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        s->frameFlags |= 0x1000;
    }
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s[0];
    s->tiles = vram;
    vram += (gUnknown_080D2180[0].numTiles << 5);
    s->anim = gUnknown_080D2180[0].anim;
    s->variant = gUnknown_080D2180[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    if (enemy->unk6 != 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        s->frameFlags |= 0x1000;
    }
    UpdateSpriteAnimation((Sprite *)s);

    s = &enemy->s[1];
    s->tiles = vram;
    s->anim = gUnknown_080D2180[1].anim;
    s->variant = gUnknown_080D2180[1].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    if (enemy->unk6 != 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        s->frameFlags |= 0x1000;
    }
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_GuruguruInit()
{
    Vec2_32 *temp_r1;
    u32 var_r4_2;
    u8 var_r4;

    GuruGuru *enemy = TASK_DATA(gCurTask);

    sub_80656B0(enemy);
    if (((u32)(u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        sub_8065544(enemy, &enemy->qPos, 0U);
    }

    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        temp_r1 = &enemy->qUnk20[var_r4];
        sub_8065544(enemy, temp_r1, var_r4 + 1);
    }

    if (sub_8065884(enemy, enemy->s, &enemy->qUnk40) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        s8 *meX;
        if (var_r4 != 0) {
            if (var_r4 < 2) {
                sub_8065884(enemy, &enemy->s[2], &enemy->qUnk20[var_r4]);
            } else {
                sub_8065884(enemy, &enemy->s[1], &enemy->qUnk20[var_r4]);
            }
        }

        // TODO: Macro?
        meX = &enemy->me->x;
        *meX = MAP_ENTITY_STATE_INITIALIZED;
    }
}

void sub_8065544(GuruGuru *enemy, Vec2_32 *param1, u8 param2)
{
    s16 var_r5;

    if (enemy->direction < 0) {
        var_r5 = 3;
    } else {
        var_r5 = -3;
    }

    if (param2 == 0) {
        enemy->unk8[0] = enemy->unk8[0] + (var_r5 * 64);
    } else if (param2 == 1) {
        enemy->unk8[1] = enemy->unk8[0] - (var_r5 * 512);
    } else if (param2 > 2) {
        if (param2 == 3) {
            s32 shift6 = (var_r5 << 6);
            s32 shift9 = (var_r5 << 9);
            enemy->unk8[3] = (enemy->unk8[2] - shift9 - shift6);
        } else {
            enemy->unk8[param2] = enemy->unk8[param2 - 1] - ((var_r5 << 0x10) >> 7);
        }
    } else {
        enemy->unk8[param2] = enemy->unk8[param2 - 1] - ((var_r5 << 0x10) >> 7);
    }
    if (enemy->direction < 0) {
        if (enemy->unk8[param2] > 0xFF00U) {
            enemy->unk8[param2] = 0;
        }
    } else {
        if (enemy->unk8[param2] > 0xFF00U) {
            enemy->unk8[param2] = 0xFF00;
        }
    }
    param1->x = enemy->qUnk40.x + ((SIN(((enemy->unk8[param2] >> 0x8) % 256u) * 4) >> 0x6) << 5);
    param1->y = enemy->qUnk40.y + ((SIN(((enemy->unk8[param2] >> 0x7) % 256u) * 4) >> 0x6) * 0x10);
}

bool32 sub_8065634(GuruGuru *enemy, Sprite2 *arg1, Vec2_32 *arg2, EnemyUnknownStruc0 *arg3)
{
    arg3->me = NULL;
    arg3->meX = 0;
    arg3->unk4 = 0;
    arg3->spr = (Sprite *)arg1;

    if (arg1 == &enemy->s[0]) {
        arg3->posX = Q(enemy->s[0].x + gCamera.x);
        arg3->posY = Q(enemy->s[0].y + gCamera.y);
        arg3->regionX = 0;
        arg3->regionY = 0;
    } else {
        arg3->spr->hitboxes[1].b.left = -6;
        arg3->spr->hitboxes[1].b.top = -6;
        arg3->spr->hitboxes[1].b.right = +6;
        arg3->spr->hitboxes[1].b.bottom = +6;
        arg3->posX = arg2->x;
        arg3->posY = arg2->y;
        arg3->regionX = enemy->region[0];
        arg3->regionY = enemy->region[1];
    }

    return sub_805C63C(arg3);
}

s32 sub_80656B0(GuruGuru *enemy)
{
    Sprite2 *var_r3;
    u32 var_r0;
    u32 var_r0_2;
    u8 var_r5;
    u16 v;

    var_r3 = enemy->s;
    var_r3->x = ((enemy->qPos.x >> 8) + (enemy->region[0] << 8)) - gCamera.x;
    var_r3->y = ((enemy->qPos.y >> 8) + (enemy->region[1] << 8)) - gCamera.y;
    if ((u16)(enemy->unk8[0] - Q(64)) > Q(132)) {
        if (enemy->direction >= 0) {
            var_r3->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        } else {
            var_r3->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        }
    } else if (enemy->direction < 0) {
        var_r3->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
    } else {
        var_r3->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    if (enemy->unk6 != 0) {
        var_r3->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
    }
    DisplaySprite((Sprite *)var_r3);

    for (var_r5 = 0; var_r5 < 4; var_r5++) {
        var_r3 = &enemy->s[1];
        if (var_r5 < 2) {
            var_r3 = &enemy->s[2];
        }
        var_r3->x = TO_WORLD_POS_RAW(I(enemy->qUnk20[var_r5].x), enemy->region[0]) - gCamera.x;
        var_r3->y = TO_WORLD_POS_RAW(I(enemy->qUnk20[var_r5].y), enemy->region[1]) - gCamera.y;

        if ((u16)(enemy->unk8[var_r5] - Q(64)) > Q(132)) {
            if (enemy->direction >= 0) {
                var_r3->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
            } else {
                var_r3->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
            }
        } else if (enemy->direction < 0) {
            var_r3->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        } else {
            var_r3->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        }

        if (enemy->unk6 != 0) {
            var_r3->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        }
        DisplaySprite((Sprite *)var_r3);
    }

    return 1;
}

void CreateEntity_GuruGuru(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    GuruGuru *enemy;

    enemy = TASK_DATA(TaskCreate(Task_GuruguruInit, sizeof(GuruGuru), 0x2100U, 0U, TaskDestructor_GuruGuru));
    sub_80651D0(enemy, me, regionX, regionY, id);
    sub_8065300(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

s32 sub_8065884(GuruGuru *enemy, Sprite2 *s, Vec2_32 *param2)
{
    EnemyUnknownStruc0 strc0;
    strc0.unk4 = sub_8065634(enemy, s, param2, &strc0);
    strc0.spr = (Sprite *)s;
    strc0.posX = param2->x;
    strc0.posY = param2->y;
    strc0.regionX = enemy->region[0];
    strc0.regionY = enemy->region[1];
    strc0.me = enemy->me;
    strc0.meX = enemy->meX;
    return sub_805C280(&strc0);
}

void TaskDestructor_GuruGuru(Task *t)
{
    GuruGuru *enemy = TASK_DATA(t);
    VramFree(enemy->s[NUM_SPRITES - 1].tiles);
}
