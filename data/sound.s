.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/m4a.inc"
.include "asm/macros/music_voice.inc"
	.section .rodata
	
.include "sound/voicegroups/voicegroup000.inc"
.include "sound/voicegroups/voicegroup001.inc"
.include "sound/voicegroups/voicegroup002.inc"
.include "sound/voicegroups/voicegroup003.inc"
.include "sound/voicegroups/voicegroup004.inc"
.include "sound/voicegroups/voicegroup005.inc"
.include "sound/voicegroups/voicegroup006.inc"
.include "sound/voicegroups/voicegroup007.inc"
.include "sound/voicegroups/voicegroup008.inc"
.include "sound/voicegroups/voicegroup009.inc"
.include "sound/voicegroups/voicegroup010.inc"
.include "sound/voicegroups/voicegroup011.inc"
.include "sound/voicegroups/voicegroup012.inc"
.include "sound/voicegroups/voicegroup013.inc"
.include "sound/voicegroups/voicegroup014.inc"
.include "sound/voicegroups/voicegroup015.inc"
.include "sound/voicegroups/voicegroup016.inc"
.include "sound/voicegroups/voicegroup017.inc"
.include "sound/voicegroups/voicegroup018.inc"
.include "sound/voicegroups/voicegroup019.inc"
.include "sound/voicegroups/voicegroup020.inc"
.include "sound/voicegroups/voicegroup021.inc"
.include "sound/voicegroups/voicegroup022.inc"
.include "sound/voicegroups/voicegroup023.inc"
.include "sound/voicegroups/voicegroup024.inc"
.include "sound/voicegroups/voicegroup025.inc"
.include "sound/voicegroups/voicegroup026.inc"
.include "sound/voicegroups/voicegroup027.inc"
	.align 2
	@********************** KeySplit **********************@

	.global KeySplitTable000
KeySplitTable000:	@ 0x00000000
	.byte	1
	.byte	60
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	1
	.byte	60
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	10
	.byte	60
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	0
	.byte	0
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	56
	.byte	57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	58
	.byte	59
	.byte	60
	.byte	0
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	0
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0

	.align 2
	.global ProgrammableWaveData_80EB6EC
ProgrammableWaveData_80EB6EC:
	.incbin "sound/programmable_wave_samples/080EB6EC.pcm"

	.align 2
	.global ProgrammableWaveData_80EB6FC
ProgrammableWaveData_80EB6FC:
	.incbin "sound/programmable_wave_samples/080EB6FC.pcm"

	.align 2
	.global ProgrammableWaveData_80EB70C
ProgrammableWaveData_80EB70C:
	.incbin "sound/programmable_wave_samples/080EB70C.pcm"

	.align 2
	.global ProgrammableWaveData_80EB71C
ProgrammableWaveData_80EB71C:
	.incbin "sound/programmable_wave_samples/080EB71C.pcm"

	.align 2
	.global ProgrammableWaveData_80EB72C
ProgrammableWaveData_80EB72C:
	.incbin "sound/programmable_wave_samples/080EB72C.pcm"

	.align 2
	.global ProgrammableWaveData_80EB73C
ProgrammableWaveData_80EB73C:
	.incbin "sound/programmable_wave_samples/080EB73C.pcm"

	.align 2
	.global ProgrammableWaveData_80EB74C
ProgrammableWaveData_80EB74C:
	.incbin "sound/programmable_wave_samples/080EB74C.pcm"

	.align 2
	.global ProgrammableWaveData_80EB75C
ProgrammableWaveData_80EB75C:
	.incbin "sound/programmable_wave_samples/080EB75C.pcm"

	.align 2
	.global ProgrammableWaveData_80EB76C
ProgrammableWaveData_80EB76C:
	.incbin "sound/programmable_wave_samples/080EB76C.pcm"

	.align 2
	.global gMPlayTable
gMPlayTable:	@ 0x080EB77C
	music_player gMPlayInfo_BGM, 0x02000000, 16, 0
	music_player gMPlayInfo_SE1, 0x02000500, 16, 0
	music_player gMPlayInfo_SE2, 0x02000A00, 16, 0
	music_player gMPlayInfo_SE3, 0x02000F00, 16, 0

	.align 2
	.global gSongTable
