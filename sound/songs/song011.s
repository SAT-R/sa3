	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song011_1
song011_1:	@ 0x08269F78
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	W03
	.byte	TEMPO	, 70
	.byte	W12
	.byte		N11	, Gn7, v127
	.byte	W12
	.byte			En6
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N05	, En6
	.byte	W06
	.byte		N08	, Gn7
	.byte	W12
	.byte		N05	, En6
	.byte		N05	, Gn7
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N11	, En6
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song011_1_2:
	.byte	W24
	.byte		N06	, En6, v127
	.byte	W24
	.byte		N12	
	.byte	W19
	.byte		N04	
	.byte	W17
	.byte		N06	
	.byte	W12
	.byte	PEND
song011_1_3:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N03	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
song011_1_1:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W24
	.byte		N11	
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
song011_1_4:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song011_1_1
song011_1_5:
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N03	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song011_1_1
	.byte		N11	, Gs7, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N05	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PATT	
		mPtr	song011_1_2
	.byte	PATT	
		mPtr	song011_1_3
	.byte	PATT	
		mPtr	song011_1_1
	.byte	PATT	
		mPtr	song011_1_4
	.byte	PATT	
		mPtr	song011_1_1
	.byte	PATT	
		mPtr	song011_1_5
	.byte	PATT	
		mPtr	song011_1_1
	.byte		N11	, Gs7, v127
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	, En6
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W24
	.byte	PATT	
		mPtr	song011_1_2
	.byte	PATT	
		mPtr	song011_1_3
	.byte	PATT	
		mPtr	song011_1_1
	.byte	GOTO	
		mPtr	song011_1_4
	.byte	PATT	
		mPtr	song011_1_4
	.byte		N11	, Gs7, v127
	.byte	W24
	.byte		N06	, En6
	.byte		N11	, Gs7
	.byte	W24
	.byte		N11	
	.byte	W19
	.byte		N04	, En6
	.byte	W05
	.byte		N11	, Gs7
	.byte	W12
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song011_2
song011_2:	@ 0x0826A091
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v081
	.byte	PAN	, c_v-5
	.byte	W03
	.byte	W13
	.byte		N11	, Fn2, v112
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fn1
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte			Gn1
	.byte	W11
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song011_2_1:
	.byte	W01
	.byte		N11	, Fn1, v112
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Fn2
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fn1
	.byte	W11
	.byte	PEND
song011_2_2:
	.byte	W01
	.byte		N11	, En1, v112
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			En2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			En1
	.byte	W11
	.byte	PEND
song011_2_5:
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
song011_2_3:
	.byte	W01
	.byte		N11	, Fn2, v112
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Fn1
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	PEND
song011_2_4:
	.byte	W13
	.byte		N11	, Cn1, v112
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			Cn2
	.byte	W18
	.byte			Dn1
	.byte	W18
	.byte			En1
	.byte	W11
	.byte	PEND
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
	.byte	PATT	
		mPtr	song011_2_3
	.byte	PATT	
		mPtr	song011_2_4
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
	.byte	GOTO	
		mPtr	song011_2_5
	.byte	PATT	
		mPtr	song011_2_1
	.byte	PATT	
		mPtr	song011_2_2
	.byte	W01
	.byte	FINE

	@********************** Track  3 **********************@

	.global song011_3
song011_3:	@ 0x0826A148
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	VOL	, v063
	.byte	PAN	, c_v-34
	.byte	W03
song011_3_1:
	.byte	W01
	.byte		N06	, An3, v080
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W05
	.byte	PEND
song011_3_2:
	.byte	W01
	.byte		N06	, En4, v080
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v072
	.byte	W06
	.byte			En4, v068
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v060
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v052
	.byte	W06
	.byte			En4, v048
	.byte	W06
	.byte			Cn4
	.byte	W05
	.byte	PEND
song011_3_3:
	.byte	W01
	.byte		N06	, En4, v044
	.byte	W06
	.byte			Cn4, v040
	.byte	W06
	.byte			En4, v036
	.byte	W06
	.byte			Cn4, v032
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v028
	.byte	W06
	.byte			En4, v024
	.byte	W06
	.byte			Cn4, v020
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v016
	.byte	W06
	.byte			En4, v012
	.byte	W06
	.byte			Cn4, v008
	.byte	W06
	.byte			En4, v004
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4
	.byte	W05
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song011_3_1
	.byte	PATT	
		mPtr	song011_3_2
	.byte	PATT	
		mPtr	song011_3_3
	.byte	W96
	.byte	W96
	.byte	W96
