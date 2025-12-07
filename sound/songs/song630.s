	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song630_1
song630_1:	@ 0x082B21F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N66	, Cn3, v127
	.byte	W66
	.byte	FINE
    
	mAlignWord
	.global song630
song630:	@ 0x082B2208
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song630_1		@ track
