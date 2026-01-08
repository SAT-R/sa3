#include "global.h"
#include "core.h"

const u16 Palette_zone_6_act_bonus_enemy_fg[] = INCBIN_U16("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_6_act_bonus_enemy_fg[] = INCBIN_U8("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_6_act_bonus_enemy_fg[] = INCBIN_U8("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_6_act_bonus_enemy_fg[] = INCBIN_U8("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_6_act_bonus_enemy_fg[] = INCBIN_U8("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_6_act_bonus_enemy_fg[] = INCBIN_U16("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_6_act_bonus_enemy_fg0[] = INCBIN_U16("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/map_back.bin");

const u16 Map_zone_6_act_bonus_enemy_fg1[] = INCBIN_U16("data/maps/zone_6/act_bonus_enemy/tilemaps/fg/map_front.bin");

ALIGNED(4) const struct MapHeader zone_6_act_bonus_enemy_fg0 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_6_act_bonus_enemy_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_bonus_enemy_fg) - (0 * 0x00),
        .palette = Palette_zone_6_act_bonus_enemy_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_bonus_enemy_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_bonus_enemy_fg,
    },
    .metatileMap = Map_zone_6_act_bonus_enemy_fg0,
    .mapWidth = 11,
    .mapHeight = 10,
};

ALIGNED(4) const struct MapHeader zone_6_act_bonus_enemy_fg1 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_6_act_bonus_enemy_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_bonus_enemy_fg) - (0 * 0x00),
        .palette = Palette_zone_6_act_bonus_enemy_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_bonus_enemy_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_bonus_enemy_fg,
    },
    .metatileMap = Map_zone_6_act_bonus_enemy_fg1,
    .mapWidth = 11,
    .mapHeight = 10,
};

const Collision CollHeader_zone_6_act_bonus_enemy_fg = { CollHeightMap_zone_6_act_bonus_enemy_fg,
                                                         CollTileRot_zone_6_act_bonus_enemy_fg,
                                                         Metatiles_zone_6_act_bonus_enemy_fg,
                                                         Map_zone_6_act_bonus_enemy_fg0,
                                                         Map_zone_6_act_bonus_enemy_fg1,
                                                         CollFlags_zone_6_act_bonus_enemy_fg,
                                                         11,
                                                         10,
                                                         1056,
                                                         960 };
