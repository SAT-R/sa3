	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song058_1
song058_1:	@ 0x08297908
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 126
	.byte	VOL	, v080
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 80
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N12	, Dn1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Dn1
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N05	
	.byte	W07
	.byte			Dn1
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N11	, Dn1
	.byte	W12
song058_1_1:
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn1
	.byte	W12
	.byte		N17	, Gn7
	.byte	W17
	.byte		N06	, En1
	.byte	W06
	.byte		N12	, Gn7
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
song058_1_2:
	.byte		N12	, Dn1, v127
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte			Dn1
	.byte	W11
	.byte			Gn7
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N12	, Gn7
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_1_2
	.byte	PATT	
		mPtr	song058_1_2
	.byte	PATT	
		mPtr	song058_1_2
	.byte		N12	, Dn1, v127
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte		N12	, Gn7
	.byte	W11
	.byte			Dn1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
song058_1_4:
	.byte		N12	, Dn1, v127
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N12	, Dn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Dn1
	.byte	W06
	.byte		N11	
	.byte	W12
	.byte	PEND
song058_1_3:
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte		N12	, Dn1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Dn1
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte	PEND
	.byte		N12	
	.byte	W12
	.byte		N11	, Gn7
	.byte	W12
	.byte		N12	, Dn1
	.byte	W12
	.byte			Gn7
	.byte	W11
	.byte			Dn1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N11	, Dn1
	.byte	W12
	.byte	PATT	
		mPtr	song058_1_3
	.byte	PATT	
		mPtr	song058_1_4
	.byte		N12	, Dn1, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte		N05	
	.byte	W07
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N11	, Dn1
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte		N05	
	.byte	W07
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte		N11	, Dn1
	.byte	W12
	.byte	GOTO	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W56
	.byte	W03
	.byte		N12	, Gn7, v127
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Gs1
	.byte	W06
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	PATT	
		mPtr	song058_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song058_2
song058_2:	@ 0x08297B33
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v047
	.byte	PAN	, c_v-19
	.byte	W03
song058_2_1:
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
		mPtr	song058_2_1
song058_2_2:
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
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
song058_2_3:
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
		mPtr	song058_2_3
	.byte	PATT	
		mPtr	song058_2_3
	.byte	PATT	
		mPtr	song058_2_3
	.byte	PATT	
		mPtr	song058_2_3
	.byte	PATT	
		mPtr	song058_2_3
	.byte	PATT	
		mPtr	song058_2_3
	.byte	PATT	
		mPtr	song058_2_3
	.byte	GOTO	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	PATT	
		mPtr	song058_2_1
	.byte	W12
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte		N05	, Ds7, v044
	.byte	W06
	.byte		N03	, Bn6, v016
	.byte	W06
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N06	, Bn6, v084
	.byte	W18
	.byte		N05	, Ds7, v072
	.byte	W06
	.byte		N03	, Bn6, v040
	.byte	W18
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
	.byte	PATT	
		mPtr	song058_2_2
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

	.global song058_3
song058_3:	@ 0x08297D2A
	.byte	KEYSH	, 0
	.byte	VOICE	, 121
	.byte	VOL	, v066
	.byte	PAN	, c_v-19
	.byte	W03
song058_3_1:
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
		mPtr	song058_3_1
song058_3_2:
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
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
song058_3_3:
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
song058_3_4:
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
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_3
	.byte	PATT	
		mPtr	song058_3_4
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_4
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_3
	.byte	PATT	
		mPtr	song058_3_4
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
song058_3_5:
	.byte		N12	, Gn7, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song058_3_5
	.byte	PATT	
		mPtr	song058_3_5
	.byte	PATT	
		mPtr	song058_3_5
song058_3_6:
	.byte		N12	, Gn7, v088
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song058_3_6
	.byte	PATT	
		mPtr	song058_3_6
	.byte	PATT	
		mPtr	song058_3_6
	.byte	GOTO	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte	PATT	
		mPtr	song058_3_1
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte			Gn7, v088
	.byte	W24
	.byte			Gn7, v068
	.byte	W12
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	PATT	
		mPtr	song058_3_2
	.byte	W12
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song058_4
song058_4:	@ 0x08297EC9
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v072
	.byte	PAN	, c_v-6
	.byte	W03
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An2, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte			An2, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			Gn2, v112
	.byte	W06
	.byte			Gn1
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte			Gn2, v116
	.byte	W06
	.byte			Gn1, v127
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte			Gn2, v116
	.byte	W06
	.byte			Gn2, v127
	.byte	W06
	.byte			Gn1, v112
	.byte	W05
	.byte	W01
	.byte			Dn1, v127
	.byte	W06
	.byte			Dn1, v116
	.byte	W06
	.byte			Dn2, v112
	.byte	W06
	.byte			Dn1, v104
	.byte	W06
	.byte			Dn1, v127
	.byte	W06
	.byte			Dn1, v116
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			En2, v116
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2, v112
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			En2, v116
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2, v112
	.byte	W05
song058_4_1:
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			Cs2, v112
	.byte	W06
	.byte			Cs2, v104
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			Cs2, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cs2, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cs2, v127
	.byte	W05
	.byte	PEND
song058_4_2:
	.byte	W01
	.byte		N05	, Fs1, v127
	.byte	W06
	.byte			Fs1, v116
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			Fs1, v104
	.byte	W06
	.byte			Fs1, v116
	.byte	W06
	.byte			Fs1, v127
	.byte	W06
	.byte			En1, v116
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			En1, v104
	.byte	W06
	.byte			En1, v116
	.byte	W06
	.byte			Dn1, v127
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Ds1, v124
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			As1, v127
	.byte	W05
	.byte	PEND
song058_4_3:
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			Gn1, v104
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			Cs2, v116
	.byte	W06
	.byte			Cs2, v112
	.byte	W06
	.byte			Bn1, v104
	.byte	W06
	.byte			Cs2, v116
	.byte	W06
	.byte			Cs2, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Bn1, v124
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Cs2, v127
	.byte	W05
	.byte	PEND
