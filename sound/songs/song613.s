	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song613_1
song613_1:	@ 0x082B2038
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 13
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N32	, Cn3, v127
	.byte	W32
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song613
song613:	@ 0x082B2048
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song613_1		@ track