gSongTable:	@ 0x080EB7AC
	song song000, 0, 0
	song song001, 0, 0
	song song002, 0, 0
	song song003, 0, 0
	song song004, 0, 0
	song song005, 0, 0
	song song006, 0, 0
	song song007, 0, 0
	song song008, 0, 0
	song song009, 0, 0
	song song010, 0, 0
	song song011, 0, 0
	song song012, 0, 0
	song song013, 0, 0
	song song014, 0, 0
	song song015, 0, 0
	song song016, 0, 0
	song song017, 0, 0
	song song018, 0, 0
	song song009, 0, 0
	song song020, 0, 0
	song song021, 0, 0
	song song022, 0, 0
	song song009, 0, 0
	song song024, 0, 0
	song song025, 0, 0
	song song026, 0, 0
	song song009, 0, 0
	song song028, 0, 0
	song song029, 0, 0
	song song030, 0, 0
	song song009, 0, 0
	song song032, 0, 0
	song song033, 0, 0
	song song034, 0, 0
	song song009, 0, 0
	song song036, 0, 0
	song song037, 0, 0
	song song038, 0, 0
	song song009, 0, 0
	song song040, 0, 0
	song song041, 0, 0
	song song042, 0, 0
	song song009, 0, 0
	song song044, 0, 0
	song song045, 0, 0
	song song046, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song050, 0, 0
	song song051, 0, 0
	song song052, 0, 0
	song song053, 0, 0
	song song054, 0, 0
	song song055, 0, 0
	song song056, 0, 0
	song song057, 0, 0
	song song058, 0, 0
	song song059, 0, 0
	song song060, 0, 0
	song song061, 0, 0
	song song062, 0, 0
	song song063, 0, 0
	song song064, 0, 0
	song song065, 0, 0
	song song066, 0, 0
	song song067, 0, 0
	song song068, 0, 0
	song song069, 0, 0
	song song070, 0, 0
	song song071, 0, 0
	song song072, 0, 0
	song song073, 0, 0
	song song009, 0, 0
	song song075, 0, 0
	song song076, 0, 0
	song song009, 0, 0
	song song078, 0, 0
	song song079, 0, 0
	song song009, 0, 0
	song song081, 0, 0
	song song082, 0, 0
	song song083, 0, 0
	song song084, 0, 0
	song song085, 0, 0
	song song086, 0, 0
	song song087, 0, 0
	song song088, 0, 0
	song song089, 0, 0
	song song009, 0, 0
	song song091, 1, 1
	song song092, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song095, 0, 0
	song song096, 0, 0
	song song097, 0, 0
	song song098, 1, 1
	song song099, 1, 1
	song song100, 1, 1
	song song009, 0, 0
	song song102, 3, 3
	song song103, 3, 3
	song song104, 3, 3
	song song105, 3, 3
	song song106, 2, 2
	song song107, 2, 2
	song song108, 2, 2
	song song109, 3, 3
	song song110, 2, 2
	song song111, 3, 3
	song song112, 3, 3
	song song113, 2, 2
	song song114, 2, 2
	song song115, 2, 2
	song song116, 2, 2
	song song117, 3, 3
	song song118, 3, 3
	song song119, 2, 2
	song song120, 3, 3
	song song121, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song125, 3, 3
	song song126, 3, 3
	song song009, 0, 0
	song song128, 3, 3
	song song129, 3, 3
	song song009, 0, 0
	song song131, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song135, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song138, 2, 2
	song song139, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song142, 3, 3
	song song143, 1, 1
	song song144, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song148, 3, 3
	song song149, 3, 3
	song song150, 2, 2
	song song151, 2, 2
	song song152, 2, 2
	song song009, 0, 0
	song song154, 2, 2
	song song155, 2, 2
	song song156, 2, 2
	song song157, 2, 2
	song song158, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song169, 2, 2
	song song170, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song220, 2, 2
	song song221, 2, 2
	song song222, 2, 2
	song song223, 2, 2
	song song224, 2, 2
	song song009, 0, 0
	song song226, 2, 2
	song song227, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song230, 2, 2
	song song231, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song235, 2, 2
	song song009, 0, 0
	song song237, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song276, 2, 2
	song song277, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song280, 2, 2
	song song281, 2, 2
	song song282, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song290, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song500, 3, 3
	song song501, 3, 3
	song song502, 3, 3
	song song503, 3, 3
	song song504, 3, 3
	song song505, 3, 3
	song song506, 3, 3
	song song507, 3, 3
	song song508, 3, 3
	song song509, 3, 3
	song song510, 3, 3
	song song511, 3, 3
	song song512, 3, 3
	song song513, 3, 3
	song song514, 2, 2
	song song515, 2, 2
	song song516, 2, 2
	song song517, 2, 2
	song song518, 2, 2
	song song519, 2, 2
	song song520, 2, 2
	song song521, 2, 2
	song song522, 2, 2
	song song523, 2, 2
	song song524, 2, 2
	song song525, 2, 2
	song song526, 2, 2
	song song527, 2, 2
	song song528, 2, 2
	song song529, 2, 2
	song song530, 2, 2
	song song531, 2, 2
	song song532, 2, 2
	song song533, 2, 2
	song song534, 2, 2
	song song535, 2, 2
	song song536, 2, 2
	song song537, 2, 2
	song song538, 2, 2
	song song539, 2, 2
	song song540, 2, 2
	song song541, 2, 2
	song song542, 2, 2
	song song543, 2, 2
	song song544, 2, 2
	song song545, 3, 3
	song song546, 2, 2
	song song547, 2, 2
	song song548, 2, 2
	song song549, 2, 2
	song song550, 2, 2
	song song551, 2, 2
	song song552, 2, 2
	song song553, 2, 2
	song song554, 2, 2
	song song555, 2, 2
	song song556, 2, 2
	song song557, 2, 2
	song song558, 2, 2
	song song559, 2, 2
	song song560, 2, 2
	song song561, 2, 2
	song song562, 2, 2
	song song563, 2, 2
	song song564, 2, 2
	song song565, 2, 2
	song song566, 2, 2
	song song567, 2, 2
	song song568, 2, 2
	song song569, 2, 2
	song song570, 2, 2
	song song571, 2, 2
	song song572, 2, 2
	song song573, 2, 2
	song song574, 2, 2
	song song575, 2, 2
	song song576, 2, 2
	song song577, 2, 2
	song song578, 2, 2
	song song579, 2, 2
	song song580, 3, 3
	song song581, 3, 3
	song song582, 2, 2
	song song583, 2, 2
	song song584, 2, 2
	song song585, 2, 2
	song song586, 2, 2
	song song587, 2, 2
	song song588, 2, 2
	song song589, 2, 2
	song song590, 2, 2
	song song591, 2, 2
	song song592, 2, 2
	song song593, 2, 2
	song song594, 3, 3
	song song595, 2, 2
	song song596, 2, 2
	song song597, 3, 3
	song song598, 2, 2
	song song599, 2, 2
	song song600, 2, 2
	song song601, 2, 2
	song song602, 3, 3
	song song603, 3, 3
	song song604, 2, 2
	song song605, 2, 2
	song song606, 2, 2
	song song607, 2, 2
	song song608, 2, 2
	song song609, 2, 2
	song song610, 2, 2
	song song611, 2, 2
	song song612, 2, 2
	song song613, 3, 3
	song song614, 3, 3
	song song615, 3, 3
	song song616, 3, 3
	song song617, 3, 3
	song song618, 3, 3
	song song619, 3, 3
	song song620, 3, 3
	song song621, 3, 3
	song song622, 3, 3
	song song009, 0, 0
	song song624, 3, 3
	song song625, 3, 3
	song song626, 3, 3
	song song627, 3, 3
	song song628, 3, 3
	song song629, 3, 3
	song song630, 3, 3
	song song631, 3, 3
	song song632, 3, 3
	song song633, 3, 3
	song song634, 3, 3
	song song635, 3, 3
	song song636, 3, 3
	song song637, 3, 3
	song song638, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song665, 3, 3
	song song666, 3, 3
	song song667, 3, 3
	song song668, 3, 3
	song song669, 3, 3
	song song670, 3, 3
	song song671, 3, 3
	song song672, 3, 3
	song song673, 3, 3
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song801, 0, 0
	song song802, 0, 0
	song song803, 0, 0
	song song009, 0, 0
	song song805, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song810, 2, 2
	song song811, 2, 2
	song song812, 2, 2
	song song813, 2, 2
	song song814, 2, 2
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song009, 0, 0
	song song819, 2, 2
	song song820, 2, 2
	song song821, 2, 2
	song song822, 2, 2
	song song823, 2, 2
	song song009, 0, 0
	song song825, 2, 2
	song song826, 2, 2
	song song827, 2, 2
	song song828, 2, 2


	.align 2
	.global song009
song009:	@ 0x080ED194
	.byte	0		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	0		@ reverb

	.align 2
	.global gUnknown_080ED198
gUnknown_080ED198:
	.incbin "sound/direct_sound_samples/080ED198.bin"

	.align 2
	.global gUnknown_080F25B4
gUnknown_080F25B4:
	.incbin "sound/direct_sound_samples/080F25B4.bin"

	.align 2
	.global gUnknown_080F416C
gUnknown_080F416C:
	.incbin "sound/direct_sound_samples/080F416C.bin"

	.align 2
	.global gUnknown_080F8254
gUnknown_080F8254:
	.incbin "sound/direct_sound_samples/080F8254.bin"

	.align 2
	.global gUnknown_080FCEB0
gUnknown_080FCEB0:
	.incbin "sound/direct_sound_samples/080FCEB0.bin"

	.align 2
	.global gUnknown_080FDB50
