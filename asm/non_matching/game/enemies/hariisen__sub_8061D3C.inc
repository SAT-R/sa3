
.syntax unified
.text
	sub sp, #0x10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	str r3, [sp, #0x38]
	ldr r0, _08061E44 @ =sub_80625FC
	ldr r2, _08061E48 @ =0x00004040
	ldr r1, _08061E4C @ =sub_8062638
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r3, #0
	mov r0, sp
	adds r0, #6
	str r0, [sp, #8]
	ldr r2, _08061E50 @ =0x0300002C
	adds r7, r1, r2
	movs r4, #0
	ldr r0, _08061E54 @ =0x03000030
	adds r5, r1, r0
	movs r1, #1
	mov r8, r1
_08061D80:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	adds r0, r6, r3
	mov r2, r8
	strb r2, [r0]
	lsls r0, r3, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r2, [sp, #0x38]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08061D80
	movs r3, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r6
	mov sb, r1
	movs r2, #0xb8
	adds r2, r2, r6
	mov sl, r2
	movs r0, #0x3c
	adds r0, r0, r6
	mov ip, r0
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x40
	adds r5, r6, #2
_08061DCE:
	lsls r1, r3, #3
	mov r2, ip
	adds r0, r2, r1
	str r4, [r0]
	adds r1, r7, r1
	str r4, [r1]
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	lsls r1, r3, #2
	add r1, r8
	ldr r2, [sp, #0x3c]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08061DCE
	ldr r0, [sp, #0x2c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x30]
	str r0, [r6, #0x28]
	add r0, sp, #0x2c
	ldrh r0, [r0, #8]
	movs r5, #0
	strh r0, [r6, #6]
	add r0, sp, #0x2c
	ldrh r0, [r0, #0xa]
	strh r0, [r6, #8]
	add r0, sp, #4
	strh r5, [r0]
	ldr r4, _08061E58 @ =0x01000002
	mov r1, sb
	adds r2, r4, #0
	bl CpuSet
	ldr r0, [sp, #8]
	strh r5, [r0]
	ldr r0, [sp, #8]
	mov r1, sl
	adds r2, r4, #0
	bl CpuSet
	adds r0, r6, #0
	bl sub_8061E5C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08061E44: .4byte sub_80625FC
_08061E48: .4byte 0x00004040
_08061E4C: .4byte sub_8062638
_08061E50: .4byte 0x0300002C
_08061E54: .4byte 0x03000030
_08061E58: .4byte 0x01000002

.syntax divided
