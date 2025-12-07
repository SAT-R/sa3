	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song078_1
song078_1:	@ 0x082A6560
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 1
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	TEMPO	, 64
	.byte	VOICE	, 1
	.byte	VOL	, v085
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte		N96	, An2, v127
	.byte	W24
	.byte	W72
	.byte		N23	, En3, v124
	.byte	W24
song078_1_4:
	.byte		N48	, Dn3, v127
	.byte	W48
	.byte		N24	, Cs3, v124
	.byte	W24
	.byte		N96	, Dn3, v127
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte		N24	, Fn3
	.byte	W24
song078_1_5:
	.byte		N11	, En3, v127
	.byte	W12
	.byte		N36	, Dn3, v124
	.byte	W36
	.byte		N24	, An2, v120
	.byte	W24
	.byte		N68	, En3, v124
	.byte	W24
	.byte	PEND
song078_1_1:
	.byte	W48
	.byte		N24	, Dn3, v124
	.byte	W24
	.byte			Cs3, v127
	.byte	W24
	.byte	PEND
song078_1_2:
	.byte		N12	, Dn3, v127
	.byte	W12
	.byte		N24	, En3, v124
	.byte	W24
	.byte		N36	, An2, v116
	.byte	W36
	.byte		N72	, Dn3, v124
	.byte	W24
	.byte	PEND
song078_1_3:
	.byte	W48
	.byte		N23	, En3, v124
	.byte	W24
	.byte		N24	, Fn3
	.byte	W24
	.byte	PEND
	.byte		N13	, Gn3, v127
	.byte	W12
	.byte		N24	, En3, v124
	.byte	W24
	.byte		N28	, Dn3, v127
	.byte	W36
	.byte		N92	, Cs3, v124
	.byte	W24
	.byte	W72
	.byte		N48	, Fs3, v127
	.byte	W24
	.byte	W24
	.byte		N44	, Fs2, v116
	.byte	W48
	.byte		N48	, En3, v124
	.byte	W24
	.byte	W24
	.byte			Dn3
	.byte	W48
	.byte			Cs3
	.byte	W24
	.byte	W24
	.byte			Bn2
	.byte	W48
	.byte		N68	, En3
	.byte	W24
	.byte	PATT	
		mPtr	song078_1_1
	.byte	PATT	
		mPtr	song078_1_2
	.byte	PATT	
		mPtr	song078_1_3
song078_1_6:
	.byte		N13	, Gn3, v127
	.byte	W12
	.byte		N24	, En3, v124
	.byte	W24
	.byte		N28	, Dn3, v127
	.byte	W36
	.byte		N96	, An2
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte		N23	, En3, v124
	.byte	W24
	.byte	PATT	
		mPtr	song078_1_4
	.byte	W72
	.byte		N24	, Fn3, v127
	.byte	W24
	.byte	PATT	
		mPtr	song078_1_5
	.byte	PATT	
		mPtr	song078_1_1
	.byte	PATT	
		mPtr	song078_1_2
	.byte	PATT	
		mPtr	song078_1_3
	.byte	PATT	
		mPtr	song078_1_6
	.byte	W72
	.byte		N23	, En3, v124
	.byte	W24
	.byte	PATT	
		mPtr	song078_1_4
	.byte	W72
	.byte		N24	, Fn3, v127
	.byte	W24
	.byte		N11	, En3
	.byte	W12
	.byte		N36	, Dn3, v124
	.byte	W36
	.byte		N23	, An2, v120
	.byte	W24
	.byte		N92	, An2, v124
	.byte	W24
	.byte	W72
	.byte		N24	, En3, v127
	.byte	W24
	.byte		N12	, Dn3
	.byte	W12
	.byte		N24	, Cs3, v124
	.byte	W24
	.byte		N36	, An2, v116
	.byte	W36
	.byte		N72	, Dn3, v124
	.byte	W24
	.byte	PATT	
		mPtr	song078_1_3
	.byte		N13	, Gn3, v127
	.byte	W12
	.byte		N24	, En3, v124
	.byte	W24
	.byte		N28	, Dn3, v127
	.byte	W36
	.byte	PAN	, c_v
	.byte	BEND	, c_v
	.byte		N96	, An2
	.byte	W24
	.byte	W72
	.byte		N23	, En3, v124
	.byte	W24
	.byte	PATT	
		mPtr	song078_1_4
	.byte	W48
	.byte	TEMPO	, 60
	.byte	W24
	.byte		N24	, Fn3, v127
	.byte	W24
	.byte	TEMPO	, 57
	.byte		N11	, En3
	.byte	W12
	.byte		N36	, Dn3, v124
	.byte	W12
	.byte	TEMPO	, 55
	.byte	W24
	.byte	TEMPO	, 50
	.byte		N23	, An2, v120
	.byte	W24
	.byte		TIE	, An2, v124
	.byte	W24
	.byte	W72
	.byte	TEMPO	, 50
	.byte			An1
	.byte	W04
	.byte		EOT	, An2
	.byte	W20
	.byte	W72
	.byte	TEMPO	, 100
	.byte	W04
	.byte			An1
	.byte	W20
	.byte	W72
	.byte	TEMPO	, 35
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte	VOL	, v085
	.byte		N11	, Gn7, v120
	.byte	W24
	.byte	W68
	.byte		N03	
	.byte	W04
	.byte		N11	
	.byte	W24
	.byte	W72
	.byte		N11	
	.byte	W11
	.byte		N11	
	.byte	W13
	.byte	W72
	.byte		N11	
	.byte	W24
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N07	, Ds2
	.byte	W24
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W12
song078_1_7:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
song078_1_8:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N04	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte	VOICE	, 127
	.byte	VOL	, v103
	.byte	PAN	, c_v
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
song078_1_9:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song078_1_7
	.byte	PATT	
		mPtr	song078_1_8
	.byte	PATT	
		mPtr	song078_1_7
	.byte	PATT	
		mPtr	song078_1_9
	.byte	PATT	
		mPtr	song078_1_7
	.byte	PATT	
		mPtr	song078_1_8
	.byte	PATT	
		mPtr	song078_1_7
	.byte	PATT	
		mPtr	song078_1_9
	.byte	PATT	
		mPtr	song078_1_7
	.byte	PATT	
		mPtr	song078_1_8
	.byte	PATT	
		mPtr	song078_1_7
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W56
	.byte	W03
	.byte		N11	
	.byte	W12
	.byte		N07	, Ds2
	.byte	W01
song078_1_13:
	.byte	W24
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte	PEND
song078_1_11:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N04	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte	PEND
song078_1_10:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte	PEND
song078_1_12:
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song078_1_10
	.byte	PATT	
		mPtr	song078_1_11
	.byte	PATT	
		mPtr	song078_1_10
	.byte	PATT	
		mPtr	song078_1_12
	.byte	PATT	
		mPtr	song078_1_10
	.byte	PATT	
		mPtr	song078_1_11
	.byte	PATT	
		mPtr	song078_1_10
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W24
	.byte	W80
	.byte	W03
	.byte		N11	
	.byte	W12
	.byte		N07	, Ds2
	.byte	W01
	.byte	PATT	
		mPtr	song078_1_13
	.byte	PATT	
		mPtr	song078_1_11
	.byte	PATT	
		mPtr	song078_1_10
	.byte	PATT	
		mPtr	song078_1_12
	.byte	PATT	
		mPtr	song078_1_10
	.byte	PATT	
		mPtr	song078_1_11
	.byte	PATT	
		mPtr	song078_1_10
	.byte		N06	, Ds2, v120
	.byte	W07
	.byte		N04	, En2
	.byte	W03
	.byte	VOL	, v085
	.byte	W02
	.byte		N06	, Fn2
	.byte	W05
	.byte	VOL	, v082
	.byte	W02
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W07
	.byte	VOL	, v081
	.byte	W04
	.byte		v077
	.byte	W01
	.byte		N11	
	.byte	W02
	.byte	VOL	, v076
	.byte	W10
	.byte		N06	, Ds2
	.byte	W02
	.byte	VOL	, v074
	.byte	W05
	.byte		N04	, En2
	.byte	W01
	.byte	VOL	, v072
	.byte	W04
	.byte		N06	, Fn2
	.byte	W01
	.byte	VOL	, v071
	.byte	W06
	.byte		N03	, Fs2
	.byte	W02
	.byte	VOL	, v069
	.byte	W03
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W06
	.byte	VOL	, v068
	.byte	W01
	.byte		N04	, Bn2
	.byte	W03
	.byte	VOL	, v066
	.byte	W02
	.byte		v065
	.byte		N06	, Ds2
	.byte	W04
	.byte	VOL	, v063
	.byte	W03
	.byte		v062
	.byte		N04	, En2
	.byte	W04
	.byte	VOL	, v058
	.byte	W01
	.byte		N07	, Fn2
	.byte	W04
	.byte	VOL	, v057
	.byte	W03
	.byte		N03	, Gn7
	.byte	W01
	.byte	VOL	, v055
	.byte	W04
	.byte		v054
	.byte		N11	
	.byte	W03
	.byte	VOL	, v052
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		N11	
	.byte	W04
	.byte	VOL	, v047
	.byte	W05
	.byte		v046
	.byte	W03
	.byte		N06	, Ds2
	.byte	W05
	.byte	VOL	, v044
	.byte	W02
	.byte		N04	, En2
	.byte	W05
	.byte	VOL	, v042
	.byte		N06	, Fn2
	.byte	W05
	.byte	VOL	, v041
	.byte	W02
	.byte		N03	, Fs2
	.byte	W01
	.byte	VOL	, v040
	.byte	W03
	.byte		v037
	.byte	W01
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte	VOL	, v035
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W02
	.byte	VOL	, v033
	.byte	W05
	.byte		v032
	.byte		N04	, En2
	.byte	W04
	.byte	VOL	, v030
	.byte	W01
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W04
	.byte	VOL	, v028
	.byte	W01
	.byte		N11	
	.byte	W03
	.byte	VOL	, v027
	.byte	W06
	.byte		v026
	.byte	W03
	.byte		N11	
	.byte	W01
	.byte	VOL	, v024
	.byte	W05
	.byte		v023
	.byte	W06
	.byte		v021
	.byte		N06	, Ds2
	.byte	W06
	.byte	VOL	, v019
	.byte	W01
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W05
	.byte	VOL	, v018
	.byte	W02
	.byte		N04	, Fs2
	.byte	W05
	.byte	VOL	, v016
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W09
	.byte	VOL	, v014
	.byte	W03
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W02
	.byte	VOL	, v013
	.byte	W03
	.byte		N06	, Fn2
	.byte	W05
	.byte	VOL	, v012
	.byte	W02
	.byte		N03	, Fs2
	.byte	W02
	.byte	VOL	, v010
	.byte	W03
	.byte		N05	, Gn7
	.byte	W07
	.byte		N04	, Gs2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W03
	.byte	VOL	, v009
	.byte	W02
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W05
	.byte		N11	
	.byte	W07
	.byte	VOL	, v007
	.byte	W05
	.byte		N11	
	.byte	W12
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N06	, Fn2
	.byte	W07
	.byte		N03	, Fs2
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	, An2
	.byte	W05
	.byte		N05	, As2
	.byte	W07
	.byte		N04	, Bn2
	.byte	W05
	.byte		N06	, Ds2
	.byte	W07
	.byte		N04	, En2
	.byte	W05
	.byte		N07	, Fn2
	.byte	W07
	.byte		N03	, Gn7
	.byte	W03
	.byte	FINE

	@********************** Track  2 **********************@

	.global song078_2
