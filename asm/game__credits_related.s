.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start Task_D4_80AB5A8
Task_D4_80AB5A8: @ 0x080AB5A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080AB640 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080AB5F6
	ldr r2, _080AB644 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB648 @ =gWinRegs
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AB64C @ =gBldRegs
	ldr r0, _080AB650 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r5, #2]
	strb r3, [r5, #1]
_080AB5F6:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB654 @ =0x0300002C
	adds r4, r6, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB64C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AB658
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	b _080AB760
	.align 2, 0
_080AB640: .4byte gCurTask
_080AB644: .4byte gDispCnt
_080AB648: .4byte gWinRegs
_080AB64C: .4byte gBldRegs
_080AB650: .4byte 0x00003FFF
_080AB654: .4byte 0x0300002C
_080AB658:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r5]
	cmp r0, #1
	bne _080AB6D0
	movs r6, #0
	movs r0, #0
	ldr r1, _080AB6BC @ =gLoadedSaveGame
	mov r8, r1
	mov r7, r8
	adds r7, #0x37
	movs r3, #4
	mov ip, r3
_080AB672:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB678:
	adds r0, r3, r4
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AB68C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080AB68C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB678
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB672
	mov r2, r8
	adds r2, #0x33
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_8001E58
	cmp r6, #0x1c
	bne _080AB6C0
	movs r0, #2
	bl sub_80AB120
	b _080AB758
	.align 2, 0
_080AB6BC: .4byte gLoadedSaveGame
_080AB6C0:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _080AB6CC @ =gCurTask
	ldr r1, [r0]
	b _080AB6EA
	.align 2, 0
