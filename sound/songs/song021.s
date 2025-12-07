	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song021_1
song021_1:	@ 0x0826FB00
	.byte	KEYSH	, 0
	.byte	TEMPO	, 180
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v+3
	.byte	W03
	.byte	TEMPO	, 90
	.byte		N11	, En6, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En6
	.byte	W11
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Fs6
	.byte	W06
	.byte		N06	, En6
	.byte	W06
	.byte			Fn6
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte			Gn6
	.byte	W06
song021_1_1:
	.byte		N11	, En6, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En6
	.byte	W11
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Fs6
	.byte	W06
	.byte		N06	, En6
	.byte	W06
	.byte			Fn6
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte			Gn6
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song021_1_1
song021_1_8:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			En6
	.byte	W11
	.byte		N11	
	.byte	W13
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Fs6
	.byte	W06
	.byte		N06	, En6
	.byte	W06
	.byte		N05	, Gn7
	.byte	W06
	.byte		N06	, En6
	.byte	W06
	.byte		N05	, Fs6
	.byte	W06
	.byte		N11	, En6
	.byte	W12
	.byte		N05	, Fn6
	.byte	W06
	.byte			Gn7
	.byte	W06
	.byte	PEND
song021_1_2:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, As4
	.byte	W07
	.byte		N11	, En6
	.byte	W12
	.byte		N06	, Fs5
	.byte	W12
	.byte			Gn7
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn5
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Fs5
	.byte	W06
	.byte	PEND
song021_1_3:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, As4
	.byte	W07
	.byte		N11	, En6
	.byte	W12
	.byte		N06	, Fs5
	.byte	W12
	.byte			Gn7
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W17
	.byte	PEND
song021_1_4:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, As4
	.byte	W07
	.byte		N11	, En6
	.byte	W12
	.byte		N06	, Fs5
	.byte	W12
	.byte			Gn7
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Fs5
	.byte	W06
	.byte	PEND
song021_1_5:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, As4
	.byte	W07
	.byte		N11	, Fs5
	.byte	W12
	.byte		N06	, Cs5
	.byte	W07
	.byte		N05	, En6
	.byte	W05
	.byte		N06	, Dn5
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gs5
	.byte	W06
	.byte		N05	, Fs5
	.byte	W06
	.byte	PEND
song021_1_10:
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_5
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_5
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_5
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_5
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_5
song021_1_6:
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			En6
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte		N11	
	.byte	W13
	.byte		N06	, Gn7
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N11	, En6
	.byte	W12
	.byte	PEND
song021_1_7:
	.byte		N05	, Gn7, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			En6
	.byte	W11
	.byte		N11	
	.byte	W13
	.byte		N06	, Gn7
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N11	, En6
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song021_1_6
	.byte	PATT	
		mPtr	song021_1_7
	.byte	PATT	
		mPtr	song021_1_6
	.byte	PATT	
		mPtr	song021_1_7
	.byte	PATT	
		mPtr	song021_1_6
	.byte	PATT	
		mPtr	song021_1_7
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
song021_1_9:
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, As4
	.byte	W07
	.byte		N11	, En6
	.byte	W12
	.byte		N06	, Fs5
	.byte	W07
	.byte		N05	, Cn5
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn5
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Fs5
	.byte	W06
	.byte	PEND
	.byte		N11	, Gn7
	.byte	W12
	.byte			En6
	.byte	W11
	.byte		N11	
	.byte	W13
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Fs6
	.byte	W06
	.byte		N06	, En6
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_8
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_1
	.byte	PATT	
		mPtr	song021_1_8
	.byte	PATT	
		mPtr	song021_1_9
	.byte	PATT	
		mPtr	song021_1_5
	.byte	PATT	
		mPtr	song021_1_9
	.byte	PATT	
		mPtr	song021_1_8
	.byte	PATT	
		mPtr	song021_1_2
	.byte	PATT	
		mPtr	song021_1_3
	.byte	PATT	
		mPtr	song021_1_4
	.byte	PATT	
		mPtr	song021_1_2
	.byte	GOTO	
		mPtr	song021_1_10
	.byte		N06	, Gn7, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, As4
	.byte	W07
	.byte		N11	, En6
	.byte	W12
	.byte		N06	, Fs5
	.byte	W12
	.byte			Gn7
	.byte	W06
	.byte		N05	, Ds5
	.byte	W06
	.byte			Gn7
	.byte	W05
	.byte		N06	, Fn5
	.byte	W07
	.byte			En6
	.byte	W07
	.byte		N04	, Gn5
	.byte	W05
	.byte	FINE

	@********************** Track  2 **********************@

	.global song021_2
