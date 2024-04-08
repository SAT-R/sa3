.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable122
CreateEntity_Interactable122: @ 0x0804A3F8
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
	ldr r0, _0804A4D0 @ =sub_804A4EC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804A4D4 @ =sub_804A8E0
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	movs r1, #0
	mov sb, r1
	movs r2, #0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	mov r7, r8
	str r7, [r3]
	ldrb r1, [r7]
	strb r1, [r3, #0xb]
	strb r6, [r3, #0xc]
	ldr r6, _0804A4D8 @ =0x03000040
	adds r1, r0, r6
	strh r2, [r1]
	ldr r7, _0804A4DC @ =0x03000042
	adds r1, r0, r7
	strh r2, [r1]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	adds r7, #2
	adds r6, r0, r7
	strh r1, [r6]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r2, _0804A4E0 @ =0x03000046
	adds r4, r0, r2
	strh r1, [r4]
	movs r5, #0
	ldrsh r1, [r6, r5]
	lsls r1, r1, #8
	str r1, [r3, #0x38]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #8
	str r1, [r3, #0x3c]
	mov r2, r8
	movs r1, #3
	ldrsb r1, [r2, r1]
	lsls r1, r1, #3
	ldrh r5, [r6]
	adds r1, r1, r5
	ldr r7, _0804A4E4 @ =0x03000048
	adds r2, r0, r7
	strh r1, [r2]
	mov r2, r8
	movs r1, #4
	ldrsb r1, [r2, r1]
	lsls r1, r1, #3
	ldrh r5, [r4]
	adds r1, r1, r5
	adds r7, #2
	adds r2, r0, r7
	strh r1, [r2]
	mov r1, sb
	strb r1, [r3, #0xa]
	ldr r2, _0804A4E8 @ =0x03000010
	adds r0, r0, r2
	ldrh r1, [r6]
	strh r1, [r0, #0x10]
	ldrh r1, [r4]
	strh r1, [r0, #0x12]
	movs r5, #2
	rsbs r5, r5, #0
	adds r1, r5, #0
	mov r6, r8
	strb r1, [r6]
	bl sub_804A8F4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A4D0: .4byte sub_804A4EC
_0804A4D4: .4byte sub_804A8E0
_0804A4D8: .4byte 0x03000040
_0804A4DC: .4byte 0x03000042
_0804A4E0: .4byte 0x03000046
_0804A4E4: .4byte 0x03000048
_0804A4E8: .4byte 0x03000010

	thumb_func_start sub_804A4EC
sub_804A4EC: @ 0x0804A4EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0804A51C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x10
	adds r0, r0, r1
	mov sb, r0
	movs r7, #0
	movs r1, #0
_0804A50C:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804A524
	ldr r0, _0804A520 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804A52E
	.align 2, 0
_0804A51C: .4byte gCurTask
_0804A520: .4byte gUnknown_030008A0
_0804A524:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804A52E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804A59C @ =gPlayers
	adds r4, r0, r1
	ldr r2, [r4]
	ldr r0, _0804A5A0 @ =sub_8008CD0
	cmp r2, r0
	bne _0804A546
	b _0804A690
_0804A546:
	ldr r0, _0804A5A4 @ =sub_800E1E4
	cmp r2, r0
	bne _0804A54E
	b _0804A690
_0804A54E:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A5B0
	ldr r0, [r4, #0x6c]
	cmp r0, sb
	bne _0804A5B0
	ldr r0, _0804A5A8 @ =sub_800B81C
	cmp r2, r0
	beq _0804A574
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0804A574
	adds r0, r4, #0
	ldr r1, _0804A5AC @ =sub_800DE64
	bl sub_800D87C
_0804A574:
	ldr r0, [r6, #0x38]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0xc
	lsls r1, r1, #8
	ldr r0, [r6, #0x3c]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldrh r1, [r4, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0804A690
	.align 2, 0
_0804A59C: .4byte gPlayers
_0804A5A0: .4byte sub_8008CD0
_0804A5A4: .4byte sub_800E1E4
_0804A5A8: .4byte sub_800B81C
_0804A5AC: .4byte sub_800DE64
_0804A5B0:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804A690
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldr r2, [r6, #0x3c]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, sb
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r5
	cmp r2, #0
	beq _0804A610
	adds r0, r4, #0
	bl sub_8016F28
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_801226C
	cmp r0, #0
	bge _0804A5FA
	adds r0, r4, #0
	bl sub_8008E38
	b _0804A63C
_0804A5FA:
	ldr r1, [r4]
	ldr r0, _0804A60C @ =sub_800B81C
	cmp r1, r0
	beq _0804A63C
	adds r0, r4, #0
	bl sub_800DE64
	b _0804A63C
	.align 2, 0
_0804A60C: .4byte sub_800B81C
_0804A610:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0804A63C
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _0804A63C
	adds r0, r4, #0
	bl sub_8008E38
_0804A63C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804A690
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804A664
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804A67E
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	b _0804A674
_0804A664:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A67E
	ldr r0, [r4, #0x10]
	ldr r1, _0804A6B8 @ =0xFFFFFF00
	adds r0, r0, r1
_0804A674:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0804A67E:
	movs r2, #0
	strh r2, [r4, #0x1c]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	strh r2, [r4, #0x18]
_0804A690:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804A6A0
	b _0804A50C
_0804A6A0:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0804A6C8
	cmp r0, #0
	bge _0804A6BC
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	ble _0804A6C8
	b _0804A6C6
	.align 2, 0
_0804A6B8: .4byte 0xFFFFFF00
_0804A6BC:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _0804A6C8
_0804A6C6:
	movs r7, #0
_0804A6C8:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	movs r1, #7
	ands r0, r1
	mov r2, sb
	strb r0, [r2, #0x1a]
	lsls r0, r7, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804A704
	ldr r0, [r4, #4]
	movs r4, #1
	ands r0, r4
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0804A70E
	ldr r0, _0804A700 @ =0x00000263
	bl sub_8003DF0
	strb r4, [r6, #0xa]
	b _0804A70E
	.align 2, 0
_0804A700: .4byte 0x00000263
_0804A704:
	ldr r0, _0804A768 @ =0x00000263
	bl sub_8003E28
	movs r0, #0
	strb r0, [r6, #0xa]
_0804A70E:
	asrs r2, r5, #0x10
	cmp r2, #0
	ble _0804A78A
	ldr r1, [r6, #0x38]
	asrs r3, r1, #8
	adds r4, r6, #0
	adds r4, #0x48
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	blt _0804A730
	adds r4, r6, #0
	adds r4, #0x44
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	bge _0804A744
_0804A730:
	lsls r0, r2, #6
	adds r0, r1, r0
	str r0, [r6, #0x38]
	asrs r0, r0, #8
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0804A744
	lsls r0, r1, #8
	str r0, [r6, #0x38]
_0804A744:
	ldr r1, [r6, #0x3c]
	asrs r2, r1, #8
	adds r3, r6, #0
	adds r3, #0x4a
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	ble _0804A76C
	asrs r0, r5, #0xa
	subs r0, r1, r0
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r0, r1
	bge _0804A7EE
	b _0804A7EA
	.align 2, 0
_0804A768: .4byte 0x00000263
_0804A76C:
	adds r3, r6, #0
	adds r3, #0x46
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	ble _0804A7EE
	asrs r0, r5, #0xa
	subs r0, r1, r0
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r0, r1
	bge _0804A7EE
	b _0804A7EA
_0804A78A:
	cmp r2, #0
	bge _0804A7EE
	ldr r1, [r6, #0x38]
	asrs r3, r1, #8
	adds r4, r6, #0
	adds r4, #0x48
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	bgt _0804A7AA
	adds r4, r6, #0
	adds r4, #0x44
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	ble _0804A7BE
_0804A7AA:
	lsls r0, r2, #6
	adds r0, r1, r0
	str r0, [r6, #0x38]
	asrs r0, r0, #8
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _0804A7BE
	lsls r0, r1, #8
	str r0, [r6, #0x38]
_0804A7BE:
	ldr r1, [r6, #0x3c]
	asrs r2, r1, #8
	adds r3, r6, #0
	adds r3, #0x4a
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	blt _0804A7DA
	adds r3, r6, #0
	adds r3, #0x46
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	bge _0804A7EE
_0804A7DA:
	asrs r0, r5, #0xa
	subs r0, r1, r0
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r0, r1
	ble _0804A7EE
_0804A7EA:
	lsls r0, r1, #8
	str r0, [r6, #0x3c]
_0804A7EE:
	bl sub_804A800
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804A800
sub_804A800: @ 0x0804A800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0804A870 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0x10
	adds r6, r3, r0
	ldr r1, [r7]
	mov r8, r1
	ldr r0, [r7, #0x38]
	lsls r0, r0, #8
	ldr r1, [r7, #0x3c]
	lsls r1, r1, #8
	ldr r4, _0804A874 @ =gCamera
	ldr r2, [r4]
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x10]
	ldr r0, [r4, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	ldr r2, _0804A878 @ =0x03000044
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, _0804A87C @ =0x03000046
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	movs r4, #0x12
	ldrsh r3, [r6, r4]
	bl sub_802C140
	cmp r0, #0
	bne _0804A8C8
	movs r1, #0
	ldr r2, _0804A880 @ =gPlayers
_0804A85A:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A884
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804A888
	.align 2, 0
_0804A870: .4byte gCurTask
_0804A874: .4byte gCamera
_0804A878: .4byte 0x03000044
_0804A87C: .4byte 0x03000046
_0804A880: .4byte gPlayers
_0804A884:
	ldr r0, _0804A8C0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804A888:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _0804A85A
	ldrb r0, [r7, #0xb]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0804A8C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804A8D4
	.align 2, 0
_0804A8C0: .4byte gUnknown_030008A0
_0804A8C4: .4byte gCurTask
_0804A8C8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0804A8D4:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804A8E0
sub_804A8E0: @ 0x0804A8E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804A8F4
sub_804A8F4: @ 0x0804A8F4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804A934 @ =0x000003A3
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A934: .4byte 0x000003A3
