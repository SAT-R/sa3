	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song670_1
song670_1:	@ 0x082B24E0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 74
	.byte	VOL	, v110
	.byte	BENDR	, 0
	.byte	LFOS	, 67
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 55
	.byte		N03	, An4, v112
	.byte	W05
	.byte		N14	, An5
	.byte	W14
	.byte	FINE
    
	mAlignWord
	.global song670
song670:	@ 0x082B24FC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song670_1		@ track
