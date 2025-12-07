	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song017_1
song017_1:	@ 0x0826CF88
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 50
	.byte		N32	, Ds2, v104
	.byte	W64
	.byte		N04	
	.byte	W08
	.byte		N24	, Ds2, v096
	.byte	W24
	.byte	TEMPO	, 60
	.byte	W44
	.byte		N60	, Ds2, v108
	.byte	W52
	.byte	TEMPO	, 50
	.byte	W23
	.byte		N06	, Ds2, v100
	.byte	W09
	.byte		N20	, Ds2, v104
	.byte	W64
	.byte	TEMPO	, 62
	.byte	W24
	.byte		N11	, Fn1, v127
	.byte	W28
	.byte	W01
	.byte		N06	, Gs1
	.byte	W18
	.byte		N11	, Fs1
	.byte	W19
	.byte		N05	, Gs1
	.byte	W06
song017_1_1:
	.byte	W24
	.byte		N11	, Fn1, v127
	.byte	W28
	.byte	W01
	.byte		N06	, Gs1
	.byte	W18
	.byte		N11	, Fs1
	.byte	W19
	.byte		N05	, Gs1
	.byte	W06
	.byte	PEND
song017_1_2:
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	PATT	
		mPtr	song017_1_1
	.byte	GOTO	
		mPtr	song017_1_2
	.byte	PATT	
		mPtr	song017_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song017_2
song017_2:	@ 0x0826D069
	.byte	KEYSH	, 0
	.byte	VOICE	, 126
	.byte	VOL	, v090
	.byte	PAN	, c_v
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
song017_2_1:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W23
	.byte		N10	
	.byte	W24
	.byte		N05	
	.byte	W13
	.byte	PEND
	.byte	PATT	
		mPtr	song017_2_1
song017_2_2:
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	PATT	
		mPtr	song017_2_1
	.byte	GOTO	
		mPtr	song017_2_2
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W23
	.byte		N10	
	.byte	W24
	.byte		N05	
	.byte	W06
	.byte	FINE

	@********************** Track  3 **********************@

	.global song017_3
song017_3:	@ 0x0826D125
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v053
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
song017_3_1:
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
		mPtr	song017_3_1
song017_3_3:
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
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
song017_3_2:
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
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_2
	.byte	PATT	
		mPtr	song017_3_1
	.byte	PATT	
		mPtr	song017_3_1
	.byte	GOTO	
		mPtr	song017_3_3
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
	.byte	W03
	.byte	FINE

	@********************** Track  4 **********************@

	.global song017_4
song017_4:	@ 0x0826D243
	.byte	KEYSH	, 0
	.byte	VOICE	, 121
	.byte	VOL	, v074
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W68
	.byte	W01
	.byte		N03	, Cs5, v032
	.byte	W10
	.byte		N02	, Cs5, v052
	.byte	W08
	.byte		N03	, Cs5, v112
	.byte	W09
song017_4_1:
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
		mPtr	song017_4_1
song017_4_4:
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W36
	.byte			Gn7, v088
	.byte	W24
	.byte			Gn7, v068
	.byte	W12
song017_4_2:
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
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
song017_4_3:
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
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_2
	.byte	PATT	
		mPtr	song017_4_3
	.byte	PATT	
		mPtr	song017_4_1
	.byte	PATT	
		mPtr	song017_4_1
	.byte	GOTO	
		mPtr	song017_4_4
	.byte		N12	, Gn7, v068
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	FINE

	@********************** Track  5 **********************@

	.global song017_5
song017_5:	@ 0x0826D31D
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v081
	.byte	PAN	, c_v-6
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
song017_5_1:
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			An1, v104
	.byte	W18
	.byte			Cn2, v112
	.byte	W06
	.byte			Cn2, v104
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			Cn2, v127
	.byte	W40
	.byte	W01
	.byte	PEND
