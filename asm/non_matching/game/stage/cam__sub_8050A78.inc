
.syntax unified
.text
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

.syntax divided
