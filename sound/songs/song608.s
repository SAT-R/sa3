	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song608_1
song608_1:	@ 0x082B1ED4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 84
	.byte		N15	, Gn3, v127
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-32
	.byte	W03
	.byte		c_v-37
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+30
	.byte	W03
	.byte		c_v+41
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+30
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-35
	.byte	FINE

	.align 2
	.global song608
song608:	@ 0x082B1F18
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song608_1		@ track
