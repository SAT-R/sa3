	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song051_1
song051_1:	@ 0x0828E5FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 126
	.byte	VOL	, v085
	.byte	PAN	, c_v+11
	.byte	W03
	.byte	TEMPO	, 80
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte		N11	, Gs7
	.byte	W11
	.byte		N12	, Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Cs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N12	, Ds4
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
song051_1_2:
	.byte		N11	, Gs7, v127
	.byte	W12
	.byte		N08	, Gs3
	.byte	W08
	.byte		N03	, An3
	.byte	W04
	.byte		N12	, As3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Cs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N12	, Ds4
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N06	, Ds4
	.byte	W07
	.byte		N05	, Fs4
	.byte	W06
	.byte	PEND
song051_1_1:
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte		N11	, Gs7
	.byte	W11
	.byte		N12	, Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Cs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N12	, Ds4
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song051_1_1
song051_1_3:
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_2
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_2
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_2
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_2
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_2
	.byte	PATT	
		.word	song051_1_1
	.byte	PATT	
		.word	song051_1_1
	.byte	GOTO	
		.word	song051_1_3
	.byte	PATT	
		.word	song051_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song051_2
song051_2:	@ 0x0828E74F
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v050
	.byte	PAN	, c_v+18
	.byte	W03
song051_2_1:
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v056
	.byte	W06
	.byte		N03	, Bn6, v024
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
song051_2_3:
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	W96
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
song051_2_2:
	.byte	W12
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v056
	.byte	W06
	.byte		N03	, Bn6, v024
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	PATT	
		.word	song051_2_2
	.byte	W12
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W12
	.byte		N05	, Dn7, v080
	.byte	W06
	.byte			Ds7, v056
	.byte	W12
	.byte			Ds7, v080
	.byte	W06
	.byte		N03	, Dn7, v112
	.byte	W18
	.byte	PATT	
		.word	song051_2_1
	.byte	PATT	
		.word	song051_2_1
	.byte	GOTO	
		.word	song051_2_3
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W18
	.byte		N05	, Ds7, v056
	.byte	W06
	.byte		N03	, Bn6, v024
	.byte	W18
	.byte		N05	, Ds7, v080
	.byte	W06
	.byte		N03	, Bn6, v052
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song051_3
song051_3:	@ 0x0828E8A5
	.byte	KEYSH	, 0
	.byte	VOICE	, 121
	.byte	VOL	, v070
	.byte	PAN	, c_v+18
	.byte	W03
song051_3_1:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
song051_3_3:
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	W96
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
song051_3_2:
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	PATT	
		.word	song051_3_2
	.byte	W96
	.byte	PATT	
		.word	song051_3_1
	.byte	PATT	
		.word	song051_3_1
	.byte	GOTO	
		.word	song051_3_3
	.byte	PATT	
		.word	song051_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song051_4
song051_4:	@ 0x0828E996
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v066
	.byte	PAN	, c_v-6
	.byte	BENDR	, 59
	.byte	W03
song051_4_1:
	.byte		N06	, En1, v120
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En1, v100
	.byte	W06
	.byte			En2, v096
	.byte	W06
	.byte		N05	, En3, v108
	.byte	W06
	.byte		N06	, En1, v120
	.byte	W06
	.byte			Bn1, v108
	.byte	W06
	.byte			En2, v100
	.byte	W06
	.byte			En1, v096
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En1, v120
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3, v116
	.byte	W06
	.byte	PEND
song051_4_2:
	.byte		N06	, Fs1, v120
	.byte	W06
	.byte			Fs2, v108
	.byte	W06
	.byte			Fs1, v100
	.byte	W06
	.byte			Cs2, v096
	.byte	W06
	.byte			Fs3, v108
	.byte	W06
	.byte			Fs1, v120
	.byte	W06
	.byte			Cn2, v108
	.byte	W06
	.byte			Fn2, v100
	.byte	W06
	.byte			Fn1, v096
	.byte	W06
	.byte			Fn3, v108
	.byte	W06
	.byte			Fn1, v120
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Fn1, v112
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Fn3, v116
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
song051_4_10:
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
song051_4_3:
	.byte	VOL	, v066
	.byte	BENDR	, 59
	.byte		N06	, En1, v120
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En1, v100
	.byte	W06
	.byte			En2, v096
	.byte	W06
	.byte		N05	, En3, v108
	.byte	W06
	.byte		N06	, En1, v120
	.byte	W06
	.byte			Bn1, v108
	.byte	W06
	.byte			En2, v100
	.byte	W06
	.byte			En1, v096
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En1, v120
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3, v116
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_3
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_3
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_3
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_3
	.byte	PATT	
		.word	song051_4_2
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
song051_4_4:
	.byte	VOL	, v066
	.byte	BENDR	, 59
	.byte		N06	, An1, v120
	.byte	W06
	.byte			An2, v108
	.byte	W06
	.byte			An1, v100
	.byte	W06
	.byte			An2, v096
	.byte	W06
	.byte		N05	, An1, v108
	.byte	W06
	.byte		N06	, An1, v120
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En3, v100
	.byte	W06
	.byte			An1, v096
	.byte	W06
	.byte			An2, v108
	.byte	W06
	.byte			An1, v120
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			An2, v116
	.byte	W06
	.byte	PEND