song021_2:	@ 0x0826FD8F
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v053
	.byte	PAN	, c_v-19
	.byte	W03
song021_2_1:
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
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_1
song021_2_4:
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
song021_2_2:
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
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
song021_2_5:
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
song021_2_3:
	.byte	W12
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
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_3
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_1
	.byte	PATT	
		mPtr	song021_2_4
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	PATT	
		mPtr	song021_2_2
	.byte	GOTO	
		mPtr	song021_2_5
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
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song021_3
song021_3:	@ 0x0826FF5D
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v074
	.byte	PAN	, c_v-19
	.byte	W03
song021_3_1:
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
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
song021_3_4:
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte			Gn7, v088
	.byte	W24
	.byte			Gn7, v068
	.byte	W12
	.byte	PEND
song021_3_2:
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
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
song021_3_5:
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
song021_3_3:
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
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_3
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_3
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_3
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_1
	.byte	PATT	
		mPtr	song021_3_4
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	PATT	
		mPtr	song021_3_2
	.byte	GOTO	
		mPtr	song021_3_5
	.byte	PATT	
		mPtr	song021_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song021_4
song021_4:	@ 0x082700BE
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-6
	.byte	W03
song021_4_9:
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
song021_4_10:
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
song021_4_11:
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
song021_4_12:
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
song021_4_1:
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
song021_4_2:
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
song021_4_3:
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
song021_4_4:
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
song021_4_14:
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
song021_4_5:
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
song021_4_6:
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
	.byte	PEND
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_3
	.byte	PATT	
		mPtr	song021_4_4
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_5
	.byte	PATT	
		mPtr	song021_4_6
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_3
	.byte	PATT	
		mPtr	song021_4_4
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_5
	.byte	W01
	.byte		N05	, En2, v100
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Dn2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Cs2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Bn1
	.byte	W12
	.byte		N11	
	.byte	W11
song021_4_7:
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
song021_4_8:
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
	.byte	W01
	.byte			An1
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
	.byte	W01
	.byte			An1
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
	.byte	PATT	
		mPtr	song021_4_7
	.byte	PATT	
		mPtr	song021_4_8
	.byte	PATT	
		mPtr	song021_4_5
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
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_3
	.byte	PATT	
		mPtr	song021_4_4
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_5
	.byte	PATT	
		mPtr	song021_4_6
	.byte	PATT	
		mPtr	song021_4_9
	.byte	PATT	
		mPtr	song021_4_10
	.byte	PATT	
		mPtr	song021_4_11
	.byte	PATT	
		mPtr	song021_4_12
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
song021_4_13:
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
	.byte			Bn1
	.byte	W12
	.byte			En2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		mPtr	song021_4_10
	.byte	PATT	
		mPtr	song021_4_13
	.byte	W01
	.byte		N11	, En1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W11
	.byte	PATT	
		mPtr	song021_4_1
	.byte	PATT	
		mPtr	song021_4_2
	.byte	PATT	
		mPtr	song021_4_3
	.byte	PATT	
		mPtr	song021_4_4
	.byte	GOTO	
		mPtr	song021_4_14
	.byte	PATT	
		mPtr	song021_4_1
	.byte	W01
	.byte	FINE

	@********************** Track  5 **********************@

	.global song021_5
song021_5:	@ 0x08270339
	.byte	KEYSH	, 0
	.byte	VOICE	, 70
	.byte	VOL	, v070
	.byte	PAN	, c_v+36
	.byte	W03
song021_5_1:
	.byte	W92
	.byte	W01
	.byte		N03	, Cn2, v072
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
song021_5_2:
	.byte	W92
	.byte	W01
	.byte		N03	, An1, v072
	.byte	W03
	.byte	PEND
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_5_9:
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
		mPtr	song021_5_1
song021_5_7:
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
	.byte	PATT	
		mPtr	song021_5_1
