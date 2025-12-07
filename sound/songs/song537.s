	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song537_1
song537_1:	@ 0x082B0E84
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 32
	.byte	VOL	, v120
	.byte	LFOS	, 30
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N02	, An2, v127
	.byte	W02
	.byte		N10	, Gs3
	.byte	W10
	.byte	FINE
    
	mAlignWord
	.global song537
song537:	@ 0x082B0EA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song537_1		@ track
