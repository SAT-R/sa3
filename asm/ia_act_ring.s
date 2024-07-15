.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_ActRingMain
Task_ActRingMain: @ 0x08040984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r6, _08040A6C @ =gStageData
	ldrb r2, [r6, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _08040A70 @ =gPlayers
	mov r8, r1
	adds r4, r0, r1
	ldr r0, _08040A74 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	ldr r1, [r4]
	ldr r0, _08040A78 @ =Player_80052C8
	cmp r1, r0
	beq _08040A98
	ldr r0, _08040A7C @ =Player_800522C
	cmp r1, r0
	beq _08040A98
	ldr r0, [r4, #4]
	ldr r1, _08040A80 @ =0x01000300
	ands r0, r1
	cmp r0, #0
	beq _080409C6
	b _08040B24
_080409C6:
	adds r3, r2, #0
	cmp r3, #0
	beq _080409CE
	b _08040B24
_080409CE:
	ldr r2, _08040A84 @ =0x0300000C
	adds r0, r5, r2
	ldr r7, _08040A88 @ =0x0300005C
	adds r1, r5, r7
	adds r7, #2
	adds r2, r5, r7
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r2, [r2, r7]
	str r4, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _080409F2
	b _08040B24
_080409F2:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _08040A8C @ =0x00000209
	adds r0, r4, #0
	bl sub_8004E98
	ldrb r1, [r6, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r2, _08040A90 @ =0x03000061
	adds r1, r5, r2
	lsls r0, r0, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #3
	movs r1, #0
	strh r0, [r6, #0x12]
	strb r1, [r6, #0xc]
	ldr r5, _08040A94 @ =Player_800AD24
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r7, r8
	adds r2, r0, r7
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08040A56
	adds r0, r2, #0
	adds r1, r5, #0
	bl SetPlayerCallback
_08040A56:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bls _08040A66
	ldrb r0, [r6, #0x12]
	ldrb r2, [r6, #0xc]
	movs r1, #0
	bl sub_80275B8
_08040A66:
	movs r0, #8
	strb r0, [r6, #4]
	b _08040B24
	.align 2, 0
_08040A6C: .4byte gStageData
_08040A70: .4byte gPlayers
_08040A74: .4byte gCurTask
_08040A78: .4byte Player_80052C8
_08040A7C: .4byte Player_800522C
_08040A80: .4byte 0x01000300
_08040A84: .4byte 0x0300000C
_08040A88: .4byte 0x0300005C
_08040A8C: .4byte 0x00000209
_08040A90: .4byte 0x03000061
_08040A94: .4byte Player_800AD24
_08040A98:
	movs r1, #0
	ldr r6, _08040AAC @ =gStageData
	ldr r5, _08040AB0 @ =gPlayers
_08040A9E:
	lsls r0, r1, #0x10
	adds r2, r0, #0
	cmp r2, #0
	bne _08040AB4
	ldrb r1, [r6, #6]
	b _08040ABE
	.align 2, 0
_08040AAC: .4byte gStageData
_08040AB0: .4byte gPlayers
_08040AB4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08040ABE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08040AE0
	cmp r1, #8
	beq _08040AE0
	cmp r1, #0x10
	bne _08040B16
_08040AE0:
	ldrb r1, [r6, #0xb]
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r0, [r0]
	adds r0, #1
	cmp r1, r0
	bne _08040B16
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040B06
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _08040B14
_08040B06:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08040B14:
	str r0, [r4, #4]
_08040B16:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08040A9E
_08040B24:
	bl sub_8040BE4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif

	thumb_func_start sub_8040B34
sub_8040B34: @ 0x08040B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xc
	adds r0, #0x61
	ldrb r4, [r0]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r7, #0
	ldr r0, _08040BE0 @ =0x000003D7
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r7, [r5, #0xe]
	strh r7, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040BD0
	adds r5, #0x28
	movs r0, #6
	bl VramMalloc
	str r0, [r6, #0x34]
	ldr r0, _08040BE0 @ =0x000003D7
	strh r0, [r5, #0xc]
	movs r0, #3
	strb r0, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r7, [r5, #0xe]
	strh r7, [r5, #0x16]
	ldrb r0, [r5, #0x1b]
	orrs r0, r4
	strb r0, [r5, #0x1b]
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	mov r0, r8
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08040BD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040BE0: .4byte 0x000003D7

	thumb_func_start sub_8040BE4
sub_8040BE4: @ 0x08040BE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08040C38 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08040C3C @ =0x0300000C
	adds r4, r5, r1
	ldr r2, [r0]
	mov sb, r2
	adds r1, #0x50
	adds r0, r5, r1
	ldr r2, _08040C40 @ =0x0300005E
	adds r1, r5, r2
	movs r2, #0
	ldrsh r6, [r0, r2]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08040C44
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _08040C8A
	.align 2, 0
_08040C38: .4byte gCurTask
_08040C3C: .4byte 0x0300000C
_08040C40: .4byte 0x0300005E
_08040C44:
	ldr r2, _08040C98 @ =gCamera
	mov r8, r2
	ldr r0, [r2]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _08040C9C @ =0x03000063
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C88
	ldr r2, _08040CA0 @ =0x03000034
	adds r4, r5, r2
	mov r1, r8
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08040C88:
	movs r0, #1
_08040C8A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040C98: .4byte gCamera
_08040C9C: .4byte 0x03000063
_08040CA0: .4byte 0x03000034

	thumb_func_start TaskDestructor_ActRing
TaskDestructor_ActRing: @ 0x08040CA4
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0xc]
	bl VramFree
	ldr r0, _08040CCC @ =0x03000063
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08040CC4
	ldr r0, [r5, #0x34]
	bl VramFree
_08040CC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040CCC: .4byte 0x03000063

	thumb_func_start sub_8040CD0
sub_8040CD0: @ 0x08040CD0
	push {lr}
	bl sub_8040BE4
	pop {r0}
	bx r0
	.align 2, 0
