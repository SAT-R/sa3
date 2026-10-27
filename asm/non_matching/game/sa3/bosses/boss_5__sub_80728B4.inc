
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r0, r6, r0
	str r0, [sp, #8]
	movs r1, #0xda
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #0xc]
	adds r4, r6, #0
	adds r4, #0xe0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r7, _08072B68 @ =gCamera
	ldr r1, [r7]
	subs r0, r0, r1
	subs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	adds r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	beq _0807293C
	b _08072A72
_0807293C:
	adds r4, r6, #0
	adds r4, #0x90
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
	movs r0, #0x48
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x4c
	adds r1, r1, r6
	mov r8, r1
_0807296A:
	lsls r2, r5, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0807296A
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A04
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_080729DE:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080729DE
_08072A04:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0 @ inline sub_80734EC ?
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A72
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08072A4C:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08072A4C
_08072A72:
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r4, _08072B68 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x12]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r1, sb
	ldr r0, [r1, #8]
	movs r7, #0x80
	lsls r7, r7, #3
	orrs r0, r7
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r5, _08072B7C @ =0xFFFFFBFF
	ands r0, r5
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08072AEC
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl DisplaySprite
_08072AEC:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r1, [sp, #8]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	subs r0, #0x5c
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	movs r5, #0
_08072B40:
	ldr r0, [sp, #0xc]
	bl DisplaySprite
	ldr r1, [sp, #0xc]
	ldrh r0, [r1, #0x10]
	adds r0, #8
	strh r0, [r1, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x16
	bls _08072B40
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072B68: .4byte gCamera
_08072B6C: .4byte gCurTask
_08072B70: .4byte 0x03000090
_08072B74: .4byte 0x030000B8
_08072B78: .4byte 0x03000048
_08072B7C: .4byte 0xFFFFFBFF

.syntax divided