gUnknown_080FDB50:
	.incbin "sound/direct_sound_samples/080FDB50.bin"

	.align 2
	.global gUnknown_080FF0D4
gUnknown_080FF0D4:
	.incbin "sound/direct_sound_samples/080FF0D4.bin"

	.align 2
	.global gUnknown_081006F8
gUnknown_081006F8:
	.incbin "sound/direct_sound_samples/081006F8.bin"

	.align 2
	.global gUnknown_0810102C
gUnknown_0810102C:
	.incbin "sound/direct_sound_samples/0810102C.bin"

	.align 2
	.global gUnknown_08106140
gUnknown_08106140:
	.incbin "sound/direct_sound_samples/08106140.bin"

	.align 2
	.global gUnknown_08109258
gUnknown_08109258:
	.incbin "sound/direct_sound_samples/08109258.bin"

	.align 2
	.global gUnknown_0810A0D4
gUnknown_0810A0D4:
	.incbin "sound/direct_sound_samples/0810A0D4.bin"

	.align 2
	.global gUnknown_0810A994
gUnknown_0810A994:
	.incbin "sound/direct_sound_samples/0810A994.bin"

	.align 2
	.global gUnknown_0810D470
gUnknown_0810D470:
	.incbin "sound/direct_sound_samples/0810D470.bin"

	.align 2
	.global gUnknown_0810E47C
gUnknown_0810E47C:
	.incbin "sound/direct_sound_samples/0810E47C.bin"

	.align 2
	.global gUnknown_08110C74
gUnknown_08110C74:
	.incbin "sound/direct_sound_samples/08110C74.bin"

	.align 2
	.global gUnknown_08111AF0
gUnknown_08111AF0:
	.incbin "sound/direct_sound_samples/08111AF0.bin"

	.align 2
	.global gUnknown_081188BC
gUnknown_081188BC:
	.incbin "sound/direct_sound_samples/081188BC.bin"

	.align 2
	.global gUnknown_0811AC48
gUnknown_0811AC48:
	.incbin "sound/direct_sound_samples/0811AC48.bin"

	.align 2
	.global gUnknown_0811D400
gUnknown_0811D400:
	.incbin "sound/direct_sound_samples/0811D400.bin"

	.align 2
	.global gUnknown_0811F460
gUnknown_0811F460:
	.incbin "sound/direct_sound_samples/0811F460.bin"

	.align 2
	.global gUnknown_08121D84
gUnknown_08121D84:
	.incbin "sound/direct_sound_samples/08121D84.bin"

	.align 2
	.global gUnknown_081243B0
gUnknown_081243B0:
	.incbin "sound/direct_sound_samples/081243B0.bin"

	.align 2
	.global gUnknown_08126CD4
gUnknown_08126CD4:
	.incbin "sound/direct_sound_samples/08126CD4.bin"

	.align 2
	.global gUnknown_08128C00
gUnknown_08128C00:
	.incbin "sound/direct_sound_samples/08128C00.bin"

	.align 2
	.global gUnknown_0812B060
gUnknown_0812B060:
	.incbin "sound/direct_sound_samples/0812B060.bin"

	.align 2
	.global gUnknown_0812CEC4
gUnknown_0812CEC4:
	.incbin "sound/direct_sound_samples/0812CEC4.bin"

	.align 2
	.global gUnknown_0812F3F4
gUnknown_0812F3F4:
	.incbin "sound/direct_sound_samples/0812F3F4.bin"

	.align 2
	.global gUnknown_08130F88
gUnknown_08130F88:
	.incbin "sound/direct_sound_samples/08130F88.bin"

	.align 2
	.global gUnknown_0813629C
gUnknown_0813629C:
	.incbin "sound/direct_sound_samples/0813629C.bin"

	.align 2
	.global gUnknown_08137920
gUnknown_08137920:
	.incbin "sound/direct_sound_samples/08137920.bin"

	.align 2
	.global gUnknown_08139750
gUnknown_08139750:
	.incbin "sound/direct_sound_samples/08139750.bin"

	.align 2
	.global gUnknown_0813AFE8
gUnknown_0813AFE8:
	.incbin "sound/direct_sound_samples/0813AFE8.bin"

	.align 2
	.global gUnknown_0813D1F0
gUnknown_0813D1F0:
	.incbin "sound/direct_sound_samples/0813D1F0.bin"

	.align 2
	.global gUnknown_0813F0C8
gUnknown_0813F0C8:
	.incbin "sound/direct_sound_samples/0813F0C8.bin"

	.align 2
	.global gUnknown_08140768
gUnknown_08140768:
	.incbin "sound/direct_sound_samples/08140768.bin"

	.align 2
	.global gUnknown_081430D8
gUnknown_081430D8:
	.incbin "sound/direct_sound_samples/081430D8.bin"

	.align 2
	.global gUnknown_08143D9C
gUnknown_08143D9C:
	.incbin "sound/direct_sound_samples/08143D9C.bin"

	.align 2
	.global gUnknown_081455E0
gUnknown_081455E0:
	.incbin "sound/direct_sound_samples/081455E0.bin"

	.align 2
	.global gUnknown_081475B4
gUnknown_081475B4:
	.incbin "sound/direct_sound_samples/081475B4.bin"

	.align 2
	.global gUnknown_08148470
gUnknown_08148470:
	.incbin "sound/direct_sound_samples/08148470.bin"

	.align 2
	.global gUnknown_0814949C
gUnknown_0814949C:
	.incbin "sound/direct_sound_samples/0814949C.bin"

	.align 2
	.global gUnknown_0814B390
gUnknown_0814B390:
	.incbin "sound/direct_sound_samples/0814B390.bin"

	.align 2
	.global gUnknown_0814D508
gUnknown_0814D508:
	.incbin "sound/direct_sound_samples/0814D508.bin"

	.align 2
	.global gUnknown_0814F258
gUnknown_0814F258:
	.incbin "sound/direct_sound_samples/0814F258.bin"

	.align 2
	.global gUnknown_08151520
gUnknown_08151520:
	.incbin "sound/direct_sound_samples/08151520.bin"

	.align 2
	.global gUnknown_08154250
gUnknown_08154250:
	.incbin "sound/direct_sound_samples/08154250.bin"

	.align 2
	.global gUnknown_08156278
gUnknown_08156278:
	.incbin "sound/direct_sound_samples/08156278.bin"

	.align 2
	.global gUnknown_081580E0
gUnknown_081580E0:
	.incbin "sound/direct_sound_samples/081580E0.bin"

	.align 2
	.global gUnknown_08159C54
gUnknown_08159C54:
	.incbin "sound/direct_sound_samples/08159C54.bin"

	.align 2
	.global gUnknown_0815B47C
gUnknown_0815B47C:
	.incbin "sound/direct_sound_samples/0815B47C.bin"

	.align 2
	.global gUnknown_0815DD14
gUnknown_0815DD14:
	.incbin "sound/direct_sound_samples/0815DD14.bin"

	.align 2
	.global gUnknown_0815ECE4
