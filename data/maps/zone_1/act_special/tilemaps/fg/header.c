#include "global.h"
#include "core.h"

const u16 Palette_zone_1_act_special_fg[] = INCBIN_U16("data/maps/zone_1/act_special/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_1_act_special_fg[] = INCBIN_U8("data/maps/zone_1/act_special/tilemaps/fg/tileset.4bpp");
const u8 Tileset_AnimTiles_zone_1_act_special_fg[] = INCBIN_U8("data/maps/zone_1/act_special/tilemaps/fg/tileset_anim.4bpp");
const u8 CollHeightMap_zone_1_act_special_fg[] = INCBIN_U8("data/maps/zone_1/act_special/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_1_act_special_fg[] = INCBIN_U8("data/maps/zone_1/act_special/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_1_act_special_fg[] = INCBIN_U16("data/maps/zone_1/act_special/tilemaps/fg/flags.coll");
#if 0
const u16 Metatiles_zone_1_act_special_fg[] = INCBIN_U16("data/maps/zone_1/act_special/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_special_fg0[] = INCBIN_U16("data/maps/zone_1/act_special/tilemaps/fg/map_front.bin");

const u16 Map_zone_1_act_special_fg1[] = INCBIN_U16("data/maps/zone_1/act_special/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_1_act_special_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x2C0,
        .animFrameCount = 28,
        .animDelay = 3,
        .tiles = Tileset_zone_1_act_special_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_special_fg) - (28 * 0x2C0),
        .palette = Palette_zone_1_act_special_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_special_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_special_fg,
    },
    .metatileMap = Map_zone_1_act_special_fg0,
    .mapWidth = 6,
    .mapHeight = 3,
};

ALIGNED(4) const struct MapHeader zone_1_act_special_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x2C0,
        .animFrameCount = 28,
        .animDelay = 3,
        .tiles = Tileset_zone_1_act_special_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_special_fg) - (28 * 0x2C0),
        .palette = Palette_zone_1_act_special_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_special_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_special_fg,
    },
    .metatileMap = Map_zone_1_act_special_fg1,
    .mapWidth = 6,
    .mapHeight = 3,
};

const Collision CollHeader_zone_1_act_special_fg = { CollHeightMap_zone_1_act_special_fg,
                                                     CollTileRot_zone_1_act_special_fg,
                                                     Metatiles_zone_1_act_special_fg,
                                                     Map_zone_1_act_special_fg0,
                                                     Map_zone_1_act_special_fg1,
                                                     CollFlags_zone_1_act_special_fg,
                                                     6,
                                                     3,
                                                     576,
                                                     288 };

0C 00 0C 00 C0 02 1C 03 
4C 4C 39 08 00 80 00 00 
4C 4A 39 08 00 00 00 01 
08 51 3A 08 
08 A2 3A 08 06 00 03 00 

0C 00 0C 00 C0 02 1C 03 
08394A4C 00 00 00 01 
08394C4C -> 0839CC4C 00 80 00 00 
083A168C 
083A491C 

083A4F70 
083A5108 
083AA208  
083AA22C 
06 00 03 00 40 02 00 00 20 01 00 00
#endif