song078_2:	@ 0x082A6A3E
	.byte	KEYSH	, 0
	.byte	VOICE	, 7
	.byte	PAN	, c_v
	.byte	VOL	, v069
	.byte	BEND	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 7
	.byte	PAN	, c_v
	.byte	VOL	, v069
	.byte	BEND	, c_v
	.byte		N09	, Fn4, v127
	.byte	W12
	.byte			Fn4, v104
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fn4, v127
	.byte	W12
	.byte			Dn4, v096
	.byte	W11
	.byte		N12	, Ds4, v124
	.byte	W13
	.byte		N11	, Fn4, v127
	.byte	W12
	.byte		N09	, As3
	.byte	W12
	.byte			As3, v096
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v064
	.byte	W36
	.byte			Gn3, v127
	.byte	W12
	.byte			An3, v084
	.byte	W12
	.byte			As3, v127
	.byte	W12
	.byte			Fs3, v116
	.byte	W12
	.byte			Fs3, v084
	.byte	W12
	.byte			Fs3, v064
	.byte	W12
	.byte			Fs3, v127
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte		N11	, Cn4, v127
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N09	, Fn4
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v116
	.byte	W12
	.byte			Ds4, v127
	.byte	W12
	.byte			Ds4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Ds4, v064
	.byte	W24
	.byte			Fn4, v127
	.byte	W11
	.byte			Fn4, v104
	.byte	W12
	.byte			Fn4, v076
	.byte	W01
	.byte	W12
	.byte			Fn4, v127
	.byte	W11
	.byte			Dn4, v096
	.byte	W12
	.byte		N12	, Ds4, v124
	.byte	W12
	.byte		N11	, Fn4, v127
	.byte	W13
	.byte		N09	, As3
	.byte	W11
	.byte			As3, v096
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v064
	.byte	W01
	.byte	W36
	.byte			Gn3, v127
	.byte	W11
	.byte			An3, v084
	.byte	W13
	.byte			As3, v127
	.byte	W11
	.byte			Fs3, v116
	.byte	W12
	.byte			Fs3, v084
	.byte	W12
	.byte			Fs3, v064
	.byte	W01
	.byte	W12
	.byte			Fs3, v127
	.byte	W11
	.byte			As3, v084
	.byte	W13
	.byte		N11	, Cn4, v127
	.byte	W11
	.byte			Cs4
	.byte	W13
	.byte		N09	, Fn4
	.byte	W11
	.byte		N09	
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v116
	.byte	W01
	.byte	W12
	.byte			Ds4, v127
	.byte	W11
	.byte			Ds4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Ds4, v064
	.byte	W24
	.byte	W01
	.byte	PAN	, c_v+36
	.byte		N07	, Bn3, v100
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Bn3, v100
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Bn3, v100
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Bn3, v100
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			Gn3, v080
	.byte	W12
	.byte			Fn4, v100
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Fn4, v100
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			An3, v100
	.byte	W12
	.byte			Dn3, v080
	.byte	W12
	.byte			Fn3, v092
	.byte	W12
	.byte			Dn3, v080
	.byte	W12
	.byte			An3, v100
	.byte	W12
	.byte			Dn3, v080
	.byte	W12
	.byte			Fn3, v092
	.byte	W12
	.byte			Dn3, v080
	.byte	W12
	.byte			As3, v100
	.byte	W12
	.byte			Dn3, v080
	.byte	W12
	.byte			Fn3, v092
	.byte	W12
	.byte			Dn3, v080
	.byte	W12
	.byte			As3, v100
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Dn4, v100
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fn3, v080
	.byte	W12
	.byte			Ds4, v100
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Gs3, v092
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Ds4, v100
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Gs3, v092
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Ds4, v100
	.byte	W12
	.byte			Fs3, v080
	.byte	W12
	.byte			Gs3, v092
	.byte	W12
	.byte			Fs3, v080
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	PAN	, c_v
	.byte		N09	, Fn4, v120
	.byte	W11
	.byte			Fn4, v096
	.byte	W12
	.byte			Fn4, v064
	.byte	W01
	.byte	W12
	.byte			Fn4, v120
	.byte	W11
	.byte			Dn4, v084
	.byte	W12
	.byte		N12	, Ds4, v112
	.byte	W12
	.byte		N11	, Fn4, v120
	.byte	W13
	.byte		N09	, As3, v127
	.byte	W11
	.byte			As3, v096
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v064
	.byte	W01
	.byte	W36
	.byte			Gn3, v127
	.byte	W11
	.byte			An3, v084
	.byte	W13
	.byte			As3, v127
	.byte	W11
	.byte			As3, v116
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			As3, v064
	.byte	W01
	.byte	W12
	.byte			As3, v127
	.byte	W11
	.byte			As3, v084
	.byte	W13
	.byte		N11	, Cn4, v127
	.byte	W11
	.byte			Cs4, v120
	.byte	W13
	.byte		N09	, Fn4
	.byte	W11
	.byte			Fn4, v116
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Fn4, v108
	.byte	W01
	.byte	W12
	.byte			Ds4, v120
	.byte	W11
	.byte			Ds4, v104
	.byte	W12
	.byte			Ds4, v084
	.byte	W12
	.byte			Ds4, v064
	.byte	W24
	.byte	W01
	.byte			Dn4, v127
	.byte	W11
	.byte			Dn4, v116
	.byte	W12
	.byte			Dn4, v084
	.byte	W01
song078_2_1:
	.byte	W11
	.byte		N09	, Dn4, v064
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Dn4, v048
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v044
	.byte	W13
	.byte			As3, v127
	.byte	W11
	.byte			As3, v116
	.byte	W12
	.byte			As3, v084
	.byte	W01
	.byte	PEND
song078_2_2:
	.byte	W11
	.byte		N09	, As3, v064
	.byte	W12
	.byte			As3, v056
	.byte	W12
	.byte			As3, v048
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			As3, v044
	.byte	W13
	.byte			Ds4, v127
	.byte	W11
	.byte			Ds4, v116
	.byte	W12
	.byte			Ds4, v084
	.byte	W01
	.byte	PEND
song078_2_3:
	.byte	W11
	.byte		N09	, Ds4, v064
	.byte	W12
	.byte			Ds4, v056
	.byte	W12
	.byte			Ds4, v048
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Ds4, v044
	.byte	W13
	.byte			Fs4, v127
	.byte	W11
	.byte			Fs4, v116
	.byte	W12
	.byte			Fs4, v084
	.byte	W01
	.byte	PEND
song078_2_4:
	.byte	W11
	.byte		N09	, Fs4, v064
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte			Fs4, v048
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Fs4, v044
	.byte	W13
	.byte			Dn4, v127
	.byte	W11
	.byte			Dn4, v116
	.byte	W12
	.byte			Dn4, v084
	.byte	W01
	.byte	PEND
	.byte	PATT	
		mPtr	song078_2_1
	.byte	PATT	
		mPtr	song078_2_2
	.byte	PATT	
		mPtr	song078_2_3
	.byte	PATT	
		mPtr	song078_2_4
	.byte	PATT	
		mPtr	song078_2_1
	.byte	PATT	
		mPtr	song078_2_2
	.byte	PATT	
		mPtr	song078_2_3
	.byte	PATT	
		mPtr	song078_2_4
	.byte	W11
	.byte		N09	, Dn4, v064
	.byte	W12
	.byte			Dn4, v056
	.byte	W12
	.byte			Dn4, v048
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Dn4, v044
	.byte	W13
	.byte		N09	
	.byte	W24
	.byte	W96
	.byte	W72
	.byte	VOICE	, 60
	.byte	VOL	, v062
	.byte	PAN	, c_v-19
	.byte		N04	, Ds7, v052
	.byte	W24
song078_2_5:
	.byte		N04	, Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
song078_2_6:
	.byte		N04	, Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W19
	.byte		N04	
	.byte	W05
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_6
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_6
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte	PATT	
		mPtr	song078_2_5
	.byte		N04	, Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W08
	.byte		N03	
	.byte	W76
song078_2_8:
	.byte	W24
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte	PEND
song078_2_7:
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song078_2_7
song078_2_9:
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W19
	.byte		N04	
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte		N04	, Ds7, v052
	.byte	W24
	.byte		N04	
	.byte	W24
	.byte			Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W08
	.byte		N03	
	.byte	W28
	.byte	W96
	.byte	PATT	
		mPtr	song078_2_8
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_9
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte	PATT	
		mPtr	song078_2_7
	.byte		N04	, Ds7, v052
	.byte	W10
	.byte	VOL	, v062
	.byte	W07
	.byte		v059
	.byte	W07
	.byte		N04	
	.byte	W08
	.byte	VOL	, v057
	.byte	W03
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W09
	.byte		N04	, Ds7, v028
	.byte	W03
	.byte	VOL	, v053
	.byte	W06
	.byte		v052
	.byte	W03
	.byte		N04	, Ds7, v052
	.byte	W01
	.byte	VOL	, v051
	.byte	W09
	.byte		v050
	.byte	W02
	.byte		N04	
	.byte	W18
	.byte	VOL	, v048
	.byte	W01
	.byte		N04	
	.byte	W03
	.byte	VOL	, v047
	.byte	W02
	.byte		N04	
	.byte	W01
	.byte	VOL	, v047
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v044
	.byte	W04
	.byte		v042
	.byte	W05
	.byte		v041
	.byte	W04
	.byte		v040
	.byte	W04
	.byte		v038
	.byte		N04	
	.byte	W04
	.byte	VOL	, v038
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v035
	.byte	W07
	.byte		v034
	.byte	W04
	.byte		v033
	.byte	W03
	.byte		N04	, Ds7, v028
	.byte	W05
	.byte	VOL	, v032
	.byte	W07
	.byte		v031
	.byte		N04	, Ds7, v052
	.byte	W05
	.byte	VOL	, v029
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v026
	.byte	W01
	.byte		N04	
	.byte	W12
	.byte	VOL	, v025
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W02
	.byte	VOL	, v023
	.byte	W05
	.byte		v023
	.byte	W04
	.byte		v022
	.byte	W13
	.byte		v020
	.byte		N04	
	.byte	W04
	.byte	VOL	, v019
	.byte	W05
	.byte		v019
	.byte	W04
	.byte		v017
	.byte	W05
	.byte		v016
	.byte	W06
	.byte		N04	, Ds7, v028
	.byte	W01
	.byte	VOL	, v015
	.byte	W06
	.byte		v014
	.byte	W05
	.byte		N04	, Ds7, v052
	.byte	W05
	.byte	VOL	, v013
	.byte	W07
	.byte		N04	
	.byte	W01
	.byte	VOL	, v011
	.byte	W11
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N04	
	.byte	W22
	.byte	VOL	, v010
	.byte	W02
	.byte		N04	, Ds7, v028
	.byte	W09
	.byte	VOL	, v009
	.byte	W03
	.byte		N04	, Ds7, v052
	.byte	W06
	.byte	VOL	, v008
	.byte	W04
	.byte		v007
	.byte	W02
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W11
	.byte	VOL	, v006
	.byte	W13
	.byte		N04	
	.byte	W07
	.byte	VOL	, v004
	.byte	W17
	.byte		N04	, Ds7, v028
	.byte	W12
	.byte			Ds7, v052
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W04
	.byte	FINE

	@********************** Track  3 **********************@

	.global song078_3
