
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, _0805C540 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _0805C544 @ =0x03000020
	adds r3, r1, r2
	movs r4, #0
	mov sb, r4
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805C548
	movs r0, #0
	b _0805C62E
	.align 2, 0
_0805C540: .4byte gStageData
_0805C544: .4byte 0x03000020
_0805C548:
	mov r0, ip
	adds r0, #0x24
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r1, ip
	adds r1, #0x26
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C562
	subs r0, r1, r2
_0805C562:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	mov r0, ip
	adds r0, #0x25
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r1, ip
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C582
	subs r0, r1, r2
_0805C582:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	adds r0, r3, #0
	adds r0, #0x2c
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C5A2
	subs r0, r1, r2
_0805C5A2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r3, #0
	adds r0, #0x2d
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r2, r1
	cmp r0, #0
	bge _0805C5C2
	subs r0, r1, r2
_0805C5C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r6, #0
	bne _0805C5D0
	cmp r7, #0
	beq _0805C62C
_0805C5D0:
	mov r5, ip
	movs r0, #0x10
	ldrsh r4, [r5, r0]
	movs r1, #0x10
	ldrsh r2, [r3, r1]
	cmp r4, r2
	bgt _0805C5EC
	adds r0, r4, #0
	adds r0, r0, r6
	adds r1, r2, #0
	cmp r0, r1
	bge _0805C5FC
	cmp r4, r2
	blt _0805C62C
_0805C5EC:
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	add r0, sl
	mov r2, ip
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	cmp r0, r1
	blt _0805C62C
_0805C5FC:
	mov r5, ip
	movs r0, #0x12
	ldrsh r4, [r5, r0]
	movs r1, #0x12
	ldrsh r2, [r3, r1]
	cmp r4, r2
	bgt _0805C618
	adds r0, r4, #0
	adds r0, r0, r7
	adds r1, r2, #0
	cmp r0, r1
	bge _0805C628
	cmp r4, r2
	blt _0805C62C
_0805C618:
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	add r0, r8
	mov r2, ip
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _0805C62C
_0805C628:
	movs r4, #1
	mov sb, r4
_0805C62C:
	mov r0, sb
_0805C62E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
