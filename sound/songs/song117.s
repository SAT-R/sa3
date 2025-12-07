	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song117_1
song117_1:	@ 0x082AF3C4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 2
	.byte	VOL	, v100
	.byte		N48	, Cn3, v127
	.byte	W48
	.byte	FINE
    
	mAlignWord
	.global song117
song117:	@ 0x082AF3D4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	50		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup001		@ voicegroup/tone

	.word	song117_1		@ track