song017_5_2:
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
song017_5_10:
	.byte	PATT	
		mPtr	song017_5_1
song017_5_9:
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
		mPtr	song017_5_1
	.byte	PATT	
		mPtr	song017_5_2
song017_5_3:
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			An1, v104
	.byte	W18
	.byte			Cn2, v116
	.byte	W06
	.byte			Cn2, v112
	.byte	W06
	.byte			As1, v104
	.byte	W06
	.byte			Cn2, v116
	.byte	W40
	.byte	W01
	.byte	PEND
song017_5_4:
	.byte	W01
	.byte		N05	, Gn1, v127
	.byte	W06
	.byte			Gn1, v116
	.byte	W06
	.byte			Fn1, v112
	.byte	W06
	.byte			Gn1, v104
	.byte	W18
	.byte			As1, v116
	.byte	W06
	.byte			As1, v112
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			As1, v116
	.byte	W18
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
		mPtr	song017_5_1
	.byte	PATT	
		mPtr	song017_5_2
	.byte	PATT	
		mPtr	song017_5_3
	.byte	PATT	
		mPtr	song017_5_4
song017_5_5:
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
song017_5_6:
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
song017_5_7:
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
song017_5_8:
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
		mPtr	song017_5_5
	.byte	PATT	
		mPtr	song017_5_6
	.byte	PATT	
		mPtr	song017_5_7
	.byte	PATT	
		mPtr	song017_5_8
	.byte	PATT	
		mPtr	song017_5_5
	.byte	PATT	
		mPtr	song017_5_6
	.byte	PATT	
		mPtr	song017_5_7
	.byte	PATT	
		mPtr	song017_5_8
	.byte	PATT	
		mPtr	song017_5_1
	.byte	PATT	
		mPtr	song017_5_2
	.byte	PATT	
		mPtr	song017_5_1
	.byte	PATT	
		mPtr	song017_5_9
	.byte	PATT	
		mPtr	song017_5_1
	.byte	PATT	
		mPtr	song017_5_2
	.byte	GOTO	
		mPtr	song017_5_10
	.byte	W01
	.byte		N05	, An1, v127
	.byte	W06
	.byte			An1, v116
	.byte	W06
	.byte			Gn1, v112
	.byte	W06
	.byte			An1, v104
	.byte	W18
	.byte			Cn2, v112
	.byte	W06
	.byte			Cn2, v104
	.byte	W06
	.byte			As1, v116
	.byte	W06
	.byte			Cn2, v127
	.byte	W05
	.byte	FINE

	@********************** Track  6 **********************@

	.global song017_6
song017_6:	@ 0x0826D510
	.byte	KEYSH	, 0
	.byte	VOICE	, 50
	.byte	VOL	, v070
	.byte	PAN	, c_v-9
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song017_6_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N60	, En4, v092
	.byte	W60
	.byte		N12	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
song017_6_1:
	.byte		N60	, Dn4, v092
	.byte	W60
	.byte		N12	, En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte	PEND
	.byte		N18	, An4
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N12	, Gn4
	.byte	W12
	.byte		N18	, Cn5
	.byte	W18
	.byte		N03	, Gn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte		N12	, An4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N48	, Cn4
	.byte	W48
	.byte			Gn4
	.byte	W48
	.byte	PATT	
		mPtr	song017_6_1
	.byte	PATT	
		mPtr	song017_6_1
	.byte		N18	, An4, v092
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N12	, Gn4
	.byte	W12
	.byte		N18	, Cn5
	.byte	W18
	.byte		N03	, Gn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte		N12	, An4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N48	, En5
	.byte	W48
	.byte			Fn5
	.byte	W48
	.byte	W24
	.byte		N12	, An4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N24	, An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N60	, Dn5
	.byte	W60
	.byte		N03	, Cn5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte		N06	, Cn5
	.byte	W06
	.byte		N12	, An4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N36	, An4
	.byte	W36
	.byte		N12	, Cn5
	.byte	W12
	.byte		N36	, En4
	.byte	W36
	.byte		N06	, Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte		N36	, As4
	.byte	W36
	.byte		N06	, An4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N48	, Cn5
	.byte	W48
	.byte		N24	, Dn5
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte		N36	, An4
	.byte	W36
	.byte		N12	, Gn4
	.byte	W12
	.byte		N24	, An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N48	, Ds5
	.byte	W48
	.byte			An5
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song017_6_2
	.byte	FINE

	@********************** Track  7 **********************@

	.global song017_7
