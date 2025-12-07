#include "gba/gba.h"
#include "lib/agb_flash/flash_internal.h"

u32 sub_80C7430(vu8 *param0);
u16 sub_80C7454(u8 *param0, u32 (*someFlashFunc)(u8 *));
u16 ProgramFlashSector_SST(u16 sectorNum, u8 *src);

const u16 mxMaxTime[] = {
    10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 10,  65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
    40, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 200, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

const struct FlashSetupInfo UnkFlashChipInfo_0 = { ProgramFlashSector_MX,
                                                   EraseFlashChip_MX,
                                                   EraseFlashSector_MX,
                                                   WaitForFlashWrite_Common,
                                                   mxMaxTime,
                                                   {
                                                       65536, // ROM size
                                                       {
                                                           4096, // sector size
                                                           12, // bit shift to multiply by sector size (4096 == 1 << 12)
                                                           16, // number of sectors
                                                           0 // appears to be unused
                                                       },
                                                       { 3, 3 }, // wait state setup data
                                                       { { 0x00, 0x00 } } // ID of 0
                                                   } };

const struct FlashSetupInfo SST39VF512 = { ProgramFlashSector_MX,
                                           EraseFlashChip_MX,
                                           EraseFlashSector_MX,
                                           WaitForFlashWrite_Common,
                                           mxMaxTime,
                                           {
                                               65536, // ROM size
                                               {
                                                   4096, // sector size
                                                   12, // bit shift to multiply by sector size (4096 == 1 << 12)
                                                   16, // number of sectors
                                                   0 // appears to be unused
                                               },
                                               { 1, 2 }, // wait state setup data
                                               { { FLASH_MAKER__SST, FLASH_CHIP__SST_39VF512 } } // ID
                                           } };

u16 EraseFlashChip_MX(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x10);

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(3, FLASH_BASE, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 EraseFlashSector_MX(u16 sectorNum)
{
    u16 result;
    u8 *addr;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= SECTORS_PER_BANK)
        return 0x80FF;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    addr = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    *addr = 0x30;

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(2, addr, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

// static Only keep it non-static until sub_80C746C is decomp'd
u16 ProgramByte(u8 *src, u8 *dest)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);
    *dest = *src;

    return WaitForFlashWrite(1, dest, *src);
}

u16 ProgramFlashSector_MX(u16 sectorNum, void *src)
{
    u16 result;
    u8 *dest;
    u16 *copySource;
    u16 *copyDest;
    u16 remainingToCopy;
    u8 count;
    u8 max;
    u16 readFlash1Buffer[0x30];

    if (sectorNum >= SECTORS_PER_BANK)
        return 0x80FF;

    dest = FLASH_BASE + (sectorNum << gFlash->sector.shift);
    copySource = (u16 *)(((uintptr_t)&sub_80C7430) & ~1);
    copyDest = readFlash1Buffer;
    remainingToCopy = (u16)((uintptr_t)sub_80C7454 - (uintptr_t)sub_80C7430);

    while (remainingToCopy) {
        *copyDest++ = *copySource++;

        remainingToCopy -= 2;
    }

    {
        count = 0;
        while (TRUE) {
            if ((result = EraseFlashSector_MX(sectorNum)) == 0) {
                if ((u16)(result = sub_80C7454(dest, (void *)&((u8 *)readFlash1Buffer)[1])) == 0) {
                    break;
                }
            }

            count++;

            if (count == 0x51) {
                return result;
            }
        }
    }

    max = 1;

    if (count != 0)
        max = 6;

    for (count = 1; count <= max; count++) {
        EraseFlashSector_MX(sectorNum);
    }

    SetReadFlash1(readFlash1Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    gFlashNumRemainingBytes = gFlash->sector.size;

    while (gFlashNumRemainingBytes > 0) {
        result = ProgramByte(src, dest);

        if (result != 0)
            break;

        gFlashNumRemainingBytes--;
        src++;
        dest++;
    }

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 0x03;

    return result;
}

u32 sub_80C7430(vu8 *param0)
{
    u32 sectorNum;

    for (sectorNum = gFlash->sector.size; (sectorNum != 0) && *param0++ == 0xFF; sectorNum--) {
        ;
    }

    return sectorNum;
}

u16 sub_80C7454(u8 *param0, u32 (*someFlashFunc)(u8 *))
{
    if (someFlashFunc(param0) != 0) {
        return 0x8004;
    } else {
        return 0;
    }
}
