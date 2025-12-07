	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song516_1
song516_1:	@ 0x082B08F0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 26
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N36	, Cn3, v127
	.byte	W36
	.byte	FINE
    
	mAlignWord
	.global song516
song516:	@ 0x082B0900
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song516_1		@ track
