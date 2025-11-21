
.syntax unified
.text
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D26
	adds r1, r0, #0
	adds r0, r1, #4
	b _08060D2C
_08060D26:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_08060D2C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r2, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D5C
	ldrh r0, [r3, #0xa]
	movs r6, #0xa
	ldrsh r1, [r3, r6]
	cmp r1, #0
	bgt _08060D58
	cmp r1, #0
	bge _08060D5C
_08060D58:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
_08060D5C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0xa]
	adds r1, r1, r0
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
