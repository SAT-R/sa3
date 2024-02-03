	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song025_1
song025_1:	@ 0x0827357C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 127
	.byte	VOL	, v078
	.byte	PAN	, c_v-1
	.byte	W03
	.byte	TEMPO	, 90
	.byte	W48
	.byte		N11	, Fs1, v120
	.byte	W05
	.byte		N06	, Gs7
	.byte	W19
	.byte		N11	, Fs1
	.byte		N11	, Gs7
	.byte	W18
	.byte		N05	, Gs1
	.byte	W06
song025_1_1:
	.byte		N11	, Gs7, v120
	.byte	W24
	.byte			Fs1
	.byte		N10	, Gs7
	.byte	W24
	.byte		N11	
	.byte	W05
	.byte		N06	, En1
	.byte	W19
	.byte		N11	, Fs1
	.byte		N10	, Gs7
	.byte	W18
	.byte		N05	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
song025_1_2:
	.byte		N11	, Gs7, v120
	.byte	W24
	.byte			Fs1
	.byte		N10	, Gs7
	.byte	W18
	.byte		N06	, En1
	.byte	W06
	.byte		N11	, Gs7
	.byte	W18
	.byte		N06	, Fs1
	.byte	W06
	.byte		N10	, Gs7
	.byte	W18
	.byte		N05	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
song025_1_4:
	.byte	W24
	.byte		N11	, Fs1, v120
	.byte	W18
	.byte		N06	, En1
	.byte	W06
	.byte		N11	, Fs1
	.byte	W18
	.byte		N05	, Gs7
	.byte	W06
	.byte		N10	, Fs1
	.byte	W18
	.byte		N05	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_2
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_2
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_2
song025_1_3:
	.byte		N12	, Gs7, v120
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte		N17	, Gs7
	.byte	W17
	.byte		N06	, En1
	.byte	W06
	.byte		N12	, Gs7
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gs7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song025_1_3
	.byte	PATT	
		.word	song025_1_3
	.byte	PATT	
		.word	song025_1_3
	.byte	PATT	
		.word	song025_1_3
	.byte	PATT	
		.word	song025_1_3
	.byte	PATT	
		.word	song025_1_3
	.byte	W12
	.byte		N11	, Gs7, v120
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Gs7
	.byte	W12
	.byte		N05	, Fs1
	.byte	W06
	.byte		N08	, Gs7
	.byte	W12
	.byte		N05	, Fs1
	.byte		N05	, Gs7
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N11	, Fs1
	.byte	W12
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_2
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_4
	.byte	GOTO	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_2
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_1
	.byte	PATT	
		.word	song025_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song025_2
song025_2:	@ 0x082736ED
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v075
	.byte	PAN	, c_v-59
	.byte	W03
song025_2_1:
	.byte	W24
	.byte	W01
	.byte		N06	, Cn4, v076
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Fs3
	.byte	W30
	.byte			Ds4
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cn4, v072
	.byte	W05
	.byte	PEND
song025_2_2:
	.byte	W24
	.byte	W01
	.byte		N06	, Fn4, v072
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte			Fn4, v064
	.byte	W06
	.byte			Cs4, v060
	.byte	W30
	.byte			Fn4, v044
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v040
	.byte	W06
	.byte			Cs4, v036
	.byte	W05
	.byte	PEND
song025_2_3:
	.byte	W24
	.byte	W01
	.byte		N06	, Fn4, v020
	.byte	W06
	.byte			Cs4, v016
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v012
	.byte	W30
	.byte			Fn4, v004
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W05
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	PATT	
		.word	song025_2_2
	.byte	PATT	
		.word	song025_2_3
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	PATT	
		.word	song025_2_2
	.byte	W24
	.byte	W01
	.byte		N06	, Fn4, v020
	.byte	W06
	.byte			Cs4, v016
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4, v012
	.byte	W18
	.byte			Gs4, v068
	.byte	W06
	.byte			As4
	.byte	W18
	.byte		N12	
	.byte	W11
song025_2_5:
	.byte	W15
	.byte		N06	, Gs4, v040
	.byte	W06
	.byte			As4
	.byte	W18
	.byte			Gs4, v020
	.byte	W06
	.byte			As4
	.byte	W18
	.byte		N12	
	.byte	W32
	.byte	W01
	.byte	PEND
song025_2_4:
	.byte	W60
	.byte	W03
	.byte		N06	, Gs4, v080
	.byte	W06
	.byte			As4
	.byte	W18
	.byte			Gs4, v060
	.byte	W06
	.byte			As4
	.byte	W03
	.byte	PEND
	.byte	W15
	.byte			Gs4, v040
	.byte	W06
	.byte			As4
	.byte	W18
	.byte			Gs4, v020
	.byte	W06
	.byte			As4
	.byte	W48
	.byte	W03
	.byte	PATT	
		.word	song025_2_4
	.byte	PATT	
		.word	song025_2_5
	.byte	W36
	.byte	W03
	.byte		N24	, Gs4, v068
	.byte	W24
	.byte		N06	, Fn4
	.byte	W12
	.byte			Gs4
	.byte	W21
	.byte	W96
song025_2_6:
	.byte	W60
	.byte	W01
	.byte		N06	, Gs4, v068
	.byte	W06
	.byte			As4
	.byte	W18
	.byte		N12	
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song025_2_5
	.byte	W60
	.byte	W01
	.byte		N06	, Gs4, v068
	.byte	W06
	.byte			As4
	.byte	W28
	.byte	W01
	.byte	W03
	.byte			Gs4, v040
	.byte	W06
	.byte			As4
	.byte	W18
	.byte			Gs4, v020
	.byte	W06
	.byte			As4
	.byte	W18
	.byte		N12	
	.byte	W44
	.byte	W01
	.byte	PATT	
		.word	song025_2_6
	.byte	PATT	
		.word	song025_2_5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	PATT	
		.word	song025_2_2
	.byte	PATT	
		.word	song025_2_3
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	PATT	
		.word	song025_2_2
	.byte	PATT	
		.word	song025_2_3
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	GOTO	
		.word	song025_2_2
	.byte	PATT	
		.word	song025_2_2
	.byte	PATT	
		.word	song025_2_3
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	PATT	
		.word	song025_2_2
	.byte	PATT	
		.word	song025_2_3
	.byte	W96
	.byte	PATT	
		.word	song025_2_1
	.byte	W01
	.byte	FINE

	@********************** Track  3 **********************@

	.global song025_3
