	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song065_1
song065_1:	@ 0x0829FCF0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
song065_1_1:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_1_1
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N05	, Gn7
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		mPtr	song065_1_1
	.byte	PATT	
		mPtr	song065_1_1
	.byte	PATT	
		mPtr	song065_1_1
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N23	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte		N23	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
song065_1_2:
	.byte		N23	, As4, v084
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N44	, As4, v120
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PEND
song065_1_3:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_1_2
song065_1_4:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N04	, Gn7
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song065_1_2
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_2
	.byte	PATT	
		mPtr	song065_1_4
song065_1_5:
	.byte		N44	, As4, v120
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N22	, As4, v088
	.byte	W12
	.byte		N10	, Gs7, v127
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N22	, As4, v120
	.byte	W12
	.byte		N10	, Gs7, v127
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte	PATT	
		mPtr	song065_1_3
song065_1_6:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N04	, Ds4
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song065_1_5
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_5
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_6
	.byte	PATT	
		mPtr	song065_1_2
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_2
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_2
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_2
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_5
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_6
	.byte	PATT	
		mPtr	song065_1_5
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_5
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_4
	.byte	PATT	
		mPtr	song065_1_3
	.byte	PATT	
		mPtr	song065_1_6
	.byte	GOTO	
		mPtr	song065_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song065_2
song065_2:	@ 0x0829FEF0
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte		N80	, Fn3, v104
	.byte	W84
	.byte		TIE	, Fs3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N80	, Gn3
	.byte	W84
	.byte		TIE	, Gs3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N80	, Fn3, v124
	.byte	W84
	.byte		TIE	, Fs3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N80	, Gn3
	.byte	W84
	.byte		TIE	, Gs3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
song065_2_7:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92	, Dn3, v104
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			As3
	.byte	W96
	.byte		N28	, Fn3
	.byte	W36
	.byte			Cn3, v116
	.byte	W36
	.byte		N17	, Fn3, v127
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte		N92	, Dn3, v104
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte		N44	, Ds3
	.byte	W48
	.byte			Fs3
	.byte	W48
song065_2_2:
	.byte		N28	, Dn4, v116
	.byte	W36
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N28	, Dn4, v116
	.byte	W24
	.byte	PEND
song065_2_3:
	.byte	W12
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N21	, Fn3
	.byte	W24
	.byte			As3, v116
	.byte	W24
	.byte	PEND
song065_2_4:
	.byte		N28	, Gn4, v116
	.byte	W36
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N28	, Gn4, v116
	.byte	W24
	.byte	PEND
	.byte	W12
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N21	, Gn3
	.byte	W24
	.byte			As3, v116
	.byte	W24
song065_2_5:
	.byte		N18	, Ds4, v124
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte	PEND
song065_2_6:
	.byte		N18	, Fs4, v124
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	PAN	, c_v-30
	.byte	W01
	.byte		N92	, Gn3, v104
	.byte	W96
	.byte			Fn3
	.byte	W96
song065_2_1:
	.byte		N44	, Ds3, v104
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte	PEND
	.byte		N92	, Bn3
	.byte	W96
	.byte		N44	, Gn4
	.byte	W48
	.byte			Fn4
	.byte	W48
	.byte			Ds4
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte		N28	, Cn4
	.byte	W36
	.byte			Fn3, v116
	.byte	W36
	.byte		N17	, Cn4, v127
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte		N92	, Gn3, v104
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte	PATT	
		mPtr	song065_2_1
	.byte		N92	, Bn3, v104
	.byte	W96
	.byte	PATT	
		mPtr	song065_2_2
	.byte	PATT	
		mPtr	song065_2_3
	.byte	PATT	
		mPtr	song065_2_4
	.byte	W12
	.byte		N17	, As3, v104
	.byte	W36
	.byte		N21	, Gn3
	.byte	W24
	.byte			As3, v116
	.byte	W23
	.byte	PAN	, c_v
	.byte	W01
	.byte	PATT	
		mPtr	song065_2_5
	.byte	PATT	
		mPtr	song065_2_6
	.byte	GOTO	
		mPtr	song065_2_7
	.byte	FINE

	@********************** Track  3 **********************@

	.global song065_3
song065_3:	@ 0x082A0011
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N05	, Gn2, v127
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			As3
	.byte	W06
song065_3_1:
	.byte		N17	, Cn4, v127
	.byte	W24
	.byte		N40	
	.byte	W48
	.byte		N06	
	.byte	W12
	.byte		N18	, As3
	.byte	W12
	.byte	PEND
song065_3_2:
	.byte	W12
	.byte		N06	, Fn3, v127
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N12	, As2
	.byte	W24
	.byte		N30	, As3
	.byte	W36
	.byte	PEND
