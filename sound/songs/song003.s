	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song003_1
song003_1:	@ 0x08265778
	.byte	KEYSH	, 0
	.byte	TEMPO	, 78
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte		N11	, Fs5, v120
	.byte	W12
	.byte		N06	, En6
	.byte	W06
	.byte		N05	, Gs6
	.byte	W06
	.byte	TEMPO	, 78
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
song003_1_1:
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_1_1
song003_1_2:
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W06
	.byte		N06	, Fs5, v120
	.byte	W06
	.byte		N12	, En6
	.byte	W12
	.byte		N11	, Fs5
	.byte	W12
	.byte		N06	, En6
	.byte	W06
	.byte		N05	, Gs6
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte		N06	, Fs5, v120
	.byte	W06
	.byte		N05	, En6
	.byte	W06
	.byte		N11	, Gn7, v100
	.byte	W06
	.byte			Fs5, v120
	.byte	W06
	.byte		N12	, En6
	.byte	W12
	.byte		N11	, Fs5
	.byte	W12
	.byte		N06	, En6
	.byte	W06
	.byte		N05	, Gs6
	.byte	W06
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_2
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_2
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_2
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_1
	.byte	PATT	
		mPtr	song003_1_2
song003_1_3:
	.byte		N11	, Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_1_3
	.byte	PATT	
		mPtr	song003_1_3
song003_1_4:
	.byte		N11	, Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W06
	.byte		N06	, Fs5, v120
	.byte	W06
	.byte		N12	, En6
	.byte	W12
	.byte		N11	, Fs5
	.byte	W12
	.byte		N06	, En6
	.byte	W06
	.byte		N05	, Gs6
	.byte	W06
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_1_3
	.byte	PATT	
		mPtr	song003_1_3
	.byte	PATT	
		mPtr	song003_1_3
	.byte	PATT	
		mPtr	song003_1_4
	.byte	PATT	
		mPtr	song003_1_1
	.byte	GOTO	
		mPtr	song003_1_1
	.byte		N11	, Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Fs5, v120
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song003_2
song003_2:	@ 0x082658E8
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v053
	.byte	PAN	, c_v-19
	.byte	W24
song003_2_1:
	.byte		N04	, Ds7, v072
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte	PEND
song003_2_4:
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
	.byte	PATT	
		mPtr	song003_2_1
song003_2_2:
	.byte		N04	, Ds7, v072
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_2
	.byte	PATT	
		mPtr	song003_2_2
song003_2_3:
	.byte	W12
	.byte		N04	, Ds7, v072
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_3
	.byte	PATT	
		mPtr	song003_2_1
	.byte	GOTO	
		mPtr	song003_2_4
	.byte		N04	, Ds7, v072
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W04
	.byte	FINE

	@********************** Track  3 **********************@

	.global song003_3
song003_3:	@ 0x082659BF
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v074
	.byte	PAN	, c_v-19
	.byte	W24
song003_3_1:
	.byte	W12
	.byte		N11	, Fs7, v072
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song003_3_3:
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	PATT	
		mPtr	song003_3_1
	.byte	W84
	.byte		N11	, Gn7, v072
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W84
	.byte		N11	
	.byte	W12
song003_3_2:
	.byte		N11	, Fs7, v072
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Gn7
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_2
	.byte	PATT	
		mPtr	song003_3_1
	.byte	GOTO	
		mPtr	song003_3_3
	.byte	W12
	.byte		N11	, Fs7, v072
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song003_4
song003_4:	@ 0x08265A7D
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-4
	.byte	W24
song003_4_1:
	.byte		N04	, As1, v112
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N10	, An1
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N05	, As1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte		N11	, As1
	.byte	W12
	.byte	PEND
song003_4_2:
	.byte		N05	, Cn2, v112
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, Bn1
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N05	, Cn2
	.byte	W12
	.byte		N03	, Bn1
	.byte	W12
	.byte		N11	, Cn2
	.byte	W12
	.byte	PEND
