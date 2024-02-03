	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song605_1
song605_1:	@ 0x082B1E28
	.byte	KEYSH	, 0
song605_1_1:
	.byte	TEMPO	, 75
	.byte	VOICE	, 0
	.byte	VOL	, v120
	.byte	BENDR	, 12
	.byte	LFOS	, 25
	.byte	MODT	, 0
	.byte	MOD	, 15
	.byte	PAN	, c_v
	.byte		N01	, Dn7, v100
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W08
	.byte		N01	
	.byte	W07
	.byte	GOTO	
		.word	song605_1_1
	.byte	FINE

	.align 2
	.global song605
song605:	@ 0x082B1E5C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	song605_1		@ track
