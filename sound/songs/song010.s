	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song010_1
song010_1:	@ 0x082692C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 160
	.byte	VOICE	, 127
	.byte	VOL	, v088
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 80
	.byte	W12
	.byte		N11	, Fs1, v084
	.byte	W12
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte			Fs1, v088
	.byte	W12
	.byte		N08	, Gs3, v084
	.byte	W12
	.byte		N12	, Fs1, v088
	.byte	W12
	.byte		N05	, Gs7, v084
	.byte	W06
	.byte			En1, v088
	.byte	W06
song010_1_2:
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W18
	.byte		N05	, Fs1, v088
	.byte	W06
	.byte	PEND
song010_1_1:
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte		N11	
	.byte	W06
	.byte		N05	, En1, v088
	.byte	W18
	.byte		N11	, Fs1
	.byte		N11	, Gs7, v084
	.byte	W18
	.byte		N05	, Fs1, v088
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song010_1_1
song010_1_3:
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte		N08	, Fs1, v088
	.byte	W12
	.byte		N05	
	.byte		N05	, Gs7, v084
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Fs1, v088
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PEND
song010_1_4:
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_2
	.byte		N11	, Fs1, v088
	.byte	W12
	.byte			Gs7, v084
	.byte	W12
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte		N08	, Fs1, v088
	.byte	W12
	.byte		N05	
	.byte		N05	, Gs7, v084
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N05	, Fs1, v088
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_3
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_3
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_3
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_3
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_1
	.byte	PATT	
		.word	song010_1_3
	.byte	GOTO	
		.word	song010_1_4
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fs1, v088
	.byte		N11	, Gs7, v084
	.byte	W18
	.byte		N05	, Fs1, v088
	.byte	W05
	.byte	FINE

	@********************** Track  2 **********************@

	.global song010_2
song010_2:	@ 0x082693EE
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v053
	.byte	PAN	, c_v-19
	.byte	W03
song010_2_3:
	.byte	W12
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v024
	.byte	W06
	.byte		N03	, Bn6, v004
	.byte	W06
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N06	, Bn6, v064
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte	PEND
song010_2_1:
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v024
	.byte	W06
	.byte		N03	, Bn6, v004
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
song010_2_4:
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
song010_2_2:
	.byte	W12
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v024
	.byte	W06
	.byte		N03	, Bn6, v004
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_3
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_1
	.byte	GOTO	
		.word	song010_2_4
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v024
	.byte	W06
	.byte		N03	, Bn6, v004
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W18
	.byte		N05	, Ds7, v052
	.byte	W06
	.byte		N03	, Bn6, v020
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song010_3
song010_3:	@ 0x08269504
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v074
	.byte	PAN	, c_v-19
	.byte	W03
song010_3_5:
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte			Gn7, v088
	.byte	W24
	.byte			Gn7, v068
	.byte	W12
	.byte	PEND
song010_3_1:
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
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
song010_3_6:
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
song010_3_2:
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song010_3_3:
	.byte		N11	, Gn7, v068
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_2
	.byte	PATT	
		.word	song010_3_3
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
song010_3_4:
	.byte	W01
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W23
	.byte	PEND
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_5
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_1
	.byte	GOTO	
		.word	song010_3_6
	.byte	PATT	
		.word	song010_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song010_4
song010_4:	@ 0x082695CE
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-6
	.byte	W03
	.byte	W14
	.byte		N11	, Gn2, v096
	.byte	W12
	.byte			Dn2, v116
	.byte	W12
	.byte			Gn1, v104
	.byte	W12
	.byte			Bn1, v116
	.byte	W12
	.byte			Dn2, v104
	.byte	W12
	.byte			Gn2, v120
	.byte	W12
	.byte			Gn1
	.byte	W10
song010_4_3:
	.byte	W01
	.byte		N06	, An1, v112
	.byte	W12
	.byte		N13	
	.byte	W15
	.byte		N11	, Cs2, v104
	.byte	W09
	.byte		N12	, An1
	.byte	W12
	.byte			En2, v108
	.byte	W12
	.byte		N11	, An1, v100
	.byte	W12
	.byte		N12	, An2, v124
	.byte	W12
	.byte			An1, v116
	.byte	W11
	.byte	PEND
