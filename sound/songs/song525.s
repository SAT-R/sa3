	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song525_1
song525_1:	@ 0x082B0B30
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	VOL	, v120
	.byte	LFOS	, 27
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 2
	.byte		N03	, Fn3, v127
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Cn4
	.byte	W03
	.byte	FINE

	.align 2
	.global song525
song525:	@ 0x082B0B4C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song525_1		@ track
