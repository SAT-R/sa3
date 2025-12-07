	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song097_1
song097_1:	@ 0x082AEA3C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 127
	.byte	VOL	, v080
	.byte		N11	, Ds1, v100
	.byte		N06	, Ds2, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v100
	.byte		N06	, En2, v127
	.byte	W06
	.byte		N11	, Ds1, v100
	.byte		N06	, Ds2, v127
	.byte	W12
	.byte			Dn1, v100
	.byte		N06	, En2, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N28	, Ds1
	.byte		N06	, Ds2
	.byte	W24
	.byte		N06	
	.byte	W06
	.byte			Dn1, v060
	.byte		N06	, En2, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v036
	.byte	W06
	.byte			Ds2, v127
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			Ds2, v127
	.byte	W06
	.byte			Dn1, v036
	.byte		N06	, En2, v127
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Dn1, v060
	.byte	W06
	.byte			Ds2, v127
	.byte	W06
	.byte			Dn1, v036
	.byte	W06
	.byte			Ds2, v127
	.byte	W06
	.byte			Dn1, v060
	.byte		N06	, En2, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Dn1, v036
	.byte	W06
	.byte			Ds2, v127
	.byte	W06
	.byte			Dn1, v060
	.byte		N06	, En2, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Dn1, v036
	.byte	W12
	.byte		N05	, Ds1, v100
	.byte		N06	, Ds2, v127
	.byte	W06
	.byte			Dn1, v036
	.byte	W06
	.byte			En2, v127
	.byte	W06
	.byte		N32	, Ds1
	.byte		N06	, Ds2
	.byte	W32
	.byte	W03
	.byte	FINE

	@********************** Track  2 **********************@

	.global song097_2
song097_2:	@ 0x082AEABE
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v080
	.byte		N17	, Bn2, v127
	.byte	W18
	.byte		N23	, Dn3
	.byte	W24
	.byte		N40	, Cs3
	.byte	W42
	.byte		N05	, Cs3, v112
	.byte	W06
	.byte			Gs2, v100
	.byte	W06
	.byte		N44	, Cs2, v116
	.byte	W48
	.byte		N23	, Cs3, v120
	.byte	W24
	.byte			Cs2, v112
	.byte	W24
	.byte		N06	, Cs3
	.byte	W12
	.byte		N05	, Cs3, v096
	.byte	W06
	.byte		TIE	, Ds3, v124
	.byte	W78
	.byte	W24
	.byte	W02
	.byte		EOT	
	.byte	FINE

	@********************** Track  3 **********************@

	.global song097_3
song097_3:	@ 0x082AEAEF
	.byte	KEYSH	, 0
	.byte	VOICE	, 100
	.byte	VOL	, v056
	.byte	BENDR	, 59
	.byte		N17	, An3, v072
	.byte	W18
	.byte		N23	, Cn4, v080
	.byte	W24
	.byte		TIE	, Bn3, v076
	.byte	W15
	.byte	VOL	, v047
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v024
	.byte	W06
	.byte		v025
	.byte	W03
	.byte		v025
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v029
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v031
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v037
	.byte	W03
	.byte		v038
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v041
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v047
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v054
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v055
	.byte	W03
	.byte		v056
	.byte	W03
	.byte		N08	, Bn3, v088
	.byte	W12
	.byte		N05	, Bn3, v068
	.byte	W06
	.byte		TIE	, Cs4
	.byte	W66
	.byte	VOL	, v054
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v021
	.byte	W03
	.byte		v018
	.byte	W03
	.byte		v015
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v008
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v005
	.byte	W03
	.byte		v003
	.byte	W03
	.byte		v000
	.byte	FINE

	@********************** Track  4 **********************@

	.global song097_4
song097_4:	@ 0x082AEB94
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v056
	.byte	MOD	, 0
	.byte	LFOS	, 86
	.byte	BENDR	, 53
	.byte		N17	, Cs3, v072
	.byte	W18
	.byte		N23	, En3, v080
	.byte	W24
	.byte		TIE	, Ds3, v076
	.byte	W15
	.byte	VOL	, v047
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v024
	.byte	W06
	.byte		v025
	.byte	W03
	.byte		v025
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v029
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v031
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v037
	.byte	W03
	.byte		v038
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v041
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v047
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v054
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v055
	.byte	W03
	.byte		v056
	.byte	W03
	.byte		N08	, Ds3, v088
	.byte	W12
	.byte		N05	, Ds3, v068
	.byte	W06
	.byte		TIE	, Fn3
	.byte	W66
	.byte	VOL	, v054
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v021
	.byte	W03
	.byte		v018
	.byte	W03
	.byte		v015
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v008
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v005
	.byte	W03
	.byte		v003
	.byte	W03
	.byte		v000
	.byte	FINE

	@********************** Track  5 **********************@

	.global song097_5