song058_4_4:
	.byte	W01
	.byte		N05	, Bn1, v127
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			Bn1, v104
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			Bn1, v127
	.byte	W06
	.byte			En1, v116
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			En1, v104
	.byte	W06
	.byte			En1, v116
	.byte	W06
	.byte			En1, v127
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			En1, v127
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song058_4_1
	.byte	PATT	
		mPtr	song058_4_2
	.byte	PATT	
		mPtr	song058_4_3
	.byte	PATT	
		mPtr	song058_4_4
	.byte	W01
	.byte	VOL	, v062
	.byte	BENDR	, 59
	.byte	VOL	, v062
	.byte	BENDR	, 59
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			An2, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An1, v124
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			An2, v127
	.byte	W05
song058_4_5:
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			An2, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			En2, v112
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An1, v124
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An1, v127
	.byte	W05
	.byte	PEND
song058_4_6:
	.byte	W01
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte			Gs1, v104
	.byte	W06
	.byte			Gs2, v116
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte			Gs3, v104
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs1, v124
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gs2, v127
	.byte	W05
	.byte	PEND
song058_4_7:
	.byte	W01
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte			Gs1, v104
	.byte	W06
	.byte			Gs2, v116
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Ds2, v112
	.byte	W06
	.byte			Gs2, v104
	.byte	W06
	.byte			Gs3, v116
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gs1, v124
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Gs1, v127
	.byte	W05
	.byte	PEND
song058_4_8:
	.byte	W01
	.byte		N05	, Fn1, v127
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Fn2, v112
	.byte	W06
	.byte			Fn1, v104
	.byte	W06
	.byte			Fn2, v116
	.byte	W06
	.byte			Fn1, v127
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Fn2, v112
	.byte	W06
	.byte			Fn3, v104
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Fn1, v127
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn1, v124
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Fn2, v127
	.byte	W05
	.byte	PEND
song058_4_9:
	.byte	W01
	.byte		N05	, Fn1, v127
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Fn2, v112
	.byte	W06
	.byte			Fn1, v104
	.byte	W06
	.byte			Fn2, v116
	.byte	W06
	.byte			Fn1, v127
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Cn2, v112
	.byte	W06
	.byte			Fn2, v104
	.byte	W06
	.byte			Fn3, v116
	.byte	W06
	.byte			Fn1, v127
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Fn1, v124
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Fn1, v127
	.byte	W05
	.byte	PEND
song058_4_10:
	.byte	W01
	.byte		N05	, Ds1, v127
	.byte	W06
	.byte			Ds1, v116
	.byte	W06
	.byte			Ds2, v112
	.byte	W06
	.byte			Ds1, v104
	.byte	W06
	.byte			Ds2, v116
	.byte	W06
	.byte			Ds1, v127
	.byte	W06
	.byte			Ds1, v116
	.byte	W06
	.byte			Ds2, v112
	.byte	W06
	.byte			Ds3, v104
	.byte	W06
	.byte			Ds1, v116
	.byte	W06
	.byte			Ds1, v127
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Ds1, v124
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds1
	.byte	W06
	.byte			Ds2, v127
	.byte	W05
	.byte	PEND
song058_4_11:
	.byte	W01
	.byte		N05	, Ds1, v127
	.byte	W06
	.byte			Ds1, v116
	.byte	W06
	.byte			Ds2, v112
	.byte	W06
	.byte			Ds1, v104
	.byte	W06
	.byte			Ds2, v116
	.byte	W06
	.byte			Ds1, v127
	.byte	W06
	.byte			Ds1, v116
	.byte	W06
	.byte			As1, v112
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
	.byte			Ds1, v127
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Ds1, v124
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Ds1, v127
	.byte	W05
	.byte	PEND
	.byte	W01
	.byte	VOL	, v062
	.byte	BENDR	, 59
	.byte		N05	, An1
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			An2, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			An1, v124
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			An1
	.byte	W06
	.byte			An2, v127
	.byte	W05
	.byte	PATT	
		mPtr	song058_4_5
	.byte	PATT	
		mPtr	song058_4_6
	.byte	PATT	
		mPtr	song058_4_7
	.byte	PATT	
		mPtr	song058_4_8
	.byte	PATT	
		mPtr	song058_4_9
	.byte	PATT	
		mPtr	song058_4_10
	.byte	PATT	
		mPtr	song058_4_11
song058_4_12:
	.byte	W01
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1, v104
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Cn2, v112
	.byte	W06
	.byte			Cn2, v104
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			Cn2, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn2, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Cn2, v127
	.byte	W05
	.byte	PEND
song058_4_13:
	.byte	W01
	.byte		N05	, Fs1, v127
	.byte	W06
	.byte			Fs1, v116
	.byte	W06
	.byte			En1, v112
	.byte	W06
	.byte			Fs1, v104
	.byte	W06
	.byte			Fs1, v116
	.byte	W06
	.byte			Fs1, v127
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Fn1, v112
	.byte	W06
	.byte			Fn1, v104
	.byte	W06
	.byte			Fn1, v116
	.byte	W06
	.byte			Dn1, v127
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Ds1, v124
	.byte	W06
	.byte			Fs1
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			As1, v127
	.byte	W05
	.byte	PEND
song058_4_14:
	.byte	W01
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs1, v112
	.byte	W06
	.byte			Fs1, v104
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Cn2, v116
	.byte	W06
	.byte			Cn2, v112
	.byte	W06
	.byte			As1, v104
	.byte	W06
	.byte			Cn2, v116
	.byte	W06
	.byte			Cn2, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			An1, v124
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			Cn2, v127
	.byte	W05
	.byte	PEND
