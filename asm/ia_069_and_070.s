.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8038C3C
sub_8038C3C: @ 0x08038C3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08038D30 @ =sub_8038D40
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038D34 @ =sub_8039184
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _08038D38 @ =0x0300000C
	add r3, r8
	str r3, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sl
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	mov r3, sl
	ldrb r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r7, #0x34]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x38]
	mov r4, sb
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_804DC38
	strh r0, [r7, #0x3c]
	movs r0, #0
	strh r0, [r7, #0x3e]
	ldr r1, _08038D3C @ =0x03000040
	add r8, r1
	mov r3, r8
	strb r4, [r3]
	movs r2, #0
	mov r4, sl
	ldrb r0, [r4, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08038CF0
	movs r3, #1
_08038CD4:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _08038CF0
	mov r4, sl
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08038CD4
_08038CF0:
	adds r0, r2, #1
	adds r2, r7, #0
	adds r2, #0x41
	movs r1, #0
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r7, #0x34]
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r7, #0x38]
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sl
	strb r0, [r4]
	ldr r0, [sp, #4]
	bl sub_8038F28
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038D30: .4byte sub_8038D40
_08038D34: .4byte sub_8039184
_08038D38: .4byte 0x0300000C
_08038D3C: .4byte 0x03000040

	thumb_func_start sub_8038D40
sub_8038D40: @ 0x08038D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08038D9C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r1, _08038DA0 @ =0x0300000C
	adds r1, r1, r2
	mov r8, r1
	ldr r3, [r7]
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r5, r1, #8
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r4, r1, #8
	ldr r0, _08038DA4 @ =0x03000041
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08038DB0
	ldr r0, _08038DA8 @ =gUnknown_030008A0
	ldrb r1, [r2]
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	ldrh r1, [r7, #0x3c]
	adds r0, r0, r1
	ldr r2, _08038DAC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7, #0x3e]
	b _08038DC2
	.align 2, 0
_08038D9C: .4byte gCurTask
_08038DA0: .4byte 0x0300000C
_08038DA4: .4byte 0x03000041
_08038DA8: .4byte gUnknown_030008A0
_08038DAC: .4byte 0x000003FF
_08038DB0:
	ldr r0, _08038E30 @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
_08038DC2:
	movs r2, #4
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0xb
	adds r2, r4, r2
	ldrb r4, [r3, #6]
	lsls r4, r4, #0xa
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r1, r1, #0xb
	adds r1, r5, r1
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xa
	adds r1, r1, r3
	adds r2, r2, r4
	mov ip, r2
	ldr r0, [r7, #0x34]
	mov sl, r0
	ldr r2, [r7, #0x38]
	mov sb, r2
	ldr r5, _08038E34 @ =gUnknown_082B48B4
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, ip
	adds r2, r3, r0
	str r2, [r7, #0x38]
	mov r0, sl
	subs r0, r0, r1
	mov sl, r0
	mov r1, sb
	subs r1, r1, r2
	mov sb, r1
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x42
_08038E22:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08038E38
	ldr r0, _08038E30 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08038E42
	.align 2, 0
_08038E30: .4byte gUnknown_030008A0
_08038E34: .4byte gUnknown_082B48B4
_08038E38:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038E42:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08038EB8 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08038ED2
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038E84
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _08038E84
	ldr r0, [r6, #0x10]
	mov r2, sl
	subs r0, r0, r2
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r2, sb
	subs r0, r0, r2
	str r0, [r6, #0x14]
	movs r3, #1
	str r3, [sp, #4]
_08038E84:
	adds r0, r7, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038EBC
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08038ED2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _08038ED2
	.align 2, 0
_08038EB8: .4byte gPlayers
_08038EBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038ED2
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _08038ED2
	mov r0, r8
	adds r1, r6, #0
	bl sub_80213B0
_08038ED2:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08038E22
	ldr r2, [sp, #4]
	cmp r2, #0
	bne _08038EF0
	adds r0, r7, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038F0A
_08038EF0:
	ldrb r0, [r5]
	cmp r0, #0x3f
	bhi _08038EFA
	adds r0, #1
	strb r0, [r5]
_08038EFA:
	ldrb r0, [r5]
	cmp r0, #0x30
	bls _08038F14
	adds r1, r7, #0
	adds r1, #0x43
	movs r0, #1
	strb r0, [r1]
	b _08038F14
_08038F0A:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08038F14
	subs r0, #1
	strb r0, [r5]
_08038F14:
	bl sub_803901C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8038F28
sub_8038F28: @ 0x08038F28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08038F40 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bhi _08039010
	lsls r0, r0, #2
	ldr r1, _08038F44 @ =_08038F48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038F40: .4byte gUnknown_030008A0
_08038F44: .4byte _08038F48
_08038F48: @ jump table
	.4byte _08038F64 @ case 0
	.4byte _08038F78 @ case 1
	.4byte _08038F88 @ case 2
	.4byte _08038F9C @ case 3
	.4byte _08038FB0 @ case 4
	.4byte _08038FC4 @ case 5
	.4byte _08038FD8 @ case 6
_08038F64:
	movs r0, #0x18
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038F74 @ =0x0000036D
	b _08038FE4
	.align 2, 0
_08038F74: .4byte 0x0000036D
_08038F78:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	movs r0, #0xe0
	lsls r0, r0, #2
	b _08038FE4
_08038F88:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038F98 @ =0x0000038B
	b _08038FE4
	.align 2, 0
_08038F98: .4byte 0x0000038B
_08038F9C:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038FAC @ =0x000003B7
	b _08038FE4
	.align 2, 0
_08038FAC: .4byte 0x000003B7
_08038FB0:
	movs r4, #0xee
	lsls r4, r4, #2
	adds r0, r4, #0
	bl VramMalloc
	str r0, [r5]
	movs r0, #0
	strh r4, [r5, #0xc]
	strb r0, [r5, #0x1a]
	b _08038FE8
_08038FC4:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038FD4 @ =0x000003AA
	b _08038FE4
	.align 2, 0
_08038FD4: .4byte 0x000003AA
_08038FD8:
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _08039018 @ =0x000003A7
_08038FE4:
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
_08038FE8:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08039010:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039018: .4byte 0x000003A7

	thumb_func_start sub_803901C
sub_803901C: @ 0x0803901C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08039098 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r6, r1, r0
	ldr r7, _0803909C @ =0x0300000C
	add r7, r8
	ldr r2, [r6]
	mov sb, r2
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r6, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r4, _080390A0 @ =gCamera
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r7, #0x10]
	ldr r2, [r6, #0x38]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r7, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r7, r3]
	movs r4, #0x12
	ldrsh r3, [r7, r4]
	bl sub_802C140
	cmp r0, #0
	bne _080390EC
	movs r1, #0
	ldr r2, _080390A4 @ =gPlayers
_08039084:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080390A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080390AC
	.align 2, 0
_08039098: .4byte gCurTask
_0803909C: .4byte 0x0300000C
_080390A0: .4byte gCamera
_080390A4: .4byte gPlayers
_080390A8:
	ldr r0, _080390E4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080390AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r7, #0
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
	ble _08039084
	ldrb r0, [r6, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _080390E8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803911C
	.align 2, 0
_080390E4: .4byte gUnknown_030008A0
_080390E8: .4byte gCurTask
_080390EC:
	ldr r0, _080390FC @ =0x03000042
	add r0, r8
	ldrb r0, [r0]
	lsrs r0, r0, #2
	cmp r0, #3
	bgt _08039100
	movs r1, #0
	b _08039106
	.align 2, 0
_080390FC: .4byte 0x03000042
_08039100:
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08039106:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	bgt _0803911C
	strb r1, [r7, #0x1a]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0803911C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable069
CreateEntity_Interactable069: @ 0x0803912C
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
	bl sub_8038C3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable070
CreateEntity_Interactable070: @ 0x08039158
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
	bl sub_8038C3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8039184
sub_8039184: @ 0x08039184
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
