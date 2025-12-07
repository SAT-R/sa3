	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song802_1
song802_1:	@ 0x082B2CBC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 127
	.byte	VOL	, v100
	.byte	W48
	.byte		N05	, En2, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N02	, Ds2
	.byte	W03
	.byte			Ds2, v060
	.byte	W03
	.byte			Ds2, v072
	.byte	W03
	.byte			Ds2, v080
	.byte	W03
	.byte			Ds2, v092
	.byte	W03
	.byte			Ds2, v100
	.byte	W03
	.byte			Ds2, v112
	.byte	W03
	.byte		N03	, Ds2, v127
	.byte	W03
song802_1_1:
	.byte		N11	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte	W12
	.byte			En1, v044
	.byte	W12
	.byte		N05	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte		N11	, En2, v112
	.byte	W06
	.byte		N05	, Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte	W12
	.byte		N05	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte	W06
	.byte		N05	, Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte	W12
	.byte		N05	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte		N11	, En2, v112
	.byte	W06
	.byte		N05	, Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
song802_1_2:
	.byte		N11	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte	W12
	.byte			En1, v044
	.byte	W12
	.byte		N05	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte		N11	, En2, v112
	.byte	W06
	.byte		N05	, Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte	W12
	.byte		N05	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte	W06
	.byte		N05	, Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte	W12
	.byte		N05	, Ds1, v048
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte			Dn1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N12	, En1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N06	, Ds2, v127
	.byte		N06	, En2, v112
	.byte	W06
	.byte	PEND
song802_1_3:
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte		N11	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte		N11	, En2, v112
	.byte	W12
	.byte			En1, v044
	.byte		N05	, Ds2, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v048
	.byte		N11	, Ds2, v127
	.byte		N11	, En2, v112
	.byte	W06
	.byte		N05	, Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte		N05	, Ds2, v127
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v048
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte			Dn1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N11	, En1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N06	, Ds2, v127
	.byte		N06	, En2, v112
	.byte	W06
	.byte		N05	, Ds1, v048
	.byte		N02	, Ds2, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N05	, Dn1, v044
	.byte		N03	, Ds2, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N12	, En1, v044
	.byte		N03	, Ds2, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_2
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte	PATT	
		mPtr	song802_1_1
	.byte		N11	, Ds1, v048
	.byte		N11	, Ds2, v127
	.byte	W12
	.byte			En1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N06	, Ds2, v127
	.byte		N06	, En2, v112
	.byte	W06
	.byte		N05	, Ds1, v048
	.byte		N05	, Ds2, v127
	.byte	W06
	.byte			Dn1, v044
	.byte	W06
	.byte		N11	, En1
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N06	, Ds2, v127
	.byte		N06	, En2, v112
	.byte	W06
	.byte		N05	, Ds1, v048
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte			Dn1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N11	, En1, v044
	.byte		N05	, Ds2, v127
	.byte		N05	, En2, v112
	.byte	W06
	.byte		N06	, Ds2, v127
	.byte		N06	, En2, v112
	.byte	W06
	.byte		N05	, Ds1, v048
	.byte		N02	, Ds2, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N05	, Dn1, v044
	.byte		N02	, Ds2, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N08	, En1, v044
	.byte		N02	, Ds2, v127
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N03	
	.byte	W02
	.byte	GOTO	
		mPtr	song802_1_3
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song802_2
song802_2:	@ 0x082B2EFF
	.byte	KEYSH	, 0
	.byte	VOICE	, 42
	.byte	VOL	, v100
	.byte	W96
song802_2_1:
	.byte		N11	, Dn2, v127
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn2
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn2
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn2
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song802_2_2:
	.byte		N11	, Dn2, v127
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn2
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
song802_2_9:
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
	.byte	PATT	
		mPtr	song802_2_1
	.byte		N11	, As1, v127
	.byte	W12
	.byte		N05	, As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, As1
	.byte	W12
	.byte		N05	, As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N12	, En2
	.byte	W12
	.byte		N05	, En3
	.byte	W06
	.byte		N05	
	.byte	W06
