	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song554_1
song554_1:	@ 0x082B12B4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 17
	.byte	VOL	, v127
	.byte	LFOS	, 8
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 82
	.byte		N03	, Dn3, v127
	.byte	W04
	.byte		N15	, Bn2
	.byte	W16
	.byte	FINE
    
	mAlignWord
	.global song554
song554:	@ 0x082B12D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song554_1		@ track
