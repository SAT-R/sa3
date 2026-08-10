.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_809789C
sub_809789C: @ 0x0809789C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r5, #0xb
	cmp r1, #0
	bne _080978F8
	ldrh r0, [r2, #0x1e]
	ldr r1, _080978CC @ =0x00004FFF
	cmp r0, r1
	bhi _080978D0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	strh r0, [r2, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080978D2
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r2, #0x1e]
	b _080978D2
	.align 2, 0
_080978CC: .4byte 0x00004FFF
_080978D0:
	movs r3, #1
_080978D2:
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r1, [r2]
	movs r4, #0xf0
	lsls r4, r4, #6
	cmp r1, r4
	ble _08097940
	movs r0, #1
	lsls r0, r5
	subs r0, r1, r0
	str r0, [r2]
	ldr r1, _080978F4 @ =0x00003BFF
	cmp r0, r1
	bgt _08097946
	str r4, [r2]
	b _08097946
	.align 2, 0
_080978F4: .4byte 0x00003BFF
_080978F8:
	ldrh r0, [r2, #0x1e]
	cmp r0, #0
	beq _08097918
	ldr r1, _08097910 @ =0xFFFFF000
	adds r0, r0, r1
	strh r0, [r2, #0x1e]
	lsls r0, r0, #0x10
	ldr r1, _08097914 @ =0x4FFF0000
	cmp r0, r1
	bls _0809791A
	strh r3, [r2, #0x1e]
	b _0809791A
	.align 2, 0
_08097910: .4byte 0xFFFFF000
_08097914: .4byte 0x4FFF0000
_08097918:
	movs r3, #1
_0809791A:
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r2, r4
	ldr r2, [r1]
	ldr r0, _0809793C @ =0x000063FF
	cmp r2, r0
	bgt _08097940
	movs r0, #1
	lsls r0, r5
	adds r0, r2, r0
	str r0, [r1]
	movs r2, #0xc8
	lsls r2, r2, #7
	cmp r0, r2
	ble _08097946
	str r2, [r1]
	b _08097946
	.align 2, 0
_0809793C: .4byte 0x000063FF
_08097940:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08097946:
	cmp r3, #2
	bne _0809794E
	movs r0, #1
	b _08097950
_0809794E:
	movs r0, #0
_08097950:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8097958
sub_8097958: @ 0x08097958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x18
	movs r0, #5
	str r0, [sp]
	cmp r1, #0
	beq _08097974
	movs r1, #6
	str r1, [sp]
_08097974:
	movs r2, #0
	mov sb, r2
	b _08097AAC
_0809797A:
	mov r1, sb
	cmp r1, #0
	beq _0809799C
	ldr r2, _08097998 @ =gLoadedSaveGame
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x74
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _0809799E
	.align 2, 0
_08097998: .4byte gLoadedSaveGame
_0809799C:
	movs r0, #1
_0809799E:
	mov r2, sb
	adds r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _08097AA4
	movs r7, #0
	adds r0, r5, #6
	str r0, [sp, #4]
	mov r1, sb
	lsls r1, r1, #4
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0xd
	str r2, [sp, #0xc]
_080979BA:
	lsls r0, r7, #2
	mov r8, r0
	mov r1, sb
	cmp r1, #0
	bne _08097A16
	adds r0, r0, r7
	lsls r6, r0, #3
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r4, r5, r0
	movs r0, #0x4b
	strh r0, [r4, #0x12]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08097AC4 @ =gUnknown_080D8CD4
	adds r1, r7, r1
	asrs r0, r0, #8
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r2, [r5, #0xc]
	cmp r7, r2
	bhs _08097A16
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r4, r5, r0
	lsls r1, r7, #3
	lsls r0, r7, #1
	adds r0, #0x12
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	movs r0, #0x45
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08097A16:
	ldr r3, [sp, #4]
	add r3, sb
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	mov r2, r8
	adds r1, r2, r7
	lsls r2, r1, #3
	adds r4, r0, r2
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08097AC4 @ =gUnknown_080D8CD4
	adds r1, r7, r1
	asrs r0, r0, #8
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	add r0, sl
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl DisplaySprite
	ldrb r0, [r5, #2]
	add r0, sb
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08097A9A
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08097AC8 @ =0x000008F8
	adds r0, r0, r1
	adds r0, r5, r0
	adds r4, r0, r2
	lsls r1, r7, #3
	lsls r0, r7, #1
	adds r0, #0x12
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	add r0, sl
	subs r0, #6
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08097A9A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _080979BA
_08097AA4:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08097AAC:
	ldr r0, [sp]
	cmp sb, r0
	bhs _08097AB4
	b _0809797A
_08097AB4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097AC4: .4byte gUnknown_080D8CD4
_08097AC8: .4byte 0x000008F8

	thumb_func_start sub_8097ACC
sub_8097ACC: @ 0x08097ACC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08097B4C @ =0x00000E98
	adds r4, r5, r0
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #2]
	subs r0, r0, r1
	cmp r0, #5
	ble _08097B12
	cmp r1, #5
	bhi _08097B12
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r2, #1
_08097B12:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08097B46
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08097B50 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	bne _08097B40
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08097B40:
	adds r0, r4, #0
	bl DisplaySprite
_08097B46:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097B4C: .4byte 0x00000E98
_08097B50: .4byte 0xFFFFF7FF

	thumb_func_start sub_8097B54
sub_8097B54: @ 0x08097B54
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	cmp r1, #1
	bne _08097B84
	ldrb r0, [r2, #2]
	cmp r0, #6
	bhi _08097BAE
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08097B7C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08097B80 @ =0x00003AFF
	cmp r0, r1
	ble _08097BA8
	b _08097BA4
	.align 2, 0
_08097B7C: .4byte 0xFFFFFE00
_08097B80: .4byte 0x00003AFF
_08097B84:
	cmp r1, #2
	bne _08097BAE
	ldrb r0, [r2, #2]
	cmp r0, #6
	bhi _08097BAE
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r0, r1, #8
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #0xb6
	lsls r0, r0, #7
	cmp r1, r0
	bgt _08097BA8
_08097BA4:
	movs r0, #0
	b _08097BB0
_08097BA8:
	movs r0, #0x96
	lsls r0, r0, #7
	str r0, [r2]
_08097BAE:
	movs r0, #1
_08097BB0:
	pop {r1}
	bx r1

	thumb_func_start sub_8097BB4
sub_8097BB4: @ 0x08097BB4
	ldr r2, _08097BE0 @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0, #0x24]
	adds r1, r1, r3
	strh r1, [r0, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r3, [r0, #0x26]
	adds r2, r2, r3
	strh r2, [r0, #0x26]
	ldr r0, _08097BE4 @ =gBgScrollRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	rsbs r1, r1, #0
	strh r1, [r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	rsbs r2, r2, #0
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_08097BE0: .4byte 0xFFFFFF00
_08097BE4: .4byte gBgScrollRegs

	thumb_func_start sub_8097BE8
sub_8097BE8: @ 0x08097BE8
	push {lr}
	adds r3, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	adds r0, #0x40
	str r0, [r2]
	movs r1, #0x93
	lsls r1, r1, #8
	cmp r0, r1
	ble _08097C06
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r2]
_08097C06:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	subs r0, #0x40
	str r0, [r2]
	ldr r1, _08097C24 @ =0x000028FF
	cmp r0, r1
	bgt _08097C1E
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r2]
_08097C1E:
	pop {r0}
	bx r0
	.align 2, 0
_08097C24: .4byte 0x000028FF

	thumb_func_start sub_8097C28
sub_8097C28: @ 0x08097C28
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r2, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_VsRecordScreen
TaskDestructor_VsRecordScreen: @ 0x08097C50
	bx lr
	.align 2, 0