song010_4_1:
	.byte	W13
	.byte		N12	, An1, v116
	.byte	W12
	.byte			Cs2, v104
	.byte	W12
	.byte		N11	, An1, v112
	.byte	W12
	.byte		N12	, En2, v116
	.byte	W12
	.byte			An1, v108
	.byte	W12
	.byte			An2, v120
	.byte	W12
	.byte		N11	, An1, v104
	.byte	W11
	.byte	PEND
song010_4_2:
	.byte	W01
	.byte		N05	, Dn2, v084
	.byte	W12
	.byte		N12	, Dn2, v108
	.byte	W12
	.byte			Fs2, v096
	.byte	W12
	.byte		N11	, Dn2, v104
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte			Dn2, v108
	.byte	W12
	.byte		N12	, Dn3, v116
	.byte	W12
	.byte			Dn2, v108
	.byte	W11
	.byte	PEND
song010_4_4:
	.byte	W13
	.byte		N12	, Dn2, v112
	.byte	W12
	.byte			Fs2, v104
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N11	, Dn2, v112
	.byte	W11
	.byte	PEND
song010_4_5:
	.byte	W01
	.byte		N06	, An1, v120
	.byte	W12
	.byte		N12	, An1, v108
	.byte	W12
	.byte		N13	, Cs2
	.byte	W12
	.byte		N12	, An1
	.byte	W12
	.byte		N13	, En2, v104
	.byte	W12
	.byte		N12	, An1, v108
	.byte	W12
	.byte			An2, v116
	.byte	W12
	.byte			An1, v104
	.byte	W11
	.byte	PEND
	.byte	W13
	.byte			An1, v108
	.byte	W12
	.byte			Cs2, v100
	.byte	W12
	.byte		N11	, An1, v108
	.byte	W12
	.byte		N12	, En2, v112
	.byte	W12
	.byte			An1
	.byte	W12
	.byte		N11	, An2, v120
	.byte	W12
	.byte			An1, v108
	.byte	W11
	.byte	W01
	.byte		N06	, Gn1
	.byte	W12
	.byte		N12	, Gn1, v100
	.byte	W12
	.byte			Gn2, v108
	.byte	W12
	.byte			Gn1, v100
	.byte	W12
	.byte			Gn2, v120
	.byte	W12
	.byte		N21	, Fs2, v108
	.byte	W24
	.byte		N18	, En1, v116
	.byte	W11
	.byte	W13
	.byte		N12	, En1, v108
	.byte	W12
	.byte			En2, v124
	.byte	W12
	.byte		N11	, En1, v112
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N12	, En1, v096
	.byte	W12
	.byte			Gn1, v112
	.byte	W12
	.byte			Gs1, v108
	.byte	W11
	.byte	W01
	.byte		N06	, An1, v112
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Cs2, v104
	.byte	W12
	.byte		N12	, An1
	.byte	W12
	.byte			En2, v108
	.byte	W12
	.byte		N11	, An1, v100
	.byte	W12
	.byte		N12	, An2, v124
	.byte	W12
	.byte			An1, v116
	.byte	W11
	.byte	PATT	
		.word	song010_4_1
	.byte	PATT	
		.word	song010_4_2
	.byte	W13
	.byte		N12	, Dn2, v112
	.byte	W12
	.byte			Fs2, v104
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An2, v108
	.byte	W12
	.byte			Dn3, v112
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N11	, Dn2, v108
	.byte	W11
	.byte	W01
	.byte		N06	, Cn2, v112
	.byte	W12
	.byte		N12	, Cn2, v108
	.byte	W12
	.byte			Gn2, v112
	.byte	W12
	.byte		N18	, Cn3
	.byte	W24
	.byte		N12	, Cn3, v108
	.byte	W12
	.byte			Gn2, v112
	.byte	W12
	.byte		N18	, Dn2, v116
	.byte	W11
	.byte	W13
	.byte		N12	, Dn2, v100
	.byte	W12
	.byte			An2, v108
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte		N12	, An2, v092
	.byte	W12
	.byte		N23	, Dn2, v120
	.byte	W23
	.byte	W01
	.byte		N16	, Gn1
	.byte	W24
	.byte			Gn1, v100
	.byte	W24
	.byte		N12	, Gn1, v112
	.byte	W12
	.byte		N24	, Gs1, v100
	.byte	W24
	.byte		N18	, An1, v116
	.byte	W11
	.byte	W13
	.byte		N12	, An1, v104
	.byte	W12
	.byte			Cs2, v100
	.byte	W12
	.byte			An1, v088
	.byte	W12
	.byte			En2, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2, v120
	.byte	W12
	.byte			An1, v112
	.byte	W11
	.byte	W01
	.byte		N07	, Dn2, v108
	.byte	W12
	.byte		N12	, Dn2, v104
	.byte	W12
	.byte			Fs2, v100
	.byte	W12
	.byte			An2, v104
	.byte	W12
	.byte			Cn3, v112
	.byte	W12
	.byte			Bn2, v096
	.byte	W12
	.byte			An2, v108
	.byte	W12
	.byte			Dn2, v104
	.byte	W11
	.byte	W13
	.byte			Dn2, v100
	.byte	W12
	.byte			Fs2, v108
	.byte	W12
	.byte			An2, v104
	.byte	W12
	.byte		N05	, Cn3
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Bn2, v108
	.byte	W12
	.byte			An2
	.byte	W11
	.byte	W01
	.byte		N05	, An1, v104
	.byte	W12
	.byte		N12	, An1, v108
	.byte	W12
	.byte			Cs2, v100
	.byte	W12
	.byte			En2, v108
	.byte	W12
	.byte			Gn2, v112
	.byte	W12
	.byte			Fs2, v100
	.byte	W12
	.byte			En2, v108
	.byte	W12
	.byte			An1, v112
	.byte	W11
	.byte	W13
	.byte			An1, v116
	.byte	W12
	.byte			Cs2, v108
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N06	, Gn2, v112
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Fs2, v104
	.byte	W12
	.byte			En2, v116
	.byte	W11
	.byte	W01
	.byte		N06	, Dn2, v108
	.byte	W12
	.byte		N12	, Dn2, v104
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			An2, v108
	.byte	W12
	.byte			Cn3, v104
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			An2, v112
	.byte	W12
	.byte			Dn2, v108
	.byte	W11
	.byte	W13
	.byte		N12	
	.byte	W12
	.byte			Fs2, v100
	.byte	W12
	.byte			An2, v104
	.byte	W12
	.byte		N05	, Cn3
	.byte	W12
	.byte		N12	, Cn3, v108
	.byte	W12
	.byte			Bn2, v100
	.byte	W12
	.byte			An2, v112
	.byte	W11
	.byte	W01
	.byte		N05	, Gn1, v108
	.byte	W12
	.byte		N12	, Gn1, v104
	.byte	W12
	.byte			Bn1, v108
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2, v104
	.byte	W12
	.byte			Dn2, v112
	.byte	W12
	.byte			Gn1, v108
	.byte	W12
	.byte			En1, v120
	.byte	W11
	.byte	W13
	.byte		N12	
	.byte	W12
	.byte			En2, v124
	.byte	W12
	.byte			En1, v112
	.byte	W12
	.byte			En2, v120
	.byte	W12
	.byte			Dn2, v104
	.byte	W12
	.byte			Cs2, v108
	.byte	W12
	.byte			Bn1, v116
	.byte	W11
	.byte	PATT	
		.word	song010_4_3
	.byte	PATT	
		.word	song010_4_1
	.byte	PATT	
		.word	song010_4_2
	.byte	PATT	
		.word	song010_4_4
	.byte	GOTO	
		.word	song010_4_5
	.byte	PATT	
		.word	song010_4_5
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song010_5
song010_5:	@ 0x0826982F
	.byte	KEYSH	, 0
	.byte	VOICE	, 70
	.byte	VOL	, v070
	.byte	PAN	, c_v-54
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song010_5_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		N03	, An1, v080
	.byte	W03
	.byte	W12
	.byte		N05	, As2
	.byte		N12	, Cn3
	.byte	W15
	.byte		N03	, An1
	.byte	W06
	.byte		N05	, Cn3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N02	, An1
	.byte	W06
	.byte		N24	, Cn3
	.byte	W30