gUnknown_0815ECE4:
	.incbin "sound/direct_sound_samples/0815ECE4.bin"

	.align 2
	.global gUnknown_0816110C
gUnknown_0816110C:
	.incbin "sound/direct_sound_samples/0816110C.bin"

	.align 2
	.global gUnknown_0816592C
gUnknown_0816592C:
	.incbin "sound/direct_sound_samples/0816592C.bin"

	.align 2
	.global gUnknown_081661DC
gUnknown_081661DC:
	.incbin "sound/direct_sound_samples/081661DC.bin"

	.align 2
	.global gUnknown_08166E54
gUnknown_08166E54:
	.incbin "sound/direct_sound_samples/08166E54.bin"

	.align 2
	.global gUnknown_08167FEC
gUnknown_08167FEC:
	.incbin "sound/direct_sound_samples/08167FEC.bin"

	.align 2
	.global gUnknown_081688F0
gUnknown_081688F0:
	.incbin "sound/direct_sound_samples/081688F0.bin"

	.align 2
	.global gUnknown_08169360
gUnknown_08169360:
	.incbin "sound/direct_sound_samples/08169360.bin"

	.align 2
	.global gUnknown_0816D4A0
gUnknown_0816D4A0:
	.incbin "sound/direct_sound_samples/0816D4A0.bin"

	.align 2
	.global gUnknown_081712A8
gUnknown_081712A8:
	.incbin "sound/direct_sound_samples/081712A8.bin"

	.align 2
	.global gUnknown_08171A5C
gUnknown_08171A5C:
	.incbin "sound/direct_sound_samples/08171A5C.bin"

	.align 2
	.global gUnknown_0817226C
gUnknown_0817226C:
	.incbin "sound/direct_sound_samples/0817226C.bin"

	.align 2
	.global gUnknown_08172A1C
gUnknown_08172A1C:
	.incbin "sound/direct_sound_samples/08172A1C.bin"

	.align 2
	.global gUnknown_08173560
gUnknown_08173560:
	.incbin "sound/direct_sound_samples/08173560.bin"

	.align 2
	.global gUnknown_08174DC0
gUnknown_08174DC0:
	.incbin "sound/direct_sound_samples/08174DC0.bin"

	.align 2
	.global gUnknown_081756CC
gUnknown_081756CC:
	.incbin "sound/direct_sound_samples/081756CC.bin"

	.align 2
	.global gUnknown_08175F90
gUnknown_08175F90:
	.incbin "sound/direct_sound_samples/08175F90.bin"

	.align 2
	.global gUnknown_0817680C
gUnknown_0817680C:
	.incbin "sound/direct_sound_samples/0817680C.bin"

	.align 2
	.global gUnknown_08177474
gUnknown_08177474:
	.incbin "sound/direct_sound_samples/08177474.bin"

	.align 2
	.global gUnknown_081778FC
gUnknown_081778FC:
	.incbin "sound/direct_sound_samples/081778FC.bin"

	.align 2
	.global gUnknown_081781E0
gUnknown_081781E0:
	.incbin "sound/direct_sound_samples/081781E0.bin"

	.align 2
	.global gUnknown_08178AAC
gUnknown_08178AAC:
	.incbin "sound/direct_sound_samples/08178AAC.bin"

	.align 2
	.global gUnknown_08178F3C
gUnknown_08178F3C:
	.incbin "sound/direct_sound_samples/08178F3C.bin"

	.align 2
	.global gUnknown_08179368
gUnknown_08179368:
	.incbin "sound/direct_sound_samples/08179368.bin"

	.align 2
	.global gUnknown_081797B4
gUnknown_081797B4:
	.incbin "sound/direct_sound_samples/081797B4.bin"

	.align 2
	.global gUnknown_08179C78
gUnknown_08179C78:
	.incbin "sound/direct_sound_samples/08179C78.bin"

	.align 2
	.global gUnknown_0817A2F4
gUnknown_0817A2F4:
	.incbin "sound/direct_sound_samples/0817A2F4.bin"

	.align 2
	.global gUnknown_0817A728
gUnknown_0817A728:
	.incbin "sound/direct_sound_samples/0817A728.bin"

	.align 2
	.global gUnknown_0817AABC
gUnknown_0817AABC:
	.incbin "sound/direct_sound_samples/0817AABC.bin"

	.align 2
	.global gUnknown_0817B290
gUnknown_0817B290:
	.incbin "sound/direct_sound_samples/0817B290.bin"

	.align 2
	.global gUnknown_0817BBAC
gUnknown_0817BBAC:
	.incbin "sound/direct_sound_samples/0817BBAC.bin"

	.align 2
	.global gUnknown_0817C224
gUnknown_0817C224:
	.incbin "sound/direct_sound_samples/0817C224.bin"

	.align 2
	.global gUnknown_0817CB28
gUnknown_0817CB28:
	.incbin "sound/direct_sound_samples/0817CB28.bin"

	.align 2
	.global gUnknown_0817D160
gUnknown_0817D160:
	.incbin "sound/direct_sound_samples/0817D160.bin"

	.align 2
	.global gUnknown_0817D48C
gUnknown_0817D48C:
	.incbin "sound/direct_sound_samples/0817D48C.bin"

	.align 2
	.global gUnknown_0817DAC4
gUnknown_0817DAC4:
	.incbin "sound/direct_sound_samples/0817DAC4.bin"

	.align 2
	.global gUnknown_0817E12C
gUnknown_0817E12C:
	.incbin "sound/direct_sound_samples/0817E12C.bin"

	.align 2
	.global gUnknown_0817E948
gUnknown_0817E948:
	.incbin "sound/direct_sound_samples/0817E948.bin"

	.align 2
	.global gUnknown_0817F080
gUnknown_0817F080:
	.incbin "sound/direct_sound_samples/0817F080.bin"

	.align 2
	.global gUnknown_0817F9F4
gUnknown_0817F9F4:
	.incbin "sound/direct_sound_samples/0817F9F4.bin"

	.align 2
	.global gUnknown_0817FB1C
gUnknown_0817FB1C:
	.incbin "sound/direct_sound_samples/0817FB1C.bin"

	.align 2
	.global gUnknown_081800AC
gUnknown_081800AC:
	.incbin "sound/direct_sound_samples/081800AC.bin"

	.align 2
	.global gUnknown_0818063C
gUnknown_0818063C:
	.incbin "sound/direct_sound_samples/0818063C.bin"

	.align 2
	.global gUnknown_08180B10
gUnknown_08180B10:
	.incbin "sound/direct_sound_samples/08180B10.bin"

	.align 2
	.global gUnknown_08180FF0
gUnknown_08180FF0:
	.incbin "sound/direct_sound_samples/08180FF0.bin"

	.align 2
	.global gUnknown_08181C88
gUnknown_08181C88:
	.incbin "sound/direct_sound_samples/08181C88.bin"

	.align 2
	.global gUnknown_081828D8
