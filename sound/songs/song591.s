	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song591_1
song591_1:	@ 0x082B1B40
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 50
	.byte	VOL	, v120
	.byte	BENDR	, 30
	.byte	LFOS	, 49
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N05	, Ds4, v127
	.byte	W01
	.byte	BEND	, c_v-7
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte	MOD	, 25
	.byte		N01	, Fn2
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+5
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
	.byte	FINE
    
	mAlignWord
	.global song591
song591:	@ 0x082B1B84
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song591_1		@ track
