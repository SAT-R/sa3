	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song104_1
song104_1:	@ 0x082AF000
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 64
	.byte	VOL	, v105
	.byte	LFOS	, 15
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N03	, Gn4, v096
	.byte	W03
	.byte			Cn5, v092
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte		N12	, En5
	.byte	W12
	.byte	FINE

	.align 2
	.global song104
song104:	@ 0x082AF024
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song104_1		@ track
