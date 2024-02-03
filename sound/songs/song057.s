	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song057_1
song057_1:	@ 0x08297394
	.byte	KEYSH	, 0
song057_1_2:
	.byte	TEMPO	, 95
	.byte	VOICE	, 127
	.byte	VOL	, v069
	.byte	PAN	, c_v
	.byte		N72	, As4, v124
	.byte		N18	, Gn7
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
song057_1_1:
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N12	, Gs7
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song057_1_1
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N06	, Gs7
	.byte	W06
	.byte		N05	, Dn5
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte	PATT	
		.word	song057_1_1
	.byte	PATT	
		.word	song057_1_1
	.byte	PATT	
		.word	song057_1_1
	.byte		N18	, Gn7, v124
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte		N11	, Dn5
	.byte	W12
	.byte		N06	, Gs7
	.byte	W06
	.byte		N05	, Dn5
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N72	, As4
	.byte		N18	, Gn7
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte			Gs7
	.byte	W24
	.byte			Gn7
	.byte	W24
	.byte		N11	, En5
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	GOTO	
		.word	song057_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song057_2
song057_2:	@ 0x08297415
	.byte	KEYSH	, 0
song057_2_2:
	.byte	VOICE	, 6
	.byte	VOL	, v049
	.byte	PAN	, c_v+63
	.byte	TUNE	, c_v+3
	.byte	BENDR	, 12
	.byte	BEND	, c_v
	.byte		N03	, As3, v116
	.byte	W06
	.byte			As3, v068
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			Cn3, v076
	.byte	W06
	.byte			Cn3, v040
	.byte	W06
	.byte			Dn3, v076
	.byte	W06
	.byte			Dn3, v040
	.byte	W30
song057_2_1:
	.byte	W12
	.byte		N03	, As3, v116
	.byte	W06
	.byte			As3, v068
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			Cn3, v076
	.byte	W06
	.byte			Cn3, v040
	.byte	W06
	.byte			Dn3, v084
	.byte	W06
	.byte			Dn3, v036
	.byte	W06
	.byte			An3, v104
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte	PEND
	.byte			As3, v116
	.byte	W06
	.byte			As3, v068
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			Cn3, v076
	.byte	W06
	.byte			Cn3, v040
	.byte	W06
	.byte			Dn3, v076
	.byte	W06
	.byte			Dn3, v040
	.byte	W30
	.byte	W12
	.byte			Dn3, v116
	.byte	W06
	.byte			Dn3, v068
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			As3, v096
	.byte	W06
	.byte			As3, v060
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			Cn4, v056
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte	BEND	, c_v
	.byte		N03	, As3, v116
	.byte	W06
	.byte			As3, v068
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			Cn3, v076
	.byte	W06
	.byte			Cn3, v040
	.byte	W06
	.byte			Dn3, v076
	.byte	W06
	.byte			Dn3, v040
	.byte	W30
	.byte	PATT	
		.word	song057_2_1
	.byte	PATT	
		.word	song057_2_1
	.byte		N03	, As3, v116
	.byte	W06
	.byte			As3, v068
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cn4, v068
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte			Ds4, v120
	.byte	W06
	.byte			Dn4, v104
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			Fn3, v084
	.byte	W06
	.byte			Fn3, v060
	.byte	W06
	.byte			As3, v104
	.byte	W06
	.byte			Gs3, v116
	.byte	W06
	.byte			Gs3, v068
	.byte	W06
	.byte			Gs3, v056
	.byte	W06
	.byte			Gs3, v048
	.byte	W06
	.byte			Gs3, v036
	.byte	W12
	.byte			Fs3, v084
	.byte	W06
	.byte			Fs3, v068
	.byte	W06
	.byte			Fs3, v056
	.byte	W06
	.byte			Fs3, v048
	.byte	W06
	.byte			Fs3, v036
	.byte	W12
	.byte	W12
	.byte			Fn3, v116
	.byte	W06
	.byte			Fn3, v068
	.byte	W06
	.byte			Fn3, v056
	.byte	W06
	.byte			Fn3, v048
	.byte	W06
	.byte			Cn3, v084
	.byte	W06
	.byte			Cn3, v068
	.byte	W06
	.byte			Cn3, v056
	.byte	W06
	.byte			Cn3, v048
	.byte	W06
	.byte			Cn3, v036
	.byte	W12
	.byte	GOTO	
		.word	song057_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song057_3
song057_3:	@ 0x0829751E
	.byte	KEYSH	, 0
song057_3_3:
	.byte	VOICE	, 63
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte		N11	, Gn2, v127
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4
	.byte	W12
