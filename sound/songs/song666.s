	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song666_1
song666_1:	@ 0x082B2348
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 67
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte		N76	, An5, v127
	.byte	W78
	.byte	FINE

	@********************** Track  2 **********************@

	.global song666_2
song666_2:	@ 0x082B235F
	.byte	KEYSH	, 0
	.byte	VOICE	, 68
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 2
	.byte	BEND	, c_v-6
	.byte	W03
	.byte		N76	, An5, v127
	.byte	W78
	.byte	FINE

	@********************** Track  3 **********************@

	.global song666_3
song666_3:	@ 0x082B2377
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N23	, Fn2, v127
	.byte	W24
	.byte			Fn2, v100
	.byte	W24
	.byte			Fn2, v072
	.byte	W24
	.byte		N68	, Fn2, v052
	.byte	W24
	.byte	W44
	.byte	W03
	.byte	FINE

	@********************** Track  4 **********************@

	.global song666_4
song666_4:	@ 0x082B2390
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 3
	.byte		N23	, Fn2, v127
	.byte	W24
	.byte			Fn2, v100
	.byte	W24
	.byte			Fn2, v072
	.byte	W24
	.byte		N68	, Fn2, v052
	.byte	W24
	.byte	W44
	.byte	W03
	.byte	FINE

	@********************** Track  5 **********************@

	.global song666_5
song666_5:	@ 0x082B23B1
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 25
	.byte		N22	, Gn3, v127
	.byte	W24
	.byte			Gn3, v100
	.byte	W24
	.byte			Gn3, v080
	.byte	W24
	.byte			Gn3, v060
	.byte	W24
	.byte			Gn3, v040
	.byte	W22
	.byte	FINE
    
	mAlignWord
	.global song666
song666:	@ 0x082B23D4
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song666_1		@ track
	mPtr	song666_2		@ track
	mPtr	song666_3		@ track
	mPtr	song666_4		@ track
	mPtr	song666_5		@ track
