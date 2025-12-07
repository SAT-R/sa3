	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song667_1
song667_1:	@ 0x082B23F0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 69
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte		N56	, En5, v127
	.byte	W96
song667_1_1:
	.byte		N68	, En5, v060
	.byte	W92
	.byte	W03
	.byte	GOTO	
		.word	song667_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song667_2
song667_2:	@ 0x082B2411
	.byte	KEYSH	, 0
	.byte	VOICE	, 70
	.byte	VOL	, v127
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 1
	.byte	BEND	, c_v-5
	.byte	W03
	.byte		N56	, En5, v127
	.byte	W92
	.byte	W01
song667_2_1:
	.byte	W03
	.byte	BEND	, c_v-5
	.byte		N68	, En5, v060
	.byte	W92
	.byte	GOTO	
		.word	song667_2_1
	.byte	FINE
    
	mAlignWord
	.global song667
song667:	@ 0x082B2438
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song667_1		@ track
	.word	song667_2		@ track
