#include "global.h"
#include "core.h"

const u16 Palette_zone_6_act_1_bg0[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/bg0/palette.gbapal");
const u8 Tiles_zone_6_act_1_bg0[]
    = INCBIN_U8("data/maps/zone_6/act_1/tilemaps/bg0/tiles.4bpp", "data/maps/zone_6/act_1/tilemaps/bg0/tiles_anim.4bpp");
const u16 Tilemap_zone_6_act_1_bg0[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/bg0/tilemap.tilemap2");

const Tilemap zone_6_act_1_bg0 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x2C0,
    .animFrameCount = 8,
    .animDelay = 6,
    .tiles = Tiles_zone_6_act_1_bg0,
    .tilesSize = sizeof(Tiles_zone_6_act_1_bg0) - ((8 - 1) * 0x2C0),
    .palette = Palette_zone_6_act_1_bg0,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_6_act_1_bg0) / sizeof(u16),
    .map = Tilemap_zone_6_act_1_bg0,
};
