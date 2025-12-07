	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song619_1
song619_1:	@ 0x082B20E0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 19
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N60	, Cn3, v127
	.byte	W60
	.byte	FINE
    
	mAlignWord
	.global song619
song619:	@ 0x082B20F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup004		@ voicegroup/tone

	.word	song619_1		@ track
