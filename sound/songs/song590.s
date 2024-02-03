	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song590_1
song590_1:	@ 0x082B1B1C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 49
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 127
	.byte	PAN	, c_v
	.byte		N16	, Fs4, v092
	.byte	W16
	.byte	FINE

	.align 2
	.global song590
song590:	@ 0x082B1B34
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song590_1		@ track
