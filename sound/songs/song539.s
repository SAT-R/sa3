	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song539_1
song539_1:	@ 0x082B0F08
	.byte	KEYSH	, 0
	.byte	TEMPO	, 105
	.byte	VOICE	, 1
	.byte	VOL	, v120
	.byte	LFOS	, 17
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N23	, Gn2, v127
	.byte	W18
	.byte	MOD	, 0
	.byte	W06
	.byte		127
	.byte		N23	, Gn2, v088
	.byte	W17
	.byte	MOD	, 0
	.byte	W07
	.byte		127
	.byte		N23	, Gn2, v036
	.byte	W17
	.byte	MOD	, 0
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song539_2
song539_2:	@ 0x082B0F32
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v120
	.byte	LFOS	, 9
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N23	, Gn3, v127
	.byte	W18
	.byte	MOD	, 0
	.byte	W06
	.byte		127
	.byte		N23	, Gn3, v092
	.byte	W17
	.byte	MOD	, 0
	.byte	W07
	.byte		127
	.byte		N23	, Gn3, v040
	.byte	W17
	.byte	MOD	, 0
	.byte	W06
	.byte	FINE

	.align 2
	.global song539
song539:	@ 0x082B0F5C
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song539_1		@ track
	.word	song539_2		@ track
