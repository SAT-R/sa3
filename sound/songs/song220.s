	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song220_1
song220_1:	@ 0x082AFE4C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 81
	.byte	VOICE	, 20
	.byte	VOL	, v100
	.byte	LFOS	, 51
	.byte	BENDR	, 15
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N24	, Ds4, v120
	.byte	W24
	.byte	FINE
    
	mAlignWord
	.global song220
song220:	@ 0x082AFE64
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup002		@ voicegroup/tone

	.word	song220_1		@ track
