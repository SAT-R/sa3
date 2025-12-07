	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song063_1
song063_1:	@ 0x0829D0E4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 140
	.byte	VOICE	, 127
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W24
	.byte	TEMPO	, 80
	.byte		N24	, Ds4, v120
	.byte	W06
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W06
	.byte		N12	, Gs3
	.byte	W06
	.byte		N11	, Gn7
	.byte	W06
	.byte		N10	, Ds4
	.byte	W06
	.byte		N05	, Gs3
	.byte	W06
	.byte	TEMPO	, 80
	.byte		N11	, Gn7
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W12
	.byte		N03	, Fs4
	.byte	W05
song063_1_1:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W08
	.byte		N09	, Gn7
	.byte	W11
	.byte		N03	, Fs4
	.byte	W05
	.byte	PEND
song063_1_2:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W12
	.byte		N03	, Fs4
	.byte	W05
	.byte	PEND
song063_1_3:
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N04	, Gn7
	.byte	W05
	.byte		N06	
	.byte	W07
	.byte		N05	, Ds4
	.byte	W05
	.byte		N11	, Gn7
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte	PEND
song063_1_4:
	.byte	VOL	, v080
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, As3
	.byte	W05
	.byte		N06	, Gn7
	.byte	W07
	.byte		N05	, Cn4
	.byte	W05
	.byte		N06	, Gn7
	.byte	W06
	.byte		N05	, Dn4
	.byte	W06
	.byte		N06	, Ds4
	.byte	W07
	.byte		N09	, Gn7
	.byte	W12
	.byte		N03	, Fs4
	.byte	W05
	.byte	PEND
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
song063_1_5:
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte		N11	, Gn7, v120
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N12	, Gs3
	.byte	W12
	.byte		N06	, An3
	.byte	W07
	.byte		N05	, Gn7
	.byte	W05
	.byte		N06	, Gs3
	.byte	W07
	.byte		N05	, Gn7
	.byte	W05
	.byte		N12	, Ds4
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
	.byte		N06	, Gn7
	.byte	W07
	.byte		N04	
	.byte	W05
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	PATT	
		.word	song063_1_3
	.byte	PATT	
		.word	song063_1_4
	.byte	PATT	
		.word	song063_1_1
	.byte	PATT	
		.word	song063_1_2
	.byte	GOTO	
		.word	song063_1_5
	.byte	PATT	
		.word	song063_1_3
	.byte	W01
	.byte	FINE

	@********************** Track  2 **********************@

	.global song063_2
song063_2:	@ 0x0829D355
	.byte	KEYSH	, 0
	.byte	VOICE	, 60
	.byte	VOL	, v044
	.byte	PAN	, c_v
	.byte	W24
	.byte	W24
	.byte	W24
song063_2_1:
	.byte		N03	, Fs7, v032
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
song063_2_2:
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	PATT	
		.word	song063_2_1
	.byte	GOTO	
		.word	song063_2_2
	.byte		N03	, Fs7, v032
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W03
	.byte	FINE

	@********************** Track  3 **********************@

	.global song063_3
song063_3:	@ 0x0829D501
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	VOL	, v044
	.byte	PAN	, c_v
	.byte	W24
	.byte	W24
	.byte	W24
song063_3_1:
	.byte	W12
	.byte		N11	, Gs7, v040
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
song063_3_2:
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	PATT	
		.word	song063_3_1
	.byte	GOTO	
		.word	song063_3_2
	.byte	W12
	.byte		N11	, Gs7, v040
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song063_4
song063_4:	@ 0x0829D6AF
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	VOL	, v069
	.byte	PAN	, c_v-6
	.byte	BENDR	, 59
	.byte	W24
	.byte	W24
	.byte	W24
song063_4_1:
	.byte	W02
	.byte		N10	, Dn2, v112
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W10
	.byte	PEND
song063_4_3:
	.byte	W02
	.byte		N10	, Dn2, v112
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_4_1
song063_4_4:
	.byte	W02
	.byte		N10	, Dn2, v112
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PEND
song063_4_2:
	.byte	W02
	.byte		N10	, An1, v112
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W10
	.byte	PEND
song063_4_5:
	.byte	W02
	.byte		N10	, An1, v112
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_4_2
song063_4_6:
	.byte	W02
	.byte		N10	, An1, v112
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_5
	.byte	PATT	
		.word	song063_4_2
song063_4_10:
	.byte	PATT	
		.word	song063_4_6
	.byte	W02
	.byte		N10	, Fs1, v112
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W10
	.byte	W02
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An2
	.byte	W10
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
song063_4_7:
	.byte	W02
	.byte		N10	, Cs2, v112
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W10
	.byte	PEND
song063_4_8:
	.byte	W02
	.byte		N10	, Cs2, v112
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_4_1
	.byte	W02
	.byte		N10	, Dn2, v112
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			Fn3
	.byte	W10
	.byte	W02
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	W02
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			An3
	.byte	W10
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_7
	.byte	PATT	
		.word	song063_4_8
	.byte	PATT	
		.word	song063_4_1
	.byte	W02
	.byte		N10	, En2, v112
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_7
song063_4_9:
	.byte	W02
	.byte		N10	, Cs2, v112
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_7
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_7
	.byte	PATT	
		.word	song063_4_9
	.byte	W02
	.byte		N10	, Dn1, v112
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn1
	.byte	W12
	.byte			Dn2
	.byte	W10
	.byte	W02
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs2
	.byte	W10
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_5
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_6
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_5
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_6
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_5
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_6
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_3
	.byte	PATT	
		.word	song063_4_1
	.byte	PATT	
		.word	song063_4_4
	.byte	PATT	
		.word	song063_4_2
	.byte	PATT	
		.word	song063_4_5
	.byte	PATT	
		.word	song063_4_2
	.byte	GOTO	
		.word	song063_4_10
	.byte	PATT	
		.word	song063_4_6
	.byte	FINE

	@********************** Track  5 **********************@

	.global song063_5
song063_5:	@ 0x0829D941
	.byte	KEYSH	, 0
	.byte	VOICE	, 98
	.byte	VOL	, v069
	.byte	PAN	, c_v-29
	.byte	BEND	, c_v
	.byte	W24
	.byte	W24
	.byte	W24
song063_5_9:
	.byte		N12	, Cs3, v124
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			As2, v120
	.byte	W12
	.byte			Bn2, v124
	.byte	W24
	.byte		N68	, Fs2, v120
	.byte	W12
	.byte	PEND
song063_5_10:
	.byte	W60
	.byte		N05	, Ds2, v112
	.byte	W12
	.byte		N12	, Fs2, v124
	.byte	W12
	.byte			Ds2, v116
	.byte	W12
	.byte	PEND
song063_5_11:
	.byte		N12	, Cs3, v124
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			As2
	.byte	W12
	.byte			Bn2
	.byte	W24
	.byte			Cs3
	.byte	W12
	.byte	PEND
song063_5_12:
	.byte	W12
	.byte		N44	, Fs2, v120
	.byte	W48
	.byte		N04	, Ds2, v108
	.byte	W12
	.byte		N12	, Fs2, v120
	.byte	W12
	.byte			Ds2, v104
	.byte	W12
	.byte	PEND
song063_5_13:
	.byte		N12	, Gs2, v124
	.byte	W24
	.byte			Fs2, v120
	.byte	W24
	.byte			Ds2
	.byte	W12
	.byte			Fs2, v116
	.byte	W24
	.byte			Fs2, v120
	.byte	W12
	.byte	PEND
song063_5_14:
	.byte	W12
	.byte		N12	, Fs2, v120
	.byte	W24
	.byte		N06	, Ds2
	.byte	W12
	.byte		N24	, As2
	.byte	W24
	.byte			Ds2, v108
	.byte	W24
	.byte	PEND
song063_5_15:
	.byte		N12	, Gs2, v116
	.byte	W24
	.byte			Fs2, v120
	.byte	W24
	.byte			Ds2, v116
	.byte	W12
	.byte			Fs2, v108
	.byte	W24
	.byte			As2, v124
	.byte	W12
	.byte	PEND
