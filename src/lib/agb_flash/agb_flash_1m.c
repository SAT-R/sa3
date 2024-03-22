#include "gba/gba.h"
#include "gba/flash_internal.h"

static const char AgbLibFlashVersion[] = "FLASH512_V131";

extern const struct FlashSetupInfo SST39VF512;
extern const struct FlashSetupInfo UnkFlashChipInfo_0;
extern const struct FlashSetupInfo UnkFlashChipInfo_3;
extern const struct FlashSetupInfo UnkFlashChipInfo_4;

const struct FlashSetupInfo *const sSetupInfos[] = {
    &SST39VF512,
    &UnkFlashChipInfo_4,
    &UnkFlashChipInfo_3,
    &UnkFlashChipInfo_0,
};

u16 IdentifyFlash(void)
{
    u16 result;
    u16 flashId;
    const struct FlashSetupInfo *const *setupInfo;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    flashId = ReadFlashId();

    setupInfo = sSetupInfos;
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

u16 WaitForFlashWrite_Common(u8 phase, u8 *addr, u8 lastData)
{
    u16 result = 0;
    u8 status;

    StartFlashTimer(phase);

    while ((status = PollFlashStatus(addr)) != lastData) {
        if (gFlashTimeoutFlag) {
            if (PollFlashStatus(addr) == lastData)
                break;

            if (gFlash->ids.separate.makerId == 0xC2)
                FLASH_WRITE(0x5555, 0xF0);

            result = phase | 0xC000u;
            break;
        }
    }

    StopFlashTimer();

    return result;
}