song017_7:	@ 0x0826D5DA
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v085
	.byte	PAN	, c_v+16
	.byte	BENDR	, 12
	.byte	W03
	.byte	VOL	, v090
	.byte		TIE	, An2, v112
	.byte	W22
	.byte	VOL	, v090
	.byte	W08
	.byte		N36	, En3, v120
	.byte	W30
	.byte		TIE	, Cn3, v112
	.byte	W36
	.byte			Gn3, v120
	.byte	W10
	.byte	VOL	, v089
	.byte	W02
	.byte		v088
	.byte	W06
	.byte		v087
	.byte	W03
	.byte		v086
	.byte	W04
	.byte		v085
	.byte	W05
	.byte		v084
	.byte	W04
	.byte		v083
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v081
	.byte	W05
	.byte		v080
	.byte	W05
	.byte		v078
	.byte	W04
	.byte		v077
	.byte	W02
	.byte		v076
	.byte	W03
	.byte		v075
	.byte	W03
	.byte		v075
	.byte	W03
	.byte		v072
	.byte	W05
	.byte		v070
	.byte	W03
	.byte		v068
	.byte	W03
	.byte		v067
	.byte	W03
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W03
	.byte		v061
	.byte	W03
	.byte		v056
	.byte	W03
	.byte		v053
	.byte	W02
	.byte		v051
	.byte	W04
	.byte		v048
	.byte	W02
	.byte	W02
	.byte		v046
	.byte	W03
	.byte		v043
	.byte	W02
	.byte		v038
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W02
	.byte		v027
	.byte	W02
	.byte		v025
	.byte	W04
	.byte		v024
	.byte	W01
	.byte		v015
	.byte	W14
	.byte		v016
	.byte	W05
	.byte		v017
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v021
	.byte	W02
	.byte		v027
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v039
	.byte	W02
	.byte		EOT	, Cn3
	.byte	VOL	, v045
	.byte	W01
	.byte		v050
	.byte		N05	, En2, v100
	.byte		N05	, En3
	.byte	W02
	.byte	VOL	, v055
	.byte	W02
	.byte		v060
	.byte	W01
	.byte		N05	, Cn3, v116
	.byte		N05	, Cn4
	.byte	W02
	.byte	VOL	, v067
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		N05	, En3, v100
	.byte		N05	, En4
	.byte	W01
	.byte	VOL	, v085
	.byte	W02
	.byte		v086
	.byte	W02
	.byte		N04	, An3, v112
	.byte		N04	, An4
	.byte	W01
	.byte	VOL	, v087
	.byte	W01
	.byte		v087
	.byte	W03
	.byte		N06	, En4, v116
	.byte		N06	, En5
	.byte	W16
	.byte		EOT	, An2
	.byte	W01
	.byte			Gn3
	.byte	W01
song017_7_1:
	.byte		N48	, An3, v120
	.byte		N48	, En4
	.byte	W60
	.byte		N03	, En3
	.byte		N03	, En4
	.byte	W12
	.byte		N12	, Dn3
	.byte		N12	, Dn4
	.byte	W12
	.byte		N03	, En3
	.byte		N03	, En4
	.byte	W12
	.byte	PEND
