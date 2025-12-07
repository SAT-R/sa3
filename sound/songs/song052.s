	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song052_1
song052_1:	@ 0x0828F870
	.byte	KEYSH	, 0
	.byte	TEMPO	, 50
	.byte	VOICE	, 127
	.byte	VOL	, v085
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	TEMPO	, 75
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	TEMPO	, 80
	.byte		N96	, As4, v108
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
song052_1_1:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
song052_1_2:
	.byte		N92	, As4, v108
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_1_1
song052_1_3:
	.byte		N96	, As4, v108
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_2
	.byte	PATT	
		mPtr	song052_1_1
song052_1_7:
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
song052_1_4:
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_1_5:
	.byte		N10	, Gn7, v127
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song052_1_5
	.byte	PATT	
		mPtr	song052_1_5
	.byte		N10	, Gn7, v127
	.byte	W24
	.byte		N10	
	.byte	W24
	.byte			En4
	.byte		N10	, Gn7
	.byte	W12
	.byte			En4
	.byte		N10	, Gn7
	.byte	W12
	.byte		N04	, En4
	.byte		N10	, Gn7
	.byte	W06
	.byte		N04	, En4
	.byte	W06
	.byte		N04	
	.byte		N10	, Gn7
	.byte	W06
	.byte		N04	, En4
	.byte	W05
	.byte		N96	, As4, v108
	.byte	W01
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_4
	.byte	PATT	
		mPtr	song052_1_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, As4, v108
	.byte		N10	, Gn7, v127
	.byte	W48
	.byte		N10	
	.byte	W48
song052_1_6:
	.byte		N10	, Gn7, v127
	.byte	W48
	.byte		N10	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		mPtr	song052_1_6
	.byte		N10	, Gn7, v127
	.byte	W48
	.byte		N10	
	.byte	W24
	.byte		N04	, En4
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte	PATT	
		mPtr	song052_1_3
	.byte	PATT	
		mPtr	song052_1_1
	.byte	PATT	
		mPtr	song052_1_2
	.byte	PATT	
		mPtr	song052_1_1
	.byte		N48	, As4, v108
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PATT	
		mPtr	song052_1_1
	.byte		N44	, As4, v108
	.byte		N10	, Gn7, v127
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn7
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PATT	
		mPtr	song052_1_1
	.byte	GOTO	
		mPtr	song052_1_7
	.byte	FINE

	@********************** Track  2 **********************@

	.global song052_2
song052_2:	@ 0x0828FA69
	.byte	KEYSH	, 0
	.byte	VOICE	, 28
	.byte	VOL	, v085
	.byte		N68	, Gs2, v127
	.byte		N68	, Gs3
	.byte	W72
	.byte		N92	, Gn2
	.byte		N92	, Gn3
	.byte	W72
	.byte	W72
	.byte	W48
	.byte		N24	, An2
	.byte		N24	, An3
	.byte	W24
	.byte		N96	, Gs2
	.byte		N96	, Gs3
	.byte	W96
song052_2_1:
	.byte	W72
	.byte		N24	, An2, v127
	.byte		N24	, An3
	.byte	W24
	.byte	PEND
	.byte		N96	, Gs2
	.byte		N96	, Gs3
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
song052_2_2:
	.byte	W72
	.byte		N24	, Gs2, v127
	.byte		N24	, Gs3
	.byte	W24
	.byte	PEND
song052_2_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96	, Gs2, v127
	.byte		N96	, Gs3
	.byte	W96
	.byte			An2
	.byte		N96	, An3
	.byte	W96
	.byte			Gs2
	.byte		N96	, Gs3
	.byte	W96
	.byte			An2
	.byte		N96	, An3
	.byte	W96
	.byte			Gs2
	.byte	W96
	.byte			An2
	.byte	W96
	.byte			As2
	.byte	W96
	.byte			Cn3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte			Gs2
	.byte		N96	, Gs3
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N96	, Gs2, v127
	.byte		N96	, Gs3
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_1
	.byte		N48	, Gs2, v127
	.byte	W96
	.byte	PATT	
		mPtr	song052_2_2
	.byte	GOTO	
		mPtr	song052_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song052_3
song052_3:	@ 0x0828FB4F
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v-40
	.byte		N68	, Cn3, v127
	.byte	W72
	.byte		TIE	, Cs3
	.byte	W12
	.byte	VOL	, v075
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v044
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v020
	.byte	W02
	.byte		v021
	.byte	W02
	.byte		v022
	.byte	W02
	.byte		v022
	.byte	W02
	.byte		v023
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v025
	.byte	W02
	.byte		v026
	.byte	W02
	.byte		v026
	.byte	W02
	.byte		v027
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v029
	.byte	W02
	.byte		v030
	.byte	W02
	.byte		v030
	.byte	W02
	.byte		v031
	.byte	W02
	.byte		v032
	.byte	W02
	.byte		v032
	.byte	W02
	.byte		v033
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v035
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v037
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v040
	.byte	W02
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W02
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W02
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v048
	.byte	W02
	.byte		v049
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v054
	.byte	W02
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v082
	.byte	W44
	.byte	W01
	.byte		EOT	
	.byte	W24
	.byte	W02
	.byte	VOL	, v082
	.byte	PAN	, c_v-40
	.byte		N18	, Cs3, v124
	.byte	W01
song052_3_9:
	.byte	W23
	.byte		N18	, Cs3, v124
	.byte	W24
	.byte			Cn3
	.byte	W48
	.byte	W01
	.byte	PEND
song052_3_10:
	.byte	W92
	.byte	W03
	.byte		N18	, Bn2, v124
	.byte	W01
	.byte	PEND
song052_3_11:
	.byte	W23
	.byte		N18	, Bn2, v124
	.byte	W24
	.byte			As2
	.byte	W48
	.byte	W01
	.byte	PEND
song052_3_1:
	.byte	W92
	.byte	W02
	.byte		N18	, Cs3, v124
	.byte	W02
	.byte	PEND
song052_3_2:
	.byte	W22
	.byte		N18	, Cs3, v124
	.byte	W24
	.byte			Cn3
	.byte	W48
	.byte	W02
	.byte	PEND
song052_3_3:
	.byte	W92
	.byte	W02
	.byte		N18	, Bn2, v124
	.byte	W02
	.byte	PEND
song052_3_4:
	.byte	W22
	.byte		N18	, Bn2, v124
	.byte	W24
	.byte			As2
	.byte	W48
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song052_3_1
	.byte	PATT	
		mPtr	song052_3_2
	.byte	PATT	
		mPtr	song052_3_3
	.byte	PATT	
		mPtr	song052_3_4
	.byte	W96
song052_3_12:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	VOICE	, 35
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W01
	.byte		N92	, En3, v124
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte			Cs3
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Gs3
	.byte	W96
	.byte			An3
	.byte	W96
	.byte			Bn3
	.byte	W92
	.byte	W03
	.byte	VOICE	, 33
	.byte	VOL	, v076
	.byte	PAN	, c_v-40
	.byte	W01
	.byte		N92	, Bn2
	.byte	W92
	.byte	W01
	.byte			Cn3
	.byte	W03
song052_3_5:
	.byte	W92
	.byte	W01
	.byte		N92	, Bn2, v124
	.byte	W03
	.byte	PEND
song052_3_6:
	.byte	W92
	.byte	W01
	.byte		N92	, Cn3, v124
	.byte	W03
	.byte	PEND
	.byte	PATT	
		mPtr	song052_3_5
	.byte	PATT	
		mPtr	song052_3_6
	.byte	PATT	
		mPtr	song052_3_5
	.byte	PATT	
		mPtr	song052_3_6