gUnknown_081828D8:
	.incbin "sound/direct_sound_samples/081828D8.bin"

	.align 2
	.global gUnknown_0818381C
gUnknown_0818381C:
	.incbin "sound/direct_sound_samples/0818381C.bin"

	.align 2
	.global gUnknown_081841D0
gUnknown_081841D0:
	.incbin "sound/direct_sound_samples/081841D0.bin"

	.align 2
	.global gUnknown_08184A6C
gUnknown_08184A6C:
	.incbin "sound/direct_sound_samples/08184A6C.bin"

	.align 2
	.global gUnknown_0818541C
gUnknown_0818541C:
	.incbin "sound/direct_sound_samples/0818541C.bin"

	.align 2
	.global gUnknown_08185CD0
gUnknown_08185CD0:
	.incbin "sound/direct_sound_samples/08185CD0.bin"

	.align 2
	.global gUnknown_08186678
gUnknown_08186678:
	.incbin "sound/direct_sound_samples/08186678.bin"

	.align 2
	.global gUnknown_08186F24
gUnknown_08186F24:
	.incbin "sound/direct_sound_samples/08186F24.bin"

	.align 2
	.global gUnknown_081878D0
gUnknown_081878D0:
	.incbin "sound/direct_sound_samples/081878D0.bin"

	.align 2
	.global gUnknown_08188220
gUnknown_08188220:
	.incbin "sound/direct_sound_samples/08188220.bin"

	.align 2
	.global gUnknown_08188B1C
gUnknown_08188B1C:
	.incbin "sound/direct_sound_samples/08188B1C.bin"

	.align 2
	.global gUnknown_081893E0
gUnknown_081893E0:
	.incbin "sound/direct_sound_samples/081893E0.bin"

	.align 2
	.global gUnknown_08189B78
gUnknown_08189B78:
	.incbin "sound/direct_sound_samples/08189B78.bin"

	.align 2
	.global gUnknown_0818A31C
gUnknown_0818A31C:
	.incbin "sound/direct_sound_samples/0818A31C.bin"

	.align 2
	.global gUnknown_0818A988
gUnknown_0818A988:
	.incbin "sound/direct_sound_samples/0818A988.bin"

	.align 2
	.global gUnknown_0818BA04
gUnknown_0818BA04:
	.incbin "sound/direct_sound_samples/0818BA04.bin"

	.align 2
	.global gUnknown_0818C11C
gUnknown_0818C11C:
	.incbin "sound/direct_sound_samples/0818C11C.bin"

	.align 2
	.global gUnknown_0818C978
gUnknown_0818C978:
	.incbin "sound/direct_sound_samples/0818C978.bin"

	.align 2
	.global gUnknown_0818CFE4
gUnknown_0818CFE4:
	.incbin "sound/direct_sound_samples/0818CFE4.bin"

	.align 2
	.global gUnknown_0818D7A4
gUnknown_0818D7A4:
	.incbin "sound/direct_sound_samples/0818D7A4.bin"

	.align 2
	.global gUnknown_0818DE68
gUnknown_0818DE68:
	.incbin "sound/direct_sound_samples/0818DE68.bin"

	.align 2
	.global gUnknown_0818E510
gUnknown_0818E510:
	.incbin "sound/direct_sound_samples/0818E510.bin"

	.align 2
	.global gUnknown_0818ECF4
gUnknown_0818ECF4:
	.incbin "sound/direct_sound_samples/0818ECF4.bin"

	.align 2
	.global gUnknown_0818F548
gUnknown_0818F548:
	.incbin "sound/direct_sound_samples/0818F548.bin"

	.align 2
	.global gUnknown_0818FB38
gUnknown_0818FB38:
	.incbin "sound/direct_sound_samples/0818FB38.bin"

	.align 2
	.global gUnknown_08190310
gUnknown_08190310:
	.incbin "sound/direct_sound_samples/08190310.bin"

	.align 2
	.global gUnknown_081909FC
gUnknown_081909FC:
	.incbin "sound/direct_sound_samples/081909FC.bin"

	.align 2
	.global gUnknown_081911E0
gUnknown_081911E0:
	.incbin "sound/direct_sound_samples/081911E0.bin"

	.align 2
	.global gUnknown_081918E0
gUnknown_081918E0:
	.incbin "sound/direct_sound_samples/081918E0.bin"

	.align 2
	.global gUnknown_08192014
gUnknown_08192014:
	.incbin "sound/direct_sound_samples/08192014.bin"

	.align 2
	.global gUnknown_081927E4
gUnknown_081927E4:
	.incbin "sound/direct_sound_samples/081927E4.bin"

	.align 2
	.global gUnknown_08192F98
gUnknown_08192F98:
	.incbin "sound/direct_sound_samples/08192F98.bin"

	.align 2
	.global gUnknown_081936E8
gUnknown_081936E8:
	.incbin "sound/direct_sound_samples/081936E8.bin"

	.align 2
	.global gUnknown_08193F68
gUnknown_08193F68:
	.incbin "sound/direct_sound_samples/08193F68.bin"

	.align 2
	.global gUnknown_081945E4
gUnknown_081945E4:
	.incbin "sound/direct_sound_samples/081945E4.bin"

	.align 2
	.global gUnknown_08194E04
gUnknown_08194E04:
	.incbin "sound/direct_sound_samples/08194E04.bin"

	.align 2
	.global gUnknown_08195464
gUnknown_08195464:
	.incbin "sound/direct_sound_samples/08195464.bin"

	.align 2
	.global gUnknown_08195BAC
gUnknown_08195BAC:
	.incbin "sound/direct_sound_samples/08195BAC.bin"

	.align 2
	.global gUnknown_081962F8
gUnknown_081962F8:
	.incbin "sound/direct_sound_samples/081962F8.bin"

	.align 2
	.global gUnknown_08196A58
gUnknown_08196A58:
	.incbin "sound/direct_sound_samples/08196A58.bin"

	.align 2
	.global gUnknown_0819715C
gUnknown_0819715C:
	.incbin "sound/direct_sound_samples/0819715C.bin"

	.align 2
	.global gUnknown_08197884
gUnknown_08197884:
	.incbin "sound/direct_sound_samples/08197884.bin"

	.align 2
	.global gUnknown_08197FCC
gUnknown_08197FCC:
	.incbin "sound/direct_sound_samples/08197FCC.bin"

	.align 2
	.global gUnknown_081984A0
gUnknown_081984A0:
	.incbin "sound/direct_sound_samples/081984A0.bin"

	.align 2
	.global gUnknown_08198C6C
gUnknown_08198C6C:
	.incbin "sound/direct_sound_samples/08198C6C.bin"

	.align 2
	.global gUnknown_081998FC
gUnknown_081998FC:
	.incbin "sound/direct_sound_samples/081998FC.bin"

	.align 2
	.global gUnknown_0819E910
gUnknown_0819E910:
	.incbin "sound/direct_sound_samples/0819E910.bin"

	.align 2
	.global gUnknown_081A4124