song010_5_1:
	.byte	W92
	.byte	W01
	.byte		N03	, Cn2, v080
	.byte	W03
	.byte	PEND
	.byte	W12
	.byte		N05	, Cn3
	.byte		N12	, Dn3
	.byte	W15
	.byte		N03	, Cn2
	.byte	W06
	.byte		N05	, Dn3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N03	, Cn2
	.byte	W06
	.byte		N24	, Fn3
	.byte	W30
	.byte	W92
	.byte	W01
	.byte		N03	, Dn2
	.byte	W03
	.byte	W12
	.byte		N05	, Fn3
	.byte		N12	, Gn3
	.byte	W15
	.byte		N03	, Dn2
	.byte	W06
	.byte		N05	, Gn3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N02	, Dn2
	.byte	W06
	.byte		N24	, Gn3
	.byte	W30
	.byte	PATT	
		.word	song010_5_1
	.byte	W12
	.byte		N05	, Cn3, v080
	.byte		N12	, Dn3
	.byte	W15
	.byte		N03	, Cn2
	.byte	W06
	.byte		N05	, Dn3
	.byte	W15
	.byte		N11	, Fn3
	.byte	W12
	.byte		N03	, Cn2
	.byte	W06
	.byte		N24	, Fn3
	.byte	W24
	.byte	VOICE	, 76
	.byte	PAN	, c_v
	.byte	W06
	.byte		N01	, Cn4, v088
	.byte	W01
	.byte		N12	, Dn4, v112
	.byte	W23
	.byte		N13	, Cn4, v120
	.byte	W24
	.byte		N16	, Bn3, v116
	.byte	W24
	.byte		N15	, An3, v120
	.byte	W24
	.byte		N01	, Bn3, v100
	.byte	W01
	.byte		N10	, Cn4, v108
	.byte	W11
	.byte		N12	, Bn3, v116
	.byte	W12
	.byte		N11	, An3, v112
	.byte	W12
	.byte		N15	, Dn3, v108
	.byte	W24
	.byte		N05	, Dn3, v116
	.byte	W12
	.byte		N12	, Fs3, v104
	.byte	W12
	.byte			An3, v112
	.byte	W12
	.byte			Cn4, v120
	.byte	W24
	.byte			Bn3, v116
	.byte	W24
	.byte			An3, v120
	.byte	W24
	.byte	W01
	.byte			En3, v116
	.byte	W23
	.byte		N01	, Cn3, v100
	.byte	W01
	.byte		N09	, Cs3, v108
	.byte	W11
	.byte		N36	, An2, v112
	.byte	W48
	.byte	W01
	.byte		N05	, Dn3, v120
	.byte	W11
	.byte		N12	, Fs3, v108
	.byte	W12
	.byte			An3, v124
	.byte	W12
	.byte			Dn4, v120
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Bn3, v108
	.byte	W24
	.byte			An3, v116
	.byte	W24
	.byte		N01	, Bn3, v096
	.byte	W01
	.byte		N10	, Cn4, v108
	.byte	W11
	.byte		N06	, Bn3, v116
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N18	, Dn3, v120
	.byte	W24
	.byte		N10	, Dn3, v104
	.byte	W12
	.byte		N12	, Fs3, v108
	.byte	W12
	.byte			An3, v120
	.byte	W12
	.byte			Dn4, v116
	.byte	W24
	.byte	W03
	.byte			Dn4, v124
	.byte	W21
	.byte			Cs4, v116
	.byte	W12
	.byte			Dn4, v120
	.byte	W24
	.byte		N72	, En4, v108
	.byte	W12
	.byte	W60
	.byte	W03
	.byte		N04	, Dn4, v056
	.byte	W01
	.byte			Cn4, v088
	.byte	W04
	.byte		N03	, Bn3, v104
	.byte	W01
	.byte			An3
	.byte	W02
	.byte		N02	, Gn3, v096
	.byte	W02
	.byte			Fn3, v100
	.byte	W01
	.byte			En3, v088
	.byte	W02
	.byte			Dn3, v072
	.byte	W01
	.byte		N01	, Cn3, v060
	.byte	W01
	.byte			Bn2, v044
	.byte	W01
	.byte			Gn2, v084
	.byte		N01	, An2, v072
	.byte	W01
	.byte		N02	, Fn2, v088
	.byte	W01
	.byte			En2, v080
	.byte	W01
	.byte			Dn2, v060
	.byte	W02
	.byte		N01	, As1, v016
	.byte	W01
	.byte			Gn1, v040
	.byte	W01
	.byte			Fn1, v052
	.byte	W01
	.byte		N02	, Dn1, v104
	.byte		N01	, En1, v076
	.byte	W01
	.byte		N02	, Cn1, v096
	.byte	W02
	.byte		N03	, Bn0, v068
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song010_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song010_6
song010_6:	@ 0x08269996
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v063
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W48
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte			An4
	.byte	W03
	.byte		N02	, Cn5
	.byte	W03
	.byte		N06	, En5
	.byte	W05
	.byte			Cn5, v060
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Cn5, v052
	.byte	W06
	.byte			En5, v048
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			En5, v044
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song010_6_3:
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
song010_6_1:
	.byte	W15
	.byte		N03	, An2, v088
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	, An4
	.byte	W12
	.byte		N03	, En4
	.byte	W12
	.byte		N04	, An2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte		N04	, En4
	.byte	W09
	.byte	PEND
