#include "global.h"
#include "core.h"

extern const u16 Palette_zone_5_act_1_fg[];
extern const u8 Tileset_zone_5_act_1_fg[];
extern const u8 CollHeightMap_zone_5_act_1_fg[];
extern const u8 CollTileRot_zone_5_act_1_fg[];
extern const u16 CollFlags_zone_5_act_1_fg[];
extern const u16 Metatiles_zone_5_act_1_fg[];

const u16 Map_zone_5_act_boss_fg0[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/map_front.bin");
const u16 Map_zone_5_act_boss_fg1[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_5_act_boss_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x80,
        .animFrameCount = 12,
        .animDelay = 3,
        .tiles = Tileset_zone_5_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_1_fg) - ((12-1) * 0x80),
        .palette = Palette_zone_5_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_1_fg,
    },
    .metatileMap = Map_zone_5_act_boss_fg0,
    .mapWidth = 21,
    .mapHeight = 17,
};

ALIGNED(4) const struct MapHeader zone_5_act_boss_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x80,
        .animFrameCount = 12,
        .animDelay = 3,
        .tiles = Tileset_zone_5_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_1_fg) - ((12-1) * 0x80),
        .palette = Palette_zone_5_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_1_fg,
    },
    .metatileMap = Map_zone_5_act_boss_fg1,
    .mapWidth = 21,
    .mapHeight = 17,
};

const Collision CollHeader_zone_5_act_boss_fg = { CollHeightMap_zone_5_act_1_fg,
                                                  CollTileRot_zone_5_act_1_fg,
                                                  Metatiles_zone_5_act_1_fg,
                                                  Map_zone_5_act_boss_fg0,
                                                  Map_zone_5_act_boss_fg1,
                                                  CollFlags_zone_5_act_1_fg,
                                                  21,
                                                  17,
                                                  2016,
                                                  1632 };