gUnknown_081A4124:
	.incbin "sound/direct_sound_samples/081A4124.bin"

	.align 2
	.global gUnknown_081A5054
gUnknown_081A5054:
	.incbin "sound/direct_sound_samples/081A5054.bin"

	.align 2
	.global gUnknown_081A5B3C
gUnknown_081A5B3C:
	.incbin "sound/direct_sound_samples/081A5B3C.bin"

	.align 2
	.global gUnknown_081A608C
gUnknown_081A608C:
	.incbin "sound/direct_sound_samples/081A608C.bin"

	.align 2
	.global gUnknown_081A6AAC
gUnknown_081A6AAC:
	.incbin "sound/direct_sound_samples/081A6AAC.bin"

	.align 2
	.global gUnknown_081A76C4
gUnknown_081A76C4:
	.incbin "sound/direct_sound_samples/081A76C4.bin"

	.align 2
	.global gUnknown_081AA2BC
gUnknown_081AA2BC:
	.incbin "sound/direct_sound_samples/081AA2BC.bin"

	.align 2
	.global gUnknown_081AC97C
gUnknown_081AC97C:
	.incbin "sound/direct_sound_samples/081AC97C.bin"

	.align 2
	.global gUnknown_081AD7BC
gUnknown_081AD7BC:
	.incbin "sound/direct_sound_samples/081AD7BC.bin"

	.align 2
	.global gUnknown_081AF270
gUnknown_081AF270:
	.incbin "sound/direct_sound_samples/081AF270.bin"

	.align 2
	.global gUnknown_081B0744
gUnknown_081B0744:
	.incbin "sound/direct_sound_samples/081B0744.bin"

	.align 2
	.global gUnknown_081B1B58
gUnknown_081B1B58:
	.incbin "sound/direct_sound_samples/081B1B58.bin"

	.align 2
	.global gUnknown_081B2488
gUnknown_081B2488:
	.incbin "sound/direct_sound_samples/081B2488.bin"

	.align 2
	.global gUnknown_081B3E10
gUnknown_081B3E10:
	.incbin "sound/direct_sound_samples/081B3E10.bin"

	.align 2
	.global gUnknown_081B4524
gUnknown_081B4524:
	.incbin "sound/direct_sound_samples/081B4524.bin"

	.align 2
	.global gUnknown_081B5444
gUnknown_081B5444:
	.incbin "sound/direct_sound_samples/081B5444.bin"

	.align 2
	.global gUnknown_081B6304
gUnknown_081B6304:
	.incbin "sound/direct_sound_samples/081B6304.bin"

	.align 2
	.global gUnknown_081B8EE8
gUnknown_081B8EE8:
	.incbin "sound/direct_sound_samples/081B8EE8.bin"

	.align 2
	.global gUnknown_081BB210
gUnknown_081BB210:
	.incbin "sound/direct_sound_samples/081BB210.bin"

	.align 2
	.global gUnknown_081BCB04
gUnknown_081BCB04:
	.incbin "sound/direct_sound_samples/081BCB04.bin"

	.align 2
	.global gUnknown_081BFC30
gUnknown_081BFC30:
	.incbin "sound/direct_sound_samples/081BFC30.bin"

	.align 2
	.global gUnknown_081C0A88
gUnknown_081C0A88:
	.incbin "sound/direct_sound_samples/081C0A88.bin"

	.align 2
	.global gUnknown_081C3A64
gUnknown_081C3A64:
	.incbin "sound/direct_sound_samples/081C3A64.bin"

	.align 2
	.global gUnknown_081C5718
gUnknown_081C5718:
	.incbin "sound/direct_sound_samples/081C5718.bin"

	.align 2
	.global gUnknown_081C62EC
gUnknown_081C62EC:
	.incbin "sound/direct_sound_samples/081C62EC.bin"

	.align 2
	.global gUnknown_081C90E0
gUnknown_081C90E0:
	.incbin "sound/direct_sound_samples/081C90E0.bin"

	.align 2
	.global gUnknown_081C98D8
gUnknown_081C98D8:
	.incbin "sound/direct_sound_samples/081C98D8.bin"

	.align 2
	.global gUnknown_081CA8E8
gUnknown_081CA8E8:
	.incbin "sound/direct_sound_samples/081CA8E8.bin"

	.align 2
	.global gUnknown_081CCDFC
gUnknown_081CCDFC:
	.incbin "sound/direct_sound_samples/081CCDFC.bin"

	.align 2
	.global gUnknown_081D4574
gUnknown_081D4574:
	.incbin "sound/direct_sound_samples/081D4574.bin"

	.align 2
	.global gUnknown_081D4C08
gUnknown_081D4C08:
	.incbin "sound/direct_sound_samples/081D4C08.bin"

	.align 2
	.global gUnknown_081DC2B8
gUnknown_081DC2B8:
	.incbin "sound/direct_sound_samples/081DC2B8.bin"

	.align 2
	.global gUnknown_081DD5A4
gUnknown_081DD5A4:
	.incbin "sound/direct_sound_samples/081DD5A4.bin"

	.align 2
	.global gUnknown_081DEAE0
gUnknown_081DEAE0:
	.incbin "sound/direct_sound_samples/081DEAE0.bin"

	.align 2
	.global gUnknown_081DF2A0
gUnknown_081DF2A0:
	.incbin "sound/direct_sound_samples/081DF2A0.bin"

	.align 2
	.global gUnknown_081DF81C
gUnknown_081DF81C:
	.incbin "sound/direct_sound_samples/081DF81C.bin"

	.align 2
	.global gUnknown_081DFD9C
gUnknown_081DFD9C:
	.incbin "sound/direct_sound_samples/081DFD9C.bin"

	.align 2
	.global gUnknown_081E035C
gUnknown_081E035C:
	.incbin "sound/direct_sound_samples/081E035C.bin"

	.align 2
	.global gUnknown_081E08B8
gUnknown_081E08B8:
	.incbin "sound/direct_sound_samples/081E08B8.bin"

	.align 2
	.global gUnknown_081E0E38
gUnknown_081E0E38:
	.incbin "sound/direct_sound_samples/081E0E38.bin"

	.align 2
	.global gUnknown_081E13BC
gUnknown_081E13BC:
	.incbin "sound/direct_sound_samples/081E13BC.bin"

	.align 2
	.global gUnknown_081E1938
gUnknown_081E1938:
	.incbin "sound/direct_sound_samples/081E1938.bin"

	.align 2
	.global gUnknown_081E1E4C
gUnknown_081E1E4C:
	.incbin "sound/direct_sound_samples/081E1E4C.bin"

	.align 2
	.global gUnknown_081E2408
gUnknown_081E2408:
	.incbin "sound/direct_sound_samples/081E2408.bin"

	.align 2
	.global gUnknown_081E2A74
gUnknown_081E2A74:
	.incbin "sound/direct_sound_samples/081E2A74.bin"

	.align 2
	.global gUnknown_081E2F6C
