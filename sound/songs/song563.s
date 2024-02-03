	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song563_1
song563_1:	@ 0x082B14A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 60
	.byte	VOL	, v127
	.byte	LFOS	, 60
	.byte	BENDR	, 15
	.byte	MOD	, 9
	.byte	PAN	, c_v
	.byte	MODT	, 0
	.byte		N02	, Fs3, v127
	.byte	W02
	.byte		N01	, Fn4
	.byte	W02
	.byte		N21	, Bn3
	.byte	W21
	.byte	FINE

	.align 2
	.global song563
song563:	@ 0x082B14C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	40		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song563_1		@ track