song003_4_3:
	.byte		N06	, Fn2, v112
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, En2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N04	, Fn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song003_4_4:
	.byte		N05	, Ds2, v112
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn2
	.byte	W06
	.byte		N10	, Ds2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	, Dn2
	.byte	W12
	.byte		N11	, Cn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_4_1
	.byte	PATT	
		mPtr	song003_4_2
	.byte	PATT	
		mPtr	song003_4_3
	.byte	PATT	
		mPtr	song003_4_4
	.byte	PATT	
		mPtr	song003_4_1
	.byte	PATT	
		mPtr	song003_4_2
	.byte	PATT	
		mPtr	song003_4_3
	.byte	PATT	
		mPtr	song003_4_4
	.byte	PATT	
		mPtr	song003_4_1
	.byte	PATT	
		mPtr	song003_4_2
	.byte	PATT	
		mPtr	song003_4_3
	.byte	PATT	
		mPtr	song003_4_4
	.byte		N04	, As2, v112
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N10	, An2
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N05	, As2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N11	, As2
	.byte	W12
	.byte	PATT	
		mPtr	song003_4_2
	.byte	PATT	
		mPtr	song003_4_3
	.byte	PATT	
		mPtr	song003_4_4
	.byte	PATT	
		mPtr	song003_4_1
	.byte	PATT	
		mPtr	song003_4_2
	.byte		N06	, Fn2, v112
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, En2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N04	, Fn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N23	, Ds2
	.byte	W12
	.byte	W12
	.byte		N05	, Dn2
	.byte	W12
	.byte		N04	, Cn2
	.byte	W12
	.byte		N06	, As1
	.byte	W12
	.byte		N08	, Cn2
	.byte	W12
	.byte		N32	, As1
	.byte	W36
song003_4_5:
	.byte		N04	, Ds2, v112
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N10	, Dn2
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N05	, Ds2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N11	, Ds2
	.byte	W12
	.byte	PEND
	.byte		N05	, Dn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, Cs2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N05	, Dn2
	.byte	W12
	.byte		N03	, Cs2
	.byte	W12
	.byte		N11	, Dn2
	.byte	W12
	.byte		N06	, Cn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, Bn1
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N04	, Cn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	, As1
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			An1
	.byte	W06
	.byte		N10	, As1
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	, An1
	.byte	W12
	.byte		N11	, Gn1
	.byte	W12
	.byte			An1
	.byte	W12
	.byte	PATT	
		mPtr	song003_4_5
	.byte		N05	, Gn2, v112
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, Fs2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N05	, Gn2
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N11	, Gn2
	.byte	W12
	.byte		N06	, Fn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, En2
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N04	, Fn2
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			En2
	.byte	W06
	.byte		N10	, Fn2
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N06	, En2
	.byte	W12
	.byte		N11	, Dn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte	PATT	
		mPtr	song003_4_1
	.byte	GOTO	
		mPtr	song003_4_2
	.byte		N05	, Cn2, v112
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N10	, Bn1
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N05	, Cn2
	.byte	W12
	.byte		N03	, Bn1
	.byte	W12
	.byte		N11	, Cn2
	.byte	W11
	.byte	FINE

	@********************** Track  5 **********************@

	.global song003_5
song003_5:	@ 0x08265C3D
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v070
	.byte	PAN	, c_v+56
	.byte	W24
song003_5_5:
	.byte	W12
	.byte		N03	, Gn2, v100
	.byte	W24
	.byte			Gn2, v096
	.byte	W24
	.byte			Gn2, v088
	.byte	W12
	.byte		N11	, Fs2, v080
	.byte	W12
	.byte		N04	, Gn2
	.byte	W12
	.byte	PEND
song003_5_8:
	.byte	W12
	.byte		N03	, An2, v084
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte			An2, v080
	.byte	W24
	.byte			An2, v084
	.byte	W12
	.byte	W12
	.byte			Dn3, v088
	.byte	W24
	.byte			Dn3, v084
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N12	, Cs3, v072
	.byte	W12
	.byte		N03	, Dn3, v084
	.byte	W12
	.byte	W12
	.byte		N04	, Cn3, v080
	.byte	W24
	.byte		N03	, Cn3, v076
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N03	, Bn2
	.byte	W12
	.byte		N11	, An2, v080
	.byte	W12
	.byte		N03	, Bn2, v092
	.byte	W12
song003_5_6:
	.byte	W12
	.byte		N03	, Gn2, v084
	.byte	W24
	.byte			Gn2, v088
	.byte	W24
	.byte			Gn2, v084
	.byte	W12
	.byte		N11	, Fs2, v076
	.byte	W12
	.byte		N03	, Gn2, v092
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			An2, v096
	.byte	W24
	.byte			An2, v088
	.byte	W24
	.byte			An2, v084
	.byte	W24
	.byte			An2, v080
	.byte	W12