song025_3:	@ 0x08273834
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v075
	.byte	PAN	, c_v+61
	.byte	W03
song025_3_1:
	.byte	W01
	.byte		N06	, As3, v076
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W30
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W28
	.byte	W01
	.byte	PEND
song025_3_2:
	.byte	W01
	.byte		N06	, Fn4, v072
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W30
	.byte			Fn4, v060
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Fn4, v052
	.byte	W06
	.byte			Cs4, v048
	.byte	W28
	.byte	W01
	.byte	PEND
song025_3_3:
	.byte	W01
	.byte		N06	, Fn4, v032
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v028
	.byte	W06
	.byte			Cs4, v024
	.byte	W30
	.byte			Fn4, v008
	.byte	W06
	.byte			Cs4, v004
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W28
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song025_3_1
	.byte	PATT	
		.word	song025_3_2
	.byte	PATT	
		.word	song025_3_3
	.byte	W96
	.byte	PATT	
		.word	song025_3_1
	.byte	PATT	
		.word	song025_3_2
	.byte	W01
	.byte		N06	, Fn4, v032
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v028
	.byte	W06
	.byte			Cs4, v024
	.byte	W30
	.byte			Fn4, v008
	.byte	W06
	.byte			Cs4, v004
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Cs4
	.byte	W08
	.byte		N12	, Cs5, v080
	.byte	W21
song025_3_4:
	.byte	W03
	.byte		N12	, Cs5, v060
	.byte	W24
	.byte			Cs5, v040
	.byte	W24
	.byte			Cs5, v020
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W72
	.byte	W03
	.byte			Cs5, v080
	.byte	W12
	.byte			Fn5
	.byte	W09
	.byte	W03
	.byte			Cs5, v060
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte			Cs5, v040
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte			Cs5, v020
	.byte	W12
	.byte			Fn5
	.byte	W32
	.byte	W01
	.byte	W72
	.byte	W03
	.byte			Cs5, v080
	.byte	W21
	.byte	PATT	
		.word	song025_3_4
	.byte	W15
	.byte		N06	, Cs5, v068
	.byte	W12
	.byte			As4
	.byte	W60
	.byte			Cn5
	.byte	W09
	.byte	W96
song025_3_5:
	.byte	W72
	.byte	W01
	.byte		N12	, Cs5, v068
	.byte	W23
	.byte	PEND
	.byte	PATT	
		.word	song025_3_4
	.byte	W84
	.byte	W01
	.byte		N12	, Fn5, v068
	.byte	W11
	.byte	W15
	.byte			Fn5, v060
	.byte	W24
	.byte			Fn5, v040
	.byte	W24
	.byte			Fn5, v020
	.byte	W32
	.byte	W01
	.byte	PATT	
		.word	song025_3_5
	.byte	PATT	
		.word	song025_3_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song025_3_1
	.byte	PATT	
		.word	song025_3_2
	.byte	PATT	
		.word	song025_3_3
	.byte	W96
	.byte	PATT	
		.word	song025_3_1
	.byte	PATT	
		.word	song025_3_2
	.byte	PATT	
		.word	song025_3_3
	.byte	W96
	.byte	PATT	
		.word	song025_3_1
	.byte	GOTO	
		.word	song025_3_2
	.byte	PATT	
		.word	song025_3_2
	.byte	PATT	
		.word	song025_3_3
	.byte	W96
	.byte	PATT	
		.word	song025_3_1
	.byte	PATT	
		.word	song025_3_2
	.byte	PATT	
		.word	song025_3_3
	.byte	W96
	.byte	W01
	.byte		N06	, As3, v076
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Fn3
	.byte	W30
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte	FINE

	@********************** Track  4 **********************@

	.global song025_4
song025_4:	@ 0x0827397B
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v047
	.byte	PAN	, c_v+16
	.byte	W03
	.byte		N05	, Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W12
	.byte			Gs7, v060
	.byte	W12
	.byte			Gn7, v100
	.byte	W24
	.byte			Gs7
	.byte	W24
song025_4_1:
	.byte		N05	, Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W12
	.byte			Gs7, v060
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W24
	.byte	PEND
song025_4_2:
	.byte		N05	, Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W12
	.byte			Gs7, v060
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W12
	.byte			Gs7, v060
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	GOTO	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte	PATT	
		.word	song025_4_2
	.byte	PATT	
		.word	song025_4_1
	.byte		N05	, Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W12
	.byte			Gs7, v060
	.byte	W12
	.byte			Gn7, v100
	.byte	W12
	.byte			Gn7, v060
	.byte	W12
	.byte			Gs7, v100
	.byte	W12
	.byte			Gs7, v060
	.byte	W05
	.byte	FINE

	@********************** Track  5 **********************@

	.global song025_5
song025_5:	@ 0x08273AC7
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v050
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W60
	.byte		N11	, Gs7, v100
	.byte	W24
	.byte		N11	
	.byte	W12
song025_5_1:
	.byte	W84
	.byte		N11	, Gs7, v100
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	GOTO	
		.word	song025_5_1
	.byte	W84
	.byte		N11	, Gs7, v100
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  6 **********************@

	.global song025_6
