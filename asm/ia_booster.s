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
	ldr r0, _08031234 @ =Task_Booster
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08031238 @ =TaskDestructor_Booster
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
_08031234: .4byte Task_Booster
_08031238: .4byte TaskDestructor_Booster
_0803123C: .4byte 0x0300000C
_08031240: .4byte 0x03000034
_08031244: .4byte 0x03000035
_08031248: .4byte 0x03000036

	thumb_func_start Task_Booster
Task_Booster: @ 0x0803124C
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
    
.if 0
.endif