song052_3_7:
	.byte	W92
	.byte	W02
	.byte		N92	, Ds3, v124
	.byte	W02
	.byte	PEND
song052_3_8:
	.byte	W92
	.byte	W02
	.byte		N92	, En3, v124
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song052_3_7
	.byte	PATT	
		mPtr	song052_3_8
	.byte	PATT	
		mPtr	song052_3_7
	.byte	PATT	
		mPtr	song052_3_8
	.byte	PATT	
		mPtr	song052_3_7
	.byte	PATT	
		mPtr	song052_3_8
	.byte	W92
	.byte	W03
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v-40
	.byte		N18	, Cs3, v124
	.byte	W01
	.byte	PATT	
		mPtr	song052_3_9
	.byte	PATT	
		mPtr	song052_3_10
	.byte	PATT	
		mPtr	song052_3_11
	.byte	PATT	
		mPtr	song052_3_1
	.byte	PATT	
		mPtr	song052_3_2
	.byte	PATT	
		mPtr	song052_3_3
	.byte	PATT	
		mPtr	song052_3_4
	.byte	PATT	
		mPtr	song052_3_1
	.byte	PATT	
		mPtr	song052_3_2
	.byte	PATT	
		mPtr	song052_3_3
	.byte	PATT	
		mPtr	song052_3_4
	.byte	PATT	
		mPtr	song052_3_1
	.byte	PATT	
		mPtr	song052_3_2
	.byte	PATT	
		mPtr	song052_3_3
	.byte	PATT	
		mPtr	song052_3_4
	.byte	W96
	.byte	GOTO	
		mPtr	song052_3_12
	.byte	FINE

	@********************** Track  4 **********************@

	.global song052_4
song052_4:	@ 0x0828FD64
	.byte	KEYSH	, 0
	.byte	VOICE	, 35
	.byte	VOL	, v079
	.byte	PAN	, c_v+40
	.byte		N68	, Ds3, v127
	.byte	W72
	.byte		TIE	, En3
	.byte	W12
	.byte	VOL	, v072
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v054
	.byte	W01
	.byte		v042
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v020
	.byte	W02
	.byte		v021
	.byte	W02
	.byte		v022
	.byte	W02
	.byte		v022
	.byte	W02
	.byte		v023
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v025
	.byte	W02
	.byte		v026
	.byte	W02
	.byte		v026
	.byte	W02
	.byte		v027
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v029
	.byte	W02
	.byte		v030
	.byte	W02
	.byte		v030
	.byte	W02
	.byte		v031
	.byte	W02
	.byte		v032
	.byte	W02
	.byte		v032
	.byte	W02
	.byte		v033
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v035
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v036
	.byte	W02
	.byte		v037
	.byte	W02
	.byte		v038
	.byte	W01
	.byte		v038
	.byte	W01
	.byte	W01
	.byte		v039
	.byte	W01
	.byte		v040
	.byte	W01
	.byte		v040
	.byte	W02
	.byte		v041
	.byte	W01
	.byte		v042
	.byte	W02
	.byte		v042
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v044
	.byte	W02
	.byte		v044
	.byte	W01
	.byte		v045
	.byte	W02
	.byte		v046
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v047
	.byte	W02
	.byte		v048
	.byte	W01
	.byte		v048
	.byte	W02
	.byte		v049
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v050
	.byte	W02
	.byte		v051
	.byte	W01
	.byte		v052
	.byte	W02
	.byte		v052
	.byte	W01
	.byte		v053
	.byte	W01
	.byte		v054
	.byte	W02
	.byte		v054
	.byte	W01
	.byte		v055
	.byte	W02
	.byte		v056
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v057
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v061
	.byte	W01
	.byte		v062
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v064
	.byte	W01
	.byte		v065
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v066
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v070
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v072
	.byte	W01
	.byte		v073
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v074
	.byte	W01
	.byte		v075
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v076
	.byte	W01
	.byte		v077
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v079
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v080
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v082
	.byte	W01
	.byte		v082
	.byte	W44
	.byte	W01
	.byte		EOT	
	.byte	W24
	.byte	W03
song052_4_8:
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v+40
	.byte	W04
	.byte		N18	, Cs3, v124
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Cn3
	.byte	W44
	.byte	PEND
	.byte	W96
song052_4_1:
	.byte	W04
	.byte		N18	, Bn2, v124
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			As2
	.byte	W44
	.byte	PEND
	.byte	W96
song052_4_9:
	.byte	W04
	.byte		N18	, Cs3, v124
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Cn3
	.byte	W44
	.byte	PEND
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_1
	.byte	W96
song052_4_10:
	.byte	W03
	.byte		N18	, Cs3, v124
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Cn3
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W96
song052_4_11:
	.byte	W03
	.byte		N18	, Bn2, v124
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			As2
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W96
song052_4_12:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 29
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W22
	.byte		N18	, Cs3, v124
	.byte	W48
	.byte		N18	
	.byte	W24
	.byte	W02
song052_4_2:
	.byte	W22
	.byte		N18	, Cn3, v124
	.byte	W48
	.byte		N18	
	.byte	W24
	.byte	W02
	.byte	PEND
song052_4_3:
	.byte	W22
	.byte		N18	, Cs3, v124
	.byte	W48
	.byte		N18	
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song052_4_2
	.byte	PATT	
		mPtr	song052_4_3
	.byte	PATT	
		mPtr	song052_4_2
	.byte	PATT	
		mPtr	song052_4_3
	.byte	W22
	.byte		N18	, Ds3, v124
	.byte	W72
	.byte	W01
	.byte	VOICE	, 33
	.byte	VOL	, v076
	.byte	PAN	, c_v+40
	.byte	W01
song052_4_4:
	.byte	W01
	.byte		N92	, Bn2, v124
	.byte	W92
	.byte	W03
	.byte	PEND
song052_4_5:
	.byte	W01
	.byte		N92	, Cn3, v124
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	PATT	
		mPtr	song052_4_4
	.byte	PATT	
		mPtr	song052_4_5
	.byte	PATT	
		mPtr	song052_4_4
	.byte	PATT	
		mPtr	song052_4_5
	.byte	PATT	
		mPtr	song052_4_4
	.byte	PATT	
		mPtr	song052_4_5
song052_4_6:
	.byte	W02
	.byte		N92	, Ds3, v124
	.byte	W92
	.byte	W02
	.byte	PEND
song052_4_7:
	.byte	W02
	.byte		N92	, En3, v124
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song052_4_6
	.byte	PATT	
		mPtr	song052_4_7
	.byte	PATT	
		mPtr	song052_4_6
	.byte	PATT	
		mPtr	song052_4_7
	.byte	PATT	
		mPtr	song052_4_6
	.byte	PATT	
		mPtr	song052_4_7
	.byte	PATT	
		mPtr	song052_4_8
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_1
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_9
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_1
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_10
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_11
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_10
	.byte	W96
	.byte	PATT	
		mPtr	song052_4_11
	.byte	W96
	.byte	GOTO	
		mPtr	song052_4_12
	.byte	FINE

	@********************** Track  5 **********************@

	.global song052_5
song052_5:	@ 0x0828FF63
	.byte	KEYSH	, 0
	.byte	VOICE	, 30
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
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
song052_5_7:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	VOICE	, 30
	.byte	VOL	, v082
	.byte	PAN	, c_v
	.byte	W01