_080AB6CC: .4byte gCurTask
_080AB6D0:
	cmp r0, #2
	bne _080AB6F8
	ldr r1, _080AB6F0 @ =gLoadedSaveGame
	adds r1, #0x33
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_8001E58
	movs r0, #0
	strh r0, [r5, #4]
	ldr r1, [r7]
_080AB6EA:
	ldr r0, _080AB6F4 @ =Task_D4_80ABC20
	str r0, [r1, #8]
	b _080AB760
	.align 2, 0
_080AB6F0: .4byte gLoadedSaveGame
_080AB6F4: .4byte Task_D4_80ABC20
_080AB6F8:
	cmp r0, #0
	bne _080AB750
	ldr r1, _080AB734 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AB738 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AB73C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AB740 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AB744 @ =gVramGraphicsCopyCursor
	ldr r0, _080AB748 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AB74C @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #4
	bl WarpToMap
	b _080AB760
	.align 2, 0
_080AB734: .4byte 0x0000FFFF
_080AB738: .4byte gBackgroundsCopyQueueCursor
_080AB73C: .4byte gBackgroundsCopyQueueIndex
_080AB740: .4byte gBgSpritesCount
_080AB744: .4byte gVramGraphicsCopyCursor
_080AB748: .4byte gVramGraphicsCopyQueueIndex
_080AB74C: .4byte gStageData
_080AB750:
	movs r0, #3
	movs r1, #1
	bl CreateMainMenu
_080AB758:
	ldr r0, _080AB76C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AB760:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB76C: .4byte gCurTask

	thumb_func_start Task_D4_80AB770
Task_D4_80AB770: @ 0x080AB770
	push {r4, r5, r6, lr}
	ldr r6, _080AB7C0 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB7C4 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AB7C8
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x77
	bgt _080AB7CC
	adds r0, r1, #1
	b _080AB7CE
	.align 2, 0
_080AB7C0: .4byte gCurTask
_080AB7C4: .4byte 0x0300002C
_080AB7C8:
	cmp r0, #3
	bne _080AB7F4
_080AB7CC:
	movs r0, #0x78
_080AB7CE:
	strh r0, [r5, #4]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x77
	ble _080AB80A
	ldr r0, _080AB7EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB80A
	ldr r0, _080AB7F0 @ =gCurTask
	ldr r1, [r0]
	b _080AB806
	.align 2, 0
_080AB7EC: .4byte gPressedKeys
_080AB7F0: .4byte gCurTask
_080AB7F4:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080AB80A
	ldr r1, [r6]
_080AB806:
	ldr r0, _080AB810 @ =Task_D4_80AB5A8
	str r0, [r1, #8]
_080AB80A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB810: .4byte Task_D4_80AB5A8

	thumb_func_start TaskDestructor_40_A_80AB814
TaskDestructor_40_A_80AB814: @ 0x080AB814
	bx lr
	.align 2, 0

	thumb_func_start Task_40_A_80AB818
Task_40_A_80AB818: @ 0x080AB818
	push {r4, r5, lr}
	ldr r5, _080AB844 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80AB88C
	adds r0, r4, #0
	bl sub_80A9CA0
	cmp r0, #1
	bne _080AB83C
	ldr r1, [r5]
	ldr r0, _080AB848 @ =Task_40_A_80AB84C
	str r0, [r1, #8]
_080AB83C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB844: .4byte gCurTask
_080AB848: .4byte Task_40_A_80AB84C

	thumb_func_start Task_40_A_80AB84C
Task_40_A_80AB84C: @ 0x080AB84C
	push {r4, r5, lr}
	ldr r5, _080AB884 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A9D78
	adds r0, r4, #0
	bl sub_80AB88C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _080AB87C
	ldr r0, _080AB888 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AB87C
	ldr r0, [r5]
	bl TaskDestroy
_080AB87C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB884: .4byte gCurTask
_080AB888: .4byte gBldRegs

	thumb_func_start sub_80AB88C
sub_80AB88C: @ 0x080AB88C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x18
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB8B0
sub_80AB8B0: @ 0x080AB8B0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r2, _080AB8D4 @ =0x00001DFF
	cmp r0, r2
	bgt _080AB8C8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	ble _080AB8D8
_080AB8C8:
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	movs r0, #1
	b _080AB8F2
	.align 2, 0
_080AB8D4: .4byte 0x00001DFF
_080AB8D8:
	ldr r0, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _080AB8EA
	subs r0, #0x40
	str r0, [r1, #0x14]
	cmp r0, r2
	bgt _080AB8F0
_080AB8EA:
	str r2, [r1, #0x14]
	movs r0, #1
	b _080AB8F2
_080AB8F0:
	movs r0, #0
_080AB8F2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_40_B_80AB8F8
TaskDestructor_40_B_80AB8F8: @ 0x080AB8F8
	bx lr
	.align 2, 0

	thumb_func_start Task_100_80AB8FC
Task_100_80AB8FC: @ 0x080AB8FC
	push {r4, r5, lr}
	ldr r5, _080AB920 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AA1BC
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080AB924
	adds r0, r4, #0
	bl sub_80AB93C
	b _080AB934
	.align 2, 0
_080AB920: .4byte gCurTask
_080AB924:
	adds r0, r4, #0
	bl sub_80AB960
	cmp r0, #1
	bne _080AB934
	ldr r0, [r5]
	bl TaskDestroy
_080AB934:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB93C
sub_80AB93C: @ 0x080AB93C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _080AB952
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #8]
	cmp r0, #0
	ble _080AB95A
_080AB952:
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #1
	b _080AB95C
_080AB95A:
	movs r0, #0
_080AB95C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AB960
sub_80AB960: @ 0x080AB960
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldr r2, _080AB97C @ =0xFFFF2E00
	cmp r0, r2
	ble _080AB976
	ldr r3, _080AB980 @ =0xFFFFFB00
	adds r0, r0, r3
	str r0, [r1, #8]
	cmp r0, r2
	bge _080AB984
_080AB976:
	str r2, [r1, #8]
	movs r0, #1
	b _080AB986
	.align 2, 0
_080AB97C: .4byte 0xFFFF2E00
_080AB980: .4byte 0xFFFFFB00
_080AB984:
	movs r0, #0
_080AB986:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_100_80AB98C
TaskDestructor_100_80AB98C: @ 0x080AB98C
	bx lr
	.align 2, 0

	thumb_func_start TaskDestructor_54_80AB990
TaskDestructor_54_80AB990: @ 0x080AB990
	bx lr
	.align 2, 0

	thumb_func_start Task_54_80AB994
Task_54_80AB994: @ 0x080AB994
	push {lr}
	ldr r0, _080AB9C0 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	adds r0, #1
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080AB9BA
	movs r0, #0
	strh r0, [r2, #8]
	ldr r0, _080AB9C4 @ =Task_54_80AA410
	str r0, [r3, #8]
_080AB9BA:
	pop {r0}
	bx r0
	.align 2, 0
_080AB9C0: .4byte gCurTask
_080AB9C4: .4byte Task_54_80AA410

	thumb_func_start TaskDestructor_48_C_80AB9C8
TaskDestructor_48_C_80AB9C8: @ 0x080AB9C8
	bx lr
	.align 2, 0

	thumb_func_start Task_48_C_80AB9CC
Task_48_C_80AB9CC: @ 0x080AB9CC
	push {r4, lr}
	ldr r4, _080AB9EC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80AA62C
	ldr r1, [r4]
	ldr r0, _080AB9F0 @ =Task_48_C_80AA6A0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB9EC: .4byte gCurTask
_080AB9F0: .4byte Task_48_C_80AA6A0

	thumb_func_start Task_48_C_80AB9F4
Task_48_C_80AB9F4: @ 0x080AB9F4
	push {lr}
	ldr r0, _080ABA18 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #2
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABA14
	ldr r0, _080ABA1C @ =Task_48_C_80AA76C
	str r0, [r2, #8]
_080ABA14:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA18: .4byte gCurTask
_080ABA1C: .4byte Task_48_C_80AA76C

	thumb_func_start Task_48_C_80ABA20
Task_48_C_80ABA20: @ 0x080ABA20
	push {lr}
	ldr r0, _080ABA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABA5E
	ldr r1, _080ABA68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABA6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABA70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABA74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABA78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABA7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABA5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA64: .4byte gCurTask
_080ABA68: .4byte 0x0000FFFF
_080ABA6C: .4byte gBackgroundsCopyQueueCursor
_080ABA70: .4byte gBackgroundsCopyQueueIndex
_080ABA74: .4byte gBgSpritesCount
_080ABA78: .4byte gVramGraphicsCopyCursor
_080ABA7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start Task_48_C_80ABA80
Task_48_C_80ABA80: @ 0x080ABA80
	push {lr}
	ldr r0, _080ABA90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080ABA90: .4byte gCurTask

	thumb_func_start Task_48_C_80ABA94
Task_48_C_80ABA94: @ 0x080ABA94
	push {lr}
	ldr r0, _080ABAD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABAD2
	ldr r1, _080ABADC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABAE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABAE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABAE8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABAEC @ =gVramGraphicsCopyCursor
	ldr r0, _080ABAF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABAD2:
	pop {r0}
	bx r0
	.align 2, 0
_080ABAD8: .4byte gCurTask
_080ABADC: .4byte 0x0000FFFF
_080ABAE0: .4byte gBackgroundsCopyQueueCursor
_080ABAE4: .4byte gBackgroundsCopyQueueIndex
_080ABAE8: .4byte gBgSpritesCount
_080ABAEC: .4byte gVramGraphicsCopyCursor
_080ABAF0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start TaskDestructor_14C_80ABAF4
TaskDestructor_14C_80ABAF4: @ 0x080ABAF4
	bx lr
	.align 2, 0

	thumb_func_start Task_14C_80ABAF8
Task_14C_80ABAF8: @ 0x080ABAF8
	push {r4, r5, lr}
	ldr r5, _080ABB30 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABB2A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080ABB34 @ =Task_14C_80AAF50
	str r0, [r1, #8]
_080ABB2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ABB30: .4byte gCurTask
_080ABB34: .4byte Task_14C_80AAF50

	thumb_func_start Task_14C_80ABB38
Task_14C_80ABB38: @ 0x080ABB38
	push {lr}
	ldr r0, _080ABB7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABB76
	ldr r1, _080ABB80 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABB84 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABB88 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABB8C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABB90 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABB94 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABB76:
	pop {r0}
	bx r0
	.align 2, 0
_080ABB7C: .4byte gCurTask
_080ABB80: .4byte 0x0000FFFF
_080ABB84: .4byte gBackgroundsCopyQueueCursor
_080ABB88: .4byte gBackgroundsCopyQueueIndex
_080ABB8C: .4byte gBgSpritesCount
_080ABB90: .4byte gVramGraphicsCopyCursor
_080ABB94: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABB98
sub_80ABB98: @ 0x080ABB98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080ABB9E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080ABB9E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABBC8
sub_80ABBC8: @ 0x080ABBC8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bge _080ABBE6
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x18]
	cmp r0, #0
	blt _080ABBE6
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	b _080ABBE8
_080ABBE6:
	movs r0, #0
_080ABBE8:
	pop {r1}
	bx r1

	thumb_func_start sub_80ABBEC
sub_80ABBEC: @ 0x080ABBEC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r0, _080ABC10 @ =0x00006FFF
	cmp r1, r0
	ble _080ABC14
	subs r1, #0x80
	ldrb r0, [r2, #1]
	lsls r0, r0, #7
	subs r1, r1, r0
	str r1, [r2, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080ABC14
	str r0, [r2, #0x20]
	movs r0, #1
	b _080ABC16
	.align 2, 0
_080ABC10: .4byte 0x00006FFF
_080ABC14:
	movs r0, #0
_080ABC16:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_D4_80ABC1C
TaskDestructor_D4_80ABC1C: @ 0x080ABC1C
	bx lr
	.align 2, 0

	thumb_func_start Task_D4_80ABC20
Task_D4_80ABC20: @ 0x080ABC20
	push {lr}
	ldr r0, _080ABC64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABC5E
	ldr r1, _080ABC68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABC6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABC70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABC74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABC78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABC7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABC5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABC64: .4byte gCurTask
_080ABC68: .4byte 0x0000FFFF
_080ABC6C: .4byte gBackgroundsCopyQueueCursor
_080ABC70: .4byte gBackgroundsCopyQueueIndex
_080ABC74: .4byte gBgSpritesCount
_080ABC78: .4byte gVramGraphicsCopyCursor
_080ABC7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABC80
sub_80ABC80: @ 0x080ABC80
	push {r4, lr}
	movs r3, #0
	ldr r1, [r0, #0x24]
	adds r1, #0x90
	str r1, [r0, #0x24]
	ldr r2, _080ABCC8 @ =gSineTable
	asrs r1, r1, #8
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _080ABCCC @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080ABCD0 @ =gHBlankCopyTarget
	ldr r0, _080ABCD4 @ =0x0400001A
	str r0, [r1]
	ldr r1, _080ABCD8 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080ABCDC @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
_080ABCBE:
	cmp r3, #0x63
	bls _080ABCE0
	strh r4, [r1]
	b _080ABCE2
	.align 2, 0
_080ABCC8: .4byte gSineTable
_080ABCCC: .4byte gFlags
_080ABCD0: .4byte gHBlankCopyTarget
_080ABCD4: .4byte 0x0400001A
_080ABCD8: .4byte gHBlankCopySize
_080ABCDC: .4byte gBgOffsetsHBlankPrimary
_080ABCE0:
	strh r2, [r1]
_080ABCE2:
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9f
	bls _080ABCBE
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABCF4
sub_80ABCF4: @ 0x080ABCF4
	ldr r2, [r0, #0x18]
	adds r2, #0xc0
	str r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	subs r1, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, _080ABD0C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0, #4]
	asrs r1, r1, #8
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_080ABD0C: .4byte gBgScrollRegs

	thumb_func_start sub_80ABD10
sub_80ABD10: @ 0x080ABD10
	ldr r1, [r0, #0x20]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x20]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r0, #8]
	ldr r3, _080ABD40 @ =gSineTable
	asrs r1, r1, #8
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #3
	movs r2, #0xf4
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080ABD40: .4byte gSineTable

	thumb_func_start sub_80ABD44
sub_80ABD44: @ 0x080ABD44
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ABD98 @ =Task_62C_80ABE28
	ldr r1, _080ABD9C @ =0x0000062C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ABDA0 @ =TaskDestructor_62C_80AC9E4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0, #1]
	movs r3, #0
	strh r2, [r0, #4]
	ldr r1, _080ABDA4 @ =0x06010000
	str r1, [r0, #0x10]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	strb r3, [r0, #2]
	strb r4, [r0]
	ldr r3, _080ABDA8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDB0
	ldr r0, _080ABDAC @ =gUnknown_080DB824
	movs r1, #0x70
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080ABDC6
	.align 2, 0
_080ABD98: .4byte Task_62C_80ABE28
_080ABD9C: .4byte 0x0000062C
_080ABDA0: .4byte TaskDestructor_62C_80AC9E4
_080ABDA4: .4byte 0x06010000
_080ABDA8: .4byte gFlags
_080ABDAC: .4byte gUnknown_080DB824
_080ABDB0:
	ldr r1, _080ABDE0 @ =0x040000D4
	ldr r0, _080ABDE4 @ =gUnknown_080DB824
	str r0, [r1]
	ldr r0, _080ABDE8 @ =gObjPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _080ABDEC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABDC6:
	ldr r3, _080ABDF0 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDF8
	ldr r0, _080ABDF4 @ =gUnknown_080DB804
	movs r1, #0xe0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080ABE0E
	.align 2, 0
_080ABDE0: .4byte 0x040000D4
_080ABDE4: .4byte gUnknown_080DB824
_080ABDE8: .4byte gObjPalette + 0xE0
_080ABDEC: .4byte 0x80000010
_080ABDF0: .4byte gFlags
_080ABDF4: .4byte gUnknown_080DB804
_080ABDF8:
	ldr r1, _080ABE18 @ =0x040000D4
	ldr r0, _080ABE1C @ =gUnknown_080DB804
	str r0, [r1]
	ldr r0, _080ABE20 @ =gObjPalette + 0x1c0
	str r0, [r1, #4]
	ldr r0, _080ABE24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABE0E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ABE18: .4byte 0x040000D4
_080ABE1C: .4byte gUnknown_080DB804
_080ABE20: .4byte gObjPalette + 0x1c0
_080ABE24: .4byte 0x80000010

	thumb_func_start Task_62C_80ABE28
Task_62C_80ABE28: @ 0x080ABE28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _080AC020 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrb r4, [r7, #1]
	adds r0, r4, #0
	adds r0, #0xa
	cmp r4, r0
	bge _080ABEA4
	ldr r6, _080AC024 @ =gUnknown_080DA420
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
_080ABE56:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	add r1, r8
	str r1, [r7, #0x10]
	ldrh r1, [r6]
	strh r1, [r0, #0xc]
	ldrb r2, [r6, #2]
	adds r1, r4, r2
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r7, #1]
	adds r0, #0xa
	cmp r4, r0
	blt _080ABE56
_080ABEA4:
	ldrb r0, [r7, #1]
	adds r0, #0xa
	movs r2, #0
	strb r0, [r7, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080ABEB6
	b _080AC010
_080ABEB6:
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x20
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r1, _080AC028 @ =0x00000462     @ ANIM_ASCII
	mov sb, r1              @ sb = r1 = ANIM_ASCII
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	movs r5, #0x80
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	subs r1, #7
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	subs r1, #9
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r7, #1]
	ldr r0, _080AC020 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC02C @ =sub_80AC030
	str r0, [r1, #8]
_080AC010:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC020: .4byte gCurTask
_080AC024: .4byte gUnknown_080DA420
_080AC028: .4byte 0x00000462
_080AC02C: .4byte sub_80AC030

	thumb_func_start sub_80AC030
sub_80AC030: @ 0x080AC030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r7, _080AC0B8 @ =gUnknown_080DB844
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080AC04C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _080AC0BC @ =0x0000058C
	adds r0, r0, r1
	adds r0, r4, r0
	ldr r1, [r4, #0x10]
	str r1, [r0]
	lsls r3, r5, #3
	adds r1, r7, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	adds r3, r3, r7
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AC04C
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC0C0 @ =sub_80AC0C4
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC0B4: .4byte gCurTask
_080AC0B8: .4byte gUnknown_080DB844
_080AC0BC: .4byte 0x0000058C
_080AC0C0: .4byte sub_80AC0C4

	thumb_func_start sub_80AC0C4
sub_80AC0C4: @ 0x080AC0C4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080AC0F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC0F8
	ldr r0, _080AC0F4 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC104
	b _080AC15C
	.align 2, 0
_080AC0F0: .4byte gCurTask
_080AC0F4: .4byte gLoadedSaveGame
_080AC0F8:
	ldr r0, _080AC13C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
_080AC104:
	ldr r0, _080AC140 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
	ldr r1, _080AC144 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC148 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC14C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC150 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC154 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC158 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC1D8
	.align 2, 0
_080AC13C: .4byte gLoadedSaveGame
_080AC140: .4byte gInput
_080AC144: .4byte 0x0000FFFF
_080AC148: .4byte gBackgroundsCopyQueueCursor
_080AC14C: .4byte gBackgroundsCopyQueueIndex
_080AC150: .4byte gBgSpritesCount
_080AC154: .4byte gVramGraphicsCopyCursor
_080AC158: .4byte gVramGraphicsCopyQueueIndex
_080AC15C:
	ldr r1, [r4, #0xc]
	adds r1, #0x80
	str r1, [r4, #0xc]
	lsrs r1, r1, #8
	subs r1, #0xa
	ldr r2, _080AC1A8 @ =strCredits_CreatedBy
	ldrb r5, [r4, #1]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x24
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _080AC1D8
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AC1B0
	ldrb r1, [r4, #2]
	ldr r0, _080AC1AC @ =0x0000058C
	adds r2, r4, r0
	adds r3, r4, #0
	adds r3, #8
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	bl sub_80ACA80
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	b _080AC1C2
	.align 2, 0
_080AC1A8: .4byte strCredits_CreatedBy
_080AC1AC: .4byte 0x0000058C
_080AC1B0:
	adds r1, r4, #0
	adds r1, #0x14
	adds r2, r4, #0
	adds r2, #8
	adds r3, r4, #0
	adds r3, #0xc
	adds r0, r5, #0
	bl sub_80AC9E8
_080AC1C2:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _080AC1D8
	ldr r0, _080AC1E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC1E4 @ =sub_80AC1E8
	str r0, [r1, #8]
_080AC1D8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC1E0: .4byte gCurTask
_080AC1E4: .4byte sub_80AC1E8

	thumb_func_start sub_80AC1E8
sub_80AC1E8: @ 0x080AC1E8
	push {r4, lr}
	ldr r0, _080AC210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC218
	ldr r0, _080AC214 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC224
	b _080AC27C
	.align 2, 0
_080AC210: .4byte gCurTask
_080AC214: .4byte gLoadedSaveGame
_080AC218:
	ldr r0, _080AC25C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
_080AC224:
	ldr r0, _080AC260 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
	ldr r1, _080AC264 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC268 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC26C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC270 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC274 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC278 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC2A0
	.align 2, 0
_080AC25C: .4byte gLoadedSaveGame
_080AC260: .4byte gInput
_080AC264: .4byte 0x0000FFFF
_080AC268: .4byte gBackgroundsCopyQueueCursor
_080AC26C: .4byte gBackgroundsCopyQueueIndex
_080AC270: .4byte gBgSpritesCount
_080AC274: .4byte gVramGraphicsCopyCursor
_080AC278: .4byte gVramGraphicsCopyQueueIndex
_080AC27C:
	ldr r0, [r4, #0xc]
	adds r0, #0x80
	str r0, [r4, #0xc]
	lsrs r0, r0, #8
	ldr r1, _080AC2A8 @ =strCredits_CreatedBy
	ldr r2, _080AC2AC @ =0x000013D4
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x82
	cmp r0, r1
	blo _080AC2A0
	ldrb r0, [r4]
	bl sub_80ACAF0
	ldr r0, _080AC2B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC2A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC2A8: .4byte strCredits_CreatedBy
_080AC2AC: .4byte 0x000013D4
_080AC2B0: .4byte gCurTask

	thumb_func_start sub_80AC2B4
sub_80AC2B4: @ 0x080AC2B4
	push {r4, lr}
	movs r3, #0
	ldr r2, _080AC380 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080AC384 @ =gHBlankCopyTarget
	ldr r0, _080AC388 @ =0x04000052
	str r0, [r1]
	ldr r1, _080AC38C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080AC390 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r4, r0, #0
_080AC2DA:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bls _080AC2DA
	movs r2, #0x28
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r4, r0, #0
_080AC2F0:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x31
	bls _080AC2F0
	movs r2, #0x32
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC302:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x40
	bls _080AC302
	movs r2, #0x41
	movs r3, #0xf
_080AC320:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x68
	bls _080AC320
	movs r3, #0xe
	movs r2, #0x69
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC334:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x77
	bls _080AC334
	movs r2, #0x73
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r3, r0, #0
_080AC356:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x82
	bls _080AC356
	movs r2, #0x82
	movs r0, #0xff
	lsls r0, r0, #8
	adds r3, r0, #0
_080AC36C:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa0
	bls _080AC36C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC380: .4byte gFlags
_080AC384: .4byte gHBlankCopyTarget
_080AC388: .4byte 0x04000052
_080AC38C: .4byte gHBlankCopySize
_080AC390: .4byte gBgOffsetsHBlankPrimary
_080AC394: .4byte gUnknown_080DB930

	thumb_func_start Task_130_80AC398
Task_130_80AC398: @ 0x080AC398
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0x80
	mov sb, r0
	ldr r0, _080AC408 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r2, _080AC40C @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _080AC3C6
	b _080AC4F4
_080AC3C6:
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r4, r1
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, r1, #0
	mov r8, r0
	cmp r3, #0x30
	bne _080AC410
	adds r1, r4, #1
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x14
	adds r1, r0, r1
	lsls r2, r4, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r0, [r1]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r1]
	b _080AC4D6
	.align 2, 0
_080AC408: .4byte gCurTask
_080AC40C: .4byte strCredits_CreatedBy
_080AC410:
	cmp r3, #0x2e
	bne _080AC418
	movs r1, #0x1e
	b _080AC440
_080AC418:
	cmp r3, #0x26
	bne _080AC420
	movs r1, #0x1f
	b _080AC440
_080AC420:
	cmp r3, #0x28
	bne _080AC428
	movs r1, #0x20
	b _080AC440
_080AC428:
	cmp r3, #0x29
	bne _080AC430
	movs r1, #0x21
	b _080AC440
_080AC430:
	cmp r3, #0x2d
	bne _080AC438
	movs r1, #0x22
	b _080AC440
_080AC438:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080AC440:
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r5, r0, r1
	ldr r1, [r6, #0xc]
	movs r0, #0
	mov ip, r0
	strh r1, [r5, #0x10]
	mov r2, r8
	asrs r4, r2, #0x18
	adds r3, r6, #0
	adds r3, #0x14
	cmp r4, #0
	beq _080AC474
	lsls r0, r4, #3
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x10]
_080AC474:
	adds r2, r4, #1
	lsls r2, r2, #3
	adds r2, r3, r2
	lsls r4, r4, #3
	adds r3, r3, r4
	ldr r0, _080AC4BC @ =gUnknown_080DB868
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r4
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x12]
	ldr r0, [r1]
	mov r3, sb
	subs r0, r0, r3
	str r0, [r1]
	ldr r2, _080AC4C0 @ =strCredits_CreatedBy
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AC4C4
	movs r0, #8
	b _080AC4CE
	.align 2, 0
_080AC4BC: .4byte gUnknown_080DB868
_080AC4C0: .4byte strCredits_CreatedBy
_080AC4C4:
	cmp r0, #3
	bne _080AC4CC
	mov r0, ip
	b _080AC4CE
_080AC4CC:
	movs r0, #1
_080AC4CE:
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl DisplaySprite
_080AC4D6:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, r8
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _080AC510 @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bge _080AC4F4
	b _080AC3C6
_080AC4F4:
	ldr r1, [r6, #0x18]
	ldr r0, _080AC514 @ =0x00002CFF
	cmp r1, r0
	bgt _080AC504
	ldr r0, _080AC518 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC504:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC510: .4byte strCredits_CreatedBy
_080AC514: .4byte 0x00002CFF
_080AC518: .4byte gCurTask

	thumb_func_start Task_294_80AC51C
Task_294_80AC51C: @ 0x080AC51C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080AC5B4 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldrb r0, [r5, #1]
	adds r1, r0, #0
	cmp r1, #0xe
	bhi _080AC5C0
	adds r0, #5
	strb r0, [r5, #1]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	bhs _080AC606
	ldr r7, _080AC5B8 @ =gUnknown_080DB950
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r1, _080AC5BC @ =gUnknown_080DB958
	mov r8, r1
	movs r2, #1
	add r2, r8
	mov sb, r2
_080AC55A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	adds r1, #0x80
	str r1, [r5, #8]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	ldrb r3, [r7, #2]
	adds r1, r4, r3
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #1
	mov r3, r8
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	add r2, sb
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r2, [r5, #1]
	cmp r4, r2
	blo _080AC55A
	b _080AC606
	.align 2, 0
_080AC5B4: .4byte gCurTask
_080AC5B8: .4byte gUnknown_080DB950
_080AC5BC: .4byte gUnknown_080DB958
_080AC5C0:
	ldr r3, _080AC614 @ =0x03000014
	adds r0, r2, r3
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r5, #8]
	movs r4, #0
	movs r2, #0
	ldr r1, _080AC618 @ =0x000005F1
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r5, #1]
	ldr r1, [r6]
	ldr r0, _080AC61C @ =sub_80AC620
	str r0, [r1, #8]
_080AC606:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC614: .4byte 0x03000014
_080AC618: .4byte 0x000005F1
_080AC61C: .4byte sub_80AC620

	thumb_func_start sub_80AC620
sub_80AC620: @ 0x080AC620
	push {r4, lr}
	ldr r0, _080AC648 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBD4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC650
	ldr r0, _080AC64C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC65C
	b _080AC6B4
	.align 2, 0
_080AC648: .4byte gCurTask
_080AC64C: .4byte gLoadedSaveGame
_080AC650:
	ldr r0, _080AC694 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
_080AC65C:
	ldr r0, _080AC698 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
	ldr r1, _080AC69C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC6A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC6A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC6A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC6AC @ =gVramGraphicsCopyCursor
	ldr r0, _080AC6B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC6CE
	.align 2, 0
_080AC694: .4byte gLoadedSaveGame
_080AC698: .4byte gInput
_080AC69C: .4byte 0x0000FFFF
_080AC6A0: .4byte gBackgroundsCopyQueueCursor
_080AC6A4: .4byte gBackgroundsCopyQueueIndex
_080AC6A8: .4byte gBgSpritesCount
_080AC6AC: .4byte gVramGraphicsCopyCursor
_080AC6B0: .4byte gVramGraphicsCopyQueueIndex
_080AC6B4:
	adds r0, r4, #0
	bl sub_80ACBA8
	cmp r0, #1
	bne _080AC6CE
	movs r0, #0x80
	lsls r0, r0, #2     @ VOICE__ANNOUNCER__CONGRATULATIONS
	bl m4aSongNumStart
	ldr r0, _080AC6D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC6D8 @ =sub_80AC6DC
	str r0, [r1, #8]
_080AC6CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC6D4: .4byte gCurTask
_080AC6D8: .4byte sub_80AC6DC

	thumb_func_start sub_80AC6DC
sub_80AC6DC: @ 0x080AC6DC
	push {r4, lr}
	ldr r0, _080AC724 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC70A
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC70A
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC70A:
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC72C
	ldr r0, _080AC728 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC738
	b _080AC790
	.align 2, 0
_080AC724: .4byte gCurTask
_080AC728: .4byte gLoadedSaveGame
_080AC72C:
	ldr r0, _080AC770 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC790
_080AC738:
	ldr r0, _080AC774 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC790
	ldr r1, _080AC778 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC77C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC780 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC784 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC788 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC78C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC7C2
	.align 2, 0
_080AC770: .4byte gLoadedSaveGame
_080AC774: .4byte gInput
_080AC778: .4byte 0x0000FFFF
_080AC77C: .4byte gBackgroundsCopyQueueCursor
_080AC780: .4byte gBackgroundsCopyQueueIndex
_080AC784: .4byte gBgSpritesCount
_080AC788: .4byte gVramGraphicsCopyCursor
_080AC78C: .4byte gVramGraphicsCopyQueueIndex
_080AC790:
	ldrb r1, [r4, #1]
	cmp r1, #0x12
	bhi _080AC7BA
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bne _080AC7C2
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r1, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080AC7C2
	movs r0, #0x13
	strb r0, [r4, #1]
	b _080AC7C2
_080AC7BA:
	ldr r0, _080AC7C8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC7CC @ =sub_80AC7D0
	str r0, [r1, #8]
_080AC7C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC7C8: .4byte gCurTask
_080AC7CC: .4byte sub_80AC7D0

	thumb_func_start sub_80AC7D0
sub_80AC7D0: @ 0x080AC7D0
	push {r4, lr}
	ldr r0, _080AC7F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC800
	ldr r0, _080AC7FC @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC80C
	b _080AC864
	.align 2, 0
_080AC7F8: .4byte gCurTask
_080AC7FC: .4byte gLoadedSaveGame
_080AC800:
	ldr r0, _080AC844 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC864
_080AC80C:
	ldr r0, _080AC848 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC864
	ldr r1, _080AC84C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC850 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC854 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC858 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC85C @ =gVramGraphicsCopyCursor
	ldr r0, _080AC860 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC8E8
	.align 2, 0
_080AC844: .4byte gLoadedSaveGame
_080AC848: .4byte gInput
_080AC84C: .4byte 0x0000FFFF
_080AC850: .4byte gBackgroundsCopyQueueCursor
_080AC854: .4byte gBackgroundsCopyQueueIndex
_080AC858: .4byte gBgSpritesCount
_080AC85C: .4byte gVramGraphicsCopyCursor
_080AC860: .4byte gVramGraphicsCopyQueueIndex
_080AC864:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _080AC8C8
	ldr r2, _080AC8B0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AC8B4 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AC8B8 @ =gBldRegs
	ldr r0, _080AC8BC @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _080AC8C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC8C4 @ =sub_80AC8F0
	str r0, [r1, #8]
	b _080AC8E8
	.align 2, 0
_080AC8B0: .4byte gDispCnt
_080AC8B4: .4byte gWinRegs
_080AC8B8: .4byte gBldRegs
_080AC8BC: .4byte 0x00003FFF
_080AC8C0: .4byte gCurTask
_080AC8C4: .4byte sub_80AC8F0
_080AC8C8:
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC8E8
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC8E8
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC8E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AC8F0
sub_80AC8F0: @ 0x080AC8F0
	push {r4, lr}
	ldr r0, _080AC914 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC91C
	ldr r0, _080AC918 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC928
	b _080AC980
	.align 2, 0
_080AC914: .4byte gCurTask
_080AC918: .4byte gLoadedSaveGame
_080AC91C:
	ldr r0, _080AC960 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC980
_080AC928:
	ldr r0, _080AC964 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC980
	ldr r1, _080AC968 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC96C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC970 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC974 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC978 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC97C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC9DC
	.align 2, 0
_080AC960: .4byte gLoadedSaveGame
_080AC964: .4byte gInput
_080AC968: .4byte 0x0000FFFF
_080AC96C: .4byte gBackgroundsCopyQueueCursor
_080AC970: .4byte gBackgroundsCopyQueueIndex
_080AC974: .4byte gBgSpritesCount
_080AC978: .4byte gVramGraphicsCopyCursor
_080AC97C: .4byte gVramGraphicsCopyQueueIndex
_080AC980:
	ldr r1, _080AC99C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bls _080AC9A4
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r4]
	bl sub_80AA554
	ldr r0, _080AC9A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AC9DC
	.align 2, 0
_080AC99C: .4byte gBldRegs
_080AC9A0: .4byte gCurTask
_080AC9A4:
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC9D6
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC9D6
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC9D6:
	adds r0, r4, #0
	bl sub_80ACBF0
_080AC9DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_62C_80AC9E4
TaskDestructor_62C_80AC9E4: @ 0x080AC9E4
	bx lr
	.align 2, 0

	thumb_func_start sub_80AC9E8
sub_80AC9E8: @ 0x080AC9E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACA6C @ =Task_130_80AC398
	movs r1, #0x98
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACA70 @ =TaskDestructor_130_80ACB48
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _080ACA74 @ =0x0300012C
	adds r0, r3, r2
	str r5, [r0]
	movs r5, #0
	strb r4, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r4, _080ACA78 @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x22]
	str r0, [r1, #0xc]
	str r5, [r1, #0x10]
	movs r2, #0
	ldr r0, _080ACA7C @ =0x03000014
	adds r4, r3, r0
	movs r6, #0
	adds r0, #4
	adds r3, r3, r0
	movs r5, #0x82
	lsls r5, r5, #8
_080ACA4A:
	lsls r1, r2, #3
	adds r0, r4, r1
	str r6, [r0]
	adds r1, r3, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x22
	bls _080ACA4A
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ACA6C: .4byte Task_130_80AC398
_080ACA70: .4byte TaskDestructor_130_80ACB48
_080ACA74: .4byte 0x0300012C
_080ACA78: .4byte strCredits_CreatedBy
_080ACA7C: .4byte 0x03000014

	thumb_func_start sub_80ACA80
sub_80ACA80: @ 0x080ACA80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r7, [sp, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACAE4 @ =Task_18_80ACB50
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ACAE8 @ =TaskDestructor_18_80ACB4C
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strb r4, [r1, #1]
	strb r5, [r1]
	str r6, [r1, #4]
	str r7, [r1, #8]
	ldr r3, _080ACAEC @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #0x14]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE4: .4byte Task_18_80ACB50
_080ACAE8: .4byte TaskDestructor_18_80ACB4C
_080ACAEC: .4byte strCredits_CreatedBy

	thumb_func_start sub_80ACAF0
sub_80ACAF0: @ 0x080ACAF0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACB3C @ =Task_294_80AC51C
	movs r1, #0xa5
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACB40 @ =TaskDestructor_294_80ACBA4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	strb r2, [r0, #1]
	strh r2, [r0, #4]
	movs r1, #0x1e
	strb r1, [r0, #2]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #8
	str r1, [r0, #0x10]
	strh r2, [r0, #6]
	ldr r1, _080ACB44 @ =0x06010000
	str r1, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB3C: .4byte Task_294_80AC51C
_080ACB40: .4byte TaskDestructor_294_80ACBA4
_080ACB44: .4byte 0x06010000

	thumb_func_start TaskDestructor_130_80ACB48
TaskDestructor_130_80ACB48: @ 0x080ACB48
	bx lr
	.align 2, 0

	thumb_func_start TaskDestructor_18_80ACB4C
TaskDestructor_18_80ACB4C: @ 0x080ACB4C
	bx lr
	.align 2, 0

	thumb_func_start Task_18_80ACB50
Task_18_80ACB50: @ 0x080ACB50
	push {r4, r5, lr}
	ldr r5, _080ACB98 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _080ACB9C @ =gUnknown_080DB864
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	ldr r1, _080ACBA0 @ =0x00001DFF
	cmp r0, r1
	bgt _080ACB92
	ldr r0, [r5]
	bl TaskDestroy
_080ACB92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB98: .4byte gCurTask
_080ACB9C: .4byte gUnknown_080DB864
_080ACBA0: .4byte 0x00001DFF
    
	thumb_func_start TaskDestructor_294_80ACBA4
TaskDestructor_294_80ACBA4: @ 0x080ACBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACBA8
sub_80ACBA8: @ 0x080ACBA8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #5
	cmp r0, r2
	ble _080ACBC0
	ldr r3, _080ACBC8 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	bgt _080ACBCC
_080ACBC0:
	str r2, [r1, #0x10]
	movs r0, #1
	b _080ACBCE
	.align 2, 0
_080ACBC8: .4byte 0xFFFFFE00
_080ACBCC:
	movs r0, #0
_080ACBCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ACBD4
sub_80ACBD4: @ 0x080ACBD4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80ACBF0
sub_80ACBF0: @ 0x080ACBF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080ACC32
	ldr r6, _080ACC38 @ =gUnknown_080DB958
	adds r7, r6, #1
_080ACC00:
	ldr r0, _080ACC3C @ =gUnknown_080DB97E
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	lsls r2, r4, #1
	adds r1, r2, r6
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080ACC00
_080ACC32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACC38: .4byte gUnknown_080DB958
_080ACC3C: .4byte gUnknown_080DB97E
.endif
