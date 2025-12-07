	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song112_1
song112_1:	@ 0x082AF1D4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 16
	.byte	MOD	, 127
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte	BENDR	, 20
	.byte	BEND	, c_v-60
	.byte		N04	, As3, v112
	.byte	W01
	.byte	BEND	, c_v-62
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte	MOD	, 19
	.byte	BEND	, c_v-18
	.byte		N06	, Fs3, v080
	.byte	W01
	.byte	BEND	, c_v-20
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-48
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-53
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-59
	.byte	W01
	.byte		c_v-61
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-64
	.byte	FINE
    
	mAlignWord
	.global song112
song112:	@ 0x082AF22C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup001		@ voicegroup/tone

	mPtr	song112_1		@ track
