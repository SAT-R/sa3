#include "global.h"
#include "core.h"

const u16 Palette_zone_final_act_altar_emerald_bg0[] = INCBIN_U16("data/maps/zone_final/act_altar_emerald/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_final_act_altar_emerald_bg0[] = INCBIN_U8("data/maps/zone_final/act_altar_emerald/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_final_act_altar_emerald_bg0[] = INCBIN_U16("data/maps/zone_final/act_altar_emerald/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_final_act_altar_emerald_bg0 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_final_act_altar_emerald_bg0,
    .tilesSize = sizeof(Tiles_zone_final_act_altar_emerald_bg0) - (0 * 0x00),
    .palette = Palette_zone_final_act_altar_emerald_bg0,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_final_act_altar_emerald_bg0) / sizeof(u16),
    .map = Tilemap_zone_final_act_altar_emerald_bg0,
};