song065_3_3:
	.byte		N17	, Gs3, v127
	.byte	W24
	.byte		N40	
	.byte	W48
	.byte		N06	
	.byte	W12
	.byte		N18	, Gn3
	.byte	W12
	.byte	PEND
song065_3_6:
	.byte	W12
	.byte		N06	, Dn3, v127
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N12	, Gn2
	.byte	W24
	.byte		N30	, Gn3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song065_3_1
	.byte	PATT	
		mPtr	song065_3_2
	.byte	PATT	
		mPtr	song065_3_3
song065_3_7:
	.byte	W12
	.byte		N06	, Dn3, v127
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N12	, Gn3
	.byte	W24
	.byte		N30	, Bn3
	.byte	W36
	.byte	PEND
song065_3_4:
	.byte		N44	, En3, v127
	.byte	W48
	.byte		N32	, Cn3
	.byte	W36
	.byte		N66	, Gn3
	.byte	W12
	.byte	PEND
song065_3_5:
	.byte	W60
	.byte		N11	, En3, v127
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte	PEND
	.byte		N17	, Fn3
	.byte	W24
	.byte		N11	, Gn3
	.byte	W12
	.byte			Fn3
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte		N40	, Dn3
	.byte	W12
	.byte	W36
	.byte		N28	, Gn3
	.byte	W36
	.byte		N23	, Bn2
	.byte	W24
	.byte		N32	, Cn3
	.byte	W48
	.byte		N11	, An2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N40	, Fn3
	.byte	W12
	.byte	W36
	.byte		N44	, Gn3
	.byte	W60
	.byte		N84	, Dn3
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song065_3_4
	.byte	PATT	
		mPtr	song065_3_5
	.byte		N17	, Fn3, v127
	.byte	W24
	.byte		N11	, Gn3
	.byte	W12
	.byte			Gs3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte		N54	, Cn4
	.byte	W12
	.byte	W48
	.byte		N44	, Gs3
	.byte	W48
	.byte		N68	, Gn3
	.byte	W72
	.byte		N06	, Gn3, v104
	.byte	W12
	.byte			Gn3, v076
	.byte	W12
	.byte			Gn3, v056
	.byte	W36
	.byte		N28	, Cn4, v127
	.byte	W30
	.byte		N05	, Cs4
	.byte	W06
	.byte		N23	, Dn4
	.byte	W24
	.byte		N68	, An3
	.byte	W72
	.byte		N06	, An3, v104
	.byte	W12
	.byte			An3, v076
	.byte	W12
	.byte			An3, v056
	.byte	W36
	.byte		N28	, Cn4, v127
	.byte	W30
	.byte		N05	, Cs4
	.byte	W06
	.byte		N23	, Dn4
	.byte	W24
	.byte		N17	, Fn3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte	PATT	
		mPtr	song065_3_1
	.byte	PATT	
		mPtr	song065_3_2
	.byte	PATT	
		mPtr	song065_3_3
	.byte	PATT	
		mPtr	song065_3_6
	.byte	PATT	
		mPtr	song065_3_1
	.byte	PATT	
		mPtr	song065_3_2
	.byte	PATT	
		mPtr	song065_3_3
	.byte	PATT	
		mPtr	song065_3_7
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
	.byte	GOTO	
		mPtr	song065_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song065_4
song065_4:	@ 0x082A0165
	.byte	KEYSH	, 0
	.byte	VOICE	, 81
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N80	, As3, v072
	.byte	W80
	.byte	W03
	.byte	VOICE	, 80
	.byte	W01
	.byte		TIE	, Cn4, v076
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N80	, Cs4, v080
	.byte	W84
	.byte		TIE	, Dn4, v084
	.byte	W12
	.byte	W90
	.byte		EOT	
	.byte	W05
	.byte	VOICE	, 80
	.byte	W01
song065_4_1:
	.byte		N11	, En3, v127
	.byte	W23
	.byte		N05	, Ds3
	.byte	W05
	.byte		N36	, En3
	.byte	W44
	.byte		N05	
	.byte	W12
	.byte		N32	, Dn3
	.byte	W12
	.byte	PEND
song065_4_2:
	.byte	W23
	.byte	VOICE	, 79
	.byte	W01
	.byte		N06	, As2, v127
	.byte	W11
	.byte	VOICE	, 77
	.byte	W01
	.byte		N48	, Fn3
	.byte	W56
	.byte	W03
	.byte	VOICE	, 80
	.byte	W01
	.byte	PEND
song065_4_3:
	.byte		N11	, Cn3, v127
	.byte	W23
	.byte		N05	, Bn2
	.byte	W05
	.byte		N36	, Cn3
	.byte	W44
	.byte		N05	
	.byte	W12
	.byte		N32	, Bn2
	.byte	W12
	.byte	PEND