song063_5_16:
	.byte	W12
	.byte		N44	, Fs2, v108
	.byte	W48
	.byte		N05	, Ds2, v092
	.byte	W12
	.byte		N12	, Fs2, v100
	.byte	W12
	.byte		N08	, Ds2, v104
	.byte	W12
	.byte	PEND
song063_5_17:
	.byte		N12	, Cs3, v124
	.byte	W24
	.byte			Bn2, v120
	.byte	W24
	.byte			As2, v124
	.byte	W12
	.byte			Bn2, v116
	.byte	W24
	.byte		N68	, Fs2, v120
	.byte	W12
	.byte	PEND
song063_5_18:
	.byte	W60
	.byte		N05	, Ds2, v120
	.byte	W12
	.byte		N12	, Fs2
	.byte	W12
	.byte			Ds2, v112
	.byte	W12
	.byte	PEND
song063_5_19:
	.byte		N12	, Cs3, v124
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			As2, v120
	.byte	W12
	.byte			Bn2, v116
	.byte	W24
	.byte			Cs3, v108
	.byte	W12
	.byte	PEND
song063_5_20:
	.byte	W12
	.byte		N44	, Fs2, v120
	.byte	W48
	.byte		N03	, Ds2, v104
	.byte	W12
	.byte		N12	, Fs2, v116
	.byte	W12
	.byte			Ds2, v108
	.byte	W12
	.byte	PEND
song063_5_21:
	.byte		N12	, Gs2, v120
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			Ds2, v116
	.byte	W12
	.byte			Fs2, v112
	.byte	W24
	.byte			Fs2, v120
	.byte	W12
	.byte	PEND
song063_5_22:
	.byte	W12
	.byte		N12	, Fs2, v116
	.byte	W24
	.byte		N06	, Ds2
	.byte	W12
	.byte		N23	, As2, v124
	.byte	W24
	.byte		N24	, Ds2, v108
	.byte	W24
	.byte	PEND
song063_5_23:
	.byte		N12	, Gs2, v120
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			Ds2, v116
	.byte	W12
	.byte			Fs2, v112
	.byte	W24
	.byte			As2, v124
	.byte	W12
	.byte	PEND
song063_5_24:
	.byte	W12
	.byte		N78	, Fs2, v116
	.byte	W84
song063_5_1:
	.byte		N12	, Ds2, v124
	.byte	W24
	.byte			Cs2, v120
	.byte	W24
	.byte			As1
	.byte	W12
	.byte			Cs2, v116
	.byte	W24
	.byte			Cs2, v120
	.byte	W12
	.byte	PEND
song063_5_2:
	.byte	W12
	.byte		N12	, Cs2, v120
	.byte	W24
	.byte		N06	, As1
	.byte	W12
	.byte		N24	, Fs2
	.byte	W24
	.byte			As1, v108
	.byte	W24
	.byte	PEND
song063_5_3:
	.byte		N12	, Ds2, v116
	.byte	W24
	.byte			Cs2, v120
	.byte	W24
	.byte			Gs1, v116
	.byte	W12
	.byte			Bn1, v108
	.byte	W24
	.byte			Fs2, v124
	.byte	W12
	.byte	PEND
song063_5_4:
	.byte	W12
	.byte		N12	, Fs2, v120
	.byte	W24
	.byte		N06	, Gs1
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte			Fs2, v108
	.byte	W24
	.byte	PEND
song063_5_5:
	.byte		N12	, As1, v124
	.byte	W24
	.byte			Gs1, v120
	.byte	W24
	.byte			Fn1
	.byte	W12
	.byte			Gs1, v116
	.byte	W24
	.byte			Gs1, v120
	.byte	W12
	.byte	PEND
song063_5_6:
	.byte	W12
	.byte		N12	, Gs1, v120
	.byte	W24
	.byte		N06	, Fn1
	.byte	W12
	.byte		N24	, Cs2
	.byte	W24
	.byte			Fn1, v108
	.byte	W24
	.byte	PEND
song063_5_7:
	.byte		N12	, Bn1, v116
	.byte	W24
	.byte			As1, v120
	.byte	W24
	.byte			Ds1, v116
	.byte	W12
	.byte			Fs1, v108
	.byte	W24
	.byte			Cs2, v124
	.byte	W12
	.byte	PEND
song063_5_8:
	.byte	W12
	.byte		N36	, Cs2, v108
	.byte	W36
	.byte		N05	, Gs1, v088
	.byte	W12
	.byte		N05	
	.byte	W10
	.byte		N13	, Cs2, v092
	.byte	W14
	.byte		N05	, Gs1, v088
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song063_5_1
	.byte	PATT	
		.word	song063_5_2
	.byte	PATT	
		.word	song063_5_3
	.byte	PATT	
		.word	song063_5_4
	.byte	PATT	
		.word	song063_5_5
	.byte	PATT	
		.word	song063_5_6
	.byte	PATT	
		.word	song063_5_7
	.byte	PATT	
		.word	song063_5_8
	.byte		N72	, Bn1, v096
	.byte	W72
	.byte		N12	, Cs2, v104
	.byte	W12
	.byte		N72	, Ds2, v108
	.byte	W12
	.byte	W60
	.byte		N36	, Fn2, v116
	.byte	W36
	.byte		N72	, Fs2, v112
	.byte	W72
	.byte		N12	, Fn2, v100
	.byte	W12
	.byte		N72	, Cs2, v104
	.byte	W12
	.byte	W60
	.byte		N32	, Gs2, v116
	.byte	W36
	.byte		N92	, As1, v088
	.byte	W96
	.byte		N56	, Fn2, v104
	.byte	W60
	.byte		N24	, Ds2
	.byte	W24
	.byte		N16	, Fn2, v100
	.byte	W12
	.byte		N17	, Fs2, v116
	.byte	W18
	.byte		N15	, Gs2, v112
	.byte	W18
	.byte		N12	, Ds2, v108
	.byte	W12
	.byte		N48	, Fs2, v104
	.byte	W48
	.byte			Gs2, v112
	.byte	W48
	.byte		N44	, Fn2, v100
	.byte	W48
	.byte		N72	, Bn2, v096
	.byte	W72
	.byte		N12	, Cs3, v104
	.byte	W12
	.byte		N72	, Ds3, v108
	.byte	W12
	.byte	W60
	.byte		N36	, Fn3, v116
	.byte	W36
	.byte		N72	, Fs3, v112
	.byte	W72
	.byte		N12	, Fn3, v100
	.byte	W12
	.byte		N72	, Cs3, v104
	.byte	W12
	.byte	W60
	.byte		N24	, Gs2, v116
	.byte	W24
	.byte		N12	, Fs2, v096
	.byte	W12
	.byte		N92	, As2, v088
	.byte	W96
	.byte		N56	, Cs3, v104
	.byte	W60
	.byte		N24	, As2
	.byte	W24
	.byte		N12	, Cs3, v100
	.byte	W12
	.byte		N17	, Fs3, v116
	.byte	W18
	.byte		N18	, Gs3, v112
	.byte	W18
	.byte		N12	, Ds3, v108
	.byte	W12
	.byte		N48	, Fs3, v104
	.byte	W48
	.byte			Gs3, v112
	.byte	W48
	.byte			Cs4, v100
	.byte	W48
	.byte	PATT	
		.word	song063_5_9
	.byte	PATT	
		.word	song063_5_10
	.byte	PATT	
		.word	song063_5_11
	.byte	PATT	
		.word	song063_5_12
	.byte	PATT	
		.word	song063_5_13
	.byte	PATT	
		.word	song063_5_14
	.byte	PATT	
		.word	song063_5_15
	.byte	PATT	
		.word	song063_5_16
	.byte	PATT	
		.word	song063_5_17
	.byte	PATT	
		.word	song063_5_18
	.byte	PATT	
		.word	song063_5_19
	.byte	PATT	
		.word	song063_5_20
	.byte	PATT	
		.word	song063_5_21
	.byte	PATT	
		.word	song063_5_22
	.byte	PATT	
		.word	song063_5_23
	.byte	W12
	.byte		N78	, Fs2, v116
	.byte	W84
	.byte	PATT	
		.word	song063_5_9
	.byte	PATT	
		.word	song063_5_10
	.byte	PATT	
		.word	song063_5_11
	.byte	PATT	
		.word	song063_5_12
	.byte	PATT	
		.word	song063_5_13
	.byte	PATT	
		.word	song063_5_14
	.byte	PATT	
		.word	song063_5_15
	.byte	PATT	
		.word	song063_5_16
	.byte	PATT	
		.word	song063_5_17
	.byte	PATT	
		.word	song063_5_18
	.byte	PATT	
		.word	song063_5_19
	.byte	PATT	
		.word	song063_5_20
	.byte	PATT	
		.word	song063_5_21
	.byte	PATT	
		.word	song063_5_22
	.byte	PATT	
		.word	song063_5_23
	.byte	GOTO	
		.word	song063_5_24
	.byte	W12
	.byte		N78	, Fs2, v116
	.byte	W78
	.byte	FINE

	@********************** Track  6 **********************@

	.global song063_6