song058_4_15:
	.byte	W01
	.byte		N05	, Bn1, v127
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			Bn1, v104
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			Bn1, v127
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			As1, v112
	.byte	W06
	.byte			As1, v104
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			Gn1, v127
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Gn1, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			As1
	.byte	W06
	.byte			Gs1, v127
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song058_4_12
	.byte	PATT	
		mPtr	song058_4_13
	.byte	PATT	
		mPtr	song058_4_14
	.byte	PATT	
		mPtr	song058_4_15
	.byte	PATT	
		mPtr	song058_4_12
	.byte	PATT	
		mPtr	song058_4_13
	.byte	PATT	
		mPtr	song058_4_14
	.byte	PATT	
		mPtr	song058_4_15
	.byte	GOTO	
		mPtr	song058_4_1
	.byte	PATT	
		mPtr	song058_4_1
	.byte	PATT	
		mPtr	song058_4_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W01
	.byte	VOL	, v062
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Fs1, v112
	.byte	W06
	.byte			Gs1, v104
	.byte	W24
	.byte			Cn2, v112
	.byte	W06
	.byte			Cn2, v104
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			Cn2, v127
	.byte	W32
	.byte	W03
song058_4_17:
	.byte	W01
	.byte		N05	, Bn1, v127
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			Bn1, v104
	.byte	W18
	.byte			As1, v116
	.byte	W06
	.byte			As1, v112
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			As1, v116
	.byte	W18
	.byte			Ds1, v124
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Fn1
	.byte	W06
	.byte			Ds1, v127
	.byte	W05
	.byte	PEND
song058_4_16:
	.byte	W01
	.byte		N05	, Gs1, v127
	.byte	W06
	.byte			Gs1, v116
	.byte	W06
	.byte			Fs1, v112
	.byte	W06
	.byte			Gs1, v104
	.byte	W24
	.byte			Cn2, v112
	.byte	W06
	.byte			Cn2, v104
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			Cn2, v127
	.byte	W32
	.byte	W03
	.byte	PEND
song058_4_18:
	.byte	W01
	.byte		N05	, Bn1, v127
	.byte	W06
	.byte			Bn1, v116
	.byte	W06
	.byte			An1, v112
	.byte	W06
	.byte			Bn1, v104
	.byte	W18
	.byte			As1, v116
	.byte	W06
	.byte			As1, v112
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			As1, v116
	.byte	W40
	.byte	W01
	.byte	PEND
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_17
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_18
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_17
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_18
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_17
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_18
	.byte	PATT	
		mPtr	song058_4_16
	.byte	PATT	
		mPtr	song058_4_17
	.byte	FINE

	@********************** Track  5 **********************@

	.global song058_5
song058_5:	@ 0x082983D2
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v056
	.byte	BENDR	, 13
	.byte	LFOS	, 28
	.byte	MODT	, 0
	.byte	MOD	, 1
	.byte	W01
	.byte	PAN	, c_v+6
	.byte	W02
	.byte	W96
	.byte	W96
song058_5_6:
	.byte	W01
	.byte		N24	, An4, v096
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Dn5
	.byte	W14
	.byte	MOD	, 2
	.byte	W10
	.byte		N24	, Cs5
	.byte	W23
song058_5_7:
	.byte	W01
	.byte		N24	, Dn5, v096
	.byte	W24
	.byte			Cs5
	.byte	W02
	.byte	MOD	, 5
	.byte	W22
	.byte		N24	, Gs4
	.byte	W24
	.byte			Bn4
	.byte	W23
	.byte	PEND
	.byte	MOD	, 7
	.byte	W01
	.byte		N36	, An4
	.byte	W36
	.byte		N06	, Gs4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte		N48	, En4
	.byte	W05
	.byte	MOD	, 9
	.byte	W18
	.byte		9
	.byte	W24
	.byte	W01
	.byte		N92	, Dn4
	.byte	W23
	.byte	MOD	, 9
	.byte	W18
	.byte		9
	.byte	W18
	.byte		9
	.byte	W32
	.byte	W01
	.byte		9
	.byte	W01
	.byte		1
	.byte	W02
	.byte	W01
	.byte		N24	, An4
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			Cs5
	.byte	W23
	.byte	W01
	.byte			Dn5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte			Bn4
	.byte	W23
	.byte	W01
	.byte		N48	, An4
	.byte	W48
	.byte			Cs5
	.byte	W36
	.byte	MOD	, 1
	.byte	W11
	.byte	W01
	.byte		3
	.byte		N48	, Dn5
	.byte	W13
	.byte	MOD	, 6
	.byte	W13
	.byte		8
	.byte	W22
	.byte		N48	, En5
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N84	
	.byte	W02
	.byte	MOD	, 5
	.byte	W02
	.byte		1
	.byte	W36
	.byte	W03
	.byte		1
	.byte	W05
	.byte		3
	.byte	W06
	.byte		4
	.byte	W07
	.byte		5
	.byte	W07
	.byte		6
	.byte	W06
	.byte		7
	.byte	W10
	.byte		N06	, Dn5
	.byte	W03
	.byte	MOD	, 9
	.byte	W03
	.byte		8
	.byte		N06	, Cs5
	.byte	W04
	.byte	MOD	, 3
	.byte	W01
song058_5_1:
	.byte	MOD	, 1
	.byte	W01
	.byte		N84	, An4, v096
	.byte	W01
	.byte	MOD	, 1
	.byte	W48
	.byte	W03
	.byte		2
	.byte	W06
	.byte		5
	.byte	W04
	.byte		7
	.byte	W09
	.byte		9
	.byte	W13
	.byte		N06	, Ds5
	.byte	W05
	.byte	MOD	, 7
	.byte	W01
	.byte		N06	, En5
	.byte	W01
	.byte	MOD	, 5
	.byte	W02
	.byte		1
	.byte	W01
	.byte		1
	.byte	W01
	.byte	PEND