song010_6_2:
	.byte	W15
	.byte		N04	, An2, v088
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte		N05	, An4
	.byte	W12
	.byte		N04	, En4
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte			En4
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte	W15
	.byte		N03	, Gn2, v088
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N05	, Gn4
	.byte	W12
	.byte		N03	, Dn4
	.byte	W12
	.byte		N04	, Gn2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte		N04	, En4
	.byte	W09
	.byte	W15
	.byte			En2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte		N05	, Gs4
	.byte	W12
	.byte		N04	, Dn4
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte			En4
	.byte	W09
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song010_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song010_7
song010_7:	@ 0x08269A41
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v+21
	.byte	W03
	.byte	W60
	.byte	W01
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte			An4
	.byte	W03
	.byte		N02	, Cn5
	.byte	W03
	.byte		N06	, En5
	.byte	W07
	.byte			Cn5, v060
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Cn5, v052
	.byte	W06
	.byte			En5, v048
	.byte	W01
song010_7_3:
	.byte	W05
	.byte		N06	, Cn5, v048
	.byte	W06
	.byte			En5, v044
	.byte	W06
	.byte			Cn5, v040
	.byte	W06
	.byte			En5, v036
	.byte	W06
	.byte			Cn5, v024
	.byte	W06
	.byte			En5, v020
	.byte	W06
	.byte			Cn5, v016
	.byte	W54
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
song010_7_4:
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
	.byte	W24
	.byte	W03
	.byte		N03	, An2, v068
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	, An4
	.byte	W12
	.byte		N03	, En4
	.byte	W12
	.byte		N04	, An2
	.byte	W12
	.byte		N03	, En3
	.byte	W09