song063_6:	@ 0x0829DC24
	.byte	KEYSH	, 0
	.byte	VOICE	, 120
	.byte	VOL	, v075
	.byte	PAN	, c_v-14
	.byte	W24
	.byte	W24
	.byte	W24
song063_6_3:
	.byte		N68	, En3, v112
	.byte	W72
	.byte		N12	, Fs3, v100
	.byte	W12
	.byte		TIE	, En3, v080
	.byte		TIE	, Gn3, v112
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
song063_6_4:
	.byte		N72	, En3, v112
	.byte	W72
	.byte		N12	, Fs3
	.byte	W12
	.byte		TIE	, En3, v080
	.byte		N60	, Gn3, v112
	.byte	W12
	.byte	PEND
song063_6_5:
	.byte	W48
	.byte		N48	, An3, v112
	.byte	W44
	.byte	W03
	.byte	PEND
	.byte		EOT	, En3
	.byte	W01
song063_6_6:
	.byte		N68	, Dn3, v112
	.byte	W72
	.byte		N13	, Cn3
	.byte	W12
	.byte		N84	, Bn2
	.byte	W12
	.byte	PEND
	.byte	W72
	.byte		N24	, An2
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N36	, Cn3, v120
	.byte	W36
	.byte		N23	, Dn3, v124
	.byte	W24
song063_6_7:
	.byte		N68	, En3, v120
	.byte	W72
	.byte		N12	, Fs3, v100
	.byte	W12
	.byte		TIE	, En3, v092
	.byte		TIE	, Gn3, v120
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
song063_6_8:
	.byte		N68	, En3, v120
	.byte	W72
	.byte		N12	, Fs3
	.byte	W12
	.byte		TIE	, En3, v092
	.byte		N60	, Gn3, v120
	.byte	W12
	.byte	PEND
	.byte	W48
	.byte		N48	, An3
	.byte	W48
	.byte		EOT	, En3
song063_6_9:
	.byte		N72	, Dn3, v120
	.byte	W72
	.byte		N12	, Cn3, v112
	.byte	W12
	.byte		N80	, Bn2, v120
	.byte	W12
	.byte	PEND
	.byte	W72
	.byte		N24	, An2, v112
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
song063_6_10:
	.byte	W36
	.byte		EOT	, Bn2
	.byte		N36	, Cn3, v124
	.byte	W36
	.byte		N22	, Dn3
	.byte	W24
	.byte		N72	, En3, v116
	.byte	W72
	.byte		N12	, Fs3, v104
	.byte	W12
	.byte		TIE	, Gn3, v108
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte		N72	, Cn3
	.byte	W72
	.byte		N11	, Dn3
	.byte	W12
	.byte		TIE	, En3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N72	, Dn3
	.byte	W72
	.byte		N12	, Cn3, v104
	.byte	W12
	.byte		N72	, Bn2, v112
	.byte	W12
	.byte	W60
	.byte		N23	, An2, v092
	.byte	W24
	.byte		N12	, Bn2, v108
	.byte	W12
	.byte		N72	, Cn3, v104
	.byte	W72
	.byte		N12	, Bn2, v116
	.byte	W12
	.byte		N56	, An2, v104
	.byte	W12
	.byte	W48
	.byte		N48	, Gn2, v116
	.byte	W48
	.byte		N72	, En3, v120
	.byte	W72
	.byte		N12	, Fs3, v108
	.byte	W12
	.byte		TIE	, Gn3, v116
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte		N72	, Cn3, v104
	.byte	W72
	.byte		N12	, Dn3, v116
	.byte	W12
	.byte		TIE	, En3
	.byte	W12
	.byte	W96
	.byte		EOT	
	.byte		N72	, Dn3, v120
	.byte	W72
	.byte		N12	, Cn3, v104
	.byte	W12
	.byte		N72	, Bn2, v120
	.byte	W12
	.byte	W60
	.byte		N24	, An2, v112
	.byte	W24
	.byte		N12	, Bn2
	.byte	W12
	.byte		N96	, Cn3, v108
	.byte	W96
	.byte		N92	, Dn3, v124
	.byte	W96
song063_6_1:
	.byte		N72	, Cn3, v096
	.byte	W72
	.byte		N12	, Dn3, v104
	.byte	W12
	.byte		N72	, En3, v108
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, Fs3, v116
	.byte	W36
song063_6_2:
	.byte		N72	, Gn3, v112
	.byte	W72
	.byte		N12	, Fs3, v100
	.byte	W12
	.byte		N72	, Dn3, v104
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N32	, An2, v116
	.byte	W36
	.byte		N92	, Bn2, v088
	.byte	W96
	.byte		N56	, Fs3, v104
	.byte	W60
	.byte		N24	, En3
	.byte	W24
	.byte		N16	, Fs3, v100
	.byte	W12
	.byte		N17	, Gn3, v116
	.byte	W18
	.byte		N15	, An3, v112
	.byte	W18
	.byte		N12	, En3, v108
	.byte	W12
	.byte		N48	, Gn3, v104
	.byte	W48
	.byte			An3, v112
	.byte	W48
	.byte		N44	, Fs3, v100
	.byte	W48
	.byte	PATT	
		.word	song063_6_1
	.byte	W60
	.byte		N36	, Dn3, v116
	.byte	W36
	.byte	PATT	
		.word	song063_6_2
	.byte	W60
	.byte		N24	, An3, v116
	.byte	W24
	.byte		N12	, Gn3, v096
	.byte	W12
	.byte		N92	, Bn3, v088
	.byte	W96
	.byte		N56	, Dn4, v104
	.byte	W60
	.byte		N24	, Bn3
	.byte	W24
	.byte		N12	, Dn4, v100
	.byte	W12
	.byte		N17	, Gn4, v116
	.byte	W18
	.byte		N18	, An4, v112
	.byte	W18
	.byte		N12	, En4, v108
	.byte	W12
	.byte		N48	, Gn4, v104
	.byte	W48
	.byte			An4, v112
	.byte	W48
	.byte			Dn5, v100
	.byte	W48
	.byte	PATT	
		.word	song063_6_3
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
	.byte	PATT	
		.word	song063_6_4
	.byte	PATT	
		.word	song063_6_5
	.byte		EOT	, En3
	.byte	W01
	.byte	PATT	
		.word	song063_6_6
	.byte	W72
	.byte		N24	, An2, v112
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N36	, Cn3, v120
	.byte	W36
	.byte		N23	, Dn3, v124
	.byte	W24
	.byte	PATT	
		.word	song063_6_7
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
	.byte	PATT	
		.word	song063_6_8
	.byte	W48
	.byte		N48	, An3, v120
	.byte	W48
	.byte		EOT	, En3
	.byte	PATT	
		.word	song063_6_9
	.byte	W72
	.byte		N24	, An2, v112
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N36	, Cn3, v124
	.byte	W36
	.byte		N22	, Dn3
	.byte	W24
	.byte	PATT	
		.word	song063_6_3
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
	.byte	PATT	
		.word	song063_6_4
	.byte	PATT	
		.word	song063_6_5
	.byte		EOT	, En3
	.byte	W01
	.byte	PATT	
		.word	song063_6_6
	.byte	W72
	.byte		N24	, An2, v112
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W36
	.byte		EOT	
	.byte		N36	, Cn3, v120
	.byte	W36
	.byte		N23	, Dn3, v124
	.byte	W24
	.byte	PATT	
		.word	song063_6_7
	.byte	W96
	.byte		EOT	, En3
	.byte			Gn3
	.byte	PATT	
		.word	song063_6_8
	.byte	W48
	.byte		N48	, An3, v120
	.byte	W48
	.byte		EOT	, En3
	.byte	PATT	
		.word	song063_6_9
	.byte	W72
	.byte		N24	, An2, v112
	.byte	W24
	.byte		TIE	, Bn2
	.byte	W96
	.byte	GOTO	
		.word	song063_6_10
	.byte	W36
	.byte		EOT	, Bn2
	.byte		N36	, Cn3, v124
	.byte	W36
	.byte		N22	, Dn3
	.byte	W22
	.byte	FINE

	@********************** Track  7 **********************@

	.global song063_7