song052_5_1:
	.byte		N44	, Cs3, v124
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte	PEND
song052_5_2:
	.byte		N44	, Gn3, v124
	.byte	W48
	.byte			Fs3
	.byte	W48
	.byte	PEND
	.byte			Bn3
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte		N80	, En3
	.byte	W96
	.byte	PATT	
		mPtr	song052_5_1
	.byte	PATT	
		mPtr	song052_5_2
	.byte		N88	, Bn3, v124
	.byte	W96
	.byte			Cn4
	.byte	W96
	.byte		N44	, Cn3
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte			Fs3
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte		N88	, As3
	.byte	W96
	.byte			Bn3
	.byte	W96
	.byte		N44	, Cn4
	.byte	W48
	.byte			Fn3
	.byte	W48
	.byte		N80	, En3
	.byte	W96
	.byte		N92	, Gs3
	.byte	W96
	.byte			An3
	.byte	W92
	.byte	W03
	.byte		N17	, En3
	.byte	W01
song052_5_3:
	.byte	W23
	.byte		N17	, En3, v124
	.byte	W24
	.byte			Ds3
	.byte	W48
	.byte	W01
	.byte	PEND
song052_5_4:
	.byte	W92
	.byte	W03
	.byte		N17	, Dn3, v124
	.byte	W01
	.byte	PEND
song052_5_5:
	.byte	W23
	.byte		N17	, Dn3, v124
	.byte	W24
	.byte			Cs3
	.byte	W48
	.byte	W01
	.byte	PEND
song052_5_6:
	.byte	W92
	.byte	W03
	.byte		N17	, En3, v124
	.byte	W01
	.byte	PEND
	.byte	PATT	
		mPtr	song052_5_3
	.byte	PATT	
		mPtr	song052_5_4
	.byte	PATT	
		mPtr	song052_5_5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song052_5_6
	.byte	PATT	
		mPtr	song052_5_3
	.byte	PATT	
		mPtr	song052_5_4
	.byte	PATT	
		mPtr	song052_5_5
	.byte	W96
	.byte	GOTO	
		mPtr	song052_5_7
	.byte	FINE

	@********************** Track  6 **********************@

	.global song052_6
song052_6:	@ 0x08290033
	.byte	KEYSH	, 0
	.byte	VOICE	, 20
	.byte	VOL	, v033
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N28	, Cn2, v127
	.byte	W24
song052_6_1:
	.byte	W06
	.byte		N04	, Cs3, v127
	.byte	W06
	.byte		N16	, Cn2
	.byte	W18
	.byte		N04	, Cs3
	.byte	W06
	.byte		N16	, Cn2
	.byte	W18
	.byte		N04	, Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Fn2
	.byte	W30
	.byte	PEND
song052_6_2:
	.byte	W72
	.byte		N04	, Cn2, v127
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte	PEND
song052_6_3:
	.byte	W06
	.byte		N04	, Cs3, v127
	.byte	W06
	.byte		N10	, Gn2
	.byte	W12
	.byte		N04	, Cn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N10	, Fn2
	.byte	W12
	.byte		N04	, Cn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			En3
	.byte	W28
	.byte	PEND
song052_6_6:
	.byte	VOL	, v026
	.byte	W72
	.byte		N28	, Cn2, v127
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song052_6_1
	.byte	PATT	
		mPtr	song052_6_2
	.byte	PATT	
		mPtr	song052_6_3
song052_6_7:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOL	, v033
	.byte	PAN	, c_v-40
	.byte	W01
song052_6_4:
	.byte		N06	, Cs3, v124
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
	.byte		N03	, Gs2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N06	, Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W36
	.byte	PATT	
		mPtr	song052_6_4
song052_6_5:
	.byte		N03	, En3, v124
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song052_6_4
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N06	, Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte	PATT	
		mPtr	song052_6_4
	.byte	PATT	
		mPtr	song052_6_5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	VOICE	, 20
	.byte	VOL	, v033
	.byte	PAN	, c_v
	.byte	W24
	.byte	W72
	.byte		N28	, Cn2, v127
	.byte	W24
	.byte	PATT	
		mPtr	song052_6_1
	.byte	PATT	
		mPtr	song052_6_2
	.byte	PATT	
		mPtr	song052_6_3
	.byte	PATT	
		mPtr	song052_6_6
	.byte	PATT	
		mPtr	song052_6_1
	.byte	PATT	
		mPtr	song052_6_2
	.byte	PATT	
		mPtr	song052_6_3
	.byte	W72
	.byte		N16	, Cn2, v127
	.byte	W18
	.byte		N04	, Cs3
	.byte	W06
	.byte		N10	, Cn2
	.byte	W12
	.byte		N04	, Cs3
	.byte	W06
	.byte		N10	, Cn2
	.byte	W12
	.byte		N04	, Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W30
	.byte	PATT	
		mPtr	song052_6_2
	.byte	W06
	.byte		N04	, Cs3, v127
	.byte	W06
	.byte		N10	, Gn2
	.byte	W12
	.byte		N04	, Gs3
	.byte	W06
	.byte		N10	, Cs3
	.byte	W12
	.byte		N04	, Gn2
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W30
	.byte	GOTO	
		mPtr	song052_6_7
	.byte	FINE

	@********************** Track  7 **********************@

	.global song052_7
song052_7:	@ 0x082901A8
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	VOL	, v056
	.byte	PAN	, c_v+40
	.byte	W72
	.byte	W72
	.byte	W72
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
song052_7_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_7_1:
	.byte		N18	, Cn3, v116
	.byte	W24
	.byte			Ds3, v124
	.byte	W24
	.byte		N12	, Cn3, v116
	.byte	W12
	.byte			Gn2
	.byte	W24
	.byte		N18	, Cn3
	.byte	W12
	.byte	PEND
song052_7_2:
	.byte	W12
	.byte		N10	, Gn2, v116
	.byte	W10
	.byte		N11	, Fs3
	.byte	W12
	.byte		N18	, Fn3
	.byte	W60
	.byte	W02
	.byte	PEND
	.byte	PATT	
		mPtr	song052_7_1
	.byte	W12
	.byte		N10	, Gn2, v116
	.byte	W10
	.byte		N16	, Gn3
	.byte	W24
	.byte		N18	, As3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte	W02
	.byte	PATT	
		mPtr	song052_7_1
	.byte	PATT	
		mPtr	song052_7_2
	.byte	PATT	
		mPtr	song052_7_1
	.byte	W12
	.byte		N10	, Gn2, v116
	.byte	W10
	.byte		N16	, Fs3
	.byte	W24
	.byte		N18	, As3
	.byte	W24
	.byte			An3
	.byte	W24
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song052_7_3
	.byte	FINE

	@********************** Track  8 **********************@

	.global song052_8
song052_8:	@ 0x0829024A
	.byte	KEYSH	, 0
	.byte	VOICE	, 32
	.byte	VOL	, v062
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
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
song052_8_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte		N12	, Fs3, v124
	.byte	W01
	.byte	W11
	.byte			An2
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			Fs3
	.byte	W36
	.byte	W01
	.byte	W92
	.byte	W03
	.byte			Cs3
	.byte	W01
	.byte	W11
	.byte			Ds2
	.byte	W24
	.byte			En2
	.byte	W24
	.byte			An2
	.byte	W36
	.byte	W01
	.byte	W92
	.byte	W03
	.byte			An3
	.byte	W01
	.byte	W11
	.byte			Dn3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte			An3
	.byte	W36
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song052_8_1
	.byte	FINE

	@********************** Track  9 **********************@

	.global song052_9