song003_5_7:
	.byte	W12
	.byte		N03	, Dn3, v092
	.byte	W24
	.byte			Dn3, v088
	.byte	W24
	.byte			Dn3, v084
	.byte	W12
	.byte		N12	, Cs3
	.byte	W12
	.byte		N03	, Dn3, v080
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			Cn3, v088
	.byte	W24
	.byte		N04	, Cn3, v080
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N03	, Bn2
	.byte	W12
	.byte		N11	, An2, v088
	.byte	W12
	.byte		N04	, Dn2, v092
	.byte	W12
	.byte		N12	, Bn3, v120
	.byte	W12
	.byte		N04	, Gn3, v104
	.byte	W12
	.byte		N03	, En3, v116
	.byte	W12
	.byte		N36	, Dn3, v124
	.byte	W48
	.byte		N23	, Cn4, v104
	.byte	W12
song003_5_1:
	.byte	W12
	.byte		N03	, Bn3, v116
	.byte	W12
	.byte		N04	, Cn4
	.byte	W12
	.byte		N03	, Bn3, v108
	.byte	W12
	.byte		N04	, Cn4, v112
	.byte	W12
	.byte		N18	, Dn4, v120
	.byte	W24
	.byte		N23	, Bn3, v124
	.byte	W12
	.byte	PEND
song003_5_2:
	.byte	W12
	.byte		N03	, Gn3, v112
	.byte	W12
	.byte			En3, v124
	.byte	W12
	.byte		N20	, Dn3, v120
	.byte	W24
	.byte		N21	, Gn3, v104
	.byte	W24
	.byte		N24	, Fn3, v120
	.byte	W12
	.byte	PEND
song003_5_3:
	.byte	W12
	.byte		N03	, En3, v116
	.byte	W12
	.byte		N04	, Fn3, v120
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N24	, Gn3, v112
	.byte	W36
	.byte	PEND
	.byte		N12	, Bn3, v120
	.byte	W12
	.byte		N04	, Gn3, v104
	.byte	W12
	.byte		N03	, En3, v116
	.byte	W12
	.byte		N40	, Dn3, v124
	.byte	W48
	.byte		N23	, Cn4, v104
	.byte	W12
	.byte	PATT	
		mPtr	song003_5_1
	.byte	PATT	
		mPtr	song003_5_2
	.byte	PATT	
		mPtr	song003_5_3
	.byte		N12	, Bn3, v100
	.byte	W12
	.byte		N04	, Gn3, v084
	.byte	W12
	.byte		N03	, En3, v096
	.byte	W12
	.byte		N40	, Dn3, v104
	.byte	W48
	.byte		N23	, Cn4, v084
	.byte	W12
