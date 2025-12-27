
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r7, [r0]
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _08012154
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _08012150 @ =sub_805203C
	str r2, [sp, #4]
	adds r2, r7, #0
	b _08012184
	.align 2, 0
_08012150: .4byte sub_805203C
_08012154:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r6, r0, r1
	ldr r0, [r5, #0x14]
	asrs r4, r0, #8
	adds r2, r7, #0
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, _080121BC @ =0x000002FF
	cmp r1, r0
	bgt _0801217A
	movs r0, #0x80
	orrs r2, r0
_0801217A:
	str r3, [sp]
	ldr r0, _080121C0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
_08012184:
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _080121A0
	lsls r1, r2, #8
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
_080121A0:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	bne _080121C4
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
	b _080121D0
	.align 2, 0
_080121BC: .4byte 0x000002FF
_080121C0: .4byte sub_805203C
_080121C4:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_080121D0:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080121FA
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080121E4
	rsbs r2, r2, #0
_080121E4:
	lsls r0, r2, #8
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08012264
	movs r0, #0
	strh r0, [r5, #0x1a]
	b _08012264
_080121FA:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08012264
	adds r3, r4, #0
	movs r2, #1
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012214
	movs r2, #0
_08012214:
	cmp r2, #0
	bne _08012224
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	bl sub_8011024
	b _08012230
_08012224:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_08012230:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012264
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012244
	rsbs r2, r2, #0
_08012244:
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
_08012264:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