song058_5_2:
	.byte	W01
	.byte		N84	, Ds5, v096
	.byte	W44
	.byte	MOD	, 2
	.byte	W03
	.byte		5
	.byte	W05
	.byte		7
	.byte	W09
	.byte		9
	.byte	W23
	.byte		5
	.byte		N06	, Cs5
	.byte	W01
	.byte	MOD	, 1
	.byte	W05
	.byte		N06	, Cn5
	.byte	W05
	.byte	PEND
song058_5_3:
	.byte	W01
	.byte		N96	, As4, v096
	.byte	W36
	.byte	W02
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W06
	.byte		6
	.byte	W07
	.byte		8
	.byte	W28
	.byte		3
	.byte	W01
	.byte		1
	.byte	W08
	.byte	PEND
song058_5_4:
	.byte	W01
	.byte		N84	, Cs5, v096
	.byte	W44
	.byte	W02
	.byte	MOD	, 2
	.byte	W06
	.byte		5
	.byte	W07
	.byte		7
	.byte	W24
	.byte	W01
	.byte		N06	, Ds5
	.byte	W02
	.byte	MOD	, 2
	.byte	W02
	.byte		1
	.byte	W02
	.byte		N06	, Fn5
	.byte	W05
	.byte	PEND
song058_5_5:
	.byte	W01
	.byte		N60	, Ds5, v096
	.byte	W32
	.byte	W01
	.byte	MOD	, 1
	.byte	W05
	.byte		3
	.byte	W08
	.byte		6
	.byte	W08
	.byte		8
	.byte	W06
	.byte		N24	, Cs5
	.byte	W01
	.byte	MOD	, 6
	.byte	W01
	.byte		1
	.byte	W02
	.byte		1
	.byte	W20
	.byte		N12	, Ds5
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte		N84	, Fn5
	.byte	W28
	.byte	W01
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W06
	.byte		7
	.byte	W10
	.byte		9
	.byte	W32
	.byte	W02
	.byte		N06	, En5
	.byte	W02
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N06	, Fn5
	.byte	W05
	.byte	W01
	.byte		N48	, Gn5
	.byte	W48
	.byte			As5
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N84	, En5
	.byte	W02
	.byte	MOD	, 5
	.byte	W02
	.byte		1
	.byte	W36
	.byte	W03
	.byte		1
	.byte	W05
	.byte		3
	.byte	W06
	.byte		6
	.byte	W07
	.byte		8
	.byte	W07
	.byte		9
	.byte	W06
	.byte		9
	.byte	W10
	.byte		N06	, Dn5
	.byte	W03
	.byte	MOD	, 9
	.byte	W03
	.byte		8
	.byte		N06	, Cs5
	.byte	W04
	.byte	MOD	, 3
	.byte	W01
	.byte	PATT	
		mPtr	song058_5_1
	.byte	PATT	
		mPtr	song058_5_2
	.byte	PATT	
		mPtr	song058_5_3
	.byte	PATT	
		mPtr	song058_5_4
	.byte	PATT	
		mPtr	song058_5_5
	.byte	W01
	.byte		N48	, Fn5, v096
	.byte	W24
	.byte	W03
	.byte	MOD	, 2
	.byte	W05
	.byte		5
	.byte	W07
	.byte		7
	.byte	W09
	.byte		N36	, As5
	.byte	W04
	.byte	MOD	, 9
	.byte	W24
	.byte		7
	.byte	W02
	.byte		3
	.byte	W02
	.byte		1
	.byte	W04
	.byte		N06	, Gs5
	.byte	W06
	.byte			Fn5
	.byte	W05
	.byte	W01
	.byte		N48	, Gn5
	.byte	W48
	.byte			Cn6
	.byte	W44
	.byte	W03
	.byte	W01
	.byte	PAN	, c_v-64
	.byte		N18	, Gs4, v076
	.byte	W32
	.byte	W02
	.byte	PAN	, c_v+61
	.byte	W02
	.byte		N18	, Cn5
	.byte	W56
	.byte	W02
	.byte	PAN	, c_v-64
	.byte	W01
	.byte	W01
	.byte		N18	, Bn4
	.byte	W32
	.byte	W02
	.byte	PAN	, c_v+63
	.byte	W02
	.byte		N18	, As4
	.byte	W56
	.byte	W02
	.byte	PAN	, c_v-64
	.byte	W01
	.byte	W01
	.byte		N18	, Gs4
	.byte	W36
	.byte	PAN	, c_v+63
	.byte		N18	, Cn5
	.byte	W56
	.byte	W03
	.byte	W01
	.byte	PAN	, c_v-64
	.byte		N18	, Bn4
	.byte	W32
	.byte	W02
	.byte	PAN	, c_v+63
	.byte	W02
	.byte		N18	, As4
	.byte	W56
	.byte	W03
	.byte	PAN	, c_v-64
	.byte	W13
	.byte		N04	, Ds5, v108
	.byte	W12
	.byte			Gs5
	.byte	W05
	.byte	PAN	, c_v-63
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v+63
	.byte	W04
	.byte		N05	, Ds6
	.byte	W24
	.byte		N03	, Ds5
	.byte	W12
	.byte		N04	, Cs6
	.byte	W05
	.byte	PAN	, c_v+62
	.byte	W03
	.byte		c_v+58
	.byte	W03
	.byte		c_v+47
	.byte	W01
	.byte		c_v+36
	.byte		N03	, Gs5
	.byte	W01
	.byte	PAN	, c_v+17
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-64
	.byte	W08
	.byte	W13
	.byte		N03	, Cs5
	.byte	W12
	.byte			Gs5
	.byte	W08
	.byte	PAN	, c_v-62
	.byte	W02
	.byte		c_v-46
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v
	.byte		N04	, En6
	.byte	W01
	.byte	PAN	, c_v+19
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+63
	.byte	W21
	.byte		N03	, Ds5
	.byte	W12
	.byte		N04	, Ds6
	.byte	W12
	.byte		N03	, Gs5
	.byte	W05
	.byte	PAN	, c_v+55
	.byte	W01
	.byte		c_v+44
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte	W13
	.byte		N04	, Ds5
	.byte	W12
	.byte			Gs5
	.byte	W10
	.byte	PAN	, c_v-58
	.byte	W02
	.byte		c_v-11
	.byte		N05	, Ds6
	.byte	W01
	.byte	PAN	, c_v+30
	.byte	W01
	.byte		c_v+57
	.byte	W01
	.byte		c_v+63
	.byte	W21
	.byte		N03	, Ds5
	.byte	W12
	.byte		N04	, Cs6
	.byte	W11
	.byte	PAN	, c_v+58
	.byte	W01
	.byte		c_v+50
	.byte		N03	, Gs5
	.byte	W01
	.byte	PAN	, c_v+20
	.byte	W02
	.byte		c_v-21
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-64
	.byte	W05
	.byte	W13
	.byte		N03	, Cs5
	.byte	W12
	.byte			Gs5
	.byte	W03
	.byte	PAN	, c_v-63
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+29
	.byte	W01
	.byte		c_v+43
	.byte	W01
	.byte		c_v+58
	.byte	W01
	.byte		c_v+63
	.byte	W01
	.byte		N04	, En6
	.byte	W24
	.byte		N03	, Ds5
	.byte	W12
	.byte		N04	, Ds6
	.byte	W10
	.byte	PAN	, c_v+62
	.byte	W02
	.byte		c_v+52
	.byte		N03	, Gs5
	.byte	W01
	.byte	PAN	, c_v+43
	.byte	W01
	.byte		c_v+33
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-64
	.byte	W04
	.byte	W01
	.byte		N03	, Ds5
	.byte	W12
	.byte			Gs5
	.byte	W04
	.byte	PAN	, c_v-59
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v+63
	.byte	W04
	.byte		N03	, Ds6
	.byte	W12
	.byte			Ds5
	.byte	W04
	.byte	PAN	, c_v+52
	.byte	W01
	.byte		c_v+37
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-64
	.byte	W04
	.byte		N03	, Gs5
	.byte	W12
	.byte		N04	, Ds6
	.byte	W01
	.byte	PAN	, c_v-61
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+63
	.byte	W05
	.byte		N03	, Ds5
	.byte	W12
	.byte			Gs5
	.byte	W06
	.byte	PAN	, c_v+50
	.byte	W01
	.byte		c_v+30
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-64
	.byte		N04	, Ds5
	.byte	W12
	.byte		N03	, Gs5
	.byte	W04
	.byte	PAN	, c_v-63
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+55
	.byte	W01
	.byte		c_v+63
	.byte		N04	, Ds6
	.byte	W12
	.byte		N03	, Ds5
	.byte	W07
	.byte	PAN	, c_v+61
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+35
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-64
	.byte		N03	, Gs5
	.byte	W12
	.byte		N04	, Ds6
	.byte	W05
	.byte	PAN	, c_v-63
	.byte	W03
	.byte		c_v-52
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+63
	.byte		N03	, Gs5
	.byte	W12
	.byte			Ds5
	.byte	W07
	.byte	PAN	, c_v+60
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-64
	.byte		N04	, Gs5
	.byte	W12
	.byte			Ds6
	.byte	W02
	.byte	PAN	, c_v-53
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+63
	.byte	W04
	.byte		N04	, Ds5
	.byte	W12
	.byte		N03	, Gs5
	.byte	W01
	.byte	PAN	, c_v+54
	.byte	W02
	.byte		c_v+27
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-59
	.byte	W04
	.byte		N03	, Ds6
	.byte	W12
	.byte	PAN	, c_v-54
	.byte		N04	, Ds5
	.byte	W01
	.byte	PAN	, c_v-44
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+58
	.byte	W05
	.byte		N05	, Gs5
	.byte	W12
	.byte		N04	, Ds6
	.byte	W02
	.byte	PAN	, c_v+59
	.byte	W01
	.byte		c_v+50
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-63
	.byte	W03
	.byte	W01
	.byte		N04	, Ds5
	.byte	W12
	.byte		N03	, Gs5
	.byte	W02
	.byte	PAN	, c_v-63
	.byte	W02
	.byte		c_v-47
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+44
	.byte	W01
	.byte		c_v+63
	.byte	W03
	.byte		N04	, Ds6
	.byte	W12
	.byte			Ds5
	.byte	W04
	.byte	PAN	, c_v+62
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-64
	.byte	W02
	.byte		N03	, Gs5
	.byte	W12
	.byte		N04	, Ds6
	.byte	W03
	.byte	PAN	, c_v-63
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+37
	.byte	W01
	.byte		c_v+63
	.byte	W03
	.byte		N03	, Gs5
	.byte	W12
	.byte		N04	, Ds5
	.byte	W04
	.byte	PAN	, c_v+62
	.byte	W01
	.byte		c_v+53
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-64
	.byte	W02
	.byte	GOTO	
		mPtr	song058_5_6
	.byte	W01
	.byte	PAN	, c_v+6
	.byte		N24	, An4, v096
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Dn5
	.byte	W14
	.byte	MOD	, 2
	.byte	W10
	.byte		N24	, Cs5
	.byte	W23
	.byte	PATT	
		mPtr	song058_5_7
	.byte	MOD	, 7
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W21
	.byte	PAN	, c_v+6
	.byte	W72
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W01
	.byte	MOD	, 1
	.byte	VOL	, v062
	.byte		N23	, Gs4, v116
	.byte	W24
	.byte		N24	, Ds5
	.byte	W24
	.byte			Cs5
	.byte	W14
	.byte	MOD	, 2
	.byte	W10
	.byte		N24	, Cn5
	.byte	W23
	.byte	W01
	.byte			Cs5
	.byte	W24
	.byte			Cn5
	.byte	W02
	.byte	MOD	, 5
	.byte	W22
	.byte		N24	, As4
	.byte	W24
	.byte			Cn5
	.byte	W23
	.byte	MOD	, 7
	.byte	W01
	.byte		N32	, Gs4
	.byte	W36
	.byte		N06	, Fs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N44	, Ds4
	.byte	W05
	.byte	MOD	, 9
	.byte	W18
	.byte		9
	.byte	W24
	.byte	W01
	.byte		N92	, Cs4
	.byte	W23
	.byte	MOD	, 9
	.byte	W18
	.byte		9
	.byte	W18
	.byte		9
	.byte	W32
	.byte	W01
	.byte		9
	.byte	W01
	.byte		9
	.byte	W02
	.byte	W01
	.byte		9
	.byte		N23	, Gs4
	.byte	W04
	.byte	MOD	, 7
	.byte	W01
	.byte		5
	.byte	W02
	.byte		2
	.byte	W02
	.byte		1
	.byte	W15
	.byte		N24	, Ds5
	.byte	W24
	.byte			Cs5
	.byte	W24
	.byte			Cn5
	.byte	W23
	.byte	W01
	.byte			Cs5
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			As4
	.byte	W06
	.byte	MOD	, 2
	.byte	W18
	.byte		N24	, Cn5
	.byte	W21
	.byte	MOD	, 5
	.byte	W02
	.byte	W01
	.byte		N44	, Gs4
	.byte	W28
	.byte	MOD	, 7
	.byte	W20
	.byte		N44	, Cn5
	.byte	W13
	.byte	MOD	, 9
	.byte	W21
	.byte		9
	.byte	W13
	.byte	W01
	.byte		N44	, Cs5
	.byte	W02
	.byte	MOD	, 9
	.byte	W12
	.byte		9
	.byte	W32
	.byte	W02
	.byte		N44	, Ds5
	.byte	W05
	.byte	MOD	, 9
	.byte	W40
	.byte	W01
	.byte		9
	.byte	W01
	.byte	W01
	.byte		3
	.byte	W01
	.byte		1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song058_6