song063_7:	@ 0x0829DE75
	.byte	KEYSH	, 0
	.byte	VOICE	, 103
	.byte	LFOS	, 0
	.byte	VOL	, v062
	.byte	PAN	, c_v+46
	.byte	W24
	.byte	W24
	.byte	W24
song063_7_1:
	.byte	W13
	.byte		N05	, As2, v088
	.byte	W13
	.byte		N03	
	.byte	W21
	.byte		N06	
	.byte	W13
	.byte		N03	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
song063_7_2:
	.byte	W12
	.byte		N05	, As2, v088
	.byte	W13
	.byte		N04	
	.byte	W23
	.byte		N05	
	.byte	W12
	.byte		N03	
	.byte	W36
	.byte	PEND
song063_7_3:
	.byte	W12
	.byte		N06	, As2, v088
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte	PEND
song063_7_4:
	.byte	W14
	.byte		N05	, As2, v088
	.byte	W12
	.byte		N04	
	.byte	W22
	.byte		N05	
	.byte	W11
	.byte		N05	
	.byte	W36
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
song063_7_5:
	.byte	W48
	.byte		N05	, Fn2, v088
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song063_7_1
	.byte	PATT	
		.word	song063_7_2
	.byte	PATT	
		.word	song063_7_3
	.byte	PATT	
		.word	song063_7_4
	.byte	W96
	.byte	W96
	.byte	W96
song063_7_12:
	.byte	PATT	
		.word	song063_7_5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song063_7_6:
	.byte	W12
	.byte		N05	, As2, v088
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song063_7_7:
	.byte		N03	, As2, v088
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W12
	.byte		N04	
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song063_7_6
song063_7_8:
	.byte		N05	, As2, v088
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W36
	.byte	PEND
song063_7_9:
	.byte	W12
	.byte		N06	, An2, v088
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song063_7_10:
	.byte	W12
	.byte		N05	, An2, v088
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W36
	.byte	PEND
song063_7_11:
	.byte	W12
	.byte		N06	, As2, v088
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			Fs2
	.byte	W12
	.byte	PATT	
		.word	song063_7_6
	.byte	PATT	
		.word	song063_7_7
	.byte	PATT	
		.word	song063_7_6
	.byte	PATT	
		.word	song063_7_8
	.byte	PATT	
		.word	song063_7_9
	.byte	PATT	
		.word	song063_7_10
	.byte	PATT	
		.word	song063_7_11
	.byte	W12
	.byte		N05	, Cn3, v088
	.byte	W12
	.byte		N04	
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			Gs2
	.byte	W12
	.byte	PATT	
		.word	song063_7_1
	.byte	PATT	
		.word	song063_7_2
	.byte	PATT	
		.word	song063_7_3
	.byte	PATT	
		.word	song063_7_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_7_5
	.byte	PATT	
		.word	song063_7_1
	.byte	PATT	
		.word	song063_7_2
	.byte	PATT	
		.word	song063_7_3
	.byte	PATT	
		.word	song063_7_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_7_5
	.byte	PATT	
		.word	song063_7_1
	.byte	PATT	
		.word	song063_7_2
	.byte	PATT	
		.word	song063_7_3
	.byte	PATT	
		.word	song063_7_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_7_5
	.byte	PATT	
		.word	song063_7_1
	.byte	PATT	
		.word	song063_7_2
	.byte	PATT	
		.word	song063_7_3
	.byte	PATT	
		.word	song063_7_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song063_7_12
	.byte	W48
	.byte		N05	, Fn2, v088
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte		N05	
	.byte	W05
	.byte	FINE

	@********************** Track  8 **********************@

	.global song063_8
song063_8:	@ 0x0829E000
	.byte	KEYSH	, 0
	.byte	VOICE	, 104
	.byte	VOL	, v056
	.byte	PAN	, c_v+46
	.byte	W24
	.byte	W24
	.byte	W24
song063_8_1:
	.byte		N17	, As2, v092
	.byte	W36
	.byte		N13	
	.byte	W36
	.byte		N16	
	.byte	W24
	.byte	PEND
song063_8_2:
	.byte		N16	, As2, v092
	.byte	W36
	.byte		N16	
	.byte	W32
	.byte	W02
	.byte		N13	, Cn3
	.byte	W13
	.byte		N12	, An2
	.byte	W13
	.byte	PEND
song063_8_3:
	.byte		N12	, As2, v092
	.byte	W36
	.byte		N16	
	.byte	W36
	.byte		N16	
	.byte	W24
	.byte	PEND
song063_8_4:
	.byte		N17	, As2, v092
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N24	, Cn3
	.byte	W24
	.byte	W02
	.byte	PEND
song063_8_5:
	.byte		N12	, Gn2, v124
	.byte	W24
	.byte			Fn2, v120
	.byte	W24
	.byte			Dn2
	.byte	W12
	.byte			Fn2, v116
	.byte	W24
	.byte			Fn2, v120
	.byte	W12
	.byte	PEND
song063_8_6:
	.byte	W12
	.byte		N12	, Fn2, v120
	.byte	W24
	.byte		N06	, Dn2
	.byte	W12
	.byte		N24	, An2
	.byte	W24
	.byte			Dn2, v108
	.byte	W24
	.byte	PEND
song063_8_7:
	.byte		N12	, Gn2, v116
	.byte	W24
	.byte			Fn2, v120
	.byte	W24
	.byte			Dn2, v116
	.byte	W12
	.byte			Fn2, v108
	.byte	W24
	.byte			An2, v124
	.byte	W12
	.byte	PEND
song063_8_8:
	.byte	W12
	.byte		N36	, Fn2, v108
	.byte	W56
	.byte	W02
	.byte		N13	, An2, v092
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	PATT	
		.word	song063_8_1
	.byte	PATT	
		.word	song063_8_2
	.byte	PATT	
		.word	song063_8_3
	.byte	PATT	
		.word	song063_8_4
	.byte	PATT	
		.word	song063_8_5
	.byte	PATT	
		.word	song063_8_6
	.byte	PATT	
		.word	song063_8_7
song063_8_20:
	.byte	PATT	
		.word	song063_8_8
song063_8_9:
	.byte		N12	, Dn3, v124
	.byte	W24
	.byte			Cn3, v120
	.byte	W24
	.byte			An2
	.byte	W12
	.byte			Cn3, v116
	.byte	W24
	.byte			Cn3, v120
	.byte	W12
	.byte	PEND