song078_3:	@ 0x082A6EBD
	.byte	KEYSH	, 0
	.byte	VOICE	, 6
	.byte	MOD	, 0
	.byte	VOL	, v066
	.byte	PAN	, c_v+36
	.byte	BEND	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 6
	.byte	MOD	, 0
	.byte	VOL	, v066
	.byte	PAN	, c_v+36
	.byte	BEND	, c_v
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W24
	.byte	W24
	.byte	W01
	.byte		N04	, An4, v127
	.byte	W03
	.byte		N20	, As4
	.byte	W20
	.byte		N22	, Gs4
	.byte	W24
	.byte		N03	, Bn4
	.byte	W04
	.byte		N13	, Cn5
	.byte	W14
	.byte		N17	, Gs4
	.byte	W06
	.byte	W12
	.byte		N24	, Fn4
	.byte	W24
	.byte	W02
	.byte		N23	, Gs4
	.byte	W23
	.byte		N48	, Fn4
	.byte	W32
	.byte	W03
	.byte	W20
	.byte		N04	, Dn4
	.byte	W04
	.byte		N17	, Ds4
	.byte	W17
	.byte		N16	, Cs4
	.byte	W18
	.byte		N11	, Bn3
	.byte	W14
	.byte		N04	, An3
	.byte	W03
	.byte		N14	, As3
	.byte	W14
	.byte		N15	, Gs3
	.byte	W06
	.byte	W12
	.byte			Fs3
	.byte	W15
	.byte		N03	, Dn3
	.byte	W02
	.byte		N16	, Ds3
	.byte	W17
	.byte		N32	, Cs3
	.byte	W48
	.byte	W02
	.byte	W24
	.byte	W01
	.byte		N04	, Fn3
	.byte	W03
	.byte		N20	, Fs3
	.byte	W20
	.byte		N22	, Ds3
	.byte	W24
	.byte		N03	, Gn3
	.byte	W04
	.byte		N13	, Gs3
	.byte	W14
	.byte		N17	, Ds3
	.byte	W06
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte	W02
	.byte		N23	, Bn3
	.byte	W23
	.byte		N48	, En4
	.byte	W32
	.byte	W03
	.byte	W20
	.byte		N04	, As3
	.byte	W04
	.byte		N17	, Bn3
	.byte	W17
	.byte		N16	, An3
	.byte	W18
	.byte		N11	, Fs3
	.byte	W14
	.byte		N04	, Ds3
	.byte	W03
	.byte		N14	, En3
	.byte	W14
	.byte		N15	, Dn3
	.byte	W06
	.byte	W12
	.byte			Bn2
	.byte	W15
	.byte		N03	, Fn2
	.byte	W02
	.byte		N16	, Fs2
	.byte	W17
	.byte		N32	, En2
	.byte	W24
	.byte	W02
	.byte		N09	, Fs4
	.byte	W12
	.byte			Fs4, v104
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fs4, v068
	.byte	W12
	.byte			Ds4, v096
	.byte	W11
	.byte			En4, v124
	.byte	W13
	.byte			Fs4, v127
	.byte	W12
	.byte		N08	, Bn3
	.byte	W12
	.byte		N06	, Bn3, v096
	.byte	W12
	.byte			Bn3, v084
	.byte	W12
	.byte			Bn3, v064
	.byte	W12
	.byte			Bn3, v060
	.byte	W24
	.byte		N09	, Gs3, v127
	.byte	W12
	.byte			As3, v084
	.byte	W12
	.byte			Bn3, v127
	.byte	W12
	.byte		N08	
	.byte	W11
	.byte		N06	, Bn3, v096
	.byte	W12
	.byte			Bn3, v084
	.byte	W01
	.byte	W11
	.byte			Bn3, v064
	.byte	W13
	.byte		N09	, Bn3, v084
	.byte	W12
	.byte		N11	, Cs4, v127
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N09	, Fs4
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4, v116
	.byte	W12
	.byte		N08	, En4, v127
	.byte	W11
	.byte		N06	, En4, v096
	.byte	W12
	.byte			En4, v084
	.byte	W12
	.byte			En4, v064
	.byte	W12
	.byte			En4, v056
	.byte	W13
	.byte	PAN	, c_v+36
	.byte		N09	, Fs4, v124
	.byte	W12
	.byte			Fs4, v084
	.byte	W12
	.byte			Fs4, v056
	.byte	W12
	.byte			Fs4, v048
	.byte	W12
	.byte			Ds4, v076
	.byte	W11
	.byte			En4, v104
	.byte	W13
	.byte			Fs4, v116
	.byte	W12
	.byte		N08	, Bn3, v124
	.byte	W12
	.byte		N06	, Bn3, v076
	.byte	W12
	.byte			Bn3, v064
	.byte	W12
	.byte			Bn3, v044
	.byte	W12
	.byte			Bn3, v040
	.byte	W24
	.byte		N09	, Gs3, v124
	.byte	W12
	.byte			As3, v064
	.byte	W12
	.byte			Bn3, v124
	.byte	W12
	.byte		N08	, Gn3
	.byte	W11
	.byte		N06	, Gn3, v076
	.byte	W12
	.byte			Gn3, v064
	.byte	W01
	.byte	W11
	.byte			Gn3, v048
	.byte	W13
	.byte		N09	, Bn3, v064
	.byte	W12
	.byte		N11	, Cs4, v120
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte		N09	, Fs4
	.byte	W12
	.byte			Fs4, v108
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4, v096
	.byte	W12
	.byte		N08	, En4, v124
	.byte	W11
	.byte		N06	, En4, v076
	.byte	W12
	.byte			En4, v064
	.byte	W12
	.byte			En4, v044
	.byte	W12
	.byte			En4, v036
	.byte	W13
	.byte		N04	, Cn4, v108
	.byte	W02
	.byte		N17	, Cs4, v116
	.byte	W18
	.byte		TIE	, Bn3, v112
	.byte	W04
song078_3_2:
	.byte	VOL	, v068
	.byte	W09
	.byte		v067
	.byte	W05
	.byte		v066
	.byte	W06
	.byte		v065
	.byte	W04
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W05
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W03
	.byte		v058
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v057
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W05
	.byte		v054
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W02
	.byte		v045
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W03
	.byte		v036
	.byte	W01
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v033
	.byte	W02
	.byte		v032
	.byte	W01
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W01
	.byte		v028
	.byte	W03
	.byte	PEND
song078_3_3:
	.byte	VOL	, v027
	.byte	W03
	.byte		v026
	.byte	W04
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W02
	.byte		v019
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v018
	.byte	W10
	.byte		v017
	.byte	W16
	.byte		v016
	.byte	W03
	.byte		v015
	.byte	W14
	.byte		v070
	.byte	W01
	.byte	PEND
	.byte		EOT	, Bn3
	.byte		N04	, Fn4, v104
	.byte	W04
	.byte		N14	, Fs4, v108
	.byte	W14
	.byte		TIE	, En4, v120
	.byte	W06
song078_3_1:
	.byte	W08
	.byte	VOL	, v069
	.byte	W11
	.byte		v068
	.byte	W04
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W04
	.byte		v065
	.byte	W03
	.byte		v064
	.byte	W02
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W01
	.byte		v062
	.byte	W04
	.byte		v061
	.byte	W02
	.byte		v060
	.byte	W02
	.byte		v058
	.byte	W05
	.byte		v057
	.byte	W05
	.byte		v052
	.byte	W01
	.byte		v049
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v047
	.byte	W03
	.byte		v041
	.byte	W05
	.byte		v033
	.byte	W05
	.byte		v033
	.byte	W02
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W04
	.byte		v030
	.byte	W01
	.byte		v029
	.byte	W04
	.byte		v028
	.byte	W04
	.byte		v028
	.byte	W02
	.byte		v027
	.byte	W01
	.byte		v026
	.byte	W01
	.byte		v025
	.byte	W01
	.byte	PEND
song078_3_4:
	.byte	W04
	.byte	VOL	, v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W02
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W02
	.byte		v016
	.byte	W02
	.byte	PEND
	.byte		EOT	, En4
	.byte	VOL	, v014
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		N05	, Cn4, v104
	.byte	W04
	.byte		N15	, Cs4, v108
	.byte	W15
	.byte		N16	, An3, v120
	.byte	W17
	.byte		N13	, Fs3, v127
	.byte	W14
	.byte		N03	, Cn4, v076
	.byte	W03
	.byte		N15	, Cs4, v124
	.byte	W16
	.byte		TIE	, Bn3, v104
	.byte	W04
	.byte	VOL	, v071
	.byte	W01
	.byte		v069
	.byte	W03
	.byte		v068
	.byte	W16
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W08
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W06
	.byte		v059
	.byte	W02
	.byte		v058
	.byte	W04
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W01
	.byte		v052
	.byte	W03
	.byte		v051
	.byte	W01
	.byte		v050
	.byte	W03
	.byte		v049
	.byte	W02
	.byte		v048
	.byte	W03
	.byte		v047
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W04
	.byte		v045
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v043
	.byte	W05
	.byte		v042
	.byte	W03
	.byte		v042
	.byte	W01
	.byte	W01
	.byte		v041
	.byte	W10
	.byte		v040
	.byte	W04
	.byte		v039
	.byte	W02
	.byte		v038
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v037
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W06
	.byte		v031
	.byte	W02
	.byte		v030
	.byte	W06
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v028
	.byte	W24
	.byte		EOT	
	.byte	W01
	.byte		N05	, Fn4
	.byte	W01
	.byte	VOL	, v069
	.byte	W03
	.byte		N12	, Fs4, v092
	.byte	W15
	.byte		TIE	, En4, v100
	.byte	W06
	.byte	PATT	
		mPtr	song078_3_1
	.byte	W04
	.byte	VOL	, v024
	.byte	W01
	.byte		v023
	.byte	W01
	.byte		v023
	.byte	W02
	.byte		v022
	.byte	W01
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W01
	.byte		v019
	.byte	W02
	.byte		v019
	.byte	W01
	.byte		v018
	.byte	W02
	.byte		v016
	.byte	W02
	.byte		v015
	.byte	W32
	.byte	W02
	.byte		v018
	.byte	W02
	.byte		v017
	.byte	W02
	.byte		v016
	.byte	W02
	.byte		v015
	.byte	W03
	.byte		v014
	.byte	W01
	.byte		EOT	, En4
	.byte	W01
	.byte	VOL	, v014
	.byte	W03
	.byte		v068
	.byte	W04
	.byte		N04	, Cn4, v108
	.byte	W02
	.byte		N17	, Cs4, v116
	.byte	W18
	.byte		TIE	, Bn3, v112
	.byte	W04
	.byte	PATT	
		mPtr	song078_3_2
	.byte	PATT	
		mPtr	song078_3_3
	.byte		EOT	, Bn3
	.byte		N04	, Fn4, v104
	.byte	W04
	.byte		N14	, Fs4, v108
	.byte	W14
	.byte		TIE	, En4, v120
	.byte	W06
	.byte	PATT	
		mPtr	song078_3_1
	.byte	PATT	
		mPtr	song078_3_4
	.byte		EOT	, En4
	.byte	VOL	, v014
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		N05	, Cn4, v104
	.byte	W04
	.byte		N15	, Cs4, v108
	.byte	W15
	.byte		N16	, An3, v120
	.byte	W17
	.byte		N13	, Fs3, v127
	.byte	W14
	.byte		N03	, Cn4, v076
	.byte	W03
	.byte		N15	, Cs4, v124
	.byte	W16
	.byte		TIE	, Bn3, v104
	.byte	W04
	.byte	VOL	, v074
	.byte	W01
	.byte	W24
	.byte		v071
	.byte	W03
	.byte		v071
	.byte	W16
	.byte		v070
	.byte	W03
	.byte		v069
	.byte	W02
	.byte		v068
	.byte	W02
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W01
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W08
	.byte		v064
	.byte	W02
	.byte		v063
	.byte	W06
	.byte		v062
	.byte	W02
	.byte		v061
	.byte	W04
	.byte		v060
	.byte	W02
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W03
	.byte		v056
	.byte	W01
	.byte		v055
	.byte	W01
	.byte		v054
	.byte	W03
	.byte		v053
	.byte	W01
	.byte		v052
	.byte	W03
	.byte		v052
	.byte	W01
	.byte	W01
	.byte		v051
	.byte	W03
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v048
	.byte	W04
	.byte		v047
	.byte	W03
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W05
	.byte		v045
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v043
	.byte	W10
	.byte		v042
	.byte	W04
	.byte		v042
	.byte	W02
	.byte		v041
	.byte	W02
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W02
	.byte		v038
	.byte	W02
	.byte		v038
	.byte	W02
	.byte		v037
	.byte	W01
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W06
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W06
	.byte		v032
	.byte	W01
	.byte		v031
	.byte	W01
	.byte		v030
	.byte	W03
	.byte		EOT	
	.byte	W23
	.byte	W72
	.byte	VOICE	, 62
	.byte	VOL	, v086
	.byte	PAN	, c_v-19
	.byte	W12
	.byte		N08	, Fs7, v072
	.byte	W12
