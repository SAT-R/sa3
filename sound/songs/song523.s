	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song523_1
song523_1:	@ 0x082B0ACC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 13
	.byte	VOL	, v120
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte		N01	, Cs2, v127
	.byte	W01
	.byte		N02	, Cs4
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song523
song523:	@ 0x082B0AE4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song523_1		@ track
