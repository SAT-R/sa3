	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song005_1
song005_1:	@ 0x08266FE8
	.byte	KEYSH	, 0
song005_1_10:
	.byte	TEMPO	, 80
	.byte	VOICE	, 50
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W06
	.byte	VOICE	, 51
	.byte	W06
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte		N12	
	.byte	W18
	.byte	VOICE	, 50
	.byte	W06
	.byte		N12	
	.byte	W12
song005_1_2:
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N11	, Cn3, v116
	.byte	W11
	.byte	VOICE	, 51
	.byte	W01
	.byte		N11	
	.byte	W12
	.byte			Cn3, v044
	.byte	W12
	.byte		N12	, Cn3, v116
	.byte	W24
	.byte	PEND
song005_1_1:
	.byte	VOICE	, 50
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W06
	.byte	VOICE	, 51
	.byte	W06
	.byte		N11	, Cn3, v116
	.byte	W12
	.byte		N12	
	.byte	W18
	.byte	VOICE	, 50
	.byte	W06
	.byte		N12	
	.byte	W12
	.byte	PEND
song005_1_3:
	.byte	W12
	.byte		N10	, Cn3, v116
	.byte	W12
	.byte		N06	, Cn3, v044
	.byte	W12
	.byte		N11	, Cn3, v116
	.byte	W11
	.byte	VOICE	, 51
	.byte	W01
	.byte		N11	
	.byte	W12
	.byte			Cn3, v044
	.byte	W12
	.byte			Fn3, v116
	.byte	W12
	.byte			Fn3, v044
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song005_1_1
	.byte	PATT	
		mPtr	song005_1_2
	.byte	PATT	
		mPtr	song005_1_1
	.byte	PATT	
		mPtr	song005_1_3
song005_1_6:
	.byte	VOICE	, 50
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, As2, v084
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PEND
song005_1_4:
	.byte	W12
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, Gs2, v084
	.byte	W12
	.byte			As2
	.byte	W12
	.byte			As2, v024
	.byte	W12
	.byte		N12	, As2, v084
	.byte	W24
	.byte	PEND
song005_1_5:
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, As2, v096
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PEND
song005_1_7:
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, Gs2, v096
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N12	, Cn3, v096
	.byte	W12
	.byte		N11	, As2, v076
	.byte	W12
	.byte	PEND
song005_1_8:
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N10	, Gs2, v084
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, As2, v084
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song005_1_4
	.byte	PATT	
		mPtr	song005_1_5
song005_1_9:
	.byte	W12
	.byte		N10	, Gs2, v096
	.byte	W12
	.byte		N06	, Gs2, v024
	.byte	W12
	.byte		N11	, Gs2, v096
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N06	, Cn3, v096
	.byte	W11
	.byte	VOICE	, 51
	.byte	W01
	.byte		N06	, Gn3, v100
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song005_1_6
	.byte	PATT	
		mPtr	song005_1_4
	.byte	PATT	
		mPtr	song005_1_5
	.byte	PATT	
		mPtr	song005_1_7
	.byte	PATT	
		mPtr	song005_1_8
	.byte	PATT	
		mPtr	song005_1_4
	.byte	PATT	
		mPtr	song005_1_5
	.byte	PATT	
		mPtr	song005_1_9
	.byte	GOTO	
		mPtr	song005_1_10
	.byte	FINE

	@********************** Track  2 **********************@

	.global song005_2
song005_2:	@ 0x08267150
	.byte	KEYSH	, 0
song005_2_2:
	.byte	VOICE	, 7
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song005_2_1:
	.byte		N03	, Bn3, v084
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn3, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2, v036
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn3, v084
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Dn3, v044
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2, v036
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song005_2_1
	.byte	PATT	
		mPtr	song005_2_1
	.byte	PATT	
		mPtr	song005_2_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song005_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song005_3
song005_3:	@ 0x082671AB
	.byte	KEYSH	, 0
song005_3_2:
	.byte	VOICE	, 6
	.byte	VOL	, v040
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte		N05	, Dn4, v088
	.byte	W03
	.byte		N20	, Ds4, v100
	.byte	W20
	.byte		N23	, Dn4, v096
	.byte	W24
	.byte		N24	, As3
	.byte	W24
	.byte		N72	, Gn3, v080
	.byte	W24
