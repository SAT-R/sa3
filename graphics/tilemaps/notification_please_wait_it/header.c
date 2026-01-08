#include "global.h"
#include "core.h"

const u16 Palette_notification_please_wait_it[] = INCBIN_U16("graphics/tilemaps/notification_please_wait_it/palette.gbapal");
const u8 Tiles_notification_please_wait_it[] = INCBIN_U8("graphics/tilemaps/notification_please_wait_it/tiles.4bpp");
const u16 Tilemap_notification_please_wait_it[] = INCBIN_U16("graphics/tilemaps/notification_please_wait_it/tilemap.tilemap2");

const Tilemap notification_please_wait_it = {
    .xTiles = 14,
    .yTiles = 3,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_please_wait_it,
    .tilesSize = sizeof(Tiles_notification_please_wait_it) - (0 * 0x00),
    .palette = Palette_notification_please_wait_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_please_wait_it) / sizeof(u16),
    .map = Tilemap_notification_please_wait_it,
};