song021_5_3:
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
		mPtr	song021_5_2
song021_5_4:
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
song021_5_5:
	.byte	W92
	.byte	W01
	.byte		N03	, Dn2, v072
	.byte	W03
	.byte	PEND
song021_5_6:
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
	.byte	W92
	.byte	W01
	.byte		N03	, An2
	.byte	W03
	.byte	W12
	.byte		N12	, An3
	.byte	W15
	.byte		N03	, An2
	.byte	W06
	.byte		N05	, An3
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N03	, Cs3
	.byte	W06
	.byte		N24	, An3
	.byte	W30
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song021_5_1
	.byte	PATT	
		mPtr	song021_5_3
	.byte	PATT	
		mPtr	song021_5_2
	.byte	PATT	
		mPtr	song021_5_4
	.byte	PATT	
		mPtr	song021_5_5
	.byte	PATT	
		mPtr	song021_5_6
	.byte	W80
	.byte	W01
	.byte		N03	, An2, v072
	.byte	W15
	.byte		N12	, Gn3
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
	.byte	PATT	
		mPtr	song021_5_1
	.byte	PATT	
		mPtr	song021_5_7
	.byte	PATT	
		mPtr	song021_5_2
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
	.byte	W92
	.byte	W01
	.byte		N03	, Ds2
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
song021_5_8:
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
		mPtr	song021_5_8
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song021_5_9
	.byte	FINE

	@********************** Track  6 **********************@

	.global song021_6
song021_6:	@ 0x082704EB
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	VOL	, v085
	.byte	PAN	, c_v+1
	.byte	W03
	.byte		N05	, An3, v116
	.byte	W24
	.byte		N30	, An3, v112
	.byte	W36
	.byte		N03	, Gs3
	.byte	W12
	.byte			An3, v108
	.byte	W12
	.byte		TIE	, Bn3, v112
	.byte	W12
	.byte	W88
	.byte		EOT	
	.byte	W08
	.byte		N08	, Cn4, v116
	.byte	W24
	.byte		N32	
	.byte	W36
	.byte		N03	, Bn3, v108
	.byte	W12
	.byte		N05	, Cn4
	.byte	W12
	.byte		TIE	, Dn4, v112
	.byte	W12
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_6_2:
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
	.byte	W60
	.byte		N11	, An2
	.byte		N11	, An3
	.byte	W24
	.byte		N05	, Bn2
	.byte		N05	, Bn3
	.byte	W12
	.byte		N56	, Cn3
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
	.byte	W60
	.byte		N15	, Cn3
	.byte		N15	, Cn4
	.byte	W24
	.byte		N05	, Dn3
	.byte		N05	, Dn4
	.byte	W12
	.byte		N56	, En3
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
song021_6_1:
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
		mPtr	song021_6_1
	.byte	W84
	.byte	W02
	.byte		EOT	, Bn3
	.byte			Bn4
	.byte	W10
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song021_6_2
	.byte	FINE

	@********************** Track  7 **********************@

	.global song021_7
song021_7:	@ 0x082705E3
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v088
	.byte	PAN	, c_v+3
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_7_1:
	.byte	W02
	.byte		N13	, Gn3, v112
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
	.byte	W10
	.byte	PEND
song021_7_2:
	.byte	W14
	.byte		N12	, Cs3, v112
	.byte	W24
	.byte			An2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
song021_7_3:
	.byte	W02
	.byte		N12	, En3, v112
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
	.byte	W10
	.byte	PEND
song021_7_4:
	.byte	W14
	.byte		N12	, An2, v112
	.byte	W24
	.byte		N18	, Gn2
	.byte	W24
	.byte		N12	, An2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PEND
song021_7_5:
	.byte		N12	, Gn3, v112
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
	.byte	W12
	.byte	PEND
song021_7_6:
	.byte	W12
	.byte		N24	, Cs3, v112
	.byte	W24
	.byte		N12	, An2
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte	PEND
song021_7_7:
	.byte		N12	, Gn3, v112
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte			Gn3
	.byte	W24
	.byte		N48	, En3
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N12	, An2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte	PATT	
		mPtr	song021_7_1
	.byte	PATT	
		mPtr	song021_7_2
	.byte	PATT	
		mPtr	song021_7_3
	.byte	PATT	
		mPtr	song021_7_4
	.byte	PATT	
		mPtr	song021_7_5
	.byte	PATT	
		mPtr	song021_7_6
	.byte	PATT	
		mPtr	song021_7_7
