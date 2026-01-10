#include "global.h"
#include "core.h"

const u16 Palette_zone_final_act_nonaggression_fg[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_final_act_nonaggression_fg[] = INCBIN_U8("data/maps/zone_final/act_nonaggression/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_final_act_nonaggression_fg[] = INCBIN_U8("data/maps/zone_final/act_nonaggression/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_final_act_nonaggression_fg[] = INCBIN_U8("data/maps/zone_final/act_nonaggression/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_final_act_nonaggression_fg[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_final_act_nonaggression_fg[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_final_act_nonaggression_fg0[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/fg/map_front.bin");
const u16 Map_zone_final_act_nonaggression_fg1[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_final_act_nonaggression_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_nonaggression_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_nonaggression_fg) - (0 * 0x00),
        .palette = Palette_zone_final_act_nonaggression_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_nonaggression_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_nonaggression_fg,
    },
    .metatileMap = Map_zone_final_act_nonaggression_fg0,
    .mapWidth = 30,
    .mapHeight = 3,
};

ALIGNED(4) const struct MapHeader zone_final_act_nonaggression_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_nonaggression_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_nonaggression_fg) - (0 * 0x00),
        .palette = Palette_zone_final_act_nonaggression_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_nonaggression_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_nonaggression_fg,
    },
    .metatileMap = Map_zone_final_act_nonaggression_fg1,
    .mapWidth = 30,
    .mapHeight = 3,
};

const Collision CollHeader_zone_final_act_nonaggression_fg = { CollHeightMap_zone_final_act_nonaggression_fg,
                                                               CollTileRot_zone_final_act_nonaggression_fg,
                                                               Metatiles_zone_final_act_nonaggression_fg,
                                                               Map_zone_final_act_nonaggression_fg0,
                                                               Map_zone_final_act_nonaggression_fg1,
                                                               CollFlags_zone_final_act_nonaggression_fg,
                                                               30,
                                                               3,
                                                               2880,
                                                               288 };