song065_4_4:
	.byte	W23
	.byte	VOICE	, 79
	.byte	W01
	.byte		N06	, Gn2, v127
	.byte	W11
	.byte	VOICE	, 77
	.byte	W01
	.byte		N48	, Dn3
	.byte	W56
	.byte	W03
	.byte	VOICE	, 80
	.byte	W01
	.byte	PEND
	.byte	PATT	
		mPtr	song065_4_1
	.byte	PATT	
		mPtr	song065_4_2
	.byte	PATT	
		mPtr	song065_4_3
song065_4_5:
	.byte	W23
	.byte	VOICE	, 79
	.byte	W01
	.byte		N06	, Gn2, v127
	.byte	W11
	.byte	VOICE	, 77
	.byte	W01
	.byte		N48	, Dn3
	.byte	W60
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
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOICE	, 80
	.byte	W01
	.byte	PATT	
		mPtr	song065_4_1
	.byte	PATT	
		mPtr	song065_4_2
	.byte	PATT	
		mPtr	song065_4_3
	.byte	PATT	
		mPtr	song065_4_4
	.byte	PATT	
		mPtr	song065_4_1
	.byte	PATT	
		mPtr	song065_4_2
	.byte	PATT	
		mPtr	song065_4_3
	.byte	PATT	
		mPtr	song065_4_5
	.byte	PAN	, c_v+30
	.byte	W12
	.byte		N06	, En4, v084
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
song065_4_6:
	.byte	W12
	.byte		N06	, Cn4, v084
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
song065_4_7:
	.byte	W12
	.byte		N06	, Bn3, v084
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_4_6
	.byte	PATT	
		mPtr	song065_4_7
	.byte		N24	, An3, v084
	.byte	W36
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N12	, Cn4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte	PATT	
		mPtr	song065_4_6
	.byte	W12
	.byte		N06	, Bn3, v084
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	, Dn4
	.byte	W24
	.byte		N06	, Bn3
	.byte	W12
	.byte	W12
	.byte			An3
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	, En4
	.byte	W24
	.byte		N06	, Bn3
	.byte	W12
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	
	.byte	W12
song065_4_8:
	.byte	W12
	.byte		N06	, Gn3, v084
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte			En4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PATT	
		mPtr	song065_4_8
	.byte	W96
	.byte	VOICE	, 80
	.byte	PAN	, c_v
	.byte	W96
	.byte	GOTO	
		mPtr	song065_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song065_5
song065_5:	@ 0x082A02D1
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song065_5_2:
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
	.byte		N44	, Cn3, v116
	.byte	W48
	.byte		N22	, An2, v096
	.byte	W24
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N42	, Dn3, v120
	.byte	W12
	.byte	W36
	.byte			Gn2, v116
	.byte	W60
	.byte		N44	, Fn3
	.byte	W48
	.byte		N22	, En3, v096
	.byte	W24
	.byte		N10	, Dn3, v116
	.byte	W12
	.byte		N42	, Cs3, v120
	.byte	W12
	.byte	W36
	.byte			An2, v116
	.byte	W60
	.byte		N04	, Gs3
	.byte	W03
	.byte		N42	, An3
	.byte	W44
	.byte	W01
	.byte		N22	, Gn3
	.byte	W24
	.byte		N10	, Fn3
	.byte	W12
	.byte		N32	, Gn3
	.byte	W12
	.byte	W36
	.byte		N22	, En3
	.byte	W24
	.byte		N10	, Dn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte		N32	, An2
	.byte	W36
	.byte		N56	, Dn3
	.byte	W60
	.byte	W96
	.byte		N10	, En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N22	, Cn4
	.byte	W12
	.byte	W12
	.byte		N10	, Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			En3
	.byte	W24
	.byte		N32	, Gn3
	.byte	W36
	.byte		N10	, En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N22	, Cs4
	.byte	W12
	.byte	W12
	.byte		N10	, Dn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N22	, An3
	.byte	W24
	.byte		N22	
	.byte	W24
	.byte		N10	, En3
	.byte	W12
	.byte		N92	, Gn3, v127
	.byte	W96
song065_5_1:
	.byte	W36
	.byte		N28	, Cn4, v127
	.byte	W30
	.byte		N05	, Cs4
	.byte	W06
	.byte		N23	, Dn4
	.byte	W24
	.byte	PEND
	.byte		N92	, An3
	.byte	W96
	.byte	PATT	
		mPtr	song065_5_1
	.byte	W24
	.byte		N05	, Fn2, v127
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N44	, Gn4
	.byte	W48
	.byte	GOTO	
		mPtr	song065_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song065_6
