	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song665_1
song665_1:	@ 0x082B22F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 37
	.byte	VOL	, v127
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N07	, Gn2, v127
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		TIE	
	.byte	W80
	.byte	W42
	.byte	W01
	.byte		EOT	
	.byte	FINE

	@********************** Track  2 **********************@

	.global song665_2
song665_2:	@ 0x082B2316
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v127
	.byte	LFOS	, 70
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 104
	.byte		N23	, As2, v127
	.byte	W24
	.byte		N24	
	.byte	W28
	.byte			As2, v092
	.byte	W28
	.byte		N15	, As2, v060
	.byte	W16
	.byte			As2, v032
	.byte	W15
	.byte	FINE

	.align 2
	.global song665
song665:	@ 0x082B2338
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song665_1		@ track
	.word	song665_2		@ track
