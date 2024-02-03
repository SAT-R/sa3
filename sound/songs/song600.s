	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song600_1
song600_1:	@ 0x082B1D38
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 13
	.byte		N03	, Bn2, v127
	.byte	W04
	.byte		N12	, Cs3
	.byte	W12
	.byte	FINE

	.align 2
	.global song600
song600:	@ 0x082B1D54
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song600_1		@ track