song097_5:	@ 0x082AEC3D
	.byte	KEYSH	, 0
	.byte	VOICE	, 102
	.byte	VOL	, v056
	.byte		N17	, En3, v072
	.byte	W18
	.byte		N23	, Gn3, v080
	.byte	W24
	.byte		TIE	, Fs3, v076
	.byte	W15
	.byte	VOL	, v047
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v024
	.byte	W06
	.byte		v025
	.byte	W03
	.byte		v025
	.byte	W03
	.byte		v026
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v028
	.byte	W03
	.byte		v029
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v031
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v032
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v034
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v035
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v037
	.byte	W03
	.byte		v038
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v040
	.byte	W03
	.byte		v041
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v046
	.byte	W03
	.byte		v047
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v049
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v052
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v054
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v055
	.byte	W03
	.byte		v056
	.byte	W03
	.byte		N08	, Fs3, v088
	.byte	W12
	.byte		N05	, Fs3, v068
	.byte	W06
	.byte		TIE	, Gs3
	.byte	W66
	.byte	VOL	, v054
	.byte	W03
	.byte		v051
	.byte	W03
	.byte		v048
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v042
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v036
	.byte	W03
	.byte		v033
	.byte	W03
	.byte		v030
	.byte	W03
	.byte		v027
	.byte	W03
	.byte		v023
	.byte	W03
	.byte		v021
	.byte	W03
	.byte		v018
	.byte	W03
	.byte		v015
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v008
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	VOL	, v005
	.byte	W03
	.byte		v003
	.byte	W03
	.byte		v000
	.byte	FINE

	@********************** Track  6 **********************@

	.global song097_6
song097_6:	@ 0x082AECE0
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v062
	.byte	BENDR	, 12
	.byte	MOD	, 3
	.byte		N17	, Cs4, v112
	.byte	W18
	.byte		N23	, En4, v120
	.byte	W24
	.byte		TIE	, Ds4, v116
	.byte	W54
	.byte	W88
	.byte	W01
	.byte		EOT	
	.byte	W07
	.byte		N08	, Ds4, v127
	.byte	W12
	.byte		N05	, Ds4, v108
	.byte	W06
	.byte		TIE	, Fn4
	.byte	W78
	.byte	W32
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	FINE

	@********************** Track  7 **********************@

	.global song097_7
song097_7:	@ 0x082AED0A
	.byte	KEYSH	, 0
	.byte	VOICE	, 99
	.byte	VOL	, v056
	.byte	BENDR	, 12
	.byte		N17	, An3, v112
	.byte	W18
	.byte		N23	, Cn4, v120
	.byte	W24
	.byte		N28	, Bn3, v116
	.byte	W30
	.byte		N03	, Fs2, v036
	.byte	W03
	.byte			Bn2
	.byte	W03
	.byte			Cs3, v040
	.byte	W03
	.byte			Ds3, v044
	.byte	W03
	.byte			Fs3, v048
	.byte	W03
	.byte			Bn3, v052
	.byte	W03
	.byte			Cs4, v056
	.byte	W03
	.byte			Ds4, v060
	.byte	W03
	.byte			Fs4, v064
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Cs5, v068
	.byte	W03
	.byte			Ds5, v072
	.byte	W03
	.byte			Fs5, v076
	.byte	W03
	.byte			Bn5, v080
	.byte	W03
	.byte			Fs5, v068
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Cs5, v064
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Ds5, v060
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Bn4, v056
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Bn3, v052
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Fs4, v048
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Cs4, v044
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Ds4, v040
	.byte	W03
	.byte			Cs4
	.byte	W03
	.byte			Bn3, v036
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			Ds3
	.byte	W03
	.byte			Bn2, v032
	.byte	W03
	.byte			Fs2
	.byte	W03
	.byte			Ds2, v028
	.byte	W03
	.byte			Bn1
	.byte	W03
	.byte		N08	, Bn3, v108
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		TIE	, Cs4
	.byte	W78
	.byte	W32
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	FINE
    
	mAlignWord
	.global song097
song097:	@ 0x082AED94
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup024		@ voicegroup/tone

	.word	song097_1		@ track
	.word	song097_2		@ track
	.word	song097_3		@ track
	.word	song097_4		@ track
	.word	song097_5		@ track
	.word	song097_6		@ track
	.word	song097_7		@ track
