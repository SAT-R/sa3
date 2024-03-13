.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactables028_and_071
CreateEntity_Interactables028_and_071: @ 0x0802FD18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0802FE04 @ =Task_Interactables028_and_071
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802FE08 @ =TaskDestructor_Interactables028_and_071
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0802FE0C @ =0x0300000C
	adds r3, r2, r1
	strh r7, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #0xa]
	strb r4, [r0, #0xb]
	ldr r4, _0802FE10 @ =0x03000034
	adds r0, r2, r4
	strb r5, [r0]
	ldrb r0, [r6, #4]
	ldr r5, _0802FE14 @ =0x03000035
	adds r1, r2, r5
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FD80
	movs r0, #1
	strb r0, [r1]
_0802FD80:
	movs r4, #0
	ldrb r1, [r6, #7]
	movs r0, #1
	ands r0, r1
	ldr r5, _0802FE18 @ =0x03000036
	adds r5, r5, r2
	mov ip, r5
	lsls r7, r7, #8
	mov r5, r8
	lsls r5, r5, #8
	mov r8, r5
	ldr r5, _0802FE10 @ =0x03000034
	adds r5, r5, r2
	mov sb, r5
	ldr r5, _0802FE14 @ =0x03000035
	adds r5, r5, r2
	mov sl, r5
	cmp r0, #0
	bne _0802FDC4
	adds r5, r1, #0
	movs r2, #1
_0802FDAA:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0802FDC4
	adds r0, r5, #0
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0802FDAA
_0802FDC4:
	mov r2, ip
	strb r4, [r2]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r7
	strh r0, [r3, #0x10]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r3, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r6]
	mov r5, sb
	ldrb r0, [r5]
	mov r2, sl
	ldrb r1, [r2]
	subs r1, #1
	mov r4, ip
	ldrb r2, [r4]
	bl sub_80302A0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE04: .4byte Task_Interactables028_and_071
_0802FE08: .4byte TaskDestructor_Interactables028_and_071
_0802FE0C: .4byte 0x0300000C
_0802FE10: .4byte 0x03000034
_0802FE14: .4byte 0x03000035
_0802FE18: .4byte 0x03000036

	thumb_func_start Task_Interactables028_and_071
Task_Interactables028_and_071: @ 0x0802FE1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0802FEDC @ =gUnknown_030008A0
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, _0802FEE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _0802FEE4 @ =0x0300000C
	adds r1, r1, r0
	mov r8, r1
	mov r2, sl
	ldr r2, [r2]
	str r2, [sp, #8]
	mov r1, sl
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #3
	beq _0802FE82
	cmp r0, #7
	beq _0802FE82
	cmp r0, #0xf
	beq _0802FE82
	cmp r0, #0x13
	bne _0802FE9A
_0802FE82:
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #0x16]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802FE9A
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	bl sub_8004DD8
_0802FE9A:
	ldr r0, _0802FEDC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802FEE8 @ =gUnknown_030015C0
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	beq _0802FEB8
	b _080301E8
_0802FEB8:
	mov r0, sl
	adds r0, #0x35
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0x80
	lsls r1, r1, #9
	adds r6, r1, #0
	lsls r6, r0
	ldr r0, [r7, #4]
	ands r0, r1
	cmp r0, #0
	beq _0802FEF6
	cmp r6, r1
	bne _0802FEEC
	movs r6, #0x80
	lsls r6, r6, #0xa
	b _0802FEF6
	.align 2, 0
_0802FEDC: .4byte gUnknown_030008A0
_0802FEE0: .4byte gCurTask
_0802FEE4: .4byte 0x0300000C
_0802FEE8: .4byte gUnknown_030015C0
_0802FEEC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r6, r0
	bne _0802FEF6
	adds r6, r1, #0
_0802FEF6:
	lsls r5, r5, #0x10
	asrs r1, r5, #0x10
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r7, #0
	bl sub_8020950
	mov sb, r0
	cmp r0, #0
	bne _0802FF12
	b _08030068
_0802FF12:
	mov r1, sb
	ands r1, r6
	cmp r1, #0
	beq _0802FFC4
	mov r0, sl
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FF74
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #3
	beq _0802FF32
	cmp r0, #7
	beq _0802FF32
	b _08030048
_0802FF32:
	ldr r2, _0802FF70 @ =gUnknown_030008A0
	adds r3, r2, #0
	adds r3, #0x2c
	mov r4, sl
	adds r4, #0x36
	movs r0, #1
	ldrb r1, [r4]
	lsls r0, r1
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r2, #0x2e
	adds r1, r1, r2
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
	b _08030048
	.align 2, 0
_0802FF70: .4byte gUnknown_030008A0
_0802FF74:
	mov r2, r8
	ldrb r0, [r2, #0x1a]
	cmp r0, #0xf
	beq _0802FF80
	cmp r0, #0x13
	bne _08030048
_0802FF80:
	ldr r2, _0802FFC0 @ =gUnknown_030008A0
	adds r4, r2, #0
	adds r4, #0x2d
	mov r3, sl
	adds r3, #0x36
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r2, #0x3e
	adds r1, r1, r2
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
	b _08030048
	.align 2, 0
_0802FFC0: .4byte gUnknown_030008A0
_0802FFC4:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08030048
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	cmp r0, #0xef
	beq _08030048
	strh r1, [r7, #0x18]
	strh r1, [r7, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r2, r1, r0
	str r2, [r7, #0x10]
	ldr r1, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	bne _08030054
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08030020
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08030020
	ldr r1, _0803001C @ =0xFFFFFF00
	adds r0, r2, r1
	b _0803003E
	.align 2, 0
_0803001C: .4byte 0xFFFFFF00
_08030020:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08030054
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08030054
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
_0803003E:
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r0, r3
	str r0, [r7, #4]
	b _08030054
_08030048:
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_08030054:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _08030062
	b _080301E8
_08030062:
	movs r0, #0
	strh r0, [r7, #0x1a]
	b _080301E8
_08030068:
	ldr r2, [sp, #0xc]
	ldr r0, [r2, #0x50]
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803007C
	cmp r1, #0x10
	bne _08030132
_0803007C:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #0x16]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08030132
	mov r0, r8
	bl sub_805C510
	adds r3, r0, #0
	cmp r3, #1
	bne _08030132
	mov r0, sl
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080300EC
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #3
	beq _080300AA
	cmp r0, #7
	bne _08030132
_080300AA:
	ldr r2, _080300E8 @ =gUnknown_030008A0
	adds r1, r2, #0
	adds r1, #0x2c
	mov r6, sl
	adds r6, #0x36
	ldrb r0, [r6]
	lsls r3, r0
	ldrb r0, [r1]
	orrs r3, r0
	strb r3, [r1]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r2, #0x2e
	adds r1, r1, r2
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
	b _08030132
	.align 2, 0
_080300E8: .4byte gUnknown_030008A0
_080300EC:
	mov r2, r8
	ldrb r0, [r2, #0x1a]
	cmp r0, #0xf
	beq _080300F8
	cmp r0, #0x13
	bne _08030132
_080300F8:
	ldr r2, _0803019C @ =gUnknown_030008A0
	adds r6, r2, #0
	adds r6, #0x2d
	mov r1, sl
	adds r1, #0x36
	ldrb r0, [r1]
	lsls r3, r0
	ldrb r0, [r6]
	orrs r3, r0
	strb r3, [r6]
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r2, #0x3e
	adds r1, r1, r2
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
_08030132:
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	str r7, [sp]
	movs r5, #1
	str r5, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080301E8
	mov r0, sl
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080301A0
	mov r2, r8
	ldrb r0, [r2, #0x1a]
	cmp r0, #3
	beq _0803015E
	cmp r0, #7
	bne _080301E8
_0803015E:
	ldr r2, _0803019C @ =gUnknown_030008A0
	adds r3, r2, #0
	adds r3, #0x2c
	mov r4, sl
	adds r4, #0x36
	adds r0, r5, #0
	ldrb r1, [r4]
	lsls r0, r1
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r2, #0x2e
	adds r1, r1, r2
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
	b _080301E8
	.align 2, 0
_0803019C: .4byte gUnknown_030008A0
_080301A0:
	mov r2, r8
	ldrb r0, [r2, #0x1a]
	cmp r0, #0xf
	beq _080301AC
	cmp r0, #0x13
	bne _080301E8
_080301AC:
	ldr r2, _08030214 @ =gUnknown_030008A0
	adds r4, r2, #0
	adds r4, #0x2d
	mov r3, sl
	adds r3, #0x36
	adds r0, r5, #0
	ldrb r1, [r3]
	lsls r0, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r2, #0x3e
	adds r1, r1, r2
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
_080301E8:
	ldr r4, _08030214 @ =gUnknown_030008A0
	ldr r0, [r4, #8]
	ldr r1, _08030218 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _0803021C @ =0x00070100
	cmp r0, r1
	bne _0803028C
	ldr r2, [sp, #8]
	ldrb r0, [r2, #7]
	cmp r0, #0xff
	bne _08030224
	ldr r0, [r7, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
	ldr r0, _08030220 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08030290
	.align 2, 0
_08030214: .4byte gUnknown_030008A0
_08030218: .4byte 0x00FFFF00
_0803021C: .4byte 0x00070100
_08030220: .4byte gCurTask
_08030224:
	cmp r0, #2
	bne _0803027A
	mov r0, sl
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803027A
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #3
	beq _0803023E
	cmp r0, #7
	bne _0803027A
_0803023E:
	adds r2, r4, #0
	adds r2, #0x2c
	mov r3, sl
	adds r3, #0x36
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x2e
	adds r1, r1, r0
	ldr r0, [sp, #8]
	movs r2, #3
	ldrsb r2, [r0, r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x92
	lsls r0, r0, #2
	bl sub_8003DF0
_0803027A:
	mov r2, r8
	ldrb r0, [r2, #0x1a]
	cmp r0, #3
	beq _0803028C
	cmp r0, #7
	beq _0803028C
	movs r0, #1
	ldr r1, [sp, #8]
	strb r0, [r1, #7]
_0803028C:
	bl sub_80303B4
_08030290:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80302A0
sub_80302A0: @ 0x080302A0
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r3, #0
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r1, #0xff
	strb r1, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r1, #0x11
	str r1, [r4, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803033E
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _080302E4
	movs r0, #0x80
	lsls r0, r0, #4
	b _080302EC
_080302E4:
	cmp r1, #3
	bne _080302F0
	movs r0, #0x80
	lsls r0, r0, #3
_080302EC:
	orrs r0, r2
	str r0, [r4, #8]
_080302F0:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	ldr r0, _08030320 @ =0x0000036F
	strh r0, [r4, #0xc]
	ldr r0, _08030324 @ =gUnknown_030008A0
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803032C
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08030328
	movs r0, #9
	b _080303A4
	.align 2, 0
_08030320: .4byte 0x0000036F
_08030324: .4byte gUnknown_030008A0
_08030328:
	movs r0, #5
	b _080303A4
_0803032C:
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803033A
	movs r0, #7
	b _080303A4
_0803033A:
	movs r0, #3
	b _080303A4
_0803033E:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _0803034E
	movs r0, #0x80
	lsls r0, r0, #4
	b _08030356
_0803034E:
	cmp r1, #3
	bne _0803035A
	movs r0, #0x80
	lsls r0, r0, #3
_08030356:
	orrs r0, r2
	str r0, [r4, #8]
_0803035A:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xdc
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	ldr r0, _0803038C @ =gUnknown_030008A0
	adds r0, #0x2d
	ldrb r1, [r0]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08030394
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08030390
	movs r0, #0x15
	b _080303A4
	.align 2, 0
_0803038C: .4byte gUnknown_030008A0
_08030390:
	movs r0, #0x11
	b _080303A4
_08030394:
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080303A2
	movs r0, #0x13
	b _080303A4
_080303A2:
	movs r0, #0xf
_080303A4:
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80303B4
sub_80303B4: @ 0x080303B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803042C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sb, r0
	ldr r4, _08030430 @ =0x0300000C
	add r4, r8
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08030434 @ =0x03000035
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r1, sb
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r3, sb
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0803047C
	movs r1, #0
	ldr r7, _08030438 @ =gUnknown_030015C0
_08030418:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0803043C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08030440
	.align 2, 0
_0803042C: .4byte gCurTask
_08030430: .4byte 0x0300000C
_08030434: .4byte 0x03000035
_08030438: .4byte gUnknown_030015C0
_0803043C:
	ldr r0, _08030474 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08030440:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08030418
	mov r3, sb
	ldrb r0, [r3, #0xa]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08030478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080305C4
	.align 2, 0
_08030474: .4byte gUnknown_030008A0
_08030478: .4byte gCurTask
_0803047C:
	ldr r1, _080304B8 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080304BC @ =0x03000034
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08030532
	movs r0, #2
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080304F2
	cmp r2, #0
	bne _080304C0
	ldrb r0, [r4, #0x1a]
	cmp r0, #8
	bne _080304C0
	movs r0, #9
	b _080305BC
	.align 2, 0
_080304B8: .4byte gUnknown_03001D10
_080304BC: .4byte 0x03000034
_080304C0:
	ldr r0, _080304E0 @ =gUnknown_030008A0
	adds r0, #0x2c
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080304E4
	ldrb r0, [r4, #0x1a]
	cmp r0, #9
	bne _080304E4
	movs r0, #0xa
	b _080305BC
	.align 2, 0
_080304E0: .4byte gUnknown_030008A0
_080304E4:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #0xa
	bne _080305BE
	movs r0, #7
	b _080305BC
_080304F2:
	cmp r2, #0
	bne _08030500
	ldrb r0, [r4, #0x1a]
	cmp r0, #4
	bne _08030500
	movs r0, #5
	b _080305BC
_08030500:
	ldr r0, _08030520 @ =gUnknown_030008A0
	adds r0, #0x2c
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030524
	ldrb r0, [r4, #0x1a]
	cmp r0, #5
	bne _08030524
	movs r0, #6
	b _080305BC
	.align 2, 0
_08030520: .4byte gUnknown_030008A0
_08030524:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #6
	bne _080305BE
	movs r0, #3
	b _080305BC
_08030532:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0803057E
	cmp r2, #0
	bne _0803054A
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x14
	bne _0803054A
	movs r0, #0x15
	b _080305BC
_0803054A:
	ldr r0, _0803056C @ =gUnknown_030008A0
	adds r0, #0x2d
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030570
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x15
	bne _08030570
	movs r0, #0x16
	b _080305BC
	.align 2, 0
_0803056C: .4byte gUnknown_030008A0
_08030570:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x16
	bne _080305BE
	movs r0, #0x13
	b _080305BC
_0803057E:
	cmp r2, #0
	bne _0803058C
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x10
	bne _0803058C
	movs r0, #0x11
	b _080305BC
_0803058C:
	ldr r0, _080305AC @ =gUnknown_030008A0
	adds r0, #0x2d
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080305B0
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x11
	bne _080305B0
	movs r0, #0x12
	b _080305BC
	.align 2, 0
_080305AC: .4byte gUnknown_030008A0
_080305B0:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x12
	bne _080305BE
	movs r0, #0xf
_080305BC:
	strb r0, [r4, #0x1a]
_080305BE:
	adds r0, r4, #0
	bl DisplaySprite
_080305C4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable028
CreateEntity_Interactable028: @ 0x080305D4
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
	bl CreateEntity_Interactables028_and_071
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable071
CreateEntity_Interactable071: @ 0x08030600
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
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Interactables028_and_071
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Interactables028_and_071
TaskDestructor_Interactables028_and_071: @ 0x0803062C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