song025_6:	@ 0x08273B40
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v069
	.byte	PAN	, c_v-4
	.byte	MOD	, 0
	.byte	BEND	, c_v+7
	.byte	W03
	.byte	W96
song025_6_8:
	.byte	MOD	, 0
	.byte	W02
	.byte		N24	, Cn5, v056
	.byte	W36
	.byte			As4
	.byte	W36
	.byte			Cn5
	.byte	W22
song025_6_2:
	.byte	W14
	.byte		N24	, As4, v056
	.byte	W36
	.byte		N12	, Cn5
	.byte	W24
	.byte			As4
	.byte	W22
	.byte	PEND
song025_6_3:
	.byte	W02
	.byte		N24	, Cs5, v056
	.byte	W36
	.byte			Cn5
	.byte	W36
	.byte		TIE	, As4
	.byte	W22
	.byte	PEND
song025_6_4:
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W08
	.byte		7
	.byte	W24
	.byte	W01
	.byte		10
	.byte	W24
	.byte	W03
	.byte	PEND
	.byte		EOT	, As4
song025_6_5:
	.byte	W02
	.byte		N24	, As4, v056
	.byte	W03
	.byte	MOD	, 7
	.byte	W01
	.byte		5
	.byte	W02
	.byte		0
	.byte	W30
	.byte		N24	, Cn5
	.byte	W36
	.byte		N12	, Cs5
	.byte	W22
	.byte	PEND
song025_6_6:
	.byte	W02
	.byte		N24	, As4, v056
	.byte	W36
	.byte			Cn5
	.byte	W36
	.byte		N12	, Cs5
	.byte	W22
	.byte	PEND
song025_6_7:
	.byte	W02
	.byte		N24	, Cs5, v056
	.byte	W36
	.byte		TIE	, Cn5
	.byte	W44
	.byte	MOD	, 2
	.byte	W14
	.byte	PEND
song025_6_10:
	.byte	MOD	, 5
	.byte	W09
	.byte		7
	.byte	W84
	.byte	W01
	.byte		1
	.byte	W02
	.byte	PEND
	.byte		0
	.byte	W02
	.byte		EOT	, Cn5
	.byte	W48
	.byte		N12	, Cs5, v056
	.byte	W12
	.byte		N24	, As4
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
song025_6_1:
	.byte	W02
	.byte		N24	, Cn5, v056
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N72	, Gs4
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	PEND
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W05
	.byte		10
	.byte	W08
	.byte		12
	.byte	W17
	.byte		8
	.byte	W01
	.byte		N12	, As4
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	, Fn5
	.byte	W12
	.byte		N24	, Ds5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	W02
	.byte		N24	, Cn5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N84	, Gs4
	.byte	W30
	.byte	MOD	, 2
	.byte	W04
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W06
	.byte		10
	.byte	W24
	.byte	W03
	.byte		7
	.byte	W02
	.byte		0
	.byte	W08
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, As4
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	PATT	
		.word	song025_6_1
	.byte	W04
	.byte	MOD	, 5
	.byte	W05
	.byte		7
	.byte	W04
	.byte		10
	.byte	W07
	.byte		12
	.byte	W16
	.byte		10
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N12	, As4, v056
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn4
	.byte	W24
	.byte		N12	, As4
	.byte	W10
	.byte	W02
	.byte		N24	, Gs4
	.byte	W24
	.byte		N12	, As4
	.byte	W12
	.byte		N24	, Gs4
	.byte	W24
	.byte		N84	, Cs4
	.byte	W30
	.byte	MOD	, 2
	.byte	W04
	.byte	W01
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W05
	.byte		12
	.byte	W30
	.byte	W01
	.byte		8
	.byte	W02
	.byte		0
	.byte	W05
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, As4
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	PATT	
		.word	song025_6_1
	.byte	W01
	.byte	MOD	, 5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W05
	.byte		12
	.byte	W03
	.byte		15
	.byte	W17
	.byte		7
	.byte	W02
	.byte		0
	.byte	W04
	.byte		N12	, As4, v056
	.byte	W12
	.byte			Fn5
	.byte	W12
	.byte		N24	, Ds5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	W02
	.byte		N24	, Cn5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N84	, Gs4
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W05
	.byte		10
	.byte	W24
	.byte		5
	.byte	W01
	.byte		0
	.byte	W13
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, As4
	.byte	W24
	.byte		N12	, Cs5
	.byte	W10
	.byte	W02
	.byte		N24	, Cn5
	.byte	W24
	.byte		N12	, Cs5
	.byte	W12
	.byte		N24	, Cn5
	.byte	W24
	.byte		N72	, Gs4
	.byte	W28
	.byte	MOD	, 2
	.byte	W06
	.byte	W02
	.byte		5
	.byte	W10
	.byte		7
	.byte	W23
	.byte		0
	.byte	W01
	.byte	W02
	.byte		N12	, As4
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn4
	.byte	W24
	.byte		N12	, As4
	.byte	W10
	.byte	W02
	.byte		N24	, Gs4
	.byte	W24
	.byte		N12	, As4
	.byte	W12
	.byte		N24	, Gs4
	.byte	W24
	.byte		N06	, Cs4
	.byte	W12
	.byte		N10	
	.byte	W10
	.byte		N11	, Fn4
	.byte	W12
	.byte		TIE	, Ds4, v076
	.byte	W56
	.byte	MOD	, 1
	.byte	W13
	.byte		3
	.byte	W11
	.byte		6
	.byte	W14
	.byte		8
	.byte	W02
	.byte	W56
	.byte	W02
	.byte		5
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 0
	.byte		N12	, Cs4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		TIE	, Fn4
	.byte	W12
	.byte	W88
	.byte	W01
	.byte	MOD	, 1
	.byte	W03
	.byte		3
	.byte	W04
	.byte		6
	.byte	W08
	.byte		8
	.byte	W11
	.byte		11
	.byte	W36
	.byte	W03
	.byte		8
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 2
	.byte		N09	, Cs4
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		TIE	, En4
	.byte	W80
	.byte	W01
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W04
	.byte		7
	.byte	W04
	.byte	W06
	.byte		10
	.byte	W52
	.byte		5
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 0
	.byte		N12	, Cs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N96	, Ds4
	.byte	W12
	.byte	W30
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W05
	.byte		7
	.byte	W06
	.byte		10
	.byte	W13
	.byte		12
	.byte	W22
	.byte		8
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N08	, Fn4
	.byte	W12
	.byte	W12
	.byte		N12	, Fn4, v056
	.byte	W12
	.byte		N11	, Fs4
	.byte	W12
	.byte		N12	, Fn4
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte		N08	, Fn4
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Cs4
	.byte	W12
