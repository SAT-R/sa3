	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song022_1
song022_1:	@ 0x082710E8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 91
	.byte	VOICE	, 127
	.byte	VOL	, v080
	.byte	PAN	, c_v+3
	.byte	W03
	.byte	TEMPO	, 91
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Gs3
	.byte	W11
	.byte			Gn3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N10	, Gn7
	.byte	W12
	.byte		N16	, Gs3
	.byte	W24
song022_1_1:
	.byte		N11	, Ds4, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Ds4
	.byte	W11
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Fs4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
song022_1_2:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Ds4
	.byte	W11
	.byte			Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gs3
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N06	, Gs3
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N11	, Gs3
	.byte	W12
	.byte		N05	, Gn7
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song022_1_8:
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_2
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_2
	.byte		N11	, Ds4, v127
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte			Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
song022_1_3:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte			Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song022_1_3
	.byte	PATT	
		.word	song022_1_3
	.byte	PATT	
		.word	song022_1_3
	.byte	PATT	
		.word	song022_1_3
	.byte	PATT	
		.word	song022_1_3
song022_1_7:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Ds4
	.byte	W11
	.byte			Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W06
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gs3
	.byte	W06
	.byte		N05	, Bn3
	.byte	W06
	.byte		N06	, Gs3
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N11	, Gs3
	.byte	W12
	.byte		N05	, Gn7
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte	PEND
song022_1_4:
	.byte		N11	, Ds4, v127
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte			Gs3
	.byte	W13
	.byte		N06	, An3
	.byte	W12
	.byte		N11	, Ds4
	.byte	W12
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N11	, Ds4
	.byte	W18
	.byte		N05	, Fs4
	.byte	W06
	.byte	PEND
song022_1_5:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte			Gs3
	.byte	W19
	.byte		N05	, As3
	.byte	W06
	.byte		N11	, Ds4
	.byte	W12
	.byte		N10	, Gn7
	.byte	W12
	.byte		N11	, Ds4
	.byte	W18
	.byte		N05	, Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song022_1_4
	.byte	PATT	
		.word	song022_1_5
	.byte	PATT	
		.word	song022_1_4
	.byte	PATT	
		.word	song022_1_5
	.byte	PATT	
		.word	song022_1_4
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte			Gs3
	.byte	W19
	.byte		N05	, As3
	.byte	W06
	.byte		N11	, Ds4
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N11	
	.byte	W18
	.byte		N05	, Fs4
	.byte	W06
song022_1_6:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte			Gs3
	.byte	W19
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_7
	.byte		N11	, Ds4, v127
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte			Gs3
	.byte	W19
	.byte		N05	, As3
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Cn4
	.byte	W06
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W12
	.byte		N05	, Fn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_6
	.byte	PATT	
		.word	song022_1_7
	.byte	PATT	
		.word	song022_1_4
	.byte	PATT	
		.word	song022_1_5
	.byte	PATT	
		.word	song022_1_4
	.byte	PATT	
		.word	song022_1_5
	.byte	PATT	
		.word	song022_1_4
	.byte	PATT	
		.word	song022_1_5
	.byte	PATT	
		.word	song022_1_4
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte			Gs3
	.byte	W19
	.byte		N05	, As3
	.byte	W06
	.byte		N11	, Ds4
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_1
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Ds4
	.byte	W11
	.byte		N18	, Gs3
	.byte	W19
	.byte		N05	, Gn7
	.byte	W06
	.byte		N06	, Gs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte	GOTO	
		.word	song022_1_8
	.byte		N11	, Ds4, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Ds4
	.byte	W11
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Fs4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte			Fs4
	.byte	W05
	.byte	FINE

	@********************** Track  2 **********************@

	.global song022_2
song022_2:	@ 0x08271365
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v050
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
song022_2_1:
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
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
song022_2_2:
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
song022_2_5:
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_2
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_2
	.byte	PATT	
		.word	song022_2_1
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
	.byte	W30
song022_2_3:
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
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
song022_2_4:
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
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_4
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_2
	.byte	GOTO	
		.word	song022_2_5
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
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song022_3
song022_3:	@ 0x08271535
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v070
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
song022_3_1:
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
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
song022_3_2:
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte			Gn7, v088
	.byte	W24
	.byte			Gn7, v068
	.byte	W12
	.byte	PEND
song022_3_4:
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_2
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_2
	.byte	PATT	
		.word	song022_3_1
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, An7
	.byte	W12
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
song022_3_3:
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
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_3
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_2
	.byte	GOTO	
		.word	song022_3_4
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  4 **********************@

	.global song022_4
song022_4:	@ 0x08271684
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v076
	.byte	PAN	, c_v-6
	.byte	W03
	.byte	W96
song022_4_12:
	.byte	W01
	.byte		N11	, Dn1, v100
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			En2
	.byte	W11
	.byte	PEND
song022_4_13:
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Bn1
	.byte	W11
	.byte	PEND
song022_4_14:
	.byte	W01
	.byte		N11	, Fn1, v100
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gn2
	.byte	W11
	.byte	PEND
song022_4_15:
	.byte	W01
	.byte		N11	, Gn1, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W11
	.byte	PEND
song022_4_16:
	.byte	W01
	.byte		N11	, An1, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			As2
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Fn2
	.byte	W11
	.byte	W01
	.byte			Cn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W11
	.byte	W01
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W11
song022_4_1:
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs1
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte			Cs2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			En1
	.byte	W11
	.byte	PATT	
		.word	song022_4_1
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W11
song022_4_2:
	.byte	W01
	.byte		N11	, An1, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W11
	.byte	PEND
