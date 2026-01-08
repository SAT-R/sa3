#include "global.h"
#include "core.h"

const u16 Palette_notification_please_wait_es[] = INCBIN_U16("graphics/tilemaps/notification_please_wait_es/palette.gbapal");
const u8 Tiles_notification_please_wait_es[] = INCBIN_U8("graphics/tilemaps/notification_please_wait_es/tiles.4bpp");
const u16 Tilemap_notification_please_wait_es[] = INCBIN_U16("graphics/tilemaps/notification_please_wait_es/tilemap.tilemap2");

const Tilemap notification_please_wait_es = {
    .xTiles = 14,
    .yTiles = 3,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_please_wait_es,
    .tilesSize = sizeof(Tiles_notification_please_wait_es) - (0 * 0x00),
    .palette = Palette_notification_please_wait_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_please_wait_es) / sizeof(u16),
    .map = Tilemap_notification_please_wait_es,
};