song052_9:	@ 0x082902C6
	.byte	KEYSH	, 0
	.byte	VOICE	, 58
	.byte	VOL	, v062
	.byte	PAN	, c_v-40
	.byte	W72
	.byte	W72
	.byte	W72
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
song052_9_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte		N32	, Fn3, v124
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		N30	
	.byte	W36
	.byte		N23	
	.byte	W24
	.byte		N32	
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N32	, En3
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		N30	
	.byte	W36
	.byte		N23	
	.byte	W24
	.byte		N32	
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		N23	
	.byte	W24
	.byte		N08	, Bn2
	.byte	W12
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W12
	.byte		N32	, Fn3
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		N30	
	.byte	W36
	.byte		N23	, An3
	.byte	W24
	.byte		N11	
	.byte	W01
	.byte	W11
	.byte		N17	, Fn3
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song052_9_1
	.byte	FINE

	@********************** Track  10 **********************@

	.global song052_10
song052_10:	@ 0x0829035F
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v076
	.byte	PAN	, c_v+40
	.byte	W72
	.byte	W72
	.byte	W72
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
song052_10_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_10_1:
	.byte		N21	, As3, v127
	.byte	W24
	.byte			Ds4
	.byte	W24
	.byte		N09	, Ds3
	.byte	W12
	.byte		N30	, As3
	.byte	W36
	.byte	PEND
	.byte	W96
	.byte		N21	, An3
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte		N09	, Dn3
	.byte	W12
	.byte		N30	, An3
	.byte	W36
	.byte	W96
	.byte	PATT	
		mPtr	song052_10_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
		mPtr	song052_10_2
	.byte	FINE

	@********************** Track  11 **********************@

	.global song052_11
song052_11:	@ 0x082903D5
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	VOL	, v033
	.byte	PAN	, c_v
	.byte	TUNE	, c_v
	.byte		N03	, Fs4, v127
	.byte	W03
	.byte			Gn4, v100
	.byte	W03
	.byte			Fs4, v088
	.byte	W03
	.byte			Gn4, v084
	.byte	W03
	.byte			Fs4, v080
	.byte	W03
	.byte			Gn4
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Gn4, v088
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte			Gn4, v092
	.byte	W03
	.byte			Fs4, v100
	.byte	W03
	.byte			Gn4, v104
	.byte	W03
	.byte			Fs4, v108
	.byte	W03
	.byte			Gn4, v112
	.byte	W03
	.byte			Fs4, v120
	.byte	W03
	.byte			Gn4, v127
	.byte	W03
	.byte		N06	, Fs4
	.byte	W06
	.byte			Ds4, v116
	.byte	W06
	.byte			Bn3, v104
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte		N03	, Dn4
	.byte	W03
	.byte			Ds4, v076
	.byte	W03
	.byte			Dn4, v072
	.byte	W03
	.byte			Ds4, v068
	.byte	W03
	.byte			Dn4, v064
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v060
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v056
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v052
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v056
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v060
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4, v064
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4, v068
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v072
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v076
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v080
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v084
	.byte	W03
	.byte			Ds4, v088
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4, v092
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v096
	.byte	W03
	.byte			Ds4, v100
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v104
	.byte	W03
	.byte			Ds4, v108
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4, v112
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v116
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v120
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4, v124
	.byte	W03
	.byte			Ds4, v127
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Ds4
	.byte	W32
	.byte	W01
song052_11_7:
	.byte		N03	, Ds3, v044
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Ds3, v048
	.byte	W04
	.byte			Ds3, v052
	.byte	W04
	.byte			Ds3, v056
	.byte	W04
	.byte			Ds3, v064
	.byte	W04
	.byte			Ds3, v068
	.byte	W04
	.byte			Ds3, v072
	.byte	W04
	.byte			Ds3, v080
	.byte	W04
	.byte			Ds3, v088
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v116
	.byte	W04
	.byte			Dn3, v120
	.byte	W04
	.byte			Dn3, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Dn3, v124
	.byte	W04
	.byte			Dn3, v120
	.byte	W04
	.byte			Dn3, v104
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v088
	.byte	W04
	.byte	PEND
song052_11_8:
	.byte		N03	, Gs2, v072
	.byte	W04
	.byte			Gs2, v064
	.byte	W04
	.byte			Gs2, v056
	.byte	W04
	.byte			Gs2, v052
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Gs2, v044
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Gs2, v048
	.byte	W04
	.byte			Gs2, v060
	.byte	W04
	.byte			Gs2, v064
	.byte	W04
	.byte			Gs2, v072
	.byte	W04
	.byte			An2, v080
	.byte	W04
	.byte			An2, v084
	.byte	W04
	.byte			An2, v088
	.byte	W04
	.byte			An2, v100
	.byte	W04
	.byte			An2, v104
	.byte	W04
	.byte			An2, v108
	.byte	W04
	.byte			An2, v112
	.byte	W04
	.byte			An2, v120
	.byte	W04
	.byte			An2, v124
	.byte	W04
	.byte			An2, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte	PEND
song052_11_9:
	.byte		N03	, Ds3, v127
	.byte	W04
	.byte			Ds3, v124
	.byte	W04
	.byte			Ds3, v116
	.byte	W04
	.byte			Ds3, v056
	.byte	W04
	.byte			Ds3, v044
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Fs3, v048
	.byte	W04
	.byte			Fs3, v052
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Fs3, v060
	.byte	W04
	.byte			Fs3, v064
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			Gs3, v080
	.byte	W04
	.byte			Gs3, v088
	.byte	W04
	.byte			Gs3, v096
	.byte	W04
	.byte			Gs3, v108
	.byte	W04
	.byte			Gs3, v116
	.byte	W04
	.byte			Gs3, v124
	.byte	W04
	.byte			Bn3, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Bn3, v124
	.byte	W04
	.byte			Bn3, v120
	.byte	W04
	.byte			Bn3, v112
	.byte	W04
	.byte			Bn3, v108
	.byte	W04
	.byte	PEND
song052_11_10:
	.byte		N03	, Cn4, v096
	.byte	W04
	.byte			Cn4, v084
	.byte	W04
	.byte			Cn4, v076
	.byte	W04
	.byte			Cn4, v080
	.byte	W04
	.byte			Cn4, v084
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Fs4, v096
	.byte	W04
	.byte			Fs4, v100
	.byte	W04
	.byte			Fs4, v104
	.byte	W04
	.byte			Fs4, v116
	.byte	W04
	.byte			Fs4, v120
	.byte	W04
	.byte			Fs4, v124
	.byte	W04
	.byte			Fn4, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			En4, v124
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			En4, v120
	.byte	W04
	.byte			En4, v116
	.byte	W04
	.byte			En4, v112
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_11_11:
	.byte		N06	, Gs3, v127
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N15	, An4
	.byte	W18
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N15	, An4
	.byte	W18
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N04	, An4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte	PEND
song052_11_12:
	.byte		N06	, Bn4, v127
	.byte	W06
	.byte		N12	, Ds4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N06	, Bn3
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N04	, Bn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N12	, Fs4
	.byte	W12
	.byte		N04	, Gs3
	.byte	W06
	.byte		N12	, Dn4
	.byte	W12
	.byte	PEND
song052_11_13:
	.byte	W06
	.byte		N06	, Fn4, v127
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N15	, Fs4
	.byte	W18
	.byte		N06	, Fs3
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N15	, Fs4
	.byte	W18
	.byte		N06	, As2
	.byte	W06
	.byte			As3
	.byte	W06
	.byte		N04	, Bn3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte	PEND
	.byte		N06	, Dn4
	.byte	W06
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N04	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte		N21	, Gs3
	.byte	W23
	.byte	VOL	, v036
	.byte	TUNE	, c_v+10
	.byte	W01