song005_3_1:
	.byte	W56
	.byte	W03
	.byte		N23	, Fn3, v096
	.byte	W24
	.byte		N13	, Gn3, v076
	.byte	W13
	.byte	PEND
	.byte		N80	, Cn4, v096
	.byte	W80
	.byte	W03
	.byte		N84	, As3
	.byte	W13
	.byte	W92
	.byte	W03
	.byte		N05	, Dn4
	.byte	W01
	.byte	W02
	.byte		N21	, Ds4, v100
	.byte	W22
	.byte		N23	, Dn4, v096
	.byte	W24
	.byte		N24	, As3
	.byte	W24
	.byte		N72	, Gn3, v080
	.byte	W24
	.byte	PATT	
		mPtr	song005_3_1
	.byte		N76	, Cn4, v092
	.byte	W84
	.byte		N06	, Cs4, v088
	.byte	W04
	.byte		TIE	, Dn4, v104
	.byte	W08
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	GOTO	
		mPtr	song005_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song005_4
song005_4:	@ 0x0826721A
	.byte	KEYSH	, 0
song005_4_4:
	.byte	VOICE	, 4
	.byte	VOL	, v046
	.byte	PAN	, c_v-30
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Gn5, v036
	.byte	W12
	.byte			Gn5, v024
	.byte	W12
	.byte	W96
song005_4_2:
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Fn5, v084
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte	PEND
	.byte	W96
song005_4_1:
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Gn5, v036
	.byte	W12
	.byte			Gn5, v024
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte			Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			As5, v084
	.byte	W12
	.byte			As5, v036
	.byte	W12
	.byte			As5, v024
	.byte	W12
	.byte	W96
	.byte			Gn4, v076
	.byte	W12
	.byte			Gn4, v024
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W36
	.byte	W96
	.byte			Dn5, v084
	.byte	W12
	.byte			Dn5, v076
	.byte	W12
	.byte			Dn5, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn4, v024
	.byte	W36
	.byte	W96
	.byte	PATT	
		mPtr	song005_4_1
	.byte	W96
	.byte	W12
	.byte		N09	, Fn5, v084
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte			Dn5, v076
	.byte	W12
	.byte			Dn5, v024
	.byte	W12
	.byte			As5, v084
	.byte	W12
song005_4_3:
	.byte		N09	, As5, v036
	.byte	W12
	.byte			As5, v024
	.byte	W84
	.byte	PEND
	.byte	PATT	
		mPtr	song005_4_1
	.byte	W96
	.byte	PATT	
		mPtr	song005_4_2
	.byte	W96
	.byte	PATT	
		mPtr	song005_4_1
	.byte	W96
	.byte		N09	, Gn4, v076
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn5, v084
	.byte	W12
	.byte			Fn5, v076
	.byte	W12
	.byte			Fn5, v036
	.byte	W12
	.byte			Fn5, v024
	.byte	W24
	.byte			As5, v084
	.byte	W12
	.byte	PATT	
		mPtr	song005_4_3
	.byte	GOTO	
		mPtr	song005_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song005_5
song005_5:	@ 0x08267309
	.byte	KEYSH	, 0
song005_5_4:
	.byte	W03
	.byte	VOICE	, 5
	.byte	VOL	, v046
	.byte	PAN	, c_v+30
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn4, v024
	.byte	W09
	.byte	W96
song005_5_2:
	.byte	W03
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Fn4, v084
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W09
	.byte	PEND
	.byte	W96
song005_5_1:
	.byte	W03
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Gn4, v036
	.byte	W12
	.byte			Gn4, v024
	.byte	W09
	.byte	PEND
	.byte	W96
	.byte	W03
	.byte			Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			As4, v084
	.byte	W12
	.byte			As4, v036
	.byte	W12
	.byte			As4, v024
	.byte	W09
	.byte	W96
	.byte	W03
	.byte			Gn3, v076
	.byte	W12
	.byte			Gn3, v024
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W32
	.byte	W01
	.byte	W96
	.byte	W03
	.byte			Dn4, v084
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Dn4, v024
	.byte	W12
	.byte			Gn3, v084
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn3, v024
	.byte	W32
	.byte	W01
	.byte	W96
	.byte	PATT	
		mPtr	song005_5_1
	.byte	W96
	.byte	W15
	.byte		N09	, Fn4, v084
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v024
	.byte	W12
	.byte			As4, v084
	.byte	W09
