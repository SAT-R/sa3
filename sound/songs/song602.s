	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song602_1
song602_1:	@ 0x082B1DAC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 55
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N42	, Gs3, v127
	.byte	W42
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song602_2
song602_2:	@ 0x082B1DBC
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v120
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 25
	.byte		N10	, Fn3, v084
	.byte	W10
	.byte	FINE

	.align 2
	.global song602
song602:	@ 0x082B1DD4
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song602_1		@ track
	.word	song602_2		@ track