song051_4_5:
	.byte		N06	, An1, v120
	.byte	W06
	.byte			An2, v108
	.byte	W06
	.byte			An1, v100
	.byte	W06
	.byte			An2, v096
	.byte	W06
	.byte		N05	, An1, v108
	.byte	W06
	.byte		N06	, An1, v120
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En3, v100
	.byte	W06
	.byte			An1, v096
	.byte	W06
	.byte			An2, v108
	.byte	W06
	.byte			An1, v120
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte	PEND
song051_4_6:
	.byte		N06	, En1, v120
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En1, v100
	.byte	W06
	.byte			En2, v096
	.byte	W06
	.byte		N05	, En1, v108
	.byte	W06
	.byte		N06	, En1, v120
	.byte	W06
	.byte			Bn1, v108
	.byte	W06
	.byte			Bn2, v100
	.byte	W06
	.byte			En1, v096
	.byte	W06
	.byte			En2, v108
	.byte	W06
	.byte			En1, v120
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			En2, v116
	.byte	W06
	.byte	PEND
	.byte			Gn1, v120
	.byte	W06
	.byte			Gn2, v108
	.byte	W06
	.byte			Gn1, v100
	.byte	W06
	.byte			Gn2, v096
	.byte	W06
	.byte		N05	, Gn1, v108
	.byte	W06
	.byte		N06	, Gn1, v120
	.byte	W06
	.byte			Dn2, v108
	.byte	W06
	.byte			Dn3, v100
	.byte	W06
	.byte			Bn1, v096
	.byte	W06
	.byte			Bn2, v108
	.byte	W06
	.byte			Bn1, v120
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1, v112
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Bn2, v116
	.byte	W06
	.byte	PATT	
		.word	song051_4_4
	.byte	PATT	
		.word	song051_4_5
	.byte	PATT	
		.word	song051_4_6
	.byte		N06	, Fs1, v120
	.byte	W06
	.byte			Fs2, v108
	.byte	W06
	.byte			Fs1, v100
	.byte	W06
	.byte			Fs2, v096
	.byte	W06
	.byte		N05	, Fs1, v108
	.byte	W06
	.byte		N06	, Fs1, v120
	.byte	W06
	.byte			Cs2, v108
	.byte	W06
	.byte			Cs3, v100
	.byte	W06
	.byte			Bn1, v096
	.byte	W06
	.byte			Bn1, v108
	.byte	W06
	.byte			An1, v120
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Bn1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte	W01
	.byte	VOL	, v076
	.byte		N05	, En1, v112
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			En1
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			En1
	.byte	W40
	.byte	W01
song051_4_8:
	.byte	W01
	.byte		N05	, Fs1, v112
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Fs1
	.byte	W18
	.byte			An1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			An1
	.byte	W18
	.byte			Cn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Cn2
	.byte	W05
	.byte	PEND
song051_4_7:
	.byte	W01
	.byte		N05	, En1, v112
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			En1
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			En1
	.byte	W40
	.byte	W01
	.byte	PEND
song051_4_9:
	.byte	W01
	.byte		N05	, Fs1, v112
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En1
	.byte	W06
	.byte			Fs1
	.byte	W18
	.byte			Ds1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte			Ds1
	.byte	W40
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song051_4_7
	.byte	PATT	
		.word	song051_4_8
	.byte	PATT	
		.word	song051_4_7
	.byte	PATT	
		.word	song051_4_9
	.byte	PATT	
		.word	song051_4_1
	.byte	PATT	
		.word	song051_4_2
	.byte	GOTO	
		.word	song051_4_10
	.byte	PATT	
		.word	song051_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song051_5
song051_5:	@ 0x0828EC33
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	VOL	, v066
	.byte	PAN	, c_v-9
	.byte	W03
	.byte		N48	, Bn3, v088
	.byte	W19
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W05
	.byte		10
	.byte	W13
	.byte		6
	.byte	W01
	.byte		0
	.byte	W02
	.byte		N48	, Dn4
	.byte	W18
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W04
	.byte		6
	.byte	W05
	.byte		8
	.byte	W15
	.byte		3
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N48	, Cs4
	.byte	W19
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W03
	.byte		10
	.byte	W12
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, En4
	.byte	W20
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W07
	.byte		10
	.byte	W05
	.byte		12
	.byte	W06
	.byte		8
	.byte	W01
	.byte		5
	.byte	W01
	.byte	W96
song051_5_1:
	.byte	W60
	.byte		N04	, Bn2, v080
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte		N07	, Fs3
	.byte	W07
	.byte		N05	, Bn3
	.byte	W05
	.byte		N04	, Cn4
	.byte	W04
	.byte		N06	, Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte	PEND
song051_5_2:
	.byte		N60	, Fs4, v080
	.byte	W24
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W04
	.byte		6
	.byte	W11
	.byte		8
	.byte	W12
	.byte		6
	.byte	W02
	.byte		0
	.byte	W03
	.byte		N04	, En4
	.byte	W04
	.byte		N05	, Fn4
	.byte	W05
	.byte		N04	, Fs4
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte		N05	, En4
	.byte	W05
	.byte			Bn3
	.byte	W06
	.byte		N08	, Fs3
	.byte	W08
	.byte	PEND
song051_5_3:
	.byte		N06	, Cn4, v080
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N56	, Cn3
	.byte	W09
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W04
	.byte		6
	.byte	W07
	.byte		8
	.byte	W28
	.byte		3
	.byte	W01
	.byte		0
	.byte	W04
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song051_5_1
song051_5_4:
	.byte		N60	, Fs4, v080
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W08
	.byte		5
	.byte	W12
	.byte		7
	.byte	W07
	.byte		1
	.byte	W02
	.byte		0
	.byte		N04	, En4
	.byte	W04
	.byte		N05	, Fn4
	.byte	W05
	.byte		N04	, Fs4
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte		N05	, En4
	.byte	W05
	.byte			Bn3
	.byte	W06
	.byte		N08	, Dn4
	.byte	W08
	.byte	PEND
