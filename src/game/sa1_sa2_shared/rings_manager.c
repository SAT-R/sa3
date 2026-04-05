#include "global.h"
#include "core.h"
#include "malloc_ewram.h"
#include "rect.h"
#include "trig.h"
#include "sprite.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"
#include "game/sa1_sa2_shared/rings_manager.h"
#include "constants/animations.h"
#include "constants/move_states.h"

void TaskDestructor_RingsMgr(Task *);
void Task_RingsMgrExtraZone();
void Task_RingsMgrStage();
void sub_802AB10(s16 arg0, s16 arg1, Player *p);
void Task_802AB8C();
void Task_802ACF0();
extern u32 *gUnknown_080CEF58[];
extern struct MP2KSongHeader song117;

typedef struct RingsManager {
    /* 0x00 */ Sprite s;
    /* 0x28 */ void *ringPositions;
} RingsManager;

typedef struct RingsMgrUnk2C {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29;
} RingsMgrUnk2C;

typedef struct RingsMgrUnk30 {
    /* 0x00 */ Sprite s;
    /* 0x28 */ Player *p;
    /* 0x2C */ s16 magnitude;
} RingsMgrUnk30;

#define READ_START_INDEX(p, hrc, rx, ry) (*((u32 *)((((u8 *)(p)) + (((hrc) * (ry)) * (sizeof(u32)))) + ((rx) * (sizeof(u32))))))
#define DATA_START(data)                 (void *)((u8 *)(data) - (sizeof(u32) * 2))

#define TO_REGION(pos) ((pos) >> 8)

#define REGION_LOWER(posX, bound, offset)                                                                                                  \
    ({                                                                                                                                     \
        s32 a = (posX);                                                                                                                    \
        s32 b = (bound);                                                                                                                   \
        TO_REGION(a + b + offset);                                                                                                         \
    })

// Swapped for the region upper calc??
#define REGION_UPPER(posX, bound, offset)                                                                                                  \
    ({                                                                                                                                     \
        s32 a = (posX);                                                                                                                    \
        s32 b = (bound);                                                                                                                   \
        TO_REGION(b + a + offset);                                                                                                         \
    })

#if 0
void CreateStageRingsManager(void)
{
    Task *t;
    s32 temp_r4;
    s32 var_r0_2;
    u16 temp_r0;
    u32 **temp_r4_2;
    u32 **ringsArray;
    u32 **ringsCompressed;
    void (*var_r0)();
    RingsManager *temp_r0_2;
    s16 mapIndex = gStageData.currMapIndex;
    void *var_r5;
    Sprite *s;

    if (gStageData.gameMode != 7) {
        if (mapIndex != 72) {
            t = TaskCreate(Task_RingsMgrStage, sizeof(RingsManager), 0x2800U, 0U, TaskDestructor_RingsMgr);
        } else {
            t = TaskCreate(Task_RingsMgrExtraZone, sizeof(RingsManager), 0x2800U, 0U, TaskDestructor_RingsMgr);
        }

        // NOTE: First 4 byte of RL-compressed data contains uncompressed size.
        ringsArray = gUnknown_080CEF58;
        ringsCompressed = &ringsArray[mapIndex];
        var_r5 = EwramMalloc(**ringsCompressed >> 8);
        RLUnCompWram(*ringsCompressed, var_r5);
    }
    temp_r0_2 = TASK_DATA(t);
    temp_r0_2->ringPositions = var_r5;
    s = &temp_r0_2->s;
    if (gStageData.gameMode < 6) {
        s->tiles = OBJ_VRAM0 + 0x4180;
    } else if (gStageData.gameMode == 6) {
        s->tiles = OBJ_VRAM0 + 0x41A0;
    }

    s->frameFlags = 0x41200;
    s->anim = ANIM_RING;
    s->x = DISPLAY_CENTER_X;
    s->y = DISPLAY_CENTER_Y;
    s->oamFlags = 0x280;
    s->qAnimDelay = 0;
    s->prevAnim = 0xFFFF;
    s->variant = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
}