song058_6:	@ 0x082988A9
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v075
	.byte	PAN	, c_v+16
	.byte	BENDR	, 12
	.byte	W03
	.byte	W96
	.byte	W96
song058_6_1:
	.byte		N24	, En3, v108
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	PEND
song058_6_2:
	.byte		N24	, Bn3, v108
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte	PEND
	.byte		N36	, En3
	.byte	W36
	.byte		N06	, Ds3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte		N44	, Cs3
	.byte	W48
	.byte		N92	, Bn2
	.byte	W96
	.byte	PATT	
		mPtr	song058_6_1
	.byte	PATT	
		mPtr	song058_6_2
	.byte		N48	, En3, v124
	.byte	W48
	.byte			Gs3, v120
	.byte	W48
	.byte			An3, v124
	.byte	W48
	.byte			Bn3, v120
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song058_6_1
	.byte	PATT	
		mPtr	song058_6_1
	.byte	PATT	
		mPtr	song058_6_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song058_6_3:
	.byte		N23	, Gs3, v127
	.byte	W24
	.byte		N24	, Ds4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte	PEND
song058_6_4:
	.byte		N24	, Cs4, v127
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte	PEND
song058_6_5:
	.byte		N32	, Gs3, v127
	.byte	W36
	.byte		N06	, Fs3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N44	, Ds3
	.byte	W48
	.byte	PEND
	.byte		N92	, Cs3
	.byte	W96
	.byte	PATT	
		mPtr	song058_6_3
	.byte	PATT	
		mPtr	song058_6_4
