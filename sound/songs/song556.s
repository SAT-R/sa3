	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song556_1
song556_1:	@ 0x082B1324
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 29
	.byte	VOL	, v120
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N19	, Gn1, v127
	.byte	W28
	.byte			Gn1, v084
	.byte	W28
	.byte			Gn1, v040
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song556_2
song556_2:	@ 0x082B1341
	.byte	KEYSH	, 0
	.byte	VOICE	, 38
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N19	, En2, v127
	.byte	W28
	.byte			En2, v084
	.byte	W28
	.byte			En2, v040
	.byte	W19
	.byte	FINE
    
	mAlignWord
	.global song556
song556:	@ 0x082B135C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song556_1		@ track
	.word	song556_2		@ track
