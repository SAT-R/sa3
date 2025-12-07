	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	mSectionRodata

	@********************** Track  1 **********************@

	mAlignWord
	.global song526_1
song526_1:	@ 0x082B0B58
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 63
	.byte	VOL	, v120
	.byte	BENDR	, 6
	.byte	LFOS	, 127
	.byte	MODT	, 0
	.byte	LFODL	, 0
	.byte	PAN	, c_v
	.byte		TIE	, Gn3, v127
	.byte	W02
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-27
	.byte	W04
	.byte		c_v-28
	.byte	W04
	.byte		c_v-29
	.byte	W04
	.byte		c_v-30
	.byte	W04
	.byte		c_v-31
	.byte	W04
	.byte		c_v-32
	.byte	W04
	.byte		c_v-33
	.byte	W04
	.byte		c_v-34
	.byte	W04
	.byte		c_v-35
	.byte	W04
	.byte		c_v-36
	.byte	W04
	.byte		c_v-37
	.byte	W04
	.byte		c_v-38
	.byte	W04
	.byte		c_v-39
	.byte	W04
	.byte		c_v-40
	.byte	W04
	.byte		c_v-41
	.byte	W04
	.byte		c_v-42
	.byte	W04
	.byte		c_v-43
	.byte	W03
	.byte	VOICE	, 25
	.byte	BEND	, c_v-44
	.byte	W04
	.byte		c_v-45
	.byte	W04
	.byte		c_v-46
	.byte	W04
	.byte		c_v-47
	.byte	W04
	.byte		c_v-48
	.byte	W01
	.byte	W03
	.byte		c_v-49
	.byte	W04
	.byte		c_v-50
	.byte	W04
	.byte		EOT	
	.byte	BEND	, c_v-51
	.byte	W01
	.byte		TIE	
	.byte	W03
	.byte	BEND	, c_v-52
	.byte	W04
	.byte		c_v-53
	.byte	W04
	.byte		c_v-54
	.byte	W04
	.byte		c_v-55
	.byte	W04
	.byte		c_v-56
	.byte	W04
	.byte		c_v-57
	.byte	W04
	.byte		c_v-58
	.byte	W04
	.byte		c_v-59
	.byte	W06
	.byte		c_v-64
	.byte	W01
	.byte		c_v-63
	.byte	W01
	.byte		c_v-62
	.byte	W01
	.byte		c_v-61
	.byte	W01
	.byte		c_v-59
	.byte	W01
	.byte		c_v-58
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-53
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-48
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v-1
	.byte	W01
	.byte		c_v
	.byte	W40
	.byte	W01
	.byte		EOT	
	.byte	FINE
    
	mAlignWord
	.global song526
song526:	@ 0x082B0C38
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	25		@ priority
	.byte	128		@ reverb
    
	mAlignWord
	.word	voicegroup003		@ voicegroup/tone

	.word	song526_1		@ track
