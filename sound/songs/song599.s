	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song599_1
song599_1:	@ 0x082B1D08
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 13
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		TIE	, Cs4, v040
	.byte	W06
song599_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song599_1_1
	.byte	W18
	.byte		EOT	, Cs4
	.byte	FINE
    
	mAlignWord
	.global song599
song599:	@ 0x082B1D2C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song599_1		@ track