song052_11_1:
	.byte		N10	, Fs3, v084
	.byte	W12
	.byte			Fs3, v124
	.byte	W12
	.byte			Fs3, v076
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fs4, v124
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			An3, v124
	.byte	W12
	.byte	PEND
song052_11_2:
	.byte		N10	, An3, v076
	.byte	W12
	.byte			Gs3, v124
	.byte	W12
	.byte			Gs3, v076
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Cs4, v124
	.byte	W12
	.byte			Cs4, v076
	.byte	W12
	.byte			Cs4, v052
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_11_1
song052_11_3:
	.byte		N10	, An3, v076
	.byte	W12
	.byte			Bn3, v124
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Cs4, v124
	.byte	W12
	.byte			Cs4, v076
	.byte	W12
	.byte			Ds4, v124
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Ds4, v052
	.byte	W12
	.byte	PEND
song052_11_4:
	.byte		N10	, Fs3, v084
	.byte	W12
	.byte			Fs3, v124
	.byte	W12
	.byte			Fs3, v076
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			Fs4, v124
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			An4, v124
	.byte	W12
	.byte	PEND
	.byte			An4, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Bn3, v124
	.byte	W12
	.byte			Bn3, v076
	.byte	W12
	.byte			Fs4, v124
	.byte	W12
	.byte			Fs4, v076
	.byte	W12
	.byte			Fn4, v124
	.byte	W12
	.byte			Fn4, v076
	.byte	W12
	.byte			An3, v124
	.byte	W12
	.byte			An3, v076
	.byte	W12
	.byte			Gs3, v124
	.byte	W12
	.byte			Gs3, v076
	.byte	W12
	.byte			Ds4, v124
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Ds4, v052
	.byte	W12
	.byte			Dn4, v124
	.byte	W12
	.byte			Dn4, v076
	.byte	W12
	.byte			Dn4, v052
	.byte	W12
	.byte			Ds4, v124
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Ds4, v052
	.byte	W36
	.byte	PATT	
		mPtr	song052_11_1
	.byte	PATT	
		mPtr	song052_11_2
	.byte	PATT	
		mPtr	song052_11_1
	.byte	PATT	
		mPtr	song052_11_3
	.byte	PATT	
		mPtr	song052_11_4
	.byte		N10	, An4, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Ds4, v124
	.byte	W12
	.byte			Ds4, v076
	.byte	W12
	.byte			Bn4, v124
	.byte	W12
	.byte			Bn4, v076
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			Dn5, v076
	.byte	W12
	.byte			An4, v124
	.byte	W12
	.byte			An4, v076
	.byte	W12
	.byte			Gs4, v124
	.byte	W12
	.byte			Gs4, v076
	.byte	W12
	.byte			Ds5, v124
	.byte	W12
	.byte			Ds5, v076
	.byte	W12
	.byte			Ds5, v052
	.byte	W12
	.byte			Dn5, v124
	.byte	W12
	.byte			Dn5, v076
	.byte	W12
	.byte			Dn5, v052
	.byte	W12
	.byte			Ds5, v124
	.byte	W12
	.byte			Ds5, v076
	.byte	W12
	.byte			Ds5, v052
	.byte	W32
	.byte	W03
	.byte	VOICE	, 44
	.byte	W01
	.byte	W72
	.byte		N24	, Fs5, v104
	.byte	W24
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			En5, v100
	.byte	W06
	.byte		N24	, Ds5, v096
	.byte	W30
	.byte		N04	, Dn5, v092
	.byte	W06
	.byte			Cs5, v088
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte		N24	, Bn4, v080
	.byte	W24
	.byte	W72
	.byte			Ds5, v104
	.byte	W24
	.byte	W06
	.byte		N04	, Dn5
	.byte	W06
	.byte			Cs5, v100
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte		N24	, Bn4, v096
	.byte	W30
	.byte		N04	, Bn4, v092
	.byte	W06
	.byte			As4, v088
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N24	, Gs4, v084
	.byte	W24
	.byte	W72
	.byte			Fs5, v104
	.byte	W24
	.byte	W06
	.byte		N04	
	.byte	W06
	.byte			Fn5
	.byte	W06
	.byte			En5, v100
	.byte	W06
	.byte		N24	, Ds5, v096
	.byte	W30
	.byte		N04	, Fn5, v084
	.byte	W06
	.byte			Fs5, v096
	.byte	W06
	.byte			Gn5, v100
	.byte	W06
	.byte		N24	, Gs5, v104
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte	VOICE	, 31
	.byte	W01
	.byte		N03	, Ds5
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N09	, As4
	.byte	W12
	.byte		N03	, Ds4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N06	, As4
	.byte	W06
song052_11_5:
	.byte		N04	, Ds4, v116
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Fs4, v056
	.byte	W06
	.byte			Ds4, v116
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Bn4, v116
	.byte	W06
	.byte			Bn4, v056
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Fs4, v056
	.byte	W06
	.byte	PEND
song052_11_6:
	.byte		N04	, En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song052_11_5
	.byte		N04	, En4, v116
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte	PATT	
		mPtr	song052_11_5
	.byte	PATT	
		mPtr	song052_11_6
	.byte	PATT	
		mPtr	song052_11_5
	.byte		N04	, En4, v116
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En5, v116
	.byte	W06
	.byte			Gn5
	.byte	W06
	.byte			Gn5, v056
	.byte	W06
	.byte			En5, v116
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte		N22	, Cn4, v124
	.byte	W24
	.byte		N10	, Cn4, v076
	.byte	W12
	.byte			Cn4, v052
	.byte	W12
	.byte		N22	, Gn4, v124
	.byte	W24
	.byte		N10	, Gn4, v076
	.byte	W12
	.byte			Gn4, v052
	.byte	W12
	.byte		N22	, Fs4, v124
	.byte	W24
	.byte		N10	, Fs4, v076
	.byte	W12
	.byte			Fs4, v052
	.byte	W12
	.byte		N22	, Fn4, v124
	.byte	W24
	.byte		N10	, Fn4, v076
	.byte	W12
	.byte			Fn4, v052
	.byte	W12
	.byte		N56	, As4, v124
	.byte	W60
	.byte		N10	, As4, v076
	.byte	W12
	.byte			As4, v052
	.byte	W24
	.byte		N56	, Bn4, v124
	.byte	W60
	.byte		N10	, Bn4, v076
	.byte	W12
	.byte			Bn4, v052
	.byte	W24
	.byte		N22	, Cn5, v124
	.byte	W24
	.byte		N10	, Cn5, v076
	.byte	W12
	.byte			Cn5, v052
	.byte	W12
	.byte		N22	, Fn4, v124
	.byte	W24
	.byte		N10	, Fn4, v076
	.byte	W12
	.byte			Fn4, v052
	.byte	W12
	.byte		N56	, En4, v124
	.byte	W60
	.byte		N10	, En4, v076
	.byte	W12
	.byte			En4, v052
	.byte	W24
	.byte		N56	, Gs4, v124
	.byte	W60
	.byte		N10	, Gs4, v076
	.byte	W12
	.byte			Gs4, v052
	.byte	W24
	.byte		N56	, An4, v124
	.byte	W60
	.byte		N10	, An4, v076
	.byte	W12
	.byte			An4, v052
	.byte	W23
	.byte	VOL	, v033
	.byte	W01
	.byte	PATT	
		mPtr	song052_11_7
	.byte	PATT	
		mPtr	song052_11_8
	.byte	PATT	
		mPtr	song052_11_9
	.byte	PATT	
		mPtr	song052_11_10
	.byte	PATT	
		mPtr	song052_11_11
	.byte	PATT	
		mPtr	song052_11_12
	.byte	PATT	
		mPtr	song052_11_13