song021_7_8:
	.byte	W60
	.byte	W01
	.byte		N12	, An2, v112
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W11
	.byte	PEND
song021_7_9:
	.byte	W01
	.byte		N13	, Gn3, v112
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
song021_7_10:
	.byte	W13
	.byte		N12	, Cs3, v112
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
song021_7_11:
	.byte	W01
	.byte		N12	, En3, v112
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
song021_7_12:
	.byte	W13
	.byte		N12	, An2, v112
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
song021_7_13:
	.byte	W01
	.byte		N12	, Gn3, v112
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
song021_7_14:
	.byte	W13
	.byte		N24	, Cs3, v112
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
song021_7_15:
	.byte	W01
	.byte		N12	, Gn3, v112
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
song021_7_16:
	.byte	W24
	.byte	W01
	.byte		N12	, Dn3, v112
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Bn2
	.byte	W23
	.byte	PEND
	.byte		N01	, Cn4
	.byte	W01
	.byte		N12	, Dn4
	.byte	W23
	.byte		N13	, Cn4
	.byte	W24
	.byte		N16	, Bn3
	.byte	W24
	.byte		N15	, An3
	.byte	W24
	.byte		N01	, Bn3
	.byte	W01
	.byte		N10	, Cn4
	.byte	W11
	.byte		N12	, Bn3
	.byte	W12
	.byte		N11	, An3
	.byte	W12
	.byte		N15	, Dn3
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N12	, Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Cn4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	W01
	.byte			En3
	.byte	W23
	.byte		N01	, Cn3
	.byte	W01
	.byte		N09	, Cs3
	.byte	W11
	.byte		N36	, An2
	.byte	W48
	.byte	W01
	.byte		N05	, Dn3
	.byte	W11
	.byte		N12	, Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N01	, Bn3
	.byte	W01
	.byte		N10	, Cn4
	.byte	W11
	.byte		N06	, Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N18	, Dn3
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N12	, Fs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte	W03
	.byte		N12	
	.byte	W21
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N72	, En4
	.byte	W12
	.byte	PATT	
		mPtr	song021_7_8
	.byte	PATT	
		mPtr	song021_7_9
	.byte	PATT	
		mPtr	song021_7_10
	.byte	PATT	
		mPtr	song021_7_11
	.byte	PATT	
		mPtr	song021_7_12
	.byte	PATT	
		mPtr	song021_7_13
	.byte	PATT	
		mPtr	song021_7_14
	.byte	PATT	
		mPtr	song021_7_15
	.byte	PATT	
		mPtr	song021_7_16
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
		mPtr	song021_7_1
	.byte	PATT	
		mPtr	song021_7_2
	.byte	PATT	
		mPtr	song021_7_3
	.byte	PATT	
		mPtr	song021_7_4
	.byte	GOTO	
		mPtr	song021_7_5
	.byte	PATT	
		mPtr	song021_7_5
	.byte	W12
	.byte	FINE

	@********************** Track  8 **********************@

	.global song021_8
song021_8:	@ 0x082707CF
	.byte	KEYSH	, 0
	.byte	VOICE	, 2
	.byte	VOL	, v063
	.byte	PAN	, c_v
	.byte	W03
	.byte	W01
	.byte		N05	, Fs3, v100
	.byte	W24
	.byte		N30	
	.byte	W36
	.byte		N03	, Fn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		TIE	, Gs3
	.byte	W11
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte	W01
	.byte		N08	, An3
	.byte	W24
	.byte		N32	
	.byte	W36
	.byte		N03	, Gs3
	.byte	W12
	.byte		N05	, An3
	.byte	W12
	.byte		TIE	, Bn3
	.byte	W11
	.byte	W92
	.byte	W01
	.byte		EOT	
	.byte	W03
song021_8_1:
	.byte	W01
	.byte		N13	, Gn4, v100
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
	.byte	PEND
song021_8_2:
	.byte	W13
	.byte		N12	, Cs4, v100
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W11
	.byte	PEND
song021_8_3:
	.byte	W01
	.byte		N12	, En4, v100
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
	.byte	PEND