song065_6:	@ 0x082A03D5
	.byte	KEYSH	, 0
	.byte	VOICE	, 49
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte		N11	
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
song065_6_2:
	.byte	W12
	.byte		N11	, Gn2, v127
	.byte	W24
	.byte		N23	, Fn2
	.byte	W24
	.byte		N11	, Cn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte	PEND
song065_6_1:
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte		N11	
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte			As2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte	PEND
song065_6_3:
	.byte	W12
	.byte		N11	, Gn2, v127
	.byte	W24
	.byte		N23	, As2
	.byte	W24
	.byte		N11	, Fn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_6_1
	.byte	PATT	
		mPtr	song065_6_2
	.byte	PATT	
		mPtr	song065_6_1
	.byte	PATT	
		mPtr	song065_6_3
song065_6_4:
	.byte		N11	, Cn2, v127
	.byte	W12
	.byte			Cn2, v088
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Cn3, v127
	.byte	W12
	.byte			Cn3, v088
	.byte	W12
	.byte			As2, v127
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte	PEND
song065_6_5:
	.byte		N11	, As2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			As1
	.byte	W24
	.byte			As2
	.byte	W12
	.byte			As2, v088
	.byte	W12
	.byte			As2, v127
	.byte	W12
	.byte	PEND
song065_6_6:
	.byte		N11	, Gs1, v127
	.byte	W12
	.byte			Gs1, v088
	.byte	W12
	.byte			Ds2, v127
	.byte	W12
	.byte			Ds2, v088
	.byte	W12
	.byte			Gs2, v127
	.byte	W12
	.byte			Gs2, v088
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte	PEND
song065_6_7:
	.byte		N11	, Gn2, v127
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Gn1
	.byte	W24
	.byte			Gn2
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_6_4
	.byte	PATT	
		mPtr	song065_6_5
	.byte	PATT	
		mPtr	song065_6_6
	.byte	PATT	
		mPtr	song065_6_7
	.byte	PATT	
		mPtr	song065_6_4
	.byte	PATT	
		mPtr	song065_6_5
	.byte	PATT	
		mPtr	song065_6_6
	.byte	PATT	
		mPtr	song065_6_7
song065_6_9:
	.byte		N11	, Fn1, v127
	.byte	W12
	.byte			Fn1, v088
	.byte	W12
	.byte			Cn2, v127
	.byte	W12
	.byte			Cn2, v088
	.byte	W12
	.byte			Fn2, v127
	.byte	W12
	.byte			Fn2, v088
	.byte	W12
	.byte			En2, v127
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
	.byte			Gs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Gs1
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gs2
	.byte	W12
song065_6_8:
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte			Gn1, v048
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v048
	.byte	W12
	.byte			Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte	PEND
song065_6_10:
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_6_4
	.byte	PATT	
		mPtr	song065_6_5
	.byte	PATT	
		mPtr	song065_6_6
	.byte		N11	, Cs3, v127
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cs2
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs2, v088
	.byte	W12
	.byte	PATT	
		mPtr	song065_6_8
song065_6_14:
	.byte		N11	, Gn1, v048
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte			Gn2, v048
	.byte	W12
	.byte			Gn1, v127
	.byte	W12
	.byte			Gn1, v088
	.byte	W12
	.byte			Gn2, v127
	.byte	W12
	.byte			Gn2, v088
	.byte	W12
	.byte	PEND
song065_6_15:
	.byte		N11	, Fs1, v127
	.byte	W12
	.byte			Fs1, v088
	.byte	W12
	.byte			Fs1, v048
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fs2, v088
	.byte	W12
	.byte			Fs2, v048
	.byte	W12
	.byte			Fs1, v127
	.byte	W12
	.byte			Fs1, v088
	.byte	W12
	.byte	PEND
song065_6_16:
	.byte		N11	, Fs1, v048
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fs2, v088
	.byte	W12
	.byte			Fs2, v048
	.byte	W12
	.byte			Fs1, v127
	.byte	W12
	.byte			Fs1, v088
	.byte	W12
	.byte			Fs2, v127
	.byte	W12
	.byte			Fs2, v088
	.byte	W12
	.byte	PEND
song065_6_17:
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	PEND
song065_6_18:
	.byte		N11	, Gs1, v127
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_6_4
	.byte	PATT	
		mPtr	song065_6_5
	.byte	PATT	
		mPtr	song065_6_6
	.byte	PATT	
		mPtr	song065_6_7
	.byte	PATT	
		mPtr	song065_6_4
	.byte	PATT	
		mPtr	song065_6_5
	.byte	PATT	
		mPtr	song065_6_6
	.byte	PATT	
		mPtr	song065_6_7
	.byte	PATT	
		mPtr	song065_6_9
