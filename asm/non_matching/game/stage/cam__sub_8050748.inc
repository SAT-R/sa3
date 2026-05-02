
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _080507B4 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x7f
	ands r0, r1
	lsrs r4, r0, #3
	ldr r1, _080507B8 @ =gUnknown_080D092C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _080507BC @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080507C0 @ =gHBlankCopyTarget
	ldr r0, _080507C4 @ =0x0400001C
	str r0, [r1]
	ldr r1, _080507C8 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080507CC @ =gBgOffsetsHBlankPrimary
	ldr r5, [r0]
	ldr r0, _080507D0 @ =gBgScrollRegs
	movs r2, #0
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	mov ip, r1
	ldr r0, _080507D4 @ =gCamera
	ldr r7, [r0]
	movs r6, #0xf
_0805078A:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	add r0, ip
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	asrs r0, r0, #0x13
	add r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #7
	subs r0, r0, r1
	adds r1, r7, #0
	asrs r1, r0
	movs r0, #0xff
	ands r1, r0
	strh r1, [r5]
	cmp r3, #0x90
	ble _080507D8
	movs r0, #1
	b _080507DE
	.align 2, 0
_080507B4: .4byte gStageData
_080507B8: .4byte gUnknown_080D092C
_080507BC: .4byte gFlags
_080507C0: .4byte gHBlankCopyTarget
_080507C4: .4byte 0x0400001C
_080507C8: .4byte gHBlankCopySize
_080507CC: .4byte gBgOffsetsHBlankPrimary
_080507D0: .4byte gBgScrollRegs
_080507D4: .4byte gCamera
_080507D8:
	cmp r3, #0x80
	ble _080507EC
	movs r0, #2
_080507DE:
	ands r0, r4
	cmp r0, #0
	bne _080507E8
	adds r0, r1, #1
	strh r0, [r5]
_080507E8:
	adds r4, #1
	ands r4, r6
_080507EC:
	adds r5, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805078A
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