song802_2_4:
	.byte		N11	, Fn2, v127
	.byte	W12
	.byte		N05	, Fn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Fn2
	.byte	W12
	.byte		N05	, Fn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Fn2
	.byte	W12
	.byte		N05	, Fn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Fn2
	.byte	W12
	.byte		N05	, Fn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song802_2_5:
	.byte		N11	, Cn2, v127
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cs2
	.byte	W12
	.byte		N05	, Cs3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song802_2_1
song802_2_3:
	.byte		N11	, Cn2, v127
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song802_2_6:
	.byte		N11	, As1, v127
	.byte	W12
	.byte		N05	, As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, As1
	.byte	W12
	.byte		N05	, As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, As1
	.byte	W12
	.byte		N05	, As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, As1
	.byte	W12
	.byte		N05	, As2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
song802_2_8:
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gn1
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gn1
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gn1
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song802_2_3
	.byte	PATT	
		mPtr	song802_2_4
	.byte	PATT	
		mPtr	song802_2_5
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_3
	.byte	PATT	
		mPtr	song802_2_6
	.byte		N11	, Ds2, v127
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Ds2
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Ds2
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Ds2
	.byte	W12
	.byte		N05	, Ds3
	.byte	W06
	.byte		N05	
	.byte	W06
song802_2_7:
	.byte		N11	, Gs1, v127
	.byte	W12
	.byte		N05	, Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gs1
	.byte	W12
	.byte		N05	, Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gs1
	.byte	W12
	.byte		N05	, Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gs1
	.byte	W12
	.byte		N05	, Gs2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song802_2_7
	.byte	PATT	
		mPtr	song802_2_8
	.byte		N11	, Gn1, v127
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Gn1
	.byte	W12
	.byte		N05	, Gn2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Cn2
	.byte	W12
	.byte		N05	, Cn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
	.byte	PATT	
		mPtr	song802_2_1
	.byte	PATT	
		mPtr	song802_2_2
	.byte	PATT	
		mPtr	song802_2_1
	.byte		N11	, Dn2, v127
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, Dn2
	.byte	W12
	.byte		N05	, Dn3
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N11	, An1
	.byte	W12
	.byte		N05	, An2
	.byte	W06
	.byte		N05	
	.byte	W05
	.byte	GOTO	
		mPtr	song802_2_9
	.byte	FINE

	@********************** Track  3 **********************@

	.global song802_3
song802_3:	@ 0x082B313D
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_3_2:
	.byte	VOICE	, 106
	.byte	VOL	, v086
	.byte		N10	, An4, v108
	.byte	W06
	.byte	BEND	, c_v
	.byte	W06
	.byte		N10	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N22	, Gn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			An3
	.byte	W12
song802_3_1:
	.byte	W12
	.byte		N22	, Dn4, v108
	.byte	W24
	.byte		N32	, En4
	.byte	W36
	.byte		N10	, Fn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte	PEND
	.byte			An4
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N22	, Gn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte		N32	, Dn4
	.byte	W12
	.byte	W36
	.byte		N32	
	.byte	W36
	.byte		N22	, Cs4
	.byte	W24
	.byte	VOICE	, 106
	.byte	VOL	, v086
	.byte		N10	, An4
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N22	, Gn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			An3
	.byte	W12
	.byte	PATT	
		mPtr	song802_3_1
	.byte		N10	, An4, v108
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte			Fn4
	.byte	W12
	.byte		N22	, Gn4
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N44	, As4
	.byte	W12
	.byte	W36
	.byte		N32	, An4
	.byte	W36
	.byte		N16	, Gn4
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	GOTO	
		mPtr	song802_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song802_4
song802_4:	@ 0x082B31CB
	.byte	VOL	, v100
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_4_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 107
	.byte	BEND	, c_v
	.byte		N52	, An4, v088
	.byte	W60
	.byte		N22	, Cn5
	.byte	W24
	.byte		N32	, As4
	.byte	W12
