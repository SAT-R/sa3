#include "global.h"
#include "lib/agb_flash/flash_internal.h"
#include "lib/agb_flash/agb_flash.h"

/* TODO: Revert these back to how they were originally!
         We're using a hack in sym_iwram.txt right now,
         to get the addresses aliged/ROM to match!
*/
#if AGBFLASH_USE_V126
static const u16 *gFlashMaxTime;
#endif
#if (ENGINE != ENGINE_3)
static u8 (*PollFlashStatus)(u8 *);
#endif
static u8 sTimerNum;
static u16 sTimerCount;
#if (ENGINE != ENGINE_3)
static u8 gFlashTimeoutFlag;
#endif
static vu16 *gTimerReg;
static u16 gSavedIme;

#if (ENGINE != ENGINE_3)
u8 (*FlashTempA)(u8 *) = NULL;
u8 (*FlashTempB)(u8 *) = NULL;
u8 (*FlashTempC)(u8 *) = NULL;
#else
u8 gFlashTimeoutFlag = 0;
u8 (*PollFlashStatus)(u8 *) = NULL;
#endif
u16 (*WaitForFlashWrite)(u8 phase, u8 *addr, u8 lastData) = NULL;
u16 (*ProgramFlashSector)(u16 sectorNum, void *src) = NULL;
const struct FlashType *gFlash = NULL;
u16 gFlashNumRemainingBytes = 0;
u16 (*EraseFlashChip)() = NULL;
u16 (*EraseFlashSector)(u16 sectorNum) = NULL;
#if !AGBFLASH_USE_V126
const u16 *gFlashMaxTime = NULL;
#endif

#if AGBFLASH_USE_V126
// TODO: Make sure the flash chip names are correct!
static const char AgbLibFlashVersion[] = "FLASH_V126";
const struct FlashSetupInfo *const gSetup512KInfos[] = {
    &LE39FW512, &AT29LV512, &MX29L512, &MN63F805MNP, &DefaultFlash512K,
};
#endif

void SetReadFlash1(u16 *dest);

#if !AGBFLASH_USE_V126
void SwitchFlashBank(u8 bankNum)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xB0);
    FLASH_WRITE(0x0000, bankNum);
}
#endif

#define DELAY()                                                                                                                            \
    do {                                                                                                                                   \
        vu16 i;                                                                                                                            \
        for (i = 20000; i != 0; i--)                                                                                                       \
            ;                                                                                                                              \
    } while (0)

u16 ReadFlashId(void)
{
    u16 flashId;
    u16 readFlash1Buffer[0x20];
    u8 (*readFlash1)(u8 *);

    SetReadFlash1(readFlash1Buffer);
    readFlash1 = (u8(*)(u8 *))((intptr_t)readFlash1Buffer + 1);

    // Enter ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x90);
    DELAY();

    flashId = readFlash1(FLASH_BASE + 1) << 8;
    flashId |= readFlash1(FLASH_BASE);

    // Leave ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xF0);
#if !AGBFLASH_USE_V126
    FLASH_WRITE(0x5555, 0xF0);
#endif
    DELAY();

    return flashId;
}

#if AGBFLASH_USE_V126
u16 IdentifyFlash(void)
{
#if PORTABLE
    return TRUE;
#endif
    u16 result;
    u16 flashId;
    const struct FlashSetupInfo *const *setupInfo;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    flashId = ReadFlashId();

    setupInfo = gSetup512KInfos;
    result = 1;

    for (;;) {
        if ((*setupInfo)->type.ids.separate.makerId == 0)
            break;

        if (flashId == (*setupInfo)->type.ids.joined) {
            result = 0;
            break;
        }

        setupInfo++;
    }

    ProgramFlashSector = (*setupInfo)->programFlashSector;
    EraseFlashChip = (*setupInfo)->eraseFlashChip;
    EraseFlashSector = (*setupInfo)->eraseFlashSector;
    WaitForFlashWrite = (*setupInfo)->WaitForFlashWrite;
    gFlashMaxTime = (*setupInfo)->maxTime;
    gFlash = &(*setupInfo)->type;

    return result;
}
#endif

void FlashTimerIntr(void)
{
    if (sTimerCount != 0 && --sTimerCount == 0)
        gFlashTimeoutFlag = 1;
}

u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void))
{
    if (timerNum >= 4)
        return 1;

    sTimerNum = timerNum;
    gTimerReg = &REG_TMCNT(sTimerNum);
    *intrFunc = FlashTimerIntr;
    return 0;
}

