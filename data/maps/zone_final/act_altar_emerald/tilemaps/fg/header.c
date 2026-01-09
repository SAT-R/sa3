#include "global.h"
#include "core.h"

const u16 Palette_zone_final_act_altar_emerald_fg[] = INCBIN_U16("data/maps/zone_final/act_altar_emerald/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_final_act_altar_emerald_fg[] = INCBIN_U8("data/maps/zone_final/act_altar_emerald/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_final_act_altar_emerald_fg[] = INCBIN_U8("data/maps/zone_final/act_altar_emerald/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_final_act_altar_emerald_fg[] = INCBIN_U8("data/maps/zone_final/act_altar_emerald/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_final_act_altar_emerald_fg[] = INCBIN_U8("data/maps/zone_final/act_altar_emerald/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_final_act_altar_emerald_fg[] = INCBIN_U16("data/maps/zone_final/act_altar_emerald/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_final_act_altar_emerald_fg0[] = INCBIN_U16("data/maps/zone_final/act_altar_emerald/tilemaps/fg/map_front.bin");

const u16 Map_zone_final_act_altar_emerald_fg1[] = INCBIN_U16("data/maps/zone_final/act_altar_emerald/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_final_act_altar_emerald_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x240,
        .animFrameCount = 8,
        .animDelay = 3,
        .tiles = Tileset_zone_final_act_altar_emerald_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_altar_emerald_fg) - (8 * 0x240),
        .palette = Palette_zone_final_act_altar_emerald_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_altar_emerald_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_altar_emerald_fg,
    },
    .metatileMap = Map_zone_final_act_altar_emerald_fg0,
    .mapWidth = 25,
    .mapHeight = 3,
};

ALIGNED(4) const struct MapHeader zone_final_act_altar_emerald_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x240,
        .animFrameCount = 8,
        .animDelay = 3,
        .tiles = Tileset_zone_final_act_altar_emerald_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_altar_emerald_fg) - (8 * 0x240),
        .palette = Palette_zone_final_act_altar_emerald_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_altar_emerald_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_altar_emerald_fg,
    },
    .metatileMap = Map_zone_final_act_altar_emerald_fg1,
    .mapWidth = 25,
    .mapHeight = 3,
};

const Collision CollHeader_zone_final_act_altar_emerald_fg = { CollHeightMap_zone_final_act_altar_emerald_fg,
                                                               CollTileRot_zone_final_act_altar_emerald_fg,
                                                               Metatiles_zone_final_act_altar_emerald_fg,
                                                               Map_zone_final_act_altar_emerald_fg0,
                                                               Map_zone_final_act_altar_emerald_fg1,
                                                               CollFlags_zone_final_act_altar_emerald_fg,
                                                               25,
                                                               3,
                                                               2400,
                                                               288 };