song017_7_2:
	.byte		N48	, Fn3, v120
	.byte		N48	, Dn4
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte	PEND
song017_7_3:
	.byte		N48	, Cn3, v120
	.byte		N48	, An3
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An2
	.byte		N03	, An3
	.byte	W12
	.byte		N48	, Bn2
	.byte		N48	, Gs3
	.byte	W48
	.byte			Gs2
	.byte		N48	, Dn4
	.byte	W48
	.byte			Cn3
	.byte		N48	, En4
	.byte	W60
	.byte		N03	, En3
	.byte		N03	, En4
	.byte	W12
	.byte		N12	, Dn3
	.byte		N12	, Dn4
	.byte	W12
	.byte		N03	, En3
	.byte		N03	, En4
	.byte	W12
	.byte		N48	, Bn2
	.byte		N48	, Dn4
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N48	, En2
	.byte		N48	, An3
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An2
	.byte		N03	, An3
	.byte	W12
	.byte		N42	, Dn2
	.byte		N44	, Gs3
	.byte	W48
	.byte		N48	, Gs2
	.byte		N48	, Dn4
	.byte	W48
	.byte		N44	, Cn3
	.byte		N44	, En3
	.byte	W60
	.byte		N03	
	.byte		N03	, En4
	.byte	W12
	.byte		N12	, Dn3
	.byte		N12	, Dn4
	.byte	W12
	.byte		N03	, En3
	.byte		N03	, En4
	.byte	W12
	.byte		N44	, Bn2
	.byte		N44	, Dn3
	.byte	W60
	.byte		N03	
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N48	, En2
	.byte		N48	, An2
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An2
	.byte		N03	, An3
	.byte	W12
	.byte		N32	, Dn2
	.byte		N44	, Gs2
	.byte	W48
	.byte		N48	
	.byte		N48	, Dn3
	.byte	W48
	.byte			Cn3
	.byte		N48	, En3
	.byte	W60
	.byte		N03	
	.byte		N03	, En4
	.byte	W12
	.byte		N12	, Dn3
	.byte		N12	, Dn4
	.byte	W12
	.byte		N03	, En3
	.byte		N03	, En4
	.byte	W12
	.byte		N48	, Dn3
	.byte		N48	, Fn3
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N48	, An2
	.byte		N48	, En3
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An2
	.byte		N03	, An3
	.byte	W12
	.byte		N48	, Gs2
	.byte		N48	, Dn3
	.byte	W48
	.byte			Gs2
	.byte		N48	, Fn3
	.byte	W48
	.byte		N72	, An2
	.byte		N72	, En3
	.byte	W72
	.byte		N24	, Fn2
	.byte		N24	, Cn3
	.byte	W24
	.byte		N72	, Dn2
	.byte		N72	, Gs2
	.byte	W72
	.byte		N48	, Gn2
	.byte		N48	, Dn3
	.byte	W24
	.byte	W24
	.byte		N24	, Bn2
	.byte		N24	, En3
	.byte	W24
	.byte			Gn2
	.byte		N24	, Cn3
	.byte	W24
	.byte			Ds2
	.byte		N24	, Gn2
	.byte	W24
	.byte		N48	, Ds2
	.byte		N48	, Gs2
	.byte	W48
	.byte			Dn2
	.byte		N48	, Fn2
	.byte	W48
	.byte		N96	, En2
	.byte		N96	, An2
	.byte	W96
	.byte			Fn2
	.byte		N48	, Dn3
	.byte	W48
	.byte			Bn2
	.byte	W48
	.byte		N60	, An2
	.byte		N60	, Cn3
	.byte	W60
	.byte		N12	, Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N60	, An2
	.byte		N44	, Ds3
	.byte	W48
	.byte		N12	, Dn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song017_7_1
	.byte	PATT	
		mPtr	song017_7_2
	.byte	GOTO	
		mPtr	song017_7_3
	.byte		N48	, Cn3, v120
	.byte		N48	, An3
	.byte	W60
	.byte		N03	, Dn3
	.byte		N03	, Dn4
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Cn4
	.byte	W12
	.byte		N03	, An2
	.byte		N03	, An3
	.byte	W03
	.byte	FINE

	@********************** Track  8 **********************@

	.global song017_8
