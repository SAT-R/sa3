.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Options_DeleteSaveData
Options_DeleteSaveData: @ 0x08090390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08090480 @ =Task_DeleteSaveData_Init
	movs r1, #0x9e
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08090484 @ =TaskDestructor_DeleteSaveData
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	str r5, [r3, #4]
	movs r2, #0
	movs r0, #0
	strh r4, [r3, #8]
	str r6, [r3, #0xc]
	strb r2, [r3, #1]
	strh r0, [r3, #0x14]
	strh r0, [r3, #0x12]
	movs r4, #0
	ldr r0, _08090488 @ =0x03000018
	adds r0, r0, r1
	mov ip, r0
	ldr r5, _0809048C @ =gBgScrollRegs
	movs r2, #0x37
	mov sb, r2
	adds r6, r5, #0
	ldr r7, _08090490 @ =0x0300001C
	adds r7, r1, r7
	str r7, [sp, #4]
	movs r0, #0x46
	mov r8, r0
_080903EE:
	lsls r1, r4, #3
	mov r7, ip
	adds r2, r7, r1
	movs r7, #4
	ldrsh r0, [r5, r7]
	mov r7, sb
	subs r0, r7, r0
	str r0, [r2]
	ldr r0, [sp, #4]
	adds r1, r0, r1
	movs r2, #6
	ldrsh r0, [r5, r2]
	mov r7, r8
	subs r0, r7, r0
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080903EE
	movs r1, #4
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r2, #6
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	str r0, [r3, #0x2c]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	adds r1, r3, #0
	adds r1, #0x40
	strh r0, [r1]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	adds r1, #2
	strh r0, [r1]
	movs r7, #4
	ldrsh r0, [r6, r7]
	rsbs r0, r0, #0
	str r0, [r3, #0x30]
	movs r1, #6
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x34]
	mov r2, sl
	str r2, [r3, #0x48]
	ldr r0, _08090494 @ =gLoadedSaveGame
	ldr r7, _08090498 @ =0x00000366
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r3, #0
	bl sub_809049C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090480: .4byte Task_DeleteSaveData_Init
_08090484: .4byte TaskDestructor_DeleteSaveData
_08090488: .4byte 0x03000018
_0809048C: .4byte gBgScrollRegs
_08090490: .4byte 0x0300001C
_08090494: .4byte gLoadedSaveGame
_08090498: .4byte 0x00000366

	thumb_func_start sub_809049C
sub_809049C: @ 0x0809049C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xec
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906B4 @ =gUnknown_080D7194
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r2, #0
	mov r8, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x40
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906B8 @ =gUnknown_080D71C4
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x44
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r6, _080906BC @ =gUnknown_080D7134
	movs r5, #0
_08090570:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r0, r7, r0
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r6, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r2, sl
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08090570
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906C0 @ =gUnknown_080D7024
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906C4 @ =gUnknown_080D71F4
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080906B4: .4byte gUnknown_080D7194
_080906B8: .4byte gUnknown_080D71C4
_080906BC: .4byte gUnknown_080D7134
_080906C0: .4byte gUnknown_080D7024
_080906C4: .4byte gUnknown_080D71F4

	thumb_func_start Task_DeleteSaveData_Init
Task_DeleteSaveData_Init: @ 0x080906C8
	push {r4, r5, r6, lr}
	ldr r0, _08090730 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8090828
	adds r0, r4, #0
	bl sub_80908A8
	adds r0, r4, #0
	bl sub_8090968
	adds r0, r4, #0
	bl sub_809099C
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _08090700
	adds r0, r4, #0
	bl sub_8090930
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08090706
_08090700:
	adds r0, r4, #0
	bl sub_80909DC
_08090706:
	ldr r0, _08090734 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	bgt _08090738
	movs r2, #4
	ldrsh r1, [r6, r2]
	ldr r0, [r4, #0x30]
	cmn r0, r1
	bgt _08090738
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08090730 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08090820
	.align 2, 0
_08090730: .4byte gCurTask
_08090734: .4byte gBgScrollRegs
_08090738:
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	ldr r0, _08090754 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _08090758
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _08090820
	movs r0, #0
	strb r0, [r4, #1]
	b _08090820
	.align 2, 0
_08090754: .4byte gBldRegs
_08090758:
	cmp r0, #0
	bne _08090820
	movs r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #0
	bne _08090820
	ldr r0, _08090790 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080907C4
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _080907A8
	ldr r0, [r4, #0xc]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	beq _08090794
	cmp r1, #1
	beq _0809079A
	b _0809079C
	.align 2, 0
_08090790: .4byte gPressedKeys
_08090794:
	movs r0, #1
	strb r0, [r4, #1]
	b _0809079C
_0809079A:
	strb r5, [r4, #1]
_0809079C:
	movs r0, #1
	strh r0, [r2]
	ldr r6, _080907A4 @ =gBgScrollRegs
	b _080907C4
	.align 2, 0
_080907A4: .4byte gBgScrollRegs
_080907A8:
	cmp r0, #1
	bne _080907C4
	ldr r0, [r4, #0xc]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080907BC
	cmp r0, #1
	beq _080907C2
	b _080907C4
_080907BC:
	movs r0, #2
	strb r0, [r4, #1]
	b _080907C4
_080907C2:
	strb r5, [r4, #1]
_080907C4:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08090820
	ldr r5, _080907FC @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08090820
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08090804
	ldr r1, [r4, #0xc]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _08090800
	movs r0, #1
	b _0809081E
	.align 2, 0
_080907FC: .4byte gRepeatedKeys
_08090800:
	subs r0, r2, #1
	b _0809081E
_08090804:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08090820
	ldr r1, [r4, #0xc]
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #1
	bne _0809081C
	strh r3, [r1]
	b _08090820
_0809081C:
	adds r0, r2, #1
_0809081E:
	strh r0, [r1]
_08090820:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8090828
sub_8090828: @ 0x08090828
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r2, #0
	ldr r5, _080908A4 @ =gBgScrollRegs
	mov r7, ip
	adds r7, #0x18
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x37
	subs r6, r0, r1
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #0x46
	subs r4, r0, r1
	mov r3, ip
	adds r3, #0x1c
_08090848:
	lsls r1, r2, #3
	adds r0, r7, r1
	str r6, [r0]
	adds r1, r3, r1
	str r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08090848
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x78
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #0x87
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x2c]
	ldrh r0, [r5, #4]
	movs r1, #0x78
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x40
	strh r1, [r0]
	ldrh r2, [r5, #6]
	movs r0, #0x1e
	subs r0, r0, r2
	mov r3, ip
	adds r3, #0x42
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x44
	strh r1, [r0]
	movs r0, #0x32
	subs r0, r0, r2
	mov r1, ip
	adds r1, #0x46
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080908A4: .4byte gBgScrollRegs

	thumb_func_start sub_80908A8
sub_80908A8: @ 0x080908A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _08090908 @ =gUnknown_080D7134
	movs r0, #0
	mov r8, r0
_080908B8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r2, r5, #3
	adds r0, r6, #0
	adds r0, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r5, #6
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldr r0, [r6, #0xc]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r5, r0
	beq _0809090C
	movs r0, #1
	b _0809090E
	.align 2, 0
_08090908: .4byte gUnknown_080D7134
_0809090C:
	mov r0, r8
_0809090E:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080908B8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8090930
sub_8090930: @ 0x08090930
	push {lr}
	adds r3, r0, #0
	adds r0, #0xec
	ldr r2, _08090964 @ =gUnknown_080D7194
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090964: .4byte gUnknown_080D7194

	thumb_func_start sub_8090968
sub_8090968: @ 0x08090968
	push {lr}
	adds r2, r0, #0
	adds r2, #0x9c
	ldr r3, _08090998 @ =gUnknown_080D7024
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x28]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x2c]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090998: .4byte gUnknown_080D7024

	thumb_func_start sub_809099C
sub_809099C: @ 0x0809099C
	push {lr}
	mov ip, r0
	adds r0, #0xc4
	mov r1, ip
	ldr r3, [r1, #0xc]
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x18
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3]
	lsls r1, r1, #6
	adds r2, r2, r1
	subs r2, #3
	strh r2, [r0, #0x10]
	mov r2, ip
	ldr r1, [r2, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80909DC
sub_80909DC: @ 0x080909DC
	push {lr}
	adds r3, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, _08090A14 @ =gUnknown_080D71C4
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090A14: .4byte gUnknown_080D71C4

	thumb_func_start TaskDestructor_DeleteSaveData
TaskDestructor_DeleteSaveData: @ 0x08090A18
	bx lr
	.align 2, 0
