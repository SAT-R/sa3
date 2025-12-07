	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song129_1
song129_1:	@ 0x082AF688
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 117
	.byte	VOL	, v120
	.byte		N84	, Cn3, v127
	.byte	W84
	.byte	FINE
    
	mAlignWord
	.global song129
song129:	@ 0x082AF698
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup001		@ voicegroup/tone

	mPtr	song129_1		@ track
