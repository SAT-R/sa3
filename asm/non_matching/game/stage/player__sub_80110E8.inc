
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r1, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, r1, #0
	cmp r2, #0
	bne _0801110A
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x10]
_0801110A:
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _08011116
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x14]
_08011116:
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	cmp r1, #1
	beq _080111CC
	cmp r1, #1
	bgt _08011130
	cmp r1, #0
	beq _0801113E
	b _0801135E
_08011130:
	cmp r6, #2
	bne _08011136
	b _08011254
_08011136:
	cmp r6, #3
	bne _0801113C
	b _080112E0
_0801113C:
	b _0801135E
_0801113E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, #2
	mov sl, r0
	movs r5, #0x24
	adds r5, r5, r4
	mov sb, r5
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov r7, sl
	subs r3, r7, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r6, r4, #0
	adds r6, #0x25
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r2, [sp, #0x18]
	subs r1, r2, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0x1a
	ldrsh r0, [r4, r7]
	ldr r7, _080111C4 @ =0x000002FF
	cmp r0, r7
	bgt _0801117A
	movs r0, #0x80
	orrs r2, r0
_0801117A:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _080111C8 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	subs r3, r2, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r7, [sp, #0x18]
	adds r1, r7, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	ldr r7, _080111C4 @ =0x000002FF
	cmp r0, r7
	bgt _080111B2
	movs r0, #0x80
	orrs r2, r0
_080111B2:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r0, _080111C8 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	b _08011358
	.align 2, 0
_080111C4: .4byte 0x000002FF
_080111C8: .4byte sub_805203C
_080111CC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	mov sl, r0
	movs r1, #0x24
	adds r1, r1, r4
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r5, sl
	adds r3, r5, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r6, r4, #0
	adds r6, #0x25
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r7, [sp, #0x18]
	subs r1, r7, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0x1a
	ldrsh r0, [r4, r7]
	ldr r7, _0801124C @ =0x000002FF
	cmp r0, r7
	bgt _08011208
	movs r0, #0x80
	orrs r2, r0
_08011208:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _08011250 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	adds r3, r2, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r7, [sp, #0x18]
	adds r1, r7, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	ldr r7, _0801124C @ =0x000002FF
	cmp r0, r7
	bgt _0801123E
	movs r0, #0x80
	orrs r2, r0
_0801123E:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r0, _08011250 @ =sub_805203C
	str r0, [sp, #4]
	b _08011354
	.align 2, 0
_0801124C: .4byte 0x000002FF
_08011250: .4byte sub_805203C
_08011254:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x25
	adds r1, r1, r4
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	subs r2, r2, r0
	mov r8, r2
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	subs r1, r7, #2
	adds r6, r4, #0
	adds r6, #0x24
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _080112D8 @ =0x000002FF
	cmp r0, r3
	bgt _0801128E
	movs r0, #0x80
	orrs r2, r0
_0801128E:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _080112DC @ =sub_805217C
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	subs r3, r2, r0
	adds r1, r7, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	ldr r7, _080112D8 @ =0x000002FF
	cmp r0, r7
	bgt _080112C6
	movs r0, #0x80
	orrs r2, r0
_080112C6:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r0, _080112DC @ =sub_805217C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	b _08011358
	.align 2, 0
_080112D8: .4byte 0x000002FF
_080112DC: .4byte sub_805217C
_080112E0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x25
	adds r1, r1, r4
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sl
	mov r8, r0
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	subs r1, r7, #2
	adds r6, r4, #0
	adds r6, #0x24
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08011316
	movs r0, #0x80
	orrs r2, r0
_08011316:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _08011374 @ =sub_805217C
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #8
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	adds r3, r2, r0
	adds r1, r7, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _0801134A
	movs r0, #0x80
	orrs r2, r0
_0801134A:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r7, _08011374 @ =sub_805217C
	str r7, [sp, #4]
_08011354:
	adds r0, r3, #0
	movs r3, #8
_08011358:
	bl sub_80517FC
	adds r5, r0, #0
_0801135E:
	cmp r8, r5
	bge _08011378
	mov r1, r8
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r3, [sp, #0x14]
	str r5, [r3]
	b _0801138A
	.align 2, 0
_08011374: .4byte sub_805217C
_08011378:
	adds r1, r5, #0
	mov r0, sp
	adds r0, #0xa
	ldrb r0, [r0]
	ldr r4, [sp, #0x10]
	strb r0, [r4]
	mov r5, r8
	ldr r7, [sp, #0x14]
	str r5, [r7]
_0801138A:
	adds r0, r1, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
