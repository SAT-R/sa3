
.syntax unified
.text
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

.syntax divided
