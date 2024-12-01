.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_DebrisInit
Task_DebrisInit: @ 0x080350EC
	push {r4, lr}
	ldr r2, _08035114 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08035118
	ldr r0, [r2]
	bl TaskDestroy
	b _0803514E
	.align 2, 0
_08035114: .4byte gCurTask
_08035118:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _08035154 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0803514E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035154: .4byte gCamera

	thumb_func_start TaskDestructor_BreakableWall
TaskDestructor_BreakableWall: @ 0x08035158
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803516C
sub_803516C: @ 0x0803516C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8034D0C
	movs r2, #0
	movs r1, #0
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

	thumb_func_start sub_80351A8
sub_80351A8: @ 0x080351A8
	push {r4, r5, r6, lr}
	sub sp, #0x60
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r1, _080351CC @ =gUnknown_080CF5D8
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	ldr r1, _080351D0 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _080351D4
	movs r2, #0
	b _080351DE
	.align 2, 0
_080351CC: .4byte gUnknown_080CF5D8
_080351D0: .4byte gStageData
_080351D4:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _080351DE
	adds r2, r0, #0
_080351DE:
	lsls r1, r5, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	lsls r0, r2, #4
	adds r1, r1, r0
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	add sp, #0x60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
