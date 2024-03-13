.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_806098C
sub_806098C: @ 0x0806098C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x10
	bl VramMalloc
	adds r7, r4, #0
	adds r7, #0x20
	str r0, [r4, #0x20]
	ldr r1, _08060A08 @ =gUnknown_080D2024
	ldrh r0, [r1]
	movs r6, #0
	movs r3, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08060A0C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	cmp r5, #2
	bne _080609F6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #8]
_080609F6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060A08: .4byte gUnknown_080D2024
_08060A0C: .4byte gUnknown_03001D10

	thumb_func_start Task_YukigasenMain
Task_YukigasenMain: @ 0x08060A10
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08060A54 @ =gCurTask
	ldr r0, [r7]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x20
	adds r5, r3, r0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08060A58 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8061054
	cmp r0, #1
	bne _08060A5C
	ldr r0, [r7]
	bl TaskDestroy
	b _08060AB0
	.align 2, 0
_08060A54: .4byte gCurTask
_08060A58: .4byte 0x03000018
_08060A5C:
	adds r0, r4, #0
	bl sub_8061010
	adds r2, r0, #0
	ldr r0, _08060AB8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060AB0
	cmp r1, #4
	beq _08060AB0
	cmp r2, #0
	bne _08060AB0
	ldr r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r6, #0xff
	cmp r0, #0
	beq _08060A8A
	movs r6, #1
_08060A8A:
	ldr r1, _08060ABC @ =gUnknown_080D2024
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _08060AC0 @ =0xFFFFE800
	adds r1, r1, r2
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	lsls r4, r6, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	bl sub_80610D0
	ldr r1, [r7]
	ldr r0, _08060AC4 @ =sub_8060AC8
	str r0, [r1, #8]
_08060AB0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060AB8: .4byte gUnknown_030008A0
_08060ABC: .4byte gUnknown_080D2024
_08060AC0: .4byte 0xFFFFE800
_08060AC4: .4byte sub_8060AC8

	thumb_func_start sub_8060AC8
sub_8060AC8: @ 0x08060AC8
	push {r4, r5, r6, lr}
	ldr r6, _08060AFC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08060B00 @ =0x03000018
	adds r0, r5, r1
	subs r1, #0xe
	adds r2, r5, r1
	subs r1, #2
	adds r3, r5, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8061054
	cmp r0, #1
	bne _08060B04
	ldr r0, [r6]
	bl TaskDestroy
	b _08060B48
	.align 2, 0
_08060AFC: .4byte gCurTask
_08060B00: .4byte 0x03000018
_08060B04:
	adds r0, r4, #0
	bl sub_8061010
	adds r2, r0, #0
	ldr r0, _08060B50 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060B48
	cmp r1, #4
	beq _08060B48
	cmp r2, #0
	bne _08060B28
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
_08060B28:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #6]
	cmp r0, r1
	blo _08060B48
	ldr r0, _08060B54 @ =0x03000020
	adds r2, r5, r0
	ldr r1, _08060B58 @ =gUnknown_080D2024
	ldrh r0, [r1]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strb r3, [r4, #7]
	ldr r1, [r6]
	ldr r0, _08060B5C @ =Task_YukigasenMain
	str r0, [r1, #8]
_08060B48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060B50: .4byte gUnknown_030008A0
_08060B54: .4byte 0x03000020
_08060B58: .4byte gUnknown_080D2024
_08060B5C: .4byte Task_YukigasenMain

	thumb_func_start sub_8060B60
sub_8060B60: @ 0x08060B60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _08060BC0 @ =gUnknown_080D2034
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _08060BC4 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060BC0: .4byte gUnknown_080D2034
_08060BC4: .4byte gUnknown_03001D10

	thumb_func_start sub_8060BC8
sub_8060BC8: @ 0x08060BC8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08060C50 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80611A0
	ldr r0, _08060C54 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060C48
	cmp r1, #4
	beq _08060C48
	adds r0, r4, #0
	bl sub_8060D0C
	adds r0, r4, #0
	bl sub_8060C68
	cmp r0, #1
	bne _08060C04
	movs r5, #1
_08060C04:
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r4, #0
	str r4, [sp]
	ldr r2, _08060C58 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _08060C2E
	movs r5, #1
_08060C2E:
	cmp r5, #1
	bne _08060C48
	ldr r0, _08060C5C @ =0x03000018
	adds r1, r6, r0
	ldr r2, _08060C60 @ =gUnknown_080D2034
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r4, [r1, #8]
	ldr r1, [r7]
	ldr r0, _08060C64 @ =sub_8061170
	str r0, [r1, #8]
_08060C48:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060C50: .4byte gCurTask
_08060C54: .4byte gUnknown_030008A0
_08060C58: .4byte sub_805217C
_08060C5C: .4byte 0x03000018
_08060C60: .4byte gUnknown_080D2034
_08060C64: .4byte sub_8061170

	thumb_func_start sub_8060C68
sub_8060C68: @ 0x08060C68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_08060C8C:
	cmp r5, #0
	bne _08060C9C
	ldr r0, _08060C98 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08060CA6
	.align 2, 0
_08060C98: .4byte gUnknown_030008A0
_08060C9C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08060CA6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08060CF0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08060CF4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08060CF4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08060CEC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08060CEC:
	movs r0, #1
	b _08060D00
	.align 2, 0
_08060CF0: .4byte gUnknown_030015C0
_08060CF4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08060C8C
	movs r0, #0
_08060D00:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8060D0C
sub_8060D0C: @ 0x08060D0C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D26
	adds r1, r0, #0
	adds r0, r1, #4
	b _08060D2C
_08060D26:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_08060D2C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r2, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D5C
	ldrh r0, [r3, #0xa]
	movs r6, #0xa
	ldrsh r1, [r3, r6]
	cmp r1, #0
	bgt _08060D58
	cmp r1, #0
	bge _08060D5C
_08060D58:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
_08060D5C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0xa]
	adds r1, r1, r0
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Yukigasen_Right
CreateEntity_Yukigasen_Right: @ 0x08060D80
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060E08 @ =Task_YukigasenMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060E0C @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x3c
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060E10 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060E14 @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #2
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060E08: .4byte Task_YukigasenMain
_08060E0C: .4byte sub_80610BC
_08060E10: .4byte 0x0300004C
_08060E14: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Left
CreateEntity_Yukigasen_Left: @ 0x08060E18
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060EA0 @ =Task_YukigasenMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060EA4 @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x3c
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060EA8 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060EAC @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #3
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060EA0: .4byte Task_YukigasenMain
_08060EA4: .4byte sub_80610BC
_08060EA8: .4byte 0x0300004C
_08060EAC: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Right_HighCooldown
CreateEntity_Yukigasen_Right_HighCooldown: @ 0x08060EB0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060F38 @ =Task_YukigasenMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060F3C @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060F40 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060F44 @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #2
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060F38: .4byte Task_YukigasenMain
_08060F3C: .4byte sub_80610BC
_08060F40: .4byte 0x0300004C
_08060F44: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Left_HighCooldown
CreateEntity_Yukigasen_Left_HighCooldown: @ 0x08060F48
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060FD0 @ =Task_YukigasenMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060FD4 @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060FD8 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060FDC @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #3
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD0: .4byte Task_YukigasenMain
_08060FD4: .4byte sub_80610BC
_08060FD8: .4byte 0x0300004C
_08060FDC: .4byte 0x01000002

	thumb_func_start sub_8060FE0
sub_8060FE0: @ 0x08060FE0
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	ldr r4, [sp, #0x10]
	strb r4, [r0, #4]
	str r2, [r0]
	ldrb r4, [r2]
	strb r4, [r0, #5]
	movs r4, #0
	strh r3, [r0, #0xa]
	strh r5, [r0, #0xc]
	ldrb r3, [r2]
	lsls r3, r3, #0xb
	str r3, [r0, #0x18]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0xb
	str r2, [r0, #0x1c]
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
	strb r4, [r0, #8]
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8061010
sub_8061010: @ 0x08061010
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08061050 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061050: .4byte gUnknown_03001D10

	thumb_func_start sub_8061054
sub_8061054: @ 0x08061054
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8061090
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8061090
sub_8061090: @ 0x08061090
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80610BC
sub_80610BC: @ 0x080610BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80610D0
sub_80610D0: @ 0x080610D0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806115C @ =sub_8060BC8
	ldr r2, _08061160 @ =0x00004040
	ldr r1, _08061164 @ =sub_80611E4
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r3, sb
	str r3, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r6, [r4, #4]
	mov r3, r8
	strh r3, [r4, #6]
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r0, [r4, #2]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08061168 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _0806116C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_8060B60
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806115C: .4byte sub_8060BC8
_08061160: .4byte 0x00004040
_08061164: .4byte sub_80611E4
_08061168: .4byte 0x03000044
_0806116C: .4byte 0x01000002

	thumb_func_start sub_8061170
sub_8061170: @ 0x08061170
	push {r4, r5, r6, lr}
	ldr r6, _0806119C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80611A0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060C68
	cmp r5, #0
	bne _08061196
	ldr r0, [r6]
	bl TaskDestroy
_08061196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806119C: .4byte gCurTask

	thumb_func_start sub_80611A0
sub_80611A0: @ 0x080611A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080611E0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080611E0: .4byte gUnknown_03001D10

	thumb_func_start sub_80611E4
sub_80611E4: @ 0x080611E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0