song022_4_3:
	.byte	W01
	.byte		N11	, Dn1, v100
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			An1
	.byte	W11
	.byte	PEND
song022_4_7:
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W11
	.byte	PEND
song022_4_8:
	.byte	W01
	.byte		N11	, An1, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Dn2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_3
song022_4_6:
	.byte	W01
	.byte		N11	, Gn1, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			An1
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Bn1
	.byte	W11
song022_4_4:
	.byte	W01
	.byte		N11	, Dn1, v100
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			An1
	.byte	W11
	.byte	PEND
song022_4_5:
	.byte	W01
	.byte		N11	, Dn1, v100
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			En1
	.byte	W11
	.byte	PEND
song022_4_9:
	.byte	W01
	.byte		N11	, An1, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W11
	.byte	PEND
song022_4_10:
	.byte	W01
	.byte		N11	, An1, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			En2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song022_4_4
	.byte	PATT	
		.word	song022_4_5
	.byte	PATT	
		.word	song022_4_6
song022_4_11:
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Bn1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_7
	.byte	PATT	
		.word	song022_4_8
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_6
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Gn2
	.byte	W11
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_7
	.byte	PATT	
		.word	song022_4_8
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_6
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Bn1
	.byte	W11
	.byte	PATT	
		.word	song022_4_4
	.byte	PATT	
		.word	song022_4_5
	.byte	PATT	
		.word	song022_4_9
	.byte	PATT	
		.word	song022_4_10
	.byte	PATT	
		.word	song022_4_4
	.byte	PATT	
		.word	song022_4_5
	.byte	PATT	
		.word	song022_4_6
	.byte	PATT	
		.word	song022_4_11
	.byte	PATT	
		.word	song022_4_12
	.byte	PATT	
		.word	song022_4_13
	.byte	PATT	
		.word	song022_4_14
	.byte	PATT	
		.word	song022_4_15
	.byte	GOTO	
		.word	song022_4_16
	.byte	PATT	
		.word	song022_4_16
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song022_5
song022_5:	@ 0x08271908
	.byte	KEYSH	, 0
	.byte	VOICE	, 70
	.byte	VOL	, v066
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
song022_5_2:
	.byte	W92
	.byte	W01
	.byte		N03	, Cn2, v072
	.byte	W03
	.byte	PEND
song022_5_10:
	.byte	W12
	.byte		N12	, Dn3, v072
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
	.byte	PEND
song022_5_3:
	.byte	W92
	.byte	W01
	.byte		N03	, An1, v072
	.byte	W03
	.byte	PEND
song022_5_11:
	.byte	W12
	.byte		N12	, Cn3, v072
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
	.byte	PEND
song022_5_12:
	.byte	W92
	.byte	W01
	.byte		N03	, Ds2, v072
	.byte	W03
	.byte	W12
	.byte		N12	, As2
	.byte	W15
	.byte		N03	, Ds2
	.byte	W06
	.byte		N05	, As2
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N03	, Ds2
	.byte	W06
	.byte		N24	, Ds3
	.byte	W30
	.byte	W92
	.byte	W01
	.byte		N03	, Gn2
	.byte	W03
	.byte	W12
	.byte		N12	, Gn3
	.byte	W15
	.byte		N03	, Gn2
	.byte	W06
	.byte		N05	, Gn3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte		N24	, Gn3
	.byte	W24
	.byte	W03
	.byte		N03	, An2
	.byte	W03
song022_5_1:
	.byte	W12
	.byte		N12	, An3, v072
	.byte	W15
	.byte		N03	, An2
	.byte	W06
	.byte		N05	, An3
	.byte	W15
	.byte		N07	
	.byte	W09
	.byte		N05	, An2
	.byte	W15
	.byte		N11	, An3
	.byte	W12
	.byte		N02	, An2
	.byte	W06
	.byte		N17	, An3
	.byte	W03
	.byte		N03	, An2
	.byte	W03
	.byte	PEND
	.byte	W12
	.byte		N12	, An3
	.byte	W15
	.byte		N03	, An2
	.byte	W06
	.byte		N05	, An3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N02	, An2
	.byte	W06
	.byte		N24	, An3
	.byte	W24
	.byte	W03
	.byte		N03	, An2
	.byte	W03
	.byte	PATT	
		.word	song022_5_1
	.byte	W12
	.byte		N12	, An3, v072
	.byte	W15
	.byte		N03	, An2
	.byte	W06
	.byte		N05	, An3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N02	, An2
	.byte	W06
	.byte		N24	, An3
	.byte	W30
	.byte	PATT	
		.word	song022_5_2
song022_5_4:
	.byte	W12
	.byte		N12	, Dn3, v072
	.byte	W15
	.byte		N03	, Cn2
	.byte	W06
	.byte		N05	, Dn3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N03	, Cn2
	.byte	W06
	.byte		N24	, Dn3
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.word	song022_5_3
song022_5_5:
	.byte	W12
	.byte		N12	, Dn3, v072
	.byte	W15
	.byte		N03	, An1
	.byte	W06
	.byte		N05	, Dn3
	.byte	W15
	.byte		N11	, Cn3
	.byte	W12
	.byte		N02	, An1
	.byte	W06
	.byte		N24	, Cn3
	.byte	W30
	.byte	PEND
