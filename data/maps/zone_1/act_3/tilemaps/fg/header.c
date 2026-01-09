#include "global.h"
#include "core.h"

const u16 Palette_zone_1_act_3_fg[] = INCBIN_U16("data/maps/zone_1/act_3/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_1_act_3_fg[] = INCBIN_U8("data/maps/zone_1/act_3/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_1_act_3_fg[] = INCBIN_U8("data/maps/zone_1/act_3/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_1_act_3_fg[] = INCBIN_U8("data/maps/zone_1/act_3/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_1_act_3_fg[] = INCBIN_U8("data/maps/zone_1/act_3/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_1_act_3_fg[] = INCBIN_U16("data/maps/zone_1/act_3/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_3_fg0[] = INCBIN_U16("data/maps/zone_1/act_3/tilemaps/fg/map_front.bin");

const u16 Map_zone_1_act_3_fg1[] = INCBIN_U16("data/maps/zone_1/act_3/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_1_act_3_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_3_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_3_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_3_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_3_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_3_fg,
    },
    .metatileMap = Map_zone_1_act_3_fg0,
    .mapWidth = 139,
    .mapHeight = 35,
};

ALIGNED(4) const struct MapHeader zone_1_act_3_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_3_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_3_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_3_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_3_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_3_fg,
    },
    .metatileMap = Map_zone_1_act_3_fg1,
    .mapWidth = 139,
    .mapHeight = 35,
};

const Collision CollHeader_zone_1_act_3_fg = { CollHeightMap_zone_1_act_3_fg,
                                               CollTileRot_zone_1_act_3_fg,
                                               Metatiles_zone_1_act_3_fg,
                                               Map_zone_1_act_3_fg0,
                                               Map_zone_1_act_3_fg1,
                                               CollFlags_zone_1_act_3_fg,
                                               139,
                                               35,
                                               13344,
                                               3360 };