song011_3_8:
	.byte	W60
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte		N06	, An4, v092
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte	PEND
song011_3_4:
	.byte		N12	, Cn5, v072
	.byte	W12
	.byte		N06	, Gn4, v052
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v032
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			An4
	.byte	W36
	.byte	PEND
song011_3_9:
	.byte	W60
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte		N12	, En5, v092
	.byte	W06
	.byte		N06	, An4, v072
	.byte	W06
	.byte	PEND
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v052
	.byte		N12	, En5, v072
	.byte	W06
	.byte		N06	, An4, v052
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v032
	.byte		N12	, En5, v052
	.byte	W06
	.byte		N06	, An4, v032
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			En5
	.byte	W36
	.byte	W60
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte	W06
	.byte			An4
	.byte	W06
	.byte	PATT	
		mPtr	song011_3_4
song011_3_7:
	.byte	W12
	.byte		N06	, Cn5, v092
	.byte	W12
	.byte			An4
	.byte	W12
	.byte		N24	, Gn4
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte	PEND
song011_3_5:
	.byte	W01
	.byte		N12	, En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W60
	.byte			En3
	.byte	W12
	.byte			Cn3
	.byte	W11
	.byte	PEND
song011_3_6:
	.byte	W01
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W48
	.byte		N06	, Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			An4
	.byte	W11
	.byte	PEND
	.byte	PATT	
		mPtr	song011_3_5
	.byte	W01
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W48
	.byte		N06	, Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			En5
	.byte	W11
	.byte	PATT	
		mPtr	song011_3_5
	.byte	PATT	
		mPtr	song011_3_6
	.byte	W01
	.byte		N12	, Cn3, v072
	.byte	W12
	.byte			An2
	.byte	W68
	.byte	W03
	.byte		N06	, En5, v112
	.byte	W12
	.byte	PATT	
		mPtr	song011_3_7
	.byte	PATT	
		mPtr	song011_3_4
	.byte	PATT	
		mPtr	song011_3_8
	.byte	GOTO	
		mPtr	song011_3_4
	.byte		N12	, Cn5, v072
	.byte	W12
	.byte		N06	, Gn4, v052
	.byte		N06	, An4, v072
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v032
	.byte		N06	, An4, v052
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			An4
	.byte	W36
	.byte	PATT	
		mPtr	song011_3_9
	.byte	FINE

	@********************** Track  4 **********************@

	.global song011_4
song011_4:	@ 0x0826A2F1
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v063
	.byte	PAN	, c_v+21
	.byte	W03
song011_4_1:
	.byte	W04
	.byte		N06	, An3, v080
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W02
	.byte	PEND
song011_4_2:
	.byte	W04
	.byte		N06	, En4, v080
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v076
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v072
	.byte	W06
	.byte			En4, v068
	.byte	W06
	.byte			Cn4, v064
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v060
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v052
	.byte	W06
	.byte			En4, v048
	.byte	W06
	.byte			Cn4
	.byte	W02
	.byte	PEND
song011_4_3:
	.byte	W04
	.byte		N06	, En4, v044
	.byte	W06
	.byte			Cn4, v040
	.byte	W06
	.byte			En4, v036
	.byte	W06
	.byte			Cn4, v032
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v028
	.byte	W06
	.byte			En4, v024
	.byte	W06
	.byte			Cn4, v020
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4, v016
	.byte	W06
	.byte			En4, v012
	.byte	W06
	.byte			Cn4, v008
	.byte	W06
	.byte			En4, v004
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Cn4
	.byte	W02
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song011_4_1
	.byte	PATT	
		mPtr	song011_4_2
	.byte	PATT	
		mPtr	song011_4_3
	.byte	W96
	.byte	W96
	.byte	W96
song011_4_8:
	.byte	W60
	.byte	W03
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte		N06	, An4, v092
	.byte	W06
	.byte			An4, v072
	.byte	W03
	.byte	PEND
