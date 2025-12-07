	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song805_1
song805_1:	@ 0x082B3FEC
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
	.byte	W12
	.byte		N03	, En2, v120
	.byte	W06
	.byte		N05	, En2, v127
	.byte	W05
	.byte		N06	, Ds2
	.byte	W09
	.byte			En2
	.byte	W01
	.byte		N05	, Ds1, v100
	.byte	W06
	.byte		N06	, Dn1, v036
	.byte	W06
	.byte			En2, v127
	.byte	W06
	.byte		N32	, Ds1
	.byte		N06	, Ds2
	.byte	W03
	.byte	W32
	.byte	FINE

	@********************** Track  2 **********************@

	.global song805_2
song805_2:	@ 0x082B4036
	.byte	KEYSH	, 0
	.byte	VOICE	, 90
	.byte	VOL	, v080
	.byte		N17	, Bn2, v127
	.byte	W18
	.byte		N23	, Dn3
	.byte	W24
	.byte		N32	, Cs3
	.byte	W32
	.byte	W01
	.byte		N06	, Cs3, v112
	.byte	W12
	.byte		N05	, Cs3, v096
	.byte	W06
	.byte		TIE	, Ds3, v124
	.byte	W03
	.byte	W96
	.byte	W05
	.byte		EOT	
	.byte	FINE

	@********************** Track  3 **********************@

	.global song805_3
song805_3:	@ 0x082B4057
	.byte	KEYSH	, 0
	.byte	VOICE	, 100
	.byte	VOL	, v056
	.byte	BENDR	, 59
	.byte		N17	, An3, v072
	.byte	W18
	.byte		N23	, Cn4, v080
	.byte	W24
	.byte		N30	, Bn3, v076
	.byte	W15
	.byte	VOL	, v052
	.byte	W03
	.byte		v044
	.byte	W03
	.byte		v034
	.byte	W08
	.byte		v059
	.byte	W04
	.byte		N08	, Bn3, v088
	.byte	W12
	.byte		N05	, Bn3, v068
	.byte	W06
	.byte		TIE	, Cs4
	.byte	W03
	.byte	W60
	.byte	W03
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

	.global song805_4
song805_4:	@ 0x082B40AB
	.byte	KEYSH	, 0
	.byte	VOICE	, 101
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte	VOL	, v056
	.byte	MOD	, 0
	.byte	LFOS	, 86
	.byte	BENDR	, 53
	.byte		N17	, Cs3, v072
	.byte	W18
	.byte		N23	, En3, v080
	.byte	W24
	.byte		N30	, Ds3, v076
	.byte	W15
	.byte	VOL	, v049
	.byte	W03
	.byte		v039
	.byte	W03
	.byte		v034
	.byte	W08
	.byte		v054
	.byte	W04
	.byte		N08	, Ds3, v088
	.byte	W12
	.byte		N05	, Ds3, v068
	.byte	W06
	.byte		TIE	, Fn3
	.byte	W03
	.byte	W60
	.byte	W03
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

	.global song805_5
song805_5:	@ 0x082B4107
	.byte	KEYSH	, 0
	.byte	VOICE	, 102
	.byte	VOL	, v062
	.byte	PAN	, c_v-44
	.byte	VOL	, v056
	.byte		N17	, En3, v072
	.byte	W18
	.byte		N23	, Gn3, v080
	.byte	W24
	.byte		N28	, Fs3, v076
	.byte	W15
	.byte	VOL	, v051
	.byte	W03
	.byte		v045
	.byte	W03
	.byte		v056
	.byte	W12
	.byte		N08	, Fs3, v088
	.byte	W12
	.byte		N05	, Fs3, v068
	.byte	W06
	.byte		TIE	, Gs3, v080
	.byte	W03
	.byte	W60
	.byte	W03
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
    
	.global song805_6
song805_6:	@ 0x082B415C
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v062
	.byte	BENDR	, 12
	.byte	MOD	, 3
	.byte		N17	, Cs4, v112
	.byte	W18
	.byte		N23	, En4, v120
	.byte	W24
	.byte		N28	, Ds4, v116
	.byte	W32
	.byte	W01
	.byte		N08	, Ds4, v127
	.byte	W12
	.byte		N05	, Ds4, v108
	.byte	W06
	.byte		TIE	, Fn4
	.byte	W03
	.byte	W96
	.byte	W14
	.byte		EOT	
	.byte	W01
	.byte	FINE

	@********************** Track  7 **********************@

	.global song805_7
song805_7:	@ 0x082B4183
	.byte	KEYSH	, 0
	.byte	VOICE	, 99
	.byte	VOL	, v056
	.byte	BENDR	, 12
	.byte		N17	, An3, v112
	.byte	W18
	.byte		N23	, Cn4, v120
	.byte	W24
	.byte		N28	, Bn3, v116
	.byte	W32
	.byte	W01
	.byte		N08	, Bn3, v108
	.byte	W12
	.byte		N05	
	.byte	W09
	.byte		N03	, Gs2, v072
	.byte	W03
	.byte			Bn2, v036
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
	.byte	FINE
    
	mAlignWord
	.global song805
song805:	@ 0x082B4208
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup025		@ voicegroup/tone

	mPtr	song805_1		@ track
	mPtr	song805_2		@ track
	mPtr	song805_3		@ track
	mPtr	song805_4		@ track
	mPtr	song805_5		@ track
	mPtr	song805_6		@ track
	mPtr	song805_7		@ track
