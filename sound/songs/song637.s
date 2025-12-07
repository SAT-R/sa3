	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song637_1
song637_1:	@ 0x082B22BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 37
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N54	, Cn3, v127
	.byte	W54
	.byte	FINE
    
	mAlignWord
	.global song637
song637:	@ 0x082B22CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song637_1		@ track
