#include "global.h"
#include "core.h"

extern const u16 Palette_zone_7_act_1_fg[];
extern const u8 Tileset_zone_7_act_1_fg[];
extern const u8 CollHeightMap_zone_7_act_1_fg[];
extern const u8 CollTileRot_zone_7_act_1_fg[];
extern const u16 CollFlags_zone_7_act_1_fg[];
extern const u16 Metatiles_zone_7_act_1_fg[];

const u16 Map_zone_7_act_3_fg0[] = INCBIN_U16("data/maps/zone_7/act_3/tilemaps/fg/map_front.bin");
const u16 Map_zone_7_act_3_fg1[] = INCBIN_U16("data/maps/zone_7/act_3/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_7_act_3_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x300,
        .animFrameCount = 8,
        .animDelay = 2,
        .tiles = Tileset_zone_7_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_1_fg) - ((8-1) * 0x300),
        .palette = Palette_zone_7_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_1_fg,
    },
    .metatileMap = Map_zone_7_act_3_fg0,
    .mapWidth = 125,
    .mapHeight = 20,
};

ALIGNED(4) const struct MapHeader zone_7_act_3_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x300,
        .animFrameCount = 8,
        .animDelay = 2,
        .tiles = Tileset_zone_7_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_1_fg) - ((8-1) * 0x300),
        .palette = Palette_zone_7_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_1_fg,
    },
    .metatileMap = Map_zone_7_act_3_fg1,
    .mapWidth = 125,
    .mapHeight = 20,
};

const Collision CollHeader_zone_7_act_3_fg = { CollHeightMap_zone_7_act_1_fg,
                                               CollTileRot_zone_7_act_1_fg,
                                               Metatiles_zone_7_act_1_fg,
                                               Map_zone_7_act_3_fg0,
                                               Map_zone_7_act_3_fg1,
                                               CollFlags_zone_7_act_1_fg,
                                               125,
                                               20,
                                               125 * (12 * 8),
                                               20 * (12 * 8) };
