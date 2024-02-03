	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song568_1
song568_1:	@ 0x082B15E8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 22
	.byte	VOL	, v120
	.byte	BENDR	, 30
	.byte	LFOS	, 49
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N03	, Ds2, v056
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W03
	.byte	MOD	, 33
	.byte		N01	, Gn1, v096
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+3
	.byte	FINE

	.align 2
	.global song568
song568:	@ 0x082B161C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song568_1		@ track