song022_5_6:
	.byte	W92
	.byte	W01
	.byte		N03	, Dn2, v072
	.byte	W03
	.byte	PEND
song022_5_7:
	.byte	W12
	.byte		N12	, Dn3, v072
	.byte	W15
	.byte		N03	, Dn2
	.byte	W06
	.byte		N05	, Dn3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N03	, Dn2
	.byte	W06
	.byte		N24	, Dn3
	.byte	W30
	.byte	PEND
song022_5_8:
	.byte	W80
	.byte	W01
	.byte		N03	, An2, v072
	.byte	W15
	.byte	PEND
song022_5_9:
	.byte		N12	, Gn3, v072
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N05	, Gn3
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N03	, Gs2
	.byte	W12
	.byte		N24	, Cs3
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song022_5_2
	.byte	PATT	
		.word	song022_5_4
	.byte	PATT	
		.word	song022_5_3
	.byte	PATT	
		.word	song022_5_5
	.byte	PATT	
		.word	song022_5_6
	.byte	PATT	
		.word	song022_5_7
	.byte	PATT	
		.word	song022_5_8
	.byte		N12	, Gn3, v072
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N05	, Gn3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N03	, Gs2
	.byte	W12
	.byte		N24	, En3
	.byte	W24
	.byte	PATT	
		.word	song022_5_2
	.byte	PATT	
		.word	song022_5_4
	.byte	PATT	
		.word	song022_5_3
	.byte	PATT	
		.word	song022_5_5
	.byte	PATT	
		.word	song022_5_6
	.byte	PATT	
		.word	song022_5_7
	.byte	PATT	
		.word	song022_5_8
	.byte	PATT	
		.word	song022_5_9
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song022_5_2
	.byte	PATT	
		.word	song022_5_10
	.byte	PATT	
		.word	song022_5_3
	.byte	PATT	
		.word	song022_5_11
	.byte	GOTO	
		.word	song022_5_12
	.byte	FINE

	@********************** Track  6 **********************@

	.global song022_6
song022_6:	@ 0x08271AB6
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	VOL	, v080
	.byte	PAN	, c_v+1
	.byte	W03
	.byte	W96
song022_6_2:
	.byte		N54	, An2, v112
	.byte		N54	, An3
	.byte	W60
	.byte		N04	, Gs2
	.byte		N04	, Gs3
	.byte	W12
	.byte			An2
	.byte		N04	, An3
	.byte	W12
	.byte		N64	, Bn2
	.byte		N64	, Bn3
	.byte	W12
	.byte	PEND
song022_6_3:
	.byte	W60
	.byte		N11	, An2, v112
	.byte		N11	, An3
	.byte	W24
	.byte		N05	, Bn2
	.byte		N05	, Bn3
	.byte	W12
	.byte	PEND
song022_6_4:
	.byte		N56	, Cn3, v112
	.byte		N56	, Cn4
	.byte	W60
	.byte		N04	, Bn2
	.byte		N04	, Bn3
	.byte	W12
	.byte		N05	, Cn3
	.byte		N05	, Cn4
	.byte	W12
	.byte		N66	, Dn3
	.byte		N66	, Dn4
	.byte	W12
	.byte	PEND
song022_6_5:
	.byte	W60
	.byte		N15	, Cn3, v112
	.byte		N15	, Cn4
	.byte	W24
	.byte		N05	, Dn3
	.byte		N05	, Dn4
	.byte	W12
	.byte	PEND
song022_6_6:
	.byte		N56	, En3, v112
	.byte		N56	, En4
	.byte	W60
	.byte		N04	, Dn3
	.byte		N04	, Dn4
	.byte	W12
	.byte		N05	, En3
	.byte		N05	, En4
	.byte	W12
	.byte		N66	, Fn3
	.byte		N66	, Fn4
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N14	, En3
	.byte		N14	, En4
	.byte	W24
	.byte		N05	, Fn3
	.byte		N05	, Fn4
	.byte	W12
	.byte		N56	, Gn3
	.byte		N56	, Gn4
	.byte	W60
	.byte		N04	, Fn3
	.byte		N04	, Fn4
	.byte	W12
	.byte		N05	, Gn3
	.byte		N05	, Gn4
	.byte	W12
	.byte		N66	, An3
	.byte		N66	, An4
	.byte	W12
	.byte	W60
	.byte		N14	, Gn3
	.byte		N14	, Gn4
	.byte	W24
	.byte		N07	, An3
	.byte		N07	, An4
	.byte	W12
song022_6_1:
	.byte		TIE	, Bn3, v112
	.byte		TIE	, Bn4
	.byte	W96
	.byte	PEND
	.byte	W84
	.byte	W02
	.byte		EOT	, Bn3
	.byte			Bn4
	.byte	W10
	.byte	PATT	
		.word	song022_6_1
	.byte	W84
	.byte	W02
	.byte		EOT	, Bn3
	.byte			Bn4
	.byte	W10
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
	.byte	PATT	
		.word	song022_6_2
	.byte	PATT	
		.word	song022_6_3
	.byte	PATT	
		.word	song022_6_4
	.byte	PATT	
		.word	song022_6_5
	.byte	GOTO	
		.word	song022_6_6
	.byte	PATT	
		.word	song022_6_6
	.byte	W54
	.byte	W01
	.byte	FINE

	@********************** Track  7 **********************@

	.global song022_7
