#include "global.h"
#include "core.h"

const u16 Palette_zone_5_act_2_fg[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_5_act_2_fg[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_5_act_2_fg0[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/map_back.bin");

const u16 Map_zone_5_act_2_fg1[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/map_front.bin");

ALIGNED(4) const struct MapHeader zone_5_act_2_fg0 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x80,
        .animFrameCount = 12,
        .animDelay = 3,
        .tiles = Tileset_zone_5_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_2_fg) - (12 * 0x80),
        .palette = Palette_zone_5_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_2_fg,
    },
    .metatileMap = Map_zone_5_act_2_fg0,
    .mapWidth = 138,
    .mapHeight = 41,
};

ALIGNED(4) const struct MapHeader zone_5_act_2_fg1 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x80,
        .animFrameCount = 12,
        .animDelay = 3,
        .tiles = Tileset_zone_5_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_2_fg) - (12 * 0x80),
        .palette = Palette_zone_5_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_2_fg,
    },
    .metatileMap = Map_zone_5_act_2_fg1,
    .mapWidth = 138,
    .mapHeight = 41,
};

const Collision CollHeader_zone_5_act_2_fg = {
    CollHeightMap_zone_5_act_2_fg, CollTileRot_zone_5_act_2_fg,
    Metatiles_zone_5_act_2_fg,
    Map_zone_5_act_2_fg0, Map_zone_5_act_2_fg1,
    CollFlags_zone_5_act_2_fg,
    138, 41,
    13248, 3936
};

