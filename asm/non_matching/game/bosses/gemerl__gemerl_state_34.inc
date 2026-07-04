
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r0, _08067044 @ =gUnknown_080D56F0
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x20
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068A6C
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	ldr r0, _08067048 @ =0xFFFFFD00
	cmp r1, r0
	bge _0806702E
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sb, r1
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r0, #0
	beq _08066FBA
	movs r4, #0
_08066FBA:
	ldr r2, _0806704C @ =gSineTable
	mov ip, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r1, r0, #0xe
	cmp r1, #0
	bge _08066FEC
	rsbs r1, r1, #0
_08066FEC:
	lsls r0, r4, #1
	add r0, ip
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r0, #0
	muls r4, r3, r4
	lsls r4, r4, #2
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r5, #0
	movs r1, #0x23
	bl Gemerl_SwitchState
	ldr r0, [r6, #8]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0806702E
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_0806702E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067044: .4byte gUnknown_080D56F0
_08067048: .4byte 0xFFFFFD00
_0806704C: .4byte gSineTable

.syntax divided
