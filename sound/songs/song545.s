	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song545_1
song545_1:	@ 0x082B10A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 37
	.byte	VOL	, v120
	.byte	LFOS	, 63
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 0
	.byte		N07	, Gn2, v127
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N07	
	.byte	W08
	.byte		N15	
	.byte	W16
	.byte			Gn2, v092
	.byte	W16
	.byte			Gn2, v060
	.byte	W16
	.byte			Gn2, v032
	.byte	W15
	.byte	FINE

	@********************** Track  2 **********************@

	.global song545_2
song545_2:	@ 0x082B10C8
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v090
	.byte	LFOS	, 70
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 50
	.byte		N48	, As2, v127
	.byte	W52
	.byte		N15	
	.byte	W16
	.byte			As2, v092
	.byte	W16
	.byte			As2, v060
	.byte	W12
	.byte	W04
	.byte			As2, v032
	.byte	W15
	.byte	FINE
    
	mAlignWord
	.global song545
song545:	@ 0x082B10EC
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song545_1		@ track
	mPtr	song545_2		@ track
