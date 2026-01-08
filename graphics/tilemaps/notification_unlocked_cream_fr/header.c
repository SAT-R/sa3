#include "global.h"
#include "core.h"

const u16 Palette_notification_unlocked_cream_fr[] = INCBIN_U16("graphics/tilemaps/notification_unlocked_cream_fr/palette.gbapal");
const u8 Tiles_notification_unlocked_cream_fr[] = INCBIN_U8("graphics/tilemaps/notification_unlocked_cream_fr/tiles.4bpp");
const u16 Tilemap_notification_unlocked_cream_fr[] = INCBIN_U16("graphics/tilemaps/notification_unlocked_cream_fr/tilemap.tilemap2");

const Tilemap notification_unlocked_cream_fr = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_notification_unlocked_cream_fr,
    .tilesSize = sizeof(Tiles_notification_unlocked_cream_fr) - (0 * 0x00),
    .palette = Palette_notification_unlocked_cream_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_notification_unlocked_cream_fr) / sizeof(u16),
    .map = Tilemap_notification_unlocked_cream_fr,
};
