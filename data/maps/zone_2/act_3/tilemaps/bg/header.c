#include "global.h"
#include "core.h"

const u16 Palette_zone_2_act_3_bg1[] = INCBIN_U16("data/maps/zone_2/act_3/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_2_act_3_bg1[] = INCBIN_U8("data/maps/zone_2/act_3/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_2_act_3_bg1[] = INCBIN_U16("data/maps/zone_2/act_3/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_2_act_3_bg1 = {
    .xTiles = 32,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_2_act_3_bg1,
    .tilesSize = sizeof(Tiles_zone_2_act_3_bg1) - (0 * 0x00),
    .palette = Palette_zone_2_act_3_bg1,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_2_act_3_bg1) / sizeof(u16),
    .map = Tilemap_zone_2_act_3_bg1,
};