song802_4_1:
	.byte	W24
	.byte		N22	, An4, v088
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte	PEND
song802_4_2:
	.byte		N52	, Dn4, v088
	.byte	W60
	.byte		N22	, Fn4
	.byte	W24
	.byte		N32	, En4
	.byte	W12
	.byte	PEND
	.byte	W24
	.byte		N22	, Dn4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte		N68	, An3
	.byte	W72
	.byte		N22	, Fn4
	.byte	W24
	.byte		N32	, En4
	.byte	W36
	.byte			Fn4
	.byte	W36
	.byte		N22	, En4
	.byte	W24
	.byte		N32	, Fn4
	.byte	W36
	.byte		N22	, Gn4
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte		N32	, Cn5
	.byte	W36
	.byte		N52	, Cn4
	.byte	W60
	.byte	VOICE	, 107
	.byte		N52	, An4
	.byte	W60
	.byte		N22	, Cn5
	.byte	W24
	.byte		N32	, As4
	.byte	W12
	.byte	PATT	
		mPtr	song802_4_1
	.byte	PATT	
		mPtr	song802_4_2
	.byte	W24
	.byte		N22	, Fn4, v088
	.byte	W24
	.byte			Gn4
	.byte	W24
	.byte			An4
	.byte	W24
	.byte	BENDR	, 8
	.byte	BEND	, c_v
	.byte		N80	, As4
	.byte	W96
	.byte		N32	, An4
	.byte	W36
	.byte			As4
	.byte	W36
	.byte		N22	, An4
	.byte	W24
	.byte		TIE	, Gn4
	.byte	W96
	.byte	W10
	.byte		EOT	
	.byte	W14
	.byte		N22	
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte	W01
	.byte		TIE	, Dn4
	.byte	W76
	.byte	W01
	.byte	BEND	, c_v+1
	.byte	W03
	.byte		c_v+9
	.byte	W03
	.byte		c_v+18
	.byte	W03
	.byte		c_v+27
	.byte	W03
	.byte		c_v+36
	.byte	W03
	.byte		c_v+45
	.byte	W03
	.byte		c_v+53
	.byte	W03
	.byte		c_v+57
	.byte	W80
	.byte		EOT	
	.byte	W12
	.byte	BEND	, c_v
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	GOTO	
		mPtr	song802_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song802_5
song802_5:	@ 0x082B328A
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_5_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 100
	.byte	PAN	, c_v
	.byte	VOL	, v090
	.byte	BENDR	, 8
	.byte	BEND	, c_v
	.byte		N80	, As3, v116
	.byte	W96
	.byte	VOICE	, 102
	.byte		N32	, An3
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		N22	, An3
	.byte	W24
	.byte		TIE	, Gn3
	.byte	W96
	.byte	W10
	.byte		EOT	
	.byte	W14
	.byte		N22	
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte		TIE	, Dn3
	.byte	W78
	.byte	BEND	, c_v+1
	.byte	W03
	.byte		c_v+9
	.byte	W03
	.byte		c_v+18
	.byte	W03
	.byte		c_v+27
	.byte	W03
	.byte		c_v+36
	.byte	W03
	.byte		c_v+45
	.byte	W03
	.byte		c_v+53
	.byte	W03
	.byte		c_v+57
	.byte	W84
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte	BEND	, c_v
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	GOTO	
		mPtr	song802_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song802_6
song802_6:	@ 0x082B32F2
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v088
	.byte	PAN	, c_v-32
	.byte	W96
song802_6_1:
	.byte		N28	, An2, v092
	.byte	W30
	.byte		N05	, An2, v020
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N44	, An2, v020
	.byte	W48
	.byte	PEND
song802_6_5:
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte	VOICE	, 100
	.byte		N32	, Gn2, v092
	.byte	W36
	.byte	VOICE	, 101
	.byte		N23	, Gs2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song802_6_1
song802_6_6:
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte		N32	, Bn2, v092
	.byte	W36
	.byte		N23	, As2
	.byte	W24
	.byte	PEND
song802_6_7:
	.byte	VOICE	, 101
	.byte	PAN	, c_v
	.byte		N44	, An2, v092
	.byte	W48
	.byte		N11	, An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte		N32	, An2, v020
	.byte	W36
	.byte	VOICE	, 100
	.byte		N32	, Gn2, v092
	.byte	W36
	.byte	VOICE	, 101
	.byte		N23	, As2
	.byte	W24