song057_3_1:
	.byte		N11	, Gs2, v127
	.byte	W12
	.byte		N23	, Gs3
	.byte	W24
	.byte		N11	, Ds4
	.byte	W12
	.byte		N23	, Gs4
	.byte	W24
	.byte	PEND
song057_3_2:
	.byte		N11	, Gn2, v127
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song057_3_1
	.byte	PATT	
		.word	song057_3_2
	.byte	PATT	
		.word	song057_3_1
	.byte	PATT	
		.word	song057_3_2
	.byte	PATT	
		.word	song057_3_1
	.byte		N11	, Gn2, v127
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Gs4
	.byte	W12
	.byte			Gs2
	.byte	W36
	.byte	GOTO	
		.word	song057_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song057_4
song057_4:	@ 0x08297586
	.byte	KEYSH	, 0
song057_4_3:
	.byte	VOICE	, 1
	.byte	VOL	, v055
	.byte	PAN	, c_v-64
	.byte	W12
	.byte		N11	, Ds4, v124
	.byte	W24
	.byte			Ds4, v096
	.byte	W24
	.byte			Ds4, v076
	.byte	W12
song057_4_1:
	.byte	W12
	.byte		N11	, Ds4, v124
	.byte	W24
	.byte			Ds4, v096
	.byte	W24
	.byte			Gs4, v124
	.byte	W12
	.byte	PEND
song057_4_2:
	.byte	W12
	.byte		N11	, Ds4, v124
	.byte	W24
	.byte			Ds4, v096
	.byte	W24
	.byte			Ds4, v076
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song057_4_1
	.byte	PATT	
		.word	song057_4_2
	.byte	PATT	
		.word	song057_4_1
	.byte	PATT	
		.word	song057_4_2
	.byte	PATT	
		.word	song057_4_1
	.byte	PATT	
		.word	song057_4_2
	.byte	W12
	.byte		N11	, Gs4, v124
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	GOTO	
		.word	song057_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song057_5
song057_5:	@ 0x082975DE
	.byte	KEYSH	, 0
song057_5_3:
	.byte	VOICE	, 3
	.byte	VOL	, v069
	.byte	PAN	, c_v
	.byte		N30	, Cs2, v124
	.byte	W36
	.byte		N18	
	.byte	W24
	.byte		N12	
	.byte	W12
song057_5_1:
	.byte		N09	, Dn2, v124
	.byte	W12
	.byte		N18	
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte	PEND
	.byte		N30	, Cs2
	.byte	W36
	.byte		N18	
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PATT	
		.word	song057_5_1
song057_5_2:
	.byte		N30	, Cs2, v124
	.byte	W36
	.byte		N12	, Gs2
	.byte	W24
	.byte			Cs2
	.byte	W12
	.byte	PEND
	.byte			Dn2
	.byte	W12
	.byte		N21	, An2
	.byte	W24
	.byte		N12	, Dn2
	.byte	W12
	.byte		N24	, An2
	.byte	W24
	.byte	PATT	
		.word	song057_5_2
	.byte		N12	, Dn2, v124
	.byte	W12
	.byte		N20	, An2
	.byte	W24
	.byte		N12	, Dn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs2, v084
	.byte	W12
	.byte			Cs3, v124
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn2, v084
	.byte	W12
	.byte			Dn3, v124
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	GOTO	
		.word	song057_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song057_6
song057_6:	@ 0x0829764F
	.byte	KEYSH	, 0
song057_6_3:
	.byte	VOICE	, 31
	.byte	VOL	, v047
	.byte	PAN	, c_v
	.byte		N11	, Cs1, v127
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
song057_6_1:
	.byte		N11	, Dn1, v127
	.byte	W12
	.byte		N23	, Dn2
	.byte	W24
	.byte		N11	, An2
	.byte	W12
	.byte		N23	, Dn3
	.byte	W24
	.byte	PEND
song057_6_2:
	.byte		N11	, Cs1, v127
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song057_6_1
	.byte	PATT	
		.word	song057_6_2
	.byte	PATT	
		.word	song057_6_1
	.byte	PATT	
		.word	song057_6_2
	.byte	PATT	
		.word	song057_6_1
	.byte		N11	, Cs1, v127
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn1
	.byte	W36
	.byte	GOTO	
		.word	song057_6_3
	.byte	FINE

	@********************** Track  7 **********************@

	.global song057_7
song057_7:	@ 0x082976B7
	.byte	KEYSH	, 0
