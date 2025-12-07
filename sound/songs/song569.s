	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song569_1
song569_1:	@ 0x082B1628
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 17
	.byte	VOL	, v120
	.byte	LFOS	, 9
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 72
	.byte		N30	, As3, v127
	.byte	W01
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-53
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-59
	.byte	W09
	.byte	FINE
    
	mAlignWord
	.global song569
song569:	@ 0x082B166C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song569_1		@ track
