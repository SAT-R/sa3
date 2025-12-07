	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song530_1
song530_1:	@ 0x082B0CCC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 29
	.byte	VOL	, v120
	.byte	LFOS	, 4
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Gs3, v127
	.byte	W04
	.byte		N20	, Cn4
	.byte	W20
	.byte	FINE
    
	mAlignWord
	.global song530
song530:	@ 0x082B0CE4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song530_1		@ track
