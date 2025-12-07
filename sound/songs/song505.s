	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song505_1
song505_1:	@ 0x082B0750
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 5
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N56	, Cn3, v127
	.byte	W56
	.byte	FINE
    
	mAlignWord
	.global song505
song505:	@ 0x082B0760
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song505_1		@ track
