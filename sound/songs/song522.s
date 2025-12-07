	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song522_1
song522_1:	@ 0x082B0A4C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 15
	.byte	VOL	, v120
	.byte	BENDR	, 21
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 15
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		TIE	, Gs5, v064
	.byte	W01
	.byte	BEND	, c_v+56
	.byte	W01
	.byte		c_v+54
	.byte	W01
	.byte		c_v+51
	.byte	W01
	.byte		c_v+48
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+42
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+31
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-30
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
	.byte	W16
song522_1_1:
	.byte	W42
	.byte	W92
	.byte	W03
	.byte	GOTO	
		mPtr	song522_1_1
	.byte	W01
	.byte		EOT	, Gs5
	.byte	FINE
    
	mAlignWord
	.global song522
song522:	@ 0x082B0AC0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song522_1		@ track