song802_6_2:
	.byte	VOICE	, 101
	.byte		N44	, An2, v092
	.byte	W48
	.byte		N11	, An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte	PEND
	.byte		N32	, An2, v020
	.byte	W36
	.byte	VOICE	, 100
	.byte		N32	, As2, v092
	.byte	W36
	.byte	VOICE	, 101
	.byte		N23	
	.byte	W24
	.byte	PATT	
		mPtr	song802_6_2
	.byte		N32	, An2, v020
	.byte	W36
	.byte	VOICE	, 100
	.byte		N32	, Gn2, v092
	.byte	W36
	.byte	VOICE	, 100
	.byte		N23	, As2
	.byte	W24
	.byte	VOICE	, 101
	.byte		N44	, An2
	.byte	W48
	.byte		N11	, An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte			Dn3, v092
	.byte	W12
	.byte		N32	, Dn3, v020
	.byte	W36
	.byte	VOICE	, 100
	.byte		N32	, As2, v092
	.byte	W36
	.byte		N23	, Cn3
	.byte	W24
	.byte	VOICE	, 100
	.byte	PAN	, c_v-32
	.byte		N23	, Fn2
	.byte	W24
	.byte		N11	, Fn2, v020
	.byte	W12
	.byte		N32	, Fn2, v092
	.byte	W36
	.byte		N23	, Fn2, v020
	.byte	W24
song802_6_3:
	.byte	VOICE	, 100
	.byte		N23	, Cn2, v092
	.byte	W24
	.byte		N11	, Cn2, v020
	.byte	W12
	.byte		N32	, Cn2, v092
	.byte	W36
	.byte		N23	, Cn2, v020
	.byte	W24
	.byte	PEND
song802_6_4:
	.byte	VOICE	, 101
	.byte		N23	, Dn2, v092
	.byte	W24
	.byte		N11	, Dn2, v020
	.byte	W12
	.byte		N32	, Dn2, v092
	.byte	W36
	.byte		N23	, Dn2, v020
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song802_6_3
	.byte	VOICE	, 100
	.byte		N44	, Fn2, v092
	.byte	W48
	.byte		N11	, Fn2, v020
	.byte	W12
	.byte			Fn2, v092
	.byte	W12
	.byte		N23	, Fn2, v020
	.byte	W24
	.byte	VOICE	, 101
	.byte		N44	, An2, v092
	.byte	W48
	.byte		N11	, An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte		N23	, An2, v020
	.byte	W24
	.byte	VOICE	, 100
	.byte		N44	, Gn2, v092
	.byte	W48
	.byte		N11	, Gn2, v020
	.byte	W12
	.byte			Gn2, v092
	.byte	W12
	.byte		N23	, Gn2, v020
	.byte	W24
	.byte	VOICE	, 100
	.byte		N17	, Cn3, v092
	.byte	W18
	.byte		N05	, Cn3, v020
	.byte	W06
	.byte	VOICE	, 101
	.byte		N17	, Dn3, v092
	.byte	W18
	.byte		N05	, Dn3, v020
	.byte	W06
	.byte		N17	, En3, v092
	.byte	W18
	.byte		N05	, En3, v020
	.byte	W06
	.byte			En2, v092
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			En3
	.byte	W06
	.byte	VOICE	, 100
	.byte		N23	, Fn2
	.byte	W24
	.byte		N11	, Fn2, v020
	.byte	W12
	.byte		N32	, Fn2, v092
	.byte	W36
	.byte		N23	, Fn2, v020
	.byte	W24
	.byte	PATT	
		mPtr	song802_6_3
	.byte	PATT	
		mPtr	song802_6_4
	.byte	PATT	
		mPtr	song802_6_3
	.byte	VOICE	, 100
	.byte		N44	, Fn2, v092
	.byte	W48
	.byte		N11	, Fn2, v020
	.byte	W12
	.byte		N17	, Fn2, v092
	.byte	W18
	.byte			Fn2, v020
	.byte	W18
	.byte	VOICE	, 101
	.byte		N44	, Gn2, v092
	.byte	W48
	.byte		N11	, Gn2, v020
	.byte	W12
	.byte		N17	, Gn2, v092
	.byte	W18
	.byte			Gn2, v020
	.byte	W18
	.byte	VOICE	, 100
	.byte		N44	, Gs2, v092
	.byte	W48
	.byte		N11	, Gs2, v020
	.byte	W12
	.byte			Gs2, v092
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Gs2, v020
	.byte	W12
	.byte	W96
	.byte	VOICE	, 101
	.byte		N23	, An2, v092
	.byte	W24
	.byte		N11	, An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte		N32	, An2, v020
	.byte	W24
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte			An2, v096
	.byte	W12
	.byte			An2, v100
	.byte	W12
	.byte			An2, v108
	.byte	W12
	.byte	PATT	
		mPtr	song802_6_1
	.byte	PATT	
		mPtr	song802_6_5
	.byte	PATT	
		mPtr	song802_6_1
	.byte	PATT	
		mPtr	song802_6_6
	.byte	PATT	
		mPtr	song802_6_1
	.byte	PATT	
		mPtr	song802_6_5
	.byte	PATT	
		mPtr	song802_6_1
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte		N32	, Bn2, v092
	.byte	W36
	.byte		N23	, As2
	.byte	W23
	.byte	GOTO	
		mPtr	song802_6_7
	.byte	W01
	.byte	FINE

	@********************** Track  7 **********************@

	.global song802_7