gUnknown_081E2F6C:
	.incbin "sound/direct_sound_samples/081E2F6C.bin"

	.align 2
	.global gUnknown_081E3488
gUnknown_081E3488:
	.incbin "sound/direct_sound_samples/081E3488.bin"

	.align 2
	.global gUnknown_081E39E4
gUnknown_081E39E4:
	.incbin "sound/direct_sound_samples/081E39E4.bin"

	.align 2
	.global gUnknown_081E3FD8
gUnknown_081E3FD8:
	.incbin "sound/direct_sound_samples/081E3FD8.bin"

	.align 2
	.global gUnknown_081E456C
gUnknown_081E456C:
	.incbin "sound/direct_sound_samples/081E456C.bin"

	.align 2
	.global gUnknown_081E4AD4
gUnknown_081E4AD4:
	.incbin "sound/direct_sound_samples/081E4AD4.bin"

	.align 2
	.global gUnknown_081E4E84
gUnknown_081E4E84:
	.incbin "sound/direct_sound_samples/081E4E84.bin"

	.align 2
	.global gUnknown_081E5238
gUnknown_081E5238:
	.incbin "sound/direct_sound_samples/081E5238.bin"

	.align 2
	.global gUnknown_081E5844
gUnknown_081E5844:
	.incbin "sound/direct_sound_samples/081E5844.bin"

	.align 2
	.global gUnknown_081E5B40
gUnknown_081E5B40:
	.incbin "sound/direct_sound_samples/081E5B40.bin"

	.align 2
	.global gUnknown_081E5F90
gUnknown_081E5F90:
	.incbin "sound/direct_sound_samples/081E5F90.bin"

	.align 2
	.global gUnknown_081E6194
gUnknown_081E6194:
	.incbin "sound/direct_sound_samples/081E6194.bin"

	.align 2
	.global gUnknown_081E63D4
gUnknown_081E63D4:
	.incbin "sound/direct_sound_samples/081E63D4.bin"

	.align 2
	.global gUnknown_081E6640
gUnknown_081E6640:
	.incbin "sound/direct_sound_samples/081E6640.bin"

	.align 2
	.global gUnknown_081E69E0
gUnknown_081E69E0:
	.incbin "sound/direct_sound_samples/081E69E0.bin"

	.align 2
	.global gUnknown_081E6D24
gUnknown_081E6D24:
	.incbin "sound/direct_sound_samples/081E6D24.bin"

	.align 2
	.global gUnknown_081E6F40
gUnknown_081E6F40:
	.incbin "sound/direct_sound_samples/081E6F40.bin"

	.align 2
	.global gUnknown_081E72D8
gUnknown_081E72D8:
	.incbin "sound/direct_sound_samples/081E72D8.bin"

	.align 2
	.global gUnknown_081E7678
gUnknown_081E7678:
	.incbin "sound/direct_sound_samples/081E7678.bin"

	.align 2
	.global gUnknown_081E79D4
gUnknown_081E79D4:
	.incbin "sound/direct_sound_samples/081E79D4.bin"

	.align 2
	.global gUnknown_081E7CE0
gUnknown_081E7CE0:
	.incbin "sound/direct_sound_samples/081E7CE0.bin"

	.align 2
	.global gUnknown_081E7F84
gUnknown_081E7F84:
	.incbin "sound/direct_sound_samples/081E7F84.bin"

	.align 2
	.global gUnknown_081E82B0
gUnknown_081E82B0:
	.incbin "sound/direct_sound_samples/081E82B0.bin"

	.align 2
	.global gUnknown_081E861C
gUnknown_081E861C:
	.incbin "sound/direct_sound_samples/081E861C.bin"

	.align 2
	.global gUnknown_081E8980
gUnknown_081E8980:
	.incbin "sound/direct_sound_samples/081E8980.bin"

	.align 2
	.global gUnknown_081E8BAC
gUnknown_081E8BAC:
	.incbin "sound/direct_sound_samples/081E8BAC.bin"

	.align 2
	.global gUnknown_081E8EFC
gUnknown_081E8EFC:
	.incbin "sound/direct_sound_samples/081E8EFC.bin"

	.align 2
	.global gUnknown_081EF0A4
gUnknown_081EF0A4:
	.incbin "sound/direct_sound_samples/081EF0A4.bin"

	.align 2
	.global gUnknown_081F2164
gUnknown_081F2164:
	.incbin "sound/direct_sound_samples/081F2164.bin"

	.align 2
	.global gUnknown_081F98DC
gUnknown_081F98DC:
	.incbin "sound/direct_sound_samples/081F98DC.bin"

	.align 2
	.global gUnknown_081FA6FC
gUnknown_081FA6FC:
	.incbin "sound/direct_sound_samples/081FA6FC.bin"

	.align 2
	.global gUnknown_081FD2E0
gUnknown_081FD2E0:
	.incbin "sound/direct_sound_samples/081FD2E0.bin"

	.align 2
	.global gUnknown_081FEC34
gUnknown_081FEC34:
	.incbin "sound/direct_sound_samples/081FEC34.bin"

	.align 2
	.global gUnknown_081FF23C
gUnknown_081FF23C:
	.incbin "sound/direct_sound_samples/081FF23C.bin"

	.align 2
	.global gUnknown_081FFA40
gUnknown_081FFA40:
	.incbin "sound/direct_sound_samples/081FFA40.bin"

	.align 2
	.global gUnknown_08200244
gUnknown_08200244:
	.incbin "sound/direct_sound_samples/08200244.bin"

	.align 2
	.global gUnknown_08201378
gUnknown_08201378:
	.incbin "sound/direct_sound_samples/08201378.bin"

	.align 2
	.global gUnknown_0820208C
gUnknown_0820208C:
	.incbin "sound/direct_sound_samples/0820208C.bin"

	.align 2
	.global gUnknown_08202D8C
gUnknown_08202D8C:
	.incbin "sound/direct_sound_samples/08202D8C.bin"

	.align 2
	.global gUnknown_0820A43C
gUnknown_0820A43C:
	.incbin "sound/direct_sound_samples/0820A43C.bin"

	.align 2
	.global gUnknown_0820D038
gUnknown_0820D038:
	.incbin "sound/direct_sound_samples/0820D038.bin"

	.align 2
	.global gUnknown_0820DCE4
gUnknown_0820DCE4:
	.incbin "sound/direct_sound_samples/0820DCE4.bin"

	.align 2
	.global gUnknown_0820E12C
gUnknown_0820E12C:
	.incbin "sound/direct_sound_samples/0820E12C.bin"

	.align 2
	.global gUnknown_0820ED50
gUnknown_0820ED50:
	.incbin "sound/direct_sound_samples/0820ED50.bin"

	.align 2
	.global gUnknown_0820F9F4
gUnknown_0820F9F4:
	.incbin "sound/direct_sound_samples/0820F9F4.bin"

	.align 2
	.global gUnknown_08210648