song010_7_1:
	.byte	W03
	.byte		N04	, En4, v068
	.byte	W24
	.byte			An2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte		N05	, An4
	.byte	W12
	.byte		N04	, En4
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N03	, En3
	.byte	W09
	.byte	PEND
song010_7_2:
	.byte	W03
	.byte		N03	, En4, v068
	.byte	W24
	.byte			An2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	, An4
	.byte	W12
	.byte		N03	, En4
	.byte	W12
	.byte		N04	, An2
	.byte	W12
	.byte		N03	, En3
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song010_7_1
	.byte	PATT	
		.word	song010_7_2
	.byte	PATT	
		.word	song010_7_1
	.byte	W03
	.byte		N03	, En4, v068
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N05	, Gn4
	.byte	W12
	.byte		N03	, Dn4
	.byte	W12
	.byte		N04	, Gn2
	.byte	W12
	.byte		N03	, En3
	.byte	W09
	.byte	W03
	.byte		N04	, En4
	.byte	W24
	.byte			En2
	.byte	W12
	.byte		N03	, En3
	.byte	W12
	.byte		N05	, Gs4
	.byte	W12
	.byte		N04	, Dn4
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N03	, En3
	.byte	W08
	.byte		N06	, En5, v048
	.byte	W01
	.byte	PATT	
		.word	song010_7_3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song010_7_4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song010_8
song010_8:	@ 0x08269B16
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v063
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
song010_8_1:
	.byte	W01
	.byte		N13	, Gn3, v092
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N22	, Fs3
	.byte	W11
	.byte	PEND
song010_8_2:
	.byte	W13
	.byte		N12	, Cs3, v092
	.byte	W24
	.byte			An2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W11
	.byte	PEND
song010_8_3:
	.byte	W01
	.byte		N12	, Dn3, v092
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N21	, Cs3
	.byte	W11
	.byte	PEND
song010_8_4:
	.byte	W13
	.byte		N36	, An2, v092
	.byte	W48
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W11
	.byte	PEND