song078_3_5:
	.byte	W60
	.byte		N08	, Gn7, v072
	.byte	W24
	.byte			Fs7
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
song078_3_6:
	.byte	W30
	.byte	W01
	.byte		N08	, Gn7, v072
	.byte	W28
	.byte	W01
	.byte		N08	
	.byte	W24
	.byte			Fs7
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_6
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_6
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	PATT	
		mPtr	song078_3_5
	.byte	W24
	.byte		N08	, Gn7, v040
	.byte	W72
	.byte	W36
	.byte			Fs7, v072
	.byte	W60
song078_3_7:
	.byte	W12
	.byte		N08	, Gn7, v072
	.byte	W24
	.byte			Fs7
	.byte	W60
	.byte	PEND
	.byte	PATT	
		mPtr	song078_3_7
song078_3_8:
	.byte	W12
	.byte		N08	, Gn7, v072
	.byte	W24
	.byte			Fs7
	.byte	W42
	.byte	W01
	.byte			Gn7
	.byte	W17
	.byte	PEND
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	W12
	.byte		N08	, Gn7, v072
	.byte	W24
	.byte			Fs7
	.byte	W36
	.byte			Gn7, v040
	.byte	W24
	.byte	W96
	.byte	W36
	.byte			Fs7, v072
	.byte	W60
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_8
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	PATT	
		mPtr	song078_3_7
	.byte	W10
	.byte	VOL	, v086
	.byte	W02
	.byte		N08	, Gn7, v072
	.byte	W04
	.byte	VOL	, v083
	.byte	W15
	.byte		v081
	.byte	W04
	.byte		v078
	.byte	W01
	.byte		N08	, Fs7
	.byte	W02
	.byte	VOL	, v076
	.byte	W12
	.byte		v075
	.byte	W06
	.byte		v073
	.byte	W04
	.byte		v071
	.byte	W09
	.byte		v070
	.byte	W10
	.byte		N08	, Gn7
	.byte	W11
	.byte	VOL	, v068
	.byte	W04
	.byte		v066
	.byte	W02
	.byte		v066
	.byte	W04
	.byte		v064
	.byte	W03
	.byte		v062
	.byte	W03
	.byte		v059
	.byte	W02
	.byte		N08	
	.byte	W04
	.byte	VOL	, v057
	.byte	W04
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v050
	.byte	W03
	.byte		N08	, Fs7
	.byte	W04
	.byte	VOL	, v048
	.byte	W05
	.byte		v047
	.byte	W08
	.byte		v045
	.byte	W06
	.byte		v043
	.byte	W06
	.byte		v042
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v037
	.byte	W12
	.byte		v035
	.byte	W13
	.byte	W02
	.byte		v033
	.byte	W05
	.byte		v033
	.byte	W03
	.byte		v031
	.byte	W02
	.byte		N08	, Gn7
	.byte	W11
	.byte	VOL	, v029
	.byte	W04
	.byte		v028
	.byte	W06
	.byte		v026
	.byte	W03
	.byte		N08	, Fs7
	.byte	W01
	.byte	VOL	, v024
	.byte	W04
	.byte		v023
	.byte	W07
	.byte		v021
	.byte	W06
	.byte		v019
	.byte	W11
	.byte		v018
	.byte	W07
	.byte		v016
	.byte	W24
	.byte	W12
	.byte		N08	, Gn7
	.byte	W24
	.byte			Fs7
	.byte	W09
	.byte	VOL	, v015
	.byte	W12
	.byte		v014
	.byte	W08
	.byte		v012
	.byte	W04
	.byte		v010
	.byte	W24
	.byte	W03
	.byte	W10
	.byte		v009
	.byte	W02
	.byte		N08	, Gn7
	.byte	W18
	.byte	VOL	, v007
	.byte	W06
	.byte		N08	, Fs7
	.byte	W60
	.byte	W12
	.byte			Gn7
	.byte	W08
	.byte	FINE

	@********************** Track  4 **********************@

	.global song078_4
song078_4:	@ 0x082A7423
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v057
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
	.byte	W72
	.byte	VOICE	, 3
	.byte	VOL	, v057
	.byte	PAN	, c_v
	.byte		N96	, Bn1, v120
	.byte	W24
	.byte	W72
	.byte			Gs1, v116
	.byte	W24
	.byte	W72
	.byte		N48	, Gn2, v120
	.byte	W24
song078_4_1:
	.byte	W24
	.byte		N48	, Gn1, v124
	.byte	W48
	.byte			An2, v120
	.byte	W24
	.byte	PEND
song078_4_2:
	.byte	W24
	.byte		N48	, An1, v120
	.byte	W48
	.byte		N96	, Ds2
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte			Gs1
	.byte	W24
	.byte	W72
	.byte		N48	, Gn1
	.byte	W24
song078_4_3:
	.byte	W24
	.byte		N48	, En2, v124
	.byte	W48
	.byte			An2, v120
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			An1
	.byte	W48
	.byte		N96	, Gs1
	.byte	W24
	.byte	W72
	.byte			Fn2, v116
	.byte	W24
	.byte	W72
	.byte		N48	, Cs2, v120
	.byte	W24
	.byte	W24
	.byte			Cs1, v124
	.byte	W48
	.byte			Fs2, v120
	.byte	W24
	.byte	W24
	.byte			Fs1
	.byte	W48
	.byte		N96	, Ds2
	.byte	W24
	.byte	W72
	.byte			Gs1, v116
	.byte	W24
	.byte	W72
	.byte			Gn1, v120
	.byte	W24
	.byte	W72
	.byte		N48	, Gn2
	.byte	W24
	.byte	W24
	.byte			En2
	.byte	W48
	.byte		N96	, Bn1
	.byte	W24
	.byte	W72
	.byte			Gs1, v116
	.byte	W24
	.byte	W72
	.byte		N48	, Gn2, v120
	.byte	W24
	.byte	PATT	
		mPtr	song078_4_1
	.byte	PATT	
		mPtr	song078_4_2
	.byte	W72
	.byte		N96	, Gs1, v116
	.byte	W24
	.byte	W72
	.byte		N48	, Gn1, v120
	.byte	W24
	.byte	PATT	
		mPtr	song078_4_3
	.byte	W24
	.byte		N48	, An1, v120
	.byte	W48
	.byte		N96	, Bn1, v116
	.byte	W24
	.byte	W72
	.byte			An1
	.byte	W24
	.byte	W72
	.byte			Gn1
	.byte	W24
	.byte	W72
	.byte			Fs1
	.byte	W24
	.byte	W72
	.byte			Bn1
	.byte	W24
	.byte	W72
	.byte			An1
	.byte	W24
	.byte	W72
	.byte			Gn1
	.byte	W24
	.byte	W72
	.byte			Fs1
	.byte	W24
	.byte	W72
	.byte			Bn1
	.byte	W24
	.byte	W72
	.byte			An1
	.byte	W24
	.byte	W72
	.byte			Gn1
	.byte	W24
	.byte	W72
	.byte		N44	, Fs1
	.byte	W24
	.byte	W22
	.byte		N05	, Cn2, v104
	.byte	W04
	.byte		N15	, Cs2, v108
	.byte	W15
	.byte		N16	, An1
	.byte	W17
	.byte			Fs1
	.byte	W17
	.byte		TIE	, Bn1
	.byte	W21
	.byte	W96
	.byte	W76
	.byte		EOT	
	.byte	W20
	.byte	W72
	.byte	VOICE	, 46
	.byte	VOL	, v095
	.byte	PAN	, c_v-6
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N44	, Bn1, v120
	.byte	W24
song078_4_4:
	.byte	W24
	.byte		N32	, Gs1, v120
	.byte	W48
	.byte		N42	, Cs2
	.byte	W24
	.byte	PEND
song078_4_5:
	.byte	W24
	.byte		N36	, Gn1, v120
	.byte	W48
	.byte		N40	, Cn2
	.byte	W24
	.byte	PEND
song078_4_6:
	.byte	W24
	.byte		N42	, Fn1, v120
	.byte	W48
	.byte		N48	, En1
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte		N44	, Fs1
	.byte	W48
	.byte			Bn1
	.byte	W24
	.byte	PATT	
		mPtr	song078_4_4
	.byte	PATT	
		mPtr	song078_4_5
	.byte	PATT	
		mPtr	song078_4_6
	.byte	W24
	.byte		N44	, Fs1, v120
	.byte	W48
	.byte		N09	, En2
	.byte	W19
	.byte		N24	, En1
	.byte	W05
	.byte	W24
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, Cs2
	.byte	W19
	.byte		N28	, Cs1
	.byte	W05
	.byte	W24
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, En2
	.byte	W19
	.byte		N28	, En1
	.byte	W05
	.byte	W24
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, Cs2
	.byte	W19
	.byte		N23	, Cs1
	.byte	W05
	.byte	W24
	.byte		N09	, Fs2
	.byte	W24
	.byte		N23	, Fs1
	.byte	W24
	.byte		N09	, En2
	.byte	W19
	.byte		N24	, En1
	.byte	W05
song078_4_7:
	.byte	W24
	.byte		N09	, Ds2, v120
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, Cs2
	.byte	W19
	.byte		N24	, Cs1
	.byte	W05
	.byte	PEND
	.byte	W24
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W28
	.byte	W01
	.byte		N09	, En2
	.byte	W19
	.byte		N24	, En1
	.byte	W05
	.byte	PATT	
		mPtr	song078_4_7
	.byte	W24
	.byte		N56	, En1, v120
	.byte	W72
	.byte	VOICE	, 42
	.byte	VOL	, v090
	.byte	W24
	.byte		N44	, Ds1, v096
	.byte	W48
	.byte			Dn1
	.byte	W24
	.byte	W24
	.byte			Cs1
	.byte	W48
	.byte			Gn1
	.byte	W24
	.byte	W24
	.byte			Cn1
	.byte	W48
	.byte			Fn1
	.byte	W24
	.byte	W24
	.byte			En1
	.byte	W48
	.byte			Fs1
	.byte	W24
