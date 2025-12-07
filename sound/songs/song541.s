	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song541_1
song541_1:	@ 0x082B0FE8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 105
	.byte	VOICE	, 33
	.byte	VOL	, v120
	.byte	LFOS	, 83
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 127
	.byte		TIE	, Fs3, v052
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
song541_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		mPtr	song541_1_1
	.byte	W23
	.byte		EOT	, Fs3
	.byte	FINE
    
	mAlignWord
	.global song541
song541:	@ 0x082B100C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song541_1		@ track