song802_7:	@ 0x082B3500
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v086
	.byte	PAN	, c_v+32
	.byte	W96
	.byte	BEND	, c_v+2
	.byte		N28	, An2, v092
	.byte	W30
	.byte		N05	, An2, v020
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N44	, An2, v020
	.byte	W48
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte	VOICE	, 100
	.byte		N32	, Gn2, v092
	.byte	W36
	.byte	VOICE	, 101
	.byte		N23	, Gs2
	.byte	W24
	.byte		N28	, An2
	.byte	W30
	.byte		N05	, An2, v020
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N44	, An2, v020
	.byte	W48
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte		N32	, Bn2, v092
	.byte	W36
	.byte		N23	, As2
	.byte	W24
song802_7_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	GOTO	
		mPtr	song802_7_1
	.byte	FINE

	@********************** Track  8 **********************@

	.global song802_8
song802_8:	@ 0x082B3575
	.byte	VOL	, v100
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_8_6:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 100
	.byte	PAN	, c_v+32
	.byte		N23	, Cn3, v092
	.byte	W24
	.byte		N11	, Cn3, v020
	.byte	W12
	.byte		N32	, Cn3, v092
	.byte	W36
	.byte		N23	, Cn3, v020
	.byte	W24
song802_8_1:
	.byte	VOICE	, 102
	.byte		N23	, Gn2, v092
	.byte	W24
	.byte		N11	, Gn2, v020
	.byte	W12
	.byte		N32	, Gn2, v092
	.byte	W36
	.byte		N23	, Gn2, v020
	.byte	W24
	.byte	PEND
