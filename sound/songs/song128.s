	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song128_1
song128_1:	@ 0x082AF66C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 116
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE
    
	mAlignWord
	.global song128
song128:	@ 0x082AF67C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup001		@ voicegroup/tone

	.word	song128_1		@ track
