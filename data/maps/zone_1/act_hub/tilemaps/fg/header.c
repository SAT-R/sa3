#include "global.h"
#include "core.h"

extern const u16 Palette_zone_1_act_hub_fg[]; // = INCBIN_U16("data/maps/zone_1/act_hub/tilemaps/fg/palette.gbapal");
extern const u8 Tileset_zone_1_act_hub_fg[]; // = INCBIN_U8("data/maps/zone_1/act_hub/tilemaps/fg/tileset.4bpp");
extern const u8 CollHeightMap_zone_1_act_hub_fg[]; // = INCBIN_U8("data/maps/zone_1/act_hub/tilemaps/fg/height_map.coll");
extern const u8 CollTileRot_zone_1_act_hub_fg[]; // = INCBIN_U8("data/maps/zone_1/act_hub/tilemaps/fg/tile_rot.coll");
extern const u16 CollFlags_zone_1_act_hub_fg[]; // = INCBIN_U8("data/maps/zone_1/act_hub/tilemaps/fg/flags.coll");
extern const u16 Metatiles_zone_1_act_hub_fg[]; // = INCBIN_U16("data/maps/zone_1/act_hub/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_hub_fg0[] = INCBIN_U16("data/maps/zone_1/act_hub/tilemaps/fg/map_front.bin");
const u16 Map_zone_1_act_hub_fg1[] = INCBIN_U16("data/maps/zone_1/act_hub/tilemaps/fg/map_back.bin");

#if 01
asm(".incbin \"baserom_sa3.gba\", 0x00358960, (0x24*2 + 0x24)");
#else
ALIGNED(4) const struct MapHeader zone_1_act_hub_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_hub_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_hub_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_hub_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_hub_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_hub_fg,
    },
    .metatileMap = Map_zone_1_act_hub_fg0,
    .mapWidth = 30,
    .mapHeight = 9,
};

ALIGNED(4) const struct MapHeader zone_1_act_hub_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_hub_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_hub_fg) - (0 * 0x00),
        .palette = Palette_zone_1_act_hub_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_hub_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_hub_fg,
    },
    .metatileMap = Map_zone_1_act_hub_fg1,
    .mapWidth = 30,
    .mapHeight = 9,
};

const Collision CollHeader_zone_1_act_hub_fg = { CollHeightMap_zone_1_act_hub_fg,
                                                 CollTileRot_zone_1_act_hub_fg,
                                                 Metatiles_zone_1_act_hub_fg,
                                                 Map_zone_1_act_hub_fg0,
                                                 Map_zone_1_act_hub_fg1,
                                                 CollFlags_zone_1_act_hub_fg,
                                                 30,
                                                 9,
                                                 2880,
                                                 864 };
#endif
