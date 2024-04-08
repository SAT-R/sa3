.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable139
CreateEntity_Interactable139: @ 0x0804D8A0
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
	ldr r0, _0804D958 @ =sub_804D970
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804D95C @ =sub_804DBE0
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r1, #0
	mov sb, r1
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r7, r8
	str r7, [r2]
	ldrb r1, [r7]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r2, #0x34]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r2, #0x36]
	movs r4, #0x34
	ldrsh r1, [r2, r4]
	lsls r1, r1, #8
	str r1, [r2, #0x38]
	movs r6, #0x36
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	str r1, [r2, #0x3c]
	ldr r7, _0804D960 @ =0x03000040
	adds r1, r0, r7
	strh r3, [r1]
	ldr r3, _0804D964 @ =0x03000042
	adds r1, r0, r3
	mov r4, sb
	strb r4, [r1]
	ldr r6, _0804D968 @ =0x03000043
	adds r3, r0, r6
	movs r1, #1
	strb r1, [r3]
	subs r7, #0x34
	adds r0, r0, r7
	ldr r4, _0804D96C @ =gCamera
	ldr r3, [r4]
	ldrh r1, [r2, #0x34]
	subs r1, r1, r3
	strh r1, [r0, #0x10]
	ldr r3, [r4, #4]
	ldrh r1, [r2, #0x36]
	subs r1, r1, r3
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, r8
	strb r1, [r3]
	bl sub_804DBF4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D958: .4byte sub_804D970
_0804D95C: .4byte sub_804DBE0
_0804D960: .4byte 0x03000040
_0804D964: .4byte 0x03000042
_0804D968: .4byte 0x03000043
_0804D96C: .4byte gCamera

	thumb_func_start sub_804D970
sub_804D970: @ 0x0804D970
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0804DA34 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _0804DA38 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #4
	beq _0804DA22
	ldr r0, _0804DA3C @ =0x03000042
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804DA22
	movs r3, #7
	ands r3, r1
	adds r0, r1, #1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0xf
	ands r0, r1
	ldr r2, _0804DA40 @ =0x03000043
	adds r1, r4, r2
	cmp r0, #0
	bne _0804D9C8
	ldrb r0, [r1]
	adds r0, #6
	strb r0, [r1]
_0804D9C8:
	adds r2, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x20
	bls _0804D9D4
	movs r0, #0x20
	strb r0, [r2]
_0804D9D4:
	ldr r2, _0804DA44 @ =0x03000040
	adds r0, r4, r2
	ldrb r5, [r1]
	lsrs r5, r5, #2
	ldrh r2, [r0]
	adds r5, r5, r2
	strh r5, [r0]
	ldr r2, _0804DA48 @ =gUnknown_080D03E8
	lsls r3, r3, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #4
	adds r4, r0, #0
	muls r4, r1, r4
	adds r2, #1
	adds r3, r3, r2
	movs r0, #0
	ldrsb r0, [r3, r0]
	muls r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r5
	lsls r1, r1, #0x10
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	str r0, [r7, #0x38]
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
_0804DA22:
	movs r1, #0
_0804DA24:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804DA4C
	ldr r0, _0804DA38 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804DA56
	.align 2, 0
_0804DA34: .4byte gCurTask
_0804DA38: .4byte gStageData
_0804DA3C: .4byte 0x03000042
_0804DA40: .4byte 0x03000043
_0804DA44: .4byte 0x03000040
_0804DA48: .4byte gUnknown_080D03E8
_0804DA4C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804DA56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804DAA4 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804DAE8
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804DAB0
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _0804DAB0
	movs r0, #3
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	cmp r0, #0
	ble _0804DAA8
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	b _0804DAB0
	.align 2, 0
_0804DAA4: .4byte gPlayers
_0804DAA8:
	lsls r1, r0, #8
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_0804DAB0:
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	movs r4, #0
	str r4, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0804DAE8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r4, [r6, #0x1a]
	adds r2, r7, #0
	adds r2, #0x42
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_0804DAE8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DA24
	bl sub_804DB08
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804DB08
sub_804DB08: @ 0x0804DB08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804DB58 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r0, [r0]
	mov sb, r0
	mov r3, r8
	ldr r1, [r3, #0x38]
	lsls r1, r1, #8
	ldr r0, [r3, #0x3c]
	lsls r0, r0, #8
	ldr r3, _0804DB5C @ =0x0300000C
	adds r6, r2, r3
	asrs r5, r1, #0x10
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804DBA4
	movs r1, #0
	ldr r7, _0804DB60 @ =gPlayers
_0804DB44:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804DB64
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804DB68
	.align 2, 0
_0804DB58: .4byte gCurTask
_0804DB5C: .4byte 0x0300000C
_0804DB60: .4byte gPlayers
_0804DB64:
	ldr r0, _0804DB9C @ =gStageData
	ldrb r1, [r0, #6]
_0804DB68:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DB44
	mov r2, r8
	ldrb r0, [r2, #0xa]
	mov r3, sb
	strb r0, [r3]
	ldr r0, _0804DBA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804DBCE
	.align 2, 0
_0804DB9C: .4byte gStageData
_0804DBA0: .4byte gCurTask
_0804DBA4:
	ldr r1, _0804DBDC @ =gCamera
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r6, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	bl sub_802C1F8
	cmp r0, #1
	bne _0804DBCE
	adds r0, r6, #0
	bl DisplaySprite
_0804DBCE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DBDC: .4byte gCamera

	thumb_func_start sub_804DBE0
sub_804DBE0: @ 0x0804DBE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804DBF4
sub_804DBF4: @ 0x0804DBF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804DC34 @ =0x000003A5
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DC34: .4byte 0x000003A5

	thumb_func_start sub_804DC38
sub_804DC38: @ 0x0804DC38
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r3, #4]
	ldr r1, _0804DC68 @ =0x00FFFF00
	ands r0, r1
	cmp r0, #0
	bne _0804DC4E
	b _0804DD60
_0804DC4E:
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #5]
	cmp r0, r1
	bhs _0804DC6C
	ldrb r0, [r3, #5]
	lsls r2, r0, #2
	adds r1, r6, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r6, #0
	b _0804DC7C
	.align 2, 0
_0804DC68: .4byte 0x00FFFF00
_0804DC6C:
	ldrb r0, [r3, #6]
	lsls r2, r0, #2
	adds r1, r5, #0
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r6, #1
_0804DC7C:
	adds r0, r0, r2
	subs r0, r1, r0
	lsls r0, r0, #0xe
	adds r1, r2, #0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0804DCE8
	movs r1, #0
	ldr r3, _0804DCC0 @ =gUnknown_082B48B4
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r2, r0
	ble _0804DCB2
_0804DC9C:
	adds r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bhi _0804DCB2
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	bgt _0804DC9C
_0804DCB2:
	cmp r4, #1
	beq _0804DCD2
	cmp r4, #1
	bgt _0804DCC4
	cmp r4, #0
	beq _0804DCCA
	b _0804DD46
	.align 2, 0
_0804DCC0: .4byte gUnknown_082B48B4
_0804DCC4:
	cmp r4, #2
	beq _0804DCDE
	b _0804DD46
_0804DCCA:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	b _0804DD58
_0804DCD2:
	cmp r6, #0
	bne _0804DD46
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	b _0804DD58
_0804DCDE:
	cmp r6, #0
	beq _0804DD46
	movs r7, #0x80
	lsls r7, r7, #2
	b _0804DD56
_0804DCE8:
	ldr r3, _0804DD24 @ =gUnknown_082B48B4
	movs r1, #0x80
	lsls r1, r1, #2
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r3, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	bge _0804DD14
	ldr r5, _0804DD28 @ =0x000002FF
_0804DCFE:
	adds r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	bhi _0804DD14
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	blt _0804DCFE
_0804DD14:
	cmp r4, #1
	beq _0804DD36
	cmp r4, #1
	bgt _0804DD2C
	cmp r4, #0
	beq _0804DD46
	b _0804DD60
	.align 2, 0
_0804DD24: .4byte gUnknown_082B48B4
_0804DD28: .4byte 0x000002FF
_0804DD2C:
	cmp r4, #2
	beq _0804DD42
	cmp r4, #3
	beq _0804DD52
	b _0804DD60
_0804DD36:
	cmp r6, #0
	beq _0804DD46
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r2, #0
	b _0804DD58
_0804DD42:
	cmp r6, #0
	beq _0804DD4A
_0804DD46:
	adds r0, r1, #0
	b _0804DD62
_0804DD4A:
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r0, r5, #0
	b _0804DD58
_0804DD52:
	movs r7, #0xc0
	lsls r7, r7, #3
_0804DD56:
	adds r0, r7, #0
_0804DD58:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0804DD62
_0804DD60:
	movs r0, #0
_0804DD62:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_804DD68
sub_804DD68: @ 0x0804DD68
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	ldrh r2, [r3, #0x28]
	ldr r6, [r3, #0x1c]
	ldr r7, [r3, #0x20]
	ldr r4, [r3, #0x18]
	ldr r5, [r3, #0x14]
	cmp r1, #0
	beq _0804DD98
	ldr r0, _0804DD90 @ =gStageData
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r1, _0804DD94 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	b _0804DDA6
	.align 2, 0
_0804DD90: .4byte gStageData
_0804DD94: .4byte 0x000003FF
_0804DD98:
	ldr r0, _0804DDCC @ =gStageData
	ldr r0, [r0, #0x1c]
	lsrs r1, r2, #2
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r2, r0, #2
_0804DDA6:
	ldr r1, _0804DDD0 @ =gUnknown_082B48B4
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r0, r6, r0
	str r0, [r3, #0xc]
	adds r0, r5, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r0, r7, r0
	str r0, [r3, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DDCC: .4byte gStageData
_0804DDD0: .4byte gUnknown_082B48B4

	thumb_func_start sub_804DDD4
sub_804DDD4: @ 0x0804DDD4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r4, [r0, #0xc]
	asrs r4, r4, #8
	ldr r2, _0804DE28 @ =gCamera
	ldr r1, [r2]
	subs r4, r4, r1
	strh r4, [r5, #0x10]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xd
	adds r4, r4, r0
	ldr r0, _0804DE2C @ =0x012D0000
	cmp r4, r0
	bhi _0804DE20
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0804DE20
	cmp r1, #0xbf
	bgt _0804DE20
	adds r0, r5, #0
	bl DisplaySprite
_0804DE20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE28: .4byte gCamera
_0804DE2C: .4byte 0x012D0000
