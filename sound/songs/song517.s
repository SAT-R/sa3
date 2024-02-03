	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song517_1
song517_1:	@ 0x082B090C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 15
	.byte	VOL	, v120
	.byte	LFOS	, 83
	.byte	MODT	, 0
	.byte	LFODL	, 6
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, Fs3, v068
	.byte	W06
	.byte			Bn3, v072
	.byte	W06
	.byte			En4, v080
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			Dn5, v092
	.byte	W06
	.byte			Gn5, v108
	.byte	W06
	.byte			Cn6, v124
	.byte	W12
	.byte	MOD	, 6
	.byte	FINE

	@********************** Track  2 **********************@

	.global song517_2
song517_2:	@ 0x082B0937
	.byte	KEYSH	, 0
	.byte	VOICE	, 16
	.byte	VOL	, v090
	.byte	LFOS	, 83
	.byte	MODT	, 0
	.byte	LFODL	, 6
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, Fs3, v068
	.byte	W06
	.byte			Bn3, v072
	.byte	W06
	.byte			En4, v080
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			Dn5, v092
	.byte	W06
	.byte			Gn5, v108
	.byte	W06
	.byte			Cn6, v124
	.byte	W12
	.byte	MOD	, 6
	.byte	FINE

	.align 2
	.global song517
song517:	@ 0x082B0960
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song517_1		@ track
	.word	song517_2		@ track