song078_4_8:
	.byte	W24
	.byte		N09	, En2, v096
	.byte	W19
	.byte		N24	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W05
	.byte	PEND
	.byte	W24
	.byte		N09	, Cs2
	.byte	W19
	.byte		N28	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W05
	.byte	W24
	.byte		N09	, En2
	.byte	W19
	.byte		N28	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W05
	.byte	W24
	.byte		N09	, Cs2
	.byte	W19
	.byte		N23	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Fs2
	.byte	W24
	.byte		N23	, Fs1
	.byte	W24
	.byte		N09	, En2
	.byte	W19
	.byte		N24	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W05
	.byte	W24
	.byte		N09	, Cs2
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N24	, Ds1
	.byte	W05
	.byte	PATT	
		mPtr	song078_4_8
	.byte	W24
	.byte		N09	, Cs2, v096
	.byte	W19
	.byte		N24	, Cs1
	.byte	W28
	.byte	W01
	.byte		TIE	, En1
	.byte	W04
	.byte	VOL	, v095
	.byte	W03
	.byte		v094
	.byte	W02
	.byte		v093
	.byte	W01
	.byte		v092
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v090
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v088
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v085
	.byte	W02
	.byte		v084
	.byte	W01
	.byte		v083
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v059
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v052
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W02
	.byte		v050
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v047
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v042
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v041
	.byte	W02
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v038
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W02
	.byte		v035
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v033
	.byte	W01
	.byte		v032
	.byte	W03
	.byte		v031
	.byte	W02
	.byte		v029
	.byte	W01
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v026
	.byte	W02
	.byte		v025
	.byte	W06
	.byte		v024
	.byte	W02
	.byte		EOT	
	.byte	W23
	.byte	VOL	, v095
	.byte	W24
	.byte	VOICE	, 46
	.byte		N44	, Bn1, v120
	.byte	W48
	.byte		N32	, Gs1
	.byte	W24
song078_4_9:
	.byte	W24
	.byte		N42	, Cs2, v120
	.byte	W48
	.byte		N36	, Gn1
	.byte	W24
	.byte	PEND
song078_4_10:
	.byte	W24
	.byte		N40	, Cn2, v120
	.byte	W48
	.byte		N42	, Fn1
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte		N48	, En1
	.byte	W48
	.byte		N44	, Fs1
	.byte	W24
	.byte	W24
	.byte			Bn1
	.byte	W48
	.byte		N32	, Gs1
	.byte	W24
	.byte	PATT	
		mPtr	song078_4_9
	.byte	PATT	
		mPtr	song078_4_10
	.byte	W10
	.byte	VOL	, v095
	.byte	W07
	.byte		v090
	.byte	W07
	.byte		N48	, En1, v120
	.byte	W07
	.byte	VOL	, v089
	.byte	W04
	.byte		v085
	.byte	W03
	.byte		v084
	.byte	W13
	.byte		v082
	.byte	W06
	.byte		v081
	.byte	W04
	.byte		v079
	.byte	W09
	.byte		v076
	.byte	W02
	.byte		N44	, Fs1
	.byte	W18
	.byte	VOL	, v075
	.byte	W04
	.byte		v073
	.byte	W02
	.byte	W01
	.byte		v071
	.byte	W03
	.byte		v070
	.byte	W03
	.byte		v068
	.byte	W04
	.byte		v065
	.byte	W05
	.byte		v063
	.byte	W04
	.byte		v062
	.byte	W04
	.byte		v060
	.byte		N09	, En2
	.byte	W04
	.byte	VOL	, v057
	.byte	W02
	.byte		v056
	.byte	W04
	.byte		v054
	.byte	W02
	.byte		v049
	.byte	W07
	.byte		N24	, En1
	.byte	W10
	.byte	VOL	, v049
	.byte	W07
	.byte		v047
	.byte	W05
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v041
	.byte	W01
	.byte		N09	, Ds2
	.byte	W12
	.byte	VOL	, v039
	.byte	W07
	.byte		N24	, Ds1, v112
	.byte	W05
	.byte	W02
	.byte	VOL	, v037
	.byte	W05
	.byte		v035
	.byte	W04
	.byte		v033
	.byte	W12
	.byte		v013
	.byte	W01
	.byte		N09	, Cs2, v120
	.byte	W07
	.byte	VOL	, v008
	.byte	W12
	.byte		N28	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W05
	.byte	W24
	.byte		N09	, En2
	.byte	W19
	.byte		N28	, En1
	.byte	W28
	.byte	W01
	.byte		N09	, Ds2
	.byte	W19
	.byte		N28	, Ds1
	.byte	W05
	.byte	W24
	.byte		N09	, Cs2
	.byte	W19
	.byte		N23	, Cs1
	.byte	W28
	.byte	W01
	.byte		N09	, Fs2
	.byte	W24
	.byte		N23	, Fs1
	.byte	W23
	.byte	FINE

	@********************** Track  5 **********************@

	.global song078_5
song078_5:	@ 0x082A7769
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	MOD	, 127
	.byte	VOL	, v037
	.byte	LFOS	, 127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 5
	.byte	MOD	, 127
	.byte	VOL	, v037
	.byte	LFOS	, 127
	.byte	VOL	, v037
	.byte	TUNE	, c_v
	.byte	PAN	, c_v-31
	.byte		TIE	, Cn7, v112
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
song078_5_1:
	.byte	W01
	.byte	VOL	, v028
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v024
	.byte	W03
	.byte		v023
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v021
	.byte	W03
	.byte		v020
	.byte	W18
	.byte		v019
	.byte	W09
	.byte		v019
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W09
	.byte		v016
	.byte	W09
	.byte		v015
	.byte	W07
	.byte	PEND
song078_5_2:
	.byte	W02
	.byte	VOL	, v014
	.byte	W09
	.byte		v014
	.byte	W09
	.byte		v013
	.byte	W44
	.byte	W01
	.byte		v009
	.byte	W30
	.byte	W01
	.byte	PEND
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
song078_5_3:
	.byte	W72
	.byte	VOL	, v037
	.byte		TIE	, Cn7, v112
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	PATT	
		mPtr	song078_5_3
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	PATT	
		mPtr	song078_5_3
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W72
	.byte	VOL	, v037
	.byte	TUNE	, c_v
	.byte	PAN	, c_v
	.byte		TIE	, Cn7, v112
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	PATT	
		mPtr	song078_5_3
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	PATT	
		mPtr	song078_5_3
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		TIE	, Cn7, v112
	.byte	W02
	.byte	VOL	, v036
	.byte	W03
	.byte		v035
	.byte	W02
	.byte		v034
	.byte	W03
	.byte		v033
	.byte	W02
	.byte		v033
	.byte	W03
	.byte		v032
	.byte	W02
	.byte		v031
	.byte	W03
	.byte		v030
	.byte	W02
	.byte		v029
	.byte	W02
	.byte	PATT	
		mPtr	song078_5_1
	.byte	PATT	
		mPtr	song078_5_2
	.byte	W92
	.byte	W03
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 82
	.byte	VOL	, v100
	.byte	PAN	, c_v
	.byte	LFOS	, 0
	.byte		N30	, Fs3, v120
	.byte	W24
song078_5_4:
	.byte	W07
	.byte		N08	, Ds3, v120
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W12
	.byte		N16	, Bn3
	.byte	W17
	.byte		N23	
	.byte	W24
	.byte	PEND
song078_5_5:
	.byte		N23	, Gs3, v120
	.byte	W24
	.byte		N17	, Gn3
	.byte	W18
	.byte		N28	, En3
	.byte	W30
	.byte			Ds3
	.byte	W24
	.byte	PEND
song078_5_6:
	.byte	W07
	.byte		N08	, Ds3, v120
	.byte	W09
	.byte		N07	, Fs3
	.byte	W08
	.byte		N08	, As3
	.byte	W09
	.byte			Cs4
	.byte	W09
	.byte		N11	, Bn3
	.byte	W12
	.byte		N16	, Gs3
	.byte	W18
	.byte		N44	, Ds4
	.byte	W24
	.byte	PEND
song078_5_7:
	.byte	W24
	.byte		N42	, Dn4, v120
	.byte	W48
	.byte		N30	, Fs3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song078_5_4
	.byte	PATT	
		mPtr	song078_5_5
	.byte	PATT	
		mPtr	song078_5_6
	.byte	PATT	
		mPtr	song078_5_7
	.byte	PATT	
		mPtr	song078_5_4
	.byte	PATT	
		mPtr	song078_5_5
	.byte	PATT	
		mPtr	song078_5_6
	.byte	W24
	.byte		N42	, Dn4, v120
	.byte	W48
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W04
	.byte	W08
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte			Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W04
song078_5_8:
	.byte	W08
	.byte		N14	, Bn3, v120
	.byte	W16
	.byte		N42	
	.byte	W48
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W04
	.byte	PEND
	.byte	W08
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N11	
	.byte	W13
	.byte		N15	, Cs4
	.byte	W16
	.byte		N11	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W04
	.byte	W08
	.byte		N14	, Ds4
	.byte	W16
	.byte		N36	, Gs4
	.byte	W48
	.byte		N07	, Ds4
	.byte	W09
	.byte		N09	, Cs4
	.byte	W11
	.byte		N10	, Bn3
	.byte	W04
	.byte	W08
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W04
	.byte	PATT	
		mPtr	song078_5_8
	.byte	W08
	.byte		N14	, Gs3, v120
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W13
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N10	, Fs4
	.byte	W04
	.byte	W08
	.byte		N15	, Bn3
	.byte	W16
	.byte		N60	, Cs4
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte		N30	, Fs3, v127
	.byte	W30
	.byte	W01
	.byte		N08	, Ds3
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W05
	.byte	W07
	.byte		N16	, Bn3
	.byte	W17
	.byte		N23	
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N17	, Gn3
	.byte	W18
	.byte		N28	, En3
	.byte	W06
	.byte	W24
	.byte			Ds3
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs3
	.byte	W08
	.byte		N08	, As3
	.byte	W09
	.byte			Cs4
	.byte	W09
	.byte		N11	, Bn3
	.byte	W06
	.byte	W06
	.byte		N16	, Gs3
	.byte	W18
	.byte		N44	, Ds4
	.byte	W48
	.byte		N42	, Dn4
	.byte	W24
	.byte	W24
	.byte		N30	, Fs4
	.byte	W30
	.byte	W01
	.byte		N08	, Ds4
	.byte	W09
	.byte		N07	, En4
	.byte	W08
	.byte		N08	, Fs4
	.byte	W09
	.byte		N09	, Gs4
	.byte	W10
	.byte		N11	, As4
	.byte	W05
	.byte	W07
	.byte		N16	, Bn4
	.byte	W17
	.byte		N23	
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N17	, Gn4
	.byte	W18
	.byte		N28	, En4
	.byte	W06
	.byte	W24
	.byte			Ds4
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs4
	.byte	W08
	.byte		N08	, As4
	.byte	W09
	.byte			Cs5
	.byte	W09
	.byte		N11	, Bn4
	.byte	W06
	.byte	W06
	.byte		N16	, Gs4
	.byte	W04
	.byte	VOL	, v100
	.byte	W07
	.byte		v096
	.byte	W07
	.byte		N44	, Ds5
	.byte	W07
	.byte	VOL	, v095
	.byte	W04
	.byte		v090
	.byte	W03
	.byte		v089
	.byte	W13
	.byte		v087
	.byte	W06
	.byte		v085
	.byte	W04
	.byte		v083
	.byte	W09
	.byte		v081
	.byte	W02
	.byte		N42	, Dn5
	.byte	W18
	.byte	VOL	, v080
	.byte	W04
	.byte		v078
	.byte	W02
	.byte		v076
	.byte	W04
	.byte		v074
	.byte	W03
	.byte		v072
	.byte	W04
	.byte		v069
	.byte	W05
	.byte		v066
	.byte	W04
	.byte		v065
	.byte	W04
	.byte		v063
	.byte		N08	, Ds5
	.byte	W04
	.byte	VOL	, v062
	.byte	W02
	.byte		v060
	.byte	W03
	.byte		v057
	.byte		N10	, Cs5
	.byte	W08
	.byte	VOL	, v056
	.byte	W03
	.byte		N11	, Bn4
	.byte	W01
	.byte	VOL	, v054
	.byte	W08
	.byte		v052
	.byte	W03
	.byte		N15	, Gs4
	.byte	W04
	.byte	VOL	, v051
	.byte	W05
	.byte		v048
	.byte	W03
	.byte		v047
	.byte	W03
	.byte		v043
	.byte	W01
	.byte		N11	, Fs4
	.byte	W12
	.byte	VOL	, v041
	.byte		N05	, Bn4
	.byte	W07
	.byte		N12	
	.byte	W05
	.byte	W02
	.byte	VOL	, v039
	.byte	W05
	.byte		v038
	.byte	W01
	.byte		N11	, Cs5
	.byte	W03
	.byte	VOL	, v036
	.byte	W12
	.byte		v034
	.byte	W01
	.byte		N11	, Ds5
	.byte	W04
	.byte	VOL	, v032
	.byte	W05
	.byte		v030
	.byte	W03
	.byte		N07	, En5
	.byte	W01
	.byte	VOL	, v028
	.byte	W05
	.byte		v027
	.byte	W02
	.byte		N11	, Fs5
	.byte	W04
	.byte	VOL	, v025
	.byte	W07
	.byte		v023
	.byte	W01
	.byte		N14	, Bn4
	.byte	W09
	.byte	VOL	, v021
	.byte	W07
	.byte		v019
	.byte		N42	
	.byte	W24
	.byte	W24
	.byte		N08	, Ds5
	.byte	W09
	.byte		N10	, Cs5
	.byte	W11
	.byte		N11	, Bn4
	.byte	W02
	.byte	VOL	, v018
	.byte	W10
	.byte		N15	, Gs4
	.byte	W01
	.byte	VOL	, v015
	.byte	W09
	.byte		v014
	.byte	W04
	.byte		v012
	.byte	W02
	.byte		N11	, Fs4
	.byte	W12
	.byte		N05	, Bn4
	.byte	W07
	.byte		N11	
	.byte	W05
	.byte	W08
	.byte		N15	, Cs5
	.byte	W02
	.byte	VOL	, v010
	.byte	W14
	.byte		N11	, Ds5
	.byte	W07
	.byte	VOL	, v009
	.byte	W05
	.byte		N07	, En5
	.byte	W08
	.byte		N11	, Fs5
	.byte	W12
	.byte		N14	, Ds5
	.byte	W16
	.byte		N36	, Gs5
	.byte	W24
	.byte	W12
	.byte	FINE

	@********************** Track  6 **********************@

	.global song078_6
