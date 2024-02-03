	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song611_1
song611_1:	@ 0x082B1FE8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 59
	.byte	VOL	, v090
	.byte	LFOS	, 121
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 35
	.byte		TIE	, Bn3, v052
	.byte	W06
song611_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song611_1_1
	.byte	W18
	.byte		EOT	, Bn3
	.byte	FINE

	.align 2
	.global song611
song611:	@ 0x082B200C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song611_1		@ track