song802_8_2:
	.byte	VOICE	, 101
	.byte		N23	, An2, v092
	.byte	W24
	.byte		N11	, An2, v020
	.byte	W12
	.byte		N32	, An2, v092
	.byte	W36
	.byte		N23	, An2, v020
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song802_8_1
	.byte	VOICE	, 100
	.byte		N44	, As2, v092
	.byte	W48
	.byte		N11	, As2, v020
	.byte	W12
	.byte			As2, v092
	.byte	W12
	.byte		N23	, As2, v020
	.byte	W24
	.byte	VOICE	, 101
	.byte		N44	, En2, v092
	.byte	W48
	.byte		N11	, En2, v020
	.byte	W12
	.byte			En2, v092
	.byte	W12
	.byte		N23	, En2, v020
	.byte	W24
	.byte	VOICE	, 101
	.byte		N44	, Dn2, v092
	.byte	W48
	.byte		N11	, Dn2, v020
	.byte	W12
	.byte			Dn2, v092
	.byte	W12
	.byte		N23	, Dn2, v020
	.byte	W24
	.byte	VOICE	, 101
	.byte		N17	, En2, v092
	.byte	W18
	.byte		N05	, En2, v020
	.byte	W06
	.byte	VOICE	, 100
	.byte		N17	, Fn2, v092
	.byte	W18
	.byte		N05	, Fn2, v020
	.byte	W06
	.byte	VOICE	, 102
	.byte		N17	, Gn2, v092
	.byte	W18
	.byte		N05	, Gn2, v020
	.byte	W06
	.byte	VOICE	, 101
	.byte		N05	, An1, v092
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte	VOICE	, 100
	.byte		N23	, Cn3
	.byte	W24
	.byte		N11	, Cn3, v020
	.byte	W12
	.byte		N32	, Cn3, v092
	.byte	W36
	.byte		N23	, Cn3, v020
	.byte	W24
	.byte	PATT	
		mPtr	song802_8_1
	.byte	PATT	
		mPtr	song802_8_2
	.byte	PATT	
		mPtr	song802_8_1
	.byte	VOICE	, 100
	.byte		N44	, As2, v092
	.byte	W48
	.byte		N11	, As2, v020
	.byte	W12
	.byte		N17	, As2, v092
	.byte	W18
	.byte			As2, v020
	.byte	W18
	.byte	VOICE	, 101
	.byte		N44	, Dn3, v092
	.byte	W48
	.byte		N11	, Dn3, v020
	.byte	W12
	.byte		N17	, Dn3, v092
	.byte	W18
	.byte			Dn3, v020
	.byte	W18
	.byte	VOICE	, 100
	.byte		N44	, Ds3, v092
	.byte	W48
	.byte		N11	, Ds3, v020
	.byte	W12
	.byte			Ds3, v092
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Ds3, v020
	.byte	W12
	.byte	W96
	.byte	VOICE	, 101
	.byte		N23	, Dn3, v092
	.byte	W24
	.byte		N11	, Dn3, v020
	.byte	W12
	.byte			Dn3, v092
	.byte	W12
	.byte			Dn3, v020
	.byte	W12
	.byte			Dn3, v092
	.byte	W12
	.byte		N32	, Dn3, v020
	.byte	W24
	.byte	W12
	.byte		N11	, Dn3, v092
	.byte	W12
	.byte			Dn3, v020
	.byte	W12
	.byte			Dn3, v092
	.byte	W12
	.byte			Dn3, v020
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte			Dn3, v100
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
song802_8_3:
	.byte	BEND	, c_v+2
	.byte		N28	, An2, v092
	.byte	W30
	.byte		N05	, An2, v020
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N44	, An2, v020
	.byte	W48
	.byte	PEND
song802_8_4:
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte	VOICE	, 100
	.byte		N32	, Gn2, v092
	.byte	W36
	.byte	VOICE	, 101
	.byte		N23	, Gs2
	.byte	W24
	.byte	PEND
song802_8_5:
	.byte		N28	, An2, v092
	.byte	W30
	.byte		N05	, An2, v020
	.byte	W06
	.byte		N11	, An2, v092
	.byte	W12
	.byte		N44	, An2, v020
	.byte	W48
	.byte	PEND
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte		N32	, Bn2, v092
	.byte	W36
	.byte		N23	, As2
	.byte	W24
	.byte	PATT	
		mPtr	song802_8_3
	.byte	PATT	
		mPtr	song802_8_4
	.byte	PATT	
		mPtr	song802_8_5
	.byte	W12
	.byte		N11	, An2, v092
	.byte	W12
	.byte			An2, v020
	.byte	W12
	.byte		N32	, Bn2, v092
	.byte	W36
	.byte		N23	, As2
	.byte	W23
	.byte	GOTO	
		mPtr	song802_8_6
	.byte	W01
	.byte	FINE

	@********************** Track  9 **********************@

	.global song802_9
song802_9:	@ 0x082B3711
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v055
	.byte	W96
song802_9_1:
	.byte		N02	, Fn4, v068
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Bn5
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte	PEND
	.byte			En5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte	PATT	
		mPtr	song802_9_1
	.byte		N02	, En5, v068
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
song802_9_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	GOTO	
		mPtr	song802_9_2
	.byte	FINE

	@********************** Track  10 **********************@

	.global song802_10
