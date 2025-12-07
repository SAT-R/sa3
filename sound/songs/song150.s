	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song150_1
song150_1:	@ 0x082AF98C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 52
	.byte	VOL	, v070
	.byte	PAN	, c_v
	.byte	BENDR	, 6
	.byte	BEND	, c_v-1
	.byte		N60	, Cn4, v124
	.byte	W01
	.byte	BEND	, c_v+20
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+58
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+31
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+48
	.byte	W01
	.byte		c_v+63
	.byte	W36
	.byte	W03
	.byte	FINE

	@********************** Track  2 **********************@

	.global song150_2
song150_2:	@ 0x082AF9CB
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N02	, Fn3, v124
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song150
song150:	@ 0x082AF9DC
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	50		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup000		@ voicegroup/tone

	mPtr	song150_1		@ track
	mPtr	song150_2		@ track
