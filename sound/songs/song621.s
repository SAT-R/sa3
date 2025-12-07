	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song621_1
song621_1:	@ 0x082B2118
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 21
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N36	, Cn3, v127
	.byte	W36
	.byte	FINE
    
	mAlignWord
	.global song621
song621:	@ 0x082B2128
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song621_1		@ track
