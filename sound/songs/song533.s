	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song533_1
song533_1:	@ 0x082B0DB8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v120
	.byte	BENDR	, 15
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 127
	.byte	PAN	, c_v
	.byte		N04	, Fs3, v104
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-34
	.byte	W03
	.byte		c_v-49
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+44
	.byte	FINE
    
	mAlignWord
	.global song533
song533:	@ 0x082B0DE4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song533_1		@ track