song017_8:	@ 0x0826D820
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v088
	.byte	PAN	, c_v+46
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
song017_8_3:
	.byte		N18	, An0, v120
	.byte	W32
	.byte	W03
	.byte		N28	, Cn1
	.byte	W60
	.byte	W01
	.byte	PEND
song017_8_4:
	.byte		N18	, Gs0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, Dn1
	.byte	W60
	.byte	W02
	.byte	PEND
song017_8_1:
	.byte		N18	, An0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, Cn1
	.byte	W60
	.byte	W02
	.byte	PEND
song017_8_2:
	.byte		N18	, Bn0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, Dn1
	.byte	W60
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song017_8_1
	.byte		N18	, Bn0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, Gs0
	.byte	W60
	.byte	W02
	.byte	PATT	
		mPtr	song017_8_1
	.byte	PATT	
		mPtr	song017_8_2
	.byte	PATT	
		mPtr	song017_8_3
	.byte	PATT	
		mPtr	song017_8_4
	.byte		N24	, En1, v120
	.byte	W36
	.byte		N32	, Cn1
	.byte	W60
	.byte		N24	, Bn0
	.byte	W36
	.byte		N32	, Fn1
	.byte	W60
song017_8_5:
	.byte		N24	, An1, v120
	.byte	W36
	.byte		N48	, Cn2
	.byte	W60
	.byte	PEND
song017_8_6:
	.byte		N24	, Bn1, v120
	.byte	W36
	.byte		N48	, Fn2
	.byte	W60
	.byte	PEND
	.byte			En2
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte			Bn1
	.byte	W48
	.byte			Fn2
	.byte	W48
	.byte	PATT	
		mPtr	song017_8_5
	.byte	PATT	
		mPtr	song017_8_6
	.byte		N44	, En2, v120
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte			Ds2
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte		N48	, An2
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte			Bn2
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte		N44	, En3
	.byte	W48
	.byte			Cn3
	.byte	W48
	.byte			Ds3
	.byte	W48
	.byte			An3
	.byte	W48
	.byte	PATT	
		mPtr	song017_8_3
	.byte		N18	, Bn0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, As0
	.byte	W60
	.byte	W02
	.byte	PATT	
		mPtr	song017_8_1
	.byte		N18	, Bn0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, Ds1
	.byte	W60
	.byte	W02
	.byte	PATT	
		mPtr	song017_8_3
	.byte	PATT	
		mPtr	song017_8_4
	.byte	GOTO	
		mPtr	song017_8_1
	.byte		N18	, An0, v120
	.byte	W32
	.byte	W02
	.byte		N28	, Cn1
	.byte	W28
	.byte	W01
	.byte	FINE

	@********************** Track  9 **********************@

	.global song017_9
song017_9:	@ 0x0826D8F6
	.byte	KEYSH	, 0
	.byte	VOICE	, 84
	.byte	VOL	, v085
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song017_9_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N60	, En4, v120
	.byte	W60
	.byte		N12	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
