.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_8038988
sub_8038988: @ 0x08038988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08038A18 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0     @ r7 = platform
	adds r0, #0xc
	adds r6, r5, r0     @ r6 = s
	ldr r1, [r7]
	mov r8, r1          @ r8 = me
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1     @ r0 = spawnX
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2     @ r1 = spawnY
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	mov ip, r2
	ldr r3, _08038A1C @ =gCamera
	mov sb, r3          @ sb = gCamera
	ldr r2, [r3]
	mov r3, ip
	subs r3, r3, r2
	movs r2, #0
	mov sl, r2
	strh r3, [r6, #0x10]    @ s->x = I(platform->qWorldX) - gCamera.x
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	mov r3, sb          @ r3 = sb = gCamera
	ldr r3, [r3, #4]
	subs r2, r2, r3
	strh r2, [r6, #0x12]    @ s->y = I(platform->qWorldY) - gCamera.y
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	str r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #0xc]
	mov r3, ip
	bl sub_802C140
	cmp r0, #0
	bne _08038A68
	movs r1, #0
	ldr r2, _08038A20 @ =gPlayers
_08038A04:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08038A24
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038A28
	.align 2, 0
_08038A18: .4byte gCurTask
_08038A1C: .4byte gCamera
_08038A20: .4byte gPlayers
_08038A24:
	ldr r0, _08038A60 @ =gStageData
	ldrb r1, [r0, #6]
_08038A28:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp, #8]
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #8]
	cmp r0, #1
	ble _08038A04
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08038A64 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08038BBE
	.align 2, 0
_08038A60: .4byte gStageData
_08038A64: .4byte gCurTask
_08038A68:
	ldr r3, _08038B04 @ =gStageData
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldr r2, _08038B08 @ =0x03000042
	adds r1, r5, r2
	ldrb r2, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038B3E
	ldr r4, _08038B0C @ =0x03000043
	adds r4, r4, r5
	mov ip, r4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08038B14
	strb r1, [r6, #0x1a]
	strb r1, [r4]
	ldr r1, [r3, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
	mov r0, r8
	movs r3, #4
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0xb
	ldr r1, [sp, #4]
	adds r3, r1, r3
	ldrb r4, [r0, #6]
	lsls r4, r4, #0xa
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0xb
	ldr r2, [sp]
	adds r1, r2, r1
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r3, r3, r4
	mov r8, r3
	ldr r5, _08038B10 @ =gSineTable
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r4, r8
	adds r3, r4, r0
	str r3, [r7, #0x38]
	asrs r1, r1, #8
	mov r2, sb          @ r2 = sb = gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	mov r7, ip
	b _08038B9C
	.align 2, 0
_08038B04: .4byte gStageData
_08038B08: .4byte 0x03000042
_08038B0C: .4byte 0x03000043
_08038B10: .4byte gSineTable
_08038B14:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x2e
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x77
	bhi _08038B30
	ldrb r0, [r6, #0x1a]
	mov r7, ip
	cmp r0, #2
	beq _08038B9C
	movs r0, #2
	strb r0, [r6, #0x1a]
	b _08038B9C
_08038B30:
	ldrb r0, [r6, #0x1a]
	mov r7, ip
	cmp r0, #2
	bne _08038B9C
	mov r3, sl
	strb r3, [r6, #0x1a]
	b _08038B9C
_08038B3E:
	ldr r1, _08038B60 @ =0x03000043
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #1
	bne _08038B9C
	mov r2, sl
	strb r2, [r7]
	movs r1, #0
	ldr r2, _08038B64 @ =gPlayers
_08038B52:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08038B6C
	ldr r0, _08038B68 @ =gStageData
	ldrb r1, [r0, #6]
	b _08038B76
	.align 2, 0
_08038B60: .4byte 0x03000043
_08038B64: .4byte gPlayers
_08038B68: .4byte gStageData
_08038B6C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038B76:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp, #8]
	bl ResolvePlayerSpriteCollision
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #8]
	cmp r0, #1
	ble _08038B52
_08038B9C:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08038BBE
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08038BB8
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	bne _08038BB8
	strb r1, [r6, #0x1a]
_08038BB8:
	adds r0, r6, #0
	bl DisplaySprite
_08038BBE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.endif

	thumb_func_start CreateEntity_Interactable067
CreateEntity_Interactable067: @ 0x08038BD0
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
	bl CreateButtonPlatform
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable068
CreateEntity_Interactable068: @ 0x08038BFC
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
	bl CreateButtonPlatform
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_ButtonPlatform
TaskDestructor_ButtonPlatform: @ 0x08038C28
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
