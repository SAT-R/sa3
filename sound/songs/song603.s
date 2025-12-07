	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song603_1
song603_1:	@ 0x082B1DE4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 56
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N12	, Cn4, v127
	.byte	W12
	.byte	FINE
    
	mAlignWord
	.global song603
song603:	@ 0x082B1DF4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song603_1		@ track
