#include "global.h"
#include "core.h"

const u16 Palette_zone_6_act_3_fg[] = INCBIN_U16("data/maps/zone_6/act_3/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_6_act_3_fg[] = INCBIN_U8("data/maps/zone_6/act_3/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_6_act_3_fg[] = INCBIN_U8("data/maps/zone_6/act_3/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_6_act_3_fg[] = INCBIN_U8("data/maps/zone_6/act_3/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_6_act_3_fg[] = INCBIN_U8("data/maps/zone_6/act_3/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_6_act_3_fg[] = INCBIN_U16("data/maps/zone_6/act_3/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_6_act_3_fg0[] = INCBIN_U16("data/maps/zone_6/act_3/tilemaps/fg/map_back.bin");

const u16 Map_zone_6_act_3_fg1[] = INCBIN_U16("data/maps/zone_6/act_3/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_6_act_3_fg0 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x640,
        .animFrameCount = 8,
        .animDelay = 3,
        .tiles = Tileset_zone_6_act_3_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_3_fg) - (8 * 0x640),
        .palette = Palette_zone_6_act_3_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_3_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_3_fg,
    },
    .metatileMap = Map_zone_6_act_3_fg0,
    .mapWidth = 135,
    .mapHeight = 17,
};

ALIGNED(4) const struct MapHeader zone_6_act_3_fg1 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x640,
        .animFrameCount = 8,
        .animDelay = 3,
        .tiles = Tileset_zone_6_act_3_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_3_fg) - (8 * 0x640),
        .palette = Palette_zone_6_act_3_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_3_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_3_fg,
    },
    .metatileMap = Map_zone_6_act_3_fg1,
    .mapWidth = 135,
    .mapHeight = 17,
};

const Collision CollHeader_zone_6_act_3_fg = {
    CollHeightMap_zone_6_act_3_fg, CollTileRot_zone_6_act_3_fg,
    Metatiles_zone_6_act_3_fg,
    Map_zone_6_act_3_fg0, Map_zone_6_act_3_fg1,
    CollFlags_zone_6_act_3_fg,
    135, 17,
    12960, 1632
};

