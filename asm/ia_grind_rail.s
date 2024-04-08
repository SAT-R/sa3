.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
    .global gUnknown_08E2DEF4
gUnknown_08E2DEF4:
    .incbin "baserom.gba", 0x00E2DEF4, 0x240

    .global gUnknown_08E2E134
gUnknown_08E2E134:
    .incbin "baserom.gba", 0x00E2E134, 0x14C

    .global gUnknown_08E2E280
gUnknown_08E2E280:
    .incbin "baserom.gba", 0x00E2E280, 0x2D0

    .global gUnknown_08E2E550
gUnknown_08E2E550:
    .incbin "baserom.gba", 0x00E2E550, 0x14C

.text
.syntax unified
.arm

	thumb_func_start sub_8039198
sub_8039198: @ 0x08039198
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803922C @ =sub_8039230
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r0, [r7, #7]
	lsrs r0, r0, #6
	strb r0, [r2, #0xc]
	movs r3, #0
	ldrb r0, [r7, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803920E
	movs r4, #1
_080391F4:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _0803920E
	ldrb r0, [r7, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080391F4
_0803920E:
	adds r0, r3, #1
	strb r0, [r2, #0xd]
	mov r0, r8
	strb r0, [r2, #0xe]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803922C: .4byte sub_8039230

	thumb_func_start sub_8039230
sub_8039230: @ 0x08039230
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _080392D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	mov sb, r0
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	mov r3, sb
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	mov r3, sb
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	str r0, [sp, #0x1c]
	mov r3, sb
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r0, r2, r0
	str r0, [sp, #0x10]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	str r0, [sp, #0x18]
	asrs r2, r2, #8
	ldr r3, _080392D4 @ =gCamera
	ldr r0, [r3]
	subs r2, r2, r0
	asrs r1, r1, #8
	ldr r0, [r3, #4]
	subs r1, r1, r0
	adds r2, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080392BE
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _080392BE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080392D8
_080392BE:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _08039526
	.align 2, 0
_080392D0: .4byte gCurTask
_080392D4: .4byte gCamera
_080392D8:
	movs r3, #0
	str r3, [sp, #0xc]
_080392DC:
	ldr r1, _0803930C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _080392EC
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _080392EC
	b _0803951A
_080392EC:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _08039314
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08039310 @ =gPlayers
	adds r5, r0, r1
	b _08039326
	.align 2, 0
_0803930C: .4byte gStageData
_08039310: .4byte gPlayers
_08039314:
	ldr r1, _080393C4 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _080393C8 @ =gPlayers
	adds r5, r1, r0
_08039326:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803933E
	cmp r1, #8
	beq _0803933E
	cmp r1, #0x10
	beq _0803933E
	b _0803951A
_0803933E:
	ldr r2, [r5, #4]
	ldr r0, _080393CC @ =0x01000100
	ands r0, r2
	cmp r0, #0
	beq _0803934A
	b _0803951A
_0803934A:
	ldr r1, [r5]
	ldr r0, _080393D0 @ =sub_800DDD0
	cmp r1, r0
	bne _08039354
	b _0803951A
_08039354:
	ldr r0, _080393D4 @ =sub_800DCB4
	cmp r1, r0
	bne _0803935C
	b _0803951A
_0803935C:
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0803936E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803936E
	b _0803951A
_0803936E:
	ldrh r0, [r5, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0803937C
	b _0803951A
_0803937C:
	mov r1, r8
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	bne _08039390
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	bne _08039390
	b _0803951A
_08039390:
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bge _0803939A
	b _0803951A
_0803939A:
	ldr r3, [sp, #0x18]
	cmp r0, r3
	ble _080393A2
	b _0803951A
_080393A2:
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bge _080393AC
	b _0803951A
_080393AC:
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	ble _080393B4
	b _0803951A
_080393B4:
	movs r4, #0
	mov r3, r8
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	bne _080393D8
	movs r4, #1
	b _08039400
	.align 2, 0
_080393C4: .4byte gStageData
_080393C8: .4byte gPlayers
_080393CC: .4byte 0x01000100
_080393D0: .4byte sub_800DDD0
_080393D4: .4byte sub_800DCB4
_080393D8:
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #3
	ldrb r3, [r0, #6]
	lsls r3, r3, #3
	mov r1, r8
	ldrb r0, [r1, #0xe]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_8039538
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080393FA
	movs r4, #1
_080393FA:
	cmp r4, #0
	bne _08039400
	b _0803951A
_08039400:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov r2, r8
	ldrb r2, [r2, #0xd]
	cmp r0, r2
	bne _08039420
	b _0803951A
_08039420:
	adds r1, r5, #0
	adds r1, #0x27
	movs r0, #0
	strb r0, [r1]
	ldrh r2, [r5, #0x30]
	adds r0, r2, #0
	subs r0, #0xe7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r1
	cmp r0, #1
	bls _0803943C
	cmp r2, #0xea
	bne _08039446
_0803943C:
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #4
	b _0803944C
_08039446:
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
_0803944C:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #9
	ands r0, r7
	adds r4, r5, #0
	adds r4, #0x25
	lsls r6, r1, #0x10
	cmp r0, #0
	bne _08039490
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _080394D0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_80519EC
	adds r2, r0, #0
	asrs r0, r6, #0x10
	cmp r2, r0
	blt _080394B8
	ldr r0, [r5, #4]
	ands r0, r7
	cmp r0, #0
	beq _08039514
_08039490:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080394D0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80519EC
	adds r2, r0, #0
	asrs r0, r6, #0x10
	cmp r2, r0
	bge _08039514
_080394B8:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080394D4
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	b _080394DA
	.align 2, 0
_080394D0: .4byte sub_805217C
_080394D4:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
_080394DA:
	str r0, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080394F0
	add r1, sp, #8
	adds r0, r1, #0
	ldrb r0, [r0]
	adds r0, #0x80
	strb r0, [r1]
_080394F0:
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r3, r8
	ldrb r1, [r3, #0xd]
	adds r0, r5, #0
	adds r0, #0xa4
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08039510 @ =sub_80098D8
	bl sub_800D87C
	b _08039526
	.align 2, 0
_08039510: .4byte sub_80098D8
_08039514:
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
_0803951A:
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0xc]
	cmp r2, #1
	bgt _08039526
	b _080392DC
_08039526:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8039538
sub_8039538: @ 0x08039538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	mov ip, r4
	ldr r2, [r3, #0x10]
	subs r2, r2, r0
	asrs r2, r2, #8
	mov r8, r2
	ldr r0, [r3, #0x14]
	subs r0, r0, r1
	asrs r7, r0, #8
	cmp r4, #1
	bne _08039594
	cmp r6, r5
	bge _0803957C
	lsls r0, r5, #4
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #4
	adds r0, r0, r7
	cmp r0, r5
	bgt _0803964A
_08039578:
	movs r0, #1
	b _0803964C
_0803957C:
	lsls r0, r6, #4
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #4
	add r0, r8
	cmp r0, r6
	bgt _0803964A
	b _08039578
_08039594:
	cmp r4, #2
	bne _080395C8
	cmp r6, r5
	bge _080395B2
	lsls r0, r5, #8
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #0
	beq _08039578
	lsls r0, r7, #8
	mov r1, r8
	b _08039608
_080395B2:
	lsls r0, r6, #8
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	cmp r7, #0
	beq _08039578
	mov r1, r8
	lsls r0, r1, #8
	adds r1, r7, #0
	b _080395EA
_080395C8:
	cmp r4, #3
	bne _08039612
	cmp r6, r5
	bge _080395F4
	lsls r0, r5, #8
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #0
	bne _080395E6
	cmp r7, #0
	bne _0803964A
	b _08039578
_080395E6:
	lsls r0, r7, #8
	mov r1, r8
_080395EA:
	bl __divsi3
	cmp r4, r0
	blt _0803964A
	b _08039578
_080395F4:
	lsls r0, r6, #8
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	cmp r7, #0
	beq _08039578
	mov r1, r8
	lsls r0, r1, #8
	adds r1, r7, #0
_08039608:
	bl __divsi3
	cmp r4, r0
	bgt _0803964A
	b _08039578
_08039612:
	mov r0, ip
	cmp r0, #4
	bne _0803964A
	cmp r6, r5
	bge _08039634
	lsls r0, r5, #4
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #4
	adds r0, r0, r7
	cmp r0, r5
	blt _0803964A
	b _08039578
_08039634:
	lsls r0, r6, #4
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #4
	add r0, r8
	cmp r0, r6
	bge _08039578
_0803964A:
	movs r0, #0
_0803964C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Task_Interactable073Main
Task_Interactable073Main: @ 0x08039658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080396A4 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080396A8
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08039768
	.align 2, 0
_080396A4: .4byte gCurTask
_080396A8:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	ldr r6, _080396FC @ =gStageData
_080396D4:
	ldrb r0, [r6, #3]
	cmp r0, #7
	bne _080396DE
	cmp r5, #0
	bne _08039762
_080396DE:
	cmp r5, #0
	beq _08039704
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08039700 @ =gPlayers
	adds r4, r0, r1
	b _08039714
	.align 2, 0
_080396FC: .4byte gStageData
_08039700: .4byte gPlayers
_08039704:
	ldrb r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08039778 @ =gPlayers
	adds r4, r1, r0
_08039714:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803972A
	cmp r1, #8
	beq _0803972A
	cmp r1, #0x10
	bne _08039762
_0803972A:
	ldr r1, [r4, #4]
	ldr r0, _0803977C @ =0x01000100
	ands r0, r1
	cmp r0, #0
	bne _08039762
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _08039762
	cmp r0, r8
	bge _08039762
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _08039762
	cmp r0, sl
	bge _08039762
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0803975A
	adds r0, r4, #0
	ldr r1, _08039780 @ =sub_800D978
	bl sub_800D87C
_0803975A:
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
_08039762:
	adds r5, #1
	cmp r5, #1
	ble _080396D4
_08039768:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039778: .4byte gPlayers
_0803977C: .4byte 0x01000100
_08039780: .4byte sub_800D978

	thumb_func_start Task_Interactable074Main
Task_Interactable074Main: @ 0x08039784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080397D0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080397D4
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0803988A
	.align 2, 0
_080397D0: .4byte gCurTask
_080397D4:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	ldr r6, _08039828 @ =gStageData
_08039800:
	ldrb r0, [r6, #3]
	cmp r0, #7
	bne _0803980A
	cmp r5, #0
	bne _08039884
_0803980A:
	cmp r5, #0
	beq _08039830
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803982C @ =gPlayers
	adds r4, r0, r1
	b _08039840
	.align 2, 0
_08039828: .4byte gStageData
_0803982C: .4byte gPlayers
_08039830:
	ldrb r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08039898 @ =gPlayers
	adds r4, r1, r0
_08039840:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08039856
	cmp r1, #8
	beq _08039856
	cmp r1, #0x10
	bne _08039884
_08039856:
	ldr r1, [r4, #4]
	ldr r0, _0803989C @ =0x01000100
	ands r0, r1
	cmp r0, #0
	bne _08039884
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _08039884
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _08039884
	cmp r0, r8
	bge _08039884
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _08039884
	cmp r0, sl
	bge _08039884
	adds r0, r4, #0
	bl sub_800D9B4
_08039884:
	adds r5, #1
	cmp r5, #1
	ble _08039800
_0803988A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039898: .4byte gPlayers
_0803989C: .4byte 0x01000100

	thumb_func_start CreateEntity_Interactable072
CreateEntity_Interactable072: @ 0x080398A0
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
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable077
CreateEntity_Interactable077: @ 0x080398CC
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
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable078
CreateEntity_Interactable078: @ 0x080398F8
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
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable079
CreateEntity_Interactable079: @ 0x08039924
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
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable080
CreateEntity_Interactable080: @ 0x08039950
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
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable073
CreateEntity_Interactable073: @ 0x0803997C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
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
	ldr r0, _080399D8 @ =Task_Interactable073Main
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080399D8: .4byte Task_Interactable073Main

	thumb_func_start CreateEntity_Interactable074
CreateEntity_Interactable074: @ 0x080399DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
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
	ldr r0, _08039A38 @ =Task_Interactable074Main
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039A38: .4byte Task_Interactable074Main

	thumb_func_start CreateEntity_Interactable075
CreateEntity_Interactable075: @ 0x08039A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	adds r5, r1, #0
	mov sl, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #8]
	mov r2, sl
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r0, _08039C50 @ =Task_Interactable075Main
	movs r1, #0xe0
	lsls r1, r1, #3
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08039C54 @ =TaskDestructor_Interactable075
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r3, r8
	adds r7, r3, r0
	ldr r6, _08039C58 @ =0x030000B0
	add r6, r8
	ldr r0, _08039C5C @ =gUnknown_030006F0
	add r0, r8
	ldr r1, _08039C60 @ =gStageData
	mov ip, r1
	adds r1, #0x8c
	movs r4, #0
	strh r4, [r1]
	ldr r2, _08039C64 @ =gUnknown_030006FC
	add r2, r8
	ldr r3, _08039C68 @ =gUnknown_03006868
	ldr r1, [r3]
	str r1, [r2]
	mov r1, ip
	ldrb r3, [r1, #1]
	ldrb r1, [r1, #9]
	mov r2, ip
	adds r2, #0xb4
	adds r3, r3, r1
	ldrb r2, [r2]
	adds r3, r3, r2
	mov r2, ip
	ldrb r1, [r2, #6]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r1
	lsls r2, r2, #4
	ldr r1, _08039C6C @ =gPlayers
	adds r2, r2, r1
	adds r1, r2, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r3, r3, r1
	adds r2, #0x2b
	ldrb r2, [r2]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08039C6C @ =gPlayers
	adds r1, r1, r2
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r3, r3, r1
	ldr r1, _08039C68 @ =gUnknown_03006868
	str r3, [r1]
	strh r5, [r7, #4]
	mov r2, sp
	ldrh r2, [r2, #8]
	strh r2, [r7, #6]
	mov r3, sb
	str r3, [r7]
	ldrb r1, [r3]
	strb r1, [r7, #0xa]
	mov r1, sl
	strb r1, [r7, #0xb]
	movs r2, #0
	strb r2, [r7, #0xc]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	strb r2, [r7, #0xe]
	movs r1, #1
	strb r1, [r7, #0xf]
	movs r1, #0xd8
	strh r1, [r7, #0x18]
	strb r2, [r7, #0x10]
	strb r2, [r7, #0x12]
	ldr r2, _08039C70 @ =gUnknown_080CF864
	mov r3, ip
	ldrb r1, [r3, #9]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r7, #0x11]
	movs r1, #8
	strb r1, [r7, #0x13]
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r7, #0x16]
	movs r1, #0x3c
	strb r1, [r7, #0xd]
	strh r4, [r7, #0x2c]
	strh r1, [r7, #0x2e]
	ldr r1, _08039C74 @ =gUnknown_03000628
	add r1, r8
	str r4, [r1]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r7, #0x30]
	movs r2, #0xfa
	lsls r2, r2, #8
	strh r2, [r7, #0x32]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x34]
	strh r2, [r7, #0x36]
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r6, #0x10]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldr r3, [sp, #8]
	lsls r3, r3, #8
	str r3, [sp, #0x10]
	adds r1, r1, r3
	strh r1, [r6, #0x12]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	str r1, [r7, #0x38]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	lsls r1, r1, #8
	str r1, [r7, #0x3c]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	str r1, [r7, #0x40]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	lsls r1, r1, #8
	str r1, [r7, #0x44]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, sb
	strb r1, [r3]
	bl sub_80214F0
	adds r0, r6, #0
	bl sub_803BE9C
	ldr r0, _08039C78 @ =gUnknown_03000560
	add r0, r8
	bl sub_803BEE0
	ldr r0, _08039C7C @ =gUnknown_03000588
	add r0, r8
	bl sub_803B23C
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	adds r0, r7, #0
	bl sub_803B6E8
	movs r6, #0x86
	lsls r6, r6, #2
	ldr r5, _08039C80 @ =0x03000218
	add r5, r8
_08039BDA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r7, r0
	ldr r2, [r5]
	adds r1, r4, #0
	bl sub_8039D60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x14
	bls _08039BDA
	movs r4, #0
	movs r0, #0xec
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
_08039C00:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r7
	movs r2, #0x80
	lsls r2, r2, #1
	adds r6, r1, r2
	mov r3, r8
	adds r1, r3, r0
	str r5, [r1]
	adds r0, r7, r0
	adds r0, #0xf0
	strb r5, [r0]
	movs r2, #0
	cmp r4, #2
	bls _08039C24
	movs r2, #0x80
	lsls r2, r2, #3
_08039C24:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803BF20
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039C00
	ldr r0, _08039C84 @ =gCamera
	movs r1, #0xa0
	str r1, [r0, #0x14]
	adds r1, #0x80
	str r1, [r0, #0x1c]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039C50: .4byte Task_Interactable075Main
_08039C54: .4byte TaskDestructor_Interactable075
_08039C58: .4byte 0x030000B0
_08039C5C: .4byte gUnknown_030006F0
_08039C60: .4byte gStageData
_08039C64: .4byte gUnknown_030006FC
_08039C68: .4byte gUnknown_03006868
_08039C6C: .4byte gPlayers
_08039C70: .4byte gUnknown_080CF864
_08039C74: .4byte gUnknown_03000628
_08039C78: .4byte gUnknown_03000560
_08039C7C: .4byte gUnknown_03000588
_08039C80: .4byte 0x03000218
_08039C84: .4byte gCamera

	thumb_func_start TaskDestructor_Interactable075
TaskDestructor_Interactable075: @ 0x08039C88
	push {r4, r5, r6, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08039CAC @ =gUnknown_03006868
	ldr r2, _08039CB0 @ =gUnknown_030006FC
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08039CB4 @ =0x030000B0
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08039CB8
	bl VramFree
	b _08039CCC
	.align 2, 0
_08039CAC: .4byte gUnknown_03006868
_08039CB0: .4byte gUnknown_030006FC
_08039CB4: .4byte 0x030000B0
_08039CB8:
	ldr r2, _08039D58 @ =0x030000A8
	adds r0, r4, r2
	movs r1, #1
	bl sub_80C60B0
	ldr r1, _08039D5C @ =0x030000AC
	adds r0, r4, r1
	movs r1, #1
	bl sub_80C60B0
_08039CCC:
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r6, r5, r2
_08039CD4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039CD4
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r2, #0xb6
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r2, #0xc5
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08039D50
	bl VramFree
	movs r1, #0xca
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r2, #0xcf
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r2, #0xd9
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	bl VramFree
_08039D50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039D58: .4byte 0x030000A8
_08039D5C: .4byte 0x030000AC

	thumb_func_start sub_8039D60
sub_8039D60: @ 0x08039D60
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0
	bne _08039D84
	ldr r0, _08039D80 @ =gUnknown_080CF6C8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	bl VramMalloc
	b _08039D88
	.align 2, 0
_08039D80: .4byte gUnknown_080CF6C8
_08039D84:
	lsls r0, r5, #6
	adds r0, r2, r0
_08039D88:
	str r0, [r4]
	ldr r1, _08039DBC @ =gUnknown_080CF6C8
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	movs r3, #0
	movs r2, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r2, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039DBC: .4byte gUnknown_080CF6C8

	thumb_func_start sub_8039DC0
sub_8039DC0: @ 0x08039DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08039E0C @ =gUnknown_08E2E280
	str r0, [sp, #0x14]
	ldr r0, _08039E10 @ =gUnknown_08E2E550
	str r0, [sp, #0x10]
	ldr r0, _08039E14 @ =gUnknown_08E2DEF4
	str r0, [sp, #0xc]
	ldr r0, _08039E18 @ =gUnknown_08E2E134
	str r0, [sp, #8]
	ldr r0, _08039E1C @ =0x06012800
	mov sl, r0
	ldr r1, _08039E20 @ =gUnknown_080CF86B
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldr r0, _08039E24 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r7, r0
	str r0, [sp, #0x18]
	ldrb r5, [r0, #0xc]
	cmp r5, #1
	beq _08039E84
	cmp r5, #1
	bgt _08039E28
	cmp r5, #0
	bne _08039E08
	b _0803A09A
_08039E08:
	b _0803A02C
	.align 2, 0
_08039E0C: .4byte gUnknown_08E2E280
_08039E10: .4byte gUnknown_08E2E550
_08039E14: .4byte gUnknown_08E2DEF4
_08039E18: .4byte gUnknown_08E2E134
_08039E1C: .4byte 0x06012800
_08039E20: .4byte gUnknown_080CF86B
_08039E24: .4byte gCurTask
_08039E28:
	cmp r5, #2
	beq _08039E32
	cmp r5, #3
	beq _08039E5C
	b _0803A02C
_08039E32:
	ldr r1, _08039E54 @ =0x030000B0
	adds r4, r7, r1
	ldr r0, [r4]
	bl VramFree
	movs r0, #0
	str r0, [r4]
	add r0, sp, #8
	movs r1, #1
	bl sub_80C4C60
	ldr r2, _08039E58 @ =0x030000A8
	adds r4, r7, r2
	str r0, [r4]
	add r2, sp, #0xc
	b _08039E6C
	.align 2, 0
_08039E54: .4byte 0x030000B0
_08039E58: .4byte 0x030000A8
_08039E5C:
	add r0, sp, #0x10
	movs r1, #1
	bl sub_80C4C60
	ldr r1, _08039E80 @ =0x030000AC
	adds r4, r7, r1
	str r0, [r4]
	add r2, sp, #0x14
_08039E6C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_80C4E24
	adds r0, r4, #0
	movs r1, #1
	bl sub_80C610C
	b _0803A09A
	.align 2, 0
_08039E80: .4byte 0x030000AC
_08039E84:
	ldr r0, _0803A000 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _0803A004 @ =gPlayers
	adds r6, r0, r2
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0803A008 @ =gUnknown_03000628
	adds r2, r7, r0
	mov r1, sl
	str r1, [r2]
	ldr r0, _0803A00C @ =0x06012880
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _0803A010 @ =0x0000058F
	strh r0, [r2, #0xc]
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x5f
	strh r0, [r2, #0x10]
	movs r6, #0x4e
	strh r6, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _0803A014 @ =gUnknown_03000650
	adds r2, r7, r0
	mov r1, sl
	str r1, [r2]
	movs r0, #0x80
	add sl, r0
	ldr r1, _0803A010 @ =0x0000058F
	strh r1, [r2, #0xc]
	mov r0, r8
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x69
	strh r0, [r2, #0x10]
	strh r6, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _0803A018 @ =gUnknown_03000678
	adds r2, r7, r0
	mov r1, sl
	str r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	add sl, r0
	ldr r6, _0803A01C @ =0x0000048D
	strh r6, [r2, #0xc]
	strb r5, [r2, #0x1a]
	movs r0, #0x80
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	subs r0, #0x81
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x6c
	strh r0, [r2, #0x10]
	movs r0, #0x55
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r1, _0803A020 @ =gUnknown_030006A0
	adds r2, r7, r1
	mov r0, sl
	str r0, [r2]
	movs r1, #0x80
	add sl, r1
	strh r6, [r2, #0xc]
	mov r0, sb
	strb r0, [r2, #0x1a]
	movs r1, #0x40
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r1, sb
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x8a
	strh r0, [r2, #0x10]
	movs r0, #0x56
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r1, _0803A024 @ =gUnknown_030006C8
	adds r2, r7, r1
	mov r0, sl
	str r0, [r2]
	ldr r0, _0803A028 @ =0x00000487
	strh r0, [r2, #0xc]
	mov r1, sb
	strb r1, [r2, #0x1a]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x96
	strh r0, [r2, #0x10]
	movs r0, #0x55
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	b _0803A09A
	.align 2, 0
_0803A000: .4byte gStageData
_0803A004: .4byte gPlayers
_0803A008: .4byte gUnknown_03000628
_0803A00C: .4byte 0x06012880
_0803A010: .4byte 0x0000058F
_0803A014: .4byte gUnknown_03000650
_0803A018: .4byte gUnknown_03000678
_0803A01C: .4byte 0x0000048D
_0803A020: .4byte gUnknown_030006A0
_0803A024: .4byte gUnknown_030006C8
_0803A028: .4byte 0x00000487
_0803A02C:
	ldr r2, [sp, #0x18]
	movs r0, #0x16
	ldrsh r1, [r2, r0]
	ldr r0, _0803A03C @ =0x00000383
	cmp r1, r0
	ble _0803A040
	movs r4, #5
	b _0803A04A
	.align 2, 0
_0803A03C: .4byte 0x00000383
_0803A040:
	ldr r0, _0803A0C8 @ =0x0000012B
	movs r4, #1
	cmp r1, r0
	ble _0803A04A
	movs r4, #2
_0803A04A:
	adds r0, r4, #0
	bl sub_8003DC4
	ldr r1, [sp, #0x18]
	strb r4, [r1, #0x14]
	ldr r2, [r6, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803A06E
	ldr r1, [r6, #0x14]
	ldr r0, _0803A0CC @ =0x000080FF
	cmp r1, r0
	bgt _0803A06E
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r6, #4]
_0803A06E:
	mov r0, r8
	ldr r2, [r0, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803A08C
	ldr r1, [r6, #0x14]
	ldr r0, _0803A0CC @ =0x000080FF
	cmp r1, r0
	bgt _0803A08C
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	mov r1, r8
	str r2, [r1, #4]
_0803A08C:
	ldr r0, _0803A0D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A0D4 @ =sub_803BE48
	str r0, [r1, #8]
	movs r0, #0x90
	bl sub_8003DF0
_0803A09A:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	bl sub_803B498
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A0C8: .4byte 0x0000012B
_0803A0CC: .4byte 0x000080FF
_0803A0D0: .4byte gCurTask
_0803A0D4: .4byte sub_803BE48

	thumb_func_start sub_803A0D8
sub_803A0D8: @ 0x0803A0D8
	push {r4, r5, lr}
	ldr r0, _0803A0FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803A100 @ =gPlayers
_0803A0EA:
	cmp r3, #0
	beq _0803A104
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A108
	.align 2, 0
_0803A0FC: .4byte gCurTask
_0803A100: .4byte gPlayers
_0803A104:
	ldr r0, _0803A144 @ =gStageData
	ldrb r1, [r0, #6]
_0803A108:
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
	bls _0803A0EA
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803A148
	subs r0, r1, #1
	strh r0, [r4, #0x18]
	movs r1, #0xde
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80214F0
	b _0803A166
	.align 2, 0
_0803A144: .4byte gStageData
_0803A148:
	movs r2, #0xde
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_80213FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803A166
	movs r0, #0xd8
	strh r0, [r4, #0x18]
	ldr r0, _0803A180 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A184 @ =Task_Interactable075Main
	str r0, [r1, #8]
_0803A166:
	movs r0, #0
	bl sub_803C010
	adds r0, r4, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A180: .4byte gCurTask
_0803A184: .4byte Task_Interactable075Main

	thumb_func_start Task_Interactable075Main
Task_Interactable075Main: @ 0x0803A188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r1, _0803A1D4 @ =gUnknown_080CF870
	mov r0, sp
	movs r2, #0x30
	bl memcpy
	ldr r0, _0803A1D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0
	ldr r5, _0803A1DC @ =gPlayers
_0803A1B0:
	lsls r0, r1, #0x18
	adds r3, r0, #0
	cmp r3, #0
	beq _0803A1E4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	ldr r0, _0803A1E0 @ =gStageData
	mov sl, r0
	b _0803A1F6
	.align 2, 0
_0803A1D4: .4byte gUnknown_080CF870
_0803A1D8: .4byte gCurTask
_0803A1DC: .4byte gPlayers
_0803A1E0: .4byte gStageData
_0803A1E4:
	ldr r2, _0803A258 @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	mov sl, r2
_0803A1F6:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r3, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803A1B0
	ldr r4, _0803A25C @ =gUnknown_03003C20
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	movs r0, #1
	mov r2, sl
	strb r0, [r2, #4]
	mov r2, r8
	ldrh r0, [r2, #0x18]
	subs r2, r0, #1
	mov r0, r8
	strh r2, [r0, #0x18]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bne _0803A270
	ldr r0, _0803A260 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r4]
	ldr r2, _0803A264 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0xb4
	mov r1, r8
	strh r0, [r1, #0x18]
	ldr r0, _0803A268 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A26C @ =Task_803A5D4
	str r0, [r1, #8]
	b _0803A38E
	.align 2, 0
_0803A258: .4byte gStageData
_0803A25C: .4byte gUnknown_03003C20
_0803A260: .4byte 0x0000FEFF
_0803A264: .4byte gFlags
_0803A268: .4byte gCurTask
_0803A26C: .4byte Task_803A5D4
_0803A270:
	mov r4, r8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0xd8
	subs r1, r0, r1
	cmp r1, #0x30
	bgt _0803A288
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _0803A384
_0803A288:
	cmp r3, #0x30
	ble _0803A37E
	cmp r1, #0x3a
	bgt _0803A29E
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0803A29A
	movs r0, #0xfe
_0803A29A:
	adds r4, r0, #0
	b _0803A2A0
_0803A29E:
	movs r4, #0
_0803A2A0:
	movs r1, #0x30
	mov sb, r1
	mov r2, r8
	movs r0, #0x11
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x63
	bls _0803A2B4
	movs r5, #0x63
_0803A2B4:
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r1, r0, r2
	lsls r0, r1, #1
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r2, #0
	beq _0803A33C
	lsls r0, r1, #3
	movs r5, #0x86
	lsls r5, r5, #2
	adds r0, r0, r5
	mov r1, r8
	adds r7, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #3
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #0x10]
	ldrb r0, [r2]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, #2
	adds r1, r1, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r7, #0x12]
	movs r0, #0
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r5
	mov r1, r8
	adds r7, r1, r0
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #3
	add r0, sp, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x10]
	ldrb r1, [r2]
	lsls r1, r1, #3
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r4
	strh r0, [r7, #0x12]
	movs r4, #0
	str r4, [r7, #8]
	b _0803A370
_0803A33C:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, sp
	ldrh r0, [r0]
	adds r0, #6
	strh r0, [r7, #0x10]
	ldrb r0, [r1]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, #2
	adds r1, r1, r0
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x12]
	str r2, [r7, #8]
_0803A370:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	b _0803A384
_0803A37E:
	mov r2, r8
	ldrh r2, [r2, #0x18]
	mov sb, r2
_0803A384:
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_803A3B4
_0803A38E:
	movs r0, #0
	bl sub_803C010
	mov r0, r8
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803A3B4
sub_803A3B4: @ 0x0803A3B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0803A3E0
	movs r2, #0
	mov ip, r2
	cmp r0, #1
	bgt _0803A3D2
	movs r1, #2
_0803A3D2:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	b _0803A422
_0803A3E0:
	cmp r0, #0x1f
	bgt _0803A402
	movs r5, #1
	mov ip, r5
	movs r5, #0x18
	cmp r0, #0x10
	bgt _0803A3F0
	movs r1, #0x11
_0803A3F0:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0803A422
_0803A402:
	cmp r0, #0x30
	bgt _0803A422
	movs r1, #2
	mov ip, r1
	movs r5, #0x18
	movs r2, #0x24
	mov r8, r2
	subs r0, #0x20
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x10
	mov sl, r1
_0803A422:
	ldr r2, _0803A5C0 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0803A5C4 @ =gUnknown_03003C5C
	ldr r0, _0803A5C8 @ =0x04000012
	str r0, [r1]
	ldr r1, _0803A5CC @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803A5D0 @ =gUnknown_03002B84
	ldr r3, [r0]
	movs r4, #0
	adds r7, r0, #0
	lsls r5, r5, #0x10
_0803A442:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	strh r1, [r3]
	adds r3, #2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0803A442
	ldr r3, [r7]
	asrs r1, r5, #0x10
	movs r0, #0x28
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r4, #0
	subs r1, #0x18
_0803A468:
	strh r1, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A468
	movs r0, #0x28
	asrs r1, r5, #0x10
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r1, #0x24
	cmp r0, r1
	bge _0803A4AA
	movs r6, #3
	adds r4, r1, #0
_0803A490:
	asrs r2, r2, #0x10
	adds r0, r2, #0
	ands r0, r6
	adds r1, r2, #0
	subs r1, #0x10
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, r4
	blt _0803A490
_0803A4AA:
	ldr r3, [r7]
	asrs r0, r5, #0x10
	lsls r1, r0, #1
	adds r1, #0x48
	adds r3, r3, r1
	movs r4, #0
	movs r1, #0x17
	subs r1, r1, r0
_0803A4BA:
	strh r1, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A4BA
	mov r0, ip
	cmp r0, #0
	beq _0803A5B2
	ldr r3, [r7]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x6c
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r4, #0
	adds r6, r0, #0
	subs r2, #0x23
_0803A4EA:
	strh r2, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A4EA
	movs r0, #0x6c
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r1, #0x68
	cmp r0, r1
	bge _0803A52C
	movs r5, #3
	adds r4, r1, #0
_0803A512:
	asrs r2, r2, #0x10
	adds r0, r2, #0
	ands r0, r5
	adds r1, r2, #0
	subs r1, #0x48
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, r4
	blt _0803A512
_0803A52C:
	ldr r3, [r7]
	asrs r0, r6, #0x10
	lsls r1, r0, #1
	adds r1, #0xd0
	adds r3, r3, r1
	movs r4, #0
	movs r1, #0x23
	subs r1, r1, r0
_0803A53C:
	strh r1, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A53C
	mov r5, ip
	cmp r5, #1
	beq _0803A5B2
	ldr r3, [r7]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x3a
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0x3a
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	mov r5, sl
	lsls r4, r5, #0x10
	cmp r0, #0x39
	bgt _0803A588
	subs r1, #0x20
_0803A578:
	strh r1, [r3]
	adds r3, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	asrs r0, r2, #0x10
	cmp r0, #0x39
	ble _0803A578
_0803A588:
	ldr r3, [r7]
	asrs r1, r4, #0x10
	movs r0, #0x8a
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0x8a
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0x89
	bgt _0803A5B2
	subs r1, #0x3c
_0803A5A2:
	strh r1, [r3]
	adds r3, #2
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	asrs r0, r2, #0x10
	cmp r0, #0x89
	ble _0803A5A2
_0803A5B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C0: .4byte gFlags
_0803A5C4: .4byte gUnknown_03003C5C
_0803A5C8: .4byte 0x04000012
_0803A5CC: .4byte gUnknown_03003F30
_0803A5D0: .4byte gUnknown_03002B84

	thumb_func_start Task_803A5D4
Task_803A5D4: @ 0x0803A5D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803A614 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0803A618 @ =gUnknown_03000588
	adds r4, r1, r0
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r2
	cmp r0, #0
	bne _0803A684
	movs r2, #0
	ldr r7, _0803A61C @ =gUnknown_080CF770
	ldr r1, _0803A620 @ =sub_803A6DC
	mov r8, r1
	ldr r6, _0803A624 @ =gPlayers
_0803A604:
	cmp r2, #0
	beq _0803A628
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A62C
	.align 2, 0
_0803A614: .4byte gCurTask
_0803A618: .4byte gUnknown_03000588
_0803A61C: .4byte gUnknown_080CF770
_0803A620: .4byte sub_803A6DC
_0803A624: .4byte gPlayers
_0803A628:
	ldr r0, _0803A67C @ =gStageData
	ldrb r1, [r0, #6]
_0803A62C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r6
	ldr r0, [r3, #4]
	ldr r1, _0803A680 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r3, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803A604
	ldrh r0, [r7, #4]
	strh r0, [r4, #0xc]
	ldrb r0, [r7, #6]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x80
	strb r0, [r5, #0xd]
	mov r1, ip
	ldr r0, [r1]
	mov r1, r8
	str r1, [r0, #8]
	adds r0, r5, #0
	bl sub_803B070
	strb r0, [r5, #0xe]
	bl _call_via_r8
	ldr r0, _0803A67C @ =gStageData
	movs r1, #3
	strb r1, [r0, #4]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	b _0803A6CC
	.align 2, 0
_0803A67C: .4byte gStageData
_0803A680: .4byte 0xF7FFFFFF
_0803A684:
	cmp r0, #0x78
	bne _0803A69C
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	ldr r0, _0803A698 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x2c]
	strh r1, [r4, #0xc]
	adds r0, #0x2e
	b _0803A6AA
	.align 2, 0
_0803A698: .4byte gUnknown_080CF770
_0803A69C:
	cmp r0, #0x3c
	bne _0803A6B2
	strb r0, [r5, #0xd]
	ldr r0, _0803A6D8 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x24]
	strh r1, [r4, #0xc]
	adds r0, #0x26
_0803A6AA:
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0803A6B2:
	movs r0, #1
	bl sub_803BF78
	movs r0, #0
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
_0803A6CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6D8: .4byte gUnknown_080CF770

	thumb_func_start sub_803A6DC
sub_803A6DC: @ 0x0803A6DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803A744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r1, _0803A748 @ =gUnknown_03000588
	adds r6, r0, r1
	ldr r1, _0803A74C @ =gUnknown_030006F0
	adds r2, r0, r1
	ldr r7, _0803A750 @ =gStageData
	adds r0, r7, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x11
	ldrsb r1, [r5, r1]
	mov ip, r7
	cmp r0, r1
	bge _0803A718
	ldrh r0, [r5, #0x16]
	subs r0, #1
	strh r0, [r5, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803A718
	b _0803A854
_0803A718:
	movs r0, #0x80
	strb r0, [r5, #0xd]
	movs r0, #1
	strh r0, [r2, #2]
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0803A7C4
	movs r2, #0
	ldr r3, _0803A754 @ =gPlayers
_0803A734:
	cmp r2, #0
	beq _0803A758
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A75C
	.align 2, 0
_0803A744: .4byte gCurTask
_0803A748: .4byte gUnknown_03000588
_0803A74C: .4byte gUnknown_030006F0
_0803A750: .4byte gStageData
_0803A754: .4byte gPlayers
_0803A758:
	mov r0, ip
	ldrb r1, [r0, #6]
_0803A75C:
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
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803A734
	movs r0, #0x1e
	strh r0, [r5, #0x18]
	ldr r0, _0803A7B4 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0803A796
	ldr r1, _0803A7B8 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_0803A796:
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	ldr r0, _0803A7BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A7C0 @ =Task_803A8A8
	b _0803A838
	.align 2, 0
_0803A7B4: .4byte gStageData
_0803A7B8: .4byte gUnknown_080CF770
_0803A7BC: .4byte gCurTask
_0803A7C0: .4byte Task_803A8A8
_0803A7C4:
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	adds r0, r5, #0
	bl sub_803BFC4
	movs r2, #0
	ldr r3, _0803A7F0 @ =gPlayers
_0803A7DE:
	cmp r2, #0
	beq _0803A7F4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A7F8
	.align 2, 0
_0803A7F0: .4byte gPlayers
_0803A7F4:
	ldr r0, _0803A844 @ =gStageData
	ldrb r1, [r0, #6]
_0803A7F8:
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
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803A7DE
	ldr r1, _0803A848 @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	movs r2, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x3c
	strh r0, [r6, #0x12]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	strb r2, [r5, #0xc]
	ldr r0, _0803A84C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A850 @ =sub_8039DC0
_0803A838:
	str r0, [r1, #8]
	ldr r1, _0803A844 @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	b _0803A89C
	.align 2, 0
_0803A844: .4byte gStageData
_0803A848: .4byte gUnknown_080CF770
_0803A84C: .4byte gCurTask
_0803A850: .4byte sub_8039DC0
_0803A854:
	adds r0, r5, #0
	bl sub_803B070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0803A864
	strb r0, [r5, #0xe]
_0803A864:
	ldrb r4, [r5, #0xd]
	movs r0, #0
	bl sub_803BF78
	cmp r4, #0
	beq _0803A87E
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0803A87E
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_0803A87E:
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	ldr r0, _0803A8A4 @ =gStageData
	movs r1, #0x10
	ldrsb r1, [r5, r1]
	adds r0, #0x8c
	strh r1, [r0]
_0803A89C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8A4: .4byte gStageData

	thumb_func_start Task_803A8A8
Task_803A8A8: @ 0x0803A8A8
	push {r4, r5, r6, r7, lr}
	ldr r1, _0803A914 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r6, _0803A918 @ =gStageData
	ldrb r0, [r6, #6]
	adds r7, r1, #0
	cmp r0, #0
	bne _0803A940
	ldrb r3, [r5, #0xd]
	cmp r3, #0x5f
	bls _0803A940
	ldr r0, _0803A91C @ =gUnknown_03000588
	adds r4, r2, r0
	adds r2, r6, #0
	adds r2, #0x8c
	ldrh r0, [r2]
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x11
	ldrsb r1, [r5, r1]
	cmp r0, r1
	blt _0803A928
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	adds r0, r5, #0
	bl sub_803BFC4
	ldr r1, _0803A920 @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x3c
	strh r0, [r4, #0x12]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	ldr r1, [r7]
	ldr r0, _0803A924 @ =sub_8039DC0
	str r0, [r1, #8]
	b _0803A96A
	.align 2, 0
_0803A914: .4byte gCurTask
_0803A918: .4byte gStageData
_0803A91C: .4byte gUnknown_03000588
_0803A920: .4byte gUnknown_080CF770
_0803A924: .4byte sub_8039DC0
_0803A928:
	cmp r3, #0x60
	bne _0803A93A
	ldr r1, _0803A970 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0803A93A:
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	strh r0, [r2]
_0803A940:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A956
	movs r0, #0x80
	strb r0, [r5, #0xd]
	ldr r1, [r7]
	ldr r0, _0803A974 @ =Task_803A978
	str r0, [r1, #8]
_0803A956:
	movs r0, #0
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
_0803A96A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A970: .4byte gUnknown_080CF770
_0803A974: .4byte Task_803A978

	thumb_func_start Task_803A978
Task_803A978: @ 0x0803A978
	push {r4, r5, lr}
	ldr r0, _0803A9E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0803AA08
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r5, [r4, r2]
	cmp r5, #0
	bne _0803AA04
	ldr r2, _0803A9E4 @ =gUnknown_030006F0
	adds r0, r1, r2
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803AA08
	ldr r1, _0803A9E8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803A9EC @ =gUnknown_03003F94
	ldr r0, _0803A9F0 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803A9F4 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803A9F8 @ =gUnknown_03006208
	ldr r0, _0803A9FC @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803AA00 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #6
	bl sub_8002210
	b _0803AA22
	.align 2, 0
_0803A9E0: .4byte gCurTask
_0803A9E4: .4byte gUnknown_030006F0
_0803A9E8: .4byte 0x0000FFFF
_0803A9EC: .4byte gUnknown_03003F94
_0803A9F0: .4byte gUnknown_03003D20
_0803A9F4: .4byte gUnknown_03006840
_0803A9F8: .4byte gUnknown_03006208
_0803A9FC: .4byte gUnknown_03003F34
_0803AA00: .4byte gStageData
_0803AA04:
	subs r0, #1
	strh r0, [r4, #0x18]
_0803AA08:
	movs r0, #1
	bl sub_803BF78
	movs r0, #0
	bl sub_803C010
	adds r0, r4, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
_0803AA22:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Task_803AA28
Task_803AA28: @ 0x0803AA28
	push {r4, lr}
	ldr r0, _0803AA98 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r3, r0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bne _0803AAC0
	movs r0, #2
	strb r0, [r1, #0xd]
	ldrh r2, [r1, #0x18]
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0803AABC
	ldr r1, _0803AA9C @ =gUnknown_030006F0
	adds r0, r3, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803AAC0
	ldr r1, _0803AAA0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803AAA4 @ =gUnknown_03003F94
	ldr r0, _0803AAA8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803AAAC @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803AAB0 @ =gUnknown_03006208
	ldr r0, _0803AAB4 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803AAB8 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r0, r4
	asrs r0, r0, #0x10
	movs r1, #6
	bl sub_8002210
	b _0803AAE2
	.align 2, 0
_0803AA98: .4byte gCurTask
_0803AA9C: .4byte gUnknown_030006F0
_0803AAA0: .4byte 0x0000FFFF
_0803AAA4: .4byte gUnknown_03003F94
_0803AAA8: .4byte gUnknown_03003D20
_0803AAAC: .4byte gUnknown_03006840
_0803AAB0: .4byte gUnknown_03006208
_0803AAB4: .4byte gUnknown_03003F34
_0803AAB8: .4byte gStageData
_0803AABC:
	subs r0, r2, #1
	strh r0, [r1, #0x18]
_0803AAC0:
	bl sub_803BDA0
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	movs r0, #1
	bl sub_803BF78
	bl sub_803B498
	bl sub_803B354
_0803AAE2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803AAE8
sub_803AAE8: @ 0x0803AAE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r7, r1, #0
	lsls r6, r2, #0x18
	adds r0, #0xb0
	str r0, [sp, #8]
	mov r2, r8
	ldr r1, [r2]
	ldrb r5, [r2, #0xa]
	lsls r5, r5, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	str r7, [sp]
	lsrs r6, r6, #0x15
	mov r0, r8
	adds r0, #0x1c
	adds r0, r0, r6
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_803C094
	mov sb, r0
	str r0, [sp, #0xc]
	str r7, [sp]
	mov r0, r8
	adds r0, #0x20
	adds r6, r0, r6
	ldr r0, [r6]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r1, #1
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_803C094
	adds r1, r0, #0
	str r1, [sp, #0x10]
	movs r0, #0
	mov r3, sl
	str r0, [r3]
	str r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sb
	ands r3, r2
	cmp r3, #0
	beq _0803AB8A
	ldr r0, [sp, #0xc]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	mov r1, sl
	str r0, [r1]
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r7, #4]
	ldr r2, [sp, #8]
	str r2, [r7, #0x6c]
	b _0803AD22
_0803AB8A:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0803AC24
	ldr r0, [sp, #0x10]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	str r0, [r6]
	ldr r2, [r7, #4]
	movs r5, #0x20
	orrs r2, r5
	subs r0, #6
	ands r2, r0
	str r2, [r7, #4]
	ldr r1, [sp, #8]
	str r1, [r7, #0x6c]
	movs r4, #0x80
	lsls r4, r4, #0xc
	mov r0, sb
	ands r4, r0
	cmp r4, #0
	beq _0803ABE2
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ABD8
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r7, #4]
_0803ABD8:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
	b _0803AD16
_0803ABE2:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _0803ABF0
	b _0803AD22
_0803ABF0:
	ldrh r1, [r7, #0x1e]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803AC08
	ldr r0, [r7, #0x10]
	ldr r1, _0803AC20 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r7, #4]
_0803AC08:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r4, [r7, #0x1c]
	b _0803AD22
	.align 2, 0
_0803AC20: .4byte 0xFFFFFF00
_0803AC24:
	movs r4, #0x80
	lsls r4, r4, #0xc
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0803AC62
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803AC58
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, r8
	ldr r0, [r7, #0x6c]
	cmp r0, r1
	bne _0803AC58
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AC58:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	ands r0, r1
	b _0803AC9E
_0803AC62:
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r2, r0, #0
	mov r3, sb
	ands r2, r3
	cmp r2, #0
	beq _0803ACB4
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AC96
	movs r1, #0xda
	lsls r1, r1, #1
	add r1, r8
	ldr r0, [r7, #0x6c]
	cmp r0, r1
	bne _0803AC96
	ldr r0, [r7, #0x10]
	ldr r1, _0803ACB0 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AC96:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
_0803AC9E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	movs r0, #0
	strh r0, [r7, #0x1c]
	b _0803AD22
	.align 2, 0
_0803ACB0: .4byte 0xFFFFFF00
_0803ACB4:
	adds r3, r1, #0
	ands r3, r4
	cmp r3, #0
	beq _0803ACEE
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ACD8
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803ACD8:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r2, [r7, #0x1c]
	b _0803AD22
_0803ACEE:
	ands r1, r0
	cmp r1, #0
	beq _0803AD22
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AD0E
	ldr r0, [r7, #0x10]
	ldr r2, _0803AD34 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AD0E:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	ands r0, r1
_0803AD16:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r3, [r7, #0x1c]
_0803AD22:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD34: .4byte 0xFFFFFF00

	thumb_func_start sub_803AD38
sub_803AD38: @ 0x0803AD38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #4]
	adds r7, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
_0803AD50:
	ldr r1, [sp, #0x10]
	lsls r1, r1, #4
	mov sb, r1
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #4]
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sl, r1
	lsls r4, r2, #2
	ldr r2, _0803ADD4 @ =gUnknown_080CF850
	adds r0, r4, r2
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _0803ADD8 @ =gUnknown_080CF852
	adds r0, r4, r3
	ldrh r5, [r0]
	movs r6, #0
	str r7, [sp]
	mov r0, sl
	mov r1, r8
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020E3C
	str r0, [sp, #0x14]
	str r6, [sp]
	mov r0, sl
	mov r1, r8
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_8020950
	adds r3, r0, #0
	mov r8, sb
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0803AE28
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803AE4E
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803ADDC
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ADDC
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803ADDC
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	b _0803ADFE
	.align 2, 0
_0803ADD4: .4byte gUnknown_080CF850
_0803ADD8: .4byte gUnknown_080CF852
_0803ADDC:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0803AE08
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AE08
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803AE08
	ldr r0, [r7, #0x10]
	ldr r2, _0803AE24 @ =0xFFFFFF00
_0803ADFE:
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r1, r0
	str r1, [r7, #4]
_0803AE08:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r2, #0
	strh r2, [r7, #0x1c]
	strh r2, [r7, #0x18]
	b _0803AE4E
	.align 2, 0
_0803AE24: .4byte 0xFFFFFF00
_0803AE28:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0803AE4E
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r7, #4]
	movs r0, #0x20
	orrs r1, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r7, #4]
	mov r3, sl
	str r3, [r7, #0x6c]
	b _0803B04A
_0803AE4E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0803AE56
	b _0803AFBC
_0803AE56:
	mov r1, r8
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r1, #0xec
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r1
	cmp r0, #2
	bne _0803AE6E
	b _0803AFBC
_0803AE6E:
	ldr r1, [sp, #8]
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803AE7A
	b _0803AFBC
_0803AE7A:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0803AE82
	b _0803AFBC
_0803AE82:
	movs r5, #0
	movs r6, #0
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldrh r2, [r7, #0x30]
	cmp r1, #0xaa
	beq _0803AEA0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803AEA0
	cmp r1, #0xbb
	beq _0803AEA0
	cmp r1, #0xe5
	bne _0803AEA2
_0803AEA0:
	movs r5, #1
_0803AEA2:
	cmp r2, #0xff
	bne _0803AEA8
	movs r6, #1
_0803AEA8:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _0803AED0
	cmp r5, #0
	bne _0803AEDC
	cmp r6, #0
	bne _0803AEDC
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	movs r2, #0
	cmp r0, #0
	blt _0803AED8
	ldr r1, [r7, #0x14]
	ldr r0, _0803AECC @ =0x000047FF
	cmp r1, r0
	bgt _0803AED8
	b _0803AEDC
	.align 2, 0
_0803AECC: .4byte 0x000047FF
_0803AED0:
	movs r2, #1
	cmp r5, #0
	beq _0803AED8
	movs r2, #0
_0803AED8:
	cmp r2, #0
	beq _0803AFBC
_0803AEDC:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0xe]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _0803AF3A
	movs r0, #0x13
	strb r0, [r3, #0xf]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r3, #0xe]
	mov r1, r8
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r3, r0
	adds r0, #0xf0
	ldrb r0, [r0]
	movs r2, #3
	cmp r0, #0x3c
	bls _0803AF0C
	movs r2, #1
	cmp r0, #0x78
	bhi _0803AF0C
	movs r2, #2
_0803AF0C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0803AF20
	ldr r3, [sp, #4]
	ldrb r0, [r3, #0x10]
	adds r0, r2, r0
	strb r0, [r3, #0x10]
_0803AF20:
	ldr r1, _0803AF90 @ =gUnknown_080CF850
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, _0803AF94 @ =gUnknown_080CF852
	adds r1, r4, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_803BC80
_0803AF3A:
	ldr r0, [sp, #8]
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #0xff
	mov r1, sl
	strb r0, [r1, #0x1b]
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	movs r4, #0
	strb r0, [r1, #0x1a]
	mov r2, r8
	ldr r3, [sp, #0x10]
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r2, [sp, #4]
	adds r0, r2, r1
	adds r0, #0xf0
	strb r4, [r0]
	add r1, sb
	movs r0, #2
	str r0, [r1]
	ldr r0, _0803AF98 @ =0x0000020B
	bl sub_8003DF0
	ldr r1, [r7, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r7, #4]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	bne _0803AFA0
	adds r0, r7, #0
	ldr r1, _0803AF9C @ =sub_80072D8
	bl sub_800D87C
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r7, #0x1a]
	b _0803B04A
	.align 2, 0
_0803AF90: .4byte gUnknown_080CF850
_0803AF94: .4byte gUnknown_080CF852
_0803AF98: .4byte 0x0000020B
_0803AF9C: .4byte sub_80072D8
_0803AFA0:
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bhi _0803AFB4
	strh r4, [r7, #0x1c]
	ldr r0, _0803AFB0 @ =0x0000FF80
	strh r0, [r7, #0x18]
	b _0803B04A
	.align 2, 0
_0803AFB0: .4byte 0x0000FF80
_0803AFB4:
	strh r4, [r7, #0x1c]
	movs r0, #0x80
	strh r0, [r7, #0x18]
	b _0803B04A
_0803AFBC:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0803AFE2
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r7, #4]
	movs r0, #0x20
	orrs r1, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r7, #4]
	mov r1, sl
	str r1, [r7, #0x6c]
	b _0803B04A
_0803AFE2:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803B008
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B034
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803B034
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	b _0803B02A
_0803B008:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0803B04A
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803B034
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803B034
	ldr r0, [r7, #0x10]
	ldr r2, _0803B06C @ =0xFFFFFF00
_0803B02A:
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r1, r0
	str r1, [r7, #4]
_0803B034:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r2, #0
	strh r2, [r7, #0x1c]
_0803B04A:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	cmp r0, #4
	bhi _0803B05A
	b _0803AD50
_0803B05A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B06C: .4byte 0xFFFFFF00

	thumb_func_start sub_803B070
sub_803B070: @ 0x0803B070
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	cmp r0, #0
	beq _0803B084
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803B088
_0803B084:
	movs r0, #0xff
	b _0803B110
_0803B088:
	ldr r2, _0803B0AC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0803B0B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803B0B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #8
	movs r0, #7
	ands r2, r0
	cmp r2, #7
	bhi _0803B0E6
	lsls r0, r2, #2
	ldr r1, _0803B0B8 @ =_0803B0BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B0AC: .4byte gUnknown_03006868
_0803B0B0: .4byte 0x00196225
_0803B0B4: .4byte 0x3C6EF35F
_0803B0B8: .4byte _0803B0BC
_0803B0BC: @ jump table
	.4byte _0803B0E6 @ case 0
	.4byte _0803B0E6 @ case 1
	.4byte _0803B0E6 @ case 2
	.4byte _0803B0E6 @ case 3
	.4byte _0803B0E6 @ case 4
	.4byte _0803B0DC @ case 5
	.4byte _0803B0E0 @ case 6
	.4byte _0803B0E4 @ case 7
_0803B0DC:
	movs r2, #0
	b _0803B0E6
_0803B0E0:
	movs r2, #1
	b _0803B0E6
_0803B0E4:
	movs r2, #2
_0803B0E6:
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xec
	adds r3, r3, r0
	adds r1, r3, #0
	adds r1, #0x14
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _0803B114 @ =0x00000484
	strh r0, [r1, #0xc]
	movs r0, #0
	cmp r2, #0
	beq _0803B104
	movs r0, #0xb
_0803B104:
	strb r0, [r1, #0x1a]
	movs r0, #0
	strb r0, [r3, #4]
	movs r0, #1
	str r0, [r3]
	adds r0, r2, #0
_0803B110:
	pop {r1}
	bx r1
	.align 2, 0
_0803B114: .4byte 0x00000484

	thumb_func_start sub_803B118
sub_803B118: @ 0x0803B118
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	beq _0803B198
	cmp r5, r0
	beq _0803B198
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0xec
	adds r1, r4, r0
	adds r2, r1, #0
	adds r2, #0x14
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #4]
	ldr r7, _0803B1A0 @ =0x00000484
	strh r7, [r2, #0xc]
	ldrb r0, [r4, #0xe]
	movs r1, #0x14
	cmp r0, #0
	bne _0803B14E
	movs r1, #9
_0803B14E:
	strb r1, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	cmp r5, #0xff
	beq _0803B192
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r1, r4, r0
	adds r2, r1, #0
	adds r2, #0x14
	movs r0, #0
	strb r0, [r1, #4]
	movs r0, #1
	str r0, [r1]
	strh r7, [r2, #0xc]
	movs r0, #0
	cmp r5, #0
	beq _0803B184
	movs r0, #0xb
_0803B184:
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	orrs r0, r6
	strb r0, [r2, #0x1b]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_0803B192:
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r5, [r4, #0xe]
_0803B198:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B1A0: .4byte 0x00000484

	thumb_func_start sub_803B1A4
sub_803B1A4: @ 0x0803B1A4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r4, #0
	movs r7, #0xff
	ldr r6, _0803B1F8 @ =0x00000484
_0803B1AE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0xec
	mov r2, ip
	adds r1, r2, r0
	adds r2, r1, #0
	adds r2, #0x14
	ldr r0, [r1]
	cmp r0, #0
	beq _0803B22A
	ldrb r0, [r1, #4]
	cmp r0, #0xfe
	bhi _0803B1CE
	adds r0, #1
	strb r0, [r1, #4]
_0803B1CE:
	ldr r0, [r1]
	cmp r0, #2
	bne _0803B1FC
	ldrb r0, [r1, #4]
	cmp r0, #0x13
	bls _0803B22A
	ldrb r0, [r2, #0x1b]
	orrs r0, r7
	strb r0, [r2, #0x1b]
	movs r5, #0
	movs r3, #0
	strh r6, [r2, #0xc]
	movs r0, #0x14
	cmp r4, #0
	bne _0803B1EE
	movs r0, #9
_0803B1EE:
	strb r0, [r2, #0x1a]
	str r3, [r1]
	strb r5, [r1, #4]
	b _0803B22A
	.align 2, 0
_0803B1F8: .4byte 0x00000484
_0803B1FC:
	ldrb r0, [r1, #4]
	cmp r0, #0x3c
	bne _0803B214
	ldrb r0, [r2, #0x1b]
	orrs r0, r7
	strb r0, [r2, #0x1b]
	strh r6, [r2, #0xc]
	movs r0, #0xe
	cmp r4, #0
	bne _0803B228
	movs r0, #3
	b _0803B228
_0803B214:
	cmp r0, #0x78
	bne _0803B22A
	ldrb r0, [r2, #0x1b]
	orrs r0, r7
	strb r0, [r2, #0x1b]
	strh r6, [r2, #0xc]
	movs r0, #0x11
	cmp r4, #0
	bne _0803B228
	movs r0, #6
_0803B228:
	strb r0, [r2, #0x1a]
_0803B22A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803B1AE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803B23C
sub_803B23C: @ 0x0803B23C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803B284 @ =gUnknown_080CF770
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
_0803B284: .4byte gUnknown_080CF770

	thumb_func_start sub_803B288
sub_803B288: @ 0x0803B288
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803B344 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xb0
	adds r5, r1, r0
	ldr r2, [r7]
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r4, _0803B348 @ =gCamera
	ldr r0, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r0, [r4, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #8]
	ldr r1, _0803B34C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	movs r6, #0
	ldr r1, _0803B350 @ =gUnknown_080CF850
	mov r8, r1
	movs r0, #2
	add r0, r8
	mov sb, r0
_0803B2FC:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, r1
	lsls r2, r6, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	add r2, sb
	ldr r1, [r4, #4]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0803B2FC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B344: .4byte gCurTask
_0803B348: .4byte gCamera
_0803B34C: .4byte 0xFFFFFBFF
_0803B350: .4byte gUnknown_080CF850

	thumb_func_start sub_803B354
sub_803B354: @ 0x0803B354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r1, _0803B420 @ =gUnknown_080CF8A0
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	ldr r0, _0803B424 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _0803B37E
	b _0803B486
_0803B37E:
	subs r0, #1
	strh r0, [r5, #0x2e]
	movs r7, #0
	ldr r0, _0803B428 @ =0x03000032
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r2, _0803B42C @ =0x03000038
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	ldr r0, _0803B430 @ =0x03000030
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r2, _0803B434 @ =0x0300003C
	adds r2, r1, r2
	str r2, [sp, #0x10]
	ldr r0, _0803B438 @ =0x030000A8
	adds r0, r0, r1
	mov sl, r0
	ldr r2, _0803B43C @ =gCamera
	mov r8, r2
	add r6, sp, #8
	ldr r0, _0803B440 @ =0x030000AC
	adds r0, r0, r1
	mov sb, r0
_0803B3AE:
	lsls r1, r7, #2
	ldr r2, [sp, #0x18]
	adds r4, r2, r1
	ldrh r0, [r4]
	adds r0, #0x40
	strh r0, [r4]
	lsls r2, r7, #3
	ldr r0, [sp, #0x1c]
	adds r3, r0, r2
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [sp, #0x10]
	adds r2, r0, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r1, [r5, #0x2e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B444
	cmp r7, #0
	bne _0803B47C
	mov r0, sl
	movs r1, #1
	movs r2, #0
	bl sub_80C4EB0
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	movs r1, #1
	adds r2, r6, #0
	add r3, sp, #4
	bl sub_80C59E8
	b _0803B47C
	.align 2, 0
_0803B420: .4byte gUnknown_080CF8A0
_0803B424: .4byte gCurTask
_0803B428: .4byte 0x03000032
_0803B42C: .4byte 0x03000038
_0803B430: .4byte 0x03000030
_0803B434: .4byte 0x0300003C
_0803B438: .4byte 0x030000A8
_0803B43C: .4byte gCamera
_0803B440: .4byte 0x030000AC
_0803B444:
	cmp r7, #1
	bne _0803B47C
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_80C4EB0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	movs r1, #1
	adds r2, r6, #0
	add r3, sp, #4
	bl sub_80C59E8
_0803B47C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0803B3AE
_0803B486:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803B498
sub_803B498: @ 0x0803B498
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803B5FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sl
	mov r8, r0
	movs r1, #0x16
	ldrsh r5, [r0, r1]
	adds r0, r5, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _0803B600 @ =gUnknown_080CF9AE
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r4, r4, r1
	lsls r4, r4, #1
	mov sb, r4
	add r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r5, r5, r1
	ldr r1, _0803B604 @ =gUnknown_080CFA28
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r5, r5, r0
	ldr r7, _0803B608 @ =0x03000538
	add r7, sl
	movs r0, #0x80
	strh r0, [r7, #0x10]
	movs r0, #0x16
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0803B60C @ =gUnknown_080CF936
	lsls r5, r5, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x86
	strh r0, [r7, #0x10]
	movs r6, #0x12
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x8c
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0803B610 @ =gUnknown_080CF8BC
	mov r0, sb
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B584
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x70
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0803B584:
	adds r0, r4, #1
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r4, #0xe
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r7, _0803B614 @ =gUnknown_03000560
	add r7, sl
	movs r0, #0xc8
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	ldrb r2, [r0, #0x12]
	movs r1, #0x12
	ldrsb r1, [r0, r1]
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _0803B5EC
	mov r1, r8
	ldrb r0, [r1, #0x13]
	subs r0, #1
	strb r0, [r1, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B5EC
	movs r0, #8
	strb r0, [r1, #0x13]
	adds r0, r2, #1
	strb r0, [r1, #0x12]
_0803B5EC:
	movs r6, #0
_0803B5EE:
	cmp r6, #0
	beq _0803B618
	mov r3, r8
	movs r4, #0x11
	ldrsb r4, [r3, r4]
	b _0803B61E
	.align 2, 0
_0803B5FC: .4byte gCurTask
_0803B600: .4byte gUnknown_080CF9AE
_0803B604: .4byte gUnknown_080CFA28
_0803B608: .4byte 0x03000538
_0803B60C: .4byte gUnknown_080CF936
_0803B610: .4byte gUnknown_080CF8BC
_0803B614: .4byte gUnknown_03000560
_0803B618:
	mov r0, r8
	movs r4, #0x12
	ldrsb r4, [r0, r4]
_0803B61E:
	cmp r4, #0x63
	ble _0803B624
	movs r4, #0x63
_0803B624:
	cmp r6, #0
	bne _0803B63A
	mov r1, r8
	ldrb r0, [r1, #0x13]
	lsls r1, r0, #0x18
	cmp r0, #8
	beq _0803B63A
	asrs r0, r1, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803B63C
_0803B63A:
	movs r0, #0
_0803B63C:
	mov sb, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #1
	subs r4, r4, r0
	cmp r5, #0
	beq _0803B68A
	lsls r0, r1, #3
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0xb4
	cmp r6, #0
	beq _0803B668
	movs r0, #0xd2
_0803B668:
	strh r0, [r7, #0x10]
	mov r3, sb
	lsls r0, r3, #0x18
	asrs r1, r0, #0x18
	cmp r6, #0
	beq _0803B678
	movs r0, #0x11
	b _0803B67A
_0803B678:
	movs r0, #0xb
_0803B67A:
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0803B68A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	cmp r5, #0
	bne _0803B6A6
	cmp r6, #0
	beq _0803B6A6
	movs r0, #0xd2
	b _0803B6AE
_0803B6A6:
	movs r0, #0xbe
	cmp r6, #0
	beq _0803B6AE
	movs r0, #0xdc
_0803B6AE:
	strh r0, [r7, #0x10]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r6, #0
	beq _0803B6BE
	movs r0, #0x11
	b _0803B6C0
_0803B6BE:
	movs r0, #0xb
_0803B6C0:
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803B5EE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803B6E8
sub_803B6E8: @ 0x0803B6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r4, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	movs r0, #0xb8
	lsls r0, r0, #5
	adds r6, r2, r0
	ldr r1, _0803B74C @ =gUnknown_080CFA3E
	mov r8, r1
_0803B708:
	lsls r2, r4, #2
	adds r1, r5, #0
	adds r1, #0x48
	adds r1, r1, r2
	lsls r0, r4, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4a
	adds r0, r0, r2
	ldr r2, _0803B750 @ =0xFFFFFB80
	adds r1, r2, #0
	cmp r4, #0
	beq _0803B72A
	subs r2, #0x40
	adds r1, r2, #0
_0803B72A:
	strh r1, [r0]
	lsls r1, r4, #3
	adds r0, r5, #0
	adds r0, #0x68
	adds r3, r0, r1
	lsrs r1, r4, #1
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0803B754
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r2, r0
	b _0803B75C
	.align 2, 0
_0803B74C: .4byte gUnknown_080CFA3E
_0803B750: .4byte 0xFFFFFB80
_0803B754:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r2, r0
_0803B75C:
	lsls r0, r0, #8
	str r0, [r3]
	lsls r0, r4, #3
	adds r1, r5, #0
	adds r1, #0x6c
	adds r1, r1, r0
	str r6, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803B708
	movs r0, #0x10
	bl VramMalloc
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _0803B7FC @ =gUnknown_080CF7A8
	mov sb, r0
	ldr r1, _0803B800 @ =gStageData
	mov r8, r1
	movs r2, #0
	mov sl, r2
	movs r7, #0
_0803B78C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	str r6, [r0]
	adds r6, #0x80
	lsls r3, r4, #3
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r3, r1
	add r1, sb
	ldrh r1, [r1, #4]
	strh r1, [r0, #0xc]
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r3, r3, r1
	add r3, sb
	ldrb r1, [r3, #6]
	strb r1, [r0, #0x1a]
	movs r1, #0x80
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xe]
	strh r7, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r7, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0803B78C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7FC: .4byte gUnknown_080CF7A8
_0803B800: .4byte gStageData

	thumb_func_start sub_803B804
sub_803B804: @ 0x0803B804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803B82C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldrh r0, [r1, #0x2c]
	lsrs r0, r0, #2
	cmp r0, #7
	bhi _0803B830
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803B832
	.align 2, 0
_0803B82C: .4byte gCurTask
_0803B830:
	movs r0, #8
_0803B832:
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	ldr r3, [sp, #4]
	cmp sl, r3
	bhs _0803B8F6
	mov r0, sb
	adds r0, #0x4a
	str r0, [sp, #8]
_0803B844:
	mov r1, sl
	lsls r1, r1, #2
	mov r8, r1
	ldr r7, [sp, #8]
	add r7, r8
	ldrh r0, [r7]
	adds r0, #0x40
	strh r0, [r7]
	mov r3, sl
	lsls r2, r3, #3
	mov r0, sb
	adds r0, #0x68
	adds r4, r0, r2
	subs r0, #0x20
	adds r5, r0, r1
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	mov r0, sb
	adds r0, #0x6c
	adds r6, r0, r2
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0803B8BC @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r1, r0, #0
	mov r2, r8
	cmp r1, #0
	bge _0803B8E6
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	ble _0803B8E6
	lsls r0, r1, #8
	ldr r1, [r6]
	adds r1, r1, r0
	str r1, [r6]
	ldr r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _0803B8C0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0803B8D2
	b _0803B8CE
	.align 2, 0
_0803B8BC: .4byte sub_8051F54
_0803B8C0:
	ldr r0, _0803B908 @ =0x00004FFF
	cmp r1, r0
	bgt _0803B8D2
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0803B8D2
_0803B8CE:
	rsbs r0, r0, #0
	strh r0, [r5]
_0803B8D2:
	ldr r0, [sp, #8]
	adds r2, r0, r2
	movs r1, #3
	mov r3, sl
	ands r1, r3
	lsls r1, r1, #6
	ldr r3, _0803B90C @ =0xFFFFFB80
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
_0803B8E6:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, [sp, #4]
	cmp sl, r0
	blo _0803B844
_0803B8F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B908: .4byte 0x00004FFF
_0803B90C: .4byte 0xFFFFFB80

	thumb_func_start sub_803B910
sub_803B910: @ 0x0803B910
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0803B9CC @ =gUnknown_080CFA4E
	mov r0, sp
	movs r2, #2
	bl memcpy
	ldr r0, _0803B9D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, [r5]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
_0803B956:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803B956
	movs r6, #0
	movs r2, #0x68
	adds r2, r2, r5
	mov sl, r2
	movs r7, #0x6c
	adds r7, r7, r5
	mov sb, r7
	movs r0, #0x48
	adds r0, r0, r5
	mov r8, r0
	ldr r7, _0803B9D4 @ =gCamera
_0803B988:
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r4, r5, r1
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0803B99C
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r5, r2
_0803B99C:
	lsls r2, r6, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	lsls r0, r6, #2
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0803B9DC
	ldr r0, [r4, #8]
	ldr r1, _0803B9D8 @ =0xFFFFFBFF
	ands r0, r1
	b _0803B9E4
	.align 2, 0
_0803B9CC: .4byte gUnknown_080CFA4E
_0803B9D0: .4byte gCurTask
_0803B9D4: .4byte gCamera
_0803B9D8: .4byte 0xFFFFFBFF
_0803B9DC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0803B9E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803B988
	ldrh r1, [r5, #0x2c]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x3b
	bhi _0803BA12
	lsls r0, r1, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	lsrs r7, r2, #0x12
	ldrh r1, [r5, #0x2c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsrs r3, r0, #3
	b _0803BA1C
_0803BA12:
	movs r7, #0x78
	mov ip, r7
	movs r7, #0xf
	movs r3, #0x28
	ldrh r1, [r5, #0x2c]
_0803BA1C:
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r4, r5, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0xd
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, _0803BB08 @ =gCamera
	ldr r1, [r2]
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r2, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	mov r5, ip
	lsls r5, r5, #0x10
	mov sl, r5
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r7, _0803BB0C @ =gUnknown_082B48B4
	mov r8, r7
	movs r5, #1
_0803BA70:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	adds r3, r1, r0
	adds r0, r3, #0
	ldr r2, _0803BB10 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sl
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r2, r6, #0
	ands r2, r5
	mov r7, sp
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r7, _0803BB10 @ =0x000003FF
	ands r0, r7
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sb
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	lsrs r0, r6, #1
	ands r0, r5
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r2, #0
	beq _0803BB18
	ldr r1, _0803BB14 @ =0xFFFFFF00
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB08: .4byte gCamera
_0803BB0C: .4byte gUnknown_082B48B4
_0803BB10: .4byte 0x000003FF
_0803BB14: .4byte 0xFFFFFF00
_0803BB18:
	ldr r2, _0803BB30 @ =0xFFFFFF00
	adds r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB30: .4byte 0xFFFFFF00
_0803BB34:
	ldr r0, [r4, #8]
	ldr r1, _0803BB5C @ =0xFFFFFBFF
	ands r0, r1
_0803BB3A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803BA70
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB5C: .4byte 0xFFFFFBFF

	thumb_func_start sub_803BB60
sub_803BB60: @ 0x0803BB60
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803BC04 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_0803BB72:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r4, r6, r0
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0803BB92
	ldrb r1, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0803BBF0
	subs r0, r1, #1
	strb r0, [r4, #6]
_0803BB92:
	ldrh r0, [r4, #0xa]
	adds r0, #0x18
	strh r0, [r4, #0xa]
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	asrs r0, r0, #8
	asrs r1, r1, #8
	ldr r2, _0803BC08 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r2, r0, #0
	cmp r2, #0
	bge _0803BBF0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0803BBF0
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #4
	strh r0, [r4, #0xa]
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrb r1, [r4, #5]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0803BBF0
	subs r0, r1, #1
	strb r0, [r4, #5]
_0803BBF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803BB72
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC04: .4byte gCurTask
_0803BC08: .4byte sub_8051F54

	thumb_func_start sub_803BC0C
sub_803BC0C: @ 0x0803BC0C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803BC74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r5, #0
	ldr r6, _0803BC78 @ =gCamera
_0803BC1E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r2, r7, r0
	movs r0, #6
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0803BC62
	ldr r0, [r2, #4]
	ldr r1, _0803BC7C @ =0x0002FF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	beq _0803BC62
	adds r4, r2, #0
	adds r4, #0x14
	ldr r0, [r2, #0xc]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803BC62:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803BC1E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC74: .4byte gCurTask
_0803BC78: .4byte gCamera
_0803BC7C: .4byte 0x0002FF00

	thumb_func_start sub_803BC80
sub_803BC80: @ 0x0803BC80
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803BD18 @ =sub_803BD28
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803BD1C @ =sub_803BE34
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _0803BD20 @ =0x03000008
	adds r4, r4, r0
	movs r0, #0
	mov sl, r0
	movs r0, #0
	mov sb, r0
	strh r5, [r1]
	strh r6, [r1, #2]
	movs r0, #0x2d
	strh r0, [r1, #4]
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0803BD24 @ =0x00000483
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD18: .4byte sub_803BD28
_0803BD1C: .4byte sub_803BE34
_0803BD20: .4byte 0x03000008
_0803BD24: .4byte 0x00000483

	thumb_func_start sub_803BD28
sub_803BD28: @ 0x0803BD28
	push {r4, r5, lr}
	ldr r0, _0803BD50 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #8
	adds r4, r1, r0
	ldrh r0, [r3, #4]
	subs r1, r0, #1
	strh r1, [r3, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0803BD54
	adds r0, r2, #0
	bl TaskDestroy
	b _0803BD90
	.align 2, 0
_0803BD50: .4byte gCurTask
_0803BD54:
	cmp r0, #0x13
	bgt _0803BD60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0803BD90
_0803BD60:
	ldr r2, _0803BD98 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldrh r1, [r3, #2]
	subs r1, r1, r0
	ldr r2, _0803BD9C @ =gUnknown_082B48B4
	movs r5, #4
	ldrsh r0, [r3, r5]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0803BD90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD98: .4byte gCamera
_0803BD9C: .4byte gUnknown_082B48B4

	thumb_func_start sub_803BDA0
sub_803BDA0: @ 0x0803BDA0
	push {r4, r5, r6, lr}
	ldr r0, _0803BE18 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803BE1C @ =gUnknown_03000628
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE20 @ =gUnknown_03000650
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE24 @ =gUnknown_03000678
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE28 @ =gUnknown_030006A0
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803BE2C @ =gUnknown_030006C8
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803BE04
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803BE04
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803BE30 @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803BE04:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE18: .4byte gCurTask
_0803BE1C: .4byte gUnknown_03000628
_0803BE20: .4byte gUnknown_03000650
_0803BE24: .4byte gUnknown_03000678
_0803BE28: .4byte gUnknown_030006A0
_0803BE2C: .4byte gUnknown_030006C8
_0803BE30: .4byte 0x0000020D

	thumb_func_start sub_803BE34
sub_803BE34: @ 0x0803BE34
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #8]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803BE48
sub_803BE48: @ 0x0803BE48
	push {lr}
	ldr r2, _0803BE94 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BE76
	movs r0, #0x80
	strb r0, [r1, #0xd]
	movs r0, #0
	strb r0, [r1, #0x15]
	ldr r1, [r2]
	ldr r0, _0803BE98 @ =Task_803AA28
	str r0, [r1, #8]
_0803BE76:
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	bl sub_803B498
	bl sub_803B354
	pop {r0}
	bx r0
	.align 2, 0
_0803BE94: .4byte gCurTask
_0803BE98: .4byte Task_803AA28

	thumb_func_start sub_803BE9C
sub_803BE9C: @ 0x0803BE9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x3f
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803BEDC @ =0x00000482
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	adds r0, #0xbe
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
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEDC: .4byte 0x00000482

	thumb_func_start sub_803BEE0
sub_803BEE0: @ 0x0803BEE0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0x91
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
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
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803BF20
sub_803BF20: @ 0x0803BF20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #6
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	ldr r0, _0803BF74 @ =0x00000484
	strh r0, [r5, #0xc]
	movs r0, #0x14
	cmp r4, #0
	bne _0803BF42
	movs r0, #9
_0803BF42:
	strb r0, [r5, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r6
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF74: .4byte 0x00000484

	thumb_func_start sub_803BF78
sub_803BF78: @ 0x0803BF78
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803BFC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0803BFB8
	subs r2, r0, #1
	strb r2, [r1, #0xd]
	cmp r3, #0
	bne _0803BFA6
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803BFA6
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803BFB8
_0803BFA6:
	movs r0, #0xb1
	lsls r0, r0, #3
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803BFB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFC0: .4byte gCurTask

	thumb_func_start sub_803BFC4
sub_803BFC4: @ 0x0803BFC4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r3, #0
	movs r4, #0
	ldr r5, _0803C00C @ =gUnknown_080CF850
	adds r0, r5, #2
	mov ip, r0
	movs r7, #4
_0803BFD4:
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0xec
	adds r1, r6, r1
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	lsls r2, r3, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	add r2, ip
	ldrh r0, [r2]
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	strb r7, [r1, #5]
	movs r0, #0x3c
	strb r0, [r1, #6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803BFD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C00C: .4byte gUnknown_080CF850

	thumb_func_start sub_803C010
sub_803C010: @ 0x0803C010
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	mov r0, sp
	movs r1, #0
	movs r2, #0x14
	bl memset
	ldr r0, _0803C044 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r7, _0803C048 @ =gPlayers
_0803C034:
	cmp r5, #0
	beq _0803C04C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C050
	.align 2, 0
_0803C044: .4byte gCurTask
_0803C048: .4byte gPlayers
_0803C04C:
	ldr r0, _0803C090 @ =gStageData
	ldrb r1, [r0, #6]
_0803C050:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803C07E
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	mov r3, r8
	bl sub_803AD38
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803AAE8
_0803C07E:
	adds r5, #1
	cmp r5, #1
	ble _0803C034
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C090: .4byte gStageData

	thumb_func_start sub_803C094
sub_803C094: @ 0x0803C094
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	ldr r5, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	lsls r1, r6, #3
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803C0F4
	ldr r1, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0803C0F8
_0803C0F4:
	movs r0, #0
	b _0803C11E
_0803C0F8:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0803C10A
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
_0803C10A:
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_8020A58
_0803C11E:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_803C12C
sub_803C12C: @ 0x0803C12C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0803C18C @ =sub_803C3A8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803C190 @ =sub_803D6C0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r0, _0803C194 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803C198 @ =gPlayers
	adds r7, r0, r1
	strh r5, [r6, #0x30]
	strh r4, [r6, #0x32]
	lsls r4, r4, #0x10
	asrs r4, r4, #8
	str r4, [r6, #0x2c]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0803C1A0
	ldr r1, _0803C19C @ =0x03000034
	adds r0, r2, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0803C1AA
	.align 2, 0
_0803C18C: .4byte sub_803C3A8
_0803C190: .4byte sub_803D6C0
_0803C194: .4byte gStageData
_0803C198: .4byte gPlayers
_0803C19C: .4byte 0x03000034
_0803C1A0:
	ldr r1, _0803C208 @ =0x03000034
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803C20C @ =0xFFFFFD00
_0803C1AA:
	str r0, [r6, #0x28]
	movs r0, #0x8a
	bl sub_8003DF0
	movs r0, #6
	bl VramMalloc
	str r0, [r6]
	movs r2, #0
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	subs r0, #0xf5
	strh r0, [r6, #0xc]
	strb r2, [r6, #0x1a]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r2, [r6, #0x1f]
	ldrh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6, #0x10]
	ldrh r0, [r6, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #8]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0803C200
	ldr r1, _0803C210 @ =gUnknown_03001D00
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803C200:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C208: .4byte 0x03000034
_0803C20C: .4byte 0xFFFFFD00
_0803C210: .4byte gUnknown_03001D00