song063_8_10:
	.byte	W12
	.byte		N12	, Cn3, v120
	.byte	W24
	.byte		N06	, An2
	.byte	W12
	.byte		N24	, Fn3
	.byte	W24
	.byte			An2, v108
	.byte	W24
	.byte	PEND
song063_8_11:
	.byte		N12	, Dn3, v116
	.byte	W24
	.byte			Cn3, v120
	.byte	W24
	.byte			Gn2, v116
	.byte	W12
	.byte			As2, v108
	.byte	W24
	.byte			Fn3, v124
	.byte	W12
	.byte	PEND
song063_8_12:
	.byte	W12
	.byte		N12	, Fn3, v120
	.byte	W24
	.byte		N06	, Gn2
	.byte	W12
	.byte		N24	
	.byte	W24
	.byte			Fn3, v108
	.byte	W24
	.byte	PEND
song063_8_13:
	.byte		N12	, An2, v124
	.byte	W24
	.byte			Gn2, v120
	.byte	W24
	.byte			En2
	.byte	W12
	.byte			Gn2, v116
	.byte	W24
	.byte			Gn2, v120
	.byte	W12
	.byte	PEND
song063_8_14:
	.byte	W12
	.byte		N12	, Gn2, v120
	.byte	W24
	.byte		N06	, En2
	.byte	W12
	.byte		N24	, Cn3
	.byte	W24
	.byte			En2, v108
	.byte	W24
	.byte	PEND
song063_8_15:
	.byte		N12	, As2, v116
	.byte	W24
	.byte			An2, v120
	.byte	W24
	.byte			Dn2, v116
	.byte	W12
	.byte			Fn2, v108
	.byte	W24
	.byte			Cn3, v124
	.byte	W12
	.byte	PEND
song063_8_16:
	.byte	W12
	.byte		N36	, Cn3, v108
	.byte	W56
	.byte	W02
	.byte		N13	, Cn3, v092
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	PATT	
		.word	song063_8_9
	.byte	PATT	
		.word	song063_8_10
	.byte	PATT	
		.word	song063_8_11
	.byte	PATT	
		.word	song063_8_12
	.byte	PATT	
		.word	song063_8_13
	.byte	PATT	
		.word	song063_8_14
	.byte	PATT	
		.word	song063_8_15
	.byte	PATT	
		.word	song063_8_16
	.byte		N17	, As2, v092
	.byte	W96
	.byte	W48
	.byte		N23	
	.byte	W22
	.byte		N13	, Cn3
	.byte	W13
	.byte		N12	, An2
	.byte	W13
	.byte			As2
	.byte	W96
song063_8_17:
	.byte	W36
	.byte		N15	, As2, v092
	.byte	W32
	.byte	W02
	.byte		N12	, Cn3
	.byte	W12
	.byte			Gn2
	.byte	W13
	.byte		N13	, An2
	.byte	W01
	.byte	PEND
song063_8_18:
	.byte	W32
	.byte	W03
	.byte		N16	, An2, v092
	.byte	W56
	.byte	W03
	.byte		N17	
	.byte	W02
	.byte	PEND
song063_8_19:
	.byte	W36
	.byte		N15	, An2, v092
	.byte	W32
	.byte	W02
	.byte		N23	, Cn3
	.byte	W24
	.byte	W01
	.byte		N13	, As2
	.byte	W01
	.byte	PEND
	.byte	W32
	.byte	W03
	.byte		N16	
	.byte	W56
	.byte	W03
	.byte		N17	
	.byte	W02
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N13	, An2
	.byte	W24
	.byte	W02
	.byte		N17	, Dn3
	.byte	W96
	.byte	W48
	.byte		N23	
	.byte	W22
	.byte		N13	, Fn3
	.byte	W13
	.byte		N12	, Cn3
	.byte	W13
	.byte			As2
	.byte	W96
	.byte	PATT	
		.word	song063_8_17
	.byte	PATT	
		.word	song063_8_18
	.byte	PATT	
		.word	song063_8_19
	.byte	W32
	.byte	W03
	.byte		N16	, As2, v092
	.byte	W56
	.byte	W03
	.byte		N17	, Cn3
	.byte	W02
	.byte	W36
	.byte		N15	
	.byte	W32
	.byte	W02
	.byte		N13	, En3
	.byte	W24
	.byte	W02
	.byte	PATT	
		.word	song063_8_1
	.byte	PATT	
		.word	song063_8_2
	.byte	PATT	
		.word	song063_8_3
	.byte	PATT	
		.word	song063_8_4
	.byte	PATT	
		.word	song063_8_5
	.byte	PATT	
		.word	song063_8_6
	.byte	PATT	
		.word	song063_8_7
	.byte	PATT	
		.word	song063_8_8
	.byte	PATT	
		.word	song063_8_1
	.byte	PATT	
		.word	song063_8_2
	.byte	PATT	
		.word	song063_8_3
	.byte	PATT	
		.word	song063_8_4
	.byte	PATT	
		.word	song063_8_5
	.byte	PATT	
		.word	song063_8_6
	.byte	PATT	
		.word	song063_8_7
	.byte	PATT	
		.word	song063_8_8
	.byte	PATT	
		.word	song063_8_1
	.byte	PATT	
		.word	song063_8_2
	.byte	PATT	
		.word	song063_8_3
	.byte	PATT	
		.word	song063_8_4
	.byte	PATT	
		.word	song063_8_5
	.byte	PATT	
		.word	song063_8_6
	.byte	PATT	
		.word	song063_8_7
	.byte	PATT	
		.word	song063_8_8
	.byte	PATT	
		.word	song063_8_1
	.byte	PATT	
		.word	song063_8_2
	.byte	PATT	
		.word	song063_8_3
	.byte	PATT	
		.word	song063_8_4
	.byte	PATT	
		.word	song063_8_5
	.byte	PATT	
		.word	song063_8_6
	.byte	PATT	
		.word	song063_8_7
	.byte	GOTO	
		.word	song063_8_20
	.byte	W12
	.byte		N36	, Fn2, v108
	.byte	W56
	.byte	W02
	.byte		N13	, An2, v092
	.byte	W13
	.byte	FINE

	@********************** Track  9 **********************@

	.global song063_9
song063_9:	@ 0x0829E25C
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v069
	.byte	PAN	, c_v+36
	.byte	W24
	.byte	W24
	.byte	W24
song063_9_1:
	.byte	W28
	.byte		N06	, Cs5, v080
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W18
	.byte			Cs5, v080
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W14
	.byte	PEND
song063_9_2:
	.byte	W16
	.byte		N06	, Cs5, v068
	.byte	W06
	.byte			Fs4, v064
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs4, v060
	.byte	W30
	.byte			Cs5, v052
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5, v028
	.byte	W06
	.byte			Fs4, v024
	.byte	W14
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
song063_9_3:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song063_9_1
	.byte	PATT	
		.word	song063_9_2
	.byte	W96
	.byte	GOTO	
		.word	song063_9_3
	.byte	FINE

	@********************** Track  10 **********************@

	.global song063_10
song063_10:	@ 0x0829E344
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	VOL	, v069
	.byte	PAN	, c_v-54
	.byte	W24
	.byte	W24
	.byte	W24
song063_10_1:
	.byte	W64
	.byte		N06	, Cs5, v092
	.byte	W06
	.byte			Fs4
	.byte	W18
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	PEND
song063_10_2:
	.byte	W04
	.byte		N06	, Cs5, v092
	.byte	W06
	.byte			Fs4
	.byte	W30
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Fs4
	.byte	W21
	.byte		N05	, Cs5
	.byte	W06
	.byte		N06	, Fs4
	.byte	W06
	.byte			Cs5
	.byte	W05
	.byte	PEND
song063_10_3:
	.byte	W01
	.byte		N06	, Fs4, v092
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
song063_10_11:
	.byte	W96
song063_10_4:
	.byte	W03
	.byte		N02	, Fs3, v092
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N06	, Fs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N04	, Fs3
	.byte	W12
	.byte		N02	, En2
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte		N06	, Fs3
	.byte	W09
	.byte	PEND