song058_6_6:
	.byte		N44	, Gs3, v127
	.byte	W48
	.byte			Cn4
	.byte	W48
	.byte	PEND
	.byte			Cs4
	.byte	W48
	.byte			Ds4
	.byte	W48
	.byte	PATT	
		mPtr	song058_6_3
	.byte	PATT	
		mPtr	song058_6_4
	.byte	PATT	
		mPtr	song058_6_5
	.byte		N92	, Cs3, v127
	.byte	W96
	.byte	PATT	
		mPtr	song058_6_3
	.byte	PATT	
		mPtr	song058_6_4
	.byte	PATT	
		mPtr	song058_6_6
	.byte		N44	, Cs4, v127
	.byte	W48
	.byte			Ds4
	.byte	W44
	.byte	W03
	.byte	FINE

	@********************** Track  7 **********************@

	.global song058_7
song058_7:	@ 0x082989BD
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v072
	.byte	PAN	, c_v+16
	.byte	W03
	.byte		N06	, Cs3, v120
	.byte		N12	, An3
	.byte	W12
	.byte		N06	, En3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N23	, Bn2
	.byte		N23	, Gn3
	.byte	W24
	.byte		N06	, Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N11	, An2
	.byte		N11	, Fs3
	.byte	W12
	.byte		N06	, Dn3
	.byte	W12
	.byte			An2
	.byte		N06	, Fs3
	.byte	W12
	.byte		N56	, Bn2
	.byte		N56	, Gs3
	.byte	W60
song058_7_11:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song058_7_1:
	.byte		TIE	, Cs2, v112
	.byte		TIE	, An2
	.byte	W96
	.byte	PEND
	.byte	W92
	.byte	W03
	.byte		EOT	, Cs2
	.byte			An2
	.byte	W01
song058_7_2:
	.byte		N44	, Cn2, v112
	.byte		TIE	, Ds2
	.byte	W48
	.byte		N48	, Gs2
	.byte	W48
	.byte	PEND
song058_7_3:
	.byte		N48	, As2, v112
	.byte	W48
	.byte			Cn3
	.byte	W44
	.byte	W03
	.byte	PEND
	.byte		EOT	, Ds2
	.byte	W01
song058_7_4:
	.byte		TIE	, Gs2, v112
	.byte		N92	, Cs3, v120
	.byte	W96
	.byte	PEND
