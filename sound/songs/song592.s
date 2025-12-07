	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song592_1
song592_1:	@ 0x082B1B90
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 52
	.byte	VOL	, v120
	.byte	BENDR	, 13
	.byte	LFOS	, 49
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	W01
	.byte	MOD	, 47
	.byte	BEND	, c_v+2
	.byte		N54	, Gs2, v100
	.byte	W01
	.byte	BEND	, c_v+5
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+24
	.byte	W48
	.byte	FINE
    
	mAlignWord
	.global song592
song592:	@ 0x082B1BB8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song592_1		@ track