song802_10:	@ 0x082B37AB
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_10_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 110
	.byte	VOL	, v062
	.byte	BEND	, c_v
	.byte		N52	, En4, v060
	.byte	W60
	.byte		N28	
	.byte	W36
	.byte		N22	, Fn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte		N52	, An3
	.byte	W60
	.byte		N32	, Cn4
	.byte	W36
	.byte		N22	
	.byte	W24
	.byte			As3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte		N68	, Dn3, v080
	.byte	W72
	.byte		N22	, As3
	.byte	W24
	.byte		N32	, An3
	.byte	W36
	.byte			As3
	.byte	W36
	.byte		N22	, An3
	.byte	W24
	.byte		N32	, Bn3
	.byte	W36
	.byte		N22	, Cn4
	.byte	W24
	.byte		N10	, Bn3
	.byte	W12
	.byte		N22	, Dn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte		N44	, Gn4
	.byte	W48
	.byte	VOICE	, 110
	.byte	VOL	, v062
	.byte	BEND	, c_v
	.byte		N52	, En5, v060
	.byte	W60
	.byte		N28	
	.byte	W36
	.byte		N22	, Fn5
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			Cn5
	.byte	W24
	.byte		N52	, An4
	.byte	W60
	.byte		N32	, Cn5
	.byte	W36
	.byte		N22	
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			En5
	.byte	W24
	.byte			Fn5
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	GOTO	
		mPtr	song802_10_1
	.byte	FINE

	@********************** Track  11 **********************@

	.global song802_11
song802_11:	@ 0x082B3837
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_11_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 108
	.byte	VOL	, v086
	.byte	BENDR	, 2
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	MOD	, 127
	.byte		N05	, As6, v064
	.byte	W06
	.byte			Gs6
	.byte	W06
	.byte			Fs6, v060
	.byte	W06
	.byte			En6
	.byte	W06
	.byte			Dn6, v056
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte			As5, v052
	.byte	W06
	.byte			Gs5
	.byte	W06
	.byte			Fs5, v048
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Dn5, v044
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			As4, v040
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Fs4, v036
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Ds6, v064
	.byte	W06
	.byte			Cs6
	.byte	W06
	.byte			Bn5, v060
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Gn5, v056
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Ds5, v052
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Bn4, v048
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4, v044
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Ds4, v040
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Bn3, v036
	.byte	W06
	.byte			An3
	.byte	W06
	.byte	W96
	.byte	W96
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
	.byte	GOTO	
		mPtr	song802_11_1
	.byte	FINE

	@********************** Track  12 **********************@

	.global song802_12
song802_12:	@ 0x082B38C2
	.byte	VOL	, v100
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_12_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03	, Cn3, v032
	.byte	W06
	.byte			Dn3, v036
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			En3, v040
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gs3, v044
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3, v048
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4, v052
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4, v060
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Gs4, v064
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn5, v068
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Dn5, v072
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			En5, v076
	.byte	W06
	.byte			Fs5
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			As5
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	GOTO	
		mPtr	song802_12_1
	.byte	FINE

	@********************** Track  13 **********************@

	.global song802_13
song802_13:	@ 0x082B3940
	.byte	VOL	, v100
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song802_13_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 98
	.byte	LFOS	, 0
	.byte		N02	, Fn4, v068
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Bn5
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Fn5
	.byte	W06
song802_13_2:
	.byte		N02	, En5, v068
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte	PEND
song802_13_1:
	.byte		N02	, Fn4, v068
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Bn5
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte	PEND
	.byte			En5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte	PATT	
		mPtr	song802_13_1
	.byte	PATT	
		mPtr	song802_13_2
	.byte	PATT	
		mPtr	song802_13_1
	.byte		N02	, En5, v068
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W05
	.byte	GOTO	
		mPtr	song802_13_3
	.byte	FINE
    
	mAlignWord
	.global song802
song802:	@ 0x082B3A28
	.byte	13		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup025		@ voicegroup/tone

	mPtr	song802_1		@ track
	mPtr	song802_2		@ track
	mPtr	song802_3		@ track
	mPtr	song802_4		@ track
	mPtr	song802_5		@ track
	mPtr	song802_6		@ track
	mPtr	song802_7		@ track
	mPtr	song802_8		@ track
	mPtr	song802_9		@ track
	mPtr	song802_10		@ track
	mPtr	song802_11		@ track
	mPtr	song802_12		@ track
	mPtr	song802_13		@ track