song078_6:	@ 0x082A7B03
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 82
	.byte	VOL	, v090
	.byte	PAN	, c_v+36
	.byte		N44	, As2, v072
	.byte		N44	, Cs3, v080
	.byte	W24
	.byte	W24
	.byte			An2, v076
	.byte		N44	, Cn3, v092
	.byte	W48
	.byte			Gs2, v088
	.byte		N44	, Bn2, v076
	.byte	W24
	.byte	W24
	.byte			En2, v100
	.byte		N44	, As2, v080
	.byte	W48
	.byte			Fs2, v088
	.byte		N44	, As2, v092
	.byte	W24
	.byte	W24
	.byte			Bn2, v080
	.byte		N44	, Dn3, v092
	.byte	W48
	.byte			Bn2, v108
	.byte		N44	, Ds3, v100
	.byte	W24
song078_6_1:
	.byte	W24
	.byte		N44	, As2, v084
	.byte		N44	, Dn3, v096
	.byte	W48
	.byte			As2, v072
	.byte		N44	, Cs3, v080
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Fs2, v088
	.byte		N44	, Cn3, v092
	.byte	W48
	.byte			Gs2, v088
	.byte		N44	, Bn2, v076
	.byte	W24
	.byte	W24
	.byte			En2, v100
	.byte		N44	, As2, v080
	.byte	W48
	.byte			Fs2, v088
	.byte		N44	, As2, v076
	.byte	W24
	.byte	W24
	.byte			Bn2, v088
	.byte		N44	, Dn3, v108
	.byte	W48
	.byte			Bn2
	.byte		N44	, Ds3, v100
	.byte	W24
	.byte	PATT	
		mPtr	song078_6_1
	.byte	W24
	.byte		N44	, An2, v088
	.byte		N44	, Cn3, v064
	.byte	W48
	.byte			Gs2, v088
	.byte		N44	, Bn2, v076
	.byte	W24
	.byte	W24
	.byte			Gn2, v100
	.byte		N44	, As2, v080
	.byte	W48
	.byte			Fs2, v088
	.byte		N44	, As2, v076
	.byte	W24
	.byte	W24
	.byte			Bn2, v108
	.byte		N44	, Dn3
	.byte	W48
	.byte			Bn2
	.byte		N44	, Ds3, v100
	.byte	W24
	.byte	W24
	.byte			As2, v084
	.byte		N44	, Dn3, v080
	.byte	W48
	.byte			Bn2, v088
	.byte		N44	, Ds3, v104
	.byte	W24
song078_6_2:
	.byte	W24
	.byte		N44	, As2, v108
	.byte		N44	, Cs3, v092
	.byte	W48
	.byte			Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			As2, v092
	.byte		N44	, Cs3, v108
	.byte	W48
	.byte			Bn2, v088
	.byte		N44	, Ds3, v104
	.byte	W24
	.byte	PATT	
		mPtr	song078_6_2
	.byte	W24
	.byte		N44	, As2, v092
	.byte		N44	, Dn3, v108
	.byte	W48
	.byte		N12	, Cs3
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W17
	.byte		N28	, Ds3, v096
	.byte	W06
	.byte	W24
	.byte		N12	, Cs3, v100
	.byte	W01
	.byte		N44	, As2, v084
	.byte	W17
	.byte		N28	, Ds3, v092
	.byte	W30
	.byte		N44	, Gs2, v100
	.byte		N12	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W06
	.byte	W24
	.byte		N44	, As2, v100
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W30
	.byte		N10	, Cs3, v108
	.byte	W01
	.byte		N44	, Bn2, v104
	.byte	W17
	.byte		N28	, Ds3, v096
	.byte	W06
	.byte	W24
	.byte	W01
	.byte		N44	, As2, v084
	.byte		N11	, Cs3, v100
	.byte	W17
	.byte		N28	, Ds3, v092
	.byte	W30
	.byte		N42	, Gs2, v100
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v096
	.byte	W06
	.byte	W24
	.byte		N60	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	W68
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W10
	.byte	VOL	, v090
	.byte	W07
	.byte		v086
	.byte	W14
	.byte		v085
	.byte	W04
	.byte		v081
	.byte	W03
	.byte		v080
	.byte	W13
	.byte		v078
	.byte	W06
	.byte		v076
	.byte	W04
	.byte		v075
	.byte	W08
	.byte		v073
	.byte	W21
	.byte		v071
	.byte	W04
	.byte		v070
	.byte	W02
	.byte		v068
	.byte	W04
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W05
	.byte		v060
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v057
	.byte	W04
	.byte		v055
	.byte	W02
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W08
	.byte		v050
	.byte	W04
	.byte		v048
	.byte	W08
	.byte		v047
	.byte	W07
	.byte		v045
	.byte	W05
	.byte		v043
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v038
	.byte	W13
	.byte		v037
	.byte	W12
	.byte	W02
	.byte		v035
	.byte	W05
	.byte		v033
	.byte	W04
	.byte		v032
	.byte	W12
	.byte		v030
	.byte	W05
	.byte		v028
	.byte	W05
	.byte		v027
	.byte	W04
	.byte		v025
	.byte	W05
	.byte		v023
	.byte	W06
	.byte		v022
	.byte	W07
	.byte		v020
	.byte	W10
	.byte		v019
	.byte	W07
	.byte		v017
	.byte	W24
	.byte	W44
	.byte	W01
	.byte		v015
	.byte	W12
	.byte		v014
	.byte	W09
	.byte		v012
	.byte	W04
	.byte		v010
	.byte	W24
	.byte	W02
	.byte	W10
	.byte		v009
	.byte	W21
	.byte		v007
	.byte	FINE

	@********************** Track  7 **********************@

	.global song078_7
song078_7:	@ 0x082A7CD2
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 82
	.byte	VOL	, v082
	.byte	PAN	, c_v-44
	.byte		N44	, Ds1, v100
	.byte		N44	, Fs2, v084
	.byte	W24
	.byte	W24
	.byte			Dn1, v100
	.byte		N44	, Dn2, v088
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2
	.byte	W24
	.byte	W24
	.byte			Gn1
	.byte		N44	, Cs2, v084
	.byte	W48
	.byte			Cn1, v096
	.byte		N44	, Ds2
	.byte	W24
	.byte	W24
	.byte			Fn1, v100
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte			En1, v104
	.byte		N44	, Gs2, v096
	.byte	W24
	.byte	W24
	.byte			Fs1, v112
	.byte		N44	, En2, v092
	.byte	W48
	.byte			Bn0, v100
	.byte		N44	, Fs2, v084
	.byte	W24
	.byte	W24
	.byte			Gs1, v100
	.byte		N44	, Ds2, v080
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2
	.byte	W24
	.byte	W24
	.byte			Gn1
	.byte		N44	, Cs2, v096
	.byte	W48
	.byte			Cn1
	.byte		N44	, Ds2
	.byte	W24
	.byte	W24
	.byte			Fn1, v108
	.byte		N44	, Gs2, v092
	.byte	W48
	.byte			En1, v104
	.byte		N44	, Gs2, v096
	.byte	W24
	.byte	W24
	.byte			Fs1, v112
	.byte		N44	, En2, v092
	.byte	W48
	.byte			Ds2, v072
	.byte		N44	, Fs2, v084
	.byte	W24
	.byte	W24
	.byte			Ds2, v072
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte			Cs2, v088
	.byte		N44	, En2, v100
	.byte	W24
	.byte	W24
	.byte			Cs2, v096
	.byte		N44	, En2, v084
	.byte	W48
	.byte			Cn2, v096
	.byte		N44	, Ds2
	.byte	W24
	.byte	W24
	.byte			Fn2, v108
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte			En1, v104
	.byte		N44	, En2
	.byte	W24
	.byte	W24
	.byte			Fs1, v100
	.byte		N44	, En2, v076
	.byte	W48
	.byte			En1, v092
	.byte		N44	, Gs2, v104
	.byte	W24
