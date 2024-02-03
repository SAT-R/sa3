	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song535_1
song535_1:	@ 0x082B0E38
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 32
	.byte	VOL	, v120
	.byte	LFOS	, 46
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N02	, Gs2, v092
	.byte	W02
	.byte			Gn3
	.byte	W02
	.byte	FINE

	.align 2
	.global song535
song535:	@ 0x082B0E54
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song535_1		@ track
