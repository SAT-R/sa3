	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song549_1
song549_1:	@ 0x082B1194
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v127
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N19	, As1, v127
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song549_2
song549_2:	@ 0x082B11AB
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v127
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N03	, Dn3, v127
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song549
song549:	@ 0x082B11C0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song549_1		@ track
	.word	song549_2		@ track