song017_9_1:
	.byte		N60	, Dn4, v120
	.byte	W60
	.byte		N12	, En4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte	PEND
	.byte		N18	, An4
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N12	, Gn4
	.byte	W12
	.byte		N18	, Cn5
	.byte	W18
	.byte		N03	, Gn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte		N12	, An4
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N48	, Cn4
	.byte	W48
	.byte			Gn4
	.byte	W48
	.byte	PATT	
		mPtr	song017_9_1
	.byte	PATT	
		mPtr	song017_9_1
	.byte		N18	, An4, v120
	.byte	W18
	.byte		N18	
	.byte	W18
	.byte		N12	, Gn4
	.byte	W12
	.byte		N18	, Cn5
	.byte	W18
	.byte		N03	, Gn4
	.byte	W03
	.byte			Gs4
	.byte	W03
	.byte		N12	, An4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N48	, En5
	.byte	W48
	.byte			Fn5
	.byte	W48
	.byte	W24
	.byte		N12	, An4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N24	, An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N60	, Dn5
	.byte	W60
	.byte		N03	, Cn5
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte		N06	, Cn5
	.byte	W06
	.byte		N12	, An4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N36	, An4
	.byte	W36
	.byte		N12	, Cn5
	.byte	W12
	.byte		N36	, En4
	.byte	W36
	.byte		N06	, Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte		N36	, As4
	.byte	W36
	.byte		N06	, An4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N48	, Cn5
	.byte	W48
	.byte		N24	, Dn5
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte		N36	, An4
	.byte	W36
	.byte		N12	, Gn4
	.byte	W12
	.byte		N24	, An4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N48	, Ds5
	.byte	W48
	.byte			An5
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song017_9_2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song017_10
song017_10:	@ 0x0826D9C0
	.byte	KEYSH	, 0
	.byte	VOICE	, 105
	.byte	VOL	, v063
	.byte	PAN	, c_v-31
	.byte	BENDR	, 12
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23	, Fn2, v124
	.byte	W44
	.byte		N24	
	.byte	W28
song017_10_1:
	.byte		N23	, Fn2, v112
	.byte	W36
	.byte			Gs2
	.byte	W36
	.byte		N10	, As2
	.byte	W24
	.byte	PEND
song017_10_3:
	.byte		N23	, En2, v112
	.byte	W36
	.byte			As2
	.byte	W36
	.byte		N10	, En2
	.byte	W24
	.byte	PEND
song017_10_8:
	.byte	PATT	
		mPtr	song017_10_1
song017_10_2:
	.byte		N23	, Gn2, v112
	.byte	W36
	.byte			As2
	.byte	W36
	.byte		N10	, En2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song017_10_1
	.byte		N23	, Gn2, v112
	.byte	W36
	.byte			En2
	.byte	W36
	.byte		N10	
	.byte	W24
	.byte	PATT	
		mPtr	song017_10_1
	.byte	PATT	
		mPtr	song017_10_2
	.byte	PATT	
		mPtr	song017_10_1
	.byte	PATT	
		mPtr	song017_10_3
	.byte	PATT	
		mPtr	song017_10_1
	.byte		N23	, Gn2, v112
	.byte	W36
	.byte			Cs3
	.byte	W36
	.byte		N10	, En2
	.byte	W24
song017_10_4:
	.byte		N11	, Fn2, v112
	.byte	W36
	.byte		N22	, Gs2
	.byte	W60
	.byte	PEND
song017_10_5:
	.byte		N11	, Gn2, v112
	.byte	W36
	.byte		N22	, Cs3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song017_10_4
song017_10_6:
	.byte		N11	, Gn2, v112
	.byte	W36
	.byte		N22	, As2
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song017_10_4
	.byte	PATT	
		mPtr	song017_10_5
	.byte	PATT	
		mPtr	song017_10_4
	.byte	PATT	
		mPtr	song017_10_6
	.byte	PATT	
		mPtr	song017_10_4
	.byte	PATT	
		mPtr	song017_10_5
	.byte	PATT	
		mPtr	song017_10_4
	.byte	PATT	
		mPtr	song017_10_6
	.byte	PATT	
		mPtr	song017_10_1
song017_10_7:
	.byte		N23	, Gn2, v112
	.byte	W36
	.byte			Fs2
	.byte	W36
	.byte		N10	, En2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song017_10_1
	.byte	PATT	
		mPtr	song017_10_7
	.byte	PATT	
		mPtr	song017_10_1
	.byte	PATT	
		mPtr	song017_10_3
	.byte	GOTO	
		mPtr	song017_10_8
	.byte		N23	, Fn2, v112
	.byte	W36
	.byte			Gs2
	.byte	W36
	.byte		N10	, As2
	.byte	W10
	.byte	FINE

	@********************** Track  11 **********************@

	.global song017_11
