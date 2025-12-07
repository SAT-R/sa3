	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song570_1
song570_1:	@ 0x082B1678
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N19	, As1, v127
	.byte	W20
	.byte			As1, v080
	.byte	W19
	.byte	FINE

	@********************** Track  2 **********************@

	.global song570_2
song570_2:	@ 0x082B1692
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 44
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 26
	.byte		N03	, Cs3, v127
	.byte	W20
	.byte			Cs3, v088
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song570
song570:	@ 0x082B16AC
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song570_1		@ track
	mPtr	song570_2		@ track
