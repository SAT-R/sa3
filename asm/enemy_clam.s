.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Clam
CreateEntity_Clam: @ 0x08063F1C
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
	ldr r0, _08063F8C @ =sub_8064074
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063F90 @ =sub_80646DC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r3, #0
	strb r4, [r7, #5]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #6]
	movs r2, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strb r2, [r7, #7]
	strb r2, [r7, #8]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08063F94
	movs r0, #0xff
	b _08063F96
	.align 2, 0
_08063F8C: .4byte sub_8064074
_08063F90: .4byte sub_80646DC
_08063F94:
	movs r0, #1
_08063F96:
	strb r0, [r7, #9]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08063FAA
	movs r0, #1
_08063FAA:
	strb r0, [r7, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, _08063FDC @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r7, #0
	bl sub_8063FE0
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063FDC: .4byte 0x01000002

	thumb_func_start sub_8063FE0
sub_8063FE0: @ 0x08063FE0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r5, r6, #0
	adds r5, #0x20
	str r0, [r6, #0x20]
	ldr r1, _0806406C @ =gUnknown_080D212C
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08064070 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r0, #9
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0806404A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_0806404A:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0806405A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_0806405A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806406C: .4byte gUnknown_080D212C
_08064070: .4byte gCamera

	thumb_func_start sub_8064074
sub_8064074: @ 0x08064074
	push {r4, lr}
	ldr r0, _0806409C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080640A4
	ldr r1, _080640A0 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _080640B6
	.align 2, 0
_0806409C: .4byte gCurTask
_080640A0: .4byte 0x03000018
_080640A4:
	ldr r2, _080640D0 @ =0x03000018
	adds r0, r3, r2
	ldr r1, _080640D4 @ =0x0300000A
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_080640B6:
	adds r0, r4, #0
	bl sub_80645D8
	adds r0, r4, #0
	bl sub_806461C
	cmp r0, #1
	bne _080640DC
	ldr r0, _080640D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806413A
	.align 2, 0
_080640D0: .4byte 0x03000018
_080640D4: .4byte 0x0300000A
_080640D8: .4byte gCurTask
_080640DC:
	ldr r0, _0806411C @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806413A
	cmp r1, #4
	beq _0806413A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0806412C
	adds r0, r4, #0
	bl sub_8064684
	cmp r0, #1
	bne _0806412C
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _08064120 @ =gUnknown_080D212C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _08064124 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064128 @ =sub_8064140
	str r0, [r1, #8]
	b _0806413A
	.align 2, 0
_0806411C: .4byte gStageData
_08064120: .4byte gUnknown_080D212C
_08064124: .4byte gCurTask
_08064128: .4byte sub_8064140
_0806412C:
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0806413A
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0806413A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8064140
sub_8064140: @ 0x08064140
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0806416C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08064174
	ldr r1, _08064170 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _08064186
	.align 2, 0
_0806416C: .4byte gCurTask
_08064170: .4byte 0x03000018
_08064174:
	ldr r1, _080641D8 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_08064186:
	adds r0, r5, #0
	bl sub_80645D8
	adds r2, r0, #0
	ldr r0, _080641DC @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064222
	cmp r1, #4
	beq _08064222
	cmp r2, #0
	bne _08064210
	adds r1, r5, #0
	adds r1, #0x20
	ldr r3, _080641E0 @ =gUnknown_080D212C
	ldrh r0, [r3, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrb r0, [r5, #7]
	cmp r0, #3
	bne _080641EC
	ldrh r0, [r3, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x12]
	strb r0, [r1, #0x1a]
	orrs r2, r4
	strb r2, [r1, #0x1b]
	ldr r0, _080641E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080641E8 @ =sub_8064230
	str r0, [r1, #8]
	b _08064222
	.align 2, 0
_080641D8: .4byte 0x03000018
_080641DC: .4byte gStageData
_080641E0: .4byte gUnknown_080D212C
_080641E4: .4byte gCurTask
_080641E8: .4byte sub_8064230
_080641EC:
	ldr r4, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	str r4, [sp]
	ldrb r4, [r5, #4]
	str r4, [sp, #4]
	bl sub_80646F0
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_08064210:
	adds r0, r5, #0
	bl sub_806461C
	cmp r0, #1
	bne _08064222
	ldr r0, _0806422C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064222:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806422C: .4byte gCurTask

	thumb_func_start sub_8064230
sub_8064230: @ 0x08064230
	push {r4, r5, lr}
	ldr r0, _08064258 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08064260
	ldr r1, _0806425C @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _08064272
	.align 2, 0
_08064258: .4byte gCurTask
_0806425C: .4byte 0x03000018
_08064260:
	ldr r1, _080642D0 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_08064272:
	adds r0, r4, #0
	bl sub_80645D8
	adds r2, r0, #0
	ldr r0, _080642D4 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080642FA
	cmp r1, #4
	beq _080642FA
	cmp r2, #0
	bne _080642E8
	adds r2, r4, #0
	adds r2, #0x20
	ldr r3, _080642D8 @ =gUnknown_080D212C
	ldrh r0, [r3, #0x20]
	strh r0, [r2, #0xc]
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r0, #0
	movs r1, #0xff
	strb r1, [r2, #0x1b]
	ldrb r0, [r4, #7]
	cmp r0, #4
	bne _080642E4
	ldrh r0, [r3]
	strh r0, [r2, #0xc]
	ldrb r0, [r3, #2]
	strb r0, [r2, #0x1a]
	orrs r1, r5
	strb r1, [r2, #0x1b]
	movs r0, #0x78
	strh r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #7]
	ldr r0, _080642DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080642E0 @ =sub_8064074
	str r0, [r1, #8]
	b _080642FA
	.align 2, 0
_080642D0: .4byte 0x03000018
_080642D4: .4byte gStageData
_080642D8: .4byte gUnknown_080D212C
_080642DC: .4byte gCurTask
_080642E0: .4byte sub_8064074
_080642E4:
	adds r0, #1
	strb r0, [r4, #7]
_080642E8:
	adds r0, r4, #0
	bl sub_806461C
	cmp r0, #1
	bne _080642FA
	ldr r0, _08064300 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080642FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064300: .4byte gCurTask

	thumb_func_start sub_8064304
sub_8064304: @ 0x08064304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x1c
	str r1, [r4, #0x1c]
	ldr r1, _08064374 @ =gUnknown_080D212C
	ldrh r2, [r1, #0x28]
	movs r6, #0
	movs r5, #0
	strh r2, [r0, #0xc]
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r4, #2]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08064378 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
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
_08064374: .4byte gUnknown_080D212C
_08064378: .4byte gCamera

	thumb_func_start sub_806437C
sub_806437C: @ 0x0806437C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r6, #6
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08064396
	ldrb r0, [r5]
	movs r4, #0x60
	cmp r0, #0
	beq _080643A0
	adds r4, #0xc0
	b _080643A0
_08064396:
	ldrb r0, [r5]
	movs r4, #0xa0
	cmp r0, #0
	beq _080643A0
	movs r4, #0xe0
_080643A0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, _0806441C @ =gUnknown_082B48B4
	movs r1, #0xff
	ands r1, r4
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r4, #0x60
	beq _080643E2
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	bne _080643EA
_080643E2:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	str r0, [sp, #8]
_080643EA:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [sp, #0xc]
	subs r0, r0, r1
	asrs r0, r6
	ldr r3, [r5, #8]
	asrs r4, r3, #6
	muls r0, r4, r0
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldr r0, [sp, #8]
	subs r0, r0, r2
	asrs r0, r6
	muls r0, r4, r0
	adds r2, r2, r0
	str r2, [r5, #0x14]
	movs r0, #2
	lsls r0, r0, #8
	adds r3, r3, r0
	str r3, [r5, #8]
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806441C: .4byte gUnknown_082B48B4

	thumb_func_start sub_8064420
sub_8064420: @ 0x08064420
	push {r4, r5, lr}
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldrh r2, [r0, #2]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08064480 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	ldr r4, [r0, #0x14]
	asrs r2, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r2, [r0, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r3, #4]
	subs r1, r1, r2
	ldr r2, [r0, #0x18]
	asrs r0, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r2, #0
	bge _08064462
	rsbs r2, r2, #0
_08064462:
	ldr r0, _08064484 @ =0x00008BFF
	cmp r2, r0
	ble _08064474
	adds r2, r4, #0
	cmp r2, #0
	bge _08064470
	rsbs r2, r2, #0
_08064470:
	cmp r2, r0
	bgt _0806447C
_08064474:
	cmp r5, #0xf0
	bhi _0806447C
	cmp r1, #0xa0
	bls _08064488
_0806447C:
	movs r0, #1
	b _0806448A
	.align 2, 0
_08064480: .4byte gCamera
_08064484: .4byte 0x00008BFF
_08064488:
	movs r0, #0
_0806448A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8064490
sub_8064490: @ 0x08064490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r3, r0, #0
	movs r7, #0
	movs r0, #0x1c
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r3, #0xc]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r4, r1, r0
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	adds r4, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080644C8
	adds r1, r5, #0
	adds r1, #0x14
	b _080644CC
_080644C8:
	adds r1, r5, #0
	subs r1, #0x14
_080644CC:
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	adds r5, r1, r0
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080644EE
	adds r4, #0xa
	b _080644F0
_080644DC:
	str r7, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
	movs r0, #1
	b _08064558
_080644EE:
	subs r4, #0xa
_080644F0:
	movs r6, #0
_080644F2:
	cmp r6, #0
	bne _08064500
	ldr r0, _080644FC @ =gStageData
	ldrb r1, [r0, #6]
	b _0806450A
	.align 2, 0
_080644FC: .4byte gStageData
_08064500:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806450A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064548 @ =gPlayers
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _0806454C
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806454C
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080644DC
	movs r0, #1
	b _08064558
	.align 2, 0
_08064548: .4byte gPlayers
_0806454C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080644F2
	movs r0, #0
_08064558:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8064564
sub_8064564: @ 0x08064564
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x1c
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080645A0 @ =gCamera
	ldr r0, [r3]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x10]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080645A4
	adds r1, #0x14
	b _080645A6
	.align 2, 0
_080645A0: .4byte gCamera
_080645A4:
	subs r1, #0x14
_080645A6:
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r5, #0x12]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _080645BA
	ldrh r0, [r5, #0x10]
	adds r0, #0xa
	b _080645BE
_080645BA:
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
_080645BE:
	strh r0, [r5, #0x10]
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

	thumb_func_start sub_80645D8
sub_80645D8: @ 0x080645D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08064618 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
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
_08064618: .4byte gCamera

	thumb_func_start sub_806461C
sub_806461C: @ 0x0806461C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8064658
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8064658
sub_8064658: @ 0x08064658
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_8064684
sub_8064684: @ 0x08064684
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x20
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _080646C2
_08064698:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080646AC
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _080646B2
_080646AC:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_080646B2:
	subs r0, #1
	cmp r0, #0x76
	bhi _080646BC
	movs r0, #1
	b _080646D4
_080646BC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080646C2:
	cmp r4, #1
	bhi _080646D2
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _08064698
_080646D2:
	movs r0, #0
_080646D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80646DC
sub_80646DC: @ 0x080646DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80646F0
sub_80646F0: @ 0x080646F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	str r1, [sp, #8]
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x30]
	mov sl, r0
	ldr r6, [sp, #0x34]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08064798 @ =sub_80647B0
	ldr r2, _0806479C @ =0x00004040
	ldr r1, _080647A0 @ =sub_8064804
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	movs r5, #0
	strb r6, [r4]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	mov r1, r8
	strh r1, [r4, #2]
	mov r0, sb
	strh r0, [r4, #4]
	mov r1, sl
	strb r1, [r4, #1]
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080647A4 @ =0x03000048
	adds r1, r3, r0
	ldr r6, _080647A8 @ =0x01000002
	add r0, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #0xc]
	ldr r1, _080647AC @ =0x03000040
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl CpuSet
	adds r0, r4, #0
	bl sub_8064304
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064798: .4byte sub_80647B0
_0806479C: .4byte 0x00004040
_080647A0: .4byte sub_8064804
_080647A4: .4byte 0x03000048
_080647A8: .4byte 0x01000002
_080647AC: .4byte 0x03000040

	thumb_func_start sub_80647B0
sub_80647B0: @ 0x080647B0
	push {r4, lr}
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08064800 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080647D6
	cmp r1, #4
	beq _080647D6
	adds r0, r4, #0
	bl sub_806437C
_080647D6:
	adds r0, r4, #0
	bl sub_8064564
	adds r0, r4, #0
	bl sub_8064490
	adds r0, r4, #0
	bl sub_8064420
	cmp r0, #1
	bne _080647F4
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080647F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080647FC: .4byte gCurTask
_08064800: .4byte gStageData

	thumb_func_start sub_8064804
sub_8064804: @ 0x08064804
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0
