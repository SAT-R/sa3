	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song237_1
song237_1:	@ 0x082B02A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 37
	.byte	VOL	, v065
	.byte	BENDR	, 12
	.byte	LFOS	, 103
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 25
	.byte	BEND	, c_v-33
	.byte		TIE	, Dn5, v127
	.byte	W01
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+18
	.byte	W56
	.byte	W01
song237_1_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	GOTO	
		.word	song237_1_1
	.byte	W24
	.byte	W01
	.byte		EOT	, Dn5
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song237
song237:	@ 0x082B031C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup002		@ voicegroup/tone

	.word	song237_1		@ track
