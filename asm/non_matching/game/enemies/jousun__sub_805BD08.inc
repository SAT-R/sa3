
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r4, #0x24]
	asrs r7, r0, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	movs r6, #0
	b _0805BDA2
_0805BD2A:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	mov r2, r8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r0, r1, r0
	ldr r1, [r4, #0x24]
	subs r2, r0, r1
	cmp r2, #0
	blt _0805BD5E
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	ble _0805BD68
	b _0805BD9C
_0805BD5E:
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0805BD9C
_0805BD68:
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805BD84
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x20]
	cmp r0, r2
	ble _0805BD92
	b _0805BD9C
_0805BD84:
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x20]
	cmp r0, r2
	blt _0805BD9C
_0805BD92:
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	movs r0, #1
	b _0805BDB4
_0805BD9C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0805BDA2:
	cmp r6, #1
	bhi _0805BDB2
	adds r0, r6, #0
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805BD2A
_0805BDB2:
	movs r0, #0
_0805BDB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
