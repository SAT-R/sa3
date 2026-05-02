.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
.align 2 , 0

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8050804
sub_8050804: @ 0x08050804
	push {r4, lr}
	ldr r0, _08050844 @ =gStageBackgroundsRam
	mov ip, r0
	ldr r0, _08050848 @ =0x0600C000
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _0805084C @ =0x0600D000
	str r0, [r1, #0xc]
	movs r2, #0x1e
	strh r2, [r1, #0x26]
	movs r3, #0x14
	strh r3, [r1, #0x28]
	ldr r4, _08050850 @ =gBgCntRegs
	ldr r0, _08050854 @ =0x00001A0E
	strh r0, [r4]
	adds r1, #0xc4
	ldr r0, _08050858 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _0805085C @ =0x0600E000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	strh r2, [r0]
	adds r0, #2
	strh r3, [r0]
	ldr r0, _08050860 @ =0x00001C0A
	strh r0, [r4, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050844: .4byte gStageBackgroundsRam
_08050848: .4byte 0x0600C000
_0805084C: .4byte 0x0600D000
_08050850: .4byte gBgCntRegs
_08050854: .4byte 0x00001A0E
_08050858: .4byte 0x06008000
_0805085C: .4byte 0x0600E000
_08050860: .4byte 0x00001C0A

	thumb_func_start sub_8050864
sub_8050864: @ 0x08050864
	push {r4, lr}
	ldr r1, _080508B0 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _080508B4 @ =gStageBackgroundsRam
	mov ip, r0
	mov r1, ip
	adds r1, #0xc4
	ldr r0, _080508B8 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _080508BC @ =0x0600B000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	movs r3, #0x20
	strh r3, [r0]
	adds r0, #2
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _080508C0 @ =gBgCntRegs
	ldr r0, _080508C4 @ =0x0000960A
	strh r0, [r2, #6]
	ldr r0, _080508C8 @ =0x0600C000
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _080508CC @ =0x0600E000
	str r0, [r4, #0xc]
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldr r0, _080508D0 @ =0x00009C0E
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080508B0: .4byte gBgScrollRegs
_080508B4: .4byte gStageBackgroundsRam
_080508B8: .4byte 0x06008000
_080508BC: .4byte 0x0600B000
_080508C0: .4byte gBgCntRegs
_080508C4: .4byte 0x0000960A
_080508C8: .4byte 0x0600C000
_080508CC: .4byte 0x0600E000
_080508D0: .4byte 0x00009C0E

	thumb_func_start sub_80508D4
sub_80508D4: @ 0x080508D4
	push {r4, r5, r6, lr}
	ldr r3, _08050910 @ =gBgScrollRegs
	ldr r1, _08050914 @ =gCamera
	ldr r2, [r1]
	asrs r0, r2, #3
	movs r5, #0xff
	ands r0, r5
	strh r0, [r3, #0xc]
	ldr r1, [r1, #4]
	asrs r0, r1, #3
	ldr r6, _08050918 @ =0x000001FF
	adds r4, r6, #0
	ands r0, r4
	strh r0, [r3, #0xe]
	asrs r2, r2, #2
	ands r2, r5
	strh r2, [r3]
	asrs r1, r1, #2
	ands r1, r4
	strh r1, [r3, #2]
	ldr r0, _0805091C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050908
	bl sub_8050920
_08050908:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050910: .4byte gBgScrollRegs
_08050914: .4byte gCamera
_08050918: .4byte 0x000001FF
_0805091C: .4byte gStageData

	thumb_func_start sub_8050920
sub_8050920: @ 0x08050920
	push {r4, r5, r6, lr}
	ldr r0, _08050990 @ =gStageData
	ldrb r0, [r0, #0x1c]
	ldr r1, _08050994 @ =gBgScrollRegs
	lsrs r0, r0, #3
	ldrh r1, [r1, #0xe]
	adds r3, r0, r1
	movs r0, #0xf
	ands r3, r0
	ldr r2, _08050998 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0805099C @ =gHBlankCopyTarget
	ldr r0, _080509A0 @ =0x0400001C
	str r0, [r1]
	ldr r1, _080509A4 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080509A8 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r5, #0
	ldr r0, _080509AC @ =gCamera
	ldr r0, [r0]
	asrs r4, r0, #3
	movs r0, #0xff
	ands r4, r0
	ldr r6, _080509B0 @ =gSineTable
_0805095A:
	strh r4, [r2]
	lsls r0, r3, #7
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1d
	adds r0, r4, r0
	strh r0, [r2]
	adds r1, r3, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r3, r0, #0x10
	adds r2, #2
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805095A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050990: .4byte gStageData
_08050994: .4byte gBgScrollRegs
_08050998: .4byte gFlags
_0805099C: .4byte gHBlankCopyTarget
_080509A0: .4byte 0x0400001C
_080509A4: .4byte gHBlankCopySize
_080509A8: .4byte gBgOffsetsHBlankPrimary
_080509AC: .4byte gCamera
_080509B0: .4byte gSineTable

	thumb_func_start sub_80509B4
sub_80509B4: @ 0x080509B4
	ldr r0, _080509EC @ =gStageBackgroundsRam
	mov ip, r0
	ldr r0, _080509F0 @ =0x0600C000
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _080509F4 @ =0x0600E000
	str r0, [r1, #0xc]
	movs r2, #0x20
	strh r2, [r1, #0x26]
	strh r2, [r1, #0x28]
	ldr r3, _080509F8 @ =gBgCntRegs
	ldr r0, _080509FC @ =0x00001C0E
	strh r0, [r3]
	adds r1, #0xc4
	ldr r0, _08050A00 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050A04 @ =0x0600D000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	strh r2, [r0]
	adds r1, #0x1c
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, _08050A08 @ =0x00001A0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_080509EC: .4byte gStageBackgroundsRam
_080509F0: .4byte 0x0600C000
_080509F4: .4byte 0x0600E000
_080509F8: .4byte gBgCntRegs
_080509FC: .4byte 0x00001C0E
_08050A00: .4byte 0x06008000
_08050A04: .4byte 0x0600D000
_08050A08: .4byte 0x00001A0A

	thumb_func_start sub_8050A0C
sub_8050A0C: @ 0x08050A0C
	push {r4, lr}
	ldr r0, _08050A70 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08050A44
	movs r0, #0x40
	bl EwramMalloc
	str r0, [r4, #8]
	adds r2, r0, #0
	movs r0, #0
	movs r3, #0
_08050A2E:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r2
	str r3, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _08050A2E
_08050A44:
	ldr r2, _08050A74 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, [r4]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #1
	ands r0, r1
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	adds r0, #1
	ands r0, r1
	strh r0, [r2, #2]
	bl sub_8050A78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050A70: .4byte gCurTask
_08050A74: .4byte gBgScrollRegs

	thumb_func_start sub_8050A78
sub_8050A78: @ 0x08050A78
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r0, _08050AF0 @ =gStageData
	ldr r4, [r0, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #2
	ands r4, r0
	ldr r1, _08050AF4 @ =gUnknown_080D094C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _08050AF8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050AFC @ =gHBlankCopyTarget
	ldr r0, _08050B00 @ =0x04000010
	str r0, [r1]
	ldr r1, _08050B04 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050B08 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	ldr r0, _08050B0C @ =gBgScrollRegs
	movs r3, #0
	movs r1, #2
	ldrsh r5, [r0, r1]
	ldr r0, _08050B10 @ =gSineTable
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r4, [r4, r0]
	movs r6, #0x1f
_08050ABE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	ands r0, r6
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r4, r0
	asrs r0, r0, #9
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x9f
	ble _08050ABE
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050AF0: .4byte gStageData
_08050AF4: .4byte gUnknown_080D094C
_08050AF8: .4byte gFlags
_08050AFC: .4byte gHBlankCopyTarget
_08050B00: .4byte 0x04000010
_08050B04: .4byte gHBlankCopySize
_08050B08: .4byte gBgOffsetsHBlankPrimary
_08050B0C: .4byte gBgScrollRegs
_08050B10: .4byte gSineTable

	thumb_func_start sub_8050B14
sub_8050B14: @ 0x08050B14
	push {r4, lr}
	ldr r1, _08050B60 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _08050B64 @ =gStageBackgroundsRam
	mov ip, r0
	mov r1, ip
	adds r1, #0xc4
	ldr r0, _08050B68 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050B6C @ =0x0600A000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	movs r3, #0x20
	strh r3, [r0]
	adds r0, #2
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _08050B70 @ =gBgCntRegs
	ldr r0, _08050B74 @ =0x0000940A
	strh r0, [r2, #6]
	ldr r0, _08050B78 @ =0x0600C000
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _08050B7C @ =0x0600E000
	str r0, [r4, #0xc]
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldr r0, _08050B80 @ =0x00009C0E
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050B60: .4byte gBgScrollRegs
_08050B64: .4byte gStageBackgroundsRam
_08050B68: .4byte 0x06008000
_08050B6C: .4byte 0x0600A000
_08050B70: .4byte gBgCntRegs
_08050B74: .4byte 0x0000940A
_08050B78: .4byte 0x0600C000
_08050B7C: .4byte 0x0600E000
_08050B80: .4byte 0x00009C0E

	thumb_func_start sub_8050B84
sub_8050B84: @ 0x08050B84
	push {lr}
	ldr r1, _08050BA4 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	ldr r2, _08050BA8 @ =gCamera
	ldr r0, [r2, #4]
	ldr r3, _08050BAC @ =0xFFFFFCE0
	adds r0, r0, r3
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	blt _08050BB0
	asrs r0, r0, #0x13
	b _08050BB2
	.align 2, 0
_08050BA4: .4byte gBgScrollRegs
_08050BA8: .4byte gCamera
_08050BAC: .4byte 0xFFFFFCE0
_08050BB0:
	movs r0, #0
_08050BB2:
	strh r0, [r1, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _08050BC2
	strh r1, [r3, #2]
_08050BC2:
	movs r0, #8
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	ldr r1, _08050BDC @ =0xFFFFFCE0
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	adds r1, r3, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08050BE0
	asrs r0, r0, #0x13
	b _08050BE2
	.align 2, 0
_08050BDC: .4byte 0xFFFFFCE0
_08050BE0:
	movs r0, #0
_08050BE2:
	strh r0, [r1, #0xe]
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _08050BF2
	strh r1, [r3, #0xe]
_08050BF2:
	ldr r0, _08050C04 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050BFE
	bl sub_8050C08
_08050BFE:
	pop {r0}
	bx r0
	.align 2, 0
_08050C04: .4byte gStageData

	thumb_func_start sub_8050C08
sub_8050C08: @ 0x08050C08
	push {r4, r5, r6, lr}
	ldr r0, _08050C4C @ =gStageData
	ldr r0, [r0, #0x1c]
	ldr r1, _08050C50 @ =0x000001FF
	ands r0, r1
	lsrs r5, r0, #1
	ldr r2, _08050C54 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050C58 @ =gHBlankCopyTarget
	ldr r0, _08050C5C @ =0x04000010
	str r0, [r1]
	ldr r1, _08050C60 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050C64 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	ldr r0, _08050C68 @ =gBgScrollRegs
	movs r1, #0
	movs r3, #2
	ldrsh r4, [r0, r3]
	ldr r6, _08050C6C @ =gSineTable
_08050C38:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0x70
	ble _08050C70
	movs r0, #8
	b _08050C86
	.align 2, 0
_08050C4C: .4byte gStageData
_08050C50: .4byte 0x000001FF
_08050C54: .4byte gFlags
_08050C58: .4byte gHBlankCopyTarget
_08050C5C: .4byte 0x04000010
_08050C60: .4byte gHBlankCopySize
_08050C64: .4byte gBgOffsetsHBlankPrimary
_08050C68: .4byte gBgScrollRegs
_08050C6C: .4byte gSineTable
_08050C70:
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #2
	ldr r1, _08050CA0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	adds r0, #8
_08050C86:
	strh r0, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08050C38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050CA0: .4byte 0x000003FF

	thumb_func_start sub_8050CA4
sub_8050CA4: @ 0x08050CA4
	ldr r1, _08050CD4 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r2, _08050CD8 @ =gStageBackgroundsRam
	adds r1, r2, #0
	adds r1, #0xc4
	ldr r0, _08050CDC @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050CE0 @ =0x0600A000
	str r0, [r1]
	adds r1, #0x1a
	movs r0, #0x40
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	ldr r1, _08050CE4 @ =gBgCntRegs
	ldr r0, _08050CE8 @ =0x0000540A
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_08050CD4: .4byte gBgScrollRegs
_08050CD8: .4byte gStageBackgroundsRam
_08050CDC: .4byte 0x06008000
_08050CE0: .4byte 0x0600A000
_08050CE4: .4byte gBgCntRegs
_08050CE8: .4byte 0x0000540A

	thumb_func_start sub_8050CEC
sub_8050CEC: @ 0x08050CEC
	ldr r1, _08050D1C @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r1, _08050D20 @ =gStageBackgroundsRam
	ldr r0, _08050D24 @ =0x0600C000
	str r0, [r1, #4]
	ldr r0, _08050D28 @ =0x0600D000
	str r0, [r1, #0xc]
	ldr r3, _08050D2C @ =gBgCntRegs
	ldr r0, _08050D30 @ =0x00009A0E
	strh r0, [r3]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08050D34 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08050D38 @ =0x0600E800
	str r0, [r1]
	ldr r0, _08050D3C @ =0x00001D0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_08050D1C: .4byte gBgScrollRegs
_08050D20: .4byte gStageBackgroundsRam
_08050D24: .4byte 0x0600C000
_08050D28: .4byte 0x0600D000
_08050D2C: .4byte gBgCntRegs
_08050D30: .4byte 0x00009A0E
_08050D34: .4byte 0x06008000
_08050D38: .4byte 0x0600E800
_08050D3C: .4byte 0x00001D0A

	thumb_func_start sub_8050D40
sub_8050D40: @ 0x08050D40
	push {r4, lr}
	ldr r3, _08050D80 @ =gBgScrollRegs
	ldr r1, _08050D84 @ =gCamera
	ldr r4, [r1]
	asrs r0, r4, #3
	movs r2, #0xff
	ands r0, r2
	strh r0, [r3]
	ldr r1, [r1, #4]
	asrs r0, r1, #4
	cmp r0, #0x60
	ble _08050D5A
	movs r0, #0x60
_08050D5A:
	strh r0, [r3, #2]
	asrs r0, r4, #6
	ands r0, r2
	strh r0, [r3, #0xc]
	asrs r0, r1, #6
	ands r0, r2
	strh r0, [r3, #0xe]
	ldr r0, _08050D88 @ =gStageBackgroundsRam + (3 * 0x40)
	bl UpdateBgAnimationTiles
	ldr r0, _08050D8C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050D7A
	bl sub_8050D90
_08050D7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050D80: .4byte gBgScrollRegs
_08050D84: .4byte gCamera
_08050D88: .4byte gStageBackgroundsRam + (3 * 0x40)
_08050D8C: .4byte gStageData

	thumb_func_start sub_8050D90
sub_8050D90: @ 0x08050D90
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r0, _08050DF8 @ =gStageData
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x16
	ldr r1, _08050DFC @ =gUnknown_080D096C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _08050E00 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050E04 @ =gHBlankCopyTarget
	ldr r0, _08050E08 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08050E0C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050E10 @ =gBgOffsetsHBlankPrimary
	ldr r3, [r0]
	ldr r0, _08050E14 @ =gBgScrollRegs
	movs r1, #0
	movs r2, #0xe
	ldrsh r4, [r0, r2]
_08050DC8:
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r5, r0
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x9f
	ble _08050DC8
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050DF8: .4byte gStageData
_08050DFC: .4byte gUnknown_080D096C
_08050E00: .4byte gFlags
_08050E04: .4byte gHBlankCopyTarget
_08050E08: .4byte 0x0400001C
_08050E0C: .4byte gHBlankCopySize
_08050E10: .4byte gBgOffsetsHBlankPrimary
_08050E14: .4byte gBgScrollRegs

	thumb_func_start sub_8050E18
sub_8050E18: @ 0x08050E18
	push {r4, lr}
	ldr r0, _08050E58 @ =gStageBackgroundsRam
	mov ip, r0
	mov r1, ip
	adds r1, #0xc4
	ldr r0, _08050E5C @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050E60 @ =0x0600B000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	movs r3, #0x20
	strh r3, [r0]
	adds r0, #2
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _08050E64 @ =gBgCntRegs
	ldr r0, _08050E68 @ =0x0000960A
	strh r0, [r2, #6]
	ldr r0, _08050E6C @ =0x0600C000
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _08050E70 @ =0x0600E000
	str r0, [r4, #0xc]
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldr r0, _08050E74 @ =0x00009C0E
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050E58: .4byte gStageBackgroundsRam
_08050E5C: .4byte 0x06008000
_08050E60: .4byte 0x0600B000
_08050E64: .4byte gBgCntRegs
_08050E68: .4byte 0x0000960A
_08050E6C: .4byte 0x0600C000
_08050E70: .4byte 0x0600E000
_08050E74: .4byte 0x00009C0E

	thumb_func_start sub_8050E78
sub_8050E78: @ 0x08050E78
	push {r4, lr}
	ldr r3, _08050E98 @ =gBgScrollRegs
	ldr r2, _08050E9C @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	adds r4, r3, #0
	ldr r1, [r2, #4]
	asrs r0, r1, #0xa
	cmp r0, #0x5f
	bgt _08050EA0
	lsrs r0, r1, #9
	b _08050EA2
	.align 2, 0
_08050E98: .4byte gBgScrollRegs
_08050E9C: .4byte gCamera
_08050EA0:
	movs r0, #0x60
_08050EA2:
	strh r0, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	ldr r0, [r2]
	asrs r0, r0, #5
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	ldr r2, [r2, #4]
	asrs r0, r2, #0xa
	cmp r0, #0x5f
	bgt _08050EC8
	lsrs r0, r2, #9
	b _08050ECA
_08050EC8:
	movs r0, #0x60
_08050ECA:
	strh r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	bl sub_8050EE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8050EE4
sub_8050EE4: @ 0x08050EE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	ldr r0, _08050F18 @ =gStageData
	ldr r6, [r0, #0x1c]
	ldr r0, _08050F1C @ =0x000007FF
	ands r6, r0
	ldr r1, _08050F20 @ =gUnknown_080D098C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _08050F24 @ =gBgScrollRegs
	ldr r3, _08050F28 @ =gCamera
	ldr r0, [r3]
	asrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	strh r0, [r2, #0xc]
	ldr r1, [r3, #4]
	asrs r0, r1, #0xa
	cmp r0, #0x5f
	bgt _08050F2C
	lsrs r0, r1, #9
	b _08050F2E
	.align 2, 0
_08050F18: .4byte gStageData
_08050F1C: .4byte 0x000007FF
_08050F20: .4byte gUnknown_080D098C
_08050F24: .4byte gBgScrollRegs
_08050F28: .4byte gCamera
_08050F2C:
	movs r0, #0x60
_08050F2E:
	strh r0, [r2, #0xe]
	ldr r3, _08050FA0 @ =gBgScrollRegs
	ldrh r4, [r3, #0xe]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r0, r4, r5
	strh r0, [r3, #0xe]
	ldr r2, _08050FA4 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	mov r8, r2
	cmp r0, #0x60
	ble _08050F56
	movs r0, #0x60
_08050F56:
	adds r0, r0, r5
	strh r0, [r3, #2]
	ldr r2, _08050FA8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050FAC @ =gHBlankCopyTarget
	ldr r0, _08050FB0 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08050FB4 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050FB8 @ =gBgOffsetsHBlankPrimary
	ldr r3, [r0]
	movs r1, #0
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r0
	movs r5, #0xff
_08050F82:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	add r1, sp
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r2, #0
	adds r4, r0, #0
	cmp r1, #0
	bne _08050FBC
	strh r1, [r3]
	b _08050FD4
	.align 2, 0
_08050FA0: .4byte gBgScrollRegs
_08050FA4: .4byte gCamera
_08050FA8: .4byte gFlags
_08050FAC: .4byte gHBlankCopyTarget
_08050FB0: .4byte 0x0400001C
_08050FB4: .4byte gHBlankCopySize
_08050FB8: .4byte gBgOffsetsHBlankPrimary
_08050FBC:
	cmp r1, ip
	bne _08050FC8
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #6
	b _08050FD0
_08050FC8:
	movs r1, #4
	subs r1, r1, r2
	adds r0, r6, #0
	asrs r0, r1
_08050FD0:
	ands r0, r5
	strh r0, [r3]
_08050FD4:
	adds r3, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08050F82
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8050FF0
sub_8050FF0: @ 0x08050FF0
	push {r4, r5, r6, lr}
	ldr r3, _08051010 @ =gBgScrollRegs
	ldr r2, _08051014 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r1, [r2, #4]
	asrs r0, r1, #0xa
	adds r4, r3, #0
	cmp r0, #0x5f
	bgt _08051018
	lsrs r0, r1, #9
	b _0805101A
	.align 2, 0
_08051010: .4byte gBgScrollRegs
_08051014: .4byte gCamera
_08051018:
	movs r0, #0x60
_0805101A:
	strh r0, [r3, #0xe]
	ldr r0, [r2]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r4]
	ldr r0, [r2, #4]
	asrs r0, r0, #3
	ands r0, r1
	strh r0, [r4, #2]
	ldr r2, _08051064 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08051068 @ =gHBlankCopyTarget
	ldr r0, _0805106C @ =0x04000012
	str r0, [r1]
	ldr r1, _08051070 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08051074 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r1, #0
	ldrh r5, [r4, #2]
	movs r0, #2
	ldrsh r3, [r4, r0]
	ldr r6, _08051078 @ =0xFFFFFF00
	adds r4, r3, r6
_08051054:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	adds r0, r3, r0
	cmp r0, #0xff
	ble _0805107C
	strh r4, [r2]
	b _0805107E
	.align 2, 0
_08051064: .4byte gFlags
_08051068: .4byte gHBlankCopyTarget
_0805106C: .4byte 0x04000012
_08051070: .4byte gHBlankCopySize
_08051074: .4byte gBgOffsetsHBlankPrimary
_08051078: .4byte 0xFFFFFF00
_0805107C:
	strh r5, [r2]
_0805107E:
	adds r2, #2
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r1, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08051054
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8051094
sub_8051094: @ 0x08051094
	ldr r0, _080510D4 @ =gStageBackgroundsRam
	mov ip, r0
	ldr r0, _080510D8 @ =0x0600C000
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _080510DC @ =0x0600D800
	str r0, [r1, #0xc]
	movs r0, #0x40
	strh r0, [r1, #0x26]
	movs r2, #0x20
	strh r2, [r1, #0x28]
	ldr r3, _080510E0 @ =gBgCntRegs
	ldr r0, _080510E4 @ =0x00005B0C
	strh r0, [r3]
	adds r1, #0xc4
	ldr r0, _080510E8 @ =0x06004000
	str r0, [r1]
	adds r1, #8
	ldr r0, _080510EC @ =0x0600E800
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, _080510F0 @ =0x00001D06
	strh r0, [r3, #6]
	ldr r1, _080510F4 @ =gStageData
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080510D4: .4byte gStageBackgroundsRam
_080510D8: .4byte 0x0600C000
_080510DC: .4byte 0x0600D800
_080510E0: .4byte gBgCntRegs
_080510E4: .4byte 0x00005B0C
_080510E8: .4byte 0x06004000
_080510EC: .4byte 0x0600E800
_080510F0: .4byte 0x00001D06
_080510F4: .4byte gStageData

	thumb_func_start sub_80510F8
sub_80510F8: @ 0x080510F8
	ldr r1, _08051128 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r2, _0805112C @ =gStageBackgroundsRam
	adds r1, r2, #0
	adds r1, #0xc4
	ldr r0, _08051130 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08051134 @ =0x0600E800
	str r0, [r1]
	adds r1, #0x1a
	movs r0, #0x20
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x14
	strh r0, [r1]
	ldr r1, _08051138 @ =gBgCntRegs
	ldr r0, _0805113C @ =0x00001D0A
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_08051128: .4byte gBgScrollRegs
_0805112C: .4byte gStageBackgroundsRam
_08051130: .4byte 0x06008000
_08051134: .4byte 0x0600E800
_08051138: .4byte gBgCntRegs
_0805113C: .4byte 0x00001D0A

	thumb_func_start sub_8051140
sub_8051140: @ 0x08051140
	push {r4, lr}
	ldr r4, _08051168 @ =gCamera
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _08051152
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x48]
_08051152:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08051160
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x4c]
_08051160:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051168: .4byte gCamera

	thumb_func_start TaskDestructor_805116C
TaskDestructor_805116C: @ 0x0805116C
	push {lr}
	ldr r1, _08051198 @ =gCamera
	movs r0, #0
	str r0, [r1, #0x48]
	str r0, [r1, #0x4c]
	ldr r3, _0805119C @ =gFlags
	movs r2, #0
	ldr r0, _080511A0 @ =gBgScrollRegs
	movs r1, #3
_0805117E:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0805117E
	ldr r0, [r3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08051198: .4byte gCamera
_0805119C: .4byte gFlags
_080511A0: .4byte gBgScrollRegs

	thumb_func_start TaskDestructor_80511A4
TaskDestructor_80511A4: @ 0x080511A4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080511B8
	bl EwramFree
_080511B8:
	pop {r0}
	bx r0

	thumb_func_start sub_80511BC
sub_80511BC: @ 0x080511BC
	ldr r1, _080511D0 @ =gStageBackgroundsRam
	ldr r0, _080511D4 @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _080511D8 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _080511DC @ =gBgCntRegs
	ldr r0, _080511E0 @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080511D0: .4byte gStageBackgroundsRam
_080511D4: .4byte 0x0600C000
_080511D8: .4byte 0x0600E800
_080511DC: .4byte gBgCntRegs
_080511E0: .4byte 0x00001D0E

	thumb_func_start sub_80511E4
sub_80511E4: @ 0x080511E4
	ldr r1, _080511F8 @ =gStageBackgroundsRam
	ldr r0, _080511FC @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _08051200 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _08051204 @ =gBgCntRegs
	ldr r0, _08051208 @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080511F8: .4byte gStageBackgroundsRam
_080511FC: .4byte 0x0600C000
_08051200: .4byte 0x0600E800
_08051204: .4byte gBgCntRegs
_08051208: .4byte 0x00001D0E

	thumb_func_start sub_805120C
sub_805120C: @ 0x0805120C
	ldr r1, _08051230 @ =gStageBackgroundsRam
	ldr r0, _08051234 @ =0x0600C000
	str r0, [r1, #4]
	ldr r0, _08051238 @ =0x0600D000
	str r0, [r1, #0xc]
	ldr r3, _0805123C @ =gBgCntRegs
	ldr r0, _08051240 @ =0x00009A0E
	strh r0, [r3]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08051244 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08051248 @ =0x0600E800
	str r0, [r1]
	ldr r0, _0805124C @ =0x00001D0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_08051230: .4byte gStageBackgroundsRam
_08051234: .4byte 0x0600C000
_08051238: .4byte 0x0600D000
_0805123C: .4byte gBgCntRegs
_08051240: .4byte 0x00009A0E
_08051244: .4byte 0x06008000
_08051248: .4byte 0x0600E800
_0805124C: .4byte 0x00001D0A

	thumb_func_start sub_8051250
sub_8051250: @ 0x08051250
	ldr r1, _0805127C @ =gStageBackgroundsRam
	ldr r0, _08051280 @ =0x0600C000
	str r0, [r1, #4]
	ldr r0, _08051284 @ =0x0600C800
	str r0, [r1, #0xc]
	movs r0, #0x40
	strh r0, [r1, #0x26]
	strh r0, [r1, #0x28]
	ldr r3, _08051288 @ =gBgCntRegs
	ldr r0, _0805128C @ =0x0000990D
	strh r0, [r3]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08051290 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08051294 @ =0x0600E800
	str r0, [r1]
	ldr r0, _08051298 @ =0x00001D0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_0805127C: .4byte gStageBackgroundsRam
_08051280: .4byte 0x0600C000
_08051284: .4byte 0x0600C800
_08051288: .4byte gBgCntRegs
_0805128C: .4byte 0x0000990D
_08051290: .4byte 0x06008000
_08051294: .4byte 0x0600E800
_08051298: .4byte 0x00001D0A

	thumb_func_start sub_805129C
sub_805129C: @ 0x0805129C
	ldr r1, _080512A8 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080512A8: .4byte gBgScrollRegs

	thumb_func_start sub_80512AC
sub_80512AC: @ 0x080512AC
	push {lr}
	ldr r2, _080512CC @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #0xc]
	ldr r0, _080512D0 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #4
	bne _080512C6
	ldr r0, _080512D4 @ =gCamera
	ldr r0, [r0, #4]
	asrs r1, r0, #3
	asrs r0, r0, #4
	adds r1, r1, r0
_080512C6:
	strh r1, [r2, #0xe]
	pop {r0}
	bx r0
	.align 2, 0
_080512CC: .4byte gBgScrollRegs
_080512D0: .4byte gStageData
_080512D4: .4byte gCamera

	thumb_func_start sub_80512D8
sub_80512D8: @ 0x080512D8
	ldr r1, _080512F0 @ =gBgScrollRegs
	ldrh r0, [r1, #0xc]
	adds r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080512F0: .4byte gBgScrollRegs

	thumb_func_start sub_80512F4
sub_80512F4: @ 0x080512F4
	ldr r0, _08051304 @ =gBgScrollRegs
	movs r2, #0
	strh r2, [r0]
	ldr r1, _08051308 @ =0x0000FFF0
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
_08051304: .4byte gBgScrollRegs
_08051308: .4byte 0x0000FFF0

	thumb_func_start sub_805130C
sub_805130C: @ 0x0805130C
	push {lr}
	ldr r3, _0805133C @ =gBgScrollRegs
	ldr r2, _08051340 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805132C
	movs r0, #0
	strh r0, [r3, #0xe]
_0805132C:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x1f
	ble _08051338
	movs r0, #0x20
	strh r0, [r3, #0xe]
_08051338:
	pop {r0}
	bx r0
	.align 2, 0
_0805133C: .4byte gBgScrollRegs
_08051340: .4byte gCamera

	thumb_func_start sub_8051344
sub_8051344: @ 0x08051344
	push {lr}
	ldr r3, _08051374 @ =gBgScrollRegs
	ldr r2, _08051378 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08051364
	movs r0, #0
	strh r0, [r3, #0xe]
_08051364:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x1f
	ble _08051370
	movs r0, #0x20
	strh r0, [r3, #0xe]
_08051370:
	pop {r0}
	bx r0
	.align 2, 0
_08051374: .4byte gBgScrollRegs
_08051378: .4byte gCamera

	thumb_func_start sub_805137C
sub_805137C: @ 0x0805137C
	push {lr}
	ldr r3, _080513AC @ =gBgScrollRegs
	ldr r2, _080513B0 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805139C
	movs r0, #0
	strh r0, [r3, #0xe]
_0805139C:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x2f
	ble _080513A8
	movs r0, #0x30
	strh r0, [r3, #0xe]
_080513A8:
	pop {r0}
	bx r0
	.align 2, 0
_080513AC: .4byte gBgScrollRegs
_080513B0: .4byte gCamera

	thumb_func_start sub_80513B4
sub_80513B4: @ 0x080513B4
	push {lr}
	ldr r3, _080513E4 @ =gBgScrollRegs
	ldr r2, _080513E8 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080513D4
	movs r0, #0
	strh r0, [r3, #0xe]
_080513D4:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x2f
	ble _080513E0
	movs r0, #0x30
	strh r0, [r3, #0xe]
_080513E0:
	pop {r0}
	bx r0
	.align 2, 0
_080513E4: .4byte gBgScrollRegs
_080513E8: .4byte gCamera

	thumb_func_start sub_80513EC
sub_80513EC: @ 0x080513EC
	ldr r1, _080513F8 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080513F8: .4byte gBgScrollRegs

	thumb_func_start sub_80513FC
sub_80513FC: @ 0x080513FC
	ldr r2, _08051410 @ =gBgScrollRegs
	ldr r0, _08051414 @ =gCamera
	ldr r0, [r0]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	movs r1, #0
	strh r0, [r2, #0xc]
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0
_08051410: .4byte gBgScrollRegs
_08051414: .4byte gCamera

	thumb_func_start sub_8051418
sub_8051418: @ 0x08051418
	ldr r2, _0805142C @ =gBgScrollRegs
	ldr r0, _08051430 @ =gCamera
	ldr r0, [r0]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	movs r1, #0
	strh r0, [r2, #0xc]
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0
_0805142C: .4byte gBgScrollRegs
_08051430: .4byte gCamera

	thumb_func_start sub_8051434
sub_8051434: @ 0x08051434
	push {lr}
	ldr r1, _08051460 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r2, _08051464 @ =gStageData
	ldrh r1, [r2, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x10]
	bl sub_805068C
	ldr r0, _08051468 @ =gStageBackgroundsRam
	bl DrawBackground
	pop {r0}
	bx r0
	.align 2, 0
_08051460: .4byte gBgScrollRegs
_08051464: .4byte gStageData
_08051468: .4byte gStageBackgroundsRam

	thumb_func_start sub_805146C
sub_805146C: @ 0x0805146C
	ldr r1, _08051488 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r1, _0805148C @ =gStageBackgroundsRam
	ldr r0, _08051490 @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _08051494 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _08051498 @ =gBgCntRegs
	ldr r0, _0805149C @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_08051488: .4byte gBgScrollRegs
_0805148C: .4byte gStageBackgroundsRam
_08051490: .4byte 0x0600C000
_08051494: .4byte 0x0600E800
_08051498: .4byte gBgCntRegs
_0805149C: .4byte 0x00001D0E

	thumb_func_start sub_80514A0
sub_80514A0: @ 0x080514A0
	ldr r3, _080514B8 @ =gBgScrollRegs
	ldr r2, _080514BC @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #4]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_080514B8: .4byte gBgScrollRegs
_080514BC: .4byte gCamera

	thumb_func_start sub_80514C0
sub_80514C0: @ 0x080514C0
	ldr r2, _080514D8 @ =gBgScrollRegs
	movs r3, #0
	strh r3, [r2, #0xc]
	strh r3, [r2, #0xe]
	ldr r0, _080514DC @ =gCamera
	ldr r0, [r0]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r2]
	strh r3, [r2, #2]
	bx lr
	.align 2, 0
_080514D8: .4byte gBgScrollRegs
_080514DC: .4byte gCamera

	thumb_func_start sub_80514E0
sub_80514E0: @ 0x080514E0
	ldr r1, _080514FC @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r1, _08051500 @ =gStageBackgroundsRam
	ldr r0, _08051504 @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _08051508 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _0805150C @ =gBgCntRegs
	ldr r0, _08051510 @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080514FC: .4byte gBgScrollRegs
_08051500: .4byte gStageBackgroundsRam
_08051504: .4byte 0x0600C000
_08051508: .4byte 0x0600E800
_0805150C: .4byte gBgCntRegs
_08051510: .4byte 0x00001D0E

	thumb_func_start sub_8051514
sub_8051514: @ 0x08051514
	ldr r3, _0805152C @ =gBgScrollRegs
	ldr r2, _08051530 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #4]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_0805152C: .4byte gBgScrollRegs
_08051530: .4byte gCamera

	thumb_func_start sub_8051534
sub_8051534: @ 0x08051534
	ldr r2, _0805154C @ =gCamera
	ldr r0, [r2]
	ldr r1, _08051550 @ =0xFFFFFB80
	adds r0, r0, r1
	ldr r1, _08051554 @ =gBgScrollRegs
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #4]
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_0805154C: .4byte gCamera
_08051550: .4byte 0xFFFFFB80
_08051554: .4byte gBgScrollRegs

	thumb_func_start sub_8051558
sub_8051558: @ 0x08051558
	push {lr}
	ldr r0, _08051584 @ =gCamera
	ldr r1, [r0]
	ldr r0, _08051588 @ =0x00000527
	cmp r1, r0
	ble _0805157E
	ldr r0, _0805158C @ =0x000028FB
	cmp r1, r0
	ble _08051598
	ldr r0, _08051590 @ =0x0000301B
	cmp r1, r0
	ble _0805157E
	ldr r0, _08051594 @ =0x00003647
	movs r2, #1
	cmp r1, r0
	bgt _0805157A
	movs r2, #0
_0805157A:
	cmp r2, #0
	beq _08051598
_0805157E:
	bl sub_8050EE4
	b _0805159C
	.align 2, 0
_08051584: .4byte gCamera
_08051588: .4byte 0x00000527
_0805158C: .4byte 0x000028FB
_08051590: .4byte 0x0000301B
_08051594: .4byte 0x00003647
_08051598:
	bl sub_8050FF0
_0805159C:
	pop {r0}
	bx r0

	thumb_func_start sub_80515A0
sub_80515A0: @ 0x080515A0
	push {lr}
	ldr r0, _080515D8 @ =gCamera
	ldr r1, [r0]
	ldr r0, _080515DC @ =0x0000088F
	cmp r1, r0
	ble _080515D2
	ldr r0, _080515E0 @ =0x00002237
	cmp r1, r0
	ble _080515F4
	ldr r0, _080515E4 @ =0x00003493
	cmp r1, r0
	ble _080515D2
	ldr r0, _080515E8 @ =0x00003EBF
	cmp r1, r0
	ble _080515F4
	ldr r0, _080515EC @ =0x0000439F
	cmp r1, r0
	ble _080515D2
	ldr r0, _080515F0 @ =0x0000505F
	movs r2, #1
	cmp r1, r0
	bgt _080515CE
	movs r2, #0
_080515CE:
	cmp r2, #0
	beq _080515F4
_080515D2:
	bl sub_8050EE4
	b _080515F8
	.align 2, 0
_080515D8: .4byte gCamera
_080515DC: .4byte 0x0000088F
_080515E0: .4byte 0x00002237
_080515E4: .4byte 0x00003493
_080515E8: .4byte 0x00003EBF
_080515EC: .4byte 0x0000439F
_080515F0: .4byte 0x0000505F
_080515F4:
	bl sub_8050FF0
_080515F8:
	pop {r0}
	bx r0

	thumb_func_start sub_80515FC
sub_80515FC: @ 0x080515FC
	push {r4, lr}
	ldr r3, _08051624 @ =gBgScrollRegs
	ldr r2, _08051628 @ =gCamera
	ldr r1, [r2]
	ldr r4, _0805162C @ =0xFFFFFCB8
	adds r0, r1, r4
	strh r0, [r3]
	ldr r2, [r2, #4]
	ldr r4, _08051630 @ =0xFFFFFE48
	adds r0, r2, r4
	strh r0, [r3, #2]
	asrs r1, r1, #6
	movs r0, #0xff
	ands r1, r0
	strh r1, [r3, #0xc]
	asrs r2, r2, #9
	strh r2, [r3, #0xe]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051624: .4byte gBgScrollRegs
_08051628: .4byte gCamera
_0805162C: .4byte 0xFFFFFCB8
_08051630: .4byte 0xFFFFFE48

	thumb_func_start sub_8051634
sub_8051634: @ 0x08051634
	ldr r1, _0805164C @ =gStageBackgroundsRam
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08051650 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08051654 @ =0x0600E800
	str r0, [r1]
	ldr r1, _08051658 @ =gBgCntRegs
	ldr r0, _0805165C @ =0x00009D0A
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0805164C: .4byte gStageBackgroundsRam
_08051650: .4byte 0x06008000
_08051654: .4byte 0x0600E800
_08051658: .4byte gBgCntRegs
_0805165C: .4byte 0x00009D0A

	thumb_func_start sub_8051660
sub_8051660: @ 0x08051660
	bx lr
	.align 2, 0

	thumb_func_start sub_8051664
sub_8051664: @ 0x08051664
	bx lr
	.align 2, 0

	thumb_func_start Task_8051668
Task_8051668: @ 0x08051668
	ldr r3, _08051680 @ =gBgScrollRegs
	ldr r2, _08051684 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	strh r0, [r3, #0xe]
	bx lr
	.align 2, 0
_08051680: .4byte gBgScrollRegs
_08051684: .4byte gCamera

	thumb_func_start Task_8051688
Task_8051688: @ 0x08051688
	push {lr}
	ldr r0, _080516B4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080516B8 @ =gPlayers
	adds r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, _080516BC @ =0x80000100
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _080516B0
	movs r0, #0
	bl UpdateCamera
_080516B0:
	pop {r0}
	bx r0
	.align 2, 0
_080516B4: .4byte gStageData
_080516B8: .4byte gPlayers
_080516BC: .4byte 0x80000100

	thumb_func_start Task_80516C0
Task_80516C0: @ 0x080516C0
	push {lr}
	movs r0, #0
	bl UpdateCamera
	pop {r0}
	bx r0

	thumb_func_start Task_80516CC
Task_80516CC: @ 0x080516CC
	push {lr}
	bl UpdateCameraMultiplayer
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_80516D8
Task_80516D8: @ 0x080516D8
	push {lr}
	ldr r2, _080516F8 @ =gDispCnt
	ldr r1, _080516FC @ =gStageData
	ldrh r0, [r2]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	bl Task_8051708
	ldr r0, _08051700 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08051704 @ =Task_8051708
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080516F8: .4byte gDispCnt
_080516FC: .4byte gStageData
_08051700: .4byte gCurTask
_08051704: .4byte Task_8051708

	thumb_func_start Task_8051708
Task_8051708: @ 0x08051708
	push {lr}
	ldr r1, _08051718 @ =gCamera
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_80503DC
	pop {r0}
	bx r0
	.align 2, 0
_08051718: .4byte gCamera

	thumb_func_start sub_805171C
sub_805171C: @ 0x0805171C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08051740 @ =gStageBackgroundsRam + (1 * 0x40)
	ldr r4, _08051744 @ =gBgScrollRegs
	movs r3, #7
	adds r2, r5, #0
	ands r2, r3
	strh r2, [r4, #4]
	adds r2, r1, #0
	ands r2, r3
	strh r2, [r4, #6]
	strh r5, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051740: .4byte gStageBackgroundsRam + (1 * 0x40)
_08051744: .4byte gBgScrollRegs

	thumb_func_start Task_8051748
Task_8051748: @ 0x08051748
	push {lr}
	ldr r2, _08051768 @ =gDispCnt
	ldr r1, _0805176C @ =gStageData
	ldrh r0, [r2]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	bl sub_8051778
	ldr r0, _08051770 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08051774 @ =sub_8051778
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08051768: .4byte gDispCnt
_0805176C: .4byte gStageData
_08051770: .4byte gCurTask
_08051774: .4byte sub_8051778

	thumb_func_start sub_8051778
sub_8051778: @ 0x08051778
	push {lr}
	ldr r1, _08051788 @ =gCamera
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_805171C
	pop {r0}
	bx r0
	.align 2, 0
_08051788: .4byte gCamera

	thumb_func_start sub_805178C
sub_805178C: @ 0x0805178C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080517B0 @ =gStageBackgroundsRam + (1 * 0x40)
	ldr r4, _080517B4 @ =gBgScrollRegs
	movs r3, #7
	adds r2, r5, #0
	ands r2, r3
	strh r2, [r4, #4]
	adds r2, r1, #0
	ands r2, r3
	strh r2, [r4, #6]
	strh r5, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080517B0: .4byte gStageBackgroundsRam + (1 * 0x40)
_080517B4: .4byte gBgScrollRegs

	thumb_func_start Task_80517B8
Task_80517B8: @ 0x080517B8
	push {lr}
	ldr r2, _080517D8 @ =gDispCnt
	ldr r1, _080517DC @ =gStageData
	ldrh r0, [r2]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	bl sub_80517E8
	ldr r0, _080517E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080517E4 @ =sub_80517E8
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080517D8: .4byte gDispCnt
_080517DC: .4byte gStageData
_080517E0: .4byte gCurTask
_080517E4: .4byte sub_80517E8

	thumb_func_start sub_80517E8
sub_80517E8: @ 0x080517E8
	push {lr}
	ldr r1, _080517F8 @ =gCamera
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_805178C
	pop {r0}
	bx r0
	.align 2, 0
_080517F8: .4byte gCamera
