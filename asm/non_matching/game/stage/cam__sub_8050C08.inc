
.syntax unified
.text
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

.syntax divided
