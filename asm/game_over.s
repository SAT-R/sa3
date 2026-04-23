.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80031C8
sub_80031C8: @ 0x080031C8
	push {r4, r5, r6, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080031DA
	bl sub_802613C
	b _08003264
_080031DA:
	ldr r6, _08003208 @ =gPlayers
	ldr r4, _0800320C @ =gStageData
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	ldrh r0, [r4, #0x3c]
	adds r5, r0, #0
	cmp r5, #0
	beq _08003210
	subs r0, #1
	strh r0, [r4, #0x3c]
	b _08003264
	.align 2, 0
_08003208: .4byte gPlayers
_0800320C: .4byte gStageData
_08003210:
	ldr r0, _0800326C @ =gUnknown_030010C0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08003264
	ldrb r0, [r4, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r6
	bl sub_8004CC8
	adds r4, #0x2b
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004CC8
	bl DestroyStageEntitiesManager
	bl sub_8051140
	ldr r1, _08003270 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08003274 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08003278 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800327C @ =gBgSpritesCount
	strb r5, [r0]
	ldr r1, _08003280 @ =gVramGraphicsCopyCursor
	ldr r0, _08003284 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl sub_809BFE8
_08003264:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800326C: .4byte gUnknown_030010C0
_08003270: .4byte 0x0000FFFF
_08003274: .4byte gBackgroundsCopyQueueCursor
_08003278: .4byte gBackgroundsCopyQueueIndex
_0800327C: .4byte gBgSpritesCount
_08003280: .4byte gVramGraphicsCopyCursor
_08003284: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_8003288
sub_8003288: @ 0x08003288
	push {r4, r5, r6, r7, lr}
	ldr r2, _080032C8 @ =gPlayers
	ldr r3, _080032CC @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	movs r0, #5
	strb r0, [r3, #4]
	ldrb r0, [r3, #6]
	mov ip, r3
	cmp r0, #0
	bne _080032DC
	ldr r2, _080032D0 @ =gMultiSioSend
	ldr r0, _080032D4 @ =0x0000600E
	strh r0, [r2]
	ldr r0, _080032D8 @ =gUnknown_03001060
	ldrb r0, [r0, #7]
	strb r0, [r2, #2]
	mov r0, ip
	adds r0, #0x8e
	ldrb r0, [r0]
	b _080032FE
	.align 2, 0
_080032C8: .4byte gPlayers
_080032CC: .4byte gStageData
_080032D0: .4byte gMultiSioSend
_080032D4: .4byte 0x0000600E
_080032D8: .4byte gUnknown_03001060
_080032DC:
	ldr r2, _0800338C @ =gMultiSioRecv
	ldrh r3, [r2]
	ldr r0, _08003390 @ =0x0000600E
	cmp r3, r0
	bne _08003300
	ldr r1, _08003394 @ =gUnknown_03001060
	ldrb r0, [r2, #2]
	strb r0, [r1, #7]
	ldrb r0, [r2, #3]
	mov r4, ip
	adds r4, #0x8e
	strb r0, [r4]
	ldr r2, _08003398 @ =gMultiSioSend
	strh r3, [r2]
	ldrb r0, [r1, #7]
	strb r0, [r2, #2]
	ldrb r0, [r4]
_080032FE:
	strb r0, [r2, #3]
_08003300:
	movs r2, #0
	ldr r0, _08003394 @ =gUnknown_03001060
	ldrb r5, [r0, #7]
	ldr r7, _08003390 @ =0x0000600E
	ldr r6, _0800339C @ =0x00006001
_0800330A:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	adds r1, r5, #0
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	beq _08003330
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _0800338C @ =gMultiSioRecv
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r7
	beq _08003330
	cmp r0, r6
	bne _08003386
_08003330:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800330A
	mov r2, ip
	adds r2, #0x8e
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08003358
	ldr r1, _080033A0 @ =gUnknown_03000970
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0x62
	bhi _08003358
	adds r0, #1
	strb r0, [r1, #1]
_08003358:
	ldr r0, _080033A4 @ =0x00000325
	bl m4aSongNumStart
	ldr r0, _080033A8 @ =gUnknown_030010C0
	movs r2, #0
	strh r2, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bl ScreenFadeUpdateValues
	ldr r1, _080033AC @ =gStageData
	movs r0, #0xf0
	strh r0, [r1, #0x2e]
	ldr r0, _080033B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080033B4 @ =sub_80033B8
	str r0, [r1, #8]
_08003386:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800338C: .4byte gMultiSioRecv
_08003390: .4byte 0x0000600E
_08003394: .4byte gUnknown_03001060
_08003398: .4byte gMultiSioSend
_0800339C: .4byte 0x00006001
_080033A0: .4byte gUnknown_03000970
_080033A4: .4byte 0x00000325
_080033A8: .4byte gUnknown_030010C0
_080033AC: .4byte gStageData
_080033B0: .4byte gCurTask
_080033B4: .4byte sub_80033B8

	thumb_func_start sub_80033B8
sub_80033B8: @ 0x080033B8
	push {lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080033CA
	bl sub_802613C
	b _08003410
_080033CA:
	ldr r2, _080033F4 @ =gPlayers
	ldr r3, _080033F8 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	ldrh r0, [r3, #0x2e]
	cmp r0, #0
	beq _080033FC
	subs r0, #1
	strh r0, [r3, #0x2e]
	b _08003410
	.align 2, 0
_080033F4: .4byte gPlayers
_080033F8: .4byte gStageData
_080033FC:
	ldr r0, _08003414 @ =gUnknown_030010C0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08003410
	ldr r0, _08003418 @ =sub_8028850
	movs r1, #0
	bl sub_8001D58
_08003410:
	pop {r0}
	bx r0
	.align 2, 0
_08003414: .4byte gUnknown_030010C0
_08003418: .4byte sub_8028850

	thumb_func_start sub_800341C
sub_800341C: @ 0x0800341C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r4, _080034A4 @ =gStageData
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	beq _08003432
	b _080035D4
_08003432:
	ldr r0, _080034A8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003472
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _08003446
	b _080035D4
_08003446:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003452
	b _080035D4
_08003452:
	ldr r2, _080034AC @ =gPlayers
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08003472
	b _080035D4
_08003472:
	ldrb r0, [r4, #3]
	cmp r0, #4
	bhi _080034CA
	ldrb r1, [r4, #0xa]
	cmp r1, #0xa
	bne _080034B4
	ldr r0, _080034B0 @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r1, [r1]
	ldrb r2, [r4, #9]
	asrs r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	bne _08003514
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _08003514
	movs r7, #2
	b _08003516
	.align 2, 0
_080034A4: .4byte gStageData
_080034A8: .4byte gPressedKeys
_080034AC: .4byte gPlayers
_080034B0: .4byte gLoadedSaveGame
_080034B4:
	ldrb r0, [r4, #9]
	cmp r0, #6
	bhi _080034CA
	cmp r1, #8
	beq _080034CA
	cmp r1, #9
	beq _080034CA
	cmp r1, #1
	beq _080034CA
	cmp r1, #2
	bne _080034D4
_080034CA:
	movs r7, #2
	ldr r2, _080034D0 @ =gLoadedSaveGame
	b _08003516
	.align 2, 0
_080034D0: .4byte gLoadedSaveGame
_080034D4:
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	mov r5, sp
	adds r5, #5
	add r1, sp, #4
	adds r2, r5, #0
	bl GetZoneAndActTypeFromStageID
	ldrb r0, [r4, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080034FC
	movs r7, #1
	ldr r2, _080034F8 @ =gLoadedSaveGame
	b _08003516
	.align 2, 0
_080034F8: .4byte gLoadedSaveGame
_080034FC:
	ldr r2, _080035E0 @ =gLoadedSaveGame
	add r1, sp, #4
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r5]
	ands r0, r1
	movs r7, #2
	cmp r0, #0
	beq _08003516
_08003514:
	movs r7, #0
_08003516:
	ldr r5, _080035E4 @ =gUnknown_080CE54C
	ldr r0, _080035E8 @ =0x00000366
	adds r6, r2, r0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	lsls r4, r7, #3
	adds r4, r4, r7
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	ldrh r0, [r0]
	bl VramMalloc
	mov r8, r0
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r0, r5, #2
	adds r0, r1, r0
	ldrh r6, [r0]
	adds r5, #4
	adds r1, r1, r5
	ldrb r5, [r1]
	ldr r0, _080035EC @ =ewram_end
	ldr r0, [r0]
	cmp r8, r0
	beq _080035D4
	ldr r0, _080035F0 @ =Task_38_8003620
	ldr r2, _080035F4 @ =0x0000FFFE
	ldr r1, _080035F8 @ =TaskDestructor_8003D68
	str r1, [sp]
	movs r1, #0x38
	movs r3, #4
	bl TaskCreate
	ldr r1, _080035FC @ =gStageData
	adds r1, #0xa0
	str r0, [r1]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	movs r3, #0
	strb r3, [r1]
	strb r7, [r1, #1]
	ldr r0, _08003600 @ =gInput
	ldrh r2, [r0]
	movs r0, #3
	ands r0, r2
	movs r2, #0
	strh r0, [r1, #2]
	ldr r1, _08003604 @ =0x03000010
	adds r0, r4, r1
	mov r1, r8
	str r1, [r0]
	str r3, [r0, #8]
	strh r6, [r0, #0xc]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	ldr r1, _08003608 @ =0x0000FFFF
	strh r1, [r0, #0x18]
	strb r5, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r0, _0800360C @ =0x040000D4
	ldr r2, _08003610 @ =gObjPalette + 0x1F2
	str r2, [r0]
	ldr r3, _08003614 @ =0x03000004
	adds r1, r4, r3
	str r1, [r0, #4]
	ldr r1, _08003618 @ =0x80000003
	str r1, [r0, #8]
	ldr r3, [r0, #8]
	adds r2, #6
	str r2, [r0]
	ldr r2, _0800361C @ =0x0300000A
	adds r4, r4, r2
	str r4, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_080035D4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080035E0: .4byte gLoadedSaveGame
_080035E4: .4byte gUnknown_080CE54C
_080035E8: .4byte 0x00000366
_080035EC: .4byte ewram_end
_080035F0: .4byte Task_38_8003620
_080035F4: .4byte 0x0000FFFE
_080035F8: .4byte TaskDestructor_8003D68
_080035FC: .4byte gStageData
_08003600: .4byte gInput
_08003604: .4byte 0x03000010
_08003608: .4byte 0x0000FFFF
_0800360C: .4byte 0x040000D4
_08003610: .4byte gObjPalette + 0x1F2
_08003614: .4byte 0x03000004
_08003618: .4byte 0x80000003
_0800361C: .4byte 0x0300000A

	thumb_func_start Task_38_8003620
Task_38_8003620: @ 0x08003620
	push {r4, r5, lr}
	ldr r0, _08003678 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0]
	movs r0, #0
	ldr r5, _0800367C @ =gMPlayTable
_08003632:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl MPlayStop
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003632
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r1, _08003680 @ =gStageData
	adds r2, r1, #0
	adds r2, #0xb9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800366A
	movs r0, #1
	ldrb r1, [r1, #6]
	lsls r0, r1
	strb r0, [r2]
_0800366A:
	ldr r0, _08003684 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08003688 @ =sub_800368C
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003678: .4byte gFlags
_0800367C: .4byte gMPlayTable
_08003680: .4byte gStageData
_08003684: .4byte gCurTask
_08003688: .4byte sub_800368C

	thumb_func_start sub_800368C
sub_800368C: @ 0x0800368C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080036F8 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r0, r0, r1
	mov r8, r0
	movs r6, #0
	ldr r5, _080036FC @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #4
	bls _0800370C
	bl sub_8026720
	bl sub_80264F0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080036C4
	b _08003A08
_080036C4:
	cmp r1, #1
	beq _080036CE
	ldrb r0, [r5, #4]
	cmp r0, #3
	beq _0800370C
_080036CE:
	ldr r2, _08003700 @ =gFlags
	ldr r0, [r2]
	ldr r1, _08003704 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [r0]
	adds r0, #0x19
	strb r6, [r0]
	ldr r0, _08003708 @ =gMPlayTable
	ldr r0, [r0]
	bl m4aMPlayContinue
	movs r0, #0x8e
	bl MPlayStop
	ldr r0, [r7]
	bl TaskDestroy
	b _08003A08
	.align 2, 0
_080036F8: .4byte gCurTask
_080036FC: .4byte gStageData
_08003700: .4byte gFlags
_08003704: .4byte 0xFFFFFBFF
_08003708: .4byte gMPlayTable
_0800370C:
	ldrb r0, [r4, #1]
	cmp r0, #2
	beq _080037AE
	ldr r0, _0800374C @ =gReleasedKeys
	ldrh r2, [r4, #2]
	ldrh r1, [r0]
	adds r3, r1, #0
	eors r3, r2
	movs r0, #3
	ands r0, r1
	ands r3, r0
	ldr r0, _08003750 @ =gInput
	ldrh r0, [r0]
	ands r0, r2
	strh r0, [r4, #2]
	ldr r0, _08003754 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0800373E
	ldrb r0, [r4]
	movs r1, #1
	eors r0, r1
	strb r0, [r4]
_0800373E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08003760
	ldr r5, _08003758 @ =0x050003F2
	ldr r2, _0800375C @ =0x050003F8
	b _08003764
	.align 2, 0
_0800374C: .4byte gReleasedKeys
_08003750: .4byte gInput
_08003754: .4byte gPressedKeys
_08003758: .4byte 0x050003F2
_0800375C: .4byte 0x050003F8
_08003760:
	ldr r2, _0800378C @ =0x050003F2
	ldr r5, _08003790 @ =0x050003F8
_08003764:
	ldr r0, _08003794 @ =0x040000D4
	adds r1, r4, #0
	adds r1, #0xa
	str r1, [r0]
	str r2, [r0, #4]
	ldr r2, _08003798 @ =0x80000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r4, #4
	str r1, [r0]
	str r5, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800379C
	movs r6, #1
	b _080037AE
	.align 2, 0
_0800378C: .4byte 0x050003F2
_08003790: .4byte 0x050003F8
_08003794: .4byte 0x040000D4
_08003798: .4byte 0x80000003
_0800379C:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _080037AE
	ldrb r0, [r4]
	movs r6, #1
	cmp r0, #0
	beq _080037AE
	movs r6, #2
_080037AE:
	ldr r4, _080037E0 @ =gStageData
	ldrb r0, [r4, #3]
	adds r7, r4, #0
	cmp r0, #4
	bls _08003874
	movs r5, #0
	adds r3, r4, #0
	adds r3, #0xb9
	ldrb r1, [r3]
	movs r0, #1
	ldrb r4, [r4, #6]
	lsls r0, r4
	cmp r1, r0
	bne _080037EC
	ldr r0, _080037E4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	ldr r1, _080037E8 @ =gPlayers
	mov ip, r1
	b _08003820
	.align 2, 0
_080037E0: .4byte gStageData
_080037E4: .4byte gPressedKeys
_080037E8: .4byte gPlayers
_080037EC:
	movs r2, #0
	ldr r6, _08003860 @ =gMultiSioRecv
	ldr r0, _08003864 @ =gPlayers
	mov ip, r0
	cmp r1, #1
	beq _0800380E
	movs r4, #1
_080037FA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800380E
	ldrb r1, [r3]
	adds r0, r4, #0
	lsls r0, r2
	cmp r1, r0
	bne _080037FA
_0800380E:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _08003868 @ =0x000068D0
	cmp r1, r0
	beq _08003820
	movs r5, #1
_08003820:
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08003840
	movs r5, #1
_08003840:
	cmp r5, #0
	bne _08003846
	b _080039FC
_08003846:
	ldr r2, _0800386C @ =gFlags
	ldr r0, [r2]
	ldr r1, _08003870 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	str r1, [r0]
	adds r0, #0x19
	strb r1, [r0]
	b _0800389A
	.align 2, 0
_08003860: .4byte gMultiSioRecv
_08003864: .4byte gPlayers
_08003868: .4byte 0x000068D0
_0800386C: .4byte gFlags
_08003870: .4byte 0xFFFFFBFF
_08003874:
	ldr r0, _080038B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08003888
	cmp r6, #1
	bne _080038C8
_08003888:
	ldr r2, _080038B8 @ =gFlags
	ldr r0, [r2]
	ldr r1, _080038BC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0
	str r0, [r1]
_0800389A:
	ldr r0, _080038C0 @ =gMPlayTable
	ldr r0, [r0]
	bl m4aMPlayContinue
	movs r0, #0x8e
	bl MPlayStop
	ldr r0, _080038C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08003A08
	.align 2, 0
_080038B4: .4byte gPressedKeys
_080038B8: .4byte gFlags
_080038BC: .4byte 0xFFFFFBFF
_080038C0: .4byte gMPlayTable
_080038C4: .4byte gCurTask
_080038C8:
	cmp r6, #2
	beq _080038CE
	b _080039FC
_080038CE:
	ldr r2, _08003908 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0800390C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _08003928
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08003950
	ldr r1, _08003910 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08003914 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08003918 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800391C @ =gBgSpritesCount
	strb r5, [r0]
	ldr r1, _08003920 @ =gVramGraphicsCopyCursor
	ldr r0, _08003924 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	b _080039F4
	.align 2, 0
_08003908: .4byte gFlags
_0800390C: .4byte 0xFFFFFBFF
_08003910: .4byte 0x0000FFFF
_08003914: .4byte gBackgroundsCopyQueueCursor
_08003918: .4byte gBackgroundsCopyQueueIndex
_0800391C: .4byte gBgSpritesCount
_08003920: .4byte gVramGraphicsCopyCursor
_08003924: .4byte gVramGraphicsCopyQueueIndex
_08003928:
	ldrb r0, [r4, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r1, _08003984 @ =gPlayers
	adds r4, r4, r1
	bl sub_8004CC8
	adds r4, #0x2b
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004CC8
	bl DestroyStageEntitiesManager
	bl sub_8051140
_08003950:
	bl sub_8001E58
	ldr r1, _08003988 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800398C @ =gBackgroundsCopyQueueCursor
	ldr r0, _08003990 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08003994 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08003998 @ =gVramGraphicsCopyCursor
	ldr r0, _0800399C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080039A0 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #3
	bne _080039A4
	movs r0, #0
	movs r1, #2
	bl CreateMainMenu
	b _08003A08
	.align 2, 0
_08003984: .4byte gPlayers
_08003988: .4byte 0x0000FFFF
_0800398C: .4byte gBackgroundsCopyQueueCursor
_08003990: .4byte gBackgroundsCopyQueueIndex
_08003994: .4byte gBgSpritesCount
_08003998: .4byte gVramGraphicsCopyCursor
_0800399C: .4byte gVramGraphicsCopyQueueIndex
_080039A0: .4byte gStageData
_080039A4:
	cmp r0, #4
	bne _080039B2
	movs r0, #0
	movs r1, #3
	bl CreateMainMenu
	b _08003A08
_080039B2:
	ldrb r0, [r2, #9]
	cmp r0, #6
	bhi _080039F4
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bls _080039F4
	cmp r0, #0xa
	bne _080039DA
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #4
	bl WarpToMap
	b _08003A08
_080039DA:
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrb r1, [r2, #0xa]
	subs r1, #2
	bl WarpToMap
	b _08003A08
_080039F4:
	movs r0, #1
	bl sub_808ADF0
	b _08003A08
_080039FC:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_08003A08:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