song052_11_14:
	.byte		N06	, Dn4, v127
	.byte	W06
	.byte		N12	, Cs4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N06	, Gs3
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N04	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N06	, Ds4
	.byte	W06
	.byte		N21	, Gs3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		mPtr	song052_11_11
	.byte	PATT	
		mPtr	song052_11_12
	.byte	PATT	
		mPtr	song052_11_13
	.byte	PATT	
		mPtr	song052_11_14
	.byte	PATT	
		mPtr	song052_11_11
	.byte	PATT	
		mPtr	song052_11_12
	.byte	PATT	
		mPtr	song052_11_13
	.byte	PATT	
		mPtr	song052_11_14
	.byte	GOTO	
		mPtr	song052_11_1
	.byte	FINE

	@********************** Track  12 **********************@

	.global song052_12
song052_12:	@ 0x0829099D
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	VOL	, v040
	.byte	PAN	, c_v
	.byte	TUNE	, c_v
	.byte		N06	, As2, v076
	.byte	W06
	.byte		N12	, En3, v096
	.byte	W12
	.byte		N06	, Gs3, v104
	.byte	W06
	.byte			Fn2, v076
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			As2, v076
	.byte	W06
	.byte		N12	, En3, v096
	.byte	W12
	.byte		N06	, Gs3, v104
	.byte	W06
	.byte			Fn2, v076
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte		N03	, Gn2, v044
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v048
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3, v052
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3, v056
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3, v060
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v064
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3, v068
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3, v076
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2, v080
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2, v084
	.byte	W04
	.byte			Cs3, v088
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2, v092
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v096
	.byte	W04
	.byte			Gn2, v100
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v104
	.byte	W04
	.byte			Gn2, v108
	.byte	W04
	.byte			Cs3, v112
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2, v120
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Gn2, v124
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3, v127
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W28
song052_12_9:
	.byte	W52
	.byte		N18	, An4, v052
	.byte	W18
	.byte		N13	, Gs4, v048
	.byte	W12
	.byte		N09	, An4, v052
	.byte	W06
	.byte			Gs4, v068
	.byte	W08
	.byte	PEND
song052_12_10:
	.byte		N07	, An4, v060
	.byte	W06
	.byte		N08	, Gs4, v064
	.byte	W06
	.byte		N07	, An4, v076
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			Gs4, v108
	.byte	W06
	.byte			An4, v092
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte		N06	, An4, v076
	.byte	W06
	.byte		N07	, Gs4, v080
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte		N06	, Gs4, v072
	.byte	W06
	.byte			An4, v064
	.byte	W06
	.byte		N08	, Gs4, v072
	.byte	W06
	.byte		N06	, An4, v060
	.byte	W06
	.byte		N07	, Gs4, v072
	.byte	W06
	.byte	PEND
	.byte	W96
song052_12_11:
	.byte		N03	, Gs3, v044
	.byte	W04
	.byte			Gs3, v048
	.byte	W04
	.byte			Gs3, v052
	.byte	W04
	.byte			Gs3, v056
	.byte	W04
	.byte			Gs3, v060
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Ds4, v068
	.byte	W04
	.byte			Ds4, v072
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Ds4, v080
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Ds4, v088
	.byte	W04
	.byte			Dn4, v096
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte			Dn4, v104
	.byte	W04
	.byte			Dn4, v112
	.byte	W04
	.byte			Dn4, v116
	.byte	W04
	.byte			Dn4, v120
	.byte	W04
	.byte			Cs4, v124
	.byte	W04
	.byte			Cs4, v127
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte		N03	
	.byte	W04
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_12_1:
	.byte		N03	, Ds3, v072
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v112
	.byte	W04
	.byte			Ds3, v120
	.byte	W04
	.byte			Ds3, v127
	.byte	W04
	.byte			Ds3, v116
	.byte	W04
	.byte			Ds3, v108
	.byte	W04
	.byte			Ds3, v100
	.byte	W04
	.byte			Ds3, v092
	.byte	W04
	.byte			Ds3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v120
	.byte	W04
	.byte			En3, v127
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte	PEND
song052_12_2:
	.byte		N03	, Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			As3, v072
	.byte	W04
	.byte			As3, v084
	.byte	W04
	.byte			As3, v092
	.byte	W04
	.byte			As3, v100
	.byte	W04
	.byte			As3, v112
	.byte	W04
	.byte			As3, v120
	.byte	W04
	.byte			As3, v127
	.byte	W04
	.byte			As3, v116
	.byte	W04
	.byte			As3, v108
	.byte	W04
	.byte			As3, v100
	.byte	W04
	.byte			As3, v092
	.byte	W04
	.byte			As3, v084
	.byte	W04
	.byte	PEND
song052_12_3:
	.byte		N03	, An3, v072
	.byte	W04
	.byte			An3, v084
	.byte	W04
	.byte			An3, v092
	.byte	W04
	.byte			An3, v100
	.byte	W04
	.byte			An3, v112
	.byte	W04
	.byte			An3, v120
	.byte	W04
	.byte			An3, v127
	.byte	W04
	.byte			An3, v116
	.byte	W04
	.byte			An3, v108
	.byte	W04
	.byte			An3, v100
	.byte	W04
	.byte			An3, v092
	.byte	W04
	.byte			An3, v084
	.byte	W04
	.byte			Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte	PEND
song052_12_4:
	.byte		N03	, Fs3, v072
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v112
	.byte	W04
	.byte			Fs3, v120
	.byte	W04
	.byte			Fs3, v127
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Gs3, v072
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Gs3, v100
	.byte	W04
	.byte			Gs3, v112
	.byte	W04
	.byte			Gs3, v120
	.byte	W04
	.byte			Gs3, v127
	.byte	W04
	.byte			Gs3, v116
	.byte	W04
	.byte			Gs3, v108
	.byte	W04
	.byte			Gs3, v100
	.byte	W04
	.byte			Gs3, v092
	.byte	W04
	.byte			Gs3, v084
	.byte	W04
	.byte	PEND
