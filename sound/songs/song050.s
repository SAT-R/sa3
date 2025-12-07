	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song050_1
song050_1:	@ 0x0828D4D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 127
	.byte	VOL	, v089
	.byte	PAN	, c_v-44
	.byte	W03
	.byte	TEMPO	, 72
	.byte	W96
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W78
song050_1_1:
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W42
	.byte		N06	
	.byte	W36
	.byte	PEND
song050_1_2:
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W42
	.byte		N06	
	.byte	W18
	.byte		N06	
	.byte	W18
	.byte	PEND
song050_1_4:
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W78
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W78
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W78
song050_1_3:
	.byte	W54
	.byte		N06	, Gs1, v127
	.byte	W30
	.byte			Fn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_3
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	PATT	
		.word	song050_1_1
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W78
	.byte	PATT	
		.word	song050_1_1
	.byte	PATT	
		.word	song050_1_2
	.byte	GOTO	
		.word	song050_1_4
	.byte	W18
	.byte		N06	, Gs1, v127
	.byte	W42
	.byte		N06	
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song050_2
song050_2:	@ 0x0828D5CD
	.byte	KEYSH	, 0
	.byte	VOICE	, 127
	.byte	VOL	, v092
	.byte	PAN	, c_v+61
	.byte	W03
	.byte	W96
	.byte	W36
	.byte		N12	, Fs1, v112
	.byte	W60
song050_2_1:
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W42
	.byte		N12	
	.byte	W18
	.byte	PEND
song050_2_2:
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W54
	.byte		N12	
	.byte	W06
	.byte	PEND
song050_2_3:
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W60
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W60
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	W36
	.byte		N12	
	.byte	W60
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	PATT	
		.word	song050_2_1
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W60
	.byte	PATT	
		.word	song050_2_1
	.byte	PATT	
		.word	song050_2_2
	.byte	GOTO	
		.word	song050_2_3
	.byte	W36
	.byte		N12	, Fs1, v124
	.byte	W42
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  3 **********************@

	.global song050_3
song050_3:	@ 0x0828D6B1
	.byte	KEYSH	, 0
	.byte	VOICE	, 126
	.byte	VOL	, v095
	.byte	PAN	, c_v+11
	.byte	W03
	.byte	W96
song050_3_2:
	.byte		N06	, Gn7, v127
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W06
	.byte		N05	, Dn1
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn1
	.byte	W06
	.byte		N06	, Gn7
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte	PEND
song050_3_1:
	.byte		N06	, Gn7, v127
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte			Gn7
	.byte	W24
	.byte		N06	
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte			Gn7
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song050_3_1
song050_3_5:
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_2
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_2
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_2
song050_3_3:
	.byte		N06	, Gn7, v127
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte			Gn7
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	, Fs1
	.byte	W24
	.byte	PEND
song050_3_4:
	.byte		N06	, Gn7, v127
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte			Gn7
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte		N06	, Gn7
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song050_3_3
	.byte	PATT	
		.word	song050_3_4
	.byte	PATT	
		.word	song050_3_3
	.byte	PATT	
		.word	song050_3_4
	.byte	PATT	
		.word	song050_3_3
	.byte	PATT	
		.word	song050_3_4
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_2
	.byte	PATT	
		.word	song050_3_1
	.byte	PATT	
		.word	song050_3_1
	.byte	GOTO	
		.word	song050_3_5
	.byte		N06	, Gn7, v127
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte			Gn7
	.byte	W24
	.byte		N06	
	.byte	W18
	.byte			Dn1
	.byte	W06
	.byte			Gn7
	.byte	W06
	.byte	FINE

	@********************** Track  4 **********************@

	.global song050_4
song050_4:	@ 0x0828D7DC
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v056
	.byte	PAN	, c_v+18
	.byte	W03
	.byte	W12
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v044
	.byte	W06
	.byte		N03	, Bn6, v016
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W06
song050_4_3:
	.byte	W12
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W12
	.byte		N05	, Dn7, v072
	.byte	W06
	.byte			Ds7, v044
	.byte	W12
	.byte			Ds7, v072
	.byte	W06
	.byte		N03	, Dn7, v100
	.byte	W18
	.byte	PEND
