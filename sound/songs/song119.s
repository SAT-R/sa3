	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song119_1
song119_1:	@ 0x082AF3FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 52
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N06	, Cs1, v127
	.byte	W07
	.byte		N32	, Cn1, v112
	.byte	W32
	.byte	FINE
    
	mAlignWord
	.global song119
song119:	@ 0x082AF414
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	40		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup000		@ voicegroup/tone

	.word	song119_1		@ track