song003_5_4:
	.byte	W12
	.byte		N03	, Bn3, v096
	.byte	W12
	.byte		N04	, Cn4
	.byte	W12
	.byte		N03	, Bn3, v088
	.byte	W12
	.byte		N04	, Cn4, v092
	.byte	W12
	.byte		N18	, Dn4, v100
	.byte	W24
	.byte		N23	, Bn3, v104
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N03	, Gn3, v092
	.byte	W12
	.byte			En3, v104
	.byte	W12
	.byte		N20	, Dn3, v100
	.byte	W24
	.byte		N21	, Gn3, v084
	.byte	W24
	.byte		N24	, Fn3, v100
	.byte	W12
	.byte	W12
	.byte		N03	, En3, v096
	.byte	W12
	.byte		N04	, Fn3, v100
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N18	, Gn3, v092
	.byte	W21
	.byte		N04	, Gn2, v052
	.byte	W04
	.byte		N02	, An2, v084
	.byte	W03
	.byte		N01	, Bn2, v092
	.byte	W01
	.byte			Cs3, v100
	.byte	W03
	.byte			En3, v096
	.byte	W02
	.byte			Fs3, v084
	.byte	W02
	.byte		N12	, Bn3, v100
	.byte	W02
	.byte		N03	, En3, v004
	.byte	W10
	.byte		N04	, Gn3, v084
	.byte	W12
	.byte		N03	, En3, v096
	.byte	W12
	.byte		N40	, Dn3, v104
	.byte	W48
	.byte		N23	, Cn4, v084
	.byte	W12
	.byte	PATT	
		mPtr	song003_5_4
	.byte	W12
	.byte		N03	, Gn3, v092
	.byte	W12
	.byte			En3, v104
	.byte	W12
	.byte		N20	, Dn3, v100
	.byte	W24
	.byte		N21	, Gn3, v084
	.byte	W24
	.byte		N24	, Cn4, v100
	.byte	W12
	.byte	W12
	.byte		N03	, Bn2, v096
	.byte	W12
	.byte		N04	, An2, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N22	, Gn2, v092
	.byte	W36
	.byte	PATT	
		mPtr	song003_5_5
	.byte	W12
	.byte		N03	, Bn2, v084
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte			Bn2, v080
	.byte	W24
	.byte			Bn2, v084
	.byte	W12
	.byte	W12
	.byte			Cn3, v088
	.byte	W24
	.byte			Cn3, v084
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N12	, Bn2, v072
	.byte	W12
	.byte		N03	, Cn3, v084
	.byte	W12
	.byte	W12
	.byte		N04	, Bn2, v080
	.byte	W24
	.byte		N03	, Bn2, v076
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N11	, En2, v080
	.byte	W12
	.byte		N03	, Fs2, v092
	.byte	W12
	.byte	PATT	
		mPtr	song003_5_6
	.byte	W12
	.byte		N03	, Bn2, v096
	.byte	W24
	.byte			Bn2, v088
	.byte	W24
	.byte			Bn2, v084
	.byte	W24
	.byte			Bn2, v080
	.byte	W12
	.byte	PATT	
		mPtr	song003_5_7
	.byte	W12
	.byte		N03	, Dn3, v088
	.byte	W24
	.byte		N04	, Dn3, v080
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N03	, Cn3
	.byte	W12
	.byte		N11	, Bn2, v088
	.byte	W12
	.byte		N04	, Dn2, v092
	.byte	W12
	.byte	PATT	
		mPtr	song003_5_5
	.byte	GOTO	
		mPtr	song003_5_8
	.byte	W12
	.byte		N03	, An2, v084
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte			An2, v080
	.byte	W24
	.byte			An2, v084
	.byte	W03
	.byte	FINE

	@********************** Track  6 **********************@

	.global song003_6
song003_6:	@ 0x08265E75
	.byte	KEYSH	, 0
	.byte	VOICE	, 103
	.byte	VOL	, v070
	.byte	PAN	, c_v-31
	.byte	W24
	.byte	W96
song003_6_4:
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
song003_6_1:
	.byte		N05	, Fs3, v060
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N16	
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N10	
	.byte	W12
	.byte		N08	, Fn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
song003_6_2:
	.byte		N05	, Gs2, v060
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N11	
	.byte	W18
	.byte			Fs2
	.byte	W18
	.byte		N10	, Gs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte	PEND
song003_6_3:
	.byte		N05	, Cs3, v060
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N10	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
	.byte		N05	, Bn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N11	, As2
	.byte	W18
	.byte		N10	, Bn2
	.byte	W12
	.byte		N11	, As2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte	PATT	
		mPtr	song003_6_1
	.byte	PATT	
		mPtr	song003_6_2
	.byte	PATT	
		mPtr	song003_6_3
	.byte		N05	, Bn2, v060
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N06	, Gs2
	.byte	W12
	.byte		N05	, Fs2
	.byte	W06
	.byte		N11	, Gs2
	.byte	W18
	.byte		N10	, Fs2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
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
		mPtr	song003_6_4
	.byte	FINE

	@********************** Track  7 **********************@

	.global song003_7
song003_7:	@ 0x08265F09
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v063
	.byte	PAN	, c_v-31
	.byte	W24
song003_7_1:
	.byte		N05	, Fs2, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
song003_7_2:
	.byte		N05	, Gs2, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte	PEND
song003_7_3:
	.byte		N05	, Cs3, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Cn3
	.byte	W06
	.byte		N17	, Cs3
	.byte	W18
	.byte		N11	, Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
song003_7_4:
	.byte		N05	, Bn2, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	, As2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_7_1
	.byte	PATT	
		mPtr	song003_7_2
	.byte	PATT	
		mPtr	song003_7_3
	.byte	PATT	
		mPtr	song003_7_4
	.byte	PATT	
		mPtr	song003_7_1
	.byte	PATT	
		mPtr	song003_7_2
	.byte	PATT	
		mPtr	song003_7_3
	.byte	PATT	
		mPtr	song003_7_4
	.byte	PATT	
		mPtr	song003_7_1
	.byte	PATT	
		mPtr	song003_7_2
	.byte	PATT	
		mPtr	song003_7_3
	.byte	PATT	
		mPtr	song003_7_4