song005_5_3:
	.byte	W03
	.byte		N09	, As4, v036
	.byte	W12
	.byte			As4, v024
	.byte	W80
	.byte	W01
	.byte	PEND
	.byte	PATT	
		mPtr	song005_5_1
	.byte	W96
	.byte	PATT	
		mPtr	song005_5_2
	.byte	W96
	.byte	PATT	
		mPtr	song005_5_1
	.byte	W96
	.byte	W03
	.byte		N09	, Gn3, v076
	.byte	W12
	.byte			Gn3, v036
	.byte	W12
	.byte			Gn4, v084
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v036
	.byte	W12
	.byte			Fn4, v024
	.byte	W24
	.byte			As4, v084
	.byte	W09
	.byte	PATT	
		mPtr	song005_5_3
	.byte	GOTO	
		mPtr	song005_5_4
	.byte	FINE

	@********************** Track  6 **********************@

	.global song005_6
song005_6:	@ 0x08267402
	.byte	KEYSH	, 0
song005_6_3:
	.byte	VOICE	, 49
	.byte	VOL	, v073
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte		N06	, Gs2, v104
	.byte	W12
	.byte			Gs2, v056
	.byte	W12
	.byte			Gs1, v104
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
	.byte			Gs2, v104
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
song005_6_2:
	.byte		N12	, Gs1, v112
	.byte	W12
	.byte		N06	, Gs2, v104
	.byte	W12
	.byte			Gs2, v056
	.byte	W12
	.byte			Gs1, v104
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
	.byte			Gs2, v104
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs1, v056
	.byte	W12
	.byte	PEND
song005_6_1:
	.byte		N12	, As1, v112
	.byte	W12
	.byte		N06	, As2, v104
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N12	, As1, v112
	.byte	W12
	.byte		N06	, As2, v104
	.byte	W12
	.byte			As2, v056
	.byte	W12
	.byte		N12	, As1, v112
	.byte	W12
	.byte			As2, v104
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_2
	.byte	PATT	
		mPtr	song005_6_1
	.byte	PATT	
		mPtr	song005_6_1
	.byte	GOTO	
		mPtr	song005_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song005_7
song005_7:	@ 0x082674C8
	.byte	KEYSH	, 0
song005_7_3:
	.byte	VOICE	, 89
	.byte	VOL	, v046
	.byte	W12
	.byte		N04	, Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W12
song005_7_1:
	.byte	W12
	.byte		N04	, Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Dn6, v084
	.byte	W12
	.byte			Bn5, v056
	.byte	W06
	.byte			Ds6, v084
	.byte	W06
	.byte			Bn5, v076
	.byte	W06
	.byte			Fn5, v064
	.byte	W06
	.byte	PEND
song005_7_2:
	.byte	W12
	.byte		N04	, Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte			Dn6, v084
	.byte	W12
	.byte			Dn6, v056
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	PATT	
		mPtr	song005_7_2
	.byte	PATT	
		mPtr	song005_7_1
	.byte	GOTO	
		mPtr	song005_7_3
	.byte	FINE

	@********************** Track  8 **********************@

	.global song005_8
song005_8:	@ 0x0826757C
	.byte	KEYSH	, 0
song005_8_2:
	.byte	VOICE	, 91
	.byte	VOL	, v026
	.byte		N12	, En5, v064
	.byte	W48
	.byte		N12	
	.byte	W48
song005_8_1:
	.byte		N12	, En5, v064
	.byte	W48
	.byte		N12	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	PATT	
		mPtr	song005_8_1
	.byte	GOTO	
		mPtr	song005_8_2
	.byte	FINE
    
	mAlignWord
	.global song005
song005:	@ 0x08267604
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song005_1		@ track
	mPtr	song005_2		@ track
	mPtr	song005_3		@ track
	mPtr	song005_4		@ track
	mPtr	song005_5		@ track
	mPtr	song005_6		@ track
	mPtr	song005_7		@ track
	mPtr	song005_8		@ track
