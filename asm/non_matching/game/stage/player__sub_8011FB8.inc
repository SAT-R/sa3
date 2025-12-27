
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov ip, r0
	ldr r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _08011FFC
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _08011FF8 @ =sub_805203C
	str r2, [sp, #4]
	mov r2, ip
	b _08012030
	.align 2, 0
_08011FF8: .4byte sub_805203C
_08011FFC:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r5, #0x14]
	asrs r6, r0, #8
	mov r2, ip
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, _08012068 @ =0x000002FF
	cmp r1, r0
	bgt _08012022
	movs r0, #0x80
	orrs r2, r0
_08012022:
	movs r3, #8
	rsbs r3, r3, #0
	str r4, [sp]
	ldr r0, _0801206C @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
_08012030:
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _0801204A
	lsls r1, r2, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
_0801204A:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	bne _08012070
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
	b _0801207C
	.align 2, 0
_08012068: .4byte 0x000002FF
_0801206C: .4byte sub_805203C
_08012070:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_0801207C:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080120A6
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012090
	rsbs r2, r2, #0
_08012090:
	lsls r0, r2, #8
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08012110
	movs r0, #0
	strh r0, [r5, #0x1a]
	b _08012110
_080120A6:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08012110
	adds r3, r4, #0
	movs r2, #1
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080120C0
	movs r2, #0
_080120C0:
	cmp r2, #0
	bne _080120D0
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	bl sub_8011024
	b _080120DC
_080120D0:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_080120DC:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012110
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080120F0
	rsbs r2, r2, #0
_080120F0:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x26
	movs r4, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8012F10
	strh r4, [r5, #0x1a]
	ldrh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08012110:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