song050_4_1:
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v044
	.byte	W06
	.byte		N03	, Bn6, v016
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song050_4_1
song050_4_4:
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	W96
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
song050_4_2:
	.byte	W12
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v044
	.byte	W06
	.byte		N03	, Bn6, v016
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_2
	.byte	PATT	
		.word	song050_4_3
	.byte	PATT	
		.word	song050_4_1
	.byte	PATT	
		.word	song050_4_1
	.byte	GOTO	
		.word	song050_4_4
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v044
	.byte	W06
	.byte		N03	, Bn6, v016
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W03
	.byte	FINE

	@********************** Track  5 **********************@

	.global song050_5
song050_5:	@ 0x0828D953
	.byte	KEYSH	, 0
	.byte	VOICE	, 121
	.byte	VOL	, v078
	.byte	PAN	, c_v+18
	.byte	W03
	.byte	W96
	.byte	W84
	.byte		N12	, Gn7, v072
	.byte	W12
song050_5_1:
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
	.byte	PATT	
		.word	song050_5_1
song050_5_3:
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	W96
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
song050_5_2:
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
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	PATT	
		.word	song050_5_2
	.byte	W96
	.byte	PATT	
		.word	song050_5_1
	.byte	PATT	
		.word	song050_5_1
	.byte	GOTO	
		.word	song050_5_3
	.byte	PATT	
		.word	song050_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song050_6
song050_6:	@ 0x0828DA44
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v074
	.byte	PAN	, c_v-6
	.byte	BENDR	, 59
	.byte	W03
	.byte		N17	, En1, v116
	.byte	W18
	.byte			En2, v124
	.byte	W18
	.byte		N08	, En1, v108
	.byte	W12
	.byte		N17	, Gn1, v120
	.byte	W18
	.byte			Gn2, v108
	.byte	W18
	.byte		N08	, Gn1, v116
	.byte	W12
	.byte		N19	, Fs1, v120
	.byte	W18
	.byte			Fs2, v108
	.byte	W18
	.byte		N11	, Fs1, v120
	.byte	W12
	.byte		N06	, Fn1, v096
	.byte	W06
	.byte			Fn2, v108
	.byte	W06
	.byte			Fn1, v120
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fn1, v112
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
song050_6_1:
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
song050_6_2:
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
song050_6_9:
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
song050_6_3:
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
song050_6_4:
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
song050_6_5:
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
		.word	song050_6_3
	.byte	PATT	
		.word	song050_6_4
	.byte	PATT	
		.word	song050_6_5
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
song050_6_6:
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
song050_6_7:
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
	.byte	PATT	
		.word	song050_6_6
song050_6_8:
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
		.word	song050_6_6
	.byte	PATT	
		.word	song050_6_7
	.byte	PATT	
		.word	song050_6_6
	.byte	PATT	
		.word	song050_6_8
	.byte	PATT	
		.word	song050_6_1
	.byte	PATT	
		.word	song050_6_2
	.byte	GOTO	
		.word	song050_6_9
	.byte	PATT	
		.word	song050_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song050_7
song050_7:	@ 0x0828DCC9
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v086
	.byte	PAN	, c_v+16
	.byte	W03
	.byte		N48	, Bn3, v100
	.byte	W60
	.byte		N12	, Dn4, v120
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N48	, Fs4, v100
	.byte	W48
	.byte			An4
	.byte	W48
song050_7_5:
	.byte	VOL	, v089
	.byte		N60	, Bn3, v100
	.byte	W60
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
song050_7_11:
	.byte		N48	, As3, v100
	.byte	W48
	.byte		N44	, An3
	.byte	W48
	.byte	PEND
song050_7_12:
	.byte		N44	, Bn3, v100
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte			Cs4
	.byte	W48
	.byte			Cn4
	.byte	W48
song050_7_7:
	.byte		N60	, Bn3, v100
	.byte	W60
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte	PEND
song050_7_1:
	.byte		N48	, As3, v100
	.byte	W48
	.byte			An3
	.byte	W48
	.byte	PEND
song050_7_6:
	.byte		N48	, Bn3, v100
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte	PEND
song050_7_8:
	.byte		N48	, Cs4, v100
	.byte	W48
	.byte			En4
	.byte	W48
	.byte	PEND
song050_7_2:
	.byte		N60	, Gn3, v100
	.byte	W60
	.byte		N24	, Bn2
	.byte	W24
	.byte		N12	, Gn3
	.byte	W12
	.byte	PEND