song011_4_4:
	.byte	W03
	.byte		N12	, Cn5, v072
	.byte	W12
	.byte		N06	, Gn4, v052
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v032
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			An4
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte	W60
	.byte	W03
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte		N12	, En5, v092
	.byte	W06
	.byte		N06	, An4, v072
	.byte	W03
	.byte	W03
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v052
	.byte		N12	, En5, v072
	.byte	W06
	.byte		N06	, An4, v052
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v032
	.byte		N12	, En5, v052
	.byte	W06
	.byte		N06	, An4, v032
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			En5
	.byte	W32
	.byte	W01
	.byte	W60
	.byte	W03
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte	W06
	.byte			An4
	.byte	W03
	.byte	PATT	
		mPtr	song011_4_4
song011_4_7:
	.byte	W15
	.byte		N06	, Cn5, v092
	.byte	W12
	.byte			An4
	.byte	W12
	.byte		N24	, Gn4
	.byte	W24
	.byte		N06	, En4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Bn4
	.byte	W09
	.byte	PEND
song011_4_5:
	.byte	W04
	.byte		N12	, En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W60
	.byte			En3
	.byte	W12
	.byte			Cn3
	.byte	W08
	.byte	PEND
song011_4_6:
	.byte	W04
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W48
	.byte		N06	, Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			An4
	.byte	W08
	.byte	PEND
	.byte	PATT	
		mPtr	song011_4_5
	.byte	W04
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W48
	.byte		N06	, Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			En5
	.byte	W08
	.byte	PATT	
		mPtr	song011_4_5
	.byte	PATT	
		mPtr	song011_4_6
	.byte	W04
	.byte		N12	, Cn3, v072
	.byte	W12
	.byte			An2
	.byte	W68
	.byte	W03
	.byte		N06	, En5, v112
	.byte	W09
	.byte	PATT	
		mPtr	song011_4_7
	.byte	PATT	
		mPtr	song011_4_4
	.byte	PATT	
		mPtr	song011_4_8
	.byte	GOTO	
		mPtr	song011_4_4
	.byte	W03
	.byte		N12	, Cn5, v072
	.byte	W12
	.byte		N06	, Gn4, v052
	.byte		N06	, An4, v072
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v032
	.byte		N06	, An4, v052
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte			An4
	.byte	W32
	.byte	W01
	.byte	W60
	.byte	W03
	.byte		N06	, Gn4, v092
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N12	, Cn5
	.byte	W12
	.byte		N06	, Gn4, v072
	.byte		N12	, En5, v092
	.byte	W09
	.byte	W03
	.byte	FINE

	@********************** Track  5 **********************@

	.global song011_5
song011_5:	@ 0x0826A4B1
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v042
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
song011_5_1:
	.byte		N12	, Ds7, v092
	.byte	W32
	.byte		N03	, Ds7, v052
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v072
	.byte	W16
	.byte	PEND
song011_5_2:
	.byte	W08
	.byte		N03	, Ds7, v060
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v072
	.byte	W24
	.byte			Ds7, v100
	.byte	W16
	.byte	PEND
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
song011_5_3:
	.byte		N08	, Ds7, v052
	.byte	W08
	.byte		N03	, Ds7, v060
	.byte	W24
	.byte		N03	
	.byte	W16
	.byte		N05	, Ds7, v072
	.byte	W24
	.byte		N06	, Ds7, v100
	.byte	W08
	.byte		N03	
	.byte	W16
	.byte	PEND
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
song011_5_4:
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_3
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_3
	.byte	PATT	
		mPtr	song011_5_1
	.byte	PATT	
		mPtr	song011_5_2
	.byte	GOTO	
		mPtr	song011_5_4
	.byte	PATT	
		mPtr	song011_5_1
	.byte	W08
	.byte		N03	, Ds7, v060
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v072
	.byte	W24
	.byte			Ds7, v100
	.byte	W04
	.byte	FINE

	@********************** Track  6 **********************@

	.global song011_6
song011_6:	@ 0x0826A577
	.byte	KEYSH	, 0
	.byte	VOICE	, 61
	.byte	VOL	, v056
	.byte	PAN	, c_v-19
	.byte	W03
	.byte	W96
song011_6_1:
	.byte	W12
	.byte		N11	, Cn8, v092
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
song011_6_2:
	.byte	W12
	.byte		N11	, Cn8, v092
	.byte	W24
	.byte		N11	
	.byte	W18
	.byte		N11	
	.byte	W30
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
song011_6_3:
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_2
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_2
	.byte	PATT	
		mPtr	song011_6_1
	.byte	PATT	
		mPtr	song011_6_1
	.byte	GOTO	
		mPtr	song011_6_3
	.byte	PATT	
		mPtr	song011_6_1
	.byte	W12
	.byte		N11	, Cn8, v092
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  7 **********************@

	.global song011_7