song058_7_5:
	.byte		N44	, Ds3, v120
	.byte	W48
	.byte			Fn3
	.byte	W44
	.byte	W03
	.byte	PEND
	.byte		EOT	, Gs2
	.byte	W01
	.byte		N92	
	.byte		N92	, Fn3
	.byte	W96
song058_7_6:
	.byte		N48	, Gn2, v120
	.byte		N48	, Gn3
	.byte	W48
	.byte			Gn2
	.byte		N48	, Ds3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song058_7_1
	.byte	W92
	.byte	W03
	.byte		EOT	, Cs2
	.byte			An2
	.byte	W01
	.byte	PATT	
		mPtr	song058_7_2
	.byte	PATT	
		mPtr	song058_7_3
	.byte		EOT	, Ds2
	.byte	W01
	.byte	PATT	
		mPtr	song058_7_4
	.byte	PATT	
		mPtr	song058_7_5
	.byte		EOT	, Gs2
	.byte	W01
	.byte		N92	, Gs2, v120
	.byte		N92	, Fn3
	.byte	W96
	.byte	PATT	
		mPtr	song058_7_6
song058_7_7:
	.byte		N23	, Ds3, v108
	.byte		N23	, Gs3
	.byte	W36
	.byte			Gn3, v124
	.byte		N23	, Cn4
	.byte	W60
	.byte	PEND
song058_7_8:
	.byte		N23	, Fs3, v124
	.byte		N23	, Bn3
	.byte	W36
	.byte			Fn3
	.byte		N23	, As3
	.byte	W60
	.byte	PEND
song058_7_9:
	.byte		N23	, Ds3, v116
	.byte		N23	, Gs3
	.byte	W36
	.byte			Gn3, v124
	.byte		N23	, Cn4
	.byte	W60
	.byte	PEND
song058_7_10:
	.byte		N23	, Fs3, v124
	.byte		N23	, Bn3
	.byte	W36
	.byte			Fn3, v120
	.byte		N23	, As3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song058_7_7
	.byte	PATT	
		mPtr	song058_7_8
	.byte	PATT	
		mPtr	song058_7_9
	.byte	PATT	
		mPtr	song058_7_10
	.byte		N23	, Ds3, v108
	.byte		N23	, Gs3
	.byte		N23	, Ds4
	.byte	W36
	.byte			Gn3, v124
	.byte		N23	, Cn4
	.byte		N23	, Gn4
	.byte	W60
	.byte			Fs3
	.byte		N23	, Bn3
	.byte		N23	, Fs4
	.byte	W36
	.byte			Fn3
	.byte		N23	, As3
	.byte		N23	, Fn4
	.byte	W60
	.byte			Ds3, v116
	.byte		N23	, Gs3
	.byte		N23	, Ds4
	.byte	W36
	.byte			Gn3, v124
	.byte		N23	, Cn4
	.byte		N23	, Gn4
	.byte	W60
	.byte			Fs3
	.byte		N23	, Bn3
	.byte		N23	, Fs4
	.byte	W36
	.byte			Fn3, v120
	.byte		N23	, As3
	.byte		N23	, Fn4
	.byte	W60
	.byte	GOTO	
		mPtr	song058_7_11
	.byte	FINE

	@********************** Track  8 **********************@

	.global song058_8
song058_8:	@ 0x08298AE9
	.byte	KEYSH	, 0
	.byte	VOICE	, 105
	.byte	VOL	, v056
	.byte	PAN	, c_v-44
	.byte	BENDR	, 12
	.byte	W03
	.byte		N12	, Fn3, v112
	.byte	W36
	.byte		N23	, Ds3
	.byte	W60
	.byte		N12	, Dn3
	.byte	W36
	.byte		N23	, En3
	.byte	W60
song058_8_1:
	.byte		N12	, Fn2, v112
	.byte	W36
	.byte		N23	, An2
	.byte	W60
	.byte	PEND
song058_8_2:
	.byte		N12	, Gn2, v112
	.byte	W36
	.byte		N23	, Cn3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song058_8_1
	.byte		N12	, Gn2, v112
	.byte	W36
	.byte		N23	, As2
	.byte	W60
	.byte	PATT	
		mPtr	song058_8_1
	.byte	PATT	
		mPtr	song058_8_2
	.byte	PATT	
		mPtr	song058_8_1
	.byte	PATT	
		mPtr	song058_8_2
song058_8_3:
	.byte		N12	, Fn2, v112
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte			An2
	.byte	W24
	.byte	PEND
song058_8_4:
	.byte		N12	, Fn2, v112
	.byte	W36
	.byte		N12	
	.byte	W24
	.byte			An2
	.byte	W24
	.byte		N11	, Cn3
	.byte	W12
	.byte	PEND
song058_8_5:
	.byte		N12	, En2, v112
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte		N12	
	.byte	W24
	.byte	PEND
song058_8_6:
	.byte		N12	, En2, v112
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte			En3
	.byte	W24
	.byte	PEND
song058_8_7:
	.byte		N12	, An2, v112
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte			Cs3
	.byte	W24
	.byte	PEND
song058_8_8:
	.byte	W01
	.byte		N12	, Bn2, v112
	.byte	W36
	.byte		N12	
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte		N11	, En3
	.byte	W11
	.byte	PEND
song058_8_9:
	.byte	W01
	.byte		N12	, Bn2, v112
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte		N12	
	.byte	W23
	.byte	PEND
song058_8_10:
	.byte	W01
	.byte		N12	, Bn2, v112
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte			Fs3
	.byte	W23
	.byte	PEND
	.byte	PATT	
		mPtr	song058_8_3
	.byte	PATT	
		mPtr	song058_8_4
	.byte	PATT	
		mPtr	song058_8_5
	.byte	PATT	
		mPtr	song058_8_6
	.byte	PATT	
		mPtr	song058_8_7
	.byte	PATT	
		mPtr	song058_8_8
	.byte	PATT	
		mPtr	song058_8_9
	.byte	PATT	
		mPtr	song058_8_10
