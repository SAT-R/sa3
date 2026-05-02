
.syntax unified
.text
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

.syntax divided
