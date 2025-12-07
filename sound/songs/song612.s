	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song612_1
song612_1:	@ 0x082B2018
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Bn6, v064
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song612
song612:	@ 0x082B202C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song612_1		@ track