void StartFlashTimer(u8 phase)
{
    const u16 *maxTime = &gFlashMaxTime[phase * 3];
    gSavedIme = REG_IME;
    REG_IME = 0;
    gTimerReg[1] = 0;
    REG_IE |= (INTR_FLAG_TIMER0 << sTimerNum);
    gFlashTimeoutFlag = 0;
    sTimerCount = *maxTime++;
    *gTimerReg++ = *maxTime++;
    *gTimerReg-- = *maxTime++;
    REG_IF = (INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = 1;
}

void StopFlashTimer(void)
{
    REG_IME = 0;
    *gTimerReg++ = 0;
    *gTimerReg-- = 0;
    REG_IE &= ~(INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = gSavedIme;
}

u8 ReadFlash1(u8 *addr) { return *addr; }

void SetReadFlash1(u16 *dest)
{
    u16 *src;
    u16 i;

    PollFlashStatus = (u8(*)(u8 *))((intptr_t)dest + 1);

    src = (u16 *)ReadFlash1;
    src = (u16 *)((intptr_t)src & ~1);

    i = ((intptr_t)SetReadFlash1 - (intptr_t)ReadFlash1) >> 1;

    while (i != 0) {
        *dest++ = *src++;
        i--;
    }
}

#if AGBFLASH_USE_V126
u16 WaitForFlashWrite512K_Common(u8 phase, u8 *addr, u8 lastData)
{
    u16 result = 0;
    u8 status;

    StartFlashTimer(phase);

    while ((status = PollFlashStatus(addr)) != lastData) {
        if (gFlashTimeoutFlag) {
            if (PollFlashStatus(addr) == lastData)
                break;

// This #if seems redundant, but would make copy-pasting more hassle-free
#if AGBFLASH_USE_V126
            if (gFlash->ids.joined == 0x1cc2)
#else
            if (gFlash->ids.separate.makerId == 0xc2)
#endif
                FLASH_WRITE(0x5555, 0xF0);

            result = phase | 0xC000u;
            break;
        }
    }

    StopFlashTimer();

    return result;
}
#endif

void ReadFlash_Core(u8 *src, u8 *dest, u32 size)
{
    while (size-- != 0) {
        *dest++ = *src++;
    }
}

void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size)
{
    u8 *src;
    u16 i;
    u16 readFlash_Core_Buffer[0x40];
    u16 *funcSrc;
    u16 *funcDest;
    void (*readFlash_Core)(u8 *, u8 *, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

#if !AGBFLASH_USE_V126
    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }
#endif

    funcSrc = (u16 *)ReadFlash_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc & ~1);
    funcDest = readFlash_Core_Buffer;

    i = ((intptr_t)ReadFlash - (intptr_t)ReadFlash_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    readFlash_Core = (void (*)(u8 *, u8 *, u32))((intptr_t)readFlash_Core_Buffer + 1);

#if AGBFLASH_USE_V126
    src = FLASH_BASE + (sectorNum << DefaultFlash512K.type.sector.shift) + offset;
#else
    src = FLASH_BASE + (sectorNum << gFlash->sector.shift) + offset;
#endif

    readFlash_Core(src, dest, size);
}

u32 VerifyFlashSector_Core(u8 *src, u8 *tgt, u32 size)
{
    while (size-- != 0) {
        if (*tgt++ != *src++)
            return (uintptr_t)(tgt - 1);
    }

    return 0;
}

u32 VerifyFlashSector(u16 sectorNum, u8 *src)
{
    u16 i;
    u16 verifyFlashSector_Core_Buffer[0x80];
    u16 *funcSrc;
    u16 *funcDest;
    u8 *tgt;
    u16 size;
    u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

#if !AGBFLASH_USE_V126
    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }
#endif

    funcSrc = (u16 *)VerifyFlashSector_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc & ~1);
    funcDest = verifyFlashSector_Core_Buffer;

    i = ((intptr_t)VerifyFlashSector - (intptr_t)VerifyFlashSector_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    verifyFlashSector_Core = (u32(*)(u8 *, u8 *, u32))((intptr_t)verifyFlashSector_Core_Buffer + 1);

#if AGBFLASH_USE_V126
    tgt = FLASH_BASE + (sectorNum << DefaultFlash512K.type.sector.shift);
    size = DefaultFlash512K.type.sector.size;
#else
    tgt = FLASH_BASE + (sectorNum << gFlash->sector.shift);
    size = gFlash->sector.size;
#endif

    return verifyFlashSector_Core(src, tgt, size); // return 0 if verified.
}

u32 VerifyFlashSectorNBytes(u16 sectorNum, u8 *src, u32 n)
{
    u16 i;
    u16 verifyFlashSector_Core_Buffer[0x80];
    u16 *funcSrc;
    u16 *funcDest;
    u8 *tgt;
    u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

#if !AGBFLASH_USE_V126
    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }
#endif

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    funcSrc = (u16 *)VerifyFlashSector_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc & ~1);
    funcDest = verifyFlashSector_Core_Buffer;

    i = ((intptr_t)VerifyFlashSector - (intptr_t)VerifyFlashSector_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    verifyFlashSector_Core = (u32(*)(u8 *, u8 *, u32))((intptr_t)verifyFlashSector_Core_Buffer + 1);

#if AGBFLASH_USE_V126
    tgt = FLASH_BASE + (sectorNum << DefaultFlash512K.type.sector.shift);
#else
    tgt = FLASH_BASE + (sectorNum << gFlash->sector.shift);
#endif

    return verifyFlashSector_Core(src, tgt, n);
}

u32 ProgramFlashSectorAndVerify(u16 sectorNum, u8 *src)
{
    u8 i;
    u32 result;

    for (i = 0; i < 3; i++) // 3 attempts
    {
        result = ProgramFlashSector(sectorNum, src);
        if (result != 0)
            continue;

        result = VerifyFlashSector(sectorNum, src);
        if (result == 0)
            break;
    }

    return result; // return 0 if verified and programmed.
}

u32 ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n)
{
    u8 i;
    u32 result;

    for (i = 0; i < 3; i++) {
        result = ProgramFlashSector(sectorNum, dataSrc);
        if (result != 0)
            continue;

        result = VerifyFlashSectorNBytes(sectorNum, dataSrc, n);
        if (result == 0)
            break;
    }

    return result;
}