song058_8_11:
	.byte		N12	, En2, v112
	.byte	W36
	.byte		N23	, Gs2
	.byte	W60
	.byte	PEND
song058_8_12:
	.byte		N12	, Gn2, v112
	.byte	W36
	.byte		N23	, Fs2
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song058_8_11
song058_8_13:
	.byte		N12	, Gn2, v112
	.byte	W36
	.byte		N23	, Cs3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song058_8_11
	.byte	PATT	
		mPtr	song058_8_12
	.byte	PATT	
		mPtr	song058_8_11
	.byte	PATT	
		mPtr	song058_8_13
song058_8_14:
	.byte		N12	, En3, v112
	.byte	W36
	.byte		N23	, Gs3
	.byte	W60
	.byte	PEND
song058_8_15:
	.byte		N12	, Gn3, v112
	.byte	W36
	.byte		N23	, Fs3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song058_8_14
	.byte	PATT	
		mPtr	song058_8_15
	.byte	GOTO	
		mPtr	song058_8_1
	.byte	PATT	
		mPtr	song058_8_1
	.byte	PATT	
		mPtr	song058_8_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song058_8_16:
	.byte		N24	, En2, v112
	.byte	W36
	.byte			Gs2
	.byte	W36
	.byte		N11	, Bn2
	.byte	W24
	.byte	PEND
song058_8_17:
	.byte		N24	, Gn2, v112
	.byte	W36
	.byte			Fs2
	.byte	W36
	.byte		N11	, Bn2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte	PATT	
		mPtr	song058_8_17
	.byte	PATT	
		mPtr	song058_8_16
	.byte		N24	, Gn2, v112
	.byte	W36
	.byte			Fs2
	.byte	W36
	.byte		N11	, Bn2
	.byte	W11
	.byte	FINE

	@********************** Track  9 **********************@

	.global song058_9
song058_9:	@ 0x08298CA6
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v062
	.byte	PAN	, c_v-44
	.byte	W03
	.byte	W12
	.byte		N06	, En3, v100
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N06	, Ds3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	W12
	.byte		N06	, Dn3
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			En3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
song058_9_1:
	.byte	W12
	.byte		N06	, Fn2, v100
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N06	, An2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song058_9_2:
	.byte	W12
	.byte		N06	, As2, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			Cn3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_1
song058_9_3:
	.byte	W12
	.byte		N06	, Gn2, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			As2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_1
	.byte	PATT	
		mPtr	song058_9_2
	.byte	PATT	
		mPtr	song058_9_1
	.byte	PATT	
		mPtr	song058_9_3
song058_9_5:
	.byte	W12
	.byte		N06	, Fn2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song058_9_6:
	.byte	W12
	.byte		N06	, Fn2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song058_9_4:
	.byte	W12
	.byte		N06	, En2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_4
song058_9_7:
	.byte	W12
	.byte		N06	, An2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song058_9_8:
	.byte	W13
	.byte		N06	, An2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N12	
	.byte	W23
	.byte	PEND
song058_9_9:
	.byte	W13
	.byte		N06	, As2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W11
	.byte	PEND
song058_9_10:
	.byte	W13
	.byte		N06	, As2, v100
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N05	, Ds3
	.byte	W12
	.byte		N12	
	.byte	W23
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_5
	.byte	PATT	
		mPtr	song058_9_6
	.byte	PATT	
		mPtr	song058_9_4
	.byte	PATT	
		mPtr	song058_9_4
	.byte	PATT	
		mPtr	song058_9_7
	.byte	PATT	
		mPtr	song058_9_8
	.byte	PATT	
		mPtr	song058_9_9
	.byte	PATT	
		mPtr	song058_9_10
song058_9_11:
	.byte	W12
	.byte		N06	, En2, v100
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N06	, Gs2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song058_9_12:
	.byte	W12
	.byte		N06	, Gn2, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			Fs2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_11
	.byte	PATT	
		mPtr	song058_9_3
	.byte	PATT	
		mPtr	song058_9_11
	.byte	PATT	
		mPtr	song058_9_12
	.byte	PATT	
		mPtr	song058_9_11
	.byte	PATT	
		mPtr	song058_9_3
song058_9_13:
	.byte	W12
	.byte		N06	, En3, v100
	.byte	W12
	.byte		N11	
	.byte	W36
	.byte		N06	, Gs3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song058_9_14:
	.byte	W12
	.byte		N06	, Gn3, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			Fs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_13
	.byte	PATT	
		mPtr	song058_9_14
	.byte	GOTO	
		mPtr	song058_9_1
	.byte	PATT	
		mPtr	song058_9_1
	.byte	PATT	
		mPtr	song058_9_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song058_9_15:
	.byte	W24
	.byte	W01
	.byte		N12	, Ds2, v100
	.byte	W36
	.byte		N11	, Gs2
	.byte	W22
	.byte		N12	, Ds2
	.byte	W13
	.byte	PEND
song058_9_16:
	.byte	W24
	.byte	W01
	.byte		N12	, Ds2, v100
	.byte	W36
	.byte		N11	
	.byte	W23
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_15
song058_9_17:
	.byte	W24
	.byte	W01
	.byte		N12	, Ds2, v100
	.byte	W36
	.byte		N11	
	.byte	W23
	.byte		N12	, Bn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_16
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_17
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_16
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_17
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_16
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_17
	.byte	PATT	
		mPtr	song058_9_15
	.byte	PATT	
		mPtr	song058_9_16
	.byte	FINE
    
	mAlignWord
	.global song058
song058:	@ 0x08298EB4
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup012		@ voicegroup/tone

	mPtr	song058_1		@ track
	mPtr	song058_2		@ track
	mPtr	song058_3		@ track
	mPtr	song058_4		@ track
	mPtr	song058_5		@ track
	mPtr	song058_6		@ track
	mPtr	song058_7		@ track
	mPtr	song058_8		@ track
	mPtr	song058_9		@ track