song021_8_4:
	.byte	W13
	.byte		N12	, An3, v100
	.byte	W24
	.byte		N18	, Gn3
	.byte	W24
	.byte		N12	, An3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	PEND
song021_8_5:
	.byte	W01
	.byte		N12	, Gn4, v100
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
	.byte	PEND
song021_8_6:
	.byte	W13
	.byte		N24	, Cs4, v100
	.byte	W24
	.byte		N12	, An3
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	PEND
song021_8_7:
	.byte	W01
	.byte		N12	, Gn4, v100
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte			Gn4
	.byte	W24
	.byte		N48	, En4
	.byte	W11
	.byte	PEND
	.byte	W60
	.byte	W01
	.byte		N12	, An3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	PATT	
		mPtr	song021_8_1
	.byte	PATT	
		mPtr	song021_8_2
	.byte	PATT	
		mPtr	song021_8_3
	.byte	PATT	
		mPtr	song021_8_4
	.byte	PATT	
		mPtr	song021_8_5
	.byte	PATT	
		mPtr	song021_8_6
	.byte	PATT	
		mPtr	song021_8_7
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte		N01	, Bn4
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
	.byte			Cn5
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte	W01
	.byte			En4
	.byte	W23
	.byte		N01	, Cn4
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
	.byte			Dn5
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte		N01	, Bn4
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
	.byte			Dn5
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
	.byte	W60
	.byte	W01
	.byte		N12	, An4
	.byte	W12
	.byte			Cs5
	.byte	W12
	.byte			En5
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
		mPtr	song021_8_1
	.byte	PATT	
		mPtr	song021_8_2
	.byte	PATT	
		mPtr	song021_8_3
	.byte	PATT	
		mPtr	song021_8_4
	.byte	GOTO	
		mPtr	song021_8_5
	.byte	PATT	
		mPtr	song021_8_5
	.byte	W13
	.byte	FINE

	@********************** Track  9 **********************@

	.global song021_9
song021_9:	@ 0x08270949
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v063
	.byte	PAN	, c_v-4
	.byte	W03
	.byte		N05	, Ds3, v092
	.byte	W24
	.byte		N30	
	.byte	W36
	.byte		N03	, Dn3
	.byte	W12
	.byte			Ds3
	.byte	W12
	.byte		TIE	, Fn3
	.byte	W12
	.byte	W88
	.byte		EOT	
	.byte	W08
	.byte		N08	, Fs3
	.byte	W24
	.byte		N32	
	.byte	W36
	.byte		N03	, Fn3
	.byte	W12
	.byte		N05	, Fs3
	.byte	W12
	.byte		TIE	, Gs3
	.byte	W12
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_9_1:
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
		mPtr	song021_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song021_10
song021_10:	@ 0x082709B2
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v085
	.byte	PAN	, c_v+1
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song021_10_9:
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
	.byte	W60
	.byte	W01
	.byte		N12	, Gn4, v100
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Dn5
	.byte	W11
song021_10_1:
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
song021_10_2:
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
song021_10_3:
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
song021_10_4:
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
song021_10_5:
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
song021_10_6:
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
song021_10_7:
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
song021_10_8:
	.byte	W24
	.byte	W01
	.byte		N12	, Cn5, v100
	.byte	W24
	.byte			Bn4
	.byte	W24
	.byte			An4
	.byte	W23
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
		mPtr	song021_10_1
	.byte	PATT	
		mPtr	song021_10_2
	.byte	PATT	
		mPtr	song021_10_3
	.byte	PATT	
		mPtr	song021_10_4
	.byte	PATT	
		mPtr	song021_10_5
	.byte	PATT	
		mPtr	song021_10_6
	.byte	PATT	
		mPtr	song021_10_7
	.byte	PATT	
		mPtr	song021_10_8
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
		mPtr	song021_10_9
	.byte	FINE

	@********************** Track  11 **********************@

	.global song021_11