song022_7:	@ 0x08271BA6
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v080
	.byte	PAN	, c_v+1
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_7_14:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W01
	.byte	PAN	, c_v-4
	.byte		N13	, Gn3, v120
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
song022_7_1:
	.byte	W13
	.byte		N12	, Cs3, v120
	.byte	W24
	.byte			An2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn3
	.byte	W11
	.byte	PEND
song022_7_2:
	.byte	W01
	.byte		N12	, En3, v120
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Dn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N21	, Cs3
	.byte	W11
	.byte	PEND
song022_7_3:
	.byte	W13
	.byte		N12	, An2, v120
	.byte	W24
	.byte		N18	, Gn2
	.byte	W24
	.byte		N12	, An2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W11
	.byte	PEND
song022_7_4:
	.byte	W01
	.byte		N12	, Gn3, v120
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
song022_7_5:
	.byte	W13
	.byte		N24	, Cs3, v120
	.byte	W24
	.byte		N12	, An2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W11
	.byte	PEND
song022_7_6:
	.byte	W01
	.byte		N12	, Gn3, v120
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte			Gn3
	.byte	W24
	.byte		N24	, En3
	.byte	W11
	.byte	PEND
	.byte	W24
	.byte	W01
	.byte		N12	, Dn3
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Bn2
	.byte	W23
song022_7_7:
	.byte		N01	, Cn4, v096
	.byte	W01
	.byte		N12	, Dn4, v120
	.byte	W23
	.byte		N13	, Cn4, v127
	.byte	W24
	.byte		N16	, Bn3
	.byte	W24
	.byte		N15	, An3
	.byte	W24
	.byte	PEND
song022_7_8:
	.byte		N01	, Bn3, v112
	.byte	W01
	.byte		N10	, Cn4, v120
	.byte	W11
	.byte		N12	, Bn3, v127
	.byte	W12
	.byte		N11	, An3, v120
	.byte	W12
	.byte		N15	, Dn3
	.byte	W24
	.byte		N05	, Dn3, v127
	.byte	W12
	.byte		N12	, Fs3, v116
	.byte	W12
	.byte			An3, v124
	.byte	W12
	.byte	PEND
song022_7_9:
	.byte		N12	, Cn4, v127
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	W01
	.byte			En3
	.byte	W23
	.byte	PEND
song022_7_10:
	.byte		N01	, Cn3, v112
	.byte	W01
	.byte		N09	, Cs3, v120
	.byte	W11
	.byte		N36	, An2, v124
	.byte	W48
	.byte	W01
	.byte		N05	, Dn3, v127
	.byte	W11
	.byte		N12	, Fs3, v120
	.byte	W12
	.byte			An3, v127
	.byte	W12
	.byte	PEND
song022_7_11:
	.byte		N12	, Dn4, v127
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Bn3, v120
	.byte	W24
	.byte			An3, v127
	.byte	W24
	.byte	PEND
song022_7_12:
	.byte		N01	, Bn3, v104
	.byte	W01
	.byte		N10	, Cn4, v116
	.byte	W11
	.byte		N06	, Bn3, v124
	.byte	W12
	.byte			An3, v127
	.byte	W12
	.byte		N18	, Dn3
	.byte	W24
	.byte		N10	, Dn3, v116
	.byte	W12
	.byte		N12	, Fs3
	.byte	W12
	.byte			An3, v127
	.byte	W12
	.byte	PEND
song022_7_13:
	.byte		N12	, Dn4, v127
	.byte	W24
	.byte	W03
	.byte		N12	
	.byte	W21
	.byte			Cs4, v124
	.byte	W12
	.byte			Dn4, v127
	.byte	W24
	.byte		N72	, En4, v120
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte	W01
	.byte		N12	, An2, v100
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W11
	.byte	W01
	.byte		N13	, Gn3, v120
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
	.byte	PATT	
		.word	song022_7_1
	.byte	PATT	
		.word	song022_7_2
	.byte	PATT	
		.word	song022_7_3
	.byte	PATT	
		.word	song022_7_4
	.byte	PATT	
		.word	song022_7_5
	.byte	PATT	
		.word	song022_7_6
	.byte	W60
	.byte	W01
	.byte		N12	, An3, v100
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	W01
	.byte		N13	, Gn4, v120
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N22	, Fs4
	.byte	W11
	.byte	W13
	.byte		N12	, Cs4
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W11
	.byte	W01
	.byte			En4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N21	, Cs4
	.byte	W11
	.byte	W13
	.byte		N12	, An3
	.byte	W24
	.byte		N18	, Gn3
	.byte	W24
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
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	W01
	.byte			Gn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte			Gn4
	.byte	W24
	.byte		N24	, En4
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		N12	, Dn4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			Bn3
	.byte	W23
	.byte	PATT	
		.word	song022_7_7
	.byte	PATT	
		.word	song022_7_8
	.byte	PATT	
		.word	song022_7_9
	.byte	PATT	
		.word	song022_7_10
	.byte	PATT	
		.word	song022_7_11
	.byte	PATT	
		.word	song022_7_12
	.byte	PATT	
		.word	song022_7_13
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song022_7_14
	.byte	FINE

	@********************** Track  8 **********************@

	.global song022_8
