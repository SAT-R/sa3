	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song575_1
song575_1:	@ 0x082B1794
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 39
	.byte	VOL	, v090
	.byte	BENDR	, 22
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte		N17	, Fs4, v127
	.byte	W03
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+38
	.byte	W01
	.byte		c_v+44
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+56
	.byte	W11
	.byte		N17	, Fs4, v096
	.byte	W03
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+38
	.byte	W01
	.byte		c_v+44
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+56
	.byte	W11
	.byte		N17	, Fs4, v056
	.byte	W03
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v+1
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+38
	.byte	W01
	.byte		c_v+44
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+56
	.byte	W04
	.byte	FINE

	@********************** Track  2 **********************@

	.global song575_2
song575_2:	@ 0x082B17F8
	.byte	KEYSH	, 0
	.byte	VOICE	, 40
	.byte	VOL	, v090
	.byte	BENDR	, 16
	.byte	LFOS	, 8
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 57
	.byte		N68	, Dn3, v127
	.byte	W03
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+25
	.byte	W04
	.byte		c_v+2
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+25
	.byte	W24
	.byte	FINE
    
	mAlignWord
	.global song575
song575:	@ 0x082B1864
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song575_1		@ track
	.word	song575_2		@ track
