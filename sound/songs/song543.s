	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song543_1
song543_1:	@ 0x082B1050
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v120
	.byte	BENDR	, 15
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 127
	.byte	PAN	, c_v
	.byte		N96	, Gs3, v104
	.byte	W96
	.byte	FINE

	.align 2
	.global song543
song543:	@ 0x082B106C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song543_1		@ track