song051_5_5:
	.byte		N06	, Gs4, v080
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N56	, Cn4
	.byte	W15
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W07
	.byte		6
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte	PEND
	.byte		N60	, Bn4, v088
	.byte	W36
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W13
	.byte		2
	.byte	W02
	.byte		0
	.byte		N24	, En4
	.byte	W24
	.byte		N12	, Bn4
	.byte	W12
	.byte		N48	, As4
	.byte	W19
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W04
	.byte		6
	.byte	W04
	.byte		8
	.byte	W14
	.byte		5
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N48	, An4
	.byte	W22
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W03
	.byte		7
	.byte	W02
	.byte		10
	.byte	W13
	.byte		5
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, Bn4
	.byte	W28
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W07
	.byte		2
	.byte	W01
	.byte		0
	.byte	W05
	.byte		N48	, Dn5
	.byte	W20
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W04
	.byte		6
	.byte	W07
	.byte		8
	.byte	W12
	.byte		2
	.byte	W02
	.byte		0
	.byte		N48	, Cs5
	.byte	W21
	.byte	MOD	, 2
	.byte	W02
	.byte		5
	.byte	W06
	.byte		7
	.byte	W15
	.byte		0
	.byte	W04
	.byte		N48	, Cn5
	.byte	W17
	.byte	MOD	, 2
	.byte	W02
	.byte		5
	.byte	W03
	.byte		7
	.byte	W04
	.byte		10
	.byte	W16
	.byte		7
	.byte	W01
	.byte		2
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N60	, Bn4
	.byte	W24
	.byte	W03
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W03
	.byte		7
	.byte	W04
	.byte		10
	.byte	W14
	.byte		6
	.byte	W01
	.byte		1
	.byte	W01
	.byte		0
	.byte	W06
	.byte		N24	, En4
	.byte	W24
	.byte		N12	, Bn4
	.byte	W12
	.byte		N48	, As4
	.byte	W18
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W04
	.byte		10
	.byte	W10
	.byte		7
	.byte	W01
	.byte		3
	.byte	W01
	.byte		1
	.byte	W02
	.byte		0
	.byte	W05
	.byte		N48	, An4
	.byte	W17
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W02
	.byte		6
	.byte	W06
	.byte		8
	.byte	W14
	.byte		5
	.byte	W01
	.byte		1
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, Bn4
	.byte	W19
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W05
	.byte		10
	.byte	W13
	.byte		6
	.byte	W01
	.byte		0
	.byte	W02
	.byte		N48	, Dn5
	.byte	W18
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W04
	.byte		6
	.byte	W05
	.byte		8
	.byte	W15
	.byte		3
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N48	, Cs5
	.byte	W19
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W03
	.byte		10
	.byte	W12
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, En5
	.byte	W20
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W07
	.byte		10
	.byte	W05
	.byte		12
	.byte	W06
	.byte		8
	.byte	W01
	.byte		5
	.byte	W01
	.byte	W96
	.byte	PATT	
		.word	song051_5_1
	.byte	PATT	
		.word	song051_5_2
	.byte	PATT	
		.word	song051_5_3
	.byte	W96
	.byte	PATT	
		.word	song051_5_1
	.byte	PATT	
		.word	song051_5_4
	.byte	PATT	
		.word	song051_5_5
song051_5_6:
	.byte	W12
	.byte		N03	, Gn5, v080
	.byte	W12
	.byte		N12	, Fs5
	.byte	W12
	.byte		N03	, Gn5
	.byte	W12
	.byte		N48	, En5
	.byte	W48
	.byte	PEND
song051_5_7:
	.byte		N36	, Dn5, v080
	.byte	W36
	.byte		N11	, Cn5
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N12	, Bn4
	.byte	W12
	.byte		N03	, Cn5
	.byte	W12
	.byte	PEND
	.byte		N48	, Bn4
	.byte	W60
	.byte		N03	, Dn5
	.byte	W12
	.byte		N12	, Cn5
	.byte	W12
	.byte		N03	, An4
	.byte	W12
	.byte		N48	, Gn4
	.byte	W48
	.byte			Dn5
	.byte	W48
	.byte	PATT	
		.word	song051_5_6
	.byte	PATT	
		.word	song051_5_7
	.byte		N48	, Bn4, v080
	.byte	W60
	.byte		N03	, Dn5
	.byte	W12
	.byte		N12	, Cs5
	.byte	W12
	.byte		N03	, Dn5
	.byte	W12
	.byte		N48	, Fs5
	.byte	W48
	.byte			An5
	.byte	W48
	.byte	W96
song051_5_8:
	.byte	W78
	.byte		N06	, Ds4, v080
	.byte	W05
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N60	, Fs4
	.byte	W01
	.byte	PEND
	.byte	MOD	, 0
	.byte	VOL	, v085
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W08
	.byte		5
	.byte	W12
	.byte		7
	.byte	W07
	.byte		1
	.byte	W02
	.byte		0
	.byte		N04	
	.byte	W04
	.byte		N05	, Gn4
	.byte	W05
	.byte		N04	, Fs4
	.byte	W04
	.byte			Ds4
	.byte	W04
	.byte		N06	, Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N07	, As3
	.byte	W07
	.byte		N06	, An4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N56	, Fn3
	.byte	W15
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W07
	.byte		6
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte	W96
	.byte	PATT	
		.word	song051_5_8
	.byte	MOD	, 0
	.byte	VOL	, v085
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W08
	.byte		5
	.byte	W12
	.byte		7
	.byte	W07
	.byte		1
	.byte	W02
	.byte		0
	.byte		N04	, An4, v080
	.byte	W04
	.byte		N05	, As4
	.byte	W05
	.byte		N04	, An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte		N05	, Fn4
	.byte	W05
	.byte			Cs4
	.byte	W06
	.byte		N08	, Dn4
	.byte	W08
	.byte		N06	, Fs5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte		N56	, Dn4
	.byte	W15
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W07
	.byte		6
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte		0
	.byte	W96
	.byte	PATT	
		.word	song051_5_1
	.byte	GOTO	
		.word	song051_5_2
	.byte	PATT	
		.word	song051_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song051_6