gUnknown_08210648:
	.incbin "sound/direct_sound_samples/08210648.bin"

	.align 2
	.global gUnknown_08210E6C
gUnknown_08210E6C:
	.incbin "sound/direct_sound_samples/08210E6C.bin"

	.align 2
	.global gUnknown_082111CC
gUnknown_082111CC:
	.incbin "sound/direct_sound_samples/082111CC.bin"

	.align 2
	.global gUnknown_08211864
gUnknown_08211864:
	.incbin "sound/direct_sound_samples/08211864.bin"

	.align 2
	.global gUnknown_082120E8
gUnknown_082120E8:
	.incbin "sound/direct_sound_samples/082120E8.bin"

	.align 2
	.global gUnknown_08213A50
gUnknown_08213A50:
	.incbin "sound/direct_sound_samples/08213A50.bin"

	.align 2
	.global gUnknown_08215E04
gUnknown_08215E04:
	.incbin "sound/direct_sound_samples/08215E04.bin"

	.align 2
	.global gUnknown_08217F88
gUnknown_08217F88:
	.incbin "sound/direct_sound_samples/08217F88.bin"

	.align 2
	.global gUnknown_0821A10C
gUnknown_0821A10C:
	.incbin "sound/direct_sound_samples/0821A10C.bin"

	.align 2
	.global gUnknown_0821C28C
gUnknown_0821C28C:
	.incbin "sound/direct_sound_samples/0821C28C.bin"

	.align 2
	.global gUnknown_0821E40C
gUnknown_0821E40C:
	.incbin "sound/direct_sound_samples/0821E40C.bin"

	.align 2
	.global gUnknown_08220588
gUnknown_08220588:
	.incbin "sound/direct_sound_samples/08220588.bin"

	.align 2
	.global gUnknown_08221C0C
gUnknown_08221C0C:
	.incbin "sound/direct_sound_samples/08221C0C.bin"

	.align 2
	.global gUnknown_08223028
gUnknown_08223028:
	.incbin "sound/direct_sound_samples/08223028.bin"

	.align 2
	.global gUnknown_08225AF0
gUnknown_08225AF0:
	.incbin "sound/direct_sound_samples/08225AF0.bin"

	.align 2
	.global gUnknown_08228254
gUnknown_08228254:
	.incbin "sound/direct_sound_samples/08228254.bin"

	.align 2
	.global gUnknown_0822EC18
gUnknown_0822EC18:
	.incbin "sound/direct_sound_samples/0822EC18.bin"

	.align 2
	.global gUnknown_0823114C
gUnknown_0823114C:
	.incbin "sound/direct_sound_samples/0823114C.bin"

	.align 2
	.global gUnknown_08232FD0
gUnknown_08232FD0:
	.incbin "sound/direct_sound_samples/08232FD0.bin"

	.align 2
	.global gUnknown_082346FC
gUnknown_082346FC:
	.incbin "sound/direct_sound_samples/082346FC.bin"

	.align 2
	.global gUnknown_08236890
gUnknown_08236890:
	.incbin "sound/direct_sound_samples/08236890.bin"

	.align 2
	.global gUnknown_0823A9B0
gUnknown_0823A9B0:
	.incbin "sound/direct_sound_samples/0823A9B0.bin"

	.align 2
	.global gUnknown_0823CF34
gUnknown_0823CF34:
	.incbin "sound/direct_sound_samples/0823CF34.bin"

	.align 2
	.global gUnknown_0823F98C
gUnknown_0823F98C:
	.incbin "sound/direct_sound_samples/0823F98C.bin"

	.align 2
	.global gUnknown_08240B60
gUnknown_08240B60:
	.incbin "sound/direct_sound_samples/08240B60.bin"

	.align 2
	.global gUnknown_08241D54
gUnknown_08241D54:
	.incbin "sound/direct_sound_samples/08241D54.bin"

	.align 2
	.global gUnknown_08243E9C
gUnknown_08243E9C:
	.incbin "sound/direct_sound_samples/08243E9C.bin"

	.align 2
	.global gUnknown_082464F0
gUnknown_082464F0:
	.incbin "sound/direct_sound_samples/082464F0.bin"

	.align 2
	.global gUnknown_08248E40
gUnknown_08248E40:
	.incbin "sound/direct_sound_samples/08248E40.bin"

	.align 2
	.global gUnknown_08249A44
gUnknown_08249A44:
	.incbin "sound/direct_sound_samples/08249A44.bin"

	.align 2
	.global gUnknown_0824A648
gUnknown_0824A648:
	.incbin "sound/direct_sound_samples/0824A648.bin"

	.align 2
	.global gUnknown_0824B85C
gUnknown_0824B85C:
	.incbin "sound/direct_sound_samples/0824B85C.bin"

	.align 2
	.global gUnknown_08251F08
gUnknown_08251F08:
	.incbin "sound/direct_sound_samples/08251F08.bin"

	.align 2
	.global gUnknown_08252CDC
gUnknown_08252CDC:
	.incbin "sound/direct_sound_samples/08252CDC.bin"

	.align 2
	.global gUnknown_08253DDC
gUnknown_08253DDC:
	.incbin "sound/direct_sound_samples/08253DDC.bin"

	.align 2
	.global gUnknown_08254DB0
gUnknown_08254DB0:
	.incbin "sound/direct_sound_samples/08254DB0.bin"

	.align 2
	.global gUnknown_08255520
gUnknown_08255520:
	.incbin "sound/direct_sound_samples/08255520.bin"

	.align 2
	.global gUnknown_08255B68
gUnknown_08255B68:
	.incbin "sound/direct_sound_samples/08255B68.bin"

	.align 2
	.global gUnknown_08256988
gUnknown_08256988:
	.incbin "sound/direct_sound_samples/08256988.bin"

	.align 2
	.global gUnknown_08257330
gUnknown_08257330:
	.incbin "sound/direct_sound_samples/08257330.bin"

	.align 2
	.global gUnknown_08259404
gUnknown_08259404:
	.incbin "sound/direct_sound_samples/08259404.bin"

	.align 2
	.global gUnknown_0825D1CC
gUnknown_0825D1CC:
	.incbin "sound/direct_sound_samples/0825D1CC.bin"

	.align 2
	.global gUnknown_0825D4CC
gUnknown_0825D4CC:
	.incbin "sound/direct_sound_samples/0825D4CC.bin"

	.align 2
	.global gUnknown_0825FA48
gUnknown_0825FA48:
	.incbin "sound/direct_sound_samples/0825FA48.bin"

	.align 2
	.global gUnknown_0826313C
gUnknown_0826313C:
	.incbin "sound/direct_sound_samples/0826313C.bin"

	.align 2
	.global gUnknown_0826363C
gUnknown_0826363C:
	.incbin "sound/direct_sound_samples/0826363C.bin"

	.align 2
	.global gUnknown_08263B74
gUnknown_08263B74:
	.incbin "sound/direct_sound_samples/08263B74.bin"
