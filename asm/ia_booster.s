.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Booster
CreateEntity_Booster: @ 0x0803117C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r7, r8
	lsls r7, r7, #0x18
	adds r0, r7, #0
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08031234 @ =sub_803124C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08031238 @ =TaskDestructor_8031628
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0803123C @ =0x0300000C
	adds r3, r2, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #0xa]
	mov r7, r8
	strb r7, [r0, #0xb]
	ldr r1, _08031240 @ =0x03000034
	adds r0, r2, r1
	mov r7, sb
	strb r7, [r0]
	ldrb r1, [r6, #7]
	movs r0, #1
	mov r8, r0
	movs r0, #1
	ands r0, r1
	ldr r7, _08031244 @ =0x03000035
	adds r1, r2, r7
	strb r0, [r1]
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	mov r7, r8
	ands r0, r7
	ldr r7, _08031248 @ =0x03000036
	adds r2, r2, r7
	strb r0, [r2]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r3, #0x10]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r3, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r6]
	ldrb r1, [r1]
	ldrb r2, [r2]
	mov r0, sb
	bl sub_8031428
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031234: .4byte sub_803124C
_08031238: .4byte TaskDestructor_8031628
_0803123C: .4byte 0x0300000C
_08031240: .4byte 0x03000034
_08031244: .4byte 0x03000035
_08031248: .4byte 0x03000036

	thumb_func_start sub_803124C
sub_803124C: @ 0x0803124C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080312BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r2, [r7]
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #0
	ldr r2, _080312C0 @ =gStageData
	mov r8, r2
_08031292:
	mov r2, r8
	ldrb r0, [r2, #3]
	lsls r6, r1, #0x10
	cmp r0, #7
	bne _080312A2
	cmp r6, #0
	beq _080312A2
	b _08031402
_080312A2:
	cmp r6, #0
	bne _080312C8
	mov r1, r8
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _080312C4 @ =gPlayers
	adds r5, r1, r0
	b _080312E0
	.align 2, 0
_080312BC: .4byte gCurTask
_080312C0: .4byte gStageData
_080312C4: .4byte gPlayers
_080312C8:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08031368 @ =gPlayers
	adds r5, r0, r1
_080312E0:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080312F8
	cmp r1, #8
	beq _080312F8
	cmp r1, #0x10
	beq _080312F8
	b _08031402
_080312F8:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08031304
	b _08031402
_08031304:
	ldr r4, [r5, #4]
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	bne _08031402
	mov r2, sl
	lsls r1, r2, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	str r5, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #8]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08031402
	adds r0, r5, #0
	movs r1, #0x9b
	bl sub_8004E98
	adds r0, r5, #0
	adds r0, #0x99
	strb r4, [r0]
	adds r0, #5
	strh r4, [r0]
	mov r1, r8
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _0803136C
	ldr r0, [r5, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803136C
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803136C
	adds r0, r5, #0
	bl sub_8019A58
	movs r3, #0xc0
	lsls r3, r3, #4
	b _08031370
	.align 2, 0
_08031368: .4byte gPlayers
_0803136C:
	movs r3, #0x98
	lsls r3, r3, #4
_08031370:
	adds r0, r7, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031380
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	lsrs r3, r0, #0x10
_08031380:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031390
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	lsrs r3, r0, #0x10
_08031390:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080313A2
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	lsrs r3, r0, #0x10
_080313A2:
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bge _080313C2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080313B8
	cmp r2, r0
	ble _080313D8
	b _080313D6
_080313B8:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	b _080313D6
_080313C2:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080313D2
	movs r0, #1
	orrs r1, r0
	str r1, [r5, #4]
	b _080313D6
_080313D2:
	cmp r2, r0
	bge _080313D8
_080313D6:
	strh r3, [r5, #0x1c]
_080313D8:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080313EC
	adds r0, r5, #0
	bl sub_8007898
	b _08031402
_080313EC:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xb
	bne _080313FC
	adds r0, r5, #0
	bl Player_800891C
	b _08031402
_080313FC:
	adds r0, r5, #0
	bl sub_8005528
_08031402:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08031412
	b _08031292
_08031412:
	bl sub_80314B0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8031428
sub_8031428: @ 0x08031428
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	movs r5, #0
	cmp r2, #0
	beq _0803144A
	cmp r6, #5
	bne _08031446
	movs r5, #0x80
	lsls r5, r5, #3
	b _0803144A
_08031446:
	movs r5, #0x80
	lsls r5, r5, #4
_0803144A:
	cmp r1, #0
	beq _0803145E
	cmp r6, #5
	bne _08031458
	movs r0, #0x80
	lsls r0, r0, #4
	b _0803145C
_08031458:
	movs r0, #0x80
	lsls r0, r0, #3
_0803145C:
	orrs r5, r0
_0803145E:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xd9
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	ldr r0, _08031478 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0803147C
	strb r6, [r4, #0x1a]
	b _08031486
	.align 2, 0
_08031478: .4byte gStageData
_0803147C:
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_08031486:
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
	orrs r5, r0
	str r5, [r4, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80314B0
sub_80314B0: @ 0x080314B0
	push {r4, r5, r6, r7, lr}
	ldr r7, _08031504 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r6, [r4]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08031508 @ =gCamera
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r0, r2
	strh r2, [r5, #0x10]
	ldr r2, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r5, #0x12]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803150C
	ldrb r0, [r4, #0xa]
	strb r0, [r6]
	ldr r0, [r7]
	bl TaskDestroy
	b _08031518
	.align 2, 0
_08031504: .4byte gCurTask
_08031508: .4byte gCamera
_0803150C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08031518:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable035
CreateEntity_Interactable035: @ 0x08031520
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
	bl CreateEntity_Booster
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable037
CreateEntity_Interactable037: @ 0x0803154C
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
	bl CreateEntity_Booster
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable039
CreateEntity_Interactable039: @ 0x08031578
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
	bl CreateEntity_Booster
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable036
CreateEntity_Interactable036: @ 0x080315A4
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
	bl CreateEntity_Booster
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable038
CreateEntity_Interactable038: @ 0x080315D0
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
	bl CreateEntity_Booster
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable040
CreateEntity_Interactable040: @ 0x080315FC
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
	bl CreateEntity_Booster
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_8031628
TaskDestructor_8031628: @ 0x08031628
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
    
@ --- End of IA035-040 ---
