#include "global.h"
#include "core.h"

const u16 Palette_notification_unlocked_cream_es[] = INCBIN_U16("graphics/tilemaps/notification_unlocked_cream_es/palette.gbapal");
const u8 Tiles_notification_unlocked_cream_es[] = INCBIN_U8("graphics/tilemaps/notification_unlocked_cream_es/tiles.4bpp");
const u16 Tilemap_notification_unlocked_cream_es[] = INCBIN_U16("graphics/tilemaps/notification_unlocked_cream_es/tilemap.tilemap2");

const Tilemap notification_unlocked_cream_es = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_unlocked_cream_es,
    .tilesSize = sizeof(Tiles_notification_unlocked_cream_es) - (0 * 0x00),
    .palette = Palette_notification_unlocked_cream_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_unlocked_cream_es) / sizeof(u16),
    .map = Tilemap_notification_unlocked_cream_es,
};
