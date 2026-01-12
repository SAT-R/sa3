#include "global.h"
#include "core.h"

const u16 Palette_85D8C64[] = INCBIN_U16("data/maps/zone_2/unknown/_85D8C64/palette.gbapal");
const u8 Tiles_85D8C64[] = INCBIN_U8("data/maps/zone_2/unknown/_85D8C64/tileset.4bpp");
const u8 CollHeightMap_85D8C64[] = INCBIN_U8("data/maps/zone_2/unknown/_85D8C64/height_map.coll");
const u8 CollTileRot_85D8C64[] = INCBIN_U8("data/maps/zone_2/unknown/_85D8C64/tile_rot.coll");
const u16 CollFlags_85D8C64[] = INCBIN_U16("data/maps/zone_2/unknown/_85D8C64/flags.coll");
const u16 Metatiles_85D8C64[] = INCBIN_U16("data/maps/zone_2/unknown/_85D8C64/metatiles.tilemap2");

const u16 Map_85D8C64_fg0[] = INCBIN_U16("data/maps/zone_2/unknown/_85D8C64/map_front.bin");
const u16 Map_85D8C64_fg1[] = INCBIN_U16("data/maps/zone_2/unknown/_85D8C64/map_back.bin");

ALIGNED(4)
const struct MapHeader _85D8C64_fg0 = {
    {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tiles_85D8C64,
        .tilesSize = sizeof(Tiles_85D8C64) - (0 * 0x00),
        .palette = Palette_85D8C64,
        .palOffset = 0,
        .palLength = sizeof(Palette_85D8C64) / sizeof(u16),
        .map = Metatiles_85D8C64,
    },
    .metatileMap = Map_85D8C64_fg0,
    .mapWidth = 20,
    .mapHeight = 14,
};

ALIGNED(4)
const struct MapHeader _85D8C64_fg1 = {
    {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tiles_85D8C64,
        .tilesSize = sizeof(Tiles_85D8C64) - (0 * 0x00),
        .palette = Palette_85D8C64,
        .palOffset = 0,
        .palLength = sizeof(Palette_85D8C64) / sizeof(u16),
        .map = Metatiles_85D8C64,
    },
    .metatileMap = Map_85D8C64_fg1,
    .mapWidth = 20,
    .mapHeight = 14,
};

const Collision CollHeader_85D8C64_fg = {
    CollHeightMap_85D8C64, CollTileRot_85D8C64, Metatiles_85D8C64, Map_85D8C64_fg0, Map_85D8C64_fg1, CollFlags_85D8C64, 20, 14, 1920, 1344
};
