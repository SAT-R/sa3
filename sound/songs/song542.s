	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song542_1
song542_1:	@ 0x082B1018
	.byte	KEYSH	, 0
	.byte	TEMPO	, 105
	.byte	VOICE	, 34
	.byte	VOL	, v120
	.byte	BENDR	, 84
	.byte	LFOS	, 102
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		N44	, Fn4, v127
	.byte	W08
	.byte	BEND	, c_v
	.byte	W08
	.byte		c_v-4
	.byte	W08
	.byte		c_v-9
	.byte	W08
	.byte		c_v-13
	.byte	W08
	.byte		c_v-18
	.byte	W08
	.byte		c_v-22
	.byte	W08
	.byte		c_v-27
	.byte	W08
	.byte		c_v-31
	.byte	W08
	.byte		c_v-36
	.byte	FINE
    
	mAlignWord
	.global song542
song542:	@ 0x082B1044
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song542_1		@ track
