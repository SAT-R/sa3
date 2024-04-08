.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Start of Akatento

	thumb_func_start CreateEntity_Akatento
CreateEntity_Akatento: @ 0x080581F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08058270 @ =Task_Akatento
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058274 @ =TaskDestructor_Akatento
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r2, #0
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x14]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x1c]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	strb r2, [r7, #6]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08058278
	movs r0, #0xff
	b _0805827A
	.align 2, 0
_08058270: .4byte Task_Akatento
_08058274: .4byte TaskDestructor_Akatento
_08058278:
	movs r0, #1
_0805827A:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _080582AC @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r7, #0
	bl sub_80582B0
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080582AC: .4byte 0x01000002

	thumb_func_start sub_80582B0
sub_80582B0: @ 0x080582B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x24
	str r0, [r4, #0x24]
	ldr r1, _0805832C @ =gUnknown_080D1E20
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08058330 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805831A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805831A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805832C: .4byte gUnknown_080D1E20
_08058330: .4byte gCamera

	thumb_func_start Task_Akatento
Task_Akatento: @ 0x08058334
	push {r4, r5, lr}
	ldr r0, _08058384 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _08058388 @ =0x03000014
	adds r0, r3, r1
	ldr r2, _0805838C @ =0x0300000C
	adds r1, r3, r2
	ldr r5, _08058390 @ =0x03000008
	adds r2, r3, r5
	subs r5, #2
	adds r3, r3, r5
	bl sub_805CD70
	ldr r0, _08058394 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805836E
	cmp r1, #4
	beq _0805836E
	adds r0, r4, #0
	bl sub_8058464
_0805836E:
	adds r0, r4, #0
	bl sub_8058518
	cmp r0, #1
	bne _08058398
	ldr r0, _08058384 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080583C2
	.align 2, 0
_08058384: .4byte gCurTask
_08058388: .4byte 0x03000014
_0805838C: .4byte 0x0300000C
_08058390: .4byte 0x03000008
_08058394: .4byte gStageData
_08058398:
	adds r0, r4, #0
	bl sub_80584A8
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _080583AC
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _080583C2
_080583AC:
	adds r2, r4, #0
	adds r2, #0x24
	ldr r1, _080583C8 @ =gUnknown_080D1E20
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _080583CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080583D0 @ =sub_80583D4
	str r0, [r1, #8]
_080583C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080583C8: .4byte gUnknown_080D1E20
_080583CC: .4byte gCurTask
_080583D0: .4byte sub_80583D4

	thumb_func_start sub_80583D4
sub_80583D4: @ 0x080583D4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080583FC @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80584A8
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_8058518
	cmp r0, #1
	bne _08058400
	ldr r0, [r7]
	bl TaskDestroy
	b _08058452
	.align 2, 0
_080583FC: .4byte gCurTask
_08058400:
	ldr r0, _08058430 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058452
	cmp r1, #4
	beq _08058452
	cmp r6, #0
	bne _08058452
	ldr r0, _08058434 @ =0x03000024
	adds r4, r5, r0
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805843C
	ldr r0, _08058438 @ =0xFFFFFBFF
	ands r1, r0
	b _0805843E
	.align 2, 0
_08058430: .4byte gStageData
_08058434: .4byte 0x03000024
_08058438: .4byte 0xFFFFFBFF
_0805843C:
	orrs r1, r2
_0805843E:
	str r1, [r4, #8]
	ldr r1, _08058458 @ =gUnknown_080D1E20
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _0805845C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08058460 @ =Task_Akatento
	str r0, [r1, #8]
_08058452:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058458: .4byte gUnknown_080D1E20
_0805845C: .4byte gCurTask
_08058460: .4byte Task_Akatento

	thumb_func_start sub_8058464
sub_8058464: @ 0x08058464
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805848A
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bgt _0805849E
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	ble _0805849E
	b _0805849C
_0805848A:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x1c]
	cmp r0, r1
	blt _0805849E
	ldr r3, _080584A4 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	bge _0805849E
_0805849C:
	str r1, [r2, #0x14]
_0805849E:
	pop {r0}
	bx r0
	.align 2, 0
_080584A4: .4byte 0xFFFFFF00

	thumb_func_start sub_80584A8
sub_80584A8: @ 0x080584A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x24
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080584E8 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xa]
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
_080584E8: .4byte gCamera

	thumb_func_start sub_80584EC
sub_80584EC: @ 0x080584EC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x24
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x14]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8058518
sub_8058518: @ 0x08058518
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80584EC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
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

	thumb_func_start TaskDestructor_Akatento
TaskDestructor_Akatento: @ 0x08058554
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0
