
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r6, #1
	add r0, sp, #4
	strb r6, [r0]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08077C58 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _08077C60
	ldr r2, _08077C5C @ =0x03000020
	adds r0, r1, r2
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	movs r2, #0x10
	ldrsh r4, [r0, r2]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	adds r5, r0, #0
	adds r5, #0x20
	b _08077C6E
	.align 2, 0
_08077C58: .4byte gCurTask
_08077C5C: .4byte 0x03000020
_08077C60:
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r4, [r0]
	ldr r0, [r2, #0xc]
	ldr r5, [r0]
	asrs r4, r4, #8
	asrs r5, r5, #8
_08077C6E:
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x54
	str r0, [sp, #0x10]
	movs r1, #4
	add r1, r8
	mov sb, r1
	add r7, sp, #4
	mov r2, sp
	strh r4, [r2, #0xc]
	ldr r0, _08077C90 @ =gPseudoRandom
	mov sl, r0
_08077C8A:
	ldr r4, [sp, #0x10]
	b _08077D02
	.align 2, 0
_08077C90: .4byte gPseudoRandom
_08077C94:
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08077D34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08077D38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrb r1, [r7]
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sp
	ldrh r2, [r2, #0xc]
	adds r0, r2, r0
	strh r0, [r4, #0x10]
	ldrb r1, [r7]
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r5, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r6, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r6, #0
	bne _08077CE6
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08077CE6:
	ldrb r0, [r7]
	add r0, sb
	strb r6, [r0]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08077D0C
	cmp r0, #0
	beq _08077C8A
	mov r4, r8
	adds r4, #0x24
_08077D02:
	ldrb r0, [r7]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077C94
_08077D0C:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08077D22
	mov r2, r8
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08077D3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08077D22:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077D34: .4byte 0x00196225
_08077D38: .4byte 0x3C6EF35F
_08077D3C: .4byte gCurTask

.syntax divided
