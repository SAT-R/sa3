	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song014_1
song014_1:	@ 0x0826BADC
	.byte	KEYSH	, 0
song014_1_4:
	.byte	TEMPO	, 63
	.byte	VOICE	, 127
	.byte	VOL	, v100
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song014_1_1:
	.byte		N40	, Cn6, v056
	.byte	W48
	.byte		N40	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song014_1_1
	.byte		N40	, Cn6, v064
	.byte	W48
	.byte		N40	
	.byte	W48
	.byte			Cn6, v076
	.byte	W48
	.byte			Cn6, v084
	.byte	W48
song014_1_2:
	.byte		N23	, Cn6, v096
	.byte	W24
	.byte			Cn6, v064
	.byte	W24
	.byte			Cn6, v096
	.byte	W24
	.byte			Cn6, v064
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song014_1_2
	.byte	PATT	
		mPtr	song014_1_2
	.byte	PATT	
		mPtr	song014_1_2
song014_1_3:
	.byte		N11	, Cn6, v096
	.byte	W12
	.byte			Cn6, v056
	.byte	W12
	.byte			Cn6, v096
	.byte	W12
	.byte			Cn6, v056
	.byte	W12
	.byte			Cn6, v096
	.byte	W12
	.byte			Cn6, v056
	.byte	W12
	.byte			Cn6, v096
	.byte	W12
	.byte			Cn6, v056
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song014_1_3
	.byte	PATT	
		mPtr	song014_1_3
	.byte	PATT	
		mPtr	song014_1_3
	.byte	GOTO	
		mPtr	song014_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song014_2
song014_2:	@ 0x0826BB4C
	.byte	KEYSH	, 0
song014_2_1:
	.byte	VOICE	, 1
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte		N32	, Gn2, v096
	.byte	W36
	.byte		N23	, Cn3, v100
	.byte	W24
	.byte		N32	, En3, v104
	.byte	W36
	.byte			Fs3
	.byte	W36
	.byte			An3
	.byte	W36
	.byte		N23	, Fs3
	.byte	W24
	.byte			Cn4, v108
	.byte	W24
	.byte		N11	, As3, v104
	.byte	W12
	.byte		N23	, Fn3, v096
	.byte	W23
	.byte	VOICE	, 2
	.byte	W01
	.byte		N23	, Cn4, v104
	.byte	W32
	.byte	W03
	.byte	VOICE	, 1
	.byte	W01
	.byte		N44	, Cn3, v108
	.byte	W48
	.byte			Dn3, v112
	.byte	W48
	.byte		N52	, En3
	.byte	W60
	.byte		N32	, Cn4
	.byte	W36
	.byte		N23	, An3, v120
	.byte	W24
	.byte		N11	, Fs3, v108
	.byte	W12
	.byte			Dn4, v116
	.byte	W24
	.byte		N32	, En4
	.byte	W32
	.byte	W03
	.byte	VOICE	, 2
	.byte	W01
	.byte		N32	, Fn4, v124
	.byte	W48
	.byte			An3, v116
	.byte	W48
	.byte			En4, v124
	.byte	W48
	.byte			Gs3, v116
	.byte	W44
	.byte	W03
	.byte	VOICE	, 1
	.byte	W01
	.byte		N92	, En3, v096
	.byte	W96
	.byte			Fs3, v100
	.byte	W96
	.byte			An3
	.byte	W96
	.byte		N44	, Cn4, v104
	.byte	W48
	.byte			Dn4, v112
	.byte	W44
	.byte	W03
	.byte	VOICE	, 1
	.byte	W01
	.byte		N92	, En3, v096
	.byte	W96
	.byte			Fs3, v100
	.byte	W96
	.byte			An3
	.byte	W96
	.byte		N44	, Cn4, v104
	.byte	W48
	.byte			Fn3, v112
	.byte	W48
	.byte	GOTO	
		mPtr	song014_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song014_3
song014_3:	@ 0x0826BBDB
	.byte	KEYSH	, 0
song014_3_6:
	.byte	VOICE	, 7
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte		N09	, Ds4, v120
	.byte	W12
	.byte			Ds4, v080
	.byte	W12
	.byte			Ds4, v048
	.byte	W12
	.byte			Cn4, v108
	.byte	W12
	.byte			Cn4, v068
	.byte	W11
	.byte		N12	, As3, v100
	.byte	W13
	.byte		N11	, Cn4, v112
	.byte	W12
	.byte		N09	, Gn3, v120
	.byte	W12
song014_3_1:
	.byte		N09	, Gn3, v068
	.byte	W12
	.byte			Gn3, v060
	.byte	W12
	.byte			Gn3, v040
	.byte	W36
	.byte			Gn3, v120
	.byte	W12
	.byte			Gn3, v060
	.byte	W12
	.byte			Fs3, v120
	.byte	W12
	.byte	PEND