song022_8:	@ 0x08271D9F
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v060
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_8_9:
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
song022_8_2:
	.byte		N01	, Cn5, v100
	.byte	W01
	.byte		N12	, Dn5
	.byte	W23
	.byte		N13	, Cn5
	.byte	W24
	.byte		N16	, Bn4
	.byte	W24
	.byte		N15	, An4
	.byte	W24
	.byte	PEND
song022_8_3:
	.byte		N01	, Bn4, v100
	.byte	W01
	.byte		N10	, Cn5
	.byte	W11
	.byte		N12	, Bn4
	.byte	W12
	.byte		N11	, An4
	.byte	W12
	.byte		N15	, Dn4
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N12	, Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte	PEND
song022_8_4:
	.byte		N12	, Cn5, v100
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte	W01
	.byte			En4
	.byte	W23
	.byte	PEND
song022_8_5:
	.byte		N01	, Cn4, v100
	.byte	W01
	.byte		N09	, Cs4
	.byte	W11
	.byte		N36	, An3
	.byte	W48
	.byte	W01
	.byte		N05	, Dn4
	.byte	W11
	.byte		N12	, Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte	PEND
song022_8_6:
	.byte		N12	, Dn5, v100
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte	PEND
song022_8_7:
	.byte		N01	, Bn4, v100
	.byte	W01
	.byte		N10	, Cn5
	.byte	W11
	.byte		N06	, Bn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte		N18	, Dn4
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N12	, Fs4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte	PEND
song022_8_8:
	.byte		N12	, Dn5, v100
	.byte	W24
	.byte	W03
	.byte		N12	
	.byte	W21
	.byte			Cs5
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte		N72	, En5
	.byte	W12
	.byte	PEND
song022_8_1:
	.byte	W60
	.byte	W01
	.byte		N12	, An4, v100
	.byte	W12
	.byte			Cs5
	.byte	W12
	.byte			En5
	.byte	W11
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song022_8_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song022_8_2
	.byte	PATT	
		.word	song022_8_3
	.byte	PATT	
		.word	song022_8_4
	.byte	PATT	
		.word	song022_8_5
	.byte	PATT	
		.word	song022_8_6
	.byte	PATT	
		.word	song022_8_7
	.byte	PATT	
		.word	song022_8_8
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song022_8_9
	.byte	FINE

	@********************** Track  9 **********************@

	.global song022_9
song022_9:	@ 0x08271E84
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v080
	.byte	PAN	, c_v+1
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_9_8:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W01
	.byte		N13	, Fn4, v100
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N22	, En4
	.byte	W11
	.byte	W13
	.byte		N12	, Bn3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Cn4
	.byte	W11
	.byte	W01
	.byte			Dn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Cn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N21	, Bn3
	.byte	W11
	.byte	W13
	.byte		N12	, Gn3
	.byte	W24
	.byte		N18	, Fn3
	.byte	W24
	.byte		N12	, Gn3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Dn4
	.byte	W11
	.byte	W01
	.byte			Fn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N24	, En4
	.byte	W11
	.byte	W13
	.byte			Bn3
	.byte	W24
	.byte		N12	, Gn3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Dn4
	.byte	W11
	.byte	W01
	.byte			Fn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			En4
	.byte	W12
	.byte			Fn4
	.byte	W24
	.byte		N24	, Dn4
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		N12	, Cn4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			An3
	.byte	W23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_9_1:
	.byte	W01
	.byte		N13	, Fn5, v100
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			En5
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte		N22	, En5
	.byte	W11
	.byte	PEND
song022_9_2:
	.byte	W13
	.byte		N12	, Bn4, v100
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Cn5
	.byte	W11
	.byte	PEND
song022_9_3:
	.byte	W01
	.byte		N12	, Dn5, v100
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Cn5
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte		N21	, Bn4
	.byte	W11
	.byte	PEND
song022_9_4:
	.byte	W13
	.byte		N12	, Gn4, v100
	.byte	W24
	.byte		N18	, Fn4
	.byte	W24
	.byte		N12	, Gn4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Dn5
	.byte	W11
	.byte	PEND
song022_9_5:
	.byte	W01
	.byte		N12	, Fn5, v100
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			En5
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte		N24	, En5
	.byte	W11
	.byte	PEND
song022_9_6:
	.byte	W13
	.byte		N24	, Bn4, v100
	.byte	W24
	.byte		N12	, Gn4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Dn5
	.byte	W11
	.byte	PEND
song022_9_7:
	.byte	W01
	.byte		N12	, Fn5, v100
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			En5
	.byte	W12
	.byte			Fn5
	.byte	W24
	.byte		N24	, Dn5
	.byte	W11
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song022_9_1
	.byte	PATT	
		.word	song022_9_2
	.byte	PATT	
		.word	song022_9_3
	.byte	PATT	
		.word	song022_9_4
	.byte	PATT	
		.word	song022_9_5
	.byte	PATT	
		.word	song022_9_6
	.byte	PATT	
		.word	song022_9_7
	.byte	W24
	.byte	W01
	.byte		N12	, Cn5, v100
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			An4
	.byte	W23
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
	.byte	GOTO	
		.word	song022_9_8
	.byte	FINE

	@********************** Track  10 **********************@

	.global song022_10
song022_10:	@ 0x08271FB8
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v073
	.byte	PAN	, c_v-31
	.byte	BENDR	, 12
	.byte	W03
	.byte	W12
	.byte		N24	, Fn2, v108
	.byte	W36
	.byte		N13	, Gn2, v120
	.byte	W24
	.byte		N24	, An2
	.byte	W24
	.byte		N19	, As2, v092
	.byte	W24
	.byte		N11	, As2, v088
	.byte	W36
	.byte			As2, v104
	.byte	W24
	.byte		N23	, Cn3, v096
	.byte	W12
