	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song566_1
song566_1:	@ 0x082B155C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 39
	.byte	VOL	, v120
	.byte	LFOS	, 75
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 100
	.byte		N72	, Gn1, v127
	.byte	W72
	.byte	FINE

	@********************** Track  2 **********************@

	.global song566_2
song566_2:	@ 0x082B1573
	.byte	KEYSH	, 0
	.byte	VOICE	, 40
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 55
	.byte		N72	, Ds2, v127
	.byte	W72
	.byte	FINE
    
	mAlignWord
	.global song566
song566:	@ 0x082B1588
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song566_1		@ track
	.word	song566_2		@ track
