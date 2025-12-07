	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song100_1
song100_1:	@ 0x082AEF18
	.byte	KEYSH	, 0
	.byte	TEMPO	, 38
	.byte	VOICE	, 108
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Bn4, v108
	.byte	W02
	.byte			Gn4
	.byte	W03
	.byte			Dn5
	.byte	W03
	.byte		N05	, Bn4
	.byte	W05
	.byte			Gn5
	.byte	W05
	.byte		N10	, Dn5
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song100_2
song100_2:	@ 0x082AEF33
	.byte	KEYSH	, 0
	.byte	VOICE	, 109
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Dn4, v108
	.byte	W02
	.byte			Bn3
	.byte	W03
	.byte			Fs4
	.byte	W03
	.byte		N05	, Dn4
	.byte	W05
	.byte			Bn4
	.byte	W05
	.byte		N10	, Fs4
	.byte	W11
	.byte	FINE

	@********************** Track  3 **********************@

	.global song100_3
song100_3:	@ 0x082AEF4C
	.byte	KEYSH	, 0
	.byte	VOICE	, 63
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Bn3, v108
	.byte	W02
	.byte			Gn3
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte		N05	, Bn3
	.byte	W05
	.byte			Gn4
	.byte	W05
	.byte		N10	, Dn4
	.byte	W11
	.byte	FINE

	@********************** Track  4 **********************@

	.global song100_4
song100_4:	@ 0x082AEF65
	.byte	KEYSH	, 0
	.byte	VOICE	, 64
	.byte	VOL	, v077
	.byte	PAN	, c_v
	.byte		N02	, Dn3, v108
	.byte	W02
	.byte			Bn2
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte		N05	, Dn3
	.byte	W05
	.byte			Bn3
	.byte	W05
	.byte		N10	, Fs3
	.byte	W11
	.byte	FINE
    
	mAlignWord
	.global song100
song100:	@ 0x082AEF80
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup021		@ voicegroup/tone

	.word	song100_1		@ track
	.word	song100_2		@ track
	.word	song100_3		@ track
	.word	song100_4		@ track