song078_7_1:
	.byte	W24
	.byte		N44	, Ds1, v076
	.byte		N44	, Fs2, v096
	.byte	W48
	.byte			Cs1, v100
	.byte		N44	, En2, v104
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Ds1, v120
	.byte		N44	, Fs2, v104
	.byte	W48
	.byte			En1, v092
	.byte		N44	, Gs2, v104
	.byte	W24
	.byte	PATT	
		mPtr	song078_7_1
	.byte	W24
	.byte		N44	, Fs1, v120
	.byte		N44	, Gs2, v104
	.byte	W48
	.byte			En1, v120
	.byte		N44	, Gs2, v100
	.byte	W24
	.byte	W24
	.byte			Ds1
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte			Cs1, v084
	.byte		N44	, En2, v100
	.byte	W24
	.byte	W24
	.byte			Ds1, v084
	.byte		N44	, Fs2, v100
	.byte	W48
	.byte			En1, v120
	.byte		N44	, Gs2, v100
	.byte	W24
	.byte	W24
	.byte			Ds1
	.byte		N44	, Fs2, v092
	.byte	W48
	.byte			Cs1, v084
	.byte		N40	, En2, v100
	.byte	W24
	.byte	W18
	.byte		N66	, En2, v096
	.byte	W02
	.byte		N60	, Gn2, v104
	.byte	W76
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W10
	.byte	VOL	, v082
	.byte	W07
	.byte		v079
	.byte	W14
	.byte		v077
	.byte	W04
	.byte		v074
	.byte	W03
	.byte		v072
	.byte	W13
	.byte		v071
	.byte	W05
	.byte		v070
	.byte	W05
	.byte		v068
	.byte	W08
	.byte		v066
	.byte	W21
	.byte		v065
	.byte	W04
	.byte		v064
	.byte	W02
	.byte		v062
	.byte	W04
	.byte		v061
	.byte	W03
	.byte		v059
	.byte	W04
	.byte		v056
	.byte	W05
	.byte		v055
	.byte	W04
	.byte		v053
	.byte	W04
	.byte		v052
	.byte	W04
	.byte		v050
	.byte	W02
	.byte		v048
	.byte	W03
	.byte		v047
	.byte	W08
	.byte		v046
	.byte	W04
	.byte		v044
	.byte	W08
	.byte		v042
	.byte	W07
	.byte		v041
	.byte	W05
	.byte		v040
	.byte	W03
	.byte		v038
	.byte	W03
	.byte		v035
	.byte	W13
	.byte		v033
	.byte	W12
	.byte	W02
	.byte		v032
	.byte	W05
	.byte		v031
	.byte	W04
	.byte		v029
	.byte	W12
	.byte		v028
	.byte	W05
	.byte		v026
	.byte	W05
	.byte		v024
	.byte	W04
	.byte		v023
	.byte	W05
	.byte		v022
	.byte	W06
	.byte		v020
	.byte	W06
	.byte		v019
	.byte	W11
	.byte		v017
	.byte	W07
	.byte		v015
	.byte	W24
	.byte	W44
	.byte	W01
	.byte		v014
	.byte	W12
	.byte		v013
	.byte	W08
	.byte		v011
	.byte	W05
	.byte		v009
	.byte	W24
	.byte	W02
	.byte	W10
	.byte		v008
	.byte	W21
	.byte		v007
	.byte	FINE

	@********************** Track  8 **********************@

	.global song078_8
song078_8:	@ 0x082A7E7D
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 107
	.byte	VOL	, v099
	.byte	PAN	, c_v
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
	.byte	W72
	.byte	VOL	, v103
	.byte	W24
	.byte	W24
	.byte		N30	, Fs3, v127
	.byte	W30
	.byte	W01
	.byte		N08	, Ds3
	.byte	W09
	.byte		N07	, En3
	.byte	W08
	.byte		N08	, Fs3
	.byte	W09
	.byte		N09	, Gs3
	.byte	W10
	.byte		N11	, As3
	.byte	W05
	.byte	W07
	.byte		N16	, Bn3
	.byte	W17
	.byte		N23	
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N17	, Gn3
	.byte	W18
	.byte		N28	, En3
	.byte	W06
	.byte	W24
	.byte			Ds3
	.byte	W30
	.byte	W01
	.byte		N08	
	.byte	W09
	.byte		N07	, Fs3
	.byte	W08
	.byte		N08	, As3
	.byte	W09
	.byte			Cs4
	.byte	W09
	.byte		N11	, Bn3
	.byte	W06
	.byte	W06
	.byte		N16	, Gs3
	.byte	W18
	.byte		N44	, Ds4
	.byte	W48
	.byte		N42	, Dn4
	.byte	W24
	.byte	W24
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W05
	.byte	W08
	.byte		N11	, Cs4
	.byte	W16
	.byte			Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W16
	.byte		N42	
	.byte	W24
	.byte	W24
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N11	
	.byte	W05
	.byte	W08
	.byte		N15	, Cs4
	.byte	W16
	.byte		N11	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Ds4
	.byte	W16
	.byte		N36	, Gs4
	.byte	W24
	.byte	W24
	.byte		N07	, Ds4
	.byte	W09
	.byte		N09	, Cs4
	.byte	W11
	.byte		N10	, Bn3
	.byte	W12
	.byte		N15	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W05
	.byte	W08
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N11	, Fs4
	.byte	W12
	.byte		N14	, Bn3
	.byte	W16
	.byte		N42	
	.byte	W24
	.byte	W24
	.byte		N08	, Ds4
	.byte	W09
	.byte		N10	, Cs4
	.byte	W11
	.byte		N11	, Bn3
	.byte	W12
	.byte		N14	, Gs3
	.byte	W16
	.byte		N11	, Fs3
	.byte	W12
	.byte		N05	, Bn3
	.byte	W07
	.byte		N12	
	.byte	W05
	.byte	W08
	.byte		N11	, Cs4
	.byte	W16
	.byte		N10	, Ds4
	.byte	W12
	.byte		N07	, En4
	.byte	W08
	.byte		N10	, Fs4
	.byte	W12
	.byte		N15	, Bn3
	.byte	W16
	.byte		N96	, Cs4
	.byte	W24
	.byte	W10
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W05
	.byte		v078
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v075
	.byte	W02
	.byte		v073
	.byte	W03
	.byte		v071
	.byte	W05
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v042
	.byte	W04
	.byte		v040
	.byte	W01
	.byte		v039
	.byte	W03
	.byte		v037
	.byte	W02
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W16
	.byte	W17
	.byte		v099
	.byte	W78
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W10
	.byte		v099
	.byte	W07
	.byte		v095
	.byte	W14
	.byte		v093
	.byte	W04
	.byte		v089
	.byte	W03
	.byte		v087
	.byte	W13
	.byte		v085
	.byte	W05
	.byte		v084
	.byte	W05
	.byte		v082
	.byte	W08
	.byte		v081
	.byte	W21
	.byte		v078
	.byte	W04
	.byte		v076
	.byte	W02
	.byte		v075
	.byte	W04
	.byte		v073
	.byte	W03
	.byte		v071
	.byte	W04
	.byte		v067
	.byte	W05
	.byte		v066
	.byte	W04
	.byte		v064
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W03
	.byte		v058
	.byte	W03
	.byte		v057
	.byte	W08
	.byte		v055
	.byte	W04
	.byte		v053
	.byte	W08
	.byte		v052
	.byte	W07
	.byte		v050
	.byte	W05
	.byte		v047
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v042
	.byte	W13
	.byte		v041
	.byte	W12
	.byte	W02
	.byte		v038
	.byte	W05
	.byte		v037
	.byte	W04
	.byte		v035
	.byte	W12
	.byte		v033
	.byte	W04
	.byte		v032
	.byte	W06
	.byte		v030
	.byte	W04
	.byte		v028
	.byte	W05
	.byte		v026
	.byte	W06
	.byte		v024
	.byte	W06
	.byte		v023
	.byte	W11
	.byte		v021
	.byte	W07
	.byte		v019
	.byte	W24
	.byte	W44
	.byte	W01
	.byte		v017
	.byte	W12
	.byte		v015
	.byte	W08
	.byte		v014
	.byte	W05
	.byte		v012
	.byte	W24
	.byte	W02
	.byte	W10
	.byte		v010
	.byte	W21
	.byte		v008
	.byte	FINE

	@********************** Track  9 **********************@

	.global song078_9
song078_9:	@ 0x082A8055
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 108
	.byte	VOL	, v099
	.byte	PAN	, c_v+36
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
	.byte	W24
	.byte		N44	, As2, v112
	.byte		N44	, Cs3
	.byte	W48
	.byte			An2
	.byte		N44	, Cn3
	.byte	W24
	.byte	W24
	.byte			Gs2
	.byte		N44	, Bn2
	.byte	W48
	.byte			En2, v120
	.byte		N44	, As2, v112
	.byte	W24
	.byte	W24
	.byte			Fs2
	.byte		N44	, As2
	.byte	W48
	.byte			Bn2
	.byte		N44	, Dn3
	.byte	W24
	.byte	W24
	.byte			Bn2, v127
	.byte		N44	, Ds3, v120
	.byte	W48
	.byte			As2, v112
	.byte		N44	, Dn3, v116
	.byte	W24
