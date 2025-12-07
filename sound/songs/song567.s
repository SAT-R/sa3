	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song567_1
song567_1:	@ 0x082B1598
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 1
	.byte	VOL	, v120
	.byte	LFOS	, 75
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 100
	.byte		TIE	, Dn1, v127
	.byte	W06
song567_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song567_1_1
	.byte	W18
	.byte		EOT	, Dn1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song567_2
song567_2:	@ 0x082B15B9
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 55
	.byte		TIE	, En2, v127
	.byte	W06
song567_2_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song567_2_1
	.byte	W18
	.byte		EOT	, En2
	.byte	FINE
    
	mAlignWord
	.global song567
song567:	@ 0x082B15D8
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song567_1		@ track
	.word	song567_2		@ track
