.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_803FB08
sub_803FB08: @ 0x0803FB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803FB78 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r3, [r6]
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	add r0, r8
	mov sl, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r7, r2, r0
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0
_0803FB68:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0803FB80
	ldr r0, _0803FB7C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803FB8A
	.align 2, 0
_0803FB78: .4byte gCurTask
_0803FB7C: .4byte gUnknown_030008A0
_0803FB80:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803FB8A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803FC1C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803FBAE
	cmp r1, #8
	beq _0803FBAE
	cmp r1, #0x10
	bne _0803FBFA
_0803FBAE:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0803FBFA
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0803FBFA
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _0803FBFA
	cmp r0, sb
	bge _0803FBFA
	ldr r0, [r4, #0x14]
	cmp r0, r8
	ble _0803FBFA
	cmp r0, sl
	bge _0803FBFA
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _0803FC20 @ =sub_800A3C0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #0x24
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [sp]
	str r1, [r4, #0x6c]
	asrs r1, r5, #0xe
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r0, r1
	str r4, [r0]
_0803FBFA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803FB68
	bl sub_803FC80
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC1C: .4byte gUnknown_030015C0
_0803FC20: .4byte sub_800A3C0

	thumb_func_start sub_803FC24
sub_803FC24: @ 0x0803FC24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803FC7C @ =0x0000037B
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	subs r0, #0x7b
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r2, #0
_0803FC60:
	strh r2, [r5]
	strh r2, [r5, #2]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0803FC60
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC7C: .4byte 0x0000037B

	thumb_func_start sub_803FC80
sub_803FC80: @ 0x0803FC80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	ldr r0, _0803FD28 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0803FD2C @ =0x0300000C
	adds r6, r0, r1
	adds r1, #0x28
	adds r5, r0, r1
	mov r4, sp
	mov r0, r8
	ldr r0, [r0]
	mov sb, r0
	mov r0, sp
	bl sub_803FD5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0
	ldr r7, _0803FD30 @ =gCamera
	adds r3, r7, #0
_0803FCBA:
	ldr r1, [r3]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r5]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #2]
	subs r0, r0, r1
	strh r0, [r5, #2]
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #4
	adds r5, #4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0803FCBA
	ldr r1, [r7]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r2, [r7, #4]
	ldrh r1, [r4, #2]
	subs r2, r1, r2
	strh r2, [r6, #0x12]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803FD0E
	movs r1, #0x12
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0803FD0E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0803FD34
_0803FD0E:
	mov r0, ip
	cmp r0, #0
	bne _0803FD34
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803FD28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803FD4C
	.align 2, 0
_0803FD28: .4byte gCurTask
_0803FD2C: .4byte 0x0300000C
_0803FD30: .4byte gCamera
_0803FD34:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r1, r8
	adds r1, #0x34
	adds r0, r6, #0
	movs r2, #7
	bl sub_80C0CA8
_0803FD4C:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803FD5C
sub_803FD5C: @ 0x0803FD5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r1, _0803FDC0 @ =gCurTask
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	adds r1, #0xc
	adds r1, r1, r2
	mov sl, r1
	adds r5, r0, #0
	ldr r0, [r6]
	mov ip, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _0803FDC4 @ =0x03000050
	adds r0, r2, r0
	str r0, [sp, #0x18]
	movs r7, #0
_0803FD8E:
	lsls r2, r4, #0x10
	asrs r1, r2, #0xe
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r0, r1
	ldr r3, [r0]
	mov r8, r2
	cmp r3, #0
	beq _0803FDF0
	ldr r0, [r3, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803FDC8
	ldr r0, [r3, #0x6c]
	cmp r0, sl
	bne _0803FDC8
	mov r1, sb
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov sb, r0
	b _0803FDD2
	.align 2, 0
_0803FDC0: .4byte gCurTask
_0803FDC4: .4byte 0x03000050
_0803FDC8:
	mov r1, r8
	asrs r0, r1, #0xe
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	str r7, [r0]
_0803FDD2:
	ldr r1, _0803FE50 @ =gUnknown_030008A0
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803FDF0
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0803FDF0
	mov r1, r8
	asrs r0, r1, #0xe
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	str r7, [r0]
_0803FDF0:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803FD8E
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r2, ip
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r6, sb
	lsls r0, r6, #0x18
	asrs r1, r0, #0x18
	str r0, [sp, #0x14]
	cmp r1, #0
	bne _0803FE54
	movs r4, #0
_0803FE30:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5]
	mov r1, sl
	strh r1, [r5, #2]
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r5, #4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0803FE30
	movs r0, #0
	b _0803FF02
	.align 2, 0
_0803FE50: .4byte gUnknown_030008A0
_0803FE54:
	movs r0, #4
	subs r0, r0, r1
	movs r4, #0
	ldr r6, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r0, r0, #0x18
	str r0, [sp, #8]
	asrs r0, r0, #0x18
	mov sb, r0
	movs r0, #1
	mov r1, sb
	lsls r0, r1
	str r0, [sp, #0x10]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0803FE7A:
	lsls r1, r4, #0x10
	asrs r0, r1, #0xe
	ldr r6, [sp, #0x18]
	adds r0, r6, r0
	ldr r3, [r0]
	mov r8, r1
	cmp r3, #0
	beq _0803FEF0
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	strh r0, [r5]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #2]
	ldrh r0, [r5]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	lsls r4, r0, #4
	mov r2, sb
	asrs r4, r2
	ldrh r0, [r5, #2]
	ldr r6, [sp, #0xc]
	subs r0, r0, r6
	lsls r3, r0, #4
	asrs r3, r2
	movs r2, #0
	ldr r0, [sp]
	lsls r1, r0, #0x10
	mov r6, sl
	lsls r0, r6, #0x10
	ldr r6, [sp, #0x10]
	cmp r2, r6
	bge _0803FEF0
	asrs r1, r1, #0x10
	mov ip, r1
	asrs r7, r0, #0x10
	ldr r1, [sp, #8]
	asrs r0, r1, #0x18
	movs r6, #1
	lsls r6, r0
_0803FECA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	muls r1, r0, r1
	asrs r1, r1, #4
	add r1, ip
	strh r1, [r5]
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #4
	adds r1, r7, r1
	strh r1, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	adds r5, #4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _0803FECA
_0803FEF0:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803FE7A
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x18
_0803FF02:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Interactable092
CreateEntity_Interactable092: @ 0x0803FF14
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803FF98 @ =sub_803FB08
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803FF9C @ =sub_803FFA4
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r0, r8
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, r8
	strb r0, [r4]
	movs r0, #0
	ldr r4, _0803FFA0 @ =0x03000050
	adds r3, r1, r4
	movs r4, #0
_0803FF6A:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r3, r0
	str r4, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	ble _0803FF6A
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r2, #0
	adds r1, #0x34
	bl sub_803FC24
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FF98: .4byte sub_803FB08
_0803FF9C: .4byte sub_803FFA4
_0803FFA0: .4byte 0x03000050

	thumb_func_start sub_803FFA4
sub_803FFA4: @ 0x0803FFA4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
