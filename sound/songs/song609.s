	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song609_1
song609_1:	@ 0x082B1F24
	.byte	KEYSH	, 0
song609_1_1:
	.byte	TEMPO	, 75
	.byte	VOICE	, 13
	.byte	VOL	, v120
	.byte	BENDR	, 12
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	MOD	, 0
	.byte	PAN	, c_v
	.byte		N01	, En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W06
	.byte			En3, v060
	.byte	W02
	.byte			En4, v100
	.byte	W05
	.byte	GOTO	
		.word	song609_1_1
	.byte	FINE
    
	mAlignWord
	.global song609
song609:	@ 0x082B1F88
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song609_1		@ track
