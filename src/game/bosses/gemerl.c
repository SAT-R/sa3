#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa3/bosses/gemerl_states.h"
#include "game/stage.h"

void sub_80678C0(Sprite *s0, Sprite *s1, Sprite *s2);
void sub_8068860(void);
void Gemerl_SwitchState(Gemerl *gemerl, s32 state);
void sub_8068828(Task *t);

// if gStageData.gameMode is Single Player TimeAttack,
// then set gPseudoRandom = (gStageData.zone * 1001)
extern void SetFixedRandomIfTimeAttackMode(void); 

// Called on init of Gmerl (in Boss 1 and Extra Boss)
// struct Task CreateGemerl(u8 *param0, s32 worldX, s32 worldY);
Task *CreateGemerl(u8 *param0, s32 worldX, s32 worldY)
{
    Task *t;
    Sprite *s;
    Sprite *spr78;
    Sprite *sprA0;
    Sprite *sprC8;
    Player *p;
    SpriteTransform *tf;
    s32 var_r0;
    s32 initialState;
    u8 *var_r1;
    u8 var_r4;
    Gemerl *gemerl;

    t = TaskCreate(sub_8068860, sizeof(Gemerl), 0x2100U, 0U, sub_8068828);
    gStageData.taskGemerl = t;
    gemerl = TASK_DATA(t);
    s = (Sprite *)&gemerl->spr3C;
    spr78 = &gemerl->spr78;
    sprA0 = &gemerl->sprA0;
    tf = &gemerl->tf6C;

    s->x = worldX;
    if ((gStageData.zone == 7) || ((gStageData.zone == ZONE_1 && gStageData.act == ACT_BOSS))) {
        s->y = gCamera.minY;
    } else {
        s->y = worldY - 116;
    }
    gemerl->vram4 = VramMalloc(120);
    gemerl->unk18 = 0;
    gemerl->qSomeX = Q(s->x);
    gemerl->qSomeY = Q(s->y);
    gemerl->unk14 = 0xFC00;
    gemerl->unk16 = 0;
    gemerl->unk21 = 0;
    gemerl->unk22 = 0;

    if (gStageData.difficulty == 0) {
        gemerl->unk20 = 4;
    } else {
        gemerl->unk20 = 2;
    }

    gemerl->inputArg0 = param0;

    for (var_r4 = 0; var_r4 < 10; var_r4++) {
        gemerl->unk24[var_r4] = 0;
    }

    gemerl->zone = gStageData.zone;
    gemerl->unk2E = 0;
    gemerl->unk2F = 0;
    gemerl->unk30 = 2;
    gemerl->unk31 = 0;
    gemerl->unk32 = 0;
    gemerl->unk33 = 1;
    tf->rotation = 0;
    tf->x = 0;
    tf->y = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    sub_80678C0(s, spr78, sprA0);

    switch (gemerl->zone) {
        case ZONE_4:
            initialState = 12;
            break;
        case ZONE_6:
            initialState = 14;
            break;
        case 7:
            initialState = 14;
            gStageData.act = 3;
            break;
        default:
        case ZONE_1:
        case ZONE_2:
        case ZONE_3:
        case ZONE_5:
        case ZONE_7:
            initialState = 10;
            break;
    }

    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        p = &gPlayers[var_r4];
        p->framesInvincible = 0;
        p->unk13C &= 0xBF;
        p->framesInvulnerable = 0;
        p->timerSpeedup = 0;
    }

    Gemerl_SwitchState(gemerl, initialState);
    SetFixedRandomIfTimeAttackMode();

    s = &gemerl->sprC8;
    s->tiles = gemerl->vram4 + 4 * TILE_SIZE_4BPP;
    s->anim = 0x4F9;
    s->variant = 1;
    s->oamFlags = 0x280;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    s->x = 0;
    s->y = 0;
    UpdateSpriteAnimation(s);

    return t;
}