song052_12_12:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song052_12_1
	.byte		N03	, Fn3, v072
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v112
	.byte	W04
	.byte			Fn3, v120
	.byte	W04
	.byte			Fn3, v127
	.byte	W04
	.byte			Fn3, v116
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v100
	.byte	W04
	.byte			Fn3, v092
	.byte	W04
	.byte			Fn3, v084
	.byte	W04
	.byte			En3, v072
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v112
	.byte	W04
	.byte			En3, v120
	.byte	W04
	.byte			En3, v127
	.byte	W04
	.byte			En3, v116
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v100
	.byte	W04
	.byte			En3, v092
	.byte	W04
	.byte			En3, v084
	.byte	W04
	.byte			Fs3, v072
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v112
	.byte	W04
	.byte			Fs3, v120
	.byte	W04
	.byte			Fs3, v127
	.byte	W04
	.byte			Fs3, v116
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v100
	.byte	W04
	.byte			Fs3, v092
	.byte	W04
	.byte			Fs3, v084
	.byte	W04
	.byte			As2, v072
	.byte	W04
	.byte			As2, v084
	.byte	W04
	.byte			As2, v092
	.byte	W04
	.byte			As2, v100
	.byte	W04
	.byte			As2, v112
	.byte	W04
	.byte			As2, v120
	.byte	W04
	.byte			As2, v127
	.byte	W04
	.byte			As2, v116
	.byte	W04
	.byte			As2, v108
	.byte	W04
	.byte			As2, v100
	.byte	W04
	.byte			As2, v092
	.byte	W04
	.byte			As2, v084
	.byte	W04
	.byte			Dn3, v072
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v112
	.byte	W04
	.byte			Dn3, v120
	.byte	W04
	.byte			Dn3, v127
	.byte	W04
	.byte			Dn3, v116
	.byte	W04
	.byte			Dn3, v108
	.byte	W04
	.byte			Dn3, v100
	.byte	W04
	.byte			Dn3, v092
	.byte	W04
	.byte			Dn3, v084
	.byte	W04
	.byte			Cs3, v072
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte			Cs3, v092
	.byte	W04
	.byte			Cs3, v100
	.byte	W04
	.byte			Cs3, v112
	.byte	W04
	.byte			Cs3, v120
	.byte	W04
	.byte			Cs3, v127
	.byte	W04
	.byte			Cs3, v116
	.byte	W04
	.byte			Cs3, v108
	.byte	W04
	.byte			Cs3, v100
	.byte	W04
	.byte			Cs3, v092
	.byte	W04
	.byte			Cs3, v084
	.byte	W04
	.byte	PATT	
		mPtr	song052_12_1
	.byte	PATT	
		mPtr	song052_12_2
	.byte	PATT	
		mPtr	song052_12_3
	.byte	PATT	
		mPtr	song052_12_4
	.byte	VOICE	, 24
	.byte	W06
	.byte	TUNE	, c_v
	.byte	W68
	.byte	W01
	.byte		N24	, Bn4, v076
	.byte	W21
	.byte	W09
	.byte		N04	
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N24	, Gs4
	.byte	W30
	.byte		N04	, Gn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte		N24	, En4
	.byte	W21
	.byte	W72
	.byte	W03
	.byte			Gs4
	.byte	W21
	.byte	W09
	.byte		N04	
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte		N24	, Fn4
	.byte	W30
	.byte		N04	, Dn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte		N24	, Bn3
	.byte	W21
	.byte	W72
	.byte	W03
	.byte			Bn4
	.byte	W21
	.byte	W09
	.byte		N04	
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N24	, Gs4
	.byte	W30
	.byte		N04	
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		N24	, Bn4
	.byte	W21
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N04	, Gs2, v084
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Ds3
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Gn2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W12
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W12
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As3
	.byte	W12
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As3
	.byte	W12
	.byte			As2, v096
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As3
	.byte	W12
	.byte			As2, v104
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As3
	.byte	W11
	.byte	VOICE	, 5
	.byte	W01
song052_12_5:
	.byte		N04	, Bn3, v116
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Fs3, v116
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Fs4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Bn3, v056
	.byte	W06
	.byte			Fs3, v116
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Fs4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte	PEND
song052_12_6:
	.byte		N04	, Cn4, v116
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Gn3, v116
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song052_12_5
	.byte		N04	, Cn4, v116
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte	PATT	
		mPtr	song052_12_5
	.byte	PATT	
		mPtr	song052_12_6
	.byte	PATT	
		mPtr	song052_12_5
	.byte		N04	, Cn4, v116
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			En5, v056
	.byte	W06
	.byte			Cn5, v116
	.byte	W06
	.byte			Cn5, v056
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gn4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
song052_12_7:
	.byte		N04	, Gs3, v116
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			Ds4, v116
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			As3, v116
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Gs3, v116
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Ds3, v116
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			Ds4, v116
	.byte	W06
	.byte			Ds4, v056
	.byte	W06
	.byte			As3, v116
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte	PEND
song052_12_8:
	.byte		N04	, An3, v116
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			En3, v116
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			En3, v116
	.byte	W06
	.byte			En3, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song052_12_7
	.byte		N04	, An3, v116
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			An4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			An3, v116
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte	PATT	
		mPtr	song052_12_7
	.byte	PATT	
		mPtr	song052_12_8
	.byte	PATT	
		mPtr	song052_12_7
	.byte		N04	, An3, v116
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte			An4, v116
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Cs5, v056
	.byte	W06
	.byte			An4, v116
	.byte	W06
	.byte			An4, v056
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte			Cs4, v116
	.byte	W06
	.byte			Cs4, v056
	.byte	W06
	.byte	PATT	
		mPtr	song052_12_9
	.byte	PATT	
		mPtr	song052_12_10
	.byte	W96
	.byte	PATT	
		mPtr	song052_12_11
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song052_12_1
	.byte	PATT	
		mPtr	song052_12_2
	.byte	PATT	
		mPtr	song052_12_3
	.byte	PATT	
		mPtr	song052_12_4
	.byte	PATT	
		mPtr	song052_12_1
	.byte	PATT	
		mPtr	song052_12_2
	.byte	PATT	
		mPtr	song052_12_3
	.byte	PATT	
		mPtr	song052_12_4
	.byte	GOTO	
		mPtr	song052_12_12
	.byte	FINE

	@********************** Track  13 **********************@

	.global song052_13
song052_13:	@ 0x08290F92
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	VOL	, v080
	.byte		N21	, Dn2, v124
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte			Dn1
	.byte	W24
	.byte		TIE	, Ds1
	.byte	W72
	.byte	W72
	.byte	W44
	.byte	W01
	.byte		EOT	
	.byte	W24
	.byte	W03
song052_13_1:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N30	, Gs1
	.byte	W30
	.byte		N03	, Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N36	, Gs1
	.byte	W36
	.byte	PEND
song052_13_2:
	.byte		N04	, Gs2, v127
	.byte	W06
	.byte			Gs1, v104
	.byte	W06
	.byte			Gs2, v088
	.byte	W06
	.byte			Gs1, v060
	.byte	W06
	.byte			Gs2, v056
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gs2, v060
	.byte	W06
	.byte			Gs1, v068
	.byte	W06
	.byte			Gs2, v072
	.byte	W06
	.byte			Gs1, v084
	.byte	W06
	.byte			Gs2, v092
	.byte	W06
	.byte			Gs1, v108
	.byte	W06
	.byte			Gs2, v124
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_1
	.byte		N04	, Gs2, v127
	.byte	W06
	.byte			Gs1, v104
	.byte	W06
	.byte			Gs2, v088
	.byte	W06
	.byte			Gs1, v060
	.byte	W06
	.byte			Gs2, v088
	.byte	W06
	.byte			Gs1, v104
	.byte	W06
	.byte			Ds3, v127
	.byte	W06
	.byte			Bn2, v104
	.byte	W06
	.byte		N06	, Fs3, v127
	.byte	W06
	.byte			Gs2, v104
	.byte	W06
	.byte			Fn3, v127
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			En3, v127
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
song052_13_8:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs1
	.byte	W06
	.byte		N03	, Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	PEND
song052_13_15:
	.byte		N04	, Gs2, v127
	.byte	W06
	.byte			Gs1, v104
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte			Gs1, v084
	.byte	W06
	.byte			Gs2, v112
	.byte	W06
	.byte			Gs1, v127
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Bn2, v104
	.byte	W06
	.byte		N06	, Fs3, v127
	.byte	W06
	.byte			Gs2, v104
	.byte	W06
	.byte			Fn3, v127
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			En3, v127
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte	PEND
song052_13_17:
	.byte	PATT	
		mPtr	song052_13_1