song057_7_5:
	.byte	VOICE	, 56
	.byte	MOD	, 127
	.byte	VOL	, v029
	.byte	PAN	, c_v
	.byte	BENDR	, 24
	.byte	LFOS	, 127
	.byte	BEND	, c_v
	.byte		N92	, Dn5, v104
	.byte	W03
	.byte	BEND	, c_v-1
	.byte	W03
	.byte		c_v-3
	.byte	W03
	.byte		c_v-5
	.byte	W03
	.byte		c_v-7
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-11
	.byte	W03
	.byte		c_v-13
	.byte	W03
	.byte		c_v-15
	.byte	W03
	.byte		c_v-17
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W03
	.byte		c_v-23
	.byte	W03
	.byte		c_v-24
	.byte	W03
	.byte		c_v-26
	.byte	W03
	.byte		c_v-28
	.byte	W03
	.byte		c_v-30
	.byte	W03
	.byte		c_v-32
	.byte	W03
	.byte		c_v-34
	.byte	W03
	.byte		c_v-36
	.byte	W03
	.byte		c_v-38
	.byte	W03
	.byte		c_v-40
	.byte	W03
	.byte		c_v-42
	.byte	W03
	.byte		c_v-44
	.byte	W03
song057_7_1:
	.byte	BEND	, c_v-46
	.byte	W03
	.byte		c_v-48
	.byte	W03
	.byte		c_v-49
	.byte	W03
	.byte		c_v-51
	.byte	W03
	.byte		c_v-53
	.byte	W03
	.byte		c_v-55
	.byte	W03
	.byte		c_v-57
	.byte	W03
	.byte		c_v-59
	.byte	W03
	.byte		c_v
	.byte		TIE	, Dn5, v104
	.byte	W03
	.byte	BEND	, c_v-1
	.byte	W03
	.byte		c_v-3
	.byte	W03
	.byte		c_v-4
	.byte	W03
	.byte		c_v-6
	.byte	W03
	.byte		c_v-8
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-11
	.byte	W03
	.byte		c_v-13
	.byte	W03
	.byte		c_v-14
	.byte	W03
	.byte		c_v-16
	.byte	W03
	.byte		c_v-17
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W03
	.byte		c_v-22
	.byte	W03
	.byte		c_v-24
	.byte	W03
	.byte	PEND
song057_7_2:
	.byte	BEND	, c_v-26
	.byte	W03
	.byte		c_v-27
	.byte	W03
	.byte		c_v-29
	.byte	W03
	.byte		c_v-30
	.byte	W03
	.byte		c_v-32
	.byte	W03
	.byte		c_v-34
	.byte	W03
	.byte		c_v-35
	.byte	W03
	.byte		c_v-37
	.byte	W03
	.byte		c_v-39
	.byte	W03
	.byte		c_v-40
	.byte	W03
	.byte		c_v-42
	.byte	W03
	.byte		c_v-43
	.byte	W03
	.byte		c_v-45
	.byte	W03
	.byte		c_v-47
	.byte	W03
	.byte		c_v-48
	.byte	W03
	.byte		c_v-50
	.byte	W03
	.byte		c_v-52
	.byte	W03
	.byte		c_v-53
	.byte	W03
	.byte		c_v-55
	.byte	W03
	.byte		c_v-56
	.byte	W03
	.byte		c_v-58
	.byte	W03
	.byte		c_v-60
	.byte	W03
	.byte		c_v-61
	.byte	W03
	.byte		c_v-63
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte	PEND
	.byte		EOT	, Dn5
	.byte	W01
song057_7_3:
	.byte	BEND	, c_v
	.byte		N68	, Dn5, v104
	.byte	W03
	.byte	BEND	, c_v-2
	.byte	W03
	.byte		c_v-5
	.byte	W03
	.byte		c_v-8
	.byte	W03
	.byte		c_v-10
	.byte	W03
	.byte		c_v-13
	.byte	W03
	.byte		c_v-16
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W03
	.byte		c_v-24
	.byte	W03
	.byte		c_v-27
	.byte	W03
	.byte		c_v-30
	.byte	W03
	.byte		c_v-32
	.byte	W03
	.byte		c_v-35
	.byte	W03
	.byte		c_v-38
	.byte	W03
	.byte		c_v-41
	.byte	W03
	.byte		c_v-43
	.byte	W03
	.byte		c_v-46
	.byte	W03
	.byte		c_v-49
	.byte	W03
	.byte		c_v-52
	.byte	W03
	.byte		c_v-54
	.byte	W03
	.byte		c_v-57
	.byte	W03
	.byte		c_v-60
	.byte	W03
	.byte		c_v-63
	.byte	W01
	.byte		c_v-64
	.byte	W02
	.byte	PEND