song063_10_5:
	.byte	W03
	.byte		N01	, Fs2, v092
	.byte	W12
	.byte		N04	, Fs3
	.byte	W12
	.byte		N01	, Gs2
	.byte	W02
	.byte		N04	, Gs3
	.byte	W10
	.byte			Gs2
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte		N03	, Gs2
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte			Fs2
	.byte	W09
	.byte	PEND
song063_10_6:
	.byte	W03
	.byte		N02	, An2, v092
	.byte	W06
	.byte			Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N06	, An3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, An3
	.byte	W09
	.byte	PEND
song063_10_7:
	.byte	W03
	.byte		N01	, Gs2, v092
	.byte	W12
	.byte		N04	, Gs3
	.byte	W12
	.byte		N01	, An2
	.byte	W02
	.byte		N04	, An3
	.byte	W10
	.byte			An2
	.byte	W12
	.byte		N06	, An3
	.byte	W12
	.byte		N03	, An2
	.byte	W12
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W06
	.byte		N02	
	.byte	W09
	.byte	PEND
song063_10_8:
	.byte	W03
	.byte		N02	, Gs3, v092
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N04	, Gs3
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W09
	.byte	PEND
song063_10_9:
	.byte	W03
	.byte		N01	, An2, v092
	.byte	W12
	.byte		N04	, Gs3
	.byte	W12
	.byte		N01	, Fs2
	.byte	W02
	.byte		N04	, Gs3
	.byte	W10
	.byte			Fs2
	.byte	W12
	.byte		N06	, Gs3
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N02	, Gs3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W09
	.byte	PEND
song063_10_10:
	.byte	W03
	.byte		N02	, An3, v092
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N02	, Gn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N06	, Gs3
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		N01	, An2
	.byte	W12
	.byte		N04	, An3
	.byte	W12
	.byte		N01	, Fs2
	.byte	W02
	.byte		N04	, An3
	.byte	W10
	.byte			Fs2
	.byte	W12
	.byte		N06	, An3
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N02	, Gs3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W01
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
	.byte	W02
	.byte	PATT	
		.word	song063_10_4
	.byte	PATT	
		.word	song063_10_5
	.byte	PATT	
		.word	song063_10_6
	.byte	PATT	
		.word	song063_10_7
	.byte	PATT	
		.word	song063_10_8
	.byte	PATT	
		.word	song063_10_9
	.byte	PATT	
		.word	song063_10_10
	.byte	W03
	.byte		N01	, An2, v092
	.byte	W12
	.byte		N04	, Bn3
	.byte	W12
	.byte		N01	, Fs2
	.byte	W02
	.byte		N04	, Bn3
	.byte	W10
	.byte			Fs2
	.byte	W12
	.byte		N06	, Bn3
	.byte	W12
	.byte		N03	, Fs2
	.byte	W12
	.byte		N02	, Bn3
	.byte	W06
	.byte			Fs2
	.byte	W06
	.byte			En2
	.byte	W01
	.byte		N06	, Cs5
	.byte	W06
	.byte			Fs4
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
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	W96
	.byte	PATT	
		.word	song063_10_1
	.byte	PATT	
		.word	song063_10_2
	.byte	PATT	
		.word	song063_10_3
	.byte	GOTO	
		.word	song063_10_11
	.byte	FINE

	@********************** Track  11 **********************@

	.global song063_11
song063_11:	@ 0x0829E576
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v075
	.byte	PAN	, c_v-4
	.byte	BEND	, c_v
	.byte	W24
	.byte	W24
	.byte	W24
song063_11_1:
	.byte		N12	, En5, v120
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte		N68	, An4
	.byte	W12
	.byte	PEND
song063_11_14:
	.byte	W20
	.byte	MOD	, 1
	.byte	W12
	.byte		3
	.byte	W06
	.byte		6
	.byte	W22
	.byte		N05	, Fs4, v120
	.byte	W03
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W08
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
song063_11_2:
	.byte		N12	, En5, v120
	.byte	W24
	.byte			Dn5
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte			Dn5
	.byte	W24
	.byte			En5
	.byte	W12
	.byte	PEND
song063_11_15:
	.byte	W12
	.byte		N44	, An4, v120
	.byte	W18
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W07
	.byte		11
	.byte	W08
	.byte		7
	.byte	W01
	.byte		N04	, Fs4
	.byte	W01
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W10
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
song063_11_3:
	.byte		N12	, Bn4, v120
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W24
	.byte		N12	
	.byte	W12
	.byte	PEND
song063_11_16:
	.byte	W12
	.byte		N12	, An4, v120
	.byte	W24
	.byte		N06	, Fs4
	.byte	W12
	.byte		N24	, Cs5
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte	PEND
song063_11_4:
	.byte		N12	, Bn4, v120
	.byte	W24
	.byte			An4
	.byte	W24
	.byte			Fs4
	.byte	W12
	.byte			An4
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte	PEND
song063_11_17:
	.byte	W12
	.byte		N44	, An4, v120
	.byte	W23
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W07
	.byte		12
	.byte	W05
	.byte		N05	, Fs4
	.byte	W08
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N12	, An4
	.byte	W12
	.byte		N08	, Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song063_11_1
song063_11_18:
	.byte	W04
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W08
	.byte		11
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W09
	.byte		N05	, Fs4, v120
	.byte	W12
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song063_11_2
song063_11_19:
	.byte	W12
	.byte		N44	, An4, v120
	.byte	W14
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W08
	.byte		10
	.byte	W13
	.byte		7
	.byte	W02
	.byte		3
	.byte	W01
	.byte		1
	.byte	W01
	.byte		N03	, Fs4
	.byte	W01
	.byte	MOD	, 0
	.byte	W11
	.byte		N12	, An4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song063_11_3
song063_11_20:
	.byte	W12
	.byte		N12	, An4, v120
	.byte	W24
	.byte		N06	, Fs4
	.byte	W12
	.byte		N23	, Cs5
	.byte	W24
	.byte		N24	, Fs4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song063_11_4
song063_11_21:
	.byte	W12
	.byte		N78	, An4, v120
	.byte	W20
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W05
	.byte		6
	.byte	W06
	.byte		8
	.byte	W32
	.byte	W01
	.byte		2
	.byte	W02
	.byte		0
	.byte	W11
	.byte	PEND
song063_11_5:
	.byte	W02
	.byte		N68	, En4, v084
	.byte	W68
	.byte	W02
	.byte		N05	, Cs4, v092
	.byte	W04
	.byte		N12	, Dn4, v096
	.byte	W10
	.byte		N80	, Cs4
	.byte	W10
	.byte	PEND
	.byte	W72
	.byte		N28	, Bn3, v100
	.byte	W24
	.byte	W03
	.byte		N04	, Cn4, v092
	.byte	W01
	.byte		N72	, Cs4, v104
	.byte	W68
	.byte	W01
	.byte		N05	, An3, v088
	.byte	W03
	.byte		N11	, Bn3, v084
	.byte	W10
	.byte		TIE	, Fs3, v092
	.byte	W10
	.byte	W90
	.byte	W01
	.byte		EOT	
	.byte	W05
song063_11_6:
	.byte	W01
	.byte		N72	, Gs3, v108
	.byte	W72
	.byte	W02
	.byte		N12	, An3, v104
	.byte	W12
	.byte		N68	, Bn3, v100
	.byte	W09
	.byte	PEND
song063_11_7:
	.byte	W60
	.byte	W03
	.byte		N32	, Fs3, v096
	.byte	W32
	.byte	W01
	.byte	PEND