song014_3_2:
	.byte		N09	, Fs3, v088
	.byte	W12
	.byte			Fs3, v060
	.byte	W12
	.byte			Fs3, v040
	.byte	W12
	.byte			As3, v120
	.byte	W12
	.byte			As3, v060
	.byte	W12
	.byte		N11	, Gs3, v112
	.byte	W12
	.byte			As3, v120
	.byte	W12
	.byte		N09	, Fn3
	.byte	W12
	.byte	PEND
song014_3_3:
	.byte		N09	, Fn3, v088
	.byte	W12
	.byte			Fn3, v060
	.byte	W12
	.byte			Fn3, v040
	.byte	W12
	.byte			En3, v120
	.byte	W12
	.byte			En3, v088
	.byte	W12
	.byte			En3, v060
	.byte	W12
	.byte			En3, v040
	.byte	W24
	.byte	PEND
	.byte			Ds4, v120
	.byte	W12
	.byte			Ds4, v080
	.byte	W12
	.byte			Ds4, v048
	.byte	W12
	.byte			Cn4, v108
	.byte	W12
	.byte			Cn4, v068
	.byte	W11
	.byte		N12	, As3, v100
	.byte	W13
	.byte		N11	, Cn4, v112
	.byte	W12
	.byte		N09	, Gn3, v120
	.byte	W12
	.byte	PATT	
		mPtr	song014_3_1
	.byte	PATT	
		mPtr	song014_3_2
	.byte	PATT	
		mPtr	song014_3_3
	.byte	PAN	, c_v-40
	.byte		N07	, Cs3, v076
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Cs3, v076
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
song014_3_5:
	.byte		N07	, Ds3, v076
	.byte	W12
	.byte			Gn2, v056
	.byte	W12
	.byte			As2, v064
	.byte	W12
	.byte			Gn2, v056
	.byte	W12
	.byte			Ds3, v076
	.byte	W12
	.byte			Gn2, v056
	.byte	W12
	.byte			As2, v064
	.byte	W12
	.byte			Gn2, v056
	.byte	W12
	.byte	PEND
song014_3_4:
	.byte		N07	, Cs3, v076
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Cs3, v076
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte	PEND
	.byte			Cs3, v076
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			Fn2, v056
	.byte	W12
	.byte			Ds3, v076
	.byte	W12
	.byte			Gs2, v056
	.byte	W12
	.byte			As2, v064
	.byte	W12
	.byte			Gs2, v056
	.byte	W12
	.byte	PATT	
		mPtr	song014_3_4
	.byte	PATT	
		mPtr	song014_3_5
	.byte	PATT	
		mPtr	song014_3_4
	.byte		N07	, Cs3, v076
	.byte	W12
	.byte			En2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			En2, v056
	.byte	W12
	.byte			Cs3, v076
	.byte	W12
	.byte			En2, v056
	.byte	W12
	.byte			Gs2, v064
	.byte	W12
	.byte			En2, v056
	.byte	W12
	.byte	GOTO	
		mPtr	song014_3_6
	.byte	FINE

	@********************** Track  4 **********************@

	.global song014_4
song014_4:	@ 0x0826BD04
	.byte	KEYSH	, 0
song014_4_2:
	.byte	VOICE	, 6
	.byte	MOD	, 0
	.byte	VOL	, v062
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song014_4_1:
	.byte	MOD	, 0
	.byte		N23	, An2, v104
	.byte	W24
	.byte		N11	, En3, v112
	.byte	W12
	.byte		N23	, Dn3, v104
	.byte	W12
	.byte	MOD	, 5
	.byte	W12
	.byte		N23	, An3, v112
	.byte	W24
	.byte		N60	, En3, v120
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte	MOD	, 10
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song014_4_1
	.byte	W12
	.byte	MOD	, 10
	.byte	W80
	.byte	W03
	.byte		0
	.byte	W01
	.byte		N23	, Gn3, v112
	.byte	W24
	.byte		N11	, An3
	.byte	W12
	.byte		N23	, Fs3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte		TIE	, Dn3
	.byte	W12
	.byte	W12
	.byte	MOD	, 12
	.byte	W80
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	GOTO	
		mPtr	song014_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song014_5
song014_5:	@ 0x0826BD5C
	.byte	KEYSH	, 0
song014_5_3:
	.byte	VOICE	, 3
	.byte	VOL	, v055
	.byte		N96	, Dn2, v104
	.byte	W96
	.byte			En2, v100
	.byte	W96
song014_5_1:
	.byte		N48	, Gn2, v104
	.byte	W48
	.byte			Gn1, v112
	.byte	W48
	.byte	PEND
song014_5_2:
	.byte		N48	, An2, v104
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	PEND
	.byte		N96	, Dn2
	.byte	W96
	.byte			En2, v100
	.byte	W96
	.byte	PATT	
		mPtr	song014_5_1
	.byte	PATT	
		mPtr	song014_5_2
	.byte		N96	, Dn2, v104
	.byte	W96
	.byte			En2, v100
	.byte	W96
	.byte	PATT	
		mPtr	song014_5_1
	.byte	PATT	
		mPtr	song014_5_2
	.byte		N96	, Dn2, v104
	.byte	W96
	.byte			En2, v100
	.byte	W96
	.byte		N48	, Gn2, v104
	.byte	W48
	.byte			An2, v112
	.byte	W48
	.byte			As2, v104
	.byte	W48
	.byte			As1
	.byte	W48
	.byte	GOTO	
		mPtr	song014_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song014_6
