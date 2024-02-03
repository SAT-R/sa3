	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song106_1
song106_1:	@ 0x082AF058
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, Fs4, v127
	.byte	W04
	.byte			Bn4, v120
	.byte	W04
	.byte			En5, v112
	.byte	W04
	.byte			An5, v104
	.byte	W04
	.byte	FINE

	.align 2
	.global song106
song106:	@ 0x082AF074
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song106_1		@ track
