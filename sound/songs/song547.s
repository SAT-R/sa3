	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song547_1
song547_1:	@ 0x082B1140
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	VOL	, v120
	.byte	BENDR	, 6
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	MOD	, 21
	.byte	PAN	, c_v
	.byte		TIE	, Dn3, v060
	.byte	W72
song547_1_1:
	.byte	W24
	.byte	W72
	.byte	GOTO	
		mPtr	song547_1_1
	.byte	W23
	.byte		EOT	, Dn3
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song547
song547:	@ 0x082B1164
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup003		@ voicegroup/tone

	mPtr	song547_1		@ track
