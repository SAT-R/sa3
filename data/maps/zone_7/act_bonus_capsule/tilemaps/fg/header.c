#include "global.h"
#include "core.h"

const u16 Palette_zone_7_act_bonus_capsule_fg[] = INCBIN_U16("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_7_act_bonus_capsule_fg[] = INCBIN_U8("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_7_act_bonus_capsule_fg[] = INCBIN_U8("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_7_act_bonus_capsule_fg[] = INCBIN_U8("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_7_act_bonus_capsule_fg[] = INCBIN_U8("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_7_act_bonus_capsule_fg[] = INCBIN_U16("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_7_act_bonus_capsule_fg0[] = INCBIN_U16("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/map_front.bin");

const u16 Map_zone_7_act_bonus_capsule_fg1[] = INCBIN_U16("data/maps/zone_7/act_bonus_capsule/tilemaps/fg/map_back.bin");

ALIGNED(4) const struct MapHeader zone_7_act_bonus_capsule_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_bonus_capsule_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_bonus_capsule_fg) - (0 * 0x00),
        .palette = Palette_zone_7_act_bonus_capsule_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_bonus_capsule_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_bonus_capsule_fg,
    },
    .metatileMap = Map_zone_7_act_bonus_capsule_fg0,
    .mapWidth = 3,
    .mapHeight = 2,
};

ALIGNED(4) const struct MapHeader zone_7_act_bonus_capsule_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_bonus_capsule_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_bonus_capsule_fg) - (0 * 0x00),
        .palette = Palette_zone_7_act_bonus_capsule_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_bonus_capsule_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_bonus_capsule_fg,
    },
    .metatileMap = Map_zone_7_act_bonus_capsule_fg1,
    .mapWidth = 3,
    .mapHeight = 2,
};

const Collision CollHeader_zone_7_act_bonus_capsule_fg = { CollHeightMap_zone_7_act_bonus_capsule_fg,
                                                           CollTileRot_zone_7_act_bonus_capsule_fg,
                                                           Metatiles_zone_7_act_bonus_capsule_fg,
                                                           Map_zone_7_act_bonus_capsule_fg0,
                                                           Map_zone_7_act_bonus_capsule_fg1,
                                                           CollFlags_zone_7_act_bonus_capsule_fg,
                                                           3,
                                                           2,
                                                           288,
                                                           192 };
