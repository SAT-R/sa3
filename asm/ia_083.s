.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable083
CreateEntity_Interactable083: @ 0x0803C214
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
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
	ldr r1, _0803C384 @ =gUnknown_03001D00
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803C388 @ =sub_803C600
	ldr r1, _0803C38C @ =0x0000059C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0803C390 @ =sub_803D6D4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0803C394 @ =gUnknown_03000590
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	movs r3, #0
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r4, r8
	str r4, [r7]
	ldrb r0, [r4]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	strb r2, [r7, #0x16]
	movs r0, #0xd8
	strh r0, [r7, #0x12]
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r7, #0x10]
	movs r0, #0x3c
	strb r0, [r7, #0x17]
	ldr r0, _0803C398 @ =0x030004C8
	adds r1, r1, r0
	str r3, [r1]
	strb r2, [r7, #0x14]
	strb r2, [r7, #0x15]
	movs r4, #0
	ldr r3, _0803C39C @ =gUnknown_030015C0
	movs r5, #0x1d
	rsbs r5, r5, #0
_0803C28C:
	adds r1, r7, #0
	adds r1, #0xc
	adds r1, r1, r4
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r2, r0, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0803C2BE
	adds r0, r5, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803C2BE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803C28C
	movs r1, #0
	mov r2, ip
	strh r1, [r2]
	movs r0, #2
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #6]
	movs r0, #0xff
	strh r0, [r2, #8]
	strh r1, [r2, #0xa]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	strb r0, [r1]
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r0, r7, r2
	bl sub_80214F0
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r0, r7, r4
	bl sub_803D47C
	movs r4, #0
_0803C2FE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x18
	adds r0, r7, r0
	ldr r2, [r7, #0x18]
	adds r1, r4, #0
	bl sub_8039D60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x14
	bls _0803C2FE
	movs r0, #0x20
	bl VramMalloc
	mov r8, r0
	movs r4, #0
	movs r6, #0
	movs r5, #0
	ldr r0, _0803C3A0 @ =0x0000048C
	mov sb, r0
_0803C32C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r1, r4, #7
	add r1, r8
	str r1, [r0]
	strh r5, [r0, #0x14]
	mov r2, sb
	strh r2, [r0, #0xc]
	strb r6, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	lsls r1, r4, #4
	adds r1, #0x48
	strh r1, [r0, #0x10]
	movs r1, #0x96
	strh r1, [r0, #0x12]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803C32C
	ldr r1, _0803C3A4 @ =gUnknown_030008A0
	movs r0, #2
	strb r0, [r1, #4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C384: .4byte gUnknown_03001D00
_0803C388: .4byte sub_803C600
_0803C38C: .4byte 0x0000059C
_0803C390: .4byte sub_803D6D4
_0803C394: .4byte gUnknown_03000590
_0803C398: .4byte 0x030004C8
_0803C39C: .4byte gUnknown_030015C0
_0803C3A0: .4byte 0x0000048C
_0803C3A4: .4byte gUnknown_030008A0

	thumb_func_start sub_803C3A8
sub_803C3A8: @ 0x0803C3A8
	push {r4, r5, lr}
	sub sp, #4
	movs r3, #0
	ldr r0, _0803C3F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r5, r4, #0
	adds r1, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C404
	ldr r0, [r4, #0x28]
	adds r0, #0x30
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	adds r2, r1, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldr r1, _0803C3FC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	lsls r0, r0, #8
	cmp r2, r0
	blt _0803C43C
	asrs r0, r2, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	ldr r2, _0803C400 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	b _0803C436
	.align 2, 0
_0803C3F8: .4byte gCurTask
_0803C3FC: .4byte 0xFFFFF7FF
_0803C400: .4byte sub_8051F54
_0803C404:
	ldr r0, [r4, #0x28]
	subs r0, #0x30
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	adds r2, r1, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	lsls r0, r0, #8
	cmp r2, r0
	bgt _0803C43C
	asrs r0, r2, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r2, _0803C490 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
_0803C436:
	bl sub_8052418
	adds r3, r0, #0
_0803C43C:
	cmp r3, #0
	bge _0803C466
	adds r1, r3, #2
	lsls r1, r1, #8
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	movs r0, #0
	str r0, [r5, #0x28]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x83
	lsls r0, r0, #2
	bl sub_8003DF0
	ldr r0, _0803C494 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803C498 @ =sub_803C4A0
	str r0, [r1, #8]
_0803C466:
	ldr r2, _0803C49C @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r5, #0x30]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x2c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C490: .4byte sub_8051F54
_0803C494: .4byte gCurTask
_0803C498: .4byte sub_803C4A0
_0803C49C: .4byte gCamera

	thumb_func_start sub_803C4A0
sub_803C4A0: @ 0x0803C4A0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803C4DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r5, r4, #0
	adds r1, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C4E8
	ldr r0, [r4, #8]
	ldr r1, _0803C4E0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	ldr r2, _0803C4E4 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	b _0803C50A
	.align 2, 0
_0803C4DC: .4byte gCurTask
_0803C4E0: .4byte 0xFFFFF7FF
_0803C4E4: .4byte sub_8051F54
_0803C4E8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r2, _0803C524 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	bl sub_8052418
	rsbs r0, r0, #0
_0803C50A:
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C512
	rsbs r1, r0, #0
_0803C512:
	cmp r1, #1
	ble _0803C528
	lsls r1, r0, #8
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	movs r3, #0
	b _0803C52C
	.align 2, 0
_0803C524: .4byte sub_8051F54
_0803C528:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0803C52C:
	ldr r2, _0803C55C @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r5, #0x30]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r5, #0x2c]
	asrs r1, r1, #8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C55C: .4byte gCamera

	thumb_func_start sub_803C560
sub_803C560: @ 0x0803C560
	push {r4, r5, lr}
	ldr r0, _0803C584 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803C588 @ =gUnknown_030015C0
_0803C572:
	cmp r3, #0
	beq _0803C58C
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C590
	.align 2, 0
_0803C584: .4byte gCurTask
_0803C588: .4byte gUnknown_030015C0
_0803C58C:
	ldr r0, _0803C5CC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C590:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803C572
	ldrh r1, [r4, #0x12]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803C5D0
	subs r0, r1, #1
	strh r0, [r4, #0x12]
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80214F0
	b _0803C5EE
	.align 2, 0
_0803C5CC: .4byte gUnknown_030008A0
_0803C5D0:
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_80213FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803C5EE
	movs r0, #0xd8
	strh r0, [r4, #0x12]
	ldr r0, _0803C5F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803C5FC @ =sub_803C600
	str r0, [r1, #8]
_0803C5EE:
	bl sub_803D4C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5F8: .4byte gCurTask
_0803C5FC: .4byte sub_803C600

	thumb_func_start sub_803C600
sub_803C600: @ 0x0803C600
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0803C644 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0803C648 @ =gUnknown_03003C20
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803C64C @ =gUnknown_030008A0
	movs r0, #1
	strb r0, [r1, #4]
	movs r5, #0
	mov r8, r3
	mov ip, r2
	adds r7, r1, #0
	ldr r3, _0803C650 @ =gUnknown_030015C0
	movs r2, #0
_0803C632:
	cmp r5, #0
	beq _0803C654
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C656
	.align 2, 0
_0803C644: .4byte gCurTask
_0803C648: .4byte gUnknown_03003C20
_0803C64C: .4byte gUnknown_030008A0
_0803C650: .4byte gUnknown_030015C0
_0803C654:
	ldrb r1, [r7, #6]
_0803C656:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	strh r2, [r4, #0x36]
	strh r2, [r4, #0x18]
	strh r2, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803C632
	ldrh r0, [r6, #0x12]
	subs r4, r0, #1
	strh r4, [r6, #0x12]
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0803C6C0
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, _0803C6B4 @ =0x0000FEFF
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldr r2, _0803C6B8 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0xb4
	strh r0, [r6, #0x12]
	mov r5, r8
	ldr r1, [r5]
	ldr r0, _0803C6BC @ =sub_803C898
	str r0, [r1, #8]
	b _0803C6E6
	.align 2, 0
_0803C6B4: .4byte 0x0000FEFF
_0803C6B8: .4byte gFlags
_0803C6BC: .4byte sub_803C898
_0803C6C0:
	movs r0, #0x12
	ldrsh r1, [r6, r0]
	movs r0, #0xd8
	subs r0, r0, r1
	cmp r0, #0x30
	bgt _0803C6D6
	movs r0, #0xd8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0803C6DE
_0803C6D6:
	movs r0, #0x30
	cmp r5, #0x30
	bgt _0803C6DE
	ldrh r0, [r6, #0x12]
_0803C6DE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_803C6F4
_0803C6E6:
	bl sub_803D4C8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803C6F4
sub_803C6F4: @ 0x0803C6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	movs r6, #0
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0803C724
	movs r2, #0
	str r2, [sp]
	cmp r0, #1
	bgt _0803C716
	movs r1, #2
_0803C716:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x10
	b _0803C73A
_0803C724:
	cmp r0, #0x18
	ble _0803C72A
	movs r1, #0x18
_0803C72A:
	movs r3, #1
	str r3, [sp]
	movs r3, #0x18
	lsls r0, r1, #0x12
	ldr r1, _0803C83C @ =0xFFC00000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sl, r0
_0803C73A:
	ldr r2, _0803C840 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0803C844 @ =gUnknown_03003C5C
	ldr r0, _0803C848 @ =0x04000012
	str r0, [r1]
	ldr r1, _0803C84C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803C850 @ =gUnknown_03002B84
	ldr r5, [r0]
	movs r2, #0
	mov sb, r0
	lsls r7, r3, #0x10
_0803C75A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	strh r1, [r5]
	adds r5, #2
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0803C75A
	movs r3, #0x48
	mov r2, sb
	ldr r5, [r2]
	asrs r1, r7, #0x10
	subs r0, r3, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r2, #0
	adds r4, r1, #0
	subs r4, #0x40
_0803C784:
	strh r4, [r5]
	adds r5, #2
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0803C784
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	asrs r1, r7, #0x10
	subs r0, r2, r1
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r2, r2, r1
	mov ip, r3
	cmp r0, r2
	bge _0803C7E2
	movs r3, #3
	mov r8, r3
	adds r3, r2, #0
_0803C7BC:
	asrs r2, r4, #0x10
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	adds r1, r2, #0
	subs r1, #0x20
	subs r0, r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r2, #1
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	lsls r4, r2, #0x10
	asrs r0, r4, #0x10
	cmp r0, r3
	blt _0803C7BC
_0803C7E2:
	mov r2, sb
	ldr r5, [r2]
	mov r3, ip
	asrs r0, r3, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r2, #0
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r3, r0, r1
_0803C7FC:
	strh r3, [r5]
	adds r5, #2
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0803C7FC
	ldr r3, [sp]
	cmp r3, #0
	bne _0803C854
	lsls r1, r6, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0803C886
	movs r2, #0
_0803C82A:
	strh r2, [r5]
	adds r5, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _0803C82A
	b _0803C886
	.align 2, 0
_0803C83C: .4byte 0xFFC00000
_0803C840: .4byte gFlags
_0803C844: .4byte gUnknown_03003C5C
_0803C848: .4byte 0x04000012
_0803C84C: .4byte gUnknown_03003F30
_0803C850: .4byte gUnknown_03002B84
_0803C854:
	mov r1, sb
	ldr r5, [r1]
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x5e
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r3, #0
	cmp r3, r1
	bge _0803C886
_0803C86C:
	asrs r1, r2, #0x10
	adds r0, r1, #0
	subs r0, #0x50
	strh r0, [r5]
	adds r5, #2
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _0803C86C
_0803C886:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803C898
sub_803C898: @ 0x0803C898
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0803C8C8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0803C8CC @ =0x03000360
	adds r5, r1, r0
	movs r4, #0
	mov sb, r2
	ldr r7, _0803C8D0 @ =gUnknown_030015C0
	movs r2, #0
_0803C8B8:
	cmp r4, #0
	beq _0803C8D4
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C8D8
	.align 2, 0
_0803C8C8: .4byte gCurTask
_0803C8CC: .4byte 0x03000360
_0803C8D0: .4byte gUnknown_030015C0
_0803C8D4:
	ldr r0, _0803C930 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C8D8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r7
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	strh r2, [r3, #0x36]
	strh r2, [r3, #0x18]
	strh r2, [r3, #0x1a]
	strh r2, [r3, #0x1c]
	strh r2, [r3, #0x1e]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803C8B8
	ldrh r0, [r6, #0x12]
	subs r0, #1
	strh r0, [r6, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0803C9E0
	movs r4, #0
	ldr r7, _0803C934 @ =gUnknown_080CF770
	movs r1, #0xc
	adds r1, r1, r6
	mov ip, r1
	ldr r2, _0803C938 @ =sub_803CA28
	mov r8, r2
	ldr r2, _0803C93C @ =gUnknown_030015C0
_0803C920:
	cmp r4, #0
	beq _0803C940
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C944
	.align 2, 0
_0803C930: .4byte gUnknown_030008A0
_0803C934: .4byte gUnknown_080CF770
_0803C938: .4byte sub_803CA28
_0803C93C: .4byte gUnknown_030015C0
_0803C940:
	ldr r0, _0803C9D4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C944:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	ldr r0, [r3, #4]
	ldr r1, _0803C9D8 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803C920
	ldrh r0, [r7, #4]
	strh r0, [r5, #0xc]
	ldrb r0, [r7, #6]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x80
	strb r0, [r6, #0x17]
	movs r4, #0
	ldr r6, _0803C9DC @ =gUnknown_030015C0
	movs r7, #0x1d
	rsbs r7, r7, #0
	mov r5, ip
_0803C97C:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r0, r5, r4
	ldrb r0, [r0]
	movs r2, #0x2b
	adds r2, r2, r1
	mov ip, r2
	movs r2, #7
	ands r2, r0
	lsls r2, r2, #2
	mov r0, ip
	ldrb r3, [r0]
	adds r0, r7, #0
	ands r0, r3
	orrs r0, r2
	mov r2, ip
	strb r0, [r2]
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803C97C
	mov r1, sb
	ldr r0, [r1]
	mov r2, r8
	str r2, [r0, #8]
	bl _call_via_r8
	ldr r0, _0803C9D4 @ =gUnknown_030008A0
	movs r1, #3
	strb r1, [r0, #4]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	b _0803CA18
	.align 2, 0
_0803C9D4: .4byte gUnknown_030008A0
_0803C9D8: .4byte 0xF7FFFFFF
_0803C9DC: .4byte gUnknown_030015C0
_0803C9E0:
	cmp r0, #0x78
	bne _0803C9F8
	movs r0, #0x3c
	strb r0, [r6, #0x17]
	ldr r0, _0803C9F4 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x2c]
	strh r1, [r5, #0xc]
	adds r0, #0x2e
	b _0803CA06
	.align 2, 0
_0803C9F4: .4byte gUnknown_080CF770
_0803C9F8:
	cmp r0, #0x3c
	bne _0803CA0E
	strb r0, [r6, #0x17]
	ldr r0, _0803CA24 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x24]
	strh r1, [r5, #0xc]
	adds r0, #0x26
_0803CA06:
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_0803CA0E:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803CA18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CA24: .4byte gUnknown_080CF770

	thumb_func_start sub_803CA28
sub_803CA28: @ 0x0803CA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	ldr r2, _0803CAD8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0803CADC @ =gUnknown_03000590
	adds r0, r0, r1
	mov r8, r0
	ldrb r1, [r7, #0x16]
	lsls r1, r1, #0x18
	asrs r0, r1, #0x18
	ldr r5, _0803CAE0 @ =gUnknown_03001D00
	mov ip, r5
	ldrb r2, [r5]
	cmp r0, r2
	bge _0803CA86
	movs r3, #0xe2
	lsls r3, r3, #2
	mov sl, r3
	movs r0, #1
	mov sb, r0
	movs r2, #0xff
_0803CA64:
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	adds r3, r7, r0
	mov r0, sb
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r2
	strb r0, [r3, #0x1b]
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r0, r1, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blt _0803CA64
_0803CA86:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r3, r7, r0
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #7
	bhi _0803CAA2
	ldrh r0, [r7, #0x10]
	subs r0, #1
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803CAA2
	b _0803CD90
_0803CAA2:
	movs r1, #0
	movs r0, #0x80
	strb r0, [r7, #0x17]
	movs r0, #1
	mov r2, r8
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0803CB4C
	movs r1, #0
	ldr r2, _0803CAE4 @ =gUnknown_030008A0
	mov sb, r2
	ldr r2, _0803CAE8 @ =gUnknown_030015C0
_0803CAC4:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CAEC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CAF0
	.align 2, 0
_0803CAD8: .4byte gCurTask
_0803CADC: .4byte gUnknown_03000590
_0803CAE0: .4byte gUnknown_03001D00
_0803CAE4: .4byte gUnknown_030008A0
_0803CAE8: .4byte gUnknown_030015C0
_0803CAEC:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CAF0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CAC4
	ldr r0, _0803CB3C @ =gUnknown_030008A0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0803CB2A
	ldr r1, _0803CB40 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
_0803CB2A:
	movs r0, #0x1e
	strh r0, [r7, #0x12]
	bl sub_803D4C8
	ldr r0, _0803CB44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CB48 @ =sub_803CF84
	b _0803CD74
	.align 2, 0
_0803CB3C: .4byte gUnknown_030008A0
_0803CB40: .4byte gUnknown_080CF770
_0803CB44: .4byte gCurTask
_0803CB48: .4byte sub_803CF84
_0803CB4C:
	movs r1, #0
	ldr r6, _0803CB68 @ =gUnknown_080CF770
	ldr r2, _0803CB6C @ =gUnknown_030015C0
_0803CB52:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CB70
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CB74
	.align 2, 0
_0803CB68: .4byte gUnknown_080CF770
_0803CB6C: .4byte gUnknown_030015C0
_0803CB70:
	ldr r0, _0803CD08 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803CB74:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CB52
	ldrh r0, [r6, #0xc]
	movs r5, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r6, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
	bl sub_803D4C8
	movs r0, #0x64
	strh r0, [r7, #0x12]
	ldr r1, _0803CD0C @ =gUnknown_080CFA50
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldr r6, _0803CD10 @ =0x06012800
	ldr r0, _0803CD08 @ =gUnknown_030008A0
	ldrb r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803CD14 @ =gUnknown_030015C0
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r2
	movs r2, #0x99
	lsls r2, r2, #3
	adds r3, r7, r2
	str r6, [r3]
	adds r6, #0x80
	ldr r0, _0803CD18 @ =0x0000058F
	mov sl, r0
	mov r2, sl
	strh r2, [r3, #0xc]
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r1, r8
	strb r1, [r3, #0x1c]
	movs r2, #0
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x5f
	strh r0, [r3, #0x10]
	movs r1, #0x4e
	mov sb, r1
	mov r2, sb
	strh r2, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x9e
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	adds r6, #0x80
	mov r1, sl
	strh r1, [r3, #0xc]
	adds r4, #0x2a
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r2, #0x40
	mov sl, r2
	mov r0, sl
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r1, r8
	strb r1, [r3, #0x1c]
	movs r2, #0
	strb r2, [r3, #0x1f]
	str r0, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x69
	strh r0, [r3, #0x10]
	mov r0, sb
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa3
	lsls r1, r1, #3
	adds r3, r7, r1
	str r6, [r3]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r6, r6, r2
	ldr r4, _0803CD1C @ =0x0000048D
	strh r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	subs r0, #0x81
	strb r0, [r3, #0x1b]
	mov r0, r8
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x6c
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0xa8
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	adds r6, #0x80
	strh r4, [r3, #0xc]
	movs r1, #0
	strb r1, [r3, #0x1a]
	mov r2, sl
	strh r2, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r0, r8
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x8a
	strh r0, [r3, #0x10]
	movs r0, #0x56
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r2, #0x10
	ldrsh r1, [r7, r2]
	ldr r0, _0803CD20 @ =0x000005DB
	cmp r1, r0
	ble _0803CD24
	movs r4, #5
	b _0803CD2E
	.align 2, 0
_0803CD08: .4byte gUnknown_030008A0
_0803CD0C: .4byte gUnknown_080CFA50
_0803CD10: .4byte 0x06012800
_0803CD14: .4byte gUnknown_030015C0
_0803CD18: .4byte 0x0000058F
_0803CD1C: .4byte 0x0000048D
_0803CD20: .4byte 0x000005DB
_0803CD24:
	ldr r0, _0803CD80 @ =0x00000257
	movs r4, #1
	cmp r1, r0
	ble _0803CD2E
	movs r4, #2
_0803CD2E:
	movs r0, #0xad
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	movs r2, #0
	movs r1, #0
	subs r0, #0xe1
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	movs r0, #0x96
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl sub_8003DC4
	strb r4, [r7, #0x14]
	ldr r0, _0803CD84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CD88 @ =sub_803D324
_0803CD74:
	str r0, [r1, #8]
	ldr r1, _0803CD8C @ =gUnknown_030008A0
	movs r0, #6
	strb r0, [r1, #4]
	b _0803CECA
	.align 2, 0
_0803CD80: .4byte 0x00000257
_0803CD84: .4byte gCurTask
_0803CD88: .4byte sub_803D324
_0803CD8C: .4byte gUnknown_030008A0
_0803CD90:
	ldr r0, _0803CDC4 @ =gUnknown_030008A0
	ldrb r1, [r0, #3]
	mov sb, r0
	cmp r1, #5
	beq _0803CDCC
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803CDC8 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CE20
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	b _0803CE20
	.align 2, 0
_0803CDC4: .4byte gUnknown_030008A0
_0803CDC8: .4byte gUnknown_030015C0
_0803CDCC:
	movs r1, #0
	movs r6, #0
	ldr r2, _0803CDE8 @ =gUnknown_030015C0
_0803CDD2:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CDEC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CDF0
	.align 2, 0
_0803CDE8: .4byte gUnknown_030015C0
_0803CDEC:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CDF0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CE12
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_0803CE12:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CDD2
_0803CE20:
	cmp r6, #0
	beq _0803CEA8
	movs r1, #0
	movs r0, #0x80
	strb r0, [r7, #0x17]
	movs r0, #1
	mov r2, r8
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r0, #0x3c
	strh r0, [r7, #0x12]
	ldr r0, _0803CE5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CE60 @ =sub_803D750
	str r0, [r1, #8]
	movs r1, #0
	ldr r6, _0803CE64 @ =gUnknown_080CF770
	ldr r2, _0803CE68 @ =gUnknown_030015C0
_0803CE48:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CE6C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CE70
	.align 2, 0
_0803CE5C: .4byte gCurTask
_0803CE60: .4byte sub_803D750
_0803CE64: .4byte gUnknown_080CF770
_0803CE68: .4byte gUnknown_030015C0
_0803CE6C:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CE70:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CE48
	ldrh r0, [r6, #0x1c]
	strh r0, [r3, #0xc]
	ldrb r0, [r6, #0x1e]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #6
	mov r2, sb
	strb r0, [r2, #4]
	b _0803CEC0
_0803CEA8:
	ldrb r4, [r7, #0x17]
	movs r0, #0
	bl sub_803D784
	cmp r4, #0
	beq _0803CEC0
	ldrb r1, [r7, #0x17]
	cmp r1, #0
	bne _0803CEC0
	ldr r0, _0803CEDC @ =gUnknown_030008A0
	adds r0, #0x85
	strb r1, [r0]
_0803CEC0:
	bl sub_803D4C8
	ldr r0, _0803CEE0 @ =gUnknown_03001D00
	ldrb r0, [r0]
	strb r0, [r7, #0x16]
_0803CECA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEDC: .4byte gUnknown_030008A0
_0803CEE0: .4byte gUnknown_03001D00

	thumb_func_start sub_803CEE4
sub_803CEE4: @ 0x0803CEE4
	push {r4, lr}
	ldr r0, _0803CF4C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #1
	bne _0803CF74
	movs r0, #2
	strb r0, [r1, #0x17]
	ldrh r0, [r1, #0x12]
	movs r3, #0x12
	ldrsh r4, [r1, r3]
	cmp r4, #0
	bne _0803CF70
	ldr r1, _0803CF50 @ =gUnknown_03000590
	adds r0, r2, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803CF74
	ldr r1, _0803CF54 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803CF58 @ =gUnknown_03003F94
	ldr r0, _0803CF5C @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803CF60 @ =gUnknown_03006840
	strb r4, [r0]
	ldr r1, _0803CF64 @ =gUnknown_03006208
	ldr r0, _0803CF68 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803CF6C @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803CF7E
	.align 2, 0
_0803CF4C: .4byte gCurTask
_0803CF50: .4byte gUnknown_03000590
_0803CF54: .4byte 0x0000FFFF
_0803CF58: .4byte gUnknown_03003F94
_0803CF5C: .4byte gUnknown_03003D20
_0803CF60: .4byte gUnknown_03006840
_0803CF64: .4byte gUnknown_03006208
_0803CF68: .4byte gUnknown_03003F34
_0803CF6C: .4byte gUnknown_030008A0
_0803CF70:
	subs r0, #1
	strh r0, [r1, #0x12]
_0803CF74:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803CF7E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803CF84
sub_803CF84: @ 0x0803CF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0803CFB4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r0, _0803CFB8 @ =gUnknown_030008A0
	mov r8, r0
	ldr r5, _0803CFBC @ =gUnknown_030015C0
_0803CFA4:
	cmp r4, #0
	beq _0803CFC0
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CFC4
	.align 2, 0
_0803CFB4: .4byte gCurTask
_0803CFB8: .4byte gUnknown_030008A0
_0803CFBC: .4byte gUnknown_030015C0
_0803CFC0:
	mov r0, r8
	ldrb r1, [r0, #6]
_0803CFC4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803CFA4
	mov r1, r8
	ldrb r7, [r1, #6]
	cmp r7, #0
	beq _0803CFEE
	b _0803D216
_0803CFEE:
	ldrb r0, [r6, #0x17]
	cmp r0, #0x5f
	bhi _0803CFF6
	b _0803D216
_0803CFF6:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r3, r6, r0
	ldr r0, _0803D178 @ =gUnknown_03001D00
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0803D006
	b _0803D208
_0803D006:
	ldr r1, _0803D17C @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
	bl sub_803D4C8
	movs r0, #0x64
	strh r0, [r6, #0x12]
	ldr r1, _0803D180 @ =gUnknown_080CFA50
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldr r1, _0803D184 @ =0x06012800
	mov sl, r1
	mov r1, r8
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803D188 @ =gUnknown_030015C0
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r2
	movs r0, #0x99
	lsls r0, r0, #3
	adds r3, r6, r0
	mov r0, sl
	str r0, [r3]
	movs r0, #0x80
	add sl, r0
	ldr r0, _0803D18C @ =0x0000058F
	mov sb, r0
	mov r0, sb
	strh r0, [r3, #0xc]
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	strh r7, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x5f
	strh r0, [r3, #0x10]
	movs r1, #0x4e
	mov r8, r1
	mov r0, r8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r1, #0x80
	add sl, r1
	mov r0, sb
	strh r0, [r3, #0xc]
	adds r4, #0x2a
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r1, #0x40
	mov sb, r1
	mov r0, sb
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x69
	strh r0, [r3, #0x10]
	mov r1, r8
	strh r1, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0xa3
	lsls r0, r0, #3
	adds r3, r6, r0
	mov r1, sl
	str r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #2
	add sl, r0
	ldr r4, _0803D190 @ =0x0000048D
	strh r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x6c
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r1, #0x80
	add sl, r1
	strh r4, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	mov r1, sb
	strh r1, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x8a
	strh r0, [r3, #0x10]
	movs r0, #0x56
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, _0803D194 @ =0x000005DB
	cmp r1, r0
	ble _0803D198
	movs r4, #5
	b _0803D1A2
	.align 2, 0
_0803D178: .4byte gUnknown_03001D00
_0803D17C: .4byte gUnknown_080CF770
_0803D180: .4byte gUnknown_080CFA50
_0803D184: .4byte 0x06012800
_0803D188: .4byte gUnknown_030015C0
_0803D18C: .4byte 0x0000058F
_0803D190: .4byte 0x0000048D
_0803D194: .4byte 0x000005DB
_0803D198:
	ldr r0, _0803D1F4 @ =0x00000257
	movs r4, #1
	cmp r1, r0
	ble _0803D1A2
	movs r4, #2
_0803D1A2:
	movs r1, #0xad
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803D1F8 @ =0x00000487
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	movs r0, #0x96
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl sub_8003DC4
	strb r4, [r6, #0x14]
	ldr r0, _0803D1FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803D200 @ =sub_803D324
	str r0, [r1, #8]
	ldr r1, _0803D204 @ =gUnknown_030008A0
	movs r0, #6
	strb r0, [r1, #4]
	b _0803D230
	.align 2, 0
_0803D1F4: .4byte 0x00000257
_0803D1F8: .4byte 0x00000487
_0803D1FC: .4byte gCurTask
_0803D200: .4byte sub_803D324
_0803D204: .4byte gUnknown_030008A0
_0803D208:
	ldr r1, _0803D240 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
_0803D216:
	ldrb r0, [r6, #0x17]
	subs r0, #1
	strb r0, [r6, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D22C
	movs r0, #0x80
	strb r0, [r6, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D244 @ =sub_803D248
	str r0, [r1, #8]
_0803D22C:
	bl sub_803D4C8
_0803D230:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D240: .4byte gUnknown_080CF770
_0803D244: .4byte sub_803D248

	thumb_func_start sub_803D248
sub_803D248: @ 0x0803D248
	push {r4, r5, lr}
	ldr r0, _0803D26C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D270 @ =gUnknown_030015C0
_0803D25A:
	cmp r3, #0
	beq _0803D274
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D278
	.align 2, 0
_0803D26C: .4byte gCurTask
_0803D270: .4byte gUnknown_030015C0
_0803D274:
	ldr r0, _0803D2F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803D278:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D25A
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D314
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D310
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D314
	ldr r1, _0803D2F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D2FC @ =gUnknown_03003F94
	ldr r0, _0803D300 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D304 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D308 @ =gUnknown_03006208
	ldr r0, _0803D30C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D2F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D31E
	.align 2, 0
_0803D2F4: .4byte gUnknown_030008A0
_0803D2F8: .4byte 0x0000FFFF
_0803D2FC: .4byte gUnknown_03003F94
_0803D300: .4byte gUnknown_03003D20
_0803D304: .4byte gUnknown_03006840
_0803D308: .4byte gUnknown_03006208
_0803D30C: .4byte gUnknown_03003F34
_0803D310:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D314:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D31E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803D324
sub_803D324: @ 0x0803D324
	push {r4, r5, r6, lr}
	ldr r2, _0803D348 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r6, r2, #0
	ldr r2, _0803D34C @ =gUnknown_030015C0
_0803D338:
	cmp r4, #0
	beq _0803D350
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D354
	.align 2, 0
_0803D348: .4byte gCurTask
_0803D34C: .4byte gUnknown_030015C0
_0803D350:
	ldr r0, _0803D394 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803D354:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803D338
	ldrb r0, [r5, #0x17]
	subs r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D38A
	movs r0, #0x80
	strb r0, [r5, #0x17]
	ldr r1, [r6]
	ldr r0, _0803D398 @ =sub_803D39C
	str r0, [r1, #8]
_0803D38A:
	bl sub_803D4C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D394: .4byte gUnknown_030008A0
_0803D398: .4byte sub_803D39C

	thumb_func_start sub_803D39C
sub_803D39C: @ 0x0803D39C
	push {r4, r5, lr}
	ldr r0, _0803D3C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D3C4 @ =gUnknown_030015C0
_0803D3AE:
	cmp r3, #0
	beq _0803D3C8
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D3CC
	.align 2, 0
_0803D3C0: .4byte gCurTask
_0803D3C4: .4byte gUnknown_030015C0
_0803D3C8:
	ldr r0, _0803D448 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803D3CC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D3AE
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D468
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D464
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D468
	ldr r1, _0803D44C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D450 @ =gUnknown_03003F94
	ldr r0, _0803D454 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D458 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D45C @ =gUnknown_03006208
	ldr r0, _0803D460 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D448 @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D476
	.align 2, 0
_0803D448: .4byte gUnknown_030008A0
_0803D44C: .4byte 0x0000FFFF
_0803D450: .4byte gUnknown_03003F94
_0803D454: .4byte gUnknown_03003D20
_0803D458: .4byte gUnknown_03006840
_0803D45C: .4byte gUnknown_03006208
_0803D460: .4byte gUnknown_03003F34
_0803D464:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D468:
	bl sub_803D614
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D476:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803D47C
sub_803D47C: @ 0x0803D47C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803D4C4 @ =gUnknown_080CF770
	ldr r0, [r5]
	bl VramMalloc
	str r0, [r4]
	ldrh r0, [r5, #0x34]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	adds r5, #0x36
	ldrb r0, [r5]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D4C4: .4byte gUnknown_080CF770

	thumb_func_start sub_803D4C8
sub_803D4C8: @ 0x0803D4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803D5E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x10
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	ldr r1, _0803D5E8 @ =gUnknown_080CF9AE
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r4, r4, r0
	ldr r0, _0803D5EC @ =0x03000338
	adds r7, r5, r0
	movs r0, #0x80
	strh r0, [r7, #0x10]
	movs r0, #0x16
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r5, _0803D5F0 @ =gUnknown_080CF936
	lsls r4, r4, #1
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x86
	strh r0, [r7, #0x10]
	movs r6, #0x12
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r5, #1
	adds r4, r4, r5
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x8c
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0803D5F4 @ =gUnknown_080CF8BC
	mov r0, sb
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D58A
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x70
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0803D58A:
	adds r0, r4, #1
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0
_0803D5B2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	adds r7, r2, r0
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0803D5F8
	adds r0, r7, #0
	bl DisplaySprite
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	bne _0803D5FE
	movs r0, #2
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	b _0803D5FE
	.align 2, 0
_0803D5E4: .4byte gCurTask
_0803D5E8: .4byte gUnknown_080CF9AE
_0803D5EC: .4byte 0x03000338
_0803D5F0: .4byte gUnknown_080CF936
_0803D5F4: .4byte gUnknown_080CF8BC
_0803D5F8:
	adds r0, r7, #0
	bl DisplaySprite
_0803D5FE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803D5B2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803D614
sub_803D614: @ 0x0803D614
	push {r4, r5, r6, lr}
	ldr r0, _0803D6A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803D6A8 @ =0x030004C8
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6AC @ =0x030004F0
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B0 @ =0x03000518
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B4 @ =0x03000540
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B8 @ =0x03000568
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803D690
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803D690
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803D6BC @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803D690:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6A4: .4byte gCurTask
_0803D6A8: .4byte 0x030004C8
_0803D6AC: .4byte 0x030004F0
_0803D6B0: .4byte 0x03000518
_0803D6B4: .4byte 0x03000540
_0803D6B8: .4byte 0x03000568
_0803D6BC: .4byte 0x0000020D

	thumb_func_start sub_803D6C0
sub_803D6C0: @ 0x0803D6C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803D6D4
sub_803D6D4: @ 0x0803D6D4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	bl VramFree
	ldr r1, _0803D734 @ =0x03000388
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D738 @ =0x03000360
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D73C @ =0x030004C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D72E
	bl VramFree
	ldr r1, _0803D740 @ =0x030004F0
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D744 @ =0x03000518
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D748 @ =0x03000540
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D74C @ =0x03000568
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
_0803D72E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D734: .4byte 0x03000388
_0803D738: .4byte 0x03000360
_0803D73C: .4byte 0x030004C8
_0803D740: .4byte 0x030004F0
_0803D744: .4byte 0x03000518
_0803D748: .4byte 0x03000540
_0803D74C: .4byte 0x03000568

	thumb_func_start sub_803D750
sub_803D750: @ 0x0803D750
	push {lr}
	ldr r2, _0803D77C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	subs r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D774
	movs r0, #0x80
	strb r0, [r1, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D780 @ =sub_803CEE4
	str r0, [r1, #8]
_0803D774:
	bl sub_803D4C8
	pop {r0}
	bx r0
	.align 2, 0
_0803D77C: .4byte gCurTask
_0803D780: .4byte sub_803CEE4

	thumb_func_start sub_803D784
sub_803D784: @ 0x0803D784
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803D7CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _0803D7C4
	subs r2, r0, #1
	strb r2, [r1, #0x17]
	cmp r3, #0
	bne _0803D7B2
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803D7B2
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803D7C4
_0803D7B2:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803D7C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7CC: .4byte gCurTask