song025_6_9:
	.byte	W02
	.byte		N24	, Cn5, v056
	.byte	W36
	.byte			As4
	.byte	W36
	.byte			Cn5
	.byte	W22
	.byte	PEND
	.byte	PATT	
		.word	song025_6_2
	.byte	PATT	
		.word	song025_6_3
	.byte	PATT	
		.word	song025_6_4
	.byte		EOT	, As4
	.byte	PATT	
		.word	song025_6_5
	.byte	PATT	
		.word	song025_6_6
	.byte	PATT	
		.word	song025_6_7
	.byte	MOD	, 5
	.byte	W09
	.byte		7
	.byte	W80
	.byte	W03
	.byte		EOT	, Cn5
	.byte	W02
	.byte	MOD	, 0
	.byte	W02
	.byte	GOTO	
		.word	song025_6_8
	.byte	PATT	
		.word	song025_6_9
	.byte	PATT	
		.word	song025_6_2
	.byte	PATT	
		.word	song025_6_3
	.byte	PATT	
		.word	song025_6_4
	.byte		EOT	, As4
	.byte	PATT	
		.word	song025_6_5
	.byte	PATT	
		.word	song025_6_6
	.byte	PATT	
		.word	song025_6_7
	.byte	PATT	
		.word	song025_6_10
	.byte	W02
	.byte		EOT	, Cn5
	.byte	FINE

	@********************** Track  7 **********************@

	.global song025_7
song025_7:	@ 0x08273DBB
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v075
	.byte	PAN	, c_v-4
	.byte	LFOS	, 0
	.byte	W03
	.byte	W96
song025_7_7:
	.byte	MOD	, 0
	.byte	W02
	.byte		N24	, Cn4, v080
	.byte	W36
	.byte			As3
	.byte	W36
	.byte			Cn4
	.byte	W22
song025_7_1:
	.byte	W14
	.byte		N24	, As3, v080
	.byte	W36
	.byte		N12	, Cn4
	.byte	W24
	.byte			As3
	.byte	W22
	.byte	PEND
song025_7_2:
	.byte	W02
	.byte		N24	, Cs4, v080
	.byte	W36
	.byte			Cn4
	.byte	W36
	.byte		TIE	, As3
	.byte	W22
	.byte	PEND
song025_7_3:
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W08
	.byte		7
	.byte	W24
	.byte	W01
	.byte		10
	.byte	W24
	.byte	W03
	.byte	PEND
	.byte		EOT	, As3
song025_7_4:
	.byte	W02
	.byte		N24	, As3, v080
	.byte	W03
	.byte	MOD	, 7
	.byte	W01
	.byte		5
	.byte	W02
	.byte		0
	.byte	W30
	.byte		N24	, Cn4
	.byte	W36
	.byte		N12	, Cs4
	.byte	W22
	.byte	PEND
song025_7_5:
	.byte	W02
	.byte		N24	, As3, v080
	.byte	W36
	.byte			Cn4
	.byte	W36
	.byte		N12	, Cs4
	.byte	W22
	.byte	PEND
song025_7_6:
	.byte	W02
	.byte		N24	, Cs4, v080
	.byte	W36
	.byte		TIE	, Cn4
	.byte	W44
	.byte	MOD	, 2
	.byte	W14
	.byte	PEND
song025_7_9:
	.byte	MOD	, 5
	.byte	W09
	.byte		7
	.byte	W84
	.byte	W01
	.byte		1
	.byte	W02
	.byte	PEND
	.byte	W02
	.byte		EOT	, Cn4
	.byte	W92
	.byte	W02
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
	.byte		N32	, Fs4, v072
	.byte	W36
	.byte			Fn4
	.byte	W36
	.byte			Ds4
	.byte	W24
	.byte	W12
	.byte			Cs4
	.byte	W36
	.byte		N23	, Cn4
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte		N32	, As3
	.byte	W36
	.byte			Cn4
	.byte	W36
	.byte			Cs4
	.byte	W24
	.byte	W12
	.byte			Ds4
	.byte	W36
	.byte		N23	, Fn4
	.byte	W24
	.byte			As4
	.byte	W24
	.byte		N32	, An4
	.byte	W36
	.byte			Gs4
	.byte	W36
	.byte			Fs4
	.byte	W24
	.byte	W12
	.byte			En4
	.byte	W36
	.byte		N23	, Ds4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		N44	, Gs4
	.byte	W48
	.byte			Fn4
	.byte	W48
	.byte		N92	, Gs3
	.byte	W96
