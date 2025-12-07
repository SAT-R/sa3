	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song571_1
song571_1:	@ 0x082B16BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N15	, As1, v127
	.byte	W16
	.byte		N19	, As1, v080
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song571_2
song571_2:	@ 0x082B16D7
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 44
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 26
	.byte		N03	, Cs3, v127
	.byte	W08
	.byte			Cs3, v088
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song571
song571:	@ 0x082B16F0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song571_1		@ track
	.word	song571_2		@ track
