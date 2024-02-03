	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song598_1
song598_1:	@ 0x082B1CB8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 21
	.byte	VOL	, v090
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		TIE	, Cs1, v127
	.byte	W06
song598_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song598_1_1
	.byte	W18
	.byte		EOT	, Cs1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song598_2
song598_2:	@ 0x082B1CD9
	.byte	KEYSH	, 0
	.byte	VOICE	, 53
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		TIE	, En2, v080
	.byte	W06
song598_2_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song598_2_1
	.byte	W18
	.byte		EOT	, En2
	.byte	FINE

	.align 2
	.global song598
song598:	@ 0x082B1CF8
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song598_1		@ track
	.word	song598_2		@ track
