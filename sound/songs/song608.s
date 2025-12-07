	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song608_1
song608_1:	@ 0x082B1ED4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 84
	.byte		N15	, Gn3, v127
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-32
	.byte	W03
	.byte		c_v-37
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+30
	.byte	W03
	.byte		c_v+41
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+30
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-35
	.byte	FINE
    
	mAlignWord
	.global song608
song608:	@ 0x082B1F18
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song608_1		@ track
