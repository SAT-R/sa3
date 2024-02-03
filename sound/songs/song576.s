	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song576_1
song576_1:	@ 0x082B1874
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 17
	.byte	VOL	, v120
	.byte	BENDR	, 67
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N02	, As4, v092
	.byte	W05
	.byte	BEND	, c_v+4
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-42
	.byte	FINE

	.align 2
	.global song576
song576:	@ 0x082B18B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song576_1		@ track
