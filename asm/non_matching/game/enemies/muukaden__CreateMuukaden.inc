
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r6, r0, #0
	ldr r5, [sp, #0x64]
	str r1, [r6]
	ldrb r0, [r1]
	movs r4, #0
	strb r0, [r6, #5]
	strb r5, [r6, #4]
	movs r5, #0
	strh r2, [r6, #0x14]
	strh r3, [r6, #0x16]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r6, #0x64]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r6, #0x68]
	str r2, [r6, #0x5c]
	str r0, [r6, #0x60]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	strb r5, [r6, #7]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r4, [r0]
	movs r0, #3
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x5c]
	adds r2, r2, r0
	str r2, [r6, #0x24]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x28]
	movs r0, #4
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x60]
	adds r2, r2, r0
	str r2, [r6, #0x34]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x38]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	str r0, [r6, #0x2c]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	ldrb r1, [r1, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080626CA
	movs r0, #0xff
	b _080626CC
_080626CA:
	movs r0, #1
_080626CC:
	strb r0, [r6, #8]
	movs r3, #0
	movs r0, #0xa
	adds r0, r0, r6
	mov r8, r0
	adds r1, r6, #0
	adds r1, #0xa4
	str r1, [sp, #0x18]
	movs r0, #2
	add r0, sp
	mov sb, r0
	adds r1, #0x30
	str r1, [sp, #0x40]
	add r0, sp, #4
	mov sl, r0
	mov r1, sp
	adds r1, #6
	str r1, [sp, #0x1c]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	adds r0, r6, #0
	adds r0, #0x9c
	str r0, [sp, #0x14]
	adds r1, #2
	str r1, [sp, #0x2c]
	adds r0, #0x30
	str r0, [sp, #0x3c]
	adds r1, #2
	str r1, [sp, #0x30]
	adds r0, #0x30
	str r0, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x34]
	mov r0, sp
	adds r0, #0x12
	str r0, [sp, #0x38]
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r6, #0
	adds r5, #0x40
	mov r4, r8
	mov ip, r3
_08062726:
	lsls r1, r3, #3
	adds r2, r7, r1
	ldr r0, [r6, #0x5c]
	str r0, [r2]
	adds r1, r5, r1
	ldr r0, [r6, #0x60]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08062726
	lsls r0, r3, #1
	add r0, r8
	movs r4, #0
	strh r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r5, _080627FC @ =0x01000002
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	bl CpuSet
	mov r0, sb
	strh r4, [r0]
	ldr r1, [sp, #0x40]
	adds r2, r5, #0
	bl CpuSet
	mov r1, sl
	strh r4, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r6, r0
	mov r0, sl
	adds r2, r5, #0
	bl CpuSet
	ldr r1, [sp, #0x1c]
	strh r4, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x1c]
	adds r2, r5, #0
	bl CpuSet
	ldr r1, [sp, #0x24]
	strh r4, [r1]
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x24]
	adds r2, r5, #0
	bl CpuSet
	ldr r1, [sp, #0x28]
	strh r4, [r1]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [sp, #0x2c]
	strh r4, [r0]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	adds r2, r5, #0
	bl CpuSet
	ldr r1, [sp, #0x30]
	strh r4, [r1]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x20]
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [sp, #0x34]
	strh r4, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x34]
	adds r2, r5, #0
	bl CpuSet
	ldr r1, [sp, #0x38]
	strh r4, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x38]
	adds r2, r5, #0
	bl CpuSet
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080627FC: .4byte 0x01000002

.syntax divided
