	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song513_1
song513_1:	@ 0x082B0834
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 14
	.byte	VOL	, v120
	.byte	BENDR	, 30
	.byte	LFOS	, 38
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N12	, Ds6, v048
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W03
	.byte	MOD	, 14
	.byte	BEND	, c_v
	.byte		N12	, Fn6, v072
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W03
	.byte	MOD	, 14
	.byte	BEND	, c_v
	.byte		N12	, Gs6, v088
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W03
	.byte	MOD	, 14
	.byte	W06
	.byte	FINE

	.align 2
	.global song513
song513:	@ 0x082B0874
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song513_1		@ track
