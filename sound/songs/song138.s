	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song138_1
song138_1:	@ 0x082AF738
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

	.global song138_2
song138_2:	@ 0x082AF777
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	BENDR	, 15
	.byte		N02	, Fn3, v124
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song138
song138:	@ 0x082AF788
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	50		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup000		@ voicegroup/tone

	.word	song138_1		@ track
	.word	song138_2		@ track