song051_6:	@ 0x0828EF2E
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v080
	.byte	PAN	, c_v+16
	.byte	W03
song051_6_2:
	.byte		N48	, Gn3, v112
	.byte	W48
	.byte			Bn3
	.byte	W48
	.byte	PEND
song051_6_6:
	.byte		N48	, As3, v112
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte	PEND
song051_6_1:
	.byte		N60	, Bn3, v112
	.byte	W60
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
song051_6_11:
	.byte		N48	, As3, v112
	.byte	W48
	.byte		N44	, An3
	.byte	W48
	.byte	PEND
song051_6_12:
	.byte		N44	, Bn3, v112
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte			Cs4
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte	PATT	
		.word	song051_6_1
song051_6_3:
	.byte		N48	, As3, v112
	.byte	W48
	.byte			An3
	.byte	W48
	.byte	PEND
song051_6_7:
	.byte		N48	, Bn3, v112
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte	PEND
song051_6_8:
	.byte		N48	, Cs4, v112
	.byte	W48
	.byte			En4
	.byte	W48
	.byte	PEND
song051_6_4:
	.byte		N60	, Gn3, v112
	.byte	W60
	.byte		N24	, Bn2
	.byte	W24
	.byte		N12	, Gn3
	.byte	W12
	.byte	PEND
song051_6_5:
	.byte		N48	, Fs3, v112
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song051_6_2
	.byte	PATT	
		.word	song051_6_3
	.byte	PATT	
		.word	song051_6_4
	.byte	PATT	
		.word	song051_6_5
	.byte	PATT	
		.word	song051_6_2
	.byte	PATT	
		.word	song051_6_6
	.byte	PATT	
		.word	song051_6_1
	.byte	PATT	
		.word	song051_6_3
	.byte	PATT	
		.word	song051_6_7
	.byte		N48	, Cs4, v112
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte	PATT	
		.word	song051_6_1
	.byte	PATT	
		.word	song051_6_3
	.byte	PATT	
		.word	song051_6_7
	.byte	PATT	
		.word	song051_6_8
song051_6_9:
	.byte	W12
	.byte		N03	, Cn4, v112
	.byte	W12
	.byte		N12	, Bn3
	.byte	W12
	.byte		N03	, Cn4
	.byte	W12
	.byte		N48	, Gn3
	.byte	W48
	.byte	PEND
song051_6_10:
	.byte		N36	, Fs3, v112
	.byte	W36
	.byte		N11	, En3
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N12	, Dn3
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte	PEND
	.byte		N48	, Dn3
	.byte	W60
	.byte		N03	, Fs3
	.byte	W12
	.byte		N12	, En3
	.byte	W12
	.byte		N03	, Cn3
	.byte	W12
	.byte		N48	, Cs3
	.byte	W48
	.byte			Fs3
	.byte	W48
	.byte	PATT	
		.word	song051_6_9
	.byte	PATT	
		.word	song051_6_10
	.byte		N48	, Dn3, v112
	.byte	W60
	.byte		N03	, Fs3
	.byte	W12
	.byte		N12	, Fn3
	.byte	W12
	.byte		N03	, Fs3
	.byte	W12
	.byte		N48	, Bn3
	.byte	W48
	.byte			Ds4
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song051_6_1
	.byte	PATT	
		.word	song051_6_11
	.byte	GOTO	
		.word	song051_6_12
	.byte		N44	, Bn3, v112
	.byte	W48
	.byte			Dn4
	.byte	W44
	.byte	W03
	.byte	FINE

	@********************** Track  7 **********************@

	.global song051_7
song051_7:	@ 0x0828F040
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v083
	.byte	PAN	, c_v+26
	.byte	W03
song051_7_4:
	.byte		N48	, En1, v072
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte	PEND
song051_7_1:
	.byte		N48	, As1, v072
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	PEND
song051_7_2:
	.byte		N60	, Gn1, v072
	.byte	W60
	.byte		N24	, Bn0
	.byte	W24
	.byte		N12	, Gn1
	.byte	W12
	.byte	PEND
song051_7_3:
	.byte		N48	, Fs1, v072
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte	PEND
song051_7_7:
	.byte		N48	, Gn1, v072
	.byte	W48
	.byte			Bn1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song051_7_1
	.byte	PATT	
		.word	song051_7_2
	.byte	PATT	
		.word	song051_7_3
	.byte	PATT	
		.word	song051_7_4
	.byte	PATT	
		.word	song051_7_3
song051_7_5:
	.byte		N60	, En1, v072
	.byte	W60
	.byte		N24	, Bn0
	.byte	W24
	.byte		N12	, En1
	.byte	W12
	.byte	PEND
song051_7_6:
	.byte		N48	, Cs1, v072
	.byte	W48
	.byte			Cn1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song051_7_4
	.byte	PATT	
		.word	song051_7_3
	.byte	PATT	
		.word	song051_7_5
	.byte	PATT	
		.word	song051_7_6
	.byte	PATT	
		.word	song051_7_4
	.byte	PATT	
		.word	song051_7_1
	.byte	PATT	
		.word	song051_7_2
	.byte	PATT	
		.word	song051_7_3
	.byte	PATT	
		.word	song051_7_7
	.byte	PATT	
		.word	song051_7_1
	.byte	PATT	
		.word	song051_7_2
	.byte	PATT	
		.word	song051_7_3
	.byte	PATT	
		.word	song051_7_4
	.byte	PATT	
		.word	song051_7_3
