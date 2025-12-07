	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song552_1
song552_1:	@ 0x082B1248
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 7
	.byte		N07	, Ds2, v127
	.byte	W04
	.byte			En2, v060
	.byte	W04
	.byte			Fn2, v080
	.byte	W04
	.byte			Fs2, v100
	.byte	W04
	.byte			Gn2, v120
	.byte	W04
	.byte		N23	, Gs2, v127
	.byte	W23
	.byte	FINE
    
	mAlignWord
	.global song552
song552:	@ 0x082B1270
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song552_1		@ track