song011_7:	@ 0x0826A627
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v085
	.byte	PAN	, c_v-14
	.byte	W03
	.byte	W96
	.byte		N24	, Gn3, v108
	.byte		N24	, Bn3, v127
	.byte	W36
	.byte			Fn3, v108
	.byte		N24	, An3, v127
	.byte	W36
	.byte			Gn3, v108
	.byte		N24	, Bn3, v127
	.byte	W24
	.byte	W12
	.byte			Fn3, v108
	.byte		N24	, An3, v127
	.byte	W36
	.byte		N12	, Gn3, v108
	.byte		N12	, Bn3, v127
	.byte	W24
	.byte			Fn3, v108
	.byte		N12	, An3, v127
	.byte	W24
	.byte		N24	, An3, v108
	.byte		N24	, Cn4, v127
	.byte	W36
	.byte			Gn3, v108
	.byte		N24	, Bn3, v127
	.byte	W36
	.byte		TIE	, Fn3, v108
	.byte		TIE	, An3, v127
	.byte	W24
	.byte	W96
	.byte		EOT	, Fn3
	.byte			An3
song011_7_1:
	.byte		N24	, Fn3, v108
	.byte		N24	, An3, v127
	.byte	W36
	.byte			Gn3, v108
	.byte		N24	, Bn3, v127
	.byte	W36
	.byte		N12	, An3, v108
	.byte		N12	, Cn4, v127
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song011_7_1
	.byte		N24	, An3, v108
	.byte		N24	, Cn4, v127
	.byte	W36
	.byte		TIE	, Gn3, v108
	.byte		TIE	, Bn3, v127
	.byte	W60
	.byte	W96
	.byte		EOT	, Gn3
	.byte			Bn3
	.byte	W96
	.byte	W96
song011_7_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song011_7_2
	.byte	FINE

	@********************** Track  8 **********************@

	.global song011_8
song011_8:	@ 0x0826A6B4
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v063
	.byte	PAN	, c_v-4
	.byte	W03
	.byte	W01
	.byte		N06	, An3, v080
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W05
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song011_8_1:
	.byte	W48
	.byte		N12	, Cn4, v072
	.byte	W12
	.byte		N24	, An3
	.byte	W24
	.byte		N12	, Cn4
	.byte	W12
	.byte	PEND
song011_8_2:
	.byte		N24	, Bn3, v072
	.byte	W24
	.byte		N12	, Cn4
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte		N72	, Gn3
	.byte	W36
	.byte	PEND
song011_8_3:
	.byte	W36
	.byte		N12	, An3, v072
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N24	, Dn4
	.byte	W24
	.byte		N12	, Cn4
	.byte	W12
	.byte	PEND
song011_8_4:
	.byte		N24	, Bn3, v072
	.byte	W24
	.byte		N12	, Cn4
	.byte	W12
	.byte		N24	, Bn3
	.byte	W24
	.byte		N84	, Gn3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song011_8_1
	.byte	PATT	
		mPtr	song011_8_2
song011_8_5:
	.byte	W36
	.byte		N12	, An3, v072
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N24	, Fn3
	.byte	W24
	.byte		N12	, An3
	.byte	W12
	.byte	PEND
song011_8_6:
	.byte		N24	, Gn3, v072
	.byte	W24
	.byte		N12	, An3
	.byte	W12
	.byte		N24	, Gn3
	.byte	W24
	.byte		N84	, Cn3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song011_8_1
	.byte	PATT	
		mPtr	song011_8_2
	.byte	PATT	
		mPtr	song011_8_3
	.byte	PATT	
		mPtr	song011_8_4
	.byte	PATT	
		mPtr	song011_8_1
	.byte	PATT	
		mPtr	song011_8_2
	.byte	PATT	
		mPtr	song011_8_5
	.byte	PATT	
		mPtr	song011_8_6
	.byte	PATT	
		mPtr	song011_8_1
	.byte	PATT	
		mPtr	song011_8_2
	.byte	GOTO	
		mPtr	song011_8_3
	.byte	PATT	
		mPtr	song011_8_3
	.byte	PATT	
		mPtr	song011_8_4
	.byte	W48
	.byte	FINE

	@********************** Track  9 **********************@

	.global song011_9
