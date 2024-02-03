	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song107_1
song107_1:	@ 0x082AF080
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, En4, v096
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte	FINE

	.align 2
	.global song107
song107:	@ 0x082AF098
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song107_1		@ track
