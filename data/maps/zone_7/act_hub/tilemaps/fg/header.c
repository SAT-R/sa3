#include "global.h"
#include "core.h"

extern const u16 Palette_zone_1_act_bonus_capsule_fg[0x100];
extern const u8 Tileset_zone_1_act_bonus_capsule_fg[0x8000];
extern const u8 CollHeightMap_zone_1_act_bonus_capsule_fg[];
extern const u8 CollTileRot_zone_1_act_bonus_capsule_fg[];
extern const u16 CollFlags_zone_1_act_bonus_capsule_fg[];
extern const u16 Metatiles_zone_1_act_bonus_capsule_fg[];

const u16 Map_zone_7_act_hub_fg0[] = INCBIN_U16("data/maps/zone_7/act_hub/tilemaps/fg/map_front.bin");
const u16 Map_zone_7_act_hub_fg1[] = INCBIN_U16("data/maps/zone_7/act_hub/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_7_act_hub_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_bonus_capsule_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_bonus_capsule_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_bonus_capsule_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_bonus_capsule_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_bonus_capsule_fg,
    },
    .metatileMap = Map_zone_7_act_hub_fg0,
    .mapWidth = 20,
    .mapHeight = 16,
};

ALIGNED(4) const struct MapHeader zone_7_act_hub_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_bonus_capsule_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_bonus_capsule_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_bonus_capsule_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_bonus_capsule_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_bonus_capsule_fg,
    },
    .metatileMap = Map_zone_7_act_hub_fg1,
    .mapWidth = 20,
    .mapHeight = 16,
};

const Collision CollHeader_zone_7_act_hub_fg = { CollHeightMap_zone_1_act_bonus_capsule_fg,
                                                 CollTileRot_zone_1_act_bonus_capsule_fg,
                                                 Metatiles_zone_1_act_bonus_capsule_fg,
                                                 Map_zone_7_act_hub_fg0,
                                                 Map_zone_7_act_hub_fg1,
                                                 CollFlags_zone_1_act_bonus_capsule_fg,
                                                 20,
                                                 16,
                                                 1920,
                                                 1536 };
