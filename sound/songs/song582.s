	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song582_1
song582_1:	@ 0x082B19D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 65
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 56
	.byte		TIE	, Fs2, v100
	.byte	W06
song582_1_1:
	.byte	W90
	.byte	W72
	.byte	GOTO	
		.word	song582_1_1
	.byte	W18
	.byte		EOT	, Fs2
	.byte	FINE

	.align 2
	.global song582
song582:	@ 0x082B19F4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song582_1		@ track
