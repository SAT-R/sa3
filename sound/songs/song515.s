	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song515_1
song515_1:	@ 0x082B08D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N03	, Ds6, v064
	.byte	W06
	.byte	MOD	, 14
	.byte	FINE
    
	mAlignWord
	.global song515
song515:	@ 0x082B08E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song515_1		@ track