song010_8_5:
	.byte	W01
	.byte		N12	, Gn3, v092
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N24	, Fs3
	.byte	W11
	.byte	PEND
	.byte	W13
	.byte			Cs3
	.byte	W24
	.byte		N12	, An2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W11
	.byte	W01
	.byte			Dn3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte			Dn3
	.byte	W24
	.byte		N48	, En3
	.byte	W11
	.byte	W60
	.byte	W01
	.byte		N12	, An3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	W01
	.byte			Gn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N24	, Fs4
	.byte	W11
	.byte	W13
	.byte			Cs4
	.byte	W24
	.byte		N12	, An3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cs4
	.byte	W11
	.byte	W01
	.byte			Dn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cs4
	.byte	W11
	.byte	W16
	.byte		N36	, An3
	.byte	W44
	.byte	W01
	.byte		N12	, Gn3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W11
	.byte	W01
	.byte		N42	, En4
	.byte	W48
	.byte		N12	, Dn4
	.byte	W12
	.byte		N23	, Cs4
	.byte	W24
	.byte		N18	, Dn4
	.byte	W11
	.byte	W13
	.byte		N44	, An3
	.byte	W48
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W11
	.byte	W01
	.byte			Gn3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N18	, Gs3
	.byte	W24
	.byte		N72	, An3
	.byte	W11
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
		.word	song010_8_1
	.byte	PATT	
		.word	song010_8_2
	.byte	PATT	
		.word	song010_8_3
	.byte	PATT	
		.word	song010_8_4
	.byte	GOTO	
		.word	song010_8_5
	.byte	PATT	
		.word	song010_8_5
	.byte	W13
	.byte	FINE

	@********************** Track  9 **********************@

	.global song010_9
song010_9:	@ 0x08269C0E
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v063
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W96
song010_9_1:
	.byte		N13	, En3, v116
	.byte	W24
	.byte		N14	, En3, v124
	.byte	W24
	.byte		N12	, En3, v116
	.byte	W12
	.byte			Ds3, v100
	.byte	W12
	.byte			Cs3, v112
	.byte	W12
	.byte		N22	, Ds3, v108
	.byte	W12
	.byte	PEND
song010_9_2:
	.byte	W12
	.byte		N12	, As2, v116
	.byte	W24
	.byte			Fs2, v120
	.byte	W24
	.byte			Fs2, v116
	.byte	W12
	.byte			Gs2, v120
	.byte	W12
	.byte			As2, v108
	.byte	W12
	.byte	PEND
song010_9_3:
	.byte		N12	, Bn2, v112
	.byte	W24
	.byte			Bn2, v116
	.byte	W24
	.byte			Bn2, v120
	.byte	W12
	.byte			As2, v108
	.byte	W12
	.byte			Gs2, v116
	.byte	W12
	.byte		N21	, As2
	.byte	W12
	.byte	PEND
song010_9_4:
	.byte	W12
	.byte		N36	, Fs2, v124
	.byte	W48
	.byte		N12	, Fs2, v112
	.byte	W12
	.byte			As2, v104
	.byte	W12
	.byte			Cs3, v116
	.byte	W12
	.byte	PEND