song063_11_8:
	.byte	W01
	.byte		N05	, Cn4, v096
	.byte	W02
	.byte		N23	, Cs4, v100
	.byte	W22
	.byte		N10	, Bn3, v104
	.byte	W13
	.byte		N12	, En4, v100
	.byte	W24
	.byte		N05	, Cn4, v088
	.byte	W02
	.byte		N11	, Cs4, v104
	.byte	W22
	.byte		TIE	, Bn3, v100
	.byte	W10
	.byte	PEND
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song063_11_5
	.byte	W72
	.byte		N28	, Bn3, v100
	.byte	W24
	.byte	W01
	.byte		N05	, Cn4, v092
	.byte	W03
	.byte		N23	, Cs4, v100
	.byte	W22
	.byte		N10	, Bn3, v104
	.byte	W12
	.byte		N12	, En4, v096
	.byte	W24
	.byte		N13	, Cs4, v104
	.byte	W24
	.byte		TIE	, Bn3
	.byte	W10
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song063_11_6
	.byte	PATT	
		.word	song063_11_7
	.byte	PATT	
		.word	song063_11_8
	.byte	W92
	.byte		EOT	, Bn3
	.byte	W04
song063_11_9:
	.byte		N68	, Fs4, v100
	.byte	W72
	.byte		N12	, Gs4, v096
	.byte	W12
	.byte		N72	, An4, v092
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, Bn4, v104
	.byte	W36
song063_11_10:
	.byte		N03	, Cn5, v096
	.byte	W03
	.byte		N21	, Cs5, v092
	.byte	W21
	.byte		N12	, Bn4, v100
	.byte	W12
	.byte			En5, v096
	.byte	W24
	.byte			Cs5, v092
	.byte	W24
	.byte		N72	, Bn4, v096
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, An4, v092
	.byte	W36
song063_11_11:
	.byte		N03	, Cn5, v076
	.byte	W03
	.byte		N68	, Cs5, v088
	.byte	W68
	.byte	W01
	.byte		N12	, Bn4, v084
	.byte	W12
	.byte			An4, v092
	.byte	W12
	.byte	PEND
song063_11_12:
	.byte		N60	, Gs4, v108
	.byte	W60
	.byte		N24	, Fs4, v088
	.byte	W24
	.byte		N12	, Gs4
	.byte	W12
	.byte	PEND
song063_11_13:
	.byte		N18	, An4, v096
	.byte	W18
	.byte			Bn4, v092
	.byte	W18
	.byte		N12	, Fs4, v088
	.byte	W12
	.byte		N44	, An4, v092
	.byte	W48
	.byte	PEND
	.byte			Bn4, v100
	.byte	W44
	.byte		N05	, Gn4, v076
	.byte	W04
	.byte		N48	, Gs4, v088
	.byte	W48
	.byte	PATT	
		.word	song063_11_9
	.byte	W60
	.byte		N36	, Bn4, v104
	.byte	W36
	.byte	PATT	
		.word	song063_11_10
	.byte	W60
	.byte		N36	, An4, v092
	.byte	W36
	.byte	PATT	
		.word	song063_11_11
	.byte	PATT	
		.word	song063_11_12
	.byte	PATT	
		.word	song063_11_13
	.byte	W03
	.byte		N90	, Bn4, v096
	.byte	W92
	.byte	W01
	.byte	PATT	
		.word	song063_11_1
	.byte	PATT	
		.word	song063_11_14
	.byte	PATT	
		.word	song063_11_2
	.byte	PATT	
		.word	song063_11_15
	.byte	PATT	
		.word	song063_11_3
	.byte	PATT	
		.word	song063_11_16
	.byte	PATT	
		.word	song063_11_4
	.byte	PATT	
		.word	song063_11_17
	.byte	PATT	
		.word	song063_11_1
	.byte	PATT	
		.word	song063_11_18
	.byte	PATT	
		.word	song063_11_2
	.byte	PATT	
		.word	song063_11_19
	.byte	PATT	
		.word	song063_11_3
	.byte	PATT	
		.word	song063_11_20
	.byte	PATT	
		.word	song063_11_4
	.byte	PATT	
		.word	song063_11_21
	.byte	PATT	
		.word	song063_11_1
	.byte	PATT	
		.word	song063_11_14
	.byte	PATT	
		.word	song063_11_2
	.byte	PATT	
		.word	song063_11_15
	.byte	PATT	
		.word	song063_11_3
	.byte	PATT	
		.word	song063_11_16
	.byte	PATT	
		.word	song063_11_4
	.byte	PATT	
		.word	song063_11_17
	.byte	PATT	
		.word	song063_11_1
	.byte	PATT	
		.word	song063_11_18
	.byte	PATT	
		.word	song063_11_2
	.byte	PATT	
		.word	song063_11_19
	.byte	PATT	
		.word	song063_11_3
	.byte	PATT	
		.word	song063_11_20
	.byte	PATT	
		.word	song063_11_4
	.byte	GOTO	
		.word	song063_11_21
	.byte	W12
	.byte		N78	, An4, v120
	.byte	W20
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W05
	.byte		6
	.byte	W06
	.byte		8
	.byte	W32
	.byte	W01
	.byte		2
	.byte	W02
	.byte		0
	.byte	W05
	.byte	FINE

	@********************** Track  12 **********************@

	.global song063_12
song063_12:	@ 0x0829E873
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	VOL	, v069
	.byte	PAN	, c_v+6
	.byte	W24
	.byte	W24
	.byte	W24
song063_12_1:
	.byte	W02
	.byte		N12	, En4, v080
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N68	, An3
	.byte	W10
	.byte	PEND
song063_12_14:
	.byte	W20
	.byte	MOD	, 1
	.byte	W12
	.byte		3
	.byte	W06
	.byte		6
	.byte	W24
	.byte		N05	, Fs3, v080
	.byte	W01
	.byte	MOD	, 2
	.byte	W01
	.byte		0
	.byte	W10
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
song063_12_2:
	.byte	W02
	.byte		N12	, En4, v080
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Cs4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte			En4
	.byte	W10
	.byte	PEND
song063_12_15:
	.byte	W14
	.byte		N44	, An3, v080
	.byte	W16
	.byte	MOD	, 1
	.byte	W04
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W07
	.byte		11
	.byte	W08
	.byte		7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte		N04	, Fs3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
song063_12_3:
	.byte	W02
	.byte		N12	, Bn3, v080
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W24
	.byte		N12	
	.byte	W10
	.byte	PEND
song063_12_16:
	.byte	W14
	.byte		N12	, An3, v080
	.byte	W24
	.byte		N06	, Fs3
	.byte	W12
	.byte		N24	, Cs4
	.byte	W24
	.byte			Fs3
	.byte	W22
	.byte	PEND
song063_12_4:
	.byte	W02
	.byte		N12	, Bn3, v080
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte			An3
	.byte	W24
	.byte			Cs4
	.byte	W10
	.byte	PEND
song063_12_17:
	.byte	W14
	.byte		N44	, An3, v080
	.byte	W21
	.byte	MOD	, 2
	.byte	W07
	.byte		5
	.byte	W03
	.byte		7
	.byte	W03
	.byte		10
	.byte	W07
	.byte		12
	.byte	W07
	.byte		N05	, Fs3
	.byte	W06
	.byte	MOD	, 7
	.byte	W02
	.byte		2
	.byte	W01
	.byte		0
	.byte	W03
	.byte		N12	, An3
	.byte	W12
	.byte		N08	, Fs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_12_1
song063_12_18:
	.byte	W04
	.byte	MOD	, 1
	.byte	W06
	.byte		3
	.byte	W05
	.byte		6
	.byte	W05
	.byte		8
	.byte	W08
	.byte		11
	.byte	W22
	.byte		3
	.byte	W01
	.byte		0
	.byte	W11
	.byte		N05	, Fs3, v080
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_12_2
song063_12_19:
	.byte	W14
	.byte		N44	, An3, v080
	.byte	W12
	.byte	MOD	, 2
	.byte	W04
	.byte		5
	.byte	W05
	.byte		7
	.byte	W08
	.byte		10
	.byte	W13
	.byte		7
	.byte	W02
	.byte		3
	.byte	W01
	.byte		1
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N03	, Fs3
	.byte	W12
	.byte		N12	, An3
	.byte	W12
	.byte			Fs3
	.byte	W10
	.byte	PEND
	.byte	PATT	
		.word	song063_12_3