song065_6_11:
	.byte		N11	, En2, v127
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			En1
	.byte	W24
	.byte			En2
	.byte	W12
	.byte			En2, v088
	.byte	W12
	.byte			En2, v127
	.byte	W12
	.byte	PEND
song065_6_12:
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte			Dn1, v088
	.byte	W12
	.byte			An1, v127
	.byte	W12
	.byte			An1, v088
	.byte	W12
	.byte			Dn2, v127
	.byte	W12
	.byte			Dn2, v088
	.byte	W12
	.byte			Cn2, v127
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
song065_6_13:
	.byte		N11	, An2, v127
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			An1
	.byte	W24
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An1, v088
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_6_9
	.byte		N11	, En1, v127
	.byte	W12
	.byte			En1, v088
	.byte	W12
	.byte			Bn1, v127
	.byte	W12
	.byte			Bn1, v088
	.byte	W12
	.byte			En2, v127
	.byte	W12
	.byte			En2, v088
	.byte	W12
	.byte			Dn2, v127
	.byte	W12
	.byte			En2
	.byte	W12
	.byte	PATT	
		mPtr	song065_6_8
	.byte	PATT	
		mPtr	song065_6_10
	.byte	PATT	
		mPtr	song065_6_9
	.byte	PATT	
		mPtr	song065_6_11
	.byte	PATT	
		mPtr	song065_6_12
	.byte	PATT	
		mPtr	song065_6_13
	.byte	PATT	
		mPtr	song065_6_8
	.byte	PATT	
		mPtr	song065_6_14
	.byte	PATT	
		mPtr	song065_6_15
	.byte	PATT	
		mPtr	song065_6_16
	.byte	PATT	
		mPtr	song065_6_17
	.byte	PATT	
		mPtr	song065_6_18
	.byte	GOTO	
		mPtr	song065_6_4
	.byte	FINE

	@********************** Track  7 **********************@

	.global song065_7
song065_7:	@ 0x082A0665
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	VOL	, v046
	.byte	PAN	, c_v+63
	.byte	MOD	, 0
	.byte	LFOS	, 127
	.byte	W24
	.byte		N04	, Gn2, v064
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			As2, v076
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Gn3, v084
	.byte	W12
	.byte			Gn3, v064
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			As2, v076
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
song065_7_2:
	.byte		N04	, Gn3, v084
	.byte	W12
	.byte			Gn3, v064
	.byte	W84
	.byte	PEND
song065_7_1:
	.byte	W24
	.byte		N04	, Gn2, v064
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			As2, v076
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			Gn3, v084
	.byte	W12
	.byte			Gn3, v064
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte			Dn4, v096
	.byte	W06
	.byte			As2, v076
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte	PEND
	.byte			Gn3, v084
	.byte	W12
	.byte			Gn3, v064
	.byte	W24
	.byte			As3, v084
	.byte	W12
	.byte			As3, v064
	.byte	W48
	.byte	PATT	
		mPtr	song065_7_1
	.byte	PATT	
		mPtr	song065_7_2
	.byte	PATT	
		mPtr	song065_7_1
	.byte		N04	, Gn3, v084
	.byte	W12
	.byte			Gn3, v064
	.byte	W11
	.byte	MOD	, 127
	.byte	W01
	.byte		N68	, Gn4, v104
	.byte	W68
	.byte	W03
	.byte	MOD	, 0
	.byte	VOL	, v040
	.byte	LFOS	, 39
	.byte	W01
song065_7_3:
	.byte		N04	, Fs5, v127
	.byte	W03
	.byte		N10	, Gn5
	.byte	W21
	.byte		N42	
	.byte	W12
	.byte	MOD	, 14
	.byte	W36
	.byte		0
	.byte		N07	
	.byte	W12
	.byte		N19	, Fn5
	.byte	W12
	.byte	PEND
song065_7_4:
	.byte	W12
	.byte		N07	, Dn5, v127
	.byte	W12
	.byte			As4
	.byte	W12
	.byte			Fn4
	.byte	W24
	.byte		N32	, Dn5
	.byte	W12
	.byte	MOD	, 20
	.byte	W23
	.byte		0
	.byte	LFOS	, 39
	.byte	W01
	.byte	PEND
song065_7_5:
	.byte		N04	, Dn5, v127
	.byte	W03
	.byte		N10	, Ds5
	.byte	W21
	.byte		N42	
	.byte	W12
	.byte	MOD	, 14
	.byte	W36
	.byte		0
	.byte		N07	
	.byte	W12
	.byte		N19	, Dn5
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N07	, Bn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N32	, Bn4
	.byte	W12
	.byte	MOD	, 20
	.byte	W23
	.byte		0
	.byte	W01
	.byte	PATT	
		mPtr	song065_7_3
	.byte	PATT	
		mPtr	song065_7_4
	.byte	PATT	
		mPtr	song065_7_5
