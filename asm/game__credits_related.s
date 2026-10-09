.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else

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
	bl CreateCreditsRelated48_C
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
	bl CreateCreditsRelated48_C
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
	bl CreateCreditsRelated48_C
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
	bl CreateCreditsRelated48_C
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
	bl CreateCreditsRelated48_C
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
