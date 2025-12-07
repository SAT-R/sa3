	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song629_1
song629_1:	@ 0x082B21DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 29
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N52	, Cn3, v127
	.byte	W52
	.byte	FINE
    
	mAlignWord
	.global song629
song629:	@ 0x082B21EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song629_1		@ track