song050_7_3:
	.byte		N48	, Fs3, v100
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte	PEND
song050_7_4:
	.byte		N48	, Gn3, v100
	.byte	W48
	.byte			Bn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song050_7_1
	.byte	PATT	
		.word	song050_7_2
	.byte	PATT	
		.word	song050_7_3
	.byte	PATT	
		.word	song050_7_4
	.byte		N48	, As3, v100
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte	PATT	
		.word	song050_7_5
	.byte	PATT	
		.word	song050_7_1
	.byte	PATT	
		.word	song050_7_6
	.byte		N48	, Cs4, v100
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte	PATT	
		.word	song050_7_7
	.byte	PATT	
		.word	song050_7_1
	.byte	PATT	
		.word	song050_7_6
	.byte	PATT	
		.word	song050_7_8
song050_7_9:
	.byte	W12
	.byte		N03	, Cn4, v100
	.byte		N03	, Gn4
	.byte	W12
	.byte		N12	, Bn3
	.byte		N12	, Fs4
	.byte	W12
	.byte		N03	, Cn4
	.byte		N03	, Gn4
	.byte	W12
	.byte		N48	, Gn3
	.byte		N48	, En4
	.byte	W48
	.byte	PEND
song050_7_10:
	.byte		N36	, Fs3, v100
	.byte		N36	, Dn4
	.byte	W36
	.byte		N11	, En3
	.byte		N11	, Cn4
	.byte	W24
	.byte		N03	, En3
	.byte		N03	, Cn4
	.byte	W12
	.byte		N12	, Dn3
	.byte		N12	, Bn3
	.byte	W12
	.byte		N03	, En3
	.byte		N03	, Cn4
	.byte	W12
	.byte	PEND
	.byte		N48	, Dn3
	.byte		N48	, Bn3
	.byte	W60
	.byte		N03	, Fs3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, En3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, Cn3
	.byte		N03	, An3
	.byte	W12
	.byte		N48	, Cs3
	.byte		N48	, Gn3
	.byte	W48
	.byte			Fs3
	.byte		N48	, Dn4
	.byte	W48
	.byte	PATT	
		.word	song050_7_9
	.byte	PATT	
		.word	song050_7_10
	.byte		N48	, Dn3, v100
	.byte		N48	, Bn3
	.byte	W60
	.byte		N03	, Fs3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Fn3
	.byte		N12	, Cs4
	.byte	W12
	.byte		N03	, Fs3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N48	, Bn3
	.byte		N48	, Fs4
	.byte	W48
	.byte			Ds4
	.byte		N48	, An4
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
		.word	song050_7_5
	.byte	PATT	
		.word	song050_7_11
	.byte	GOTO	
		.word	song050_7_12
	.byte		N44	, Bn3, v100
	.byte	W48
	.byte			Dn4
	.byte	W44
	.byte	W03
	.byte	FINE

	@********************** Track  8 **********************@

	.global song050_8
song050_8:	@ 0x0828DE15
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v093
	.byte	PAN	, c_v+26
	.byte	W03
	.byte		N48	, Bn1, v100
	.byte		N48	, Gn2
	.byte	W48
	.byte			Dn2
	.byte		N44	, Bn2
	.byte	W48
	.byte			Cs2
	.byte		N44	, Fs2
	.byte		N44	, Cs3, v080
	.byte	W48
	.byte			Cn2, v100
	.byte		N44	, Ds3, v092
	.byte	W48
song050_8_1:
	.byte		N60	, Gn1, v072
	.byte	W60
	.byte		N24	, Bn0
	.byte	W24
	.byte		N12	, Gn1
	.byte	W12
	.byte	PEND
song050_8_2:
	.byte		N48	, Fs1, v072
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte	PEND
song050_8_7:
	.byte		N48	, Gn1, v072
	.byte	W48
	.byte			Bn1
	.byte	W48
	.byte	PEND
song050_8_6:
	.byte		N48	, As1, v072
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song050_8_1
	.byte	PATT	
		.word	song050_8_2
song050_8_3:
	.byte		N48	, En1, v072
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song050_8_2
song050_8_4:
	.byte		N60	, En1, v072
	.byte	W60
	.byte		N24	, Bn0
	.byte	W24
	.byte		N12	, En1
	.byte	W12
	.byte	PEND
song050_8_5:
	.byte		N48	, Cs1, v072
	.byte	W48
	.byte			Cn1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song050_8_3
	.byte	PATT	
		.word	song050_8_2
	.byte	PATT	
		.word	song050_8_4
	.byte	PATT	
		.word	song050_8_5
	.byte	PATT	
		.word	song050_8_3
	.byte	PATT	
		.word	song050_8_6
	.byte	PATT	
		.word	song050_8_1
	.byte	PATT	
		.word	song050_8_2
	.byte	PATT	
		.word	song050_8_7
	.byte	PATT	
		.word	song050_8_6
	.byte	PATT	
		.word	song050_8_1
	.byte	PATT	
		.word	song050_8_2
	.byte	PATT	
		.word	song050_8_3
	.byte	PATT	
		.word	song050_8_2
