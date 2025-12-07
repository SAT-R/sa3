	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song557_1
song557_1:	@ 0x082B136C
	.byte	KEYSH	, 0
song557_1_1:
	.byte	TEMPO	, 75
	.byte	VOICE	, 38
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 34
	.byte		N07	, Dn2, v112
	.byte	W08
	.byte			Dn2, v068
	.byte	W08
	.byte			Dn2, v112
	.byte	W08
	.byte			Dn2, v068
	.byte	W08
	.byte			Dn2, v112
	.byte	W08
	.byte			Dn2, v068
	.byte	W08
	.byte			Dn2, v112
	.byte	W08
	.byte			Dn2, v068
	.byte	W08
	.byte			Dn2, v112
	.byte	W08
	.byte			Dn2, v068
	.byte	W08
	.byte			Dn2, v112
	.byte	W08
	.byte			Dn2, v068
	.byte	W07
	.byte	GOTO	
		mPtr	song557_1_1
	.byte	FINE
    
	mAlignWord
	.global song557
song557:	@ 0x082B13AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song557_1		@ track
