	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song562_1
song562_1:	@ 0x082B1478
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 111
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte		N06	, En3, v088
	.byte	W18
	.byte		N36	, En3, v040
	.byte	W36
	.byte	FINE

	.align 2
	.global song562
song562:	@ 0x082B1498
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song562_1		@ track