song050_8_8:
	.byte		N32	, An0, v120
	.byte	W32
	.byte	W02
	.byte		N42	, Cn1
	.byte	W60
	.byte	W02
	.byte	PEND
song050_8_9:
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
		.word	song050_8_8
	.byte	PATT	
		.word	song050_8_9
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
		.word	song050_8_1
	.byte		N44	, Fs1, v072
	.byte	W48
	.byte			Fn1
	.byte	W48
	.byte	GOTO	
		.word	song050_8_7
	.byte	PATT	
		.word	song050_8_7
	.byte	FINE

	@********************** Track  9 **********************@

	.global song050_9
song050_9:	@ 0x0828DF19
	.byte	KEYSH	, 0
	.byte	VOICE	, 99
	.byte	VOL	, v074
	.byte	PAN	, c_v+46
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song050_9_4:
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
song050_9_2:
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
song050_9_1:
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
song050_9_3:
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
		.word	song050_9_1
	.byte	PATT	
		.word	song050_9_2
	.byte	PATT	
		.word	song050_9_1
	.byte	PATT	
		.word	song050_9_3
	.byte	PATT	
		.word	song050_9_1
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song050_9_4
	.byte	FINE

	@********************** Track  10 **********************@

	.global song050_10
song050_10:	@ 0x0828DF9A
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v095
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	MOD	, 0
	.byte	W03
	.byte		N56	, Bn2, v080
	.byte	W24
	.byte	W02
	.byte	MOD	, 2
	.byte	W03
	.byte		6
	.byte	W02
	.byte		8
	.byte	W03
	.byte		11
	.byte	W04
	.byte		14
	.byte	W13
	.byte		10
	.byte	W01
	.byte		6
	.byte	W01
	.byte		0
	.byte	W07
	.byte		N12	, Dn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N48	, Fs3
	.byte	W16
	.byte	MOD	, 1
	.byte	W02
	.byte		3
	.byte	W03
	.byte		6
	.byte	W03
	.byte		8
	.byte	W06
	.byte		11
	.byte	W15
	.byte		8
	.byte	W01
	.byte		3
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N48	, An3
	.byte	W16
	.byte	MOD	, 2
	.byte	W03
	.byte		6
	.byte	W03
	.byte		8
	.byte	W04
	.byte		11
	.byte	W02
	.byte		14
	.byte	W07
	.byte		16
	.byte	W07
	.byte		14
	.byte	W02
	.byte		10
	.byte	W01
	.byte		5
	.byte	W01
	.byte		0
	.byte	W02
	.byte	W96
song050_10_1:
	.byte	W60
	.byte		N04	, Bn1, v080
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte		N07	, Fs2
	.byte	W07
	.byte		N05	, Bn2
	.byte	W05
	.byte		N04	, Cn3
	.byte	W04
	.byte		N06	, Cs3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte	PEND
song050_10_2:
	.byte		N60	, Fs3, v080
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
	.byte		N04	, En3
	.byte	W04
	.byte		N05	, Fn3
	.byte	W05
	.byte		N04	, Fs3
	.byte	W04
	.byte			Fn3
	.byte	W04
	.byte		N05	, En3
	.byte	W05
	.byte			Bn2
	.byte	W06
	.byte		N08	, Fs2
	.byte	W08
	.byte	PEND
song050_10_3:
	.byte		N06	, Cn3, v080
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N56	, Cn2
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
		.word	song050_10_1
song050_10_4:
	.byte		N60	, Fs3, v080
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
	.byte		N04	, En3
	.byte	W04
	.byte		N05	, Fn3
	.byte	W05
	.byte		N04	, Fs3
	.byte	W04
	.byte			Fn3
	.byte	W04
	.byte		N05	, En3
	.byte	W05
	.byte			Bn2
	.byte	W06
	.byte		N08	, Dn3
	.byte	W08
	.byte	PEND
