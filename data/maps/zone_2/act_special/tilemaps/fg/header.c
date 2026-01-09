#include "global.h"
#include "core.h"

extern const u16 Palette_zone_1_act_special_fg[];
extern const u8 Tileset_zone_1_act_special_fg[];
extern const u8 Tileset_AnimTiles_zone_1_act_special_fg[];
extern const u8 CollHeightMap_zone_1_act_special_fg[];
extern const u8 CollTileRot_zone_1_act_special_fg[];
extern const u16 CollFlags_zone_1_act_special_fg[];
extern const u16 Metatiles_zone_1_act_special_fg[];

const u16 Map_zone_2_act_special_fg0[] = INCBIN_U16("data/maps/zone_2/act_special/tilemaps/fg/map_front.bin");
const u16 Map_zone_2_act_special_fg1[] = INCBIN_U16("data/maps/zone_2/act_special/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_2_act_special_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_special_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_special_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_special_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_special_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_special_fg,
    },
    .metatileMap = Map_zone_2_act_special_fg0,
    .mapWidth = 7,
    .mapHeight = 3,
};

ALIGNED(4) const struct MapHeader zone_2_act_special_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_special_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_special_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_special_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_special_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_special_fg,
    },
    .metatileMap = Map_zone_2_act_special_fg1,
    .mapWidth = 7,
    .mapHeight = 3,
};

const Collision CollHeader_zone_2_act_special_fg = { CollHeightMap_zone_1_act_special_fg,
                                                     CollTileRot_zone_1_act_special_fg,
                                                     Metatiles_zone_1_act_special_fg,
                                                     Map_zone_2_act_special_fg0,
                                                     Map_zone_2_act_special_fg1,
                                                     CollFlags_zone_1_act_special_fg,
                                                     7,
                                                     3,
                                                     672,
                                                     288 };
