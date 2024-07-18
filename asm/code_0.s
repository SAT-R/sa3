.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start GameStart
GameStart: @ 0x080001CC
	push {lr}
	ldr r0, _080001E4 @ =gTilemapsRef
	movs r1, #0x80
	lsls r1, r1, #0x18
	str r1, [r0]
	ldr r0, _080001E8 @ =gRefSpriteTables
	str r1, [r0]
	bl sub_80001EC
	pop {r0}
	bx r0
	.align 2, 0
_080001E4: .4byte gTilemapsRef
_080001E8: .4byte gRefSpriteTables

	thumb_func_start sub_80001EC
sub_80001EC: @ 0x080001EC
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_80003B8
	ldr r0, _08000238 @ =gStageData
	movs r5, #0
	strb r5, [r0, #7]
	adds r2, r0, #0
	adds r2, #0xae
	movs r1, #0
	strh r5, [r2]
	str r5, [r0, #0x1c]
	strb r1, [r0, #8]
	ldr r0, _0800023C @ =gUnknown_03001CFC
	str r5, [r0]
	ldr r1, _08000240 @ =gVramHeapMaxTileSlots
	ldr r2, _08000244 @ =0x06014D80
	movs r0, #0xca
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, _08000248 @ =gUnknown_03002C50
	str r2, [r0]
	movs r0, #0
	bl sub_8001DDC
	ldr r0, _0800024C @ =gFlags
	ldr r4, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r4, r6
	cmp r4, #0
	beq _08000254
	bl sub_8001E48
	ldr r0, _08000250 @ =sub_8000284
	str r5, [sp]
	b _08000266
	.align 2, 0
_08000238: .4byte gStageData
_0800023C: .4byte gUnknown_03001CFC
_08000240: .4byte gVramHeapMaxTileSlots
_08000244: .4byte 0x06014D80
_08000248: .4byte gUnknown_03002C50
_0800024C: .4byte gFlags
_08000250: .4byte sub_8000284
_08000254:
	bl sub_8001E94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08000278
	bl sub_8001E84
	ldr r0, _08000274 @ =sub_8000284
	str r4, [sp]
_08000266:
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	b _0800027C
	.align 2, 0
_08000274: .4byte sub_8000284
_08000278:
	bl sub_8000390
_0800027C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8000284
sub_8000284: @ 0x08000284
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r3, _080002E0 @ =0x040000D4
	mov r0, sp
	str r0, [r3]
	ldr r0, _080002E4 @ =gUnknown_030035C0
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080002E8 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _080002EC @ =gUnknown_03006230
	strb r2, [r0, #2]
	ldr r1, _080002F0 @ =gUnknown_03003590
	strb r2, [r1, #8]
	strb r2, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _080002F4 @ =gUnknown_03003C10
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _080002F8 @ =gStageData
	str r2, [r0, #0x1c]
	bl sub_80003B8
	movs r0, #1
	bl sub_80A209C
	ldr r0, _080002FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080002E0: .4byte 0x040000D4
_080002E4: .4byte gUnknown_030035C0
_080002E8: .4byte 0x85000010
_080002EC: .4byte gUnknown_03006230
_080002F0: .4byte gUnknown_03003590
_080002F4: .4byte gUnknown_03003C10
_080002F8: .4byte gStageData
_080002FC: .4byte gCurTask

	thumb_func_start LaunchGameIntro
LaunchGameIntro: @ 0x08000300
	push {lr}
	bl sub_80003B8
	movs r0, #1
	bl sub_80A209C
	pop {r0}
	bx r0

	thumb_func_start LaunchDemoPlay
LaunchDemoPlay: @ 0x08000310
	push {lr}
	bl sub_8052D8C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start LaunchTitleScreen
LaunchTitleScreen: @ 0x0800031C
	push {lr}
	bl sub_80003B8
	movs r0, #1
	bl sub_808ADF0
	pop {r0}
	bx r0

	thumb_func_start LaunchChaoMenu
LaunchChaoMenu: @ 0x0800032C
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_808723C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000340
sub_8000340: @ 0x08000340
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80003B8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_808ECB8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start LaunchOptionsMenu
LaunchOptionsMenu: @ 0x0800035C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80003B8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_808AF44
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8000378
sub_8000378: @ 0x08000378
	push {lr}
	bl sub_80003B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000384
sub_8000384: @ 0x08000384
	push {lr}
	bl sub_80003B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000390
sub_8000390: @ 0x08000390
	push {lr}
	bl sub_80003B8
	ldr r1, _080003A8 @ =0x06010000
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_808FBB4
	pop {r0}
	bx r0
	.align 2, 0
_080003A8: .4byte 0x06010000

	thumb_func_start sub_80003AC
sub_80003AC: @ 0x080003AC
	push {lr}
	bl sub_80003B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80003B8
sub_80003B8: @ 0x080003B8
	ldr r1, _080003EC @ =gDispCnt
	movs r2, #0xa2
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080003F0 @ =gUnknown_030035C0
	ldr r0, _080003F4 @ =0x00001E01
	strh r0, [r1, #4]
	ldr r1, _080003F8 @ =gTilemapsRef
	ldr r0, _080003FC @ =gUnknown_080D09AC
	str r0, [r1]
	ldr r1, _08000400 @ =gRefSpriteTables
	ldr r0, _08000404 @ =gSpriteTables
	str r0, [r1]
	ldr r1, _08000408 @ =gUnknown_03003D30
	ldr r0, _0800040C @ =0x00007FFF
	strh r0, [r1, #2]
	movs r0, #0xf8
	lsls r0, r0, #2
	strh r0, [r1, #0x22]
	ldr r2, _08000410 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_080003EC: .4byte gDispCnt
_080003F0: .4byte gUnknown_030035C0
_080003F4: .4byte 0x00001E01
_080003F8: .4byte gTilemapsRef
_080003FC: .4byte gUnknown_080D09AC
_08000400: .4byte gRefSpriteTables
_08000404: .4byte gSpriteTables
_08000408: .4byte gUnknown_03003D30
_0800040C: .4byte 0x00007FFF
_08000410: .4byte gFlags

	thumb_func_start sub_8000414
sub_8000414: @ 0x08000414
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	ldr r1, _08000478 @ =gStageData
	adds r1, #0xae
	ldrh r6, [r1]
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sp
	adds r4, #1
	mov r1, sp
	adds r2, r4, #0
	bl GetZoneAndActTypeFromStageID
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800052C
	ldr r3, _0800047C @ =gSaveGame
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0x29
	ldrb r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #8
	bne _08000490
	ldrb r0, [r3, #0x11]
	mov r1, sp
	ldrb r1, [r1]
	adds r1, #2
	cmp r0, r1
	bge _08000490
	strb r1, [r3, #0x11]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0800046A
	movs r0, #9
	strb r0, [r3, #0x11]
_0800046A:
	ldrb r2, [r3, #0x12]
	ldrb r0, [r3, #0x11]
	subs r1, r0, #2
	cmp r1, #6
	ble _08000480
	movs r0, #0
	b _0800048E
	.align 2, 0
_08000478: .4byte gStageData
_0800047C: .4byte gSaveGame
_08000480:
	cmp r1, #5
	ble _08000488
	movs r0, #6
	b _0800048E
_08000488:
	cmp r1, r2
	blt _08000490
	adds r0, #0xff
_0800048E:
	strb r0, [r3, #0x12]
_08000490:
	ldrb r2, [r4]
	cmp r2, #2
	beq _080004AE
	cmp r2, #2
	bgt _080004A0
	cmp r2, #1
	beq _080004AA
	b _080004BA
_080004A0:
	cmp r2, #4
	beq _080004B2
	cmp r2, #8
	beq _080004B6
	b _080004BA
_080004AA:
	movs r5, #0
	b _080004BC
_080004AE:
	movs r5, #1
	b _080004BC
_080004B2:
	movs r5, #2
	b _080004BC
_080004B6:
	movs r5, #3
	b _080004BC
_080004BA:
	movs r5, #0xff
_080004BC:
	cmp r5, #0xff
	beq _0800050A
	ldr r2, _080004D0 @ =gUnknown_080D1A40
	lsls r1, r7, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r6, r0
	bhi _080004D4
	movs r4, #0
	b _080004E2
	.align 2, 0
_080004D0: .4byte gUnknown_080D1A40
_080004D4:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r4, #2
	ldrh r0, [r0]
	cmp r6, r0
	bhi _080004E2
	movs r4, #1
_080004E2:
	ldr r0, _08000534 @ =gStageData
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080004EE
	movs r4, #2
_080004EE:
	mov r0, sp
	ldrb r2, [r0]
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r0, r3, #0
	adds r0, #0x37
	adds r2, r2, r0
	movs r1, #2
	subs r1, r1, r4
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0800050A:
	movs r0, #0x3c
	bl sub_802616C
	ldr r1, _08000534 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0800051E
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0800052C
_0800051E:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800052C
	bl sub_8001FD4
_0800052C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000534: .4byte gStageData

	thumb_func_start sub_8000538
sub_8000538: @ 0x08000538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	ldr r1, _08000578 @ =gStageData
	adds r1, #0xae
	ldrh r1, [r1]
	str r1, [sp, #4]
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sp
	adds r4, #1
	mov r1, sp
	adds r2, r4, #0
	bl GetZoneAndActTypeFromStageID
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08000566
	b _08000752
_08000566:
	ldrb r2, [r4]
	cmp r2, #2
	beq _0800058A
	cmp r2, #2
	bgt _0800057C
	cmp r2, #1
	beq _08000586
	b _08000596
	.align 2, 0
_08000578: .4byte gStageData
_0800057C:
	cmp r2, #4
	beq _0800058E
	cmp r2, #8
	beq _08000592
	b _08000596
_08000586:
	movs r5, #0
	b _08000598
_0800058A:
	movs r5, #1
	b _08000598
_0800058E:
	movs r5, #2
	b _08000598
_08000592:
	movs r5, #3
	b _08000598
_08000596:
	movs r5, #0xff
_08000598:
	cmp r5, #0xff
	beq _080005E0
	ldr r2, _080005B0 @ =gUnknown_080D1A40
	lsls r1, r6, #2
	adds r0, r1, r2
	ldr r3, [sp, #4]
	ldrh r0, [r0]
	cmp r3, r0
	bhi _080005B4
	movs r3, #0
	b _080005C4
	.align 2, 0
_080005B0: .4byte gUnknown_080D1A40
_080005B4:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r3, #2
	ldr r4, [sp, #4]
	ldrh r0, [r0]
	cmp r4, r0
	bhi _080005C4
	movs r3, #1
_080005C4:
	ldr r1, _08000718 @ =gSaveGame
	mov r0, sp
	ldrb r2, [r0]
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r1, #0x37
	adds r2, r2, r1
	movs r1, #2
	subs r1, r1, r3
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_080005E0:
	movs r6, #0
	lsls r3, r5, #2
	adds r0, r3, r5
	lsls r0, r0, #2
	str r0, [sp, #8]
	mov r8, sp
	ldr r7, _0800071C @ =gPlayers
	str r7, [sp, #0x10]
	ldr r4, _08000718 @ =gSaveGame
_080005F2:
	lsls r1, r6, #2
	ldr r0, [sp, #8]
	adds r1, r1, r0
	mov r7, r8
	ldrb r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08000718 @ =gSaveGame
	adds r1, r1, r0
	movs r7, #0x97
	lsls r7, r7, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	ldr r1, [sp, #4]
	cmp r0, r1
	bhi _08000618
	b _08000724
_08000618:
	str r6, [sp, #0xc]
	movs r7, #0
	mov ip, r7
	cmp r6, #3
	bhi _080006AE
	adds r0, r3, r5
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	mov r5, sp
	movs r0, #0x96
	lsls r0, r0, #1
	mov sl, r0
	ldr r1, _08000720 @ =0x0000012D
	mov sb, r1
_08000634:
	movs r3, #4
	mov r7, ip
	subs r3, r3, r7
	lsls r3, r3, #2
	ldr r0, [sp, #0x14]
	adds r3, r3, r0
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r3, r0
	adds r1, r1, r4
	movs r2, #3
	subs r2, r2, r7
	lsls r2, r2, #2
	ldr r7, [sp, #0x14]
	adds r2, r2, r7
	adds r0, r2, r0
	adds r0, r0, r4
	add r0, sl
	ldrb r0, [r0]
	add r1, sl
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r3, r0
	adds r1, r1, r4
	adds r0, r2, r0
	adds r0, r0, r4
	add r0, sb
	ldrb r0, [r0]
	add r1, sb
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r3, r3, r4
	adds r2, r2, r0
	adds r2, r2, r4
	movs r0, #0x97
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r3, r3, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r6, #3
	bls _08000634
_080006AE:
	ldr r3, [sp, #0xc]
	lsls r2, r3, #2
	ldr r4, [sp, #8]
	adds r2, r2, r4
	mov r7, r8
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, _08000718 @ =gSaveGame
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r2, r1
	ldr r4, _08000718 @ =gSaveGame
	adds r1, r1, r4
	ldr r7, [sp, #0x10]
	adds r3, #0x4e
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, _08000720 @ =0x0000012D
	adds r1, r1, r4
	strb r0, [r1]
	mov r7, r8
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r2, r0
	ldr r0, _08000718 @ =gSaveGame
	adds r2, r2, r0
	movs r1, #0x97
	lsls r1, r1, #1
	adds r2, r2, r1
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r2]
	b _08000730
	.align 2, 0
_08000718: .4byte gSaveGame
_0800071C: .4byte gPlayers
_08000720: .4byte 0x0000012D
_08000724:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bhi _08000730
	b _080005F2
_08000730:
	movs r0, #0x3c
	bl sub_802616C
	ldr r1, _08000764 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08000744
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08000752
_08000744:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08000752
	bl sub_8001FD4
_08000752:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000764: .4byte gStageData

@ TODO(Jace): Find better name?
	thumb_func_start GetZoneAndActTypeFromStageID
GetZoneAndActTypeFromStageID: @ 0x08000768
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x47
	bne _0800077E
	movs r0, #7
	strb r0, [r6]
	movs r0, #8
	b _080007F6
_0800077E:
	cmp r0, #0x48
	bne _08000788
	movs r0, #8
	strb r0, [r6]
	b _080007F6
_08000788:
	subs r4, r0, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080007FC
	lsls r0, r0, #2
	ldr r1, _080007B0 @ =_080007B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080007B0: .4byte _080007B4
_080007B4: @ jump table
	.4byte _080007FC @ case 0
	.4byte _080007FC @ case 1
	.4byte _080007DC @ case 2
	.4byte _080007E0 @ case 3
	.4byte _080007E4 @ case 4
	.4byte _080007FC @ case 5
	.4byte _080007E8 @ case 6
	.4byte _080007EC @ case 7
	.4byte _080007F0 @ case 8
	.4byte _080007F4 @ case 9
_080007DC:
	movs r0, #1
	b _080007F6
_080007E0:
	movs r0, #2
	b _080007F6
_080007E4:
	movs r0, #4
	b _080007F6
_080007E8:
	movs r0, #8
	b _080007F6
_080007EC:
	movs r0, #0x10
	b _080007F6
_080007F0:
	movs r0, #0x20
	b _080007F6
_080007F4:
	movs r0, #0x40
_080007F6:
	strb r0, [r5]
	movs r0, #1
	b _080007FE
_080007FC:
	movs r0, #0
_080007FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8000804
sub_8000804: @ 0x08000804
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08000820 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb8
	ldrb r1, [r0]
	cmp r1, #1
	beq _08000832
	cmp r1, #1
	bgt _08000824
	cmp r1, #0
	beq _0800082A
	b _0800090C
	.align 2, 0
_08000820: .4byte gStageData
_08000824:
	cmp r1, #2
	beq _0800083A
	b _0800090C
_0800082A:
	ldrb r0, [r2, #6]
	movs r4, #1
	ands r4, r0
	b _0800083C
_08000832:
	ldrb r0, [r2, #6]
	adds r4, r1, #0
	bics r4, r0
	b _0800083C
_0800083A:
	movs r4, #2
_0800083C:
	cmp r4, #1
	beq _0800085C
	cmp r4, #1
	bgt _0800084A
	cmp r4, #0
	beq _08000850
	b _0800090C
_0800084A:
	cmp r4, #2
	beq _08000868
	b _0800090C
_08000850:
	ldr r0, _08000858 @ =gSaveGame
	adds r1, r0, #0
	adds r1, #0x60
	b _0800086E
	.align 2, 0
_08000858: .4byte gSaveGame
_0800085C:
	ldr r0, _08000864 @ =gSaveGame
	adds r1, r0, #0
	adds r1, #0x61
	b _0800086E
	.align 2, 0
_08000864: .4byte gSaveGame
_08000868:
	ldr r0, _080008CC @ =gSaveGame
	adds r1, r0, #0
	adds r1, #0x62
_0800086E:
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _08000878
	adds r0, #1
	strb r0, [r1]
_08000878:
	movs r1, #3
	ldr r5, _080008D0 @ =gUnknown_03001060
	movs r7, #1
	movs r0, #0x1c
	adds r0, r0, r5
	mov r8, r0
_08000884:
	ldrb r0, [r5, #7]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r7
	adds r6, r1, #0
	cmp r0, #0
	beq _08000900
	ldr r0, _080008D4 @ =gStageData
	ldrb r0, [r0, #6]
	adds r1, r7, #0
	ands r1, r0
	adds r0, r2, #0
	ands r0, r7
	cmp r1, r0
	beq _08000900
	lsls r0, r2, #2
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	bl sub_8001C30
	adds r1, r0, #0
	cmp r4, #1
	beq _080008EA
	cmp r4, #1
	bgt _080008D8
	cmp r4, #0
	beq _080008DE
	b _08000900
	.align 2, 0
_080008CC: .4byte gSaveGame
_080008D0: .4byte gUnknown_03001060
_080008D4: .4byte gStageData
_080008D8:
	cmp r4, #2
	beq _080008F6
	b _08000900
_080008DE:
	ldrb r0, [r1, #0x12]
	cmp r0, #0x62
	bhi _08000900
	adds r0, #1
	strb r0, [r1, #0x12]
	b _08000900
_080008EA:
	ldrb r0, [r1, #0x11]
	cmp r0, #0x62
	bhi _08000900
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08000900
_080008F6:
	ldrb r0, [r1, #0x13]
	cmp r0, #0x62
	bhi _08000900
	adds r0, #1
	strb r0, [r1, #0x13]
_08000900:
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r6, r1
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08000884
_0800090C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000918
sub_8000918: @ 0x08000918
	push {r4, lr}
	ldr r4, _08000954 @ =gCurTask
	bl VramResetHeapState
	bl EwramInitHeap
	ldr r1, _08000958 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0800095C @ =gUnknown_030035C0
	movs r2, #0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, _08000960 @ =0x00000F04
	strh r0, [r1, #2]
	ldr r0, _08000964 @ =0x00001708
	strh r0, [r1, #4]
	ldr r0, _08000968 @ =0x00001F0C
	strh r0, [r1, #6]
	ldr r0, _0800096C @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldr r1, [r4]
	ldr r0, _08000970 @ =sub_8001FB0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000954: .4byte gCurTask
_08000958: .4byte gDispCnt
_0800095C: .4byte gUnknown_030035C0
_08000960: .4byte 0x00000F04
_08000964: .4byte 0x00001708
_08000968: .4byte 0x00001F0C
_0800096C: .4byte gBldRegs
_08000970: .4byte sub_8001FB0

	thumb_func_start sub_8000974
sub_8000974: @ 0x08000974
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov ip, r0
	mov r4, ip
	stm r4!, {r1}
	movs r3, #0
	ldr r0, _08000B54 @ =0x0000FFFF
	adds r5, r0, #0
_0800098C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r4, r2
	ldrh r1, [r2]
	orrs r1, r5
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0800098C
	movs r0, #0
	movs r1, #5
	mov r2, ip
	strb r1, [r2, #0x10]
	movs r1, #1
	strb r1, [r2, #0x11]
	strb r0, [r2, #0x12]
	movs r3, #0
	mov r5, ip
	adds r5, #0x22
	mov r6, ip
	adds r6, #0x29
	mov r7, ip
	adds r7, #0x32
	movs r0, #0x33
	add r0, ip
	mov r8, r0
	movs r1, #0x36
	add r1, ip
	mov sb, r1
	movs r2, #0x5b
	add r2, ip
	mov sl, r2
	mov r0, ip
	adds r0, #0x5c
	str r0, [sp, #4]
	mov r1, ip
	adds r1, #0x5d
	str r1, [sp, #8]
	mov r2, ip
	adds r2, #0x60
	str r2, [sp, #0xc]
	adds r0, #5
	str r0, [sp, #0x10]
	adds r1, #5
	str r1, [sp, #0x14]
	subs r2, #0x29
	str r2, [sp]
	subs r2, #0x23
	movs r4, #0
_080009F6:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r4, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _080009F6
	movs r3, #0
	adds r2, r5, #0
	movs r4, #0
_08000A12:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08000A12
	movs r3, #0
	adds r2, r6, #0
	movs r4, #0
_08000A2C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08000A2C
	movs r0, #0
	strb r0, [r7]
	mov r3, r8
	strb r0, [r3]
	movs r1, #0
	mov r2, ip
	strh r0, [r2, #0x34]
	movs r0, #2
	mov r3, sb
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	ldr r2, [sp, #4]
	strb r1, [r2]
	ldr r3, [sp, #8]
	strb r1, [r3]
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	ldr r2, [sp, #0x10]
	strb r1, [r2]
	ldr r3, [sp, #0x14]
	strb r1, [r3]
	ldr r2, _08000B58 @ =gUnknown_03000594
	movs r3, #0
	movs r4, #0
_08000A72:
	strb r4, [r2, #0x10]
	strb r4, [r2, #0x11]
	strb r4, [r2, #0x12]
	strb r4, [r2, #0x13]
	adds r0, r2, #0
	stm r0!, {r4}
	movs r1, #0
	adds r5, r2, #0
	adds r5, #0x14
	adds r2, r0, #0
_08000A86:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r2, r1
	strh r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _08000A86
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, r5, #0
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08000A72
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0
	movs r2, #0xff
	ldr r4, _08000B5C @ =0x00008CA0
_08000ABA:
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orrs r0, r2
	strb r0, [r1, #1]
	strh r4, [r1, #2]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, #4
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8b
	ble _08000ABA
	movs r3, #0
	ldr r4, [sp]
	movs r5, #0
_08000AE0:
	movs r1, #0
	lsls r3, r3, #0x10
	asrs r2, r3, #0xe
_08000AE6:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r2
	adds r1, r4, r1
	strb r5, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08000AE6
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08000AE0
	movs r1, #0xd7
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r3, #1
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08000B60 @ =0x0000035E
	add r1, ip
	movs r0, #2
	strh r0, [r1]
	movs r1, #0xd8
	lsls r1, r1, #2
	add r1, ip
	adds r0, #0xfe
	strh r0, [r1]
	movs r0, #0xd9
	lsls r0, r0, #2
	add r0, ip
	strb r2, [r0]
	ldr r0, _08000B64 @ =0x00000365
	add r0, ip
	strb r2, [r0]
	ldr r0, _08000B68 @ =0x00000366
	add r0, ip
	strb r3, [r0]
	mov r0, ip
	bl sub_8000D68
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000B54: .4byte 0x0000FFFF
_08000B58: .4byte gUnknown_03000594
_08000B5C: .4byte 0x00008CA0
_08000B60: .4byte 0x0000035E
_08000B64: .4byte 0x00000365
_08000B68: .4byte 0x00000366

	thumb_func_start sub_8000B6C
sub_8000B6C: @ 0x08000B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov ip, r0
	movs r0, #0
	mov r4, ip
	stm r4!, {r0}
	movs r3, #0
	ldr r0, _08000D4C @ =0x0000FFFF
	adds r5, r0, #0
_08000B86:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r4, r2
	ldrh r1, [r2]
	orrs r1, r5
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _08000B86
	movs r0, #0
	movs r1, #0x1f
	mov r2, ip
	strb r1, [r2, #0x10]
	movs r1, #9
	strb r1, [r2, #0x11]
	strb r0, [r2, #0x12]
	movs r3, #0
	mov r5, ip
	adds r5, #0x22
	mov r6, ip
	adds r6, #0x29
	mov r7, ip
	adds r7, #0x32
	movs r0, #0x33
	add r0, ip
	mov r8, r0
	movs r1, #0x36
	add r1, ip
	mov sb, r1
	movs r2, #0x5b
	add r2, ip
	mov sl, r2
	mov r0, ip
	adds r0, #0x5c
	str r0, [sp, #4]
	mov r1, ip
	adds r1, #0x5d
	str r1, [sp, #8]
	mov r2, ip
	adds r2, #0x60
	str r2, [sp, #0xc]
	adds r0, #5
	str r0, [sp, #0x10]
	adds r1, #5
	str r1, [sp, #0x14]
	subs r2, #0x29
	str r2, [sp]
	subs r2, #0x23
	ldr r4, _08000D50 @ =0x000003FF
_08000BF0:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r4, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _08000BF0
	movs r3, #0
	adds r2, r5, #0
	movs r4, #9
_08000C0C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08000C0C
	movs r3, #0
	adds r2, r6, #0
	movs r4, #0x7f
_08000C26:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08000C26
	movs r0, #0x7f
	strb r0, [r7]
	mov r3, r8
	strb r0, [r3]
	movs r1, #0
	movs r0, #0x31
	mov r2, ip
	strh r0, [r2, #0x34]
	movs r0, #9
	mov r3, sb
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	ldr r2, [sp, #4]
	strb r1, [r2]
	ldr r3, [sp, #8]
	strb r1, [r3]
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	ldr r2, [sp, #0x10]
	strb r1, [r2]
	ldr r3, [sp, #0x14]
	strb r1, [r3]
	ldr r2, _08000D54 @ =gUnknown_03000594
	movs r3, #0
	movs r4, #0
_08000C6E:
	strb r4, [r2, #0x10]
	strb r4, [r2, #0x11]
	strb r4, [r2, #0x12]
	strb r4, [r2, #0x13]
	adds r0, r2, #0
	stm r0!, {r4}
	movs r1, #0
	adds r5, r2, #0
	adds r5, #0x14
	adds r2, r0, #0
_08000C82:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r2, r1
	strh r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _08000C82
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, r5, #0
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08000C6E
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0
	movs r2, #0xff
	ldr r4, _08000D58 @ =0x00008CA0
_08000CB6:
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orrs r0, r2
	strb r0, [r1, #1]
	strh r4, [r1, #2]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, #4
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8b
	ble _08000CB6
	movs r3, #0
	ldr r4, [sp]
	movs r5, #7
_08000CDC:
	movs r1, #0
	lsls r3, r3, #0x10
	asrs r2, r3, #0xe
_08000CE2:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r2
	adds r1, r4, r1
	strb r5, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08000CE2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08000CDC
	movs r1, #0xd7
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r3, #1
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08000D5C @ =0x0000035E
	add r1, ip
	movs r0, #2
	strh r0, [r1]
	movs r1, #0xd8
	lsls r1, r1, #2
	add r1, ip
	adds r0, #0xfe
	strh r0, [r1]
	movs r0, #0xd9
	lsls r0, r0, #2
	add r0, ip
	strb r2, [r0]
	ldr r0, _08000D60 @ =0x00000365
	add r0, ip
	strb r2, [r0]
	ldr r0, _08000D64 @ =0x00000366
	add r0, ip
	strb r3, [r0]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000D4C: .4byte 0x0000FFFF
_08000D50: .4byte 0x000003FF
_08000D54: .4byte gUnknown_03000594
_08000D58: .4byte 0x00008CA0
_08000D5C: .4byte 0x0000035E
_08000D60: .4byte 0x00000365
_08000D64: .4byte 0x00000366

	thumb_func_start sub_8000D68
sub_8000D68: @ 0x08000D68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r4, #0
	ldr r7, _0800101C @ =0x0000010D
	ldr r6, _08001020 @ =0x0000FFFF
	adds r2, r5, #4
	movs r3, #0xf1
_08000D84:
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, r7
	bls _08000D96
	cmp r0, r6
	beq _08000D96
	strh r3, [r1]
_08000D96:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _08000D84
	ldrb r0, [r5, #0x10]
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r5, #0x10]
	ldrb r0, [r5, #0x11]
	cmp r0, #9
	bls _08000DB8
	movs r0, #9
	strb r0, [r5, #0x11]
_08000DB8:
	ldrb r0, [r5, #0x12]
	cmp r0, #6
	bls _08000DC2
	movs r0, #0
	strb r0, [r5, #0x12]
_08000DC2:
	movs r4, #0
	movs r2, #0x29
	adds r2, r2, r5
	mov r8, r2
	movs r7, #0x32
	adds r7, r7, r5
	mov sb, r7
	movs r0, #0x33
	adds r0, r0, r5
	mov ip, r0
	movs r1, #0x5b
	adds r1, r1, r5
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0x5c
	str r2, [sp, #4]
	adds r7, r5, #0
	adds r7, #0x5d
	str r7, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x63
	str r0, [sp, #0xc]
	adds r1, r5, #0
	adds r1, #0x68
	str r1, [sp, #0x10]
	adds r6, r5, #0
	adds r6, #0x14
	ldr r7, _08001024 @ =0x000003FF
_08000DFA:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #1
	adds r2, r6, r2
	ldrh r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _08000DFA
	movs r4, #0
	mov r6, r8
	movs r7, #0x7f
_08000E1C:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r3, r6, r1
	ldrb r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r3]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #8
	ble _08000E1C
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r7, ip
	ldrb r1, [r7]
	movs r0, #7
	ands r0, r1
	strb r0, [r7]
	ldrh r1, [r5, #0x34]
	movs r0, #0x31
	ands r0, r1
	movs r1, #0
	strh r0, [r5, #0x34]
	mov r0, sl
	strb r1, [r0]
	ldr r2, [sp, #4]
	strb r1, [r2]
	ldr r7, [sp, #8]
	strb r1, [r7]
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	movs r4, #0
	ldr r1, _0800101C @ =0x0000010D
	mov ip, r1
	ldr r2, _08001020 @ =0x0000FFFF
	mov r8, r2
	ldr r7, [sp, #0x10]
_08000E70:
	movs r3, #0
	lsls r6, r4, #0x10
	asrs r1, r6, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #2
_08000E7C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	adds r2, r7, r0
	ldrh r0, [r2]
	cmp r0, ip
	bls _08000E92
	cmp r0, r8
	beq _08000E92
	movs r0, #0xf1
	strh r0, [r2]
_08000E92:
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _08000E7C
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r0, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #1
	bls _08000EBC
	movs r0, #1
	strb r0, [r2]
_08000EBC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08000E70
	movs r4, #0
	movs r7, #0xff
	mov r8, r7
	ldr r0, _08001028 @ =0x00008CA0
	mov sb, r0
_08000ED2:
	movs r3, #0
	lsls r6, r4, #0x10
	asrs r1, r6, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov ip, r0
_08000EE0:
	movs r2, #0
	lsls r4, r3, #0x10
	asrs r1, r4, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov sl, r0
_08000EEE:
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	add r0, sl
	add r0, ip
	adds r2, r5, r0
	movs r7, #0x96
	lsls r7, r7, #1
	adds r1, r2, r7
	ldrb r0, [r1]
	cmp r0, #4
	bls _08000F0C
	mov r7, r8
	orrs r0, r7
	strb r0, [r1]
_08000F0C:
	ldr r0, _0800102C @ =0x0000012D
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #4
	bls _08000F1C
	mov r7, r8
	orrs r0, r7
	strb r0, [r1]
_08000F1C:
	movs r0, #0x97
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r7, _08001028 @ =0x00008CA0
	adds r2, r7, #0
	ldrh r0, [r1]
	cmp r0, sb
	bls _08000F2E
	strh r2, [r1]
_08000F2E:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08000EEE
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08000EE0
	adds r0, r6, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08000ED2
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08000F70
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08000F70
	movs r7, #1
	str r7, [sp]
_08000F70:
	ldr r1, _08001030 @ =0x0000035E
	adds r0, r5, r1
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08000F8C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08000F8C
	movs r2, #1
	str r2, [sp]
_08000F8C:
	movs r7, #0xd8
	lsls r7, r7, #2
	adds r0, r5, r7
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08000FAA
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08000FAA
	movs r0, #1
	str r0, [sp]
_08000FAA:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r3, r5, r1
	ldr r2, _08001030 @ =0x0000035E
	adds r4, r5, r2
	ldrh r1, [r3]
	ldrh r0, [r4]
	orrs r1, r0
	movs r7, #0xd8
	lsls r7, r7, #2
	adds r2, r5, r7
	ldrh r0, [r2]
	orrs r1, r0
	ldr r0, _08001034 @ =0x00000103
	cmp r1, r0
	beq _08000FCE
	movs r0, #1
	str r0, [sp]
_08000FCE:
	ldr r1, [sp]
	cmp r1, #0
	beq _08000FE0
	movs r0, #1
	strh r0, [r3]
	movs r0, #2
	strh r0, [r4]
	adds r0, #0xfe
	strh r0, [r2]
_08000FE0:
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #2
	bls _08000FF0
	movs r0, #0
	strb r0, [r1]
_08000FF0:
	ldr r7, _08001038 @ =0x00000365
	adds r1, r5, r7
	ldrb r0, [r1]
	cmp r0, #1
	bls _08000FFE
	movs r0, #0
	strb r0, [r1]
_08000FFE:
	ldr r0, _0800103C @ =0x00000366
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #5
	bls _0800100C
	movs r0, #1
	strb r0, [r1]
_0800100C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800101C: .4byte 0x0000010D
_08001020: .4byte 0x0000FFFF
_08001024: .4byte 0x000003FF
_08001028: .4byte 0x00008CA0
_0800102C: .4byte 0x0000012D
_08001030: .4byte 0x0000035E
_08001034: .4byte 0x00000103
_08001038: .4byte 0x00000365
_0800103C: .4byte 0x00000366

	thumb_func_start sub_8001040
sub_8001040: @ 0x08001040
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp]
	ldr r2, _08001104 @ =0x050000DB
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08001108 @ =0x47544E4C
	str r0, [r5]
	str r4, [r5, #8]
	movs r2, #0
	adds r3, r5, #0
	adds r3, #0xc
	ldr r0, _0800110C @ =0x0000FFFF
	adds r4, r0, #0
_08001066:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r3, r2
	ldrh r1, [r2]
	orrs r1, r4
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _08001066
	movs r0, #0
	strb r0, [r5, #0x18]
	movs r1, #5
	strb r1, [r5, #0x19]
	movs r1, #1
	strb r1, [r5, #0x1a]
	strb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r2, #0
	movs r3, #0xff
	ldr r4, _08001110 @ =0x00008CA0
_0800109C:
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orrs r0, r3
	strb r0, [r1, #1]
	strh r4, [r1, #2]
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8b
	ble _0800109C
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r2, #0
	movs r3, #1
	strb r3, [r0]
	ldr r0, _08001114 @ =0x00000361
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08001118 @ =0x00000362
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1]
	movs r1, #0xd9
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, _0800111C @ =0x00000366
	adds r0, r5, r2
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_800212C
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r5, r2
	str r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001104: .4byte 0x050000DB
_08001108: .4byte 0x47544E4C
_0800110C: .4byte 0x0000FFFF
_08001110: .4byte 0x00008CA0
_08001114: .4byte 0x00000361
_08001118: .4byte 0x00000362
_0800111C: .4byte 0x00000366

	thumb_func_start sub_8001120
sub_8001120: @ 0x08001120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	str r1, [sp]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_80BA6B0
	bl sub_80BAB80
	ldr r0, _08001200 @ =gFlags
	mov r8, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _08001204 @ =0x04000200
	ldrh r0, [r2]
	str r0, [sp, #4]
	ldr r7, _08001208 @ =0x04000208
	ldrh r0, [r7]
	mov sl, r0
	ldr r2, _0800120C @ =0x04000004
	mov sb, r2
	ldrh r6, [r2]
	movs r0, #0
	ldr r2, _08001204 @ =0x04000200
	strh r0, [r2]
	strh r0, [r7]
	mov r2, sb
	strh r0, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, r8
	str r1, [r0]
	ldr r1, _08001210 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08001214 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08001218 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0800121C @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	movs r2, #0xdb
	lsls r2, r2, #2
	adds r0, r5, #0
	ldr r1, [sp]
	bl ProgramFlashSectorAndVerifyNBytes
	adds r4, r0, #0
	mov r1, sp
	ldrh r2, [r1, #4]
	ldr r1, _08001204 @ =0x04000200
	strh r2, [r1]
	mov r0, sl
	strh r0, [r7]
	mov r1, sb
	strh r6, [r1]
	bl sub_80BABFC
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _08001220 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001200: .4byte gFlags
_08001204: .4byte 0x04000200
_08001208: .4byte 0x04000208
_0800120C: .4byte 0x04000004
_08001210: .4byte 0x040000B0
_08001214: .4byte 0x0000C5FF
_08001218: .4byte 0x00007FFF
_0800121C: .4byte 0x040000D4
_08001220: .4byte 0xFFFF7FFF

	thumb_func_start sub_8001224
sub_8001224: @ 0x08001224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_80BA6B0
	bl sub_80BAB80
	ldr r0, _08001304 @ =gFlags
	mov r8, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _08001308 @ =0x04000200
	ldrh r0, [r2]
	str r0, [sp]
	ldr r7, _0800130C @ =0x04000208
	ldrh r0, [r7]
	mov sl, r0
	ldr r2, _08001310 @ =0x04000004
	mov sb, r2
	ldrh r6, [r2]
	movs r0, #0
	ldr r2, _08001308 @ =0x04000200
	strh r0, [r2]
	strh r0, [r7]
	mov r2, sb
	strh r0, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, r8
	str r1, [r0]
	ldr r1, _08001314 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08001318 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0800131C @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08001320 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r0, _08001324 @ =EraseFlashSector
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, sp
	ldrh r2, [r1]
	ldr r1, _08001308 @ =0x04000200
	strh r2, [r1]
	mov r0, sl
	strh r0, [r7]
	mov r1, sb
	strh r6, [r1]
	bl sub_80BABFC
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _08001328 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001304: .4byte gFlags
_08001308: .4byte 0x04000200
_0800130C: .4byte 0x04000208
_08001310: .4byte 0x04000004
_08001314: .4byte 0x040000B0
_08001318: .4byte 0x0000C5FF
_0800131C: .4byte 0x00007FFF
_08001320: .4byte 0x040000D4
_08001324: .4byte EraseFlashSector
_08001328: .4byte 0xFFFF7FFF

	thumb_func_start sub_800132C
sub_800132C: @ 0x0800132C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	mov sb, r1
	ldr r0, _080015E4 @ =0x47544E4C
	str r0, [r6]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	mov r3, sb
	ldm r3!, {r0}
	str r0, [r6, #8]
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0xc
_08001352:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _08001352
	movs r1, #0
	strb r1, [r6, #0x18]
	mov r2, sb
	ldrb r0, [r2, #0x10]
	strb r0, [r6, #0x19]
	ldrb r0, [r2, #0x11]
	strb r0, [r6, #0x1a]
	ldrb r0, [r2, #0x12]
	strb r0, [r6, #0x1b]
	strb r1, [r6, #0x1c]
	movs r5, #0
	movs r3, #0x2c
	adds r3, r3, r6
	mov r8, r3
	mov r7, sb
	adds r7, #0x22
	movs r0, #0x33
	adds r0, r0, r6
	mov ip, r0
	movs r1, #0x29
	add r1, sb
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x3e
	str r2, [sp, #0x48]
	mov r3, sb
	adds r3, #0x37
	str r3, [sp, #0x3c]
	mov r0, sb
	adds r0, #0x32
	str r0, [sp, #0x34]
	adds r1, r6, #0
	adds r1, #0x3c
	str r1, [sp, #0x40]
	mov r2, sb
	ldrh r3, [r2, #0x34]
	mov r2, sp
	strh r3, [r2, #0x30]
	adds r0, r6, #0
	adds r0, #0x62
	str r0, [sp, #4]
	mov r1, sb
	adds r1, #0x33
	str r1, [sp, #0x38]
	adds r2, r6, #0
	adds r2, #0x3d
	str r2, [sp, #0x44]
	mov r3, sb
	adds r3, #0x60
	str r3, [sp]
	adds r0, #2
	str r0, [sp, #0x10]
	adds r1, #0x2f
	str r1, [sp, #0xc]
	adds r2, #0x28
	str r2, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #8]
	adds r0, #2
	str r0, [sp, #0x1c]
	adds r1, r6, #0
	adds r1, #0x67
	str r1, [sp, #0x20]
	adds r2, #7
	str r2, [sp, #0x28]
	adds r3, #3
	str r3, [sp, #0x18]
	adds r0, #0xa
	str r0, [sp, #0x2c]
	mov r1, sb
	adds r1, #0x68
	str r1, [sp, #0x24]
	adds r4, r6, #0
	adds r4, #0x1e
	subs r3, #0x50
_08001402:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _08001402
	movs r5, #0
	mov r4, r8
	adds r3, r7, #0
_08001422:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08001422
	movs r5, #0
	mov r4, ip
	mov r3, sl
_08001440:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001440
	movs r5, #0
	ldr r2, [sp, #0x48]
	mov ip, r2
	ldr r3, [sp, #0x3c]
	mov r8, r3
_08001462:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r4, r7, #0xe
_08001468:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r3, ip
	adds r2, r3, r1
	add r1, r8
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08001468
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001462
	ldr r2, [sp, #0x34]
	ldrb r0, [r2]
	ldr r3, [sp, #0x40]
	strb r0, [r3]
	movs r1, #0
	mov r0, sp
	ldrh r2, [r0, #0x30]
	ldr r0, [sp, #4]
	strh r2, [r0]
	ldr r3, [sp, #0x38]
	ldrb r0, [r3]
	ldr r2, [sp, #0x44]
	strb r0, [r2]
	ldr r3, [sp]
	ldrb r0, [r3]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	ldr r2, [sp, #0x1c]
	strb r0, [r2]
	ldr r3, [sp, #0x20]
	strb r1, [r3]
	movs r5, #0
	ldr r0, [sp, #0x2c]
	mov r8, r0
	ldr r7, [sp, #0x24]
_080014D2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r1, r6, r2
	mov ip, r1
	mov r0, sb
	adds r3, r0, r2
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x68
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x75
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x69
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x77
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x76
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x6b
	strb r1, [r0]
	ldr r3, [sp, #0x28]
	adds r1, r3, r2
	ldr r3, [sp, #0x18]
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0
	adds r4, r2, #0
_08001522:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r4
	mov r3, r8
	adds r2, r3, r0
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _08001522
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _080014D2
	movs r5, #0
_08001552:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r1, r7, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov sl, r0
_08001560:
	movs r4, #0
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
_0800156E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	add r0, r8
	add r0, sl
	adds r3, r6, r0
	mov ip, r3
	mov r1, sb
	adds r3, r1, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, ip
	strb r1, [r0]
	ldr r1, _080015E8 @ =0x0000012D
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r1, #4
	add r1, ip
	strb r0, [r1]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	adds r1, #4
	add r1, ip
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #4
	ble _0800156E
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08001560
	adds r0, r7, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08001552
	movs r0, #0xd7
	lsls r0, r0, #2
	add r0, sb
	ldrh r1, [r0]
	cmp r1, #2
	beq _08001600
	cmp r1, #2
	bgt _080015EC
	cmp r1, #1
	beq _080015F6
	b _08001614
	.align 2, 0
_080015E4: .4byte 0x47544E4C
_080015E8: .4byte 0x0000012D
_080015EC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800160C
	b _08001614
_080015F6:
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r0, r6, r3
	strb r1, [r0]
	b _08001614
_08001600:
	ldr r0, _08001608 @ =0x00000361
	adds r1, r6, r0
	b _08001610
	.align 2, 0
_08001608: .4byte 0x00000361
_0800160C:
	ldr r2, _08001628 @ =0x00000362
	adds r1, r6, r2
_08001610:
	movs r0, #1
	strb r0, [r1]
_08001614:
	ldr r0, _0800162C @ =0x0000035E
	add r0, sb
	ldrh r1, [r0]
	cmp r1, #2
	beq _08001640
	cmp r1, #2
	bgt _08001630
	cmp r1, #1
	beq _0800163A
	b _08001654
	.align 2, 0
_08001628: .4byte 0x00000362
_0800162C: .4byte 0x0000035E
_08001630:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800164C
	b _08001654
_0800163A:
	movs r3, #0xd8
	lsls r3, r3, #2
	b _0800164E
_08001640:
	ldr r2, _08001648 @ =0x00000361
	adds r0, r6, r2
	strb r1, [r0]
	b _08001654
	.align 2, 0
_08001648: .4byte 0x00000361
_0800164C:
	ldr r3, _0800166C @ =0x00000362
_0800164E:
	adds r1, r6, r3
	movs r0, #2
	strb r0, [r1]
_08001654:
	movs r2, #0xd8
	lsls r2, r2, #2
	mov r1, sb
	adds r0, r1, r2
	ldrh r1, [r0]
	cmp r1, #2
	beq _0800167E
	cmp r1, #2
	bgt _08001670
	cmp r1, #1
	beq _0800167A
	b _08001690
	.align 2, 0
_0800166C: .4byte 0x00000362
_08001670:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08001688
	b _08001690
_0800167A:
	adds r1, r6, r2
	b _0800168C
_0800167E:
	ldr r2, _08001684 @ =0x00000361
	adds r1, r6, r2
	b _0800168C
	.align 2, 0
_08001684: .4byte 0x00000361
_08001688:
	ldr r3, _080016DC @ =0x00000362
	adds r1, r6, r3
_0800168C:
	movs r0, #4
	strb r0, [r1]
_08001690:
	movs r0, #0xd9
	lsls r0, r0, #2
	mov r2, sb
	adds r1, r2, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	movs r2, #0
	strb r1, [r0]
	ldr r0, _080016E0 @ =0x00000365
	mov r3, sb
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r0, _080016E4 @ =0x00000366
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r1, _080016E8 @ =0x00000367
	adds r0, r6, r1
	strb r2, [r0]
	adds r0, r6, #0
	bl sub_800212C
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r6, r2
	str r0, [r1]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080016DC: .4byte 0x00000362
_080016E0: .4byte 0x00000365
_080016E4: .4byte 0x00000366
_080016E8: .4byte 0x00000367

	thumb_func_start sub_80016EC
sub_80016EC: @ 0x080016EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	mov sb, r1
	ldr r0, [r1, #8]
	adds r3, r6, #0
	stm r3!, {r0}
	movs r5, #0
	mov r4, sb
	adds r4, #0xc
_08001708:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r3, r0
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _08001708
	adds r0, r6, #0
	adds r0, #0x36
	movs r1, #0
	strb r1, [r0]
	mov r2, sb
	ldrb r0, [r2, #0x19]
	strb r0, [r6, #0x10]
	ldrb r0, [r2, #0x1a]
	strb r0, [r6, #0x11]
	ldrb r0, [r2, #0x1b]
	strb r0, [r6, #0x12]
	adds r0, r6, #0
	adds r0, #0x5b
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x2c
	add r3, sb
	mov r8, r3
	movs r0, #0x29
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x33
	add r1, sb
	mov ip, r1
	adds r2, r6, #0
	adds r2, #0x37
	str r2, [sp, #8]
	mov r3, sb
	adds r3, #0x3e
	str r3, [sp, #0x14]
	mov r0, sb
	adds r0, #0x3c
	str r0, [sp, #0xc]
	adds r1, r6, #0
	adds r1, #0x32
	str r1, [sp]
	mov r2, sb
	adds r2, #0x62
	str r2, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0x33
	str r0, [sp, #4]
	mov r1, sb
	adds r1, #0x64
	str r1, [sp, #0x30]
	adds r2, r6, #0
	adds r2, #0x60
	str r2, [sp, #0x18]
	adds r3, #0x28
	str r3, [sp, #0x34]
	adds r0, #0x2f
	str r0, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x38]
	adds r2, #1
	str r2, [sp, #0x1c]
	adds r3, r6, #0
	adds r3, #0x63
	str r3, [sp, #0x28]
	adds r0, #2
	str r0, [sp, #0x2c]
	adds r1, #6
	str r1, [sp, #0x40]
	adds r2, #7
	str r2, [sp, #0x3c]
	mov r3, sb
	adds r3, #0x70
	str r3, [sp, #0x44]
	adds r4, r6, #0
	adds r4, #0x14
	subs r3, #0x52
_080017C0:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #6
	ble _080017C0
	movs r5, #0
	adds r4, r7, #0
	mov r3, r8
_080017E0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _080017E0
	movs r5, #0
	mov r4, sl
	mov r3, ip
_080017FE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080017FE
	movs r5, #0
	ldr r0, [sp, #8]
	mov ip, r0
	ldr r1, [sp, #0x14]
	mov r8, r1
_08001820:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r4, r7, #0xe
_08001826:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r3, ip
	adds r2, r3, r1
	add r1, r8
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08001826
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001820
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r1, [sp, #0x24]
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r6, #0x34]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	ldr r3, [sp, #4]
	strb r0, [r3]
	ldr r2, [sp, #0x30]
	ldrb r0, [r2]
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	ldr r2, [sp, #0x34]
	ldrb r0, [r2]
	ldr r3, [sp, #0x20]
	strb r0, [r3]
	ldr r2, [sp, #0x38]
	ldrb r0, [r2]
	ldr r3, [sp, #0x1c]
	strb r0, [r3]
	ldr r0, [sp, #0x28]
	strb r1, [r0]
	movs r5, #0
	ldr r1, [sp, #0x3c]
	mov r8, r1
	ldr r7, [sp, #0x44]
_0800188E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r3, r6, r2
	mov ip, r3
	mov r0, sb
	adds r3, r0, r2
	adds r0, r3, #0
	adds r0, #0x68
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x74
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x69
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x75
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	adds r1, #2
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x6b
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x76
	strb r1, [r0]
	ldr r3, [sp, #0x2c]
	adds r1, r3, r2
	ldr r3, [sp, #0x40]
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0
	adds r4, r2, #0
_080018DE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r4
	mov r3, r8
	adds r2, r3, r0
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _080018DE
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0800188E
	movs r5, #0
_0800190E:
	movs r3, #0
	lsls r7, r5, #0x10
	asrs r1, r7, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov sl, r0
_0800191C:
	movs r4, #0
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
_0800192A:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	add r0, r8
	add r0, sl
	adds r3, r6, r0
	mov ip, r3
	mov r1, sb
	adds r3, r1, r0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	add r0, ip
	strb r1, [r0]
	ldr r1, _080019A4 @ =0x00000131
	adds r0, r3, r1
	ldrb r0, [r0]
	subs r1, #4
	add r1, ip
	strb r0, [r1]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	subs r1, #4
	add r1, ip
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #4
	ble _0800192A
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800191C
	adds r0, r7, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0800190E
	movs r2, #0xd8
	lsls r2, r2, #2
	mov r3, sb
	adds r0, r3, r2
	ldrb r1, [r0]
	cmp r1, #2
	beq _080019B8
	cmp r1, #2
	bgt _080019A8
	cmp r1, #1
	beq _080019AE
	b _080019CA
	.align 2, 0
_080019A4: .4byte 0x00000131
_080019A8:
	cmp r1, #4
	beq _080019C4
	b _080019CA
_080019AE:
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	b _080019CA
_080019B8:
	ldr r3, _080019C0 @ =0x0000035E
	adds r1, r6, r3
	b _080019C6
	.align 2, 0
_080019C0: .4byte 0x0000035E
_080019C4:
	adds r1, r6, r2
_080019C6:
	movs r0, #1
	strh r0, [r1]
_080019CA:
	ldr r0, _080019E0 @ =0x00000361
	add r0, sb
	ldrb r1, [r0]
	cmp r1, #2
	beq _080019F2
	cmp r1, #2
	bgt _080019E4
	cmp r1, #1
	beq _080019EA
	b _08001A0A
	.align 2, 0
_080019E0: .4byte 0x00000361
_080019E4:
	cmp r1, #4
	beq _08001A00
	b _08001A0A
_080019EA:
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r1, r6, r0
	b _08001A06
_080019F2:
	ldr r2, _080019FC @ =0x0000035E
	adds r0, r6, r2
	strh r1, [r0]
	b _08001A0A
	.align 2, 0
_080019FC: .4byte 0x0000035E
_08001A00:
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r1, r6, r3
_08001A06:
	movs r0, #2
	strh r0, [r1]
_08001A0A:
	ldr r0, _08001A20 @ =0x00000362
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #2
	beq _08001A32
	cmp r0, #2
	bgt _08001A24
	cmp r0, #1
	beq _08001A2A
	b _08001A48
	.align 2, 0
_08001A20: .4byte 0x00000362
_08001A24:
	cmp r0, #4
	beq _08001A3C
	b _08001A48
_08001A2A:
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r1, r6, r0
	b _08001A42
_08001A32:
	ldr r2, _08001A38 @ =0x0000035E
	adds r1, r6, r2
	b _08001A42
	.align 2, 0
_08001A38: .4byte 0x0000035E
_08001A3C:
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r1, r6, r3
_08001A42:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_08001A48:
	movs r0, #0xd9
	lsls r0, r0, #2
	mov r2, sb
	adds r1, r2, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08001A84 @ =0x00000365
	mov r3, sb
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r0, _08001A88 @ =0x00000366
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r0, r6, r0
	strb r1, [r0]
	ldr r1, _08001A8C @ =0x00000367
	adds r0, r6, r1
	strb r2, [r0]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001A84: .4byte 0x00000365
_08001A88: .4byte 0x00000366
_08001A8C: .4byte 0x00000367

	thumb_func_start sub_8001A90
sub_8001A90: @ 0x08001A90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	movs r0, #0
	mov sb, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	ldr r4, _08001ABC @ =0x0000FFFF
	mov sl, r4
	ldr r0, _08001AC0 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001AC4
	mov r0, r8
	b _08001B4A
	.align 2, 0
_08001ABC: .4byte 0x0000FFFF
_08001AC0: .4byte gFlags
_08001AC4:
	movs r1, #0
_08001AC6:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	asrs r6, r0, #0x10
	lsls r5, r6, #3
	mov r0, sp
	adds r4, r0, r5
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #8
	bl ReadFlash
	ldr r1, [r4]
	ldr r0, _08001B10 @ =0x47544E4C
	cmp r1, r0
	bne _08001B14
	add r2, sp, #4
	adds r0, r2, r5
	ldr r0, [r0]
	cmp r0, sb
	bls _08001AF2
	mov sb, r0
_08001AF2:
	cmp r0, r8
	bhs _08001AFA
	mov r8, r0
	mov sl, r7
_08001AFA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001AC6
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	beq _08001B18
	b _08001B44
	.align 2, 0
_08001B10: .4byte 0x47544E4C
_08001B14:
	adds r0, r6, #0
	b _08001B4A
_08001B18:
	mov r8, sb
	movs r1, #0
	adds r3, r2, #0
	ldr r2, _08001B5C @ =0xFFFFFF00
_08001B20:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xd
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, r2
	bls _08001B36
	cmp r0, r8
	bhi _08001B36
	mov r8, r0
	lsrs r4, r1, #0x10
	mov sl, r4
_08001B36:
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001B20
_08001B44:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
_08001B4A:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001B5C: .4byte 0xFFFFFF00

	thumb_func_start sub_8001B60
sub_8001B60: @ 0x08001B60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	movs r0, #0
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	ldr r0, _08001B90 @ =0x0000FFFF
	mov sl, r0
	ldr r0, _08001B94 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001B98
	movs r0, #2
	rsbs r0, r0, #0
	b _08001C18
	.align 2, 0
_08001B90: .4byte 0x0000FFFF
_08001B94: .4byte gFlags
_08001B98:
	movs r1, #0
_08001B9A:
	lsls r4, r1, #0x10
	lsrs r7, r4, #0x10
	asrs r6, r4, #0xd
	mov r1, sp
	adds r5, r1, r6
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #8
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08001C28 @ =0x47544E4C
	cmp r1, r0
	bne _08001BCC
	add r0, sp, #4
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r8
	bls _08001BC6
	mov r8, r0
	mov sl, r7
_08001BC6:
	cmp r0, sb
	bhs _08001BCC
	mov sb, r0
_08001BCC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001B9A
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	bne _08001C12
	movs r0, #0
	mov r8, r0
	movs r1, #0
	add r2, sp, #4
	ldr r3, _08001C2C @ =0xFFFFFEFF
_08001BEC:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xd
	adds r0, r2, r0
	ldr r0, [r0]
	adds r4, r1, #0
	cmp r0, r3
	bhi _08001C04
	cmp r0, r8
	blo _08001C04
	mov r8, r0
	lsrs r1, r4, #0x10
	mov sl, r1
_08001C04:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001BEC
_08001C12:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
_08001C18:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001C28: .4byte 0x47544E4C
_08001C2C: .4byte 0xFFFFFEFF

	thumb_func_start sub_8001C30
sub_8001C30: @ 0x08001C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov ip, r1
	movs r7, #0
	ldr r5, _08001D50 @ =gUnknown_03000594
	ldrb r0, [r5, #0x10]
	mov sl, r5
	cmp r0, #0
	beq _08001CA0
_08001C4A:
	ldr r0, [r5]
	cmp r0, sb
	bne _08001C80
	movs r2, #0
	ldrh r0, [r5, #4]
	mov r1, ip
	ldrh r1, [r1]
	cmp r0, r1
	bne _08001C7C
	adds r3, r5, #4
_08001C5E:
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _08001C7C
	lsls r0, r0, #1
	adds r1, r3, r0
	add r0, ip
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08001C5E
_08001C7C:
	cmp r2, #6
	beq _08001D3E
_08001C80:
	lsls r0, r7, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r7, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #9
	bgt _08001CA0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sl
	adds r5, r0, r1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08001C4A
_08001CA0:
	cmp r7, #0xa
	bne _08001CA6
	movs r7, #9
_08001CA6:
	lsls r0, r7, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r7, r0, #0x18
	lsls r0, r7, #0x18
	cmp r0, #0
	blt _08001D0E
	ldr r1, _08001D54 @ =gUnknown_030005A8
	mov r8, r1
_08001CBA:
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r0, r8
	adds r3, r1, r0
	ldr r0, _08001D50 @ =gUnknown_03000594
	adds r5, r1, r0
	adds r4, r5, #0
	ldm r4!, {r0}
	adds r6, r3, #0
	stm r6!, {r0}
	movs r2, #0
_08001CD4:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r2, r6, r1
	adds r1, r4, r1
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	ble _08001CD4
	ldrb r0, [r5, #0x10]
	strb r0, [r3, #0x10]
	ldrb r0, [r5, #0x11]
	strb r0, [r3, #0x11]
	ldrb r0, [r5, #0x12]
	strb r0, [r3, #0x12]
	ldrb r0, [r5, #0x13]
	strb r0, [r3, #0x13]
	lsls r0, r7, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	lsls r0, r7, #0x18
	cmp r0, #0
	bge _08001CBA
_08001D0E:
	mov r5, sl
	adds r3, r5, #0
	mov r0, sb
	stm r3!, {r0}
	movs r7, #0
_08001D18:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r2, r3, r0
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #5
	ble _08001D18
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0x10]
	strb r1, [r5, #0x11]
	strb r1, [r5, #0x12]
	strb r1, [r5, #0x13]
_08001D3E:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001D50: .4byte gUnknown_03000594
_08001D54: .4byte gUnknown_030005A8

	thumb_func_start sub_8001D58
sub_8001D58: @ 0x08001D58
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08001DBC @ =gDispCnt
	ldrb r1, [r0]
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r4, [r0]
	ldr r1, _08001DC0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08001DC4 @ =gUnknown_03003F94
	ldr r0, _08001DC8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08001DCC @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08001DD0 @ =gUnknown_03006208
	ldr r0, _08001DD4 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08001DD8 @ =sub_8000918
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	movs r1, #0
	strh r4, [r0, #4]
	strb r1, [r0, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001DBC: .4byte gDispCnt
_08001DC0: .4byte 0x0000FFFF
_08001DC4: .4byte gUnknown_03003F94
_08001DC8: .4byte gUnknown_03003D20
_08001DCC: .4byte gUnknown_03006840
_08001DD0: .4byte gUnknown_03006208
_08001DD4: .4byte gUnknown_03003F34
_08001DD8: .4byte sub_8000918

	thumb_func_start sub_8001DDC
sub_8001DDC: @ 0x08001DDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08001E00 @ =gSaveGame
	adds r1, r4, #0
	bl sub_8000974
	ldr r0, _08001E04 @ =gUnknown_03000980
	adds r1, r4, #0
	bl sub_8000974
	ldr r0, _08001E08 @ =gSaveSectorData
	adds r1, r4, #0
	bl sub_8001040
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001E00: .4byte gSaveGame
_08001E04: .4byte gUnknown_03000980
_08001E08: .4byte gSaveSectorData

	thumb_func_start sub_8001E0C
sub_8001E0C: @ 0x08001E0C
	push {r4, lr}
	ldr r0, _08001E44 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08001E3C
	movs r0, #0
_08001E1E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8001224
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _08001E1E
	bl sub_8001FD4
	bl sub_8002024
_08001E3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001E44: .4byte gFlags

	thumb_func_start sub_8001E48
sub_8001E48: @ 0x08001E48
	push {lr}
	ldr r0, _08001E54 @ =gSaveGame
	bl sub_8000B6C
	pop {r0}
	bx r0
	.align 2, 0
_08001E54: .4byte gSaveGame

	thumb_func_start sub_8001E58
sub_8001E58: @ 0x08001E58
	push {lr}
	ldr r1, _08001E78 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08001E68
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08001E7C
_08001E68:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08001E7C
	bl sub_8001FD4
	b _08001E7E
	.align 2, 0
_08001E78: .4byte gStageData
_08001E7C:
	movs r0, #0
_08001E7E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8001E84
sub_8001E84: @ 0x08001E84
	push {lr}
	bl sub_8002024
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8001E94
sub_8001E94: @ 0x08001E94
	push {r4, r5, lr}
	sub sp, #0x80
	ldr r0, _08001EA8 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001EB0
	b _08001EDC
	.align 2, 0
_08001EA8: .4byte gFlags
_08001EAC:
	movs r0, #1
	b _08001EDE
_08001EB0:
	movs r1, #0
_08001EB2:
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r5, r1, #0x10
	lsls r1, r5, #3
	mov r2, sp
	adds r4, r2, r1
	movs r1, #0
	adds r2, r4, #0
	movs r3, #8
	bl ReadFlash
	ldr r1, [r4]
	ldr r0, _08001EE8 @ =0x47544E4C
	cmp r1, r0
	beq _08001EAC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08001EB2
_08001EDC:
	movs r0, #0
_08001EDE:
	add sp, #0x80
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001EE8: .4byte 0x47544E4C

	thumb_func_start sub_8001EEC
sub_8001EEC: @ 0x08001EEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08001F20 @ =gSaveGame
	ldrb r1, [r2, #0x10]
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0x3c
	bl sub_802616C
	ldr r1, _08001F24 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08001F0E
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08001F1C
_08001F0E:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08001F1C
	bl sub_8001FD4
_08001F1C:
	pop {r0}
	bx r0
	.align 2, 0
_08001F20: .4byte gSaveGame
_08001F24: .4byte gStageData

	thumb_func_start SetChaoFlag
SetChaoFlag: @ 0x08001F28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08001F44 @ =gSaveGame
	ldr r1, _08001F48 @ =gStageData
	ldrb r2, [r1, #9]
	lsls r2, r2, #1
	adds r3, #0x14
	adds r2, r2, r3
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08001F44: .4byte gSaveGame
_08001F48: .4byte gStageData

	thumb_func_start GetChaoFlag
GetChaoFlag: @ 0x08001F4C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08001F68 @ =gSaveGame
	lsrs r2, r2, #0xf
	adds r0, #0x14
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r1
	ldrh r1, [r2]
	ands r0, r1
	bx lr
	.align 2, 0
_08001F68: .4byte gSaveGame

	thumb_func_start GetChaoCount
GetChaoCount: @ 0x08001F6C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	movs r3, #0
	movs r2, #0
	lsrs r0, r0, #0xf
	ldr r1, _08001FAC @ =gUnknown_03000544
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r5, #1
_08001F7E:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08001F96
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
_08001F96:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08001F7E
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001FAC: .4byte gUnknown_03000544

	thumb_func_start sub_8001FB0
sub_8001FB0: @ 0x08001FB0
	push {r4, lr}
	ldr r0, _08001FD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r4, [r1]
	bl TaskDestroy
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FD0: .4byte gCurTask

	thumb_func_start sub_8001FD4
sub_8001FD4: @ 0x08001FD4
	push {r4, r5, r6, lr}
	ldr r4, _08002008 @ =gSaveGame
	ldr r5, _0800200C @ =gUnknown_03000980
	ldr r6, _08002010 @ =gSaveSectorData
	adds r0, r4, #0
	bl sub_8000D68
	ldr r2, _08002014 @ =0x040000DA
	adds r0, r4, #0
	adds r1, r5, #0
	bl CpuSet
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_800132C
	bl sub_8001A90
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08002018
	adds r1, r6, #0
	bl sub_8001120
	b _0800201C
	.align 2, 0
_08002008: .4byte gSaveGame
_0800200C: .4byte gUnknown_03000980
_08002010: .4byte gSaveSectorData
_08002014: .4byte 0x040000DA
_08002018:
	movs r0, #1
	rsbs r0, r0, #0
_0800201C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8002024
sub_8002024: @ 0x08002024
	push {r4, r5, r6, lr}
	ldr r6, _08002040 @ =gSaveGame
	ldr r5, _08002044 @ =gUnknown_03000980
	ldr r4, _08002048 @ =gSaveSectorData
	bl sub_8001B60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800204C
	movs r0, #1
	rsbs r0, r0, #0
	b _0800207A
	.align 2, 0
_08002040: .4byte gSaveGame
_08002044: .4byte gUnknown_03000980
_08002048: .4byte gSaveSectorData
_0800204C:
	adds r1, r4, #0
	bl sub_8002084
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08002060
	adds r0, r4, #0
	movs r1, #0
	bl sub_8001040
_08002060:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80016EC
	adds r0, r5, #0
	bl sub_8000D68
	ldr r2, _08002080 @ =0x040000DA
	adds r0, r5, #0
	adds r1, r6, #0
	bl CpuSet
	movs r0, #0
_0800207A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002080: .4byte 0x040000DA

	thumb_func_start sub_8002084
sub_8002084: @ 0x08002084
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r0, #0xda
	lsls r0, r0, #2
	adds r7, r5, r0
_08002094:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0xdb
	lsls r3, r3, #2
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _080020BC @ =0x47544E4C
	cmp r1, r0
	bne _080020C0
	adds r0, r5, #0
	bl sub_800212C
	ldr r1, [r7]
	cmp r1, r0
	bne _080020C0
	movs r0, #0
	b _080020EA
	.align 2, 0
_080020BC: .4byte 0x47544E4C
_080020C0:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_8001224
	cmp r4, #0
	bne _080020D0
	movs r4, #0xf
	b _080020D6
_080020D0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080020D6:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08002094
	movs r0, #1
	rsbs r0, r0, #0
_080020EA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80020F0
sub_80020F0: @ 0x080020F0
	push {r4, r5, lr}
	ldr r2, _08002108 @ =gSaveGame
	ldr r1, _0800210C @ =gUnknown_03000980
	movs r3, #0
	movs r4, #0xda
	lsls r4, r4, #1
_080020FC:
	ldrh r0, [r2]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08002110
	movs r0, #1
	b _08002126
	.align 2, 0
_08002108: .4byte gSaveGame
_0800210C: .4byte gUnknown_03000980
_08002110:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r2, #2
	adds r1, #2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	blt _080020FC
	movs r0, #0
_08002126:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800212C
sub_800212C: @ 0x0800212C
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	movs r4, #0xda
	lsls r4, r4, #2
_08002138:
	adds r0, r3, r1
	ldr r0, [r0]
	adds r2, r2, r0
	adds r1, #4
	cmp r1, r4
	blo _08002138
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800214C
sub_800214C: @ 0x0800214C
	push {r4, r5, r6, lr}
	ldr r6, _08002180 @ =gPlayers
	ldr r1, _08002184 @ =gStageData
	ldrb r0, [r1, #3]
	adds r2, r1, #0
	cmp r0, #7
	beq _08002188
	adds r1, #0xb4
	movs r0, #2
	strb r0, [r1]
	movs r3, #0
	adds r4, r2, #0
	adds r4, #0xbe
	movs r2, #0
_08002168:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _08002168
	b _080021A4
	.align 2, 0
_08002180: .4byte gPlayers
_08002184: .4byte gStageData
_08002188:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #0
	strb r1, [r0]
	adds r3, r2, #0
	adds r3, #0x8e
	movs r0, #0xff
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x98
	str r1, [r0]
	movs r0, #0
	bl sub_8029774
_080021A4:
	movs r3, #0
	ldr r2, _080021E4 @ =gStageData
	movs r4, #0
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r6, #0
	adds r1, #0xc4
_080021B2:
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, r1, r5
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080021B2
	ldrb r0, [r2, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080021E8
	movs r0, #1
	strh r0, [r2, #0x14]
	movs r0, #2
	strh r0, [r2, #0x16]
	adds r0, #0xfe
	b _08002204
	.align 2, 0
_080021E4: .4byte gStageData
_080021E8:
	ldr r1, _0800220C @ =gSaveGame
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
_08002204:
	strh r0, [r2, #0x18]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800220C: .4byte gSaveGame

	thumb_func_start sub_8002210
sub_8002210: @ 0x08002210
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r4, _0800225C @ =gStageData
	lsrs r6, r0, #0x10
	asrs r5, r0, #0x10
	adds r7, r4, #0
	cmp r5, #0x48
	bgt _0800226C
	cmp r5, #0x46
	bgt _08002260
	subs r0, r5, #1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	subs r1, r5, r1
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r5, #1
	beq _08002266
	cmp r5, #0xb
	beq _08002266
	strb r2, [r4, #9]
	strb r1, [r4, #0xa]
	b _0800226A
	.align 2, 0
_0800225C: .4byte gStageData
_08002260:
	adds r0, r6, #0
	subs r0, #0x40
	strb r0, [r4, #9]
_08002266:
	movs r0, #1
	strb r0, [r4, #0xa]
_0800226A:
	strh r6, [r4, #0xe]
_0800226C:
	mov r0, r8
	strb r0, [r4, #0xb]
	ldr r1, _080022A4 @ =gSaveGame
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r0, [r7, #9]
	cmp r0, #6
	bhi _080022A8
	ldrb r2, [r7, #0xa]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080022A0
	adds r0, r2, #0
	cmp r0, #8
	beq _080022A0
	cmp r0, #9
	bne _080022A8
_080022A0:
	movs r0, #1
	b _080022AE
	.align 2, 0
_080022A4: .4byte gSaveGame
_080022A8:
	ldr r2, _080022DC @ =0x00000365
	adds r0, r1, r2
	ldrb r0, [r0]
_080022AE:
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xb6
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0x2d
	strh r1, [r0]
	ldr r0, _080022E0 @ =sub_8003F40
	ldr r1, _080022E4 @ =0x00007FFF
	bl sub_8001D58
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080022DC: .4byte 0x00000365
_080022E0: .4byte sub_8003F40
_080022E4: .4byte 0x00007FFF

	thumb_func_start sub_80022E8
sub_80022E8: @ 0x080022E8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, r1, #0
	ldr r4, _08002314 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #7
	beq _0800235C
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x48
	bgt _08002338
	cmp r5, #0x46
	ble _08002318
	adds r0, r1, #0
	subs r0, #0x3f
	strb r0, [r4, #9]
	movs r0, #3
	strb r0, [r4, #0xa]
	strh r1, [r4, #0xe]
	b _08002338
	.align 2, 0
_08002314: .4byte gStageData
_08002318:
	subs r0, r5, #1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	subs r1, r5, r1
	adds r1, #1
	strb r2, [r4, #9]
	strb r1, [r4, #0xa]
	strh r6, [r4, #0xe]
_08002338:
	ldr r1, _08002354 @ =gSaveGame
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r4, #1]
	ldr r0, _08002358 @ =0x00000366
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
	strb r2, [r4, #2]
	strb r2, [r4, #0xb]
	b _08002364
	.align 2, 0
_08002354: .4byte gSaveGame
_08002358: .4byte 0x00000366
_0800235C:
	movs r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strh r0, [r4, #0xe]
_08002364:
	adds r0, r4, #0
	adds r0, #0xb6
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _08002384 @ =sub_8003F8C
	bl sub_8001D58
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002384: .4byte sub_8003F8C

	thumb_func_start sub_8002388
sub_8002388: @ 0x08002388
	push {r4, r5, lr}
	ldr r2, _0800240C @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb7
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x4c
	strh r1, [r0]
	movs r0, #0
	ldr r5, _08002410 @ =gPlayers
	movs r4, #0
_080023A4:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0xc4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	subs r0, #0x40
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	strh r4, [r3, #0x1c]
	subs r0, #0x3e
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	ldrh r0, [r2, #0x28]
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	ldrh r0, [r2, #0x2a]
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _080023A4
	bl sub_80BA6B0
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800240C: .4byte gStageData
_08002410: .4byte gPlayers

	thumb_func_start sub_8002414
sub_8002414: @ 0x08002414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080024E0 @ =sub_8003FEC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080024E4 @ =sub_8003D28
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080024E8 @ =0x03000004
	adds r7, r2, r0
	ldr r0, _080024EC @ =0x06012800
	str r0, [r7]
	ldr r6, _080024F0 @ =0x00000593
	strh r6, [r7, #0xc]
	strb r3, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	movs r0, #0x50
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	str r1, [r7, #8]
	ldr r0, _080024F4 @ =0x0300002C
	adds r7, r2, r0
	ldr r0, _080024F8 @ =0x060129C0
	str r0, [r7]
	strh r6, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	str r4, [r7, #0x20]
	str r1, [r7, #8]
	ldr r1, _080024FC @ =gStageData
	movs r0, #7
	strb r0, [r1, #4]
	movs r1, #0
	ldr r6, _08002500 @ =gPlayers
	movs r5, #0x9e
	lsls r5, r5, #1
	movs r3, #0
	ldr r4, _08002504 @ =0x0000013D
_080024A4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r2, r1, r5
	strb r3, [r2]
	adds r1, r1, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080024A4
	bl sub_80299FC
	movs r0, #0x52
	bl sub_80BA57C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080024E0: .4byte sub_8003FEC
_080024E4: .4byte sub_8003D28
_080024E8: .4byte 0x03000004
_080024EC: .4byte 0x06012800
_080024F0: .4byte 0x00000593
_080024F4: .4byte 0x0300002C
_080024F8: .4byte VRAM + 0x000129C0
_080024FC: .4byte gStageData
_08002500: .4byte gPlayers
_08002504: .4byte 0x0000013D

	thumb_func_start sub_8002508
sub_8002508: @ 0x08002508
	push {r4, r5, lr}
	ldr r4, _08002564 @ =gStageData
	ldrb r0, [r4, #4]
	adds r3, r4, #0
	cmp r0, #6
	beq _0800259E
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _08002568 @ =gPlayers
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1c
	ldrb r0, [r3, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08002570
	ldr r2, _0800256C @ =0x0000FFFE
	adds r0, r2, #0
	ldrb r2, [r3, #0xa]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08002572
	.align 2, 0
_08002564: .4byte gStageData
_08002568: .4byte gPlayers
_0800256C: .4byte 0x0000FFFE
_08002570:
	movs r2, #4
_08002572:
	movs r0, #6
	strb r0, [r4, #4]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002592
	ldr r0, _080025A4 @ =gSaveGame
	adds r0, #0x22
	ldrb r3, [r3, #9]
	adds r3, r0, r3
	ldrb r0, [r3]
	cmp r0, #8
	bhi _08002592
	adds r0, #1
	strb r0, [r3]
_08002592:
	adds r0, r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8053284
_0800259E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080025A4: .4byte gSaveGame

	thumb_func_start AddRings
AddRings: @ 0x080025A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080025FC @ =gStageData
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldrh r0, [r6, #0xe]
	cmp r0, #0x48
	beq _080025E6
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _080025E6
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080025E0
	cmp r0, #5
	bne _080025E6
_080025E0:
	movs r0, #1
	bl AddLives
_080025E6:
	ldr r1, _080025FC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08002600
	adds r1, #0xac
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0800260E
	movs r0, #0xff
	strh r0, [r1]
	b _0800260E
	.align 2, 0
_080025FC: .4byte gStageData
_08002600:
	adds r2, r1, #0
	adds r2, #0xac
	ldrh r0, [r2]
	ldr r1, _08002614 @ =0x000003E7
	cmp r0, r1
	bls _0800260E
	strh r1, [r2]
_0800260E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002614: .4byte 0x000003E7

	thumb_func_start sub_8002618
sub_8002618: @ 0x08002618
	push {lr}
	sub sp, #0x1c
	ldr r1, _08002638 @ =gUnknown_080CE52C
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	ldr r0, _0800263C @ =gStageData
	ldrb r1, [r0, #0xa]
	ldrb r2, [r0, #9]
	adds r0, r2, #0
	cmp r0, #8
	bne _08002640
	movs r0, #0x38
	b _080026B2
	.align 2, 0
_08002638: .4byte gUnknown_080CE52C
_0800263C: .4byte gStageData
_08002640:
	cmp r0, #7
	bne _08002648
	movs r0, #0x11
	b _080026B2
_08002648:
	subs r0, r1, #1
	lsls r3, r1, #0x10
	cmp r0, #8
	bhi _080026B6
	lsls r0, r0, #2
	ldr r1, _0800265C @ =_08002660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800265C: .4byte _08002660
_08002660: @ jump table
	.4byte _08002684 @ case 0
	.4byte _08002698 @ case 1
	.4byte _08002698 @ case 2
	.4byte _08002698 @ case 3
	.4byte _08002698 @ case 4
	.4byte _080026B6 @ case 5
	.4byte _080026A8 @ case 6
	.4byte _080026A4 @ case 7
	.4byte _080026A4 @ case 8
_08002684:
	ldr r0, _08002694 @ =gStageData
	ldrh r0, [r0, #0xe]
	movs r1, #4
	cmp r0, #0xb
	bne _08002690
	movs r1, #7
_08002690:
	adds r0, r1, #0
	b _080026B2
	.align 2, 0
_08002694: .4byte gStageData
_08002698:
	asrs r0, r3, #0x10
	lsls r1, r2, #2
	subs r1, #2
	adds r0, r0, r1
	add r0, sp
	b _080026B0
_080026A4:
	movs r0, #0x4c
	b _080026B2
_080026A8:
	lsls r1, r2, #2
	mov r0, sp
	adds r0, #1
	adds r0, r0, r1
_080026B0:
	ldrb r0, [r0]
_080026B2:
	bl sub_8029990
_080026B6:
	add sp, #0x1c
	pop {r0}
	bx r0

	thumb_func_start sub_80026BC
sub_80026BC: @ 0x080026BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r6, _080026D8 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #6
	bne _080026DC
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #1
	b _080026E2
	.align 2, 0
_080026D8: .4byte gStageData
_080026DC:
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #0
_080026E2:
	strh r0, [r1]
	ldr r0, [r6, #0x24]
	adds r1, r6, #0
	adds r1, #0xae
	movs r5, #0
	movs r4, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb5
	strb r5, [r0]
	ldr r2, _080027D8 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080027DC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080027E0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x86
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x87
	strb r5, [r0]
	subs r0, #2
	strb r5, [r0]
	movs r0, #1
	strb r0, [r6, #4]
	ldr r0, _080027E4 @ =sub_8002988
	movs r2, #0x80
	lsls r2, r2, #1
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	adds r1, r6, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	subs r0, #0x86
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0
	movs r7, #0x4e
	adds r7, r7, r6
	mov r8, r7
	movs r1, #0x5e
	adds r1, r1, r6
	mov ip, r1
	movs r7, #0x6e
	adds r7, r7, r6
	mov sb, r7
	adds r5, r6, #0
	adds r5, #0x2e
	movs r3, #0
	adds r4, r6, #0
	adds r4, #0x3e
_08002776:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r0, r5, r1
	strh r3, [r0]
	adds r0, r4, r1
	strh r3, [r0]
	mov r7, r8
	adds r0, r7, r1
	strh r3, [r0]
	mov r7, ip
	adds r0, r7, r1
	strh r3, [r0]
	add r1, sb
	strh r3, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #7
	ble _08002776
	ldr r0, _080027E8 @ =gUnknown_03001060
	adds r0, #0x52
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080027EC @ =gStageData
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	bl sub_8003E44
	movs r7, #0xe
	ldrsh r0, [r6, r7]
	bl sub_8002838
	ldrb r0, [r4, #3]
	cmp r0, #7
	beq _0800281C
	bl sub_802AD64
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _080027F4
	bl sub_8052E30
	ldr r0, _080027F0 @ =gPlayers
	ldrb r1, [r4, #9]
	bl sub_8004F48
	b _08002816
	.align 2, 0
_080027D8: .4byte gUnknown_03006868
_080027DC: .4byte 0x00196225
_080027E0: .4byte 0x3C6EF35F
_080027E4: .4byte sub_8002988
_080027E8: .4byte gUnknown_03001060
_080027EC: .4byte gStageData
_080027F0: .4byte gPlayers
_080027F4:
	cmp r0, #2
	bne _0800280C
	bl sub_8053030
	ldr r0, _08002808 @ =gPlayers
	ldrb r1, [r4, #9]
	bl sub_8004F48
	b _08002826
	.align 2, 0
_08002808: .4byte gPlayers
_0800280C:
	bl sub_80215A0
	adds r1, r4, #0
	adds r1, #0xa4
	str r0, [r1]
_08002816:
	bl sub_8002618
	b _08002826
_0800281C:
	bl sub_8022FB0
	ldr r0, _08002834 @ =0x00000322
	bl sub_80BA57C
_08002826:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002834: .4byte 0x00000322

	thumb_func_start sub_8002838
sub_8002838: @ 0x08002838
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _08002864 @ =gStageData
	movs r2, #0
	ldrb r0, [r3, #3]
	cmp r0, #7
	bne _0800284A
	b _08002978
_0800284A:
	lsls r0, r1, #0x10
	ldr r1, _08002868 @ =0xFFF30000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #0x24
	bls _08002858
	b _08002950
_08002858:
	lsls r0, r0, #2
	ldr r1, _0800286C @ =_08002870
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002864: .4byte gStageData
_08002868: .4byte 0xFFF30000
_0800286C: .4byte _08002870
_08002870: @ jump table
	.4byte _08002904 @ case 0
	.4byte _08002950 @ case 1
	.4byte _08002950 @ case 2
	.4byte _08002950 @ case 3
	.4byte _08002950 @ case 4
	.4byte _08002950 @ case 5
	.4byte _08002950 @ case 6
	.4byte _08002950 @ case 7
	.4byte _08002950 @ case 8
	.4byte _08002950 @ case 9
	.4byte _08002950 @ case 10
	.4byte _08002910 @ case 11
	.4byte _0800291C @ case 12
	.4byte _08002950 @ case 13
	.4byte _08002950 @ case 14
	.4byte _08002950 @ case 15
	.4byte _08002950 @ case 16
	.4byte _08002950 @ case 17
	.4byte _08002950 @ case 18
	.4byte _08002950 @ case 19
	.4byte _08002950 @ case 20
	.4byte _08002950 @ case 21
	.4byte _08002950 @ case 22
	.4byte _08002950 @ case 23
	.4byte _08002950 @ case 24
	.4byte _08002950 @ case 25
	.4byte _08002950 @ case 26
	.4byte _08002950 @ case 27
	.4byte _08002950 @ case 28
	.4byte _08002950 @ case 29
	.4byte _08002928 @ case 30
	.4byte _08002934 @ case 31
	.4byte _0800294C @ case 32
	.4byte _08002950 @ case 33
	.4byte _08002950 @ case 34
	.4byte _08002950 @ case 35
	.4byte _08002940 @ case 36
_08002904:
	ldr r0, _0800290C @ =gUnknown_08E2EC78
	ldr r2, [r0]
	b _08002950
	.align 2, 0
_0800290C: .4byte gUnknown_08E2EC78
_08002910:
	ldr r0, _08002918 @ =gUnknown_08E2EC78
	ldr r2, [r0, #4]
	b _08002950
	.align 2, 0
_08002918: .4byte gUnknown_08E2EC78
_0800291C:
	ldr r0, _08002924 @ =gUnknown_08E2EC78
	ldr r2, [r0, #8]
	b _08002950
	.align 2, 0
_08002924: .4byte gUnknown_08E2EC78
_08002928:
	ldr r0, _08002930 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x10]
	b _08002950
	.align 2, 0
_08002930: .4byte gUnknown_08E2EC78
_08002934:
	ldr r0, _0800293C @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x14]
	b _08002950
	.align 2, 0
_0800293C: .4byte gUnknown_08E2EC78
_08002940:
	ldr r0, _08002948 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x18]
	b _08002950
	.align 2, 0
_08002948: .4byte gUnknown_08E2EC78
_0800294C:
	ldr r0, _08002974 @ =gUnknown_08E2EC78
	ldr r2, [r0, #0x1c]
_08002950:
	cmp r2, #0
	beq _08002978
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r2, #4
	str r0, [r1]
	ldrh r1, [r2, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	movs r1, #0
	bl sub_80525F0
	b _08002982
	.align 2, 0
_08002974: .4byte gUnknown_08E2EC78
_08002978:
	adds r0, r3, #0
	adds r0, #0x84
	strb r2, [r0]
	subs r0, #4
	str r2, [r0]
_08002982:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8002988
sub_8002988: @ 0x08002988
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _080029F0 @ =gStageData
	ldr r1, _080029F4 @ =gUnknown_080CE548
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_805235C
	bl sub_802B788
	ldrb r0, [r5, #3]
	cmp r0, #7
	beq _080029AE
	bl sub_8029AE0
_080029AE:
	ldr r1, _080029F8 @ =gCamera
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldrh r0, [r5, #0xe]
	ldrb r1, [r5, #0xb]
	bl sub_804F740
	ldrb r0, [r5, #3]
	cmp r0, #7
	bne _080029C6
	b _08002AC0
_080029C6:
	cmp r0, #5
	bhi _08002A00
	ldrb r4, [r5, #6]
	adds r0, r4, #0
	bl sub_8004178
	ldr r1, _080029FC @ =gPlayers
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r1
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004178
	b _08002A1C
	.align 2, 0
_080029F0: .4byte gStageData
_080029F4: .4byte gUnknown_080CE548
_080029F8: .4byte gCamera
_080029FC: .4byte gPlayers
_08002A00:
	cmp r0, #6
	bne _08002A1C
	movs r2, #0
_08002A06:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8004178
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08002A06
_08002A1C:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08002A2E
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056AB0
	b _08002B44
_08002A2E:
	ldrb r0, [r5, #9]
	adds r1, r0, #0
	cmp r1, #6
	bhi _08002A9C
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	bne _08002A50
	ldrh r0, [r5, #0xe]
	cmp r0, #0xb
	beq _08002A90
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	beq _08002A90
	ldrb r0, [r5, #9]
	bl sub_8056AFC
	b _08002B44
_08002A50:
	cmp r1, #2
	bne _08002A58
	adds r0, #9
	b _08002A88
_08002A58:
	cmp r1, #7
	bls _08002AA0
	cmp r1, #8
	bne _08002A74
	ldr r0, _08002A70 @ =gStageData
	adds r0, #0xbe
	ldrb r1, [r5, #9]
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #1
	b _08002A80
	.align 2, 0
_08002A70: .4byte gStageData
_08002A74:
	ldr r0, _08002A98 @ =gStageData
	adds r0, #0xbe
	ldrb r4, [r5, #9]
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #2
_08002A80:
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r5, #9]
	adds r0, #0x12
_08002A88:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_806611C
_08002A90:
	bl sub_8057ECC
	b _08002B44
	.align 2, 0
_08002A98: .4byte gStageData
_08002A9C:
	cmp r1, #7
	bne _08002AAC
_08002AA0:
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056B78
	b _08002B44
_08002AAC:
	cmp r1, #8
	bne _08002B44
	ldrb r0, [r5, #9]
	bl sub_806611C
	bl sub_8056B78
	bl sub_8081C80
	b _08002B44
_08002AC0:
	movs r2, #0
	ldr r7, _08002BA0 @ =gPlayers
	mov r8, r7
_08002AC6:
	ldr r0, _08002BA4 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _08002B2A
	adds r0, r4, #0
	bl sub_8004178
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r1, r8
	adds r5, r0, r1
	mov r7, sp
	adds r0, r7, r4
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2a
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r3]
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _08002BA8 @ =gStageData
	movs r3, #3
	ldrb r0, [r0, #6]
	cmp r4, r0
	bne _08002B16
	movs r3, #1
_08002B16:
	adds r2, r5, #0
	adds r2, #0x2b
	lsls r3, r3, #2
	ldrb r0, [r2]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_08002B2A:
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r6, r7
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08002AC6
	bl sub_8057ECC
	ldr r0, _08002BA8 @ =gStageData
	adds r0, #0xae
	ldr r1, _08002BAC @ =0x00002A30
	strh r1, [r0]
_08002B44:
	ldr r0, _08002BB0 @ =0x0400004C
	movs r1, #0
	strh r1, [r0]
	ldr r4, _08002BA8 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08002B8A
	bl sub_80261B0
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _08002B7C
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08002B7C
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xb]
	bl sub_80275F0
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _08002B7C
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002B7C:
	ldr r0, _08002BA8 @ =gStageData
	adds r2, r0, #0
	adds r2, #0xb9
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x85
	strb r1, [r0]
_08002B8A:
	ldr r0, _08002BB4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002BB8 @ =sub_8002BBC
	str r0, [r1, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002BA0: .4byte gPlayers
_08002BA4: .4byte gUnknown_03001060
_08002BA8: .4byte gStageData
_08002BAC: .4byte 0x00002A30
_08002BB0: .4byte 0x0400004C
_08002BB4: .4byte gCurTask
_08002BB8: .4byte sub_8002BBC

	thumb_func_start sub_8002BBC
sub_8002BBC: @ 0x08002BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08002BF8 @ =gStageData
	movs r0, #0
	mov sl, r0
	ldr r0, _08002BFC @ =gUnknown_03002C24
	movs r1, #6
	strb r1, [r0]
	ldrb r0, [r3, #3]
	cmp r0, #4
	bls _08002C04
	adds r1, r3, #0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08002C04
	ldr r2, _08002C00 @ =gUnknown_03002B90
	ldr r1, [r1, #0x1c]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r2, #2]
	adds r2, r3, #0
	str r0, [r2, #0x1c]
	ldrb r1, [r2, #4]
	b _08002C16
	.align 2, 0
_08002BF8: .4byte gStageData
_08002BFC: .4byte gUnknown_03002C24
_08002C00: .4byte gUnknown_03002B90
_08002C04:
	ldrb r0, [r3, #4]
	adds r1, r0, #0
	cmp r1, #4
	beq _08002C16
	ldr r0, [r3, #0x1c]
	adds r0, #1
	str r0, [r3, #0x1c]
	movs r0, #1
	mov sl, r0
_08002C16:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08002D12
	cmp r1, #3
	beq _08002C24
	b _08002DC0
_08002C24:
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	add r0, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08002CC8 @ =0x00008C9F
	cmp r0, r2
	bhi _08002C3A
	b _08002DC0
_08002C3A:
	strh r2, [r1]
	ldr r3, _08002CC4 @ =gStageData
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08002C4C
	ldrb r0, [r3, #3]
	cmp r0, #6
	beq _08002C4C
	b _08002DC0
_08002C4C:
	ldr r0, _08002CC4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08002CCC @ =gPlayers
	adds r4, r0, r2
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
	adds r5, r0, r2
	ldr r0, [r4, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08002C82
	b _08002DC0
_08002C82:
	bl sub_8003A14
	ldr r1, _08002CC4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08002C9C
	bl sub_802789C
	ldr r0, _08002CC4 @ =gStageData
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08002C9C:
	ldr r2, _08002CC4 @ =gStageData
	ldrb r0, [r2, #9]
	cmp r0, #8
	beq _08002CD0
	adds r0, r4, #0
	bl sub_8008E38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _08002CBA
	b _08002DC0
_08002CBA:
	adds r0, r5, #0
	bl sub_8008E38
	b _08002DC0
	.align 2, 0
_08002CC4: .4byte gStageData
_08002CC8: .4byte 0x00008C9F
_08002CCC: .4byte gPlayers
_08002CD0:
	ldr r3, _08002CF4 @ =gStageData
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08002CF8
	adds r0, r4, #0
	bl sub_8008E38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08002DC0
	adds r0, r5, #0
	bl sub_80105F0
	b _08002DC0
	.align 2, 0
_08002CF4: .4byte gStageData
_08002CF8:
	adds r0, r5, #0
	bl sub_8008E38
	ldr r0, [r5, #4]
	orrs r0, r6
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	orrs r0, r6
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_80105F0
	b _08002DC0
_08002D12:
	cmp r1, #3
	bne _08002D82
	ldr r5, _08002E0C @ =gUnknown_03002B90
	adds r1, r3, #0
	adds r1, #0xae
	ldrh r0, [r1]
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0x3c
	beq _08002D60
	cmp r2, #0x78
	beq _08002D60
	cmp r2, #0xb4
	beq _08002D60
	cmp r2, #0xf0
	beq _08002D60
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	beq _08002D60
	adds r0, #0x3c
	cmp r2, r0
	bne _08002D66
_08002D60:
	ldr r0, _08002E10 @ =0x00000336
	bl sub_80BA57C
_08002D66:
	ldrh r1, [r4]
	ldr r0, _08002E14 @ =0x00002A30
	cmp r1, r0
	bhi _08002D76
	ldrh r1, [r5]
	ldr r0, _08002E18 @ =0x0000600E
	cmp r1, r0
	bne _08002D82
_08002D76:
	movs r0, #0
	strh r0, [r4]
	ldr r0, _08002E1C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08002E20 @ =sub_8003288
	str r0, [r1, #8]
_08002D82:
	ldr r3, _08002E24 @ =gUnknown_03001060
	adds r4, r3, #0
	adds r4, #0x52
	ldrh r0, [r4]
	mov r1, sl
	adds r2, r0, r1
	strh r2, [r4]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08002E28 @ =0x000001FF
	cmp r0, r5
	bls _08002DC0
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	ands r2, r5
	strh r2, [r4]
	adds r2, r3, #0
	adds r2, #0x54
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
_08002DC0:
	ldr r0, _08002E2C @ =gStageData
	ldrb r1, [r0, #3]
	cmp r1, #7
	bne _08002DCA
	b _08003008
_08002DCA:
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002E76
	movs r2, #0
	mov r8, r2
	mov sb, r1
_08002DDA:
	mov r3, sb
	ldrb r0, [r3]
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002E62
	lsls r1, r3, #1
	ldr r0, _08002E2C @ =gStageData
	adds r0, #0x2e
	adds r1, r1, r0
	ldrh r3, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r3, r0
	cmp r0, #0
	bge _08002E30
	movs r0, #0
	b _08002E34
	.align 2, 0
_08002E0C: .4byte gUnknown_03002B90
_08002E10: .4byte 0x00000336
_08002E14: .4byte 0x00002A30
_08002E18: .4byte 0x0000600E
_08002E1C: .4byte gCurTask
_08002E20: .4byte sub_8003288
_08002E24: .4byte gUnknown_03001060
_08002E28: .4byte 0x000001FF
_08002E2C: .4byte gStageData
_08002E30:
	mov r2, sl
	subs r0, r3, r2
_08002E34:
	strh r0, [r1]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	ldr r6, _08002EB8 @ =gStageData
	adds r6, #0x2e
	adds r4, r0, r6
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002E50
	ldr r0, _08002EBC @ =0x00000249
	bl sub_80BA57C
_08002E50:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002E62
	movs r1, #1
	lsls r1, r5
	mov r3, sb
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
_08002E62:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov r8, r3
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002DDA
_08002E76:
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002F02
	movs r0, #0
	mov r8, r0
	adds r6, r1, #0
	ldr r1, _08002EB8 @ =gStageData
	adds r1, #0x3e
	mov sb, r1
_08002E8C:
	ldrb r0, [r6]
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08002EEE
	lsls r0, r3, #1
	mov r1, sb
	adds r2, r0, r1
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _08002EC0
	movs r0, #0
	b _08002EC4
	.align 2, 0
_08002EB8: .4byte gStageData
_08002EBC: .4byte 0x00000249
_08002EC0:
	mov r3, sl
	subs r0, r1, r3
_08002EC4:
	strh r0, [r2]
	asrs r5, r7, #0x10
	lsls r0, r5, #1
	mov r1, sb
	adds r4, r0, r1
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08002EDE
	ldr r0, _08002F44 @ =0x00000249
	bl sub_80BA57C
_08002EDE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08002EEE
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
	strb r0, [r6]
_08002EEE:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002E8C
_08002F02:
	movs r2, #0
	mov r8, r2
	ldr r3, _08002F48 @ =gUnknown_030008FE
	mov sb, r3
	movs r0, #0x10
	add r0, sb
	mov ip, r0
	ldr r1, _08002F4C @ =0x03FF0000
	mov sl, r1
_08002F14:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xf
	mov r0, sb
	adds r6, r1, r0
	subs r0, #0x10
	adds r4, r1, r0
	add r1, ip
	ldrh r5, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r7, r2, #0
	cmp r0, #0
	beq _08002F82
	ldrh r0, [r1]
	movs r2, #0
	ldrsh r3, [r1, r2]
	cmp r3, #0
	bne _08002F50
	movs r3, #0x78
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _08002F80
	.align 2, 0
_08002F44: .4byte 0x00000249
_08002F48: .4byte gUnknown_030008FE
_08002F4C: .4byte 0x03FF0000
_08002F50:
	cmp r3, #0
	bge _08002F62
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002F82
	movs r0, #1
	b _08002F80
_08002F62:
	subs r0, r5, r0
	strh r0, [r4]
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #7
	bgt _08002F74
	adds r0, r3, #1
	strh r0, [r1]
_08002F74:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _08002F82
	movs r0, #0
	strh r0, [r4]
_08002F80:
	strh r0, [r1]
_08002F82:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _08002F90
	strh r1, [r4]
_08002F90:
	movs r0, #0
	ldrsh r3, [r4, r0]
	ldrh r0, [r6]
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r3, r1
	ble _08002FB2
	adds r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08002FCA
	b _08002FC8
_08002FB2:
	cmp r3, r1
	bge _08002FCA
	subs r0, #0x10
	strh r0, [r6]
	ldrh r3, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08002FCA
_08002FC8:
	strh r3, [r6]
_08002FCA:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r7, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08002F14
	bl sub_80043B8
	ldr r3, _08003034 @ =gStageData
	ldrb r2, [r3, #3]
	cmp r2, #7
	beq _08003008
	ldr r0, _08003038 @ =gUnknown_03003F8C
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003008
	cmp r2, #1
	beq _08003008
	cmp r2, #2
	beq _08003008
	ldrh r0, [r3, #0xe]
	cmp r0, #1
	bne _08003004
	cmp r2, #5
	beq _08003008
_08003004:
	bl sub_800341C
_08003008:
	ldr r4, _08003034 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _08003018
	bl sub_8026478
	bl sub_80264F0
_08003018:
	adds r1, r4, #0
	adds r1, #0xbb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08003026
	subs r0, #1
	strb r0, [r1]
_08003026:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003034: .4byte gStageData
_08003038: .4byte gUnknown_03003F8C

	thumb_func_start sub_800303C
sub_800303C: @ 0x0800303C
	push {lr}
	ldr r3, _08003058 @ =gStageData
	ldrb r1, [r3, #5]
	ldrb r2, [r3, #6]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	bne _0800305C
	adds r0, r3, #0
	adds r0, #0xb8
	strb r1, [r0]
	b _08003070
	.align 2, 0
_08003058: .4byte gStageData
_0800305C:
	cmp r1, #0
	bne _08003064
	movs r0, #1
	b _08003068
_08003064:
	movs r0, #1
	eors r2, r0
_08003068:
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0xb8
	strb r2, [r0]
_08003070:
	ldr r0, _0800307C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08003080 @ =sub_8003084
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800307C: .4byte gCurTask
_08003080: .4byte sub_8003084

	thumb_func_start sub_8003084
sub_8003084: @ 0x08003084
	push {r4, r5, r6, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08003096
	bl sub_802613C
	b _080031B0
_08003096:
	ldr r2, _080030D0 @ =gPlayers
	ldr r3, _080030D4 @ =gStageData
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
	ldrb r0, [r3, #6]
	adds r5, r3, #0
	cmp r0, #0
	bne _080030E0
	ldr r1, _080030D8 @ =gUnknown_03003C40
	ldr r0, _080030DC @ =0x000068E8
	strh r0, [r1]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0x12]
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	b _08003100
	.align 2, 0
_080030D0: .4byte gPlayers
_080030D4: .4byte gStageData
_080030D8: .4byte gUnknown_03003C40
_080030DC: .4byte 0x000068E8
_080030E0:
	ldr r1, _08003154 @ =gUnknown_03002B90
	ldrh r2, [r1]
	ldr r0, _08003158 @ =0x000068E8
	cmp r2, r0
	bne _08003102
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #5]
	ldrh r0, [r1, #0x14]
	adds r4, r5, #0
	adds r4, #0xae
	strh r0, [r4]
	ldr r1, _0800315C @ =gUnknown_03003C40
	strh r2, [r1]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0x12]
	ldrh r0, [r4]
_08003100:
	strh r0, [r1, #0x14]
_08003102:
	movs r1, #0
	ldr r0, _08003160 @ =gUnknown_03001060
	ldrb r3, [r0, #7]
	ldr r6, _08003158 @ =0x000068E8
	movs r4, #1
_0800310C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800312A
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08003154 @ =gUnknown_03002B90
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r6
	bne _080031B0
_0800312A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800310C
	adds r4, r5, #0
	ldrb r3, [r4, #5]
	ldrb r2, [r4, #6]
	lsls r0, r2, #1
	asrs r3, r0
	movs r0, #3
	ands r3, r0
	adds r1, r3, #0
	cmp r1, #2
	bne _08003164
	adds r0, r4, #0
	adds r0, #0xb8
	strb r1, [r0]
	b _0800317C
	.align 2, 0
_08003154: .4byte gUnknown_03002B90
_08003158: .4byte 0x000068E8
_0800315C: .4byte gUnknown_03003C40
_08003160: .4byte gUnknown_03001060
_08003164:
	cmp r1, #0
	bne _08003170
	movs r0, #1
	ands r2, r0
	adds r0, r4, #0
	b _08003178
_08003170:
	movs r0, #1
	eors r2, r0
	ands r2, r0
	adds r0, r5, #0
_08003178:
	adds r0, #0xb8
	strb r2, [r0]
_0800317C:
	adds r1, r3, #0
	movs r0, #0
	movs r2, #0
	bl sub_8056090
	ldr r0, _080031B8 @ =gUnknown_030010C0
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
	ldr r1, _080031BC @ =gStageData
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1, #0x3c]
	ldr r0, _080031C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080031C4 @ =sub_80031C8
	str r0, [r1, #8]
_080031B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080031B8: .4byte gUnknown_030010C0
_080031BC: .4byte gStageData
_080031C0: .4byte gCurTask
_080031C4: .4byte sub_80031C8

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
	bl sub_802C100
	bl sub_8051140
	ldr r1, _08003270 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08003274 @ =gUnknown_03003F94
	ldr r0, _08003278 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800327C @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _08003280 @ =gUnknown_03006208
	ldr r0, _08003284 @ =gUnknown_03003F34
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
_08003274: .4byte gUnknown_03003F94
_08003278: .4byte gUnknown_03003D20
_0800327C: .4byte gUnknown_03006840
_08003280: .4byte gUnknown_03006208
_08003284: .4byte gUnknown_03003F34

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
	ldr r2, _080032D0 @ =gUnknown_03003C40
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
_080032D0: .4byte gUnknown_03003C40
_080032D4: .4byte 0x0000600E
_080032D8: .4byte gUnknown_03001060
_080032DC:
	ldr r2, _0800338C @ =gUnknown_03002B90
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
	ldr r2, _08003398 @ =gUnknown_03003C40
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
	ldr r1, _0800338C @ =gUnknown_03002B90
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
	bl sub_80BA57C
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
_0800338C: .4byte gUnknown_03002B90
_08003390: .4byte 0x0000600E
_08003394: .4byte gUnknown_03001060
_08003398: .4byte gUnknown_03003C40
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
	ldr r0, _080034A8 @ =gUnknown_03003F8C
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
	ldr r0, _080034B0 @ =gSaveGame
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
_080034A8: .4byte gUnknown_03003F8C
_080034AC: .4byte gPlayers
_080034B0: .4byte gSaveGame
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
	ldr r2, _080034D0 @ =gSaveGame
	b _08003516
	.align 2, 0
_080034D0: .4byte gSaveGame
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
	ldr r2, _080034F8 @ =gSaveGame
	b _08003516
	.align 2, 0
_080034F8: .4byte gSaveGame
_080034FC:
	ldr r2, _080035E0 @ =gSaveGame
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
	ldr r0, _080035F0 @ =sub_8003620
	ldr r2, _080035F4 @ =0x0000FFFE
	ldr r1, _080035F8 @ =sub_8003D68
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
	ldr r0, _08003600 @ =gUnknown_030035A0
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
	ldr r2, _08003610 @ =gUnknown_03003562
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
_080035E0: .4byte gSaveGame
_080035E4: .4byte gUnknown_080CE54C
_080035E8: .4byte 0x00000366
_080035EC: .4byte ewram_end
_080035F0: .4byte sub_8003620
_080035F4: .4byte 0x0000FFFE
_080035F8: .4byte sub_8003D68
_080035FC: .4byte gStageData
_08003600: .4byte gUnknown_030035A0
_08003604: .4byte 0x03000010
_08003608: .4byte 0x0000FFFF
_0800360C: .4byte 0x040000D4
_08003610: .4byte gUnknown_03003562
_08003614: .4byte 0x03000004
_08003618: .4byte 0x80000003
_0800361C: .4byte 0x0300000A

	thumb_func_start sub_8003620
sub_8003620: @ 0x08003620
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
	bl sub_80BAD94
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003632
	movs r0, #0x8e
	bl sub_80BA57C
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
	bl sub_80BA6DC
	movs r0, #0x8e
	bl sub_80BAD94
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
	ldr r0, _0800374C @ =gUnknown_03003B7C
	ldrh r2, [r4, #2]
	ldrh r1, [r0]
	adds r3, r1, #0
	eors r3, r2
	movs r0, #3
	ands r0, r1
	ands r3, r0
	ldr r0, _08003750 @ =gUnknown_030035A0
	ldrh r0, [r0]
	ands r0, r2
	strh r0, [r4, #2]
	ldr r0, _08003754 @ =gUnknown_03003F8C
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
_0800374C: .4byte gUnknown_03003B7C
_08003750: .4byte gUnknown_030035A0
_08003754: .4byte gUnknown_03003F8C
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
	ldr r0, _080037E4 @ =gUnknown_03003F8C
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
_080037E4: .4byte gUnknown_03003F8C
_080037E8: .4byte gPlayers
_080037EC:
	movs r2, #0
	ldr r6, _08003860 @ =gUnknown_03002B90
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
_08003860: .4byte gUnknown_03002B90
_08003864: .4byte gPlayers
_08003868: .4byte 0x000068D0
_0800386C: .4byte gFlags
_08003870: .4byte 0xFFFFFBFF
_08003874:
	ldr r0, _080038B4 @ =gUnknown_03003F8C
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
	bl sub_80BA6DC
	movs r0, #0x8e
	bl sub_80BAD94
	ldr r0, _080038C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08003A08
	.align 2, 0
_080038B4: .4byte gUnknown_03003F8C
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
	bl sub_80BA57C
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _08003928
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08003950
	ldr r1, _08003910 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08003914 @ =gUnknown_03003F94
	ldr r0, _08003918 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800391C @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _08003920 @ =gUnknown_03006208
	ldr r0, _08003924 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	b _080039F4
	.align 2, 0
_08003908: .4byte gFlags
_0800390C: .4byte 0xFFFFFBFF
_08003910: .4byte 0x0000FFFF
_08003914: .4byte gUnknown_03003F94
_08003918: .4byte gUnknown_03003D20
_0800391C: .4byte gUnknown_03006840
_08003920: .4byte gUnknown_03006208
_08003924: .4byte gUnknown_03003F34
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
	bl sub_802C100
	bl sub_8051140
_08003950:
	bl sub_8001E58
	ldr r1, _08003988 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800398C @ =gUnknown_03003F94
	ldr r0, _08003990 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08003994 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08003998 @ =gUnknown_03006208
	ldr r0, _0800399C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080039A0 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #3
	bne _080039A4
	movs r0, #0
	movs r1, #2
	bl sub_808723C
	b _08003A08
	.align 2, 0
_08003984: .4byte gPlayers
_08003988: .4byte 0x0000FFFF
_0800398C: .4byte gUnknown_03003F94
_08003990: .4byte gUnknown_03003D20
_08003994: .4byte gUnknown_03006840
_08003998: .4byte gUnknown_03006208
_0800399C: .4byte gUnknown_03003F34
_080039A0: .4byte gStageData
_080039A4:
	cmp r0, #4
	bne _080039B2
	movs r0, #0
	movs r1, #3
	bl sub_808723C
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
	bl sub_8002210
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
	bl sub_8002210
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

	thumb_func_start sub_8003A14
sub_8003A14: @ 0x08003A14
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08003A80 @ =sub_8003A90
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08003A84 @ =sub_80040BC
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #0
	movs r5, #0
_08003A3A:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08003A88 @ =gPlayers
	adds r0, r0, r1
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r0, r2
	strb r5, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r5, [r1]
	bl sub_8019A64
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003A3A
	ldr r0, _08003A8C @ =gStageData
	movs r1, #0
	str r1, [r0, #0x24]
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A80: .4byte sub_8003A90
_08003A84: .4byte sub_80040BC
_08003A88: .4byte gPlayers
_08003A8C: .4byte gStageData

	thumb_func_start sub_8003A90
sub_8003A90: @ 0x08003A90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08003AB0 @ =gCurTask
	mov r8, r0
	ldr r1, [r0]
	ldrh r6, [r1, #6]
	ldr r0, _08003AB4 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08003AB8
	adds r0, r1, #0
	bl TaskDestroy
	b _08003B1C
	.align 2, 0
_08003AB0: .4byte gCurTask
_08003AB4: .4byte gStageData
_08003AB8:
	ldr r0, _08003B28 @ =0x03000004
	adds r7, r6, r0
	ldr r0, _08003B2C @ =0x06012000
	str r0, [r7]
	movs r0, #0
	mov ip, r0
	movs r1, #0
	ldr r5, _08003B30 @ =0x00000593
	strh r5, [r7, #0xc]
	movs r0, #2
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	movs r4, #0x50
	strh r4, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	mov r0, ip
	strb r0, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	str r1, [r7, #8]
	ldr r0, _08003B34 @ =0x0300002C
	adds r7, r6, r0
	ldr r0, _08003B38 @ =0x060129C0
	str r0, [r7]
	strh r5, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r2, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	mov r0, ip
	strb r0, [r7, #0x1f]
	str r2, [r7, #0x20]
	str r1, [r7, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08003B3C @ =sub_8003B40
	str r0, [r1, #8]
_08003B1C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B28: .4byte 0x03000004
_08003B2C: .4byte 0x06012000
_08003B30: .4byte 0x00000593
_08003B34: .4byte 0x0300002C
_08003B38: .4byte 0x060129C0
_08003B3C: .4byte sub_8003B40

	thumb_func_start sub_8003B40
sub_8003B40: @ 0x08003B40
	push {r4, r5, r6, lr}
	ldr r5, _08003B60 @ =gCurTask
	ldr r1, [r5]
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, _08003B64 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08003B68
	adds r0, r1, #0
	bl TaskDestroy
	b _08003BCA
	.align 2, 0
_08003B60: .4byte gCurTask
_08003B64: .4byte gStageData
_08003B68:
	ldrh r0, [r4]
	cmp r0, #4
	bne _08003B74
	movs r0, #0x95
	bl sub_80BA57C
_08003B74:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _08003B8C @ =0x012B0000
	cmp r0, r1
	bls _08003B94
	ldr r1, [r5]
	ldr r0, _08003B90 @ =sub_8003C38
	str r0, [r1, #8]
	b _08003BCA
	.align 2, 0
_08003B8C: .4byte 0x012B0000
_08003B90: .4byte sub_8003C38
_08003B94:
	ldrh r5, [r4]
	adds r0, r5, #0
	cmp r5, #0x78
	bls _08003B9E
	movs r5, #0x78
_08003B9E:
	cmp r0, #3
	bls _08003BCA
	ldr r0, _08003BD0 @ =0x03000004
	adds r4, r6, r0
	strh r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08003BD4 @ =0x0300002C
	adds r4, r6, r0
	movs r0, #0xf0
	subs r0, r0, r5
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08003BCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003BD0: .4byte 0x03000004
_08003BD4: .4byte 0x0300002C

	thumb_func_start sub_8003BD8
sub_8003BD8: @ 0x08003BD8
	push {r4, r5, lr}
	ldr r5, _08003C1C @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldr r1, _08003C20 @ =0x03000054
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	adds r1, #2
	adds r3, r2, r1
	movs r1, #1
	strh r1, [r3]
	ldr r3, _08003C24 @ =0x03000058
	adds r1, r2, r3
	strh r4, [r1]
	ldr r1, _08003C28 @ =0x0300005A
	adds r3, r2, r1
	movs r1, #0x80
	strh r1, [r3]
	ldr r1, _08003C2C @ =0x0300005C
	adds r3, r2, r1
	movs r1, #0xbf
	strh r1, [r3]
	ldr r3, _08003C30 @ =0x0300005E
	adds r2, r2, r3
	strh r4, [r2]
	bl ScreenFadeUpdateValues
	ldr r1, [r5]
	ldr r0, _08003C34 @ =sub_8003C38
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003C1C: .4byte gCurTask
_08003C20: .4byte 0x03000054
_08003C24: .4byte 0x03000058
_08003C28: .4byte 0x0300005A
_08003C2C: .4byte 0x0300005C
_08003C30: .4byte 0x0300005E
_08003C34: .4byte sub_8003C38

	thumb_func_start sub_8003C38
sub_8003C38: @ 0x08003C38
	push {r4, lr}
	ldr r4, _08003C94 @ =gStageData
	ldrb r0, [r4, #6]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r0
	lsls r2, r2, #4
	ldr r3, _08003C98 @ =gPlayers
	adds r2, r2, r3
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r2, #0x4a
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x4a
	strh r1, [r0]
	ldrb r0, [r4, #3]
	cmp r0, #6
	bne _08003C84
	movs r0, #5
	strb r0, [r4, #4]
	movs r0, #0xaa
	strb r0, [r4, #5]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r0]
	ldr r0, _08003C9C @ =sub_800303C
	str r0, [r1, #8]
_08003C84:
	ldr r0, _08003CA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003C94: .4byte gStageData
_08003C98: .4byte gPlayers
_08003C9C: .4byte sub_800303C
_08003CA0: .4byte gCurTask

	thumb_func_start sub_8003CA4
sub_8003CA4: @ 0x08003CA4
	push {r4, r5, lr}
	ldr r5, _08003CE8 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldr r1, _08003CEC @ =0x03000054
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	adds r1, #2
	adds r3, r2, r1
	movs r1, #1
	strh r1, [r3]
	ldr r3, _08003CF0 @ =0x03000058
	adds r1, r2, r3
	strh r4, [r1]
	ldr r1, _08003CF4 @ =0x0300005A
	adds r3, r2, r1
	movs r1, #0x80
	strh r1, [r3]
	ldr r1, _08003CF8 @ =0x0300005C
	adds r3, r2, r1
	movs r1, #0xbf
	strh r1, [r3]
	ldr r3, _08003CFC @ =0x0300005E
	adds r2, r2, r3
	strh r4, [r2]
	bl ScreenFadeUpdateValues
	ldr r1, [r5]
	ldr r0, _08003D00 @ =sub_8004058
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003CE8: .4byte gCurTask
_08003CEC: .4byte 0x03000054
_08003CF0: .4byte 0x03000058
_08003CF4: .4byte 0x0300005A
_08003CF8: .4byte 0x0300005C
_08003CFC: .4byte 0x0300005E
_08003D00: .4byte sub_8004058

	thumb_func_start sub_8003D04
sub_8003D04: @ 0x08003D04
	push {lr}
	ldr r1, _08003D1C @ =gStageData
	strb r0, [r1, #9]
	movs r0, #1
	strb r0, [r1, #0xa]
	strh r0, [r1, #0xe]
	ldr r0, _08003D20 @ =sub_8003F40
	ldr r1, _08003D24 @ =0x00007FFF
	bl sub_8001D58
	pop {r0}
	bx r0
	.align 2, 0
_08003D1C: .4byte gStageData
_08003D20: .4byte sub_8003F40
_08003D24: .4byte 0x00007FFF

	thumb_func_start sub_8003D28
sub_8003D28: @ 0x08003D28
	bx lr
	.align 2, 0

	thumb_func_start sub_8003D2C
sub_8003D2C: @ 0x08003D2C
	push {r4, lr}
	ldr r0, _08003D60 @ =gStageData
	ldrb r0, [r0, #6]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r1, _08003D64 @ =gPlayers
	adds r4, r4, r1
	bl sub_8004CC8
	adds r4, #0x2b
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_8004CC8
	bl sub_802C100
	bl sub_8051140
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003D60: .4byte gStageData
_08003D64: .4byte gPlayers

	thumb_func_start sub_8003D68
sub_8003D68: @ 0x08003D68
	push {lr}
	ldr r0, _08003D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08003D80: .4byte gCurTask

	thumb_func_start sub_8003D84
sub_8003D84: @ 0x08003D84
	bx lr
	.align 2, 0

	thumb_func_start sub_8003D88
sub_8003D88: @ 0x08003D88
	bx lr
	.align 2, 0

	thumb_func_start sub_8003D8C
sub_8003D8C: @ 0x08003D8C
	bx lr
	.align 2, 0

	thumb_func_start AddLives
AddLives: @ 0x08003D90
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003DB0 @ =gStageData
	adds r3, r0, #0
	adds r3, #0xb4
	ldrb r2, [r3]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bls _08003DB4
	movs r0, #0xff
	strb r0, [r3]
	b _08003DB6
	.align 2, 0
_08003DB0: .4byte gStageData
_08003DB4:
	strb r1, [r3]
_08003DB6:
	ldr r1, _08003DC0 @ =gUnknown_03001CF0
	movs r0, #0x10
	strb r0, [r1, #3]
	pop {r0}
	bx r0
	.align 2, 0
_08003DC0: .4byte gUnknown_03001CF0

	thumb_func_start sub_8003DC4
sub_8003DC4: @ 0x08003DC4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003DE4 @ =gStageData
	adds r3, r0, #0
	adds r3, #0xb4
	ldrb r2, [r3]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bls _08003DE8
	movs r0, #0xff
	strb r0, [r3]
	b _08003DEA
	.align 2, 0
_08003DE4: .4byte gStageData
_08003DE8:
	strb r1, [r3]
_08003DEA:
	pop {r0}
	bx r0
	.align 2, 0

@ Input:
    @ R0 = SongId
	thumb_func_start sub_8003DF0
sub_8003DF0: @ 0x08003DF0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E08 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _08003E04
	adds r0, r1, #0
	bl sub_80BA57C
_08003E04:
	pop {r0}
	bx r0
	.align 2, 0
_08003E08: .4byte gStageData

	thumb_func_start sub_8003E0C
sub_8003E0C: @ 0x08003E0C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E24 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _08003E20
	adds r0, r1, #0
	bl sub_80BA5F4
_08003E20:
	pop {r0}
	bx r0
	.align 2, 0
_08003E24: .4byte gStageData

@ Either StopSong or ContinueSong
	thumb_func_start sub_8003E28
sub_8003E28: @ 0x08003E28
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E40 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _08003E3C
	adds r0, r1, #0
	bl sub_80BA648
_08003E3C:
	pop {r0}
	bx r0
	.align 2, 0
_08003E40: .4byte gStageData

	thumb_func_start sub_8003E44
sub_8003E44: @ 0x08003E44
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003E74 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08003F1C
	ldr r2, _08003E78 @ =0x06014D80
	cmp r0, #5
	bls _08003E5E
	cmp r0, #6
	bne _08003E5E
	adds r2, #0x20
_08003E5E:
	lsls r0, r1, #0x10
	ldr r1, _08003E7C @ =0xFFF30000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #0x24
	bhi _08003F1E
	lsls r0, r0, #2
	ldr r1, _08003E80 @ =_08003E84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003E74: .4byte gStageData
_08003E78: .4byte 0x06014D80
_08003E7C: .4byte 0xFFF30000
_08003E80: .4byte _08003E84
_08003E84: @ jump table
	.4byte _08003F18 @ case 0
	.4byte _08003F1E @ case 1
	.4byte _08003F1E @ case 2
	.4byte _08003F1E @ case 3
	.4byte _08003F1E @ case 4
	.4byte _08003F1E @ case 5
	.4byte _08003F1E @ case 6
	.4byte _08003F1E @ case 7
	.4byte _08003F1E @ case 8
	.4byte _08003F1E @ case 9
	.4byte _08003F1E @ case 10
	.4byte _08003F18 @ case 11
	.4byte _08003F18 @ case 12
	.4byte _08003F1E @ case 13
	.4byte _08003F1E @ case 14
	.4byte _08003F1E @ case 15
	.4byte _08003F1E @ case 16
	.4byte _08003F1E @ case 17
	.4byte _08003F1E @ case 18
	.4byte _08003F1E @ case 19
	.4byte _08003F1E @ case 20
	.4byte _08003F1E @ case 21
	.4byte _08003F1E @ case 22
	.4byte _08003F1E @ case 23
	.4byte _08003F1E @ case 24
	.4byte _08003F1E @ case 25
	.4byte _08003F1E @ case 26
	.4byte _08003F1E @ case 27
	.4byte _08003F1E @ case 28
	.4byte _08003F1E @ case 29
	.4byte _08003F18 @ case 30
	.4byte _08003F18 @ case 31
	.4byte _08003F18 @ case 32
	.4byte _08003F1E @ case 33
	.4byte _08003F1E @ case 34
	.4byte _08003F1E @ case 35
	.4byte _08003F18 @ case 36
_08003F18:
	adds r2, #0x40
	b _08003F1E
_08003F1C:
	ldr r2, _08003F30 @ =0x06012700
_08003F1E:
	ldr r0, _08003F34 @ =gVramHeapMaxTileSlots
	ldr r1, _08003F38 @ =0x06018000
	subs r1, r1, r2
	lsrs r1, r1, #5
	strh r1, [r0]
	ldr r0, _08003F3C @ =gUnknown_03002C50
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08003F30: .4byte 0x06012700
_08003F34: .4byte gVramHeapMaxTileSlots
_08003F38: .4byte 0x06018000
_08003F3C: .4byte gUnknown_03002C50

	thumb_func_start sub_8003F40
sub_8003F40: @ 0x08003F40
	push {r4, r5, lr}
	ldr r5, _08003F88 @ =gStageData
	ldrh r4, [r5, #0xe]
	movs r0, #0
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_80040D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_80040D8
	adds r0, r4, #0
	movs r1, #2
	bl sub_80040D8
	adds r0, r4, #0
	movs r1, #3
	bl sub_80040D8
	ldrb r0, [r5, #3]
	cmp r0, #2
	beq _08003F7E
	bl sub_80BA6B0
_08003F7E:
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003F88: .4byte gStageData

	thumb_func_start sub_8003F8C
sub_8003F8C: @ 0x08003F8C
	push {r4, r5, lr}
	ldr r0, _08003FC4 @ =gStageData
	ldrh r2, [r0, #0xe]
	movs r1, #0
	str r1, [r0, #0x1c]
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0
	lsls r5, r2, #0x10
_08003F9E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	asrs r0, r5, #0x10
	adds r1, r4, #0
	bl sub_80040D8
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003F9E
	bl sub_80BA6B0
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003FC4: .4byte gStageData

	thumb_func_start sub_8003FC8
sub_8003FC8: @ 0x08003FC8
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08003FE4 @ =gCamera
	ldr r2, _08003FE8 @ =0x0500001B
	mov r0, sp
	bl CpuSet
	bl sub_80026BC
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003FE4: .4byte gCamera
_08003FE8: .4byte 0x0500001B

	thumb_func_start sub_8003FEC
sub_8003FEC: @ 0x08003FEC
	push {r4, r5, r6, lr}
	ldr r0, _08004010 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r6, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08004014 @ =0x01A30000
	cmp r0, r1
	bls _08004018
	bl sub_8003CA4
	b _08004048
	.align 2, 0
_08004010: .4byte gCurTask
_08004014: .4byte 0x01A30000
_08004018:
	ldrh r5, [r2]
	cmp r5, #0x78
	bls _08004020
	movs r5, #0x78
_08004020:
	ldr r0, _08004050 @ =0x03000004
	adds r4, r6, r0
	strh r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08004054 @ =0x0300002C
	adds r4, r6, r0
	movs r0, #0xf0
	subs r0, r0, r5
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08004048:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004050: .4byte 0x03000004
_08004054: .4byte 0x0300002C

	thumb_func_start sub_8004058
sub_8004058: @ 0x08004058
	push {lr}
	ldr r0, _0800409C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080040A0 @ =0x03000054
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004098
	ldr r1, _080040A4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080040A8 @ =gUnknown_03003F94
	ldr r0, _080040AC @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080040B0 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080040B4 @ =gUnknown_03006208
	ldr r0, _080040B8 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_8001E84
	bl sub_80260F0
	bl LaunchGameIntro
_08004098:
	pop {r0}
	bx r0
	.align 2, 0
_0800409C: .4byte gCurTask
_080040A0: .4byte 0x03000054
_080040A4: .4byte 0x0000FFFF
_080040A8: .4byte gUnknown_03003F94
_080040AC: .4byte gUnknown_03003D20
_080040B0: .4byte gUnknown_03006840
_080040B4: .4byte gUnknown_03006208
_080040B8: .4byte gUnknown_03003F34

	thumb_func_start sub_80040BC
sub_80040BC: @ 0x080040BC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x2c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80040D8
sub_80040D8: @ 0x080040D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r3, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	ldr r0, _08004170 @ =gPlayers
	adds r1, r1, r0
	adds r7, r1, #0
	adds r7, #0x2b
	ldrb r4, [r7]
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	mov r8, r0
	movs r0, #0x2a
	adds r0, r0, r1
	mov sb, r0
	ldrb r6, [r0]
	lsls r6, r6, #0x1c
	lsrs r6, r6, #0x1c
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1d
	movs r0, #0
	str r0, [sp]
	ldr r2, _08004174 @ =0x05000054
	mov r0, sp
	str r3, [sp, #4]
	bl CpuSet
	ldrb r1, [r7]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r7]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	mov r1, sb
	strb r0, [r1]
	lsls r4, r4, #2
	ldrb r1, [r7]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r7]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	ldr r3, [sp, #4]
	adds r1, r3, #0
	bl sub_8013D70
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004170: .4byte gPlayers
_08004174: .4byte 0x05000054

	thumb_func_start sub_8004178
sub_8004178: @ 0x08004178
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	mov sb, r0
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08004290 @ =gPlayers
	adds r7, r0, r1
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #2
	adds r5, r5, r0
	lsls r5, r5, #4
	adds r5, r5, r1
	ldr r0, _08004294 @ =sub_80045EC
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r2, r4, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08004298 @ =sub_8004D2C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r1, r7, #0
	adds r1, #0xc4
	str r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r0, r8
	movs r6, #0
	mov r1, sb
	strh r1, [r0, #4]
	str r6, [r0]
	ldr r0, _0800429C @ =sub_8005068
	ldr r1, _080042A0 @ =0x00003010
	adds r2, r4, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r6, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r1, r7, #0
	adds r1, #0xc8
	str r0, [r1]
	ldrh r0, [r0, #6]
	add r0, r8
	mov r1, sb
	strh r1, [r0, #4]
	str r6, [r0]
	ldr r0, _080042A4 @ =sub_80050E0
	ldr r1, _080042A8 @ =0x00003020
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r6, [sp]
	movs r1, #8
	adds r2, r4, #0
	movs r3, #0
	bl TaskCreate
	adds r1, r7, #0
	adds r1, #0xcc
	str r0, [r1]
	ldrh r0, [r0, #6]
	add r0, r8
	mov r1, sb
	strh r1, [r0, #4]
	str r6, [r0]
	adds r0, r7, #0
	bl sub_8013F4C
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r5, #0x2a
	ldrb r2, [r5]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	bl sub_80141EC
	ldr r0, _080042AC @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	beq _08004260
	ldr r1, [r7]
	ldr r0, _080042B0 @ =Player_800522C
	cmp r1, r0
	beq _08004260
	ldr r1, _080042B4 @ =Player_8005380
	adds r0, r7, #0
	bl SetPlayerCallback
_08004260:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_801300C
	ldr r5, _080042AC @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #7
	beq _080042D8
	adds r0, r4, #0
	bl sub_801310C
	ldrb r0, [r5, #6]
	cmp r4, r0
	bne _080042BE
	ldrh r0, [r5, #0xe]
	cmp r0, #0x48
	beq _080042B8
	adds r0, r7, #0
	bl sub_8019718
	b _080042BE
	.align 2, 0
_08004290: .4byte gPlayers
_08004294: .4byte sub_80045EC
_08004298: .4byte sub_8004D2C
_0800429C: .4byte sub_8005068
_080042A0: .4byte 0x00003010
_080042A4: .4byte sub_80050E0
_080042A8: .4byte 0x00003020
_080042AC: .4byte gStageData
_080042B0: .4byte Player_800522C
_080042B4: .4byte Player_8005380
_080042B8:
	ldr r0, _080042E8 @ =gPlayers
	bl sub_8019718
_080042BE:
	adds r0, r7, #0
	bl sub_80203D4
	ldr r0, _080042EC @ =gUnknown_03001150
	bl sub_80B7914
	ldr r0, _080042F0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _080042D8
	adds r0, r7, #0
	bl sub_8017584
_080042D8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080042E8: .4byte gPlayers
_080042EC: .4byte gUnknown_03001150
_080042F0: .4byte gStageData

	thumb_func_start sub_80042F4
sub_80042F4: @ 0x080042F4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r4
	beq _080043B0
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r2, [r0]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800432A
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800432A:
	adds r0, r2, #0
	adds r0, #0x20
	cmp r0, #0
	ble _0800433E
	cmp r2, #0
	beq _0800433A
	subs r0, #1
	b _08004342
_0800433A:
	movs r2, #0x20
	b _0800434A
_0800433E:
	cmp r2, #0
	beq _08004348
_08004342:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _0800434A
_08004348:
	movs r2, #0x1f
_0800434A:
	lsrs r0, r2, #6
	cmp r0, #1
	beq _0800438C
	cmp r0, #1
	bgt _0800435A
	cmp r0, #0
	beq _08004364
	b _080043B0
_0800435A:
	cmp r0, #2
	beq _08004378
	cmp r0, #3
	beq _0800439E
	b _080043B0
_08004364:
	adds r0, r3, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r3, #0x14]
	b _080043B0
_08004378:
	adds r0, r3, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	b _080043B0
_0800438C:
	adds r0, r3, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	b _080043AE
_0800439E:
	adds r0, r3, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3, #0x10]
	subs r0, r0, r1
_080043AE:
	str r0, [r3, #0x10]
_080043B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80043B8
sub_80043B8: @ 0x080043B8
	push {r4, r5, lr}
	ldr r2, _08004420 @ =gPlayers
	movs r4, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, _08004424 @ =0x0000FFFF
	adds r5, r0, #0
_080043C6:
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080043D8
	cmp r1, #0x10
	bne _08004404
_080043D8:
	adds r0, r2, #0
	adds r0, #0xa8
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r1, r2, #0
	adds r1, #0xc0
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
_08004404:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r2, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080043C6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004420: .4byte gPlayers
_08004424: .4byte 0x0000FFFF

	thumb_func_start sub_8004428
sub_8004428: @ 0x08004428
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0800445C @ =gPlayers
	movs r7, #0
_08004432:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08004444
	cmp r1, #0x10
	bne _080044B0
_08004444:
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bhi _080044B0
	lsls r0, r0, #2
	ldr r1, _08004460 @ =_08004464
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800445C: .4byte gPlayers
_08004460: .4byte _08004464
_08004464: @ jump table
	.4byte _08004478 @ case 0
	.4byte _0800449A @ case 1
	.4byte _08004484 @ case 2
	.4byte _08004490 @ case 3
	.4byte _080044A6 @ case 4
_08004478:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_8004BD0
	b _0800449A
_08004484:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_8004BD0
	b _0800449A
_08004490:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80051CC
_0800449A:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_8005130
	b _080044B0
_080044A6:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_8005130
_080044B0:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r6, r6, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08004432
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80044CC
sub_80044CC: @ 0x080044CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	str r1, [r4, #4]
	ldr r2, _080044F8 @ =gStageData
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bne _0800450A
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08004544
	movs r1, #0
	strh r1, [r4, #0x18]
	ldrb r0, [r2, #9]
	cmp r0, #2
	bne _080044FC
	strh r1, [r4, #0x1a]
	b _08004502
	.align 2, 0
_080044F8: .4byte gStageData
_080044FC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
_08004502:
	adds r0, r4, #0
	bl sub_800DB30
	b _08004544
_0800450A:
	movs r0, #6
	ands r1, r0
	cmp r1, #6
	beq _08004522
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	ldr r0, _0800454C @ =0x00000103
	cmp r1, r0
	beq _08004522
	adds r0, #1
	cmp r1, r0
	bne _08004544
_08004522:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x18]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08004538
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
_08004538:
	adds r0, r4, #0
	bl sub_800DB30
	adds r0, r4, #0
	bl sub_8019A64
_08004544:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800454C: .4byte 0x00000103

	thumb_func_start sub_8004550
sub_8004550: @ 0x08004550
	push {r4, r5, r6, lr}
	movs r1, #0
	ldr r6, _080045C8 @ =gPlayers
	ldr r5, _080045CC @ =0x000068FC
_08004558:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r1, #0x2b
	ldrb r1, [r1]
	movs r2, #0x1c
	ands r2, r1
	adds r4, r0, #0
	cmp r2, #4
	beq _0800457A
	cmp r2, #0xc
	bne _0800458A
_0800457A:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _080045D0 @ =gUnknown_03002B90
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _080045C0
_0800458A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08004558
	bl sub_8003D2C
	ldr r1, _080045D4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080045D8 @ =gUnknown_03003F94
	ldr r0, _080045DC @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080045E0 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080045E4 @ =gUnknown_03006208
	ldr r0, _080045E8 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #4
	bl sub_8097C54
_080045C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080045C8: .4byte gPlayers
_080045CC: .4byte 0x000068FC
_080045D0: .4byte gUnknown_03002B90
_080045D4: .4byte 0x0000FFFF
_080045D8: .4byte gUnknown_03003F94
_080045DC: .4byte gUnknown_03003D20
_080045E0: .4byte gUnknown_03006840
_080045E4: .4byte gUnknown_03006208
_080045E8: .4byte gUnknown_03003F34

	thumb_func_start sub_80045EC
sub_80045EC: @ 0x080045EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08004654 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004658 @ =gPlayers
	adds r5, r0, r1
	ldr r0, _0800465C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08004628
	adds r0, r5, #0
	bl sub_8014258
	adds r0, r5, #0
	bl sub_80143E0
_08004628:
	adds r0, r5, #0
	bl sub_80142CC
	adds r0, r5, #0
	bl sub_80144B4
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	subs r0, #1
	mov r8, r1
	cmp r0, #4
	bls _08004648
	b _08004B06
_08004648:
	lsls r0, r0, #2
	ldr r1, _08004660 @ =_08004664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004654: .4byte gCurTask
_08004658: .4byte gPlayers
_0800465C: .4byte gStageData
_08004660: .4byte _08004664
_08004664: @ jump table
	.4byte _08004678 @ case 0
	.4byte _080046D8 @ case 1
	.4byte _08004830 @ case 2
	.4byte _0800488E @ case 3
	.4byte _080046D8 @ case 4
_08004678:
	bl sub_8004B14
	ldr r0, _080046BC @ =gStageData
	ldrh r0, [r0, #0xe]
	cmp r0, #0xb
	beq _08004686
	b _080048B8
_08004686:
	ldrh r1, [r5, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08004692
	b _080048B8
_08004692:
	bl sub_8003D2C
	ldr r1, _080046C0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080046C4 @ =gUnknown_03003F94
	ldr r0, _080046C8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080046CC @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080046D0 @ =gUnknown_03006208
	ldr r0, _080046D4 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_8023634
	b _08004B06
	.align 2, 0
_080046BC: .4byte gStageData
_080046C0: .4byte 0x0000FFFF
_080046C4: .4byte gUnknown_03003F94
_080046C8: .4byte gUnknown_03003D20
_080046CC: .4byte gUnknown_03006840
_080046D0: .4byte gUnknown_03006208
_080046D4: .4byte gUnknown_03003F34
_080046D8:
	mov r1, r8
	ldrb r3, [r1]
	lsls r6, r3, #0x1e
	lsrs r1, r6, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004728 @ =gPlayers
	adds r2, r0, r1
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _0800475C
	adds r0, r5, #0
	adds r0, #0x44
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x1e
	bgt _0800470A
	b _080048A8
_0800470A:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800472C
	ldr r0, [r2, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08004732
	.align 2, 0
_08004728: .4byte gPlayers
_0800472C:
	ldr r0, [r2, #0x10]
	ldr r3, _0800474C @ =0xFFFFF600
	adds r0, r0, r3
_08004732:
	str r0, [r5, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08004750
	orrs r4, r1
	str r4, [r5, #4]
	b _080048A8
	.align 2, 0
_0800474C: .4byte 0xFFFFF600
_08004750:
	ldr r0, _08004758 @ =0xFFFEFFFF
	ands r0, r4
	str r0, [r5, #4]
	b _080048A8
	.align 2, 0
_08004758: .4byte 0xFFFEFFFF
_0800475C:
	movs r0, #0x1c
	ands r0, r3
	cmp r0, #0x14
	bne _08004766
	b _08004B06
_08004766:
	ldr r1, _0800478C @ =gStageData
	ldrb r0, [r1, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08004790
	lsrs r0, r6, #0x1e
	ldrb r1, [r1, #6]
	cmp r0, r1
	beq _08004790
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #0x14
	orrs r0, r1
	mov r4, r8
	strb r0, [r4]
	b _08004B06
	.align 2, 0
_0800478C: .4byte gStageData
_08004790:
	ldrh r6, [r5, #0x1e]
	ldr r3, _080047B8 @ =gStageData
	ldrb r0, [r3, #4]
	cmp r0, #9
	bne _0800479C
	b _080048B8
_0800479C:
	cmp r0, #4
	bne _080047A2
	b _080048B8
_080047A2:
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r1, r4
	cmp r1, #0
	beq _080047BC
	ldrh r0, [r2, #0x1e]
	strh r0, [r5, #0x1e]
	ldrh r0, [r2, #0x20]
	strh r0, [r5, #0x20]
	b _080048B8
	.align 2, 0
_080047B8: .4byte gStageData
_080047BC:
	ldrb r0, [r3, #9]
	cmp r0, #8
	beq _080047D8
	ldr r4, _080047D4 @ =gUnknown_03001150
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80B7968
	adds r0, r4, #0
	bl sub_80B7A94
	b _08004824
	.align 2, 0
_080047D4: .4byte gUnknown_03001150
_080047D8:
	strh r1, [r5, #0x1e]
	ldr r3, [r2, #0x14]
	ldr r1, _080047EC @ =0xFFFFE000
	adds r0, r3, r1
	ldr r1, [r5, #0x14]
	cmp r1, r0
	bge _080047F0
	movs r0, #0x80
	b _080047FC
	.align 2, 0
_080047EC: .4byte 0xFFFFE000
_080047F0:
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r3, r4
	cmp r1, r0
	ble _080047FE
	movs r0, #0x40
_080047FC:
	strh r0, [r5, #0x1e]
_080047FE:
	ldr r2, [r2, #0x10]
	ldr r1, _08004810 @ =0xFFFFE000
	adds r0, r2, r1
	ldr r1, [r5, #0x10]
	cmp r1, r0
	bge _08004814
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	b _08004822
	.align 2, 0
_08004810: .4byte 0xFFFFE000
_08004814:
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r2, r3
	cmp r1, r0
	ble _08004826
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
_08004822:
	orrs r0, r1
_08004824:
	strh r0, [r5, #0x1e]
_08004826:
	ldrh r0, [r5, #0x1e]
	eors r6, r0
	ands r6, r0
	strh r6, [r5, #0x20]
	b _080048B8
_08004830:
	movs r1, #4
	ldrsh r0, [r4, r1]
	bl sub_80268B8
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004878 @ =gPlayers
	adds r2, r0, r1
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080048B8
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080048B8
	ldr r3, [r2, #0x10]
	str r3, [r5, #0x10]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08004880
	ldr r4, _0800487C @ =0xFFFFF600
	adds r0, r3, r4
	b _08004886
	.align 2, 0
_08004878: .4byte gPlayers
_0800487C: .4byte 0xFFFFF600
_08004880:
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r3, r1
_08004886:
	str r0, [r5, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r5, #0x14]
	b _080048B8
_0800488E:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r0, [r1]
	ldrh r2, [r0]
	adds r0, #2
	str r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080048B0
_080048A8:
	movs r0, #0
	strh r0, [r5, #0x1e]
	strh r0, [r5, #0x20]
	b _080048B8
_080048B0:
	ldrh r0, [r5, #0x1e]
	strh r2, [r5, #0x1e]
	bics r2, r0
	strh r2, [r5, #0x20]
_080048B8:
	ldr r4, _08004910 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #7
	bne _080048C2
	b _08004AE0
_080048C2:
	adds r0, r5, #0
	bl sub_80153BC
	ldrb r0, [r4, #9]
	cmp r0, #8
	beq _08004914
	mov r4, r8
	ldrb r0, [r4]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080048E2
	cmp r1, #8
	beq _080048E2
	cmp r1, #0x10
	bne _08004928
_080048E2:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _080048F6
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_080048F6:
	ldr r1, _08004910 @ =gStageData
	ldrb r0, [r1, #4]
	cmp r0, #3
	beq _08004900
	b _08004AA4
_08004900:
	ldrb r0, [r1, #3]
	cmp r0, #5
	bls _08004928
	adds r0, r5, #0
	bl sub_8015A44
	b _08004928
	.align 2, 0
_08004910: .4byte gStageData
_08004914:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08004928
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_08004928:
	ldr r0, _080049C8 @ =gStageData
	mov sl, r0
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08004934
	b _08004AA4
_08004934:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	adds r6, r0, #0
	ands r6, r1
	cmp r6, #0
	beq _08004946
	b _08004AA4
_08004946:
	movs r7, #0x80
	lsls r7, r7, #0xf
	ands r7, r0
	cmp r7, #0
	beq _08004A08
	adds r0, r5, #0
	bl sub_80180D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	beq _0800496A
	b _08004AA4
_0800496A:
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080049CC @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0800499A
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _0800499A
	b _08004AA4
_0800499A:
	adds r0, r4, #0
	adds r0, #0x44
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _080049D0 @ =0xEFFFFEDF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #4]
	str r6, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_8007930
	mov r1, sl
	adds r1, #0xbd
	ldrb r0, [r1]
	cmp r0, #0
	bne _080049D4
	movs r0, #1
	strb r0, [r1]
	b _08004AA4
	.align 2, 0
_080049C8: .4byte gStageData
_080049CC: .4byte gPlayers
_080049D0: .4byte 0xEFFFFEDF
_080049D4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08004AA4
	mov r3, sl
	ldrh r2, [r3, #0xe]
	ldr r3, _08004A00 @ =gCamera
	str r6, [r3, #0x18]
	str r6, [r3, #0x10]
	ldr r1, _08004A04 @ =gUnknown_080D05A8
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	str r0, [r3, #0x1c]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	str r0, [r3, #0x14]
	b _08004AA4
	.align 2, 0
_08004A00: .4byte gCamera
_08004A04: .4byte gUnknown_080D05A8
_08004A08:
	movs r6, #0x80
	lsls r6, r6, #0x10
	ands r6, r0
	cmp r6, #0
	beq _08004A3C
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004A38 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	adds r0, #0x42
	strh r7, [r0]
	b _08004A7A
	.align 2, 0
_08004A38: .4byte gPlayers
_08004A3C:
	movs r4, #0x80
	lsls r4, r4, #0x11
	ands r4, r0
	cmp r4, #0
	beq _08004A98
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004A94 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_801816C
	ldr r0, [r5, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	str r6, [r5, #0x6c]
	adds r0, r5, #0
	adds r0, #0x42
	strh r6, [r0]
_08004A7A:
	ldr r0, [r4, #4]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08004AA4
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8016F28
	b _08004AA4
	.align 2, 0
_08004A94: .4byte gPlayers
_08004A98:
	adds r0, r5, #0
	bl sub_80193CC
	adds r0, r5, #0
	adds r0, #0x42
	strh r4, [r0]
_08004AA4:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08004B06
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08004B06
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08004B06
	ldr r0, _08004AD4 @ =gStageData
	ldrb r0, [r0, #0xa]
	cmp r0, #7
	bne _08004AD8
	adds r0, r5, #0
	bl sub_800613C
	b _08004B06
	.align 2, 0
_08004AD4: .4byte gStageData
_08004AD8:
	adds r0, r5, #0
	bl sub_8005E80
	b _08004B06
_08004AE0:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08004B06
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08004B00
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_08004B00:
	adds r0, r5, #0
	bl sub_8015A44
_08004B06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8004B14
sub_8004B14: @ 0x08004B14
	push {r4, r5, r6, lr}
	ldr r0, _08004B58 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004B5C @ =gPlayers
	adds r3, r0, r1
	ldr r0, _08004B60 @ =gStageData
	ldrb r1, [r0, #4]
	adds r6, r0, #0
	cmp r1, #9
	beq _08004BC2
	ldr r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	beq _08004B68
	movs r0, #0
	strh r0, [r3, #0x1e]
	strh r0, [r3, #0x20]
	ldr r0, _08004B64 @ =gUnknown_030035A0
	ldrh r0, [r0]
	strh r0, [r3, #0x22]
	b _08004BC2
	.align 2, 0
_08004B58: .4byte gCurTask
_08004B5C: .4byte gPlayers
_08004B60: .4byte gStageData
_08004B64: .4byte gUnknown_030035A0
_08004B68:
	ldrh r0, [r3, #0x22]
	cmp r0, #0
	beq _08004B74
	adds r4, r0, #0
	strh r1, [r3, #0x22]
	b _08004B76
_08004B74:
	ldrh r4, [r3, #0x1e]
_08004B76:
	ldr r0, _08004BC8 @ =gUnknown_030035A0
	ldrh r5, [r0]
	strh r5, [r3, #0x1e]
	ldrb r0, [r6, #3]
	cmp r0, #6
	bne _08004BBA
	adds r0, r3, #0
	adds r0, #0x62
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08004BBA
	movs r0, #0xf0
	ands r0, r5
	lsrs r2, r0, #4
	ldr r0, [r6, #0x1c]
	lsrs r1, r0, #6
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08004BA2
	movs r1, #1
_08004BA2:
	lsls r2, r1
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x1c
	lsrs r0, r0, #0x18
	orrs r0, r1
	ldr r1, _08004BCC @ =0x0000FF0F
	ands r1, r5
	lsls r0, r0, #4
	movs r2, #0xf0
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #0x1e]
_08004BBA:
	ldrh r0, [r3, #0x1e]
	eors r4, r0
	ands r4, r0
	strh r4, [r3, #0x20]
_08004BC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004BC8: .4byte gUnknown_030035A0
_08004BCC: .4byte 0x0000FF0F

	thumb_func_start sub_8004BD0
sub_8004BD0: @ 0x08004BD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004C24 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #1
	bne _08004CB8
	ldr r3, [r5, #0x10]
	ldr r7, [r5, #0x14]
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r4, r3, #0
	adds r6, r1, #0
	cmp r0, #0
	beq _08004C28
	cmp r7, sb
	blt _08004CB8
	ands r2, r6
	cmp r2, #0
	bne _08004C38
	b _08004C32
	.align 2, 0
_08004C24: .4byte gPlayers
_08004C28:
	cmp r7, sb
	bgt _08004CB8
	ands r2, r6
	cmp r2, #0
	beq _08004C38
_08004C32:
	cmp r3, r8
	blt _08004CB8
	b _08004C3C
_08004C38:
	cmp r3, r8
	bgt _08004CB8
_08004C3C:
	mov r1, r8
	subs r0, r1, r4
	asrs r4, r0, #8
	mov r2, sb
	subs r0, r2, r7
	asrs r3, r0, #8
	movs r2, #0xc8
	lsls r2, r2, #5
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r7, r1, r0
	cmp r2, r7
	blt _08004CB8
	adds r0, r5, #0
	adds r0, #0xb8
	str r0, [sp]
	ldr r0, [r0]
	cmp r0, r7
	blo _08004CB8
	movs r1, #0x80
	lsls r1, r1, #9
	mov sl, r1
	ands r6, r1
	cmp r6, #0
	beq _08004C74
	rsbs r3, r3, #0
_08004C74:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #4]
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _08004CA0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r0, r1
	subs r2, #1
	adds r0, r2, #0
	ands r1, r0
_08004CA0:
	adds r0, r5, #0
	adds r0, #0xa8
	mov r2, r8
	str r2, [r0]
	adds r0, #4
	mov r2, sb
	str r2, [r0]
	ldr r0, [sp]
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	strh r1, [r0]
_08004CB8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8004CC8
sub_8004CC8: @ 0x08004CC8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r1, _08004D24 @ =gPlayers
	adds r7, r0, r1
	adds r6, r7, #0
	adds r6, #0xc4
	ldr r0, [r6]
	bl TaskDestroy
	movs r4, #0
	str r4, [r6]
	adds r6, #4
	ldr r0, [r6]
	bl TaskDestroy
	str r4, [r6]
	adds r6, #4
	ldr r0, [r6]
	bl TaskDestroy
	str r4, [r6]
	adds r0, r7, #0
	adds r0, #0xd0
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	cmp r5, #0
	beq _08004D1C
	ldr r0, _08004D28 @ =gUnknown_03001150
	bl sub_80B794C
_08004D1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004D24: .4byte gPlayers
_08004D28: .4byte gUnknown_03001150

	thumb_func_start sub_8004D2C
sub_8004D2C: @ 0x08004D2C
	bx lr
	.align 2, 0

	thumb_func_start sub_8004D30
sub_8004D30: @ 0x08004D30
	ldr r0, _08004D54 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004D58 @ =gPlayers
	adds r0, r0, r1
	ldr r2, _08004D5C @ =gUnknown_03003C40
	ldr r1, _08004D60 @ =0x000068FC
	strh r1, [r2]
	adds r0, #0xc4
	ldr r1, [r0]
	ldr r0, _08004D64 @ =sub_8004550
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08004D54: .4byte gStageData
_08004D58: .4byte gPlayers
_08004D5C: .4byte gUnknown_03003C40
_08004D60: .4byte 0x000068FC
_08004D64: .4byte sub_8004550

	thumb_func_start sub_8004D68
sub_8004D68: @ 0x08004D68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r5, _08004DD0 @ =gPlayers
	movs r0, #0
	mov r8, r0
_08004D78:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _08004D8A
	cmp r1, #0x14
	bne _08004DA4
_08004D8A:
	ldr r4, _08004DD4 @ =gUnknown_03001150
	adds r0, r4, #0
	bl sub_80B7AA4
	cmp r0, #0
	beq _08004DA4
	adds r0, r4, #0
	adds r0, #0x1c
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_80B8E24
_08004DA4:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r5, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08004D78
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_8004428
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DD0: .4byte gPlayers
_08004DD4: .4byte gUnknown_03001150

	thumb_func_start sub_8004DD8
sub_8004DD8: @ 0x08004DD8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _08004E1C @ =gPlayers
	movs r5, #0
_08004DE2:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08004DF4
	cmp r1, #0x10
	bne _08004DFE
_08004DF4:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8005130
_08004DFE:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r4, r4, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08004DE2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004E1C: .4byte gPlayers

	thumb_func_start sub_8004E20
sub_8004E20: @ 0x08004E20
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _08004E3C @ =gStageData
	adds r0, r2, #0
	adds r0, #0x84
	ldrb r1, [r0]
	cmp r1, #0
	bne _08004E44
	b _08004E8E
	.align 2, 0
_08004E3C: .4byte gStageData
_08004E40:
	movs r0, #1
	b _08004E90
_08004E44:
	adds r0, r2, #0
	adds r0, #0x80
	ldr r2, [r0]
	movs r6, #0
	cmp r6, r1
	bge _08004E8E
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r7, r1, #0
_08004E56:
	ldrh r0, [r2]
	cmp r0, r4
	bge _08004E7C
	ldrh r0, [r2, #4]
	cmp r0, r4
	ble _08004E7C
	cmp r5, #0
	beq _08004E6A
	ldrh r0, [r2, #2]
	strh r0, [r5]
_08004E6A:
	ldrh r1, [r2, #2]
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	bge _08004E7C
	ldrh r0, [r2, #6]
	cmp r0, r3
	bgt _08004E40
_08004E7C:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #8
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _08004E56
_08004E8E:
	movs r0, #0
_08004E90:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8004E98
sub_8004E98: @ 0x08004E98
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08004EC4 @ =gStageData
	ldrb r2, [r3, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08004EC8 @ =gPlayers
	adds r1, r1, r2
	cmp r1, r0
	bne _08004ECC
	ldrb r0, [r3, #3]
	cmp r0, #2
	beq _08004ECC
	adds r0, r4, #0
	bl sub_80BA57C
	movs r0, #1
	b _08004ECE
	.align 2, 0
_08004EC4: .4byte gStageData
_08004EC8: .4byte gPlayers
_08004ECC:
	movs r0, #0
_08004ECE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8004ED4
sub_8004ED4: @ 0x08004ED4
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08004F00 @ =gStageData
	ldrb r2, [r3, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08004F04 @ =gPlayers
	adds r1, r1, r2
	cmp r1, r0
	bne _08004F08
	ldrb r0, [r3, #3]
	cmp r0, #2
	beq _08004F08
	adds r0, r4, #0
	bl sub_80BA5F4
	movs r0, #1
	b _08004F0A
	.align 2, 0
_08004F00: .4byte gStageData
_08004F04: .4byte gPlayers
_08004F08:
	movs r0, #0
_08004F0A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8004F10
sub_8004F10: @ 0x08004F10
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08004F40 @ =gStageData
	ldrb r2, [r3, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08004F44 @ =gPlayers
	adds r1, r1, r2
	cmp r1, r0
	bne _08004F38
	ldrb r0, [r3, #3]
	cmp r0, #2
	beq _08004F38
	adds r0, r4, #0
	bl sub_80BA648
_08004F38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004F40: .4byte gStageData
_08004F44: .4byte gPlayers

	thumb_func_start sub_8004F48
sub_8004F48: @ 0x08004F48
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08004F94 @ =gUnknown_08E2EAB8
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	bl EwramMalloc
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08004F98 @ =0x01000800
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r5, #0
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r6, r2
	str r4, [r0]
	str r4, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004F94: .4byte gUnknown_08E2EAB8
_08004F98: .4byte 0x01000800

	thumb_func_start sub_8004F9C
sub_8004F9C: @ 0x08004F9C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08004FB0
	bl EwramFree
_08004FB0:
	movs r1, #0
	str r1, [r4]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8004FC4
sub_8004FC4: @ 0x08004FC4
	push {lr}
	adds r2, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, [r1]
	ldrh r3, [r0]
	adds r0, #2
	str r0, [r1]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _08004FEA
	movs r0, #0
	strh r0, [r2, #0x1e]
	strh r0, [r2, #0x20]
	b _08004FF2
_08004FEA:
	ldrh r0, [r2, #0x1e]
	strh r3, [r2, #0x1e]
	bics r3, r0
	strh r3, [r2, #0x20]
_08004FF2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8004FF8
sub_8004FF8: @ 0x08004FF8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08005038
	cmp r0, #2
	bne _0800505A
	ldr r3, _08005030 @ =gStageData
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08005034 @ =gPlayers
	adds r1, r1, r0
	cmp r1, r2
	bne _0800505A
	ldrb r0, [r3, #3]
	cmp r0, #2
	beq _0800505A
	movs r0, #0x78
	bl sub_80BA648
	b _0800505A
	.align 2, 0
_08005030: .4byte gStageData
_08005034: .4byte gPlayers
_08005038:
	ldr r3, _08005060 @ =gStageData
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08005064 @ =gPlayers
	adds r1, r1, r0
	cmp r1, r2
	bne _0800505A
	ldrb r0, [r3, #3]
	cmp r0, #2
	beq _0800505A
	movs r0, #0xe3
	bl sub_80BA648
_0800505A:
	pop {r0}
	bx r0
	.align 2, 0
_08005060: .4byte gStageData
_08005064: .4byte gPlayers

	thumb_func_start sub_8005068
sub_8005068: @ 0x08005068
	push {r4, r5, r6, lr}
	ldr r0, _080050D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080050D8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	beq _080050CC
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_801320C
	movs r1, #4
	ldrsh r0, [r5, r1]
	bl sub_80136DC
	ldr r6, _080050DC @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _080050BA
	movs r1, #4
	ldrsh r0, [r5, r1]
	bl sub_8013A68
_080050BA:
	adds r0, r4, #0
	bl sub_8014670
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _080050CC
	adds r0, r4, #0
	bl sub_8017618
_080050CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080050D4: .4byte gCurTask
_080050D8: .4byte gPlayers
_080050DC: .4byte gStageData

	thumb_func_start sub_80050E0
sub_80050E0: @ 0x080050E0
	push {lr}
	ldr r0, _08005124 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08005128 @ =gPlayers
	adds r2, r0, r1
	ldr r0, [r2, #4]
	str r0, [r2, #8]
	ldr r0, _0800512C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08005120
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08005120
	adds r0, r2, #0
	bl sub_8026254
_08005120:
	pop {r0}
	bx r0
	.align 2, 0
_08005124: .4byte gCurTask
_08005128: .4byte gPlayers
_0800512C: .4byte gStageData

	thumb_func_start sub_8005130
sub_8005130: @ 0x08005130
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	subs r0, r7, r0
	asrs r4, r0, #8
	subs r1, r2, r1
	asrs r3, r1, #8
	movs r2, #0xe1
	lsls r2, r2, #6
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r6, r1, r0
	cmp r2, r6
	blt _080051BE
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	mov sb, r0
	cmp r1, r6
	blo _080051BE
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08005198
	lsls r0, r2, #0x10
	ldr r1, _08005194 @ =0xFEFF0000
	adds r0, r0, r1
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080051BE
	b _080051A8
	.align 2, 0
_08005194: .4byte 0xFEFF0000
_08005198:
	lsls r0, r2, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _080051BE
_080051A8:
	adds r0, r5, #0
	adds r0, #0xb0
	str r7, [r0]
	adds r0, #4
	mov r1, r8
	str r1, [r0]
	mov r0, sb
	str r6, [r0]
	adds r0, r5, #0
	adds r0, #0xc2
	strh r2, [r0]
_080051BE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80051CC
sub_80051CC: @ 0x080051CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	subs r0, r7, r0
	asrs r5, r0, #8
	subs r1, r2, r1
	asrs r3, r1, #8
	movs r2, #0xe1
	lsls r2, r2, #6
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r6, r1, r0
	cmp r2, r6
	blt _08005220
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, r6
	blo _08005220
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	adds r1, r4, #0
	adds r1, #0xa8
	str r7, [r1]
	adds r1, #4
	mov r2, r8
	str r2, [r1]
	adds r1, #0xc
	str r6, [r1]
	adds r1, #8
	strh r0, [r1]
_08005220:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_800522C
Player_800522C: @ 0x0800522C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080052A0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800524C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800524C
	adds r0, r4, #0
	ldr r1, _080052A4 @ =0x00000119
	bl sub_8004F10
_0800524C:
	ldr r0, [r4, #4]
	ldr r1, _080052A8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r5, #0
	strb r5, [r0]
	adds r0, #0x6a
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #4
	strh r5, [r0]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, _080052A0 @ =gStageData
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	bne _080052AC
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	movs r0, #6
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0x13
	strh r0, [r4, #0x30]
	b _080052B4
	.align 2, 0
_080052A0: .4byte gStageData
_080052A4: .4byte 0x00000119
_080052A8: .4byte 0xDC510BA1
_080052AC:
	adds r0, r4, #0
	bl sub_8012FA0
	strh r5, [r4, #0x30]
_080052B4:
	ldr r1, _080052C4 @ =Player_80052C8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080052C4: .4byte Player_80052C8

	thumb_func_start Player_80052C8
Player_80052C8: @ 0x080052C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08005374
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08005300
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	b _0800531E
_08005300:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
_0800531E:
	ldr r1, _08005334 @ =gStageData
	ldrb r0, [r1, #4]
	cmp r0, #1
	beq _0800532E
	cmp r0, #8
	beq _0800532E
	cmp r0, #2
	bne _0800533C
_0800532E:
	ldr r0, _08005338 @ =Player_80052C8
	b _08005372
	.align 2, 0
_08005334: .4byte gStageData
_08005338: .4byte Player_80052C8
_0800533C:
	ldrb r0, [r1, #3]
	cmp r0, #6
	bne _0800534A
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0x78
	b _08005350
_0800534A:
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0
_08005350:
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08005368 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08005370
	ldr r0, _0800536C @ =sub_800DB30
	b _08005372
	.align 2, 0
_08005368: .4byte 0xF7FFFFFF
_0800536C: .4byte sub_800DB30
_08005370:
	ldr r0, _0800537C @ =Player_8005380
_08005372:
	str r0, [r4]
_08005374:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800537C: .4byte Player_8005380

	thumb_func_start Player_8005380
Player_8005380: @ 0x08005380
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080053F4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080053A0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080053A0
	adds r0, r4, #0
	ldr r1, _080053F8 @ =0x00000119
	bl sub_8004F10
_080053A0:
	ldr r0, [r4, #4]
	ldr r1, _080053FC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080053EA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0x20
	movs r0, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _08005400
_080053EA:
	adds r0, r4, #0
	bl sub_8005528
	b _08005428
	.align 2, 0
_080053F4: .4byte gStageData
_080053F8: .4byte 0x00000119
_080053FC: .4byte 0xDC510BA1
_08005400:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r2]
	strh r1, [r4, #0x30]
	subs r2, #0x25
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _08005430 @ =sub_8005434
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_08005428:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005430: .4byte sub_8005434

	thumb_func_start sub_8005434
sub_8005434: @ 0x08005434
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080054EC @ =gPlayers
	adds r5, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x89
	lsls r1, r1, #2
	ands r0, r1
	subs r1, #0x24
	cmp r0, r1
	beq _0800551A
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800551A
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800551A
	adds r0, r4, #0
	bl sub_8016EDC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800551A
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	bne _0800551A
	adds r0, r4, #0
	bl sub_8015228
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800551A
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8014AF8
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800551A
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800551A
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080054F4
	ldr r0, _080054F0 @ =sub_8005528
	str r0, [r4]
	b _0800551A
	.align 2, 0
_080054EC: .4byte gPlayers
_080054F0: .4byte sub_8005528
_080054F4:
	ldrh r0, [r4, #0x2a]
	ldr r1, _08005520 @ =0x00001C0F
	ands r1, r0
	ldr r0, _08005524 @ =0x00000804
	cmp r1, r0
	bne _0800551A
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800551A
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0800551A
	movs r0, #0xf9
	strh r0, [r4, #0x30]
_0800551A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005520: .4byte 0x00001C0F
_08005524: .4byte 0x00000804

	thumb_func_start sub_8005528
sub_8005528: @ 0x08005528
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080055A8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08005548
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08005548
	adds r0, r6, #0
	ldr r1, _080055AC @ =0x00000119
	bl sub_8004F10
_08005548:
	ldr r0, [r6, #4]
	ldr r1, _080055B0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r6, #4]
	adds r2, r6, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	movs r5, #0
	strh r4, [r0]
	adds r0, r6, #0
	bl sub_8012FA0
	movs r0, #8
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x5a
	strb r5, [r0]
	subs r0, #8
	strh r4, [r0]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080055B4 @ =sub_80055B8
	str r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080055A8: .4byte gStageData
_080055AC: .4byte 0x00000119
_080055B0: .4byte 0xDC510BA1
_080055B4: .4byte sub_80055B8

	thumb_func_start sub_80055B8
sub_80055B8: @ 0x080055B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08005674 @ =gPlayers
	adds r5, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x89
	lsls r1, r1, #2
	ands r0, r1
	subs r1, #0x24
	cmp r0, r1
	beq _080056BA
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080056BA
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080056BA
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	bne _080056BA
	adds r0, r4, #0
	bl sub_8015228
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080056BA
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080056BA
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	bl sub_800D7C8
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08005684
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08005684
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #9
	bgt _08005678
	adds r0, r2, #1
	b _0800568A
	.align 2, 0
_08005674: .4byte gPlayers
_08005678:
	ldr r0, _08005680 @ =Player_8005380
	str r0, [r4]
	b _080056BA
	.align 2, 0
_08005680: .4byte Player_8005380
_08005684:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
_0800568A:
	strh r0, [r1]
	ldr r0, _080056C0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080056BA
	ldrh r0, [r4, #0x2a]
	ldr r1, _080056C4 @ =0x00001C0F
	ands r1, r0
	ldr r0, _080056C8 @ =0x00000804
	cmp r1, r0
	bne _080056BA
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080056BA
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _080056BA
	movs r0, #0xfa
	strh r0, [r4, #0x30]
_080056BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080056C0: .4byte gStageData
_080056C4: .4byte 0x00001C0F
_080056C8: .4byte 0x00000804

	thumb_func_start sub_80056CC
sub_80056CC: @ 0x080056CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080056E2
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
_080056E2:
	ldr r0, _08005768 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080056FE
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080056FE
	adds r0, r5, #0
	ldr r1, _0800576C @ =0x00000119
	bl sub_8004F10
_080056FE:
	ldr r0, [r5, #4]
	ldr r1, _08005770 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	movs r4, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r0, [r5, #4]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #8
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0x5a
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x2e
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08005774 @ =sub_80055B8
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005768: .4byte gStageData
_0800576C: .4byte 0x00000119
_08005770: .4byte 0xDC510BA1
_08005774: .4byte sub_80055B8

	thumb_func_start sub_8005778
sub_8005778: @ 0x08005778
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080057F6
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080057F6
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	bne _080057F6
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080057F6
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080057F6
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080057F6
	ldr r0, [r4, #4]
	ldr r1, _080057FC @ =0xDDFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8005528
_080057F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080057FC: .4byte 0xDDFFFFFF

	thumb_func_start sub_8005800
sub_8005800: @ 0x08005800
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0xff
	adds r0, #0x4e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08005866
	ldrh r1, [r4, #0x1e]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08005866
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0800583E
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08005834
	adds r0, r4, #0
	movs r1, #0
	bl sub_80059A0
	b _08005870
_08005834:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8005A24
	b _0800586C
_0800583E:
	cmp r0, #0
	bge _0800585E
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08005854
	adds r0, r4, #0
	movs r1, #1
	bl sub_80059A0
	b _08005870
_08005854:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8005A24
	b _0800586C
_0800585E:
	adds r0, r4, #0
	bl sub_8005B78
	b _0800586C
_08005866:
	adds r0, r4, #0
	bl sub_8005B04
_0800586C:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08005870:
	ldr r0, _080058C4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080058E8
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080058DA
	adds r2, r4, #0
	adds r2, #0x2e
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bls _080058B2
	movs r3, #0xe0
	lsls r3, r3, #3
	strh r3, [r4, #0x1c]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080058A4
	rsbs r0, r3, #0
	strh r0, [r4, #0x1c]
_080058A4:
	ldrb r0, [r2]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r2]
_080058B2:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #8
	beq _080058D8
	cmp r0, #8
	bgt _080058C8
	cmp r0, #0
	beq _080058D4
	b _080058DA
	.align 2, 0
_080058C4: .4byte gStageData
_080058C8:
	cmp r0, #0x11
	bgt _080058DA
	cmp r0, #0x10
	blt _080058DA
	movs r5, #0x12
	b _080058DA
_080058D4:
	movs r5, #3
	b _080058DA
_080058D8:
	movs r5, #9
_080058DA:
	lsls r0, r5, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080058E8
	strh r1, [r4, #0x30]
_080058E8:
	adds r0, r4, #0
	bl sub_8014E70
	ldr r0, _0800594C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08005998
	ldr r1, [r4, #4]
	movs r0, #0x44
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0x40
	bne _08005954
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08005954
	ldrh r2, [r4, #0x1e]
	movs r3, #0x10
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08005928
	ldrh r1, [r4, #0x20]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800593C
_08005928:
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08005950
	ldrh r1, [r4, #0x20]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08005950
_0800593C:
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _08005986
	movs r0, #0x21
	b _08005984
	.align 2, 0
_0800594C: .4byte gStageData
_08005950:
	movs r0, #0
	b _08005984
_08005954:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08005986
	cmp r0, #0x11
	beq _08005986
	cmp r0, #0x10
	beq _08005986
	cmp r0, #3
	beq _08005986
	cmp r0, #0xe
	beq _08005986
	cmp r0, #0xf
	beq _08005986
	cmp r0, #0x12
	beq _08005986
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _08005982
	movs r0, #9
	b _08005984
_08005982:
	movs r0, #8
_08005984:
	strh r0, [r4, #0x30]
_08005986:
	ldr r0, [r4, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08005998
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r5
	str r0, [r4, #4]
_08005998:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80059A0
sub_80059A0: @ 0x080059A0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0x90
	ldr r6, [r0]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080059BC
	movs r0, #9
	b _080059BE
_080059BC:
	movs r0, #8
_080059BE:
	strh r0, [r2, #0x30]
	lsls r0, r3, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _080059CC
	ldrh r3, [r2, #0x1c]
	b _080059D4
_080059CC:
	ldrh r0, [r2, #0x1c]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080059D4:
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r1, [r0]
	cmp r4, r1
	bge _080059F4
	adds r0, r4, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _080059FE
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	b _080059FE
_080059F4:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, r0, r6
	strh r0, [r1]
_080059FE:
	cmp r5, #0
	bne _08005A0E
	strh r3, [r2, #0x1c]
	ldr r0, [r2, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08005A1C
_08005A0E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r2, #0x1c]
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
_08005A1C:
	str r0, [r2, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8005A24
sub_8005A24: @ 0x08005A24
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0xff
	movs r0, #0x1c
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bge _08005A34
	rsbs r2, r2, #0
_08005A34:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08005A5A
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	lsls r5, r6, #0x10
	b _08005A94
_08005A5A:
	lsls r0, r6, #0x10
	ldr r1, _08005A78 @ =0x01FF0000
	adds r5, r0, #0
	cmp r5, r1
	ble _08005A94
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bls _08005A7C
	movs r7, #0x11
	b _08005A8C
	.align 2, 0
_08005A78: .4byte 0x01FF0000
_08005A7C:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	movs r7, #0x10
	cmp r0, #0
	beq _08005A8C
	movs r7, #0x12
_08005A8C:
	adds r0, r4, #0
	movs r1, #0x73
	bl sub_8004ED4
_08005A94:
	ldr r0, _08005AD8 @ =0xFFFF0000
	adds r1, r5, r0
	movs r0, #0xff
	lsls r0, r0, #0x11
	ldrh r3, [r4, #0x1c]
	cmp r1, r0
	bhi _08005AE8
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _08005AB4
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08005AC2
_08005AB4:
	cmp r2, #0
	ble _08005AE8
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08005AE8
_08005AC2:
	ldr r0, _08005ADC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08005AE4
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08005AE4
	ldr r0, _08005AE0 @ =sub_800E084
	b _08005AE6
	.align 2, 0
_08005AD8: .4byte 0xFFFF0000
_08005ADC: .4byte gStageData
_08005AE0: .4byte sub_800E084
_08005AE4:
	ldr r0, _08005B00 @ =sub_800D9F4
_08005AE6:
	str r0, [r4]
_08005AE8:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08005AF2
	rsbs r0, r5, #0
	lsrs r6, r0, #0x10
_08005AF2:
	strh r6, [r4, #0x1c]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005B00: .4byte sub_800D9F4

	thumb_func_start sub_8005B04
sub_8005B04: @ 0x08005B04
	push {lr}
	adds r2, r0, #0
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08005B24
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08005B24
	movs r0, #0
	b _08005B72
_08005B24:
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08005B2E
	rsbs r0, r0, #0
_08005B2E:
	lsls r0, r0, #0x10
	ldr r1, _08005B5C @ =0xFFF80000
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08005B60
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0x20
	movs r0, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _08005B60
	strh r1, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x52
	adds r0, #0xa8
	strh r0, [r1]
	movs r0, #0
	b _08005B72
	.align 2, 0
_08005B5C: .4byte 0xFFF80000
_08005B60:
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08005B6E
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	lsrs r3, r0, #0x10
_08005B6E:
	strh r3, [r2, #0x1c]
	movs r0, #8
_08005B72:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8005B78
sub_8005B78: @ 0x08005B78
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x90
	ldr r5, [r0]
	ldr r3, [r2, #4]
	movs r4, #1
	ands r4, r3
	ldrh r1, [r2, #0x1e]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	cmp r4, r0
	beq _08005BAE
	cmp r4, #0
	beq _08005B9E
	ldrh r0, [r2, #0x1c]
	subs r0, r0, r5
	b _08005BA2
_08005B9E:
	ldrh r0, [r2, #0x1c]
	adds r0, r0, r5
_08005BA2:
	strh r0, [r2, #0x1c]
	movs r4, #8
	adds r0, r2, #0
	bl sub_8012FA0
	b _08005BC6
_08005BAE:
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _08005BC0
	ldr r0, _08005BBC @ =sub_800E084
	b _08005BC2
	.align 2, 0
_08005BBC: .4byte sub_800E084
_08005BC0:
	ldr r0, _08005BD0 @ =sub_800D9F4
_08005BC2:
	str r0, [r2]
	movs r4, #8
_08005BC6:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08005BD0: .4byte sub_800D9F4

	thumb_func_start sub_8005BD4
sub_8005BD4: @ 0x08005BD4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	movs r1, #4
	adds r0, r2, #0
	ands r0, r1
	rsbs r0, r0, #0
	asrs r6, r0, #0x1f
	ands r6, r1
	ldr r0, _08005C98 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08005C00
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _08005C00
	adds r0, r4, #0
	ldr r1, _08005C9C @ =0x00000119
	bl sub_8004F10
_08005C00:
	ldr r0, [r4, #4]
	ldr r1, _08005CA0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08005CA4 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, _08005CA8 @ =0x08000200
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x78
	strb r0, [r1]
	ldr r1, _08005C98 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8016F28
	ldrb r1, [r5]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08005CAC @ =gPlayers
	adds r0, r0, r1
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r0, [r4, #4]
	ldr r1, _08005CB0 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _08005CB4 @ =sub_8005CB8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005C98: .4byte gStageData
_08005C9C: .4byte 0x00000119
_08005CA0: .4byte 0xDC510BA1
_08005CA4: .4byte 0xEFFFFFFF
_08005CA8: .4byte 0x08000200
_08005CAC: .4byte gPlayers
_08005CB0: .4byte 0xFFFEFFFF
_08005CB4: .4byte sub_8005CB8

	thumb_func_start sub_8005CB8
sub_8005CB8: @ 0x08005CB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r1, _08005CEC @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
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
	ldr r1, _08005CF0 @ =gPlayers
	adds r0, r0, r1
	cmp r4, r0
	bhs _08005CF4
	movs r2, #0x96
	movs r1, #0x82
	b _08005CF8
	.align 2, 0
_08005CEC: .4byte gCamera
_08005CF0: .4byte gPlayers
_08005CF4:
	movs r2, #0x6e
	movs r1, #0x5a
_08005CF8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bge _08005D08
	movs r0, #0x10
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x1e]
	b _08005D2E
_08005D08:
	cmp r0, r2
	ble _08005D14
	movs r0, #0x20
	strh r0, [r4, #0x1e]
	strh r0, [r4, #0x20]
	b _08005D2E
_08005D14:
	movs r0, #0
	strh r0, [r4, #0x1e]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08005D2E
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08005D2E
	strh r0, [r4, #0x30]
_08005D2E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08005DA0
	ldr r0, [r4, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	bne _08005D68
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	movs r0, #8
	strh r0, [r4, #0x30]
	b _08005D9C
_08005D68:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ands r0, r5
	cmp r0, #0
	bne _08005D9C
	movs r0, #8
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8004FF8
_08005D9C:
	ldr r0, _08005DA8 @ =sub_8005CB8
	str r0, [r4]
_08005DA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005DA8: .4byte sub_8005CB8

	thumb_func_start sub_8005DAC
sub_8005DAC: @ 0x08005DAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	movs r1, #4
	adds r0, r2, #0
	ands r0, r1
	rsbs r0, r0, #0
	asrs r6, r0, #0x1f
	ands r6, r1
	ldr r0, _08005E60 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08005DD8
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _08005DD8
	adds r0, r4, #0
	ldr r1, _08005E64 @ =0x00000119
	bl sub_8004F10
_08005DD8:
	ldr r0, [r4, #4]
	ldr r1, _08005E68 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08005E6C @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, _08005E70 @ =0x08000200
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	ldrb r1, [r5]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08005E74 @ =gPlayers
	adds r0, r0, r1
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r0, [r4, #4]
	ldr r1, _08005E78 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _08005E60 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, _08005E7C @ =sub_800D8DC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005E60: .4byte gStageData
_08005E64: .4byte 0x00000119
_08005E68: .4byte 0xDC510BA1
_08005E6C: .4byte 0xEFFFFFFF
_08005E70: .4byte 0x08000200
_08005E74: .4byte gPlayers
_08005E78: .4byte 0xFFFEFFFF
_08005E7C: .4byte sub_800D8DC

	thumb_func_start sub_8005E80
sub_8005E80: @ 0x08005E80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r1, _08005F90 @ =gUnknown_080CE5CA
	mov r0, sp
	movs r2, #0x14
	bl memcpy
	ldr r0, _08005F94 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08005EB4
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08005EB4
	adds r0, r7, #0
	ldr r1, _08005F98 @ =0x00000119
	bl sub_8004F10
_08005EB4:
	ldr r0, [r7, #4]
	ldr r1, _08005F9C @ =0xDC510BA1
	ands r0, r1
	str r0, [r7, #4]
	movs r0, #0x2b
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	movs r6, #0x21
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x9e
	adds r0, r0, r7
	mov sb, r0
	movs r5, #0
	strh r4, [r0]
	adds r0, r7, #0
	bl sub_8016F28
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08005FA0 @ =gPlayers
	mov sl, r1
	add r0, sl
	bl sub_8016F28
	adds r0, r7, #0
	bl sub_8019A64
	ldr r0, [r7, #4]
	ldr r1, _08005FA4 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r7, #4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	ldr r0, [r7, #4]
	ands r0, r6
	str r0, [r7, #4]
	str r4, [r7, #0x6c]
	ldr r0, _08005FA8 @ =0x0000FCE0
	mov r1, sb
	strh r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08005F72
	ldr r1, _08005FAC @ =gCamera
	ldr r0, [r1]
	adds r0, #0x64
	lsls r0, r0, #8
	str r0, [r7, #0x10]
	ldr r0, [r1, #4]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r7, #0x14]
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sl
	adds r0, #0x27
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x27
	strb r0, [r2]
_08005F72:
	ldr r3, _08005F94 @ =gStageData
	ldrb r2, [r3, #3]
	cmp r2, #6
	bne _08005FB4
	ldrb r1, [r3, #5]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	asrs r1, r0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08005FB0
	movs r0, #0x9e
	strh r0, [r7, #0x30]
	b _0800600C
	.align 2, 0
_08005F90: .4byte gUnknown_080CE5CA
_08005F94: .4byte gStageData
_08005F98: .4byte 0x00000119
_08005F9C: .4byte 0xDC510BA1
_08005FA0: .4byte gPlayers
_08005FA4: .4byte 0xFFFEFFFF
_08005FA8: .4byte 0x0000FCE0
_08005FAC: .4byte gCamera
_08005FB0:
	strh r2, [r7, #0x30]
	b _0800600C
_08005FB4:
	adds r2, r3, #0
	adds r2, #0xae
	ldr r0, _08005FF0 @ =gUnknown_080D1A40
	ldrh r1, [r3, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08005FF4
	adds r0, r3, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08005FF4
	movs r0, #0x9e
	strh r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_8004E98
	b _0800600C
	.align 2, 0
_08005FF0: .4byte gUnknown_080D1A40
_08005FF4:
	movs r0, #0x9d
	strh r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	add r0, sp
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_8004E98
_0800600C:
	ldr r0, _08006048 @ =gStageData
	ldrb r3, [r0, #3]
	cmp r3, #7
	beq _08006054
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08006054
	ldrh r2, [r7, #0x30]
	cmp r3, #6
	bne _0800602C
	cmp r2, #0x9e
	bne _08006054
_0800602C:
	ldr r0, [r7, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9d
	bne _0800604C
	movs r0, #6
	adds r1, r7, #0
	bl sub_801EBC0
	b _08006054
	.align 2, 0
_08006048: .4byte gStageData
_0800604C:
	movs r0, #7
	adds r1, r7, #0
	bl sub_801EBC0
_08006054:
	ldr r4, _08006070 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #6
	bne _08006078
	adds r1, r7, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	ldr r1, _08006074 @ =Player_800D944
	str r1, [r7]
	adds r0, r7, #0
	bl _call_via_r1
	b _08006128
	.align 2, 0
_08006070: .4byte gStageData
_08006074: .4byte Player_800D944
_08006078:
	bl sub_80299FC
	ldrb r0, [r4, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080060D8
	ldrb r3, [r4, #9]
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08006094
	movs r0, #3
	b _0800609A
_08006094:
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0800609A:
	ldr r2, _080060C8 @ =gSaveGame
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	movs r0, #0x97
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _080060CC @ =gStageData
	adds r0, #0xae
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bls _080060D0
	movs r0, #0x60
	bl sub_8003DF0
	b _08006116
	.align 2, 0
_080060C8: .4byte gSaveGame
_080060CC: .4byte gStageData
_080060D0:
	movs r0, #0x5f
	bl sub_8003DF0
	b _08006116
_080060D8:
	ldrb r0, [r4, #9]
	cmp r0, #7
	bne _080060E6
	movs r0, #0x58
	bl sub_8003DF0
	b _08006116
_080060E6:
	ldrb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0xae
	ldr r1, _0800610C @ =gUnknown_080D1A40
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08006110
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08006110
	movs r0, #0x54
	bl sub_8003DF0
	b _08006116
	.align 2, 0
_0800610C: .4byte gUnknown_080D1A40
_08006110:
	movs r0, #0x55
	bl sub_8003DF0
_08006116:
	adds r1, r7, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	ldr r1, _08006138 @ =Player_800D944
	str r1, [r7]
	adds r0, r7, #0
	bl _call_via_r1
_08006128:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006138: .4byte Player_800D944

	thumb_func_start sub_800613C
sub_800613C: @ 0x0800613C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8016F28
	ldr r2, [r4, #4]
	movs r1, #4
	adds r0, r2, #0
	ands r0, r1
	rsbs r0, r0, #0
	asrs r5, r0, #0x1f
	ands r5, r1
	ldr r0, _080061C4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800616C
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800616C
	adds r0, r4, #0
	ldr r1, _080061C8 @ =0x00000119
	bl sub_8004F10
_0800616C:
	ldr r0, [r4, #4]
	ldr r1, _080061CC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080061D0 @ =0x08000200
	orrs r0, r1
	orrs r0, r5
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _080061C4 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, _080061D4 @ =sub_80061D8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080061C4: .4byte gStageData
_080061C8: .4byte 0x00000119
_080061CC: .4byte 0xDC510BA1
_080061D0: .4byte 0x08000200
_080061D4: .4byte sub_80061D8

	thumb_func_start sub_80061D8
sub_80061D8: @ 0x080061D8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x10
	strh r0, [r4, #0x1e]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	bne _0800620C
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	b _08006240
_0800620C:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ands r0, r5
	cmp r0, #0
	bne _08006240
	movs r0, #8
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8004FF8
_08006240:
	ldr r0, _0800624C @ =sub_80061D8
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800624C: .4byte sub_80061D8

	thumb_func_start sub_8006250
sub_8006250: @ 0x08006250
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	rsbs r0, r0, #0
	asrs r5, r0, #0x1f
	movs r0, #8
	ands r5, r0
	ldr r0, _080062D0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800627C
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800627C
	adds r0, r4, #0
	ldr r1, _080062D4 @ =0x00000119
	bl sub_8004F10
_0800627C:
	ldr r0, [r4, #4]
	ldr r1, _080062D8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r1, [r3]
	movs r2, #0x21
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	orrs r0, r5
	ands r0, r2
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FF0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _080062C4
	rsbs r1, r1, #0
_080062C4:
	ldr r0, _080062DC @ =0x0000013F
	cmp r1, r0
	bgt _080062E0
	movs r0, #0x13
	b _080062E2
	.align 2, 0
_080062D0: .4byte gStageData
_080062D4: .4byte 0x00000119
_080062D8: .4byte 0xDC510BA1
_080062DC: .4byte 0x0000013F
_080062E0:
	movs r0, #0x14
_080062E2:
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0x9c
	lsls r1, r1, #3
	cmp r0, #0
	beq _080062F6
	movs r1, #0xa8
	lsls r1, r1, #2
_080062F6:
	adds r0, r4, #0
	bl sub_80063B4
	ldr r1, _0800630C @ =sub_800EDC8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800630C: .4byte sub_800EDC8

	thumb_func_start sub_8006310
sub_8006310: @ 0x08006310
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	rsbs r0, r0, #0
	asrs r5, r0, #0x1f
	movs r0, #8
	ands r5, r0
	ldr r0, _080063A4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800633C
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800633C
	adds r0, r4, #0
	ldr r1, _080063A8 @ =0x00000119
	bl sub_8004F10
_0800633C:
	ldr r0, [r4, #4]
	ldr r1, _080063AC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0x9c
	lsls r1, r1, #3
	cmp r0, #0
	beq _0800638C
	movs r1, #0xa8
	lsls r1, r1, #2
_0800638C:
	adds r0, r4, #0
	bl sub_80063B4
	ldr r1, _080063B0 @ =sub_80064D4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080063A4: .4byte gStageData
_080063A8: .4byte 0x00000119
_080063AC: .4byte 0xDC510BA1
_080063B0: .4byte sub_80064D4

	thumb_func_start sub_80063B4
sub_80063B4: @ 0x080063B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r2, [r0]
	subs r2, #0x40
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _0800641C @ =gSineTable
	lsls r0, r2, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r5, [r4, #0x18]
	adds r0, r0, r5
	strh r0, [r4, #0x18]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x74
	bl sub_8004ED4
	adds r4, #0xe0
	ldr r2, [r4]
	ldr r0, [r2, #0x14]
	ldr r1, _08006420 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800641C: .4byte gSineTable
_08006420: .4byte 0xFFFFBFFF

	thumb_func_start sub_8006424
sub_8006424: @ 0x08006424
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006490 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006444
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006444
	adds r0, r4, #0
	ldr r1, _08006494 @ =0x00000119
	bl sub_8004F10
_08006444:
	ldr r0, [r4, #4]
	ldr r1, _08006498 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08006486
	rsbs r1, r1, #0
_08006486:
	ldr r0, _0800649C @ =0x0000013F
	cmp r1, r0
	bgt _080064A0
	movs r0, #0x13
	b _080064A2
	.align 2, 0
_08006490: .4byte gStageData
_08006494: .4byte 0x00000119
_08006498: .4byte 0xDC510BA1
_0800649C: .4byte 0x0000013F
_080064A0:
	movs r0, #0x14
_080064A2:
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080064CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	movs r1, #0x71
	bl sub_8004E98
	ldr r1, _080064D0 @ =sub_800EDC8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080064CC: .4byte 0xFFFFBFFF
_080064D0: .4byte sub_800EDC8

	thumb_func_start sub_80064D4
sub_80064D4: @ 0x080064D4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0xfd
	lsls r5, r5, #8
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080064E8
	ldr r5, _0800651C @ =0x0000FE80
_080064E8:
	adds r0, r4, #0
	bl sub_8017058
	cmp r0, #0
	bne _08006572
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006572
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x1a]
	cmp r1, r0
	bge _08006524
	ldr r0, _08006520 @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _08006524
	strh r5, [r4, #0x1a]
	b _0800652A
	.align 2, 0
_0800651C: .4byte 0x0000FE80
_08006520: .4byte gStageData
_08006524:
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _0800652E
_0800652A:
	ldr r0, _08006544 @ =sub_800EE64
	str r0, [r4]
_0800652E:
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _08006548
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08006548
	movs r0, #1
	b _0800656A
	.align 2, 0
_08006544: .4byte sub_800EE64
_08006548:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800656C
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800656C
	ldr r0, _08006578 @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #2
_0800656A:
	strh r0, [r4, #0x36]
_0800656C:
	adds r0, r4, #0
	bl sub_800EF18
_08006572:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006578: .4byte 0xFFFFBFFF

	thumb_func_start sub_800657C
sub_800657C: @ 0x0800657C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800661C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800659C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800659C
	adds r0, r4, #0
	ldr r1, _08006620 @ =0x00000119
	bl sub_8004F10
_0800659C:
	ldr r0, [r4, #4]
	ldr r1, _08006624 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	movs r3, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006628 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x26
	strb r3, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #0x18]
	ldr r0, _0800662C @ =0x0000FD60
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	ands r0, r1
	cmp r0, #0
	beq _080065FA
	rsbs r0, r2, #0
	strh r0, [r4, #0x18]
_080065FA:
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08006634
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FF0
	movs r0, #0x14
	strh r0, [r4, #0x30]
	ldr r0, _08006630 @ =sub_800EE38
	b _08006648
	.align 2, 0
_0800661C: .4byte gStageData
_08006620: .4byte 0x00000119
_08006624: .4byte 0xDC510BA1
_08006628: .4byte 0xFFFFBFFF
_0800662C: .4byte 0x0000FD60
_08006630: .4byte sub_800EE38
_08006634:
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r0, _08006650 @ =sub_800EE64
_08006648:
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006650: .4byte sub_800EE64

	thumb_func_start sub_8006654
sub_8006654: @ 0x08006654
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006724 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006674
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006674
	adds r0, r4, #0
	ldr r1, _08006728 @ =0x00000119
	bl sub_8004F10
_08006674:
	ldr r0, [r4, #4]
	ldr r1, _0800672C @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x6d
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006730 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r2, [r0]
	subs r2, #0x40
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _08006734 @ =gSineTable
	lsls r0, r2, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	asrs r0, r0, #3
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	asrs r0, r0, #3
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08006738 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006724: .4byte gStageData
_08006728: .4byte 0x00000119
_0800672C: .4byte 0xDC510BA1
_08006730: .4byte 0xFFFFBFFF
_08006734: .4byte gSineTable
_08006738: .4byte sub_800DF10

	thumb_func_start sub_800673C
sub_800673C: @ 0x0800673C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800680C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800675C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800675C
	adds r0, r4, #0
	ldr r1, _08006810 @ =0x00000119
	bl sub_8004F10
_0800675C:
	ldr r0, [r4, #4]
	ldr r1, _08006814 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0xb3
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006818 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r2, [r0]
	subs r2, #0x40
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _0800681C @ =gSineTable
	lsls r0, r2, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	asrs r0, r0, #3
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	asrs r0, r0, #3
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08006820 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800680C: .4byte gStageData
_08006810: .4byte 0x00000119
_08006814: .4byte 0xDC510BA1
_08006818: .4byte 0xFFFFBFFF
_0800681C: .4byte gSineTable
_08006820: .4byte sub_800DF10

	thumb_func_start sub_8006824
sub_8006824: @ 0x08006824
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080068A8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006844
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006844
	adds r0, r4, #0
	ldr r1, _080068AC @ =0x00000119
	bl sub_8004F10
_08006844:
	ldr r0, [r4, #4]
	ldr r1, _080068B0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x6d
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080068B4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080068B8
	movs r0, #0xfb
	lsls r0, r0, #8
	b _080068BC
	.align 2, 0
_080068A8: .4byte gStageData
_080068AC: .4byte 0x00000119
_080068B0: .4byte 0xDC510BA1
_080068B4: .4byte 0xFFFFBFFF
_080068B8:
	movs r0, #0xa0
	lsls r0, r0, #3
_080068BC:
	strh r0, [r4, #0x18]
	movs r0, #0xf9
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, _080068E8 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080068E8: .4byte sub_800DF10

	thumb_func_start sub_80068EC
sub_80068EC: @ 0x080068EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08006958 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800690C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800690C
	adds r0, r4, #0
	ldr r1, _0800695C @ =0x00000119
	bl sub_8004F10
_0800690C:
	ldr r0, [r4, #4]
	ldr r1, _08006960 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FF0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0800694E
	rsbs r1, r1, #0
_0800694E:
	ldr r0, _08006964 @ =0x0000013F
	cmp r1, r0
	bgt _08006968
	movs r0, #0x13
	b _0800696A
	.align 2, 0
_08006958: .4byte gStageData
_0800695C: .4byte 0x00000119
_08006960: .4byte 0xDC510BA1
_08006964: .4byte 0x0000013F
_08006968:
	movs r0, #0x14
_0800696A:
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r3, #0x9c
	lsls r3, r3, #3
	cmp r0, #0
	beq _0800697E
	movs r3, #0xa8
	lsls r3, r3, #2
_0800697E:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080069D8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	subs r1, #0x40
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080069DC @ =gSineTable
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r5, [r4, #0x18]
	adds r0, r0, r5
	strh r0, [r4, #0x18]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	ldr r1, _080069E0 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080069D8: .4byte 0xFFFFBFFF
_080069DC: .4byte gSineTable
_080069E0: .4byte sub_800DF10

	thumb_func_start sub_80069E4
sub_80069E4: @ 0x080069E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08006A50 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006A04
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006A04
	adds r0, r4, #0
	ldr r1, _08006A54 @ =0x00000119
	bl sub_8004F10
_08006A04:
	ldr r0, [r4, #4]
	ldr r1, _08006A58 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FF0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08006A46
	rsbs r1, r1, #0
_08006A46:
	ldr r0, _08006A5C @ =0x0000013F
	cmp r1, r0
	bgt _08006A60
	movs r0, #0x13
	b _08006A62
	.align 2, 0
_08006A50: .4byte gStageData
_08006A54: .4byte 0x00000119
_08006A58: .4byte 0xDC510BA1
_08006A5C: .4byte 0x0000013F
_08006A60:
	movs r0, #0x14
_08006A62:
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r3, #0x9c
	lsls r3, r3, #3
	cmp r0, #0
	beq _08006A76
	movs r3, #0xa8
	lsls r3, r3, #2
_08006A76:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006AD8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	subs r1, #0x40
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08006ADC @ =gSineTable
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r5, [r4, #0x18]
	adds r0, r0, r5
	strh r0, [r4, #0x18]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	asrs r1, r0, #2
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	ldr r1, _08006AE0 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006AD8: .4byte 0xFFFFBFFF
_08006ADC: .4byte gSineTable
_08006AE0: .4byte sub_800DF10

	thumb_func_start sub_8006AE4
sub_8006AE4: @ 0x08006AE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006B50 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006B04
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006B04
	adds r0, r4, #0
	ldr r1, _08006B54 @ =0x00000119
	bl sub_8004F10
_08006B04:
	ldr r0, [r4, #4]
	ldr r1, _08006B58 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08006B46
	rsbs r1, r1, #0
_08006B46:
	ldr r0, _08006B5C @ =0x0000013F
	cmp r1, r0
	bgt _08006B60
	movs r0, #0x13
	b _08006B62
	.align 2, 0
_08006B50: .4byte gStageData
_08006B54: .4byte 0x00000119
_08006B58: .4byte 0xDC510BA1
_08006B5C: .4byte 0x0000013F
_08006B60:
	movs r0, #0x14
_08006B62:
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006B84 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08006B88 @ =sub_800DF5C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006B84: .4byte 0xFFFFBFFF
_08006B88: .4byte sub_800DF5C

	thumb_func_start sub_8006B8C
sub_8006B8C: @ 0x08006B8C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08006C58 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006BAC
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006BAC
	adds r0, r4, #0
	ldr r1, _08006C5C @ =0x00000119
	bl sub_8004F10
_08006BAC:
	ldr r0, [r4, #4]
	ldr r1, _08006C60 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r1, [r3]
	movs r2, #0x21
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r3, #0x9c
	lsls r3, r3, #3
	cmp r0, #0
	beq _08006BFE
	movs r3, #0xa8
	lsls r3, r3, #2
_08006BFE:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	subs r1, #0x40
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08006C64 @ =gSineTable
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r5, [r4, #0x18]
	adds r0, r0, r5
	strh r0, [r4, #0x18]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006C68 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08006C6C @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006C58: .4byte gStageData
_08006C5C: .4byte 0x00000119
_08006C60: .4byte 0xDC510BA1
_08006C64: .4byte gSineTable
_08006C68: .4byte 0xFFFFBFFF
_08006C6C: .4byte sub_8006C70

	thumb_func_start sub_8006C70
sub_8006C70: @ 0x08006C70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006CE6
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _08006C92
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08006C92
	movs r0, #1
	b _08006CB4
_08006C92:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08006CB6
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08006CB6
	ldr r0, _08006CEC @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #2
_08006CB4:
	strh r0, [r4, #0x36]
_08006CB6:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006CE6
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08006CE6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006CEC: .4byte 0xFFFFBFFF

	thumb_func_start Player_8006CF0
Player_8006CF0: @ 0x08006CF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006DA0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006D10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006D10
	adds r0, r4, #0
	ldr r1, _08006DA4 @ =0x00000119
	bl sub_8004F10
_08006D10:
	ldr r0, [r4, #4]
	ldr r1, _08006DA8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r1, [r3]
	movs r2, #0x21
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0xb
	strh r0, [r4, #0x30]
	movs r2, #0x9c
	lsls r2, r2, #3
	ldr r1, _08006DAC @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	ldrh r3, [r4, #0x18]
	adds r0, r0, r3
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006DB0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08006DB4 @ =Player_800EB5C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006DA0: .4byte gStageData
_08006DA4: .4byte 0x00000119
_08006DA8: .4byte 0xDC510BA1
_08006DAC: .4byte gSineTable
_08006DB0: .4byte 0xFFFFBFFF
_08006DB4: .4byte Player_800EB5C

	thumb_func_start sub_8006DB8
sub_8006DB8: @ 0x08006DB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _08006E40 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006DDE
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _08006DDE
	adds r0, r4, #0
	ldr r1, _08006E44 @ =0x00000119
	bl sub_8004F10
_08006DDE:
	ldr r0, [r4, #4]
	ldr r1, _08006E48 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08006E4C @ =0xE7FFFFFF
	ands r0, r1
	ldr r1, _08006E50 @ =0x20000004
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006E54 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006E58
	adds r0, r4, #0
	bl sub_800E150
	b _08006E66
	.align 2, 0
_08006E40: .4byte gStageData
_08006E44: .4byte 0x00000119
_08006E48: .4byte 0xDC510BA1
_08006E4C: .4byte 0xE7FFFFFF
_08006E50: .4byte 0x20000004
_08006E54: .4byte 0xFFFFBFFF
_08006E58:
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _08006E6C @ =sub_8006E70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_08006E66:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006E6C: .4byte sub_8006E70

	thumb_func_start sub_8006E70
sub_8006E70: @ 0x08006E70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006EFA
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _08006E92
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08006E92
	movs r0, #1
	b _08006EB4
_08006E92:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08006EB6
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08006EB6
	ldr r0, _08006F00 @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #2
_08006EB4:
	strh r0, [r4, #0x36]
_08006EB6:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006EFA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006EFA
	ldr r0, _08006F04 @ =sub_8006F98
	str r0, [r4]
_08006EFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006F00: .4byte 0xFFFFBFFF
_08006F04: .4byte sub_8006F98

	thumb_func_start sub_8006F08
sub_8006F08: @ 0x08006F08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006F80 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006F28
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08006F28
	adds r0, r4, #0
	ldr r1, _08006F84 @ =0x00000119
	bl sub_8004F10
_08006F28:
	ldr r0, [r4, #4]
	ldr r1, _08006F88 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08006F8C @ =0xE7FFFFF5
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08006F90 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _08006F94 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006F80: .4byte gStageData
_08006F84: .4byte 0x00000119
_08006F88: .4byte 0xDC510BA1
_08006F8C: .4byte 0xE7FFFFF5
_08006F90: .4byte 0xFFFFBFFF
_08006F94: .4byte sub_8006C70

	thumb_func_start sub_8006F98
sub_8006F98: @ 0x08006F98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _08007018 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08006FBE
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _08006FBE
	adds r0, r4, #0
	ldr r1, _0800701C @ =0x00000119
	bl sub_8004F10
_08006FBE:
	ldr r0, [r4, #4]
	ldr r1, _08007020 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08007024 @ =0xE7FFFFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08007028 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800702C
	adds r0, r4, #0
	bl sub_800E150
	b _0800703A
	.align 2, 0
_08007018: .4byte gStageData
_0800701C: .4byte 0x00000119
_08007020: .4byte 0xDC510BA1
_08007024: .4byte 0xE7FFFFFF
_08007028: .4byte 0xFFFFBFFF
_0800702C:
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _08007040 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800703A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007040: .4byte sub_8006C70

	thumb_func_start sub_8007044
sub_8007044: @ 0x08007044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _080070E4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800706A
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800706A
	adds r0, r4, #0
	ldr r1, _080070E8 @ =0x00000119
	bl sub_8004F10
_0800706A:
	ldr r0, [r4, #4]
	ldr r1, _080070EC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r3, #0
	strb r3, [r0]
	adds r0, #0x6a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #4
	strh r3, [r0]
	ldr r0, [r4, #4]
	ldr r1, _080070F0 @ =0xE7FFFFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080070B4
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_080070B4:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	strh r3, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080070F4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080070F8
	adds r0, r4, #0
	bl sub_800E150
	b _08007106
	.align 2, 0
_080070E4: .4byte gStageData
_080070E8: .4byte 0x00000119
_080070EC: .4byte 0xDC510BA1
_080070F0: .4byte 0xE7FFFFFF
_080070F4: .4byte 0xFFFFBFFF
_080070F8:
	movs r0, #0x6d
	strh r0, [r4, #0x30]
	ldr r1, _0800710C @ =sub_800DFA0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_08007106:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800710C: .4byte sub_800DFA0

	thumb_func_start sub_8007110
sub_8007110: @ 0x08007110
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08007190 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08007130
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08007130
	adds r0, r5, #0
	ldr r1, _08007194 @ =0x00000119
	bl sub_8004F10
_08007130:
	ldr r0, [r5, #4]
	ldr r1, _08007198 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0800719C @ =0x08040000
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080071A0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8016F28
	movs r0, #0x6e
	strh r0, [r5, #0x30]
	strh r4, [r5, #0x36]
	ldr r1, _080071A4 @ =sub_800DFA0
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007190: .4byte gStageData
_08007194: .4byte 0x00000119
_08007198: .4byte 0xDC510BA1
_0800719C: .4byte 0x08040000
_080071A0: .4byte 0xFFFFBFFF
_080071A4: .4byte sub_800DFA0

	thumb_func_start sub_80071A8
sub_80071A8: @ 0x080071A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08007228 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080071C8
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080071C8
	adds r0, r4, #0
	ldr r1, _0800722C @ =0x00000119
	bl sub_8004F10
_080071C8:
	ldr r0, [r4, #4]
	ldr r1, _08007230 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _08007234 @ =0x08040000
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08007238 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8016F28
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _0800723C @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007228: .4byte gStageData
_0800722C: .4byte 0x00000119
_08007230: .4byte 0xDC510BA1
_08007234: .4byte 0x08040000
_08007238: .4byte 0xFFFFBFFF
_0800723C: .4byte sub_8006C70

	thumb_func_start sub_8007240
sub_8007240: @ 0x08007240
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080072C0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08007260
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08007260
	adds r0, r4, #0
	ldr r1, _080072C4 @ =0x00000119
	bl sub_8004F10
_08007260:
	ldr r0, [r4, #4]
	ldr r1, _080072C8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080072CC @ =0x08040000
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080072D0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8016F28
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r1, _080072D4 @ =sub_800DFA0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080072C0: .4byte gStageData
_080072C4: .4byte 0x00000119
_080072C8: .4byte 0xDC510BA1
_080072CC: .4byte 0x08040000
_080072D0: .4byte 0xFFFFBFFF
_080072D4: .4byte sub_800DFA0

	thumb_func_start sub_80072D8
sub_80072D8: @ 0x080072D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08007350 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080072F8
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080072F8
	adds r0, r4, #0
	ldr r1, _08007354 @ =0x00000119
	bl sub_8004F10
_080072F8:
	ldr r0, [r4, #4]
	ldr r1, _08007358 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0800735C @ =0xE7FFFFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08007360 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #0x7f
	strh r0, [r4, #0x30]
	ldr r1, _08007364 @ =sub_800DFA0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007350: .4byte gStageData
_08007354: .4byte 0x00000119
_08007358: .4byte 0xDC510BA1
_0800735C: .4byte 0xE7FFFFFF
_08007360: .4byte 0xFFFFBFFF
_08007364: .4byte sub_800DFA0

	thumb_func_start sub_8007368
sub_8007368: @ 0x08007368
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080073D8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08007388
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08007388
	adds r0, r4, #0
	ldr r1, _080073DC @ =0x00000119
	bl sub_8004F10
_08007388:
	ldr r0, [r4, #4]
	ldr r1, _080073E0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r1, [r3]
	movs r2, #0x21
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _080073E4
	cmp r0, #4
	beq _080073E8
	b _080073EC
	.align 2, 0
_080073D8: .4byte gStageData
_080073DC: .4byte 0x00000119
_080073E0: .4byte 0xDC510BA1
_080073E4:
	movs r0, #0xad
	b _080073EA
_080073E8:
	ldr r0, _08007424 @ =0x00000107
_080073EA:
	strh r0, [r4, #0x30]
_080073EC:
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0x9c
	lsls r1, r1, #3
	cmp r0, #0
	beq _080073FE
	movs r1, #0xa8
	lsls r1, r1, #2
_080073FE:
	movs r0, #0
	strh r0, [r4, #0x18]
	rsbs r0, r1, #0
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08007428 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800742C @ =sub_8007430
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007424: .4byte 0x00000107
_08007428: .4byte 0xFFFFBFFF
_0800742C: .4byte sub_8007430

	thumb_func_start sub_8007430
sub_8007430: @ 0x08007430
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080074AE
	ldrh r0, [r4, #0x36]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800745C
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800745C
	movs r0, #1
	b _0800747C
_0800745C:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800747E
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0800747E
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080074B4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #2
_0800747C:
	strh r0, [r4, #0x36]
_0800747E:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080074AE
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_080074AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080074B4: .4byte 0xFFFFBFFF

	thumb_func_start sub_80074B8
sub_80074B8: @ 0x080074B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08007534 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080074D8
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080074D8
	adds r0, r5, #0
	ldr r1, _08007538 @ =0x00000119
	bl sub_8004F10
_080074D8:
	ldr r0, [r5, #4]
	ldr r1, _0800753C @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #0x42
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08007540 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FE0
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08007544
	cmp r0, #2
	beq _08007548
	b _0800754C
	.align 2, 0
_08007534: .4byte gStageData
_08007538: .4byte 0x00000119
_0800753C: .4byte 0xDC510BA1
_08007540: .4byte 0xFFFFBFFF
_08007544:
	movs r0, #0xc6
	b _0800754A
_08007548:
	movs r0, #0xdc
_0800754A:
	strh r0, [r5, #0x30]
_0800754C:
	ldr r1, _0800755C @ =sub_8007560
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800755C: .4byte sub_8007560

	thumb_func_start sub_8007560
sub_8007560: @ 0x08007560
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080075D8
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _080075DE
	movs r1, #1
	strh r1, [r4, #0x36]
	ldr r0, [r4, #4]
	ands r0, r1
	cmp r0, #0
	beq _080075B0
	ldrh r2, [r4, #0x18]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r1, _080075A8 @ =0xFFFFFD00
	cmp r0, r1
	ble _080075D2
	adds r0, r2, r1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080075AC @ =0xFFFFFB00
	cmp r0, r1
	bge _080075D2
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	b _080075D2
	.align 2, 0
_080075A8: .4byte 0xFFFFFD00
_080075AC: .4byte 0xFFFFFB00
_080075B0:
	ldrh r2, [r4, #0x18]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0800761C @ =0x000002FF
	cmp r1, r0
	bgt _080075D2
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _080075D2
	strh r1, [r4, #0x18]
_080075D2:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
_080075D8:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	beq _08007614
_080075DE:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007614
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08007614:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800761C: .4byte 0x000002FF

	thumb_func_start sub_8007620
sub_8007620: @ 0x08007620
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080076F2
	ldr r0, _080076F8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800764C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800764C
	adds r0, r4, #0
	ldr r1, _080076FC @ =0x00000119
	bl sub_8004F10
_0800764C:
	ldr r0, [r4, #4]
	ldr r1, _08007700 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08007704 @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08007708 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #0x14
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FC0
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r2, _0800770C @ =gSineTable
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r4, #0x18]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080076D2
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_080076D2:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x70
	bl sub_8004E98
	adds r0, r4, #0
	bl sub_8019A58
	ldr r1, _08007710 @ =sub_8007714
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_080076F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080076F8: .4byte gStageData
_080076FC: .4byte 0x00000119
_08007700: .4byte 0xDC510BA1
_08007704: .4byte 0x00008006
_08007708: .4byte 0xFFFFBFFF
_0800770C: .4byte gSineTable
_08007710: .4byte sub_8007714

	thumb_func_start sub_8007714
sub_8007714: @ 0x08007714
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08007736
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08007754
_08007736:
	ldr r0, [r4, #4]
	ldr r1, _0800774C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, _08007750 @ =sub_800DB30
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8019A64
	b _080077C0
	.align 2, 0
_0800774C: .4byte 0xFFFF7FFF
_08007750: .4byte sub_800DB30
_08007754:
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r2, _080077C8 @ =gSineTable
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	strh r0, [r4, #0x18]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08007790
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_08007790:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080077C0
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_080077C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080077C8: .4byte gSineTable

	thumb_func_start Player_80077CC
Player_80077CC: @ 0x080077CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #0
	bne _080077E4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800788C
_080077E4:
	ldr r0, _0800784C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080077FE
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _080077FE
	adds r0, r5, #0
	ldr r1, _08007850 @ =0x00000119
	bl sub_8004F10
_080077FE:
	ldr r0, [r5, #4]
	ldr r1, _08007854 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	movs r4, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
	adds r0, r5, #0
	adds r0, #0x5a
	strb r4, [r0]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08007858
	movs r0, #9
	b _08007872
	.align 2, 0
_0800784C: .4byte gStageData
_08007850: .4byte 0x00000119
_08007854: .4byte 0xDC510BA1
_08007858:
	ldr r0, [r5, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08007870
	movs r0, #0x21
	strh r0, [r5, #0x30]
	ldr r0, _0800786C @ =Player_80077CC
	str r0, [r5]
	b _0800788C
	.align 2, 0
_0800786C: .4byte Player_80077CC
_08007870:
	movs r0, #3
_08007872:
	strh r0, [r5, #0x30]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r0, [r2]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	ldr r1, _08007894 @ =sub_8007898
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_0800788C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007894: .4byte sub_8007898

	thumb_func_start sub_8007898
sub_8007898: @ 0x08007898
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #0
	bne _080078B0
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08007928
_080078B0:
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08007928
	adds r0, r4, #0
	bl sub_8014D70
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007928
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007928
	adds r0, r4, #0
	bl sub_8016EDC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007928
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007928
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007928
	adds r0, r4, #0
	bl sub_800D7C8
_08007928:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8007930
sub_8007930: @ 0x08007930
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, _08007980 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08007984 @ =gPlayers
	adds r6, r0, r1
	ldr r1, [r4, #4]
	ldr r0, _08007988 @ =0xFDFFFEFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r2, [r6, #4]
	movs r3, #0x80
	lsls r3, r3, #0x11
	ands r2, r3
	cmp r2, #0
	beq _08007994
	ldr r0, _0800798C @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, _08007990 @ =Player_8005380
	str r0, [r4]
	b _08007AE2
	.align 2, 0
_08007980: .4byte gCurTask
_08007984: .4byte gPlayers
_08007988: .4byte 0xFDFFFEFF
_0800798C: .4byte 0xFEFFFFFF
_08007990: .4byte Player_8005380
_08007994:
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r3
	str r1, [r4, #4]
	movs r0, #0xb
	strh r0, [r4, #0x30]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x18]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x42
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #0x5a
	strh r2, [r0]
	adds r0, r6, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	ldr r2, [r4, #4]
	ldr r0, _08007A34 @ =0xFFFEFFFE
	ands r2, r0
	ldr r0, [r6, #4]
	ldr r1, _08007A38 @ =0x00010001
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #4]
	movs r0, #0
	mov sb, r5
	adds r3, r4, #0
	adds r3, #0xf4
	ldr r1, _08007A3C @ =gObjPalette
	mov r8, r1
_080079DE:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #1
	adds r2, r3, r2
	mov r5, ip
	movs r7, #4
	ldrsh r0, [r5, r7]
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080079DE
	adds r0, r4, #0
	bl sub_8016F28
	mov r1, sb
	ldrb r0, [r1]
	movs r2, #0x1c
	ands r2, r0
	cmp r2, #8
	beq _08007A1E
	cmp r2, #0x14
	beq _08007A1E
	cmp r2, #0x10
	bne _08007A44
_08007A1E:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r2, _08007A40 @ =gCamera
	ldr r1, [r2]
	subs r5, r0, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r2, r0, r1
	ldr r3, [r6, #0x10]
	b _08007A56
	.align 2, 0
_08007A34: .4byte 0xFFFEFFFE
_08007A38: .4byte 0x00010001
_08007A3C: .4byte gObjPalette
_08007A40: .4byte gCamera
_08007A44:
	ldr r3, [r6, #0x10]
	asrs r1, r3, #8
	ldr r2, _08007A88 @ =gCamera
	ldr r0, [r2]
	subs r5, r1, r0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r2, r0, r1
_08007A56:
	str r3, [r4, #0x38]
	ldr r0, [r6, #0x14]
	str r0, [r4, #0x3c]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08007A90
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08007A90
	cmp r2, #0xc0
	bgt _08007A90
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, [r4, #0x14]
	str r1, [r0]
	ldr r1, _08007A8C @ =sub_8007B00
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _08007A9A
	.align 2, 0
_08007A88: .4byte gCamera
_08007A8C: .4byte sub_8007B00
_08007A90:
	ldr r1, _08007AF0 @ =sub_8007C28
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_08007A9A:
	ldr r0, _08007AF4 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08007AE2
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08007AF8 @ =gCamera
	ldr r1, [r2]
	subs r5, r0, r1
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r2, r0, r1
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08007AD6
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08007AD6
	cmp r2, #0xc0
	ble _08007AE2
_08007AD6:
	ldr r0, [r6, #0x10]
	ldr r5, _08007AFC @ =0xFFFF6A00
	adds r0, r0, r5
	str r0, [r3]
	ldr r0, [r6, #0x14]
	str r0, [r3, #4]
_08007AE2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007AF0: .4byte sub_8007C28
_08007AF4: .4byte gStageData
_08007AF8: .4byte gCamera
_08007AFC: .4byte 0xFFFF6A00

	thumb_func_start sub_8007B00
sub_8007B00: @ 0x08007B00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08007B7C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x27
	strb r0, [r1]
	ldr r2, [r5, #4]
	ldr r0, _08007B80 @ =0xFFFEFFFE
	ands r2, r0
	ldr r0, [r4, #4]
	ldr r1, _08007B84 @ =0x00010001
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08007B50
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x3c]
_08007B50:
	ldr r0, [r5, #0x38]
	mov ip, r0
	ldr r6, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r1
	cmp r0, #0x1e
	bgt _08007BEC
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r3, [r0]
	cmp r3, r6
	bge _08007B8C
	ldr r1, _08007B88 @ =0xFFFFE000
	adds r2, r3, r1
	b _08007B90
	.align 2, 0
_08007B7C: .4byte gPlayers
_08007B80: .4byte 0xFFFEFFFE
_08007B84: .4byte 0x00010001
_08007B88: .4byte 0xFFFFE000
_08007B8C:
	ldr r7, _08007BB4 @ =0xFFFFE000
	adds r2, r6, r7
_08007B90:
	ldr r0, _08007BB8 @ =gSineTable
	mov r1, r8
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #5
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	mov r7, r8
	movs r0, #0
	ldrsh r7, [r7, r0]
	cmp r7, #0xf
	ble _08007BBC
	subs r0, r2, r6
	muls r0, r1, r0
	asrs r1, r0, #0xe
	str r6, [r5, #0x14]
	b _08007BC4
	.align 2, 0
_08007BB4: .4byte 0xFFFFE000
_08007BB8: .4byte gSineTable
_08007BBC:
	subs r0, r2, r3
	muls r0, r1, r0
	asrs r1, r0, #0xe
	str r3, [r5, #0x14]
_08007BC4:
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r4, [r5, #0x10]
	adds r4, r4, r0
	str r4, [r5, #0x10]
	mov r3, ip
	subs r0, r3, r4
	mov r7, r8
	movs r1, #0
	ldrsh r2, [r7, r1]
	movs r1, #0x1e
	subs r1, r1, r2
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #0x10]
	b _08007C18
_08007BEC:
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08007C18
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _08007C14
	ldr r0, _08007C10 @ =Player_8005380
	b _08007C16
	.align 2, 0
_08007C10: .4byte Player_8005380
_08007C14:
	ldr r0, _08007C24 @ =sub_8007DF4
_08007C16:
	str r0, [r5]
_08007C18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007C24: .4byte sub_8007DF4

	thumb_func_start sub_8007C28
sub_8007C28: @ 0x08007C28
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08007CC8 @ =gPlayers
	adds r4, r0, r1
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x27
	strb r0, [r1]
	ldr r2, [r3, #4]
	ldr r0, _08007CCC @ =0xFFFEFFFE
	ands r2, r0
	ldr r0, [r4, #4]
	ldr r1, _08007CD0 @ =0x00010001
	ands r0, r1
	orrs r2, r0
	str r2, [r3, #4]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08007C74
	ldr r0, [r4, #0x10]
	str r0, [r3, #0x38]
	ldr r0, [r4, #0x14]
	str r0, [r3, #0x3c]
_08007C74:
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x38]
	cmp r0, r1
	bge _08007C7E
	movs r5, #1
_08007C7E:
	str r1, [r3, #0x10]
	ldr r0, [r3, #0x3c]
	str r0, [r3, #0x14]
	adds r2, r3, #0
	adds r2, #0x44
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08007C98
	b _08007DC4
_08007C98:
	ldr r1, _08007CD4 @ =gSineTable
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r3, #0x14]
	cmp r5, #0
	beq _08007CD8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x1e
	subs r0, r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r3, #0x10]
	subs r0, r0, r1
	b _08007CEA
	.align 2, 0
_08007CC8: .4byte gPlayers
_08007CCC: .4byte 0xFFFEFFFE
_08007CD0: .4byte 0x00010001
_08007CD4: .4byte gSineTable
_08007CD8:
	movs r4, #0
	ldrsh r1, [r2, r4]
	movs r0, #0x1e
	subs r0, r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
_08007CEA:
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bge _08007CF6
	movs r0, #0
	b _08007D0A
_08007CF6:
	ldr r1, _08007D18 @ =gUnknown_080D05A8
	ldr r0, _08007D1C @ =gStageData
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #8
	subs r0, #1
	cmp r2, r0
	bls _08007D0C
_08007D0A:
	str r0, [r3, #0x10]
_08007D0C:
	ldr r2, [r3, #0x14]
	cmp r2, #0
	bge _08007D20
	movs r0, #0
	b _08007D36
	.align 2, 0
_08007D18: .4byte gUnknown_080D05A8
_08007D1C: .4byte gStageData
_08007D20:
	ldr r1, _08007D68 @ =gUnknown_080D05A8
	ldr r0, _08007D6C @ =gStageData
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #8
	subs r0, #1
	cmp r2, r0
	bls _08007D38
_08007D36:
	str r0, [r3, #0x14]
_08007D38:
	ldr r0, [r3, #0x10]
	cmp r0, #0
	bge _08007D42
	movs r0, #0
	str r0, [r3, #0x10]
_08007D42:
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08007DE8
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	adds r4, r0, #0
	subs r4, #0x78
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	adds r2, r0, #0
	subs r2, #0x50
	cmp r4, #0
	bge _08007D70
	movs r4, #0
	b _08007D84
	.align 2, 0
_08007D68: .4byte gUnknown_080D05A8
_08007D6C: .4byte gStageData
_08007D70:
	ldr r1, _08007D8C @ =gUnknown_080D05A8
	ldr r0, _08007D90 @ =gStageData
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0xf1
	cmp r4, r0
	ble _08007D84
	adds r4, r0, #0
_08007D84:
	cmp r2, #0
	bge _08007D94
	movs r2, #0
	b _08007DAA
	.align 2, 0
_08007D8C: .4byte gUnknown_080D05A8
_08007D90: .4byte gStageData
_08007D94:
	ldr r1, _08007DB8 @ =gUnknown_080D05A8
	ldr r0, _08007DBC @ =gStageData
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0xa1
	cmp r2, r0
	ble _08007DAA
	adds r2, r0, #0
_08007DAA:
	ldr r0, _08007DC0 @ =gCamera
	str r4, [r0]
	str r4, [r0, #0x28]
	str r2, [r0, #4]
	str r2, [r0, #0x2c]
	b _08007DE8
	.align 2, 0
_08007DB8: .4byte gUnknown_080D05A8
_08007DBC: .4byte gStageData
_08007DC0: .4byte gCamera
_08007DC4:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08007DE8
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _08007DE4
	ldr r0, _08007DE0 @ =Player_8005380
	b _08007DE6
	.align 2, 0
_08007DE0: .4byte Player_8005380
_08007DE4:
	ldr r0, _08007DF0 @ =sub_8007DF4
_08007DE6:
	str r0, [r3]
_08007DE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007DF0: .4byte sub_8007DF4

	thumb_func_start sub_8007DF4
sub_8007DF4: @ 0x08007DF4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08007E3C @ =gPlayers
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	ldr r2, [r4, #4]
	ldr r0, _08007E40 @ =0xFFFEFFFE
	ands r2, r0
	ldr r0, [r3, #4]
	ldr r1, _08007E44 @ =0x00010001
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #4]
	ldr r2, [r3, #0x10]
	str r2, [r4, #0x10]
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08007E4C
	ldr r1, _08007E48 @ =0xFFFFF600
	b _08007E50
	.align 2, 0
_08007E3C: .4byte gPlayers
_08007E40: .4byte 0xFFFEFFFE
_08007E44: .4byte 0x00010001
_08007E48: .4byte 0xFFFFF600
_08007E4C:
	movs r1, #0xa0
	lsls r1, r1, #4
_08007E50:
	adds r0, r2, r1
	str r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08007E8C
	adds r0, r3, #0
	bl sub_800BF78
	ldr r0, [r4, #4]
	ldr r1, _08007E88 @ =0xFE7FFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004F10
	b _08007EA2
	.align 2, 0
_08007E88: .4byte 0xFE7FFFFF
_08007E8C:
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _08007EA2
	ldr r0, [r3, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x14]
	ldr r0, _08007EA8 @ =Player_8005380
	str r0, [r4]
_08007EA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007EA8: .4byte Player_8005380

	thumb_func_start sub_8007EAC
sub_8007EAC: @ 0x08007EAC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08007F34 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08007ECC
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08007ECC
	adds r0, r4, #0
	ldr r1, _08007F38 @ =0x00000119
	bl sub_8004F10
_08007ECC:
	ldr r0, [r4, #4]
	ldr r1, _08007F3C @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08007F40 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, _08007F44 @ =0x00800004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x15
	strh r1, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	movs r5, #0x9c
	lsls r5, r5, #3
	cmp r0, #0
	beq _08007F16
	movs r5, #0xa8
	lsls r5, r5, #2
_08007F16:
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80063B4
	ldr r1, _08007F48 @ =sub_8007F4C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007F34: .4byte gStageData
_08007F38: .4byte 0x00000119
_08007F3C: .4byte 0xDC510BA1
_08007F40: .4byte 0xDFFFFFFF
_08007F44: .4byte 0x00800004
_08007F48: .4byte sub_8007F4C

	thumb_func_start sub_8007F4C
sub_8007F4C: @ 0x08007F4C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0xfd
	lsls r5, r5, #8
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08007F60
	ldr r5, _08007F94 @ =0x0000FE80
_08007F60:
	adds r0, r4, #0
	bl sub_8017058
	cmp r0, #0
	bne _08007FDC
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08007FDC
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x1a]
	cmp r1, r0
	bge _08007F9C
	ldr r0, _08007F98 @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _08007F9C
	strh r5, [r4, #0x1a]
	b _08007FA2
	.align 2, 0
_08007F94: .4byte 0x0000FE80
_08007F98: .4byte gStageData
_08007F9C:
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _08007FA6
_08007FA2:
	ldr r0, _08007FE4 @ =sub_800EEC4
	str r0, [r4]
_08007FA6:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007FDC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08007FDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007FE4: .4byte sub_800EEC4

	thumb_func_start sub_8007FE8
sub_8007FE8: @ 0x08007FE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _0800804C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800800E
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800800E
	adds r0, r4, #0
	ldr r1, _08008050 @ =0x00000119
	bl sub_8004F10
_0800800E:
	ldr r0, [r4, #4]
	ldr r1, _08008054 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #0x73
	strh r0, [r2]
	ldr r0, [r4, #4]
	orrs r0, r5
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08008058
	movs r0, #5
	b _0800805A
	.align 2, 0
_0800804C: .4byte gStageData
_08008050: .4byte 0x00000119
_08008054: .4byte 0xDC510BA1
_08008058:
	movs r0, #2
_0800805A:
	strh r0, [r4, #0x30]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
	ldr r1, _0800807C @ =sub_8008080
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800807C: .4byte sub_8008080

	thumb_func_start sub_8008080
sub_8008080: @ 0x08008080
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0xc
	ldr r1, _080080C4 @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r4, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r0, r4, #0
	bl sub_8016D88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080080CC
	ldr r0, [r4, #4]
	ldr r1, _080080C8 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _080082B4
	.align 2, 0
_080080C4: .4byte gUnknown_080CE7D8
_080080C8: .4byte 0xFF7FFFFF
_080080CC:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080080EE
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080080F4
	adds r0, r4, #0
	adds r0, #0x9e
	strh r1, [r0]
	b _080082B4
_080080EE:
	adds r0, r4, #0
	bl sub_8014BC4
_080080F4:
	ldr r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r5, r0
	cmp r5, #0
	bne _08008110
	movs r0, #2
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	beq _08008114
	b _080082AE
_08008110:
	movs r0, #5
	strh r0, [r4, #0x30]
_08008114:
	ldrh r0, [r4, #0x1e]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0
	bne _0800814C
	ldrh r0, [r4, #0x36]
	cmp r6, #2
	bne _08008128
	cmp r0, #0
	beq _08008132
_08008128:
	cmp r6, #5
	bne _08008170
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _08008170
_08008132:
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08008148 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	b _08008170
	.align 2, 0
_08008148: .4byte 0xFFFFBFFF
_0800814C:
	cmp r1, #0x80
	beq _08008170
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08008164
	ldr r0, _08008160 @ =Player_80077CC
	b _08008166
	.align 2, 0
_08008160: .4byte Player_80077CC
_08008164:
	ldr r0, _08008194 @ =Player_8005380
_08008166:
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
_08008170:
	cmp r6, #2
	beq _0800817A
	ldrh r0, [r4, #0x36]
	cmp r6, #5
	bne _080081DC
_0800817A:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _080081DC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08008198
	subs r0, r2, #1
	b _0800821A
	.align 2, 0
_08008194: .4byte Player_8005380
_08008198:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080081C0
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080081BC @ =0xFFFFFC40
	cmp r1, r0
	ble _0800821C
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
	b _0800821C
	.align 2, 0
_080081BC: .4byte 0xFFFFFC40
_080081C0:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080081D8 @ =0x000003BF
	cmp r1, r0
	bgt _0800821C
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2]
	b _0800821C
	.align 2, 0
_080081D8: .4byte 0x000003BF
_080081DC:
	cmp r6, #2
	beq _080081E4
	cmp r6, #5
	bne _0800821C
_080081E4:
	cmp r0, #1
	bne _08008258
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08008208
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800821C
	adds r0, r2, #0
	adds r0, #0x20
	b _0800821A
_08008208:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0800821C
	adds r0, r2, #0
	subs r0, #0x20
_0800821A:
	strh r0, [r1]
_0800821C:
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _08008258
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08008258
	cmp r6, #2
	bne _0800823C
	ldr r0, _08008238 @ =Player_8005380
	b _0800824E
	.align 2, 0
_08008238: .4byte Player_8005380
_0800823C:
	cmp r6, #5
	beq _0800824C
	ldr r0, _08008248 @ =Player_8005380
	str r0, [r4]
	b _080082B4
	.align 2, 0
_08008248: .4byte Player_8005380
_0800824C:
	ldr r0, _08008294 @ =Player_80077CC
_0800824E:
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
_08008258:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _080082B4
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _08008298
	adds r0, r4, #0
	adds r0, #0x9e
	strh r6, [r0]
	b _080082B4
	.align 2, 0
_08008294: .4byte Player_80077CC
_08008298:
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080082B4
_080082AE:
	adds r0, r4, #0
	adds r0, #0x9e
	strh r5, [r0]
_080082B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80082BC
sub_80082BC: @ 0x080082BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _08008320 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080082E2
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _080082E2
	adds r0, r4, #0
	ldr r1, _08008324 @ =0x00000119
	bl sub_8004F10
_080082E2:
	ldr r0, [r4, #4]
	ldr r1, _08008328 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #0x73
	strh r0, [r2]
	ldr r0, [r4, #4]
	orrs r0, r5
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800832C
	movs r0, #4
	b _0800832E
	.align 2, 0
_08008320: .4byte gStageData
_08008324: .4byte 0x00000119
_08008328: .4byte 0xDC510BA1
_0800832C:
	movs r0, #1
_0800832E:
	strh r0, [r4, #0x30]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
	ldr r1, _08008350 @ =sub_8008354
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008350: .4byte sub_8008354

	thumb_func_start sub_8008354
sub_8008354: @ 0x08008354
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0xc
	ldr r1, _0800839C @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r4, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080083A0
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080083A6
	adds r0, r4, #0
	adds r0, #0x9e
	strh r1, [r0]
	b _08008564
	.align 2, 0
_0800839C: .4byte gUnknown_080CE7D8
_080083A0:
	adds r0, r4, #0
	bl sub_8014BC4
_080083A6:
	ldr r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r5, r0
	cmp r5, #0
	bne _080083C2
	movs r0, #1
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	beq _080083C6
	b _0800855E
_080083C2:
	movs r0, #4
	strh r0, [r4, #0x30]
_080083C6:
	ldrh r0, [r4, #0x1e]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0
	bne _08008400
	ldrh r0, [r4, #0x36]
	cmp r6, #1
	bne _080083DE
	cmp r0, #0
	bne _080083DE
	strh r6, [r4, #0x36]
	b _080083EC
_080083DE:
	cmp r6, #4
	bne _08008424
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _08008424
	movs r0, #1
	strh r0, [r4, #0x36]
_080083EC:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080083FC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	b _08008424
	.align 2, 0
_080083FC: .4byte 0xFFFFBFFF
_08008400:
	cmp r1, #0x40
	beq _08008424
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08008418
	ldr r0, _08008414 @ =Player_80077CC
	b _0800841A
	.align 2, 0
_08008414: .4byte Player_80077CC
_08008418:
	ldr r0, _08008448 @ =Player_8005380
_0800841A:
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
_08008424:
	cmp r6, #1
	beq _0800842E
	ldrh r0, [r4, #0x36]
	cmp r6, #4
	bne _08008490
_0800842E:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _08008490
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0800844C
	subs r0, r2, #1
	b _080084CA
	.align 2, 0
_08008448: .4byte Player_8005380
_0800844C:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08008474
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _08008470 @ =0x0000044F
	cmp r1, r0
	bgt _080084CC
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2]
	b _080084CC
	.align 2, 0
_08008470: .4byte 0x0000044F
_08008474:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0800848C @ =0xFFFFFBB0
	cmp r1, r0
	ble _080084CC
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
	b _080084CC
	.align 2, 0
_0800848C: .4byte 0xFFFFFBB0
_08008490:
	cmp r6, #1
	beq _08008498
	cmp r6, #4
	bne _080084CC
_08008498:
	cmp r0, #1
	bne _08008508
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080084BA
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080084CC
	subs r0, r2, #4
	b _080084CA
_080084BA:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080084CC
	adds r0, r2, #4
_080084CA:
	strh r0, [r1]
_080084CC:
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _08008508
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08008508
	cmp r6, #1
	bne _080084EC
	ldr r0, _080084E8 @ =Player_8005380
	b _080084FE
	.align 2, 0
_080084E8: .4byte Player_8005380
_080084EC:
	cmp r6, #4
	beq _080084FC
	ldr r0, _080084F8 @ =Player_8005380
	str r0, [r4]
	b _08008564
	.align 2, 0
_080084F8: .4byte Player_8005380
_080084FC:
	ldr r0, _08008544 @ =Player_80077CC
_080084FE:
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
_08008508:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _08008564
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _08008548
	adds r0, r4, #0
	adds r0, #0x9e
	strh r6, [r0]
	b _08008564
	.align 2, 0
_08008544: .4byte Player_80077CC
_08008548:
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08008564
_0800855E:
	adds r0, r4, #0
	adds r0, #0x9e
	strh r5, [r0]
_08008564:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800856C
sub_800856C: @ 0x0800856C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008648
	ldr r2, [r4, #4]
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080085A0
	ldrh r1, [r4, #0x1e]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080085BA
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080085B6
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080085B4
_080085A0:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080085BA
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080085B6
	orrs r2, r3
_080085B4:
	str r2, [r4, #4]
_080085B6:
	movs r0, #1
	b _080085BC
_080085BA:
	movs r0, #2
_080085BC:
	adds r5, r0, #0
	cmp r5, #0
	beq _080085F6
	adds r0, r4, #0
	bl sub_8005800
	cmp r5, #1
	bne _080085F0
	ldr r0, _080085E4 @ =Player_8005380
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8015228
	ldr r1, [r4]
	ldr r0, _080085E8 @ =sub_800DFEC
	cmp r1, r0
	bne _08008648
	ldr r0, _080085EC @ =sub_800856C
	str r0, [r4]
	b _080085F4
	.align 2, 0
_080085E4: .4byte Player_8005380
_080085E8: .4byte sub_800DFEC
_080085EC: .4byte sub_800856C
_080085F0:
	movs r0, #0x22
	strh r0, [r4, #0x30]
_080085F4:
	ldrh r1, [r4, #0x1e]
_080085F6:
	ldr r0, _08008650 @ =gStageData
	ldrh r0, [r0, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _0800860C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x22
	bne _0800860C
	movs r0, #0
	strh r0, [r4, #0x30]
_0800860C:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008648
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008648
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_08008648:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008650: .4byte gStageData

	thumb_func_start sub_8008654
sub_8008654: @ 0x08008654
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008714
	ldr r2, [r4, #4]
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08008680
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08008698
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _0800868C
_08008680:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08008698
	orrs r2, r3
_0800868C:
	str r2, [r4, #4]
	ldr r0, _08008694 @ =sub_800DFEC
	str r0, [r4]
	b _08008714
	.align 2, 0
_08008694: .4byte sub_800DFEC
_08008698:
	adds r0, r4, #0
	bl sub_8005800
	ldr r0, _0800871C @ =Player_8005380
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8015228
	ldr r1, [r4]
	ldr r0, _08008720 @ =sub_800E01C
	cmp r1, r0
	bne _08008714
	ldr r0, _08008724 @ =sub_8008654
	str r0, [r4]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080086C0
	movs r0, #0x23
	strh r0, [r4, #0x30]
_080086C0:
	ldr r0, _08008728 @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _080086D8
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x23
	bne _080086D8
	movs r0, #0
	strh r0, [r4, #0x30]
_080086D8:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008714
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008714
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_08008714:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800871C: .4byte Player_8005380
_08008720: .4byte sub_800E01C
_08008724: .4byte sub_8008654
_08008728: .4byte gStageData

	thumb_func_start sub_800872C
sub_800872C: @ 0x0800872C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080087BC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800874C
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800874C
	adds r0, r5, #0
	ldr r1, _080087C0 @ =0x00000119
	bl sub_8004F10
_0800874C:
	ldr r0, [r5, #4]
	ldr r1, _080087C4 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x12
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0xa
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8012FC0
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
	strh r4, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_80170A0
	adds r0, r5, #0
	movs r1, #0x6d
	bl sub_8004E98
	ldr r1, _080087C8 @ =sub_80087CC
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080087BC: .4byte gStageData
_080087C0: .4byte 0x00000119
_080087C4: .4byte 0xDC510BA1
_080087C8: .4byte sub_80087CC

	thumb_func_start sub_80087CC
sub_80087CC: @ 0x080087CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, #0xc
	mov r8, r0
	ldr r1, _08008844 @ =gUnknown_080CE7D8
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r5, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldrh r1, [r5, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08008850
	ldr r2, [r5, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0800881E
	movs r4, #8
_0800881E:
	ldr r0, _08008848 @ =gUnknown_080CE5B8
	lsls r1, r4, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08008834
	rsbs r1, r1, #0
_08008834:
	strh r1, [r5, #0x1c]
	ldr r0, _0800884C @ =Player_800891C
	str r0, [r5]
	adds r0, r5, #0
	movs r1, #0x6e
	bl sub_8004E98
	b _0800890A
	.align 2, 0
_08008844: .4byte gUnknown_080CE7D8
_08008848: .4byte gUnknown_080CE5B8
_0800884C: .4byte Player_800891C
_08008850:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r4, [r0]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _0800886E
	asrs r0, r2, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0800886E
	movs r4, #0
_0800886E:
	ldr r0, _08008914 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _080088AE
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r2, r4, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bge _08008894
	adds r2, r1, #0
_08008894:
	adds r4, r2, #0
	movs r0, #1
	strh r0, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0x6d
	bl sub_8004E98
_080088AE:
	strh r4, [r6]
	cmp r7, #0xa
	bne _080088CC
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	bne _080088CC
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080088CC
	movs r0, #0
	strh r0, [r5, #0x36]
_080088CC:
	adds r0, r5, #0
	bl sub_8015144
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800890A
	adds r0, r5, #0
	bl sub_801479C
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8012EB8
	adds r0, r5, #0
	bl sub_8016E00
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800890A
	ldr r0, _08008918 @ =Player_8005380
	str r0, [r5]
_0800890A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008914: .4byte gStageData
_08008918: .4byte Player_8005380

	thumb_func_start Player_800891C
Player_800891C: @ 0x0800891C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #0
	bne _08008934
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080089B0
_08008934:
	ldr r0, _080089B8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800894E
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800894E
	adds r0, r5, #0
	ldr r1, _080089BC @ =0x00000119
	bl sub_8004F10
_0800894E:
	ldr r0, [r5, #4]
	ldr r1, _080089C0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	movs r4, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FC0
	adds r0, r5, #0
	bl sub_8016F28
	movs r0, #0xb
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _080089C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x78
	strb r4, [r0]
	ldr r1, _080089C8 @ =sub_80089CC
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_080089B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080089B8: .4byte gStageData
_080089BC: .4byte 0x00000119
_080089C0: .4byte 0xDC510BA1
_080089C4: .4byte 0xFFFFBFFF
_080089C8: .4byte sub_80089CC

	thumb_func_start sub_80089CC
sub_80089CC: @ 0x080089CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #0
	bne _080089E4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08008A86
_080089E4:
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008A86
	ldrh r0, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r1, #0
	ble _080089FE
	subs r0, #8
	b _08008A04
_080089FE:
	cmp r1, #0
	bge _08008A06
	adds r0, #8
_08008A04:
	strh r0, [r4, #0x1c]
_08008A06:
	ldrh r0, [r4, #0x1c]
	adds r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _08008A16
	movs r0, #0
	strh r0, [r4, #0x1c]
_08008A16:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08008A26
	adds r0, r4, #0
	bl Player_8005380
	b _08008A86
_08008A26:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008A86
	adds r0, r4, #0
	bl sub_801479C
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08008A4E
	adds r0, r4, #0
	bl sub_8016E50
_08008A4E:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08008A6E
	subs r0, r2, #1
	strb r0, [r1]
	b _08008A7A
_08008A6E:
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008A86
_08008A7A:
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_08008A86:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Player_8008A8C
Player_8008A8C: @ 0x08008A8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _08008AE8
	mov r1, ip
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	mov r1, ip
	ldr r0, [r1, #4]
	ldr r1, _08008AD4 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08008AD8
	mov r0, ip
	bl sub_800E150
	b _08008C0E
	.align 2, 0
_08008AD4: .4byte 0xDDFFFFBF
_08008AD8:
	ldr r1, _08008AE4 @ =sub_800DF10
	mov r0, ip
	str r1, [r0]
	bl _call_via_r1
	b _08008C0E
	.align 2, 0
_08008AE4: .4byte sub_800DF10
_08008AE8:
	ldr r0, _08008B08 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r1, r0
	beq _08008AF6
	b _08008C0E
_08008AF6:
	movs r1, #0
	adds r7, r2, #0
	ldr r5, _08008B0C @ =gPlayers
	ldr r2, _08008B10 @ =Player_800ED80
	mov sb, r2
	cmp ip, r5
	bne _08008B14
	movs r6, #0
	b _08008B30
	.align 2, 0
_08008B08: .4byte gUnknown_03001060
_08008B0C: .4byte gPlayers
_08008B10: .4byte Player_800ED80
_08008B14:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08008B30
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	cmp ip, r0
	bne _08008B14
	adds r6, r1, #0
_08008B30:
	movs r3, #2
	ands r3, r6
	movs r0, #1
	mov r8, r0
	movs r2, #1
	adds r0, r6, #0
	ands r0, r2
	mov r1, r8
	bics r1, r0
	adds r0, r1, #0
	orrs r3, r0
	ldrb r0, [r4, #7]
	asrs r0, r3
	ands r0, r2
	cmp r0, #0
	bne _08008B52
	ands r3, r2
_08008B52:
	ldrb r0, [r4, #8]
	asrs r0, r3
	ands r0, r2
	cmp r0, #0
	beq _08008C04
	ldrb r4, [r4, #9]
	adds r1, r3, #4
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08008BC4
	adds r1, r6, #4
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08008BC4
	lsls r2, r3, #2
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r3
	lsls r2, r2, #4
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	asrs r4, r3
	mov r0, r8
	ands r4, r0
	mov r3, ip
	adds r3, #0xec
	ldrb r1, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	adds r2, r5, r2
	ldrh r1, [r2, #6]
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0xf
	ands r0, r2
	b _08008C00
_08008BC4:
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	adds r1, #0xe8
	strh r0, [r1]
	mov r2, ip
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	mov r3, ip
	adds r3, #0xec
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r2, ip
	ldrh r1, [r2, #6]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r4
_08008C00:
	orrs r0, r1
	strb r0, [r3]
_08008C04:
	movs r0, #0
	strh r0, [r7]
	mov r0, sb
	mov r1, ip
	str r0, [r1]
_08008C0E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008C1C
sub_8008C1C: @ 0x08008C1C
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xe8
	ldrh r0, [r0]
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xea
	ldrh r0, [r0]
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	adds r1, r3, #0
	adds r1, #0xec
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r2, r3, #0
	adds r2, #0x27
	strb r0, [r2]
	ldrb r1, [r1]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08008C56
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	b _08008C5C
_08008C56:
	ldr r0, [r3, #4]
	ldr r1, _08008CB8 @ =0xFFFEFFFF
	ands r0, r1
_08008C5C:
	str r0, [r3, #4]
	movs r0, #0x4a
	adds r0, r0, r3
	mov ip, r0
	movs r2, #0
	movs r1, #0
	movs r0, #0x78
	mov r4, ip
	strh r0, [r4]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	strh r1, [r3, #0x1c]
	adds r0, r3, #0
	adds r0, #0x9e
	strh r1, [r0]
	ldr r0, _08008CBC @ =gUnknown_03001060
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	ldr r0, _08008CC0 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08008CC4 @ =gPlayers
	adds r0, r0, r1
	cmp r0, r3
	bne _08008CAC
	ldr r0, _08008CC8 @ =gCamera
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	subs r1, #0x78
	str r1, [r0]
	str r1, [r0, #0x28]
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	subs r1, #0x50
	str r1, [r0, #4]
	str r1, [r0, #0x2c]
_08008CAC:
	ldr r0, _08008CCC @ =sub_800DAF4
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008CB8: .4byte 0xFFFEFFFF
_08008CBC: .4byte gUnknown_03001060
_08008CC0: .4byte gStageData
_08008CC4: .4byte gPlayers
_08008CC8: .4byte gCamera
_08008CCC: .4byte sub_800DAF4

	thumb_func_start sub_8008CD0
sub_8008CD0: @ 0x08008CD0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x4a
	movs r5, #0
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_8016F28
	ldr r0, [r4, #4]
	ldr r1, _08008D18 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8019A64
	adds r0, r4, #0
	bl sub_8004FF8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08008D02
	rsbs r1, r1, #0
_08008D02:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08008D50
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0xa0
	ble _08008D20
	ldr r0, _08008D1C @ =0x0000FE80
	b _08008D2C
	.align 2, 0
_08008D18: .4byte 0xFDFFFFFF
_08008D1C: .4byte 0x0000FE80
_08008D20:
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08008D32
	movs r0, #0xc0
	lsls r0, r0, #1
_08008D2C:
	strh r0, [r4, #0x18]
	ldr r1, [r4, #4]
	b _08008D46
_08008D32:
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008D42
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08008D44
_08008D42:
	ldr r0, _08008D4C @ =0x0000FE80
_08008D44:
	strh r0, [r4, #0x18]
_08008D46:
	movs r0, #0x66
	strh r0, [r4, #0x30]
	b _08008D68
	.align 2, 0
_08008D4C: .4byte 0x0000FE80
_08008D50:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08008D5E
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08008D60
_08008D5E:
	ldr r0, _08008DE8 @ =0x0000FE80
_08008D60:
	strh r0, [r4, #0x18]
	movs r0, #0x66
	strh r0, [r4, #0x30]
	ldr r1, [r4, #4]
_08008D68:
	movs r2, #0xfd
	lsls r2, r2, #8
	strh r2, [r4, #0x1a]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008D84
	lsls r0, r2, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x18]
_08008D84:
	ldr r0, _08008DEC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08008DA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08008DA0
	adds r0, r4, #0
	ldr r1, _08008DF0 @ =0x00000119
	bl sub_8004F10
_08008DA0:
	ldr r0, [r4, #4]
	ldr r1, _08008DF4 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08008DF8
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08008E04
	b _08008E0C
	.align 2, 0
_08008DE8: .4byte 0x0000FE80
_08008DEC: .4byte gStageData
_08008DF0: .4byte 0x00000119
_08008DF4: .4byte 0xDC510BA1
_08008DF8:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08008E0C
_08008E04:
	movs r0, #4
	adds r1, r4, #0
	bl sub_801EBC0
_08008E0C:
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _08008E30 @ =0xD7FFFFDD
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, _08008E34 @ =sub_800E1E4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008E30: .4byte 0xD7FFFFDD
_08008E34: .4byte sub_800E1E4

	thumb_func_start sub_8008E38
sub_8008E38: @ 0x08008E38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r1, _08008F04 @ =gUnknown_080CE5DE
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	ldr r0, _08008F08 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08008E68
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08008E68
	adds r0, r6, #0
	ldr r1, _08008F0C @ =0x00000119
	bl sub_8004F10
_08008E68:
	ldr r0, [r6, #4]
	ldr r1, _08008F10 @ =0xDC510BA1
	ands r0, r1
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x2f
	movs r7, #0
	strb r7, [r0]
	adds r0, #0x6a
	strb r7, [r0]
	adds r0, #1
	strb r7, [r0]
	movs r0, #0x9e
	adds r0, r0, r6
	mov r8, r0
	movs r5, #0
	strh r7, [r0]
	ldr r0, [r6, #4]
	movs r1, #0x22
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08008F14 @ =0xEFFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r6, #4]
	adds r0, r6, #0
	bl sub_8012FE0
	movs r0, #0x67
	strh r0, [r6, #0x30]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r5, [r0]
	ldr r2, _08008F18 @ =0x0000013D
	adds r0, r6, r2
	strb r5, [r0]
	adds r0, r6, #0
	adds r0, #0x4c
	strh r7, [r0]
	strh r7, [r6, #0x18]
	ldr r1, [r6, #4]
	movs r0, #0x80
	ands r1, r0
	ldr r2, _08008F1C @ =0xFFFFFB20
	adds r0, r2, #0
	cmp r1, #0
	beq _08008EDE
	ldr r1, _08008F20 @ =0xFFFFFD60
	adds r0, r1, #0
_08008EDE:
	strh r0, [r6, #0x1a]
	mov r2, r8
	strh r7, [r2]
	ldr r0, _08008F08 @ =gStageData
	adds r1, r0, #0
	adds r1, #0xae
	ldrh r2, [r1]
	ldr r1, _08008F24 @ =0x00008C9F
	adds r3, r0, #0
	cmp r2, r1
	bne _08008F28
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _08008F28
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0x96
	lsls r0, r0, #2
	b _08008F46
	.align 2, 0
_08008F04: .4byte gUnknown_080CE5DE
_08008F08: .4byte gStageData
_08008F0C: .4byte 0x00000119
_08008F10: .4byte 0xDC510BA1
_08008F14: .4byte 0xEFFFFFFF
_08008F18: .4byte 0x0000013D
_08008F1C: .4byte 0xFFFFFB20
_08008F20: .4byte 0xFFFFFD60
_08008F24: .4byte 0x00008C9F
_08008F28:
	ldr r0, [r6, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008F40
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _08008F40
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0xb4
	b _08008F46
_08008F40:
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0x78
_08008F46:
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_8016F28
	ldr r0, [r6, #4]
	ldr r1, _08008FD4 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r6, #4]
	adds r0, r6, #0
	movs r1, #0x77
	bl sub_8004E98
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, sp
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_8004E98
	ldr r5, _08008FD8 @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #4
	bls _08008FBC
	ldrb r1, [r4]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08008FBC
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08008FDC @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08008FA8
	adds r0, r4, #0
	bl sub_8009518
_08008FA8:
	bl sub_80278DC
	ldrb r0, [r5, #3]
	cmp r0, #5
	bne _08008FBC
	adds r0, r5, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_08008FBC:
	ldr r1, _08008FE0 @ =sub_800913C
	str r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008FD4: .4byte 0xFDFFFFFF
_08008FD8: .4byte gStageData
_08008FDC: .4byte gPlayers
_08008FE0: .4byte sub_800913C

	thumb_func_start sub_8008FE4
sub_8008FE4: @ 0x08008FE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r1, _08009118 @ =gUnknown_080CE5DE
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	ldr r0, _0800911C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08009016
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08009016
	adds r0, r6, #0
	ldr r1, _08009120 @ =0x00000119
	bl sub_8004F10
_08009016:
	ldr r0, [r6, #4]
	ldr r1, _08009124 @ =0xDC510BA1
	ands r0, r1
	str r0, [r6, #4]
	movs r0, #0x2b
	adds r0, r0, r6
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r7, r6, #0
	adds r7, #0x9e
	movs r5, #0
	strh r4, [r7]
	ldr r0, [r6, #4]
	movs r1, #0x22
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08009128 @ =0xEFFFFFFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	orrs r0, r2
	str r0, [r6, #4]
	adds r0, r6, #0
	bl sub_8012FE0
	movs r0, #0x67
	strh r0, [r6, #0x30]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r5, [r0]
	ldr r2, _0800912C @ =0x0000013D
	adds r0, r6, r2
	strb r5, [r0]
	adds r0, r6, #0
	adds r0, #0x4c
	strh r4, [r0]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	strh r4, [r7]
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_8016F28
	ldr r0, [r6, #4]
	ldr r1, _08009130 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r6, #4]
	adds r0, r6, #0
	movs r1, #0x77
	bl sub_8004E98
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, sp
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_8004E98
	ldr r4, _0800911C @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _080090FE
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _080090FE
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08009134 @ =gPlayers
	adds r1, r0, r1
	ldr r0, [r1, #4]
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	bne _080090EA
	adds r0, r1, #0
	bl sub_8009518
_080090EA:
	bl sub_80278DC
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _080090FE
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_8027878
_080090FE:
	ldr r1, _08009138 @ =sub_800913C
	str r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009118: .4byte gUnknown_080CE5DE
_0800911C: .4byte gStageData
_08009120: .4byte 0x00000119
_08009124: .4byte 0xDC510BA1
_08009128: .4byte 0xEFFFFFFF
_0800912C: .4byte 0x0000013D
_08009130: .4byte 0xFDFFFFFF
_08009134: .4byte gPlayers
_08009138: .4byte sub_800913C

	thumb_func_start sub_800913C
sub_800913C: @ 0x0800913C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r2, _0800921C @ =gCamera
	ldr r1, [r2, #4]
	subs r0, r0, r1
	cmp r0, #0xd0
	ble _08009166
	movs r0, #0
	strh r0, [r4, #0x1a]
_08009166:
	adds r7, r4, #0
	adds r7, #0x4a
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r6, r7, #0
	cmp r0, #0
	ble _08009176
	b _080094EE
_08009176:
	movs r2, #0x2b
	adds r2, r2, r4
	mov r8, r2
	ldrb r2, [r2]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08009220 @ =gPlayers
	adds r3, r0, r1
	movs r0, #0x1c
	ands r0, r2
	mov r5, r8
	mov sb, r1
	cmp r0, #8
	bne _08009234
	adds r0, r3, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, _08009224 @ =gStageData
	cmp r0, #0
	ble _080091B2
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _080091B2
	b _080094EE
_080091B2:
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _080091D0
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080091D0
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080091D0
	b _080094EE
_080091D0:
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x18]
	ldr r0, [r3, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x27
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r6]
	adds r1, #0x2f
	movs r0, #0xe
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08009228 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0800922C @ =0xFFFEFFFF
	ands r0, r1
	ldr r1, [r3, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _08009230 @ =Player_8005380
	str r0, [r4]
	b _080094EE
	.align 2, 0
_0800921C: .4byte gCamera
_08009220: .4byte gPlayers
_08009224: .4byte gStageData
_08009228: .4byte 0xFFFFFEFF
_0800922C: .4byte 0xFFFEFFFF
_08009230: .4byte Player_8005380
_08009234:
	ldr r6, _08009268 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #3
	bne _08009284
	bl sub_8003D2C
	ldr r1, _0800926C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08009270 @ =gUnknown_03003F94
	ldr r0, _08009274 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08009278 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800927C @ =gUnknown_03006208
	ldr r0, _08009280 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #2
	bl sub_808723C
	b _080094EE
	.align 2, 0
_08009268: .4byte gStageData
_0800926C: .4byte 0x0000FFFF
_08009270: .4byte gUnknown_03003F94
_08009274: .4byte gUnknown_03003D20
_08009278: .4byte gUnknown_03006840
_0800927C: .4byte gUnknown_03006208
_08009280: .4byte gUnknown_03003F34
_08009284:
	cmp r0, #4
	bne _080092CC
	bl sub_8003D2C
	ldr r1, _080092B4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080092B8 @ =gUnknown_03003F94
	ldr r0, _080092BC @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080092C0 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080092C4 @ =gUnknown_03006208
	ldr r0, _080092C8 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #3
	bl sub_808723C
	b _080094EE
	.align 2, 0
_080092B4: .4byte 0x0000FFFF
_080092B8: .4byte gUnknown_03003F94
_080092BC: .4byte gUnknown_03003D20
_080092C0: .4byte gUnknown_03006840
_080092C4: .4byte gUnknown_03006208
_080092C8: .4byte gUnknown_03003F34
_080092CC:
	cmp r0, #5
	bhi _0800934C
	adds r2, r6, #0
	adds r2, #0xb4
	ldrb r0, [r2]
	cmp r0, #0
	bne _080092E6
	ldrb r0, [r6, #0xa]
	cmp r0, #9
	beq _080092EC
	bl sub_8002414
	b _080092EC
_080092E6:
	ldrb r1, [r6, #0xa]
	cmp r1, #9
	bne _080092F8
_080092EC:
	ldr r0, _080092F4 @ =sub_800DF9C
	str r0, [r4]
	b _080094EE
	.align 2, 0
_080092F4: .4byte sub_800DF9C
_080092F8:
	subs r0, #1
	strb r0, [r2]
	ldrb r0, [r6, #9]
	cmp r0, #6
	bhi _08009312
	cmp r1, #2
	bls _08009312
	cmp r1, #6
	bhi _08009312
	adds r1, r6, #0
	adds r1, #0x87
	movs r0, #0
	strb r0, [r1]
_08009312:
	ldrb r1, [r5]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sb
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0800933C
	adds r1, r3, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
_0800933C:
	ldr r0, _08009348 @ =sub_8002388
	movs r1, #0
	bl sub_8001D58
	b _080094EE
	.align 2, 0
_08009348: .4byte sub_8002388
_0800934C:
	ldrb r0, [r6, #4]
	cmp r0, #5
	bne _08009358
	movs r0, #0x1e
	strh r0, [r7]
	b _080094EE
_08009358:
	movs r2, #0x80
	lsls r2, r2, #0x14
	str r2, [r4, #4]
	ldrh r0, [r6, #0x28]
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldrh r0, [r6, #0x2a]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r0, #0
	mov sb, r0
	movs r5, #0
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	strh r5, [r1]
	adds r0, r4, #0
	adds r0, #0x27
	movs r2, #1
	mov sl, r2
	mov r2, sl
	strb r2, [r0]
	adds r0, #0x19
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	strh r5, [r7]
	adds r0, #4
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	strh r5, [r1]
	adds r0, #4
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #5
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x56
	str r2, [sp]
	movs r0, #0xe
	strb r0, [r2]
	adds r7, r4, #0
	adds r7, #0x57
	movs r1, #0x3c
	strb r1, [r7]
	adds r0, r6, #0
	adds r0, #0xbd
	mov r2, sl
	strb r2, [r0]
	ldr r0, _08009500 @ =Player_800522C
	str r0, [r4]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08009412
	adds r0, r6, #0
	adds r0, #0xac
	mov r1, sl
	strh r1, [r0]
_08009412:
	adds r1, r6, #0
	adds r1, #0xbb
	movs r0, #7
	strb r0, [r1]
	ldr r0, _08009504 @ =gUnknown_02002580
	bl sub_80BAD94
	ldr r0, _08009508 @ =gUnknown_020025C0
	bl sub_80BAD94
	ldr r0, _0800950C @ =gUnknown_02002610
	bl sub_80BAD94
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08009510 @ =gPlayers
	adds r3, r0, r1
	adds r2, r3, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _080094DC
	movs r0, #0x80
	lsls r0, r0, #0x14
	str r0, [r3, #4]
	ldrh r0, [r6, #0x28]
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	ldrh r0, [r6, #0x2a]
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	strh r5, [r3, #0x18]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x50
	strh r5, [r1]
	adds r0, r3, #0
	adds r0, #0x27
	mov r2, sl
	strb r2, [r0]
	adds r0, #0x19
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	strh r5, [r1]
	adds r0, #4
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #5
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strb r1, [r0]
	movs r0, #0xe
	ldr r2, [sp]
	strb r0, [r2]
	movs r1, #0x3c
	strb r1, [r7]
	ldr r2, _08009500 @ =Player_800522C
	str r2, [r3]
_080094DC:
	ldrh r0, [r6, #0x28]
	subs r0, #0x78
	ldr r1, _08009514 @ =gCamera
	str r0, [r1, #0x28]
	str r0, [r1]
	ldrh r0, [r6, #0x2a]
	subs r0, #0x50
	str r0, [r1, #0x2c]
	str r0, [r1, #4]
_080094EE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009500: .4byte Player_800522C
_08009504: .4byte gUnknown_02002580
_08009508: .4byte gUnknown_020025C0
_0800950C: .4byte gUnknown_02002610
_08009510: .4byte gPlayers
_08009514: .4byte gCamera

	thumb_func_start sub_8009518
sub_8009518: @ 0x08009518
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080095B8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08009538
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08009538
	adds r0, r6, #0
	ldr r1, _080095BC @ =0x00000119
	bl sub_8004F10
_08009538:
	ldr r0, [r6, #4]
	ldr r1, _080095C0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r6, #4]
	adds r2, r6, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	movs r5, #0
	strh r4, [r0]
	adds r0, r6, #0
	bl sub_8016F28
	ldr r0, [r6, #4]
	ldr r1, _080095C4 @ =0xEDFFFFFF
	ands r0, r1
	movs r1, #0x22
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r6, #4]
	movs r0, #0xa2
	strh r0, [r6, #0x30]
	adds r1, #0x3c
	adds r0, r6, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r6, r1
	strb r5, [r0]
	adds r0, r6, #0
	adds r0, #0x4c
	strh r4, [r0]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	ldr r2, _080095B8 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _080095C8 @ =0x00008C9F
	cmp r1, r0
	bne _080095CC
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _080095CC
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0x96
	lsls r0, r0, #2
	b _080095D2
	.align 2, 0
_080095B8: .4byte gStageData
_080095BC: .4byte 0x00000119
_080095C0: .4byte 0xDC510BA1
_080095C4: .4byte 0xEDFFFFFF
_080095C8: .4byte 0x00008C9F
_080095CC:
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0x78
_080095D2:
	strh r0, [r1]
	ldr r1, _080095E4 @ =sub_80095E8
	str r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080095E4: .4byte sub_80095E8

	thumb_func_start sub_80095E8
sub_80095E8: @ 0x080095E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x4a
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	ble _080095FA
	b _08009764
_080095FA:
	ldr r6, _08009638 @ =gStageData
	ldrb r1, [r6, #3]
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r6, #0
	cmp r0, #1
	bhi _08009654
	bl sub_8003D2C
	ldr r1, _0800963C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08009640 @ =gUnknown_03003F94
	ldr r0, _08009644 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08009648 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800964C @ =gUnknown_03006208
	ldr r0, _08009650 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #2
	bl sub_808723C
	b _08009764
	.align 2, 0
_08009638: .4byte gStageData
_0800963C: .4byte 0x0000FFFF
_08009640: .4byte gUnknown_03003F94
_08009644: .4byte gUnknown_03003D20
_08009648: .4byte gUnknown_03006840
_0800964C: .4byte gUnknown_03006208
_08009650: .4byte gUnknown_03003F34
_08009654:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	beq _08009694
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800967C
	ldrb r0, [r6, #0xa]
	cmp r0, #9
	beq _0800967C
	bl sub_8002414
	ldr r0, _08009678 @ =sub_800DF9C
	str r0, [r5]
	b _08009764
	.align 2, 0
_08009678: .4byte sub_800DF9C
_0800967C:
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08009690 @ =sub_8002388
	movs r1, #0
	bl sub_8001D58
	b _08009764
	.align 2, 0
_08009690: .4byte sub_8002388
_08009694:
	ldr r0, _0800976C @ =gUnknown_02002580
	bl sub_80BAD94
	ldr r0, _08009770 @ =gUnknown_020025C0
	bl sub_80BAD94
	ldr r0, _08009774 @ =gUnknown_02002610
	bl sub_80BAD94
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r1, [r4]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _080096BC
	adds r1, r6, #0
	adds r1, #0xac
	movs r0, #1
	strh r0, [r1]
_080096BC:
	adds r2, r6, #0
	adds r2, #0xbb
	movs r1, #0
	movs r0, #7
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x14
	str r0, [r5, #4]
	ldrh r0, [r6, #0x28]
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldrh r0, [r6, #0x2a]
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	movs r3, #0
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	strh r1, [r5, #0x1c]
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r4]
	adds r2, r5, #0
	adds r2, #0x50
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x27
	movs r4, #1
	strb r4, [r0]
	adds r0, #0x19
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strh r1, [r7]
	adds r0, #4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strh r1, [r2]
	adds r0, #4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #3
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #0xe
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbd
	strb r4, [r0]
	ldr r0, _08009778 @ =Player_800522C
	str r0, [r5]
	ldr r1, _0800977C @ =gCamera
	ldrh r0, [r6, #0x28]
	str r0, [r1]
	ldrh r0, [r6, #0x2a]
	str r0, [r1, #4]
_08009764:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800976C: .4byte gUnknown_02002580
_08009770: .4byte gUnknown_020025C0
_08009774: .4byte gUnknown_02002610
_08009778: .4byte Player_800522C
_0800977C: .4byte gCamera

	thumb_func_start sub_8009780
sub_8009780: @ 0x08009780
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r1, _08009838 @ =gUnknown_080CE5E8
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	ldr r0, _0800983C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080097AC
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080097AC
	adds r0, r5, #0
	ldr r1, _08009840 @ =0x00000119
	bl sub_8004F10
_080097AC:
	ldr r0, [r5, #4]
	ldr r1, _08009844 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08009848 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	strh r4, [r5, #0x1c]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #0x30]
	adds r1, r5, #0
	adds r1, #0x5b
	movs r0, #0xa
	strb r0, [r1]
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _08009824
	adds r0, r5, #0
	bl sub_8017D18
_08009824:
	ldr r1, _0800984C @ =sub_800E2C8
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009838: .4byte gUnknown_080CE5E8
_0800983C: .4byte gStageData
_08009840: .4byte 0x00000119
_08009844: .4byte 0xDC510BA1
_08009848: .4byte 0xFFFFBFFF
_0800984C: .4byte sub_800E2C8

	thumb_func_start sub_8009850
sub_8009850: @ 0x08009850
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080098C4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08009870
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08009870
	adds r0, r4, #0
	ldr r1, _080098C8 @ =0x00000119
	bl sub_8004F10
_08009870:
	ldr r0, [r4, #4]
	ldr r1, _080098CC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r5, #0
	strb r5, [r0]
	adds r0, #0x6a
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_8016F28
	ldr r0, [r4, #4]
	ldr r1, _080098D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x66
	beq _080098B4
	movs r0, #0x66
	strh r0, [r4, #0x30]
_080098B4:
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r0, _080098D4 @ =sub_800EB58
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080098C4: .4byte gStageData
_080098C8: .4byte 0x00000119
_080098CC: .4byte 0xDC510BA1
_080098D0: .4byte 0xFDFFFFFF
_080098D4: .4byte sub_800EB58

	thumb_func_start sub_80098D8
sub_80098D8: @ 0x080098D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08009970 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080098F8
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080098F8
	adds r0, r4, #0
	ldr r1, _08009974 @ =0x00000119
	bl sub_8004F10
_080098F8:
	ldr r0, [r4, #4]
	ldr r1, _08009978 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #7
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	ldrb r1, [r5]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800997C @ =gPlayers
	adds r2, r0, r1
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08009980
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #4
	bne _08009980
	movs r0, #0xb1
	b _08009982
	.align 2, 0
_08009970: .4byte gStageData
_08009974: .4byte 0x00000119
_08009978: .4byte 0xDC510BA1
_0800997C: .4byte gPlayers
_08009980:
	movs r0, #0x6f
_08009982:
	strh r0, [r4, #0x30]
	ldrh r2, [r4, #0x18]
	adds r0, r2, #0
	adds r0, #0xff
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080099AA
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _080099A2
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
	b _080099AC
_080099A2:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1c]
	b _080099AC
_080099AA:
	strh r2, [r4, #0x1c]
_080099AC:
	adds r0, r4, #0
	adds r0, #0x27
	movs r3, #0
	strb r3, [r0]
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x2d
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x5a
	strb r3, [r0]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004E98
	ldr r1, _080099F8 @ =sub_80099FC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080099F8: .4byte sub_80099FC

	thumb_func_start sub_80099FC
sub_80099FC: @ 0x080099FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08009A1C
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	ldr r0, _08009A18 @ =sub_800DAF4
	str r0, [r4]
	b _08009AF4
	.align 2, 0
_08009A18: .4byte sub_800DAF4
_08009A1C:
	adds r0, r4, #0
	bl sub_80151C4
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08009A30
	b _08009B3E
_08009A30:
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014FA4
	movs r1, #1
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08009A4E
	movs r1, #0xff
_08009A4E:
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _08009A5C
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _08009A64
_08009A5C:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08009A64:
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08009A98
	ldr r0, [r4, #4]
	ldr r1, _08009A94 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	subs r0, #3
	b _08009B3A
	.align 2, 0
_08009A94: .4byte 0xFFFDFFFF
_08009A98:
	adds r0, r4, #0
	bl sub_800D81C
	adds r0, r4, #0
	bl sub_8012EB8
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08009AF4
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009AF4
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	subs r0, #3
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	ldr r0, [r4, #4]
	ldr r1, _08009AEC @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, _08009AF0 @ =sub_800DAF4
	str r0, [r4]
	b _08009B3E
	.align 2, 0
_08009AEC: .4byte 0xFFFDFFFF
_08009AF0: .4byte sub_800DAF4
_08009AF4:
	adds r0, r4, #0
	bl sub_8014BC4
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08009B30
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08009B30
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	ldr r0, [r4, #4]
	ldr r1, _08009B44 @ =0xFFFDFFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _08009B48 @ =sub_800E150
	str r0, [r4]
_08009B30:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
_08009B3A:
	ands r0, r1
	strb r0, [r2]
_08009B3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009B44: .4byte 0xFFFDFFFF
_08009B48: .4byte sub_800E150

	thumb_func_start Player_8009B4C
Player_8009B4C: @ 0x08009B4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08009B9C
	ldr r0, _08009B90 @ =0xFDFFFFFD
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08009B94 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08009B98 @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _08009BE6
	.align 2, 0
_08009B90: .4byte 0xFDFFFFFD
_08009B94: .4byte 0xFFFFBFFF
_08009B98: .4byte sub_800E198
_08009B9C:
	movs r0, #0x6d
	strh r0, [r4, #0x30]
	ldr r0, _08009BEC @ =sub_800DFA0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009BE6
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009BE6
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08009BE6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009BEC: .4byte sub_800DFA0

	thumb_func_start sub_8009BF0
sub_8009BF0: @ 0x08009BF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08009C40
	ldr r0, _08009C34 @ =0xFDFFFFFD
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08009C38 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08009C3C @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _08009C8A
	.align 2, 0
_08009C34: .4byte 0xFDFFFFFD
_08009C38: .4byte 0xFFFFBFFF
_08009C3C: .4byte sub_800E198
_08009C40:
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, _08009C90 @ =sub_800DFA0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009C8A
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009C8A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08009C8A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009C90: .4byte sub_800DFA0

	thumb_func_start sub_8009C94
sub_8009C94: @ 0x08009C94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldrh r1, [r4, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x1a]
	movs r0, #0x6d
	strh r0, [r4, #0x30]
	ldr r0, _08009D00 @ =sub_800DFA0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009CFA
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009CFA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08009CFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009D00: .4byte sub_800DFA0

	thumb_func_start sub_8009D04
sub_8009D04: @ 0x08009D04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldrh r1, [r4, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x1a]
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, _08009D70 @ =sub_800DFA0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009D6A
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009D6A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_08009D6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009D70: .4byte sub_800DFA0

	thumb_func_start sub_8009D74
sub_8009D74: @ 0x08009D74
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsrs r7, r0, #4
	movs r6, #0xf
	ands r6, r0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _08009E1C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08009DA4
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _08009DA4
	adds r0, r4, #0
	ldr r1, _08009E20 @ =0x00000119
	bl sub_8004F10
_08009DA4:
	ldr r0, [r4, #4]
	ldr r1, _08009E24 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r3, [r4, #4]
	ldr r0, _08009E28 @ =0xE7FFFFFF
	ands r3, r0
	movs r0, #4
	orrs r3, r0
	orrs r3, r5
	str r3, [r4, #4]
	ldr r0, _08009E2C @ =gUnknown_080CF470
	lsls r1, r7, #2
	adds r2, r1, r0
	ldrh r2, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08009DFA
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_08009DFA:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08009E40
	ldr r0, _08009E30 @ =gUnknown_080CF468
	adds r0, r6, r0
	ldrb r0, [r0]
	muls r0, r2, r0
	asrs r0, r0, #4
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009E34
	movs r0, #1
	orrs r3, r0
	b _08009E3E
	.align 2, 0
_08009E1C: .4byte gStageData
_08009E20: .4byte 0x00000119
_08009E24: .4byte 0xDC510BA1
_08009E28: .4byte 0xE7FFFFFF
_08009E2C: .4byte gUnknown_080CF470
_08009E30: .4byte gUnknown_080CF468
_08009E34:
	cmp r0, #0
	ble _08009E40
	movs r0, #2
	rsbs r0, r0, #0
	ands r3, r0
_08009E3E:
	str r3, [r4, #4]
_08009E40:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08009E54
	ldr r0, _08009E84 @ =gUnknown_080CF468
	adds r0, r6, r0
	ldrb r0, [r0]
	muls r0, r1, r0
	asrs r0, r0, #4
	strh r0, [r4, #0x1a]
_08009E54:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08009E88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r4, #0x36]
	adds r2, #1
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009E84: .4byte gUnknown_080CF468
_08009E88: .4byte 0xFFFFBFFF

	thumb_func_start sub_8009E8C
sub_8009E8C: @ 0x08009E8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _08009F44 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08009EB2
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _08009EB2
	adds r0, r4, #0
	ldr r1, _08009F48 @ =0x00000119
	bl sub_8004F10
_08009EB2:
	ldr r0, [r4, #4]
	ldr r1, _08009F4C @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r2, #0
	strb r2, [r0]
	adds r0, #0x6a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #4
	strh r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08009F50 @ =0xE7FFFFDF
	ands r0, r1
	str r2, [r4, #0x6c]
	movs r1, #4
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r5, r4, #0
	adds r5, #0xe0
	ldr r1, [r5]
	ldr r0, [r1, #0x14]
	ldr r6, _08009F54 @ =0xFFFFBFFF
	ands r0, r6
	str r0, [r1, #0x14]
	ldr r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08009F60
	ldr r0, _08009F58 @ =0xFDFFFFFD
	ands r2, r0
	orrs r2, r3
	str r2, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, [r5]
	ldr r0, [r1, #0x14]
	ands r0, r6
	str r0, [r1, #0x14]
	ldr r1, _08009F5C @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _08009F70
	.align 2, 0
_08009F44: .4byte gStageData
_08009F48: .4byte 0x00000119
_08009F4C: .4byte 0xDC510BA1
_08009F50: .4byte 0xE7FFFFDF
_08009F54: .4byte 0xFFFFBFFF
_08009F58: .4byte 0xFDFFFFFD
_08009F5C: .4byte sub_800E198
_08009F60:
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x36]
	ldr r1, _08009F78 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_08009F70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009F78: .4byte sub_8006C70

	thumb_func_start sub_8009F7C
sub_8009F7C: @ 0x08009F7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r1
	ldr r0, _0800A04C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08009FB0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _08009FB0
	adds r0, r4, #0
	ldr r1, _0800A050 @ =0x00000119
	bl sub_8004F10
_08009FB0:
	ldr r0, [r4, #4]
	ldr r1, _0800A054 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r2, #0
	strb r2, [r0]
	adds r0, #0x6a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #4
	strh r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0800A058 @ =0xE7FFFFDF
	ands r0, r1
	str r2, [r4, #0x6c]
	movs r1, #0xc
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0xe0
	ldr r1, [r5]
	ldr r0, [r1, #0x14]
	ldr r6, _0800A05C @ =0xFFFFBFFF
	ands r0, r6
	str r0, [r1, #0x14]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0800A060 @ =0xFFFFFB20
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_8004E98
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800A06C
	ldr r0, _0800A064 @ =0xFDFFFFFD
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, [r5]
	ldr r0, [r1, #0x14]
	ands r0, r6
	str r0, [r1, #0x14]
	ldr r1, _0800A068 @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800A086
	.align 2, 0
_0800A04C: .4byte gStageData
_0800A050: .4byte 0x00000119
_0800A054: .4byte 0xDC510BA1
_0800A058: .4byte 0xE7FFFFDF
_0800A05C: .4byte 0xFFFFBFFF
_0800A060: .4byte 0xFFFFFB20
_0800A064: .4byte 0xFDFFFFFD
_0800A068: .4byte sub_800E198
_0800A06C:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x6e
	strh r0, [r4, #0x30]
	ldr r1, _0800A090 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800A086:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A090: .4byte sub_8006C70

	thumb_func_start sub_800A094
sub_800A094: @ 0x0800A094
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800A150 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800A0B4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800A0B4
	adds r0, r4, #0
	ldr r1, _0800A154 @ =0x00000119
	bl sub_8004F10
_0800A0B4:
	ldr r0, [r4, #4]
	ldr r1, _0800A158 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	ldr r1, _0800A15C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0x13
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A160 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, _0800A164 @ =sub_800DF10
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800A148
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800A148
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800A148:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A150: .4byte gStageData
_0800A154: .4byte 0x00000119
_0800A158: .4byte 0xDC510BA1
_0800A15C: .4byte 0xEFFFFFFF
_0800A160: .4byte 0xFFFFBFFF
_0800A164: .4byte sub_800DF10

	thumb_func_start sub_800A168
sub_800A168: @ 0x0800A168
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800A204 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800A188
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800A188
	adds r0, r4, #0
	ldr r1, _0800A208 @ =0x00000119
	bl sub_8004F10
_0800A188:
	ldr r0, [r4, #4]
	ldr r1, _0800A20C @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #7
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0x7a
	strh r0, [r4, #0x30]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x8a
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A210 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800A214 @ =sub_800DF9C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A204: .4byte gStageData
_0800A208: .4byte 0x00000119
_0800A20C: .4byte 0xDC510BA1
_0800A210: .4byte 0xFFFFBFFF
_0800A214: .4byte sub_800DF9C

	thumb_func_start sub_800A218
sub_800A218: @ 0x0800A218
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r5, #2
	ands r5, r1
	ldr r0, _0800A2A8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800A23C
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800A23C
	adds r0, r4, #0
	ldr r1, _0800A2AC @ =0x00000119
	bl sub_8004F10
_0800A23C:
	ldr r0, [r4, #4]
	ldr r1, _0800A2B0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x45
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r5
	str r0, [r4, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800A27E
	movs r0, #0x81
	strh r0, [r4, #0x30]
_0800A27E:
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800A2B4 @ =sub_800A2B8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2A8: .4byte gStageData
_0800A2AC: .4byte 0x00000119
_0800A2B0: .4byte 0xDC510BA1
_0800A2B4: .4byte sub_800A2B8

	thumb_func_start sub_800A2B8
sub_800A2B8: @ 0x0800A2B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x70]
	cmp r1, r0
	bge _0800A2CE
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	movs r7, #1
	b _0800A2D6
_0800A2CE:
	subs r0, r1, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	movs r7, #0
_0800A2D6:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800A2E0
	rsbs r0, r0, #0
_0800A2E0:
	ldr r6, _0800A2F8 @ =0x000003FF
	cmp r0, r6
	bgt _0800A30C
	ldr r0, [r4, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800A300
	ldr r0, _0800A2FC @ =Player_8005380
	str r0, [r4]
	b _0800A3B8
	.align 2, 0
_0800A2F8: .4byte 0x000003FF
_0800A2FC: .4byte Player_8005380
_0800A300:
	ldr r0, _0800A308 @ =sub_800DB30
	str r0, [r4]
	b _0800A3B8
	.align 2, 0
_0800A308: .4byte sub_800DB30
_0800A30C:
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800A3B8
	adds r0, r4, #0
	bl sub_8016D30
	ldrh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	lsls r0, r5, #0x10
	asrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	movs r1, #0x90
	lsls r1, r1, #1
	bl __divsi3
	adds r3, r0, #0
	ldr r1, _0800A39C @ =gSineTable
	ands r3, r6
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x26
	subs r0, r0, r1
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	ldr r2, _0800A3A0 @ =0xFFFFDD00
	adds r1, r1, r2
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800A3B4
	movs r0, #0x81
	strh r0, [r4, #0x30]
	ldr r1, _0800A3A4 @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x81
	strh r0, [r4, #0x34]
	movs r0, #0xb
	muls r0, r3, r0
	lsrs r5, r0, #0xa
	cmp r7, #0
	bne _0800A3A8
	strh r5, [r4, #0x36]
	b _0800A3B8
	.align 2, 0
_0800A39C: .4byte gSineTable
_0800A3A0: .4byte 0xFFFFDD00
_0800A3A4: .4byte gUnknown_080CE7D8
_0800A3A8:
	movs r1, #0xa
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x36]
	b _0800A3B8
_0800A3B4:
	movs r0, #0xb
	strh r0, [r4, #0x30]
_0800A3B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800A3C0
sub_800A3C0: @ 0x0800A3C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0800A42C @ =0xFDFFFFF5
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	movs r5, #0
	movs r3, #0
	movs r0, #0x8a
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A430 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r5, [r0]
	strh r3, [r4, #0x1c]
	strh r3, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800A434 @ =Player_800A438
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A42C: .4byte 0xFDFFFFF5
_0800A430: .4byte 0xFFFFBFFF
_0800A434: .4byte Player_800A438

	thumb_func_start Player_800A438
Player_800A438: @ 0x0800A438
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	ldr r2, _0800A470 @ =0xFFFFF600
	cmp r1, r2
	bgt _0800A47C
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A474 @ =sub_8006F98
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	ldr r1, _0800A478 @ =0x0000024F
	adds r0, r4, #0
	bl sub_8004E98
	b _0800A4C0
	.align 2, 0
_0800A470: .4byte 0xFFFFF600
_0800A474: .4byte sub_8006F98
_0800A478: .4byte 0x0000024F
_0800A47C:
	cmp r1, #0
	ble _0800A484
	subs r0, #0x18
	b _0800A48A
_0800A484:
	cmp r1, r2
	ble _0800A48C
	subs r0, #0x50
_0800A48A:
	strh r0, [r4, #0x1a]
_0800A48C:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0800A4C0
	adds r0, r4, #0
	bl sub_8016D30
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0800A4C0
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800A4C0
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	str r5, [r4, #0x6c]
_0800A4C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_800A4C8
Player_800A4C8: @ 0x0800A4C8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0800A534 @ =0xFDFFFFF1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	movs r5, #0
	movs r3, #0
	movs r0, #0x89
	strh r0, [r4, #0x30]
	strh r3, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A538 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r5, [r0]
	strh r3, [r4, #0x1c]
	strh r3, [r4, #0x18]
	strh r3, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800A53C @ =sub_800A540
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A534: .4byte 0xFDFFFFF1
_0800A538: .4byte 0xFFFFBFFF
_0800A53C: .4byte sub_800A540

	thumb_func_start sub_800A540
sub_800A540: @ 0x0800A540
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800A59E
	movs r3, #0xe0
	lsls r3, r3, #2
	strh r3, [r2, #0x18]
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2, #0x1a]
	ldr r1, [r2, #4]
	movs r0, #1
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _0800A574
	ldr r0, [r2, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #5
	b _0800A57C
_0800A574:
	rsbs r0, r3, #0
	strh r0, [r2, #0x18]
	ldr r0, [r2, #0x10]
	ldr r1, _0800A5A4 @ =0xFFFFEC00
_0800A57C:
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A5A4 @ =0xFFFFEC00
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800A5A8 @ =0xDFFFFFDF
	ands r1, r4
	movs r0, #4
	orrs r0, r1
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r2, #0x6c]
	movs r0, #1
	strh r0, [r2, #0x36]
	ldr r0, _0800A5AC @ =sub_800DAF4
	str r0, [r2]
_0800A59E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A5A4: .4byte 0xFFFFEC00
_0800A5A8: .4byte 0xDFFFFFDF
_0800A5AC: .4byte sub_800DAF4

	thumb_func_start Player_800A5B0
Player_800A5B0: @ 0x0800A5B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0800A620 @ =0xFDFFFFD1
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	movs r5, #0
	movs r3, #0
	movs r0, #0x85
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A624 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r5, [r0]
	strh r3, [r4, #0x1c]
	strh r3, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_8004E98
	ldr r1, _0800A628 @ =sub_800A62C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A620: .4byte 0xFDFFFFD1
_0800A624: .4byte 0xFFFFBFFF
_0800A628: .4byte sub_800A62C

	thumb_func_start sub_800A62C
sub_800A62C: @ 0x0800A62C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800A684
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_8004F10
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0800A658
	movs r1, #0
_0800A658:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	cmp r1, #0
	bne _0800A666
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
_0800A666:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0800A68C @ =sub_800DB30
	str r0, [r4]
_0800A684:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A68C: .4byte sub_800DB30

	thumb_func_start Player_800A690
Player_800A690: @ 0x0800A690
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_8012FE0
	ldr r0, [r5, #4]
	ldr r1, _0800A6D8 @ =0xFDFFFFD1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8016F28
	movs r3, #0
	movs r4, #0
	movs r0, #0x8e
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A6DC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x26
	strb r3, [r0]
	strh r4, [r5, #0x1c]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800A6E0
	movs r0, #0xff
	lsls r0, r0, #8
	b _0800A6E4
	.align 2, 0
_0800A6D8: .4byte 0xFDFFFFD1
_0800A6DC: .4byte 0xFFFFBFFF
_0800A6E0:
	movs r0, #0x80
	lsls r0, r0, #1
_0800A6E4:
	strh r0, [r5, #0x18]
	movs r0, #0
	strh r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800A71C @ =0x0000025F
	adds r0, r5, #0
	bl sub_8004E98
	ldr r1, _0800A720 @ =Player_800A724
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A71C: .4byte 0x0000025F
_0800A720: .4byte Player_800A724

	thumb_func_start Player_800A724
Player_800A724: @ 0x0800A724
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r0, [r5]
	adds r0, #8
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, #0x1a
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	strh r0, [r4, #0x36]
	ldrb r6, [r5]
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800A7BC
	ldr r1, _0800A774 @ =0x0000025F
	adds r0, r4, #0
	bl sub_8004F10
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	beq _0800A778
	movs r0, #0xe0
	lsls r0, r0, #3
	b _0800A77C
	.align 2, 0
_0800A774: .4byte 0x0000025F
_0800A778:
	movs r0, #0xf9
	lsls r0, r0, #8
_0800A77C:
	strh r0, [r4, #0x1a]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0800A798
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	b _0800A7A2
_0800A798:
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
_0800A7A2:
	str r0, [r4, #0x14]
	ldr r0, _0800A7B4 @ =0xDFFFFFFF
	ands r0, r2
	movs r1, #4
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, _0800A7B8 @ =sub_800DB30
	str r0, [r4]
	b _0800A7C4
	.align 2, 0
_0800A7B4: .4byte 0xDFFFFFFF
_0800A7B8: .4byte sub_800DB30
_0800A7BC:
	adds r0, r4, #0
	bl Player_80149E4
	strb r6, [r5]
_0800A7C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_800A7CC
Player_800A7CC: @ 0x0800A7CC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_8012FE0
	ldr r0, [r5, #4]
	ldr r1, _0800A814 @ =0xFDFFFFD1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8016F28
	movs r3, #0
	movs r4, #0
	movs r0, #0x8e
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A818 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x26
	strb r3, [r0]
	strh r4, [r5, #0x1c]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800A81C
	movs r0, #0xff
	lsls r0, r0, #8
	b _0800A820
	.align 2, 0
_0800A814: .4byte 0xFDFFFFD1
_0800A818: .4byte 0xFFFFBFFF
_0800A81C:
	movs r0, #0x80
	lsls r0, r0, #1
_0800A820:
	strh r0, [r5, #0x18]
	movs r0, #0
	strh r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800A858 @ =0x0000025F
	adds r0, r5, #0
	bl sub_8004E98
	ldr r1, _0800A85C @ =Player_800A860
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A858: .4byte 0x0000025F
_0800A85C: .4byte Player_800A860

	thumb_func_start Player_800A860
Player_800A860: @ 0x0800A860
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r0, [r5]
	adds r0, #8
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, #0x1a
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #9
	subs r1, r1, r0
	movs r0, #0
	strh r1, [r4, #0x36]
	ldrb r6, [r5]
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800A8FC
	ldr r1, _0800A8B4 @ =0x0000025F
	adds r0, r4, #0
	bl sub_8004F10
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	beq _0800A8B8
	movs r0, #0xe0
	lsls r0, r0, #3
	b _0800A8BC
	.align 2, 0
_0800A8B4: .4byte 0x0000025F
_0800A8B8:
	movs r0, #0xf9
	lsls r0, r0, #8
_0800A8BC:
	strh r0, [r4, #0x1a]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0800A8D8
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	b _0800A8E2
_0800A8D8:
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
_0800A8E2:
	str r0, [r4, #0x14]
	ldr r0, _0800A8F4 @ =0xDFFFFFFF
	ands r0, r2
	movs r1, #4
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, _0800A8F8 @ =sub_800DB30
	str r0, [r4]
	b _0800A904
	.align 2, 0
_0800A8F4: .4byte 0xDFFFFFFF
_0800A8F8: .4byte sub_800DB30
_0800A8FC:
	adds r0, r4, #0
	bl Player_80149E4
	strb r6, [r5]
_0800A904:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_800A90C
Player_800A90C: @ 0x0800A90C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x26
	ldrb r6, [r7]
	movs r5, #0
	strb r5, [r7]
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0800A97C @ =0xFDFFFFD1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	movs r0, #0x8e
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800A980 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	strh r5, [r4, #0x1c]
	strh r5, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r6, [r7]
	ldr r1, _0800A984 @ =0x00000262
	adds r0, r4, #0
	bl sub_8004E98
	ldr r1, _0800A988 @ =Player_800A98C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A97C: .4byte 0xFDFFFFD1
_0800A980: .4byte 0xFFFFBFFF
_0800A984: .4byte 0x00000262
_0800A988: .4byte Player_800A98C

	thumb_func_start Player_800A98C
Player_800A98C: @ 0x0800A98C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	adds r0, #8
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800A9BC
	ldrb r0, [r2]
	subs r0, #0x80
	movs r1, #0x1a
	bl __divsi3
	adds r1, r0, #5
	b _0800A9C8
_0800A9BC:
	ldrb r0, [r2]
	movs r1, #0x1a
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0800A9C8:
	movs r0, #0
	strh r1, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r5, [r2]
	strb r0, [r2]
	ldr r1, _0800AA14 @ =gSineTable
	lsls r0, r5, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r6, r2, #0
	cmp r1, r0
	ble _0800AA70
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	beq _0800AA1C
	ldr r1, _0800AA18 @ =0xFFFFF800
	b _0800AA20
	.align 2, 0
_0800AA14: .4byte gSineTable
_0800AA18: .4byte 0xFFFFF800
_0800AA1C:
	movs r1, #0xc0
	lsls r1, r1, #2
_0800AA20:
	adds r0, r1, #0
	ldrh r3, [r4, #0x1a]
	adds r0, r0, r3
	strh r0, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r3, r4, #0
	adds r3, #0xe0
	ldr r2, [r3]
	ldr r0, [r2, #0x14]
	ldr r1, _0800AA64 @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r2, [r3]
	ldr r0, [r2, #0x14]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0800AA68 @ =sub_800DB30
	str r0, [r4]
	ldr r1, _0800AA6C @ =0x00000262
	adds r0, r4, #0
	bl sub_8004F10
	b _0800AAB6
	.align 2, 0
_0800AA64: .4byte 0xFFFFCFFF
_0800AA68: .4byte sub_800DB30
_0800AA6C: .4byte 0x00000262
_0800AA70:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0800AA94
	adds r3, r4, #0
	adds r3, #0xe0
	ldr r2, [r3]
	ldr r0, [r2, #0x14]
	ldr r1, _0800AA90 @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r2, [r3]
	ldr r0, [r2, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	b _0800AAAA
	.align 2, 0
_0800AA90: .4byte 0xFFFFCFFF
_0800AA94:
	adds r3, r4, #0
	adds r3, #0xe0
	ldr r2, [r3]
	ldr r0, [r2, #0x14]
	ldr r1, _0800AABC @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r2, [r3]
	ldr r0, [r2, #0x14]
	movs r1, #0x80
	lsls r1, r1, #5
_0800AAAA:
	orrs r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl Player_80149E4
	strb r5, [r6]
_0800AAB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AABC: .4byte 0xFFFFCFFF

	thumb_func_start sub_800AAC0
sub_800AAC0: @ 0x0800AAC0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_8012FC0
	ldr r0, [r6, #4]
	ldr r1, _0800AB38 @ =0xFDFFFFD7
	ands r0, r1
	ldr r1, _0800AB3C @ =0x20000006
	orrs r0, r1
	str r0, [r6, #4]
	movs r5, #0
	movs r4, #0
	movs r0, #0xb
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800AB40 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x26
	strb r5, [r0]
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0x3c
	strh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x4c
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r6, #4]
	ldr r1, _0800AB44 @ =sub_800AB48
	str r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB38: .4byte 0xFDFFFFD7
_0800AB3C: .4byte 0x20000006
_0800AB40: .4byte 0xFFFFBFFF
_0800AB44: .4byte sub_800AB48

	thumb_func_start sub_800AB48
sub_800AB48: @ 0x0800AB48
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x70]
	ldr r0, [r3, #0x74]
	ldr r4, _0800ABC4 @ =0xFFFFE800
	adds r2, r0, r4
	ldr r0, [r3, #0x10]
	cmp r0, r1
	ble _0800AB60
	ldr r4, _0800ABC8 @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r3, #0x10]
_0800AB60:
	ldr r0, [r3, #0x10]
	cmp r0, r1
	bge _0800AB6E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x10]
_0800AB6E:
	ldr r0, [r3, #0x14]
	cmp r0, r2
	ble _0800AB7A
	ldr r4, _0800ABC8 @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r3, #0x14]
_0800AB7A:
	ldr r0, [r3, #0x14]
	cmp r0, r2
	bge _0800AB88
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x14]
_0800AB88:
	adds r2, r3, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800ABBE
	strh r0, [r3, #0x18]
	movs r0, #0xf5
	lsls r0, r0, #8
	strh r0, [r3, #0x1a]
	ldr r0, [r3, #4]
	ldr r1, _0800ABCC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r3, #4]
	movs r0, #0x13
	strh r0, [r3, #0x30]
	ldr r0, _0800ABD0 @ =sub_800E67C
	str r0, [r3]
_0800ABBE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ABC4: .4byte 0xFFFFE800
_0800ABC8: .4byte 0xFFFFFF00
_0800ABCC: .4byte 0xDFFFFFFF
_0800ABD0: .4byte sub_800E67C

	thumb_func_start Player_UseSpecialSpringWithKey
Player_UseSpecialSpringWithKey: @ 0x0800ABD4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800AC94 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800ABF4
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800ABF4
	adds r0, r5, #0
	ldr r1, _0800AC98 @ =0x00000119
	bl sub_8004F10
_0800ABF4:
	ldr r0, [r5, #4]
	ldr r1, _0800AC9C @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #4]
	strh r4, [r5, #0x18]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_8016F28
	movs r0, #0x6c
	strh r0, [r5, #0x30]
	strh r4, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800ACA0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x52
	strh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800ACA4 @ =gCamera
	ldr r0, [r1]
	str r0, [r1, #0x18]
	adds r0, #0xf0
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x10]
	adds r0, #0xa0
	str r0, [r1, #0x14]
	ldr r1, _0800ACA8 @ =sub_800ACAC
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC94: .4byte gStageData
_0800AC98: .4byte 0x00000119
_0800AC9C: .4byte 0xDC510BA1
_0800ACA0: .4byte 0xFFFFBFFF
_0800ACA4: .4byte gCamera
_0800ACA8: .4byte sub_800ACAC

	thumb_func_start sub_800ACAC
sub_800ACAC: @ 0x0800ACAC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8016D30
	ldr r5, _0800AD1C @ =gCamera
	ldr r3, [r5]
	adds r1, r3, #0
	subs r1, #0x20
	ldr r0, [r4, #0x10]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _0800ACE8
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r3, r1
	cmp r0, r2
	blt _0800ACE8
	ldr r3, [r5, #4]
	adds r1, r3, #0
	subs r1, #0x20
	ldr r0, [r4, #0x14]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _0800ACE8
	adds r0, r3, #0
	adds r0, #0xc0
	adds r1, r4, #0
	adds r1, #0x52
	cmp r0, r2
	bge _0800ACFA
_0800ACE8:
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0800ACFA:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x59
	ble _0800AD14
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_80533F4
	ldr r0, _0800AD20 @ =sub_800EB4C
	str r0, [r4]
_0800AD14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD1C: .4byte gCamera
_0800AD20: .4byte sub_800EB4C

@ Used by Special Spring, Act Ring and Final Zone Ring.
	thumb_func_start Player_800AD24
Player_800AD24: @ 0x0800AD24
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800AE00 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800AD44
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800AD44
	adds r0, r5, #0
	ldr r1, _0800AE04 @ =0x00000119
	bl sub_8004F10
_0800AD44:
	ldr r0, [r5, #4]
	ldr r1, _0800AE08 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_8019A64
	ldr r3, _0800AE00 @ =gStageData
	movs r0, #8
	strb r0, [r3, #4]
	movs r0, #0xa
	strh r0, [r5, #0x30]
	movs r0, #0x52
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0x5a
	mov r1, ip
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x6a
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strh r4, [r5, #0x1c]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq _0800ADD2
	mov r1, ip
	ldrh r0, [r1]
	adds r0, #0x1e
	strh r0, [r1]
_0800ADD2:
	adds r0, r5, #0
	bl sub_80173F0
	ldr r1, _0800AE0C @ =gCamera
	ldr r0, [r1]
	str r0, [r1, #0x18]
	adds r0, #0xf0
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x10]
	adds r0, #0xa0
	str r0, [r1, #0x14]
	adds r0, r5, #0
	bl sub_8004FF8
	ldr r1, _0800AE10 @ =sub_800EAAC
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE00: .4byte gStageData
_0800AE04: .4byte 0x00000119
_0800AE08: .4byte 0xDC510BA1
_0800AE0C: .4byte gCamera
_0800AE10: .4byte sub_800EAAC

	thumb_func_start Player_800AE14
Player_800AE14: @ 0x0800AE14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800AEE0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800AE34
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800AE34
	adds r0, r5, #0
	ldr r1, _0800AEE4 @ =0x00000119
	bl sub_8004F10
_0800AE34:
	ldr r0, [r5, #4]
	ldr r1, _0800AEE8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #4]
	ldr r1, _0800AEE0 @ =gStageData
	movs r0, #8
	strb r0, [r1, #4]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_8019A64
	ldr r1, _0800AEEC @ =gCamera
	ldr r0, [r1]
	str r0, [r1, #0x18]
	adds r0, #0xf0
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x10]
	adds r0, #0xa0
	str r0, [r1, #0x14]
	movs r0, #0xa
	strh r0, [r5, #0x30]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0x5a
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x6a
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strh r4, [r5, #0x1c]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_80173F0
	adds r0, r5, #0
	bl sub_8004FF8
	ldr r1, _0800AEF0 @ =sub_800EAEC
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AEE0: .4byte gStageData
_0800AEE4: .4byte 0x00000119
_0800AEE8: .4byte 0xDC510BA1
_0800AEEC: .4byte gCamera
_0800AEF0: .4byte sub_800EAEC

	thumb_func_start sub_800AEF4
sub_800AEF4: @ 0x0800AEF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800AF88 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800AF14
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800AF14
	adds r0, r4, #0
	ldr r1, _0800AF8C @ =0x00000119
	bl sub_8004F10
_0800AF14:
	ldr r0, [r4, #4]
	ldr r1, _0800AF90 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_8016F28
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	movs r1, #0x81
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x5a
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x6a
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xb
	strh r0, [r4, #0x30]
	ldr r1, _0800AF94 @ =sub_800EB14
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF88: .4byte gStageData
_0800AF8C: .4byte 0x00000119
_0800AF90: .4byte 0xDC510BA1
_0800AF94: .4byte sub_800EB14

	thumb_func_start sub_800AF98
sub_800AF98: @ 0x0800AF98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_8012FC0
	ldr r0, [r6, #4]
	ldr r1, _0800AFF8 @ =0xFDFFFFDF
	ands r0, r1
	ldr r1, _0800AFFC @ =0x20000006
	orrs r0, r1
	str r0, [r6, #4]
	movs r4, #0
	movs r5, #0
	movs r0, #0xb
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800B000 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x26
	strb r4, [r0]
	strh r5, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0x3c
	strh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x4c
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFF8: .4byte 0xFDFFFFDF
_0800AFFC: .4byte 0x20000006
_0800B000: .4byte 0xFFFFBFFF

	thumb_func_start sub_800B004
sub_800B004: @ 0x0800B004
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #4]
	movs r5, #4
	ands r3, r5
	cmp r3, #0
	beq _0800B048
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r3, #0x1a
	ldrsh r1, [r4, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_800F0BC
	adds r0, r4, #0
	bl Player_80149E4
	ldr r0, [r4, #4]
	ands r0, r5
	cmp r0, #0
	bne _0800B0A4
	movs r0, #0xb
	strh r0, [r4, #0x30]
	ldr r0, _0800B044 @ =sub_800B004
	str r0, [r4]
	b _0800B0A4
	.align 2, 0
_0800B044: .4byte sub_800B004
_0800B048:
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r4, #0x1c]
	ldr r2, _0800B0AC @ =gSineTable
	movs r5, #0x26
	adds r5, r5, r4
	mov ip, r5
	ldrb r0, [r5]
	lsls r0, r0, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	strh r3, [r4, #0x1a]
	mov r3, ip
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_800B0B0
	movs r5, #0x18
	ldrsh r1, [r4, r5]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8012EA8
_0800B0A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B0AC: .4byte gSineTable

	thumb_func_start sub_800B0B0
sub_800B0B0: @ 0x0800B0B0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x40
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0800B0C0
	movs r1, #0xc0
_0800B0C0:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8011BFC
	lsls r2, r0, #8
	cmp r2, #0
	bgt _0800B122
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r1, r0, #6
	cmp r1, #1
	beq _0800B106
	cmp r1, #1
	bgt _0800B0F2
	cmp r1, #0
	beq _0800B0FC
	b _0800B122
_0800B0F2:
	cmp r1, #2
	beq _0800B10C
	cmp r1, #3
	beq _0800B118
	b _0800B122
_0800B0FC:
	ldr r0, [r4, #0x14]
	adds r0, r0, r2
	str r0, [r4, #0x14]
	strh r1, [r4, #0x1a]
	b _0800B122
_0800B106:
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	b _0800B11C
_0800B10C:
	ldr r0, [r4, #0x14]
	subs r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	b _0800B122
_0800B118:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
_0800B11C:
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
_0800B122:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_800B128
sub_800B128: @ 0x0800B128
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r7, [r4, #0x74]
	ldr r0, [r4, #0x10]
	cmp r0, r6
	ble _0800B142
	ldr r1, _0800B1AC @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r4, #0x10]
	cmp r0, r6
	bge _0800B156
	str r6, [r4, #0x10]
_0800B142:
	ldr r0, [r4, #0x10]
	cmp r0, r6
	bge _0800B156
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x10]
	cmp r0, r6
	ble _0800B156
	str r6, [r4, #0x10]
_0800B156:
	ldr r0, [r4, #0x14]
	cmp r0, r7
	ble _0800B168
	ldr r1, _0800B1AC @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	cmp r0, r7
	bge _0800B17C
	str r7, [r4, #0x14]
_0800B168:
	ldr r0, [r4, #0x14]
	cmp r0, r7
	bge _0800B17C
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x14]
	cmp r0, r7
	ble _0800B17C
	str r7, [r4, #0x14]
_0800B17C:
	adds r5, r4, #0
	adds r5, #0x52
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B1A4
	ldr r0, _0800B1B0 @ =0x00000252
	bl sub_8003DF0
	movs r0, #0xa
	strh r0, [r5]
	str r6, [r4, #0x10]
	str r7, [r4, #0x14]
	ldr r1, _0800B1B4 @ =sub_800E564
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800B1A4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1AC: .4byte 0xFFFFFB00
_0800B1B0: .4byte 0x00000252
_0800B1B4: .4byte sub_800E564

	thumb_func_start Player_800B1B8
Player_800B1B8: @ 0x0800B1B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800B230 @ =0xFDFFFFF9
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r5, #0
	movs r0, #0x8d
	strh r0, [r4, #0x30]
	ldr r3, _0800B234 @ =gPlayers
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	lsls r2, r2, #0x1e
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r3, #4
	adds r1, r1, r3
	adds r2, r0, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, _0800B238 @ =0xFDFFFFFF
	ands r0, r2
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strh r5, [r4, #0x1c]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r1, _0800B23C @ =Player_800B240
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B230: .4byte 0xFDFFFFF9
_0800B234: .4byte gPlayers
_0800B238: .4byte 0xFDFFFFFF
_0800B23C: .4byte Player_800B240

	thumb_func_start Player_800B240
Player_800B240: @ 0x0800B240
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r5, [r0]
	ldr r0, [r4, #4]
	movs r6, #0x80
	lsls r6, r6, #9
	ands r0, r6
	cmp r0, #0
	beq _0800B260
	rsbs r0, r5, #0
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
_0800B260:
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B2B0
	ldr r2, _0800B2AC @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	ldr r1, [r4, #0x70]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	lsls r0, r5, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	ldr r1, [r4, #0x74]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	b _0800B368
	.align 2, 0
_0800B2AC: .4byte gSineTable
_0800B2B0:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B2D0
	movs r0, #8
	strh r0, [r4, #0x30]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0800B2FE
	b _0800B2F6
_0800B2D0:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B308
	adds r0, r5, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #8
	strh r0, [r4, #0x30]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x1c]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0800B2FE
_0800B2F6:
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #4]
	b _0800B314
_0800B2FE:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	b _0800B314
_0800B308:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strh r1, [r4, #0x1c]
	movs r0, #0x8d
	strh r0, [r4, #0x30]
_0800B314:
	ldr r3, _0800B370 @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r2, #0x34
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	lsls r0, r5, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x74]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800B35E
	rsbs r0, r5, #0
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
_0800B35E:
	movs r0, #0xfe
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x26
	strb r5, [r0]
_0800B368:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B370: .4byte gSineTable

	thumb_func_start Player_800B374
Player_800B374: @ 0x0800B374
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800B3EC @ =0xFDFFFFF9
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r5, #0
	movs r0, #0x8d
	strh r0, [r4, #0x30]
	ldr r3, _0800B3F0 @ =gPlayers
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	lsls r2, r2, #0x1e
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r3, #4
	adds r1, r1, r3
	adds r2, r0, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, _0800B3F4 @ =0xFDFFFFFF
	ands r0, r2
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strh r5, [r4, #0x1c]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r1, _0800B3F8 @ =Player_800B3FC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B3EC: .4byte 0xFDFFFFF9
_0800B3F0: .4byte gPlayers
_0800B3F4: .4byte 0xFDFFFFFF
_0800B3F8: .4byte Player_800B3FC

	thumb_func_start Player_800B3FC
Player_800B3FC: @ 0x0800B3FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r5, [r0]
	ldr r0, [r4, #4]
	movs r6, #0x80
	lsls r6, r6, #9
	ands r0, r6
	cmp r0, #0
	beq _0800B41C
	rsbs r0, r5, #0
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
_0800B41C:
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B46C
	ldr r2, _0800B468 @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	ldr r1, [r4, #0x70]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	lsls r0, r5, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #6
	ldr r1, [r4, #0x74]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	b _0800B524
	.align 2, 0
_0800B468: .4byte gSineTable
_0800B46C:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B492
	subs r0, r5, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #8
	strh r0, [r4, #0x30]
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0800B4BA
	b _0800B4B2
_0800B492:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B4C4
	movs r0, #8
	strh r0, [r4, #0x30]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1c]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0800B4BA
_0800B4B2:
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #4]
	b _0800B4D0
_0800B4BA:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	b _0800B4D0
_0800B4C4:
	subs r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strh r1, [r4, #0x1c]
	movs r0, #0x8d
	strh r0, [r4, #0x30]
_0800B4D0:
	ldr r3, _0800B52C @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r2, #0x34
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	lsls r0, r5, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x74]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800B51A
	rsbs r0, r5, #0
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
_0800B51A:
	movs r0, #0xfe
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x26
	strb r5, [r0]
_0800B524:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B52C: .4byte gSineTable

	thumb_func_start sub_800B530
sub_800B530: @ 0x0800B530
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_8012FC0
	ldr r0, [r6, #4]
	ldr r1, _0800B598 @ =0xFDFFFFDF
	ands r0, r1
	ldr r1, _0800B59C @ =0x20000006
	orrs r0, r1
	str r0, [r6, #4]
	movs r5, #0
	movs r4, #0
	movs r0, #0xb
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800B5A0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x26
	strb r5, [r0]
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B598: .4byte 0xFDFFFFDF
_0800B59C: .4byte 0x20000006
_0800B5A0: .4byte 0xFFFFBFFF

	thumb_func_start sub_800B5A4
sub_800B5A4: @ 0x0800B5A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800F170
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B5C0
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0800B5C4
_0800B5C0:
	movs r0, #0x80
	lsls r0, r0, #4
_0800B5C4:
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0800B5EA
	ldr r0, _0800B620 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0800B61A
_0800B5EA:
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800B610
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_0800B610:
	ldr r1, _0800B624 @ =Player_800DDD0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800B61A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B620: .4byte gStageData
_0800B624: .4byte Player_800DDD0

	thumb_func_start sub_800B628
sub_800B628: @ 0x0800B628
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r6, [r4, #0x74]
	bl sub_8016F28
	ldr r0, [r4, #0x10]
	cmp r0, r5
	ble _0800B640
	ldr r1, _0800B6BC @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800B640:
	ldr r0, [r4, #0x10]
	cmp r0, r5
	bge _0800B64E
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800B64E:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	ble _0800B65A
	ldr r1, _0800B6BC @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800B65A:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bge _0800B668
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800B668:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B6B4
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800B6AA
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_0800B6AA:
	ldr r1, _0800B6C0 @ =Player_800DDD0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800B6B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B6BC: .4byte 0xFFFFFE00
_0800B6C0: .4byte Player_800DDD0

	thumb_func_start sub_800B6C4
sub_800B6C4: @ 0x0800B6C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r6, [r4, #0x74]
	bl sub_8016F28
	ldr r0, [r4, #0x10]
	cmp r0, r5
	ble _0800B6DC
	ldr r1, _0800B740 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800B6DC:
	ldr r0, [r4, #0x10]
	cmp r0, r5
	bge _0800B6EA
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800B6EA:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	ble _0800B6F6
	ldr r1, _0800B740 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800B6F6:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bge _0800B704
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800B704:
	adds r3, r4, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0800B738
	movs r0, #0x1e
	strh r0, [r3]
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x14]
	ldr r1, _0800B744 @ =sub_800B748
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800B738:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B740: .4byte 0xFFFFFE00
_0800B744: .4byte sub_800B748

	thumb_func_start sub_800B748
sub_800B748: @ 0x0800B748
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B812
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0800B786
	ldr r0, [r4, #0x10]
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r4, #0x10]
	b _0800B7B6
_0800B786:
	cmp r0, #0
	bge _0800B798
	ldr r0, [r4, #0x10]
	ldr r1, _0800B794 @ =0xFFFFE400
	adds r0, r0, r1
	str r0, [r4, #0x10]
	b _0800B7B6
	.align 2, 0
_0800B794: .4byte 0xFFFFE400
_0800B798:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0800B7AA
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	b _0800B7B4
_0800B7AA:
	cmp r0, #0
	bge _0800B7B6
	ldr r0, [r4, #0x14]
	ldr r2, _0800B7D8 @ =0xFFFFE000
	adds r0, r0, r2
_0800B7B4:
	str r0, [r4, #0x14]
_0800B7B6:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800B7CA
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_0800B7CA:
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0800B7DC
	movs r0, #0x13
	b _0800B7DE
	.align 2, 0
_0800B7D8: .4byte 0xFFFFE000
_0800B7DC:
	movs r0, #0x14
_0800B7DE:
	strh r0, [r4, #0x30]
	ldr r0, _0800B800 @ =sub_800DAF4
	str r0, [r4]
	ldr r0, _0800B804 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B808
	adds r0, r4, #0
	bl sub_800E150
	b _0800B812
	.align 2, 0
_0800B800: .4byte sub_800DAF4
_0800B804: .4byte 0xDDFFFFBF
_0800B808:
	ldr r1, _0800B818 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800B812:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B818: .4byte sub_800DF10

	thumb_func_start sub_800B81C
sub_800B81C: @ 0x0800B81C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, _0800B858 @ =sub_800B81C
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B864
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	ldr r1, _0800B85C @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, _0800B860 @ =0x00000263
	adds r0, r4, #0
	bl sub_8004F10
	b _0800B8A2
	.align 2, 0
_0800B858: .4byte sub_800B81C
_0800B85C: .4byte 0xFFFFF800
_0800B860: .4byte 0x00000263
_0800B864:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800B8A2
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B888
	ldr r2, [r4, #4]
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0800B888
	orrs r2, r3
	str r2, [r4, #4]
	b _0800B8A2
_0800B888:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B8A2
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B8A2
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
_0800B8A2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800B8A8
sub_800B8A8: @ 0x0800B8A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_8012FC0
	ldr r0, [r6, #4]
	ldr r1, _0800B910 @ =0xFDFFFFDF
	ands r0, r1
	ldr r1, _0800B914 @ =0x20000006
	orrs r0, r1
	str r0, [r6, #4]
	movs r5, #0
	movs r4, #0
	movs r0, #0xb
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800B918 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x26
	strb r5, [r0]
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x2e
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800B91C @ =sub_800B920
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B910: .4byte 0xFDFFFFDF
_0800B914: .4byte 0x20000006
_0800B918: .4byte 0xFFFFBFFF
_0800B91C: .4byte sub_800B920

	thumb_func_start sub_800B920
sub_800B920: @ 0x0800B920
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x70]
	ldr r0, _0800B98C @ =0xFFFFFF00
	ands r3, r0
	ldr r6, [r4, #0x74]
	ldr r0, [r4, #0x10]
	cmp r0, r3
	ble _0800B938
	ldr r1, _0800B990 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800B938:
	ldr r0, [r4, #0x10]
	cmp r0, r3
	bge _0800B946
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800B946:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	ble _0800B952
	ldr r1, _0800B990 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800B952:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bge _0800B960
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800B960:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0800B9C2
	ldr r2, [r4, #0x70]
	movs r0, #3
	ands r2, r0
	str r3, [r4, #0x10]
	str r6, [r4, #0x14]
	strh r5, [r4, #0x1c]
	cmp r2, #0
	bne _0800B994
	strh r2, [r4, #0x18]
	movs r0, #0xf4
	lsls r0, r0, #8
	b _0800B9A6
	.align 2, 0
_0800B98C: .4byte 0xFFFFFF00
_0800B990: .4byte 0xFFFFFE00
_0800B994:
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	cmp r2, #2
	bne _0800B9A2
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
_0800B9A2:
	movs r0, #0xf5
	lsls r0, r0, #8
_0800B9A6:
	strh r0, [r4, #0x1a]
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0x8f
	strh r0, [r4, #0x30]
	movs r0, #0x97
	lsls r0, r0, #2
	bl sub_8003DF0
	ldr r1, _0800B9C8 @ =sub_800DEC4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800B9C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B9C8: .4byte sub_800DEC4

	thumb_func_start sub_800B9CC
sub_800B9CC: @ 0x0800B9CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800BA6C
	adds r0, r6, #0
	bl sub_8016E50
	adds r0, r6, #0
	bl sub_8016D30
	adds r0, r6, #0
	bl sub_8016EB0
	adds r0, r6, #0
	bl Player_80149E4
	adds r0, r6, #0
	bl sub_8017004
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0800BA6C
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r6, #0x18]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0x1a]
	ldr r0, _0800BA74 @ =sub_800DB30
	str r0, [r6]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r5, #0x80
	lsls r5, r5, #2
	movs r3, #0xb1
	lsls r3, r3, #2
	movs r4, #0x1e
	str r4, [sp]
	adds r2, r5, #0
	bl sub_804B2C4
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r3, #0xc5
	lsls r3, r3, #2
	str r4, [sp]
	adds r2, r5, #0
	bl sub_804B2C4
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r3, #0xcf
	lsls r3, r3, #2
	str r4, [sp]
	adds r2, r5, #0
	bl sub_804B2C4
_0800BA6C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA74: .4byte sub_800DB30

	thumb_func_start sub_800BA78
sub_800BA78: @ 0x0800BA78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0800BB20 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800BA98
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800BA98
	adds r0, r6, #0
	ldr r1, _0800BB24 @ =0x00000119
	bl sub_8004F10
_0800BA98:
	ldr r0, [r6, #4]
	ldr r1, _0800BB28 @ =0xDC510BA1
	ands r0, r1
	str r0, [r6, #4]
	adds r2, r6, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, r6, #0
	bl sub_8012FA0
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	ands r0, r5
	str r0, [r6, #4]
	str r4, [r6, #0x6c]
	movs r0, #0x8c
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800BB2C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800BB30 @ =sub_800E5CC
	str r1, [r6]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB20: .4byte gStageData
_0800BB24: .4byte 0x00000119
_0800BB28: .4byte 0xDC510BA1
_0800BB2C: .4byte 0xFFFFBFFF
_0800BB30: .4byte sub_800E5CC

	thumb_func_start sub_800BB34
sub_800BB34: @ 0x0800BB34
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_8016F28
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800BB4A
	movs r0, #0x80
	lsls r0, r0, #2
	b _0800BB52
_0800BB4A:
	cmp r0, #0
	ble _0800BB54
	movs r0, #0xfe
	lsls r0, r0, #8
_0800BB52:
	strh r0, [r5, #0x18]
_0800BB54:
	ldr r0, [r5, #4]
	ldr r1, _0800BB94 @ =0xDDFFFFDF
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FF0
	movs r3, #0
	movs r4, #0
	movs r0, #0x13
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800BB98 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x26
	strb r3, [r0]
	strh r4, [r5, #0x1c]
	ldr r1, _0800BB9C @ =sub_800E6CC
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB94: .4byte 0xDDFFFFDF
_0800BB98: .4byte 0xFFFFBFFF
_0800BB9C: .4byte sub_800E6CC

	thumb_func_start sub_800BBA0
sub_800BBA0: @ 0x0800BBA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800BC24 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800BBC0
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800BBC0
	adds r0, r5, #0
	ldr r1, _0800BC28 @ =0x00000119
	bl sub_8004F10
_0800BBC0:
	ldr r0, [r5, #4]
	ldr r1, _0800BC2C @ =0xDC510BA1
	ands r0, r1
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #0
	strb r4, [r0]
	adds r0, #0x6a
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #0x42
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800BC30 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8019A64
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_8012FA0
	strh r4, [r5, #0x1c]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
	movs r0, #0x24
	strh r0, [r5, #0x30]
	ldr r1, _0800BC34 @ =sub_800EC20
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BC24: .4byte gStageData
_0800BC28: .4byte 0x00000119
_0800BC2C: .4byte 0xDC510BA1
_0800BC30: .4byte 0xFFFFBFFF
_0800BC34: .4byte sub_800EC20

	thumb_func_start sub_800BC38
sub_800BC38: @ 0x0800BC38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800BCB8 @ =0xE5FFFFF5
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r4, #0x36]
	adds r2, #1
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800BC74
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_0800BC74:
	adds r5, r4, #0
	adds r5, #0xe0
	ldr r1, [r5]
	ldr r0, [r1, #0x14]
	ldr r6, _0800BCBC @ =0xFFFFBFFF
	ands r0, r6
	str r0, [r1, #0x14]
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800BCC8
	ldr r0, _0800BCC0 @ =0xFDFFFFFD
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, [r5]
	ldr r0, [r1, #0x14]
	ands r0, r6
	str r0, [r1, #0x14]
	ldr r1, _0800BCC4 @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800BCD6
	.align 2, 0
_0800BCB8: .4byte 0xE5FFFFF5
_0800BCBC: .4byte 0xFFFFBFFF
_0800BCC0: .4byte 0xFDFFFFFD
_0800BCC4: .4byte sub_800E198
_0800BCC8:
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _0800BCDC @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800BCD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCDC: .4byte sub_8006C70

	thumb_func_start Player_800BCE0
Player_800BCE0: @ 0x0800BCE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800BD78 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800BD00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800BD00
	adds r0, r4, #0
	ldr r1, _0800BD7C @ =0x00000119
	bl sub_8004F10
_0800BD00:
	ldr r0, [r4, #4]
	ldr r1, _0800BD80 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #7
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0x8b
	strh r0, [r4, #0x30]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x9b
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8019A64
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8017914
	ldr r1, _0800BD84 @ =Player_800BD88
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD78: .4byte gStageData
_0800BD7C: .4byte 0x00000119
_0800BD80: .4byte 0xDC510BA1
_0800BD84: .4byte Player_800BD88

	thumb_func_start Player_800BD88
Player_800BD88: @ 0x0800BD88
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0800BDB0 @ =gSineTable
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r3, r0, #6
	ldrh r2, [r4, #0x1c]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0800BDB4
	adds r0, r2, r3
	b _0800BDC4
	.align 2, 0
_0800BDB0: .4byte gSineTable
_0800BDB4:
	cmp r1, #0
	ble _0800BDBE
	cmp r3, #0
	bgt _0800BDC6
	b _0800BDC2
_0800BDBE:
	cmp r3, #0
	blt _0800BDC6
_0800BDC2:
	asrs r0, r0, #0x11
_0800BDC4:
	strh r0, [r4, #0x1c]
_0800BDC6:
	ldrh r0, [r4, #0x1c]
	adds r0, r0, r3
	strh r0, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800BDD6
	rsbs r0, r0, #0
_0800BDD6:
	cmp r0, #0xff
	bgt _0800BDF0
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDEA
	movs r0, #0xff
	lsls r0, r0, #8
	b _0800BDEE
_0800BDEA:
	movs r0, #0x80
	lsls r0, r0, #1
_0800BDEE:
	strh r0, [r4, #0x1c]
_0800BDF0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800BE5A
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BE24
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	b _0800BE5A
_0800BE24:
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0800BE4A
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800BE50
_0800BE4A:
	adds r0, r4, #0
	bl sub_800EC68
_0800BE50:
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
_0800BE5A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_800BE60
sub_800BE60: @ 0x0800BE60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800BED8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800BE80
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800BE80
	adds r0, r4, #0
	ldr r1, _0800BEDC @ =0x00000119
	bl sub_8004F10
_0800BE80:
	ldr r0, [r4, #4]
	ldr r1, _0800BEE0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0x7a
	strh r0, [r4, #0x30]
	adds r2, #2
	ldrb r1, [r2]
	subs r0, #0x8a
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800BEE4 @ =sub_800EB58
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BED8: .4byte gStageData
_0800BEDC: .4byte 0x00000119
_0800BEE0: .4byte 0xDC510BA1
_0800BEE4: .4byte sub_800EB58

	thumb_func_start sub_800BEE8
sub_800BEE8: @ 0x0800BEE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800BF68 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800BF08
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800BF08
	adds r0, r4, #0
	ldr r1, _0800BF6C @ =0x00000119
	bl sub_8004F10
_0800BF08:
	ldr r0, [r4, #4]
	ldr r1, _0800BF70 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	movs r0, #0x7a
	strh r0, [r4, #0x30]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8016F28
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r1, _0800BF74 @ =sub_800EAA8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF68: .4byte gStageData
_0800BF6C: .4byte 0x00000119
_0800BF70: .4byte 0xDC510BA1
_0800BF74: .4byte sub_800EAA8

	thumb_func_start sub_800BF78
sub_800BF78: @ 0x0800BF78
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800BFD8 @ =gPlayers
	adds r0, r0, r1
	mov ip, r0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r4, r0, #0x1c
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x27
	strb r0, [r1]
	mov r0, ip
	ldr r2, [r0, #4]
	ldr r0, _0800BFDC @ =0xFFFEFFFF
	ands r2, r0
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	orrs r2, r0
	mov r0, ip
	str r2, [r0, #4]
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800C010
	adds r0, r4, #0
	cmp r0, #4
	bhi _0800C05E
	lsls r0, r0, #2
	ldr r1, _0800BFE0 @ =_0800BFE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BFD8: .4byte gPlayers
_0800BFDC: .4byte 0xFFFEFFFF
_0800BFE0: .4byte _0800BFE4
_0800BFE4: @ jump table
	.4byte _0800C038 @ case 0
	.4byte _0800C040 @ case 1
	.4byte _0800BFF8 @ case 2
	.4byte _0800C000 @ case 3
	.4byte _0800C008 @ case 4
_0800BFF8:
	adds r0, r3, #0
	bl sub_0800C1FC
	b _0800C05E
_0800C000:
	adds r0, r3, #0
	bl sub_0800C338
	b _0800C05E
_0800C008:
	adds r0, r3, #0
	bl sub_0800F004
	b _0800C05E
_0800C010:
	adds r0, r4, #0
	cmp r0, #4
	bhi _0800C05E
	lsls r0, r0, #2
	ldr r1, _0800C020 @ =_0800C024
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C020: .4byte _0800C024
_0800C024: @ jump table
	.4byte _0800C038 @ case 0
	.4byte _0800C040 @ case 1
	.4byte _0800C048 @ case 2
	.4byte _0800C050 @ case 3
	.4byte _0800C058 @ case 4
_0800C038:
	adds r0, r3, #0
	bl sub_800C064
	b _0800C05E
_0800C040:
	adds r0, r3, #0
	bl sub_0800C104
	b _0800C05E
_0800C048:
	adds r0, r3, #0
	bl sub_800EF50
	b _0800C05E
_0800C050:
	adds r0, r3, #0
	bl sub_800EFB0
	b _0800C05E
_0800C058:
	adds r0, r3, #0
	bl sub_0800F004
_0800C05E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800C064
sub_800C064: @ 0x0800C064
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800C0A8 @ =gPlayers
	adds r4, r0, r1
	movs r6, #0xc0
	lsls r6, r6, #4
	adds r1, r5, #0
	adds r1, #0x99
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8019A58
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C0AC
	ldr r0, [r4, #4]
	orrs r0, r1
	str r0, [r4, #4]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0800C0B6
	.align 2, 0
_0800C0A8: .4byte gPlayers
_0800C0AC:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
_0800C0B6:
	ldr r0, [r5, #4]
	movs r2, #4
	ands r0, r2
	cmp r0, #0
	beq _0800C0CE
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_0800C0CE:
	ldr r1, [r5, #4]
	ands r1, r2
	ldr r0, [r4, #4]
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_800E724
	movs r0, #0
	strh r6, [r5, #0x18]
	strh r0, [r5, #0x1a]
	strh r6, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_80056CC
	adds r0, r5, #0
	movs r1, #0x9b
	bl sub_8004E98
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C104
sub_0800C104: @ 0x0800C104
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800C198 @ =gPlayers
	adds r6, r0, r1
	ldr r1, [r4, #4]
	lsrs r5, r1, #2
	movs r0, #1
	ands r5, r0
	ldr r0, _0800C19C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800C140
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800C140
	adds r0, r4, #0
	ldr r1, _0800C1A0 @ =0x00000119
	bl sub_8004F10
_0800C140:
	ldr r0, [r4, #4]
	ldr r1, _0800C1A4 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	cmp r5, #0
	beq _0800C1D0
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x26
	strb r2, [r0]
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C1A8
	adds r0, r4, #0
	bl sub_800C5D0
	b _0800C1AE
	.align 2, 0
_0800C198: .4byte gPlayers
_0800C19C: .4byte gStageData
_0800C1A0: .4byte 0x00000119
_0800C1A4: .4byte 0xDC510BA1
_0800C1A8:
	adds r0, r4, #0
	bl sub_800C714
_0800C1AE:
	ldr r0, [r6, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C1C0
	adds r0, r6, #0
	bl sub_800C5D0
	b _0800C1C6
_0800C1C0:
	adds r0, r6, #0
	bl sub_800C714
_0800C1C6:
	adds r0, r4, #0
	movs r1, #0x74
	bl sub_8004E98
	b _0800C1DC
_0800C1D0:
	adds r0, r4, #0
	bl sub_0800E218
	adds r0, r6, #0
	bl sub_0800E218
_0800C1DC:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0x96
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x54
	strh r1, [r0]
	movs r0, #0xc
	adds r1, r4, #0
	bl sub_801EBC0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C1FC
sub_0800C1FC: @ 0x0800C1FC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800C228 @ =gPlayers
	adds r5, r0, r1
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800C230
	ldr r1, _0800C22C @ =0xFFFFE000
	b _0800C234
	.align 2, 0
_0800C228: .4byte gPlayers
_0800C22C: .4byte 0xFFFFE000
_0800C230:
	movs r1, #0x80
	lsls r1, r1, #6
_0800C234:
	adds r0, r6, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	movs r7, #0
	strb r7, [r0]
	adds r0, r5, #0
	adds r0, #0x26
	strb r7, [r0]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8012E18
	cmp r0, #0
	bge _0800C2F8
	str r6, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800C272
	strh r7, [r4, #0x1a]
_0800C272:
	ldr r0, [r4, #4]
	ldr r1, _0800C290 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C294
	adds r0, r4, #0
	bl sub_800E150
	b _0800C29E
	.align 2, 0
_0800C290: .4byte 0xDDFFFFBF
_0800C294:
	ldr r1, _0800C2E0 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800C29E:
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r5, #0x30]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800C2C2
	movs r0, #0
	strh r0, [r5, #0x1a]
_0800C2C2:
	ldr r0, [r5, #4]
	ldr r1, _0800C2E4 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C2E8
	adds r0, r5, #0
	bl sub_800E150
	b _0800C330
	.align 2, 0
_0800C2E0: .4byte sub_800DF10
_0800C2E4: .4byte 0xDDFFFFBF
_0800C2E8:
	ldr r1, _0800C2F4 @ =sub_800DF10
	str r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
	b _0800C330
	.align 2, 0
_0800C2F4: .4byte sub_800DF10
_0800C2F8:
	str r6, [r4, #0x14]
	ldr r1, [r5, #4]
	ldr r0, _0800C310 @ =0x22000004
	orrs r1, r0
	str r1, [r5, #4]
	ldr r0, [r4, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0800C314
	orrs r1, r2
	b _0800C31A
	.align 2, 0
_0800C310: .4byte 0x22000004
_0800C314:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_0800C31A:
	str r1, [r5, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_801BE40
	adds r0, r4, #0
	bl sub_800E7BC
_0800C330:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C338
sub_0800C338: @ 0x0800C338
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800C380 @ =gPlayers
	adds r4, r0, r1
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_800CF08
	ldr r1, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #0x16
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, [r5, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0800C384
	orrs r1, r2
	b _0800C38A
	.align 2, 0
_0800C380: .4byte gPlayers
_0800C384:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_0800C38A:
	str r1, [r4, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #0xe7
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_801D8A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C3AC
sub_800C3AC: @ 0x0800C3AC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r1, _0800C408 @ =gUnknown_080CE5F2
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #3
	beq _0800C48C
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800C48C
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C48C
	lsls r0, r2, #0x1c
	lsrs r4, r0, #0x1c
	lsls r0, r4, #1
	add r0, sp
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_8004E98
	ldrh r1, [r5, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C426
	cmp r4, #1
	beq _0800C416
	cmp r4, #1
	bgt _0800C40C
	cmp r4, #0
	beq _0800C41E
	b _0800C48C
	.align 2, 0
_0800C408: .4byte gUnknown_080CE5F2
_0800C40C:
	cmp r4, #2
	beq _0800C416
	cmp r4, #4
	beq _0800C41E
	b _0800C48C
_0800C416:
	adds r0, r5, #0
	bl sub_800F074
	b _0800C48C
_0800C41E:
	adds r0, r5, #0
	bl sub_800F068
	b _0800C48C
_0800C426:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800C45E
	cmp r4, #1
	beq _0800C44E
	cmp r4, #1
	bgt _0800C43C
	cmp r4, #0
	beq _0800C446
	b _0800C48C
_0800C43C:
	cmp r4, #2
	beq _0800C44E
	cmp r4, #4
	beq _0800C456
	b _0800C48C
_0800C446:
	adds r0, r5, #0
	bl sub_800F080
	b _0800C48C
_0800C44E:
	adds r0, r5, #0
	bl sub_800F08C
	b _0800C48C
_0800C456:
	adds r0, r5, #0
	bl sub_800F098
	b _0800C48C
_0800C45E:
	cmp r4, #1
	beq _0800C47E
	cmp r4, #1
	bgt _0800C46C
	cmp r4, #0
	beq _0800C476
	b _0800C48C
_0800C46C:
	cmp r4, #2
	beq _0800C47E
	cmp r4, #4
	beq _0800C486
	b _0800C48C
_0800C476:
	adds r0, r5, #0
	bl sub_800F0A4
	b _0800C48C
_0800C47E:
	adds r0, r5, #0
	bl sub_800F0B0
	b _0800C48C
_0800C486:
	adds r0, r5, #0
	bl sub_800F0A4
_0800C48C:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_800C494
sub_800C494: @ 0x0800C494
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C536
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C536
	adds r0, r4, #0
	bl sub_8016EDC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C536
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	bne _0800C536
	adds r0, r4, #0
	bl sub_8015228
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C536
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C536
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800C518
	ldr r0, _0800C514 @ =sub_0800E27C
	str r0, [r4]
	b _0800C536
	.align 2, 0
_0800C514: .4byte sub_0800E27C
_0800C518:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C536
	ldr r0, [r4, #4]
	ldr r1, _0800C53C @ =0xDDFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl Player_8005380
_0800C536:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C53C: .4byte 0xDDFFFFFF

	thumb_func_start sub_800C540
sub_800C540: @ 0x0800C540
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C5C4
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C5C4
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	bne _0800C5C4
	adds r0, r4, #0
	bl sub_8015228
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C5C4
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C5C4
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C5C4
	ldr r0, [r4, #4]
	ldr r1, _0800C5CC @ =0xDDFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8005528
_0800C5C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C5CC: .4byte 0xDDFFFFFF

	thumb_func_start sub_800C5D0
sub_800C5D0: @ 0x0800C5D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #6
	orrs r0, r1
	ldr r1, _0800C5FC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FF0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0800C5F0
	rsbs r1, r1, #0
_0800C5F0:
	ldr r0, _0800C600 @ =0x0000013F
	cmp r1, r0
	bgt _0800C604
	movs r0, #0x13
	b _0800C606
	.align 2, 0
_0800C5FC: .4byte 0xDFFFFFFF
_0800C600: .4byte 0x0000013F
_0800C604:
	movs r0, #0x14
_0800C606:
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r3, #0x9c
	lsls r3, r3, #3
	cmp r0, #0
	beq _0800C61A
	movs r3, #0xa8
	lsls r3, r3, #2
_0800C61A:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800C678 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800C67C @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r2, [r4, #0x18]
	adds r0, r0, r2
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	ldr r1, _0800C680 @ =sub_800C684
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C678: .4byte 0xFFFFBFFF
_0800C67C: .4byte gSineTable
_0800C680: .4byte sub_800C684

	thumb_func_start sub_800C684
sub_800C684: @ 0x0800C684
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C70A
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C70A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C70A
	ldr r0, [r4, #4]
	ldr r1, _0800C6FC @ =0xDDFFFFFF
	ands r0, r1
	subs r1, #0x40
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C700
	adds r0, r4, #0
	bl sub_800E150
	b _0800C70A
	.align 2, 0
_0800C6FC: .4byte 0xDDFFFFFF
_0800C700:
	ldr r1, _0800C710 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800C70A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C710: .4byte sub_800DF10

	thumb_func_start sub_800C714
sub_800C714: @ 0x0800C714
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0800C7A8 @ =0xDFFFFFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r3, #0x9c
	lsls r3, r3, #3
	cmp r0, #0
	beq _0800C746
	movs r3, #0xa8
	lsls r3, r3, #2
_0800C746:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	subs r1, #0x40
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0800C7AC @ =gSineTable
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r5, [r4, #0x18]
	adds r0, r0, r5
	strh r0, [r4, #0x18]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800C7B0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	ldr r1, _0800C7B4 @ =sub_800C7B8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C7A8: .4byte 0xDFFFFFFF
_0800C7AC: .4byte gSineTable
_0800C7B0: .4byte 0xFFFFBFFF
_0800C7B4: .4byte sub_800C7B8

	thumb_func_start sub_800C7B8
sub_800C7B8: @ 0x0800C7B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C872
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800C7DA
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0800C7DA
	movs r0, #1
	b _0800C7FC
_0800C7DA:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800C7FE
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800C7FE
	ldr r0, _0800C860 @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #2
_0800C7FC:
	strh r0, [r4, #0x36]
_0800C7FE:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C872
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C872
	ldr r0, [r4, #4]
	ldr r1, _0800C864 @ =0xDDFFFFFF
	ands r0, r1
	subs r1, #0x40
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C868
	adds r0, r4, #0
	bl sub_800E150
	b _0800C872
	.align 2, 0
_0800C860: .4byte 0xFFFFBFFF
_0800C864: .4byte 0xDDFFFFFF
_0800C868:
	ldr r1, _0800C878 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800C872:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C878: .4byte sub_800DF10

	thumb_func_start sub_800C87C
sub_800C87C: @ 0x0800C87C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800C8E8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800C89C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800C89C
	adds r0, r4, #0
	ldr r1, _0800C8EC @ =0x00000119
	bl sub_8004F10
_0800C89C:
	ldr r0, [r4, #4]
	ldr r1, _0800C8F0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800C8F4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0800C8F8
	movs r0, #0x62
	b _0800C8FA
	.align 2, 0
_0800C8E8: .4byte gStageData
_0800C8EC: .4byte 0x00000119
_0800C8F0: .4byte 0xDC510BA1
_0800C8F4: .4byte 0xFFFFBFFF
_0800C8F8:
	movs r0, #0x63
_0800C8FA:
	strh r0, [r4, #0x30]
	ldr r1, _0800C90C @ =sub_801AA78
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C90C: .4byte sub_801AA78

	thumb_func_start sub_800C910
sub_800C910: @ 0x0800C910
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800C998 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800C930
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800C930
	adds r0, r4, #0
	ldr r1, _0800C99C @ =0x00000119
	bl sub_8004F10
_0800C930:
	ldr r0, [r4, #4]
	ldr r1, _0800C9A0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800C9A4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r2, #4
	orrs r0, r2
	movs r1, #0x64
	strh r1, [r4, #0x30]
	ldr r1, _0800C9A8 @ =sub_800DAF4
	str r1, [r4]
	ldr r1, _0800C9AC @ =0xDDFFFFBF
	ands r0, r1
	orrs r0, r2
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C9B0
	adds r0, r4, #0
	bl sub_800E150
	b _0800C9BA
	.align 2, 0
_0800C998: .4byte gStageData
_0800C99C: .4byte 0x00000119
_0800C9A0: .4byte 0xDC510BA1
_0800C9A4: .4byte 0xFFFFBFFF
_0800C9A8: .4byte sub_800DAF4
_0800C9AC: .4byte 0xDDFFFFBF
_0800C9B0:
	ldr r1, _0800C9C0 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800C9BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C9C0: .4byte sub_800DF10

	thumb_func_start sub_800C9C4
sub_800C9C4: @ 0x0800C9C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800C9F0 @ =gPlayers
	adds r5, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800C9F8
	ldr r0, [r4, #0x14]
	ldr r1, _0800C9F4 @ =0xFFFFE000
	b _0800C9FE
	.align 2, 0
_0800C9F0: .4byte gPlayers
_0800C9F4: .4byte 0xFFFFE000
_0800C9F8:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
_0800C9FE:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CA12
	ldr r0, [r4, #4]
	orrs r0, r1
	b _0800CA1A
_0800CA12:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0800CA1A:
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r0, _0800CA8C @ =0xFFFEFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #9
	ands r0, r7
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CA3E
	b _0800CB52
_0800CA3E:
	adds r0, r4, #0
	bl sub_8011D08
	adds r0, r4, #0
	bl sub_8011E70
	adds r0, r4, #0
	bl sub_8011FB8
	adds r0, r4, #0
	bl sub_8012118
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _0800CA7A
	ldr r6, [r4]
	ldr r0, _0800CA90 @ =sub_800C9C4
	cmp r6, r0
	bne _0800CA7A
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _0800CA7A
	ldr r0, [r4]
	cmp r0, r6
	beq _0800CA98
_0800CA7A:
	ldr r0, [r5, #4]
	ldr r1, _0800CA94 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800CB52
	.align 2, 0
_0800CA8C: .4byte 0xFFFEFFFF
_0800CA90: .4byte sub_800C9C4
_0800CA94: .4byte 0xFDFFFFFF
_0800CA98:
	ldr r0, [r4, #4]
	ands r0, r7
	cmp r0, #0
	beq _0800CAA8
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	b _0800CAAC
_0800CAA8:
	ldr r0, [r4, #0x14]
	ldr r1, _0800CAE4 @ =0xFFFFE000
_0800CAAC:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _0800CAE8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0800CAD6
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r2, #0x1c
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	beq _0800CAD6
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bne _0800CAEC
_0800CAD6:
	ldrh r0, [r5, #0x30]
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0800CB52
	b _0800CB06
	.align 2, 0
_0800CAE4: .4byte 0xFFFFE000
_0800CAE8: .4byte gStageData
_0800CAEC:
	ldrh r1, [r5, #0x34]
	ldr r0, _0800CB3C @ =0x00000151
	cmp r1, r0
	beq _0800CB52
	adds r0, #0xe
	cmp r1, r0
	beq _0800CB52
	adds r0, #0x3e
	cmp r1, r0
	beq _0800CB52
	subs r0, #0x3d
	cmp r1, r0
	beq _0800CB52
_0800CB06:
	movs r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r5, #4]
	ldr r1, _0800CB40 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldr r1, _0800CB44 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800CB48
	adds r0, r4, #0
	bl sub_800E150
	b _0800CB52
	.align 2, 0
_0800CB3C: .4byte 0x00000151
_0800CB40: .4byte 0xFDFFFFFF
_0800CB44: .4byte 0xDDFFFFBF
_0800CB48:
	ldr r1, _0800CB58 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800CB52:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB58: .4byte sub_800DF10

	thumb_func_start sub_800CB5C
sub_800CB5C: @ 0x0800CB5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800CBD4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800CB7C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800CB7C
	adds r0, r4, #0
	ldr r1, _0800CBD8 @ =0x00000119
	bl sub_8004F10
_0800CB7C:
	ldr r0, [r4, #4]
	ldr r1, _0800CBDC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r3, #0
	strb r3, [r0]
	adds r0, #0x6a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #4
	strh r3, [r0]
	ldr r0, [r4, #4]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0x5b
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800CBE0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	strh r3, [r4, #0x1c]
	ldr r1, _0800CBE4 @ =sub_800CBE8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CBD4: .4byte gStageData
_0800CBD8: .4byte 0x00000119
_0800CBDC: .4byte 0xDC510BA1
_0800CBE0: .4byte 0xFFFFBFFF
_0800CBE4: .4byte sub_800CBE8

	thumb_func_start sub_800CBE8
sub_800CBE8: @ 0x0800CBE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #4]
	ldr r0, _0800CC48 @ =0xFFFEFFFF
	ands r3, r0
	str r3, [r4, #4]
	ldr r2, _0800CC4C @ =gPlayers
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
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	orrs r3, r0
	str r3, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800CC9C
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0800CC50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	b _0800CC5C
	.align 2, 0
_0800CC48: .4byte 0xFFFEFFFF
_0800CC4C: .4byte gPlayers
_0800CC50:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	ldr r2, _0800CC78 @ =0xFFFFFB00
	adds r0, r0, r2
_0800CC5C:
	str r0, [r4, #0x10]
	movs r0, #0xf5
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800CC7C
	ldr r0, [r4, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #3
	b _0800CC80
	.align 2, 0
_0800CC78: .4byte 0xFFFFFB00
_0800CC7C:
	ldr r0, [r4, #0x14]
	ldr r2, _0800CCA8 @ =0xFFFFFB00
_0800CC80:
	adds r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0800CCAC @ =sub_800E808
	str r0, [r4]
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #0x74
	bl sub_8004E98
_0800CC9C:
	adds r0, r4, #0
	bl sub_8014E70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CCA8: .4byte 0xFFFFFB00
_0800CCAC: .4byte sub_800E808

	thumb_func_start sub_800CCB0
sub_800CCB0: @ 0x0800CCB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800CD50 @ =gPlayers
	adds r5, r0, r1
	ldr r0, _0800CD54 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800CCE6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800CCE6
	adds r0, r4, #0
	ldr r1, _0800CD58 @ =0x00000119
	bl sub_8004F10
_0800CCE6:
	ldr r0, [r4, #4]
	ldr r1, _0800CD5C @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r3, #0
	strb r3, [r0]
	adds r0, #0x6a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #4
	strh r3, [r0]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, [r5, #4]
	movs r2, #1
	ands r1, r2
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xde
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800CD60 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	strh r3, [r4, #0x1c]
	ldr r1, _0800CD64 @ =sub_800E880
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD50: .4byte gPlayers
_0800CD54: .4byte gStageData
_0800CD58: .4byte 0x00000119
_0800CD5C: .4byte 0xDC510BA1
_0800CD60: .4byte 0xFFFFBFFF
_0800CD64: .4byte sub_800E880

	thumb_func_start sub_800CD68
sub_800CD68: @ 0x0800CD68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	ldr r0, _0800CDD4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800CD90
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800CD90
	adds r0, r4, #0
	ldr r1, _0800CDD8 @ =0x00000119
	bl sub_8004F10
_0800CD90:
	ldr r0, [r4, #4]
	ldr r1, _0800CDDC @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r5, #0
	cmp r0, #1
	beq _0800CDEE
	cmp r0, #1
	bgt _0800CDE0
	cmp r0, #0
	beq _0800CDEA
	b _0800CDFA
	.align 2, 0
_0800CDD4: .4byte gStageData
_0800CDD8: .4byte 0x00000119
_0800CDDC: .4byte 0xDC510BA1
_0800CDE0:
	cmp r0, #2
	beq _0800CDF2
	cmp r0, #4
	beq _0800CDF6
	b _0800CDFA
_0800CDEA:
	movs r0, #0xae
	b _0800CDF8
_0800CDEE:
	movs r0, #0xc7
	b _0800CDF8
_0800CDF2:
	movs r0, #0xdf
	b _0800CDF8
_0800CDF6:
	ldr r0, _0800CE24 @ =0x00000109
_0800CDF8:
	strh r0, [r4, #0x30]
_0800CDFA:
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	movs r0, #0x14
	strh r0, [r2]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800CE28 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800CE2C @ =sub_800CE30
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CE24: .4byte 0x00000109
_0800CE28: .4byte 0xFFFFBFFF
_0800CE2C: .4byte sub_800CE30

	thumb_func_start sub_800CE30
sub_800CE30: @ 0x0800CE30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0800CE68 @ =gPlayers
	adds r2, r1, r0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _0800CE6C
	subs r0, r3, #1
	strh r0, [r1]
	ldr r0, [r4, #0x10]
	str r0, [r2, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r2, #0x14]
	b _0800CEA8
	.align 2, 0
_0800CE68: .4byte gPlayers
_0800CE6C:
	cmp r0, #0
	bne _0800CEA8
	ldr r5, _0800CE88 @ =0x0000FFFF
	adds r0, r5, #0
	orrs r0, r3
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CE8C
	movs r0, #0xf9
	lsls r0, r0, #8
	b _0800CE90
	.align 2, 0
_0800CE88: .4byte 0x0000FFFF
_0800CE8C:
	movs r0, #0xe0
	lsls r0, r0, #3
_0800CE90:
	strh r0, [r2, #0x18]
	movs r1, #0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #0x1a]
	adds r0, r2, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r1, _0800CEFC @ =0x0000021E
	adds r0, r4, #0
	bl sub_8004E98
_0800CEA8:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800CEC6
	ldr r0, [r4, #4]
	ldr r1, _0800CF00 @ =0xDDFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, _0800CF04 @ =Player_8005380
	str r0, [r4]
_0800CEC6:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CEF6
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0800CEF6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CEFC: .4byte 0x0000021E
_0800CF00: .4byte 0xDDFFFFFF
_0800CF04: .4byte Player_8005380

	thumb_func_start sub_800CF08
sub_800CF08: @ 0x0800CF08
	push {lr}
	adds r3, r0, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	lsls r2, r2, #0x1c
	ldr r0, [r3, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r3, #4]
	lsrs r2, r2, #0x1c
	cmp r2, #1
	beq _0800CF40
	cmp r2, #1
	bgt _0800CF32
	cmp r2, #0
	beq _0800CF3C
	b _0800CF4E
_0800CF32:
	cmp r2, #2
	beq _0800CF44
	cmp r2, #4
	beq _0800CF48
	b _0800CF4E
_0800CF3C:
	movs r0, #0xaf
	b _0800CF4C
_0800CF40:
	movs r0, #0xc8
	b _0800CF4C
_0800CF44:
	movs r0, #0xe0
	b _0800CF4C
_0800CF48:
	movs r0, #0x85
	lsls r0, r0, #1
_0800CF4C:
	strh r0, [r3, #0x30]
_0800CF4E:
	movs r0, #0
	strh r0, [r3, #0x1c]
	ldr r0, _0800CF5C @ =sub_800CF60
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_0800CF5C: .4byte sub_800CF60

	thumb_func_start sub_800CF60
sub_800CF60: @ 0x0800CF60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800CF8C @ =gPlayers
	adds r3, r0, r1
	movs r5, #0
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CF90
	ldr r0, [r4, #4]
	orrs r0, r1
	b _0800CF98
	.align 2, 0
_0800CF8C: .4byte gPlayers
_0800CF90:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0800CF98:
	str r0, [r4, #4]
	ldr r2, [r4, #4]
	ldr r0, _0800CFC4 @ =0xFFFEFFFF
	ands r2, r0
	str r2, [r4, #4]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #4]
	ldr r0, _0800CFC8 @ =gStageData
	ldrb r1, [r0, #3]
	adds r6, r0, #0
	cmp r1, #4
	bhi _0800CFCC
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	movs r2, #2
	cmp r0, #0xe8
	bne _0800CFD8
	b _0800CFD6
	.align 2, 0
_0800CFC4: .4byte 0xFFFEFFFF
_0800CFC8: .4byte gStageData
_0800CFCC:
	ldrh r1, [r3, #0x34]
	ldr r0, _0800CFF8 @ =0x00000203
	movs r2, #2
	cmp r1, r0
	bne _0800CFD8
_0800CFD6:
	movs r2, #1
_0800CFD8:
	adds r0, r2, #0
	cmp r0, #1
	bne _0800D034
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0800D00E
	cmp r0, #1
	bgt _0800CFFC
	cmp r0, #0
	beq _0800D006
	b _0800D026
	.align 2, 0
_0800CFF8: .4byte 0x00000203
_0800CFFC:
	cmp r0, #2
	beq _0800D016
	cmp r0, #4
	beq _0800D01E
	b _0800D026
_0800D006:
	movs r0, #0xb0
	strh r0, [r4, #0x30]
	movs r0, #0x5f
	b _0800D024
_0800D00E:
	movs r0, #0xc9
	strh r0, [r4, #0x30]
	adds r0, #0x39
	b _0800D024
_0800D016:
	movs r0, #0xe1
	strh r0, [r4, #0x30]
	adds r0, #0xc4
	b _0800D024
_0800D01E:
	ldr r0, _0800D02C @ =0x0000010B
	strh r0, [r4, #0x30]
	ldr r0, _0800D030 @ =0x000002EB
_0800D024:
	strh r0, [r4, #0x34]
_0800D026:
	ldrh r0, [r3, #0x36]
	strh r0, [r4, #0x36]
	b _0800D06C
	.align 2, 0
_0800D02C: .4byte 0x0000010B
_0800D030: .4byte 0x000002EB
_0800D034:
	cmp r0, #2
	bne _0800D06C
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0800D05E
	cmp r0, #1
	bgt _0800D050
	cmp r0, #0
	beq _0800D05A
	b _0800D06C
_0800D050:
	cmp r0, #2
	beq _0800D062
	cmp r0, #4
	beq _0800D066
	b _0800D06C
_0800D05A:
	movs r0, #0xaf
	b _0800D06A
_0800D05E:
	movs r0, #0xc8
	b _0800D06A
_0800D062:
	movs r0, #0xe0
	b _0800D06A
_0800D066:
	movs r0, #0x85
	lsls r0, r0, #1
_0800D06A:
	strh r0, [r4, #0x30]
_0800D06C:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bls _0800D090
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r2, #0x1c
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	beq _0800D090
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bne _0800D0A0
_0800D090:
	ldrh r0, [r3, #0x30]
	subs r0, #0xe7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0800D0B8
	movs r5, #1
	b _0800D0BC
_0800D0A0:
	ldrh r1, [r3, #0x34]
	ldr r2, _0800D0D4 @ =0xFFFFFDFE
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0800D0B8
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800D0B8
	movs r5, #1
_0800D0B8:
	cmp r5, #0
	beq _0800D134
_0800D0BC:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D0D8
	ldr r0, [r4, #0x14]
	movs r1, #0x90
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0800D0DE
	.align 2, 0
_0800D0D4: .4byte 0xFFFFFDFE
_0800D0D8:
	ldr r0, [r4, #0x14]
	ldr r2, _0800D118 @ =0xFFFFF700
	adds r0, r0, r2
_0800D0DE:
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	ldr r0, [r3, #4]
	ldr r1, _0800D11C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r3, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldr r1, _0800D120 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D124
	adds r0, r4, #0
	bl sub_800E150
	b _0800D192
	.align 2, 0
_0800D118: .4byte 0xFFFFF700
_0800D11C: .4byte 0xFDFFFFFF
_0800D120: .4byte 0xDDFFFFBF
_0800D124:
	ldr r1, _0800D130 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800D192
	.align 2, 0
_0800D130: .4byte sub_800DF10
_0800D134:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	cmp r0, #0
	bge _0800D180
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D158
	ldr r0, [r4, #0x14]
	movs r2, #0x90
	lsls r2, r2, #4
	b _0800D15C
_0800D158:
	ldr r0, [r4, #0x14]
	ldr r2, _0800D174 @ =0xFFFFF700
_0800D15C:
	adds r0, r0, r2
	str r0, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D178
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	b _0800D17E
	.align 2, 0
_0800D174: .4byte 0xFFFFF700
_0800D178:
	ldr r0, [r4, #0x10]
	ldr r2, _0800D198 @ =0xFFFFF000
	adds r0, r0, r2
_0800D17E:
	str r0, [r4, #0x10]
_0800D180:
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	bl sub_8015064
_0800D192:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D198: .4byte 0xFFFFF000

	thumb_func_start sub_800D19C
sub_800D19C: @ 0x0800D19C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800D220 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800D1BC
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800D1BC
	adds r0, r4, #0
	ldr r1, _0800D224 @ =0x00000119
	bl sub_8004F10
_0800D1BC:
	ldr r0, [r4, #4]
	ldr r1, _0800D228 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r2, #0
	strb r2, [r0]
	adds r0, #0x6a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #4
	strh r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0800D22C @ =0x22000004
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xb
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r3, [r0]
	ldr r0, [r3, #0x14]
	ldr r1, _0800D230 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x14]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf
	strh r0, [r1]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x18]
	strh r2, [r4, #0x1a]
	ldr r1, _0800D234 @ =sub_800D500
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D220: .4byte gStageData
_0800D224: .4byte 0x00000119
_0800D228: .4byte 0xDC510BA1
_0800D22C: .4byte 0x22000004
_0800D230: .4byte 0xFFFFBFFF
_0800D234: .4byte sub_800D500

	thumb_func_start sub_800D238
sub_800D238: @ 0x0800D238
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
	ldr r3, [r5, #4]
	ldr r0, _0800D2AC @ =0xFFFEFFFF
	ands r3, r0
	str r3, [r5, #4]
	ldr r2, _0800D2B0 @ =gPlayers
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
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r0, r2
	orrs r3, r0
	str r3, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D306
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	ands r0, r2
	cmp r0, #0
	beq _0800D2B8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r6, [sp]
	ldr r3, _0800D2B4 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80519EC
	cmp r0, #0x27
	bgt _0800D2DA
	b _0800D2DE
	.align 2, 0
_0800D2AC: .4byte 0xFFFEFFFF
_0800D2B0: .4byte gPlayers
_0800D2B4: .4byte sub_805217C
_0800D2B8:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	str r6, [sp]
	ldr r4, _0800D2E8 @ =sub_805217C
	str r4, [sp, #4]
	bl sub_80519EC
	cmp r0, #0x27
	bgt _0800D2DA
	movs r6, #1
_0800D2DA:
	cmp r6, #0
	beq _0800D2F0
_0800D2DE:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldr r0, _0800D2EC @ =sub_8006F08
	b _0800D2FC
	.align 2, 0
_0800D2E8: .4byte sub_805217C
_0800D2EC: .4byte sub_8006F08
_0800D2F0:
	movs r0, #0x65
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r0, _0800D328 @ =sub_800D32C
_0800D2FC:
	str r0, [r5]
	adds r0, r5, #0
	movs r1, #0x80
	bl sub_8004E98
_0800D306:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D31E
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8016E00
_0800D31E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D328: .4byte sub_800D32C

	thumb_func_start sub_800D32C
sub_800D32C: @ 0x0800D32C
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800D384
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0800D374
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D360
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D364
_0800D360:
	ldr r0, [r4, #0x14]
	ldr r1, _0800D370 @ =0xFFFFFF00
_0800D364:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _0800D376
	.align 2, 0
_0800D370: .4byte 0xFFFFFF00
_0800D374:
	movs r3, #1
_0800D376:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800D3A4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
_0800D384:
	cmp r3, #0
	beq _0800D3C4
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _0800D3A8 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D3AC
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D3B0
	.align 2, 0
_0800D3A4: .4byte 0xFFFFBFFF
_0800D3A8: .4byte 0x0000FFFF
_0800D3AC:
	ldr r0, [r4, #0x14]
	ldr r1, _0800D3C0 @ =0xFFFFFF00
_0800D3B0:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #0x13
	strh r0, [r4, #0x30]
	b _0800D3FC
	.align 2, 0
_0800D3C0: .4byte 0xFFFFFF00
_0800D3C4:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800D3E8
	ldr r0, _0800D3E4 @ =0x0000FFFE
	strh r0, [r2]
	strh r3, [r4, #0x18]
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _0800D3FC
	.align 2, 0
_0800D3E4: .4byte 0x0000FFFE
_0800D3E8:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800D3FC
	ldr r0, _0800D420 @ =sub_8006F08
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
_0800D3FC:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D41A
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016E00
_0800D41A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D420: .4byte sub_8006F08

	thumb_func_start sub_800D424
sub_800D424: @ 0x0800D424
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800D4B4 @ =gPlayers
	adds r5, r0, r1
	ldr r0, _0800D4B8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800D45A
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800D45A
	adds r0, r4, #0
	ldr r1, _0800D4BC @ =0x00000119
	bl sub_8004F10
_0800D45A:
	ldr r0, [r4, #4]
	ldr r1, _0800D4C0 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800D4C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0800D4C8
	orrs r1, r2
	b _0800D4CE
	.align 2, 0
_0800D4B4: .4byte gPlayers
_0800D4B8: .4byte gStageData
_0800D4BC: .4byte 0x00000119
_0800D4C0: .4byte 0xDC510BA1
_0800D4C4: .4byte 0xFFFFBFFF
_0800D4C8:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_0800D4CE:
	str r1, [r4, #4]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	movs r0, #0x14
	strh r0, [r2]
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8017D18
	ldr r1, _0800D4FC @ =sub_800E924
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D4FC: .4byte sub_800E924

	thumb_func_start sub_800D500
sub_800D500: @ 0x0800D500
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
	ldr r3, [r5, #4]
	ldr r0, _0800D574 @ =0xFFFEFFFF
	ands r3, r0
	str r3, [r5, #4]
	ldr r2, _0800D578 @ =gPlayers
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
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r0, r2
	orrs r3, r0
	str r3, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D5CE
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	ands r0, r2
	cmp r0, #0
	beq _0800D580
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r6, [sp]
	ldr r3, _0800D57C @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80519EC
	cmp r0, #0x27
	bgt _0800D5A2
	b _0800D5A6
	.align 2, 0
_0800D574: .4byte 0xFFFEFFFF
_0800D578: .4byte gPlayers
_0800D57C: .4byte sub_805217C
_0800D580:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	str r6, [sp]
	ldr r4, _0800D5B0 @ =sub_805217C
	str r4, [sp, #4]
	bl sub_80519EC
	cmp r0, #0x27
	bgt _0800D5A2
	movs r6, #1
_0800D5A2:
	cmp r6, #0
	beq _0800D5B8
_0800D5A6:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldr r0, _0800D5B4 @ =sub_800DB30
	b _0800D5C4
	.align 2, 0
_0800D5B0: .4byte sub_805217C
_0800D5B4: .4byte sub_800DB30
_0800D5B8:
	movs r0, #0x65
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r0, _0800D5F0 @ =sub_800D5F4
_0800D5C4:
	str r0, [r5]
	adds r0, r5, #0
	movs r1, #0x80
	bl sub_8004E98
_0800D5CE:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D5E6
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8016E00
_0800D5E6:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D5F0: .4byte sub_800D5F4

	thumb_func_start sub_800D5F4
sub_800D5F4: @ 0x0800D5F4
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800D64C
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0800D63C
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D628
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D62C
_0800D628:
	ldr r0, [r4, #0x14]
	ldr r1, _0800D638 @ =0xFFFFFF00
_0800D62C:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _0800D63E
	.align 2, 0
_0800D638: .4byte 0xFFFFFF00
_0800D63C:
	movs r3, #1
_0800D63E:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800D66C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
_0800D64C:
	cmp r3, #0
	beq _0800D68C
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _0800D670 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D674
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D678
	.align 2, 0
_0800D66C: .4byte 0xFFFFBFFF
_0800D670: .4byte 0x0000FFFF
_0800D674:
	ldr r0, [r4, #0x14]
	ldr r1, _0800D688 @ =0xFFFFFF00
_0800D678:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #0x13
	strh r0, [r4, #0x30]
	b _0800D6C4
	.align 2, 0
_0800D688: .4byte 0xFFFFFF00
_0800D68C:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800D6B0
	ldr r0, _0800D6AC @ =0x0000FFFE
	strh r0, [r2]
	strh r3, [r4, #0x18]
	movs r0, #0xf9
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _0800D6C4
	.align 2, 0
_0800D6AC: .4byte 0x0000FFFE
_0800D6B0:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800D6C4
	ldr r0, _0800D6E8 @ =sub_800DB30
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
_0800D6C4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D6E2
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016E00
_0800D6E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6E8: .4byte sub_800DB30

	thumb_func_start sub_800D6EC
sub_800D6EC: @ 0x0800D6EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800D778 @ =gPlayers
	adds r5, r0, r1
	ldr r0, _0800D77C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800D722
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800D722
	adds r0, r4, #0
	ldr r1, _0800D780 @ =0x00000119
	bl sub_8004F10
_0800D722:
	ldr r0, [r4, #4]
	ldr r1, _0800D784 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800D788 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, [r4, #4]
	ldr r0, _0800D78C @ =0x20000004
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0800D790
	orrs r1, r2
	b _0800D796
	.align 2, 0
_0800D778: .4byte gPlayers
_0800D77C: .4byte gStageData
_0800D780: .4byte 0x00000119
_0800D784: .4byte 0xDC510BA1
_0800D788: .4byte 0xFFFFBFFF
_0800D78C: .4byte 0x20000004
_0800D790:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_0800D796:
	str r1, [r4, #4]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r2]
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8017DB4
	ldr r1, _0800D7C4 @ =sub_800E968
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D7C4: .4byte sub_800E968

	thumb_func_start sub_800D7C8
sub_800D7C8: @ 0x0800D7C8
	push {lr}
	adds r3, r0, #0
	ldr r0, _0800D818 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800D812
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0800D7EA
	cmp r1, #8
	beq _0800D7EA
	cmp r1, #0x10
	bne _0800D812
_0800D7EA:
	ldrh r0, [r3, #0x30]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0800D812
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r1, #3
	ands r1, r0
	cmp r1, #3
	bne _0800D812
	adds r0, r3, #0
	bl sub_8017134
_0800D812:
	pop {r0}
	bx r0
	.align 2, 0
_0800D818: .4byte gStageData

	thumb_func_start sub_800D81C
sub_800D81C: @ 0x0800D81C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0800D834
	cmp r1, #8
	beq _0800D834
	cmp r1, #0x10
	bne _0800D878
_0800D834:
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0800D878
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	adds r1, r0, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r2]
	ldrh r0, [r3, #0x30]
	subs r0, #0xb1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800D86A
	movs r0, #7
	ands r0, r1
	cmp r0, #7
	bne _0800D878
	adds r0, r3, #0
	bl sub_8017258
	b _0800D878
_0800D86A:
	movs r0, #7
	ands r0, r1
	cmp r0, #7
	bne _0800D878
	adds r0, r3, #0
	bl sub_80171C0
_0800D878:
	pop {r0}
	bx r0

	thumb_func_start SetPlayerCallback
SetPlayerCallback: @ 0x0800D87C
	str r1, [r0]
	bx lr

	thumb_func_start sub_800D880
sub_800D880: @ 0x0800D880
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800D8D0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800D8A0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800D8A0
	ldr r1, _0800D8D4 @ =0x00000119
	adds r0, r4, #0
	bl sub_8004F10
_0800D8A0:
	ldr r0, [r4, #4]
	ldr r1, _0800D8D8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x6a
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8D0: .4byte gStageData
_0800D8D4: .4byte 0x00000119
_0800D8D8: .4byte 0xDC510BA1

	thumb_func_start sub_800D8DC
sub_800D8DC: @ 0x0800D8DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	bne _0800D93E
	movs r5, #4
	ands r1, r5
	cmp r1, #0
	bne _0800D914
	adds r0, r4, #0
	bl sub_8005800
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	b _0800D93E
_0800D914:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	ldr r0, [r4, #4]
	ands r0, r5
	cmp r0, #0
	bne _0800D93E
	movs r0, #8
	strh r0, [r4, #0x30]
_0800D93E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Player_800D944
Player_800D944: @ 0x0800D944
	push {lr}
	adds r2, r0, #0
	adds r2, #0x52
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800D95C
	subs r0, r3, #1
	strh r0, [r2]
_0800D95C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0800D970
	ldr r0, _0800D974 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _0800D970
	bl sub_8002508
_0800D970:
	pop {r0}
	bx r0
	.align 2, 0
_0800D974: .4byte gStageData

	thumb_func_start sub_800D978
sub_800D978: @ 0x0800D978
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800D9B0 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Player_8005380
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D9B0: .4byte 0xFFFDFFFF

	thumb_func_start sub_800D9B4
sub_800D9B4: @ 0x0800D9B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800D9E4 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	ldrh r0, [r4, #0x30]
	subs r0, #0xb1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800D9E8
	adds r0, r4, #0
	bl sub_800673C
	b _0800D9EE
	.align 2, 0
_0800D9E4: .4byte 0xFFFDFFFF
_0800D9E8:
	adds r0, r4, #0
	bl sub_8006654
_0800D9EE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800D9F4
sub_800D9F4: @ 0x0800D9F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800DA10 @ =0xFDFFFFBF
	ands r0, r1
	str r0, [r4, #4]
	ldrh r0, [r4, #0x30]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800DA14
	movs r0, #0xd
	b _0800DA16
	.align 2, 0
_0800DA10: .4byte 0xFDFFFFBF
_0800DA14:
	movs r0, #0xc
_0800DA16:
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800DA58 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8019A64
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	ldr r1, _0800DA5C @ =sub_800DA60
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA58: .4byte 0xFFFFBFFF
_0800DA5C: .4byte sub_800DA60

	thumb_func_start sub_800DA60
sub_800DA60: @ 0x0800DA60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DAEE
	adds r0, r4, #0
	bl sub_8016EDC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DAEE
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DA90
	ldr r0, _0800DA8C @ =Player_80077CC
	str r0, [r4]
	b _0800DAEE
	.align 2, 0
_0800DA8C: .4byte Player_80077CC
_0800DA90:
	adds r0, r4, #0
	bl sub_8015568
	cmp r0, #0
	bne _0800DAEE
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800DAB8
	ldr r0, _0800DAB4 @ =Player_8005380
	str r0, [r4]
	b _0800DAEE
	.align 2, 0
_0800DAB4: .4byte Player_8005380
_0800DAB8:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DAEE
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DAEE
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0800DAEE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800DAF4
sub_800DAF4: @ 0x0800DAF4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	ldr r1, _0800DB18 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800DB1C
	adds r0, r2, #0
	bl sub_800E150
	b _0800DB26
	.align 2, 0
_0800DB18: .4byte 0xDDFFFFBF
_0800DB1C:
	ldr r1, _0800DB2C @ =sub_800DF10
	str r1, [r2]
	adds r0, r2, #0
	bl _call_via_r1
_0800DB26:
	pop {r0}
	bx r0
	.align 2, 0
_0800DB2C: .4byte sub_800DF10

	thumb_func_start sub_800DB30
sub_800DB30: @ 0x0800DB30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800DB54 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0800DB4A
	rsbs r1, r1, #0
_0800DB4A:
	ldr r0, _0800DB58 @ =0x0000013F
	cmp r1, r0
	bgt _0800DB5C
	movs r0, #0x13
	b _0800DB5E
	.align 2, 0
_0800DB54: .4byte 0xDDFFFFBF
_0800DB58: .4byte 0x0000013F
_0800DB5C:
	movs r0, #0x14
_0800DB5E:
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FF0
	ldr r1, _0800DB78 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DB78: .4byte sub_800DF10

	thumb_func_start sub_800DB7C
sub_800DB7C: @ 0x0800DB7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800DBDC @ =0xFDFFFFF5
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x90
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _0800DBE0 @ =0x00000257
	adds r0, r4, #0
	bl sub_8004E98
	ldr r1, _0800DBE4 @ =sub_800DCB4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DBDC: .4byte 0xFDFFFFF5
_0800DBE0: .4byte 0x00000257
_0800DBE4: .4byte sub_800DCB4

	thumb_func_start sub_800DBE8
sub_800DBE8: @ 0x0800DBE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800DC44 @ =0xFDFFFFF5
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x8d
	strh r0, [r4, #0x30]
	ldr r1, _0800DC48 @ =0x0000025E
	adds r0, r4, #0
	bl sub_8004E98
	ldr r1, _0800DC4C @ =sub_800DC50
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC44: .4byte 0xFDFFFFF5
_0800DC48: .4byte 0x0000025E
_0800DC4C: .4byte sub_800DC50

	thumb_func_start sub_800DC50
sub_800DC50: @ 0x0800DC50
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DC6C
	ldr r1, _0800DC68 @ =0x0000025E
	adds r0, r4, #0
	bl sub_8004F10
	b _0800DCA0
	.align 2, 0
_0800DC68: .4byte 0x0000025E
_0800DC6C:
	ldr r5, _0800DCA8 @ =0x0000025E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8004ED4
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _0800DCA0
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, [r4, #0x14]
	ldr r1, _0800DCAC @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _0800DCB0 @ =sub_80068EC
	str r0, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8004F10
_0800DCA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCA8: .4byte 0x0000025E
_0800DCAC: .4byte 0xFFFFE000
_0800DCB0: .4byte sub_80068EC

	thumb_func_start sub_800DCB4
sub_800DCB4: @ 0x0800DCB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DCD0
	ldr r1, _0800DCCC @ =0x00000257
	adds r0, r4, #0
	bl sub_8004F10
	b _0800DCFA
	.align 2, 0
_0800DCCC: .4byte 0x00000257
_0800DCD0:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _0800DCFA
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, [r4, #0x14]
	ldr r1, _0800DD00 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _0800DD04 @ =sub_80068EC
	str r0, [r4]
	ldr r1, _0800DD08 @ =0x00000257
	adds r0, r4, #0
	bl sub_8004F10
_0800DCFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD00: .4byte 0xFFFFE000
_0800DD04: .4byte sub_80068EC
_0800DD08: .4byte 0x00000257

	thumb_func_start sub_800DD0C
sub_800DD0C: @ 0x0800DD0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800B530
	ldr r1, _0800DD24 @ =sub_800B5A4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD24: .4byte sub_800B5A4

	thumb_func_start sub_800DD28
sub_800DD28: @ 0x0800DD28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800B530
	ldr r1, _0800DD40 @ =sub_800DD44
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD40: .4byte sub_800DD44

	thumb_func_start sub_800DD44
sub_800DD44: @ 0x0800DD44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800F170
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800DD60
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0800DD64
_0800DD60:
	movs r0, #0x80
	lsls r0, r0, #4
_0800DD64:
	strh r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0800DD8A
	ldr r0, _0800DDAC @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0800DDA6
_0800DD8A:
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x14]
	ldr r1, _0800DDB0 @ =Player_800DDD0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800DDA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DDAC: .4byte gStageData
_0800DDB0: .4byte Player_800DDD0

	thumb_func_start sub_800DDB4
sub_800DDB4: @ 0x0800DDB4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x52
	movs r1, #0xa
	strh r1, [r2]
	ldr r1, _0800DDCC @ =sub_800B628
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800DDCC: .4byte sub_800B628

	thumb_func_start Player_800DDD0
Player_800DDD0: @ 0x0800DDD0
	push {lr}
	adds r3, r0, #0
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800DDF4
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x14]
	subs r0, r0, r1
	b _0800DDFC
_0800DDF4:
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
_0800DDFC:
	str r0, [r3, #0x14]
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldr r2, _0800DE40 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	movs r0, #0xfe
	lsls r0, r0, #0xf
	adds r1, r1, r0
	movs r0, #0xf7
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0800DE36
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0800DE36
	ldr r0, _0800DE44 @ =0x0000011F
	cmp r1, r0
	ble _0800DE3C
_0800DE36:
	adds r0, r3, #0
	bl Player_8005380
_0800DE3C:
	pop {r0}
	bx r0
	.align 2, 0
_0800DE40: .4byte gCamera
_0800DE44: .4byte 0x0000011F

	thumb_func_start sub_800DE48
sub_800DE48: @ 0x0800DE48
	push {lr}
	adds r2, r0, #0
	adds r2, #0x52
	movs r1, #0x1e
	strh r1, [r2]
	ldr r1, _0800DE60 @ =sub_800B6C4
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800DE60: .4byte sub_800B6C4

	thumb_func_start sub_800DE64
sub_800DE64: @ 0x0800DE64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0800DEBC @ =0xFDFFFFF9
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	movs r0, #8
	strh r0, [r4, #0x30]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x18
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8016F28
	ldr r1, _0800DEC0 @ =sub_800B81C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEBC: .4byte 0xFDFFFFF9
_0800DEC0: .4byte sub_800B81C

	thumb_func_start sub_800DEC4
sub_800DEC4: @ 0x0800DEC4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF04
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF04
	ldr r0, _0800DF0C @ =sub_800B9CC
	str r0, [r4]
_0800DF04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DF0C: .4byte sub_800B9CC

	thumb_func_start sub_800DF10
sub_800DF10: @ 0x0800DF10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF54
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF54
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800DF54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800DF5C
sub_800DF5C: @ 0x0800DF5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DF94
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800DF94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800DF9C
sub_800DF9C: @ 0x0800DF9C
	bx lr
	.align 2, 0

	thumb_func_start sub_800DFA0
sub_800DFA0: @ 0x0800DFA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DFE4
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DFE4
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800DFE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800DFEC
sub_800DFEC: @ 0x0800DFEC
	push {lr}
	ldr r1, [r0, #4]
	ldr r2, _0800E014 @ =0xFDFFFFFF
	ands r1, r2
	str r1, [r0, #4]
	movs r3, #0
	movs r2, #0
	movs r1, #0x22
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x1c]
	adds r1, r0, #0
	adds r1, #0x26
	strb r3, [r1]
	ldr r1, _0800E018 @ =sub_800856C
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800E014: .4byte 0xFDFFFFFF
_0800E018: .4byte sub_800856C

	thumb_func_start sub_800E01C
sub_800E01C: @ 0x0800E01C
	push {lr}
	ldr r1, [r0, #4]
	ldr r2, _0800E044 @ =0xFDFFFFFF
	ands r1, r2
	str r1, [r0, #4]
	movs r3, #0
	movs r2, #0
	movs r1, #0x23
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x1c]
	adds r1, r0, #0
	adds r1, #0x26
	strb r3, [r1]
	ldr r1, _0800E048 @ =sub_8008654
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800E044: .4byte 0xFDFFFFFF
_0800E048: .4byte sub_8008654

	thumb_func_start sub_800E04C
sub_800E04C: @ 0x0800E04C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x90
	ldr r0, [r1]
	asrs r0, r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	bl sub_8015064
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800E084
sub_800E084: @ 0x0800E084
	push {r4, lr}
	ldr r1, [r0, #4]
	ldr r2, _0800E0C0 @ =0xFDFFFFBF
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #0x10
	orrs r1, r2
	str r1, [r0, #4]
	movs r4, #0
	movs r1, #0xe
	strh r1, [r0, #0x30]
	adds r1, r0, #0
	adds r1, #0xe0
	ldr r3, [r1]
	ldr r1, [r3, #0x14]
	ldr r2, _0800E0C4 @ =0xFFFFBFFF
	ands r1, r2
	str r1, [r3, #0x14]
	strh r4, [r0, #0x1c]
	ldr r1, [r0, #4]
	movs r2, #1
	eors r1, r2
	str r1, [r0, #4]
	ldr r1, _0800E0C8 @ =sub_800E0CC
	str r1, [r0]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E0C0: .4byte 0xFDFFFFBF
_0800E0C4: .4byte 0xFFFFBFFF
_0800E0C8: .4byte sub_800E0CC

	thumb_func_start sub_800E0CC
sub_800E0CC: @ 0x0800E0CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E144
	adds r0, r4, #0
	bl sub_8014A60
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E144
	adds r0, r4, #0
	bl sub_8016EDC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E144
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800E108
	ldr r0, _0800E14C @ =Player_80077CC
	str r0, [r4]
_0800E108:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E144
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E144
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0800E144:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E14C: .4byte Player_80077CC

	thumb_func_start sub_800E150
sub_800E150: @ 0x0800E150
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800E18C @ =0xFDFFFFFD
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800E190 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800E194 @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E18C: .4byte 0xFDFFFFFD
_0800E190: .4byte 0xFFFFBFFF
_0800E194: .4byte sub_800E198

	thumb_func_start sub_800E198
sub_800E198: @ 0x0800E198
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800E1DC
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E1DC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800E1DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800E1E4
sub_800E1E4: @ 0x0800E1E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E210
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800E210:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E218
sub_0800E218: @ 0x0800E218
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	ldr r1, _0800E24C @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0800E250
	adds r0, r4, #0
	bl sub_0800E27C
	b _0800E272
	.align 2, 0
_0800E24C: .4byte 0xDFFFFFFF
_0800E250:
	strh r0, [r4, #0x30]
	movs r0, #0x1e
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x2e
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _0800E278 @ =sub_800C494
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800E272:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E278: .4byte sub_800C494

	thumb_func_start sub_0800E27C
sub_0800E27C: @ 0x0800E27C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	ldr r1, _0800E2C0 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r1, #0
	movs r0, #8
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x5a
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800E2C4 @ =sub_800C540
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E2C0: .4byte 0xDFFFFFFF
_0800E2C4: .4byte sub_800C540

	thumb_func_start sub_800E2C8
sub_800E2C8: @ 0x0800E2C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E33A
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800E316
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800E316
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_8004E98
_0800E316:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800E32C
	ldr r0, _0800E340 @ =Player_8005380
	str r0, [r4]
_0800E32C:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E33A
	ldr r0, _0800E344 @ =sub_800DB30
	str r0, [r4]
_0800E33A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E340: .4byte Player_8005380
_0800E344: .4byte sub_800DB30

	thumb_func_start sub_800E348
sub_800E348: @ 0x0800E348
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800AF98
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r1, _0800E36C @ =sub_800E3EC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E36C: .4byte sub_800E3EC

	thumb_func_start sub_800E370
sub_800E370: @ 0x0800E370
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800AF98
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #0x1a]
	ldr r1, _0800E394 @ =sub_800E3EC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E394: .4byte sub_800E3EC

	thumb_func_start sub_800E398
sub_800E398: @ 0x0800E398
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800AF98
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	ldr r0, _0800E3BC @ =0x0000FF80
	strh r0, [r4, #0x1a]
	ldr r1, _0800E3C0 @ =sub_800E3EC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3BC: .4byte 0x0000FF80
_0800E3C0: .4byte sub_800E3EC

	thumb_func_start sub_800E3C4
sub_800E3C4: @ 0x0800E3C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800AF98
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x1a]
	ldr r1, _0800E3E8 @ =sub_800E3EC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3E8: .4byte sub_800E3EC

	thumb_func_start sub_800E3EC
sub_800E3EC: @ 0x0800E3EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r6, [r4, #0x74]
	ldr r0, [r4, #0x10]
	cmp r0, r5
	ble _0800E400
	ldr r1, _0800E458 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800E400:
	ldr r0, [r4, #0x10]
	cmp r0, r5
	bge _0800E40E
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800E40E:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	ble _0800E41A
	ldr r1, _0800E458 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800E41A:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bge _0800E428
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800E428:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E452
	ldr r0, _0800E45C @ =0x00000251
	bl sub_8003E28
	ldr r0, _0800E460 @ =0x00000252
	bl sub_8003DF0
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	ldr r1, _0800E464 @ =sub_800B004
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800E452:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E458: .4byte 0xFFFFFE00
_0800E45C: .4byte 0x00000251
_0800E460: .4byte 0x00000252
_0800E464: .4byte sub_800B004

	thumb_func_start sub_800E468
sub_800E468: @ 0x0800E468
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800E508
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r1, _0800E48C @ =sub_800B128
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E48C: .4byte sub_800B128

	thumb_func_start sub_800E490
sub_800E490: @ 0x0800E490
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800E508
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r4, #0x1a]
	ldr r1, _0800E4B4 @ =sub_800B128
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4B4: .4byte sub_800B128

	thumb_func_start sub_800E4B8
sub_800E4B8: @ 0x0800E4B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800E508
	movs r1, #0
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r1, _0800E4DC @ =sub_800B128
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4DC: .4byte sub_800B128

	thumb_func_start sub_800E4E0
sub_800E4E0: @ 0x0800E4E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800E508
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r1, _0800E504 @ =sub_800B128
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E504: .4byte sub_800B128

	thumb_func_start sub_800E508
sub_800E508: @ 0x0800E508
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0800E55C @ =0xFDFFFFDF
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	movs r3, #0
	movs r0, #0xb
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800E560 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x1e
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x2e
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E55C: .4byte 0xFDFFFFDF
_0800E560: .4byte 0xFFFFBFFF

	thumb_func_start sub_800E564
sub_800E564: @ 0x0800E564
	push {lr}
	adds r2, r0, #0
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E5C2
	ldr r0, _0800E5B0 @ =sub_800DAF4
	str r0, [r2]
	ldr r0, [r2, #4]
	ldr r1, _0800E5B4 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800E5B8
	adds r0, r2, #0
	bl sub_800E150
	b _0800E5C2
	.align 2, 0
_0800E5B0: .4byte sub_800DAF4
_0800E5B4: .4byte 0xDDFFFFBF
_0800E5B8:
	ldr r1, _0800E5C8 @ =sub_800DF10
	str r1, [r2]
	adds r0, r2, #0
	bl _call_via_r1
_0800E5C2:
	pop {r0}
	bx r0
	.align 2, 0
_0800E5C8: .4byte sub_800DF10

	thumb_func_start sub_800E5CC
sub_800E5CC: @ 0x0800E5CC
	bx lr
	.align 2, 0

	thumb_func_start Player_800E5D0
Player_800E5D0: @ 0x0800E5D0
	push {lr}
	ldr r1, [r0, #4]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #4]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x1c]
	bl sub_800F1C4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_800E5EC
Player_800E5EC: @ 0x0800E5EC
	push {lr}
	ldr r1, [r0, #4]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #4]
	movs r1, #0xfd
	lsls r1, r1, #8
	strh r1, [r0, #0x1c]
	bl sub_800F1C4
	pop {r0}
	bx r0

    @ R0 = Player *
	thumb_func_start Player_800E604
Player_800E604: @ 0x0800E604
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0800E612
	rsbs r1, r1, #0
_0800E612:
	ldr r0, _0800E628 @ =0x000002FF
	cmp r1, r0
	bgt _0800E632
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800E62C
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0800E630
	.align 2, 0
_0800E628: .4byte 0x000002FF
_0800E62C:
	movs r0, #0xc0
	lsls r0, r0, #2
_0800E630:
	strh r0, [r4, #0x1c]
_0800E632:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E66C
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r1, [r4]
	ldr r0, _0800E674 @ =Player_800E604
	cmp r1, r0
	beq _0800E66C
	ldr r1, _0800E678 @ =0x00000257
	adds r0, r4, #0
	bl sub_8004F10
_0800E66C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E674: .4byte Player_800E604
_0800E678: .4byte 0x00000257

	thumb_func_start sub_800E67C
sub_800E67C: @ 0x0800E67C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, _0800E6C0 @ =0xDDFFFFDF
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FF0
	movs r3, #0
	movs r5, #0
	movs r0, #0x13
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800E6C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r3, [r0]
	strh r5, [r4, #0x1c]
	ldr r1, _0800E6C8 @ =sub_800E6CC
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6C0: .4byte 0xDDFFFFDF
_0800E6C4: .4byte 0xFFFFBFFF
_0800E6C8: .4byte sub_800E6CC

	thumb_func_start sub_800E6CC
sub_800E6CC: @ 0x0800E6CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E714
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0800E714
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FE0
	ldr r0, _0800E71C @ =sub_800DAF4
	str r0, [r4]
_0800E714:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E71C: .4byte sub_800DAF4

	thumb_func_start sub_800E720
sub_800E720: @ 0x0800E720
	bx lr
	.align 2, 0

	thumb_func_start sub_800E724
sub_800E724: @ 0x0800E724
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0800E75C @ =0x20000002
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r1, #0
	movs r0, #0xa
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r1, _0800E760 @ =sub_800E764
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E75C: .4byte 0x20000002
_0800E760: .4byte sub_800E764

	thumb_func_start sub_800E764
sub_800E764: @ 0x0800E764
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E798
	ldr r0, [r4, #4]
	ldr r1, _0800E78C @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E794
	ldr r0, _0800E790 @ =sub_800DB30
	b _0800E796
	.align 2, 0
_0800E78C: .4byte 0xDFFFFFFF
_0800E790: .4byte sub_800DB30
_0800E794:
	ldr r0, _0800E7B8 @ =Player_8005380
_0800E796:
	str r0, [r4]
_0800E798:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E7B0
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8017004
_0800E7B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7B8: .4byte Player_8005380

	thumb_func_start sub_800E7BC
sub_800E7BC: @ 0x0800E7BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0800E800 @ =0x22000004
	orrs r0, r1
	str r0, [r4, #4]
	movs r2, #0
	movs r1, #0
	movs r0, #0x5c
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_8012FE0
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004E98
	ldr r1, _0800E804 @ =sub_800C9C4
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E800: .4byte 0x22000004
_0800E804: .4byte sub_800C9C4

	thumb_func_start sub_800E808
sub_800E808: @ 0x0800E808
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0800E81E
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _0800E81E
	adds r0, #1
	strh r0, [r4, #0x36]
_0800E81E:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800E83E
	ldrh r0, [r4, #0x36]
	cmp r0, #2
	bne _0800E83E
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r0, _0800E87C @ =sub_800DF10
	str r0, [r4]
_0800E83E:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E874
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800E874:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E87C: .4byte sub_800DF10

	thumb_func_start sub_800E880
sub_800E880: @ 0x0800E880
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800E8A8
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _0800E8A4
	ldr r0, _0800E8A0 @ =Player_8005380
	str r0, [r4]
	b _0800E8A8
	.align 2, 0
_0800E8A0: .4byte Player_8005380
_0800E8A4:
	adds r0, #1
	strh r0, [r4, #0x36]
_0800E8A8:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E8D8
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0800E8D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E8E0
sub_0800E8E0: @ 0x0800E8E0
	push {r4, lr}
	ldr r1, [r0, #4]
	movs r2, #0x88
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r0, #4]
	movs r4, #0
	movs r1, #0xb
	strh r1, [r0, #0x30]
	adds r1, r0, #0
	adds r1, #0xe0
	ldr r3, [r1]
	ldr r1, [r3, #0x14]
	ldr r2, _0800E91C @ =0xFFFFBFFF
	ands r1, r2
	str r1, [r3, #0x14]
	adds r2, r0, #0
	adds r2, #0x52
	movs r1, #0xa
	strh r1, [r2]
	strh r4, [r0, #0x1c]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0800E920 @ =sub_800D238
	str r1, [r0]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E91C: .4byte 0xFFFFBFFF
_0800E920: .4byte sub_800D238

	thumb_func_start sub_800E924
sub_800E924: @ 0x0800E924
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E95A
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016E00
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E95A
	ldr r0, [r4, #4]
	ldr r1, _0800E960 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, _0800E964 @ =Player_8005380
	str r0, [r4]
_0800E95A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E960: .4byte 0xDFFFFFFF
_0800E964: .4byte Player_8005380

	thumb_func_start sub_800E968
sub_800E968: @ 0x0800E968
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E99A
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E99A
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0800E9A0 @ =sub_800DAF4
	str r0, [r4]
_0800E99A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9A0: .4byte sub_800DAF4

	thumb_func_start sub_800E9A4
sub_800E9A4: @ 0x0800E9A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800E9F4
	ldr r0, _0800E9E8 @ =0xFDFFFFFD
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800E9EC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800E9F0 @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800EA02
	.align 2, 0
_0800E9E8: .4byte 0xFDFFFFFD
_0800E9EC: .4byte 0xFFFFBFFF
_0800E9F0: .4byte sub_800E198
_0800E9F4:
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _0800EA08 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800EA02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA08: .4byte sub_8006C70

	thumb_func_start Player_800EA0C
Player_800EA0C: @ 0x0800EA0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800EA5C
	ldr r0, _0800EA50 @ =0xFDFFFFFD
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #4]
	movs r0, #0x15
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FA0
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800EA54 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _0800EA58 @ =sub_800E198
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800EA6A
	.align 2, 0
_0800EA50: .4byte 0xFDFFFFFD
_0800EA54: .4byte 0xFFFFBFFF
_0800EA58: .4byte sub_800E198
_0800EA5C:
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _0800EA70 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800EA6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA70: .4byte sub_8006C70

	thumb_func_start sub_800EA74
sub_800EA74: @ 0x0800EA74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009D74
	ldrh r1, [r4, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x1a]
	movs r0, #0x6c
	strh r0, [r4, #0x30]
	ldr r1, _0800EAA4 @ =sub_8006C70
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAA4: .4byte sub_8006C70

    thumb_func_start sub_800EAA8
sub_800EAA8:
    bx lr
    .align 2 , 0

	thumb_func_start sub_800EAAC
sub_800EAAC: @ 0x0800EAAC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800EADC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _0800EAD8
	ldr r0, _0800EAE4 @ =gStageData
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_8056120
_0800EAD8:
	ldr r0, _0800EAE8 @ =sub_800EB4C
	str r0, [r4]
_0800EADC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAE4: .4byte gStageData
_0800EAE8: .4byte sub_800EB4C

	thumb_func_start sub_800EAEC
sub_800EAEC: @ 0x0800EAEC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800EB08
	bl sub_8056168
	ldr r0, _0800EB10 @ =sub_800EB4C
	str r0, [r4]
_0800EB08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB10: .4byte sub_800EB4C

	thumb_func_start sub_800EB14
sub_800EB14: @ 0x0800EB14
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EB42
	adds r0, r4, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	bl sub_8056120
	ldr r0, _0800EB48 @ =sub_800EB4C
	str r0, [r4]
_0800EB42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB48: .4byte sub_800EB4C

	thumb_func_start sub_800EB4C
sub_800EB4C: @ 0x0800EB4C
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_800EB58
sub_800EB58: @ 0x0800EB58
	bx lr
	.align 2, 0

	thumb_func_start Player_800EB5C
Player_800EB5C: @ 0x0800EB5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EB94
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800EB94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800EB9C
sub_800EB9C: @ 0x0800EB9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	strh r0, [r4, #0x30]
	movs r0, #0xb1
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8016F28
	ldr r0, [r4, #4]
	ldr r1, _0800EBD0 @ =0xFDFFFFFF
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0800EBD4 @ =sub_800EBD8
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBD0: .4byte 0xFDFFFFFF
_0800EBD4: .4byte sub_800EBD8

	thumb_func_start sub_800EBD8
sub_800EBD8: @ 0x0800EBD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r1, _0800EC18 @ =0x0000066C
	cmp r0, r1
	ble _0800EC10
	movs r0, #1
	strh r0, [r4, #0x30]
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldr r0, _0800EC1C @ =sub_800F228
	str r0, [r4]
_0800EC10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC18: .4byte 0x0000066C
_0800EC1C: .4byte sub_800F228

	thumb_func_start sub_800EC20
sub_800EC20: @ 0x0800EC20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EC5C
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800EC5C
	ldr r0, _0800EC64 @ =Player_8005380
	str r0, [r4]
_0800EC5C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC64: .4byte Player_8005380

	thumb_func_start sub_800EC68
sub_800EC68: @ 0x0800EC68
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800ECD0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0800EC88
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800EC88
	adds r0, r4, #0
	ldr r1, _0800ECD4 @ =0x00000119
	bl sub_8004F10
_0800EC88:
	ldr r0, [r4, #4]
	ldr r1, _0800ECD8 @ =0xDC510BA1
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x6a
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _0800ECDC @ =sub_800ECE0
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECD0: .4byte gStageData
_0800ECD4: .4byte 0x00000119
_0800ECD8: .4byte 0xDC510BA1
_0800ECDC: .4byte sub_800ECE0

	thumb_func_start sub_800ECE0
sub_800ECE0: @ 0x0800ECE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800ED0C
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800ED0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800ED14
sub_800ED14: @ 0x0800ED14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8016F28
	movs r0, #0xa3
	strh r0, [r4, #0x30]
	ldr r1, _0800ED30 @ =sub_800ED4C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED30: .4byte sub_800ED4C

	thumb_func_start sub_800ED34
sub_800ED34: @ 0x0800ED34
	push {lr}
	movs r1, #0xa4
	strh r1, [r0, #0x30]
	ldr r1, _0800ED48 @ =sub_800ED4C
	str r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800ED48: .4byte sub_800ED4C

	thumb_func_start sub_800ED4C
sub_800ED4C: @ 0x0800ED4C
	bx lr
	.align 2, 0

	thumb_func_start sub_800ED50
sub_800ED50: @ 0x0800ED50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x4a
	movs r5, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	adds r0, #0x52
	strh r5, [r0]
	ldr r1, _0800ED7C @ =Player_8008A8C
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED7C: .4byte Player_8008A8C

	thumb_func_start Player_800ED80
Player_800ED80: @ 0x0800ED80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0800EDA2
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _0800EDA2
	bl sub_802785C
_0800EDA2:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800EDC0
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_8008C1C
_0800EDC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800EDC8
sub_800EDC8: @ 0x0800EDC8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0xfd
	lsls r5, r5, #8
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EDDC
	ldr r5, _0800EE10 @ =0x0000FE80
_0800EDDC:
	adds r0, r4, #0
	bl sub_8017058
	cmp r0, #0
	bne _0800EE2E
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EE2E
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x1a]
	cmp r1, r0
	bge _0800EE18
	ldr r0, _0800EE14 @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0800EE18
	strh r5, [r4, #0x1a]
	b _0800EE1E
	.align 2, 0
_0800EE10: .4byte 0x0000FE80
_0800EE14: .4byte gStageData
_0800EE18:
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _0800EE22
_0800EE1E:
	ldr r0, _0800EE34 @ =sub_800EE38
	str r0, [r4]
_0800EE22:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_800EF18
_0800EE2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE34: .4byte sub_800EE38

	thumb_func_start sub_800EE38
sub_800EE38: @ 0x0800EE38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8017058
	cmp r0, #0
	bne _0800EE5C
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EE5C
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_800EF18
_0800EE5C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800EE64
sub_800EE64: @ 0x0800EE64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8017058
	cmp r0, #0
	bne _0800EEBA
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EEBA
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800EE90
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0800EE90
	movs r0, #1
	b _0800EEB2
_0800EE90:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800EEB4
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800EEB4
	ldr r0, _0800EEC0 @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #2
_0800EEB2:
	strh r0, [r4, #0x36]
_0800EEB4:
	adds r0, r4, #0
	bl sub_800EF18
_0800EEBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EEC0: .4byte 0xFFFFBFFF

	thumb_func_start sub_800EEC4
sub_800EEC4: @ 0x0800EEC4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8017058
	cmp r0, #0
	bne _0800EF12
	adds r0, r4, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800EF12
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EF12
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800EF12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800EF18
sub_800EF18: @ 0x0800EF18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EF4A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0800EF4A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800EF50
sub_800EF50: @ 0x0800EF50
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800EF88 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	movs r1, #0x78
	bl sub_8004F10
	movs r0, #0xde
	strh r0, [r4, #0x30]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EF8C
	ldr r0, [r4, #4]
	orrs r0, r1
	b _0800EF94
	.align 2, 0
_0800EF88: .4byte gPlayers
_0800EF8C:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0800EF94:
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_800CCB0
	adds r0, r5, #0
	bl sub_800CB5C
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_800EFB0
sub_800EFB0: @ 0x0800EFB0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800EFE4 @ =gPlayers
	adds r1, r0, r1
	ldr r2, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #0x16
	orrs r2, r0
	str r2, [r1, #4]
	ldr r0, [r4, #4]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0800EFE8
	orrs r2, r3
	b _0800EFEE
	.align 2, 0
_0800EFE4: .4byte gPlayers
_0800EFE8:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_0800EFEE:
	str r2, [r1, #4]
	adds r0, r1, #0
	bl sub_801D978
	adds r0, r4, #0
	bl sub_800CD68
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F004
sub_0800F004: @ 0x0800F004
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800F048 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800F050
	movs r1, #0
	ldr r0, _0800F04C @ =0x0000010D
	strh r0, [r4, #0x30]
	adds r0, r2, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_800D19C
	adds r0, r4, #0
	bl sub_800D6EC
	b _0800F062
	.align 2, 0
_0800F048: .4byte gPlayers
_0800F04C: .4byte 0x0000010D
_0800F050:
	movs r0, #0x86
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r0, r2, #0
	bl sub_0800E8E0
	adds r0, r4, #0
	bl sub_800D424
_0800F062:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800F068
sub_800F068: @ 0x0800F068
	ldr r1, _0800F070 @ =sub_8007368
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F070: .4byte sub_8007368

	thumb_func_start sub_800F074
sub_800F074: @ 0x0800F074
	ldr r1, _0800F07C @ =sub_801A3DC
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F07C: .4byte sub_801A3DC

	thumb_func_start sub_800F080
sub_800F080: @ 0x0800F080
	ldr r1, _0800F088 @ =sub_801A17C
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F088: .4byte sub_801A17C

	thumb_func_start sub_800F08C
sub_800F08C: @ 0x0800F08C
	ldr r1, _0800F094 @ =sub_801A46C
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F094: .4byte sub_801A46C

	thumb_func_start sub_800F098
sub_800F098: @ 0x0800F098
	ldr r1, _0800F0A0 @ =sub_801E7BC
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F0A0: .4byte sub_801E7BC

	thumb_func_start sub_800F0A4
sub_800F0A4: @ 0x0800F0A4
	ldr r1, _0800F0AC @ =sub_8019C24
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F0AC: .4byte sub_8019C24

	thumb_func_start sub_800F0B0
sub_800F0B0: @ 0x0800F0B0
	ldr r1, _0800F0B8 @ =sub_80074B8
	str r1, [r0]
	bx lr
	.align 2, 0
_0800F0B8: .4byte sub_80074B8

	thumb_func_start sub_800F0BC
sub_800F0BC: @ 0x0800F0BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0800F0D6
	adds r0, r4, #0
	bl sub_800F0E8
	adds r0, r4, #0
	bl sub_800F12C
	b _0800F0E2
_0800F0D6:
	adds r0, r4, #0
	bl sub_800F12C
	adds r0, r4, #0
	bl sub_800F0E8
_0800F0E2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800F0E8
sub_800F0E8: @ 0x0800F0E8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r3, sp, #4
	movs r0, #1
	adds r1, r4, #0
	mov r2, sp
	bl sub_8012E18
	adds r2, r0, #0
	cmp r2, #0
	bgt _0800F124
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	movs r0, #0
	strb r1, [r2]
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0800F124:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800F12C
sub_800F12C: @ 0x0800F12C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r3, sp, #4
	movs r0, #0
	adds r1, r4, #0
	mov r2, sp
	bl sub_8012E18
	adds r2, r0, #0
	cmp r2, #0
	bgt _0800F168
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	movs r0, #0
	strb r1, [r2]
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0800F168:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800F170
sub_800F170: @ 0x0800F170
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r6, [r4, #0x74]
	bl sub_8016F28
	ldr r0, [r4, #0x10]
	cmp r0, r5
	ble _0800F188
	ldr r1, _0800F1C0 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800F188:
	ldr r0, [r4, #0x10]
	cmp r0, r5
	bge _0800F196
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0800F196:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	ble _0800F1A2
	ldr r1, _0800F1C0 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800F1A2:
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bge _0800F1B0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0800F1B0:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1C0: .4byte 0xFFFFFE00

	thumb_func_start sub_800F1C4
sub_800F1C4: @ 0x0800F1C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0800F218 @ =0xFDFFFFDF
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016F28
	movs r0, #0x88
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0800F21C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800F220 @ =0x00000257
	adds r0, r4, #0
	bl sub_8004E98
	ldr r1, _0800F224 @ =Player_800E604
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F218: .4byte 0xFDFFFFDF
_0800F21C: .4byte 0xFFFFBFFF
_0800F220: .4byte 0x00000257
_0800F224: .4byte Player_800E604
    
	thumb_func_start sub_800F228
sub_800F228: @ 0x0800F228
	bx lr
	.align 2, 0

	thumb_func_start sub_800F22C
sub_800F22C: @ 0x0800F22C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_800D880
	ldr r1, _0800F2A4 @ =gStageData
	adds r1, #0xac
	movs r3, #0
	movs r2, #0
	movs r0, #0x32
	strh r0, [r1]
	adds r0, #0xdc
	strh r0, [r5, #0x30]
	movs r0, #0x2a
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4c
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	strb r3, [r4, #0xb]
	strb r3, [r4, #7]
	strh r2, [r4, #0xc]
	ldr r1, _0800F2A8 @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r1, #4]
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r3, [r0]
	ldr r4, _0800F2AC @ =sub_801080C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F2A4: .4byte gStageData
_0800F2A8: .4byte gCamera
_0800F2AC: .4byte sub_801080C

	thumb_func_start sub_800F2B0
sub_800F2B0: @ 0x0800F2B0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_800D880
	movs r2, #0
	movs r1, #0
	movs r0, #0x87
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r0, #0x22
	strh r1, [r0]
	ldr r1, _0800F31C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0800F348
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0800F348
	ldr r1, _0800F320 @ =sub_8010F38
	adds r0, r5, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl sub_8010E04
	adds r0, r5, #0
	bl sub_8010E94
	adds r0, r5, #0
	bl sub_800FABC
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r5, r3
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0800F324
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _0800F32A
	.align 2, 0
_0800F31C: .4byte gStageData
_0800F320: .4byte sub_8010F38
_0800F324:
	adds r0, r5, #0
	bl sub_8019A58
_0800F32A:
	ldrh r0, [r5, #0x36]
	cmp r0, #0
	bne _0800F33C
	ldr r0, _0800F338 @ =0x00000111
	strh r0, [r5, #0x30]
	b _0800F368
	.align 2, 0
_0800F338: .4byte 0x00000111
_0800F33C:
	ldr r0, _0800F344 @ =0x0000FFFF
	strh r0, [r5, #0x30]
	b _0800F368
	.align 2, 0
_0800F344: .4byte 0x0000FFFF
_0800F348:
	ldr r0, _0800F370 @ =gStageData
	ldrh r1, [r5, #0x1e]
	ldrh r0, [r0, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _0800F356
	movs r0, #1
_0800F356:
	strb r0, [r4, #0xb]
	ldr r4, _0800F374 @ =sub_801086C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
_0800F368:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F370: .4byte gStageData
_0800F374: .4byte sub_801086C

	thumb_func_start sub_800F378
sub_800F378: @ 0x0800F378
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0]
	ldr r1, _0800F3DC @ =gUnknown_080CE5FC
	ldrb r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r4, #0x30]
	ldr r1, _0800F3E0 @ =gUnknown_080CE61C
	ldrb r0, [r2, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	ldrb r0, [r2, #4]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x1a]
	strb r3, [r2, #6]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8019A64
	movs r0, #0x70
	bl sub_80BA57C
	ldr r5, _0800F3E4 @ =sub_800F3E8
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F3DC: .4byte gUnknown_080CE5FC
_0800F3E0: .4byte gUnknown_080CE61C
_0800F3E4: .4byte sub_800F3E8

	thumb_func_start sub_800F3E8
sub_800F3E8: @ 0x0800F3E8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_8010E4C
	adds r0, r4, #0
	bl sub_8010ED0
	adds r0, r4, #0
	bl sub_800FABC
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _0800F42E
	cmp r1, #0
	bge _0800F420
	adds r0, #0x64
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F42E
	b _0800F42A
_0800F420:
	subs r0, #0x64
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800F42E
_0800F42A:
	movs r0, #0
	strh r0, [r4, #0x18]
_0800F42E:
	ldrh r0, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _0800F456
	cmp r1, #0
	bge _0800F448
	adds r0, #0x64
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F456
	b _0800F452
_0800F448:
	subs r0, #0x64
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800F456
_0800F452:
	movs r0, #0
	strh r0, [r4, #0x1a]
_0800F456:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldrb r0, [r5, #6]
	cmp r0, #8
	beq _0800F468
	cmp r0, #0x14
	beq _0800F47C
	b _0800F49A
_0800F468:
	ldr r0, _0800F478 @ =gUnknown_080CE60C
	ldrb r1, [r5, #4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r4, #0x30]
	b _0800F49A
	.align 2, 0
_0800F478: .4byte gUnknown_080CE60C
_0800F47C:
	movs r0, #0
	strb r0, [r5, #6]
	movs r0, #8
	strh r0, [r5, #0xc]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800F4A0 @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
_0800F49A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F4A0: .4byte sub_800F2B0

	thumb_func_start sub_800F4A4
sub_800F4A4: @ 0x0800F4A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_8010E04
	adds r0, r5, #0
	bl sub_800FD60
	adds r0, r5, #0
	bl sub_8010E94
	adds r0, r5, #0
	bl sub_800FABC
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0800F4E2
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _0800F4E8
_0800F4E2:
	adds r0, r5, #0
	bl sub_8019A58
_0800F4E8:
	ldr r0, _0800F508 @ =gStageData
	ldrh r1, [r5, #0x1e]
	ldrh r0, [r0, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _0800F50C
	ldrh r2, [r4]
	adds r0, r2, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _0800F546
	strh r2, [r4]
	b _0800F546
	.align 2, 0
_0800F508: .4byte gStageData
_0800F50C:
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0x77
	bgt _0800F524
	strh r0, [r4, #2]
	ldr r1, _0800F520 @ =sub_800F2B0
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0800F546
	.align 2, 0
_0800F520: .4byte sub_800F2B0
_0800F524:
	cmp r1, #0xef
	bgt _0800F52E
	movs r0, #0x3c
	strh r0, [r4, #2]
	b _0800F54A
_0800F52E:
	ldr r0, _0800F53C @ =0x00000167
	cmp r1, r0
	bgt _0800F540
	movs r0, #0x78
	strh r0, [r4, #2]
	b _0800F54A
	.align 2, 0
_0800F53C: .4byte 0x00000167
_0800F540:
	movs r0, #0xf0
	strh r0, [r4, #2]
	movs r6, #1
_0800F546:
	cmp r6, #0
	beq _0800F552
_0800F54A:
	ldr r1, _0800F558 @ =sub_80109C0
	adds r0, r5, #0
	bl SetPlayerCallback
_0800F552:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F558: .4byte sub_80109C0

	thumb_func_start sub_800F55C
sub_800F55C: @ 0x0800F55C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_8010E04
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0800F57E
	adds r0, r1, #0
	adds r0, #0x20
	strh r0, [r4, #0x18]
_0800F57E:
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0800F5A2
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _0800F5A8
_0800F5A2:
	adds r0, r4, #0
	bl sub_8019A58
_0800F5A8:
	ldrb r0, [r5, #5]
	subs r0, #1
	strb r0, [r5, #5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800F5BC
	ldr r1, _0800F5C4 @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
_0800F5BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F5C4: .4byte sub_800F2B0

	thumb_func_start sub_800F5C8
sub_800F5C8: @ 0x0800F5C8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0800F600
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _0800F606
_0800F600:
	adds r0, r4, #0
	bl sub_8019A58
_0800F606:
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x3c
	bgt _0800F628
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800F630 @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
_0800F628:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F630: .4byte sub_800F2B0

	thumb_func_start sub_800F634
sub_800F634: @ 0x0800F634
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_8010E4C
	adds r0, r4, #0
	bl sub_8010ED0
	adds r0, r4, #0
	bl sub_800FABC
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0800F66A
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _0800F670
_0800F66A:
	adds r0, r4, #0
	bl sub_8019A58
_0800F670:
	ldrh r6, [r5, #8]
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0800F698
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800F694 @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0800F6BE
	.align 2, 0
_0800F694: .4byte sub_800F2B0
_0800F698:
	movs r3, #1
	ldr r2, _0800F6C4 @ =gStageData
	ldrh r0, [r2, #0x14]
	movs r1, #0xf0
	orrs r0, r1
	ldrh r1, [r2, #0x16]
	orrs r0, r1
	ldrh r1, [r4, #0x20]
	ands r0, r1
	cmp r0, #0
	beq _0800F6B0
	movs r3, #5
_0800F6B0:
	subs r0, r6, r3
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800F6BE
	movs r0, #0
	strh r0, [r5, #8]
_0800F6BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F6C4: .4byte gStageData

	thumb_func_start sub_800F6C8
sub_800F6C8: @ 0x0800F6C8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [r0]
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _0800F6EC
	ldr r0, _0800F72C @ =gUnknown_080CE61C
	ldrb r1, [r2, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	strh r0, [r5, #0x18]
_0800F6EC:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0800F706
	ldr r1, _0800F72C @ =gUnknown_080CE61C
	ldrb r0, [r2, #4]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
_0800F706:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldr r4, _0800F730 @ =sub_800F734
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F72C: .4byte gUnknown_080CE61C
_0800F730: .4byte sub_800F734

	thumb_func_start sub_800F734
sub_800F734: @ 0x0800F734
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_8010E04
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _0800F76E
	cmp r1, #0
	bge _0800F760
	adds r0, #0x64
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F76E
	b _0800F76A
_0800F760:
	subs r0, #0x64
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800F76E
_0800F76A:
	movs r0, #0
	strh r0, [r4, #0x18]
_0800F76E:
	ldrh r0, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _0800F796
	cmp r1, #0
	bge _0800F788
	adds r0, #0x64
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F796
	b _0800F792
_0800F788:
	subs r0, #0x64
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800F796
_0800F792:
	movs r0, #0
	strh r0, [r4, #0x1a]
_0800F796:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0800F7A8
	movs r0, #8
	strh r0, [r5, #0xc]
	ldr r1, _0800F7BC @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
_0800F7A8:
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7BC: .4byte sub_800F2B0

	thumb_func_start sub_800F7C0
sub_800F7C0: @ 0x0800F7C0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_800D880
	movs r3, #0
	movs r2, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	movs r0, #0x2a
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4c
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	ldr r1, _0800F830 @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r1, #4]
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	strh r2, [r4]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r3, [r0]
	ldr r4, _0800F834 @ =sub_80108B8
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F830: .4byte gCamera
_0800F834: .4byte sub_80108B8

	thumb_func_start sub_800F838
sub_800F838: @ 0x0800F838
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	movs r6, #0
	ldr r0, _0800F888 @ =gPlayers
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_8010E04
	adds r0, r5, #0
	bl sub_800FD60
	adds r0, r5, #0
	bl sub_8010E94
	adds r0, r5, #0
	bl sub_800FABC
	ldr r2, _0800F88C @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0800F890
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _0800F890
	ldrh r1, [r2, #0x14]
	ldrh r0, [r2, #0x16]
	orrs r1, r0
	ldrh r0, [r2, #0x18]
	orrs r1, r0
	ldrh r0, [r5, #0x1e]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	b _0800F8A2
	.align 2, 0
_0800F888: .4byte gPlayers
_0800F88C: .4byte gStageData
_0800F890:
	ldr r1, _0800F8BC @ =gStageData
	ldrh r0, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	orrs r0, r1
	ldrh r1, [r5, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _0800F8A2
	movs r6, #1
_0800F8A2:
	cmp r6, #0
	beq _0800F8C0
	ldrh r2, [r4]
	adds r0, r2, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _0800F8FE
	strh r2, [r4]
	b _0800F8FE
	.align 2, 0
_0800F8BC: .4byte gStageData
_0800F8C0:
	movs r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, #0x77
	bgt _0800F8D8
	strh r6, [r4, #2]
	ldr r1, _0800F8D4 @ =sub_80108FC
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0800F8FE
	.align 2, 0
_0800F8D4: .4byte sub_80108FC
_0800F8D8:
	cmp r1, #0xef
	bgt _0800F8E4
	movs r0, #0x3c
	strh r0, [r4, #2]
	movs r7, #2
	b _0800F902
_0800F8E4:
	ldr r0, _0800F8F4 @ =0x00000167
	cmp r1, r0
	bgt _0800F8F8
	movs r0, #0x78
	strh r0, [r4, #2]
	movs r7, #3
	b _0800F902
	.align 2, 0
_0800F8F4: .4byte 0x00000167
_0800F8F8:
	movs r0, #0xf0
	strh r0, [r4, #2]
	movs r7, #4
_0800F8FE:
	cmp r7, #0
	beq _0800F910
_0800F902:
	adds r0, r5, #0
	adds r0, #0x26
	strb r7, [r0]
	ldr r1, _0800F91C @ =sub_8010AA0
	adds r0, r5, #0
	bl SetPlayerCallback
_0800F910:
	adds r0, r5, #0
	bl sub_8010430
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F91C: .4byte sub_8010AA0

	thumb_func_start sub_800F920
sub_800F920: @ 0x0800F920
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _0800F964 @ =gUnknown_080CE63C
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r0, _0800F968 @ =gPlayers
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [r0]
	adds r1, r4, r1
	ldr r6, [r1]
	adds r0, r4, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800F9A0
	cmp r0, #1
	bgt _0800F96C
	cmp r0, #0
	beq _0800F990
	b _0800F9B2
	.align 2, 0
_0800F964: .4byte gUnknown_080CE63C
_0800F968: .4byte gPlayers
_0800F96C:
	cmp r0, #4
	bgt _0800F9B2
	subs r0, #2
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r6, #8]
	ldr r0, _0800F988 @ =0x0000021F
	bl sub_80BA57C
	ldr r1, _0800F98C @ =sub_8010FE0
	b _0800F992
	.align 2, 0
_0800F988: .4byte 0x0000021F
_0800F98C: .4byte sub_8010FE0
_0800F990:
	ldr r1, _0800F99C @ =sub_8010F88
_0800F992:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0800F9B2
	.align 2, 0
_0800F99C: .4byte sub_8010F88
_0800F9A0:
	ldrh r2, [r5]
	adds r0, r2, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _0800F9B2
	strh r2, [r5]
_0800F9B2:
	adds r0, r4, #0
	bl sub_8010430
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_800F9C0
sub_800F9C0: @ 0x0800F9C0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [r0]
	movs r1, #0
	ldr r0, _0800FA10 @ =0x00000133
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0800F9EC
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	ldr r0, _0800FA14 @ =0x00000242
	bl sub_80BA57C
_0800F9EC:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _0800FA18 @ =sub_800FA1C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FA10: .4byte 0x00000133
_0800FA14: .4byte 0x00000242
_0800FA18: .4byte sub_800FA1C

	thumb_func_start sub_800FA1C
sub_800FA1C: @ 0x0800FA1C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_8010E4C
	adds r0, r5, #0
	bl sub_8010ED0
	adds r0, r5, #0
	bl sub_800FABC
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0800FA60
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800FA5C @ =sub_80108FC
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0800FAAE
	.align 2, 0
_0800FA5C: .4byte sub_80108FC
_0800FA60:
	movs r2, #1
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800FA74
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0800FA86
	b _0800FA82
_0800FA74:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FA86
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _0800FA86
_0800FA82:
	adds r0, #1
	strb r0, [r4, #2]
_0800FA86:
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _0800FA9A
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	movs r0, #0
	strb r0, [r4, #2]
_0800FA9A:
	ldrh r1, [r4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0800FAAE
	movs r0, #0
	strh r0, [r4]
_0800FAAE:
	adds r0, r5, #0
	bl sub_8010430
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800FABC
sub_800FABC: @ 0x0800FABC
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, _0800FAEC @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #5
	bne _0800FB04
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0800FAF0
	mov r0, ip
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800FAF0
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #0x10]
	b _0800FB8C
	.align 2, 0
_0800FAEC: .4byte gStageData
_0800FAF0:
	ldrb r0, [r2, #6]
	cmp r0, #1
	bne _0800FB04
	mov r0, ip
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800FB8C
_0800FB04:
	mov r0, ip
	ldr r4, [r0, #0x10]
	asrs r0, r4, #8
	ldr r1, _0800FB4C @ =gCamera
	ldr r5, [r1]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0800FB3C
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0800FB24
	rsbs r2, r2, #0
_0800FB24:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	ble _0800FB3C
	ldr r2, _0800FB50 @ =0xFFF5B000
	adds r0, r4, r2
	mov r2, ip
	str r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0800FB3C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _0800FB54
	ldr r0, [r1]
	adds r0, #8
	b _0800FB5C
	.align 2, 0
_0800FB4C: .4byte gCamera
_0800FB50: .4byte 0xFFF5B000
_0800FB54:
	cmp r0, #0xe8
	ble _0800FB62
	ldr r0, [r1]
	adds r0, #0xe8
_0800FB5C:
	lsls r0, r0, #8
	mov r2, ip
	str r0, [r2, #0x10]
_0800FB62:
	mov r2, ip
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _0800FB7E
	adds r0, r1, #0
	adds r0, #8
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	b _0800FB8C
_0800FB7E:
	cmp r0, #0xa0
	ble _0800FB8C
	adds r0, r1, #0
	adds r0, #0xa0
	lsls r0, r0, #8
	mov r1, ip
	str r0, [r1, #0x14]
_0800FB8C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800FB94
sub_800FB94: @ 0x0800FB94
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0800FBE8 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0800FBCA
	ldrb r3, [r1, #6]
	cmp r3, #0
	bne _0800FBB8
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800FC28
_0800FBB8:
	cmp r3, #1
	bne _0800FBCA
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800FC28
_0800FBCA:
	cmp r4, #0
	bne _0800FBFE
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, _0800FBEC @ =gCamera
	ldr r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _0800FBF0
	adds r0, r1, #0
	adds r0, #8
	b _0800FBF8
	.align 2, 0
_0800FBE8: .4byte gStageData
_0800FBEC: .4byte gCamera
_0800FBF0:
	cmp r0, #0xf0
	ble _0800FC28
	adds r0, r1, #0
	adds r0, #0xf0
_0800FBF8:
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	b _0800FC28
_0800FBFE:
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	ldr r1, _0800FC18 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _0800FC1C
	adds r0, r1, #0
	adds r0, #8
	b _0800FC24
	.align 2, 0
_0800FC18: .4byte gCamera
_0800FC1C:
	cmp r0, #0xa0
	ble _0800FC28
	adds r0, r1, #0
	adds r0, #0xa0
_0800FC24:
	lsls r0, r0, #8
	str r0, [r2, #0x14]
_0800FC28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800FC30
sub_800FC30: @ 0x0800FC30
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldrh r1, [r2, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800FC52
	ldrh r0, [r2, #0x1a]
	subs r0, #0x40
	b _0800FC86
_0800FC52:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800FC60
	ldrh r0, [r2, #0x1a]
	adds r0, #0x40
	b _0800FC86
_0800FC60:
	ldrh r0, [r2, #0x1a]
	movs r4, #0x1a
	ldrsh r1, [r2, r4]
	cmp r1, #0
	beq _0800FC76
	cmp r1, #0
	bge _0800FC72
	adds r0, #0x10
	b _0800FC74
_0800FC72:
	subs r0, #0x10
_0800FC74:
	strh r0, [r2, #0x1a]
_0800FC76:
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0800FC80
	rsbs r0, r0, #0
_0800FC80:
	cmp r0, #0x3f
	bgt _0800FC88
	movs r0, #0
_0800FC86:
	strh r0, [r2, #0x1a]
_0800FC88:
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _0800FC92
	rsbs r0, r0, #0
_0800FC92:
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0800FCAC
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _0800FCAA
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #0x1a]
	b _0800FCAC
_0800FCAA:
	strh r1, [r2, #0x1a]
_0800FCAC:
	ldrh r1, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800FCBC
	ldrh r0, [r2, #0x18]
	subs r0, #0x40
	b _0800FCF0
_0800FCBC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FCCA
	ldrh r0, [r2, #0x18]
	adds r0, #0x40
	b _0800FCF0
_0800FCCA:
	ldrh r0, [r2, #0x18]
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	cmp r1, #0
	beq _0800FCE0
	cmp r1, #0
	bge _0800FCDC
	adds r0, #0x10
	b _0800FCDE
_0800FCDC:
	subs r0, #0x10
_0800FCDE:
	strh r0, [r2, #0x18]
_0800FCE0:
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0800FCEA
	rsbs r0, r0, #0
_0800FCEA:
	cmp r0, #0x3f
	bgt _0800FCF2
	movs r0, #0
_0800FCF0:
	strh r0, [r2, #0x18]
_0800FCF2:
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _0800FCFC
	rsbs r0, r0, #0
_0800FCFC:
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0800FD16
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _0800FD14
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #0x18]
	b _0800FD16
_0800FD14:
	strh r1, [r2, #0x18]
_0800FD16:
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0800FD34
	ldr r4, _0800FD2C @ =0x0000012D
	adds r0, r4, #0
	cmp r3, #0
	bne _0800FD58
	ldr r1, _0800FD30 @ =0x0000010F
	b _0800FD56
	.align 2, 0
_0800FD2C: .4byte 0x0000012D
_0800FD30: .4byte 0x0000010F
_0800FD34:
	cmp r0, #0
	ble _0800FD48
	movs r4, #0x97
	lsls r4, r4, #1
	adds r0, r4, #0
	cmp r3, #0
	bne _0800FD58
	movs r1, #0x88
	lsls r1, r1, #1
	b _0800FD56
_0800FD48:
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r4, #0
	cmp r3, #0
	bne _0800FD58
	movs r1, #0x87
	lsls r1, r1, #1
_0800FD56:
	adds r0, r1, #0
_0800FD58:
	strh r0, [r2, #0x30]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800FD60
sub_800FD60: @ 0x0800FD60
	push {lr}
	adds r1, r0, #0
	ldrh r2, [r1, #0x1e]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0800FD74
	ldrh r0, [r1, #0x1a]
	subs r0, #0x40
	b _0800FDA8
_0800FD74:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800FD82
	ldrh r0, [r1, #0x1a]
	adds r0, #0x40
	b _0800FDA8
_0800FD82:
	ldrh r0, [r1, #0x1a]
	movs r3, #0x1a
	ldrsh r2, [r1, r3]
	cmp r2, #0
	beq _0800FD98
	cmp r2, #0
	bge _0800FD94
	adds r0, #0x10
	b _0800FD96
_0800FD94:
	subs r0, #0x10
_0800FD96:
	strh r0, [r1, #0x1a]
_0800FD98:
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0800FDA2
	rsbs r0, r0, #0
_0800FDA2:
	cmp r0, #0x3f
	bgt _0800FDAA
	movs r0, #0
_0800FDA8:
	strh r0, [r1, #0x1a]
_0800FDAA:
	movs r3, #0x1a
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800FDB4
	rsbs r0, r0, #0
_0800FDB4:
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _0800FDD2
	movs r3, #0x1a
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800FDD0
	ldr r0, _0800FDCC @ =0x0000FE80
	strh r0, [r1, #0x1a]
	b _0800FDD2
	.align 2, 0
_0800FDCC: .4byte 0x0000FE80
_0800FDD0:
	strh r2, [r1, #0x1a]
_0800FDD2:
	ldrh r2, [r1, #0x1e]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0800FDE2
	ldrh r0, [r1, #0x18]
	subs r0, #0x40
	b _0800FE16
_0800FDE2:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800FDF0
	ldrh r0, [r1, #0x18]
	adds r0, #0x40
	b _0800FE16
_0800FDF0:
	ldrh r0, [r1, #0x18]
	movs r3, #0x18
	ldrsh r2, [r1, r3]
	cmp r2, #0
	beq _0800FE06
	cmp r2, #0
	bge _0800FE02
	adds r0, #0x10
	b _0800FE04
_0800FE02:
	subs r0, #0x10
_0800FE04:
	strh r0, [r1, #0x18]
_0800FE06:
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0800FE10
	rsbs r0, r0, #0
_0800FE10:
	cmp r0, #0x3f
	bgt _0800FE18
	movs r0, #0
_0800FE16:
	strh r0, [r1, #0x18]
_0800FE18:
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800FE22
	rsbs r0, r0, #0
_0800FE22:
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _0800FE3E
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800FE3C
	ldr r0, _0800FE38 @ =0x0000FE80
	strh r0, [r1, #0x18]
	b _0800FE3E
	.align 2, 0
_0800FE38: .4byte 0x0000FE80
_0800FE3C:
	strh r2, [r1, #0x18]
_0800FE3E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800FE44
sub_800FE44: @ 0x0800FE44
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r4, #0xf
	ands r4, r0
	cmp r4, #0
	bne _0800FE88
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, [r0]
	ldr r5, _0800FE7C @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #5
	beq _0800FE84
	ldrh r1, [r3, #0x20]
	ldrh r0, [r5, #0x18]
	ands r0, r1
	cmp r0, #0
	bne _0800FE74
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _0800FECE
_0800FE74:
	strb r4, [r2, #0xb]
	ldr r1, _0800FE80 @ =sub_801098C
	b _0800FEA0
	.align 2, 0
_0800FE7C: .4byte gStageData
_0800FE80: .4byte sub_801098C
_0800FE84:
	strb r4, [r2, #0xb]
	b _0800FECE
_0800FE88:
	ldr r2, _0800FEA8 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	beq _0800FEB4
	ldr r0, _0800FEAC @ =gPlayers
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	movs r0, #0x91
	lsls r0, r0, #1
	cmp r1, r0
	bne _0800FECE
	ldr r1, _0800FEB0 @ =sub_80109FC
_0800FEA0:
	adds r0, r3, #0
	bl SetPlayerCallback
	b _0800FECE
	.align 2, 0
_0800FEA8: .4byte gStageData
_0800FEAC: .4byte gPlayers
_0800FEB0: .4byte sub_80109FC
_0800FEB4:
	ldrh r0, [r2, #0x14]
	ldrh r1, [r2, #0x16]
	orrs r0, r1
	ldrh r1, [r2, #0x18]
	orrs r0, r1
	ldrh r1, [r3, #0x20]
	ands r0, r1
	cmp r0, #0
	beq _0800FECE
	ldr r1, _0800FED4 @ =sub_8010DC4
	adds r0, r3, #0
	bl SetPlayerCallback
_0800FECE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FED4: .4byte sub_8010DC4

	thumb_func_start sub_800FED8
sub_800FED8: @ 0x0800FED8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r1, _0800FF18 @ =gStageData
	ldrh r2, [r4, #0x1e]
	ldrh r0, [r1, #0x18]
	ands r0, r2
	cmp r0, #0
	bne _0800FF5E
	ldrh r0, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	orrs r0, r1
	ldrh r1, [r4, #0x20]
	ands r0, r1
	cmp r0, #0
	beq _0800FF5E
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0800FF28
	movs r3, #6
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0800FF1C
	movs r3, #5
	b _0800FF54
	.align 2, 0
_0800FF18: .4byte gStageData
_0800FF1C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800FF54
	movs r3, #7
	b _0800FF54
_0800FF28:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800FF4A
	movs r3, #2
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0800FF3E
	movs r3, #3
	b _0800FF54
_0800FF3E:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800FF54
	movs r3, #1
	b _0800FF54
_0800FF4A:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0800FF54
	movs r3, #4
_0800FF54:
	strb r3, [r5, #4]
	ldr r1, _0800FF64 @ =sub_800F378
	adds r0, r4, #0
	bl SetPlayerCallback
_0800FF5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF64: .4byte sub_800F378

	thumb_func_start sub_800FF68
sub_800FF68: @ 0x0800FF68
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r6, [r0]
	ldr r0, _0800FFF4 @ =sub_8010008
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0800FFF8 @ =sub_8010F34
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	str r4, [r3, #0x10]
	movs r5, #0
	movs r2, #0
	movs r1, #1
	strh r1, [r3, #8]
	strh r2, [r3, #0xa]
	ldr r1, [r4, #0x10]
	str r1, [r3]
	ldr r1, [r4, #0x14]
	str r1, [r3, #4]
	ldr r1, _0800FFFC @ =0x03000014
	adds r0, r0, r1
	ldr r1, [r6, #4]
	str r1, [r0]
	ldr r1, _08010000 @ =0x00000522
	strh r1, [r0, #0xc]
	strb r5, [r0, #0x1a]
	movs r1, #0xb0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r4, _08010004 @ =gCamera
	ldr r2, [r4]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFF4: .4byte sub_8010008
_0800FFF8: .4byte sub_8010F34
_0800FFFC: .4byte 0x03000014
_08010000: .4byte 0x00000522
_08010004: .4byte gCamera

	thumb_func_start sub_8010008
sub_8010008: @ 0x08010008
	push {r4, r5, r6, r7, lr}
	ldr r7, _0801003C @ =gPlayers
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, _08010040 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x14
	adds r4, r1, r0
	ldrh r0, [r5, #0xa]
	adds r6, r2, #0
	cmp r0, #0xb
	beq _08010088
	cmp r0, #0xb
	bgt _08010044
	cmp r0, #0
	beq _08010058
	cmp r0, #0xa
	beq _08010070
	b _080100EE
	.align 2, 0
_0801003C: .4byte gPlayers
_08010040: .4byte gCurTask
_08010044:
	cmp r0, #0x15
	beq _080100B8
	cmp r0, #0x15
	bgt _08010052
	cmp r0, #0x14
	beq _080100A0
	b _080100EE
_08010052:
	cmp r0, #0x64
	beq _080100D8
	b _080100EE
_08010058:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0x45
	ble _080100EE
	ldr r0, _0801006C @ =0x00000522
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xa
	b _080100EC
	.align 2, 0
_0801006C: .4byte 0x00000522
_08010070:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0x77
	ble _080100EE
	movs r0, #0
	ldr r1, _08010084 @ =0x0000051B
	strh r1, [r4, #0xc]
	strb r0, [r4, #0x1a]
	movs r0, #0xb
	b _080100EC
	.align 2, 0
_08010084: .4byte 0x0000051B
_08010088:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xb3
	ble _080100EE
	ldr r0, _0801009C @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0x14
	b _080100EC
	.align 2, 0
_0801009C: .4byte 0x0000051B
_080100A0:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xef
	ble _080100EE
	ldr r0, _080100B4 @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0x15
	b _080100EC
	.align 2, 0
_080100B4: .4byte 0x0000051B
_080100B8:
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080100D0 @ =0x0000012B
	cmp r1, r0
	ble _080100EE
	ldr r0, _080100D4 @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0x64
	b _080100EC
	.align 2, 0
_080100D0: .4byte 0x0000012B
_080100D4: .4byte 0x0000051B
_080100D8:
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08010110 @ =0x00000167
	cmp r1, r0
	ble _080100EE
	ldr r0, _08010114 @ =0x0000051B
	strh r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1a]
	movs r0, #0xc8
_080100EC:
	strh r0, [r5, #0xa]
_080100EE:
	ldr r3, [r5, #0x10]
	ldr r0, [r3, #0x10]
	str r0, [r5]
	ldr r0, [r3, #0x14]
	str r0, [r5, #4]
	ldr r2, _08010118 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	beq _0801011C
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	movs r0, #0x91
	lsls r0, r0, #1
	cmp r1, r0
	beq _08010158
	b _08010150
	.align 2, 0
_08010110: .4byte 0x00000167
_08010114: .4byte 0x0000051B
_08010118: .4byte gStageData
_0801011C:
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0801012E
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _08010158
	b _08010150
_0801012E:
	ldrh r0, [r2, #0x14]
	ldrh r1, [r2, #0x16]
	orrs r0, r1
	ldrh r1, [r2, #0x18]
	orrs r0, r1
	ldrh r1, [r3, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08010150
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08010158
_08010150:
	ldr r0, [r6]
	bl TaskDestroy
	b _0801017A
_08010158:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _08010180 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801017A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010180: .4byte gCamera

	thumb_func_start sub_8010184
sub_8010184: @ 0x08010184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov sl, r2
	ldr r6, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	mov ip, r0
	movs r0, #0xc
	add r0, ip
	mov r8, r0
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08010278
	lsls r0, r3, #0x10
	asrs r2, r0, #0xd
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r1, r2
	ldr r1, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r0
	cmp r1, r3
	beq _08010278
	mov r1, r8
	ldr r0, [r1, #0x20]
	cmp r0, r3
	beq _08010278
	adds r5, r7, r2
	adds r0, r5, #0
	adds r0, #0x24
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r0, _08010274 @ =gCamera
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0x30
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08010210
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08010222
	cmp r2, r1
	blt _08010278
_08010210:
	mov r0, ip
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _08010278
_08010222:
	mov r1, sb
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	movs r1, #0x25
	add r1, r8
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0801025C
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0801026E
	cmp r2, r1
	blt _08010278
_0801025C:
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08010278
_0801026E:
	movs r0, #1
	b _0801027A
	.align 2, 0
_08010274: .4byte gCamera
_08010278:
	movs r0, #0
_0801027A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8010288
sub_8010288: @ 0x08010288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov sl, r2
	ldr r6, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	mov ip, r0
	movs r0, #0xc
	add r0, ip
	mov r8, r0
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801037C
	lsls r0, r3, #0x10
	asrs r2, r0, #0xd
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r1, r2
	ldr r1, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r0
	cmp r1, r3
	beq _0801037C
	mov r1, r8
	ldr r0, [r1, #0x28]
	cmp r0, r3
	beq _0801037C
	adds r5, r7, r2
	adds r0, r5, #0
	adds r0, #0x24
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r0, _08010378 @ =gCamera
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08010314
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08010326
	cmp r2, r1
	blt _0801037C
_08010314:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0801037C
_08010326:
	mov r1, sb
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	movs r1, #0x2d
	add r1, r8
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08010360
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08010372
	cmp r2, r1
	blt _0801037C
_08010360:
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0801037C
_08010372:
	movs r0, #1
	b _0801037E
	.align 2, 0
_08010378: .4byte gCamera
_0801037C:
	movs r0, #0
_0801037E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_801038C
sub_801038C: @ 0x0801038C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r6, r5, #0
	adds r3, r2, #0
	adds r3, #0x4a
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bgt _08010424
	adds r1, r2, #0
	adds r1, #0x48
	movs r7, #0
	movs r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080103EC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, [r0]
	cmp r5, #1
	bne _080103E4
	adds r1, #4
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080103D8
	strh r7, [r4, #8]
	b _08010424
_080103D8:
	movs r0, #0x78
	strh r0, [r3]
	ldr r1, _080103E0 @ =sub_8010BBC
	b _08010410
	.align 2, 0
_080103E0: .4byte sub_8010BBC
_080103E4:
	ldr r1, _080103E8 @ =sub_8010C04
	b _08010410
	.align 2, 0
_080103E8: .4byte sub_8010C04
_080103EC:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, [r0]
	cmp r6, #1
	bne _0801041C
	adds r1, #4
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801040A
	strh r7, [r4]
	b _08010424
_0801040A:
	movs r0, #0x78
	strh r0, [r3]
	ldr r1, _08010418 @ =sub_8010D28
_08010410:
	adds r0, r2, #0
	bl SetPlayerCallback
	b _08010424
	.align 2, 0
_08010418: .4byte sub_8010D28
_0801041C:
	ldr r1, _0801042C @ =sub_800F9C0
	adds r0, r2, #0
	bl SetPlayerCallback
_08010424:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801042C: .4byte sub_800F9C0

	thumb_func_start sub_8010430
sub_8010430: @ 0x08010430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r5, [r0]
	adds r4, r5, #0
	adds r4, #0xc
	movs r7, #0
	mov r8, r7
	ldr r0, _0801046C @ =gStageData
	ldrb r1, [r0, #3]
	adds r6, r0, #0
	cmp r1, #5
	bne _080104D4
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _080104D4
	ldrh r0, [r3, #0x36]
	cmp r0, #5
	bls _08010460
	b _08010576
_08010460:
	lsls r0, r0, #2
	ldr r1, _08010470 @ =_08010474
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801046C: .4byte gStageData
_08010470: .4byte _08010474
_08010474: @ jump table
	.4byte _0801048C @ case 0
	.4byte _080104B0 @ case 1
	.4byte _08010498 @ case 2
	.4byte _080104A4 @ case 3
	.4byte _080104BC @ case 4
	.4byte _080104C8 @ case 5
_0801048C:
	movs r1, #0
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	b _08010576
_08010498:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #9
	strb r0, [r4, #0x1a]
	b _08010576
_080104A4:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	b _08010576
_080104B0:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	b _08010576
_080104BC:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xb
	strb r0, [r4, #0x1a]
	b _08010576
_080104C8:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0x1a]
	b _08010576
_080104D4:
	ldrh r2, [r3, #0x30]
	movs r0, #0x30
	ldrsh r1, [r3, r0]
	movs r7, #0xa
	ldrsh r0, [r5, r7]
	cmp r1, r0
	beq _08010576
	ldr r1, _080104F8 @ =0xFFFFFED4
	adds r0, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bhi _08010572
	lsls r0, r0, #2
	ldr r1, _080104FC @ =_08010500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080104F8: .4byte 0xFFFFFED4
_080104FC: .4byte _08010500
_08010500: @ jump table
	.4byte _08010520 @ case 0
	.4byte _0801052C @ case 1
	.4byte _08010536 @ case 2
	.4byte _08010540 @ case 3
	.4byte _0801054A @ case 4
	.4byte _08010554 @ case 5
	.4byte _0801055E @ case 6
	.4byte _08010568 @ case 7
_08010520:
	movs r1, #0
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	b _08010572
_0801052C:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #9
	b _08010570
_08010536:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xa
	b _08010570
_08010540:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #1
	b _08010570
_0801054A:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xb
	b _08010570
_08010554:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #2
	b _08010570
_0801055E:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xc
	b _08010570
_08010568:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	movs r0, #6
_08010570:
	strb r0, [r4, #0x1a]
_08010572:
	ldrh r0, [r3, #0x30]
	strh r0, [r5, #0xa]
_08010576:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080105A8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrb r1, [r6, #4]
	cmp r1, #1
	bne _080105CA
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080105AC
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _080105B4
	.align 2, 0
_080105A8: .4byte gCamera
_080105AC:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_080105B4:
	str r0, [r4, #8]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080105D4
	movs r7, #1
	mov r8, r7
	b _080105D4
_080105CA:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080105D4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	cmp r0, #0
	bne _080105E6
	adds r0, r4, #0
	bl DisplaySprite
_080105E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80105F0
sub_80105F0: @ 0x080105F0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r4, #0xf
	ands r4, r0
	cmp r4, #0
	bne _08010674
	adds r0, r5, #0
	bl sub_800D880
	ldr r0, [r5, #4]
	movs r1, #0x22
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #4]
	movs r1, #0x67
	strh r1, [r5, #0x30]
	strh r4, [r5, #0x18]
	movs r1, #0x80
	ands r0, r1
	ldr r2, _08010664 @ =0xFFFFFB20
	adds r1, r2, #0
	cmp r0, #0
	beq _0801062C
	ldr r0, _08010668 @ =0xFFFFFD60
	adds r1, r0, #0
_0801062C:
	strh r1, [r5, #0x1a]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x78
	strh r0, [r1]
	subs r1, #2
	movs r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x77
	bl sub_8004E98
	ldr r1, _0801066C @ =0x00000267
	adds r0, r5, #0
	bl sub_8004E98
	adds r0, r5, #0
	bl sub_8019A64
	ldr r4, _08010670 @ =sub_80106E0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _080106CA
	.align 2, 0
_08010664: .4byte 0xFFFFFB20
_08010668: .4byte 0xFFFFFD60
_0801066C: .4byte 0x00000267
_08010670: .4byte sub_80106E0
_08010674:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #4]
	ldr r2, _0801069C @ =gStageData
	adds r0, r2, #0
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _080106A0 @ =0x00008C9F
	cmp r1, r0
	bne _080106A4
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _080106A4
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x96
	lsls r0, r0, #2
	b _080106AA
	.align 2, 0
_0801069C: .4byte gStageData
_080106A0: .4byte 0x00008C9F
_080106A4:
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x78
_080106AA:
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x48
	movs r1, #0
	movs r0, #1
	strh r0, [r2]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	ldr r4, _080106D8 @ =sub_80107B4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
_080106CA:
	ldr r0, _080106DC @ =gStageData
	adds r0, #0xac
	movs r1, #0
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080106D8: .4byte sub_80107B4
_080106DC: .4byte gStageData

	thumb_func_start sub_80106E0
sub_80106E0: @ 0x080106E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r2, _08010708 @ =gCamera
	adds r1, r2, #0
	adds r1, #0x6a
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801070C
	adds r1, r0, #0
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	movs r1, #0x90
	lsls r1, r1, #3
	b _08010722
	.align 2, 0
_08010708: .4byte gCamera
_0801070C:
	ldr r0, [r2]
	cmp r0, #0
	bne _0801071A
	ldr r0, [r4, #0x10]
	ldr r2, _08010790 @ =0xFFFFFC80
	adds r0, r0, r2
	str r0, [r4, #0x10]
_0801071A:
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
_08010722:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	beq _08010758
	ldr r0, _08010794 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08010742
	movs r2, #0
_08010742:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	adds r1, r1, r2
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08010758:
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	movs r1, #0
	bl sub_800FB94
	adds r0, r4, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _080107A8
	ldr r0, _08010794 @ =gStageData
	adds r1, r0, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801079C
	bl sub_8002414
	ldr r1, _08010798 @ =sub_800DF9C
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	strb r0, [r5, #7]
	b _080107A8
	.align 2, 0
_08010790: .4byte 0xFFFFFC80
_08010794: .4byte gStageData
_08010798: .4byte sub_800DF9C
_0801079C:
	subs r0, #1
	strb r0, [r1]
	ldr r0, _080107B0 @ =sub_8002388
	movs r1, #0
	bl sub_8001D58
_080107A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080107B0: .4byte sub_8002388

	thumb_func_start sub_80107B4
sub_80107B4: @ 0x080107B4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x10]
	ldr r0, _080107DC @ =0xFFFFFF00
	adds r3, r4, r0
	str r3, [r2, #0x10]
	ldr r5, _080107E0 @ =gCamera
	adds r1, r5, #0
	adds r1, #0x6a
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	beq _080107E4
	lsls r0, r0, #8
	adds r0, r3, r0
	movs r6, #0x90
	lsls r6, r6, #3
	adds r0, r0, r6
	b _080107FA
	.align 2, 0
_080107DC: .4byte 0xFFFFFF00
_080107E0: .4byte gCamera
_080107E4:
	ldr r0, [r5]
	cmp r0, #0
	bne _080107F0
	ldr r3, _08010808 @ =0xFFFFFB80
	adds r0, r4, r3
	str r0, [r2, #0x10]
_080107F0:
	movs r4, #0
	ldrsh r1, [r1, r4]
	lsls r1, r1, #8
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
_080107FA:
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl sub_8010430
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010808: .4byte 0xFFFFFB80

	thumb_func_start sub_801080C
sub_801080C: @ 0x0801080C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08010838
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _0801083E
_08010838:
	adds r0, r4, #0
	bl sub_8019A58
_0801083E:
	ldr r1, _08010860 @ =gStageData
	ldrb r0, [r1, #4]
	cmp r0, #3
	bne _0801085A
	movs r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, _08010864 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _08010868 @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
_0801085A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010860: .4byte gStageData
_08010864: .4byte 0xF7FFFFFF
_08010868: .4byte sub_800F2B0

	thumb_func_start sub_801086C
sub_801086C: @ 0x0801086C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_800FC30
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801089E
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _080108A4
_0801089E:
	adds r0, r4, #0
	bl sub_8019A58
_080108A4:
	adds r0, r4, #0
	bl sub_800FE44
	adds r0, r4, #0
	bl sub_800FED8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80108B8
sub_80108B8: @ 0x080108B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	bl sub_8010430
	ldr r0, _080108F0 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _080108EA
	ldr r0, [r4, #4]
	ldr r1, _080108F4 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _080108F8 @ =sub_80108FC
	adds r0, r4, #0
	bl SetPlayerCallback
_080108EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080108F0: .4byte gStageData
_080108F4: .4byte 0xF7FFFFFF
_080108F8: .4byte sub_80108FC

	thumb_func_start sub_80108FC
sub_80108FC: @ 0x080108FC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	movs r2, #0
	movs r1, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r0, #0x22
	strh r1, [r0]
	ldr r1, _0801093C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08010944
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08010944
	ldr r4, _08010940 @ =sub_8010F88
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08010954
	.align 2, 0
_0801093C: .4byte gStageData
_08010940: .4byte sub_8010F88
_08010944:
	ldr r4, _0801095C @ =sub_8010960
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
_08010954:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801095C: .4byte sub_8010960

	thumb_func_start sub_8010960
sub_8010960: @ 0x08010960
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_800FC30
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	bl sub_800FE44
	adds r0, r4, #0
	bl sub_8010430
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801098C
sub_801098C: @ 0x0801098C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0]
	movs r1, #0
	movs r0, #0x91
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	strh r1, [r2]
	strh r1, [r2, #2]
	ldr r5, _080109BC @ =sub_800F4A4
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080109BC: .4byte sub_800F4A4

	thumb_func_start sub_80109C0
sub_80109C0: @ 0x080109C0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0]
	movs r1, #0
	ldr r0, _080109F4 @ =0x00000123
	strh r0, [r4, #0x30]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	movs r0, #0x14
	strb r0, [r2, #5]
	ldr r5, _080109F8 @ =sub_800F55C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080109F4: .4byte 0x00000123
_080109F8: .4byte sub_800F55C

	thumb_func_start sub_80109FC
sub_80109FC: @ 0x080109FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #8]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_800FF68
	ldr r5, _08010A38 @ =sub_8010A3C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010A38: .4byte sub_8010A3C

	thumb_func_start sub_8010A3C
sub_8010A3C: @ 0x08010A3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08010A70 @ =gPlayers
	ldr r1, [r0, #0x10]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r4, #0x10]
	ldr r1, [r0, #0x14]
	str r1, [r4, #0x14]
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	movs r0, #0x91
	lsls r0, r0, #1
	cmp r1, r0
	beq _08010A8E
	cmp r1, r0
	ble _08010A78
	adds r0, #1
	cmp r1, r0
	bne _08010A78
	ldr r1, _08010A74 @ =sub_8010AA0
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08010A8E
	.align 2, 0
_08010A70: .4byte gPlayers
_08010A74: .4byte sub_8010AA0
_08010A78:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08010A9C @ =sub_80108FC
	adds r0, r4, #0
	bl SetPlayerCallback
_08010A8E:
	adds r0, r4, #0
	bl sub_8010430
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010A9C: .4byte sub_80108FC

	thumb_func_start sub_8010AA0
sub_8010AA0: @ 0x08010AA0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	movs r0, #1
	strb r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1a]
	ldr r0, _08010ADC @ =0x0000021F
	bl sub_80BA57C
	ldr r5, _08010AE0 @ =sub_8010AE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010ADC: .4byte 0x0000021F
_08010AE0: .4byte sub_8010AE4

	thumb_func_start sub_8010AE4
sub_8010AE4: @ 0x08010AE4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_8010E04
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _08010B06
	subs r0, #0x40
	strh r0, [r4, #0x18]
	b _08010B1E
_08010B06:
	strb r1, [r5, #8]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08010B38 @ =sub_80108FC
	adds r0, r4, #0
	bl SetPlayerCallback
_08010B1E:
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	bl sub_8010430
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010B38: .4byte sub_80108FC

	thumb_func_start sub_8010B3C
sub_8010B3C: @ 0x08010B3C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	movs r3, #0
	strb r3, [r0, #8]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r3, [r4, #0x1a]
	ldr r5, _08010B78 @ =sub_8010B7C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010B78: .4byte sub_8010B7C

	thumb_func_start sub_8010B7C
sub_8010B7C: @ 0x08010B7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08010B96
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r4, #0x18]
	b _08010B9E
_08010B96:
	ldr r1, _08010BB8 @ =sub_80108FC
	adds r0, r4, #0
	bl SetPlayerCallback
_08010B9E:
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	bl sub_8010430
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010BB8: .4byte sub_80108FC

	thumb_func_start sub_8010BBC
sub_8010BBC: @ 0x08010BBC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08010BF8 @ =0x00000111
	strh r0, [r4, #0x30]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _08010BFC @ =0x00000242
	bl sub_80BA57C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _08010C00 @ =sub_800F5C8
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010BF8: .4byte 0x00000111
_08010BFC: .4byte 0x00000242
_08010C00: .4byte sub_800F5C8

	thumb_func_start sub_8010C04
sub_8010C04: @ 0x08010C04
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0]
	movs r3, #0
	movs r1, #0
	movs r0, #0x92
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	movs r0, #0xf0
	strh r0, [r2, #8]
	strb r3, [r2, #0xa]
	ldr r0, _08010C50 @ =0x00000242
	bl sub_80BA57C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _08010C54 @ =sub_800F634
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010C50: .4byte 0x00000242
_08010C54: .4byte sub_800F634

	thumb_func_start sub_8010C58
sub_8010C58: @ 0x08010C58
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08010C78
	ldr r1, _08010C74 @ =sub_8010C98
	adds r0, r2, #0
	bl SetPlayerCallback
	b _08010C80
	.align 2, 0
_08010C74: .4byte sub_8010C98
_08010C78:
	ldr r1, _08010C84 @ =sub_8010B3C
	adds r0, r2, #0
	bl SetPlayerCallback
_08010C80:
	pop {r0}
	bx r0
	.align 2, 0
_08010C84: .4byte sub_8010B3C

	thumb_func_start sub_8010C88
sub_8010C88: @ 0x08010C88
	push {lr}
	ldr r1, _08010C94 @ =sub_800F6C8
	bl SetPlayerCallback
	pop {r0}
	bx r0
	.align 2, 0
_08010C94: .4byte sub_800F6C8

	thumb_func_start sub_8010C98
sub_8010C98: @ 0x08010C98
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r5, _08010CCC @ =sub_8010CD0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010CCC: .4byte sub_8010CD0

	thumb_func_start sub_8010CD0
sub_8010CD0: @ 0x08010CD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08010CEA
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r4, #0x18]
	b _08010CF2
_08010CEA:
	ldr r1, _08010D18 @ =sub_800F2B0
	adds r0, r4, #0
	bl SetPlayerCallback
_08010CF2:
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08010D1C
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _08010D22
	.align 2, 0
_08010D18: .4byte sub_800F2B0
_08010D1C:
	adds r0, r4, #0
	bl sub_8019A58
_08010D22:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8010D28
sub_8010D28: @ 0x08010D28
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08010D64 @ =0x00000131
	strh r0, [r4, #0x30]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _08010D68 @ =0x00000242
	bl sub_80BA57C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _08010D6C @ =sub_8010D70
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010D64: .4byte 0x00000131
_08010D68: .4byte 0x00000242
_08010D6C: .4byte sub_8010D70

	thumb_func_start sub_8010D70
sub_8010D70: @ 0x08010D70
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x3c
	bgt _08010DB2
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08010DC0 @ =sub_80108FC
	adds r0, r4, #0
	bl SetPlayerCallback
_08010DB2:
	adds r0, r4, #0
	bl sub_8010430
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010DC0: .4byte sub_80108FC

	thumb_func_start sub_8010DC4
sub_8010DC4: @ 0x08010DC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08010DFC @ =gPlayers
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, [r0]
	adds r3, r4, #0
	adds r3, #0x26
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r0, r4, #0
	bl sub_800FF68
	ldr r5, _08010E00 @ =sub_800F838
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010DFC: .4byte gPlayers
_08010E00: .4byte sub_800F838

	thumb_func_start sub_8010E04
sub_8010E04: @ 0x08010E04
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _08010E24 @ =gCamera
	adds r1, r3, #0
	adds r1, #0x6a
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08010E28
	adds r1, r0, #0
	lsls r1, r1, #8
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	movs r1, #0x90
	lsls r1, r1, #3
	b _08010E3E
	.align 2, 0
_08010E24: .4byte gCamera
_08010E28:
	ldr r0, [r3]
	cmp r0, #0
	bne _08010E36
	ldr r0, [r2, #0x10]
	ldr r3, _08010E48 @ =0xFFFFFC80
	adds r0, r0, r3
	str r0, [r2, #0x10]
_08010E36:
	movs r4, #0
	ldrsh r1, [r1, r4]
	lsls r1, r1, #8
	ldr r0, [r2, #0x10]
_08010E3E:
	adds r0, r0, r1
	str r0, [r2, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010E48: .4byte 0xFFFFFC80

	thumb_func_start sub_8010E4C
sub_8010E4C: @ 0x08010E4C
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _08010E6C @ =gCamera
	adds r1, r3, #0
	adds r1, #0x6a
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08010E70
	adds r1, r0, #0
	lsls r1, r1, #8
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	b _08010E86
	.align 2, 0
_08010E6C: .4byte gCamera
_08010E70:
	ldr r0, [r3]
	cmp r0, #0
	bne _08010E7E
	ldr r0, [r2, #0x10]
	ldr r3, _08010E90 @ =0xFFFFFC00
	adds r0, r0, r3
	str r0, [r2, #0x10]
_08010E7E:
	movs r4, #0
	ldrsh r1, [r1, r4]
	lsls r1, r1, #8
	ldr r0, [r2, #0x10]
_08010E86:
	adds r0, r0, r1
	str r0, [r2, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010E90: .4byte 0xFFFFFC00

	thumb_func_start sub_8010E94
sub_8010E94: @ 0x08010E94
	push {lr}
	adds r2, r0, #0
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	beq _08010EC8
	ldr r0, _08010ECC @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08010EB2
	movs r3, #0
_08010EB2:
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	adds r1, r1, r3
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
_08010EC8:
	pop {r0}
	bx r0
	.align 2, 0
_08010ECC: .4byte gStageData

	thumb_func_start sub_8010ED0
sub_8010ED0: @ 0x08010ED0
	push {lr}
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	beq _08010F04
	ldr r0, _08010F08 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08010EEE
	movs r3, #0
_08010EEE:
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	adds r1, r1, r3
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
_08010F04:
	pop {r0}
	bx r0
	.align 2, 0
_08010F08: .4byte gStageData

	thumb_func_start sub_8010F0C
sub_8010F0C: @ 0x08010F0C
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r4, #0xc
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08010F28
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _08010F2E
_08010F28:
	adds r0, r3, #0
	bl sub_8019A58
_08010F2E:
	pop {r4}
	pop {r0}
	bx r0
    
	thumb_func_start sub_8010F34
sub_8010F34: @ 0x08010F34
	bx lr
	.align 2, 0

	thumb_func_start sub_8010F38
sub_8010F38: @ 0x08010F38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08010F64
	subs r0, r2, #1
	strh r0, [r1, #0xc]
	b _08010F6A
_08010F64:
	adds r0, r4, #0
	bl sub_8019A58
_08010F6A:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _08010F78
	ldr r0, _08010F74 @ =0x00000111
	b _08010F7A
	.align 2, 0
_08010F74: .4byte 0x00000111
_08010F78:
	ldr r0, _08010F84 @ =0x0000FFFF
_08010F7A:
	strh r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F84: .4byte 0x0000FFFF

	thumb_func_start sub_8010F88
sub_8010F88: @ 0x08010F88
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08010FD8 @ =gPlayers
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [r0]
	adds r1, r4, r1
	ldr r6, [r1]
	adds r0, r4, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010FCC
	movs r0, #0
	strb r0, [r6, #8]
	strh r0, [r5]
	strh r0, [r5, #2]
	adds r0, r4, #0
	bl sub_800FF68
	ldr r1, _08010FDC @ =sub_800F920
	adds r0, r4, #0
	bl SetPlayerCallback
_08010FCC:
	adds r0, r4, #0
	bl sub_8010430
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010FD8: .4byte gPlayers
_08010FDC: .4byte sub_800F920

	thumb_func_start sub_8010FE0
sub_8010FE0: @ 0x08010FE0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_8010E04
	adds r0, r4, #0
	bl sub_8010E94
	adds r0, r4, #0
	bl sub_800FABC
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011012
	strb r0, [r5, #8]
	ldr r1, _08011020 @ =sub_8010F88
	adds r0, r4, #0
	bl SetPlayerCallback
_08011012:
	adds r0, r4, #0
	bl sub_8010430
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011020: .4byte sub_8010F88

	thumb_func_start sub_8011024
sub_8011024: @ 0x08011024
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r7, #0
	bne _08011038
	mov r7, sp
_08011038:
	cmp r5, #0
	bne _0801103E
	add r5, sp, #4
_0801103E:
	cmp r4, #2
	beq _08011084
	adds r0, r6, #0
	bl sub_80114CC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08011084
	movs r0, #0
	strb r0, [r7]
	movs r0, #0
	str r0, [r5]
	ldrh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08011074
	ldr r1, _08011070 @ =Player_800891C
	adds r0, r6, #0
	bl SetPlayerCallback
	b _080110B8
	.align 2, 0
_08011070: .4byte Player_800891C
_08011074:
	ldr r1, _08011080 @ =Player_8005380
	adds r0, r6, #0
	bl SetPlayerCallback
	b _080110B8
	.align 2, 0
_08011080: .4byte Player_8005380
_08011084:
	cmp r4, #1
	beq _080110A0
	cmp r4, #1
	bgt _08011092
	cmp r4, #0
	beq _0801109C
	b _080110B8
_08011092:
	cmp r4, #2
	beq _080110A4
	cmp r4, #3
	beq _080110A8
	b _080110B8
_0801109C:
	movs r0, #0
	b _080110AA
_080110A0:
	movs r0, #1
	b _080110AA
_080110A4:
	movs r0, #2
	b _080110AA
_080110A8:
	movs r0, #3
_080110AA:
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_80110E8
	adds r2, r0, #0
	b _080110BC
_080110B8:
	movs r0, #0
	b _080110E0
_080110BC:
	ldrb r3, [r7]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080110CA
	movs r0, #0
	b _080110DC
_080110CA:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080110DE
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r3
_080110DC:
	strb r0, [r7]
_080110DE:
	adds r0, r2, #0
_080110E0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80110E8
sub_80110E8: @ 0x080110E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r1, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, r1, #0
	cmp r2, #0
	bne _0801110A
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x10]
_0801110A:
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _08011116
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x14]
_08011116:
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	cmp r1, #1
	beq _080111CC
	cmp r1, #1
	bgt _08011130
	cmp r1, #0
	beq _0801113E
	b _0801135E
_08011130:
	cmp r6, #2
	bne _08011136
	b _08011254
_08011136:
	cmp r6, #3
	bne _0801113C
	b _080112E0
_0801113C:
	b _0801135E
_0801113E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, #2
	mov sl, r0
	movs r5, #0x24
	adds r5, r5, r4
	mov sb, r5
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov r7, sl
	subs r3, r7, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r6, r4, #0
	adds r6, #0x25
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r2, [sp, #0x18]
	subs r1, r2, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0x1a
	ldrsh r0, [r4, r7]
	ldr r7, _080111C4 @ =0x000002FF
	cmp r0, r7
	bgt _0801117A
	movs r0, #0x80
	orrs r2, r0
_0801117A:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _080111C8 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	subs r3, r2, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r7, [sp, #0x18]
	adds r1, r7, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	ldr r7, _080111C4 @ =0x000002FF
	cmp r0, r7
	bgt _080111B2
	movs r0, #0x80
	orrs r2, r0
_080111B2:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r0, _080111C8 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	b _08011358
	.align 2, 0
_080111C4: .4byte 0x000002FF
_080111C8: .4byte sub_805203C
_080111CC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	mov sl, r0
	movs r1, #0x24
	adds r1, r1, r4
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r5, sl
	adds r3, r5, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r6, r4, #0
	adds r6, #0x25
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r7, [sp, #0x18]
	subs r1, r7, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0x1a
	ldrsh r0, [r4, r7]
	ldr r7, _0801124C @ =0x000002FF
	cmp r0, r7
	bgt _08011208
	movs r0, #0x80
	orrs r2, r0
_08011208:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _08011250 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	adds r3, r2, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldr r7, [sp, #0x18]
	adds r1, r7, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	ldr r7, _0801124C @ =0x000002FF
	cmp r0, r7
	bgt _0801123E
	movs r0, #0x80
	orrs r2, r0
_0801123E:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r0, _08011250 @ =sub_805203C
	str r0, [sp, #4]
	b _08011354
	.align 2, 0
_0801124C: .4byte 0x000002FF
_08011250: .4byte sub_805203C
_08011254:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x25
	adds r1, r1, r4
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	subs r2, r2, r0
	mov r8, r2
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	subs r1, r7, #2
	adds r6, r4, #0
	adds r6, #0x24
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _080112D8 @ =0x000002FF
	cmp r0, r3
	bgt _0801128E
	movs r0, #0x80
	orrs r2, r0
_0801128E:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _080112DC @ =sub_805217C
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	subs r3, r2, r0
	adds r1, r7, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	ldr r7, _080112D8 @ =0x000002FF
	cmp r0, r7
	bgt _080112C6
	movs r0, #0x80
	orrs r2, r0
_080112C6:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r0, _080112DC @ =sub_805217C
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	b _08011358
	.align 2, 0
_080112D8: .4byte 0x000002FF
_080112DC: .4byte sub_805217C
_080112E0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x25
	adds r1, r1, r4
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sl
	mov r8, r0
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	subs r1, r7, #2
	adds r6, r4, #0
	adds r6, #0x24
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08011316
	movs r0, #0x80
	orrs r2, r0
_08011316:
	mov r0, sp
	adds r0, #9
	str r0, [sp]
	ldr r0, _08011374 @ =sub_805217C
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #8
	bl sub_80517FC
	mov r8, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	adds r3, r2, r0
	adds r1, r7, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	ldrb r2, [r5]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _0801134A
	movs r0, #0x80
	orrs r2, r0
_0801134A:
	mov r0, sp
	adds r0, #0xa
	str r0, [sp]
	ldr r7, _08011374 @ =sub_805217C
	str r7, [sp, #4]
_08011354:
	adds r0, r3, #0
	movs r3, #8
_08011358:
	bl sub_80517FC
	adds r5, r0, #0
_0801135E:
	cmp r8, r5
	bge _08011378
	mov r1, r8
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r3, [sp, #0x14]
	str r5, [r3]
	b _0801138A
	.align 2, 0
_08011374: .4byte sub_805217C
_08011378:
	adds r1, r5, #0
	mov r0, sp
	adds r0, #0xa
	ldrb r0, [r0]
	ldr r4, [sp, #0x10]
	strb r0, [r4]
	mov r5, r8
	ldr r7, [sp, #0x14]
	str r5, [r7]
_0801138A:
	adds r0, r1, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_801139C
sub_801139C: @ 0x0801139C
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080113B8
	adds r0, r1, #0
	adds r0, #0x29
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	b _0801142E
_080113B8:
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080113DA
	lsls r0, r3, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x17
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080113DA:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	adds r2, #0x20
	cmp r2, #0
	ble _080113EE
	cmp r0, #0
	bgt _080113F6
	lsls r0, r2, #0x18
	b _080113FA
_080113EE:
	cmp r0, #0
	ble _080113F6
	lsls r0, r2, #0x18
	b _080113FA
_080113F6:
	adds r0, #0x1f
	lsls r0, r0, #0x18
_080113FA:
	lsrs r3, r0, #0x18
	lsrs r0, r3, #6
	cmp r0, #1
	beq _0801141A
	cmp r0, #1
	bgt _0801140C
	cmp r0, #0
	beq _08011416
	b _0801142E
_0801140C:
	cmp r0, #2
	beq _0801141E
	cmp r0, #3
	beq _08011422
	b _0801142E
_08011416:
	movs r0, #0
	b _08011424
_0801141A:
	movs r0, #2
	b _08011424
_0801141E:
	movs r0, #1
	b _08011424
_08011422:
	movs r0, #3
_08011424:
	bl sub_80116A4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08011430
_0801142E:
	movs r0, #0
_08011430:
	pop {r1}
	bx r1

	thumb_func_start sub_8011434
sub_8011434: @ 0x08011434
	push {lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08011450
	adds r0, r1, #0
	adds r0, #0x29
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	b _080114C6
_08011450:
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _08011472
	lsls r0, r3, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x17
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08011472:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	adds r2, #0x20
	cmp r2, #0
	ble _08011486
	cmp r0, #0
	bgt _0801148E
	lsls r0, r2, #0x18
	b _08011492
_08011486:
	cmp r0, #0
	ble _0801148E
	lsls r0, r2, #0x18
	b _08011492
_0801148E:
	adds r0, #0x1f
	lsls r0, r0, #0x18
_08011492:
	lsrs r3, r0, #0x18
	lsrs r0, r3, #6
	cmp r0, #1
	beq _080114B2
	cmp r0, #1
	bgt _080114A4
	cmp r0, #0
	beq _080114AE
	b _080114C6
_080114A4:
	cmp r0, #2
	beq _080114B6
	cmp r0, #3
	beq _080114BA
	b _080114C6
_080114AE:
	movs r0, #0
	b _080114BC
_080114B2:
	movs r0, #2
	b _080114BC
_080114B6:
	movs r0, #1
	b _080114BC
_080114BA:
	movs r0, #3
_080114BC:
	bl sub_8011978
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080114C8
_080114C6:
	movs r0, #0
_080114C8:
	pop {r1}
	bx r1

	thumb_func_start sub_80114CC
sub_80114CC: @ 0x080114CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08011554 @ =gCamera
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080114DE
	b _08011692
_080114DE:
	ldr r2, [r4, #0x14]
	asrs r2, r2, #8
	lsls r0, r2, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x25
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	movs r2, #4
	rsbs r2, r2, #0
	ands r6, r2
	mov r3, sp
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldrh r0, [r0]
	subs r0, r0, r1
	ands r0, r2
	strh r0, [r3]
	lsls r1, r6, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08011608
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08011608
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	adds r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #0x30
	bhi _08011608
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801155C
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0801154C
	rsbs r1, r1, #0
_0801154C:
	ldr r0, _08011558 @ =0x000003FF
	cmp r1, r0
	bgt _0801157E
	b _08011608
	.align 2, 0
_08011554: .4byte gCamera
_08011558: .4byte 0x000003FF
_0801155C:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08011566
	rsbs r1, r1, #0
_08011566:
	ldr r0, _080115D8 @ =0x000003FF
	cmp r1, r0
	ble _08011608
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08011576
	rsbs r1, r1, #0
_08011576:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08011608
_0801157E:
	movs r0, #0
	adds r1, r4, #0
	bl sub_80116A4
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	cmp r1, r0
	blt _080115E0
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080115B4
	orrs r1, r2
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8017364
	ldr r1, _080115DC @ =0x00000119
	adds r0, r4, #0
	bl sub_8004E98
_080115B4:
	ldr r1, _080115DC @ =0x00000119
	adds r0, r4, #0
	bl sub_8004ED4
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #1
	b _08011694
	.align 2, 0
_080115D8: .4byte 0x000003FF
_080115DC: .4byte 0x00000119
_080115E0:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080115F4
	ldr r1, _08011600 @ =0x00000119
	adds r0, r4, #0
	bl sub_8004F10
_080115F4:
	ldr r0, [r4, #4]
	ldr r1, _08011604 @ =0xFFFFEFFF
_080115F8:
	ands r0, r1
	str r0, [r4, #4]
	b _08011692
	.align 2, 0
_08011600: .4byte 0x00000119
_08011604: .4byte 0xFFFFEFFF
_08011608:
	mov r0, sp
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _08011678
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #8
	cmp r1, r0
	bgt _08011678
	ldr r2, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08011678
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08011658
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r2, r0
	cmp r2, #0
	beq _08011650
	ldr r1, _0801164C @ =sub_801A504
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08011658
	.align 2, 0
_0801164C: .4byte sub_801A504
_08011650:
	ldr r1, _08011670 @ =sub_801C234
	adds r0, r4, #0
	bl SetPlayerCallback
_08011658:
	ldr r1, _08011674 @ =0x00000119
	adds r0, r4, #0
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	b _080115F8
	.align 2, 0
_08011670: .4byte sub_801C234
_08011674: .4byte 0x00000119
_08011678:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08011692
	ldr r0, _0801169C @ =0xFFFFEFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r1, _080116A0 @ =0x00000119
	adds r0, r4, #0
	bl sub_8004F10
_08011692:
	movs r0, #0
_08011694:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801169C: .4byte 0xFFFFEFFF
_080116A0: .4byte 0x00000119

	thumb_func_start sub_80116A4
sub_80116A4: @ 0x080116A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r1, #0
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x10]
	str r1, [sp, #0xc]
	ldr r2, [r7, #0x14]
	str r2, [sp, #0x10]
	adds r1, r7, #0
	adds r1, #0x27
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	lsrs r1, r0, #0x10
	str r1, [sp, #8]
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _0801174C
	cmp r0, #1
	bgt _080116D8
	cmp r0, #0
	beq _080116E4
	b _08011964
_080116D8:
	cmp r0, #2
	beq _080117A0
	cmp r0, #3
	bne _080116E2
	b _08011808
_080116E2:
	b _08011964
_080116E4:
	ldr r2, [sp, #0x10]
	asrs r5, r2, #8
	movs r0, #0x25
	adds r0, r0, r7
	mov sl, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	ldr r1, [sp, #0xc]
	asrs r4, r1, #8
	subs r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp, #0x1c]
	str r2, [sp]
	ldr r2, _08011748 @ =sub_805217C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	adds r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _08011748 @ =sub_805217C
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	adds r3, r0, #0
	ldr r4, [sp, #0x1c]
	b _08011866
	.align 2, 0
_08011748: .4byte sub_805217C
_0801174C:
	ldr r0, [sp, #0x10]
	asrs r5, r0, #8
	movs r1, #0x25
	adds r1, r1, r7
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, r5, r0
	ldr r2, [sp, #0xc]
	asrs r4, r2, #8
	adds r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	movs r2, #0x28
	adds r2, r2, r7
	mov sl, r2
	str r2, [sp]
	ldr r2, _0801179C @ =sub_805217C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r5, r5, r0
	subs r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _0801179C @ =sub_805217C
	b _080117EE
	.align 2, 0
_0801179C: .4byte sub_805217C
_080117A0:
	ldr r0, [sp, #0xc]
	asrs r5, r0, #8
	movs r1, #0x25
	adds r1, r1, r7
	mov r8, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, r5, r0
	ldr r2, [sp, #0x10]
	asrs r4, r2, #8
	subs r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	subs r1, r1, r2
	movs r2, #0x28
	adds r2, r2, r7
	mov sl, r2
	str r2, [sp]
	ldr r2, _08011804 @ =sub_805203C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r5, r5, r0
	adds r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _08011804 @ =sub_805203C
_080117EE:
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	adds r3, r0, #0
	mov r4, sl
	b _08011866
	.align 2, 0
_08011804: .4byte sub_805203C
_08011808:
	ldr r0, [sp, #0xc]
	asrs r5, r0, #8
	movs r1, #0x25
	adds r1, r1, r7
	mov sl, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	asrs r4, r2, #8
	adds r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp, #0x20]
	str r2, [sp]
	ldr r2, _08011898 @ =sub_805203C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	subs r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _08011898 @ =sub_805203C
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	adds r3, r0, #0
	ldr r4, [sp, #0x20]
_08011866:
	adds r2, r3, #0
	ldr r0, [sp, #0x18]
	cmp r3, r0
	ble _08011870
	adds r2, r0, #0
_08011870:
	cmp r2, #0
	beq _08011912
	cmp r2, #0
	bge _0801189C
	movs r0, #0xe
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08011964
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080118F0
	cmp r0, #1
	ble _080118D6
	cmp r0, #2
	beq _080118FA
	cmp r0, #3
	bne _08011912
	b _08011904
	.align 2, 0
_08011898: .4byte sub_805203C
_0801189C:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080118B0
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	b _080118B4
_080118B0:
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
_080118B4:
	cmp r0, #0
	bge _080118BA
	rsbs r0, r0, #0
_080118BA:
	asrs r0, r0, #8
	adds r0, #3
	cmp r0, #0xb
	ble _080118C4
	movs r0, #0xb
_080118C4:
	cmp r2, r0
	bgt _0801190E
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080118F0
	cmp r0, #1
	bgt _080118DC
_080118D6:
	cmp r0, #0
	beq _080118E6
	b _08011912
_080118DC:
	cmp r0, #2
	beq _080118FA
	cmp r0, #3
	beq _08011904
	b _08011912
_080118E6:
	lsls r0, r2, #8
	ldr r2, [sp, #0x10]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	b _08011912
_080118F0:
	lsls r0, r2, #8
	ldr r1, [sp, #0x10]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b _08011912
_080118FA:
	lsls r0, r2, #8
	ldr r2, [sp, #0xc]
	subs r2, r2, r0
	str r2, [sp, #0xc]
	b _08011912
_08011904:
	lsls r0, r2, #8
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	b _08011912
_0801190E:
	movs r0, #1
	b _08011966
_08011912:
	ldr r2, [sp, #0x18]
	cmp r2, r3
	bge _0801191C
	ldrb r0, [r4]
	b _0801191E
_0801191C:
	ldrb r0, [r6]
_0801191E:
	adds r6, r0, #0
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08011934
	ldr r2, [sp, #0x10]
	str r2, [r7, #0x14]
	b _08011938
_08011934:
	ldr r0, [sp, #0xc]
	str r0, [r7, #0x10]
_08011938:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08011964
	adds r2, r7, #0
	adds r2, #0x26
	strb r6, [r2]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011964
	ldrb r6, [r2]
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	subs r0, #0x40
	strb r0, [r2]
_08011964:
	movs r0, #0
_08011966:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8011978
sub_8011978: @ 0x08011978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r1, #0
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x10]
	str r1, [sp, #0xc]
	ldr r3, [r7, #0x14]
	str r3, [sp, #0x10]
	adds r1, r7, #0
	adds r1, #0x27
	ldrb r1, [r1]
	mov sl, r1
	lsrs r1, r0, #0x10
	str r1, [sp, #8]
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _08011A10
	cmp r0, #1
	bgt _080119AC
	cmp r0, #0
	beq _080119B8
	b _08011B40
_080119AC:
	cmp r0, #2
	beq _08011A74
	cmp r0, #3
	bne _080119B6
	b _08011ADC
_080119B6:
	b _08011B40
_080119B8:
	ldr r2, [sp, #0x10]
	asrs r5, r2, #8
	movs r3, #0x25
	adds r3, r3, r7
	mov sb, r3
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r5, r0
	ldr r1, [sp, #0xc]
	asrs r4, r1, #8
	subs r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r3, _08011A0C @ =sub_805217C
	str r3, [sp, #4]
	mov r2, sl
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x14]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	adds r4, #2
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r3, _08011A0C @ =sub_805217C
	b _08011B30
	.align 2, 0
_08011A0C: .4byte sub_805217C
_08011A10:
	ldr r0, [sp, #0x10]
	asrs r5, r0, #8
	adds r6, r7, #0
	adds r6, #0x25
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r0, r5, r0
	ldr r1, [sp, #0xc]
	asrs r4, r1, #8
	adds r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #8
	rsbs r3, r3, #0
	mov sb, r3
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r2, _08011A70 @ =sub_805217C
	str r2, [sp, #4]
	mov r2, sl
	bl sub_80517FC
	str r0, [sp, #0x14]
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r5, r5, r0
	subs r4, #2
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r0, _08011A70 @ =sub_805217C
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	mov r3, sb
	b _08011B3A
	.align 2, 0
_08011A70: .4byte sub_805217C
_08011A74:
	ldr r1, [sp, #0xc]
	asrs r5, r1, #8
	adds r2, r7, #0
	adds r2, #0x25
	str r2, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r5, r0
	ldr r3, [sp, #0x10]
	asrs r4, r3, #8
	subs r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	movs r3, #8
	rsbs r3, r3, #0
	mov sb, r3
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r2, _08011AD8 @ =sub_805203C
	str r2, [sp, #4]
	mov r2, sl
	bl sub_80517FC
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r5, r5, r0
	adds r4, #2
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r2, _08011AD8 @ =sub_805203C
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	mov r3, sb
	b _08011B3A
	.align 2, 0
_08011AD8: .4byte sub_805203C
_08011ADC:
	ldr r3, [sp, #0xc]
	asrs r5, r3, #8
	movs r0, #0x25
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	ldr r1, [sp, #0x10]
	asrs r4, r1, #8
	adds r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r3, _08011B64 @ =sub_805203C
	str r3, [sp, #4]
	mov r2, sl
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x14]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	subs r4, #2
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r3, _08011B64 @ =sub_805203C
_08011B30:
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	movs r3, #8
_08011B3A:
	bl sub_80517FC
	adds r2, r0, #0
_08011B40:
	adds r0, r2, #0
	ldr r1, [sp, #0x14]
	cmp r2, r1
	ble _08011B4A
	adds r0, r1, #0
_08011B4A:
	ldr r1, [sp, #8]
	lsls r3, r1, #0x10
	cmp r0, #0
	beq _08011B96
	asrs r1, r3, #0x10
	cmp r1, #1
	beq _08011B7C
	cmp r1, #1
	bgt _08011B68
	cmp r1, #0
	beq _08011B72
	b _08011B96
	.align 2, 0
_08011B64: .4byte sub_805203C
_08011B68:
	cmp r1, #2
	beq _08011B86
	cmp r1, #3
	beq _08011B8E
	b _08011B96
_08011B72:
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	b _08011B96
_08011B7C:
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b _08011B96
_08011B86:
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	b _08011B94
_08011B8E:
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
_08011B94:
	str r1, [sp, #0xc]
_08011B96:
	ldr r0, [sp, #0x14]
	cmp r0, r2
	bge _08011BA2
	adds r0, r7, #0
	adds r0, #0x28
	b _08011BA6
_08011BA2:
	adds r0, r7, #0
	adds r0, #0x29
_08011BA6:
	ldrb r0, [r0]
	adds r2, r0, #0
	asrs r0, r3, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08011BBA
	ldr r1, [sp, #0x10]
	str r1, [r7, #0x14]
	b _08011BBE
_08011BBA:
	ldr r3, [sp, #0xc]
	str r3, [r7, #0x10]
_08011BBE:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08011BEA
	adds r3, r7, #0
	adds r3, #0x26
	strb r2, [r3]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011BEA
	ldrb r2, [r3]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r3]
_08011BEA:
	movs r0, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8011BFC
sub_8011BFC: @ 0x08011BFC
	push {r4, r5, lr}
	sub sp, #8
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r1, #0x10]
	asrs r5, r0, #8
	ldr r0, [r1, #0x14]
	asrs r4, r0, #8
	mov r0, ip
	adds r0, #0x29
	strb r2, [r0]
	lsls r0, r2, #0x18
	asrs r3, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x28
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08011C2E
	cmp r3, #0
	bgt _08011C32
	b _08011C38
_08011C2E:
	cmp r3, #0
	bgt _08011C38
_08011C32:
	adds r0, r2, #0
	adds r0, #0x1f
	lsls r0, r0, #0x18
_08011C38:
	lsrs r2, r0, #0x18
	lsrs r3, r2, #6
	cmp r3, #1
	beq _08011CA4
	cmp r3, #1
	bgt _08011C4A
	cmp r3, #0
	beq _08011C54
	b _08011CFC
_08011C4A:
	cmp r3, #2
	beq _08011C78
	cmp r3, #3
	beq _08011CD0
	b _08011CFC
_08011C54:
	adds r0, r4, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	str r3, [sp]
	ldr r1, _08011C74 @ =sub_805217C
	str r1, [sp, #4]
	adds r1, r5, #0
	b _08011CEE
	.align 2, 0
_08011C74: .4byte sub_805217C
_08011C78:
	subs r0, r4, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08011CA0 @ =sub_805217C
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sub_80517FC
	b _08011CFE
	.align 2, 0
_08011CA0: .4byte sub_805217C
_08011CA4:
	subs r0, r5, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08011CCC @ =sub_805203C
	str r1, [sp, #4]
	adds r1, r4, #0
	bl sub_80517FC
	b _08011CFE
	.align 2, 0
_08011CCC: .4byte sub_805203C
_08011CD0:
	adds r0, r5, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08011CF8 @ =sub_805203C
	str r1, [sp, #4]
	adds r1, r4, #0
_08011CEE:
	movs r3, #8
	bl sub_80517FC
	b _08011CFE
	.align 2, 0
_08011CF8: .4byte sub_805203C
_08011CFC:
	movs r0, #0
_08011CFE:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8011D08
sub_8011D08: @ 0x08011D08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0x24
	adds r1, r1, r4
	mov r8, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _08011DC8 @ =0x000002FF
	mov sl, r3
	cmp r0, sl
	bgt _08011D44
	movs r2, #0x80
	orrs r2, r5
_08011D44:
	movs r3, #8
	rsbs r3, r3, #0
	movs r6, #0
	str r6, [sp]
	ldr r0, _08011DCC @ =sub_805203C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011D68
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x18]
_08011D68:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, sl
	bgt _08011D88
	movs r0, #0x80
	orrs r2, r0
_08011D88:
	str r6, [sp]
	mov r0, sb
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011DA6
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x18]
_08011DA6:
	add r3, sp, #0xc
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011DB8
	movs r2, #0
_08011DB8:
	cmp r2, #0
	bne _08011DD0
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _08011DDA
	.align 2, 0
_08011DC8: .4byte 0x000002FF
_08011DCC: .4byte sub_805203C
_08011DD0:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
_08011DDA:
	adds r2, r0, #0
	cmp r2, #0
	bge _08011E60
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011DF8
	rsbs r2, r2, #0
_08011DF8:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8012F10
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08011E2A
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	movs r1, #0xbd
	lsls r1, r1, #4
	cmp r0, r1
	ble _08011E44
	strh r1, [r4, #0x1a]
	b _08011E44
_08011E2A:
	adds r1, r2, #0
	adds r1, #0x10
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08011E3C
	strh r1, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	b _08011E5E
_08011E3C:
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x1a]
_08011E44:
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08011E4E
	rsbs r1, r1, #0
_08011E4E:
	strh r1, [r4, #0x1c]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08011E60
	rsbs r0, r1, #0
_08011E5E:
	strh r0, [r4, #0x1c]
_08011E60:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8011E70
sub_8011E70: @ 0x08011E70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r6, [r0]
	ldr r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r5, r0
	cmp r5, #0
	beq _08011E96
	adds r0, r4, #0
	bl sub_8016E70
	b _08011FA6
_08011E96:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0x24
	adds r1, r1, r4
	mov r8, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r6, #0
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _08011F3C @ =0x000002FF
	mov sl, r3
	cmp r0, sl
	bgt _08011EC0
	movs r2, #0x80
	orrs r2, r6
_08011EC0:
	movs r3, #8
	rsbs r3, r3, #0
	str r5, [sp]
	ldr r0, _08011F40 @ =sub_805203C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011EE2
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	strh r5, [r4, #0x18]
_08011EE2:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r6, #0
	movs r6, #0x1a
	ldrsh r0, [r4, r6]
	cmp r0, sl
	bgt _08011F02
	movs r0, #0x80
	orrs r2, r0
_08011F02:
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011F20
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	strh r5, [r4, #0x18]
_08011F20:
	add r3, sp, #0xc
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08011F44
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _08011F4E
	.align 2, 0
_08011F3C: .4byte 0x000002FF
_08011F40: .4byte sub_805203C
_08011F44:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
_08011F4E:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011FA6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011F62
	rsbs r2, r2, #0
_08011F62:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08011FA2
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x40
	cmp r0, #0
	ble _08011FA2
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_8012F10
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08011F9E
	rsbs r0, r0, #0
_08011F9E:
	strh r0, [r4, #0x1c]
	b _08011FA6
_08011FA2:
	movs r0, #0
	strh r0, [r4, #0x1a]
_08011FA6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8011FB8
sub_8011FB8: @ 0x08011FB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov ip, r0
	ldr r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _08011FFC
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _08011FF8 @ =sub_805203C
	str r2, [sp, #4]
	mov r2, ip
	b _08012030
	.align 2, 0
_08011FF8: .4byte sub_805203C
_08011FFC:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r5, #0x14]
	asrs r6, r0, #8
	mov r2, ip
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, _08012068 @ =0x000002FF
	cmp r1, r0
	bgt _08012022
	movs r0, #0x80
	orrs r2, r0
_08012022:
	movs r3, #8
	rsbs r3, r3, #0
	str r4, [sp]
	ldr r0, _0801206C @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
_08012030:
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _0801204A
	lsls r1, r2, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
_0801204A:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	bne _08012070
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
	b _0801207C
	.align 2, 0
_08012068: .4byte 0x000002FF
_0801206C: .4byte sub_805203C
_08012070:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_0801207C:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080120A6
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012090
	rsbs r2, r2, #0
_08012090:
	lsls r0, r2, #8
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08012110
	movs r0, #0
	strh r0, [r5, #0x1a]
	b _08012110
_080120A6:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08012110
	adds r3, r4, #0
	movs r2, #1
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080120C0
	movs r2, #0
_080120C0:
	cmp r2, #0
	bne _080120D0
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	bl sub_8011024
	b _080120DC
_080120D0:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_080120DC:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012110
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080120F0
	rsbs r2, r2, #0
_080120F0:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x26
	movs r4, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8012F10
	strh r4, [r5, #0x1a]
	ldrh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08012110:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8012118
sub_8012118: @ 0x08012118
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r7, [r0]
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _08012154
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _08012150 @ =sub_805203C
	str r2, [sp, #4]
	adds r2, r7, #0
	b _08012184
	.align 2, 0
_08012150: .4byte sub_805203C
_08012154:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r6, r0, r1
	ldr r0, [r5, #0x14]
	asrs r4, r0, #8
	adds r2, r7, #0
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	ldr r0, _080121BC @ =0x000002FF
	cmp r1, r0
	bgt _0801217A
	movs r0, #0x80
	orrs r2, r0
_0801217A:
	str r3, [sp]
	ldr r0, _080121C0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
_08012184:
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _080121A0
	lsls r1, r2, #8
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
_080121A0:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	bne _080121C4
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
	b _080121D0
	.align 2, 0
_080121BC: .4byte 0x000002FF
_080121C0: .4byte sub_805203C
_080121C4:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_080121D0:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080121FA
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080121E4
	rsbs r2, r2, #0
_080121E4:
	lsls r0, r2, #8
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08012264
	movs r0, #0
	strh r0, [r5, #0x1a]
	b _08012264
_080121FA:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08012264
	adds r3, r4, #0
	movs r2, #1
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012214
	movs r2, #0
_08012214:
	cmp r2, #0
	bne _08012224
	movs r0, #2
	adds r1, r5, #0
	add r2, sp, #8
	bl sub_8011024
	b _08012230
_08012224:
	movs r0, #3
	adds r1, r5, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_8011024
_08012230:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012264
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012244
	rsbs r2, r2, #0
_08012244:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x26
	movs r4, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8012F10
	strh r4, [r5, #0x1a]
	ldrh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08012264:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801226C
sub_801226C: @ 0x0801226C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	movs r3, #0x18
	ldrsh r2, [r4, r3]
	str r2, [sp, #0x10]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x14]
	ldr r2, [sp, #8]
	asrs r0, r2, #8
	subs r0, #3
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, r0, r1
	ldr r3, [sp, #0xc]
	asrs r6, r3, #8
	adds r2, r5, #0
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _08012330 @ =0x000002FF
	mov sl, r3
	cmp r0, sl
	bgt _080122B8
	movs r2, #0x80
	orrs r2, r5
_080122B8:
	movs r3, #8
	rsbs r3, r3, #0
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	ldr r0, _08012334 @ =sub_805203C
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_80517FC
	cmp r0, #0
	bgt _080122DC
	lsls r1, r0, #8
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
_080122DC:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, sl
	bgt _080122FA
	movs r0, #0x80
	orrs r2, r0
_080122FA:
	mov r0, sb
	str r0, [sp]
	mov r5, r8
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _08012316
	lsls r1, r0, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_08012316:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08012338
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	b _08012344
	.align 2, 0
_08012330: .4byte 0x000002FF
_08012334: .4byte sub_805203C
_08012338:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
_08012344:
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r3, sp
	ldrh r3, [r3, #0x10]
	strh r3, [r4, #0x18]
	mov r5, sp
	ldrh r5, [r5, #0x14]
	strh r5, [r4, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8012368
sub_8012368: @ 0x08012368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	movs r3, #0x18
	ldrsh r2, [r4, r3]
	str r2, [sp, #0x10]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x14]
	ldr r2, [sp, #8]
	asrs r0, r2, #8
	subs r0, #3
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, r0, r1
	ldr r3, [sp, #0xc]
	asrs r6, r3, #8
	adds r2, r5, #0
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _08012434 @ =0x000002FF
	mov sl, r3
	cmp r0, sl
	bgt _080123B4
	movs r2, #0x80
	orrs r2, r5
_080123B4:
	movs r3, #8
	rsbs r3, r3, #0
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	ldr r0, _08012438 @ =sub_805203C
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_80517FC
	cmp r0, #0
	bgt _080123D8
	lsls r1, r0, #8
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
_080123D8:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, sl
	bgt _080123F6
	movs r0, #0x80
	orrs r2, r0
_080123F6:
	mov r0, sb
	str r0, [sp]
	mov r5, r8
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _08012412
	lsls r1, r0, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_08012412:
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012422
	movs r2, #0
_08012422:
	cmp r2, #0
	bne _0801243C
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	b _08012448
	.align 2, 0
_08012434: .4byte 0x000002FF
_08012438: .4byte sub_805203C
_0801243C:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
_08012448:
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r3, sp
	ldrh r3, [r3, #0x10]
	strh r3, [r4, #0x18]
	mov r5, sp
	ldrh r5, [r5, #0x14]
	strh r5, [r4, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_801246C
sub_801246C: @ 0x0801246C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	str r2, [sp, #0x10]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	asrs r0, r1, #8
	subs r0, #3
	movs r2, #0x25
	adds r2, r2, r4
	mov r8, r2
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r6, r0, r1
	ldr r0, [sp, #8]
	asrs r7, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _08012548 @ =0x000002FF
	cmp r1, r0
	bgt _080124B8
	movs r2, #0x80
	orrs r2, r5
_080124B8:
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	mov sl, r1
	str r1, [sp]
	ldr r0, _0801254C @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80517FC
	cmp r0, #0
	bgt _080124DC
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080124DC:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r0, #3
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080124FC
	movs r0, #0x80
	orrs r2, r0
_080124FC:
	mov r0, sl
	str r0, [sp]
	mov r5, sb
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _08012518
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08012518:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r5, sp
	ldrh r5, [r5, #0x10]
	strh r5, [r4, #0x18]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r4, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012548: .4byte 0x000002FF
_0801254C: .4byte sub_805217C

	thumb_func_start sub_8012550
sub_8012550: @ 0x08012550
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	str r2, [sp, #0x10]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	asrs r0, r1, #8
	subs r0, #3
	movs r2, #0x25
	adds r2, r2, r4
	mov r8, r2
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r6, r0, r1
	ldr r0, [sp, #8]
	asrs r7, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801262C @ =0x000002FF
	cmp r1, r0
	bgt _0801259C
	movs r2, #0x80
	orrs r2, r5
_0801259C:
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	mov sl, r1
	str r1, [sp]
	ldr r0, _08012630 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80517FC
	cmp r0, #0
	bgt _080125C0
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080125C0:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r0, #3
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080125E0
	movs r0, #0x80
	orrs r2, r0
_080125E0:
	mov r0, sl
	str r0, [sp]
	mov r5, sb
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _080125FC
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_080125FC:
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r5, sp
	ldrh r5, [r5, #0x10]
	strh r5, [r4, #0x18]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r4, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801262C: .4byte 0x000002FF
_08012630: .4byte sub_805217C

	thumb_func_start sub_8012634
sub_8012634: @ 0x08012634
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #0x18]
	ldrh r5, [r4, #0x1a]
	movs r2, #0
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012662
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r3, r4, r0
	ldrb r0, [r3]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x29
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	b _080126B2
_08012662:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	lsrs r2, r0, #6
	cmp r2, #1
	beq _0801269C
	cmp r2, #1
	bgt _0801268A
	cmp r2, #0
	beq _08012694
	b _080126B2
_0801268A:
	cmp r2, #2
	beq _080126A4
	cmp r2, #3
	beq _080126AC
	b _080126B2
_08012694:
	adds r0, r4, #0
	bl sub_80126B8
	b _080126B2
_0801269C:
	adds r0, r4, #0
	bl sub_8012930
	b _080126B2
_080126A4:
	adds r0, r4, #0
	bl sub_8012804
	b _080126B2
_080126AC:
	adds r0, r4, #0
	bl sub_8012A6C
_080126B2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80126B8
sub_80126B8: @ 0x080126B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r4, #0x14]
	asrs r6, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _080127AC @ =0x000002FF
	cmp r1, r0
	bgt _080126EC
	movs r2, #0x80
	orrs r2, r5
_080126EC:
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	ldr r0, _080127B0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _0801272A
	lsls r0, r2, #8
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08012726
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_08012726:
	mov r1, r8
	strh r1, [r4, #0x18]
_0801272A:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r6, r0, r1
	ldr r0, [r4, #0x14]
	asrs r3, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _080127AC @ =0x000002FF
	cmp r1, r0
	bgt _08012750
	movs r0, #0x80
	orrs r2, r0
_08012750:
	movs r5, #0
	str r5, [sp]
	ldr r0, _080127B0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r3, #0
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012788
	lsls r0, r2, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08012786
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_08012786:
	strh r5, [r4, #0x18]
_08012788:
	add r3, sp, #0xc
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801279A
	movs r2, #0
_0801279A:
	cmp r2, #0
	bne _080127B4
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _080127BE
	.align 2, 0
_080127AC: .4byte 0x000002FF
_080127B0: .4byte sub_805203C
_080127B4:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
_080127BE:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080127F6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080127D2
	rsbs r2, r2, #0
_080127D2:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	add r0, sp, #8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	movs r0, #0
	strb r1, [r2]
	strh r0, [r4, #0x1a]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080127F6:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012804
sub_8012804: @ 0x08012804
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r4, #0x14]
	asrs r6, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _080128F0 @ =0x000002FF
	cmp r1, r0
	bgt _08012838
	movs r2, #0x80
	orrs r2, r5
_08012838:
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	ldr r0, _080128F4 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012876
	lsls r0, r2, #8
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08012872
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_08012872:
	mov r1, r8
	strh r1, [r4, #0x18]
_08012876:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r6, r0, r1
	ldr r0, [r4, #0x14]
	asrs r3, r0, #8
	adds r2, r5, #0
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _080128F0 @ =0x000002FF
	cmp r1, r0
	bgt _0801289C
	movs r0, #0x80
	orrs r2, r0
_0801289C:
	movs r5, #0
	str r5, [sp]
	ldr r0, _080128F4 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r3, #0
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _080128D4
	lsls r0, r2, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080128D2
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_080128D2:
	strh r5, [r4, #0x18]
_080128D4:
	add r3, sp, #0xc
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080128F8
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _08012902
	.align 2, 0
_080128F0: .4byte 0x000002FF
_080128F4: .4byte sub_805203C
_080128F8:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
_08012902:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012922
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012916
	rsbs r2, r2, #0
_08012916:
	lsls r0, r2, #8
	ldr r1, [r4, #0x14]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_08012922:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012930
sub_8012930: @ 0x08012930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x27
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r0, #2
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r6, r0, r1
	ldr r0, [r4, #0x14]
	asrs r5, r0, #8
	ldrb r2, [r2]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _080129B8 @ =0x000002FF
	cmp r1, r0
	bgt _08012960
	movs r0, #0x80
	orrs r2, r0
_08012960:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _080129BC @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _0801299A
	lsls r0, r2, #8
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08012998
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_08012998:
	strh r7, [r4, #0x18]
_0801299A:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	add r5, sp, #0xc
	cmp r0, #0
	bne _080129C0
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_8011024
	b _080129CC
	.align 2, 0
_080129B8: .4byte 0x000002FF
_080129BC: .4byte sub_805203C
_080129C0:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_8011024
_080129CC:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080129F6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080129E0
	rsbs r2, r2, #0
_080129E0:
	lsls r0, r2, #8
	ldr r1, [r4, #0x14]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08012A64
	movs r0, #0
	strh r0, [r4, #0x1a]
	b _08012A64
_080129F6:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08012A64
	adds r3, r5, #0
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012A10
	movs r2, #0
_08012A10:
	cmp r2, #0
	bne _08012A20
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _08012A2C
_08012A20:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_8011024
_08012A2C:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012A64
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012A40
	rsbs r2, r2, #0
_08012A40:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	add r0, sp, #8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	movs r0, #0
	strb r1, [r2]
	strh r0, [r4, #0x1a]
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_08012A64:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8012A6C
sub_8012A6C: @ 0x08012A6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x27
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r0, r1
	ldr r0, [r4, #0x14]
	asrs r3, r0, #8
	ldrb r2, [r2]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _08012AF0 @ =0x000002FF
	cmp r1, r0
	bgt _08012A9C
	movs r0, #0x80
	orrs r2, r0
_08012A9C:
	movs r6, #0
	str r6, [sp]
	ldr r0, _08012AF4 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012AD4
	lsls r0, r2, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08012AD2
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_08012AD2:
	strh r6, [r4, #0x18]
_08012AD4:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	add r5, sp, #0xc
	cmp r0, #0
	bne _08012AF8
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_8011024
	b _08012B04
	.align 2, 0
_08012AF0: .4byte 0x000002FF
_08012AF4: .4byte sub_805203C
_08012AF8:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_8011024
_08012B04:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012B2E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012B18
	rsbs r2, r2, #0
_08012B18:
	lsls r0, r2, #8
	ldr r1, [r4, #0x14]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08012B9C
	movs r0, #0
	strh r0, [r4, #0x1a]
	b _08012B9C
_08012B2E:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08012B9C
	adds r3, r5, #0
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012B48
	movs r2, #0
_08012B48:
	cmp r2, #0
	bne _08012B58
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _08012B64
_08012B58:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_8011024
_08012B64:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012B9C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012B78
	rsbs r2, r2, #0
_08012B78:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	add r0, sp, #8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	movs r0, #0
	strb r1, [r2]
	strh r0, [r4, #0x1a]
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_08012B9C:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8012BA4
sub_8012BA4: @ 0x08012BA4
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08012BC4
	adds r0, r2, #0
	adds r0, #0x24
	movs r1, #6
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #0xe
	strb r0, [r1]
	b _08012C12
_08012BC4:
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	str r1, [r2, #4]
	movs r0, #0
	strh r0, [r2, #0x30]
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r0, #0
	subs r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08012BEC
	rsbs r3, r3, #0
_08012BEC:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08012BFC
	rsbs r3, r3, #0
_08012BFC:
	adds r1, r2, #0
	adds r1, #0x24
	movs r0, #6
	strb r0, [r1]
	movs r0, #0xe
	mov r1, ip
	strb r0, [r1]
	lsls r1, r3, #8
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
_08012C12:
	ldr r0, [r2, #4]
	movs r1, #0x47
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	movs r3, #0x30
	ldrsh r0, [r2, r3]
	cmp r0, #0xe6
	ble _08012C2E
	strh r1, [r2, #0x30]
_08012C2E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012C34
sub_8012C34: @ 0x08012C34
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r3, sp, #4
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012C4C
	movs r2, #0
_08012C4C:
	cmp r2, #0
	bne _08012C5C
	movs r0, #2
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
	b _08012C66
_08012C5C:
	movs r0, #3
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
_08012C66:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012CEA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012C7A
	rsbs r2, r2, #0
_08012C7A:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012CA8
	ldr r1, _08012CA4 @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012CB0
	.align 2, 0
_08012CA4: .4byte Player_80077CC
_08012CA8:
	ldr r1, _08012CF4 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08012CB0:
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012CCA
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_80042F4
_08012CCA:
	adds r1, r4, #0
	adds r1, #0x24
	movs r2, #0
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	strh r2, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_08012CEA:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012CF4: .4byte Player_8005380

	thumb_func_start sub_8012CF8
sub_8012CF8: @ 0x08012CF8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r3, sp, #4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08012D18
	movs r0, #2
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
	b _08012D22
_08012D18:
	movs r0, #3
	adds r1, r4, #0
	mov r2, sp
	bl sub_8011024
_08012D22:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08012E0E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012D36
	rsbs r2, r2, #0
_08012D36:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012D64
	ldr r1, _08012D60 @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012D6C
	.align 2, 0
_08012D60: .4byte Player_80077CC
_08012D64:
	ldr r1, _08012DD8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08012D6C:
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012D86
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_80042F4
_08012D86:
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08012DA8
	rsbs r1, r1, #0
_08012DA8:
	strh r1, [r4, #0x1c]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08012DBA
	rsbs r0, r1, #0
	strh r0, [r4, #0x1c]
_08012DBA:
	adds r1, r4, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	adds r2, r1, #0
	cmp r0, #1
	beq _08012DDC
	cmp r0, #1
	ble _08012DF6
	cmp r0, #2
	beq _08012DE6
	cmp r0, #3
	beq _08012DEE
	b _08012DF6
	.align 2, 0
_08012DD8: .4byte Player_8005380
_08012DDC:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08012DF4
_08012DE6:
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _08012DF4
_08012DEE:
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
_08012DF4:
	str r0, [r4, #4]
_08012DF6:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08012E0E
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_08012E0E:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012E18
sub_8012E18: @ 0x08012E18
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012E34
	movs r0, #1
	eors r2, r0
	ands r2, r0
_08012E34:
	cmp r2, #0
	bne _08012E44
	movs r0, #2
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8011024
	b _08012E4E
_08012E44:
	movs r0, #3
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8011024
_08012E4E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8012E54
sub_8012E54: @ 0x08012E54
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	adds r1, #0x29
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r0, r0, #6
	cmp r0, #1
	beq _08012E8A
	cmp r0, #1
	bgt _08012E7C
	cmp r0, #0
	beq _08012E86
	b _08012EA0
_08012E7C:
	cmp r0, #2
	beq _08012E8E
	cmp r0, #3
	beq _08012E92
	b _08012EA0
_08012E86:
	movs r0, #3
	b _08012E94
_08012E8A:
	movs r0, #0
	b _08012E94
_08012E8E:
	movs r0, #2
	b _08012E94
_08012E92:
	movs r0, #1
_08012E94:
	adds r1, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	adds r3, r0, #0
_08012EA0:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012EA8
sub_8012EA8: @ 0x08012EA8
	push {lr}
	bl sub_801139C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012EB8
sub_8012EB8: @ 0x08012EB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80114CC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08012EFE
	adds r0, r4, #0
	bl sub_801139C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012EE8
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, _08012EE4 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012EFE
	.align 2, 0
_08012EE4: .4byte sub_800DAF4
_08012EE8:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	ands r0, r3
	str r0, [r4, #4]
_08012EFE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8012F04
sub_8012F04: @ 0x08012F04
	push {lr}
	bl sub_8011434
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012F10
sub_8012F10: @ 0x08012F10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012F30
	ldr r1, _08012F2C @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08012F38
	.align 2, 0
_08012F2C: .4byte Player_80077CC
_08012F30:
	ldr r1, _08012F70 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08012F38:
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012F52
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_80042F4
_08012F52:
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012F70: .4byte Player_8005380

	thumb_func_start sub_8012F74
sub_8012F74: @ 0x08012F74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r1, r5, #0
	bl sub_80042F4
	adds r0, r4, #0
	adds r0, #0x24
	strb r6, [r0]
	adds r4, #0x25
	strb r5, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012F94
sub_8012F94: @ 0x08012F94
	adds r3, r0, #0
	adds r3, #0x24
	strb r1, [r3]
	adds r0, #0x25
	strb r2, [r0]
	bx lr

	thumb_func_start sub_8012FA0
sub_8012FA0: @ 0x08012FA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #6
	movs r6, #0xe
	movs r1, #0xe
	bl sub_80042F4
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	adds r4, #0x25
	strb r6, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012FC0
sub_8012FC0: @ 0x08012FC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #6
	movs r6, #9
	movs r1, #9
	bl sub_80042F4
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	adds r4, #0x25
	strb r6, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8012FE0
sub_8012FE0: @ 0x08012FE0
	movs r2, #6
	movs r3, #0xe
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	adds r0, #0x25
	strb r3, [r0]
	bx lr

	thumb_func_start sub_8012FF0
sub_8012FF0: @ 0x08012FF0
	movs r2, #6
	movs r3, #9
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	adds r0, #0x25
	strb r3, [r0]
	bx lr

	thumb_func_start sub_8013000
sub_8013000: @ 0x08013000
	push {lr}
	bl sub_801139C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801300C
sub_801300C: @ 0x0801300C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _08013040 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r5, [r0]
	adds r4, r5, #0
	adds r4, #0xc
	ldr r0, _08013044 @ =gStageData
	ldrb r1, [r0, #3]
	mov ip, r0
	cmp r1, #5
	bhi _08013054
	cmp r2, #0
	bne _0801304C
	ldr r0, _08013048 @ =0x06010000
	b _08013096
	.align 2, 0
_08013040: .4byte gPlayers
_08013044: .4byte gStageData
_08013048: .4byte 0x06010000
_0801304C:
	ldr r0, _08013050 @ =0x06010800
	b _08013096
	.align 2, 0
_08013050: .4byte 0x06010800
_08013054:
	cmp r1, #6
	bne _08013090
	cmp r2, #1
	beq _08013078
	cmp r2, #1
	bgt _08013066
	cmp r2, #0
	beq _08013070
	b _08013098
_08013066:
	cmp r2, #2
	beq _08013080
	cmp r2, #3
	beq _08013088
	b _08013098
_08013070:
	ldr r0, _08013074 @ =0x06010000
	b _08013096
	.align 2, 0
_08013074: .4byte 0x06010000
_08013078:
	ldr r0, _0801307C @ =0x06010800
	b _08013096
	.align 2, 0
_0801307C: .4byte 0x06010800
_08013080:
	ldr r0, _08013084 @ =0x06011000
	b _08013096
	.align 2, 0
_08013084: .4byte 0x06011000
_08013088:
	ldr r0, _0801308C @ =0x06011800
	b _08013096
	.align 2, 0
_0801308C: .4byte 0x06011800
_08013090:
	lsls r0, r2, #0xb
	ldr r1, _080130C8 @ =0x06010000
	adds r0, r0, r1
_08013096:
	str r0, [r5, #0xc]
_08013098:
	movs r3, #0x80
	lsls r3, r3, #5
	movs r2, #0x20
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	orrs r0, r2
	orrs r0, r3
	str r0, [r4, #8]
	ldrh r0, [r6, #0x34]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	mov r2, ip
	ldrb r0, [r2, #6]
	cmp r0, r1
	bne _080130CC
	movs r0, #0x10
	b _080130D4
	.align 2, 0
_080130C8: .4byte 0x06010000
_080130CC:
	adds r0, r7, #0
	adds r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080130D4:
	lsls r0, r0, #6
	movs r1, #0
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08013108 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	ldrh r0, [r6, #0x36]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	strh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013108: .4byte 0x0000FFFF

	thumb_func_start sub_801310C
sub_801310C: @ 0x0801310C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013140 @ =gPlayers
	adds r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #0xe4
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0xc
	subs r0, #0xba
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08013144
	cmp r0, #2
	beq _08013174
	b _08013206
	.align 2, 0
_08013140: .4byte gPlayers
_08013144:
	ldr r0, _08013154 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0801315C
	ldr r0, _08013158 @ =0x06011800
	b _08013162
	.align 2, 0
_08013154: .4byte gStageData
_08013158: .4byte 0x06011800
_0801315C:
	cmp r1, #6
	bne _08013164
	ldr r0, _08013170 @ =0x06013000
_08013162:
	str r0, [r3, #0xc]
_08013164:
	movs r0, #0xae
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r0, #2
	b _0801319E
	.align 2, 0
_08013170: .4byte 0x06013000
_08013174:
	ldr r0, _08013184 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0801318C
	ldr r0, _08013188 @ =0x06011000
	b _08013192
	.align 2, 0
_08013184: .4byte gStageData
_08013188: .4byte 0x06011000
_0801318C:
	cmp r1, #6
	bne _08013194
	ldr r0, _080131CC @ =0x06012800
_08013192:
	str r0, [r3, #0xc]
_08013194:
	ldr r0, _080131D0 @ =0x00000151
	strh r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r0, #3
_0801319E:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, _080131D4 @ =0x00040020
	orrs r0, r1
	str r0, [r2, #8]
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldrb r1, [r5, #6]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080131D8
	movs r0, #0x10
	b _080131E0
	.align 2, 0
_080131CC: .4byte 0x06012800
_080131D0: .4byte 0x00000151
_080131D4: .4byte 0x00040020
_080131D8:
	adds r0, r4, #0
	adds r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080131E0:
	lsls r0, r0, #6
	movs r1, #0
	strh r0, [r2, #0x14]
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	strh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r1, [r3, #6]
	strh r1, [r3, #8]
_08013206:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801320C
sub_801320C: @ 0x0801320C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r5, #0xc
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	movs r6, #1
	rsbs r6, r6, #0
	cmp r1, r6
	beq _08013310
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08013250
	ldr r2, _08013264 @ =gUnknown_080CE7E2
	adds r0, r1, #0
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r3, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r6
	beq _0801324C
	strh r3, [r4, #0x34]
	strh r1, [r4, #0x36]
_0801324C:
	movs r0, #0x10
	strb r0, [r5, #0x1c]
_08013250:
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #9
	beq _080132B0
	cmp r0, #9
	bgt _08013268
	cmp r0, #8
	beq _0801326E
	b _080132E4
	.align 2, 0
_08013264: .4byte gUnknown_080CE7E2
_08013268:
	cmp r0, #0xfa
	beq _08013294
	b _080132E4
_0801326E:
	ldr r1, _08013290 @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _080132D4
	.align 2, 0
_08013290: .4byte gUnknown_080CE7D8
_08013294:
	ldr r0, _080132AC @ =0x000002BD
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #4
	bls _080132D4
	movs r0, #4
	b _080132D4
	.align 2, 0
_080132AC: .4byte 0x000002BD
_080132B0:
	ldr r1, _080132E0 @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #9
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #3
	bls _080132D4
	movs r0, #3
_080132D4:
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8014230
	b _08013310
	.align 2, 0
_080132E0: .4byte gUnknown_080CE7D8
_080132E4:
	movs r6, #0x30
	ldrsh r1, [r4, r6]
	cmp r1, #0xa4
	bgt _08013310
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08013310
	ldr r0, _08013354 @ =gUnknown_080CE7E2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, _08013358 @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x34]
_08013310:
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #0x1c
	ands r0, r1
	mov r8, r2
	cmp r0, #0xc
	bne _08013360
	ldrh r2, [r4, #0x34]
	ldr r3, _08013358 @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1b
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #8
	cmp r2, r0
	beq _08013348
	lsrs r0, r1, #0x1b
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #9
	cmp r2, r0
	bne _0801335C
_08013348:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8014230
	b _08013360
	.align 2, 0
_08013354: .4byte gUnknown_080CE7E2
_08013358: .4byte gUnknown_080CE7D8
_0801335C:
	movs r0, #0x10
	strb r0, [r5, #0x1c]
_08013360:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801337C
	ldrh r0, [r5, #0xc]
	ldrh r3, [r4, #0x34]
	cmp r0, r3
	bne _0801337C
	ldrb r0, [r5, #0x1a]
	ldrh r6, [r4, #0x36]
	cmp r0, r6
	beq _0801339E
_0801337C:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r4, #0x36]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
_0801339E:
	adds r0, r4, #0
	bl sub_801409C
	movs r7, #0
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080134D8 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	bne _080133CC
	b _080134FA
_080133CC:
	ldr r1, _080134DC @ =gUnknown_080CE7D8
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	mov sl, r0
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5c
	mov ip, r1
	mov sb, r2
	ldrh r2, [r5, #0xc]
	cmp r2, r0
	beq _080133FC
	mov r1, sl
	lsrs r0, r1, #0x1b
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5d
	cmp r2, r0
	bne _08013412
_080133FC:
	ldrh r1, [r6, #0x34]
	ldr r0, _080134E0 @ =0x0000015F
	cmp r1, r0
	beq _08013410
	adds r0, #0x3e
	cmp r1, r0
	beq _08013410
	subs r0, #0x3d
	cmp r1, r0
	bne _08013412
_08013410:
	movs r7, #1
_08013412:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5e
	cmp r2, r0
	bne _08013430
	ldrh r1, [r6, #0x34]
	ldr r0, _080134E4 @ =0x00000202
	cmp r1, r0
	bne _08013430
	movs r7, #1
_08013430:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x5f
	cmp r2, r0
	bne _0801344E
	ldrh r1, [r6, #0x34]
	ldr r0, _080134E8 @ =0x00000203
	cmp r1, r0
	bne _0801344E
	movs r7, #2
_0801344E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	adds r6, r1, #0
	cmp r0, #0
	beq _08013482
	ldr r2, _080134D8 @ =gPlayers
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013482
	movs r7, #3
_08013482:
	cmp r7, #0
	beq _080134FA
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080134D8 @ =gPlayers
	adds r2, r0, r1
	ldr r0, [r2, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r4, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r6
	ldr r1, [r2, #4]
	movs r3, #1
	ands r1, r3
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #4]
	cmp r7, #2
	bne _080134C2
	ldrh r0, [r2, #0x36]
	strh r0, [r4, #0x36]
	ldrh r0, [r2, #0x36]
	strb r0, [r5, #0x1a]
_080134C2:
	cmp r7, #3
	bne _080134FA
	ldr r0, [r2, #4]
	ands r0, r3
	cmp r0, #0
	beq _080134F0
	ldr r0, [r4, #0x10]
	ldr r3, _080134EC @ =0xFFFFF600
	adds r0, r0, r3
	b _080134F8
	.align 2, 0
_080134D8: .4byte gPlayers
_080134DC: .4byte gUnknown_080CE7D8
_080134E0: .4byte 0x0000015F
_080134E4: .4byte 0x00000202
_080134E8: .4byte 0x00000203
_080134EC: .4byte 0xFFFFF600
_080134F0:
	ldr r0, [r4, #0x10]
	movs r6, #0xa0
	lsls r6, r6, #4
	adds r0, r0, r6
_080134F8:
	str r0, [r4, #0x10]
_080134FA:
	ldrh r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801350C
sub_801350C: @ 0x0801350C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, #0xc
	mov r8, r0
	ldrh r2, [r5, #0x30]
	ldrh r6, [r5, #0x34]
	ldrh r7, [r5, #0x36]
	ldr r1, _08013578 @ =gUnknown_080CE7D8
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r2, #0
	subs r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08013608
	cmp r7, #0
	bne _0801357C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801357C
	adds r0, r6, #0
	subs r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801357C
	movs r0, #1
	strh r0, [r5, #0x36]
	ldr r0, [r5, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FF0
	b _080136CC
	.align 2, 0
_08013578: .4byte gUnknown_080CE7D8
_0801357C:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _08013586
	b _080136CC
_08013586:
	cmp r7, #1
	beq _0801358C
	b _080136CC
_0801358C:
	adds r0, r6, #0
	subs r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801359A
	b _080136CC
_0801359A:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _080135D8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _080135D4 @ =sub_805217C
	str r4, [sp, #4]
	bl sub_80519EC
	b _080135FE
	.align 2, 0
_080135D4: .4byte sub_805217C
_080135D8:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _08013604 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80519EC
_080135FE:
	cmp r0, #0x20
	bgt _080136CC
	b _080136A0
	.align 2, 0
_08013604: .4byte sub_805217C
_08013608:
	cmp r2, #0x15
	bne _080136CC
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _080136CC
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _0801364C
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _08013648 @ =sub_805217C
	str r4, [sp, #4]
	b _0801366E
	.align 2, 0
_08013648: .4byte sub_805217C
_0801364C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _08013684 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
_0801366E:
	bl sub_80519EC
	adds r2, r0, #0
	cmp r6, #0x15
	bne _08013688
	cmp r7, #0
	bne _08013688
	movs r0, #1
	strh r0, [r5, #0x36]
	b _080136CC
	.align 2, 0
_08013684: .4byte sub_805217C
_08013688:
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	bne _080136A6
	cmp r6, #0x15
	bne _080136A6
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080136A6
_080136A0:
	movs r0, #2
	strh r0, [r5, #0x36]
	b _080136CC
_080136A6:
	cmp r2, #0x20
	bgt _080136CC
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _080136CC
	ldr r0, _080136D8 @ =gUnknown_080CE7D8
	adds r1, r5, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x17
	strh r0, [r5, #0x34]
	strh r2, [r5, #0x36]
_080136CC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080136D8: .4byte gUnknown_080CE7D8

	thumb_func_start sub_80136DC
sub_80136DC: @ 0x080136DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _08013750 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xc
	adds r4, r0, #0
	ldr r2, _08013754 @ =gCamera
	ldrh r1, [r2, #4]
	movs r7, #0
	mov ip, r7
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r2, [r2, r7]
	subs r0, r0, r2
	strh r0, [r5, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r2
	strh r0, [r4, #6]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldr r1, _08013758 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08013764
	ldrb r0, [r1, #6]
	cmp r0, r3
	beq _0801375C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _08013762
	.align 2, 0
_08013750: .4byte gPlayers
_08013754: .4byte gCamera
_08013758: .4byte gStageData
_0801375C:
	ldr r0, [r5, #8]
	ldr r1, _080137C8 @ =0xFFFFFDFF
	ands r0, r1
_08013762:
	str r0, [r5, #8]
_08013764:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080137D8
	ldrh r1, [r6, #0x34]
	ldrh r0, [r6, #0x36]
	mov sb, r0
	ldr r3, _080137CC @ =gUnknown_080CE7D8
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1b
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r0, r1, r0
	cmp r0, #0xa4
	bgt _0801379C
	lsrs r0, r2, #0x1b
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0801379C:
	cmp r1, #8
	beq _08013808
	cmp r1, #0x6f
	beq _08013808
	cmp r1, #0x8c
	beq _08013808
	cmp r1, #0x8d
	beq _08013808
	ldr r0, _080137D0 @ =0x000002BD
	cmp r1, r0
	beq _08013808
	cmp r1, #0x73
	beq _08013808
	cmp r1, r0
	beq _08013808
	ldr r0, _080137D4 @ =0x00000519
	cmp r1, r0
	bne _08013802
	mov r0, sb
	cmp r0, #0
	bne _08013802
	b _08013808
	.align 2, 0
_080137C8: .4byte 0xFFFFFDFF
_080137CC: .4byte gUnknown_080CE7D8
_080137D0: .4byte 0x000002BD
_080137D4: .4byte 0x00000519
_080137D8:
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	cmp r1, #8
	beq _080137FE
	cmp r1, #0x6f
	beq _080137FE
	cmp r1, #0x8c
	beq _080137FE
	cmp r1, #0x8d
	beq _080137FE
	cmp r1, #0xfa
	beq _080137FE
	cmp r1, #0xb1
	beq _080137FE
	cmp r1, #0xb2
	beq _080137FE
	ldr r0, _0801383C @ =0x00000111
	cmp r1, r0
	bne _08013802
_080137FE:
	movs r3, #1
	mov ip, r3
_08013802:
	mov r7, ip
	cmp r7, #0
	beq _080138F4
_08013808:
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, [r5, #8]
	ldr r0, _08013840 @ =0xFFFFF3FF
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	movs r2, #0x20
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r2
	orrs r1, r0
	str r1, [r5, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013844
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013848
	.align 2, 0
_0801383C: .4byte 0x00000111
_08013840: .4byte 0xFFFFF3FF
_08013844:
	movs r0, #0x80
	lsls r0, r0, #1
_08013848:
	strh r0, [r4, #2]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801385C
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_0801385C:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _0801386A
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_0801386A:
	ldr r0, [r6, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013894
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _0801388C @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013890 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _0801389A
	.align 2, 0
_0801388C: .4byte 0xFFFFFF00
_08013890: .4byte 0x000003FF
_08013894:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_0801389A:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r6, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r6, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	ldr r1, [r5, #8]
	ldr r0, _080138F0 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #8]
	movs r7, #0x30
	ldrsh r0, [r6, r7]
	cmp r0, #0x6f
	beq _080138DE
	cmp r0, #0xb1
	beq _080138DE
	cmp r0, #0xb2
	beq _080138DE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
_080138DE:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	b _0801398A
	.align 2, 0
_080138F0: .4byte 0xFFFFCFFF
_080138F4:
	mov r0, ip
	strh r0, [r4]
	ldr r2, [r5, #8]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013916
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r5, #8]
	b _08013922
_08013916:
	ldr r0, _08013938 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r5, #8]
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
_08013922:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801393C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08013942
	.align 2, 0
_08013938: .4byte 0xFFFFFBFF
_0801393C:
	ldr r0, [r5, #8]
	ldr r1, _08013954 @ =0xFFFFF7FF
	ands r0, r1
_08013942:
	str r0, [r5, #8]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x67
	bne _0801395C
	ldr r0, [r5, #8]
	ldr r1, _08013958 @ =0xFFFFCFFF
	ands r0, r1
	b _08013982
	.align 2, 0
_08013954: .4byte 0xFFFFF7FF
_08013958: .4byte 0xFFFFCFFF
_0801395C:
	ldrh r1, [r6, #0x34]
	ldr r2, _080139BC @ =gUnknown_080CE7D8
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #0x8e
	beq _08013984
	ldr r0, [r5, #8]
	ldr r1, _080139C0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
_08013982:
	str r0, [r5, #8]
_08013984:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0801398A:
	movs r7, #1
	ldr r2, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	bne _08013A20
	ldr r0, _080139C4 @ =gStageData
	ldrb r1, [r0, #3]
	adds r4, r0, #0
	cmp r1, #7
	bne _080139AC
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013A20
_080139AC:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r3, r0
	cmp r3, #0
	beq _080139C8
	movs r7, #0
	b _08013A2A
	.align 2, 0
_080139BC: .4byte gUnknown_080CE7D8
_080139C0: .4byte 0xFFFFCFFF
_080139C4: .4byte gStageData
_080139C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	bne _08013A16
	adds r0, r6, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080139EA
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080139EA
	movs r7, #0
_080139EA:
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08013A16
	ldrb r0, [r4, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013A60 @ =gPlayers
	adds r1, r1, r0
	cmp r6, r1
	bne _08013A14
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013A16
_08013A14:
	movs r7, #0
_08013A16:
	ldr r0, _08013A64 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08013A20
	movs r7, #1
_08013A20:
	cmp r7, #0
	beq _08013A2A
	adds r0, r5, #0
	bl DisplaySprite
_08013A2A:
	ldr r1, _08013A64 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _08013A52
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r1, #9]
	ldrb r1, [r1, #6]
	cmp r0, r1
	bne _08013A44
	cmp r2, #8
	bne _08013A4C
_08013A44:
	cmp r2, #8
	bne _08013A52
	cmp r0, #0
	bne _08013A52
_08013A4C:
	adds r0, r6, #0
	bl sub_8019858
_08013A52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013A60: .4byte gPlayers
_08013A64: .4byte gStageData

	thumb_func_start sub_8013A68
sub_8013A68: @ 0x08013A68
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013ACC @ =gPlayers
	adds r5, r1, r0
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0xc
	adds r4, r0, #0
	ldr r0, _08013AD0 @ =gCamera
	ldrh r3, [r0]
	ldrh r7, [r0, #4]
	movs r0, #0x2a
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08013AA6
	b _08013D64
_08013AA6:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08013AB4
	b _08013D64
_08013AB4:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013AD4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08013D64
	.align 2, 0
_08013ACC: .4byte gPlayers
_08013AD0: .4byte gCamera
_08013AD4:
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #8]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08013AFE
	movs r0, #8
	strb r0, [r6, #0x1c]
_08013AFE:
	ldrh r2, [r5, #0x34]
	ldrh r3, [r5, #0x36]
	ldr r0, _08013B78 @ =gUnknown_080CE7D8
	mov r7, ip
	ldrb r1, [r7]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08013B7C @ =0xFFED0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08013B24
	cmp r3, #1
	beq _08013B38
_08013B24:
	cmp r2, #0xb
	bne _08013B2C
	cmp r3, #0
	beq _08013B38
_08013B2C:
	cmp r2, #0x83
	beq _08013B32
	b _08013D64
_08013B32:
	cmp r3, #0
	beq _08013B38
	b _08013D64
_08013B38:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #1
	beq _08013B48
	b _08013C48
_08013B48:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r5, r3
	strb r1, [r0]
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x24
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	ands r0, r2
	cmp r0, #0
	bne _08013B80
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013B84
	.align 2, 0
_08013B78: .4byte gUnknown_080CE7D8
_08013B7C: .4byte 0xFFED0000
_08013B80:
	movs r0, #0x80
	lsls r0, r0, #1
_08013B84:
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08013B98
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08013B98:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08013BA6
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08013BA6:
	ldr r0, [r5, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013BD0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08013BC8 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013BCC @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08013BD6
	.align 2, 0
_08013BC8: .4byte 0xFFFFFF00
_08013BCC: .4byte 0x000003FF
_08013BD0:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08013BD6:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013C3A
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08013C20
	b _08013D64
_08013C20:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	beq _08013C3A
	ldr r0, _08013C44 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C3A
	b _08013D64
_08013C3A:
	adds r0, r6, #0
	bl DisplaySprite
	b _08013D64
	.align 2, 0
_08013C44: .4byte gStageData
_08013C48:
	cmp r2, #2
	beq _08013C4E
	b _08013D64
_08013C4E:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	cmp r0, #0
	bne _08013C5E
	cmp r1, #0
	beq _08013C6E
_08013C5E:
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _08013C7C
_08013C6E:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	movs r1, #0x40
	cmp r0, #0
	beq _08013C7C
	movs r1, #0xc0
_08013C7C:
	ldr r3, _08013CA4 @ =0x00000149
	adds r0, r5, r3
	strb r1, [r0]
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x25
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013CA8
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013CAC
	.align 2, 0
_08013CA4: .4byte 0x00000149
_08013CA8:
	movs r0, #0x80
	lsls r0, r0, #1
_08013CAC:
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08013CC0
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08013CC0:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08013CCE
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08013CCE:
	ldr r0, [r5, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013CF8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08013CF0 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013CF4 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08013CFE
	.align 2, 0
_08013CF0: .4byte 0xFFFFFF00
_08013CF4: .4byte 0x000003FF
_08013CF8:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08013CFE:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013D5E
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	bne _08013D64
	adds r0, r5, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	beq _08013D5E
	ldr r0, _08013D6C @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08013D64
_08013D5E:
	adds r0, r6, #0
	bl DisplaySprite
_08013D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013D6C: .4byte gStageData

	thumb_func_start sub_8013D70
sub_8013D70: @ 0x08013D70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r6, r1, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08013DB0 @ =gPlayers
	adds r4, r0, r1
	ldr r5, _08013DB4 @ =gStageData
	ldrb r1, [r5, #0xb]
	adds r7, r1, #0
	ldrb r0, [r5, #3]
	cmp r0, #5
	bhi _08013DBC
	ldr r0, _08013DB8 @ =gUnknown_080D1750
	mov r3, r8
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	ldr r0, [r2]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	b _08013E02
	.align 2, 0
_08013DB0: .4byte gPlayers
_08013DB4: .4byte gStageData
_08013DB8: .4byte gUnknown_080D1750
_08013DBC:
	cmp r0, #7
	beq _08013DE0
	ldr r0, _08013DDC @ =gUnknown_080D1750
	mov r3, r8
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	ldr r0, [r2]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	b _08013E02
	.align 2, 0
_08013DDC: .4byte gUnknown_080D1750
_08013DE0:
	ldr r1, _08013E30 @ =gUnknown_080CE6A8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldrb r0, [r5, #6]
	cmp r0, r6
	bne _08013E04
	lsls r1, r7, #2
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x28]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
_08013E02:
	strh r0, [r5, #0x2a]
_08013E04:
	ldr r2, _08013E34 @ =gStageData
	movs r0, #0
	str r0, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x20
	strb r0, [r1]
	strh r0, [r4, #0x1c]
	ldrb r0, [r2, #3]
	adds r3, r2, #0
	cmp r0, #2
	bne _08013EEC
	cmp r6, #0
	bne _08013EEC
	mov r0, r8
	subs r0, #0xd
	cmp r0, #0x2a
	bhi _08013EEC
	lsls r0, r0, #2
	ldr r1, _08013E38 @ =_08013E3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013E30: .4byte gUnknown_080CE6A8
_08013E34: .4byte gStageData
_08013E38: .4byte _08013E3C
_08013E3C: @ jump table
	.4byte _08013EE8 @ case 0
	.4byte _08013EEC @ case 1
	.4byte _08013EEC @ case 2
	.4byte _08013EEC @ case 3
	.4byte _08013EEC @ case 4
	.4byte _08013EEC @ case 5
	.4byte _08013EEC @ case 6
	.4byte _08013EEC @ case 7
	.4byte _08013EEC @ case 8
	.4byte _08013EEC @ case 9
	.4byte _08013EEC @ case 10
	.4byte _08013EE8 @ case 11
	.4byte _08013EEC @ case 12
	.4byte _08013EEC @ case 13
	.4byte _08013EEC @ case 14
	.4byte _08013EEC @ case 15
	.4byte _08013EEC @ case 16
	.4byte _08013EEC @ case 17
	.4byte _08013EEC @ case 18
	.4byte _08013EEC @ case 19
	.4byte _08013EEC @ case 20
	.4byte _08013EEC @ case 21
	.4byte _08013EE8 @ case 22
	.4byte _08013EEC @ case 23
	.4byte _08013EEC @ case 24
	.4byte _08013EEC @ case 25
	.4byte _08013EEC @ case 26
	.4byte _08013EEC @ case 27
	.4byte _08013EEC @ case 28
	.4byte _08013EEC @ case 29
	.4byte _08013EEC @ case 30
	.4byte _08013EEC @ case 31
	.4byte _08013EE8 @ case 32
	.4byte _08013EEC @ case 33
	.4byte _08013EEC @ case 34
	.4byte _08013EEC @ case 35
	.4byte _08013EEC @ case 36
	.4byte _08013EEC @ case 37
	.4byte _08013EEC @ case 38
	.4byte _08013EEC @ case 39
	.4byte _08013EEC @ case 40
	.4byte _08013EEC @ case 41
	.4byte _08013EE8 @ case 42
_08013EE8:
	movs r0, #0
	strh r0, [r4, #0x1c]
_08013EEC:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0xe0
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08013F24 @ =gUnknown_03001B00
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #3]
	cmp r0, #7
	beq _08013F38
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08013F2C
	cmp r0, #2
	bne _08013F38
	adds r1, r4, #0
	adds r1, #0xe4
	ldr r0, _08013F28 @ =gUnknown_030010D0
	b _08013F3E
	.align 2, 0
_08013F24: .4byte gUnknown_03001B00
_08013F28: .4byte gUnknown_030010D0
_08013F2C:
	adds r1, r4, #0
	adds r1, #0xe4
	ldr r0, _08013F34 @ =gUnknown_0300110C
	b _08013F3E
	.align 2, 0
_08013F34: .4byte gUnknown_0300110C
_08013F38:
	adds r1, r4, #0
	adds r1, #0xe4
	movs r0, #0
_08013F3E:
	str r0, [r1]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8013F4C
sub_8013F4C: @ 0x08013F4C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _08013F7C @ =gStageData
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldrh r0, [r1, #0x2a]
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r1, #3]
	adds r6, r1, #0
	cmp r0, #7
	beq _08013F8C
	ldrb r0, [r6, #9]
	cmp r0, #8
	bne _08013F8C
	ldr r0, _08013F80 @ =gPlayers
	ldr r1, _08013F84 @ =sub_800F7C0
	cmp r5, r0
	bne _08013F76
	ldr r1, _08013F88 @ =sub_800F22C
_08013F76:
	str r1, [r5]
	b _08013F90
	.align 2, 0
_08013F7C: .4byte gStageData
_08013F80: .4byte gPlayers
_08013F84: .4byte sub_800F7C0
_08013F88: .4byte sub_800F22C
_08013F8C:
	ldr r0, _08014094 @ =Player_800522C
	str r0, [r5]
_08013F90:
	movs r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #0x14
	str r0, [r5, #4]
	ldrh r1, [r6, #0xe]
	cmp r1, #0xb
	bne _08013FA8
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _08013FB2
_08013FA8:
	cmp r1, #1
	bne _08013FBA
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bne _08013FBA
_08013FB2:
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
_08013FBA:
	adds r1, r5, #0
	adds r1, #0x24
	movs r2, #0
	movs r0, #6
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	movs r4, #0xe
	strb r4, [r0]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x61
	movs r0, #0x98
	lsls r0, r0, #4
	str r0, [r1]
	adds r1, #4
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r1]
	adds r1, #4
	movs r0, #8
	str r0, [r1]
	adds r1, #4
	movs r0, #0x40
	str r0, [r1]
	movs r3, #0
	strh r2, [r5, #0x30]
	ldr r0, _08014098 @ =0x0000FFFF
	strh r0, [r5, #0x32]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r5, #0x34]
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	subs r1, #0x42
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x54
	strh r2, [r0]
	adds r0, #4
	movs r1, #0x3c
	strb r1, [r0]
	movs r0, #0x59
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0xa
	mov r7, ip
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	strb r4, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #7
	strh r2, [r0]
	adds r0, #0xe
	strh r2, [r0]
	subs r0, #4
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #0x44
	adds r1, #0xc4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08014074
	adds r0, r5, #0
	bl sub_8014258
_08014074:
	adds r1, r5, #0
	adds r1, #0x78
	movs r2, #3
	adds r4, r1, #0
	movs r3, #0
_0801407E:
	stm r1!, {r3}
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0801407E
	movs r0, #0x7f
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014094: .4byte Player_800522C
_08014098: .4byte 0x0000FFFF

	thumb_func_start sub_801409C
sub_801409C: @ 0x0801409C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080141E0 @ =gPlayers
	adds r5, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xcb
	bne _080140D0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xcb
	beq _080140D0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004F10
_080140D0:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _080140F0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _080140E8
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xd0
	bne _080140F0
_080140E8:
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
_080140F0:
	ldrh r1, [r4, #0x32]
	adds r0, r1, #0
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08014112
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	beq _08014112
	cmp r0, #0xd2
	beq _08014112
	cmp r0, #0xd5
	beq _08014112
	cmp r0, #0xd4
	bne _0801413C
_08014112:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801413C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	beq _0801413C
	cmp r0, #0xd2
	beq _0801413C
	cmp r0, #0xd5
	beq _0801413C
	cmp r0, #0xd4
	beq _0801413C
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
_0801413C:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0x6f
	beq _0801414C
	cmp r0, #0xb1
	beq _0801414C
	cmp r0, #0xb2
	bne _08014164
_0801414C:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x6f
	beq _08014164
	cmp r0, #0xb1
	beq _08014164
	cmp r0, #0xb2
	beq _08014164
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
_08014164:
	ldrh r1, [r4, #0x32]
	adds r0, r1, #0
	subs r0, #0xd6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801417E
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd9
	beq _0801417E
	cmp r0, #0xda
	bne _080141A0
_0801417E:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xd6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080141A0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd9
	beq _080141A0
	cmp r0, #0xda
	beq _080141A0
	ldr r1, _080141E4 @ =0x0000021A
	adds r0, r4, #0
	bl sub_8004F10
_080141A0:
	ldrh r0, [r4, #0x32]
	subs r0, #0xbc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080141C0
	ldrh r0, [r4, #0x30]
	subs r0, #0xbc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080141C0
	adds r0, r4, #0
	movs r1, #0xe3
	bl sub_8004F10
_080141C0:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xf7
	bne _080141D8
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xf7
	beq _080141D8
	ldr r1, _080141E8 @ =0x00000211
	adds r0, r4, #0
	bl sub_8004F10
_080141D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080141E0: .4byte gPlayers
_080141E4: .4byte 0x0000021A
_080141E8: .4byte 0x00000211

	thumb_func_start sub_80141EC
sub_80141EC: @ 0x080141EC
	push {r4, r5, r6, lr}
	sub sp, #0x64
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r1, _0801421C @ =gUnknown_080CE644
	mov r0, sp
	movs r2, #0x64
	bl memcpy
	ldr r0, _08014220 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08014224
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	b _08014226
	.align 2, 0
_0801421C: .4byte gUnknown_080CE644
_08014220: .4byte gStageData
_08014224:
	movs r0, #0x42
_08014226:
	str r0, [r6, #0xc]
	add sp, #0x64
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8014230
sub_8014230: @ 0x08014230
	push {lr}
	adds r2, r1, #0
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	asrs r1, r0, #5
	asrs r0, r0, #6
	adds r0, r1, r0
	cmp r0, #0
	bge _08014244
	rsbs r0, r0, #0
_08014244:
	cmp r0, #7
	ble _08014250
	cmp r0, #0x80
	ble _08014252
	movs r0, #0x80
	b _08014252
_08014250:
	movs r0, #8
_08014252:
	strb r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_8014258
sub_8014258: @ 0x08014258
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08014280 @ =gStageData
	adds r0, #0xac
	ldrh r3, [r0]
	adds r4, r3, #0
	ldr r0, [r2, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080142BA
	cmp r3, #0x95
	bls _08014284
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _080142C2
	.align 2, 0
_08014280: .4byte gStageData
_08014284:
	cmp r3, #0x63
	bls _08014296
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	orrs r0, r1
	b _080142C2
_08014296:
	cmp r3, #0x31
	bls _080142A8
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	b _080142C2
_080142A8:
	cmp r4, #0xa
	bls _080142BA
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _080142C2
_080142BA:
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
_080142C2:
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80142CC
sub_80142CC: @ 0x080142CC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsrs r5, r0, #4
	ldr r0, _08014318 @ =gStageData
	ldrb r1, [r0, #3]
	mov ip, r0
	cmp r1, #7
	beq _080143BA
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	ldr r2, [r3, #4]
	cmp r0, #0
	beq _0801431C
	ldr r0, [r3, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801431C
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0801431C
	adds r2, r3, #0
	adds r2, #0x8c
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r2]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #0xc0
	lsls r0, r0, #4
	b _0801434A
	.align 2, 0
_08014318: .4byte gStageData
_0801431C:
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08014338
	adds r2, r3, #0
	adds r2, #0x8c
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r2]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #0xc0
	lsls r0, r0, #4
	b _0801434A
_08014338:
	adds r2, r3, #0
	adds r2, #0x8c
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r2]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #0x98
	lsls r0, r0, #4
_0801434A:
	str r0, [r1]
	adds r7, r2, #0
	adds r6, r1, #0
	adds r4, r3, #0
	adds r4, #0x90
	ldr r1, _08014388 @ =gUnknown_080CECB2
	lsls r2, r5, #2
	adds r0, r2, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	str r0, [r4]
	adds r5, r3, #0
	adds r5, #0x94
	adds r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	str r0, [r5]
	adds r0, r3, #0
	adds r0, #0x5e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801438C
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r4]
	ldr r0, [r5]
	lsls r0, r0, #1
	str r0, [r5]
	b _080143D8
	.align 2, 0
_08014388: .4byte gUnknown_080CECB2
_0801438C:
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #6
	bne _080143D8
	adds r0, r3, #0
	adds r0, #0x60
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080143D8
	ldr r0, [r7]
	asrs r0, r0, #2
	str r0, [r7]
	ldr r0, [r6]
	asrs r0, r0, #2
	str r0, [r6]
	ldr r0, [r4]
	asrs r0, r0, #1
	str r0, [r4]
	ldr r0, [r5]
	asrs r0, r0, #1
	str r0, [r5]
	b _080143D8
_080143BA:
	adds r1, r3, #0
	adds r1, #0x8c
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r1]
	subs r1, #4
	movs r0, #0x98
	lsls r0, r0, #4
	str r0, [r1]
	adds r1, #8
	movs r0, #0xc
	str r0, [r1]
	adds r1, #4
	movs r0, #0x40
	str r0, [r1]
_080143D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80143E0
sub_80143E0: @ 0x080143E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080144AE
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08014440
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080144AE
	ldr r1, _08014438 @ =gUnknown_080CECC6
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0801442A
	rsbs r1, r1, #0
_0801442A:
	ldr r0, _0801443C @ =0x000004BF
	cmp r1, r0
	bgt _080144AE
	adds r0, r4, #0
	bl sub_8019A64
	b _080144AE
	.align 2, 0
_08014438: .4byte gUnknown_080CECC6
_0801443C: .4byte 0x000004BF
_08014440:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080144A8
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _08014454
	rsbs r1, r1, #0
_08014454:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r1, r0
	blt _080144A8
	adds r2, r4, #0
	adds r2, #0x50
	ldr r1, _080144A0 @ =gUnknown_080CECC6
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _080144AE
	adds r0, r4, #0
	bl sub_8019A58
	ldrb r1, [r5]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _080144AE
	ldr r1, _080144A4 @ =gCamera
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #0x20]
	adds r0, r4, #0
	movs r1, #0xdd
	bl sub_8004E98
	b _080144AE
	.align 2, 0
_080144A0: .4byte gUnknown_080CECC6
_080144A4: .4byte gCamera
_080144A8:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080144AE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80144B4
sub_80144B4: @ 0x080144B4
	push {lr}
	adds r2, r0, #0
	movs r0, #0x1c
	ldrsh r3, [r2, r0]
	cmp r3, #0
	bge _080144C2
	rsbs r3, r3, #0
_080144C2:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r3, r0
	bgt _080144D6
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	b _08014548
_080144D6:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r3, r0
	bgt _080144EC
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	b _08014546
_080144EC:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _08014502
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	b _08014546
_08014502:
	movs r0, #0xe0
	lsls r0, r0, #3
	cmp r3, r0
	ble _08014516
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014524
_08014516:
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	b _08014546
_08014524:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r3, r0
	bgt _0801453A
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	b _08014546
_0801453A:
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
_08014546:
	orrs r0, r1
_08014548:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8014550
sub_8014550: @ 0x08014550
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r7, _080145FC @ =gStageData
	ldrb r0, [r7, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801465E
	adds r0, r4, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sl, r0
	cmp r1, #0
	bgt _0801465E
	adds r0, #2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0801465E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080145A6
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	ldr r0, [r4, #4]
	ldr r1, _08014600 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
_080145A6:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r7, #3]
	cmp r0, #7
	beq _08014642
	adds r0, r4, #0
	bl sub_8019A64
	movs r2, #0x2b
	adds r2, r2, r4
	mov r8, r2
	ldrb r0, [r2]
	movs r1, #0x1c
	mov sb, r1
	mov r3, sb
	ands r3, r0
	cmp r3, #8
	beq _08014642
	ldrb r1, [r7, #0xa]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08014642
	adds r0, r1, #0
	cmp r0, #8
	beq _08014642
	cmp r0, #9
	beq _08014642
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r5, r4, r2
	ldrb r2, [r5]
	movs r1, #0x30
	ands r1, r2
	cmp r1, #0
	beq _08014604
	movs r0, #0xcf
	ands r0, r2
	strb r0, [r5]
	b _08014642
	.align 2, 0
_080145FC: .4byte gStageData
_08014600: .4byte 0xFFFDFFFF
_08014604:
	adds r5, r7, #0
	adds r5, #0xac
	ldrh r0, [r5]
	cmp r0, #0
	bne _08014616
	adds r0, r4, #0
	bl sub_8008E38
	b _0801465E
_08014616:
	cmp r3, #4
	bne _08014642
	ldrh r6, [r5]
	strh r1, [r5]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_802AE64
	ldrb r0, [r7, #3]
	cmp r0, #4
	bls _08014642
	mov r0, r8
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #4
	bne _08014642
	ldrh r1, [r5]
	adds r0, r6, #0
	bl sub_80274AC
_08014642:
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	ldr r1, _0801466C @ =sub_8008CD0
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0x78
	mov r1, sl
	strh r0, [r1]
_0801465E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801466C: .4byte sub_8008CD0

	thumb_func_start sub_8014670
sub_8014670: @ 0x08014670
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0801470C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08014704
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0x66
	beq _08014696
	adds r1, r3, #0
	adds r1, #0x4a
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08014696
	subs r0, r2, #1
	strh r0, [r1]
_08014696:
	adds r1, r3, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146BC
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080146BC
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
_080146BC:
	adds r1, r3, #0
	adds r1, #0x5e
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146CE
	subs r0, r2, #1
	strh r0, [r1]
_080146CE:
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146E0
	subs r0, r2, #1
	strh r0, [r1]
_080146E0:
	adds r1, r3, #0
	adds r1, #0x62
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080146F2
	subs r0, r2, #1
	strh r0, [r1]
_080146F2:
	adds r2, r3, #0
	adds r2, #0x66
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08014704
	subs r0, r1, #1
	strh r0, [r2]
_08014704:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801470C: .4byte gStageData

	thumb_func_start sub_8014710
sub_8014710: @ 0x08014710
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08014796
	movs r5, #0
	ldr r0, _0801476C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08014796
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08014796
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014796
	adds r2, r4, #0
	adds r2, #0x57
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0801475A
	subs r0, r1, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08014784
_0801475A:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08014770
	movs r5, #1
	b _08014788
	.align 2, 0
_0801476C: .4byte gStageData
_08014770:
	subs r0, r3, #1
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r2]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_801782C
_08014784:
	cmp r5, #0
	beq _08014796
_08014788:
	adds r0, r4, #0
	movs r1, #0x9d
	bl sub_8004E98
	adds r0, r4, #0
	bl sub_8008FE4
_08014796:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801479C
sub_801479C: @ 0x0801479C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x88
	movs r3, #0x1c
	ldrsh r1, [r2, r3]
	ldr r4, [r0]
	movs r5, #0
	ldrsh r3, [r0, r5]
	cmp r1, r3
	ble _080147B4
	strh r4, [r2, #0x1c]
	b _080147C0
_080147B4:
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmn r0, r3
	bge _080147C0
	rsbs r0, r4, #0
	strh r0, [r2, #0x1c]
_080147C0:
	movs r3, #0x1c
	ldrsh r4, [r2, r3]
	adds r0, r2, #0
	adds r0, #0x26
	ldr r5, _08014808 @ =gSineTable
	ldrb r3, [r0]
	lsls r0, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x18]
	ldr r1, [r2, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080147EE
	strh r1, [r2, #0x1a]
_080147EE:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	ldrh r3, [r2, #0x1a]
	adds r0, r0, r3
	strh r0, [r2, #0x1a]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014808: .4byte gSineTable

	thumb_func_start sub_801480C
sub_801480C: @ 0x0801480C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r5, [r0]
	ldr r0, _08014890 @ =gStageData
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _08014828
	b _08014934
_08014828:
	adds r0, r4, #0
	bl sub_8031BAC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r7, r6, #0
	cmp r6, #2
	bne _0801483A
	b _08014934
_0801483A:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08014858
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08014858:
	adds r0, r5, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sub_8012E54
	cmp r0, #3
	ble _08014934
	mov r1, r8
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _080148FC
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801489C
	cmp r6, #0
	beq _0801488A
	ldr r0, [r4, #0x14]
	ldr r2, _08014894 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x14]
_0801488A:
	ldr r1, _08014898 @ =sub_8007EAC
	b _080148EA
	.align 2, 0
_08014890: .4byte gStageData
_08014894: .4byte 0xFFFFFE00
_08014898: .4byte sub_8007EAC
_0801489C:
	ldr r1, [r4, #0xc]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080148C0
	cmp r6, #0
	beq _080148B2
	ldr r0, [r4, #0x14]
	ldr r1, _080148B8 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_080148B2:
	ldr r1, _080148BC @ =sub_8006250
	b _080148EA
	.align 2, 0
_080148B8: .4byte 0xFFFFFE00
_080148BC: .4byte sub_8006250
_080148C0:
	movs r0, #6
	ands r1, r0
	cmp r1, #4
	bne _080148DC
	ldrh r1, [r4, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080148DC
	ldr r1, _080148D8 @ =sub_801DFC4
	b _080148EA
	.align 2, 0
_080148D8: .4byte sub_801DFC4
_080148DC:
	cmp r7, #0
	beq _080148E8
	ldr r0, [r4, #0x14]
	ldr r2, _080148F4 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x14]
_080148E8:
	ldr r1, _080148F8 @ =sub_8006310
_080148EA:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08014910
	.align 2, 0
_080148F4: .4byte 0xFFFFFE00
_080148F8: .4byte sub_8006310
_080148FC:
	cmp r7, #0
	beq _08014908
	ldr r0, [r4, #0x14]
	ldr r1, _0801492C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08014908:
	ldr r1, _08014930 @ =sub_8006250
	adds r0, r4, #0
	bl SetPlayerCallback
_08014910:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014926
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
_08014926:
	movs r0, #1
	b _08014936
	.align 2, 0
_0801492C: .4byte 0xFFFFFE00
_08014930: .4byte sub_8006250
_08014934:
	movs r0, #0
_08014936:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014940
sub_8014940: @ 0x08014940
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r5, r0, #1
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r6, [r0]
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0x66
	beq _080149DC
	ldr r1, [r3, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080149DC
	ldrh r2, [r3, #0x18]
	ldrh r4, [r3, #0x1e]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080149A0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801497E
	movs r0, #1
	orrs r1, r0
	str r1, [r3, #4]
_0801497E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r6, #0
	cmp r0, r1
	bge _080149DA
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _080149DA
	lsls r0, r1, #0x10
	b _080149D8
_080149A0:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080149DA
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080149BA
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #4]
_080149BA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	ble _080149DA
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _080149DA
	lsls r0, r6, #0x10
_080149D8:
	lsrs r2, r0, #0x10
_080149DA:
	strh r2, [r3, #0x18]
_080149DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_80149E4
Player_80149E4: @ 0x080149E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x1a]
	adds r3, r2, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
	movs r0, #0x80
	ands r1, r0
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _08014A08
	cmp r2, #0
	beq _08014A14
_08014A08:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
_08014A14:
	adds r0, r1, #0
	subs r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08014A4C
	cmp r0, #1
	bgt _08014A32
	cmp r0, #0
	beq _08014A3C
	b _08014A5A
_08014A32:
	cmp r0, #2
	beq _08014A44
	cmp r0, #3
	beq _08014A54
	b _08014A5A
_08014A3C:
	adds r0, r4, #0
	bl sub_8011D08
	b _08014A5A
_08014A44:
	adds r0, r4, #0
	bl sub_8011E70
	b _08014A5A
_08014A4C:
	adds r0, r4, #0
	bl sub_8011FB8
	b _08014A5A
_08014A54:
	adds r0, r4, #0
	bl sub_8012118
_08014A5A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8014A60
sub_8014A60: @ 0x08014A60
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x80
	bne _08014AF0
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #0x1c]
	cmp r0, #0
	bne _08014AA8
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08014AA8
	ldr r0, [r4, #4]
	ldr r1, _08014AA0 @ =0x00020006
	ands r0, r1
	cmp r0, #0
	bne _08014AA8
	ldr r1, _08014AA4 @ =sub_8007FE8
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	b _08014AF2
	.align 2, 0
_08014AA0: .4byte 0x00020006
_08014AA4: .4byte sub_8007FE8
_08014AA8:
	adds r0, r2, #0
	adds r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _08014AF0
	ldr r2, [r4, #4]
	ldr r0, _08014AE8 @ =0x00020006
	ands r0, r2
	cmp r0, #0
	bne _08014AF0
	ldr r0, [r4, #0xc]
	movs r1, #6
	ands r0, r1
	cmp r0, #2
	bne _08014AF0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _08014AF0
	ldr r1, _08014AEC @ =Player_800891C
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x6d
	bl sub_8004E98
	movs r0, #1
	b _08014AF2
	.align 2, 0
_08014AE8: .4byte 0x00020006
_08014AEC: .4byte Player_800891C
_08014AF0:
	movs r0, #0
_08014AF2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8014AF8
sub_8014AF8: @ 0x08014AF8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _08014B68 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08014B6C @ =gPlayers
	adds r6, r0, r1
	ldr r3, _08014B70 @ =gStageData
	ldrb r4, [r3, #3]
	cmp r4, #7
	beq _08014BBC
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08014BB2
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08014BB2
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r3, #0x18]
	ands r0, r1
	cmp r0, #0
	bne _08014BB2
	ldr r0, [r2, #4]
	ldr r1, _08014B74 @ =0x08820046
	ands r0, r1
	cmp r0, #0
	bne _08014BB2
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08014B78
	subs r0, r3, #1
	b _08014BBA
	.align 2, 0
_08014B68: .4byte gCurTask
_08014B6C: .4byte gPlayers
_08014B70: .4byte gStageData
_08014B74: .4byte 0x08820046
_08014B78:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08014B84
	movs r0, #6
	b _08014BAC
_08014B84:
	cmp r4, #4
	bhi _08014BAA
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #4
	bne _08014BAA
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08014BAA
	movs r0, #0xfb
	b _08014BAC
_08014BAA:
	movs r0, #7
_08014BAC:
	strh r0, [r2, #0x30]
	movs r0, #1
	b _08014BBE
_08014BB2:
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #1
_08014BBA:
	strh r0, [r1]
_08014BBC:
	movs r0, #0
_08014BBE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014BC4
sub_8014BC4: @ 0x08014BC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08014BFC @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08014BD2
	b _08014D62
_08014BD2:
	ldrh r0, [r1, #0xe]
	cmp r0, #1
	bne _08014BDA
	b _08014D62
_08014BDA:
	cmp r0, #0xb
	bne _08014BE0
	b _08014D62
_08014BE0:
	ldrh r0, [r5, #0x1e]
	ldrh r2, [r1, #0x18]
	ands r2, r0
	cmp r2, #0
	beq _08014CA0
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08014C00
	movs r0, #1
	b _08014D64
	.align 2, 0
_08014BFC: .4byte gStageData
_08014C00:
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x1d
	bgt _08014C14
	adds r0, r3, #1
	strh r0, [r1]
	b _08014D62
_08014C14:
	movs r4, #0x80
	lsls r4, r4, #0xf
	ands r2, r4
	cmp r2, #0
	bne _08014C28
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_8004E98
_08014C28:
	ldr r0, [r5, #4]
	orrs r0, r4
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r4, r0, #0
	cmp r1, #0x3c
	beq _08014C3E
	b _08014D62
_08014C3E:
	adds r0, r5, #0
	bl sub_8019A64
	adds r0, r5, #0
	bl sub_80193A4
	ldr r0, [r5, #4]
	movs r1, #0x24
	ands r0, r1
	cmp r0, #4
	bne _08014C64
	ldr r1, _08014C60 @ =sub_800E150
	adds r0, r5, #0
	bl SetPlayerCallback
	b _08014C6C
	.align 2, 0
_08014C60: .4byte sub_800E150
_08014C64:
	ldr r1, _08014C94 @ =Player_80077CC
	adds r0, r5, #0
	bl SetPlayerCallback
_08014C6C:
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_8004F10
	ldr r1, _08014C98 @ =0x0000021B
	adds r0, r5, #0
	bl sub_8004E98
	ldr r0, [r5, #4]
	ldr r1, _08014C9C @ =0xFFBFFFF5
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0
	strh r0, [r4]
	movs r0, #1
	b _08014D64
	.align 2, 0
_08014C94: .4byte Player_80077CC
_08014C98: .4byte 0x0000021B
_08014C9C: .4byte 0xFFBFFFF5
_08014CA0:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x40
	cmp r0, #0
	beq _08014CDC
	adds r4, r5, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08014CDC
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	beq _08014CDC
	cmp r0, #0x1d
	bgt _08014CDC
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r4]
	strh r2, [r1]
	adds r0, r5, #0
	bl sub_800C3AC
	b _08014D62
_08014CDC:
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014D38
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _08014D30 @ =gPlayers
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_800BF78
	ldr r0, [r4, #4]
	ldr r1, _08014D34 @ =0xFE7FFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_80193CC
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_8004F10
	adds r4, r5, #0
	adds r4, #0x42
	b _08014D5E
	.align 2, 0
_08014D30: .4byte gPlayers
_08014D34: .4byte 0xFE7FFFFF
_08014D38:
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r0, #0
	cmp r1, #0
	beq _08014D50
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_8004F10
_08014D50:
	adds r0, r5, #0
	bl sub_80193A4
	ldr r0, [r5, #4]
	ldr r1, _08014D6C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08014D5E:
	movs r0, #0
	strh r0, [r4]
_08014D62:
	movs r0, #0
_08014D64:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014D6C: .4byte 0xFFBFFFFF

	thumb_func_start sub_8014D70
sub_8014D70: @ 0x08014D70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014E5C
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08014E5C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x15
	bhi _08014E36
	lsls r0, r0, #2
	ldr r1, _08014DA4 @ =_08014DA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014DA4: .4byte _08014DA8
_08014DA8: @ jump table
	.4byte _08014E08 @ case 0
	.4byte _08014E36 @ case 1
	.4byte _08014E36 @ case 2
	.4byte _08014E08 @ case 3
	.4byte _08014E36 @ case 4
	.4byte _08014E36 @ case 5
	.4byte _08014E36 @ case 6
	.4byte _08014E36 @ case 7
	.4byte _08014E00 @ case 8
	.4byte _08014E00 @ case 9
	.4byte _08014E36 @ case 10
	.4byte _08014E36 @ case 11
	.4byte _08014E36 @ case 12
	.4byte _08014E36 @ case 13
	.4byte _08014E08 @ case 14
	.4byte _08014E36 @ case 15
	.4byte _08014E36 @ case 16
	.4byte _08014E36 @ case 17
	.4byte _08014E04 @ case 18
	.4byte _08014E36 @ case 19
	.4byte _08014E36 @ case 20
	.4byte _08014E1C @ case 21
_08014E00:
	movs r0, #8
	b _08014E0A
_08014E04:
	movs r0, #0x10
	b _08014E0A
_08014E08:
	movs r0, #0
_08014E0A:
	strh r0, [r4, #0x30]
	ldr r1, _08014E18 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08014E36
	.align 2, 0
_08014E18: .4byte Player_8005380
_08014E1C:
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08014E2A
	movs r0, #0x14
	b _08014E2C
_08014E2A:
	movs r0, #0x6c
_08014E2C:
	strh r0, [r4, #0x30]
	ldr r1, _08014E64 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_08014E36:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08014E68 @ =gPlayers
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r2, _08014E6C @ =0xFE7FFFFF
	ands r0, r2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	ands r0, r2
	str r0, [r4, #4]
_08014E5C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08014E64: .4byte sub_800DAF4
_08014E68: .4byte gPlayers
_08014E6C: .4byte 0xFE7FFFFF

	thumb_func_start sub_8014E70
sub_8014E70: @ 0x08014E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_08014E7E:
	movs r2, #0x40
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08014E8E
	cmp r0, #0
	ble _08014E9A
	b _08014E98
_08014E8E:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014E9A
_08014E98:
	movs r2, #0xc0
_08014E9A:
	lsls r0, r3, #0x10
	adds r7, r0, #0
	cmp r7, #0
	beq _08014EBE
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _08014EAC
	rsbs r1, r1, #0
_08014EAC:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08014F78
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r2, r0, #0x18
_08014EBE:
	adds r6, r5, #0
	adds r6, #0x26
	ldrb r4, [r6]
	adds r0, r4, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08014EE8
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08014EE8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8011BFC
	lsls r2, r0, #8
	cmp r2, #0
	bgt _08014F78
	movs r0, #1
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r1, r0, #6
	cmp r1, #1
	beq _08014F30
	cmp r1, #1
	bgt _08014F12
	cmp r1, #0
	beq _08014F1C
	b _08014F78
_08014F12:
	cmp r1, #2
	beq _08014F36
	cmp r1, #3
	beq _08014F56
	b _08014F78
_08014F1C:
	ldr r0, [r5, #0x14]
	adds r0, r0, r2
	str r0, [r5, #0x14]
	strb r1, [r6]
	asrs r0, r7, #0x10
	cmp r0, #0
	bne _08014F78
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
	b _08014F78
_08014F30:
	ldr r0, [r5, #0x10]
	subs r0, r0, r2
	b _08014F5A
_08014F36:
	ldr r0, [r5, #0x14]
	subs r0, r0, r2
	str r0, [r5, #0x14]
	movs r0, #0
	strb r0, [r6]
	asrs r0, r7, #0x10
	cmp r0, #0
	bne _08014F4C
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08014F4C:
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	b _08014F78
_08014F56:
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
_08014F5A:
	str r0, [r5, #0x10]
	asrs r2, r7, #0x10
	cmp r2, #0
	bne _08014F78
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08014F74
	movs r0, #0x40
	orrs r1, r0
	str r1, [r5, #4]
_08014F74:
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1c]
_08014F78:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08014F88
	b _08014E7E
_08014F88:
	mov r0, r8
	cmp r0, #0
	beq _08014F9A
	adds r0, r5, #0
	adds r0, #0x99
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_08014F9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8014FA4
sub_8014FA4: @ 0x08014FA4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r2, #0x40
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014FB8
	movs r2, #0xc0
_08014FB8:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sp
	adds r4, r5, #0
	adds r4, #0x28
	ldrb r0, [r4]
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r0, [r6]
	strb r0, [r1, #1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_8011BFC
	lsls r2, r0, #8
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r4]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r6]
	cmp r2, #0
	bgt _0801505A
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r0, r0, #6
	cmp r0, #1
	beq _08015022
	cmp r0, #1
	bgt _08015008
	cmp r0, #0
	beq _08015012
	b _08015046
_08015008:
	cmp r0, #2
	beq _08015028
	cmp r0, #3
	beq _08015038
	b _08015046
_08015012:
	ldr r0, [r5, #0x14]
	adds r0, r0, r2
	str r0, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
	b _08015046
_08015022:
	ldr r0, [r5, #0x10]
	subs r0, r0, r2
	b _0801503C
_08015028:
	ldr r0, [r5, #0x14]
	subs r0, r0, r2
	str r0, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
	b _0801503E
_08015038:
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
_0801503C:
	str r0, [r5, #0x10]
_0801503E:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x18]
_08015046:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x99
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0801505A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015064
sub_8015064: @ 0x08015064
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r7, _0801508C @ =gCamera
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	movs r0, #0
	mov sb, r0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _08015090
	movs r0, #1
	b _08015132
	.align 2, 0
_0801508C: .4byte gCamera
_08015090:
	adds r0, r4, #0
	bl sub_8016FA8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080150E0
	ldr r0, [r4, #4]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080150B4
	ldr r0, _080150B0 @ =0x0000FD60
	b _080150B6
	.align 2, 0
_080150B0: .4byte 0x0000FD60
_080150B4:
	ldr r0, _080150CC @ =0x0000FB20
_080150B6:
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080150D0
	ldr r0, [r7, #0x10]
	lsls r5, r0, #8
	b _080150D6
	.align 2, 0
_080150CC: .4byte 0x0000FB20
_080150D0:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	subs r5, r0, #1
_080150D6:
	adds r0, r4, #0
	bl sub_8008E38
	movs r0, #1
	mov sb, r0
_080150E0:
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	mov r8, r6
	mov ip, r5
	ldr r0, [r7, #0x18]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r6, r0
	blt _08015102
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #8
	ldr r7, _08015140 @ =0xFFFFF4FF
	adds r1, r0, r7
	adds r0, r6, #0
	cmp r0, r1
	ble _08015102
	adds r0, r1, #0
_08015102:
	adds r6, r0, #0
	lsls r0, r2, #8
	cmp r5, r0
	blt _08015116
	lsls r0, r3, #8
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	ble _08015116
	adds r0, r1, #0
_08015116:
	adds r5, r0, #0
	cmp r6, r8
	beq _08015122
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_08015122:
	cmp r5, ip
	beq _0801512C
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0801512C:
	str r6, [r4, #0x10]
	str r5, [r4, #0x14]
	mov r0, sb
_08015132:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015140: .4byte 0xFFFFF4FF

	thumb_func_start sub_8015144
sub_8015144: @ 0x08015144
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x26
	ldrb r3, [r0]
	adds r0, r3, #0
	adds r0, #0x60
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xbf
	bgt _080151BE
	ldr r0, [r2, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08015188
	ldr r1, _08015184 @ =gSineTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r1, r0, #5
	ldrh r3, [r2, #0x1c]
	movs r4, #0x1c
	ldrsh r0, [r2, r4]
	cmp r0, #0
	beq _080151BE
	adds r0, r3, r1
	b _080151BC
	.align 2, 0
_08015184: .4byte gSineTable
_08015188:
	movs r0, #0x1c
	ldrsh r4, [r2, r0]
	ldrh r5, [r2, #0x1c]
	cmp r4, #0
	beq _080151BE
	ldr r1, _080151B0 @ =gSineTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	asrs r1, r0, #8
	cmp r4, #0
	ble _080151B4
	cmp r1, #0
	bgt _080151BA
	b _080151B8
	.align 2, 0
_080151B0: .4byte gSineTable
_080151B4:
	cmp r1, #0
	blt _080151BA
_080151B8:
	asrs r1, r0, #0xa
_080151BA:
	adds r0, r5, r1
_080151BC:
	strh r0, [r2, #0x1c]
_080151BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80151C4
sub_80151C4: @ 0x080151C4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08015200 @ =gSineTable
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #5
	ldrh r1, [r3, #0x1c]
	adds r2, r0, r1
	strh r2, [r3, #0x1c]
	ldrh r1, [r3, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015204
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08015222
	adds r0, r2, #0
	subs r0, #8
	b _08015220
	.align 2, 0
_08015200: .4byte gSineTable
_08015204:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015222
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	bls _08015222
	adds r0, r2, #0
	adds r0, #8
_08015220:
	strh r0, [r3, #0x1c]
_08015222:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015228
sub_8015228: @ 0x08015228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r6, #0x14]
	asrs r5, r0, #8
	ldr r0, _080152E0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	bne _0801524A
	b _080153A8
_0801524A:
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _08015254
	rsbs r0, r0, #0
_08015254:
	cmp r0, #0x7f
	ble _0801525A
	b _080153A8
_0801525A:
	adds r7, r6, #0
	adds r7, #0x25
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	movs r3, #0x27
	adds r3, r3, r6
	mov r8, r3
	ldrb r2, [r3]
	movs r1, #0
	str r1, [sp]
	ldr r1, _080152E4 @ =sub_805217C
	str r1, [sp, #4]
	mov r1, sb
	movs r3, #8
	bl sub_80517FC
	cmp r0, #8
	bgt _08015282
	b _080153A8
_08015282:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080152E8
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
	mov r1, sb
	subs r1, #2
	adds r4, r6, #0
	adds r4, #0x24
	movs r2, #0
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	add r3, sp, #8
	str r3, [sp]
	ldr r3, _080152E4 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	mov sl, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
	mov r1, sb
	adds r1, #2
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	mov r4, sp
	adds r4, #9
	str r4, [sp]
	ldr r3, _080152E4 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	b _08015334
	.align 2, 0
_080152E0: .4byte gStageData
_080152E4: .4byte sub_805217C
_080152E8:
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	mov r1, sb
	subs r1, #2
	adds r4, r6, #0
	adds r4, #0x24
	movs r2, #0
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	add r3, sp, #8
	str r3, [sp]
	ldr r3, _08015360 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	mov sl, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	mov r1, sb
	adds r1, #2
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	mov r4, sp
	adds r4, #9
	str r4, [sp]
	ldr r3, _08015360 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
_08015334:
	mov r1, sl
	cmp r1, #8
	ble _08015368
	cmp r0, #0
	bne _08015368
	ldrb r4, [r4]
	cmp r4, #0xff
	beq _08015350
	cmp r4, #1
	beq _08015350
	cmp r4, #0x7f
	beq _08015350
	cmp r4, #0x81
	bne _08015368
_08015350:
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08015390
	ldr r1, _08015364 @ =sub_800DFEC
	b _08015392
	.align 2, 0
_08015360: .4byte sub_805217C
_08015364: .4byte sub_800DFEC
_08015368:
	mov r3, sl
	cmp r3, #0
	bne _080153A8
	cmp r0, #8
	ble _080153A8
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08015386
	cmp r0, #1
	beq _08015386
	cmp r0, #0x7f
	beq _08015386
	cmp r0, #0x81
	bne _080153A8
_08015386:
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080153A0
_08015390:
	ldr r1, _0801539C @ =sub_800E01C
_08015392:
	adds r0, r6, #0
	bl SetPlayerCallback
	b _080153A8
	.align 2, 0
_0801539C: .4byte sub_800E01C
_080153A0:
	ldr r1, _080153B8 @ =sub_800DFEC
	adds r0, r6, #0
	bl SetPlayerCallback
_080153A8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080153B8: .4byte sub_800DFEC

	thumb_func_start sub_80153BC
sub_80153BC: @ 0x080153BC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08015400
	ldr r1, [r4, #4]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080153FA
	movs r5, #1
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0x1a]
_080153FA:
	orrs r1, r2
	str r1, [r4, #4]
	b _08015422
_08015400:
	ldr r1, [r4, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801540C
	movs r5, #1
_0801540C:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0xe
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x78
	strb r0, [r1]
_08015422:
	cmp r5, #0
	beq _0801544E
	ldr r0, _0801545C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _0801544E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801544E
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	bl sub_80172F0
	adds r0, r4, #0
	movs r1, #0x9c
	bl sub_8004E98
_0801544E:
	adds r0, r4, #0
	bl sub_8014710
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801545C: .4byte gStageData

	thumb_func_start sub_8015460
sub_8015460: @ 0x08015460
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r2, [r4, #0x14]
	asrs r2, r2, #8
	adds r1, r4, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	cmp r0, r1
	bgt _0801549E
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080154A6
_0801549E:
	ldrh r0, [r4, #0x1a]
	subs r0, #0x10
	strh r0, [r4, #0x1a]
	b _080154AA
_080154A6:
	str r1, [r4, #0x14]
	strh r5, [r4, #0x1a]
_080154AA:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080154DA
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080154CA
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	b _080154F2
_080154CA:
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _0801550A
	adds r0, r1, #0
	adds r0, #8
	b _08015508
_080154DA:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015514
	ldr r1, [r4, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080154F8
	orrs r1, r2
	str r1, [r4, #4]
_080154F2:
	strh r0, [r4, #0x18]
	movs r5, #3
	b _0801554C
_080154F8:
	ldrh r2, [r4, #0x18]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _08015510 @ =0xFFFFFF00
	cmp r1, r0
	ble _0801550A
	adds r0, r2, #0
	subs r0, #8
_08015508:
	strh r0, [r4, #0x18]
_0801550A:
	movs r5, #1
	b _0801554C
	.align 2, 0
_08015510: .4byte 0xFFFFFF00
_08015514:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08015538
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08015534
	adds r0, r1, #0
	subs r0, #0x20
	strh r0, [r4, #0x1a]
_08015534:
	movs r5, #2
	b _0801554C
_08015538:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08015544
	movs r5, #4
	b _0801554C
_08015544:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x18]
_0801554C:
	adds r0, r4, #0
	bl Player_80149E4
	ldr r0, [r4, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015568
sub_8015568: @ 0x08015568
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080155AC @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	bne _08015576
	b _08015A3C
_08015576:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08015586
	b _08015A3C
_08015586:
	ldrh r1, [r4, #0x20]
	ldrh r0, [r2, #0x16]
	ands r0, r1
	cmp r0, #0
	bne _08015592
	b _08015A3C
_08015592:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _080155A2
	b _08015A3C
_080155A2:
	lsls r0, r0, #2
	ldr r1, _080155B0 @ =_080155B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080155AC: .4byte gStageData
_080155B0: .4byte _080155B4
_080155B4: @ jump table
	.4byte _080155C8 @ case 0
	.4byte _08015674 @ case 1
	.4byte _08015720 @ case 2
	.4byte _080157CC @ case 3
	.4byte _08015874 @ case 4
_080155C8:
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
	ldr r1, _08015658 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801560C
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801565C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801560C:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801562E
	ldr r0, _08015660 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015664 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_0801562E:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801563C
	b _080158E4
_0801563C:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _0801566C
	cmp r1, #8
	bls _0801564C
	b _08015A0C
_0801564C:
	cmp r1, #0
	beq _08015652
	b _08015A3C
_08015652:
	ldr r1, _08015668 @ =sub_8019FF8
	b _08015A2E
	.align 2, 0
_08015658: .4byte gPlayers
_0801565C: .4byte 0xFFBFFFFF
_08015660: .4byte 0xFF7FFFFF
_08015664: .4byte 0xFEFFFFFF
_08015668: .4byte sub_8019FF8
_0801566C:
	ldr r1, _08015670 @ =sub_801A05C
	b _08015A2E
	.align 2, 0
_08015670: .4byte sub_801A05C
_08015674:
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
	ldr r1, _080156F0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080156B8
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080156F4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080156B8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080156DA
	ldr r0, _080156F8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080156FC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080156DA:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _08015710
	cmp r1, #8
	bhi _08015700
	cmp r1, #0
	beq _08015706
	b _08015A3C
	.align 2, 0
_080156F0: .4byte gPlayers
_080156F4: .4byte 0xFFBFFFFF
_080156F8: .4byte 0xFF7FFFFF
_080156FC: .4byte 0xFEFFFFFF
_08015700:
	cmp r1, #0x10
	beq _08015718
	b _08015A0C
_08015706:
	ldr r1, _0801570C @ =sub_801AA54
	b _08015A2E
	.align 2, 0
_0801570C: .4byte sub_801AA54
_08015710:
	ldr r1, _08015714 @ =sub_801AAEC
	b _08015A2E
	.align 2, 0
_08015714: .4byte sub_801AAEC
_08015718:
	ldr r1, _0801571C @ =sub_801AB10
	b _08015A2E
	.align 2, 0
_0801571C: .4byte sub_801AB10
_08015720:
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
	ldr r1, _080157B0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015764
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080157B4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015764:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015786
	ldr r0, _080157B8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080157BC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015786:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08015794
	b _080158E4
_08015794:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _080157C4
	cmp r1, #8
	bls _080157A4
	b _08015A0C
_080157A4:
	cmp r1, #0
	beq _080157AA
	b _08015A3C
_080157AA:
	ldr r1, _080157C0 @ =sub_801BCCC
	b _08015A2E
	.align 2, 0
_080157B0: .4byte gPlayers
_080157B4: .4byte 0xFFBFFFFF
_080157B8: .4byte 0xFF7FFFFF
_080157BC: .4byte 0xFEFFFFFF
_080157C0: .4byte sub_801BCCC
_080157C4:
	ldr r1, _080157C8 @ =sub_801BD1C
	b _08015A2E
	.align 2, 0
_080157C8: .4byte sub_801BD1C
_080157CC:
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
	ldr r1, _08015858 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015810
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801585C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015810:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015832
	ldr r0, _08015860 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015864 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015832:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080158E4
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #8
	beq _0801586C
	cmp r1, #8
	bls _0801584E
	b _08015A0C
_0801584E:
	cmp r1, #0
	beq _08015854
	b _08015A3C
_08015854:
	ldr r1, _08015868 @ =sub_801D7B0
	b _08015A2E
	.align 2, 0
_08015858: .4byte gPlayers
_0801585C: .4byte 0xFFBFFFFF
_08015860: .4byte 0xFF7FFFFF
_08015864: .4byte 0xFEFFFFFF
_08015868: .4byte sub_801D7B0
_0801586C:
	ldr r1, _08015870 @ =sub_801D804
	b _08015A2E
	.align 2, 0
_08015870: .4byte sub_801D804
_08015874:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _0801590C
	subs r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080158F8 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080158C2
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080158FC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080158C2:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080158E4
	ldr r0, _08015900 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015904 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080158E4:
	ldr r1, _08015908 @ =sub_800C87C
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xd
	adds r1, r4, #0
	bl sub_801EBC0
	movs r0, #1
	b _08015A3E
	.align 2, 0
_080158F8: .4byte gPlayers
_080158FC: .4byte 0xFFBFFFFF
_08015900: .4byte 0xFF7FFFFF
_08015904: .4byte 0xFEFFFFFF
_08015908: .4byte sub_800C87C
_0801590C:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x80
	bne _0801599C
	ldr r0, [r4, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801599C
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
	ldr r1, _08015988 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015962
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0801598C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015962:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015984
	ldr r0, _08015990 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015994 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015984:
	ldr r1, _08015998 @ =sub_801E888
	b _08015A2E
	.align 2, 0
_08015988: .4byte gPlayers
_0801598C: .4byte 0xFFBFFFFF
_08015990: .4byte 0xFF7FFFFF
_08015994: .4byte 0xFEFFFFFF
_08015998: .4byte sub_801E888
_0801599C:
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
	ldr r1, _08015A14 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080159E0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08015A18 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080159E0:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015A02
	ldr r0, _08015A1C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015A20 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015A02:
	ldr r1, [r4, #0xc]
	movs r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08015A24
_08015A0C:
	cmp r1, #0x18
	beq _08015A2C
	b _08015A3C
	.align 2, 0
_08015A14: .4byte gPlayers
_08015A18: .4byte 0xFFBFFFFF
_08015A1C: .4byte 0xFF7FFFFF
_08015A20: .4byte 0xFEFFFFFF
_08015A24:
	ldr r1, _08015A28 @ =sub_801E69C
	b _08015A2E
	.align 2, 0
_08015A28: .4byte sub_801E69C
_08015A2C:
	ldr r1, _08015A38 @ =sub_8009780
_08015A2E:
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	b _08015A3E
	.align 2, 0
_08015A38: .4byte sub_8009780
_08015A3C:
	movs r0, #0
_08015A3E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8015A44
sub_8015A44: @ 0x08015A44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08015B70 @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0x1c
	ands r0, r2
	cmp r0, #8
	bne _08015A72
	b _08015C80
_08015A72:
	cmp r0, #0x14
	bne _08015A78
	b _08015C80
_08015A78:
	ldr r0, _08015B74 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08015A82
	b _08015C80
_08015A82:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08015A90
	b _08015C80
_08015A90:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08015A9E
	b _08015C80
_08015A9E:
	movs r2, #0
	mov sb, r2
_08015AA2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r7
	lsls r1, r1, #4
	ldr r2, _08015B70 @ =gPlayers
	adds r4, r1, r2
	mov r8, r0
	cmp r4, r5
	bne _08015ABE
	b _08015C6E
_08015ABE:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0x14
	bne _08015ACE
	b _08015C6E
_08015ACE:
	cmp r1, #8
	bne _08015AD4
	b _08015C6E
_08015AD4:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08015AE2
	b _08015C6E
_08015AE2:
	ldr r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #0x16
	ands r0, r2
	cmp r0, #0
	beq _08015AF0
	b _08015C6E
_08015AF0:
	ands r1, r2
	cmp r1, #0
	beq _08015AF8
	b _08015C6E
_08015AF8:
	ldr r2, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bge _08015B12
	rsbs r2, r2, #0
_08015B12:
	cmp r2, #0x40
	ble _08015B18
	b _08015C6E
_08015B18:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08015B22
	rsbs r0, r0, #0
_08015B22:
	cmp r0, #0x40
	ble _08015B28
	b _08015C6E
_08015B28:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015BB4
	ldr r6, _08015B74 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08015B44
	b _08015C66
_08015B44:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	beq _08015B78
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0xa
	beq _08015B56
	b _08015C66
_08015B56:
	adds r0, r5, #0
	bl sub_8015C90
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0x78
	strh r1, [r0]
	ldr r2, _08015B74 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08015B6E
	b _08015C80
_08015B6E:
	b _08015B9C
	.align 2, 0
_08015B70: .4byte gPlayers
_08015B74: .4byte gStageData
_08015B78:
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0xa
	beq _08015C66
	adds r0, r5, #0
	bl sub_8014550
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015B96
	ldrb r6, [r6, #6]
	cmp r0, r6
	bne _08015C80
_08015B96:
	mov r3, sb
	lsls r0, r3, #0x18
	b _08015BFA
_08015B9C:
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	mov r3, r8
	asrs r0, r3, #0x10
	cmp r1, r0
	beq _08015BB0
	ldrb r0, [r2, #6]
	cmp r1, r0
	bne _08015C80
_08015BB0:
	ldrb r0, [r2, #6]
	b _08015C42
_08015BB4:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C08
	ldr r6, _08015BDC @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08015BE0
	cmp r4, sl
	beq _08015C66
	adds r0, r5, #0
	bl sub_8014550
	b _08015C80
	.align 2, 0
_08015BDC: .4byte gStageData
_08015BE0:
	adds r0, r5, #0
	bl sub_8014550
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015BF6
	ldrb r6, [r6, #6]
	cmp r0, r6
	bne _08015C80
_08015BF6:
	mov r1, sb
	lsls r0, r1, #0x18
_08015BFA:
	lsrs r0, r0, #0x18
	bl sub_80276A8
	adds r0, r4, #0
	bl sub_80293E8
	b _08015C80
_08015C08:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C54
	adds r0, r5, #0
	bl sub_8015C90
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0x78
	strh r1, [r0]
	ldr r1, _08015C50 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08015C80
	adds r0, r1, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015C40
	ldrb r2, [r1, #6]
	cmp r0, r2
	bne _08015C80
_08015C40:
	ldrb r0, [r1, #6]
_08015C42:
	bl sub_80276A8
	adds r0, r5, #0
	bl sub_80293E8
	b _08015C80
	.align 2, 0
_08015C50: .4byte gStageData
_08015C54:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C6E
_08015C66:
	adds r0, r5, #0
	bl sub_8015C90
	b _08015C80
_08015C6E:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08015C80
	b _08015AA2
_08015C80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015C90
sub_8015C90: @ 0x08015C90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #4
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08015CDC
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08015CC8
	ldr r0, _08015CC4 @ =gUnknown_080CE6B8
	subs r1, #0x20
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08015CDA
	.align 2, 0
_08015CC4: .4byte gUnknown_080CE6B8
_08015CC8:
	ldr r0, _08015D00 @ =gUnknown_080CE6B8
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
_08015CDA:
	strh r0, [r4, #0x18]
_08015CDC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	bne _08015D04
	ldr r1, _08015D00 @ =gUnknown_080CE6B8
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	adds r5, r2, #0
	b _08015D0C
	.align 2, 0
_08015D00: .4byte gUnknown_080CE6B8
_08015D04:
	movs r0, #0
	strh r0, [r4, #0x1a]
	adds r5, r4, #0
	adds r5, #0x2a
_08015D0C:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08015D30
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_8004F10
	ldr r0, [r4, #4]
	ldr r1, _08015D48 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015D30:
	ldrb r0, [r5]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #3
	bne _08015D4C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xf2
	bgt _08015D5C
	cmp r0, #0xf0
	blt _08015D5C
	b _08015D64
	.align 2, 0
_08015D48: .4byte 0xFFFDFFFF
_08015D4C:
	cmp r1, #1
	bne _08015D5C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xc4
	bgt _08015D5C
	cmp r0, #0xc1
	bge _08015D64
_08015D5C:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x85
	bne _08015D68
_08015D64:
	movs r0, #0x18
	strh r0, [r4, #0x30]
_08015D68:
	ldr r1, _08015D78 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015D78: .4byte sub_800DAF4

	thumb_func_start sub_8015D7C
sub_8015D7C: @ 0x08015D7C
	push {r4, r5, lr}
	sub sp, #0xd8
	adds r5, r0, #0
	ldr r2, _08015DBC @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #6
	bne _08015DB8
	ldrb r0, [r2, #4]
	cmp r0, #3
	bne _08015DB8
	ldr r0, [r5, #4]
	ldr r1, _08015DC0 @ =0x59000200
	ands r0, r1
	cmp r0, #0
	bne _08015DB8
	ldr r4, _08015DC4 @ =gCamera
	ldr r3, _08015DC8 @ =gUnknown_080D05A8
	ldrh r0, [r2, #0xe]
	lsls r2, r0, #2
	adds r1, r2, r3
	ldr r0, [r4, #0x1c]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08015DB8
	adds r0, r3, #2
	adds r0, r2, r0
	ldr r1, [r4, #0x14]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08015DCC
_08015DB8:
	movs r0, #0
	b _08015E00
	.align 2, 0
_08015DBC: .4byte gStageData
_08015DC0: .4byte 0x59000200
_08015DC4: .4byte gCamera
_08015DC8: .4byte gUnknown_080D05A8
_08015DCC:
	ldr r1, _08015E08 @ =gUnknown_080CE6CC
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _08015DFE
	ldr r2, [r5]
_08015DE0:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	add r0, sp
	ldr r0, [r0]
	cmp r2, r0
	beq _08015DB8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0xe
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	bne _08015DE0
_08015DFE:
	movs r0, #1
_08015E00:
	add sp, #0xd8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015E08: .4byte gUnknown_080CE6CC

	thumb_func_start sub_8015E0C
sub_8015E0C: @ 0x08015E0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08015E3C @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	bne _08015E20
	bl _0801679C
_08015E20:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _08015E32
	bl _0801679C
_08015E32:
	lsls r0, r0, #2
	ldr r1, _08015E40 @ =_08015E44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015E3C: .4byte gStageData
_08015E40: .4byte _08015E44
_08015E44: @ jump table
	.4byte _08015E58 @ case 0
	.4byte _080160B4 @ case 1
	.4byte _080162EC @ case 2
	.4byte _08016418 @ case 3
	.4byte _08016550 @ case 4
_08015E58:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _08015E66
	b _0801655C
_08015E66:
	ldrh r0, [r4, #0x1e]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x40
	beq _08015E78
	cmp r1, #0x80
	beq _08015F04
	ldr r1, [r4, #0xc]
	b _08015F90
_08015E78:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08015E86
	b _08015F90
_08015E86:
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
	ldr r1, _08015EF0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015EC8
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08015EF4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015EC8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015EEA
	ldr r0, _08015EF8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015EFC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015EEA:
	ldr r1, _08015F00 @ =sub_801A120
	bl _0801677C
	.align 2, 0
_08015EF0: .4byte gPlayers
_08015EF4: .4byte 0xFFBFFFFF
_08015EF8: .4byte 0xFF7FFFFF
_08015EFC: .4byte 0xFEFFFFFF
_08015F00: .4byte sub_801A120
_08015F04:
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08015F90
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
	ldr r1, _08015F7C @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015F52
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08015F80 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015F52:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015F74
	ldr r0, _08015F84 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08015F88 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08015F74:
	ldr r1, _08015F8C @ =sub_801A17C
	bl _0801677C
	.align 2, 0
_08015F7C: .4byte gPlayers
_08015F80: .4byte 0xFFBFFFFF
_08015F84: .4byte 0xFF7FFFFF
_08015F88: .4byte 0xFEFFFFFF
_08015F8C: .4byte sub_801A17C
_08015F90:
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _08015FAA
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08016034
	bl _0801679C
_08015FAA:
	ldr r5, [r4, #4]
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	beq _08015FB8
	bl _0801679C
_08015FB8:
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
	ldr r1, _08016020 @ =gPlayers
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08015FFA
	adds r0, r4, #0
	adds r0, #0x42
	strh r5, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08016024 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08015FFA:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801601C
	ldr r0, _08016028 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r6, #4]
	ldr r1, _0801602C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6, #4]
_0801601C:
	ldr r1, _08016030 @ =sub_8006424
	b _0801677C
	.align 2, 0
_08016020: .4byte gPlayers
_08016024: .4byte 0xFFBFFFFF
_08016028: .4byte 0xFF7FFFFF
_0801602C: .4byte 0xFEFFFFFF
_08016030: .4byte sub_8006424
_08016034:
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
	ldr r1, _080160A0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016078
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080160A4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016078:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801609A
	ldr r0, _080160A8 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080160AC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_0801609A:
	ldr r1, _080160B0 @ =sub_801A0C0
	b _0801677C
	.align 2, 0
_080160A0: .4byte gPlayers
_080160A4: .4byte 0xFFBFFFFF
_080160A8: .4byte 0xFF7FFFFF
_080160AC: .4byte 0xFEFFFFFF
_080160B0: .4byte sub_801A0C0
_080160B4:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	ldr r1, [r4, #0xc]
	cmp r0, #0x80
	bne _08016148
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08016148
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
	ldr r1, _08016134 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801610E
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08016138 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801610E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016130
	ldr r0, _0801613C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016140 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016130:
	ldr r1, _08016144 @ =sub_801A46C
	b _0801677C
	.align 2, 0
_08016134: .4byte gPlayers
_08016138: .4byte 0xFFBFFFFF
_0801613C: .4byte 0xFF7FFFFF
_08016140: .4byte 0xFEFFFFFF
_08016144: .4byte sub_801A46C
_08016148:
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r2, r3, #0
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _080161EC
	cmp r2, r0
	bhi _08016166
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _0801616E
	b _0801679C
_08016166:
	cmp r2, r3
	bne _0801616C
	b _0801626C
_0801616C:
	b _0801679C
_0801616E:
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
	ldr r1, _080161D8 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080161B2
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080161DC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080161B2:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080161D4
	ldr r0, _080161E0 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080161E4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080161D4:
	ldr r1, _080161E8 @ =sub_801AB34
	b _0801677C
	.align 2, 0
_080161D8: .4byte gPlayers
_080161DC: .4byte 0xFFBFFFFF
_080161E0: .4byte 0xFF7FFFFF
_080161E4: .4byte 0xFEFFFFFF
_080161E8: .4byte sub_801AB34
_080161EC:
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
	ldr r1, _08016258 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016230
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801625C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016230:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016252
	ldr r0, _08016260 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016264 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016252:
	ldr r1, _08016268 @ =sub_801AB58
	b _0801677C
	.align 2, 0
_08016258: .4byte gPlayers
_0801625C: .4byte 0xFFBFFFFF
_08016260: .4byte 0xFF7FFFFF
_08016264: .4byte 0xFEFFFFFF
_08016268: .4byte sub_801AB58
_0801626C:
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
	ldr r1, _080162D8 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080162B0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080162DC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080162B0:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080162D2
	ldr r0, _080162E0 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080162E4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080162D2:
	ldr r1, _080162E8 @ =sub_801AB7C
	b _0801677C
	.align 2, 0
_080162D8: .4byte gPlayers
_080162DC: .4byte 0xFFBFFFFF
_080162E0: .4byte 0xFF7FFFFF
_080162E4: .4byte 0xFEFFFFFF
_080162E8: .4byte sub_801AB7C
_080162EC:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _080162FA
	b _0801655C
_080162FA:
	ldr r1, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08016314
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _0801639C
	b _0801679C
_08016314:
	ldr r0, [r4, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08016320
	b _0801679C
_08016320:
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
	ldr r1, _08016388 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016362
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0801638C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016362:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016384
	ldr r0, _08016390 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016394 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016384:
	ldr r1, _08016398 @ =sub_8006424
	b _0801677C
	.align 2, 0
_08016388: .4byte gPlayers
_0801638C: .4byte 0xFFBFFFFF
_08016390: .4byte 0xFF7FFFFF
_08016394: .4byte 0xFEFFFFFF
_08016398: .4byte sub_8006424
_0801639C:
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
	ldr r1, _08016404 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080163DE
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08016408 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080163DE:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016400
	ldr r0, _0801640C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016410 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016400:
	ldr r1, _08016414 @ =sub_801BD84
	b _0801677C
	.align 2, 0
_08016404: .4byte gPlayers
_08016408: .4byte 0xFFBFFFFF
_0801640C: .4byte 0xFF7FFFFF
_08016410: .4byte 0xFEFFFFFF
_08016414: .4byte sub_801BD84
_08016418:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _08016426
	b _0801655C
_08016426:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	ldr r1, [r4, #0xc]
	cmp r0, #0x80
	bne _080164B8
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080164B8
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
	ldr r1, _080164A4 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801647E
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _080164A8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801647E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080164A0
	ldr r0, _080164AC @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080164B0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080164A0:
	ldr r1, _080164B4 @ =sub_801D84C
	b _0801677C
	.align 2, 0
_080164A4: .4byte gPlayers
_080164A8: .4byte 0xFFBFFFFF
_080164AC: .4byte 0xFF7FFFFF
_080164B0: .4byte 0xFEFFFFFF
_080164B4: .4byte sub_801D84C
_080164B8:
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	beq _080164C8
	b _0801679C
_080164C8:
	ldr r5, [r4, #4]
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	beq _080164D4
	b _0801679C
_080164D4:
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
	ldr r1, _0801653C @ =gPlayers
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016516
	adds r0, r4, #0
	adds r0, #0x42
	strh r5, [r0]
	ldr r0, [r4, #4]
	ldr r1, _08016540 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016516:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016538
	ldr r0, _08016544 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r6, #4]
	ldr r1, _08016548 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6, #4]
_08016538:
	ldr r1, _0801654C @ =sub_8006424
	b _0801677C
	.align 2, 0
_0801653C: .4byte gPlayers
_08016540: .4byte 0xFFBFFFFF
_08016544: .4byte 0xFF7FFFFF
_08016548: .4byte 0xFEFFFFFF
_0801654C: .4byte sub_8006424
_08016550:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0
	beq _080165E8
_0801655C:
	subs r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080165D4 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801659E
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _080165D8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_0801659E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080165C0
	ldr r0, _080165DC @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _080165E0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080165C0:
	ldr r1, _080165E4 @ =sub_800C910
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xd
	adds r1, r4, #0
	bl sub_801EBC0
	movs r0, #1
	b _0801679E
	.align 2, 0
_080165D4: .4byte gPlayers
_080165D8: .4byte 0xFFBFFFFF
_080165DC: .4byte 0xFF7FFFFF
_080165E0: .4byte 0xFEFFFFFF
_080165E4: .4byte sub_800C910
_080165E8:
	ldrh r1, [r4, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	ldr r1, [r4, #0xc]
	cmp r0, #0x80
	bne _0801667C
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0801667C
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
	ldr r1, _08016668 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016640
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0801666C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016640:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016662
	ldr r0, _08016670 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016674 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016662:
	ldr r1, _08016678 @ =sub_801E7BC
	b _0801677C
	.align 2, 0
_08016668: .4byte gPlayers
_0801666C: .4byte 0xFFBFFFFF
_08016670: .4byte 0xFF7FFFFF
_08016674: .4byte 0xFEFFFFFF
_08016678: .4byte sub_801E7BC
_0801667C:
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _08016694
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08016714
	b _0801679C
_08016694:
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
	ldr r1, _08016700 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080166D8
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08016704 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080166D8:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080166FA
	ldr r0, _08016708 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _0801670C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080166FA:
	ldr r1, _08016710 @ =sub_801E6F4
	b _0801677C
	.align 2, 0
_08016700: .4byte gPlayers
_08016704: .4byte 0xFFBFFFFF
_08016708: .4byte 0xFF7FFFFF
_0801670C: .4byte 0xFEFFFFFF
_08016710: .4byte sub_801E6F4
_08016714:
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
	ldr r1, _08016788 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	adds r0, r4, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016758
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _0801678C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016758:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801677A
	ldr r0, _08016790 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016794 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_0801677A:
	ldr r1, _08016798 @ =sub_801E758
_0801677C:
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #1
	b _0801679E
	.align 2, 0
_08016788: .4byte gPlayers
_0801678C: .4byte 0xFFBFFFFF
_08016790: .4byte 0xFF7FFFFF
_08016794: .4byte 0xFEFFFFFF
_08016798: .4byte sub_801E758
_0801679C:
	movs r0, #0
_0801679E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80167A4
sub_80167A4: @ 0x080167A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080167D0 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _080167B6
	b _08016CFC
_080167B6:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _080167C6
	b _08016CFC
_080167C6:
	lsls r0, r0, #2
	ldr r1, _080167D4 @ =_080167D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080167D0: .4byte gStageData
_080167D4: .4byte _080167D8
_080167D8: @ jump table
	.4byte _080167EC @ case 0
	.4byte _080168B0 @ case 1
	.4byte _08016978 @ case 2
	.4byte _08016B84 @ case 3
	.4byte _08016C44 @ case 4
_080167EC:
	ldr r0, [r5, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	subs r1, #0x80
	cmp r0, r1
	beq _080167FC
	b _08016CFC
_080167FC:
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
	ldr r1, _08016884 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016840
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016888 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016840:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016862
	ldr r0, _0801688C @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016890 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016862:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08016898
	ldr r4, _08016894 @ =sub_8007620
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_08016884: .4byte gPlayers
_08016888: .4byte 0xFFBFFFFF
_0801688C: .4byte 0xFF7FFFFF
_08016890: .4byte 0xFEFFFFFF
_08016894: .4byte sub_8007620
_08016898:
	ldr r4, _080168AC @ =sub_8019B4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_080168AC: .4byte sub_8019B4C
_080168B0:
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
	ldr r1, _08016930 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080168F4
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016934 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080168F4:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016916
	ldr r0, _08016938 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _0801693C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016916:
	ldr r0, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _08016950
	cmp r0, r1
	bhi _08016940
	cmp r0, #0x80
	beq _08016946
	b _08016CFC
	.align 2, 0
_08016930: .4byte gPlayers
_08016934: .4byte 0xFFBFFFFF
_08016938: .4byte 0xFF7FFFFF
_0801693C: .4byte 0xFEFFFFFF
_08016940:
	cmp r0, r2
	beq _08016964
	b _08016CFC
_08016946:
	ldr r1, _0801694C @ =sub_801A9EC
	b _08016CEE
	.align 2, 0
_0801694C: .4byte sub_801A9EC
_08016950:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801695C
	b _08016CFC
_0801695C:
	ldr r1, _08016960 @ =sub_801ABA0
	b _08016CEE
	.align 2, 0
_08016960: .4byte sub_801ABA0
_08016964:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016970
	b _08016CFC
_08016970:
	ldr r1, _08016974 @ =sub_801ABA0
	b _08016CEE
	.align 2, 0
_08016974: .4byte sub_801ABA0
_08016978:
	ldr r4, [r5, #4]
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	bne _08016984
	b _08016A94
_08016984:
	ldr r0, [r5, #0xc]
	movs r6, #0x80
	lsls r6, r6, #0xe
	ands r6, r0
	cmp r6, #0
	beq _08016A10
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
	ldr r1, _080169FC @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080169D4
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016A00 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_080169D4:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080169F6
	ldr r0, _08016A04 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016A08 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_080169F6:
	ldr r1, _08016A0C @ =sub_801BF6C
	b _08016CEE
	.align 2, 0
_080169FC: .4byte gPlayers
_08016A00: .4byte 0xFFBFFFFF
_08016A04: .4byte 0xFF7FFFFF
_08016A08: .4byte 0xFEFFFFFF
_08016A0C: .4byte sub_801BF6C
_08016A10:
	movs r7, #0x80
	lsls r7, r7, #0xf
	ands r0, r7
	cmp r0, #0
	bne _08016A1C
	b _08016CFC
_08016A1C:
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
	ldr r1, _08016A80 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	ands r0, r7
	cmp r0, #0
	beq _08016A5A
	adds r0, r5, #0
	adds r0, #0x42
	strh r6, [r0]
	ldr r0, [r5, #4]
	ldr r1, _08016A84 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016A5A:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016A7C
	ldr r0, _08016A88 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016A8C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016A7C:
	ldr r1, _08016A90 @ =sub_801AE70
	b _08016CEE
	.align 2, 0
_08016A80: .4byte gPlayers
_08016A84: .4byte 0xFFBFFFFF
_08016A88: .4byte 0xFF7FFFFF
_08016A8C: .4byte 0xFEFFFFFF
_08016A90: .4byte sub_801AE70
_08016A94:
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
	ldr r1, _08016B10 @ =gPlayers
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016AD6
	adds r0, r5, #0
	adds r0, #0x42
	strh r4, [r0]
	ldr r0, [r5, #4]
	ldr r1, _08016B14 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016AD6:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016AF8
	ldr r0, _08016B18 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r6, #4]
	ldr r1, _08016B1C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6, #4]
_08016AF8:
	ldr r1, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r1, r2
	cmp r1, #0x80
	beq _08016B38
	cmp r1, #0x80
	bhi _08016B20
	cmp r1, #0
	beq _08016B2E
	b _08016CFC
	.align 2, 0
_08016B10: .4byte gPlayers
_08016B14: .4byte 0xFFBFFFFF
_08016B18: .4byte 0xFF7FFFFF
_08016B1C: .4byte 0xFEFFFFFF
_08016B20:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08016B40
	cmp r1, r2
	beq _08016B7C
	b _08016CFC
_08016B2E:
	ldr r1, _08016B34 @ =sub_801BDD8
	b _08016CEE
	.align 2, 0
_08016B34: .4byte sub_801BDD8
_08016B38:
	ldr r1, _08016B3C @ =sub_801ADF4
	b _08016CEE
	.align 2, 0
_08016B3C: .4byte sub_801ADF4
_08016B40:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08016B64
	ldr r4, _08016B60 @ =sub_8007620
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_08016B60: .4byte sub_8007620
_08016B64:
	ldr r4, _08016B78 @ =sub_801BEA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	b _08016CF4
	.align 2, 0
_08016B78: .4byte sub_801BEA0
_08016B7C:
	ldr r1, _08016B80 @ =sub_801BF08
	b _08016CEE
	.align 2, 0
_08016B80: .4byte sub_801BF08
_08016B84:
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
	ldr r1, _08016BF8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016BC8
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016BFC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016BC8:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016BEA
	ldr r0, _08016C00 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016C04 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016BEA:
	ldr r0, [r5, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016C0C
	ldr r1, _08016C08 @ =sub_801D950
	b _08016CEE
	.align 2, 0
_08016BF8: .4byte gPlayers
_08016BFC: .4byte 0xFFBFFFFF
_08016C00: .4byte 0xFF7FFFFF
_08016C04: .4byte 0xFEFFFFFF
_08016C08: .4byte sub_801D950
_08016C0C:
	ldr r0, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _08016C34
	cmp r0, r1
	bhi _08016C26
	cmp r0, #0x80
	beq _08016C2C
	b _08016CFC
_08016C26:
	cmp r0, r2
	beq _08016C3C
	b _08016CFC
_08016C2C:
	ldr r1, _08016C30 @ =sub_801D8A8
	b _08016CEE
	.align 2, 0
_08016C30: .4byte sub_801D8A8
_08016C34:
	ldr r1, _08016C38 @ =sub_801C348
	b _08016CEE
	.align 2, 0
_08016C38: .4byte sub_801C348
_08016C3C:
	ldr r1, _08016C40 @ =sub_801C2D8
	b _08016CEE
	.align 2, 0
_08016C40: .4byte sub_801C2D8
_08016C44:
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
	ldr r1, _08016CC4 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	movs r1, #0x87
	lsls r1, r1, #2
	bl sub_8004F10
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016C88
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, _08016CC8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016C88:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016CAA
	ldr r0, _08016CCC @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, _08016CD0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016CAA:
	ldr r0, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _08016CE4
	cmp r0, r1
	bhi _08016CD4
	cmp r0, #0x80
	beq _08016CDA
	b _08016CFC
	.align 2, 0
_08016CC4: .4byte gPlayers
_08016CC8: .4byte 0xFFBFFFFF
_08016CCC: .4byte 0xFF7FFFFF
_08016CD0: .4byte 0xFEFFFFFF
_08016CD4:
	cmp r0, r2
	beq _08016CEC
	b _08016CFC
_08016CDA:
	ldr r1, _08016CE0 @ =sub_801E828
	b _08016CEE
	.align 2, 0
_08016CE0: .4byte sub_801E828
_08016CE4:
	ldr r1, _08016CE8 @ =sub_801E038
	b _08016CEE
	.align 2, 0
_08016CE8: .4byte sub_801E038
_08016CEC:
	ldr r1, _08016CF8 @ =sub_801E8E0
_08016CEE:
	adds r0, r5, #0
	bl SetPlayerCallback
_08016CF4:
	movs r0, #1
	b _08016CFE
	.align 2, 0
_08016CF8: .4byte sub_801E8E0
_08016CFC:
	movs r0, #0
_08016CFE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8016D04
sub_8016D04: @ 0x08016D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08016D2C @ =sub_800BBA0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x9e
	bl sub_8004E98
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0xe
	strb r0, [r1]
	adds r4, #0x57
	movs r0, #0x78
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016D2C: .4byte sub_800BBA0

	thumb_func_start sub_8016D30
sub_8016D30: @ 0x08016D30
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	eors r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ands r0, r4
	cmp r0, #0
	beq _08016D54
	ldrh r0, [r2, #0x1a]
	rsbs r0, r0, #0
	strh r0, [r2, #0x1a]
_08016D54:
	ldrh r3, [r2, #0x1a]
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	movs r1, #0xf0
	lsls r1, r1, #4
	cmp r0, r1
	ble _08016D64
	adds r3, r1, #0
_08016D64:
	strh r3, [r2, #0x1a]
	ldr r0, [r2, #4]
	ands r0, r4
	cmp r0, #0
	beq _08016D78
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	subs r0, r0, r1
	b _08016D80
_08016D78:
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
_08016D80:
	str r0, [r2, #0x14]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8016D88
sub_8016D88: @ 0x08016D88
	push {lr}
	adds r2, r0, #0
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #2
	bne _08016DE8
	ldr r3, _08016DBC @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r0, [r3, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08016DE8
	ldrb r0, [r3, #3]
	cmp r0, #7
	beq _08016DEC
	ldr r1, [r2, #0xc]
	movs r0, #6
	ands r1, r0
	cmp r1, #4
	beq _08016DD0
	cmp r1, #4
	bhi _08016DC0
	cmp r1, #2
	beq _08016DC6
	b _08016DE8
	.align 2, 0
_08016DBC: .4byte gStageData
_08016DC0:
	cmp r1, #6
	beq _08016DD8
	b _08016DE8
_08016DC6:
	ldr r1, _08016DCC @ =sub_800872C
	b _08016DDA
	.align 2, 0
_08016DCC: .4byte sub_800872C
_08016DD0:
	ldr r1, _08016DD4 @ =sub_801DFC4
	b _08016DDA
	.align 2, 0
_08016DD4: .4byte sub_801DFC4
_08016DD8:
	ldr r1, _08016DE4 @ =sub_801E65C
_08016DDA:
	adds r0, r2, #0
	bl SetPlayerCallback
	b _08016DF4
	.align 2, 0
_08016DE4: .4byte sub_801E65C
_08016DE8:
	movs r0, #0
	b _08016DF6
_08016DEC:
	ldr r1, _08016DFC @ =sub_800872C
	adds r0, r2, #0
	bl SetPlayerCallback
_08016DF4:
	movs r0, #1
_08016DF6:
	pop {r1}
	bx r1
	.align 2, 0
_08016DFC: .4byte sub_800872C

	thumb_func_start sub_8016E00
sub_8016E00: @ 0x08016E00
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x4e
	ldrh r1, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08016E16
	subs r0, r1, #1
	b _08016E40
_08016E16:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08016E42
	movs r0, #0x1c
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08016E30
	rsbs r1, r1, #0
_08016E30:
	ldr r0, _08016E48 @ =0x000001DF
	cmp r1, r0
	bgt _08016E42
	ldr r1, _08016E4C @ =sub_800DAF4
	adds r0, r2, #0
	bl SetPlayerCallback
	movs r0, #0x1e
_08016E40:
	strh r0, [r4]
_08016E42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016E48: .4byte 0x000001DF
_08016E4C: .4byte sub_800DAF4

	thumb_func_start sub_8016E50
sub_8016E50: @ 0x08016E50
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016E64
	ldrh r0, [r2, #0x1a]
	adds r0, #0xc
	b _08016E68
_08016E64:
	ldrh r0, [r2, #0x1a]
	adds r0, #0x2a
_08016E68:
	strh r0, [r2, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8016E70
sub_8016E70: @ 0x08016E70
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08016E8A
	adds r0, r4, #0
	bl sub_8012C34
	adds r0, r4, #0
	bl sub_8012CF8
	b _08016E96
_08016E8A:
	adds r0, r4, #0
	bl sub_8012CF8
	adds r0, r4, #0
	bl sub_8012C34
_08016E96:
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08016EA6
	ldr r0, _08016EAC @ =0xFFF7FFFF
	ands r1, r0
	str r1, [r4, #4]
_08016EA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016EAC: .4byte 0xFFF7FFFF

	thumb_func_start sub_8016EB0
sub_8016EB0: @ 0x08016EB0
	push {lr}
	adds r1, r0, #0
	adds r1, #0x26
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	bge _08016EC8
	adds r1, #2
	cmp r1, #0
	ble _08016ED4
	b _08016ED2
_08016EC8:
	cmp r1, #0
	ble _08016ED4
	subs r1, #2
	cmp r1, #0
	bge _08016ED4
_08016ED2:
	movs r1, #0
_08016ED4:
	adds r0, #0x26
	strb r1, [r0]
	pop {r0}
	bx r0

	thumb_func_start sub_8016EDC
sub_8016EDC: @ 0x08016EDC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x40
	bne _08016F20
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08016F20
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08016F20
	ldr r0, [r2, #4]
	ldr r1, _08016F18 @ =0x00020006
	ands r0, r1
	cmp r0, #0
	bne _08016F20
	ldr r1, _08016F1C @ =sub_80082BC
	adds r0, r2, #0
	bl SetPlayerCallback
	movs r0, #1
	b _08016F22
	.align 2, 0
_08016F18: .4byte 0x00020006
_08016F1C: .4byte sub_80082BC
_08016F20:
	movs r0, #0
_08016F22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016F28
sub_8016F28: @ 0x08016F28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08016F98 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_80193A4
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004F10
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08016F6E
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08016F9C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #4]
_08016F6E:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016F90
	ldr r0, _08016FA0 @ =0xFF7FFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _08016FA4 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r5, #4]
_08016F90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016F98: .4byte gPlayers
_08016F9C: .4byte 0xFFBFFFFF
_08016FA0: .4byte 0xFF7FFFFF
_08016FA4: .4byte 0xFEFFFFFF

	thumb_func_start sub_8016FA8
sub_8016FA8: @ 0x08016FA8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _08016FE4 @ =gCamera
	ldr r4, [r2, #0x14]
	ldr r3, _08016FE8 @ =gStageData
	ldrb r0, [r3, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08016FEC @ =gPlayers
	adds r1, r1, r0
	cmp r2, r1
	beq _08016FCC
	ldrb r0, [r3, #4]
	cmp r0, #1
	beq _08016FFA
_08016FCC:
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08016FF0
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	cmp r4, r0
	bgt _08016FFA
_08016FE0:
	movs r0, #1
	b _08016FFC
	.align 2, 0
_08016FE4: .4byte gCamera
_08016FE8: .4byte gStageData
_08016FEC: .4byte gPlayers
_08016FF0:
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	subs r0, #1
	cmp r4, r0
	bge _08016FE0
_08016FFA:
	movs r0, #0
_08016FFC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8017004
sub_8017004: @ 0x08017004
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #0x20
	bne _0801704C
	ldr r0, _08017030 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08017038
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08017038
	ldr r1, _08017034 @ =Player_80077CC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08017040
	.align 2, 0
_08017030: .4byte gStageData
_08017034: .4byte Player_80077CC
_08017038:
	ldr r1, _08017054 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08017040:
	ldrh r0, [r4, #0x18]
	movs r1, #0
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
_0801704C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017054: .4byte Player_8005380

	thumb_func_start sub_8017058
sub_8017058: @ 0x08017058
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08017094 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0801708E
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801708E
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _0801708E
	adds r0, r4, #0
	bl sub_8015E0C
	cmp r0, #0
	bne _08017098
	adds r0, r4, #0
	bl sub_80167A4
	cmp r0, #0
	bne _08017098
_0801708E:
	movs r0, #0
	b _0801709A
	.align 2, 0
_08017094: .4byte gStageData
_08017098:
	movs r0, #1
_0801709A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80170A0
sub_80170A0: @ 0x080170A0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017124 @ =sub_8018238
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017128 @ =sub_8019318
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r5, [r4, #0x28]
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080170E2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r4, #8]
_080170E2:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080170F8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080170F8:
	movs r2, #0
	movs r1, #0
	ldr r0, _0801712C @ =0x00000533
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017130 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017124: .4byte sub_8018238
_08017128: .4byte sub_8019318
_0801712C: .4byte 0x00000533
_08017130: .4byte 0x0000FFFF

	thumb_func_start sub_8017134
sub_8017134: @ 0x08017134
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080171A0 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080171A4 @ =sub_801932C
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _080171A8 @ =0x00000534
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _080171AC @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080171B0
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, #0xe
	b _080171B6
	.align 2, 0
_080171A0: .4byte sub_801952C
_080171A4: .4byte sub_801932C
_080171A8: .4byte 0x00000534
_080171AC: .4byte 0x0000FFFF
_080171B0:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
_080171B6:
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80171C0
sub_80171C0: @ 0x080171C0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017248 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _0801724C @ =sub_8019340
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	adds r3, r5, #0
	adds r3, #0xe0
	ldr r0, [r3]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r4, #8]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08017208
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
_08017208:
	movs r2, #0
	movs r1, #0
	ldr r0, _08017250 @ =0x00000531
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	ldr r0, [r3]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017254 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017248: .4byte sub_801952C
_0801724C: .4byte sub_8019340
_08017250: .4byte 0x00000531
_08017254: .4byte 0x0000FFFF

	thumb_func_start sub_8017258
sub_8017258: @ 0x08017258
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080172E0 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080172E4 @ =sub_8019340
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x19
	bl VramMalloc
	str r0, [r4]
	adds r3, r5, #0
	adds r3, #0xe0
	ldr r0, [r3]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r4, #8]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080172A0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
_080172A0:
	movs r2, #0
	movs r1, #0
	ldr r0, _080172E8 @ =0x00000543
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	ldr r0, [r3]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _080172EC @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080172E0: .4byte sub_801952C
_080172E4: .4byte sub_8019340
_080172E8: .4byte 0x00000543
_080172EC: .4byte 0x0000FFFF

	thumb_func_start sub_80172F0
sub_80172F0: @ 0x080172F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08017354 @ =sub_801957C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017358 @ =sub_8019354
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	str r1, [r4, #8]
	movs r2, #0
	ldr r0, _0801735C @ =0x000003CB
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017360 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	strh r5, [r4, #0x2a]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017354: .4byte sub_801957C
_08017358: .4byte sub_8019354
_0801735C: .4byte 0x000003CB
_08017360: .4byte 0x0000FFFF

	thumb_func_start sub_8017364
sub_8017364: @ 0x08017364
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xd8
	ldr r6, [r4]
	cmp r6, #0
	bne _080173DC
	ldr r0, _080173E4 @ =sub_80182D4
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080173E8 @ =sub_8019368
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r5, [r4, #0x28]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r4, #0x2c]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080173BA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r4, #8]
_080173BA:
	movs r0, #0xf3
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x16]
	ldr r0, _080173EC @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
_080173DC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080173E4: .4byte sub_80182D4
_080173E8: .4byte sub_8019368
_080173EC: .4byte 0x0000FFFF

	thumb_func_start sub_80173F0
sub_80173F0: @ 0x080173F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08017558 @ =sub_801839C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _0801755C @ =sub_8019318
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	movs r0, #0xd
	bl VramMalloc
	adds r6, r0, #0
	str r6, [r7]
	mov r1, r8
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	ldr r2, _08017560 @ =0x0300007C
	adds r1, r5, r2
	movs r4, #0
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldr r0, _08017564 @ =0x03000004
	adds r1, r5, r0
	str r6, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r1, #8]
	ldr r0, _08017568 @ =0x0000038F
	strh r0, [r1, #0xc]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	ldr r0, _0801756C @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	mov sl, r2
	mov r0, sl
	strb r0, [r1, #0x1c]
	movs r2, #0
	strb r2, [r1, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r1, _08017570 @ =0x03000080
	adds r0, r5, r1
	strh r4, [r0]
	ldr r2, _08017574 @ =0x03000082
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #0x30
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #0x30
	adds r0, r5, r2
	strh r4, [r0]
	ldr r0, _08017578 @ =0x0300002C
	adds r1, r5, r0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r6, r6, r2
	str r6, [r1]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r1, #8]
	ldr r0, _08017568 @ =0x0000038F
	strh r0, [r1, #0xc]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #0x18]
	movs r0, #2
	strb r0, [r1, #0x1a]
	subs r0, #3
	strb r0, [r1, #0x1b]
	mov r2, sl
	strb r2, [r1, #0x1c]
	strb r4, [r1, #0x1f]
	mov r6, sb
	str r6, [r1, #0x20]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	mov r1, r8
	ldrh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r1, [r1, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #1
	mov r8, r4
	ldr r6, _0801757C @ =gSineTable
	mov sl, r6
	ldr r0, _08017580 @ =0x000003FF
	mov sb, r0
_080174F0:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	lsls r4, r3, #2
	adds r0, r7, #0
	adds r0, #0x80
	adds r0, r0, r4
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x82
	adds r0, r0, r4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0xb0
	adds r1, r1, r4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r5, r6
	lsls r0, r0, #1
	add r0, sl
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r2, r2, #0x12
	adds r2, #8
	asrs r0, r2
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0xb2
	adds r1, r1, r4
	lsls r0, r5, #1
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	asrs r0, r2
	strh r0, [r1]
	adds r5, #0xe0
	mov r6, sb
	ands r5, r6
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0xb
	ble _080174F0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017558: .4byte sub_801839C
_0801755C: .4byte sub_8019318
_08017560: .4byte 0x0300007C
_08017564: .4byte 0x03000004
_08017568: .4byte 0x0000038F
_0801756C: .4byte 0x0000FFFF
_08017570: .4byte 0x03000080
_08017574: .4byte 0x03000082
_08017578: .4byte 0x0300002C
_0801757C: .4byte gSineTable
_08017580: .4byte 0x000003FF

	thumb_func_start sub_8017584
sub_8017584: @ 0x08017584
	push {r4, lr}
	mov ip, r0
	ldr r1, _080175A8 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	beq _08017600
	ldrb r0, [r1, #3]
	cmp r0, #5
	bhi _08017600
	ldr r0, _080175AC @ =gPlayers
	cmp ip, r0
	bne _080175B4
	movs r1, #0x8a
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080175B0 @ =0x06012800
	b _080175BC
	.align 2, 0
_080175A8: .4byte gStageData
_080175AC: .4byte gPlayers
_080175B0: .4byte 0x06012800
_080175B4:
	movs r1, #0x8a
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08017608 @ =0x06013000
_080175BC:
	str r0, [r1]
	movs r1, #0x8a
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	ldr r4, _0801760C @ =gUnknown_08E2EAF4
	ldrh r2, [r4]
	movs r3, #0
	movs r0, #0
	strh r2, [r1, #0xc]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	ldr r0, _08017610 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, ip
	strb r3, [r0]
	ldr r0, _08017614 @ =0x0000013D
	add r0, ip
	strb r3, [r0]
_08017600:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017608: .4byte 0x06013000
_0801760C: .4byte gUnknown_08E2EAF4
_08017610: .4byte 0x0000FFFF
_08017614: .4byte 0x0000013D

	thumb_func_start sub_8017618
sub_8017618: @ 0x08017618
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _08017650 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bls _0801762E
	b _08017820
_0801762E:
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801763C
	b _08017820
_0801763C:
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017658
	ldr r1, _08017654 @ =0x0000013D
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	b _08017820
	.align 2, 0
_08017650: .4byte gStageData
_08017654: .4byte 0x0000013D
_08017658:
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _08017660
	b _08017820
_08017660:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080176A6
	ldr r0, [r6, #4]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0x80
	bne _080176A6
	movs r5, #0x80
_080176A6:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r2, #0xf
	adds r7, r2, #0
	ands r7, r0
	adds r7, #1
	movs r1, #0xf0
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
	cmp r5, #0
	bne _080176D4
	strb r5, [r3]
	ldr r1, _080176D0 @ =0x0000013D
	adds r0, r6, r1
	strb r5, [r0]
	b _08017820
	.align 2, 0
_080176D0: .4byte 0x0000013D
_080176D4:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _080176F4 @ =0x0000013D
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r5
	beq _0801775C
	cmp r5, #0x20
	beq _08017714
	cmp r5, #0x20
	bgt _080176F8
	cmp r5, #0x10
	beq _08017724
	b _08017820
	.align 2, 0
_080176F4: .4byte 0x0000013D
_080176F8:
	cmp r5, #0x40
	beq _08017702
	cmp r5, #0x80
	beq _0801773C
	b _08017820
_08017702:
	ldr r0, _08017710 @ =gUnknown_08E2EAF4
	ldrh r1, [r0, #8]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #0xa]
	strb r0, [r4, #0x1a]
	b _0801774E
	.align 2, 0
_08017710: .4byte gUnknown_08E2EAF4
_08017714:
	ldr r0, _08017720 @ =gUnknown_08E2EAF4
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #6]
	b _0801772C
	.align 2, 0
_08017720: .4byte gUnknown_08E2EAF4
_08017724:
	ldr r0, _08017738 @ =gUnknown_08E2EAF4
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #2]
_0801772C:
	strb r0, [r4, #0x1a]
	adds r0, r6, #0
	movs r1, #0x97
	bl sub_8004E98
	b _0801774E
	.align 2, 0
_08017738: .4byte gUnknown_08E2EAF4
_0801773C:
	ldr r0, _080177AC @ =gUnknown_08E2EAF4
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #0xe]
	strb r0, [r4, #0x1a]
	adds r0, r6, #0
	movs r1, #0x97
	bl sub_8004E98
_0801774E:
	ldr r0, _080177B0 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _080177B4 @ =0x0000013D
	adds r0, r6, r1
	strb r5, [r0]
_0801775C:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r2, _080177B8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r2, r6, #0
	adds r2, #0xe0
	ldr r0, [r2]
	ldrh r0, [r0, #0x20]
	subs r0, #0x40
	strh r0, [r4, #0x14]
	ldr r0, [r4, #8]
	ldr r1, _080177BC @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r2]
	ldr r0, [r0, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080177C0 @ =gPlayers
	cmp r6, r0
	bne _080177C4
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	beq _080177D0
	movs r0, #1
	mov r8, r0
	b _080177D0
	.align 2, 0
_080177AC: .4byte gUnknown_08E2EAF4
_080177B0: .4byte 0x0000FFFF
_080177B4: .4byte 0x0000013D
_080177B8: .4byte gCamera
_080177BC: .4byte 0xFFFFCFFF
_080177C0: .4byte gPlayers
_080177C4:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	bne _080177D0
	movs r1, #1
	mov r8, r1
_080177D0:
	ldr r0, _080177EC @ =gStageData
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _0801780A
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080177F0
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _080177F8
	.align 2, 0
_080177EC: .4byte gStageData
_080177F0:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_080177F8:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017814
	b _08017820
_0801780A:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08017814:
	mov r0, r8
	cmp r0, #0
	beq _08017820
	adds r0, r4, #0
	bl DisplaySprite
_08017820:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801782C
sub_801782C: @ 0x0801782C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	bgt _080178E8
	cmp r1, #5
	bne _08017860
	ldr r0, _080178F4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080178F8 @ =gPlayers
	adds r0, r0, r1
	cmp r0, r7
	bne _08017860
	ldr r1, _080178FC @ =gUnknown_03001CF0
	movs r0, #0x10
	strb r0, [r1, #4]
_08017860:
	ldr r0, _08017900 @ =sub_80184F8
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017904 @ =sub_80193EC
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	str r7, [r5, #0x2c]
	movs r0, #0
	mov r8, r0
	movs r3, #0
	strh r3, [r5, #0x28]
	ldr r6, _08017908 @ =gUnknown_08E2EAD0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r6, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5]
	ldr r3, [sp, #4]
	str r3, [r5, #8]
	adds r0, r4, r6
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	adds r6, #2
	adds r4, r4, r6
	ldrh r0, [r4]
	strb r0, [r5, #0x1a]
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801790C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r5, #0x12]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x16]
	ldr r0, _08017910 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, r8
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080178E8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080178F4: .4byte gStageData
_080178F8: .4byte gPlayers
_080178FC: .4byte gUnknown_03001CF0
_08017900: .4byte sub_80184F8
_08017904: .4byte sub_80193EC
_08017908: .4byte gUnknown_08E2EAD0
_0801790C: .4byte gCamera
_08017910: .4byte 0x0000FFFF

	thumb_func_start sub_8017914
sub_8017914: @ 0x08017914
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017950 @ =sub_8019698
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017954 @ =sub_8019400
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #0x28]
	adds r4, r0, #0
	ldr r0, _08017958 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _0801795C
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xfa
	lsls r0, r0, #2
	b _08017968
	.align 2, 0
_08017950: .4byte sub_8019698
_08017954: .4byte sub_8019400
_08017958: .4byte gStageData
_0801795C:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _080179B4 @ =0x000003CA
_08017968:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017984
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r2
	str r0, [r4, #8]
_08017984:
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x16]
	ldr r0, _080179B8 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_8004E98
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080179B4: .4byte 0x000003CA
_080179B8: .4byte 0x0000FFFF

	thumb_func_start sub_80179BC
sub_80179BC: @ 0x080179BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0
	beq _08017A3E
	cmp r1, #0x14
	beq _08017A3E
	adds r4, r6, #0
	adds r4, #0xdc
	ldr r5, [r4]
	cmp r5, #0
	bne _08017A3E
	ldr r0, _08017A48 @ =sub_80191C8
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017A4C @ =sub_8019390
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	str r6, [r4, #0x28]
	movs r0, #8
	bl VramMalloc
	str r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08017A1C
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r2
	str r0, [r4, #8]
_08017A1C:
	movs r1, #0
	ldr r0, _08017A50 @ =0x000005E3
	strh r0, [r4, #0xc]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x16]
	ldr r0, _08017A54 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
_08017A3E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017A48: .4byte sub_80191C8
_08017A4C: .4byte sub_8019390
_08017A50: .4byte 0x000005E3
_08017A54: .4byte 0x0000FFFF

	thumb_func_start sub_8017A58
sub_8017A58: @ 0x08017A58
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0
	beq _08017ADC
	cmp r1, #0x14
	beq _08017ADC
	ldr r0, _08017A9C @ =sub_8019240
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0, #0x28]
	movs r1, #0x1e
	strh r1, [r0, #0x2c]
	adds r3, r0, #0
	ldr r0, _08017AA0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08017AA8
	ldr r0, _08017AA4 @ =0x06014180
	b _08017AAE
	.align 2, 0
_08017A9C: .4byte sub_8019240
_08017AA0: .4byte gStageData
_08017AA4: .4byte 0x06014180
_08017AA8:
	cmp r0, #6
	bne _08017AB0
	ldr r0, _08017AE4 @ =0x060141A0
_08017AAE:
	str r0, [r3]
_08017AB0:
	movs r2, #0
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	ldr r0, _08017AE8 @ =0x00000535
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	ldr r0, _08017AEC @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	ldr r0, _08017AF0 @ =0x000C1200
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
_08017ADC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017AE4: .4byte 0x060141A0
_08017AE8: .4byte 0x00000535
_08017AEC: .4byte 0x0000FFFF
_08017AF0: .4byte 0x000C1200

	thumb_func_start sub_8017AF4
sub_8017AF4: @ 0x08017AF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017B60 @ =sub_801952C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017B64 @ =sub_8019428
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08017B68 @ =0x00000534
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017B6C @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #8
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #9
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x28]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08017B70
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, #0xe
	b _08017B76
	.align 2, 0
_08017B60: .4byte sub_801952C
_08017B64: .4byte sub_8019428
_08017B68: .4byte 0x00000534
_08017B6C: .4byte 0x0000FFFF
_08017B70:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #0xe
_08017B76:
	strh r0, [r4, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8017B80
sub_8017B80: @ 0x08017B80
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017BF0 @ =sub_80195CC
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017BF4 @ =sub_8019464
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #0x28]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	ldr r0, [r4, #4]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _08017BC2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_08017BC2:
	movs r2, #0
	movs r1, #0
	movs r0, #0x2b
	strh r0, [r5, #0xc]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x16]
	ldr r0, _08017BF8 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	strb r3, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017BF0: .4byte sub_80195CC
_08017BF4: .4byte sub_8019464
_08017BF8: .4byte 0x0000FFFF

	thumb_func_start sub_8017BFC
sub_8017BFC: @ 0x08017BFC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08017C98 @ =sub_8018550
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017C9C @ =sub_801948C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	str r6, [r4, #0x28]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	movs r0, #0x6b
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017CA0 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r1, _08017CA4 @ =0x0300002C
	adds r0, r5, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	movs r0, #0
	adds r1, #1
	adds r4, r5, r1
	adds r1, #2
	adds r5, r5, r1
_08017C6C:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	adds r3, r4, r2
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r3]
	adds r2, r5, r2
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #7
	ble _08017C6C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017C98: .4byte sub_8018550
_08017C9C: .4byte sub_801948C
_08017CA0: .4byte 0x0000FFFF
_08017CA4: .4byte 0x0300002C

	thumb_func_start sub_8017CA8
sub_8017CA8: @ 0x08017CA8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017D08 @ =sub_801862C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017D0C @ =sub_80194A0
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [r4, #0x28]
	movs r0, #8
	bl VramMalloc
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08017D10 @ =0x0000053F
	strh r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08017D14 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017D08: .4byte sub_801862C
_08017D0C: .4byte sub_80194A0
_08017D10: .4byte 0x0000053F
_08017D14: .4byte 0x0000FFFF

	thumb_func_start sub_8017D18
sub_8017D18: @ 0x08017D18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017DA4 @ =sub_80186A0
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017DA8 @ =sub_80194B4
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017DAC @ =0x00000525
_08017D4E:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017DB0 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017D4E
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017DA4: .4byte sub_80186A0
_08017DA8: .4byte sub_80194B4
_08017DAC: .4byte 0x00000525
_08017DB0: .4byte 0x0000FFFF

	thumb_func_start sub_8017DB4
sub_8017DB4: @ 0x08017DB4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017E40 @ =sub_8018984
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017E44 @ =sub_8019504
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017E48 @ =0x00000525
_08017DEA:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017E4C @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017DEA
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017E40: .4byte sub_8018984
_08017E44: .4byte sub_8019504
_08017E48: .4byte 0x00000525
_08017E4C: .4byte 0x0000FFFF

	thumb_func_start sub_8017E50
sub_8017E50: @ 0x08017E50
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017EE4 @ =sub_8018AF8
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017EE8 @ =sub_80194C8
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017EEC @ =0x00000525
_08017E8E:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017EF0 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017E8E
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017EE4: .4byte sub_8018AF8
_08017EE8: .4byte sub_80194C8
_08017EEC: .4byte 0x00000525
_08017EF0: .4byte 0x0000FFFF

	thumb_func_start sub_8017EF4
sub_8017EF4: @ 0x08017EF4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08017F88 @ =sub_8018C6C
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08017F8C @ =sub_80194DC
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _08017F90 @ =0x00000525
_08017F32:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08017F94 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017F32
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017F88: .4byte sub_8018C6C
_08017F8C: .4byte sub_80194DC
_08017F90: .4byte 0x00000525
_08017F94: .4byte 0x0000FFFF

	thumb_func_start sub_8017F98
sub_8017F98: @ 0x08017F98
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08018024 @ =sub_8018814
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08018028 @ =sub_80194B4
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _0801802C @ =0x00000525
_08017FCE:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _08018030 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08017FCE
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018024: .4byte sub_8018814
_08018028: .4byte sub_80194B4
_0801802C: .4byte 0x00000525
_08018030: .4byte 0x0000FFFF

	thumb_func_start sub_8018034
sub_8018034: @ 0x08018034
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080180C8 @ =sub_8018DDC
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _080180CC @ =sub_80194DC
	str r1, [sp]
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	str r4, [r5, #8]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5]
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	ldr r6, _080180D0 @ =0x00000525
_08018072:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, #0x34
	strb r3, [r0]
	adds r1, #0xc
	adds r1, r5, r1
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	ldr r0, _080180D4 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	strb r3, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	adds r4, #0x80
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #3
	ble _08018072
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080180C8: .4byte sub_8018DDC
_080180CC: .4byte sub_80194DC
_080180D0: .4byte 0x00000525
_080180D4: .4byte 0x0000FFFF

	thumb_func_start sub_80180D8
sub_80180D8: @ 0x080180D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xd0
	ldr r0, [r4]
	cmp r0, #0
	bne _08018156
	ldr r0, _08018114 @ =sub_8018F90
	movs r2, #0xc4
	lsls r2, r2, #6
	ldr r1, _08018118 @ =sub_80193E8
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #0x28]
	adds r3, r0, #0
	ldr r0, _0801811C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08018124
	ldr r0, _08018120 @ =0x06014580
	b _08018126
	.align 2, 0
_08018114: .4byte sub_8018F90
_08018118: .4byte sub_80193E8
_0801811C: .4byte gStageData
_08018120: .4byte 0x06014580
_08018124:
	ldr r0, _08018160 @ =0x060145A0
_08018126:
	str r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	ldr r0, _08018164 @ =0x0000053C
	strh r0, [r3, #0xc]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _08018168 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
_08018156:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018160: .4byte 0x060145A0
_08018164: .4byte 0x0000053C
_08018168: .4byte 0x0000FFFF

	thumb_func_start sub_801816C
sub_801816C: @ 0x0801816C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xd4
	ldr r0, [r1]
	cmp r0, #0
	bne _08018218
	movs r6, #0
	ldr r0, _08018224 @ =gPlayers
	mov r8, r1
	ldr r3, _08018228 @ =sub_8018F90
	adds r7, r5, #0
	adds r7, #0x2a
	cmp r5, r0
	beq _080181B2
	adds r2, r0, #0
_08018192:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _080181B2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r5, r0
	bne _08018192
_080181B2:
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	adds r0, r3, #0
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r5, [r1, #0x28]
	str r4, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r1, #8]
	ldr r2, _0801822C @ =gUnknown_08E2EB04
	ldrb r0, [r7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	ldr r0, _08018230 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	ldrb r0, [r7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1a
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08018234 @ =sub_8019628
	str r0, [r1, #8]
_08018218:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018224: .4byte gPlayers
_08018228: .4byte sub_8018F90
_0801822C: .4byte gUnknown_08E2EB04
_08018230: .4byte 0x0000FFFF
_08018234: .4byte sub_8019628

	thumb_func_start sub_8018238
sub_8018238: @ 0x08018238
	push {r4, lr}
	ldr r2, _08018268 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0xa
	beq _08018254
	cmp r0, #0xf7
	bne _08018260
_08018254:
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801826C
_08018260:
	ldr r0, [r2]
	bl TaskDestroy
	b _080182CE
	.align 2, 0
_08018268: .4byte gCurTask
_0801826C:
	adds r0, r3, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xff
	bgt _08018284
	movs r1, #0
	ldr r0, _08018280 @ =0x00000532
	b _08018288
	.align 2, 0
_08018280: .4byte 0x00000532
_08018284:
	movs r1, #0
	ldr r0, _080182B4 @ =0x00000533
_08018288:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080182B8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r2, r0, r1
	strh r2, [r4, #0x12]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080182BC
	adds r0, r2, #0
	subs r0, #9
	b _080182C0
	.align 2, 0
_080182B4: .4byte 0x00000533
_080182B8: .4byte gCamera
_080182BC:
	adds r0, r2, #0
	adds r0, #9
_080182C0:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080182CE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80182D4
sub_80182D4: @ 0x080182D4
	push {r4, r5, r6, lr}
	ldr r6, _08018324 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4, #0x28]
	ldr r2, [r5, #4]
	ldr r0, _08018328 @ =0x01041000
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bne _0801830A
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	asrs r3, r0, #0x10
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	subs r0, #8
	cmp r3, r0
	blt _0801830A
	adds r0, #0x10
	cmp r3, r0
	ble _08018330
_0801830A:
	ldr r1, _0801832C @ =0x00000119
	adds r0, r5, #0
	bl sub_8004F10
	adds r1, r5, #0
	adds r1, #0xd8
	movs r0, #0
	str r0, [r1]
	ldr r0, [r6]
	bl TaskDestroy
	b _0801838C
	.align 2, 0
_08018324: .4byte gCurTask
_08018328: .4byte 0x01041000
_0801832C: .4byte 0x00000119
_08018330:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08018354
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r2, _08018350 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08018366
	.align 2, 0
_08018350: .4byte gCamera
_08018354:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r2, _08018394 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r1, _08018398 @ =0xFFFFFBFF
	ands r0, r1
_08018366:
	str r0, [r4, #8]
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r0, #2
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801838C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018394: .4byte gCamera
_08018398: .4byte 0xFFFFFBFF

	thumb_func_start sub_801839C
sub_801839C: @ 0x0801839C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080184E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0
	ldr r2, _080184EC @ =0x03000080
	adds r2, r2, r1
	mov sl, r2
	ldr r3, _080184F0 @ =0x03000082
	adds r3, r3, r1
	mov sb, r3
	ldr r5, _080184EC @ =0x03000080
	adds r4, r1, r5
_080183C6:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #2
	adds r1, r4, r3
	adds r0, r7, #0
	adds r0, #0xb0
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x82
	adds r1, r1, r3
	adds r0, r7, #0
	adds r0, #0xb2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xb
	ble _080183C6
	adds r6, r7, #4
	movs r5, #0x7c
	adds r5, r5, r7
	mov r8, r5
	ldr r4, _080184F4 @ =gCamera
	ldr r0, [r4]
	ldrh r1, [r5]
	subs r1, r1, r0
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x10]
	adds r5, r7, #0
	adds r5, #0x7e
	ldr r0, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r6, #0x28
	ldr r0, [r4]
	mov r2, r8
	ldrh r1, [r2]
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	movs r0, #0
	adds r3, r7, #0
	adds r3, #0x54
	str r3, [sp]
	mov ip, r8
	mov r8, r4
	str r5, [sp, #4]
_08018480:
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	lsls r4, r3, #2
	adds r4, #0x54
	adds r4, r7, r4
	mov r5, r8
	ldr r0, [r5]
	mov r5, ip
	ldrh r1, [r5]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r2, r2, r0
	asrs r2, r2, #0xe
	mov r5, sl
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4]
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r5, [sp, #4]
	ldrh r1, [r5]
	subs r1, r1, r0
	add r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4, #2]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #9
	ble _08018480
	adds r0, r6, #0
	ldr r1, [sp]
	movs r2, #0xa
	bl sub_80C0CA8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080184E8: .4byte gCurTask
_080184EC: .4byte 0x03000080
_080184F0: .4byte 0x03000082
_080184F4: .4byte gCamera

	thumb_func_start sub_80184F8
sub_80184F8: @ 0x080184F8
	push {r4, r5, lr}
	ldr r0, _08018520 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r4, [r3, #0x2c]
	ldrh r0, [r3, #0x28]
	adds r0, #1
	strh r0, [r3, #0x28]
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0x27
	ble _08018524
	adds r0, r2, #0
	bl TaskDestroy
	b _08018546
	.align 2, 0
_08018520: .4byte gCurTask
_08018524:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801854C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	asrs r0, r5, #0x11
	adds r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	adds r0, r3, #0
	bl DisplaySprite
_08018546:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801854C: .4byte gCamera

	thumb_func_start sub_8018550
sub_8018550: @ 0x08018550
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _08018590 @ =gUnknown_080CE7A4
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r2, _08018594 @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r4, [r6, #0x28]
	adds r0, #0x2c
	adds r5, r3, r0
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xaa
	bne _08018588
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bls _08018598
_08018588:
	ldr r0, [r2]
	bl TaskDestroy
	b _08018612
	.align 2, 0
_08018590: .4byte gUnknown_080CE7A4
_08018594: .4byte gCurTask
_08018598:
	ldr r0, _0801861C @ =0x0300002D
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	ldr r0, _08018620 @ =0x0300002E
	adds r0, r0, r3
	mov ip, r0
	add r1, ip
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	strh r0, [r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	ldr r0, _08018624 @ =0x03000030
	adds r7, r3, r0
	adds r1, r7, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1]
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _08018612
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08018612
	movs r0, #0
	ldrsb r0, [r5, r0]
	add r0, sp
	ldrb r0, [r0]
	subs r0, #8
	ldrb r1, [r2]
	subs r1, r1, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	mov r2, ip
	adds r0, r2, r1
	ldr r3, _08018628 @ =gCamera
	ldr r2, [r3]
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r6, #0x10]
	adds r1, r7, r1
	ldr r2, [r3, #4]
	ldrh r0, [r1]
	subs r0, r0, r2
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08018612:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801861C: .4byte 0x0300002D
_08018620: .4byte 0x0300002E
_08018624: .4byte 0x03000030
_08018628: .4byte gCamera

	thumb_func_start sub_801862C
sub_801862C: @ 0x0801862C
	push {r4, lr}
	ldr r0, _08018650 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldrh r0, [r3, #0x30]
	subs r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08018654
	adds r0, r2, #0
	bl TaskDestroy
	b _0801869A
	.align 2, 0
_08018650: .4byte gCurTask
_08018654:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801867C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08018684
	ldr r0, [r4, #8]
	ldr r1, _08018680 @ =0xFFFFFBFF
	ands r0, r1
	b _0801868C
	.align 2, 0
_0801867C: .4byte gCamera
_08018680: .4byte 0xFFFFFBFF
_08018684:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0801868C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801869A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80186A0
sub_80186A0: @ 0x080186A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080186D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r1, #8]
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	cmp r1, #0xfe
	beq _080186D4
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	beq _080186D4
	adds r0, r2, #0
	bl TaskDestroy
	b _08018802
	.align 2, 0
_080186D0: .4byte gCurTask
_080186D4:
	mov r1, r8
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _0801877C
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	beq _0801877C
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, #9
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r2, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	ldr r0, [r7, #4]
	ands r0, r6
	cmp r0, #0
	beq _08018734
	ldr r1, _08018730 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018740
	.align 2, 0
_08018730: .4byte gUnknown_080CE7A8
_08018734:
	ldr r1, _08018764 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018740:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018768
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _0801877A
	.align 2, 0
_08018764: .4byte gUnknown_080CE7A8
_08018768:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
_0801877A:
	strh r0, [r2, #0x2c]
_0801877C:
	movs r2, #0
	ldr r0, _080187C8 @ =gCamera
	mov sb, r0
_08018782:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _080187F4
	adds r5, r4, #0
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080187CC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080187D2
	.align 2, 0
_080187C8: .4byte gCamera
_080187CC:
	ldr r0, [r4, #8]
	ldr r1, _08018810 @ =0xFFFFF7FF
	ands r0, r1
_080187D2:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080187F4
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_080187F4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018782
_08018802:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018810: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018814
sub_8018814: @ 0x08018814
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08018840 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r1, #8]
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _08018844
	adds r0, r2, #0
	bl TaskDestroy
	b _08018972
	.align 2, 0
_08018840: .4byte gCurTask
_08018844:
	mov r1, r8
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _080188EC
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	beq _080188EC
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, #3
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r2, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	ldr r0, [r7, #4]
	ands r0, r6
	cmp r0, #0
	beq _080188A4
	ldr r1, _080188A0 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _080188B0
	.align 2, 0
_080188A0: .4byte gUnknown_080CE7A8
_080188A4:
	ldr r1, _080188D4 @ =gUnknown_080CE7A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_080188B0:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080188D8
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _080188EA
	.align 2, 0
_080188D4: .4byte gUnknown_080CE7A8
_080188D8:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
_080188EA:
	strh r0, [r2, #0x2c]
_080188EC:
	movs r2, #0
	ldr r0, _08018938 @ =gCamera
	mov sb, r0
_080188F2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018964
	adds r5, r4, #0
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801893C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018942
	.align 2, 0
_08018938: .4byte gCamera
_0801893C:
	ldr r0, [r4, #8]
	ldr r1, _08018980 @ =0xFFFFF7FF
	ands r0, r1
_08018942:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018964
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018964:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080188F2
_08018972:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018980: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018984
sub_8018984: @ 0x08018984
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080189B0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r1, #8]
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldr r0, _080189B4 @ =0x0000010D
	cmp r1, r0
	beq _080189B8
	adds r0, r2, #0
	bl TaskDestroy
	b _08018AE6
	.align 2, 0
_080189B0: .4byte gCurTask
_080189B4: .4byte 0x0000010D
_080189B8:
	mov r1, r8
	ldrh r0, [r1, #4]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2, #4]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _08018A60
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	beq _08018A60
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, #0x11
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r2, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	ldr r0, [r7, #4]
	ands r0, r6
	cmp r0, #0
	beq _08018A18
	ldr r1, _08018A14 @ =gUnknown_080CE7B0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018A24
	.align 2, 0
_08018A14: .4byte gUnknown_080CE7B0
_08018A18:
	ldr r1, _08018A48 @ =gUnknown_080CE7B0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018A24:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018A4C
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018A5E
	.align 2, 0
_08018A48: .4byte gUnknown_080CE7B0
_08018A4C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
_08018A5E:
	strh r0, [r2, #0x2c]
_08018A60:
	movs r2, #0
	ldr r0, _08018AAC @ =gCamera
	mov sb, r0
_08018A66:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018AD8
	adds r5, r4, #0
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018AB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018AB6
	.align 2, 0
_08018AAC: .4byte gCamera
_08018AB0:
	ldr r0, [r4, #8]
	ldr r1, _08018AF4 @ =0xFFFFF7FF
	ands r0, r1
_08018AB6:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018AD8
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018AD8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018A66
_08018AE6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AF4: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018AF8
sub_8018AF8: @ 0x08018AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08018B24 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7, #8]
	mov r8, r0
	movs r3, #0x30
	ldrsh r1, [r0, r3]
	ldr r0, _08018B28 @ =0x00000103
	cmp r1, r0
	beq _08018B2C
	adds r0, r2, #0
	bl TaskDestroy
	b _08018C5A
	.align 2, 0
_08018B24: .4byte gCurTask
_08018B28: .4byte 0x00000103
_08018B2C:
	ldrh r0, [r7, #4]
	adds r1, r0, #1
	strh r1, [r7, #4]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _08018BD4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08018BD4
	movs r1, #4
	ldrsh r0, [r7, r1]
	subs r0, #9
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08018B8C
	ldr r1, _08018B88 @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018B98
	.align 2, 0
_08018B88: .4byte gUnknown_080CE7B8
_08018B8C:
	ldr r1, _08018BBC @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018B98:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018BC0
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018BD2
	.align 2, 0
_08018BBC: .4byte gUnknown_080CE7B8
_08018BC0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2c]
	adds r0, r0, r3
_08018BD2:
	strh r0, [r2, #0x2c]
_08018BD4:
	movs r2, #0
	ldr r0, _08018C20 @ =gCamera
	mov sb, r0
_08018BDA:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r4, r7, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018C4C
	adds r5, r4, #0
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018C24
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018C2A
	.align 2, 0
_08018C20: .4byte gCamera
_08018C24:
	ldr r0, [r4, #8]
	ldr r1, _08018C68 @ =0xFFFFF7FF
	ands r0, r1
_08018C2A:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018C4C
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018C4C:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018BDA
_08018C5A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018C68: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018C6C
sub_8018C6C: @ 0x08018C6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08018C98 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7, #8]
	mov r8, r0
	movs r3, #0x30
	ldrsh r1, [r0, r3]
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	beq _08018C9C
	adds r0, r2, #0
	bl TaskDestroy
	b _08018DCA
	.align 2, 0
_08018C98: .4byte gCurTask
_08018C9C:
	ldrh r0, [r7, #4]
	adds r1, r0, #1
	strh r1, [r7, #4]
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _08018D44
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08018D44
	movs r1, #4
	ldrsh r0, [r7, r1]
	subs r0, #0xd
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08018CFC
	ldr r1, _08018CF8 @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018D08
	.align 2, 0
_08018CF8: .4byte gUnknown_080CE7B8
_08018CFC:
	ldr r1, _08018D2C @ =gUnknown_080CE7B8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018D08:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018D30
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018D42
	.align 2, 0
_08018D2C: .4byte gUnknown_080CE7B8
_08018D30:
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2c]
	adds r0, r0, r3
_08018D42:
	strh r0, [r2, #0x2c]
_08018D44:
	movs r2, #0
	ldr r0, _08018D90 @ =gCamera
	mov sb, r0
_08018D4A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r4, r7, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018DBC
	adds r5, r4, #0
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018D94
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018D9A
	.align 2, 0
_08018D90: .4byte gCamera
_08018D94:
	ldr r0, [r4, #8]
	ldr r1, _08018DD8 @ =0xFFFFF7FF
	ands r0, r1
_08018D9A:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018DBC
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018DBC:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018D4A
_08018DCA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018DD8: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018DDC
sub_8018DDC: @ 0x08018DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08018E14 @ =gCurTask
	ldr r4, [r2]
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7, #8]
	mov r8, r0
	adds r0, #0xe0
	ldr r3, [r0]
	ldrh r1, [r3, #0x18]
	ldr r0, _08018E18 @ =0x000002F7
	cmp r1, r0
	bne _08018E1C
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #2
	bne _08018E1C
	adds r0, r4, #0
	bl TaskDestroy
	b _08018F7E
	.align 2, 0
_08018E14: .4byte gCurTask
_08018E18: .4byte 0x000002F7
_08018E1C:
	mov r3, r8
	movs r0, #0x30
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08018E38
	adds r0, #8
	cmp r1, r0
	beq _08018E38
	ldr r0, [r2]
	bl TaskDestroy
	b _08018F7E
_08018E38:
	ldrh r0, [r7, #4]
	adds r1, r0, #1
	strh r1, [r7, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08018EEE
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08018EEE
	movs r1, #4
	ldrsh r0, [r7, r1]
	subs r0, #0xa
	movs r1, #0xf
	ands r0, r1
	lsrs r5, r0, #2
	adds r0, r5, #0
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3, #0x10]
	asrs r3, r0, #8
	strh r3, [r2, #0x2a]
	mov r1, r8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	strh r0, [r2, #0x2c]
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08018E98
	ldr r1, _08018E94 @ =gUnknown_080CE7C0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08018EA4
	.align 2, 0
_08018E94: .4byte gUnknown_080CE7C0
_08018E98:
	ldr r1, _08018EC8 @ =gUnknown_080CE7C0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08018EA4:
	strh r0, [r2, #0x2a]
	adds r3, r1, #0
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018ECC
	lsls r0, r5, #1
	adds r1, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	b _08018EDC
	.align 2, 0
_08018EC8: .4byte gUnknown_080CE7C0
_08018ECC:
	lsls r0, r5, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2c]
	adds r0, r0, r3
_08018EDC:
	strh r0, [r2, #0x2c]
	ldr r0, _08018F3C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #8]
	ldr r1, _08018F40 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #8]
_08018EEE:
	movs r2, #0
	ldr r0, _08018F44 @ =gCamera
	mov sb, r0
_08018EF4:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r4, r7, r0
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08018F70
	adds r5, r4, #0
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #0x2c]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	mov r1, r8
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08018F48
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08018F4E
	.align 2, 0
_08018F3C: .4byte 0x0000FFFF
_08018F40: .4byte 0xFFFFBFFF
_08018F44: .4byte gCamera
_08018F48:
	ldr r0, [r4, #8]
	ldr r1, _08018F8C @ =0xFFFFF7FF
	ands r0, r1
_08018F4E:
	str r0, [r4, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08018F70
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_08018F70:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08018EF4
_08018F7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018F8C: .4byte 0xFFFFF7FF

	thumb_func_start sub_8018F90
sub_8018F90: @ 0x08018F90
	push {r4, r5, lr}
	ldr r0, _08018FCC @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r2, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08018FD4
	adds r2, r3, #0
	adds r2, #0xd0
	ldr r0, [r2]
	cmp r0, #0
	bne _08018FB8
	b _080190BE
_08018FB8:
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r2]
	ldr r0, _08018FD0 @ =sub_8019150
	str r0, [r1, #8]
	b _080190BE
	.align 2, 0
_08018FCC: .4byte gCurTask
_08018FD0: .4byte sub_8019150
_08018FD4:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08019080
	ldr r0, _08019010 @ =sub_80190C8
	str r0, [r5, #8]
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08019014 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	ldr r0, _08019018 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _08019020
	ldr r0, _0801901C @ =0x06014580
	b _08019022
	.align 2, 0
_08019010: .4byte sub_80190C8
_08019014: .4byte gPlayers
_08019018: .4byte gStageData
_0801901C: .4byte 0x06014580
_08019020:
	ldr r0, _08019064 @ =0x060145A0
_08019022:
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r3, #0
	movs r1, #0
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _08019068 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r2, #0
	cmp r0, #0
	beq _0801905A
	cmp r0, #3
	beq _0801905A
	cmp r0, #4
	bne _08019070
_0801905A:
	movs r1, #0
	ldr r0, _0801906C @ =0x0000053D
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	b _080190BE
	.align 2, 0
_08019064: .4byte 0x060145A0
_08019068: .4byte 0x0000FFFF
_0801906C: .4byte 0x0000053D
_08019070:
	ldr r0, _0801907C @ =0x0000053D
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	b _080190BE
	.align 2, 0
_0801907C: .4byte 0x0000053D
_08019080:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08019094
	ldr r0, _08019090 @ =0xFFFFFBFF
	ands r1, r0
	b _0801909A
	.align 2, 0
_08019090: .4byte 0xFFFFFBFF
_08019094:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
_0801909A:
	str r1, [r4, #8]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080190C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080190BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080190C4: .4byte gCamera

	thumb_func_start sub_80190C8
sub_80190C8: @ 0x080190C8
	push {r4, lr}
	ldr r0, _08019118 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801911C @ =gPlayers
	adds r3, r0, r1
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019124
	adds r2, #0xd0
	ldr r0, [r2]
	cmp r0, #0
	beq _08019146
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r2]
	ldr r0, _08019120 @ =sub_8019150
	str r0, [r1, #8]
	b _08019146
	.align 2, 0
_08019118: .4byte gCurTask
_0801911C: .4byte gPlayers
_08019120: .4byte sub_8019150
_08019124:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801914C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019146:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801914C: .4byte gCamera

	thumb_func_start sub_8019150
sub_8019150: @ 0x08019150
	push {r4, lr}
	ldr r0, _0801917C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _08019180
	adds r4, r3, #0
	adds r4, #0xd0
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	b _080191BE
	.align 2, 0
_0801917C: .4byte gCurTask
_08019180:
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019194
	ldr r0, _08019190 @ =0xFFFFFBFF
	ands r2, r0
	b _0801919A
	.align 2, 0
_08019190: .4byte 0xFFFFFBFF
_08019194:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
_0801919A:
	str r2, [r4, #8]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _080191C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080191BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080191C4: .4byte gCamera

	thumb_func_start sub_80191C8
sub_80191C8: @ 0x080191C8
	push {r4, lr}
	ldr r0, _080191EC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r1, [r3, #0x60]
	cmp r1, #0
	bne _080191F0
	adds r0, r3, #0
	adds r0, #0xdc
	str r1, [r0]
	adds r0, r2, #0
	bl TaskDestroy
	b _08019234
	.align 2, 0
_080191EC: .4byte gCurTask
_080191F0:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _0801921C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08019220
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08019226
	.align 2, 0
_0801921C: .4byte gCamera
_08019220:
	ldr r0, [r4, #8]
	ldr r1, _0801923C @ =0xFFFFF7FF
	ands r0, r1
_08019226:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019234:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801923C: .4byte 0xFFFFF7FF

	thumb_func_start sub_8019240
sub_8019240: @ 0x08019240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08019280 @ =gUnknown_080CE7C8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r4, _08019284 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x10]
	ldrh r0, [r5, #0x2c]
	subs r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019288
	movs r0, #0x75
	bl sub_8003DF0
	ldr r0, [r4]
	bl TaskDestroy
	b _08019304
	.align 2, 0
_08019280: .4byte gUnknown_080CE7C8
_08019284: .4byte gCurTask
_08019288:
	ldrh r4, [r5, #0x2c]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	movs r2, #1
	add r2, sp
	mov sl, r2
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	ldr r7, _08019314 @ =gCamera
	mov r8, r7
	movs r0, #1
	ands r0, r6
	lsls r0, r0, #2
	mov sb, r0
_080192A8:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	adds r1, r4, r0
	lsls r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	muls r2, r6, r2
	add r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r0, #0
	muls r3, r6, r3
	ldr r7, [sp, #0x10]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	mov r7, r8
	ldr r0, [r7]
	subs r1, r1, r0
	lsls r2, r2, #0x16
	asrs r2, r2, #0x18
	adds r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldr r0, [r7, #4]
	subs r1, r1, r0
	lsls r3, r3, #0x16
	asrs r3, r3, #0x18
	adds r3, r3, r1
	adds r3, #8
	strh r3, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080192A8
_08019304:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019314: .4byte gCamera

	thumb_func_start sub_8019318
sub_8019318: @ 0x08019318
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801932C
sub_801932C: @ 0x0801932C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019340
sub_8019340: @ 0x08019340
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019354
sub_8019354: @ 0x08019354
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019368
sub_8019368: @ 0x08019368
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801937C
sub_801937C: @ 0x0801937C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019390
sub_8019390: @ 0x08019390
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80193A4
sub_80193A4: @ 0x080193A4
	push {lr}
	adds r2, r0, #0
	adds r2, #0xd0
	ldr r0, [r2]
	cmp r0, #0
	beq _080193C2
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r2]
	ldr r0, _080193C8 @ =sub_8019150
	str r0, [r1, #8]
_080193C2:
	pop {r0}
	bx r0
	.align 2, 0
_080193C8: .4byte sub_8019150

	thumb_func_start sub_80193CC
sub_80193CC: @ 0x080193CC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xd0
	ldr r0, [r4]
	cmp r0, #0
	beq _080193E0
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_080193E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80193E8
sub_80193E8: @ 0x080193E8
	bx lr
	.align 2, 0

	thumb_func_start sub_80193EC
sub_80193EC: @ 0x080193EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019400
sub_8019400: @ 0x08019400
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019414
sub_8019414: @ 0x08019414
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019428
sub_8019428: @ 0x08019428
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801943C
sub_801943C: @ 0x0801943C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019450
sub_8019450: @ 0x08019450
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019464
sub_8019464: @ 0x08019464
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019478
sub_8019478: @ 0x08019478
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801948C
sub_801948C: @ 0x0801948C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194A0
sub_80194A0: @ 0x080194A0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194B4
sub_80194B4: @ 0x080194B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194C8
sub_80194C8: @ 0x080194C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194DC
sub_80194DC: @ 0x080194DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80194F0
sub_80194F0: @ 0x080194F0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019504
sub_8019504: @ 0x08019504
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019518
sub_8019518: @ 0x08019518
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801952C
sub_801952C: @ 0x0801952C
	push {r4, lr}
	ldr r0, _08019550 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019554
	adds r0, r2, #0
	bl TaskDestroy
	b _08019572
	.align 2, 0
_08019550: .4byte gCurTask
_08019554:
	ldr r2, _08019578 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019572:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019578: .4byte gCamera

	thumb_func_start sub_801957C
sub_801957C: @ 0x0801957C
	push {r4, lr}
	ldr r0, _080195A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080195A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080195C2
	.align 2, 0
_080195A0: .4byte gCurTask
_080195A4:
	ldr r2, _080195C8 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080195C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080195C8: .4byte gCamera

	thumb_func_start sub_80195CC
sub_80195CC: @ 0x080195CC
	push {r4, lr}
	ldr r0, _080195F8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r3, [r4, #0x28]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080195F0
	movs r1, #0x30
	ldrsh r0, [r3, r1]
	cmp r0, #0xa7
	beq _080195FC
_080195F0:
	adds r0, r2, #0
	bl TaskDestroy
	b _0801961E
	.align 2, 0
_080195F8: .4byte gCurTask
_080195FC:
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r2, _08019624 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801961E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019624: .4byte gCamera

	thumb_func_start sub_8019628
sub_8019628: @ 0x08019628
	push {r4, r5, lr}
	ldr r0, _08019664 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	adds r4, r0, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801966C
	adds r4, r1, #0
	adds r4, #0xd0
	ldr r0, [r4]
	cmp r0, #0
	beq _08019690
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r1, [r4]
	ldr r0, _08019668 @ =sub_8019150
	str r0, [r1, #8]
	b _08019690
	.align 2, 0
_08019664: .4byte gCurTask
_08019668: .4byte sub_8019150
_0801966C:
	movs r5, #0x80
	lsls r5, r5, #0x11
	ands r5, r2
	cmp r5, #0
	bne _08019684
	adds r4, r1, #0
	adds r4, #0xd4
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
	b _08019690
_08019684:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08019690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8019698
sub_8019698: @ 0x08019698
	push {r4, r5, r6, lr}
	ldr r6, _080196C4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x28]
	ldr r1, [r4]
	ldr r0, _080196C8 @ =Player_800BD88
	cmp r1, r0
	beq _080196CC
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_8004F10
	ldr r0, [r6]
	bl TaskDestroy
	b _080196F8
	.align 2, 0
_080196C4: .4byte gCurTask
_080196C8: .4byte Player_800BD88
_080196CC:
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_8004ED4
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r2, _08019700 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080196F8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019700: .4byte gCamera

	thumb_func_start sub_8019704
sub_8019704: @ 0x08019704
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019718
sub_8019718: @ 0x08019718
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08019734 @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #6
	bne _08019738
	adds r1, r5, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	b _08019846
	.align 2, 0
_08019734: .4byte gStageData
_08019738:
	ldrb r0, [r5, #9]
	cmp r0, #8
	beq _08019758
	ldrb r0, [r5, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08019754 @ =gPlayers
	adds r1, r1, r0
	cmp r1, r6
	bne _08019846
	b _0801975E
	.align 2, 0
_08019754: .4byte gPlayers
_08019758:
	ldr r0, _0801980C @ =gPlayers
	cmp r6, r0
	bne _08019846
_0801975E:
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r4]
	cmp r0, #0
	bne _08019846
	ldr r0, _08019810 @ =sub_80198A8
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r1, _08019814 @ =sub_8019A78
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r3, r1, r0
	ldrb r0, [r5, #3]
	cmp r0, #5
	bls _08019792
	cmp r0, #6
	bne _08019796
_08019792:
	ldr r0, _08019818 @ =0x06012000
	str r0, [r3]
_08019796:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #8]
	movs r2, #0
	movs r1, #0
	strh r1, [r3, #0xc]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r1, [r3, #0x16]
	ldr r0, _0801981C @ =0x0000FFFF
	strh r0, [r3, #0x18]
	strb r2, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r2, #2
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	strh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	strh r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r2, [r0]
	ldr r0, _08019820 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	beq _0801982C
	ldr r1, _08019824 @ =gUnknown_080CE7E2
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _08019828 @ =gUnknown_080CE7D8
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x10
	bl sub_8019AB4
	b _08019834
	.align 2, 0
_0801980C: .4byte gPlayers
_08019810: .4byte sub_80198A8
_08019814: .4byte sub_8019A78
_08019818: .4byte 0x06012000
_0801981C: .4byte 0x0000FFFF
_08019820: .4byte gStageData
_08019824: .4byte gUnknown_080CE7E2
_08019828: .4byte gUnknown_080CE7D8
_0801982C:
	ldr r0, _08019850 @ =0x00000521
	movs r1, #0x10
	bl sub_8019AB4
_08019834:
	ldr r0, _08019854 @ =gUnknown_03001BF0
	adds r1, r0, #0
	adds r1, #0xc0
	str r6, [r1]
	adds r0, #0xc4
	movs r1, #0
	strb r1, [r0]
	bl sub_8019A7C
_08019846:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019850: .4byte 0x00000521
_08019854: .4byte gUnknown_03001BF0

	thumb_func_start sub_8019858
sub_8019858: @ 0x08019858
	push {r4, r5, r6, lr}
	ldr r2, _080198A4 @ =gUnknown_03001BF0
	adds r4, r2, #0
	adds r4, #0xc4
	ldrb r1, [r4]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r2
	adds r2, r0, #0
	adds r2, #0xe0
	ldr r5, [r2]
	adds r6, r5, #0
	adds r6, #0xc
	adds r1, #1
	movs r2, #7
	ands r1, r2
	strb r1, [r4]
	ldr r1, [r0, #0x10]
	str r1, [r3]
	ldr r1, [r0, #0x14]
	str r1, [r3, #4]
	ldr r1, [r6, #8]
	str r1, [r3, #8]
	ldr r1, [r0, #4]
	str r1, [r3, #0xc]
	ldrh r1, [r0, #0x34]
	strh r1, [r3, #0x10]
	ldrh r1, [r5]
	strh r1, [r3, #0x12]
	ldrh r0, [r0, #0x36]
	strb r0, [r3, #0x14]
	ldrb r0, [r6, #0x1c]
	strb r0, [r3, #0x15]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080198A4: .4byte gUnknown_03001BF0

	thumb_func_start sub_80198A8
sub_80198A8: @ 0x080198A8
	push {r4, r5, r6, lr}
	ldr r0, _0801991C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r4, _08019920 @ =gUnknown_03001BF0
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080198CC
	b _08019A50
_080198CC:
	ldr r1, _08019924 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080198DA
	b _08019A50
_080198DA:
	ldrb r0, [r1, #9]
	cmp r0, #8
	bne _080198F0
	ldr r0, _08019928 @ =gPlayers
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080198F0
	b _08019A50
_080198F0:
	adds r0, r4, #0
	adds r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0801992C @ =0x0300003C
	adds r3, r2, r0
	ldrb r2, [r3]
	adds r0, r2, #0
	subs r0, #8
	subs r1, r1, r0
	movs r0, #7
	ands r1, r0
	movs r0, #6
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r0, r4
	cmp r2, #6
	bne _08019930
	movs r0, #2
	b _08019932
	.align 2, 0
_0801991C: .4byte gCurTask
_08019920: .4byte gUnknown_03001BF0
_08019924: .4byte gStageData
_08019928: .4byte gPlayers
_0801992C: .4byte 0x0300003C
_08019930:
	adds r0, r2, #2
_08019932:
	strb r0, [r3]
	adds r4, r6, #0
	adds r4, #0xc
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #0x14]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _080199B0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x12]
	strh r0, [r6]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, [r4, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080199DA
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r2, _080199B4 @ =gUnknown_03002C24
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080199B8
	movs r0, #0x80
	lsls r0, r0, #1
	b _080199BC
	.align 2, 0
_080199B0: .4byte gCamera
_080199B4: .4byte gUnknown_03002C24
_080199B8:
	movs r0, #0xff
	lsls r0, r0, #8
_080199BC:
	strh r0, [r6, #2]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080199D0
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r6, #2]
_080199D0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	b _080199FC
_080199DA:
	movs r2, #0x40
	rsbs r2, r2, #0
	ands r2, r1
	str r2, [r4, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080199F6
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	b _080199FA
_080199F6:
	ldr r0, _08019A18 @ =0xFFFFF7FF
	ands r2, r0
_080199FA:
	str r2, [r4, #8]
_080199FC:
	ldr r0, _08019A1C @ =gStageData
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08019A3A
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08019A20
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _08019A28
	.align 2, 0
_08019A18: .4byte 0xFFFFF7FF
_08019A1C: .4byte gStageData
_08019A20:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_08019A28:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019A44
	b _08019A50
_08019A3A:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08019A44:
	movs r0, #1
	cmp r0, #0
	beq _08019A50
	adds r0, r4, #0
	bl DisplaySprite
_08019A50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8019A58
sub_8019A58: @ 0x08019A58
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_8019A64
sub_8019A64: @ 0x08019A64
	adds r3, r0, #0
	adds r3, #0x2b
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	bx lr
    
	thumb_func_start sub_8019A78
sub_8019A78: @ 0x08019A78
	bx lr
	.align 2, 0

	thumb_func_start sub_8019A7C
sub_8019A7C: @ 0x08019A7C
	push {r4, lr}
	ldr r1, _08019AB0 @ =gUnknown_03001BF0
	movs r3, #0
	movs r2, #0
	movs r4, #0x10
_08019A86:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x12]
	strb r2, [r1, #0x14]
	strb r4, [r1, #0x15]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r1, #0x18
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08019A86
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019AB0: .4byte gUnknown_03001BF0

	thumb_func_start sub_8019AB4
sub_8019AB4: @ 0x08019AB4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _08019B04 @ =gAnimations
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0]
	ldm r2!, {r1}
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019B3A
	ldm r2!, {r1}
	ldr r5, [r2]
	lsrs r4, r5, #0x10
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xff
	ands r5, r0
	ldr r6, _08019B08 @ =gFlags
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08019B10
	ldr r0, _08019B0C @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	bl sub_80C4564
	b _08019B3A
	.align 2, 0
_08019B04: .4byte gAnimations
_08019B08: .4byte gFlags
_08019B0C: .4byte gRefSpriteTables
_08019B10:
	ldr r2, _08019B40 @ =0x040000D4
	ldr r0, _08019B44 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r4, #1
	ldr r1, _08019B48 @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	lsls r0, r5, #1
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r6]
_08019B3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019B40: .4byte 0x040000D4
_08019B44: .4byte gRefSpriteTables
_08019B48: .4byte gObjPalette

	thumb_func_start sub_8019B4C
sub_8019B4C: @ 0x08019B4C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08019BAC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	movs r1, #6
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FF0
	movs r2, #0
	movs r1, #0
	movs r0, #0xab
	strh r0, [r5, #0x30]
	strh r1, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x26
	strb r2, [r0]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019BC0
	ldrh r1, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	ldr r2, _08019BB0 @ =0xFFFFFC00
	cmp r0, r2
	ble _08019BF2
	adds r0, r1, r2
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08019BB4 @ =0xFFFFFA00
	cmp r1, r0
	bge _08019BB8
	movs r0, #0xfa
	lsls r0, r0, #8
	b _08019BF0
	.align 2, 0
_08019BAC: .4byte 0xFFFFBFFF
_08019BB0: .4byte 0xFFFFFC00
_08019BB4: .4byte 0xFFFFFA00
_08019BB8:
	cmp r1, r2
	ble _08019BF2
	strh r2, [r5, #0x18]
	b _08019BF2
_08019BC0:
	ldrh r1, [r5, #0x18]
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	ldr r2, _08019BE4 @ =0x000003FF
	cmp r0, r2
	bgt _08019BF2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, r3
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08019BE8
	strh r1, [r5, #0x18]
	b _08019BF2
	.align 2, 0
_08019BE4: .4byte 0x000003FF
_08019BE8:
	cmp r0, r2
	bgt _08019BF2
	movs r0, #0x80
	lsls r0, r0, #3
_08019BF0:
	strh r0, [r5, #0x18]
_08019BF2:
	ldr r0, _08019C1C @ =0x0000FE80
	strh r0, [r5, #0x1a]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #4
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x70
	bl sub_8004E98
	ldr r4, _08019C20 @ =sub_8019CF0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019C1C: .4byte 0x0000FE80
_08019C20: .4byte sub_8019CF0

	thumb_func_start sub_8019C24
sub_8019C24: @ 0x08019C24
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08019C6C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FE0
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019C78
	ldrh r2, [r5, #0x18]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	ldr r1, _08019C70 @ =0xFFFFFD00
	cmp r0, r1
	ble _08019C9A
	adds r0, r2, r1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08019C74 @ =0xFFFFFB00
	cmp r0, r1
	bge _08019C9A
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #0x18]
	b _08019C9A
	.align 2, 0
_08019C6C: .4byte 0xFFFFBFFF
_08019C70: .4byte 0xFFFFFD00
_08019C74: .4byte 0xFFFFFB00
_08019C78:
	ldrh r2, [r5, #0x18]
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	ldr r0, _08019CBC @ =0x000002FF
	cmp r1, r0
	bgt _08019C9A
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r2, r1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08019C9A
	strh r1, [r5, #0x18]
_08019C9A:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldr r0, [r5, #4]
	ldr r1, _08019CC0 @ =0x00008004
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08019CC4
	cmp r0, #4
	beq _08019CCA
	b _08019CD6
	.align 2, 0
_08019CBC: .4byte 0x000002FF
_08019CC0: .4byte 0x00008004
_08019CC4:
	movs r0, #0xa9
	strh r0, [r5, #0x30]
	b _08019CD6
_08019CCA:
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8018034
_08019CD6:
	ldr r4, _08019CEC @ =sub_801A224
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019CEC: .4byte sub_801A224

	thumb_func_start sub_8019CF0
sub_8019CF0: @ 0x08019CF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	beq _08019D44
	cmp r0, #1
	bne _08019D5E
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D5E
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_8012FE0
	ldr r0, [r4, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08019D3C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r1, _08019D40 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _08019D94
	.align 2, 0
_08019D3C: .4byte 0xFFFFBFFF
_08019D40: .4byte sub_800DAF4
_08019D44:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D5E
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	movs r0, #0x14
	strh r0, [r1]
_08019D5E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D94
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019D94
	ldr r1, _08019D9C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_08019D94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019D9C: .4byte Player_8005380

	thumb_func_start sub_8019DA0
sub_8019DA0: @ 0x08019DA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08019DC0
	ldrh r0, [r4, #0x1c]
	adds r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08019DCE
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _08019DCE
_08019DC0:
	ldrh r0, [r4, #0x1c]
	subs r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08019DCE
	strh r1, [r4, #0x1c]
_08019DCE:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08019DE8
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08019E38
_08019DE8:
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08019E20 @ =sub_8019E94
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	adds r0, #0x5a
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019E28
	ldr r1, _08019E24 @ =0x00000213
	adds r0, r4, #0
	bl sub_8004E98
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x40
	b _08019E36
	.align 2, 0
_08019E20: .4byte sub_8019E94
_08019E24: .4byte 0x00000213
_08019E28:
	adds r0, r4, #0
	movs r1, #0x6f
	bl sub_8004E98
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x20
_08019E36:
	strh r0, [r1]
_08019E38:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019E84
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08019E84
	ldr r1, _08019E8C @ =sub_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, _08019E90 @ =0x00000213
	adds r0, r4, #0
	bl sub_8004F10
	adds r0, r4, #0
	movs r1, #0x6f
	bl sub_8004F10
_08019E84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019E8C: .4byte sub_800DB30
_08019E90: .4byte 0x00000213

	thumb_func_start sub_8019E94
sub_8019E94: @ 0x08019E94
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08019EB4
	ldrh r0, [r4, #0x1c]
	adds r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08019EC2
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _08019EC2
_08019EB4:
	ldrh r0, [r4, #0x1c]
	subs r0, #0xe
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08019EC2
	strh r1, [r4, #0x1c]
_08019EC2:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _08019EF4
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldr r1, _08019F74 @ =sub_801A1D4
	adds r0, r4, #0
	bl SetPlayerCallback
_08019EF4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019F6E
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08019F40
	ldr r1, _08019F78 @ =sub_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, _08019F7C @ =0x00000213
	adds r0, r4, #0
	bl sub_8004F10
	adds r0, r4, #0
	movs r1, #0x6f
	bl sub_8004F10
_08019F40:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, r5
	beq _08019F6E
	ldr r0, [r4, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08019F6E
	adds r0, r3, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r1, #7
	ands r1, r0
	cmp r1, #7
	bne _08019F6E
	adds r0, r4, #0
	bl sub_8017AF4
_08019F6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019F74: .4byte sub_801A1D4
_08019F78: .4byte sub_800DB30
_08019F7C: .4byte 0x00000213

	thumb_func_start sub_8019F80
sub_8019F80: @ 0x08019F80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019F9E
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _08019F9E
	adds r0, #1
	strh r0, [r4, #0x36]
_08019F9E:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019FEA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08019FEA
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r0, [r4, #4]
	ldr r1, _08019FF0 @ =0xFFFF7FFD
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _08019FF4 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_08019FEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019FF0: .4byte 0xFFFF7FFD
_08019FF4: .4byte sub_800DAF4

	thumb_func_start sub_8019FF8
sub_8019FF8: @ 0x08019FF8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A030 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r5, #4]
	movs r0, #0xa5
	strh r0, [r5, #0x30]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801A034
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801A038
	.align 2, 0
_0801A030: .4byte 0xFFFFBFFF
_0801A034:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801A038:
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x5a
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0801A058 @ =sub_8019DA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A058: .4byte sub_8019DA0

	thumb_func_start sub_801A05C
sub_801A05C: @ 0x0801A05C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A094 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r5, #4]
	movs r0, #0xa6
	strh r0, [r5, #0x30]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801A098
	movs r0, #0xfb
	lsls r0, r0, #8
	b _0801A09C
	.align 2, 0
_0801A094: .4byte 0xFFFFBFFF
_0801A098:
	movs r0, #0xa0
	lsls r0, r0, #3
_0801A09C:
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x5a
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _0801A0BC @ =sub_8019DA0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A0BC: .4byte sub_8019DA0

	thumb_func_start sub_801A0C0
sub_801A0C0: @ 0x0801A0C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A114 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801A118 @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xa7
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x10
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x71
	bl sub_8004E98
	adds r0, r4, #0
	bl sub_8017B80
	ldr r5, _0801A11C @ =sub_801A280
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A114: .4byte 0xFFFFBFFF
_0801A118: .4byte 0x00008006
_0801A11C: .4byte sub_801A280

	thumb_func_start sub_801A120
sub_801A120: @ 0x0801A120
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A170 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801A174 @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xac
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0x70
	bl sub_8004E98
	ldr r5, _0801A178 @ =sub_8019F80
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A170: .4byte 0xFFFFBFFF
_0801A174: .4byte 0x00008006
_0801A178: .4byte sub_8019F80

	thumb_func_start sub_801A17C
sub_801A17C: @ 0x0801A17C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A1C8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801A1CC @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xaa
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8017BFC
	ldr r5, _0801A1D0 @ =sub_801A2DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A1C8: .4byte 0xFFFFBFFF
_0801A1CC: .4byte 0x00008004
_0801A1D0: .4byte sub_801A2DC

	thumb_func_start sub_801A1D4
sub_801A1D4: @ 0x0801A1D4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A1F0
	ldr r1, _0801A220 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A1F0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A21A
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801A21A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A220: .4byte Player_8005380

	thumb_func_start sub_801A224
sub_801A224: @ 0x0801A224
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A242
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801A242
	movs r0, #1
	strh r0, [r4, #0x36]
_0801A242:
	adds r0, r4, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A278
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801A278:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A280
sub_801A280: @ 0x0801A280
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801350C
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A2D0
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A2D0
	ldr r1, _0801A2D8 @ =sub_800DF10
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A2D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A2D8: .4byte sub_800DF10

	thumb_func_start sub_801A2DC
sub_801A2DC: @ 0x0801A2DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A324
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A324
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #0
	bne _0801A324
	adds r0, #1
	strh r0, [r4, #0x36]
	strh r1, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	ldr r1, _0801A32C @ =sub_801A330
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A324:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A32C: .4byte sub_801A330

	thumb_func_start sub_801A330
sub_801A330: @ 0x0801A330
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A37C
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801A37C
	strh r1, [r4, #0x18]
	ldr r0, _0801A384 @ =0x0000FB80
	strh r0, [r4, #0x1a]
	ldr r1, _0801A388 @ =sub_801A38C
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0xdf
	bl sub_8004E98
_0801A37C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A384: .4byte 0x0000FB80
_0801A388: .4byte sub_801A38C

	thumb_func_start sub_801A38C
sub_801A38C: @ 0x0801A38C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A3D2
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801A3D2
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_8012FE0
	ldr r1, _0801A3D8 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A3D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A3D8: .4byte sub_800DAF4

	thumb_func_start sub_801A3DC
sub_801A3DC: @ 0x0801A3DC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A3FC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
_0801A3FC:
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0801A416
	cmp r0, #2
	beq _0801A41A
	b _0801A41E
_0801A416:
	movs r0, #0xc5
	b _0801A41C
_0801A41A:
	movs r0, #0xdb
_0801A41C:
	strh r0, [r5, #0x30]
_0801A41E:
	movs r1, #0
	strh r1, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2f
	movs r0, #1
	strb r0, [r2]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_8019A64
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A460 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	ldr r1, _0801A464 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801A468 @ =sub_801A644
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A460: .4byte 0xFFFFBFFF
_0801A464: .4byte 0x00040004
_0801A468: .4byte sub_801A644

	thumb_func_start sub_801A46C
sub_801A46C: @ 0x0801A46C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A48C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
_0801A48C:
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801A4B4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0801A4B8
	cmp r0, #2
	beq _0801A4C6
	b _0801A4CA
	.align 2, 0
_0801A4B4: .4byte 0xFFFFBFFF
_0801A4B8:
	movs r0, #0xbb
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0xe6
	bl sub_8004E98
	b _0801A4CA
_0801A4C6:
	movs r0, #0xdd
	strh r0, [r5, #0x30]
_0801A4CA:
	adds r2, r5, #0
	adds r2, #0x2f
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ldr r1, _0801A4FC @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801A500 @ =sub_801AD10
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A4FC: .4byte 0x00040004
_0801A500: .4byte sub_801AD10

	thumb_func_start sub_801A504
sub_801A504: @ 0x0801A504
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
	adds r0, r5, #0
	bl sub_8016F28
	ldr r0, [r5, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	movs r0, #0xc1
	strh r0, [r5, #0x30]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0xff
	bgt _0801A554
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
_0801A554:
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	movs r2, #0x1a
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1a]
	movs r0, #0
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r2]
	ldr r4, _0801A59C @ =sub_801A87C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A59C: .4byte sub_801A87C

	thumb_func_start sub_801A5A0
sub_801A5A0: @ 0x0801A5A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801A5CC @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0801A5D4
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801A5D0 @ =sub_801AC04
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801A63C
	.align 2, 0
_0801A5CC: .4byte gStageData
_0801A5D0: .4byte sub_801AC04
_0801A5D4:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801A5FC
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A5FC
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_0801A5FC:
	adds r0, r4, #0
	bl sub_8014940
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0x7f
	bgt _0801A61E
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x1a]
_0801A61E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A63C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801A63C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A644
sub_801A644: @ 0x0801A644
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	movs r2, #0x9c
	lsls r2, r2, #3
	cmp r0, #0
	beq _0801A65A
	movs r2, #0xa8
	lsls r2, r2, #2
_0801A65A:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801A680
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A680
	movs r0, #1
	strh r0, [r4, #0x36]
	rsbs r1, r2, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #0x1a]
_0801A680:
	ldrh r0, [r4, #0x36]
	adds r1, r0, #0
	cmp r1, #1
	bne _0801A6A4
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0801A6A4
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r1, _0801A6A0 @ =sub_800DF10
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801A6DA
	.align 2, 0
_0801A6A0: .4byte sub_800DF10
_0801A6A4:
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0801A6DA
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A6DA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801A6DA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801A6E0
sub_801A6E0: @ 0x0801A6E0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801A724
	subs r0, r2, #1
	strh r0, [r1]
	ldr r0, _0801A71C @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801A724
	movs r0, #0xbf
	strh r0, [r4, #0x30]
	ldr r1, _0801A720 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0xe3
	bl sub_8004F10
	b _0801A7F0
	.align 2, 0
_0801A71C: .4byte gStageData
_0801A720: .4byte sub_800DAF4
_0801A724:
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	cmp r0, #1
	beq _0801A756
	ldrh r3, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801A750
	adds r0, r3, #0
	subs r0, #0x18
	strh r0, [r4, #0x1a]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801A786
_0801A750:
	movs r0, #1
	strb r0, [r2]
	b _0801A786
_0801A756:
	ldr r0, _0801A7B4 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801A780
	movs r3, #0x1a
	ldrsh r1, [r4, r3]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801A780
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0801A780
	movs r0, #2
	strb r0, [r2]
_0801A780:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801A786:
	adds r0, r4, #0
	bl sub_801A7FC
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0801A796
	rsbs r1, r1, #0
_0801A796:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	ble _0801A7C4
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0801A7B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #1
	subs r0, r1, r0
	b _0801A7C2
	.align 2, 0
_0801A7B4: .4byte gStageData
_0801A7B8:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r1, r0
_0801A7C2:
	strh r0, [r4, #0x18]
_0801A7C4:
	adds r0, r4, #0
	bl sub_800E04C
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A7F0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801A7F0
	adds r0, r4, #0
	movs r1, #0xe3
	bl sub_8004F10
	ldr r1, _0801A7F8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801A7F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A7F8: .4byte Player_8005380

	thumb_func_start sub_801A7FC
sub_801A7FC: @ 0x0801A7FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801A824
	movs r0, #0xbe
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0xe3
	bl sub_8004F10
	movs r0, #5
	adds r1, r4, #0
	bl sub_801EBC0
	b _0801A874
_0801A824:
	ldrh r2, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801A838
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A84A
_0801A838:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801A84E
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A84E
_0801A84A:
	movs r0, #0xbd
	b _0801A86A
_0801A84E:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0xbd
	bne _0801A868
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A86C
_0801A868:
	movs r0, #0xbc
_0801A86A:
	strh r0, [r4, #0x30]
_0801A86C:
	adds r0, r4, #0
	movs r1, #0xe3
	bl sub_8004ED4
_0801A874:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A87C
sub_801A87C: @ 0x0801A87C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801A894
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _0801A92A
_0801A894:
	adds r0, r4, #0
	bl sub_8015460
	movs r1, #0x18
	ldrsh r2, [r4, r1]
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	movs r1, #0x1a
	ldrsh r2, [r4, r1]
	ldr r1, [r4, #0x14]
	adds r1, r1, r2
	str r1, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bhi _0801A918
	lsls r0, r0, #2
	ldr r1, _0801A8C0 @ =_0801A8C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A8C0: .4byte _0801A8C4
_0801A8C4: @ jump table
	.4byte _0801A8D8 @ case 0
	.4byte _0801A8DE @ case 1
	.4byte _0801A8E4 @ case 2
	.4byte _0801A8EC @ case 3
	.4byte _0801A8F2 @ case 4
_0801A8D8:
	movs r0, #0xc1
	strh r0, [r4, #0x30]
	b _0801A918
_0801A8DE:
	movs r0, #0xc4
	strh r0, [r4, #0x30]
	b _0801A918
_0801A8E4:
	adds r0, r4, #0
	bl sub_801ADC0
	b _0801A92A
_0801A8EC:
	movs r0, #0xc2
	strh r0, [r4, #0x30]
	b _0801A918
_0801A8F2:
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801A914 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
	b _0801A92A
	.align 2, 0
_0801A914: .4byte 0xFFFBFFFF
_0801A918:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A92A
	adds r0, r4, #0
	bl sub_8017004
_0801A92A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801A930
sub_801A930: @ 0x0801A930
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	beq _0801A94A
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _0801A9E0
_0801A94A:
	adds r0, r5, #0
	bl sub_8015460
	movs r1, #0x18
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #0x10]
	adds r1, r1, r2
	str r1, [r5, #0x10]
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	ldr r1, [r5, #0x14]
	adds r1, r1, r2
	str r1, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0801A988
	ldr r4, _0801A984 @ =sub_801A87C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	adds r0, r5, #0
	adds r0, #0x9e
	strh r6, [r0]
	b _0801A9E0
	.align 2, 0
_0801A984: .4byte sub_801A87C
_0801A988:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0801A99C
	subs r0, r2, #1
	strh r0, [r1]
	b _0801A9B2
_0801A99C:
	adds r2, r5, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0801A9E8 @ =0xFFFFFBB0
	cmp r1, r0
	ble _0801A9B2
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
_0801A9B2:
	ldrh r2, [r5, #0x36]
	cmp r2, #0
	bne _0801A9CE
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801A9CE
	adds r0, r2, #1
	strh r0, [r5, #0x36]
_0801A9CE:
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A9E0
	adds r0, r5, #0
	bl sub_8017004
_0801A9E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A9E8: .4byte 0xFFFFFBB0

	thumb_func_start sub_801A9EC
sub_801A9EC: @ 0x0801A9EC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801AA44 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, _0801AA48 @ =0x0000FE2C
	strh r0, [r4, #0x1a]
	movs r0, #0xc0
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8019A64
	ldr r0, [r4, #4]
	ldr r1, _0801AA4C @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r5, _0801AA50 @ =sub_801A5A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AA44: .4byte 0xFFFFBFFF
_0801AA48: .4byte 0x0000FE2C
_0801AA4C: .4byte 0x00040004
_0801AA50: .4byte sub_801A5A0

	thumb_func_start sub_801AA54
sub_801AA54: @ 0x0801AA54
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AA6A
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AA6A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_801AC58
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AA78
sub_801AA78: @ 0x0801AA78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8005B04
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AADC
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AACA
	ldr r1, _0801AAE4 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AACA:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801AADC
	ldr r1, _0801AAE8 @ =sub_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AADC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AAE4: .4byte Player_8005380
_0801AAE8: .4byte sub_800DB30

	thumb_func_start sub_801AAEC
sub_801AAEC: @ 0x0801AAEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB02
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB02:
	adds r0, r4, #0
	movs r1, #1
	bl sub_801AC58
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB10
sub_801AB10: @ 0x0801AB10
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB26
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB26:
	adds r0, r4, #0
	movs r1, #2
	bl sub_801AC58
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB34
sub_801AB34: @ 0x0801AB34
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB4A
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB4A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_801ACBC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB58
sub_801AB58: @ 0x0801AB58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB6E
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_801ACBC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801AB7C
sub_801AB7C: @ 0x0801AB7C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801AB92
	movs r0, #9
	adds r1, r4, #0
	bl sub_801EBC0
_0801AB92:
	adds r0, r4, #0
	movs r1, #2
	bl sub_801ACBC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801ABA0
sub_801ABA0: @ 0x0801ABA0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801ABC0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
_0801ABC0:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ldr r1, _0801ABFC @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801AC00 @ =sub_801A6E0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ABFC: .4byte 0x00040004
_0801AC00: .4byte sub_801A6E0

	thumb_func_start sub_801AC04
sub_801AC04: @ 0x0801AC04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AC4E
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AC4E
	movs r0, #0xbf
	strh r0, [r4, #0x30]
	ldr r1, _0801AC54 @ =sub_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AC4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AC54: .4byte sub_800DAF4

	thumb_func_start sub_801AC58
sub_801AC58: @ 0x0801AC58
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801AC88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	cmp r4, #1
	bne _0801AC90
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801AC8C
	movs r0, #0xb6
	b _0801AC9E
	.align 2, 0
_0801AC88: .4byte 0xFFFFBFFF
_0801AC8C:
	movs r0, #0xb7
	b _0801AC9E
_0801AC90:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801AC9C
	movs r0, #0xb4
	b _0801AC9E
_0801AC9C:
	movs r0, #0xb5
_0801AC9E:
	strh r0, [r5, #0x30]
	ldr r4, _0801ACB8 @ =sub_801AA78
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ACB8: .4byte sub_801AA78

	thumb_func_start sub_801ACBC
sub_801ACBC: @ 0x0801ACBC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_800D880
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801ACEC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	cmp r4, #1
	bne _0801ACF0
	movs r0, #0xba
	b _0801ACF2
	.align 2, 0
_0801ACEC: .4byte 0xFFFFBFFF
_0801ACF0:
	movs r0, #0xb9
_0801ACF2:
	strh r0, [r5, #0x30]
	ldr r4, _0801AD0C @ =sub_800DAF4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AD0C: .4byte sub_800DAF4

	thumb_func_start sub_801AD10
sub_801AD10: @ 0x0801AD10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AD58
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r2, [r4, #0x36]
	adds r3, r2, #0
	cmp r3, #0
	bne _0801AD58
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AD58
	adds r0, r2, #1
	strh r0, [r4, #0x36]
	strh r3, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	ldr r1, _0801AD60 @ =sub_801AD64
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AD58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AD60: .4byte sub_801AD64

	thumb_func_start sub_801AD64
sub_801AD64: @ 0x0801AD64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ADB6
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801ADA4
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4, #0x1a]
_0801ADA4:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801ADB6
	ldr r1, _0801ADBC @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801ADB6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801ADBC: .4byte Player_8005380

	thumb_func_start sub_801ADC0
sub_801ADC0: @ 0x0801ADC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0xc3
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
	ldr r5, _0801ADF0 @ =sub_801A930
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ADF0: .4byte sub_801A930

	thumb_func_start sub_801ADF4
sub_801ADF4: @ 0x0801ADF4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801AE14
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FE0
_0801AE14:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2f
	movs r4, #1
	strb r4, [r0]
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ands r0, r4
	cmp r0, #0
	beq _0801AE3A
	movs r0, #0xff
	lsls r0, r0, #8
	b _0801AE3E
_0801AE3A:
	movs r0, #0x80
	lsls r0, r0, #1
_0801AE3E:
	strh r0, [r5, #0x18]
	ldr r0, _0801AE64 @ =0x0000FF80
	strh r0, [r5, #0x1a]
	ldr r0, [r5, #4]
	ldr r1, _0801AE68 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801AE6C @ =sub_801B608
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AE64: .4byte 0x0000FF80
_0801AE68: .4byte 0x00040004
_0801AE6C: .4byte sub_801B608

	thumb_func_start sub_801AE70
sub_801AE70: @ 0x0801AE70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801AE90
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FE0
_0801AE90:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801AEA6
	movs r0, #0
	strh r0, [r5, #0x1a]
_0801AEA6:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #4]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801AEBA
	strh r2, [r5, #0x1c]
_0801AEBA:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801AED4
	ldrh r0, [r5, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	b _0801AEE2
_0801AED4:
	ldrh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_0801AEE2:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8019A64
	adds r0, r5, #0
	adds r0, #0x26
	strb r4, [r0]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r6, r5, r1
	strb r4, [r6]
	adds r1, #1
	adds r0, r5, r1
	strb r4, [r0]
	adds r0, r5, #0
	bl sub_8019A64
	ldrb r1, [r6]
	movs r0, #4
	orrs r0, r1
	strb r0, [r6]
	ldr r0, [r5, #4]
	ldr r1, _0801AF48 @ =0x00040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801AF4C @ =sub_801BA2C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF48: .4byte 0x00040004
_0801AF4C: .4byte sub_801BA2C

	thumb_func_start sub_801AF50
sub_801AF50: @ 0x0801AF50
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801AF6C
	ldr r1, _0801AF8C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AF6C:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801AF78
	rsbs r0, r0, #0
_0801AF78:
	lsls r0, r0, #0x10
	ldr r1, _0801AF90 @ =0xFFE00000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801AF94
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801AFA0
	.align 2, 0
_0801AF8C: .4byte Player_8005380
_0801AF90: .4byte 0xFFE00000
_0801AF94:
	cmp r2, #0
	beq _0801AF9E
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801AFA0
_0801AF9E:
	strh r1, [r4, #0x1c]
_0801AFA0:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801AFE2
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801AFE2
	ldr r1, _0801AFE8 @ =sub_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
_0801AFE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AFE8: .4byte sub_800DB30

	thumb_func_start sub_801AFEC
sub_801AFEC: @ 0x0801AFEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r6, r4, r0
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r5, r4, r1
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r1, #0
	ldrsh r7, [r6, r1]
	cmp r7, #0
	bne _0801B03C
	movs r0, #2
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801B038 @ =sub_801B11C
	adds r0, r4, #0
	bl SetPlayerCallback
	strh r7, [r5]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004F10
	b _0801B114
	.align 2, 0
_0801B038: .4byte sub_801B11C
_0801B03C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0801B070
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004F10
	ldr r1, _0801B06C @ =sub_801B1B0
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0x78
	strh r0, [r6]
	b _0801B114
	.align 2, 0
_0801B06C: .4byte sub_801B1B0
_0801B070:
	ldr r0, _0801B09C @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801B080
	movs r0, #0x1e
	strh r0, [r6]
_0801B080:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801B08C
	rsbs r0, r0, #0
_0801B08C:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801B0A0 @ =0x000003FF
	cmp r1, r0
	bgt _0801B0A4
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B0A8
	.align 2, 0
_0801B09C: .4byte gStageData
_0801B0A0: .4byte 0x000003FF
_0801B0A4:
	adds r0, r1, #0
	subs r0, #0x40
_0801B0A8:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B0BA
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801B0C6
_0801B0BA:
	cmp r2, #0
	beq _0801B0C4
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801B0C6
_0801B0C4:
	strh r1, [r4, #0x1c]
_0801B0C6:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801B0E4
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801B0DE
	ldrh r0, [r4, #0x1c]
	subs r0, #0x10
	b _0801B0E2
_0801B0DE:
	ldrh r0, [r4, #0x1c]
	adds r0, #0x10
_0801B0E2:
	strh r0, [r4, #0x1c]
_0801B0E4:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B114
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801B114:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B11C
sub_801B11C: @ 0x0801B11C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B138
	ldr r1, _0801B154 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801B138:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801B144
	rsbs r0, r0, #0
_0801B144:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801B158 @ =0x000003FF
	cmp r1, r0
	bgt _0801B15C
	adds r0, r1, #0
	subs r0, #0x20
	b _0801B160
	.align 2, 0
_0801B154: .4byte Player_8005380
_0801B158: .4byte 0x000003FF
_0801B15C:
	adds r0, r1, #0
	subs r0, #0x80
_0801B160:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B172
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801B17E
_0801B172:
	cmp r2, #0
	beq _0801B17C
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801B17E
_0801B17C:
	strh r1, [r4, #0x1c]
_0801B17E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B1A8
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801B1A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B1B0
sub_801B1B0: @ 0x0801B1B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B1E4
	movs r0, #3
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801B1E0 @ =sub_801B11C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B250
	.align 2, 0
_0801B1E0: .4byte sub_801B11C
_0801B1E4:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsrs r2, r0, #0x1f
	cmp r0, #0
	bge _0801B1F0
	rsbs r0, r0, #0
_0801B1F0:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0801B200 @ =0x000003FF
	cmp r1, r0
	bgt _0801B204
	adds r0, r1, #0
	subs r0, #0x20
	b _0801B208
	.align 2, 0
_0801B200: .4byte 0x000003FF
_0801B204:
	adds r0, r1, #0
	subs r0, #0x80
_0801B208:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B21A
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0801B226
_0801B21A:
	cmp r2, #0
	beq _0801B224
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	b _0801B226
_0801B224:
	strh r1, [r4, #0x1c]
_0801B226:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B250
	adds r0, r4, #0
	bl sub_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
_0801B250:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B258
sub_801B258: @ 0x0801B258
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B2D2
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B2D2
	ldr r0, _0801B2D8 @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #0x14
	strh r0, [r4, #0x30]
	ldr r1, _0801B2DC @ =gUnknown_080CE7D8
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x13
	strh r0, [r4, #0x34]
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r1, _0801B2E0 @ =sub_800DF5C
	adds r0, r4, #0
	bl SetPlayerCallback
_0801B2D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B2D8: .4byte 0xFFFFBFFF
_0801B2DC: .4byte gUnknown_080CE7D8
_0801B2E0: .4byte sub_800DF5C

	thumb_func_start sub_801B2E4
sub_801B2E4: @ 0x0801B2E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B2FE
	subs r0, r1, #1
	strh r0, [r2]
_0801B2FE:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B330
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B32A
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B35A
_0801B32A:
	movs r0, #1
	strb r0, [r3]
	b _0801B35A
_0801B330:
	ldr r0, _0801B398 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B354
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B354
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B354
	movs r0, #2
	strb r0, [r3]
_0801B354:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B35A:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B452
	adds r0, r4, #0
	bl sub_801B458
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B452
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B3A0
	ldr r1, _0801B39C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801B452
	.align 2, 0
_0801B398: .4byte gStageData
_0801B39C: .4byte Player_8005380
_0801B3A0:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r1, r0
	cmp r1, #0
	beq _0801B44C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r3, [r0]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801B3F4 @ =gPlayers
	adds r2, r0, r1
	ldr r0, _0801B3F8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0801B3E2
	movs r5, #0x1c
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #8
	beq _0801B3E2
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #8
	bne _0801B3FC
_0801B3E2:
	ldrh r0, [r2, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801B426
	movs r6, #1
	b _0801B42A
	.align 2, 0
_0801B3F4: .4byte gPlayers
_0801B3F8: .4byte gStageData
_0801B3FC:
	ldrh r3, [r2, #0x34]
	ldr r5, _0801B444 @ =gUnknown_080CE7D8
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1b
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x5c
	cmp r3, r0
	beq _0801B426
	lsrs r0, r1, #0x1b
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x5d
	cmp r3, r0
	beq _0801B426
	movs r6, #1
_0801B426:
	cmp r6, #0
	beq _0801B452
_0801B42A:
	ldr r0, [r4, #4]
	ldr r1, _0801B448 @ =0xDDFBFFFF
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
	b _0801B452
	.align 2, 0
_0801B444: .4byte gUnknown_080CE7D8
_0801B448: .4byte 0xDDFBFFFF
_0801B44C:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B452:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801B458
sub_801B458: @ 0x0801B458
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B478
	movs r0, #0xd0
	strh r0, [r2, #0x30]
	adds r0, r2, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801B4C8
_0801B478:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B48C
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B49E
_0801B48C:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B4A2
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B4A2
_0801B49E:
	movs r0, #0xcf
	b _0801B4BE
_0801B4A2:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xcf
	bne _0801B4BC
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B4C0
_0801B4BC:
	movs r0, #0xce
_0801B4BE:
	strh r0, [r2, #0x30]
_0801B4C0:
	adds r0, r2, #0
	movs r1, #0x78
	bl sub_8004ED4
_0801B4C8:
	pop {r0}
	bx r0

	thumb_func_start sub_801B4CC
sub_801B4CC: @ 0x0801B4CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B4E4
	subs r0, r1, #1
	strh r0, [r2]
_0801B4E4:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B518
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B514 @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B50E
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B540
_0801B50E:
	movs r0, #1
	strb r0, [r3]
	b _0801B540
	.align 2, 0
_0801B514: .4byte 0xFFFFFE80
_0801B518:
	ldr r0, _0801B574 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B53A
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B578 @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B53A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B53A
	movs r0, #2
	strb r0, [r3]
_0801B53A:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B540:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B586
	adds r0, r4, #0
	bl sub_801B58C
	adds r0, r4, #0
	bl sub_801C00C
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B580
	ldr r1, _0801B57C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801B586
	.align 2, 0
_0801B574: .4byte gStageData
_0801B578: .4byte 0xFFFFFE80
_0801B57C: .4byte Player_8005380
_0801B580:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B586:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801B58C
sub_801B58C: @ 0x0801B58C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B5B2
	movs r0, #0xd0
	strh r0, [r2, #0x30]
	ldrh r0, [r2, #0x1a]
	adds r0, #0x10
	strh r0, [r2, #0x1a]
	adds r0, r2, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801B602
_0801B5B2:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B5C6
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B5D8
_0801B5C6:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B5DC
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B5DC
_0801B5D8:
	movs r0, #0xd2
	b _0801B5F8
_0801B5DC:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xcf
	bne _0801B5F6
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B5FA
_0801B5F6:
	movs r0, #0xd1
_0801B5F8:
	strh r0, [r2, #0x30]
_0801B5FA:
	adds r0, r2, #0
	movs r1, #0x78
	bl sub_8004ED4
_0801B602:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B608
sub_801B608: @ 0x0801B608
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801B620 @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0801B628
	movs r0, #0xd3
	strh r0, [r4, #0x30]
	ldr r1, _0801B624 @ =sub_801BFD4
	b _0801B688
	.align 2, 0
_0801B620: .4byte gStageData
_0801B624: .4byte sub_801BFD4
_0801B628:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_801B6A8
	adds r0, r4, #0
	bl sub_8014940
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0801B64A
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801B656
_0801B64A:
	cmp r0, #0
	ble _0801B658
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801B656:
	str r0, [r4, #4]
_0801B658:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B6A2
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B69C
	ldr r1, _0801B698 @ =Player_8005380
_0801B688:
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801B6A2
	.align 2, 0
_0801B698: .4byte Player_8005380
_0801B69C:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B6A2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801B6A8
sub_801B6A8: @ 0x0801B6A8
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B6C8
	movs r0, #0xd0
	strh r0, [r2, #0x30]
	adds r0, r2, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801B718
_0801B6C8:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B6DC
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B6F6
_0801B6DC:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B6EE
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B6F6
_0801B6EE:
	movs r0, #0x30
	ldrsh r3, [r2, r0]
	cmp r3, #0xd4
	beq _0801B6FC
_0801B6F6:
	movs r0, #0xd4
	strh r0, [r2, #0x30]
	b _0801B710
_0801B6FC:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B710
	strh r3, [r2, #0x30]
_0801B710:
	adds r0, r2, #0
	movs r1, #0x78
	bl sub_8004ED4
_0801B718:
	pop {r0}
	bx r0

	thumb_func_start sub_801B71C
sub_801B71C: @ 0x0801B71C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B734
	subs r0, r1, #1
	strh r0, [r2]
_0801B734:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B768
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B764 @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B75E
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B790
_0801B75E:
	movs r0, #1
	strb r0, [r3]
	b _0801B790
	.align 2, 0
_0801B764: .4byte 0xFFFFFE80
_0801B768:
	ldr r0, _0801B7C8 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B78A
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B7CC @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B78A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B78A
	movs r0, #2
	strb r0, [r3]
_0801B78A:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B790:
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0xd0
	beq _0801B7D4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xee
	bgt _0801B7D4
	ldr r0, _0801B7C8 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801B7D4
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801B7D0 @ =sub_801B824
	b _0801B80A
	.align 2, 0
_0801B7C8: .4byte gStageData
_0801B7CC: .4byte 0xFFFFFE80
_0801B7D0: .4byte sub_801B824
_0801B7D4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B81E
	adds r0, r4, #0
	bl sub_801C068
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B81E
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801B818
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
	ldr r1, _0801B814 @ =Player_8005380
_0801B80A:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B81E
	.align 2, 0
_0801B814: .4byte Player_8005380
_0801B818:
	adds r0, r4, #0
	bl sub_801C1D4
_0801B81E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801B824
sub_801B824: @ 0x0801B824
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801B83C
	subs r0, r2, #1
	strh r0, [r1]
_0801B83C:
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	cmp r0, #1
	beq _0801B870
	ldrh r3, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801B86C @ =0xFFFFFE80
	cmp r1, r0
	blt _0801B866
	adds r0, r3, #0
	subs r0, #0x30
	strh r0, [r4, #0x1a]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B876
_0801B866:
	movs r0, #1
	strb r0, [r2]
	b _0801B876
	.align 2, 0
_0801B86C: .4byte 0xFFFFFE80
_0801B870:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B876:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801B89C
	movs r0, #0
	strh r0, [r4, #0x36]
	ldr r1, _0801B898 @ =sub_801B71C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B8D2
	.align 2, 0
_0801B898: .4byte sub_801B71C
_0801B89C:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B8D2
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B8D2
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801B8D2
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_8004F10
	ldr r1, _0801B8D8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801B8D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B8D8: .4byte Player_8005380

	thumb_func_start sub_801B8DC
sub_801B8DC: @ 0x0801B8DC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801B8F4
	subs r0, r1, #1
	strh r0, [r2]
_0801B8F4:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B926
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B920
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801B950
_0801B920:
	movs r0, #1
	strb r0, [r3]
	b _0801B950
_0801B926:
	ldr r0, _0801B988 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801B94A
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B94A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801B94A
	movs r0, #2
	strb r0, [r3]
_0801B94A:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801B950:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B99E
	adds r0, r4, #0
	bl sub_801B9A8
	adds r0, r4, #0
	bl sub_800E04C
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B99E
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801B990
	ldr r1, _0801B98C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801B99E
	.align 2, 0
_0801B988: .4byte gStageData
_0801B98C: .4byte Player_8005380
_0801B990:
	ldr r1, _0801B9A4 @ =0x0000021A
	adds r0, r4, #0
	bl sub_8004ED4
	adds r0, r4, #0
	bl sub_801C14C
_0801B99E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B9A4: .4byte 0x0000021A

	thumb_func_start sub_801B9A8
sub_801B9A8: @ 0x0801B9A8
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B9CC
	movs r0, #0xd8
	strh r0, [r2, #0x30]
	ldr r1, _0801B9C8 @ =0x0000021A
	adds r0, r2, #0
	bl sub_8004F10
	b _0801BA24
	.align 2, 0
_0801B9C8: .4byte 0x0000021A
_0801B9CC:
	ldrh r3, [r2, #0x1e]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0801B9E0
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B9F2
_0801B9E0:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801B9F8
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B9F8
_0801B9F2:
	movs r0, #0xd7
	strh r0, [r2, #0x30]
	b _0801BA24
_0801B9F8:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xcf
	beq _0801BA06
	movs r0, #0xd6
	strh r0, [r2, #0x30]
	b _0801BA24
_0801BA06:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801BA24
	movs r0, #0xd6
	strh r0, [r2, #0x30]
	ldr r1, _0801BA28 @ =0x0000021A
	adds r0, r2, #0
	bl sub_8004ED4
_0801BA24:
	pop {r0}
	bx r0
	.align 2, 0
_0801BA28: .4byte 0x0000021A

	thumb_func_start sub_801BA2C
sub_801BA2C: @ 0x0801BA2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801BA44 @ =0x0000014B
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801BA48
	adds r0, r4, #0
	bl sub_801BAFC
	b _0801BA56
	.align 2, 0
_0801BA44: .4byte 0x0000014B
_0801BA48:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801BA56
	strh r0, [r4, #0x36]
_0801BA56:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0801BA6A
	subs r0, r1, #1
	strh r0, [r2]
_0801BA6A:
	adds r3, r4, #0
	adds r3, #0x2f
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801BAA0
	ldrh r2, [r4, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801BA9C @ =0xFFFFFF00
	cmp r1, r0
	blt _0801BA94
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0801BAC8
_0801BA94:
	movs r0, #1
	strb r0, [r3]
	b _0801BAC8
	.align 2, 0
_0801BA9C: .4byte 0xFFFFFF00
_0801BAA0:
	ldr r0, _0801BAF4 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801BAC2
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, _0801BAF8 @ =0xFFFFFF00
	cmp r1, r0
	blt _0801BAC2
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0801BAC2
	movs r0, #2
	strb r0, [r3]
_0801BAC2:
	ldrh r0, [r4, #0x1a]
	adds r0, #8
	strh r0, [r4, #0x1a]
_0801BAC8:
	adds r0, r4, #0
	bl sub_801BC48
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801BAEC
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_801C098
	adds r0, r4, #0
	bl sub_801C14C
_0801BAEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAF4: .4byte gStageData
_0801BAF8: .4byte 0xFFFFFF00

	thumb_func_start sub_801BAFC
sub_801BAFC: @ 0x0801BAFC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xda
	bne _0801BB38
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801BB72
	ldr r1, [r5, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801BB2E
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	b _0801BB30
_0801BB2E:
	orrs r1, r2
_0801BB30:
	str r1, [r5, #4]
	movs r0, #0xd9
	strh r0, [r5, #0x30]
	b _0801BB72
_0801BB38:
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BB56
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BB50
	movs r0, #0xda
	strh r0, [r5, #0x30]
_0801BB50:
	ldrh r0, [r5, #0x18]
	subs r0, #0x20
	b _0801BB70
_0801BB56:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BB72
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BB6C
	movs r0, #0xda
	strh r0, [r5, #0x30]
_0801BB6C:
	ldrh r0, [r5, #0x18]
	adds r0, #0x20
_0801BB70:
	strh r0, [r5, #0x18]
_0801BB72:
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r1, r0, #0
	cmp r0, #0
	bge _0801BB7E
	rsbs r1, r0, #0
_0801BB7E:
	cmp r1, #7
	bgt _0801BB86
	movs r0, #0
	b _0801BBBA
_0801BB86:
	cmp r0, #0
	bge _0801BB8C
	rsbs r0, r0, #0
_0801BB8C:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0801BBA6
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0801BBA2
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801BBBA
_0801BBA2:
	strh r1, [r5, #0x18]
	b _0801BBBC
_0801BBA6:
	ldrh r1, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0801BBB6
	adds r0, r1, #0
	adds r0, #8
	b _0801BBBA
_0801BBB6:
	adds r0, r1, #0
	subs r0, #8
_0801BBBA:
	strh r0, [r5, #0x18]
_0801BBBC:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0801BC12
	ldr r0, _0801BC00 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801BC12
	ldr r0, _0801BC04 @ =0x0000014B
	adds r1, r5, r0
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0xd9
	strh r0, [r5, #0x30]
	adds r0, #0xb3
	strh r0, [r5, #0x34]
	movs r4, #1
	strh r4, [r5, #0x36]
	ldr r1, _0801BC08 @ =0x0000021A
	adds r0, r5, #0
	bl sub_8004E98
	ldr r0, [r5, #4]
	ands r0, r4
	cmp r0, #0
	beq _0801BC0C
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801BC10
	.align 2, 0
_0801BC00: .4byte gStageData
_0801BC04: .4byte 0x0000014B
_0801BC08: .4byte 0x0000021A
_0801BC0C:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801BC10:
	strh r0, [r5, #0x18]
_0801BC12:
	ldrh r1, [r5, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r5, r2]
	cmp r0, #0x7f
	bgt _0801BC22
	adds r0, r1, #0
	adds r0, #0x18
	b _0801BC26
_0801BC22:
	adds r0, r1, #0
	subs r0, #0x18
_0801BC26:
	strh r0, [r5, #0x1a]
	ldr r1, _0801BC34 @ =gCamera
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ble _0801BC38
	subs r0, #2
	b _0801BC3E
	.align 2, 0
_0801BC34: .4byte gCamera
_0801BC38:
	cmp r0, #0
	bge _0801BC40
	adds r0, #4
_0801BC3E:
	str r0, [r1, #0x40]
_0801BC40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801BC48
sub_801BC48: @ 0x0801BC48
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0801BC80
	movs r0, #0xd8
	strh r0, [r4, #0x30]
	adds r1, #0xce
	adds r0, r4, #0
	bl sub_8004F10
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BC76
	ldr r0, [r4, #4]
	movs r1, #1
	b _0801BCA0
_0801BC76:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BCC0
	b _0801BCAC
_0801BC80:
	ldr r1, _0801BCA8 @ =0x0000014B
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801BCB8
	movs r0, #0xd9
	strh r0, [r4, #0x30]
	adds r0, #0xb3
	strh r0, [r4, #0x34]
	movs r1, #1
	strh r1, [r4, #0x36]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0801BCAC
	ldr r0, [r4, #4]
_0801BCA0:
	orrs r0, r1
	str r0, [r4, #4]
	b _0801BCC0
	.align 2, 0
_0801BCA8: .4byte 0x0000014B
_0801BCAC:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	b _0801BCC0
_0801BCB8:
	ldr r1, _0801BCC8 @ =0x0000021A
	adds r0, r4, #0
	bl sub_8004ED4
_0801BCC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BCC8: .4byte 0x0000021A

	thumb_func_start sub_801BCCC
sub_801BCCC: @ 0x0801BCCC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801BD14 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xca
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x79
	bl sub_8004E98
	ldr r5, _0801BD18 @ =sub_801AF50
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD14: .4byte 0xFFFFBFFF
_0801BD18: .4byte sub_801AF50

	thumb_func_start sub_801BD1C
sub_801BD1C: @ 0x0801BD1C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801BD7C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xcb
	strh r0, [r4, #0x30]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x1e
	strh r0, [r1]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_8004E98
	ldr r5, _0801BD80 @ =sub_801AFEC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD7C: .4byte 0xFFFFBFFF
_0801BD80: .4byte sub_801AFEC

	thumb_func_start sub_801BD84
sub_801BD84: @ 0x0801BD84
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_800D880
	ldr r0, [r4, #4]
	ldr r1, _0801BDCC @ =0x00008006
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #0xcd
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801BDD0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	movs r1, #0x71
	bl sub_8004E98
	ldr r5, _0801BDD4 @ =sub_801B258
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BDCC: .4byte 0x00008006
_0801BDD0: .4byte 0xFFFFBFFF
_0801BDD4: .4byte sub_801B258

	thumb_func_start sub_801BDD8
sub_801BDD8: @ 0x0801BDD8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BDF4
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FE0
_0801BDF4:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	strh r2, [r5, #0x1a]
	movs r0, #0xce
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ldr r1, _0801BE38 @ =0x00040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BE3C @ =sub_801B2E4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BE38: .4byte 0x00040004
_0801BE3C: .4byte sub_801B2E4

	thumb_func_start sub_801BE40
sub_801BE40: @ 0x0801BE40
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BE5C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FE0
_0801BE5C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r2, #0
	adds r0, #0x3a
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	strh r2, [r4, #0x1a]
	movs r0, #0xce
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8019A64
	ldr r0, [r4, #4]
	ldr r1, _0801BE98 @ =0x20040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801BE9C @ =sub_801B2E4
	adds r0, r4, #0
	bl SetPlayerCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BE98: .4byte 0x20040004
_0801BE9C: .4byte sub_801B2E4

	thumb_func_start sub_801BEA0
sub_801BEA0: @ 0x0801BEA0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BEC0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FE0
_0801BEC0:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	strh r2, [r5, #0x18]
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ldr r1, _0801BF00 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BF04 @ =sub_801B4CC
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF00: .4byte 0x00040004
_0801BF04: .4byte sub_801B4CC

	thumb_func_start sub_801BF08
sub_801BF08: @ 0x0801BF08
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BF28
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FE0
_0801BF28:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd5
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ldr r1, _0801BF64 @ =0x00040004
	orrs r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BF68 @ =sub_801B71C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF64: .4byte 0x00040004
_0801BF68: .4byte sub_801B71C

	thumb_func_start sub_801BF6C
sub_801BF6C: @ 0x0801BF6C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_800D880
	ldr r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BF8C
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FE0
_0801BF8C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd6
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_8019A64
	ldr r0, [r5, #4]
	ldr r1, _0801BFCC @ =0x00040004
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801BFD0 @ =sub_801B8DC
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BFCC: .4byte 0x00040004
_0801BFD0: .4byte sub_801B8DC

	thumb_func_start sub_801BFD4
sub_801BFD4: @ 0x0801BFD4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1a]
	adds r0, #0x2a
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C002
	adds r0, r4, #0
	bl sub_801C00C
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C002
	ldr r1, _0801C008 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801C002:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C008: .4byte Player_8005380

	thumb_func_start sub_801C00C
sub_801C00C: @ 0x0801C00C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x90
	ldr r1, [r0]
	asrs r1, r1, #1
	str r1, [r0]
	adds r0, r4, #0
	bl sub_8014940
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0801C034
	ldr r0, _0801C030 @ =0x0000FF80
	b _0801C03A
	.align 2, 0
_0801C030: .4byte 0x0000FF80
_0801C034:
	cmp r1, #0x80
	ble _0801C03C
	movs r0, #0x80
_0801C03A:
	strh r0, [r4, #0x18]
_0801C03C:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C060
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801C060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801C068
sub_801C068: @ 0x0801C068
	push {lr}
	adds r1, r0, #0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0801C088
	movs r0, #0xd0
	strh r0, [r1, #0x30]
	adds r0, r1, #0
	movs r1, #0x78
	bl sub_8004F10
	b _0801C094
_0801C088:
	movs r0, #0xd5
	strh r0, [r1, #0x30]
	adds r0, r1, #0
	movs r1, #0x78
	bl sub_8004ED4
_0801C094:
	pop {r0}
	bx r0

	thumb_func_start sub_801C098
sub_801C098: @ 0x0801C098
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012634
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C100
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0801C0C0
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801C0C8
_0801C0C0:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801C0C8:
	str r0, [r4, #4]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801C0E2
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801C0EA
_0801C0E2:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801C0EA:
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r1, _0801C108 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r1, _0801C10C @ =0x0000021A
	adds r0, r4, #0
	bl sub_8004F10
_0801C100:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C108: .4byte Player_8005380
_0801C10C: .4byte 0x0000021A

	thumb_func_start sub_801C110
sub_801C110: @ 0x0801C110
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	mov r2, sp
	bl sub_8004E20
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #4
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0801C142
	movs r0, #0
	strh r0, [r4, #0x1a]
_0801C142:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801C14C
sub_801C14C: @ 0x0801C14C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C1C4
	adds r1, #0xcc
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801C1C4
	ldr r1, [r4, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #1
	ands r1, r2
	cmp r1, #0x80
	beq _0801C194
	cmp r1, #0x80
	bhi _0801C17C
	cmp r1, #0
	beq _0801C18A
	b _0801C1B4