song025_7_8:
	.byte	W02
	.byte		N24	, Cn4, v080
	.byte	W36
	.byte			As3
	.byte	W36
	.byte			Cn4
	.byte	W22
	.byte	PEND
	.byte	PATT	
		.word	song025_7_1
	.byte	PATT	
		.word	song025_7_2
	.byte	PATT	
		.word	song025_7_3
	.byte		EOT	, As3
	.byte	PATT	
		.word	song025_7_4
	.byte	PATT	
		.word	song025_7_5
	.byte	PATT	
		.word	song025_7_6
	.byte	MOD	, 5
	.byte	W09
	.byte		7
	.byte	W80
	.byte	W03
	.byte		EOT	, Cn4
	.byte	W02
	.byte	MOD	, 0
	.byte	W02
	.byte	GOTO	
		.word	song025_7_7
	.byte	PATT	
		.word	song025_7_8
	.byte	PATT	
		.word	song025_7_1
	.byte	PATT	
		.word	song025_7_2
	.byte	PATT	
		.word	song025_7_3
	.byte		EOT	, As3
	.byte	PATT	
		.word	song025_7_4
	.byte	PATT	
		.word	song025_7_5
	.byte	PATT	
		.word	song025_7_6
	.byte	PATT	
		.word	song025_7_9
	.byte	W02
	.byte		EOT	, Cn4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song025_8
song025_8:	@ 0x08273EDE
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v075
	.byte	PAN	, c_v-14
	.byte	LFOS	, 0
	.byte	W03
	.byte	W96
song025_8_8:
	.byte	MOD	, 0
	.byte	W02
	.byte		N24	, Cn6, v088
	.byte	W36
	.byte			As5
	.byte	W36
	.byte			Cn6
	.byte	W22
song025_8_2:
	.byte	W14
	.byte		N24	, As5, v088
	.byte	W36
	.byte		N12	, Cn6
	.byte	W24
	.byte			As5
	.byte	W22
	.byte	PEND
song025_8_3:
	.byte	W02
	.byte		N24	, Cs6, v088
	.byte	W36
	.byte			Cn6
	.byte	W36
	.byte		TIE	, As5
	.byte	W22
	.byte	PEND
song025_8_4:
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W08
	.byte		7
	.byte	W24
	.byte	W01
	.byte		10
	.byte	W24
	.byte	W03
	.byte	PEND
	.byte		EOT	, As5
song025_8_5:
	.byte	W02
	.byte		N24	, As5, v088
	.byte	W03
	.byte	MOD	, 7
	.byte	W01
	.byte		5
	.byte	W02
	.byte		0
	.byte	W30
	.byte		N24	, Cn6
	.byte	W36
	.byte		N12	, Cs6
	.byte	W22
	.byte	PEND
song025_8_6:
	.byte	W02
	.byte		N24	, As5, v088
	.byte	W36
	.byte			Cn6
	.byte	W36
	.byte		N12	, Cs6
	.byte	W22
	.byte	PEND
song025_8_7:
	.byte	W02
	.byte		N24	, Cs6, v088
	.byte	W36
	.byte		TIE	, Cn6
	.byte	W44
	.byte	MOD	, 2
	.byte	W14
	.byte	PEND
song025_8_10:
	.byte	MOD	, 5
	.byte	W09
	.byte		7
	.byte	W84
	.byte	W01
	.byte		1
	.byte	W02
	.byte	PEND
	.byte		0
	.byte	W02
	.byte		EOT	, Cn6
	.byte	W48
	.byte		N12	, Cs6, v096
	.byte	W12
	.byte		N24	, As5
	.byte	W24
	.byte		N12	, Cs6
	.byte	W10
song025_8_1:
	.byte	W02
	.byte		N24	, Cn6, v096
	.byte	W24
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, Cn6
	.byte	W24
	.byte		N72	, Gs5
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	PEND
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W05
	.byte		10
	.byte	W08
	.byte		12
	.byte	W17
	.byte		8
	.byte	W01
	.byte		N12	, As5
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	, Fn6
	.byte	W12
	.byte		N24	, Ds6
	.byte	W24
	.byte		N12	, Cs6
	.byte	W10
	.byte	W02
	.byte		N24	, Cn6
	.byte	W24
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, Cn6
	.byte	W24
	.byte		N84	, Gs5
	.byte	W30
	.byte	MOD	, 2
	.byte	W04
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W06
	.byte		10
	.byte	W24
	.byte	W03
	.byte		7
	.byte	W02
	.byte		0
	.byte	W08
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, As5
	.byte	W24
	.byte		N12	, Cs6
	.byte	W10
	.byte	PATT	
		.word	song025_8_1
	.byte	W04
	.byte	MOD	, 5
	.byte	W05
	.byte		7
	.byte	W04
	.byte		10
	.byte	W07
	.byte		12
	.byte	W16
	.byte		10
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N12	, As5, v096
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn5
	.byte	W24
	.byte		N12	, As5
	.byte	W10
	.byte	W02
	.byte		N24	, Gs5
	.byte	W24
	.byte		N12	, As5
	.byte	W12
	.byte		N24	, Gs5
	.byte	W24
	.byte		N84	, Cs5
	.byte	W30
	.byte	MOD	, 2
	.byte	W04
	.byte	W01
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W05
	.byte		12
	.byte	W30
	.byte	W01
	.byte		8
	.byte	W02
	.byte		0
	.byte	W05
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, As5
	.byte	W24
	.byte		N12	, Cs6
	.byte	W10
	.byte	PATT	
		.word	song025_8_1
	.byte	W01
	.byte	MOD	, 5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W05
	.byte		12
	.byte	W03
	.byte		15
	.byte	W17
	.byte		7
	.byte	W02
	.byte		0
	.byte	W04
	.byte		N12	, As5, v096
	.byte	W12
	.byte			Fn6
	.byte	W12
	.byte		N24	, Ds6
	.byte	W24
	.byte		N12	, Cs6
	.byte	W10
	.byte	W02
	.byte		N24	, Cn6
	.byte	W24
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, Cn6
	.byte	W24
	.byte		N84	, Gs5
	.byte	W30
	.byte	W01
	.byte	MOD	, 2
	.byte	W03
	.byte	W02
	.byte		5
	.byte	W05
	.byte		7
	.byte	W05
	.byte		10
	.byte	W24
	.byte		5
	.byte	W01
	.byte		0
	.byte	W13
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, As5
	.byte	W24
	.byte		N12	, Cs6
	.byte	W10
	.byte	W02
	.byte		N24	, Cn6
	.byte	W24
	.byte		N12	, Cs6
	.byte	W12
	.byte		N24	, Cn6
	.byte	W24
	.byte		N72	, Gs5
	.byte	W28
	.byte	MOD	, 2
	.byte	W06
	.byte	W02
	.byte		5
	.byte	W10
	.byte		7
	.byte	W23
	.byte		0
	.byte	W01
	.byte	W02
	.byte		N12	, As5
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn5
	.byte	W24
	.byte		N12	, As5
	.byte	W10
	.byte	W02
	.byte		N24	, Gs5
	.byte	W24
	.byte		N12	, As5
	.byte	W12
	.byte		N24	, Gs5
	.byte	W24
	.byte		N06	, Cs5
	.byte	W12
	.byte		N10	
	.byte	W10
	.byte		N11	, Fn5
	.byte	W12
	.byte		N32	, Fs5
	.byte	W36
	.byte			Fn5
	.byte	W36
	.byte			Ds5
	.byte	W24
	.byte	W12
	.byte			Cs5
	.byte	W36
	.byte		N23	, Cn5
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte		N32	, As4
	.byte	W36
	.byte			Cn5
	.byte	W36
	.byte			Cs5
	.byte	W24
	.byte	W12
	.byte			Ds5
	.byte	W36
	.byte		N23	, Fn5
	.byte	W24
	.byte			As5
	.byte	W24
	.byte		N32	, An5
	.byte	W36
	.byte			Gs5
	.byte	W36
	.byte			Fs5
	.byte	W24
	.byte	W12
	.byte			En5
	.byte	W36
	.byte		N23	, Ds5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte		N44	, Gs5
	.byte	W48
	.byte			Fn5
	.byte	W48
	.byte		N92	, Gs4
	.byte	W96
