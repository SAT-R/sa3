	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song116_1
song116_1:	@ 0x082AF378
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 2
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N04	, Fn3, v112
	.byte	W04
	.byte	BEND	, c_v-64
	.byte		N20	, Bn4, v120
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+22
	.byte	FINE
    
	mAlignWord
	.global song116
song116:	@ 0x082AF3B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song116_1		@ track