song014_6:	@ 0x0826BDB2
	.byte	KEYSH	, 0
song014_6_3:
	.byte	VOICE	, 4
	.byte	VOL	, v059
	.byte	PAN	, c_v
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W01
	.byte		c_v+40
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Dn5, v116
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte			Dn5, v064
	.byte	W12
	.byte			Dn5, v116
	.byte	W12
	.byte			Dn5, v064
	.byte	W06
	.byte		N12	, En5, v104
	.byte	W12
	.byte		N03	, Dn5, v116
	.byte	W06
	.byte			Dn5, v044
	.byte	W05
song014_6_1:
	.byte	W01
	.byte		N03	, Dn5, v036
	.byte	W06
	.byte			Dn5, v016
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W76
	.byte	W01
	.byte	PEND
song014_6_2:
	.byte	W01
	.byte		N03	, Fs4, v084
	.byte	W06
	.byte			Gn4, v096
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte			Dn5, v116
	.byte	W12
	.byte			Dn5, v084
	.byte	W12
	.byte			Dn5, v064
	.byte	W12
	.byte			Dn5, v116
	.byte	W12
	.byte			Dn5, v064
	.byte	W06
	.byte		N12	, En5, v104
	.byte	W12
	.byte		N03	, Dn5, v116
	.byte	W06
	.byte			Dn5, v044
	.byte	W05
	.byte	PEND
	.byte	PATT	
		mPtr	song014_6_1
	.byte	PATT	
		mPtr	song014_6_2
	.byte	PATT	
		mPtr	song014_6_1
	.byte	PATT	
		mPtr	song014_6_2
	.byte	PATT	
		mPtr	song014_6_1
	.byte	GOTO	
		mPtr	song014_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song014_7
song014_7:	@ 0x0826BE3B
	.byte	KEYSH	, 0
song014_7_3:
	.byte	VOICE	, 5
	.byte	MOD	, 127
	.byte	VOL	, v035
	.byte	PAN	, c_v
	.byte	LFOS	, 127
	.byte	VOL	, v035
	.byte	TUNE	, c_v
	.byte	PAN	, c_v
	.byte		TIE	, Cn7, v084
	.byte	W02
	.byte	VOL	, v034
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
	.byte	W03
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v022
	.byte	W03
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W18
	.byte		v018
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W09
	.byte		v016
	.byte	W01
song014_7_1:
	.byte	W08
	.byte	VOL	, v015
	.byte	W09
	.byte		v014
	.byte	W09
	.byte		v014
	.byte	W09
	.byte		v013
	.byte	W09
	.byte		v012
	.byte	W09
	.byte		v011
	.byte	W09
	.byte		v011
	.byte	W09
	.byte		v010
	.byte	W09
	.byte		v009
	.byte	W09
	.byte		v008
	.byte	W01
	.byte		v007
	.byte	W05
	.byte	PEND
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W96
	.byte	W96
song014_7_2:
	.byte	MOD	, 127
	.byte	VOL	, v035
	.byte	PAN	, c_v
	.byte	LFOS	, 127
	.byte		TIE	, Cn7, v084
	.byte	W02
	.byte	VOL	, v034
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
	.byte	W03
	.byte		v029
	.byte	W02
	.byte		v028
	.byte	W03
	.byte		v027
	.byte	W02
	.byte		v026
	.byte	W03
	.byte		v025
	.byte	W02
	.byte		v025
	.byte	W03
	.byte		v024
	.byte	W02
	.byte		v023
	.byte	W03
	.byte		v022
	.byte	W02
	.byte		v022
	.byte	W03
	.byte		v021
	.byte	W02
	.byte		v020
	.byte	W03
	.byte		v019
	.byte	W18
	.byte		v018
	.byte	W09
	.byte		v018
	.byte	W09
	.byte		v017
	.byte	W09
	.byte		v016
	.byte	W01
	.byte	PEND
	.byte	PATT	
		mPtr	song014_7_1
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song014_7_2
	.byte	PATT	
		mPtr	song014_7_1
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song014_7_2
	.byte	PATT	
		mPtr	song014_7_1
	.byte		EOT	, Cn7
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	GOTO	
		mPtr	song014_7_3
	.byte	FINE
    
	mAlignWord
	.global song014
song014:	@ 0x0826BF0C
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song014_1		@ track
	mPtr	song014_2		@ track
	mPtr	song014_3		@ track
	mPtr	song014_4		@ track
	mPtr	song014_5		@ track
	mPtr	song014_6		@ track
	mPtr	song014_7		@ track
