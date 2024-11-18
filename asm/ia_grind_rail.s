.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8039538
sub_8039538: @ 0x08039538
	push {r4, r5, r6, r7, lr}
	mov r7, r8              @ r0 = qLeft
	push {r7}               @ r1 = qTop
	adds r6, r2, #0         @ r6 = width
	adds r5, r3, #0         @ r5 = height
	ldr r2, [sp, #0x18]     @ r2 = kind
	ldr r3, [sp, #0x1c]     @ r3 = p
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18      @ r4 = (u8)r2
	mov ip, r4              @ ip = r4 = kind
	ldr r2, [r3, #0x10]
	subs r2, r2, r0
	asrs r2, r2, #8
	mov r8, r2
	ldr r0, [r3, #0x14]
	subs r0, r0, r1
	asrs r7, r0, #8
	cmp r4, #1
	bne _08039594
	cmp r6, r5
	bge _0803957C
	lsls r0, r5, #4
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #4
	adds r0, r0, r7
	cmp r0, r5
	bgt _0803964A
_08039578:
	movs r0, #1
	b _0803964C
_0803957C:
	lsls r0, r6, #4
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #4
	add r0, r8
	cmp r0, r6
	bgt _0803964A
	b _08039578
_08039594:
	cmp r4, #2
	bne _080395C8
	cmp r6, r5
	bge _080395B2
	lsls r0, r5, #8
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #0
	beq _08039578
	lsls r0, r7, #8
	mov r1, r8
	b _08039608
_080395B2:
	lsls r0, r6, #8
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	cmp r7, #0
	beq _08039578
	mov r1, r8
	lsls r0, r1, #8
	adds r1, r7, #0
	b _080395EA
_080395C8:
	cmp r4, #3
	bne _08039612
	cmp r6, r5
	bge _080395F4
	lsls r0, r5, #8
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #0
	bne _080395E6
	cmp r7, #0
	bne _0803964A
	b _08039578
_080395E6:
	lsls r0, r7, #8
	mov r1, r8
_080395EA:
	bl __divsi3
	cmp r4, r0
	blt _0803964A
	b _08039578
_080395F4:
	lsls r0, r6, #8
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	cmp r7, #0
	beq _08039578
	mov r1, r8
	lsls r0, r1, #8
	adds r1, r7, #0
_08039608:
	bl __divsi3
	cmp r4, r0
	bgt _0803964A
	b _08039578
_08039612:
	mov r0, ip
	cmp r0, #4
	bne _0803964A
	cmp r6, r5
	bge _08039634
	lsls r0, r5, #4
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #4
	adds r0, r0, r7
	cmp r0, r5
	blt _0803964A
	b _08039578
_08039634:
	lsls r0, r6, #4
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #4
	add r0, r8
	cmp r0, r6
	bge _08039578
_0803964A:
	movs r0, #0
_0803964C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Task_Interactable073Main
Task_Interactable073Main: @ 0x08039658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080396A4 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080396A8
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08039768
	.align 2, 0
_080396A4: .4byte gCurTask
_080396A8:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	ldr r6, _080396FC @ =gStageData
_080396D4:
	ldrb r0, [r6, #3]
	cmp r0, #7
	bne _080396DE
	cmp r5, #0
	bne _08039762
_080396DE:
	cmp r5, #0
	beq _08039704
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
	ldr r1, _08039700 @ =gPlayers
	adds r4, r0, r1
	b _08039714
	.align 2, 0
_080396FC: .4byte gStageData
_08039700: .4byte gPlayers
_08039704:
	ldrb r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08039778 @ =gPlayers
	adds r4, r1, r0
_08039714:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803972A
	cmp r1, #8
	beq _0803972A
	cmp r1, #0x10
	bne _08039762
_0803972A:
	ldr r1, [r4, #4]
	ldr r0, _0803977C @ =0x01000100
	ands r0, r1
	cmp r0, #0
	bne _08039762
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _08039762
	cmp r0, r8
	bge _08039762
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _08039762
	cmp r0, sl
	bge _08039762
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0803975A
	adds r0, r4, #0
	ldr r1, _08039780 @ =sub_800D978
	bl SetPlayerCallback
_0803975A:
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
_08039762:
	adds r5, #1
	cmp r5, #1
	ble _080396D4
_08039768:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039778: .4byte gPlayers
_0803977C: .4byte 0x01000100
_08039780: .4byte sub_800D978

	thumb_func_start Task_Interactable074Main
Task_Interactable074Main: @ 0x08039784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080397D0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080397D4
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0803988A
	.align 2, 0
_080397D0: .4byte gCurTask
_080397D4:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	ldr r6, _08039828 @ =gStageData
_08039800:
	ldrb r0, [r6, #3]
	cmp r0, #7
	bne _0803980A
	cmp r5, #0
	bne _08039884
_0803980A:
	cmp r5, #0
	beq _08039830
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
	ldr r1, _0803982C @ =gPlayers
	adds r4, r0, r1
	b _08039840
	.align 2, 0
_08039828: .4byte gStageData
_0803982C: .4byte gPlayers
_08039830:
	ldrb r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08039898 @ =gPlayers
	adds r4, r1, r0
_08039840:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08039856
	cmp r1, #8
	beq _08039856
	cmp r1, #0x10
	bne _08039884
_08039856:
	ldr r1, [r4, #4]
	ldr r0, _0803989C @ =0x01000100
	ands r0, r1
	cmp r0, #0
	bne _08039884
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _08039884
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _08039884
	cmp r0, r8
	bge _08039884
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _08039884
	cmp r0, sl
	bge _08039884
	adds r0, r4, #0
	bl sub_800D9B4
_08039884:
	adds r5, #1
	cmp r5, #1
	ble _08039800
_0803988A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039898: .4byte gPlayers
_0803989C: .4byte 0x01000100

	thumb_func_start CreateEntity_Interactable072
CreateEntity_Interactable072: @ 0x080398A0
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
	bl CreateGrindRail
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable077
CreateEntity_Interactable077: @ 0x080398CC
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
	bl CreateGrindRail
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable078
CreateEntity_Interactable078: @ 0x080398F8
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
	bl CreateGrindRail
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable079
CreateEntity_Interactable079: @ 0x08039924
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
	bl CreateGrindRail
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable080
CreateEntity_Interactable080: @ 0x08039950
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
	bl CreateGrindRail
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable073
CreateEntity_Interactable073: @ 0x0803997C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
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
	ldr r0, _080399D8 @ =Task_Interactable073Main
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080399D8: .4byte Task_Interactable073Main

	thumb_func_start CreateEntity_Interactable074
CreateEntity_Interactable074: @ 0x080399DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
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
	ldr r0, _08039A38 @ =Task_Interactable074Main
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039A38: .4byte Task_Interactable074Main
