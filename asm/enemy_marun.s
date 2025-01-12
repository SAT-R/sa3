.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80636B4
sub_80636B4: @ 0x080636B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x11
	bl VramMalloc
	adds r4, r5, #0
	adds r4, #0x38
	adds r6, r5, #0
	adds r6, #0x2c
	str r0, [r5, #0x38]
	ldr r1, _08063750 @ =gUnknown_080D210C
	ldrh r0, [r1]
	movs r3, #0
	movs r7, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063754 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08063722
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
_08063722:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	strh r7, [r5, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063750: .4byte gUnknown_080D210C
_08063754: .4byte gCamera

	thumb_func_start sub_8063758
sub_8063758: @ 0x08063758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080637F8 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r1, _080637FC @ =0x03000024
	adds r0, r6, r1
	ldr r2, _08063800 @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063804 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063808 @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
	ldr r0, _0806380C @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063828
	cmp r1, #4
	beq _08063828
	mov r0, r8
	bl sub_8063C98
	mov sb, r0
	cmp r0, #1
	bne _08063828
	mov r0, r8
	ldrh r7, [r0, #4]
	cmp r7, #0
	bne _08063828
	ldr r1, _08063810 @ =0x03000038
	adds r4, r6, r1
	ldr r1, _08063814 @ =gUnknown_080D210C
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, sp
	strh r7, [r0]
	ldr r2, _08063818 @ =0x03000064
	adds r1, r6, r2
	ldr r5, _0806381C @ =0x01000002
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	ldr r3, _08063820 @ =0x0300005C
	adds r1, r6, r3
	adds r2, r5, #0
	bl CpuSet
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sb
	mov r4, r8
	strb r0, [r4, #8]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08063824 @ =sub_8063858
	str r0, [r1, #8]
	b _08063846
	.align 2, 0
_080637F8: .4byte gCurTask
_080637FC: .4byte 0x03000024
_08063800: .4byte 0x0300001C
_08063804: .4byte 0x0300000C
_08063808: .4byte 0x03000009
_0806380C: .4byte gStageData
_08063810: .4byte 0x03000038
_08063814: .4byte gUnknown_080D210C
_08063818: .4byte 0x03000064
_0806381C: .4byte 0x01000002
_08063820: .4byte 0x0300005C
_08063824: .4byte sub_8063858
_08063828:
	mov r0, r8
	bl sub_8063D38
	cmp r0, #1
	bne _08063840
	ldr r0, _0806383C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08063846
	.align 2, 0
_0806383C: .4byte gCurTask
_08063840:
	mov r0, r8
	bl sub_8063E5C
_08063846:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063858
sub_8063858: @ 0x08063858
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080638F4 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080638F8 @ =0x03000024
	adds r0, r6, r1
	ldr r2, _080638FC @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063900 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063904 @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
	ldr r0, _08063908 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063928
	cmp r1, #4
	beq _08063928
	adds r0, r5, #0
	bl sub_8063E5C
	adds r7, r0, #0
	cmp r7, #0
	bne _08063928
	ldr r0, _0806390C @ =0x03000038
	adds r4, r6, r0
	ldr r1, _08063910 @ =gUnknown_080D210C
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x6a
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #0x24]
	ldr r1, _08063914 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x24]
	mov r0, sp
	strh r7, [r0]
	ldr r2, _08063918 @ =0x03000064
	adds r1, r6, r2
	ldr r5, _0806391C @ =0x01000002
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	ldr r3, _08063920 @ =0x0300005C
	adds r1, r6, r3
	adds r2, r5, #0
	bl CpuSet
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r4, r8
	ldr r1, [r4]
	ldr r0, _08063924 @ =sub_806394C
	str r0, [r1, #8]
	b _0806393A
	.align 2, 0
_080638F4: .4byte gCurTask
_080638F8: .4byte 0x03000024
_080638FC: .4byte 0x0300001C
_08063900: .4byte 0x0300000C
_08063904: .4byte 0x03000009
_08063908: .4byte gStageData
_0806390C: .4byte 0x03000038
_08063910: .4byte gUnknown_080D210C
_08063914: .4byte 0xFFFFF000
_08063918: .4byte 0x03000064
_0806391C: .4byte 0x01000002
_08063920: .4byte 0x0300005C
_08063924: .4byte sub_806394C
_08063928:
	adds r0, r5, #0
	bl sub_8063D38
	cmp r0, #1
	bne _0806393A
	ldr r0, _08063948 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0806393A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063948: .4byte gCurTask

	thumb_func_start sub_806394C
sub_806394C: @ 0x0806394C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _080639AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r0, r5, #0
	bl sub_8063BB8
	ldr r0, [r5, #0x24]
	asrs r2, r0, #8
	ldr r0, [r5, #0x28]
	asrs r1, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080639B4
	subs r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	str r4, [sp]
	ldr r0, _080639B0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #1
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080639E6
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	b _080639DA
	.align 2, 0
_080639AC: .4byte gCurTask
_080639B0: .4byte sub_805203C
_080639B4:
	adds r0, r2, #0
	adds r0, #8
	subs r1, #8
	str r4, [sp]
	ldr r2, _08063A68 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080639E6
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	ldr r1, _08063A6C @ =0xFFFFF800
_080639DA:
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #1
	strb r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x14]
_080639E6:
	ldr r0, _08063A70 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063AB4
	cmp r1, #4
	beq _08063AB4
	ldrh r0, [r5, #0x12]
	adds r0, #1
	movs r7, #0
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bgt _08063A10
	lsls r0, r4, #0x18
	cmp r0, #0
	bge _08063AB4
_08063A10:
	adds r6, r5, #0
	adds r6, #0x38
	ldr r1, _08063A74 @ =gUnknown_080D210C
	ldrh r0, [r1, #0x18]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	add r0, sp, #8
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x64
	ldr r4, _08063A78 @ =0x01000002
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #0xa
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x5c
	adds r2, r4, #0
	bl CpuSet
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08063A58
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08063A58:
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08063A7C
	ldr r0, [r5, #0x24]
	movs r1, #0x98
	lsls r1, r1, #5
	b _08063A82
	.align 2, 0
_08063A68: .4byte sub_805203C
_08063A6C: .4byte 0xFFFFF800
_08063A70: .4byte gStageData
_08063A74: .4byte gUnknown_080D210C
_08063A78: .4byte 0x01000002
_08063A7C:
	ldr r0, [r5, #0x24]
	movs r1, #0xd0
	lsls r1, r1, #4
_08063A82:
	adds r0, r0, r1
	str r0, [r5, #0x24]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r2, #0
	movs r1, #0
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	strb r2, [r5, #8]
	movs r0, #1
	strb r0, [r5, #5]
	ldr r0, _08063AAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08063AB0 @ =sub_8063ADC
	str r0, [r1, #8]
	b _08063AD2
	.align 2, 0
_08063AAC: .4byte gCurTask
_08063AB0: .4byte sub_8063ADC
_08063AB4:
	adds r0, r5, #0
	bl sub_8063D38
	cmp r0, #1
	bne _08063ACC
	ldr r0, _08063AC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08063AD2
	.align 2, 0
_08063AC8: .4byte gCurTask
_08063ACC:
	adds r0, r5, #0
	bl sub_8063E5C
_08063AD2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063ADC
sub_8063ADC: @ 0x08063ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08063B6C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08063B0E
	ldr r1, _08063B70 @ =0x03000024
	adds r0, r6, r1
	ldr r2, _08063B74 @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063B78 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063B7C @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
_08063B0E:
	adds r0, r7, #0
	bl sub_8063E5C
	adds r5, r0, #0
	cmp r5, #0
	bne _08063B98
	ldr r0, _08063B80 @ =0x03000038
	adds r4, r6, r0
	ldr r1, _08063B84 @ =gUnknown_080D210C
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _08063B88 @ =0x03000064
	adds r1, r6, r2
	ldr r3, _08063B8C @ =0x01000002
	mov r8, r3
	mov r2, r8
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r2, _08063B90 @ =0x0300005C
	adds r1, r6, r2
	mov r2, r8
	bl CpuSet
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r7, #0x14]
	str r5, [r7, #0x18]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _08063B94 @ =sub_8063758
	str r0, [r1, #8]
	b _08063BAA
	.align 2, 0
_08063B6C: .4byte gCurTask
_08063B70: .4byte 0x03000024
_08063B74: .4byte 0x0300001C
_08063B78: .4byte 0x0300000C
_08063B7C: .4byte 0x03000009
_08063B80: .4byte 0x03000038
_08063B84: .4byte gUnknown_080D210C
_08063B88: .4byte 0x03000064
_08063B8C: .4byte 0x01000002
_08063B90: .4byte 0x0300005C
_08063B94: .4byte sub_8063758
_08063B98:
	adds r0, r7, #0
	bl sub_8063D38
	cmp r0, #1
	bne _08063BAA
	mov r4, sb
	ldr r0, [r4]
	bl TaskDestroy
_08063BAA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8063BB8
sub_8063BB8: @ 0x08063BB8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08063BDA
	ldr r0, [r4, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	adds r0, #0x10
	b _08063BEA
_08063BDA:
	ldr r0, [r4, #0x24]
	ldr r1, _08063C64 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	subs r0, #0x10
_08063BEA:
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	asrs r2, r0, #8
	ldr r0, [r4, #0x28]
	asrs r1, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r6, #0
	str r6, [sp]
	ldr r5, _08063C68 @ =sub_805217C
	str r5, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	movs r1, #0
	cmp r0, #0
	ble _08063C1C
	movs r1, #1
_08063C1C:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08063C6C
	lsls r1, r1, #8
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	asrs r2, r1, #8
	asrs r1, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r6, [sp]
	str r5, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	ble _08063C82
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	adds r1, #0x20
	str r1, [r4, #0x18]
	b _08063C82
	.align 2, 0
_08063C64: .4byte 0xFFFFFF00
_08063C68: .4byte sub_805217C
_08063C6C:
	str r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x24
	adds r1, r4, #0
	adds r1, #0x1c
	adds r2, r4, #0
	adds r2, #0xc
	adds r3, r4, #0
	adds r3, #9
	bl sub_805CD70
_08063C82:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _08063C8C
	subs r0, #4
	b _08063C8E
_08063C8C:
	movs r0, #0
_08063C8E:
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8063C98
sub_8063C98: @ 0x08063C98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0x38
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r0, #0x24]
	asrs r7, r1, #8
	ldr r1, [r0, #0x28]
	asrs r4, r1, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r4, r4, r0
	movs r6, #0
	b _08063D1A
_08063CBC:
	mov r0, r8
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	adds r5, r1, #0
	ldr r1, [r3, #0x10]
	cmp r0, #0
	beq _08063CF4
	asrs r0, r1, #8
	subs r0, r0, r7
	subs r0, #1
	cmp r0, #0x4e
	bhi _08063CEA
	ldr r0, [r3, #0x14]
	asrs r2, r0, #8
	adds r0, r4, #0
	adds r0, #0x50
	cmp r2, r0
	bge _08063CEA
	subs r0, #0x60
	cmp r2, r0
	bgt _08063D10
_08063CEA:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08063D14
_08063CF4:
	asrs r0, r1, #8
	subs r0, r7, r0
	subs r0, #1
	cmp r0, #0x4e
	bhi _08063D14
	ldr r0, [r3, #0x14]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x50
	cmp r1, r0
	bge _08063D14
	subs r0, #0x60
	cmp r1, r0
	ble _08063D14
_08063D10:
	movs r0, #1
	b _08063D2C
_08063D14:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08063D1A:
	cmp r6, #1
	bhi _08063D2A
	adds r0, r6, #0
	bl sub_805CD20
	adds r3, r0, #0
	cmp r3, #0
	bne _08063CBC
_08063D2A:
	movs r0, #0
_08063D2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8063D38
sub_8063D38: @ 0x08063D38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #1
	beq _08063DA0
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r0, [r5]
	subs r0, #0x10
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x5d
	ldrb r0, [r4]
	subs r0, #0x10
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5e
	ldrb r0, [r3]
	subs r0, #0x10
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5f
	ldrb r0, [r2]
	subs r0, #0x10
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	mov r8, r5
	adds r7, r4, #0
	adds r5, r3, #0
	adds r4, r2, #0
	cmp r0, #1
	bne _08063DC4
_08063DA0:
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #0xfc
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5d
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5e
	movs r0, #4
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5f
	strb r0, [r1]
	mov r8, r4
	adds r7, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
_08063DC4:
	adds r0, r6, #0
	mov r1, sp
	bl sub_8063EDC
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r6, #0xc]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #7]
	strb r0, [r1, #8]
	mov r0, sp
	str r2, [sp, #0x28]
	bl sub_805C280
	adds r3, r0, #0
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0x28]
	cmp r0, #1
	beq _08063E44
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7]
	adds r0, #0x10
	strb r0, [r7]
	ldrb r0, [r5]
	adds r0, #0x10
	strb r0, [r5]
	ldrb r0, [r4]
	adds r0, #0x10
	strb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	cmp r0, #1
	bne _08063E4E
_08063E44:
	mov r0, r8
	strb r2, [r0]
	strb r2, [r7]
	strb r2, [r5]
	strb r2, [r4]
_08063E4E:
	adds r0, r3, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8063E5C
sub_8063E5C: @ 0x08063E5C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x38
	adds r4, r3, #0
	adds r4, #0x2c
	ldr r1, [r3, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063EA4 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r2, _08063EA8 @ =gUnknown_080D210C
	ldrh r0, [r5, #0xc]
	ldrh r6, [r2, #0x10]
	cmp r0, r6
	bne _08063EAC
	ldrb r0, [r5, #0x1a]
	ldrb r2, [r2, #0x12]
	cmp r0, r2
	bne _08063EAC
	adds r0, r1, #0
	subs r0, #0xb
	b _08063EB0
	.align 2, 0
_08063EA4: .4byte gCamera
_08063EA8: .4byte gUnknown_080D210C
_08063EAC:
	ldrh r0, [r5, #0x12]
	adds r0, #6
_08063EB0:
	strh r0, [r5, #0x12]
	ldrh r0, [r3, #0x10]
	strh r0, [r4]
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r4, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8063EDC
sub_8063EDC: @ 0x08063EDC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8063F08
sub_8063F08: @ 0x08063F08
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0
