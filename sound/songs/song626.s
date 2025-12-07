	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song626_1
song626_1:	@ 0x082B2188
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 26
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N44	, Cn3, v127
	.byte	W44
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song626
song626:	@ 0x082B2198
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song626_1		@ track