song003_7_5:
	.byte		N05	, Fs3, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
song003_7_6:
	.byte		N05	, Gs2, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte	PEND
song003_7_7:
	.byte		N05	, Cs3, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
	.byte		N05	, Bn2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N11	, As2
	.byte	W12
	.byte		N17	, Bn2
	.byte	W18
	.byte		N11	, As2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte	PATT	
		mPtr	song003_7_5
	.byte	PATT	
		mPtr	song003_7_6
	.byte	PATT	
		mPtr	song003_7_7
	.byte		N05	, Bn2, v092
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N06	, Gs2
	.byte	W12
	.byte		N05	, Fs2
	.byte	W06
	.byte		N11	, Gs2
	.byte	W12
	.byte		N17	, Fs2
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N17	, Bn2, v100
	.byte	W24
	.byte		N16	, Bn2, v120
	.byte	W24
	.byte		N15	
	.byte	W24
	.byte		N11	, Bn2, v112
	.byte	W12
	.byte		N30	, As2, v096
	.byte	W12
	.byte	W24
	.byte		N15	, As2, v104
	.byte	W24
	.byte		N16	, As2, v108
	.byte	W24
	.byte		N22	, As2, v104
	.byte	W24
	.byte		N18	, Gs2, v116
	.byte	W24
	.byte		N17	, Gs2, v112
	.byte	W24
	.byte		N16	, Gs2, v116
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N28	, Fs2, v108
	.byte	W12
	.byte	W24
	.byte		N17	, Fs2, v112
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N11	, Fs2, v104
	.byte	W12
	.byte			Gs2, v108
	.byte	W12
	.byte			As2, v096
	.byte	W12
	.byte		N20	, Bn2, v108
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N16	, Bn2, v116
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N30	, Ds3, v108
	.byte	W12
	.byte	W24
	.byte		N15	, Ds3, v104
	.byte	W24
	.byte		N16	, Ds3, v116
	.byte	W24
	.byte		N20	, Ds3, v108
	.byte	W24
	.byte		N16	, Cs3, v116
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N28	, Cs3, v120
	.byte	W12
	.byte	W24
	.byte		N17	, Cs3, v112
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N08	, Bn2, v108
	.byte	W12
	.byte			As2, v100
	.byte	W12
	.byte		N11	, Gs2, v112
	.byte	W12
	.byte	PATT	
		mPtr	song003_7_1
	.byte	GOTO	
		mPtr	song003_7_2
	.byte		N05	, Gs2, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N17	
	.byte	W18
	.byte		N17	
	.byte	W18
	.byte		N11	
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gs2
	.byte	W11
	.byte	FINE

	@********************** Track  8 **********************@

	.global song003_8
song003_8:	@ 0x0826609C
	.byte	KEYSH	, 0
	.byte	VOICE	, 76
	.byte	VOL	, v081
	.byte	PAN	, c_v-24
	.byte	W09
	.byte		N04	, As2, v072
	.byte	W04
	.byte		N02	, Cn3, v104
	.byte	W03
	.byte		N01	, Dn3, v112
	.byte	W01
	.byte			En3, v120
	.byte	W02
	.byte			Fn3
	.byte	W01
	.byte			Gn3, v116
	.byte	W02
	.byte			An3, v104
	.byte	W02
song003_8_3:
	.byte		N12	, Dn4, v120
	.byte	W12
	.byte		N04	, As3, v104
	.byte	W12
	.byte		N03	, Gn3, v116
	.byte	W12
	.byte		N40	, Fn3, v124
	.byte	W48
	.byte		N23	, Ds4, v104
	.byte	W12
	.byte	PEND
song003_8_1:
	.byte	W12
	.byte		N03	, Dn4, v116
	.byte	W12
	.byte		N04	, Ds4
	.byte	W12
	.byte		N03	, Dn4, v108
	.byte	W12
	.byte		N04	, Ds4, v112
	.byte	W12
	.byte		N18	, Fn4, v120
	.byte	W24
	.byte		N23	, Dn4, v124
	.byte	W12
	.byte	PEND
