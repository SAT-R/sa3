#include "global.h"
#include "core.h"

const u16 Palette_zone_1_act_boss_bg0[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_1_act_boss_bg0[] = INCBIN_U8("data/maps/zone_1/act_boss/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_1_act_boss_bg0[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_1_act_boss_bg0 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_1_act_boss_bg0,
    .tilesSize = sizeof(Tiles_zone_1_act_boss_bg0) - (0 * 0x00),
    .palette = Palette_zone_1_act_boss_bg0,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_1_act_boss_bg0) / sizeof(u16),
    .map = Tilemap_zone_1_act_boss_bg0,
};
