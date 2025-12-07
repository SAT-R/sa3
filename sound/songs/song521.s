	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song521_1
song521_1:	@ 0x082B0A20
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 61
	.byte	VOL	, v120
	.byte	BENDR	, 17
	.byte	LFOS	, 59
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte	MOD	, 8
	.byte		N06	, Dn6, v127
	.byte	W06
	.byte		N88	, Fn6
	.byte	W88
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song521
song521:	@ 0x082B0A40
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song521_1		@ track