song010_9_5:
	.byte		N12	, En3, v120
	.byte	W24
	.byte			En3, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Ds3, v108
	.byte	W12
	.byte			Cs3, v116
	.byte	W12
	.byte		N24	, Ds3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			As2, v112
	.byte	W24
	.byte		N12	, Fs2, v116
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Gs2, v112
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Bn2, v116
	.byte	W24
	.byte			Bn2, v120
	.byte	W24
	.byte			As2, v112
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte		N48	, Cs3, v124
	.byte	W12
	.byte	W60
	.byte		N12	, Fs2, v112
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Cs3, v104
	.byte	W12
	.byte			En3
	.byte	W24
	.byte			En3, v108
	.byte	W24
	.byte			En3, v104
	.byte	W12
	.byte			Ds3, v108
	.byte	W12
	.byte			Cs3, v112
	.byte	W12
	.byte		N24	, Ds3, v108
	.byte	W12
	.byte	W12
	.byte			As2, v116
	.byte	W24
	.byte		N12	, Fs2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Gs2, v108
	.byte	W12
	.byte			As2, v112
	.byte	W12
	.byte			Bn2, v116
	.byte	W24
	.byte			Bn2, v120
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			As2, v104
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			As2, v124
	.byte	W12
	.byte	W15
	.byte		N36	, Fs2
	.byte	W44
	.byte	W01
	.byte		N12	, En2, v116
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Bn2, v120
	.byte	W12
	.byte		N42	, Cs3, v108
	.byte	W48
	.byte		N12	, Bn2, v116
	.byte	W12
	.byte		N23	, As2, v108
	.byte	W24
	.byte		N18	, Bn2, v120
	.byte	W12
	.byte	W12
	.byte		N44	, Fs2, v108
	.byte	W48
	.byte		N12	, Fs2, v124
	.byte	W12
	.byte			Gs2, v120
	.byte	W12
	.byte			Fs2, v108
	.byte	W12
	.byte			En2
	.byte	W24
	.byte			En2, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N18	, Fn2, v116
	.byte	W24
	.byte		N72	, Fs2, v120
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
	.byte	PATT	
		.word	song010_9_1
	.byte	PATT	
		.word	song010_9_2
	.byte	PATT	
		.word	song010_9_3
	.byte	PATT	
		.word	song010_9_4
	.byte	GOTO	
		.word	song010_9_5
	.byte	PATT	
		.word	song010_9_5
	.byte	W12
	.byte	FINE

	@********************** Track  10 **********************@

	.global song010_10
song010_10:	@ 0x08269D36
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v085
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W12
	.byte		N11	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn1
	.byte	W12
song010_10_2:
	.byte		N11	, An2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	PEND
song010_10_3:
	.byte		N11	, An2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte	PEND
song010_10_1:
	.byte		N11	, Dn2, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song010_10_1
song010_10_5:
	.byte	PATT	
		.word	song010_10_2
	.byte	PATT	
		.word	song010_10_3
song010_10_4:
	.byte		N11	, Dn2, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte	PEND
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PATT	
		.word	song010_10_2
	.byte	PATT	
		.word	song010_10_3
	.byte	PATT	
		.word	song010_10_4
	.byte	PATT	
		.word	song010_10_1
	.byte		N11	, Cn2, v092
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song010_10_2
	.byte	PATT	
		.word	song010_10_3
	.byte	PATT	
		.word	song010_10_1
	.byte	PATT	
		.word	song010_10_1
	.byte	GOTO	
		.word	song010_10_5
	.byte	PATT	
		.word	song010_10_2
	.byte	FINE

	@********************** Track  11 **********************@

	.global song010_11
song010_11:	@ 0x08269E38
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v085
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W14
	.byte		N11	, Dn2, v092
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn1
	.byte	W10
song010_11_2:
	.byte	W02
	.byte		N11	, An2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W10
	.byte	PEND
song010_11_3:
	.byte	W02
	.byte		N11	, An2, v092
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W10
	.byte	PEND
song010_11_1:
	.byte	W02
	.byte		N11	, Dn2, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An1
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song010_11_1
song010_11_4:
	.byte	PATT	
		.word	song010_11_2
	.byte	PATT	
		.word	song010_11_3
	.byte	W02
	.byte		N11	, Dn2, v092
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W10
	.byte	W02
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Cn2
	.byte	W10
	.byte	PATT	
		.word	song010_11_2
	.byte	PATT	
		.word	song010_11_3
	.byte	PATT	
		.word	song010_11_1
	.byte	PATT	
		.word	song010_11_1
	.byte	W02
	.byte		N11	, Cn2, v092
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	W02
	.byte			Fs2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	W02
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gs1
	.byte	W10
	.byte	W02
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Cs2
	.byte	W10
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song010_11_2
	.byte	PATT	
		.word	song010_11_3
	.byte	PATT	
		.word	song010_11_1
	.byte	PATT	
		.word	song010_11_1
	.byte	GOTO	
		.word	song010_11_4
	.byte	PATT	
		.word	song010_11_2
	.byte	W01
	.byte	FINE

	.align 2
	.global song010
song010:	@ 0x08269F44
	.byte	11		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	song010_1		@ track
	.word	song010_2		@ track
	.word	song010_3		@ track
	.word	song010_4		@ track
	.word	song010_5		@ track
	.word	song010_6		@ track
	.word	song010_7		@ track
	.word	song010_8		@ track
	.word	song010_9		@ track
	.word	song010_10		@ track
	.word	song010_11		@ track
