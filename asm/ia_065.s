.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable065
CreateEntity_Interactable065: @ 0x08037A68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
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
	ldr r0, _08037B00 @ =sub_8037DF8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037B04 @ =sub_8037DE4
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r2, _08037B08 @ =0x0300000C
	adds r1, r3, r2
	movs r7, #0
	mov sb, r7
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r2, [r2]
	strb r2, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r6, r8
	ldrb r2, [r6, #7]
	movs r0, #3
	ands r0, r2
	ldr r7, _08037B0C @ =0x03000034
	adds r2, r3, r7
	strb r0, [r2]
	ldr r0, _08037B10 @ =0x03000035
	adds r3, r3, r0
	mov r6, sb
	strb r6, [r3]
	mov r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0x10]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r7]
	ldrb r0, [r2]
	bl sub_8037CA4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B00: .4byte sub_8037DF8
_08037B04: .4byte sub_8037DE4
_08037B08: .4byte 0x0300000C
_08037B0C: .4byte 0x03000034
_08037B10: .4byte 0x03000035

	thumb_func_start sub_8037B14
sub_8037B14: @ 0x08037B14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08037B78 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, _08037B7C @ =0x0300000C
	adds r0, r0, r2
	mov r8, r0
	mov r1, sb
	ldr r3, [r1]
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r3, sb
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r5, _08037B80 @ =0x03000035
	adds r2, r2, r5
	movs r0, #1
	strb r0, [r2]
	movs r0, #0
	mov sl, r0
_08037B66:
	mov r1, sl
	cmp r1, #0
	beq _08037B84
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037B88
	.align 2, 0
_08037B78: .4byte gCurTask
_08037B7C: .4byte 0x0300000C
_08037B80: .4byte 0x03000035
_08037B84:
	ldr r0, _08037BDC @ =gStageData
	ldrb r1, [r0, #6]
_08037B88:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08037BE0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _08037C84
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08037C84
	mov r0, sb
	adds r0, #0x35
	strb r5, [r0]
	subs r0, #1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08037C16
	cmp r0, #1
	bgt _08037BE4
	cmp r0, #0
	beq _08037BEE
	b _08037C84
	.align 2, 0
_08037BDC: .4byte gStageData
_08037BE0: .4byte gPlayers
_08037BE4:
	cmp r0, #2
	beq _08037C38
	cmp r0, #3
	beq _08037C60
	b _08037C84
_08037BEE:
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _08037BFE
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bgt _08037C0A
_08037BFE:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #3
	b _08037C26
_08037C0A:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _08037C84
	movs r0, #1
	b _08037C70
_08037C16:
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	blt _08037C2C
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #7
_08037C26:
	mov r1, r8
	strb r0, [r1, #0x1a]
	b _08037C84
_08037C2C:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _08037C84
	movs r0, #5
	b _08037C70
_08037C38:
	movs r5, #0x1c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _08037C48
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08037C54
_08037C48:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #3
	b _08037C70
_08037C54:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	ble _08037C84
	movs r0, #1
	b _08037C80
_08037C60:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08037C76
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #7
_08037C70:
	mov r3, r8
	strb r0, [r3, #0x1a]
	b _08037C84
_08037C76:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	ble _08037C84
	movs r0, #5
_08037C80:
	mov r5, r8
	strb r0, [r5, #0x1a]
_08037C84:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _08037C94
	b _08037B66
_08037C94:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8037CA4
sub_8037CA4: @ 0x08037CA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	ldr r0, _08037CFC @ =0x00000373
	strh r0, [r4, #0xc]
	movs r1, #1
	ands r1, r5
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #4
	ands r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, _08037D00 @ =gUnknown_080CF680
	lsls r5, r5, #2
	adds r5, r5, r0
	ldr r0, [r5]
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037CFC: .4byte 0x00000373
_08037D00: .4byte gUnknown_080CF680

	thumb_func_start sub_8037D04
sub_8037D04: @ 0x08037D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08037D64 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r4, r1, r0
	ldr r5, _08037D68 @ =0x0300000C
	add r5, r8
	ldr r0, [r4]
	mov sb, r0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08037D6C
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08037DD4
	.align 2, 0
_08037D64: .4byte gCurTask
_08037D68: .4byte 0x0300000C
_08037D6C:
	ldr r1, _08037DA8 @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl DisplaySprite
	cmp r4, #0
	bne _08037DD4
	ldr r0, _08037DAC @ =0x03000035
	add r0, r8
	ldrb r0, [r0]
	ldrb r1, [r5, #0x1a]
	cmp r0, #0
	beq _08037DB8
	adds r0, r1, #0
	cmp r0, #1
	bne _08037DB0
	movs r0, #2
	b _08037DD2
	.align 2, 0
_08037DA8: .4byte gCamera
_08037DAC: .4byte 0x03000035
_08037DB0:
	cmp r0, #5
	bne _08037DB8
	movs r0, #6
	b _08037DD2
_08037DB8:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037DC6
	movs r0, #0
	b _08037DD2
_08037DC6:
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037DD4
	movs r0, #4
_08037DD2:
	strb r0, [r5, #0x1a]
_08037DD4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8037DE4
sub_8037DE4: @ 0x08037DE4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8037DF8
sub_8037DF8: @ 0x08037DF8
	push {lr}
	bl sub_8037B14
	bl sub_8037D04
	pop {r0}
	bx r0
	.align 2, 0