void PlayRingCollectSE(void)
{
    if ((gStageData.gameMode != 2)
        && (((gStageData.unk4 != 9) && (gStageData.unk4 != 4) && (gStageData.unk4 != 5) && (gStageData.unk4 != 6))
            || (gStageData.zone != 7))) {
        if (gStageData.rings & 1) {
            MPlayStart(&gMPlayInfo_SE2, &song117);
            m4aMPlayImmInit(&gMPlayInfo_SE2);
            m4aMPlayVolumeControl(&gMPlayInfo_SE2, 0xFFFFU, 128);
            m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFFU, -64);
        } else {
            MPlayStart(&gMPlayInfo_SE1, &song117);
            m4aMPlayImmInit(&gMPlayInfo_SE1);
            m4aMPlayVolumeControl(&gMPlayInfo_SE1, 0xFFFFU, 128);
            m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFFU, +64);
        }
    }
}

void CreateCollectRingEffect(s32 inWorldX, s32 inWorldY)
{
    // NOTE: Needs to be like this for matching, because:
    //       In enemy/bu_bu.c, CreateCollectRingEffect() gets called,
    //       without casting down to s16 on the call-site.
    // 
    //       But EVERYTHING points at CreateCollectRingEffect taking two s16 values,
    //       so something must have gone wrong at the linking stage originally.
    //       To remedy this, we cast input values of CreateCollectRingEffect() down everywhere in this module.
    // TODO: ^^^ Find a better solution for this, if possible! ^^^
    s16 worldX = inWorldX;
    s16 worldY = inWorldY;
    
    RingsMgrUnk2C *strc;
    Sprite *s;
    s32 var_r0;
    u16 temp_r2;

    if (gStageData.unkB5 < 8) {
        strc = TASK_DATA(TaskCreate(Task_802ACF0, sizeof(RingsMgrUnk2C), 0x2810U, 0U, NULL));
        strc->unk29 = 0;
        strc->unk28 = (s8)(1 & gStageData.rings);
        s = &strc->s;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4380;
        } else if (gStageData.gameMode == 6) {
            s->tiles = OBJ_VRAM0 + 0x43A0;
        }
        s->frameFlags = 0x41200;
        s->anim = ANIM_RING_COLLECT_EFFECT;
        // NOTE: Initializing sprite pos to world pos
        s->x = worldX;
        s->y = worldY;
        s->oamFlags = 0x280;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        gStageData.unkB5++;
        PlayRingCollectSE();
    }
}

// Like CreateCollectRingEffect(), just no sound effect.
void CreateCollectRingEffectNoSfx(s16 worldX, s16 worldY)
{
    RingsMgrUnk2C *strc;
    Sprite *s;
    s32 var_r0;
    u16 temp_r2;

    if (gStageData.unkB5 < 8) {
        strc = TASK_DATA(TaskCreate(Task_802ACF0, sizeof(RingsMgrUnk2C), 0x2810U, 0U, NULL));
        strc->unk29 = 0;
        strc->unk28 = (s8)(1 & gStageData.rings);
        s = &strc->s;
        if (gStageData.gameMode < 6) {
            s->tiles = OBJ_VRAM0 + 0x4380;
        } else if (gStageData.gameMode == 6) {
            s->tiles = OBJ_VRAM0 + 0x43A0;
        }
        s->frameFlags = 0x41200;
        s->anim = ANIM_RING_COLLECT_EFFECT;
        // NOTE: Initializing sprite pos to world pos
        s->x = worldX;
        s->y = worldY;
        s->oamFlags = 0x280;
        s->qAnimDelay = 0;
        s->prevAnim = 0xFFFF;
        s->variant = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        gStageData.unkB5++;
    }
}