song063_12_20:
	.byte	W14
	.byte		N12	, An3, v080
	.byte	W24
	.byte		N06	, Fs3
	.byte	W12
	.byte		N23	, Cs4
	.byte	W24
	.byte		N24	, Fs3
	.byte	W22
	.byte	PEND
	.byte	PATT	
		.word	song063_12_4
song063_12_21:
	.byte	W14
	.byte		N78	, An3, v080
	.byte	W18
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W05
	.byte		6
	.byte	W06
	.byte		8
	.byte	W32
	.byte	W01
	.byte		2
	.byte	W02
	.byte		0
	.byte	W11
	.byte	PEND
song063_12_5:
	.byte	W02
	.byte		N68	, En4, v084
	.byte	W68
	.byte	W02
	.byte		N05	, Cs4, v092
	.byte	W04
	.byte		N12	, Dn4, v096
	.byte	W10
	.byte		N80	, Cs4
	.byte	W10
	.byte	PEND
	.byte	W72
	.byte		N28	, Bn3, v100
	.byte	W24
	.byte	W03
	.byte		N04	, Cn4, v092
	.byte	W01
	.byte		N72	, Cs4, v104
	.byte	W68
	.byte	W01
	.byte		N05	, An3, v088
	.byte	W03
	.byte		N11	, Bn3, v084
	.byte	W10
	.byte		TIE	, Fs3, v092
	.byte	W10
	.byte	W90
	.byte	W01
	.byte		EOT	
	.byte	W05
song063_12_6:
	.byte	W01
	.byte		N72	, Gs3, v108
	.byte	W72
	.byte	W02
	.byte		N12	, An3, v104
	.byte	W12
	.byte		N68	, Bn3, v100
	.byte	W09
	.byte	PEND
song063_12_7:
	.byte	W60
	.byte	W03
	.byte		N32	, Fs3, v096
	.byte	W32
	.byte	W01
	.byte	PEND
song063_12_8:
	.byte	W01
	.byte		N05	, Cn4, v096
	.byte	W02
	.byte		N23	, Cs4, v100
	.byte	W22
	.byte		N10	, Bn3, v104
	.byte	W13
	.byte		N12	, En4, v100
	.byte	W24
	.byte		N05	, Cn4, v088
	.byte	W02
	.byte		N11	, Cs4, v104
	.byte	W22
	.byte		TIE	, Bn3, v100
	.byte	W10
	.byte	PEND
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song063_12_5
	.byte	W72
	.byte		N28	, Bn3, v100
	.byte	W24
	.byte	W01
	.byte		N05	, Cn4, v092
	.byte	W03
	.byte		N23	, Cs4, v100
	.byte	W22
	.byte		N10	, Bn3, v104
	.byte	W12
	.byte		N12	, En4, v096
	.byte	W24
	.byte		N13	, Cs4, v104
	.byte	W24
	.byte		TIE	, Bn3
	.byte	W10
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte	PATT	
		.word	song063_12_6
	.byte	PATT	
		.word	song063_12_7
	.byte	PATT	
		.word	song063_12_8
	.byte	W92
	.byte		EOT	, Bn3
	.byte	W04
song063_12_9:
	.byte		N68	, Fs4, v100
	.byte	W72
	.byte		N12	, Gs4, v096
	.byte	W12
	.byte		N72	, An4, v092
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, Bn4, v104
	.byte	W36
song063_12_10:
	.byte		N03	, Cn5, v096
	.byte	W03
	.byte		N21	, Cs5, v092
	.byte	W21
	.byte		N12	, Bn4, v100
	.byte	W12
	.byte			En5, v096
	.byte	W24
	.byte			Cs5, v092
	.byte	W24
	.byte		N72	, Bn4, v096
	.byte	W12
	.byte	PEND
	.byte	W60
	.byte		N36	, An4, v092
	.byte	W36
song063_12_11:
	.byte		N03	, Cn5, v076
	.byte	W03
	.byte		N68	, Cs5, v088
	.byte	W68
	.byte	W01
	.byte		N12	, Bn4, v084
	.byte	W12
	.byte			An4, v092
	.byte	W12
	.byte	PEND
song063_12_12:
	.byte		N60	, Gs4, v108
	.byte	W60
	.byte		N24	, Fs4, v088
	.byte	W24
	.byte		N12	, Gs4
	.byte	W12
	.byte	PEND
song063_12_13:
	.byte		N18	, An4, v096
	.byte	W18
	.byte			Bn4, v092
	.byte	W18
	.byte		N12	, Fs4, v088
	.byte	W12
	.byte		N44	, An4, v092
	.byte	W48
	.byte	PEND
	.byte			Bn4, v100
	.byte	W44
	.byte		N05	, Gn4, v076
	.byte	W04
	.byte		N48	, Gs4, v088
	.byte	W48
	.byte	PATT	
		.word	song063_12_9
	.byte	W60
	.byte		N36	, Bn4, v104
	.byte	W36
	.byte	PATT	
		.word	song063_12_10
	.byte	W60
	.byte		N36	, An4, v092
	.byte	W36
	.byte	PATT	
		.word	song063_12_11
	.byte	PATT	
		.word	song063_12_12
	.byte	PATT	
		.word	song063_12_13
	.byte	W03
	.byte		N90	, Bn4, v096
	.byte	W92
	.byte	W01
	.byte	PATT	
		.word	song063_12_1
	.byte	PATT	
		.word	song063_12_14
	.byte	PATT	
		.word	song063_12_2
	.byte	PATT	
		.word	song063_12_15
	.byte	PATT	
		.word	song063_12_3
	.byte	PATT	
		.word	song063_12_16
	.byte	PATT	
		.word	song063_12_4
	.byte	PATT	
		.word	song063_12_17
	.byte	PATT	
		.word	song063_12_1
	.byte	PATT	
		.word	song063_12_18
	.byte	PATT	
		.word	song063_12_2
	.byte	PATT	
		.word	song063_12_19
	.byte	PATT	
		.word	song063_12_3
	.byte	PATT	
		.word	song063_12_20
	.byte	PATT	
		.word	song063_12_4
	.byte	PATT	
		.word	song063_12_21
	.byte	PATT	
		.word	song063_12_1
	.byte	PATT	
		.word	song063_12_14
	.byte	PATT	
		.word	song063_12_2
	.byte	PATT	
		.word	song063_12_15
	.byte	PATT	
		.word	song063_12_3
	.byte	PATT	
		.word	song063_12_16
	.byte	PATT	
		.word	song063_12_4
	.byte	PATT	
		.word	song063_12_17
	.byte	PATT	
		.word	song063_12_1
	.byte	PATT	
		.word	song063_12_18
	.byte	PATT	
		.word	song063_12_2
	.byte	PATT	
		.word	song063_12_19
	.byte	PATT	
		.word	song063_12_3
	.byte	PATT	
		.word	song063_12_20
	.byte	PATT	
		.word	song063_12_4
	.byte	GOTO	
		.word	song063_12_21
	.byte	W14
	.byte		N78	, An3, v080
	.byte	W18
	.byte	MOD	, 1
	.byte	W07
	.byte		3
	.byte	W05
	.byte		6
	.byte	W06
	.byte		8
	.byte	W32
	.byte	W01
	.byte		2
	.byte	W02
	.byte		0
	.byte	W07
	.byte	FINE
    
	mAlignWord
	.global song063
song063:	@ 0x0829EB70
	.byte	12		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	mAlignWord
	.word	voicegroup008		@ voicegroup/tone

	.word	song063_1		@ track
	.word	song063_2		@ track
	.word	song063_3		@ track
	.word	song063_4		@ track
	.word	song063_5		@ track
	.word	song063_6		@ track
	.word	song063_7		@ track
	.word	song063_8		@ track
	.word	song063_9		@ track
	.word	song063_10		@ track
	.word	song063_11		@ track
	.word	song063_12		@ track
