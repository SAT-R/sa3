
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r3, [r1, #0x28]
	subs r3, r3, r0
	str r3, [sp, #8]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x2c]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	mov r2, ip
	ldr r5, [r2, #0x58]
	str r5, [sp]
	ldr r2, [r2, #0x5c]
	str r2, [sp, #4]
	subs r1, r1, r2
	asrs r1, r1, #6
	mov r4, ip
	ldrh r0, [r4, #8]
	lsrs r4, r0, #6
	muls r1, r4, r1
	adds r2, r2, r1
	mov r1, ip
	str r2, [r1, #0x64]
	subs r3, r3, r5
	asrs r3, r3, #6
	adds r1, r3, #0
	muls r1, r4, r1
	adds r2, r5, r1
	mov r4, ip
	str r2, [r4, #0x60]
	adds r0, #0x80
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	cmp r0, #0x3f
	bhi _0805D520
	mov r0, ip
	adds r0, #0x68
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0805D4FC
	subs r1, r2, r5
	cmp r1, #0
	bge _0805D4EA
	subs r1, r5, r2
_0805D4EA:
	ldr r0, _0805D514 @ =0x000039FF
	cmp r1, r0
	bgt _0805D520
	mov r1, sb
	ldrh r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x64]
	cmp r0, #0
	beq _0805D534
_0805D4FC:
	mov r4, ip
	ldr r0, [r4, #0x64]
	ldr r1, [sp, #4]
	subs r2, r0, r1
	adds r3, r0, #0
	cmp r2, #0
	blt _0805D518
	ldr r0, _0805D514 @ =0x000039FF
	cmp r2, r0
	bgt _0805D520
	b _0805D534
	.align 2, 0
_0805D514: .4byte 0x000039FF
_0805D518:
	subs r1, r1, r3
	ldr r0, _0805D530 @ =0x000039FF
	cmp r1, r0
	ble _0805D534
_0805D520:
	movs r0, #1
	str r0, [sp, #0x10]
	movs r1, #0x68
	add r1, ip
	mov sb, r1
	mov r2, ip
	ldr r3, [r2, #0x64]
	b _0805D538
	.align 2, 0
_0805D530: .4byte 0x000039FF
_0805D534:
	movs r4, #0
	str r4, [sp, #0x10]
_0805D538:
	mov r1, ip
	ldr r0, [r1, #0x60]
	str r0, [r1, #0x30]
	str r3, [r1, #0x34]
	movs r2, #0
	movs r4, #0x30
	add r4, ip
	mov r8, r4
	mov r7, ip
	adds r7, #0x34
	movs r0, #7
	movs r1, #1
	mov sl, r1
	mov r4, sl
	lsls r4, r0
	mov sl, r4
_0805D558:
	movs r3, #0xa
	cmp r2, #0
	bne _0805D560
	movs r3, #0xe
_0805D560:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	bne _0805D574
	lsls r0, r2, #3
	add r0, r8
	adds r2, #1
	lsls r1, r2, #3
	add r1, r8
	b _0805D57E
_0805D574:
	lsls r0, r2, #3
	adds r0, r7, r0
	adds r2, #1
	lsls r1, r2, #3
	adds r1, r7, r1
_0805D57E:
	ldr r0, [r0]
	ldr r1, [r1]
	subs r4, r0, r1
	adds r6, r2, #0
	cmp r4, #0
	bge _0805D58C
	subs r4, r1, r0
_0805D58C:
	lsls r0, r3, #8
	cmp r4, r0
	blt _0805D5D6
	mov r2, ip
	ldr r5, [r2, #0x58]
	str r5, [sp]
	ldr r0, [r2, #0x5c]
	str r0, [sp, #4]
	lsls r3, r6, #3
	adds r4, r7, r3
	str r0, [r4]
	add r3, r8
	str r5, [r3]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	asrs r1, r1, #6
	lsls r0, r6, #1
	adds r2, #8
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r1, #6
	ldrh r0, [r2]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2]
	add r0, sl
	strh r0, [r2]
_0805D5D6:
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805D558
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