// (99.24%) https://decomp.me/scratch/CaEBA
NONMATCH("asm/non_matching/game/shared/rm__Task_RingsMgrStage.inc", void Task_RingsMgrStage(void))
{
    s8 rect[4];
    Sprite *s;
    u32 *rings;
    const SpriteOffset *dimensions;
    s32 rx, ry;
    RingsManager *mgr;
    u16 h_regionCount, v_regionCount;
    u8 drawCount; // sp18
    Player *p;
    MapEntity_Ring *meRing;
    u8 i;
    u16 regionX, regionY;

    mgr = TASK_DATA(gCurTask);
    s = &mgr->s;
    rings = mgr->ringPositions;
    drawCount = 0;
    UpdateSpriteAnimation(s);
    if ((s->frameNum >> 28) == 0) {
        // Default behavior from SA1 / SA2
        dimensions = &gRefSpriteTables->dimensions[s->anim][s->frameNum];
    } else {
        // TODO: WTF!?!?
        dimensions = (const SpriteOffset *)&((const SpriteOffset2 *)gRefSpriteTables->dimensions[s->anim])[s->frameNum];
    }
    rings++;

    h_regionCount = (u16)*rings++;
    v_regionCount = (u16)*rings++;

    if ((GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode) || (gStageData.gameMode == GAME_MODE_5))) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);
        
            if (!(p->moveState & MOVESTATE_100) && (p->charFlags.anim0 != 0x66) && (p->unk48 == 0)) {
                if ((p->charFlags.someIndex != 2) || !(gPlayers[p->charFlags.partnerIndex].moveState & MOVESTATE_100)) {
                    rect[0] = -p->spriteOffsetX;
                    rect[1] = -p->spriteOffsetY;
                    rect[2] = +p->spriteOffsetX;
                    rect[3] = +p->spriteOffsetY;
                    // Handle collisions
                    for (regionY = REGION_LOWER(I(p->qWorldY), rect[1], 0);
                         // TODO: Check, why both uses of REGION_UPPER() only match like this in SA3!
                         //       (Should in theory be roughly in-line with SA1/SA2...)
                         regionY <= REGION_UPPER(I(p->qWorldY), rect[3], +(1 * TILE_WIDTH)) && regionY < v_regionCount; regionY++) {

                        for (regionX = REGION_LOWER(I(p->qWorldX), rect[0], -TILE_WIDTH);
                             regionX <= REGION_UPPER(I(p->qWorldX), rect[2], (2 * TILE_WIDTH)) && regionX < h_regionCount; regionX++) {

                            u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);
                            if (offset) {
                                meRing = DATA_START(rings) + offset;

                                while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                                    if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                        meRing++;
                                        continue;
                                    }

                                    rx = TO_WORLD_POS(meRing->x, regionX);
                                    ry = TO_WORLD_POS(meRing->y, regionY);

                                    if (RECT_TOUCHING_RING(I(p->qWorldX), I(p->qWorldY), rx, ry, (Rect8 *)rect)) {
                                        if ((i == 0) || (p->charFlags.someIndex == 2)) {
                                            AddRings(1);
                                        }
                                        CreateCollectRingEffect(rx, ry);

                                        meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                    }

                                    meRing++;
                                }
                            }
                        }
                    }

                    // if(p->unk13C & 0x20)
                    regionY = TO_REGION(gCamera.y);
                    if (p->unk13C & 0x20) {
                        for (; TO_WORLD_POS(0, regionY) < gCamera.y + DISPLAY_HEIGHT && regionY < v_regionCount; regionY++) {
#if (!defined(NON_MATCHING) && (GAME <= GAME_SA2))
                            while (0)
                                ;
#endif
                            for (regionX = TO_REGION(gCamera.x); TO_WORLD_POS(0, regionX) < gCamera.x + DISPLAY_WIDTH; regionX++) {
                                u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);

                                if(regionX >= h_regionCount) 
                                {
                                    break;
                                }
                                
                                if (offset != 0) {
                                    meRing = DATA_START(rings) + offset;
                                    while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                                        if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                            meRing++;
                                            continue;
                                        }

                                        rx = TO_WORLD_POS(meRing->x, regionX);
                                        ry = TO_WORLD_POS(meRing->y, regionY);

                                        if (rx - gCamera.x < -TILE_WIDTH
                                            || (rx - gCamera.x) + TILE_WIDTH > DISPLAY_WIDTH + 2 * TILE_WIDTH || ry - gCamera.y < 0
                                            || (ry - gCamera.y) - 2 * TILE_WIDTH > DISPLAY_HEIGHT) {
                                            meRing++;
                                        } else if ((((rx - 64) <= I(p->qWorldX)) && (rx + 64) >= I(p->qWorldX))
                                                   && (((ry - 72) <= I(p->qWorldY)) && ((ry + 56) >= I(p->qWorldY)))) {
                                            sub_802AB10(rx, ry, p);
                                            meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                            meRing++;
                                        } else {
                                            meRing++;

                                            if ((drawCount == 0) || s->oamBaseIndex == 0xFF) {
                                                s->oamBaseIndex = 0xFF;
                                                s->x = rx - gCamera.x;
                                                s->y = ry - gCamera.y;
                                                DisplaySprite(s);
                                            } else {
                                                OamData *oamDat = &gOamMallocBuffer[s->oamBaseIndex];
                                                OamData *oamAllocated = OamMalloc(GET_SPRITE_OAM_ORDER(s));

                                                if (iwram_end == oamAllocated)
                                                    return;

                                                DmaCopy16(3, oamDat, oamAllocated, sizeof(OamDataShort));

#if !EXTENDED_OAM
                                                // TODO: Can these be done more explicitly?
                                                oamAllocated->all.attr1 &= 0xFE00;
                                                oamAllocated->all.attr0 &= 0xFF00;
                                                oamAllocated->all.attr0 += ((ry - gCamera.y) - dimensions->offsetY) & 0xFF;
                                                oamAllocated->all.attr1 += ((rx - gCamera.x) - dimensions->offsetX) & 0x1FF;
#else
                                                oamAllocated->split.x = ((rx - gCamera.x) - dimensions->offsetX);
                                                oamAllocated->split.y = ((ry - gCamera.y) - dimensions->offsetY);
#endif
                                            }

                                            drawCount++;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        
        }
    } else {
        for (i = 0; i < 4; i++) {
            u8 sp28 = 0;
            p = &gPlayers[i];
            if (p->charFlags.someIndex != 5 && p->charFlags.someIndex != 2) {
                if (p == GET_SP_PLAYER_V0(PLAYER_1) || p == GET_SP_PLAYER_V0(PLAYER_2)) {
                    sp28 = 1;
                }
                if (!(p->moveState & 0x100) && (p->charFlags.anim0 != 0x66) && (p->unk48 == 0)) {
                    rect[0] = -p->spriteOffsetX;
                    rect[1] = -p->spriteOffsetY;
                    rect[2] = +p->spriteOffsetX;
                    rect[3] = +p->spriteOffsetY;

                    // Handle collisions
                    for (regionY = REGION_LOWER(I(p->qWorldY), rect[1], 0);
                         regionY <= REGION_UPPER(I(p->qWorldY), rect[3], +(1 * TILE_WIDTH)) && regionY < v_regionCount; regionY++) {
                        for (regionX = REGION_LOWER(I(p->qWorldX), rect[0], -TILE_WIDTH);
                             regionX <= REGION_UPPER(I(p->qWorldX), rect[2], (2 * TILE_WIDTH)) && regionX < h_regionCount; regionX++) {

                            u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);
                            if (offset) {
                                meRing = DATA_START(rings) + offset;

                                while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                                    if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                        meRing++;
                                        continue;
                                    }

                                    rx = TO_WORLD_POS(meRing->x, regionX);
                                    ry = TO_WORLD_POS(meRing->y, regionY);

                                    if (RECT_TOUCHING_RING(I(p->qWorldX), I(p->qWorldY), rx, ry, (Rect8 *)rect)) {
                                        if (sp28 != 0) {
                                            if (gStageData.playerIndex == i) {
                                                AddRings(1);
                                                CreateCollectRingEffect(rx, ry);
                                            } else {
                                                CreateCollectRingEffectNoSfx(rx, ry);
                                            }
                                        } else {
                                            CreateCollectRingEffectNoSfx(rx, ry);
                                        }
                                        meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                    }

                                    meRing++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    for (regionY = TO_REGION(gCamera.y); TO_WORLD_POS(0, regionY) < gCamera.y + DISPLAY_HEIGHT && regionY < v_regionCount; regionY++) {
#if (!defined(NON_MATCHING) && (GAME <= GAME_SA2))
        while (0)
            ;
#endif
        for (regionX = TO_REGION(gCamera.x); TO_WORLD_POS(0, regionX) < gCamera.x + DISPLAY_WIDTH && regionX < h_regionCount; regionX++) {
            u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);

            if (offset != 0) {
                meRing = DATA_START(rings) + offset;
                while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                    if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                        meRing++;
                        continue;
                    }

                    rx = TO_WORLD_POS(meRing->x, regionX);
                    ry = TO_WORLD_POS(meRing->y, regionY);

                    if (rx - gCamera.x < -TILE_WIDTH || (rx - gCamera.x) + TILE_WIDTH > DISPLAY_WIDTH + 2 * TILE_WIDTH || ry - gCamera.y < 0
                        || (ry - gCamera.y) - 2 * TILE_WIDTH > DISPLAY_HEIGHT) {
                        meRing++;
                    } else {
                        meRing++;

                        if ((drawCount == 0) || s->oamBaseIndex == 0xFF) {
                            s->oamBaseIndex = 0xFF;
                            s->x = rx - gCamera.x;
                            s->y = ry - gCamera.y;
                            DisplaySprite(s);
                        } else {
                            OamData *oamDat = &gOamMallocBuffer[s->oamBaseIndex];
                            OamData *oamAllocated = OamMalloc(GET_SPRITE_OAM_ORDER(s));

                            if (iwram_end == oamAllocated)
                                return;

                            DmaCopy16(3, oamDat, oamAllocated, sizeof(OamDataShort));

#if !EXTENDED_OAM
                            // TODO: Can these be done more explicitly?
                            oamAllocated->all.attr1 &= 0xFE00;
                            oamAllocated->all.attr0 &= 0xFF00;
                            oamAllocated->all.attr0 += ((ry - gCamera.y) - dimensions->offsetY) & 0xFF;
                            oamAllocated->all.attr1 += ((rx - gCamera.x) - dimensions->offsetX) & 0x1FF;
#else
                            oamAllocated->split.x = ((rx - gCamera.x) - dimensions->offsetX);
                            oamAllocated->split.y = ((ry - gCamera.y) - dimensions->offsetY);
#endif
                        }

                        drawCount++;
                    }
                }
            }
        }
    }
}
END_NONMATCH

void Task_RingsMgrExtraZone(void)
{
    s8 rect[4];
    Sprite *s;
    u16 regionX, regionY;
    bool32 sp08 = TRUE; // not sp+8 in SA3!
    u32 *rings;
    const SpriteOffset *dimensions;
    RingsManager *mgr;
    u32 h_regionCount, v_regionCount;
    OamData *oamAllocated;
    OamData *oamDat;
    Player *p;
    s32 rx, ry;
    struct Camera *cam;
    MapEntity_Ring *meRing;
    u8 pid;
    s16 mapIndex;
    u8 drawCount;
    s16 leftIndex;

    mgr = TASK_DATA(gCurTask);
    s = &mgr->s;

    rings = mgr->ringPositions;
    mapIndex = gStageData.currMapIndex;
    drawCount = 0;
    if (gCamera.unk6A != 0) {
        RLUnCompWram(gUnknown_080CEF58[mapIndex], rings);
    }
    if ((gStageData.zone == 8) && (gStageData.unk4 != 3)) {
        return;
    }
    rect[0] = -10;
    rect[1] = -10;
    rect[2] = +10;
    rect[3] = +10;
    UpdateSpriteAnimation(s);
    if ((s->frameNum >> 28) == 0) {
        // Default behavior from SA1 / SA2
        dimensions = &gRefSpriteTables->dimensions[s->anim][s->frameNum];
    } else {
        // TODO: WTF!?!?
        dimensions = (const SpriteOffset *)&((const SpriteOffset2 *)gRefSpriteTables->dimensions[s->anim])[s->frameNum];
    }

    rings++;

    h_regionCount = (u16)*rings++;
    v_regionCount = (u16)*rings++;

    for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
        p = GET_SP_PLAYER_V0(pid);

#if (GAME == GAME_SA3)
        if (p->moveState & MOVESTATE_100)
            continue;
#endif

#if (GAME == GAME_SA3)
        if ((p->charFlags.anim0 != 0x66) && (p->unk48 == 0))
#endif // (GAME == GAME_SA3)
        {
            // Handle collisions
            for (regionY = REGION_LOWER(I(p->qWorldY), rect[1], 0);
                 // TODO: Check, why both uses of REGION_UPPER() only match like this in SA3!
                 //       (Should in theory be roughly in-line with SA1/SA2...)
                 regionY <= REGION_UPPER(I(p->qWorldY), 0, rect[3] - (2 * TILE_WIDTH)) && regionY < v_regionCount; regionY++) {

                for (regionX = REGION_LOWER(I(p->qWorldX), rect[0], -TILE_WIDTH);
                     regionX <= REGION_UPPER(I(p->qWorldX), 0, rect[2] - TILE_WIDTH) && regionX < h_regionCount; regionX++) {

                    u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);
                    if (offset) {
                        meRing = DATA_START(rings) + offset;

                        while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                            if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                                meRing++;
                                continue;
                            }

                            rx = TO_WORLD_POS(meRing->x, regionX);
                            ry = TO_WORLD_POS(meRing->y, regionY);

                            if (sp08 != FALSE
#if (GAME == GAME_SA2)
                                || (gCurrentLevel != LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53) && !(p->moveState & MOVESTATE_2))
#endif
                            ) {
                                if (RECT_TOUCHING_RING(I(p->qWorldX), I(p->qWorldY), rx, ry, (Rect8 *)rect)) {
#if (GAME == GAME_SA3)
                                    AddRings(1);
#else
#ifndef COLLECT_RINGS_ROM
                                    INCREMENT_RINGS(1);
#else
                                    {
                                        s32 prevLives, newLives;
                                        s32 oldRings = gRingCount;
                                        gRingCount += 1;
                                        if (!(IS_EXTRA_STAGE(CURRENT_LEVEL(0)))) {
                                            newLives = Div(gRingCount, 100);
                                            prevLives = Div(oldRings, 100);
                                            if ((newLives != prevLives) && (gGameMode == GAME_MODE_SINGLE_PLAYER)) {
                                                if (gNumLives < 255) {
                                                    gNumLives++;
                                                };
                                            }
                                        }
                                    }
#endif // COLLECT_RINGS_ROM
                                    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS && gRingCount > 255) {
                                        gRingCount = 255;
                                    }
#endif // (GAME == GAME_SA3)

                                    CreateCollectRingEffect(rx, ry);
                                    meRing->x = (u8)MAP_ENTITY_STATE_INITIALIZED;
                                }
                            }

                            meRing++;
                        }
                    }
                }
            }
        }
    }

    for (regionY = TO_REGION(gCamera.y); TO_WORLD_POS(0, regionY) < gCamera.y + DISPLAY_HEIGHT && regionY < v_regionCount; regionY++) {
#if (!defined(NON_MATCHING) && (GAME <= GAME_SA2))
        while (0)
            ;
#endif
        for (regionX = TO_REGION(gCamera.x); TO_WORLD_POS(0, regionX) < gCamera.x + DISPLAY_WIDTH && regionX < h_regionCount; regionX++) {
            u32 offset = READ_START_INDEX(rings, h_regionCount, regionX, regionY);

            if (offset != 0) {
                meRing = DATA_START(rings) + offset;
                while (meRing->x != (u8)MAP_ENTITY_STATE_ARRAY_END) {
                    if (meRing->x == (u8)MAP_ENTITY_STATE_INITIALIZED) {
                        meRing++;
                        continue;
                    }

                    rx = TO_WORLD_POS(meRing->x, regionX);
                    ry = TO_WORLD_POS(meRing->y, regionY);

                    if (rx - gCamera.x < -TILE_WIDTH || (rx - gCamera.x) + TILE_WIDTH > DISPLAY_WIDTH + 2 * TILE_WIDTH || ry - gCamera.y < 0
                        || (ry - gCamera.y) - 2 * TILE_WIDTH > DISPLAY_HEIGHT) {
                        meRing++;
                    } else {
                        meRing++;

                        if ((drawCount == 0) || s->oamBaseIndex == 0xFF) {
                            s->oamBaseIndex = 0xFF;
                            s->x = rx - gCamera.x;
                            s->y = ry - gCamera.y;
                            DisplaySprite(s);
                        } else {
                            OamData *oamDat = &gOamMallocBuffer[s->oamBaseIndex];
                            OamData *oamAllocated = OamMalloc(GET_SPRITE_OAM_ORDER(s));

                            if (iwram_end == oamAllocated)
                                return;

                            DmaCopy16(3, oamDat, oamAllocated, sizeof(OamDataShort));

#if !EXTENDED_OAM
                            // TODO: Can these be done more explicitly?
                            oamAllocated->all.attr1 &= 0xFE00;
                            oamAllocated->all.attr0 &= 0xFF00;
                            oamAllocated->all.attr0 += ((ry - gCamera.y) - dimensions->offsetY) & 0xFF;
                            oamAllocated->all.attr1 += ((rx - gCamera.x) - dimensions->offsetX) & 0x1FF;
#else
                            oamAllocated->split.x = ((rx - gCamera.x) - dimensions->offsetX);
                            oamAllocated->split.y = ((ry - gCamera.y) - dimensions->offsetY);
#endif
                        }

                        drawCount++;
                    }
                }
            }
        }
    }
}