song011_9:	@ 0x0826A787
	.byte	KEYSH	, 0
	.byte	VOICE	, 79
	.byte	VOL	, v056
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
	.byte		N24	, Gn3, v080
	.byte	W36
	.byte			Fn3
	.byte	W36
	.byte			Gn3
	.byte	W24
	.byte	W12
	.byte			Fn3
	.byte	W36
	.byte		N12	, Gn3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte		N24	, Cn3, v052
	.byte	W36
	.byte			Gn3, v120
	.byte	W36
	.byte		TIE	, Fn3, v100
	.byte	W24
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
song011_9_1:
	.byte		N24	, Fn3, v080
	.byte	W36
	.byte			Gn3
	.byte	W36
	.byte		N11	, Fn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song011_9_1
	.byte		N24	, Fn3, v080
	.byte	W36
	.byte		TIE	, Gn3
	.byte	W60
	.byte	W96
	.byte		EOT	
	.byte	W96
	.byte	W96
song011_9_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song011_9_2:
	.byte		N12	, Cn4, v080
	.byte	W84
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	W48
	.byte		N24	, Gn3
	.byte	W48
	.byte	PATT	
		mPtr	song011_9_2
	.byte	W48
	.byte		N24	, Gn3, v080
	.byte	W48
	.byte	PATT	
		mPtr	song011_9_2
	.byte	W48
	.byte		N24	, Gn3, v080
	.byte	W48
	.byte	W12
	.byte		N12	, Fn3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			Cn3
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song011_9_3
	.byte	FINE

	@********************** Track  10 **********************@

	.global song011_10
song011_10:	@ 0x0826A802
	.byte	KEYSH	, 0
	.byte	VOICE	, 80
	.byte	VOL	, v056
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
	.byte		N24	, En3, v080
	.byte	W36
	.byte			Dn3
	.byte	W36
	.byte			En3
	.byte	W24
	.byte	W12
	.byte			Dn3
	.byte	W36
	.byte		N11	, En3
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte		N24	, An3
	.byte	W36
	.byte			En3, v052
	.byte	W36
	.byte		TIE	, Dn3
	.byte	W24
	.byte	W96
	.byte		EOT	
song011_10_1:
	.byte		N24	, Dn3, v080
	.byte	W36
	.byte			En3
	.byte	W36
	.byte		N12	, An3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song011_10_1
	.byte		N24	, An3, v080
	.byte	W36
	.byte		TIE	, En3
	.byte	W60
	.byte	W96
	.byte		EOT	
	.byte	W96
	.byte	W96
song011_10_4:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song011_10_2:
	.byte	W12
	.byte		N11	, An3, v080
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte	PEND
song011_10_3:
	.byte		N24	, En3, v080
	.byte	W24
	.byte			Bn3
	.byte	W48
	.byte			En3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song011_10_2
	.byte		N24	, En3, v080
	.byte	W24
	.byte			Bn3
	.byte	W48
	.byte		N24	
	.byte	W24
	.byte	PATT	
		mPtr	song011_10_2
	.byte	PATT	
		mPtr	song011_10_3
	.byte		N12	, An3, v080
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song011_10_4
	.byte	FINE

	@********************** Track  11 **********************@

	.global song011_11
song011_11:	@ 0x0826A880
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v085
	.byte	PAN	, c_v-34
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song011_11_1:
	.byte		N11	, En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte	PEND
song011_11_2:
	.byte		N11	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte	PEND
song011_11_6:
	.byte	PATT	
		mPtr	song011_11_1
song011_11_7:
	.byte		N11	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song011_11_1
	.byte	PATT	
		mPtr	song011_11_2
	.byte		N11	, Cn3, v072
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn2
	.byte	W12
song011_11_5:
	.byte		N11	, Bn2, v072
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn2, v112
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
song011_11_3:
	.byte		N12	, En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W24
	.byte			En3, v040
	.byte	W12
	.byte			Cn3
	.byte	W24
	.byte			En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte	PEND
