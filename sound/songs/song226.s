	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song226_1
song226_1:	@ 0x082B0008
	.byte	KEYSH	, 0
	.byte	TEMPO	, 37
	.byte	VOICE	, 26
	.byte	VOL	, v100
	.byte	BENDR	, 10
	.byte	LFOS	, 17
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 36
	.byte	BEND	, c_v+26
	.byte		N23	, Fs2, v127
	.byte	W01
	.byte	BEND	, c_v+26
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-10
	.byte	FINE
    
	mAlignWord
	.global song226
song226:	@ 0x082B0070
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	30		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup002		@ voicegroup/tone

	mPtr	song226_1		@ track
