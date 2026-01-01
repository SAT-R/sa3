
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080184E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0
	ldr r2, _080184EC @ =0x03000080
	adds r2, r2, r1
	mov sl, r2
	ldr r3, _080184F0 @ =0x03000082
	adds r3, r3, r1
	mov sb, r3
	ldr r5, _080184EC @ =0x03000080
	adds r4, r1, r5
_080183C6:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #2
	adds r1, r4, r3
	adds r0, r7, #0
	adds r0, #0xb0
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x82
	adds r1, r1, r3
	adds r0, r7, #0
	adds r0, #0xb2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xb
	ble _080183C6
	adds r6, r7, #4
	movs r5, #0x7c
	adds r5, r5, r7
	mov r8, r5
	ldr r4, _080184F4 @ =gCamera
	ldr r0, [r4]
	ldrh r1, [r5]
	subs r1, r1, r0
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x10]
	adds r5, r7, #0
	adds r5, #0x7e
	ldr r0, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r6, #0x28
	ldr r0, [r4]
	mov r2, r8
	ldrh r1, [r2]
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	movs r0, #0
	adds r3, r7, #0
	adds r3, #0x54
	str r3, [sp]
	mov ip, r8
	mov r8, r4
	str r5, [sp, #4]
_08018480:
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	lsls r4, r3, #2
	adds r4, #0x54
	adds r4, r7, r4
	mov r5, r8
	ldr r0, [r5]
	mov r5, ip
	ldrh r1, [r5]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r2, r2, r0
	asrs r2, r2, #0xe
	mov r5, sl
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4]
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r5, [sp, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	add r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4, #2]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #9
	ble _08018480
	adds r0, r6, #0
	ldr r1, [sp]
	movs r2, #0xa
	bl DisplaySprites
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080184E8: .4byte gCurTask
_080184EC: .4byte 0x03000080
_080184F0: .4byte 0x03000082
_080184F4: .4byte gCamera

.syntax divided