song011_11_4:
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte			Dn3, v040
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Gn3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N12	, Cn4
	.byte	W12
	.byte			An3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song011_11_3
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte			Dn3, v040
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Gn3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N12	, Cn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PATT	
		mPtr	song011_11_3
	.byte	PATT	
		mPtr	song011_11_4
	.byte		N12	, Cn3, v072
	.byte	W12
	.byte			An2
	.byte	W24
	.byte			Cn3, v040
	.byte	W12
	.byte			An2
	.byte	W36
	.byte		N06	, Gn2, v112
	.byte	W12
	.byte	PATT	
		mPtr	song011_11_5
	.byte	PATT	
		mPtr	song011_11_1
	.byte	PATT	
		mPtr	song011_11_2
	.byte	GOTO	
		mPtr	song011_11_6
	.byte	PATT	
		mPtr	song011_11_1
	.byte	PATT	
		mPtr	song011_11_7
	.byte	FINE

	@********************** Track  12 **********************@

	.global song011_12
song011_12:	@ 0x0826A97B
	.byte	KEYSH	, 0
	.byte	VOICE	, 118
	.byte	VOL	, v085
	.byte	PAN	, c_v+36
	.byte	W03
	.byte	W96
song011_12_1:
	.byte		N06	, Cn4, v080
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song011_12_1
	.byte	PATT	
		mPtr	song011_12_1
	.byte	PATT	
		mPtr	song011_12_1
	.byte	PATT	
		mPtr	song011_12_1
	.byte	PATT	
		mPtr	song011_12_1
	.byte	PATT	
		mPtr	song011_12_1
	.byte	PATT	
		mPtr	song011_12_1
song011_12_2:
	.byte	W02
	.byte		N11	, En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W10
	.byte	PEND
song011_12_3:
	.byte	W02
	.byte		N11	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W10
	.byte	PEND
song011_12_7:
	.byte	PATT	
		mPtr	song011_12_2
song011_12_8:
	.byte	W02
	.byte		N11	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N11	
	.byte	W10
	.byte	PEND
	.byte	PATT	
		mPtr	song011_12_2
	.byte	PATT	
		mPtr	song011_12_3
	.byte	W02
	.byte		N11	, Cn3, v072
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Dn2
	.byte	W10
song011_12_6:
	.byte	W02
	.byte		N11	, Bn2, v072
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gn2, v112
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N11	
	.byte	W10
	.byte	PEND
song011_12_4:
	.byte	W03
	.byte		N12	, En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W24
	.byte			En3, v040
	.byte	W12
	.byte			Cn3
	.byte	W24
	.byte			En3, v072
	.byte	W12
	.byte			Cn3
	.byte	W09
	.byte	PEND
song011_12_5:
	.byte	W03
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte			Dn3, v040
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Gn3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N12	, Cn4
	.byte	W12
	.byte			An3
	.byte	W09
	.byte	PEND
	.byte	PATT	
		mPtr	song011_12_4
	.byte	W03
	.byte		N12	, Dn3, v072
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte			Dn3, v040
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N06	, Gn3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N12	, Cn4
	.byte	W12
	.byte			En4
	.byte	W09
	.byte	PATT	
		mPtr	song011_12_4
	.byte	PATT	
		mPtr	song011_12_5
	.byte	W03
	.byte		N12	, Cn3, v072
	.byte	W12
	.byte			An2
	.byte	W24
	.byte			Cn3, v040
	.byte	W12
	.byte			An2
	.byte	W36
	.byte		N06	, Gn2, v112
	.byte	W09
	.byte	PATT	
		mPtr	song011_12_6
	.byte	PATT	
		mPtr	song011_12_2
	.byte	PATT	
		mPtr	song011_12_3
	.byte	GOTO	
		mPtr	song011_12_7
	.byte	PATT	
		mPtr	song011_12_2
	.byte	PATT	
		mPtr	song011_12_8
	.byte	W02
	.byte	FINE
    
	mAlignWord
	.global song011
song011:	@ 0x0826AAB0
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup008		@ voicegroup/tone

	mPtr	song011_1		@ track
	mPtr	song011_2		@ track
	mPtr	song011_3		@ track
	mPtr	song011_4		@ track
	mPtr	song011_5		@ track
	mPtr	song011_6		@ track
	mPtr	song011_7		@ track
	mPtr	song011_8		@ track
	mPtr	song011_9		@ track
	mPtr	song011_10		@ track
	mPtr	song011_11		@ track
	mPtr	song011_12		@ track
