	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song593_1
song593_1:	@ 0x082B1BC4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 53
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		TIE	, En3, v080
	.byte	W06
song593_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song593_1_1
	.byte	W18
	.byte		EOT	, En3
	.byte	FINE
    
	mAlignWord
	.global song593
song593:	@ 0x082B1BE8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song593_1		@ track