song021_11:	@ 0x08270A98
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v077
	.byte	PAN	, c_v-31
	.byte	BENDR	, 12
	.byte	W03
	.byte		N05	, As2, v092
	.byte	W24
	.byte		N24	
	.byte	W36
	.byte		N06	, An2
	.byte	W12
	.byte			As2
	.byte	W12
	.byte		N24	, Cn3
	.byte	W12
	.byte	W72
	.byte		N12	
	.byte	W24
	.byte		N05	, Cs3
	.byte	W24
	.byte		N24	
	.byte	W36
	.byte		N06	, Cn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N24	, Ds3
	.byte	W12
	.byte	W72
	.byte		N12	
	.byte	W24
song021_11_1:
	.byte		N23	, Fn2, v080
	.byte	W80
	.byte	W01
	.byte		N24	, As2
	.byte	W15
	.byte	PEND
song021_11_2:
	.byte	W48
	.byte		N11	, An2, v080
	.byte	W12
	.byte			As2
	.byte	W36
	.byte	PEND
song021_11_3:
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
song021_11_4:
	.byte	W48
	.byte		N11	, Ds3, v080
	.byte	W12
	.byte			Ds2
	.byte	W36
	.byte	PEND
song021_11_11:
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
song021_11_5:
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
song021_11_6:
	.byte	W48
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte			Cn3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_3
	.byte	PATT	
		mPtr	song021_11_4
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_5
	.byte	PATT	
		mPtr	song021_11_6
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_3
	.byte	PATT	
		mPtr	song021_11_4
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_5
	.byte	PATT	
		mPtr	song021_11_6
song021_11_7:
	.byte		N16	, As2, v080
	.byte	W24
	.byte		N17	
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte	PEND
song021_11_8:
	.byte		N10	, An2, v080
	.byte	W12
	.byte		N11	, As2
	.byte	W24
	.byte		N17	
	.byte	W36
	.byte		N24	
	.byte	W24
	.byte	PEND
	.byte		N16	, Fn2
	.byte	W24
	.byte		N17	
	.byte	W24
	.byte		N19	
	.byte	W24
	.byte		N14	
	.byte	W24
	.byte		N11	, Ds2
	.byte	W12
	.byte		N17	, Fn2
	.byte	W24
	.byte		N19	
	.byte	W36
	.byte		N23	
	.byte	W24
	.byte	PATT	
		mPtr	song021_11_7
	.byte	PATT	
		mPtr	song021_11_8
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
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_3
	.byte	PATT	
		mPtr	song021_11_4
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_5
	.byte	PATT	
		mPtr	song021_11_6
	.byte		N19	, As2, v092
	.byte	W24
	.byte		N11	, As2, v088
	.byte	W36
	.byte			As2, v104
	.byte	W24
	.byte		N23	, Cn3, v096
	.byte	W12
	.byte	W24
	.byte		N11	, Cn3, v108
	.byte	W36
	.byte		N18	, Cn3, v092
	.byte	W36
	.byte		N19	, Cs3
	.byte	W24
	.byte		N11	, Cs3, v088
	.byte	W36
	.byte			Cs3, v104
	.byte	W24
	.byte		N23	, Ds3, v096
	.byte	W12
	.byte	W24
	.byte		N11	, Ds3, v108
	.byte	W36
	.byte		N18	, Ds3, v092
	.byte	W24
	.byte		N11	, Ds3, v100
	.byte	W12
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
song021_11_9:
	.byte		N16	, Cn3, v108
	.byte	W24
	.byte		N18	, Cn3, v100
	.byte	W24
	.byte		N16	, As2, v104
	.byte	W24
	.byte		N15	, As2, v092
	.byte	W24
	.byte	PEND
song021_11_10:
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
		mPtr	song021_11_9
	.byte	PATT	
		mPtr	song021_11_10
	.byte	PATT	
		mPtr	song021_11_1
	.byte	PATT	
		mPtr	song021_11_2
	.byte	PATT	
		mPtr	song021_11_3
	.byte	PATT	
		mPtr	song021_11_4
	.byte	GOTO	
		mPtr	song021_11_11
	.byte	PATT	
		mPtr	song021_11_1
	.byte	W11
	.byte	FINE

	@********************** Track  12 **********************@

	.global song021_12
song021_12:	@ 0x08270C9B
	.byte	KEYSH	, 0
	.byte	VOICE	, 103
	.byte	VOL	, v077
	.byte	PAN	, c_v-31
	.byte	W03
	.byte	W48
	.byte		N11	, As2, v092
	.byte	W48
	.byte	W12
	.byte		N10	, Cn3
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte	W48
	.byte		N11	, Cs3
	.byte	W48
	.byte	W12
	.byte		N10	, Ds3
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N10	, Ds3, v100
	.byte	W12