song003_8_2:
	.byte	W12
	.byte		N03	, As3, v112
	.byte	W12
	.byte			Gn3, v124
	.byte	W12
	.byte		N20	, Fn3, v120
	.byte	W24
	.byte		N04	, An3, v100
	.byte		N21	, As3, v104
	.byte	W24
	.byte		N24	, Gs3, v120
	.byte	W12
	.byte	PEND
song003_8_4:
	.byte	W12
	.byte		N03	, Gn3, v116
	.byte	W12
	.byte		N04	, Gs3, v120
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N18	, As3, v112
	.byte	W21
	.byte		N04	, As2, v072
	.byte	W04
	.byte		N02	, Cn3, v104
	.byte	W03
	.byte		N01	, Dn3, v112
	.byte	W01
	.byte			En3, v120
	.byte	W02
	.byte			Fn3
	.byte	W01
	.byte			Gn3, v116
	.byte	W02
	.byte			An3, v104
	.byte	W02
	.byte	PEND
song003_8_5:
	.byte		N12	, Dn4, v120
	.byte	W02
	.byte		N03	, Gn3, v004
	.byte	W10
	.byte		N04	, As3, v104
	.byte	W12
	.byte		N03	, Gn3, v116
	.byte	W12
	.byte		N40	, Fn3, v124
	.byte	W48
	.byte		N23	, Ds4, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song003_8_1
	.byte	PATT	
		mPtr	song003_8_2
song003_8_6:
	.byte	W12
	.byte		N03	, Gn3, v116
	.byte	W12
	.byte		N04	, Gs3, v120
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N22	, As3, v112
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song003_8_3
	.byte	PATT	
		mPtr	song003_8_1
	.byte	PATT	
		mPtr	song003_8_2
	.byte	PATT	
		mPtr	song003_8_4
	.byte	PATT	
		mPtr	song003_8_5
	.byte	PATT	
		mPtr	song003_8_1
	.byte	PATT	
		mPtr	song003_8_2
	.byte	PATT	
		mPtr	song003_8_6
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N40	, Gn4, v096
	.byte	W48
	.byte		N12	, Fn4, v108
	.byte	W24
	.byte		N09	, Ds4, v096
	.byte	W12
	.byte		N23	, Dn4, v104
	.byte	W12
	.byte	W12
	.byte		N05	, Ds4, v096
	.byte	W12
	.byte		N04	, Dn4, v112
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte		N23	, As3, v096
	.byte	W24
	.byte		N11	, Cn4, v104
	.byte	W12
	.byte		N12	, As3
	.byte	W12
	.byte	W12
	.byte		N04	, Fn3, v108
	.byte	W12
	.byte		N03	, Gn3, v104
	.byte	W12
	.byte		N04	, As3, v112
	.byte	W12
	.byte		N23	, Cn4, v116
	.byte	W24
	.byte		N04	, As3, v096
	.byte	W12
	.byte		N22	, Dn4, v120
	.byte	W12
	.byte	W12
	.byte		N04	, Ds4, v116
	.byte	W12
	.byte		N03	, Dn4, v124
	.byte	W12
	.byte		N44	, As3, v112
	.byte	W60
	.byte		N42	, Gn4, v104
	.byte	W48
	.byte		N11	, Fn4, v096
	.byte	W24
	.byte		N05	, Ds4, v108
	.byte	W12
	.byte		N24	, Dn4, v116
	.byte	W12
	.byte	W12
	.byte		N04	, Ds4, v104
	.byte	W12
	.byte		N03	, Dn4, v116
	.byte	W12
	.byte			Cn4, v112
	.byte	W12
	.byte		N24	, As3, v108
	.byte	W24
	.byte		N12	, Cn4, v116
	.byte	W12
	.byte		N05	, As3, v104
	.byte	W12
	.byte	W12
	.byte		N03	, Fn3, v100
	.byte	W12
	.byte		N12	, Gn3, v116
	.byte	W12
	.byte		N03	, An3, v112
	.byte	W24
	.byte			An3, v104
	.byte	W12
	.byte		N13	, As3, v108
	.byte	W12
	.byte		N04	, Cn4, v120
	.byte	W12
	.byte	W12
	.byte			Cn4, v116
	.byte	W12
	.byte		N13	, Dn4, v100
	.byte	W12
	.byte		N04	, Ds4, v108
	.byte	W11
	.byte		N23	, Fn4, v116
	.byte	W22
	.byte		N04	, En4, v064
	.byte	W01
	.byte			Dn4, v084
	.byte	W02
	.byte			Cn4, v096
	.byte	W03
	.byte		N03	, Bn3, v088
	.byte	W01
	.byte			An3, v108
	.byte	W02
	.byte			Gn3, v100
	.byte	W01
	.byte			Fn3, v088
	.byte	W01
	.byte			En3, v104
	.byte	W01
	.byte			Dn3, v100
	.byte	W02
	.byte			Cn3, v084
	.byte	W01
	.byte			Bn2, v052
	.byte	W01
	.byte			An2, v072
	.byte	W01
	.byte			Gn2, v048
	.byte	W01
	.byte			Fn2, v072
	.byte	W09
	.byte	PATT	
		mPtr	song003_8_3
	.byte	GOTO	
		mPtr	song003_8_1
	.byte	PATT	
		mPtr	song003_8_1
	.byte	W11
	.byte	FINE

	@********************** Track  9 **********************@

	.global song003_9
