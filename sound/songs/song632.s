	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song632_1
song632_1:	@ 0x082B2230
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 32
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N44	, Cn3, v127
	.byte	W44
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song632
song632:	@ 0x082B2240
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song632_1		@ track
