	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song668_1
song668_1:	@ 0x082B2448
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 71
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v-64
	.byte	MOD	, 0
	.byte		TIE	, Bn0, v127
	.byte	W96
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	FINE

	@********************** Track  2 **********************@

	.global song668_2
song668_2:	@ 0x082B2463
	.byte	KEYSH	, 0
	.byte	VOICE	, 71
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v+63
	.byte	MOD	, 3
	.byte		TIE	, Bn0, v127
	.byte	W96
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	FINE

	@********************** Track  3 **********************@

	.global song668_3
song668_3:	@ 0x082B247C
	.byte	KEYSH	, 0
	.byte	VOICE	, 72
	.byte	VOL	, v090
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 25
	.byte		TIE	, Fs2, v127
	.byte	W96
	.byte	W72
	.byte	W01
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song668
song668:	@ 0x082B2494
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song668_1		@ track
	.word	song668_2		@ track
	.word	song668_3		@ track
