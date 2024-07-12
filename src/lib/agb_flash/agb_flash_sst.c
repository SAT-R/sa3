#include "gba/gba.h"
#include "gba/flash_internal.h"

extern u16 ProgramFlashSector_SST(u16 sectorNum, void *src);

const u16 unknownChipMaxTime[] = {
    10,   65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 10,   65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
    2000, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 2000, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

const u16 unknownChipMaxTime2[] = {
    10,  65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 10,  65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
    500, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 500, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

const struct FlashSetupInfo UnkFlashChipInfo_3 = { ProgramFlashSector_SST,
                                                   EraseFlashChip_MX,
                                                   EraseFlashSector_MX,
                                                   WaitForFlashWrite_Common,
                                                   unknownChipMaxTime,
                                                   {
                                                       65536, // ROM size
                                                       {
                                                           4096, // sector size
                                                           12, // bit shift to multiply by sector size (4096 == 1 << 12)
                                                           16, // number of sectors
                                                           0 // appears to be unused
                                                       },
                                                       { 3, 1 }, // wait state setup data
                                                       { { FLASH_MAKER__MX, 0x1C } } // ID
                                                   } };

const struct FlashSetupInfo UnkFlashChipInfo_4 = { ProgramFlashSector_SST,
                                                   EraseFlashChip_MX,
                                                   EraseFlashSector_MX,
                                                   WaitForFlashWrite_Common,
                                                   unknownChipMaxTime2,
                                                   {
                                                       65536, // ROM size
                                                       {
                                                           4096, // sector size
                                                           12, // bit shift to multiply by sector size (4096 == 1 << 12)
                                                           16, // number of sectors
                                                           0 // appears to be unused
                                                       },
                                                       { 0, 2 }, // wait state setup data
                                                       { { 0x32, 0x1B } } // ID
                                                   } };

u16 ProgramFlashSector_SST(u16 sectorNum, void *src)
{
    u16 result;
    u8 *copyDest;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= gFlash->sector.count)
        return 0x80FF;

    result = EraseFlashSector_MX(sectorNum);
    if (result != 0)
        return result;

    SetReadFlash1(readFlash1Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    gFlashNumRemainingBytes = gFlash->sector.size;

    copyDest = (FLASH_BASE + (sectorNum << gFlash->sector.shift));

    while ((gFlashNumRemainingBytes != 0) && (result = ProgramByte(src, copyDest)) == 0) {
        gFlashNumRemainingBytes--;
        src++;
        copyDest++;
    }

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 0x03;

    return result;
}
