	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@
    
	mAlignWord
	.global song828_1
song828_1:	@ 0x082B4820
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 26
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N36	, Cn3, v127
	.byte	W36
	.byte	FINE
    
	mAlignWord
	.global song828
song828:	@ 0x082B4830
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song828_1		@ track
