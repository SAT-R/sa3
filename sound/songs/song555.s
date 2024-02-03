	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song555_1
song555_1:	@ 0x082B12DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 20
	.byte	VOL	, v090
	.byte	LFOS	, 49
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Cs3, v127
	.byte	W04
	.byte		N42	, Dn2, v108
	.byte	W42
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song555_2
song555_2:	@ 0x082B12F8
	.byte	KEYSH	, 0
	.byte	VOICE	, 36
	.byte	VOL	, v090
	.byte	LFOS	, 48
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Cn3, v127
	.byte	W06
	.byte		N24	, Gs2, v108
	.byte	W24
	.byte	W02
	.byte	FINE

	.align 2
	.global song555
song555:	@ 0x082B1314
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song555_1		@ track
	.word	song555_2		@ track
