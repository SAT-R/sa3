#include "global.h"
#include "core.h"

const u16 Palette_zone_final_act_nonaggression_bg0[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/bg0/palette.gbapal");
// File named "tileset_*.4bpp" for Makefile rule in graphics.mk that adds -ignore_trailing parameter to GFX command.
const u8 Tiles_zone_final_act_nonaggression_bg0[] = INCBIN_U8("data/maps/zone_final/act_nonaggression/tilemaps/bg0/tileset_0.4bpp");
const u16 Tilemap_zone_final_act_nonaggression_bg0[] = INCBIN_U16("data/maps/zone_final/act_nonaggression/tilemaps/bg0/tilemap.tilemap2");

const Tilemap zone_final_act_nonaggression_bg0 = {
    .xTiles = 256 / 8,
    .yTiles = 160 / 8,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_final_act_nonaggression_bg0,
    .tilesSize = sizeof(Tiles_zone_final_act_nonaggression_bg0) - (0 * 0x00),
    .palette = Palette_zone_final_act_nonaggression_bg0,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_final_act_nonaggression_bg0) / sizeof(u16),
    .map = Tilemap_zone_final_act_nonaggression_bg0,
};