song022_10_14:
	.byte	W24
	.byte		N11	, Cn3, v108
	.byte	W36
	.byte		N18	, Cn3, v092
	.byte	W36
	.byte	PEND
song022_10_15:
	.byte		N19	, Cs3, v092
	.byte	W24
	.byte		N11	, Cs3, v088
	.byte	W36
	.byte			Cs3, v104
	.byte	W24
	.byte		N23	, Ds3, v096
	.byte	W12
	.byte	PEND
song022_10_16:
	.byte	W24
	.byte		N11	, Ds3, v108
	.byte	W36
	.byte		N18	, Ds3, v092
	.byte	W24
	.byte		N11	, Ds3, v100
	.byte	W12
	.byte	PEND
song022_10_17:
	.byte		N16	, Fn3, v104
	.byte	W24
	.byte		N13	, Fn3, v112
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Ds3, v096
	.byte	W12
	.byte			Fn3, v108
	.byte	W12
	.byte		N18	, Fs3, v112
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N17	, Fs3, v104
	.byte	W24
	.byte		N16	, Fs3, v096
	.byte	W24
	.byte		N11	, Fs3, v100
	.byte	W12
	.byte			Fn3, v112
	.byte	W12
	.byte			Fs3, v104
	.byte	W12
	.byte		N16	, Gs3, v112
	.byte	W24
	.byte		N13	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Fs3, v096
	.byte	W12
	.byte			Gs3, v104
	.byte	W12
	.byte		N18	, As3, v108
	.byte	W12
	.byte	W12
	.byte		N17	, As3, v104
	.byte	W24
	.byte		N17	
	.byte	W24
	.byte		N11	, As3, v108
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			As3, v096
	.byte	W12
song022_10_1:
	.byte		N16	, Cn3, v108
	.byte	W24
	.byte		N18	, Cn3, v100
	.byte	W24
	.byte		N16	, As2, v104
	.byte	W24
	.byte		N15	, As2, v092
	.byte	W24
	.byte	PEND
song022_10_2:
	.byte		N15	, An2, v116
	.byte	W22
	.byte		N09	, An2, v112
	.byte	W12
	.byte		N32	, Gn2, v116
	.byte	W36
	.byte	W02
	.byte		N20	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song022_10_1
	.byte	PATT	
		.word	song022_10_2
song022_10_3:
	.byte		N23	, Fn2, v080
	.byte	W80
	.byte	W01
	.byte		N24	, As2
	.byte	W15
	.byte	PEND
song022_10_4:
	.byte	W48
	.byte		N11	, An2, v080
	.byte	W12
	.byte			As2
	.byte	W36
	.byte	PEND
song022_10_7:
	.byte		N17	, Cn3, v080
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N11	, As2
	.byte	W12
	.byte			An2
	.byte	W13
	.byte			Gn2
	.byte	W11
	.byte		N23	, An2
	.byte	W12
	.byte	PEND
song022_10_8:
	.byte	W48
	.byte		N11	, Ds3, v080
	.byte	W12
	.byte			Ds2
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song022_10_3
	.byte	PATT	
		.word	song022_10_4
song022_10_9:
	.byte		N17	, Ds3, v080
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N11	, Dn3
	.byte	W12
	.byte		N22	, Ds3
	.byte	W24
	.byte		N23	, Cn3
	.byte	W12
	.byte	PEND
song022_10_10:
	.byte	W48
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte			Cn3
	.byte	W36
	.byte	PEND
song022_10_5:
	.byte		N16	, As2, v080
	.byte	W24
	.byte		N17	
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
song022_10_6:
	.byte		N10	, An2, v080
	.byte	W12
	.byte		N11	, As2
	.byte	W24
	.byte		N17	
	.byte	W36
	.byte		N24	
	.byte	W24
	.byte	PEND
song022_10_11:
	.byte		N16	, Fn2, v080
	.byte	W24
	.byte		N17	
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte	PEND
song022_10_12:
	.byte		N11	, Ds2, v080
	.byte	W12
	.byte		N17	, Fn2
	.byte	W24
	.byte		N19	
	.byte	W36
	.byte		N23	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song022_10_5
	.byte	PATT	
		.word	song022_10_6
