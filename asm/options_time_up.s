.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Options_TimeUp
Options_TimeUp: @ 0x08090A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08090AE8 @ =Task_Options_TimeUp_Init
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08090AEC @ =TaskDestructor_Options_TimeUp
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r4, [r3, #8]
	str r5, [r3, #4]
	movs r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	mov ip, r0
	ldr r5, _08090AF0 @ =gBgScrollRegs
	movs r2, #0x37
	mov sb, r2
	adds r6, r5, #0
	ldr r7, _08090AF4 @ =0x03000010
	adds r7, r1, r7
	str r7, [sp, #4]
	movs r0, #0x46
	mov r8, r0
_08090A6C:
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
	bls _08090A6C
	movs r1, #4
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x1c]
	movs r2, #6
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	strh r0, [r3, #0x34]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	strh r0, [r3, #0x36]
	movs r7, #4
	ldrsh r0, [r6, r7]
	rsbs r0, r0, #0
	str r0, [r3, #0x24]
	movs r1, #6
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	mov r2, sl
	str r2, [r3, #0x38]
	ldr r0, _08090AF8 @ =gLoadedSaveGame
	ldr r7, _08090AFC @ =0x00000366
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r3, #0
	bl sub_8090B00
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090AE8: .4byte Task_Options_TimeUp_Init
_08090AEC: .4byte TaskDestructor_Options_TimeUp
_08090AF0: .4byte gBgScrollRegs
_08090AF4: .4byte 0x03000010
_08090AF8: .4byte gLoadedSaveGame
_08090AFC: .4byte 0x00000366

	thumb_func_start sub_8090B00
sub_8090B00: @ 0x08090B00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0xdc
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _08090CAC @ =gUnknown_080D71FC
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldrh r1, [r6, #0x34]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r6, #0x36]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r7, _08090CB0 @ =gUnknown_080D6B48
	movs r5, #0
_08090B6A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r7, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08090B6A
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _08090CB4 @ =gUnknown_080D7024
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
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
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _08090CB8 @ =gUnknown_080D722C
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x30]
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
_08090CAC: .4byte gUnknown_080D71FC
_08090CB0: .4byte gUnknown_080D6B48
_08090CB4: .4byte gUnknown_080D7024
_08090CB8: .4byte gUnknown_080D722C

	thumb_func_start Task_Options_TimeUp_Init
Task_Options_TimeUp_Init: @ 0x08090CBC
	push {r4, lr}
	ldr r0, _08090D0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8090E58
	adds r0, r4, #0
	bl sub_8090DD4
	adds r0, r4, #0
	bl sub_8090ECC
	adds r0, r4, #0
	bl sub_8090F00
	adds r0, r4, #0
	bl sub_8090F34
	ldr r0, _08090D10 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08090D40
	ldr r0, _08090D14 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090D40
	movs r2, #8
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _08090D18
	cmp r1, #1
	beq _08090D2C
	b _08090DCE
	.align 2, 0
_08090D0C: .4byte gCurTask
_08090D10: .4byte gBgScrollRegs
_08090D14: .4byte gPressedKeys
_08090D18:
	ldr r0, _08090D24 @ =gLoadedSaveGame
	ldr r3, _08090D28 @ =0x00000365
	adds r0, r0, r3
	strb r1, [r0]
	b _08090DCE
	.align 2, 0
_08090D24: .4byte gLoadedSaveGame
_08090D28: .4byte 0x00000365
_08090D2C:
	ldr r0, _08090D38 @ =gLoadedSaveGame
	ldr r1, _08090D3C @ =0x00000365
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08090DCE
	.align 2, 0
_08090D38: .4byte gLoadedSaveGame
_08090D3C: .4byte 0x00000365
_08090D40:
	ldr r0, _08090D6C @ =gBgScrollRegs
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bgt _08090D74
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x24]
	cmn r0, r1
	bgt _08090D74
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08090D70 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08090DCE
	.align 2, 0
_08090D6C: .4byte gBgScrollRegs
_08090D70: .4byte gCurTask
_08090D74:
	movs r1, #4
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _08090DCE
	ldr r0, _08090DAC @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08090DCE
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08090DB4
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08090DB0
	movs r0, #1
	b _08090DCC
	.align 2, 0
_08090DAC: .4byte gRepeatedKeys
_08090DB0:
	subs r0, r1, #1
	b _08090DCC
_08090DB4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08090DCE
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #1
	bne _08090DCA
	strh r2, [r4, #8]
	b _08090DCE
_08090DCA:
	adds r0, r1, #1
_08090DCC:
	strh r0, [r4, #8]
_08090DCE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8090DD4
sub_8090DD4: @ 0x08090DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _08090E30 @ =gUnknown_080D6B48
	movs r0, #0
	mov r8, r0
_08090DE4:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x3c
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
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r5, #6
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r5, r0
	beq _08090E34
	movs r0, #1
	b _08090E36
	.align 2, 0
_08090E30: .4byte gUnknown_080D6B48
_08090E34:
	mov r0, r8
_08090E36:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08090DE4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8090E58
sub_8090E58: @ 0x08090E58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _08090EC8 @ =gBgScrollRegs
	movs r0, #0xc
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x37
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x46
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x10
_08090E80:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08090E80
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x1c]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x87
	subs r0, r0, r1
	str r0, [r3, #0x20]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r3, #0x34]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r3, #0x36]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090EC8: .4byte gBgScrollRegs

	thumb_func_start sub_8090ECC
sub_8090ECC: @ 0x08090ECC
	push {lr}
	adds r2, r0, #0
	adds r2, #0xdc
	ldr r3, _08090EFC @ =gUnknown_080D71FC
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
	ldrh r1, [r0, #0x34]
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #0x36]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090EFC: .4byte gUnknown_080D71FC

	thumb_func_start sub_8090F00
sub_8090F00: @ 0x08090F00
	push {lr}
	adds r2, r0, #0
	adds r2, #0x8c
	ldr r3, _08090F30 @ =gUnknown_080D7024
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
	ldr r1, [r0, #0x1c]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090F30: .4byte gUnknown_080D7024

	thumb_func_start sub_8090F34
sub_8090F34: @ 0x08090F34
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb4
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3, #8]
	lsls r1, r1, #6
	adds r2, r2, r1
	subs r2, #3
	strh r2, [r0, #0x10]
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Options_TimeUp
TaskDestructor_Options_TimeUp: @ 0x08090F6C
	bx lr
	.align 2, 0