song051_7_8:
	.byte		N32	, An0, v120
	.byte	W32
	.byte	W02
	.byte		N42	, Cn1
	.byte	W60
	.byte	W02
	.byte	PEND
song051_7_9:
	.byte		N32	, Ds1, v120
	.byte	W32
	.byte	W02
	.byte		N42	, En1
	.byte	W60
	.byte	W02
	.byte	PEND
	.byte		N32	
	.byte	W32
	.byte	W02
	.byte		N42	, Gn1
	.byte	W60
	.byte	W02
	.byte		N48	, As1
	.byte	W48
	.byte			Bn1
	.byte	W48
	.byte	PATT	
		.word	song051_7_8
	.byte	PATT	
		.word	song051_7_9
	.byte		N32	, Gn1, v120
	.byte	W32
	.byte	W02
	.byte		N42	, Bn1
	.byte	W60
	.byte	W02
	.byte		N48	, Ds2
	.byte	W48
	.byte			Fs2
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song051_7_2
	.byte		N44	, Fs1, v072
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte	GOTO	
		.word	song051_7_7
	.byte	PATT	
		.word	song051_7_7
	.byte	FINE

	@********************** Track  8 **********************@

	.global song051_8
song051_8:	@ 0x0828F137
	.byte	KEYSH	, 0
	.byte	VOICE	, 99
	.byte	VOL	, v066
	.byte	PAN	, c_v+46
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song051_8_4:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song051_8_2:
	.byte	PAN	, c_v+46
	.byte		N03	, Cn2, v076
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte			Cn2
	.byte	W12
	.byte		N03	
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte			Cn2
	.byte	W12
	.byte	PEND
song051_8_1:
	.byte		N03	, Bn1, v076
	.byte	W18
	.byte			Bn2
	.byte	W18
	.byte			Bn1
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			As2
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte			As1
	.byte	W12
	.byte	PEND
song051_8_3:
	.byte		N03	, Cn2, v076
	.byte	W18
	.byte			Cn3
	.byte	W18
	.byte			Cn2
	.byte	W12
	.byte		N03	
	.byte	W18
	.byte		N04	, Cn3
	.byte	W18
	.byte		N03	, Cn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song051_8_1
	.byte	PATT	
		.word	song051_8_2
	.byte	PATT	
		.word	song051_8_1
	.byte	PATT	
		.word	song051_8_3
	.byte	PATT	
		.word	song051_8_1
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song051_8_4
	.byte	FINE

	@********************** Track  9 **********************@

	.global song051_9
song051_9:	@ 0x0828F1B8
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v085
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	MOD	, 0
	.byte	W03
	.byte		N48	, Bn3, v088
	.byte	W19
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W05
	.byte		10
	.byte	W13
	.byte		6
	.byte	W01
	.byte		0
	.byte	W02
	.byte		N48	, Dn4
	.byte	W18
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W04
	.byte		6
	.byte	W05
	.byte		8
	.byte	W15
	.byte		3
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N48	, Cs4
	.byte	W19
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W03
	.byte		10
	.byte	W12
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, En4
	.byte	W20
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W07
	.byte		10
	.byte	W05
	.byte		12
	.byte	W06
	.byte		8
	.byte	W01
	.byte		5
	.byte	W01
	.byte	W96
song051_9_1:
	.byte	W60
	.byte		N04	, Bn2, v080
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte		N07	, Fs3
	.byte	W07
	.byte		N05	, Bn3
	.byte	W05
	.byte		N04	, Cn4
	.byte	W04
	.byte		N06	, Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte	PEND
song051_9_2:
	.byte		N60	, Fs4, v080
	.byte	W24
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W04
	.byte		6
	.byte	W11
	.byte		8
	.byte	W12
	.byte		6
	.byte	W02
	.byte		0
	.byte	W03
	.byte		N04	, En4
	.byte	W04
	.byte		N05	, Fn4
	.byte	W05
	.byte		N04	, Fs4
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte		N05	, En4
	.byte	W05
	.byte			Bn3
	.byte	W06
	.byte		N08	, Fs3
	.byte	W08
	.byte	PEND
song051_9_3:
	.byte		N06	, Cn4, v080
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N56	, Cn3
	.byte	W09
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W04
	.byte		6
	.byte	W07
	.byte		8
	.byte	W28
	.byte		3
	.byte	W01
	.byte		0
	.byte	W04
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song051_9_1
song051_9_4:
	.byte		N60	, Fs4, v080
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W08
	.byte		5
	.byte	W12
	.byte		7
	.byte	W07
	.byte		1
	.byte	W02
	.byte		0
	.byte		N04	, En4
	.byte	W04
	.byte		N05	, Fn4
	.byte	W05
	.byte		N04	, Fs4
	.byte	W04
	.byte			Fn4
	.byte	W04
	.byte		N05	, En4
	.byte	W05
	.byte			Bn3
	.byte	W06
	.byte		N08	, Dn4
	.byte	W08
	.byte	PEND
