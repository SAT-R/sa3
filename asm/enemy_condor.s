.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Condor
CreateEntity_Condor: @ 0x08058E70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08058EEC @ =Task_Condor
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08058EF0 @ =TaskDestructor_Condor
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r2, [r7, #6]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x28]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x2c]
	str r1, [r7, #0x20]
	str r0, [r7, #0x24]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x30]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x34]
	strh r2, [r7, #8]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08058EF4
	movs r0, #0xff
	b _08058EF6
	.align 2, 0
_08058EEC: .4byte Task_Condor
_08058EF0: .4byte TaskDestructor_Condor
_08058EF4:
	movs r0, #1
_08058EF6:
	strb r0, [r7, #0xe]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r2, _08058F28 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r7, #0
	bl sub_8058F2C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058F28: .4byte 0x01000002

	thumb_func_start sub_8058F2C
sub_8058F2C: @ 0x08058F2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x38
	str r0, [r4, #0x38]
	ldr r1, _08058FA8 @ =gUnknown_080D1E54
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08058FAC @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08058F96
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08058F96:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058FA8: .4byte gUnknown_080D1E54
_08058FAC: .4byte gCamera

	thumb_func_start Task_Condor
Task_Condor: @ 0x08058FB0
	push {r4, lr}
	ldr r0, _08058FEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08058FF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08058FD6
	cmp r1, #4
	beq _08058FD6
	adds r0, r4, #0
	bl sub_80595FC
_08058FD6:
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08058FF4
	ldr r0, _08058FEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08059058
	.align 2, 0
_08058FEC: .4byte gCurTask
_08058FF0: .4byte gUnknown_030008A0
_08058FF4:
	adds r0, r4, #0
	bl sub_8059640
	adds r0, r4, #0
	bl sub_805933C
	cmp r0, #1
	bne _08059034
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08059034
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _08059028 @ =gUnknown_080D1E54
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x1c]
	ldr r0, _0805902C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059030 @ =sub_805906C
	b _08059056
	.align 2, 0
_08059028: .4byte gUnknown_080D1E54
_0805902C: .4byte gCurTask
_08059030: .4byte sub_805906C
_08059034:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _08059042
	ldr r0, [r4, #0x34]
	cmp r1, r0
	blt _08059058
_08059042:
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _08059060 @ =gUnknown_080D1E54
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _08059064 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059068 @ =sub_80590E4
_08059056:
	str r0, [r1, #8]
_08059058:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059060: .4byte gUnknown_080D1E54
_08059064: .4byte gCurTask
_08059068: .4byte sub_80590E4

	thumb_func_start sub_805906C
sub_805906C: @ 0x0805906C
	push {r4, r5, r6, lr}
	ldr r6, _08059094 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059640
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059098
	ldr r0, [r6]
	bl TaskDestroy
	b _080590CC
	.align 2, 0
_08059094: .4byte gCurTask
_08059098:
	ldr r0, _080590D4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080590CC
	cmp r1, #4
	beq _080590CC
	adds r0, r4, #0
	bl sub_805928C
	adds r3, r0, #0
	cmp r3, #1
	bne _080590CC
	ldr r0, _080590D8 @ =0x03000038
	adds r2, r5, r0
	ldr r1, _080590DC @ =gUnknown_080D1E54
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	strb r3, [r4, #6]
	ldr r1, [r6]
	ldr r0, _080590E0 @ =sub_8059164
	str r0, [r1, #8]
_080590CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080590D4: .4byte gUnknown_030008A0
_080590D8: .4byte 0x03000038
_080590DC: .4byte gUnknown_080D1E54
_080590E0: .4byte sub_8059164

	thumb_func_start sub_80590E4
sub_80590E4: @ 0x080590E4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805910C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	bl sub_8059640
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059110
	ldr r0, [r7]
	bl TaskDestroy
	b _08059154
	.align 2, 0
_0805910C: .4byte gCurTask
_08059110:
	cmp r4, #0
	bne _08059154
	ldr r0, _08059138 @ =0x03000038
	adds r2, r6, r0
	ldr r1, _0805913C @ =gUnknown_080D1E54
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059144
	ldr r0, _08059140 @ =0xFFFFFBFF
	ands r1, r0
	b _08059146
	.align 2, 0
_08059138: .4byte 0x03000038
_0805913C: .4byte gUnknown_080D1E54
_08059140: .4byte 0xFFFFFBFF
_08059144:
	orrs r1, r3
_08059146:
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r5, #6]
	ldr r0, _0805915C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059160 @ =Task_Condor
	str r0, [r1, #8]
_08059154:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805915C: .4byte gCurTask
_08059160: .4byte Task_Condor

	thumb_func_start sub_8059164
sub_8059164: @ 0x08059164
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805918C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059640
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059190
	ldr r0, [r7]
	bl TaskDestroy
	b _080591FC
	.align 2, 0
_0805918C: .4byte gCurTask
_08059190:
	cmp r6, #0
	bne _080591FC
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	ble _080591E8
	ldr r0, _080591D8 @ =0x03000038
	adds r2, r5, r0
	ldr r0, _080591DC @ =gUnknown_080D1E54
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	bl CreateCondorProjectile
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	blt _080591CE
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bgt _080591CE
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
_080591CE:
	str r0, [r4, #0x18]
	ldr r0, _080591E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080591E4 @ =sub_8059210
	b _080591FA
	.align 2, 0
_080591D8: .4byte 0x03000038
_080591DC: .4byte gUnknown_080D1E54
_080591E0: .4byte gCurTask
_080591E4: .4byte sub_8059210
_080591E8:
	ldr r0, _08059204 @ =0x03000038
	adds r2, r5, r0
	ldr r1, _08059208 @ =gUnknown_080D1E54
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805920C @ =Task_Condor
_080591FA:
	str r0, [r1, #8]
_080591FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059204: .4byte 0x03000038
_08059208: .4byte gUnknown_080D1E54
_0805920C: .4byte Task_Condor

	thumb_func_start sub_8059210
sub_8059210: @ 0x08059210
	push {r4, r5, r6, lr}
	ldr r6, _08059230 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80596B0
	cmp r0, #1
	bne _08059234
	ldr r0, [r6]
	bl TaskDestroy
	b _08059286
	.align 2, 0
_08059230: .4byte gCurTask
_08059234:
	ldr r0, _08059270 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059280
	cmp r1, #4
	beq _08059280
	adds r0, r4, #0
	bl sub_80592E0
	cmp r0, #1
	bne _08059280
	ldr r0, _08059274 @ =0x03000038
	adds r2, r5, r0
	ldr r0, _08059278 @ =gUnknown_080D1E54
	ldrh r1, [r0, #0x28]
	strh r1, [r2, #0xc]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	adds r0, r4, #0
	bl sub_8059640
	ldr r1, [r6]
	ldr r0, _0805927C @ =sub_8059164
	str r0, [r1, #8]
	b _08059286
	.align 2, 0
_08059270: .4byte gUnknown_030008A0
_08059274: .4byte 0x03000038
_08059278: .4byte gUnknown_080D1E54
_0805927C: .4byte sub_8059164
_08059280:
	adds r0, r4, #0
	bl sub_8059640
_08059286:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805928C
sub_805928C: @ 0x0805928C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, [r0, #0x18]
	str r6, [sp]
	ldr r4, [r0, #0x1c]
	str r4, [sp, #4]
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #0x10
	ldr r3, [r0, #0x10]
	subs r3, r3, r1
	str r3, [sp, #8]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #0x10
	ldr r1, [r0, #0x14]
	subs r1, r1, r2
	str r1, [sp, #0xc]
	subs r1, r1, r4
	asrs r1, r1, #6
	ldrh r2, [r0, #8]
	lsrs r5, r2, #6
	muls r1, r5, r1
	adds r4, r4, r1
	str r4, [r0, #0x2c]
	subs r3, r3, r6
	asrs r3, r3, #6
	adds r1, r3, #0
	muls r1, r5, r1
	adds r6, r6, r1
	str r6, [r0, #0x28]
	adds r2, #0x80
	strh r2, [r0, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x16
	cmp r2, #0x3f
	bhi _080592D6
	movs r0, #0
	b _080592D8
_080592D6:
	movs r0, #1
_080592D8:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80592E0
sub_80592E0: @ 0x080592E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r5, [r6, #0x18]
	str r5, [sp]
	ldr r3, [r6, #0x1c]
	str r3, [sp, #4]
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #0x10
	ldr r2, [r6, #0x10]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r1, [r6, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r0, r0, r3
	asrs r0, r0, #6
	ldrh r1, [r6, #8]
	lsrs r4, r1, #6
	muls r0, r4, r0
	adds r3, r3, r0
	str r3, [r6, #0x2c]
	subs r2, r2, r5
	asrs r2, r2, #6
	adds r0, r2, #0
	muls r0, r4, r0
	adds r5, r5, r0
	str r5, [r6, #0x28]
	subs r1, #0x80
	strh r1, [r6, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x16
	cmp r1, #0x3f
	bhi _0805932C
	movs r0, #0
	b _08059332
_0805932C:
	movs r0, #0
	strh r0, [r6, #8]
	movs r0, #1
_08059332:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805933C
sub_805933C: @ 0x0805933C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x38
	str r0, [sp]
	ldr r0, [r7, #0x28]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r7, #0x2c]
	asrs r0, r0, #8
	mov r8, r0
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	add sb, r0
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	add r8, r0
	movs r1, #0
	mov sl, r1
	b _08059426
_0805936C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	mov r3, sb
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _080593D4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _080593A4
	ldr r3, [sp]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080593BE
_080593A4:
	ldr r1, _080593D8 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805941C
	ldr r2, [sp]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805941C
_080593BE:
	ldr r0, [r5, #0x10]
	asrs r2, r0, #8
	mov r3, sb
	subs r1, r3, r2
	adds r6, r0, #0
	cmp r1, #0
	blt _080593DC
	cmp r1, #0x63
	ble _080593E4
	b _0805941C
	.align 2, 0
_080593D4: .4byte 0xFFFF0000
_080593D8: .4byte 0xFFFFFEFF
_080593DC:
	mov r1, sb
	subs r0, r2, r1
	cmp r0, #0x63
	bgt _0805941C
_080593E4:
	mov r3, r8
	adds r3, #0x1a
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	subs r1, r3, r2
	adds r4, r0, #0
	cmp r1, #0
	blt _080593FA
	cmp r1, #0x63
	ble _08059400
	b _0805941C
_080593FA:
	subs r0, r2, r3
	cmp r0, #0x63
	bgt _0805941C
_08059400:
	asrs r0, r4, #8
	subs r0, #0x1a
	cmp r8, r0
	bge _0805941C
	str r6, [r7, #0x10]
	ldr r0, [r5, #0x14]
	ldr r2, _08059418 @ =0xFFFFE600
	adds r0, r0, r2
	str r0, [r7, #0x14]
	movs r0, #1
	b _0805943A
	.align 2, 0
_08059418: .4byte 0xFFFFE600
_0805941C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08059426:
	mov r3, sl
	cmp r3, #1
	bhi _08059438
	mov r0, sl
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805936C
_08059438:
	movs r0, #0
_0805943A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805944C
sub_805944C: @ 0x0805944C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	ldr r2, _080594AC @ =gUnknown_080D1E84
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r3, _080594B0 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080594AC: .4byte gUnknown_080D1E84
_080594B0: .4byte gCamera

	thumb_func_start Task_CondorProjectile
Task_CondorProjectile: @ 0x080594B4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _0805952C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80597A8
	adds r0, r4, #0
	bl sub_80597B4
	adds r0, r4, #0
	bl sub_8059540
	cmp r0, #1
	bne _080594DE
	movs r5, #1
_080594DE:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldrh r2, [r4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #2]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r4, #0
	str r4, [sp]
	ldr r2, _08059530 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _08059508
	movs r5, #1
_08059508:
	cmp r5, #1
	bne _08059522
	ldr r0, _08059534 @ =0x0300000C
	adds r1, r6, r0
	ldr r2, _08059538 @ =gUnknown_080D1E84
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r4, [r1, #8]
	ldr r1, [r7]
	ldr r0, _0805953C @ =sub_8059778
	str r0, [r1, #8]
_08059522:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805952C: .4byte gCurTask
_08059530: .4byte sub_805217C
_08059534: .4byte 0x0300000C
_08059538: .4byte gUnknown_080D1E84
_0805953C: .4byte sub_8059778

	thumb_func_start sub_8059540
sub_8059540: @ 0x08059540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #4]
	asrs r7, r1, #8
	ldr r1, [r0, #8]
	asrs r6, r1, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0xc
	mov r8, r0
	movs r5, #0
_08059564:
	cmp r5, #0
	bne _08059574
	ldr r0, _08059570 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805957E
	.align 2, 0
_08059570: .4byte gUnknown_030008A0
_08059574:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805957E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080595E0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080595E4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080595AC
	cmp r1, #8
	beq _080595AC
	cmp r1, #0x10
	bne _080595E4
_080595AC:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _080595E4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080595DC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_080595DC:
	movs r0, #1
	b _080595F0
	.align 2, 0
_080595E0: .4byte gPlayers
_080595E4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08059564
	movs r0, #0
_080595F0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80595FC
sub_80595FC: @ 0x080595FC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059622
	ldr r0, [r2, #0x28]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bgt _08059636
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x28]
	cmp r0, r1
	ble _08059636
	b _08059634
_08059622:
	ldr r0, [r2, #0x28]
	ldr r1, [r2, #0x30]
	cmp r0, r1
	blt _08059636
	ldr r3, _0805963C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x28]
	cmp r0, r1
	bge _08059636
_08059634:
	str r1, [r2, #0x28]
_08059636:
	pop {r0}
	bx r0
	.align 2, 0
_0805963C: .4byte 0xFFFFFF00

	thumb_func_start sub_8059640
sub_8059640: @ 0x08059640
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x38
	ldr r2, [r0, #0x28]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08059680 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x2c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08059680: .4byte gCamera

	thumb_func_start sub_8059684
sub_8059684: @ 0x08059684
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80596B0
sub_80596B0: @ 0x080596B0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8059684
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Condor
TaskDestructor_Condor: @ 0x080596EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateCondorProjectile
CreateCondorProjectile: @ 0x08059700
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08059764 @ =Task_CondorProjectile
	ldr r2, _08059768 @ =0x00004040
	ldr r1, _0805976C @ =TaskDestructor_CondorProjectile
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, r8
	str r0, [r4, #4]
	mov r0, sb
	str r0, [r4, #8]
	movs r2, #0
	strh r5, [r4]
	strh r6, [r4, #2]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08059770 @ =0x03000038
	adds r1, r1, r0
	ldr r2, _08059774 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r4, #0
	bl sub_805944C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059764: .4byte Task_CondorProjectile
_08059768: .4byte 0x00004040
_0805976C: .4byte TaskDestructor_CondorProjectile
_08059770: .4byte 0x03000038
_08059774: .4byte 0x01000002

	thumb_func_start sub_8059778
sub_8059778: @ 0x08059778
	push {r4, r5, r6, lr}
	ldr r6, _080597A4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80597B4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8059540
	cmp r5, #0
	bne _0805979E
	ldr r0, [r6]
	bl TaskDestroy
_0805979E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080597A4: .4byte gCurTask

	thumb_func_start sub_80597A8
sub_80597A8: @ 0x080597A8
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_80597B4
sub_80597B4: @ 0x080597B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080597F4 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080597F4: .4byte gCamera

	thumb_func_start TaskDestructor_CondorProjectile
TaskDestructor_CondorProjectile: @ 0x080597F8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
