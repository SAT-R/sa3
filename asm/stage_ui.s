.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8022664
sub_8022664: @ 0x08022664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r1
	lsls r0, r0, #0x10
	ldr r1, _08022724 @ =gCurTask
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r3
	mov r8, r1
	ldr r1, _08022728 @ =gStageData
	ldrb r1, [r1, #6]
	lsls r6, r1, #2
	adds r6, r6, r1
	lsls r6, r6, #2
	adds r6, r6, r1
	lsls r6, r6, #4
	ldr r2, _0802272C @ =gPlayers
	adds r6, r6, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r0, [r6, #0x10]
	ldr r2, [r1, #0x10]
	subs r0, r0, r2
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x14]
	ldr r1, [r1, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	mov r0, sb
	strb r4, [r0, #0x1f]
	ldr r2, _08022730 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	ldr r1, _08022734 @ =0x00040020
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x12
	str r3, [sp]
	bl sa2__sub_8004418
	ldr r2, _08022738 @ =0xFFFFFF00
	adds r0, r0, r2
	ldr r2, _0802273C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r3, [sp]
	ldr r1, _08022740 @ =0x030002D4
	adds r3, r3, r1
	strh r0, [r3]
	rsbs r4, r4, #0
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r2, _08022744 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	rsbs r5, r5, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	bgt _08022748
	movs r7, #0x10
	b _0802274E
	.align 2, 0
_08022724: .4byte gCurTask
_08022728: .4byte gStageData
_0802272C: .4byte gPlayers
_08022730: .4byte gNextFreeAffineIndex
_08022734: .4byte 0x00040020
_08022738: .4byte 0xFFFFFF00
_0802273C: .4byte 0x000003FF
_08022740: .4byte 0x030002D4
_08022744: .4byte gCamera
_08022748:
	cmp r4, #0xe0
	ble _0802274E
	movs r7, #0xe0
_0802274E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _0802275A
	movs r5, #0x18
	b _08022760
_0802275A:
	cmp r0, #0x80
	ble _08022760
	movs r5, #0x80
_08022760:
	ldr r0, _0802279C @ =0x000002DA
	add r0, r8
	strh r7, [r0]
	movs r0, #0xb7
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0]
	ldr r0, _080227A0 @ =0x000002D6
	add r0, r8
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #2
	add r0, r8
	strh r1, [r0]
	movs r1, #0xb5
	lsls r1, r1, #2
	add r1, r8
	mov r0, sb
	bl TransformSprite
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802279C: .4byte 0x000002DA
_080227A0: .4byte 0x000002D6

	thumb_func_start TaskDestructor_80227A4
TaskDestructor_80227A4: @ 0x080227A4
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080227E8 @ =0x030002AC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080227BC
	bl VramFree
_080227BC:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080227E0
	ldr r1, _080227EC @ =0x030002D4
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _080227F0 @ =0x030002FC
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _080227F4 @ =0x03000324
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
_080227E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080227E8: .4byte 0x030002AC
_080227EC: .4byte 0x030002D4
_080227F0: .4byte 0x030002FC
_080227F4: .4byte 0x03000324

	thumb_func_start Task_80227F8
Task_80227F8: @ 0x080227F8
	push {r4, lr}
	ldr r4, _08022818 @ =gCurTask
	bl sub_8021A64
	ldr r0, _0802281C @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022810
	ldr r1, [r4]
	ldr r0, _08022820 @ =Task_8022824
	str r0, [r1, #8]
_08022810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022818: .4byte gCurTask
_0802281C: .4byte gStageData
_08022820: .4byte Task_8022824

	thumb_func_start Task_8022824
Task_8022824: @ 0x08022824
	push {r4, lr}
	ldr r4, _0802285C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08022840
	adds r0, #1
	strb r0, [r1]
	bl sub_8021A64
_08022840:
	ldr r0, _08022860 @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022854
	bl sub_80219E8
	ldr r1, [r4]
	ldr r0, _08022864 @ =Task_34C_8022868
	str r0, [r1, #8]
_08022854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802285C: .4byte gCurTask
_08022860: .4byte gStageData
_08022864: .4byte Task_34C_8022868

	thumb_func_start Task_34C_8022868
Task_34C_8022868: @ 0x08022868
	push {lr}
	ldr r2, _08022890 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022888
	ldr r1, [r2]
	ldr r0, _08022894 @ =Task_80227F8
	str r0, [r1, #8]
_08022888:
	bl sub_8021A64
	pop {r0}
	bx r0
	.align 2, 0
_08022890: .4byte gCurTask
_08022894: .4byte Task_80227F8

	thumb_func_start Task_8022898
Task_8022898: @ 0x08022898
	push {lr}
	ldr r2, _080228C0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080228B8
	ldr r1, [r2]
	ldr r0, _080228C4 @ =Task_80228C8
	str r0, [r1, #8]
_080228B8:
	bl sub_8022234
	pop {r0}
	bx r0
	.align 2, 0
_080228C0: .4byte gCurTask
_080228C4: .4byte Task_80228C8

	thumb_func_start Task_80228C8
Task_80228C8: @ 0x080228C8
	push {lr}
	bl sub_8022234
	ldr r0, _080228E4 @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080228E0
	ldr r0, _080228E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080228EC @ =Task_80228F0
	str r0, [r1, #8]
_080228E0:
	pop {r0}
	bx r0
	.align 2, 0
_080228E4: .4byte gStageData
_080228E8: .4byte gCurTask
_080228EC: .4byte Task_80228F0

	thumb_func_start Task_80228F0
Task_80228F0: @ 0x080228F0
	push {r4, lr}
	ldr r4, _08022928 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0802290C
	adds r0, #1
	strb r0, [r1]
	bl sub_8022234
_0802290C:
	ldr r0, _0802292C @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022920
	bl sub_8022198
	ldr r1, [r4]
	ldr r0, _08022930 @ =Task_8022898
	str r0, [r1, #8]
_08022920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022928: .4byte gCurTask
_0802292C: .4byte gStageData
_08022930: .4byte Task_8022898

	thumb_func_start sub_8022934
sub_8022934: @ 0x08022934
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10		@ pid
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802296C @ =gPlayers
	adds r1, r1, r0
	adds r1, #0xe0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0xc
	ldrh r0, [r1, #0x10]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _08022970
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08022970
	cmp r0, #0x9f
	bgt _08022970
	movs r0, #1
	b _08022972
	.align 2, 0
_0802296C: .4byte gPlayers
_08022970:
	movs r0, #0
_08022972:
	pop {r1}
	bx r1
	.align 2, 0