song051_9_5:
	.byte		N06	, Gs4, v080
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N56	, Cn4
	.byte	W15
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W07
	.byte		6
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte	PEND
	.byte		N60	, Bn4, v088
	.byte	W36
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W13
	.byte		2
	.byte	W02
	.byte		0
	.byte		N24	, En4
	.byte	W24
	.byte		N12	, Bn4
	.byte	W12
	.byte		N48	, As4
	.byte	W19
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W04
	.byte		6
	.byte	W04
	.byte		8
	.byte	W14
	.byte		5
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N48	, An4
	.byte	W22
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W03
	.byte		7
	.byte	W02
	.byte		10
	.byte	W13
	.byte		5
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, Bn4
	.byte	W28
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W07
	.byte		2
	.byte	W01
	.byte		0
	.byte	W05
	.byte		N48	, Dn5
	.byte	W20
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W04
	.byte		6
	.byte	W07
	.byte		8
	.byte	W12
	.byte		2
	.byte	W02
	.byte		0
	.byte		N48	, Cs5
	.byte	W21
	.byte	MOD	, 2
	.byte	W02
	.byte		5
	.byte	W06
	.byte		7
	.byte	W15
	.byte		0
	.byte	W04
	.byte		N48	, Cn5
	.byte	W17
	.byte	MOD	, 2
	.byte	W02
	.byte		5
	.byte	W03
	.byte		7
	.byte	W04
	.byte		10
	.byte	W16
	.byte		7
	.byte	W01
	.byte		2
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N60	, Bn4
	.byte	W24
	.byte	W03
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W03
	.byte		7
	.byte	W04
	.byte		10
	.byte	W14
	.byte		6
	.byte	W01
	.byte		1
	.byte	W01
	.byte		0
	.byte	W06
	.byte		N24	, En4
	.byte	W24
	.byte		N12	, Bn4
	.byte	W12
	.byte		N48	, As4
	.byte	W18
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W04
	.byte		10
	.byte	W10
	.byte		7
	.byte	W01
	.byte		3
	.byte	W01
	.byte		1
	.byte	W02
	.byte		0
	.byte	W05
	.byte		N48	, An4
	.byte	W17
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W02
	.byte		6
	.byte	W06
	.byte		8
	.byte	W14
	.byte		5
	.byte	W01
	.byte		1
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, Bn4
	.byte	W19
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W05
	.byte		10
	.byte	W13
	.byte		6
	.byte	W01
	.byte		0
	.byte	W02
	.byte		N48	, Dn5
	.byte	W18
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W04
	.byte		6
	.byte	W05
	.byte		8
	.byte	W15
	.byte		3
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N48	, Cs5
	.byte	W19
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W04
	.byte		7
	.byte	W03
	.byte		10
	.byte	W12
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W04
	.byte		N48	, En5
	.byte	W20
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W04
	.byte		7
	.byte	W07
	.byte		10
	.byte	W05
	.byte		12
	.byte	W06
	.byte		8
	.byte	W01
	.byte		5
	.byte	W01
	.byte		0
	.byte	W01
	.byte		0
	.byte	W92
	.byte	W03
	.byte	PATT	
		.word	song051_9_1
	.byte	PATT	
		.word	song051_9_2
	.byte	PATT	
		.word	song051_9_3
	.byte	W96
	.byte	PATT	
		.word	song051_9_1
	.byte	PATT	
		.word	song051_9_4
	.byte	PATT	
		.word	song051_9_5
song051_9_6:
	.byte	W12
	.byte		N03	, Gn4, v080
	.byte	W12
	.byte		N12	, Fs4
	.byte	W12
	.byte		N03	, Gn4
	.byte	W12
	.byte		N48	, En4
	.byte	W48
	.byte	PEND
song051_9_7:
	.byte		N36	, Dn4, v080
	.byte	W36
	.byte		N11	, Cn4
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N12	, Bn3
	.byte	W12
	.byte		N03	, Cn4
	.byte	W12
	.byte	PEND
	.byte		N48	, Bn3
	.byte	W60
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An3
	.byte	W12
	.byte		N48	, Gn3
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte	PATT	
		.word	song051_9_6
	.byte	PATT	
		.word	song051_9_7
	.byte		N48	, Bn3, v080
	.byte	W60
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cs4
	.byte	W12
	.byte		N03	, Dn4
	.byte	W12
	.byte		N48	, Fs4
	.byte	W48
	.byte			An4
	.byte	W48
	.byte	W96
song051_9_8:
	.byte	W78
	.byte		N06	, Ds4, v080
	.byte	W05
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N60	, Fs4
	.byte	W01
	.byte	PEND
	.byte	MOD	, 0
	.byte	VOL	, v085
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W08
	.byte		5
	.byte	W12
	.byte		7
	.byte	W07
	.byte		1
	.byte	W02
	.byte		0
	.byte		N04	
	.byte	W04
	.byte		N05	, Gn4
	.byte	W05
	.byte		N04	, Fs4
	.byte	W04
	.byte			Ds4
	.byte	W04
	.byte		N06	, Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N07	, As3
	.byte	W07
	.byte		N06	, An4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N56	, Fn3
	.byte	W15
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W07
	.byte		6
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte	W96
	.byte	PATT	
		.word	song051_9_8
	.byte	MOD	, 0
	.byte	VOL	, v085
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W08
	.byte		5
	.byte	W12
	.byte		7
	.byte	W07
	.byte		1
	.byte	W02
	.byte		0
	.byte		N04	, An4, v080
	.byte	W04
	.byte		N05	, As4
	.byte	W05
	.byte		N04	, An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte		N05	, Fn4
	.byte	W05
	.byte			Cs4
	.byte	W06
	.byte		N08	, Dn4
	.byte	W08
	.byte		N06	, Fs5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte		N56	, Dn4
	.byte	W15
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W07
	.byte		6
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W08
	.byte		0
	.byte	W96
	.byte	PATT	
		.word	song051_9_1
	.byte	GOTO	
		.word	song051_9_2
	.byte	PATT	
		.word	song051_9_2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song051_10