void sub_802AB10(s16 worldX, s16 worldY, Player *p)
{
    u16 temp_r0;
    RingsMgrUnk30 *strc30;
    Sprite *s;

    strc30 = TASK_DATA(TaskCreate(Task_802AB8C, sizeof(RingsMgrUnk30), 0x2000U, 0U, NULL));
    s = &strc30->s;
    strc30->p = p;
    strc30->magnitude = 0;
    s->x = worldX;
    s->y = worldY;
    s->tiles = OBJ_VRAM0 + 0x4180;
    s->oamFlags = 0x280;
    s->anim = ANIM_RING;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x41200;
}

void Task_802AB8C(void)
{
    RingsMgrUnk30 *strc30;
    s16 temp_r0_2;
    s32 sxMinus8;
    s32 temp_r5_2;
    s8 temp_r3_2;
    s8 temp_r6;
    s16 syTemp;
    s16 sxTemp;
    PlayerSpriteInfo *temp_r0_5;
    PlayerSpriteInfo *psiPlayer;
    Player *p;
    Sprite *s;
    s16 dx, dy;

    strc30 = TASK_DATA(gCurTask);
    p = strc30->p;
    s = &strc30->s;
    dx = I(p->qWorldX) - s->x;
    dy = I(p->qWorldY) - s->y;
    temp_r0_2 = sa2__sub_8004418(dy, dx);
    strc30->magnitude += 64;
    s->x += (strc30->magnitude * COS(temp_r0_2)) >> 0x16;
    s->y += (strc30->magnitude * SIN(temp_r0_2)) >> 0x16;
    syTemp = s->y;
    sxTemp = s->x;

    if (((((s->x - 8) <= HB_LEFT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b))
          && ((s->x + 8) >= HB_LEFT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b)))
         || (((s->x - 8) >= HB_LEFT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b))
             && (HB_RIGHT(I(p->qWorldX), p->spriteInfoBody->s.hitboxes[0].b) >= (s->x - 8))))
        && (((syTemp - 16 <= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b))
             && (syTemp >= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b)))
            || ((syTemp - 16 >= HB_TOP(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b))
                && (HB_BOTTOM(I(p->qWorldY), p->spriteInfoBody->s.hitboxes[0].b) >= syTemp - 16)))) {
        if (!(p->moveState & MOVESTATE_100)) {
            AddRings(1);
            CreateCollectRingEffect(sxTemp, syTemp);
        }
        TaskDestroy(gCurTask);
        return;
    }

    s->x -= gCamera.x;
    s->y -= gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s->x = sxTemp;
    s->y = syTemp;
}

void Task_802ACF0(void)
{
    RingsMgrUnk2C *strc2C = TASK_DATA(gCurTask);
    Sprite *s = &strc2C->s;
    s16 temp_r5 = s->x;
    s16 temp_r6 = s->y;

    s->x -= gCamera.x;
    s->y -= gCamera.y;
    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        DisplaySprite(s);
        gStageData.unkB5 -= 1;
        TaskDestroy(gCurTask);
        return;
    }
    DisplaySprite(s);
    s->x = (s16)temp_r5;
    s->y = (s16)temp_r6;
}

void TaskDestructor_RingsMgr(Task *t)
{
    RingsManager *mgr = TASK_DATA(t);
    EwramFree(mgr->ringPositions);
}
#endif
