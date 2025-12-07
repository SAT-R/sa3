	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song507_1
song507_1:	@ 0x082B0788
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 7
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N44	, Cn3, v127
	.byte	W44
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song507
song507:	@ 0x082B0798
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song507_1		@ track
