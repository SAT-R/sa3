	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song669_1
song669_1:	@ 0x082B24A8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 73
	.byte	VOL	, v127
	.byte	BENDR	, 0
	.byte	LFOS	, 0
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N22	, Cn3, v127
	.byte	W22
	.byte	FINE

	@********************** Track  2 **********************@

	.global song669_2
song669_2:	@ 0x082B24BD
	.byte	KEYSH	, 0
	.byte	VOICE	, 73
	.byte	VOL	, v127
	.byte	BENDR	, 0
	.byte	LFOS	, 0
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N22	, Cn3, v127
	.byte	W22
	.byte	FINE
    
	mAlignWord
	.global song669
song669:	@ 0x082B24D0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song669_1		@ track
	mPtr	song669_2		@ track
