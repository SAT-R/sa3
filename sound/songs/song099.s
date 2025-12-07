	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song099_1
song099_1:	@ 0x082AEE48
	.byte	KEYSH	, 0
	.byte	TEMPO	, 38
	.byte	VOICE	, 108
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N03	, En4, v092
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte			As4, v076
	.byte	W03
	.byte			Dn5, v104
	.byte	W03
	.byte			Fn5, v088
	.byte	W03
	.byte			As5, v080
	.byte	W03
	.byte			Cn6, v088
	.byte	W03
	.byte			Gn5, v076
	.byte	W03
	.byte			En5, v092
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			Gn4, v096
	.byte	W03
	.byte		N05	, En4, v092
	.byte	W05
	.byte	FINE

	@********************** Track  2 **********************@

	.global song099_2
song099_2:	@ 0x082AEE78
	.byte	KEYSH	, 0
	.byte	VOICE	, 109
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N03	, Cn4, v096
	.byte	W03
	.byte			As3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Fn4, v076
	.byte	W03
	.byte			As4, v064
	.byte	W03
	.byte			Dn5, v096
	.byte	W03
	.byte			Fn5, v100
	.byte	W03
	.byte			En5, v092
	.byte	W03
	.byte			Cn5
	.byte	W03
	.byte			Gn4, v080
	.byte	W03
	.byte			En4, v092
	.byte	W03
	.byte		N05	, Cn4, v096
	.byte	W05
	.byte	FINE

	@********************** Track  3 **********************@

	.global song099_3
song099_3:	@ 0x082AEEA4
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v058
	.byte	PAN	, c_v
	.byte		N03	, En3, v092
	.byte	W03
	.byte			Fn3
	.byte	W03
	.byte			As3, v076
	.byte	W03
	.byte			Dn4, v104
	.byte	W03
	.byte			Fn4, v088
	.byte	W03
	.byte			As4, v080
	.byte	W03
	.byte			Cn5, v088
	.byte	W03
	.byte			Gn4, v076
	.byte	W03
	.byte			En4, v092
	.byte	W03
	.byte			Cn4, v088
	.byte	W03
	.byte			Gn3, v096
	.byte	W03
	.byte		N05	, En3, v092
	.byte	W05
	.byte	FINE

	@********************** Track  4 **********************@

	.global song099_4
song099_4:	@ 0x082AEED2
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v046
	.byte	PAN	, c_v
	.byte		N03	, Cn3, v096
	.byte	W03
	.byte			As2
	.byte	W03
	.byte			Dn3
	.byte	W03
	.byte			Fn3, v076
	.byte	W03
	.byte			As3, v064
	.byte	W03
	.byte			Dn4, v096
	.byte	W03
	.byte			Fn4, v100
	.byte	W03
	.byte			En4, v092
	.byte	W03
	.byte			Cn4
	.byte	W03
	.byte			Gn3, v080
	.byte	W03
	.byte			En3, v092
	.byte	W03
	.byte		N05	, Cn3, v096
	.byte	W05
	.byte	FINE
    
	mAlignWord
	.global song099
song099:	@ 0x082AEF00
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	mPtr	voicegroup021		@ voicegroup/tone

	mPtr	song099_1		@ track
	mPtr	song099_2		@ track
	mPtr	song099_3		@ track
	mPtr	song099_4		@ track