song052_13_3:
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Bn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N06	, Bn1
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Bn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N06	, Bn1
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_3
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_3
	.byte	PATT	
		mPtr	song052_13_1
	.byte		N03	, Gs2, v124
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Bn1
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N06	, Bn1
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N06	, Gs1
	.byte	W06
	.byte		N03	, Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_3
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_3
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_3
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_3
song052_13_4:
	.byte		N03	, An2, v124
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N03	, An2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N18	, An1
	.byte	W18
	.byte			En1
	.byte	W18
	.byte	PEND
song052_13_5:
	.byte		N03	, An2, v124
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N06	, En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N03	, As2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte	PEND
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N18	, Gs1
	.byte	W18
	.byte			Ds1
	.byte	W18
	.byte		N03	, Gs2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte		N03	, Ds2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte		N06	, Ds2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N03	, An2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N12	, Gs1
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte	PATT	
		mPtr	song052_13_4
	.byte	PATT	
		mPtr	song052_13_5
song052_13_6:
	.byte		N03	, Dn2, v124
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte		N03	, Dn2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte		N03	, Dn2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte		N03	, Dn2
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, Dn1
	.byte	W12
	.byte	PEND
song052_13_7:
	.byte		N03	, Ds2, v124
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N12	, Ds1
	.byte	W12
	.byte		N03	, Ds2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N12	, Ds1
	.byte	W12
	.byte		N03	, Ds2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N12	, Ds1
	.byte	W12
	.byte		N03	, Ds2
	.byte	W06
	.byte			As1
	.byte	W06
	.byte		N12	, Ds1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_6
	.byte	PATT	
		mPtr	song052_13_7
	.byte	PATT	
		mPtr	song052_13_6
	.byte	PATT	
		mPtr	song052_13_7
	.byte		N03	, En2, v124
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, En1
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, En1
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, En1
	.byte	W12
	.byte		N03	, En2
	.byte	W06
	.byte			Bn1
	.byte	W06
	.byte		N12	, En1
	.byte	W12
	.byte		N03	, Fs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N12	, Fs1
	.byte	W12
	.byte		N03	, Fs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N10	, Fs1
	.byte	W12
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte	PATT	
		mPtr	song052_13_1
song052_13_9:
	.byte		N03	, An2, v124
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N30	, An1
	.byte	W30
	.byte		N03	, En2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			En2
	.byte	W06
	.byte		N36	, An1
	.byte	W36
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_8
song052_13_10:
	.byte		N04	, An2, v127
	.byte	W06
	.byte			An1, v104
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An1, v084
	.byte	W06
	.byte			An2, v112
	.byte	W06
	.byte			An1, v127
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Cn3, v104
	.byte	W06
	.byte		N06	, Fs3, v127
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte			Fn3, v127
	.byte	W06
	.byte			En2, v104
	.byte	W06
	.byte			En3, v127
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N12	, An1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_9
	.byte	PATT	
		mPtr	song052_13_8
	.byte	PATT	
		mPtr	song052_13_10
song052_13_11:
	.byte		N03	, Fn2, v124
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N30	, Fn1
	.byte	W30
	.byte		N03	, Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N36	, Fn1
	.byte	W36
	.byte	PEND
song052_13_12:
	.byte		N03	, Fs2, v124
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N30	, Fs1
	.byte	W30
	.byte		N03	, Cs2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte		N36	, Fs1
	.byte	W36
	.byte	PEND
song052_13_13:
	.byte		N03	, Fn2, v124
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N12	, Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N06	, Fn1
	.byte	W06
	.byte		N03	, Cn2
	.byte	W06
	.byte			Fn2
	.byte	W06
	.byte			Cn2
	.byte	W06
	.byte		N12	, Fn1
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn1
	.byte	W12
	.byte	PEND
song052_13_14:
	.byte		N04	, Fs2, v127
	.byte	W06
	.byte			Fs1, v104
	.byte	W06
	.byte			Fs2, v112
	.byte	W06
	.byte			Fs1, v084
	.byte	W06
	.byte			Fs2, v112
	.byte	W06
	.byte			Fs1, v127
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			An2, v104
	.byte	W06
	.byte		N06	, Ds3, v127
	.byte	W06
	.byte			Fs2, v104
	.byte	W06
	.byte			Dn3, v127
	.byte	W06
	.byte			Cs2, v104
	.byte	W06
	.byte			Cs3, v127
	.byte	W06
	.byte			An1
	.byte	W06
	.byte		N12	, Fs1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_11
	.byte	PATT	
		mPtr	song052_13_12
	.byte	PATT	
		mPtr	song052_13_13
	.byte	PATT	
		mPtr	song052_13_14
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_8
song052_13_16:
	.byte		N04	, Gs2, v127
	.byte	W06
	.byte			Gs1
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte		N06	, Fs3
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			Fn3, v127
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte		N18	, Gs1, v124
	.byte	W18
	.byte		N06	, Ds3, v127
	.byte	W06
	.byte			Ds2, v104
	.byte	W06
	.byte			Dn3, v127
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_8
	.byte	PATT	
		mPtr	song052_13_15
	.byte	PATT	
		mPtr	song052_13_1
	.byte	PATT	
		mPtr	song052_13_2
	.byte	PATT	
		mPtr	song052_13_8
	.byte	PATT	
		mPtr	song052_13_16
	.byte	GOTO	
		mPtr	song052_13_17
	.byte	FINE

	@********************** Track  14 **********************@

	.global song052_14
song052_14:	@ 0x08291383
	.byte	KEYSH	, 0
	.byte	VOICE	, 89
	.byte	VOL	, v040
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_14_1:
	.byte		N06	, Cn5, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte	PEND
song052_14_2:
	.byte		N06	, Cn5, v104
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N05	, Cn5, v127
	.byte	W06
	.byte			Cn5, v104
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
song052_14_5:
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
song052_14_3:
	.byte		N06	, Cn5, v076
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte	PEND
song052_14_4:
	.byte		N06	, Cn5, v076
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N05	, Cn5, v100
	.byte	W06
	.byte			Cn5, v076
	.byte	W18
	.byte	PEND
	.byte	PATT	
		mPtr	song052_14_3
	.byte	PATT	
		mPtr	song052_14_4
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_2
	.byte	PATT	
		mPtr	song052_14_1
	.byte	PATT	
		mPtr	song052_14_1
	.byte	GOTO	
		mPtr	song052_14_5
	.byte	FINE

	@********************** Track  15 **********************@

	.global song052_15
song052_15:	@ 0x082914F7
	.byte	KEYSH	, 0
	.byte	VOICE	, 91
	.byte	VOL	, v040
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song052_15_1:
	.byte	W12
	.byte		N11	, Cn5, v104
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
song052_15_3:
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
song052_15_2:
	.byte	W12
	.byte		N11	, Cn5, v076
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		mPtr	song052_15_2
	.byte	PATT	
		mPtr	song052_15_2
	.byte	PATT	
		mPtr	song052_15_2
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	PATT	
		mPtr	song052_15_1
	.byte	GOTO	
		mPtr	song052_15_3
	.byte	FINE
    
	mAlignWord
	.global song052
song052:	@ 0x08291658
	.byte	15		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	mPtr	voicegroup016		@ voicegroup/tone

	mPtr	song052_1		@ track
	mPtr	song052_2		@ track
	mPtr	song052_3		@ track
	mPtr	song052_4		@ track
	mPtr	song052_5		@ track
	mPtr	song052_6		@ track
	mPtr	song052_7		@ track
	mPtr	song052_8		@ track
	mPtr	song052_9		@ track
	mPtr	song052_10		@ track
	mPtr	song052_11		@ track
	mPtr	song052_12		@ track
	mPtr	song052_13		@ track
	mPtr	song052_14		@ track
	mPtr	song052_15		@ track
