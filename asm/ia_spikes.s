.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8030D30
sub_8030D30: @ 0x08030D30
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r2, _08030D84 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08030DA8
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bgt _08030D8C
	ldrb r0, [r2, #9]
	ldr r2, _08030D88 @ =0x00000365
	adds r1, r2, #0
	cmp r0, #3
	bne _08030D7E
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r1, r0, #0
_08030D7E:
	strh r1, [r4, #0xc]
	strb r3, [r4, #0x1a]
	b _08030DB4
	.align 2, 0
_08030D84: .4byte gStageData
_08030D88: .4byte 0x00000365
_08030D8C:
	ldrb r0, [r2, #9]
	ldr r2, _08030DA4 @ =0x00000365
	adds r1, r2, #0
	cmp r0, #3
	bne _08030D9C
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r1, r0, #0
_08030D9C:
	strh r1, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	b _08030DB4
	.align 2, 0
_08030DA4: .4byte 0x00000365
_08030DA8:
	ldr r0, _08030DE8 @ =0x00000365
	strh r0, [r4, #0xc]
	strb r3, [r4, #0x1a]
	movs r6, #0x80
	lsls r6, r6, #2
	lsls r5, r5, #0x10
_08030DB4:
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r1, r6
	str r1, [r4, #8]
	asrs r2, r5, #0x10
	movs r0, #3
	ands r0, r2
	cmp r0, #1
	bne _08030DCE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r4, #8]
_08030DCE:
	cmp r2, #2
	bne _08030DDC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08030DDC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030DE8: .4byte 0x00000365

	thumb_func_start sub_8030DEC
sub_8030DEC: @ 0x08030DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08030E50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08030E54 @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r3, r8
	ldrb r2, [r3, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08030E9C
	movs r1, #0
	ldr r6, _08030E58 @ =gPlayers
_08030E3A:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08030E5C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08030E60
	.align 2, 0
_08030E50: .4byte gCurTask
_08030E54: .4byte 0x0300000C
_08030E58: .4byte gPlayers
_08030E5C:
	ldr r0, _08030E94 @ =gStageData
	ldrb r1, [r0, #6]
_08030E60:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08030E3A
	mov r3, r8
	ldrb r0, [r3, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08030E98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08030EB6
	.align 2, 0
_08030E94: .4byte gStageData
_08030E98: .4byte gCurTask
_08030E9C:
	ldr r0, _08030EC4 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08030EB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030EC4: .4byte gCamera

	thumb_func_start sub_8030EC8
sub_8030EC8: @ 0x08030EC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _08030F24 @ =gStageData
	ldr r6, [r4, #0x1c]
	movs r0, #0x7f
	ands r6, r0
	adds r7, r6, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	ldrb r0, [r4, #9]
	ldr r3, _08030F28 @ =0x00000365
	adds r1, r3, #0
	cmp r0, #3
	bne _08030F14
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r1, r0, #0
_08030F14:
	strh r1, [r5, #0xc]
	cmp r6, #0x3d
	bls _08030F40
	cmp r6, #0x3f
	bhi _08030F2C
	movs r0, #2
	b _08030F42
	.align 2, 0
_08030F24: .4byte gStageData
_08030F28: .4byte 0x00000365
_08030F2C:
	cmp r6, #0x7b
	bhi _08030F34
	strb r2, [r5, #0x1a]
	b _08030F44
_08030F34:
	cmp r6, #0x7d
	bhi _08030F3C
	movs r0, #2
	b _08030F42
_08030F3C:
	cmp r7, #0x7f
	bhi _08030F44
_08030F40:
	movs r0, #1
_08030F42:
	strb r0, [r5, #0x1a]
_08030F44:
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r5, #8]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08030F60
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r2
	str r0, [r5, #8]
_08030F60:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8030F70
sub_8030F70: @ 0x08030F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08030FD0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r4, _08030FD4 @ =0x0300000C
	add r4, r8
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08030FD8
	ldrb r0, [r5, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08031052
	.align 2, 0
_08030FD0: .4byte gCurTask
_08030FD4: .4byte 0x0300000C
_08030FD8:
	ldr r1, _0803100C @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	ldr r0, _08031010 @ =0x03000034
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #3
	bls _08031046
	ldr r0, _08031014 @ =gStageData
	ldr r1, [r0, #0x1c]
	movs r0, #0x7f
	ands r1, r0
	cmp r1, #0x3b
	bhi _08031018
	movs r0, #1
	strb r0, [r4, #0x1a]
	subs r0, #2
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08031052
	.align 2, 0
_0803100C: .4byte gCamera
_08031010: .4byte 0x03000034
_08031014: .4byte gStageData
_08031018:
	cmp r1, #0x3c
	beq _08031020
	cmp r1, #0x7e
	bne _08031028
_08031020:
	movs r0, #1
	strb r0, [r4, #0x1a]
	subs r0, #2
	b _08031044
_08031028:
	cmp r1, #0x3e
	beq _08031030
	cmp r1, #0x7c
	bne _08031038
_08031030:
	movs r0, #2
	strb r0, [r4, #0x1a]
	subs r0, #3
	b _08031044
_08031038:
	cmp r1, #0x40
	bne _08031046
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
_08031044:
	str r0, [r4, #0x20]
_08031046:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08031052:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Up
CreateEntity_Spikes_Up: @ 0x08031060
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Down
CreateEntity_Spikes_Down: @ 0x0803108C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Left
CreateEntity_Spikes_Left: @ 0x080310B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_Right
CreateEntity_Spikes_Right: @ 0x080310E4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_HidingUp
CreateEntity_Spikes_HidingUp: @ 0x08031110
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spikes_HidingDown
CreateEntity_Spikes_HidingDown: @ 0x0803113C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateSpikes
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Spikes
TaskDestructor_Spikes: @ 0x08031168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
