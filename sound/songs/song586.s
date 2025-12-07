	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song586_1
song586_1:	@ 0x082B1A78
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 17
	.byte	VOL	, v120
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N03	, Bn2, v127
	.byte	W04
	.byte			Ds3
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song586
song586:	@ 0x082B1A94
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song586_1		@ track
