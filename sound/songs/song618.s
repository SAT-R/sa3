	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song618_1
song618_1:	@ 0x082B20C4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 18
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N32	, Cn3, v127
	.byte	W32
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song618
song618:	@ 0x082B20D4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song618_1		@ track