song050_10_5:
	.byte		N06	, Gs3, v080
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N56	, Cn3
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
	.byte		N60	, Bn3, v088
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
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte		N48	, As3
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
	.byte		N48	, An3
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
	.byte		N48	, Bn3
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
	.byte		N48	, Dn4
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
	.byte		N48	, Cs4
	.byte	W21
	.byte	MOD	, 2
	.byte	W02
	.byte		5
	.byte	W06
	.byte		7
	.byte	W15
	.byte		0
	.byte	W04
	.byte		N48	, Cn4
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
	.byte		N60	, Bn3
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
	.byte		N24	, En3
	.byte	W24
	.byte		N12	, Bn3
	.byte	W12
	.byte		N48	, As3
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
	.byte		N48	, An3
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
	.byte		N48	, Bn3
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
	.byte		0
	.byte	W01
	.byte		0
	.byte	W92
	.byte	W03
	.byte	PATT	
		.word	song050_10_1
	.byte	PATT	
		.word	song050_10_2
	.byte	PATT	
		.word	song050_10_3
	.byte	W96
	.byte	PATT	
		.word	song050_10_1
	.byte	PATT	
		.word	song050_10_4
	.byte	PATT	
		.word	song050_10_5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song050_10_6:
	.byte	W78
	.byte		N06	, Ds3, v080
	.byte	W05
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N60	, Fs3
	.byte	W01
	.byte	PEND
	.byte	MOD	, 0
	.byte	VOL	, v095
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
	.byte		N05	, Gn3
	.byte	W05
	.byte		N04	, Fs3
	.byte	W04
	.byte			Ds3
	.byte	W04
	.byte		N06	, Cn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N07	, As2
	.byte	W07
	.byte		N06	, An3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte		N56	, Fn2
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
		.word	song050_10_6
	.byte	MOD	, 0
	.byte	VOL	, v095
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
	.byte		N04	, An3, v080
	.byte	W04
	.byte		N05	, As3
	.byte	W05
	.byte		N04	, An3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte		N05	, Fn3
	.byte	W05
	.byte			Cs3
	.byte	W06
	.byte		N08	, Dn3
	.byte	W08
	.byte		N06	, Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte		N56	, Dn3
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
		.word	song050_10_1
	.byte	GOTO	
		.word	song050_10_2
	.byte	PATT	
		.word	song050_10_2
	.byte	FINE

	@********************** Track  11 **********************@

	.global song050_11
song050_11:	@ 0x0828E25F
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	VOL	, v086
	.byte	PAN	, c_v+11
	.byte	W03
	.byte	W96
	.byte	W96
	.byte		N96	, Cn3, v096
	.byte	W96
song050_11_1:
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
song050_11_5:
	.byte	W96
song050_11_2:
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
		.word	song050_11_1
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
		.word	song050_11_1
	.byte	W96
	.byte	PATT	
		.word	song050_11_2
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song050_11_1
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
		.word	song050_11_2
	.byte		N96	, Cn3, v096
	.byte	W96
song050_11_3:
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
song050_11_4:
	.byte		N48	, Cn3, v096
	.byte	W48
	.byte			Fn2
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song050_11_3
	.byte		N96	, Cn3, v096
	.byte	W96
	.byte	PATT	
		.word	song050_11_3
	.byte	PATT	
		.word	song050_11_4
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
		.word	song050_11_1
	.byte	GOTO	
		.word	song050_11_5
	.byte	FINE

	@********************** Track  12 **********************@

	.global song050_12
song050_12:	@ 0x0828E3AC
	.byte	KEYSH	, 0
	.byte	VOICE	, 105
	.byte	VOL	, v067
	.byte	PAN	, c_v-31
	.byte	BENDR	, 12
	.byte	W03
	.byte	W96
	.byte	W96
song050_12_1:
	.byte		N28	, Cn3, v060
	.byte	W36
	.byte		N44	
	.byte	W60
	.byte	PEND
song050_12_2:
	.byte		N36	, Dn3, v080
	.byte	W48
	.byte			Cs3
	.byte	W48
	.byte	PEND
song050_12_3:
	.byte		N30	, Cn3, v060
	.byte	W36
	.byte		N40	
	.byte	W60
	.byte	PEND
song050_12_4:
	.byte		N42	, Dn3, v080
	.byte	W48
	.byte		N40	, Cs3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song050_12_1
	.byte	PATT	
		.word	song050_12_2
	.byte	PATT	
		.word	song050_12_3
	.byte	PATT	
		.word	song050_12_4