song025_8_9:
	.byte	W02
	.byte		N24	, Cn6, v088
	.byte	W36
	.byte			As5
	.byte	W36
	.byte			Cn6
	.byte	W22
	.byte	PEND
	.byte	PATT	
		.word	song025_8_2
	.byte	PATT	
		.word	song025_8_3
	.byte	PATT	
		.word	song025_8_4
	.byte		EOT	, As5
	.byte	PATT	
		.word	song025_8_5
	.byte	PATT	
		.word	song025_8_6
	.byte	PATT	
		.word	song025_8_7
	.byte	MOD	, 5
	.byte	W09
	.byte		7
	.byte	W80
	.byte	W03
	.byte		EOT	, Cn6
	.byte	W02
	.byte	MOD	, 0
	.byte	W02
	.byte	GOTO	
		.word	song025_8_8
	.byte	PATT	
		.word	song025_8_9
	.byte	PATT	
		.word	song025_8_2
	.byte	PATT	
		.word	song025_8_3
	.byte	PATT	
		.word	song025_8_4
	.byte		EOT	, As5
	.byte	PATT	
		.word	song025_8_5
	.byte	PATT	
		.word	song025_8_6
	.byte	PATT	
		.word	song025_8_7
	.byte	PATT	
		.word	song025_8_10
	.byte	W02
	.byte		EOT	, Cn6
	.byte	FINE

	@********************** Track  9 **********************@

	.global song025_9
song025_9:	@ 0x08274111
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v062
	.byte	PAN	, c_v-44
	.byte	LFOS	, 0
	.byte	BEND	, c_v
	.byte	W03
	.byte	W96
song025_9_2:
	.byte		N13	, Ds3, v088
	.byte	W48
	.byte		N11	, Cn3
	.byte	W12
	.byte		N14	, As2
	.byte	W24
	.byte		N32	, Fn3
	.byte	W12
	.byte	PEND
song025_9_1:
	.byte	W24
	.byte		N10	, Ds3, v088
	.byte	W48
	.byte		N22	, Cn3
	.byte	W24
	.byte	PEND
song025_9_3:
	.byte	W24
	.byte		N12	, Cn3, v088
	.byte	W24
	.byte		N10	, As2
	.byte	W12
	.byte		N11	, Fn2
	.byte	W24
	.byte		N32	, Ds3
	.byte	W12
	.byte	PEND
song025_9_4:
	.byte	W48
	.byte		N10	, Cn3, v088
	.byte	W24
	.byte		N21	, As2
	.byte	W24
	.byte	PEND
song025_9_5:
	.byte		N13	, Ds3, v088
	.byte	W48
	.byte		N11	, Cn3
	.byte	W12
	.byte			As2
	.byte	W24
	.byte		N32	, Fn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song025_9_1
song025_9_6:
	.byte		N13	, An3, v088
	.byte	W48
	.byte		N10	, Cn3
	.byte	W12
	.byte		N14	, An2
	.byte	W24
	.byte		N32	, As3
	.byte	W12
	.byte	PEND
	.byte	W72
	.byte		N22	, As2
	.byte	W24
	.byte	PATT	
		.word	song025_9_2
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_3
	.byte	PATT	
		.word	song025_9_4
	.byte	PATT	
		.word	song025_9_5
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_6
	.byte	W72
	.byte		N22	, As2, v088
	.byte	W24
	.byte	PATT	
		.word	song025_9_2
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_3
	.byte	PATT	
		.word	song025_9_4
	.byte	PATT	
		.word	song025_9_5
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_6
	.byte	W72
	.byte		N22	, As2, v088
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	LFOS	, 0
	.byte	BEND	, c_v
	.byte	W96
	.byte	PATT	
		.word	song025_9_2
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_3
	.byte	PATT	
		.word	song025_9_4
	.byte	PATT	
		.word	song025_9_5
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_6
	.byte	W72
	.byte		N23	, As2, v088
	.byte	W24
	.byte	GOTO	
		.word	song025_9_2
	.byte	PATT	
		.word	song025_9_2
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_3
	.byte	PATT	
		.word	song025_9_4
	.byte	PATT	
		.word	song025_9_5
	.byte	PATT	
		.word	song025_9_1
	.byte	PATT	
		.word	song025_9_6
	.byte	W72
	.byte		N22	, As2, v088
	.byte	W22
	.byte	FINE

	@********************** Track  10 **********************@

	.global song025_10