song051_10:	@ 0x0828F4BD
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	VOL	, v076
	.byte	PAN	, c_v+11
	.byte	W03
	.byte		N48	, Cn3, v120
	.byte	W48
	.byte			En3, v124
	.byte	W48
	.byte			Ds3
	.byte	W48
	.byte			Dn3, v116
	.byte	W48
	.byte		N96	, Cn3, v096
	.byte	W96
song051_10_1:
	.byte		N03	, As2, v096
	.byte	W03
	.byte		N44	, Bn2
	.byte	W44
	.byte	W01
	.byte		N28	, As2
	.byte	W28
	.byte	W01
	.byte		N02	, Gs2, v116
	.byte	W02
	.byte		N01	, Gn2
	.byte	W02
	.byte		N02	, Fn2
	.byte	W02
	.byte		N01	, En2
	.byte	W01
	.byte			Dn2
	.byte	W01
	.byte			Cn2
	.byte	W01
	.byte			Bn1
	.byte	W02
	.byte			An1
	.byte	W01
	.byte			Gn1
	.byte	W01
	.byte			Fn1
	.byte	W01
	.byte			En1
	.byte	W01
	.byte			Dn1
	.byte	W01
	.byte			Bn0
	.byte		N01	, Cn1
	.byte	W01
	.byte			An0
	.byte	W01
	.byte			Gn0
	.byte	W01
	.byte	PEND
song051_10_5:
	.byte	W96
song051_10_2:
	.byte	W72
	.byte	W01
	.byte		N01	, Bn0, v116
	.byte	W02
	.byte			Cn1
	.byte	W01
	.byte			Dn1
	.byte	W01
	.byte			En1
	.byte	W02
	.byte			Fn1
	.byte	W01
	.byte			Gn1
	.byte	W01
	.byte			An1
	.byte	W01
	.byte			Bn1
	.byte	W02
	.byte			Cn2
	.byte	W01
	.byte			Dn2
	.byte	W01
	.byte			En2
	.byte	W01
	.byte			Fn2
	.byte	W01
	.byte			Gn2
	.byte	W02
	.byte			An2
	.byte	W01
	.byte			Bn2
	.byte	W01
	.byte		N03	, Cn3
	.byte	W04
	.byte	PEND
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song051_10_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song051_10_1
	.byte	W96
	.byte	PATT	
		.word	song051_10_2
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song051_10_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song051_10_2
	.byte		N96	, Cn3, v096
	.byte	W96
song051_10_3:
	.byte		N03	, As2, v096
	.byte	W03
	.byte		N44	, Bn2
	.byte	W44
	.byte	W01
	.byte		N28	, As2
	.byte	W24
	.byte		N01	, An0, v100
	.byte	W01
	.byte			Bn0, v096
	.byte	W01
	.byte			Cn1, v092
	.byte	W01
	.byte			Dn1, v100
	.byte	W01
	.byte			En1
	.byte	W02
	.byte			Fn1, v096
	.byte	W01
	.byte			Gn1, v100
	.byte	W01
	.byte			An1, v096
	.byte	W01
	.byte			Bn1, v092
	.byte	W02
	.byte			Cn2
	.byte	W01
	.byte			Dn2, v096
	.byte	W02
	.byte			En2, v088
	.byte	W01
	.byte			Fn2, v092
	.byte	W02
	.byte			Gn2, v080
	.byte	W01
	.byte			An2, v084
	.byte	W02
	.byte		N03	, Bn2, v080
	.byte	W04
	.byte	PEND
song051_10_4:
	.byte		N48	, Cn3, v096
	.byte	W48
	.byte			Fn2
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song051_10_3
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song051_10_3
	.byte	PATT	
		.word	song051_10_4
	.byte		N36	, Bn2, v096
	.byte	W36
	.byte			As2
	.byte	W30
	.byte		N01	, BnM1, v116
	.byte	W01
	.byte			Cn0
	.byte	W01
	.byte			Dn0
	.byte	W01
	.byte			En0
	.byte	W01
	.byte			Fn0
	.byte	W01
	.byte			Gn0
	.byte	W01
	.byte			An0, v120
	.byte	W01
	.byte			Bn0, v116
	.byte	W01
	.byte			Cn1, v112
	.byte	W01
	.byte			Dn1, v120
	.byte	W01
	.byte			En1
	.byte	W02
	.byte			Fn1, v116
	.byte	W01
	.byte			Gn1, v120
	.byte	W01
	.byte			An1, v116
	.byte	W01
	.byte			Bn1, v112
	.byte	W02
	.byte			Cn2
	.byte	W01
	.byte			Dn2, v116
	.byte	W02
	.byte			En2, v108
	.byte	W01
	.byte			Fn2, v112
	.byte	W02
	.byte			Gn2, v100
	.byte	W01
	.byte			An2, v104
	.byte	W02
	.byte		N03	, Bn2, v100
	.byte	W04
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song051_10_1
	.byte	GOTO	
		.word	song051_10_5
	.byte	FINE

	@********************** Track  11 **********************@

	.global song051_11
song051_11:	@ 0x0828F614
	.byte	KEYSH	, 0
	.byte	VOICE	, 105
	.byte	VOL	, v060
	.byte	PAN	, c_v-31
	.byte	BENDR	, 12
	.byte	W03
song051_11_5:
	.byte		N21	, Cn3, v060
	.byte	W36
	.byte		N21	
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte	PEND
song051_11_6:
	.byte		N23	, Dn3, v080
	.byte	W36
	.byte		N36	, Cs3
	.byte	W60
	.byte	PEND
song051_11_1:
	.byte		N28	, Cn3, v060
	.byte	W36
	.byte		N44	
	.byte	W60
	.byte	PEND
song051_11_2:
	.byte		N36	, Dn3, v080
	.byte	W48
	.byte			Cs3
	.byte	W48
	.byte	PEND
