	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song636_1
song636_1:	@ 0x082B22A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 36
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE
    
	mAlignWord
	.global song636
song636:	@ 0x082B22B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song636_1		@ track
