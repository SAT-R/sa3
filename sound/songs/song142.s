	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song142_1
song142_1:	@ 0x082AF7C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 25
	.byte	MOD	, 3
	.byte	VOL	, v110
	.byte	PAN	, c_v-1
	.byte	BENDR	, 1
	.byte		N03	, Cs4, v127
	.byte	W03
	.byte			Fs4, v116
	.byte	W03
	.byte			Gs4, v120
	.byte	W03
	.byte		N44	, Cs5, v127
	.byte	W44
	.byte	W01
	.byte	FINE

	.align 2
	.global song142
song142:	@ 0x082AF7E0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song142_1		@ track
