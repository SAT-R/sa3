	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song580_1
song580_1:	@ 0x082B197C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 44
	.byte	VOL	, v120
	.byte	PAN	, c_v
	.byte		N42	, Cn3, v127
	.byte	W42
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song580_2
song580_2:	@ 0x082B198C
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v120
	.byte	LFOS	, 80
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 25
	.byte		N32	, Gn3, v127
	.byte	W32
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song580
song580:	@ 0x082B19A4
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song580_1		@ track
	.word	song580_2		@ track