song003_9:	@ 0x0826626A
	.byte	KEYSH	, 0
	.byte	VOICE	, 92
	.byte	VOL	, v081
	.byte	PAN	, c_v-6
	.byte	W24
	.byte	W96
song003_9_3:
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
song003_9_1:
	.byte		N12	, Dn3, v120
	.byte	W12
	.byte		N04	, As2, v104
	.byte	W12
	.byte		N03	, Gn2, v116
	.byte	W12
	.byte		N40	, Fn2, v124
	.byte	W48
	.byte		N23	, Ds3, v104
	.byte	W12
	.byte	PEND
song003_9_2:
	.byte	W12
	.byte		N03	, Dn3, v116
	.byte	W12
	.byte		N04	, Ds3
	.byte	W12
	.byte		N03	, Dn3, v108
	.byte	W12
	.byte		N04	, Ds3, v112
	.byte	W12
	.byte		N18	, Fn3, v120
	.byte	W24
	.byte		N23	, Dn3, v124
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N03	, As2, v112
	.byte	W12
	.byte			Gn2, v124
	.byte	W12
	.byte		N20	, Fn2, v120
	.byte	W24
	.byte		N21	, As2, v104
	.byte	W24
	.byte		N24	, Gs2, v120
	.byte	W12
	.byte	W12
	.byte		N03	, Gn2, v116
	.byte	W12
	.byte		N04	, Gs2, v120
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N18	, As2, v112
	.byte	W36
	.byte	PATT	
		mPtr	song003_9_1
	.byte	PATT	
		mPtr	song003_9_2
	.byte	W12
	.byte		N03	, As2, v112
	.byte	W12
	.byte			Gn2, v124
	.byte	W12
	.byte		N20	, Fn2, v120
	.byte	W24
	.byte		N21	, As2, v104
	.byte	W24
	.byte		N24	, Ds3, v120
	.byte	W12
	.byte	W12
	.byte		N03	, Dn3, v116
	.byte	W12
	.byte		N04	, Cn3, v120
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N22	, As2, v112
	.byte	W36
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
		mPtr	song003_9_3
	.byte	FINE

	@********************** Track  10 **********************@

	.global song003_10
song003_10:	@ 0x08266314
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v085
	.byte	PAN	, c_v-34
	.byte	W24
	.byte	W96
song003_10_3:
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
song003_10_1:
	.byte		N05	, Ds2, v092
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte	PEND
song003_10_2:
	.byte		N05	, As1, v092
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Dn1
	.byte	W06
	.byte	PEND
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte	PATT	
		mPtr	song003_10_1
	.byte	PATT	
		mPtr	song003_10_2
	.byte		N05	, Fn2, v092
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte	W96
	.byte	GOTO	
		mPtr	song003_10_3
	.byte	FINE
    
	mAlignWord
	.global song003
song003:	@ 0x08266410
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup008		@ voicegroup/tone

	mPtr	song003_1		@ track
	mPtr	song003_2		@ track
	mPtr	song003_3		@ track
	mPtr	song003_4		@ track
	mPtr	song003_5		@ track
	mPtr	song003_6		@ track
	mPtr	song003_7		@ track
	mPtr	song003_8		@ track
	mPtr	song003_9		@ track
	mPtr	song003_10		@ track
