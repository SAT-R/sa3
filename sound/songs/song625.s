	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song625_1
song625_1:	@ 0x082B216C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 25
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE
    
	mAlignWord
	.global song625
song625:	@ 0x082B217C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song625_1		@ track