song078_9_1:
	.byte	W24
	.byte		N44	, Bn2, v112
	.byte		N44	, Ds3, v124
	.byte	W48
	.byte			As2, v127
	.byte		N44	, Cs3, v112
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Gs2, v124
	.byte		N44	, Bn2, v116
	.byte	W48
	.byte			As2, v112
	.byte		N44	, Cs3, v127
	.byte	W24
	.byte	PATT	
		mPtr	song078_9_1
	.byte	W24
	.byte		N44	, Gs2, v124
	.byte		N44	, Bn2, v116
	.byte	W48
	.byte			As2, v112
	.byte		N44	, Dn3, v127
	.byte	W24
	.byte	W24
	.byte		N12	, Cs3
	.byte	W01
	.byte		N44	, Bn2, v124
	.byte	W17
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N12	, Cs3, v120
	.byte	W01
	.byte		N44	, As2, v112
	.byte	W17
	.byte		N28	, Ds3
	.byte	W06
	.byte	W24
	.byte		N44	, Gs2, v120
	.byte		N12	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N44	, As2, v120
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v116
	.byte	W06
	.byte	W24
	.byte		N10	, Cs3, v127
	.byte	W01
	.byte		N44	, Bn2, v124
	.byte	W17
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte	W01
	.byte		N44	, As2, v112
	.byte		N11	, Cs3, v120
	.byte	W17
	.byte		N28	, Ds3, v112
	.byte	W06
	.byte	W24
	.byte		N42	, Gs2, v120
	.byte		N11	, Cs3
	.byte	W18
	.byte		N28	, Ds3, v116
	.byte	W30
	.byte		N92	, Bn2
	.byte	W02
	.byte			Gn3
	.byte	W22
	.byte	W10
	.byte	VOL	, v090
	.byte	W01
	.byte		v087
	.byte	W05
	.byte		v085
	.byte	W02
	.byte		v085
	.byte	W03
	.byte		v082
	.byte	W02
	.byte		v081
	.byte	W03
	.byte		v078
	.byte	W05
	.byte		v075
	.byte	W03
	.byte		v072
	.byte	W02
	.byte		v071
	.byte	W04
	.byte		v069
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v064
	.byte	W01
	.byte		v063
	.byte	W02
	.byte		v062
	.byte	W03
	.byte		v060
	.byte	W03
	.byte		v059
	.byte	W03
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v054
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W02
	.byte		v047
	.byte	W04
	.byte		v044
	.byte	W01
	.byte		v043
	.byte	W03
	.byte		v041
	.byte	W02
	.byte		v036
	.byte	W01
	.byte		v034
	.byte	W16
	.byte	W17
	.byte		v099
	.byte	W07
	.byte		N44	, As2, v060
	.byte		N44	, Cs3, v072
	.byte	W48
	.byte			Fs2, v076
	.byte		N44	, Cn3, v080
	.byte	W24
	.byte	W24
	.byte			Gs2
	.byte		N44	, Bn2, v068
	.byte	W48
	.byte			En2, v092
	.byte		N44	, As2, v072
	.byte	W24
	.byte	W24
	.byte			Fs2, v080
	.byte		N44	, As2, v068
	.byte	W48
	.byte			Bn2, v076
	.byte		N44	, Dn3, v096
	.byte	W24
	.byte	W24
	.byte			Bn2, v108
	.byte		N44	, Ds3, v100
	.byte	W48
	.byte			As2, v084
	.byte		N44	, Dn3, v096
	.byte	W24
	.byte	W24
	.byte			As2, v060
	.byte		N44	, Cs3, v072
	.byte	W48
	.byte			An2, v076
	.byte		N44	, Cn3, v056
	.byte	W24
	.byte	W24
	.byte			Gs2, v080
	.byte		N44	, Bn2, v068
	.byte	W48
	.byte			Gn2, v088
	.byte		N44	, As2, v072
	.byte	W24
	.byte	W24
	.byte			Fs2, v080
	.byte		N44	, As2, v068
	.byte	W48
	.byte			Bn2, v096
	.byte		N44	, Dn3
	.byte	W24
	.byte	W10
	.byte	VOL	, v099
	.byte	W07
	.byte		v095
	.byte	W07
	.byte		N44	, Bn2, v100
	.byte		N44	, Ds3, v092
	.byte	W07
	.byte	VOL	, v093
	.byte	W04
	.byte		v089
	.byte	W04
	.byte		v087
	.byte	W12
	.byte		v085
	.byte	W06
	.byte		v084
	.byte	W04
	.byte		v082
	.byte	W09
	.byte		v081
	.byte	W02
	.byte		N44	, As2, v076
	.byte		N44	, Dn3, v068
	.byte	W18
	.byte	VOL	, v078
	.byte	W04
	.byte		v076
	.byte	W02
	.byte	W01
	.byte		v075
	.byte	W03
	.byte		v073
	.byte	W03
	.byte		v071
	.byte	W04
	.byte		v067
	.byte	W05
	.byte		v066
	.byte	W04
	.byte		v064
	.byte	W04
	.byte		v062
	.byte		N44	, Bn2, v076
	.byte		N44	, Ds3, v092
	.byte	W04
	.byte	VOL	, v061
	.byte	W02
	.byte		v058
	.byte	W04
	.byte		v057
	.byte	W07
	.byte		v055
	.byte	W04
	.byte		v053
	.byte	W08
	.byte		v052
	.byte	W07
	.byte		v050
	.byte	W05
	.byte		v047
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v042
	.byte	W01
	.byte		N44	, As2, v096
	.byte		N44	, Cs3, v084
	.byte	W12
	.byte	VOL	, v041
	.byte	W12
	.byte	W02
	.byte		v038
	.byte	W05
	.byte		v037
	.byte	W04
	.byte		v035
	.byte	W12
	.byte		v033
	.byte	W01
	.byte		N44	, Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W04
	.byte	VOL	, v032
	.byte	W05
	.byte		v030
	.byte	W04
	.byte		v028
	.byte	W05
	.byte		v026
	.byte	W06
	.byte		v024
	.byte	W07
	.byte		v023
	.byte	W10
	.byte		v021
	.byte	W07
	.byte		v019
	.byte		N44	, As2, v092
	.byte		N44	, Cs3, v108
	.byte	W24
	.byte	W24
	.byte			Bn2, v088
	.byte		N44	, Ds3, v104
	.byte	W22
	.byte	VOL	, v017
	.byte	W11
	.byte		v015
	.byte	W09
	.byte		v014
	.byte	W04
	.byte		v012
	.byte	W02
	.byte		N44	, As2, v108
	.byte		N44	, Cs3, v092
	.byte	W24
	.byte	W10
	.byte	VOL	, v010
	.byte	W14
	.byte		N44	, Gs2, v104
	.byte		N44	, Bn2, v096
	.byte	W07
	.byte	VOL	, v008
	.byte	W40
	.byte	W01
	.byte		N44	, As2, v092
	.byte		N44	, Dn3, v108
	.byte	W24
	.byte	W23
	.byte	FINE

	@********************** Track  10 **********************@

	.global song078_10
song078_10:	@ 0x082A829F
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 108
	.byte	VOL	, v090
	.byte	PAN	, c_v-44
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
	.byte	W24
	.byte		N44	, Ds1, v120
	.byte		N44	, Fs2, v112
	.byte	W48
	.byte			Dn1, v120
	.byte		N44	, Dn2, v112
	.byte	W24
	.byte	W24
	.byte			Cs1, v120
	.byte		N44	, En2
	.byte	W48
	.byte			Gn1
	.byte		N44	, Cs2, v112
	.byte	W24
	.byte	W24
	.byte			Cn1, v116
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn1, v120
	.byte		N44	, Gs2, v116
	.byte	W24
	.byte	W24
	.byte			En1, v124
	.byte		N44	, Gs2, v116
	.byte	W48
	.byte			Fs1, v127
	.byte		N44	, En2, v112
	.byte	W24
song078_10_1:
	.byte	W24
	.byte		N44	, En1, v112
	.byte		N44	, Gs2, v124
	.byte	W48
	.byte			Ds1, v112
	.byte		N44	, Fs2, v116
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Cs1, v120
	.byte		N44	, En2, v124
	.byte	W48
	.byte			Ds1, v127
	.byte		N44	, Fs2, v124
	.byte	W24
	.byte	PATT	
		mPtr	song078_10_1
	.byte	W24
	.byte		N44	, Cs1, v120
	.byte		N44	, En2, v124
	.byte	W48
	.byte			Fs1, v127
	.byte		N44	, Gs2, v124
	.byte	W24
song078_10_2:
	.byte	W24
	.byte		N44	, En1, v127
	.byte		N44	, Gs2, v120
	.byte	W48
	.byte			Ds1
	.byte		N44	, Fs2, v112
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Cs1
	.byte		N44	, En2, v120
	.byte	W48
	.byte			Ds1, v112
	.byte		N44	, Fs2, v120
	.byte	W24
	.byte	PATT	
		mPtr	song078_10_2
	.byte	W24
	.byte		N44	, Cs1, v112
	.byte		N40	, En2, v120
	.byte	W42
	.byte		N92	, En2, v116
	.byte	W02
	.byte		TIE	, Gn2, v124
	.byte	W28
	.byte	W10
	.byte	VOL	, v082
	.byte	W01
	.byte		v079
	.byte	W05
	.byte		v078
	.byte	W02
	.byte		v077
	.byte	W03
	.byte		v075
	.byte	W02
	.byte		v073
	.byte	W02
	.byte		v071
	.byte	W06
	.byte		v067
	.byte	W03
	.byte		v066
	.byte	W02
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W03
	.byte		v061
	.byte	W02
	.byte		v058
	.byte	W02
	.byte		v057
	.byte	W02
	.byte		v057
	.byte	W01
	.byte		v056
	.byte	W05
	.byte		v053
	.byte	W03
	.byte		v052
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v049
	.byte	W02
	.byte		v047
	.byte	W01
	.byte		v046
	.byte	W03
	.byte		v044
	.byte	W02
	.byte		v042
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v040
	.byte	W02
	.byte		v039
	.byte	W02
	.byte		v037
	.byte	W03
	.byte		v033
	.byte	W01
	.byte		v031
	.byte	W16
	.byte	W17
	.byte		v090
	.byte	W07
	.byte		N44	, Bn0, v092
	.byte		N44	, Fs2, v072
	.byte	W48
	.byte			Gs1, v092
	.byte		N44	, Ds2, v072
	.byte	W24
	.byte	W24
	.byte			Cs1, v092
	.byte		N44	, En2, v088
	.byte	W48
	.byte			Gn1, v092
	.byte		N44	, Cs2, v088
	.byte	W24
	.byte	W24
	.byte			Cn1, v084
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn1, v100
	.byte		N44	, Gs2, v080
	.byte	W24
	.byte	W24
	.byte			En1, v104
	.byte		N44	, Gs2, v096
	.byte	W48
	.byte			Fs1, v112
	.byte		N44	, En2, v092
	.byte	W24
	.byte	W24
	.byte			Ds2, v064
	.byte		N44	, Fs2, v072
	.byte	W48
	.byte			Ds2, v060
	.byte		N44	, Fs2, v084
	.byte	W24
	.byte	W24
	.byte			Cs2, v076
	.byte		N44	, En2, v088
	.byte	W48
	.byte			Cs2
	.byte		N44	, En2, v072
	.byte	W24
	.byte	W24
	.byte			Cn2, v084
	.byte		N44	, Ds2
	.byte	W48
	.byte			Fn2, v100
	.byte		N44	, Gs2, v088
	.byte	W24
	.byte	W10
	.byte	VOL	, v090
	.byte	W07
	.byte		v086
	.byte	W07
	.byte		N44	, En1, v092
	.byte		N44	, En2
	.byte	W07
	.byte	VOL	, v085
	.byte	W04
	.byte		v081
	.byte	W04
	.byte		v080
	.byte	W12
	.byte		v078
	.byte	W06
	.byte		v076
	.byte	W04
	.byte		v075
	.byte	W09
	.byte		v073
	.byte	W02
	.byte		N44	, Fs1, v088
	.byte		N44	, En2, v068
	.byte	W18
	.byte	VOL	, v071
	.byte	W04
	.byte		v070
	.byte	W02
	.byte	W01
	.byte		v068
	.byte	W03
	.byte		v066
	.byte	W03
	.byte		v065
	.byte	W04
	.byte		v062
	.byte	W05
	.byte		v060
	.byte	W04
	.byte		v058
	.byte	W04
	.byte		v057
	.byte		N44	, En1, v080
	.byte		N44	, Gs2, v096
	.byte	W04
	.byte	VOL	, v055
	.byte	W02
	.byte		v053
	.byte	W04
	.byte		v052
	.byte	W07
	.byte		v050
	.byte	W04
	.byte		v048
	.byte	W08
	.byte		v047
	.byte	W07
	.byte		v045
	.byte	W05
	.byte		v043
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v038
	.byte	W01
	.byte		N44	, Ds1, v068
	.byte		N44	, Fs2, v088
	.byte	W12
	.byte	VOL	, v037
	.byte	W12
	.byte	W02
	.byte		v035
	.byte	W05
	.byte		v033
	.byte	W04
	.byte		v032
	.byte	W13
	.byte		v030
	.byte		N44	, Cs1, v100
	.byte		N44	, En2, v104
	.byte	W04
	.byte	VOL	, v028
	.byte	W05
	.byte		v027
	.byte	W04
	.byte		v025
	.byte	W05
	.byte		v023
	.byte	W06
	.byte		v022
	.byte	W07
	.byte		v020
	.byte	W10
	.byte		v019
	.byte	W07
	.byte		v017
	.byte		N44	, Ds1, v120
	.byte		N44	, Fs2, v104
	.byte	W24
	.byte	W24
	.byte			En1, v092
	.byte		N44	, Gs2, v104
	.byte	W22
	.byte	VOL	, v015
	.byte	W11
	.byte		v014
	.byte	W09
	.byte		v012
	.byte	W04
	.byte		v010
	.byte	W02
	.byte		N44	, Ds1, v076
	.byte		N44	, Fs2, v096
	.byte	W24
	.byte	W11
	.byte	VOL	, v009
	.byte	W13
	.byte		N44	, Cs1, v100
	.byte		N44	, En2, v104
	.byte	W07
	.byte	VOL	, v007
	.byte	W40
	.byte	W01
	.byte		N44	, Fs1, v120
	.byte		N44	, Gs2, v104
	.byte	W24
	.byte	W23
	.byte	FINE
    
	mAlignWord
	.global song078
song078:	@ 0x082A84CC
	.byte	10		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup014		@ voicegroup/tone

	mPtr	song078_1		@ track
	mPtr	song078_2		@ track
	mPtr	song078_3		@ track
	mPtr	song078_4		@ track
	mPtr	song078_5		@ track
	mPtr	song078_6		@ track
	mPtr	song078_7		@ track
	mPtr	song078_8		@ track
	mPtr	song078_9		@ track
	mPtr	song078_10		@ track
