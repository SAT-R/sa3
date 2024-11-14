.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_803E32C
sub_803E32C: @ 0x0803E32C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803E384 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sb, r0
	ldr r0, [r0]
	mov sl, r0
	mov r1, sb
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r2, _0803E388 @ =gCamera
	ldr r1, [r2]
	subs r7, r0, r1
	mov r1, sb
	ldr r0, [r1, #0x60]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r6, r0, r1
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_802C1D0
	cmp r0, #0
	bne _0803E3D0
	movs r1, #0
	ldr r7, _0803E38C @ =gPlayers
_0803E370:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803E390
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803E394
	.align 2, 0
_0803E384: .4byte gCurTask
_0803E388: .4byte gCamera
_0803E38C: .4byte gPlayers
_0803E390:
	ldr r0, _0803E3C8 @ =gStageData
	ldrb r1, [r0, #6]
_0803E394:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E370
	mov r1, sb
	ldrb r0, [r1, #0xa]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0803E3CC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803E3F8
	.align 2, 0
_0803E3C8: .4byte gStageData
_0803E3CC: .4byte gCurTask
_0803E3D0:
	ldr r5, _0803E408 @ =0x0300000C
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r5, _0803E40C @ =0x03000034
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803E3F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E408: .4byte 0x0300000C
_0803E40C: .4byte 0x03000034

	thumb_func_start TaskDestructor_SlowChaosLift
TaskDestructor_SlowChaosLift: @ 0x0803E410
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