song057_7_4:
	.byte	VOICE	, 56
	.byte	MOD	, 127
	.byte	BEND	, c_v
	.byte		N92	, Dn5, v104
	.byte	W03
	.byte	BEND	, c_v-1
	.byte	W03
	.byte		c_v-3
	.byte	W03
	.byte		c_v-5
	.byte	W03
	.byte		c_v-7
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-11
	.byte	W03
	.byte		c_v-13
	.byte	W03
	.byte		c_v-15
	.byte	W03
	.byte		c_v-17
	.byte	W03
	.byte		c_v-19
	.byte	W03
	.byte		c_v-21
	.byte	W03
	.byte		c_v-23
	.byte	W03
	.byte		c_v-24
	.byte	W03
	.byte		c_v-26
	.byte	W03
	.byte		c_v-28
	.byte	W03
	.byte		c_v-30
	.byte	W03
	.byte		c_v-32
	.byte	W03
	.byte		c_v-34
	.byte	W03
	.byte		c_v-36
	.byte	W03
	.byte		c_v-38
	.byte	W03
	.byte		c_v-40
	.byte	W03
	.byte		c_v-42
	.byte	W03
	.byte		c_v-44
	.byte	W03
	.byte	PEND
	.byte	PATT	
		.word	song057_7_1
	.byte	PATT	
		.word	song057_7_2
	.byte		EOT	, Dn5
	.byte	W01
	.byte	PATT	
		.word	song057_7_3
	.byte	PATT	
		.word	song057_7_4
	.byte	BEND	, c_v-46
	.byte	W03
	.byte		c_v-48
	.byte	W03
	.byte		c_v-49
	.byte	W03
	.byte		c_v-51
	.byte	W03
	.byte		c_v-53
	.byte	W03
	.byte		c_v-55
	.byte	W03
	.byte		c_v-57
	.byte	W03
	.byte		c_v-59
	.byte	W03
	.byte		c_v
	.byte		N44	, Dn5, v104
	.byte	W01
	.byte	BEND	, c_v-2
	.byte	W02
	.byte		c_v-4
	.byte	W01
	.byte		c_v-6
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-10
	.byte	W02
	.byte		c_v-12
	.byte	W01
	.byte		c_v-14
	.byte	W02
	.byte		c_v-16
	.byte	W01
	.byte		c_v-18
	.byte	W02
	.byte		c_v-20
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-25
	.byte	W01
	.byte		c_v-27
	.byte	W02
	.byte		c_v-29
	.byte	W01
	.byte		c_v-31
	.byte	W02
	.byte		c_v-33
	.byte	W01
	.byte		c_v-35
	.byte	W02
	.byte		c_v-37
	.byte	W01
	.byte		c_v-39
	.byte	W02
	.byte		c_v-41
	.byte	W01
	.byte		c_v-43
	.byte	W02
	.byte		c_v-45
	.byte	W01
	.byte		c_v-48
	.byte	W02
	.byte		c_v-50
	.byte	W01
	.byte		c_v-52
	.byte	W02
	.byte		c_v-54
	.byte	W01
	.byte		c_v-56
	.byte	W02
	.byte		c_v-58
	.byte	W01
	.byte		c_v-60
	.byte	W02
	.byte		c_v-62
	.byte	W01
	.byte		c_v-64
	.byte	W02
	.byte	GOTO	
		.word	song057_7_5
	.byte	FINE

	@********************** Track  8 **********************@

	.global song057_8
song057_8:	@ 0x0829784B
	.byte	KEYSH	, 0
song057_8_4:
	.byte	VOICE	, 89
	.byte	VOL	, v041
	.byte	PAN	, c_v
	.byte		N05	, Cn5, v104
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
song057_8_1:
	.byte		N05	, Cn5, v104
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte	PEND
song057_8_2:
	.byte		N05	, Cn5, v104
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W30
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song057_8_1
	.byte	PATT	
		.word	song057_8_2
	.byte	PATT	
		.word	song057_8_1
	.byte	PATT	
		.word	song057_8_2
	.byte	PATT	
		.word	song057_8_1
song057_8_3:
	.byte		N05	, Cn5, v104
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song057_8_3
	.byte	GOTO	
		.word	song057_8_4
	.byte	FINE

	@********************** Track  9 **********************@

	.global song057_9
song057_9:	@ 0x082978B6
	.byte	KEYSH	, 0
song057_9_2:
	.byte	VOICE	, 91
	.byte	VOL	, v041
	.byte	PAN	, c_v
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song057_9_1:
	.byte	W12
	.byte		N11	, Cn5, v104
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song057_9_1
	.byte	GOTO	
		.word	song057_9_2
	.byte	FINE

	.align 2
	.global song057
song057:	@ 0x082978DC
	.byte	9		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup016		@ voicegroup/tone

	.word	song057_1		@ track
	.word	song057_2		@ track
	.word	song057_3		@ track
	.word	song057_4		@ track
	.word	song057_5		@ track
	.word	song057_6		@ track
	.word	song057_7		@ track
	.word	song057_8		@ track
	.word	song057_9		@ track