song021_12_1:
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
song021_12_2:
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
song021_12_3:
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
song021_12_5:
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
song021_12_4:
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
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_3
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_4
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_3
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_4
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
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_3
	.byte	PATT	
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_4
	.byte	W36
	.byte		N10	, As2, v092
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte	W12
	.byte			Cn3
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte		N10	
	.byte	W12
	.byte	W36
	.byte			Cs3
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte	W12
	.byte			Ds3
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte		N10	
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
		mPtr	song021_12_1
	.byte	PATT	
		mPtr	song021_12_2
	.byte	W96
	.byte	PATT	
		mPtr	song021_12_3
	.byte	GOTO	
		mPtr	song021_12_5
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
	.byte	W08
	.byte	FINE

	@********************** Track  13 **********************@

	.global song021_13
song021_13:	@ 0x08270DC9
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v063
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W96
	.byte	W48
	.byte		N03	, Dn4, v072
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W09
	.byte		N03	, Dn4, v056
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W09
	.byte		N03	, Dn4, v040
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W03
	.byte	W06
	.byte		N03	, Dn4, v016
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W09
	.byte		N03	, Dn4, v012
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W60
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
song021_13_3:
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
song021_13_1:
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
song021_13_2:
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
		mPtr	song021_13_1
	.byte	PATT	
		mPtr	song021_13_2
	.byte	PATT	
		mPtr	song021_13_1
	.byte	PATT	
		mPtr	song021_13_2
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
	.byte	GOTO	
		mPtr	song021_13_3
	.byte	FINE

	@********************** Track  14 **********************@

	.global song021_14
song021_14:	@ 0x08270ED0
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v+21
	.byte	W03
	.byte	W96
	.byte	W60
	.byte	W01
	.byte		N03	, Dn4, v072
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W09
	.byte		N03	, Dn4, v056
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W08
	.byte	W01
	.byte		N03	, Dn4, v032
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W09
	.byte		N03	, Dn4, v016
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W09
	.byte		N03	, Dn4, v012
	.byte	W03
	.byte			En4
	.byte	W03
	.byte		N02	, Gs4
	.byte	W03
	.byte		N06	, Bn4
	.byte	W48
	.byte	W02
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
	.byte	W05
	.byte			Cn5
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
	.byte	W96
	.byte	W96
	.byte	W96
song021_14_3:
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
song021_14_1:
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
song021_14_2:
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
		mPtr	song021_14_1
	.byte	PATT	
		mPtr	song021_14_2
	.byte	PATT	
		mPtr	song021_14_1
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
	.byte	W09
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	W36
	.byte	W01
	.byte		N36	, An3, v112
	.byte	W36
	.byte	W02
	.byte		N24	, Bn3, v104
	.byte	W21
	.byte	W02
	.byte		N60	, Cn4
	.byte	W60
	.byte	W01
	.byte		N12	, Dn4, v112
	.byte	W12
	.byte		N14	, En4, v104
	.byte	W13
	.byte		N56	, Dn4, v112
	.byte	W08
	.byte	W48
	.byte	W01
	.byte		N42	, Gn4, v096
	.byte	W42
	.byte	W01
	.byte		N05	, Gn4, v076
	.byte	W03
	.byte		N06	, Gs4, v084
	.byte	W01
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
	.byte	GOTO	
		mPtr	song021_14_3
	.byte	FINE
    
	mAlignWord
	.global song021
song021:	@ 0x082710A8
	.byte	14		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup008		@ voicegroup/tone

	mPtr	song021_1		@ track
	mPtr	song021_2		@ track
	mPtr	song021_3		@ track
	mPtr	song021_4		@ track
	mPtr	song021_5		@ track
	mPtr	song021_6		@ track
	mPtr	song021_7		@ track
	mPtr	song021_8		@ track
	mPtr	song021_9		@ track
	mPtr	song021_10		@ track
	mPtr	song021_11		@ track
	mPtr	song021_12		@ track
	mPtr	song021_13		@ track
	mPtr	song021_14		@ track