song025_10:	@ 0x08274224
	.byte	KEYSH	, 0
	.byte	VOICE	, 79
	.byte	VOL	, v062
	.byte	PAN	, c_v-44
	.byte	LFOS	, 0
	.byte	BEND	, c_v
	.byte	W03
	.byte	W96
song025_10_2:
	.byte	W24
	.byte		N11	, Cs3, v088
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte		N11	
	.byte	W96
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N12	, Fn3
	.byte	W72
song025_10_1:
	.byte	W24
	.byte		N11	, Fs3, v088
	.byte	W24
	.byte		N10	, Cs3
	.byte	W48
	.byte	PEND
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte		N11	
	.byte	W96
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N12	, Fn3
	.byte	W72
	.byte	PATT	
		.word	song025_10_1
	.byte	W24
	.byte		N11	, Cs3, v088
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte		N11	
	.byte	W96
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N12	, Fn3
	.byte	W72
	.byte	PATT	
		.word	song025_10_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	LFOS	, 0
	.byte	BEND	, c_v
	.byte	W96
	.byte	W24
	.byte		N11	, Cs3, v088
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte		N11	
	.byte	W96
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N12	, Fn3
	.byte	W72
	.byte	PATT	
		.word	song025_10_1
	.byte	GOTO	
		.word	song025_10_2
	.byte	W24
	.byte		N11	, Cs3, v088
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte		N11	
	.byte	W96
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W24
	.byte		N11	
	.byte	W72
	.byte	W48
	.byte		N11	
	.byte	W48
	.byte	W24
	.byte		N12	, Fn3
	.byte	W72
	.byte	W24
	.byte		N11	, Fs3
	.byte	W24
	.byte		N10	, Cs3
	.byte	W10
	.byte	FINE

	@********************** Track  11 **********************@

	.global song025_11
song025_11:	@ 0x082742D4
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v069
	.byte	PAN	, c_v-5
	.byte	W03
song025_11_4:
	.byte	W13
	.byte		N11	, Fs1, v112
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W18
	.byte			Gs2
	.byte	W18
	.byte			Gs1
	.byte	W11
	.byte	PEND
song025_11_1:
	.byte	W01
	.byte		N11	, Fs1, v112
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W11
	.byte	PEND
song025_11_2:
	.byte	W01
	.byte		N11	, Gs1, v112
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W11
	.byte	PEND
song025_11_3:
	.byte	W01
	.byte		N11	, Fn1, v112
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fs2
	.byte	W11
	.byte	PEND
song025_11_5:
	.byte	W01
	.byte		N11	, Fs1, v112
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_4
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_5
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_5
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_5
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	W13
	.byte		N11	, Fs1, v112
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W18
	.byte			Gs2
	.byte	W18
	.byte			Gs1
	.byte	W11
	.byte	W01
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W11
	.byte	W01
	.byte			Gs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N12	, Fn1
	.byte	W12
	.byte		N11	, Fn2
	.byte	W12
	.byte		N12	, Ds1
	.byte	W12
	.byte		N11	, Ds2
	.byte	W11
	.byte	W01
	.byte			As2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Bn0
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn1
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cs2
	.byte	W11
	.byte	W01
	.byte			Cs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N12	, Fn1
	.byte	W12
	.byte		N11	, Fn2
	.byte	W12
	.byte		N12	, As1
	.byte	W12
	.byte		N11	, As2
	.byte	W11
	.byte	W01
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W11
	.byte	W01
	.byte			Fs1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N12	, Ds1
	.byte	W12
	.byte		N11	, Ds2
	.byte	W12
	.byte		N12	, Cs1
	.byte	W12
	.byte		N11	, Cs2
	.byte	W11
	.byte	W01
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N12	, Ds1
	.byte	W12
	.byte		N11	, Ds2
	.byte	W12
	.byte		N12	, Gs1
	.byte	W12
	.byte		N11	, Gs2
	.byte	W11
	.byte	W01
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte		N12	
	.byte	W18
	.byte		N10	
	.byte	W11
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_5
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_4
	.byte	GOTO	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	PATT	
		.word	song025_11_5
	.byte	PATT	
		.word	song025_11_1
	.byte	PATT	
		.word	song025_11_2
	.byte	PATT	
		.word	song025_11_3
	.byte	W01
	.byte		N11	, Fs1, v112
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Fs2
	.byte	W11
	.byte	W01
	.byte	FINE

	@********************** Track  12 **********************@

	.global song025_12
song025_12:	@ 0x082744A6
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v075
	.byte	PAN	, c_v+26
	.byte	W03
	.byte	W96
song025_12_1:
	.byte		N13	, En4, v112
	.byte	W24
	.byte		N12	, Ds4
	.byte	W24
	.byte		N11	, Cs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W24
	.byte		N32	, Fs4
	.byte	W12
	.byte	PEND
song025_12_2:
	.byte	W24
	.byte		N10	, En4, v112
	.byte	W24
	.byte		N12	, Ds4
	.byte	W24
	.byte		N23	, Cs4
	.byte	W24
	.byte	PEND