song065_7_8:
	.byte	W12
	.byte		N07	, Bn4, v127
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte		N32	, Gn5
	.byte	W12
	.byte	MOD	, 20
	.byte	W23
	.byte		0
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song065_7_9:
	.byte	W72
	.byte		N05	, Bn4, v100
	.byte	W06
	.byte			Cn5, v108
	.byte	W06
	.byte			Dn5, v120
	.byte	W06
	.byte			En5, v127
	.byte	W06
	.byte	PEND
song065_7_10:
	.byte		N15	, Fn5, v127
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte			Gn5
	.byte	W24
	.byte	PEND
song065_7_6:
	.byte	W12
	.byte		N06	, Gn5, v124
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Cn6, v084
	.byte	W12
	.byte			Gn5, v124
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Cn6, v084
	.byte	W12
	.byte			As5, v124
	.byte	W12
	.byte	PEND
	.byte			As5, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Fn5, v084
	.byte	W12
	.byte			As5, v124
	.byte	W12
	.byte			As5, v084
	.byte	W12
	.byte			Dn6, v124
	.byte	W12
	.byte			Dn6, v084
	.byte	W24
	.byte	PATT	
		mPtr	song065_7_6
	.byte		N06	, As5, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Fn5, v084
	.byte	W12
	.byte			As5, v124
	.byte	W12
	.byte			As5, v084
	.byte	W12
	.byte			Cs6, v124
	.byte	W12
	.byte			Cs6, v084
	.byte	W24
song065_7_7:
	.byte		N06	, Gn5, v124
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte			Gn5, v124
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			En5, v104
	.byte	W06
	.byte			Fn5, v116
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song065_7_7
	.byte	PATT	
		mPtr	song065_7_7
	.byte	PATT	
		mPtr	song065_7_7
song065_7_11:
	.byte		N18	, Cn5, v116
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte	PEND
	.byte			Ds5
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte		N05	, Bn4, v100
	.byte	W06
	.byte			Cn5, v108
	.byte	W06
	.byte			Dn5, v120
	.byte	W06
	.byte			En5, v127
	.byte	W05
	.byte	MOD	, 0
	.byte	VOL	, v040
	.byte	W01
	.byte	PATT	
		mPtr	song065_7_3
	.byte	PATT	
		mPtr	song065_7_4
	.byte	PATT	
		mPtr	song065_7_5
	.byte	W12
	.byte		N07	, Bn4, v127
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N32	, Bn4
	.byte	W12
	.byte	MOD	, 20
	.byte	W23
	.byte		0
	.byte	VOL	, v040
	.byte	LFOS	, 39
	.byte	W01
	.byte	PATT	
		mPtr	song065_7_3
	.byte	PATT	
		mPtr	song065_7_4
	.byte	PATT	
		mPtr	song065_7_5
	.byte	PATT	
		mPtr	song065_7_8
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song065_7_9
	.byte	PATT	
		mPtr	song065_7_10
	.byte	W12
	.byte		N06	, Gn5, v124
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Cn6, v084
	.byte	W12
	.byte			Gn5, v124
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Cn6, v084
	.byte	W12
	.byte			Bn5, v124
	.byte	W12
	.byte			Bn5, v084
	.byte	W12
	.byte			Gn5, v124
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Bn5, v124
	.byte	W12
	.byte			Bn5, v084
	.byte	W12
	.byte			Dn6, v124
	.byte	W12
	.byte			Dn6, v084
	.byte	W24
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Cn6, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Cn6
	.byte	W12
	.byte			Cn6, v084
	.byte	W12
	.byte			An5, v124
	.byte	W12
	.byte			An5, v084
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			An5, v124
	.byte	W12
	.byte			An5, v084
	.byte	W12
	.byte			Cs6, v124
	.byte	W12
	.byte			Cs6, v084
	.byte	W24
	.byte	PATT	
		mPtr	song065_7_7
	.byte	PATT	
		mPtr	song065_7_7
	.byte	PATT	
		mPtr	song065_7_7
	.byte	PATT	
		mPtr	song065_7_7
	.byte	PATT	
		mPtr	song065_7_11
	.byte		N18	, Ds5, v116
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte		N05	, Bn4, v100
	.byte	W06
	.byte			Cn5, v108
	.byte	W06
	.byte			Dn5, v120
	.byte	W06
	.byte			En5, v127
	.byte	W06
	.byte	GOTO	
		mPtr	song065_7_3
	.byte	FINE

	@********************** Track  8 **********************@

	.global song065_8
