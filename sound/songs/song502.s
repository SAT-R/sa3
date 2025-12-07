	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song502_1
song502_1:	@ 0x082B06FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 2
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte		N56	, Cn3, v127
	.byte	W56
	.byte	FINE
    
	mAlignWord
	.global song502
song502:	@ 0x082B070C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup004		@ voicegroup/tone

	mPtr	song502_1		@ track
