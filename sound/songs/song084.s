	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song084_1
song084_1:	@ 0x082AC8CC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 11
	.byte	VOL	, v078
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte	W48
	.byte		N06	, Cn3, v112
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Cs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			As2
	.byte	W06
	.byte	W06
	.byte		N18	, Fs2
	.byte	W18
	.byte		N06	, Fn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		N60	, Cn4
	.byte	W60
	.byte	FINE

	@********************** Track  2 **********************@

	.global song084_2
song084_2:	@ 0x082AC908
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	VOL	, v050
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte	W48
	.byte		N06	, Gs2, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			As2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Fs2
	.byte	W06
	.byte	W06
	.byte		N18	, Cs2
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			As2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Ds3
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N60	, Gs3
	.byte	W60
	.byte	FINE

	@********************** Track  3 **********************@

	.global song084_3
song084_3:	@ 0x082AC941
	.byte	KEYSH	, 0
	.byte	VOICE	, 13
	.byte	VOL	, v067
	.byte	PAN	, c_v
	.byte	BENDR	, 0
	.byte	W48
	.byte		N06	, Ds3, v100
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs3
	.byte	W06
	.byte	W06
	.byte		N18	, As2
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fs2
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			As2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Cs3
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N60	, Gs2
	.byte	W60
	.byte	FINE

	@********************** Track  4 **********************@

	.global song084_4
song084_4:	@ 0x082AC97A
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v108
	.byte	PAN	, c_v
	.byte	BENDR	, 127
	.byte	W06
	.byte		N03	, Cs1, v120
	.byte	W04
	.byte			Cs1, v108
	.byte	W04
	.byte			Cs1, v064
	.byte	W04
	.byte		N05	, Cs1, v100
	.byte		N05	, Fs1, v120
	.byte	W06
	.byte			Cs1, v100
	.byte		N05	, Gs1
	.byte	W06
	.byte			Gn1, v096
	.byte	W06
	.byte			Fs1, v092
	.byte	W06
	.byte			Fn1, v108
	.byte	W06
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
	.byte	W06
	.byte	W06
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
	.global song084
song084:	@ 0x082ACA14
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup011		@ voicegroup/tone

	.word	song084_1		@ track
	.word	song084_2		@ track
	.word	song084_3		@ track
	.word	song084_4		@ track