song065_8:	@ 0x082A08ED
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v056
	.byte	PAN	, c_v-64
	.byte	MOD	, 0
	.byte	LFOS	, 127
	.byte	BEND	, c_v
	.byte	W12
	.byte		N06	, Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Cn4, v124
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Gn3, v124
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v056
	.byte	W24
	.byte			Cn4, v124
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Cn4, v056
	.byte	W36
song065_8_1:
	.byte	W12
	.byte		N06	, Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Cn4, v124
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Gn3, v124
	.byte	W12
	.byte			As3
	.byte	W12
	.byte	PEND
	.byte			As3, v084
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v056
	.byte	W36
	.byte	PATT	
		mPtr	song065_8_1
	.byte		N06	, As3, v084
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			Cn4, v084
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			As4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v056
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Fn4, v084
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v056
	.byte	W11
	.byte	MOD	, 127
	.byte	W01
	.byte		N72	, Dn4, v127
	.byte	W72
song065_8_15:
	.byte	W02
	.byte	MOD	, 0
	.byte	VOL	, v043
	.byte	LFOS	, 34
	.byte	W01
	.byte		N04	, Ds5, v127
	.byte	W03
	.byte		N10	, En5
	.byte	W21
	.byte		N42	
	.byte	W12
	.byte	MOD	, 14
	.byte	W36
	.byte		0
	.byte		N07	
	.byte	W12
	.byte		N19	, Dn5
	.byte	W09
song065_8_2:
	.byte	W15
	.byte		N07	, As4, v127
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N32	, As4
	.byte	W12
	.byte	MOD	, 20
	.byte	W21
	.byte	PEND
song065_8_3:
	.byte	W02
	.byte	MOD	, 0
	.byte	LFOS	, 44
	.byte	W01
	.byte		N04	, Bn4, v127
	.byte	W03
	.byte		N10	, Cn5
	.byte	W21
	.byte		N42	
	.byte	W12
	.byte	MOD	, 14
	.byte	W36
	.byte		0
	.byte		N07	
	.byte	W12
	.byte		N19	, Bn4
	.byte	W09
	.byte	PEND
song065_8_5:
	.byte	W15
	.byte		N07	, Gn4, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte		N32	, Gn4
	.byte	W12
	.byte	MOD	, 20
	.byte	W21
	.byte	PEND
song065_8_4:
	.byte	W02
	.byte	MOD	, 0
	.byte	W01
	.byte		N04	, Ds5, v127
	.byte	W03
	.byte		N10	, En5
	.byte	W21
	.byte		N42	
	.byte	W12
	.byte	MOD	, 14
	.byte	W36
	.byte		0
	.byte		N07	
	.byte	W12
	.byte		N19	, Dn5
	.byte	W09
	.byte	PEND
	.byte	PATT	
		mPtr	song065_8_2
	.byte	PATT	
		mPtr	song065_8_3
song065_8_6:
	.byte	W15
	.byte		N07	, Gn4, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Bn4
	.byte	W24
	.byte		N32	, Dn5
	.byte	W12
	.byte	MOD	, 20
	.byte	W21
	.byte	PEND
song065_8_7:
	.byte	W02
	.byte	MOD	, 0
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song065_8_8:
	.byte	W03
	.byte	VOL	, v050
	.byte	W72
	.byte		N05	, Fn4, v100
	.byte	W06
	.byte			Gn4, v108
	.byte	W06
	.byte			An4, v120
	.byte	W06
	.byte			Bn4, v127
	.byte	W03
	.byte	PEND
song065_8_9:
	.byte	W03
	.byte		N15	, Cn5, v127
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Dn5
	.byte	W21
	.byte	PEND
	.byte	W15
	.byte		N06	, En5, v124
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W09
	.byte	W03
	.byte			Fn5, v084
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Fn5, v084
	.byte	W12
	.byte			As5, v124
	.byte	W12
	.byte			As5, v084
	.byte	W21
	.byte	W15
	.byte			Ds5, v124
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Ds5, v124
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W09
	.byte	W03
	.byte			Fn5, v084
	.byte	W12
	.byte			Cs5, v124
	.byte	W12
	.byte			Cs5, v084
	.byte	W12
	.byte			Fn5, v124
	.byte	W12
	.byte			Fn5, v084
	.byte	W12
	.byte			Gs5, v124
	.byte	W12
	.byte			Gs5, v084
	.byte	W21
song065_8_10:
	.byte	W24
	.byte		N06	, En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			En5, v064
	.byte	W12
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Gn4, v124
	.byte	W12
	.byte	PEND