song050_12_5:
	.byte		N21	, Cn3, v060
	.byte	W36
	.byte		N21	
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte	PEND
song050_12_6:
	.byte		N23	, Dn3, v080
	.byte	W36
	.byte		N36	, Cs3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song050_12_5
	.byte	PATT	
		.word	song050_12_6
	.byte	PATT	
		.word	song050_12_5
	.byte	PATT	
		.word	song050_12_6
	.byte	PATT	
		.word	song050_12_5
	.byte	PATT	
		.word	song050_12_6
	.byte	PATT	
		.word	song050_12_1
	.byte	PATT	
		.word	song050_12_2
	.byte	PATT	
		.word	song050_12_3
	.byte	PATT	
		.word	song050_12_4
	.byte	PATT	
		.word	song050_12_1
	.byte	PATT	
		.word	song050_12_2
	.byte	PATT	
		.word	song050_12_3
	.byte	PATT	
		.word	song050_12_4
song050_12_7:
	.byte		N21	, Cn3, v080
	.byte	W36
	.byte		N21	
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte	PEND
song050_12_8:
	.byte		N21	, Cn3, v080
	.byte	W36
	.byte			Ds3
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte	PEND
song050_12_9:
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
		.word	song050_12_7
	.byte	PATT	
		.word	song050_12_8
	.byte	PATT	
		.word	song050_12_9
	.byte		N21	, Dn3, v080
	.byte	W36
	.byte			Fn3
	.byte	W36
	.byte		N11	, As2
	.byte	W24
song050_12_10:
	.byte		N32	, Cn3, v080
	.byte	W36
	.byte		N32	
	.byte	W36
	.byte		N28	, Gn2
	.byte	W24
	.byte	PEND
song050_12_11:
	.byte		N32	, Dn3, v080
	.byte	W36
	.byte			Cs3
	.byte	W36
	.byte		N28	, Gn2
	.byte	W24
	.byte	PEND
song050_12_12:
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
		.word	song050_12_10
	.byte	PATT	
		.word	song050_12_11
	.byte	PATT	
		.word	song050_12_12
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
		.word	song050_12_4
	.byte	GOTO	
		.word	song050_12_3
	.byte		N30	, Cn3, v060
	.byte	W36
	.byte		N40	
	.byte	W40
	.byte	W01
	.byte	FINE

	@********************** Track  13 **********************@

	.global song050_13
song050_13:	@ 0x0828E4D4
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v067
	.byte	PAN	, c_v-31
	.byte	W03
	.byte	W96
	.byte	W96
song050_13_1:
	.byte	W24
	.byte		N12	, Cn3, v080
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
song050_13_2:
	.byte	W24
	.byte		N11	, Dn3, v080
	.byte	W48
	.byte		N10	, Cs3
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
song050_13_8:
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_2
song050_13_3:
	.byte	W24
	.byte		N12	, Cn3, v072
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
song050_13_4:
	.byte	W24
	.byte		N11	, Dn3, v072
	.byte	W48
	.byte		N10	, Cs3
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song050_13_3
	.byte	PATT	
		.word	song050_13_4
	.byte	PATT	
		.word	song050_13_3
	.byte	PATT	
		.word	song050_13_4
	.byte	PATT	
		.word	song050_13_3
	.byte	PATT	
		.word	song050_13_4
	.byte	PATT	
		.word	song050_13_1
song050_13_5:
	.byte	W24
	.byte		N12	, Ds3, v080
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song050_13_6:
	.byte	W24
	.byte		N12	, Cn3, v080
	.byte	W36
	.byte		N11	, Gn2
	.byte	W24
	.byte		N12	, Cn3
	.byte	W12
	.byte	PEND
song050_13_7:
	.byte	W24
	.byte		N12	, Dn3, v080
	.byte	W36
	.byte		N11	, Cs3
	.byte	W24
	.byte		N12	, Gn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song050_13_1
	.byte	PATT	
		.word	song050_13_5
	.byte	PATT	
		.word	song050_13_6
	.byte	PATT	
		.word	song050_13_7
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
		.word	song050_13_8
	.byte	PATT	
		.word	song050_13_1
	.byte	FINE
    
	mAlignWord
	.global song050
song050:	@ 0x0828E5C0
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup012		@ voicegroup/tone

	.word	song050_1		@ track
	.word	song050_2		@ track
	.word	song050_3		@ track
	.word	song050_4		@ track
	.word	song050_5		@ track
	.word	song050_6		@ track
	.word	song050_7		@ track
	.word	song050_8		@ track
	.word	song050_9		@ track
	.word	song050_10		@ track
	.word	song050_11		@ track
	.word	song050_12		@ track
	.word	song050_13		@ track
