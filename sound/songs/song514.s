	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song514_1
song514_1:	@ 0x082B0880
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 14
	.byte	VOL	, v120
	.byte	BENDR	, 30
	.byte	LFOS	, 38
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N06	, Fn4, v032
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-48
	.byte	W03
	.byte	MOD	, 14
	.byte		N01	, Bn3, v096
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+43
	.byte	W01
	.byte		c_v+47
	.byte	W01
	.byte		c_v+51
	.byte	W13
	.byte		c_v
	.byte	FINE
    
	mAlignWord
	.global song514
song514:	@ 0x082B08C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song514_1		@ track