song017_11:	@ 0x0826DA9D
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v070
	.byte	PAN	, c_v-31
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W42
	.byte		N16	, Fn2, v120
	.byte	W18
	.byte		N10	
	.byte	W36
song017_11_1:
	.byte	W24
	.byte		N10	, Fn2, v100
	.byte	W36
	.byte		N11	, Gs2
	.byte	W24
	.byte		N10	, Fn2
	.byte	W12
	.byte	PEND
song017_11_2:
	.byte	W24
	.byte		N12	, Ds2, v100
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte		N12	, En2
	.byte	W12
	.byte	PEND
song017_11_7:
	.byte	PATT	
		mPtr	song017_11_1
	.byte	PATT	
		mPtr	song017_11_2
	.byte	PATT	
		mPtr	song017_11_1
	.byte	PATT	
		mPtr	song017_11_2
	.byte	PATT	
		mPtr	song017_11_1
	.byte	PATT	
		mPtr	song017_11_2
	.byte	PATT	
		mPtr	song017_11_1
	.byte	W24
	.byte		N11	, Ds2, v100
	.byte	W36
	.byte		N11	
	.byte	W24
	.byte			En2
	.byte	W12
	.byte	PATT	
		mPtr	song017_11_1
	.byte	PATT	
		mPtr	song017_11_2
	.byte	W12
	.byte		N06	, Fn2, v100
	.byte	W01
	.byte	VOL	, v077
	.byte	W11
	.byte		N11	
	.byte	W36
	.byte		N06	, Gs2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
song017_11_4:
	.byte	W12
	.byte		N06	, As2, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte			Ds2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song017_11_3:
	.byte	W12
	.byte	VOL	, v070
	.byte		N06	, Fn2, v100
	.byte	W01
	.byte	VOL	, v077
	.byte	W11
	.byte		N11	
	.byte	W36
	.byte		N06	, Gs2
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PEND
song017_11_5:
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
		mPtr	song017_11_3
	.byte	PATT	
		mPtr	song017_11_4
	.byte	PATT	
		mPtr	song017_11_3
	.byte	PATT	
		mPtr	song017_11_5
	.byte	PATT	
		mPtr	song017_11_3
	.byte	PATT	
		mPtr	song017_11_4
	.byte	PATT	
		mPtr	song017_11_3
	.byte	PATT	
		mPtr	song017_11_5
	.byte	W24
	.byte		N10	, Fn2, v100
	.byte	W01
	.byte	VOL	, v070
	.byte	W32
	.byte	W03
	.byte		N11	, Gs2
	.byte	W24
	.byte		N10	, Fn2
	.byte	W12
	.byte	PATT	
		mPtr	song017_11_2
song017_11_6:
	.byte	W24
	.byte		N12	, Fn2, v100
	.byte	W36
	.byte		N11	, Gs2
	.byte	W24
	.byte		N12	, Fn2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song017_11_2
	.byte	PATT	
		mPtr	song017_11_6
	.byte	PATT	
		mPtr	song017_11_2
	.byte	GOTO	
		mPtr	song017_11_7
	.byte	PATT	
		mPtr	song017_11_6
	.byte	FINE
    
	mAlignWord
	.global song017
song017:	@ 0x0826DBA0
	.byte	11		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup012		@ voicegroup/tone

	mPtr	song017_1		@ track
	mPtr	song017_2		@ track
	mPtr	song017_3		@ track
	mPtr	song017_4		@ track
	mPtr	song017_5		@ track
	mPtr	song017_6		@ track
	mPtr	song017_7		@ track
	mPtr	song017_8		@ track
	mPtr	song017_9		@ track
	mPtr	song017_10		@ track
	mPtr	song017_11		@ track