song025_12_9:
	.byte		N13	, Ds4, v112
	.byte	W24
	.byte		N12	, Cs4
	.byte	W24
	.byte		N11	, Bn3
	.byte	W12
	.byte		N14	, Fs3
	.byte	W24
	.byte		N32	, En4
	.byte	W12
	.byte	PEND
song025_12_10:
	.byte	W24
	.byte		N11	, Ds4, v112
	.byte	W24
	.byte		N10	, Cs4
	.byte	W24
	.byte		N23	, Bn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song025_12_1
	.byte	PATT	
		.word	song025_12_2
song025_12_11:
	.byte		N13	, As4, v112
	.byte	W24
	.byte		N12	, Gn4
	.byte	W24
	.byte		N11	, Cs4
	.byte	W12
	.byte		N14	, As3
	.byte	W24
	.byte		N32	, Bn4
	.byte	W12
	.byte	PEND
song025_12_12:
	.byte	W24
	.byte		N11	, Gs4, v112
	.byte	W24
	.byte		N10	, Ds4
	.byte	W24
	.byte		N23	, Bn3
	.byte	W24
	.byte	PEND
	.byte		N13	, En3, v100
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte		N11	, Cs3
	.byte	W12
	.byte		N14	, Bn2
	.byte	W24
	.byte		N32	, Fs3
	.byte	W12
	.byte	W24
	.byte		N10	, En3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte		N23	, Cs3
	.byte	W24
song025_12_3:
	.byte		N13	, Ds3, v100
	.byte	W24
	.byte		N12	, Cs3
	.byte	W24
	.byte		N11	, Bn2
	.byte	W12
	.byte		N14	, Fs2
	.byte	W24
	.byte		N32	, En3
	.byte	W12
	.byte	PEND
song025_12_4:
	.byte	W24
	.byte		N11	, Ds3, v100
	.byte	W24
	.byte		N10	, Cs3
	.byte	W24
	.byte		N22	, Bn2
	.byte	W24
	.byte	PEND
	.byte		N13	, En3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte		N09	, Cs3
	.byte	W12
	.byte		N14	, Bn2
	.byte	W24
	.byte		N32	, Fs3
	.byte	W12
	.byte	W24
	.byte		N10	, En3
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte		N21	, Cs3
	.byte	W24
song025_12_7:
	.byte		N13	, As3, v100
	.byte	W24
	.byte		N12	, Gn3
	.byte	W24
	.byte		N10	, Cs3
	.byte	W12
	.byte		N14	, As2
	.byte	W24
	.byte		N32	, Bn3
	.byte	W12
	.byte	PEND
song025_12_8:
	.byte	W24
	.byte		N11	, Gs3, v100
	.byte	W24
	.byte		N10	, Ds3
	.byte	W24
	.byte		N22	, Bn2
	.byte	W24
	.byte	PEND
song025_12_5:
	.byte		N13	, En3, v100
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte		N10	, Cs3
	.byte	W12
	.byte		N14	, Bn2
	.byte	W24
	.byte		N32	, Fs3
	.byte	W12
	.byte	PEND
song025_12_6:
	.byte	W24
	.byte		N10	, En3, v100
	.byte	W24
	.byte		N12	, Ds3
	.byte	W24
	.byte		N22	, Cs3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song025_12_3
	.byte	PATT	
		.word	song025_12_4
	.byte	PATT	
		.word	song025_12_5
	.byte	PATT	
		.word	song025_12_6
	.byte	PATT	
		.word	song025_12_7
	.byte	PATT	
		.word	song025_12_8
	.byte		N32	, En4, v100
	.byte	W36
	.byte			Ds4
	.byte	W36
	.byte			Cs4
	.byte	W24
	.byte	W12
	.byte			Bn3
	.byte	W36
	.byte		N23	, As3
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte		N32	, Gs3
	.byte	W36
	.byte			As3
	.byte	W36
	.byte			Bn3
	.byte	W24
	.byte	W12
	.byte			Cs4
	.byte	W36
	.byte		N23	, Ds4
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N32	, Gn4
	.byte	W36
	.byte			Fs4
	.byte	W36
	.byte			En4
	.byte	W24
	.byte	W12
	.byte			Dn4
	.byte	W36
	.byte		N23	, Cs4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte		N44	, Fs4
	.byte	W48
	.byte			Ds4
	.byte	W48
	.byte		N92	, Fs3
	.byte	W96
	.byte	PATT	
		.word	song025_12_1
	.byte	PATT	
		.word	song025_12_2
	.byte	PATT	
		.word	song025_12_9
	.byte	PATT	
		.word	song025_12_10
	.byte	PATT	
		.word	song025_12_1
	.byte	PATT	
		.word	song025_12_2
	.byte	PATT	
		.word	song025_12_11
	.byte	PATT	
		.word	song025_12_12
	.byte	GOTO	
		.word	song025_12_1
	.byte	PATT	
		.word	song025_12_1
	.byte	PATT	
		.word	song025_12_2
	.byte	PATT	
		.word	song025_12_9
	.byte	PATT	
		.word	song025_12_10
	.byte	PATT	
		.word	song025_12_1
	.byte	PATT	
		.word	song025_12_2
	.byte	PATT	
		.word	song025_12_11
	.byte	W24
	.byte		N11	, Gs4, v112
	.byte	W24
	.byte		N10	, Ds4
	.byte	W24
	.byte		N23	, Bn3
	.byte	W23
	.byte	FINE

	.align 2
	.global song025
song025:	@ 0x0827464C
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	.word	voicegroup008		@ voicegroup/tone

	.word	song025_1		@ track
	.word	song025_2		@ track
	.word	song025_3		@ track
	.word	song025_4		@ track
	.word	song025_5		@ track
	.word	song025_6		@ track
	.word	song025_7		@ track
	.word	song025_8		@ track
	.word	song025_9		@ track
	.word	song025_10		@ track
	.word	song025_11		@ track
	.word	song025_12		@ track
