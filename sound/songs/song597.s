	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song597_1
song597_1:	@ 0x082B1C80
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 55
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N42	, Cn3, v127
	.byte	W42
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song597_2
song597_2:	@ 0x082B1C90
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v120
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 25
	.byte		N32	, En4, v084
	.byte	W32
	.byte	W02
	.byte	FINE

	.align 2
	.global song597
song597:	@ 0x082B1CA8
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song597_1		@ track
	.word	song597_2		@ track
