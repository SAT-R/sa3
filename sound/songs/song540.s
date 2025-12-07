	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song540_1
song540_1:	@ 0x082B0F6C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 105
	.byte	VOICE	, 33
	.byte	VOL	, v120
	.byte	BENDR	, 15
	.byte	LFOS	, 83
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		TIE	, Fs3, v052
	.byte	W08
	.byte	BEND	, c_v-63
	.byte	W08
	.byte		c_v-62
	.byte	W08
	.byte		c_v-60
	.byte	W08
	.byte		c_v-59
	.byte	W08
	.byte		c_v-57
	.byte	W08
	.byte		c_v-56
	.byte	W08
	.byte		c_v-54
	.byte	W08
	.byte		c_v-52
	.byte	W08
	.byte		c_v-51
	.byte	W08
	.byte		c_v-49
	.byte	W08
	.byte		c_v-48
	.byte	W08
	.byte		c_v-46
	.byte	W08
	.byte		c_v-45
	.byte	W08
	.byte		c_v-43
	.byte	W08
	.byte		c_v-41
	.byte	W08
	.byte		c_v-40
	.byte	W08
	.byte		c_v-38
	.byte	W08
	.byte		c_v-37
	.byte	W08
	.byte		c_v-35
	.byte	W08
	.byte		c_v-33
	.byte	W08
	.byte		c_v-32
	.byte	W08
	.byte		c_v-30
	.byte	W08
	.byte		c_v-29
	.byte	W08
	.byte		c_v-27
	.byte	W08
	.byte		c_v-26
	.byte	W08
	.byte		c_v-24
	.byte	W08
	.byte		c_v-22
	.byte	W08
	.byte		c_v-21
	.byte	W08
	.byte		c_v-19
	.byte	W08
	.byte		c_v-18
	.byte	W08
	.byte		c_v-16
	.byte	W08
	.byte		c_v-15
	.byte	W08
	.byte		c_v-13
	.byte	W08
	.byte		c_v-11
	.byte	W08
	.byte		c_v-10
	.byte	W08
	.byte		c_v-8
	.byte	W08
	.byte		c_v-7
	.byte	W08
	.byte		c_v-5
	.byte	W56
song540_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song540_1_1
	.byte	W23
	.byte		EOT	, Fs3
	.byte	FINE
    
	mAlignWord
	.global song540
song540:	@ 0x082B0FDC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song540_1		@ track