song065_8_11:
	.byte		N06	, Gn4, v084
	.byte	W12
	.byte			Gn4, v064
	.byte	W24
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte	PEND
song065_8_12:
	.byte	W24
	.byte		N06	, En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			En5, v064
	.byte	W12
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			An4, v124
	.byte	W12
	.byte	PEND
song065_8_13:
	.byte		N06	, An4, v084
	.byte	W12
	.byte			An4, v064
	.byte	W24
	.byte			Cn5, v124
	.byte	W12
	.byte			Cn5, v084
	.byte	W12
	.byte			Cn5, v064
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte	PEND
song065_8_14:
	.byte	W02
	.byte	VOL	, v043
	.byte	W01
	.byte		N18	, An4, v124
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Bn4
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte			Cn5
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte		N05	, Fn4, v100
	.byte	W06
	.byte			Gn4, v108
	.byte	W06
	.byte			An4, v120
	.byte	W06
	.byte			Bn4, v127
	.byte	W03
	.byte	PATT	
		mPtr	song065_8_4
	.byte	PATT	
		mPtr	song065_8_2
	.byte	PATT	
		mPtr	song065_8_3
	.byte	PATT	
		mPtr	song065_8_5
	.byte	W02
	.byte	MOD	, 0
	.byte	VOL	, v043
	.byte	LFOS	, 44
	.byte	W01
	.byte		N04	, Ds5, v127
	.byte	W03
	.byte		N10	, En5
	.byte	W21
	.byte		N42	
	.byte	W12
	.byte	MOD	, 14
	.byte	W36
	.byte		0
	.byte		N07	
	.byte	W12
	.byte		N19	, Dn5
	.byte	W09
	.byte	PATT	
		mPtr	song065_8_2
	.byte	PATT	
		mPtr	song065_8_3
	.byte	PATT	
		mPtr	song065_8_6
	.byte	PATT	
		mPtr	song065_8_7
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song065_8_8
	.byte	PATT	
		mPtr	song065_8_9
	.byte	W15
	.byte		N06	, En5, v124
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			Gn5
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			En5, v124
	.byte	W09
	.byte	W03
	.byte			En5, v084
	.byte	W12
	.byte			Bn4, v124
	.byte	W12
	.byte			Bn4, v084
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			Gn5, v124
	.byte	W12
	.byte			Gn5, v084
	.byte	W21
	.byte	W15
	.byte			Dn5, v124
	.byte	W12
	.byte			An5
	.byte	W12
	.byte			An5, v084
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			An5
	.byte	W12
	.byte			An5, v084
	.byte	W12
	.byte			En5, v124
	.byte	W09
	.byte	W03
	.byte			En5, v084
	.byte	W12
	.byte			Cs5, v124
	.byte	W12
	.byte			Cs5, v084
	.byte	W12
	.byte			En5, v124
	.byte	W12
	.byte			En5, v084
	.byte	W12
	.byte			An5, v124
	.byte	W12
	.byte			An5, v084
	.byte	W21
	.byte	PATT	
		mPtr	song065_8_10
	.byte	PATT	
		mPtr	song065_8_11
	.byte	PATT	
		mPtr	song065_8_12
	.byte	PATT	
		mPtr	song065_8_13
	.byte	PATT	
		mPtr	song065_8_14
	.byte	W03
	.byte		N18	, Cn5, v124
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Dn5
	.byte	W21
	.byte		N05	, Fn4, v100
	.byte	W06
	.byte			Gn4, v108
	.byte	W06
	.byte			An4, v120
	.byte	W06
	.byte			Bn4, v127
	.byte	W06
	.byte	GOTO	
		mPtr	song065_8_15
	.byte	FINE

	@********************** Track  9 **********************@

	.global song065_9
song065_9:	@ 0x082A0BE3
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v053
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song065_9_1:
	.byte	W12
	.byte		N06	, Cn5, v096
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
song065_9_2:
	.byte	W12
	.byte		N04	, Cn5, v096
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song065_9_2
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_1
	.byte	PATT	
		mPtr	song065_9_2
	.byte	PATT	
		mPtr	song065_9_2
	.byte	GOTO	
		mPtr	song065_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song065_10
song065_10:	@ 0x082A0D13
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song065_10_1:
	.byte		N11	, Cn6, v096
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	PATT	
		mPtr	song065_10_1
	.byte	GOTO	
		mPtr	song065_10_1
	.byte	FINE
    
	mAlignWord
	.global song065
song065:	@ 0x082A0E34
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song065_1		@ track
	mPtr	song065_2		@ track
	mPtr	song065_3		@ track
	mPtr	song065_4		@ track
	mPtr	song065_5		@ track
	mPtr	song065_6		@ track
	mPtr	song065_7		@ track
	mPtr	song065_8		@ track
	mPtr	song065_9		@ track
	mPtr	song065_10		@ track
