	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song085_1
song085_1:	@ 0x082ACA2C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 11
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte		N06	, As2, v112
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Bn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N18	, En2
	.byte	W18
	.byte		N06	, Ds2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N60	, Cs3
	.byte	W54
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song085_2
song085_2:	@ 0x082ACA5D
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v050
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte		N06	, Fs2, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N18	, Bn1
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N60	, Fs2
	.byte	W54
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song085_3
song085_3:	@ 0x082ACA8B
	.byte	KEYSH	, 0
	.byte	VOICE	, 13
	.byte	VOL	, v067
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte		N06	, Cs3, v100
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			En3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N18	, Gs2
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N60	, Fs2
	.byte	W54
	.byte	W06
	.byte	FINE

	@********************** Track  4 **********************@

	.global song085_4
song085_4:	@ 0x082ACAB9
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v108
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte		N06	, Cs1, v127
	.byte		N78	, Cs2, v056
	.byte	W06
	.byte		N06	, Cs1, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte		N12	, Ds1, v036
	.byte	W12
	.byte		N06	, Cs1, v127
	.byte		N12	, Dn1, v036
	.byte	W06
	.byte		N06	, Cn1, v127
	.byte	W06
	.byte			Cs1
	.byte	W06
	.byte			Cn1
	.byte		N06	, Dn1, v036
	.byte	W06
	.byte			Cs1, v127
	.byte	W06
	.byte			Dn1, v036
	.byte		N06	, Gn1, v127
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte		N05	, Cs1
	.byte		N12	, Ds1, v036
	.byte		N40	, Cs2, v056
	.byte	W06
	.byte		N05	, Cn1, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs1
	.byte		N12	, Ds1, v036
	.byte	W12
	.byte		N11	, Cn1, v127
	.byte	W12
	.byte		N52	, Cs1
	.byte		N12	, Ds1, v036
	.byte		N54	, Cs2, v056
	.byte	W54
	.byte	FINE
    
	mAlignWord
	.global song085
song085:	@ 0x082ACB1C
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup011		@ voicegroup/tone

	mPtr	song085_1		@ track
	mPtr	song085_2		@ track
	mPtr	song085_3		@ track
	mPtr	song085_4		@ track