song051_11_3:
	.byte		N30	, Cn3, v060
	.byte	W36
	.byte		N40	
	.byte	W60
	.byte	PEND
song051_11_4:
	.byte		N42	, Dn3, v080
	.byte	W48
	.byte		N40	, Cs3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song051_11_1
	.byte	PATT	
		.word	song051_11_2
	.byte	PATT	
		.word	song051_11_3
	.byte	PATT	
		.word	song051_11_4
	.byte	PATT	
		.word	song051_11_5
	.byte	PATT	
		.word	song051_11_6
	.byte	PATT	
		.word	song051_11_5
	.byte	PATT	
		.word	song051_11_6
	.byte	PATT	
		.word	song051_11_5
	.byte	PATT	
		.word	song051_11_6
	.byte	PATT	
		.word	song051_11_5
	.byte	PATT	
		.word	song051_11_6
	.byte	PATT	
		.word	song051_11_1
	.byte	PATT	
		.word	song051_11_2
	.byte	PATT	
		.word	song051_11_3
	.byte	PATT	
		.word	song051_11_4
	.byte	PATT	
		.word	song051_11_1
	.byte	PATT	
		.word	song051_11_2
	.byte	PATT	
		.word	song051_11_3
	.byte	PATT	
		.word	song051_11_4
song051_11_7:
	.byte		N21	, Cn3, v080
	.byte	W36
	.byte		N21	
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte	PEND
song051_11_8:
	.byte		N21	, Cn3, v080
	.byte	W36
	.byte			Ds3
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte	PEND
song051_11_9:
	.byte		N21	, Cn3, v080
	.byte	W36
	.byte			Gn2
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte		N21	, Ds3
	.byte	W36
	.byte			Dn3
	.byte	W36
	.byte		N11	, As2
	.byte	W24
	.byte	PATT	
		.word	song051_11_7
	.byte	PATT	
		.word	song051_11_8
	.byte	PATT	
		.word	song051_11_9
	.byte		N21	, Dn3, v080
	.byte	W36
	.byte			Fn3
	.byte	W36
	.byte		N11	, As2
	.byte	W24
song051_11_10:
	.byte		N32	, Cn3, v080
	.byte	W36
	.byte		N32	
	.byte	W36
	.byte		N28	, Gn2
	.byte	W24
	.byte	PEND
song051_11_11:
	.byte		N32	, Dn3, v080
	.byte	W36
	.byte			Cs3
	.byte	W36
	.byte		N28	, Gn2
	.byte	W24
	.byte	PEND
song051_11_12:
	.byte		N32	, Cn3, v080
	.byte	W36
	.byte			Gn2
	.byte	W36
	.byte		N28	, Cn3
	.byte	W24
	.byte	PEND
	.byte		N32	, Dn3
	.byte	W36
	.byte			Cs3
	.byte	W36
	.byte		N28	, As2
	.byte	W24
	.byte	PATT	
		.word	song051_11_10
	.byte	PATT	
		.word	song051_11_11
	.byte	PATT	
		.word	song051_11_12
	.byte		N32	, Dn3, v080
	.byte	W36
	.byte			Cs3
	.byte	W36
	.byte		N20	, As2
	.byte	W24
	.byte		N30	, Cn3
	.byte	W36
	.byte		N40	
	.byte	W60
	.byte	PATT	
		.word	song051_11_4
	.byte	GOTO	
		.word	song051_11_3
	.byte		N30	, Cn3, v060
	.byte	W36
	.byte		N40	
	.byte	W40
	.byte	W01
	.byte	FINE

	@********************** Track  12 **********************@

	.global song051_12
song051_12:	@ 0x0828F744
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v060
	.byte	PAN	, c_v-31
	.byte	W03
song051_12_1:
	.byte	W24
	.byte		N12	, Cn3, v080
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
song051_12_2:
	.byte	W24
	.byte		N11	, Dn3, v080
	.byte	W48
	.byte		N10	, Cs3
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
song051_12_8:
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_2
song051_12_3:
	.byte	W24
	.byte		N12	, Cn3, v072
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
song051_12_4:
	.byte	W24
	.byte		N11	, Dn3, v072
	.byte	W48
	.byte		N10	, Cs3
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song051_12_3
	.byte	PATT	
		.word	song051_12_4
	.byte	PATT	
		.word	song051_12_3
	.byte	PATT	
		.word	song051_12_4
	.byte	PATT	
		.word	song051_12_3
	.byte	PATT	
		.word	song051_12_4
	.byte	PATT	
		.word	song051_12_1
song051_12_5:
	.byte	W24
	.byte		N12	, Ds3, v080
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song051_12_6:
	.byte	W24
	.byte		N12	, Cn3, v080
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte		N12	, Cn3
	.byte	W12
	.byte	PEND
song051_12_7:
	.byte	W24
	.byte		N12	, Dn3, v080
	.byte	W36
	.byte		N11	, Cs3
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song051_12_1
	.byte	PATT	
		.word	song051_12_5
	.byte	PATT	
		.word	song051_12_6
	.byte	PATT	
		.word	song051_12_7
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song051_12_8
	.byte	PATT	
		.word	song051_12_1
	.byte	FINE
    
	mAlignWord
	.global song051
song051:	@ 0x0828F838
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup012		@ voicegroup/tone

	.word	song051_1		@ track
	.word	song051_2		@ track
	.word	song051_3		@ track
	.word	song051_4		@ track
	.word	song051_5		@ track
	.word	song051_6		@ track
	.word	song051_7		@ track
	.word	song051_8		@ track
	.word	song051_9		@ track
	.word	song051_10		@ track
	.word	song051_11		@ track
	.word	song051_12		@ track