song022_10_13:
	.byte		N16	, Ds2, v080
	.byte	W24
	.byte		N17	
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N23	, Cn3
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N17	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N21	, An2
	.byte	W24
	.byte		N23	, Gn2
	.byte	W24
	.byte	PATT	
		.word	song022_10_3
	.byte	PATT	
		.word	song022_10_4
	.byte	PATT	
		.word	song022_10_7
	.byte	PATT	
		.word	song022_10_8
	.byte	PATT	
		.word	song022_10_3
	.byte	PATT	
		.word	song022_10_4
	.byte	PATT	
		.word	song022_10_9
	.byte	PATT	
		.word	song022_10_10
	.byte	PATT	
		.word	song022_10_3
	.byte	PATT	
		.word	song022_10_4
	.byte	PATT	
		.word	song022_10_7
	.byte	PATT	
		.word	song022_10_8
	.byte	PATT	
		.word	song022_10_3
	.byte	PATT	
		.word	song022_10_4
	.byte	PATT	
		.word	song022_10_9
	.byte	PATT	
		.word	song022_10_10
	.byte	PATT	
		.word	song022_10_5
	.byte	PATT	
		.word	song022_10_6
	.byte	PATT	
		.word	song022_10_11
	.byte	PATT	
		.word	song022_10_12
	.byte	PATT	
		.word	song022_10_5
	.byte	PATT	
		.word	song022_10_6
	.byte	PATT	
		.word	song022_10_13
	.byte	W12
	.byte		N24	, Cn3, v108
	.byte	W36
	.byte		N13	, Dn3, v120
	.byte	W24
	.byte		N24	, En3
	.byte	W24
	.byte		N19	, As2
	.byte	W24
	.byte		N11	, As2, v088
	.byte	W36
	.byte			As2, v104
	.byte	W24
	.byte		N23	, Cn3, v096
	.byte	W12
	.byte	PATT	
		.word	song022_10_14
	.byte	PATT	
		.word	song022_10_15
	.byte	PATT	
		.word	song022_10_16
	.byte	GOTO	
		.word	song022_10_17
	.byte	PATT	
		.word	song022_10_17
	.byte	W06
	.byte	FINE

	@********************** Track  11 **********************@

	.global song022_11
song022_11:	@ 0x082721C0
	.byte	KEYSH	, 0
	.byte	VOICE	, 103
	.byte	VOL	, v073
	.byte	PAN	, c_v-31
	.byte	W03
song022_11_5:
	.byte	W36
	.byte		N10	, Fn2, v120
	.byte	W24
	.byte			Fs2
	.byte	W36
	.byte	PEND
song022_11_6:
	.byte	W36
	.byte		N10	, As2, v092
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte	PEND
song022_11_7:
	.byte	W12
	.byte		N10	, Cn3, v092
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte		N10	
	.byte	W12
	.byte	PEND
song022_11_8:
	.byte	W36
	.byte		N10	, Cs3, v092
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte	PEND
song022_11_9:
	.byte	W12
	.byte		N10	, Ds3, v092
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte		N10	
	.byte	W12
	.byte	PEND
song022_11_10:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_11_1:
	.byte	W24
	.byte		N10	, Fn2, v092
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte	PEND
song022_11_2:
	.byte	W12
	.byte		N09	, As2, v092
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N09	
	.byte	W36
	.byte		N09	
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte	PEND
	.byte	W96
song022_11_3:
	.byte	W12
	.byte		N10	, Fn2, v092
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte			Ds2
	.byte	W36
	.byte		N09	, Fn2
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_11_1
	.byte	PATT	
		.word	song022_11_2
	.byte	W96
song022_11_4:
	.byte	W12
	.byte		N10	, Cn3, v092
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W36
	.byte		N09	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W60
	.byte			As2, v112
	.byte	W36
	.byte	W96
	.byte	W60
	.byte			Fn2
	.byte	W36
	.byte	W96
	.byte	W60
	.byte			As2
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song022_11_1
	.byte	PATT	
		.word	song022_11_2
	.byte	W96
	.byte	PATT	
		.word	song022_11_3
	.byte	PATT	
		.word	song022_11_1
	.byte	PATT	
		.word	song022_11_2
	.byte	W96
	.byte	PATT	
		.word	song022_11_4
	.byte	PATT	
		.word	song022_11_1
	.byte	PATT	
		.word	song022_11_2
	.byte	W96
	.byte	PATT	
		.word	song022_11_3
	.byte	PATT	
		.word	song022_11_1
	.byte	PATT	
		.word	song022_11_2
	.byte	W96
	.byte	PATT	
		.word	song022_11_4
	.byte	W96
	.byte	W60
	.byte		N10	, As2, v112
	.byte	W36
	.byte	W96
	.byte	W60
	.byte			Fn2
	.byte	W36
	.byte	W96
	.byte	W60
	.byte			As2
	.byte	W36
	.byte	W96
	.byte	PATT	
		.word	song022_11_5
	.byte	PATT	
		.word	song022_11_6
	.byte	PATT	
		.word	song022_11_7
	.byte	PATT	
		.word	song022_11_8
	.byte	PATT	
		.word	song022_11_9
	.byte	GOTO	
		.word	song022_11_10
	.byte	FINE

	@********************** Track  12 **********************@

	.global song022_12
song022_12:	@ 0x082722C3
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v060
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song022_12_5:
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
song022_12_1:
	.byte	W15
	.byte		N03	, An2, v096
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
song022_12_2:
	.byte	W15
	.byte		N04	, An2, v096
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
		.word	song022_12_1
	.byte	PATT	
		.word	song022_12_2
	.byte	PATT	
		.word	song022_12_1
	.byte	PATT	
		.word	song022_12_2
song022_12_3:
	.byte	W15
	.byte		N03	, Gn2, v096
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
	.byte	PEND
song022_12_4:
	.byte	W15
	.byte		N04	, En2, v096
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
	.byte	PEND
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
	.byte	PATT	
		.word	song022_12_1
	.byte	PATT	
		.word	song022_12_2
	.byte	PATT	
		.word	song022_12_1
	.byte	PATT	
		.word	song022_12_2
	.byte	PATT	
		.word	song022_12_1
	.byte	PATT	
		.word	song022_12_2
	.byte	PATT	
		.word	song022_12_3
	.byte	PATT	
		.word	song022_12_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song022_12_5
	.byte	FINE

	@********************** Track  13 **********************@

	.global song022_13
