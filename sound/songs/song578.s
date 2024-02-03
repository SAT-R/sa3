	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song578_1
song578_1:	@ 0x082B18E8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v120
	.byte	BENDR	, 8
	.byte	LFOS	, 24
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 14
	.byte		N32	, Gn3, v116
	.byte	W14
	.byte	BEND	, c_v-1
	.byte	W02
	.byte		c_v-3
	.byte	W02
	.byte		c_v-6
	.byte	W02
	.byte		c_v-8
	.byte	W02
	.byte		c_v-11
	.byte	W02
	.byte		c_v-13
	.byte	W02
	.byte		c_v-16
	.byte	W02
	.byte		c_v-18
	.byte	W02
	.byte		c_v-21
	.byte	W02
	.byte		c_v-24
	.byte	W02
	.byte		c_v-26
	.byte	W02
	.byte		c_v-29
	.byte	W02
	.byte		c_v-31
	.byte	W02
	.byte		c_v-34
	.byte	W02
	.byte		c_v-36
	.byte	W02
	.byte		c_v-39
	.byte	FINE

	.align 2
	.global song578
song578:	@ 0x082B1924
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song578_1		@ track
