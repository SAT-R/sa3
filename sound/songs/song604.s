	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song604_1
song604_1:	@ 0x082B1E00
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 24
	.byte	VOL	, v120
	.byte	BENDR	, 6
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte		N68	, Gn3, v127
	.byte	W24
	.byte	W03
	.byte	VOICE	, 25
	.byte	W44
	.byte	W01
	.byte	FINE

	.align 2
	.global song604
song604:	@ 0x082B1E1C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song604_1		@ track