song022_13:	@ 0x08272391
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v060
	.byte	PAN	, c_v+21
	.byte	W03
	.byte	W96
song022_13_5:
	.byte	PAN	, c_v
	.byte	W01
	.byte		N04	, Cn4, v096
	.byte	W03
	.byte		N36	, Cs4, v104
	.byte	W36
	.byte	W01
	.byte		N32	, Bn3, v112
	.byte	W32
	.byte		N13	, En4, v084
	.byte	W12
	.byte		N48	, Cs4, v108
	.byte	W11
	.byte	PEND
song022_13_6:
	.byte	W36
	.byte	W01
	.byte		N36	, An3, v112
	.byte	W36
	.byte	W02
	.byte		N24	, Bn3, v104
	.byte	W21
	.byte	PEND
song022_13_7:
	.byte	W02
	.byte		N60	, Cn4, v104
	.byte	W60
	.byte	W01
	.byte		N12	, Dn4, v112
	.byte	W12
	.byte		N14	, En4, v104
	.byte	W13
	.byte		N56	, Dn4, v112
	.byte	W08
	.byte	PEND
song022_13_8:
	.byte	W48
	.byte	W01
	.byte		N42	, Gn4, v096
	.byte	W42
	.byte	W01
	.byte		N05	, Gn4, v076
	.byte	W03
	.byte		N06	, Gs4, v084
	.byte	W01
	.byte	PEND
song022_13_9:
	.byte	PAN	, c_v
	.byte	W05
	.byte		N56	, An4, v096
	.byte	W56
	.byte	W01
	.byte		N11	, Gn4
	.byte	W12
	.byte		N13	, An4
	.byte	W13
	.byte		N48	, As4, v104
	.byte	W09
	.byte	W36
	.byte	W02
	.byte		N07	, Cn5, v076
	.byte	W05
	.byte		N09	, Cs5, v096
	.byte	W07
	.byte		N44	, Dn5, v100
	.byte	W44
	.byte	W02
	.byte	W01
	.byte		N60	, Cn5, v088
	.byte	W60
	.byte	W01
	.byte		N12	, As4
	.byte	W10
	.byte		N13	, Cn5, v100
	.byte	W13
	.byte		TIE	, Dn5, v096
	.byte	W11
	.byte	W96
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte		TIE	, En5, v108
	.byte	W92
	.byte	W01
	.byte	W56
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N05	, Cs5, v100
	.byte	W04
	.byte		N20	, Dn5, v080
	.byte	W20
	.byte		N12	, Cs5, v104
	.byte	W12
	.byte		TIE	, Bn4
	.byte	W96
	.byte	W60
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N05	, An4, v052
	.byte	W02
	.byte		N04	, Gn4, v068
	.byte	W02
	.byte		N05	, Fn4, v076
	.byte	W02
	.byte		N04	, En4, v060
	.byte	W02
	.byte			Dn4, v080
	.byte	W03
	.byte			Cn4, v088
	.byte	W02
	.byte			Bn3, v076
	.byte	W01
	.byte			An3, v092
	.byte	W01
	.byte			Gn3, v084
	.byte	W03
	.byte			En3, v064
	.byte		N04	, Fn3, v012
	.byte	W02
	.byte			Dn3, v028
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PAN	, c_v+21
	.byte	W24
	.byte	W03
	.byte		N03	, An2, v076
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
song022_13_1:
	.byte	W03
	.byte		N04	, En4, v076
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
song022_13_2:
	.byte	W03
	.byte		N03	, En4, v076
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
		.word	song022_13_1
	.byte	PATT	
		.word	song022_13_2
	.byte	PATT	
		.word	song022_13_1
song022_13_3:
	.byte	W03
	.byte		N03	, En4, v076
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
	.byte	PEND
song022_13_4:
	.byte	W03
	.byte		N04	, En4, v076
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
	.byte	W09
	.byte	PEND
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
	.byte	W24
	.byte	W03
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
	.byte	PATT	
		.word	song022_13_1
	.byte	PATT	
		.word	song022_13_2
	.byte	PATT	
		.word	song022_13_1
	.byte	PATT	
		.word	song022_13_2
	.byte	PATT	
		.word	song022_13_1
	.byte	PATT	
		.word	song022_13_3
	.byte	PATT	
		.word	song022_13_4
	.byte	PATT	
		.word	song022_13_5
	.byte	PATT	
		.word	song022_13_6
	.byte	PATT	
		.word	song022_13_7
	.byte	PATT	
		.word	song022_13_8
	.byte	GOTO	
		.word	song022_13_9
	.byte	W05
	.byte		N56	, An4, v096
	.byte	W56
	.byte	W01
	.byte		N11	, Gn4
	.byte	W12
	.byte		N13	, An4
	.byte	W13
	.byte		N48	, As4, v104
	.byte	W09
	.byte	W36
	.byte	W03
	.byte	FINE
    
	mAlignWord
	.global song022
song022:	@ 0x08272554
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song022_1		@ track
	.word	song022_2		@ track
	.word	song022_3		@ track
	.word	song022_4		@ track
	.word	song022_5		@ track
	.word	song022_6		@ track
	.word	song022_7		@ track
	.word	song022_8		@ track
	.word	song022_9		@ track
	.word	song022_10		@ track
	.word	song022_11		@ track
	.word	song022_12		@ track
	.word	song022_13		@ track
