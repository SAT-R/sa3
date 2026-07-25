.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80711C8
sub_80711C8: @ 0x080711C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	movs r7, #0x82
	lsls r7, r7, #1
	add r7, r8
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	bne _080711EA
	b _08071308
_080711EA:
	cmp r0, #1
	bgt _080711F4
	cmp r0, #0
	beq _080711FC
	b _080713FC
_080711F4:
	cmp r0, #2
	bne _080711FA
	b _080713A4
_080711FA:
	b _080713FC
_080711FC:
	mov r5, r8
	adds r5, #0xa8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _080712F4 @ =gCamera
	mov sl, r1
	ldr r1, [r1]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r3, sl
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	mov r1, r8
	ldrh r0, [r1, #0x28]
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r2, r8
	ldr r1, [r2, #4]
	ldr r3, _080712F8 @ =0xFFFFE000
	adds r0, r1, r3
	ldr r4, [r4]
	cmp r4, r0
	bne _08071250
	b _080713FC
_08071250:
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	ldr r0, [r2]
	mov sb, r0
	ldr r2, _080712FC @ =0xFFFFC800
	adds r2, r2, r1
	mov r8, r2
	ldr r0, [r5]
	mov r3, sb
	subs r6, r0, r3
	subs r5, r4, r2
	lsls r0, r5, #8
	asrs r0, r0, #0x10
	lsls r1, r6, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r2, r1, r0
	adds r0, r2, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	asrs r2, r0, #3
	ldr r1, _08071300 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712AA
	ldr r3, _08071304 @ =0x00003FFF
	adds r0, r0, r3
_080712AA:
	asrs r6, r0, #0xe
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712BE
	ldr r2, _08071304 @ =0x00003FFF
	adds r0, r0, r2
_080712BE:
	asrs r5, r0, #0xe
	movs r4, #0
	mov r2, sl
_080712C4:
	mov r3, sb
	asrs r0, r3, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	add sb, r6
	add r8, r5
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	cmp r4, #7
	bls _080712C4
	b _080713FC
	.align 2, 0
_080712F4: .4byte gCamera
_080712F8: .4byte 0xFFFFE000
_080712FC: .4byte 0xFFFFC800
_08071300: .4byte gSineTable
_08071304: .4byte 0x00003FFF
_08071308:
	movs r2, #0xa8
	add r2, r8
	mov sb, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r5, _080713A0 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, [r4]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r1, r4, r3
	mov r2, r8
	ldr r0, [r2, #4]
	subs r6, r0, r1
	adds r0, r6, #0
	movs r1, #5
	bl __divsi3
	adds r6, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r2, r4, r3
	movs r4, #0
_08071354:
	cmp r4, #1
	bhi _08071372
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	adds r0, r7, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r2, [sp]
_08071372:
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	asrs r0, r2, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	adds r2, r2, r6
	cmp r4, #4
	bls _08071354
	b _080713FC
	.align 2, 0
_080713A0: .4byte gCamera
_080713A4:
	mov r0, r8
	adds r0, #0xa8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r4, _0807140C @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xac
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	mov r0, r8
	adds r0, #0xb8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xbc
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080713FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807140C: .4byte gCamera

	thumb_func_start sub_8071410
sub_8071410: @ 0x08071410
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x19
	ldrsb r5, [r4, r5]
	cmp r5, #0
	bne _080714B6
	ldr r0, _08071440 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_806F2B8
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071448
	ldr r0, _08071444 @ =0x0000022E
	b _0807144A
	.align 2, 0
_08071440: .4byte 0x000004D5
_08071444: .4byte 0x0000022E
_08071448:
	ldr r0, _08071480 @ =0x00000229
_0807144A:
	bl m4aSongNumStart
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _0807146C
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _08071484 @ =0x0000066F
	cmp r0, r1
	ble _0807146C
	movs r0, #3
	strh r0, [r4, #0x10]
_0807146C:
	ldr r0, _08071488 @ =gStageData
	ldrb r1, [r0, #1]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807148C
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _08071492
	.align 2, 0
_08071480: .4byte 0x00000229
_08071484: .4byte 0x0000066F
_08071488: .4byte gStageData
_0807148C:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_08071492:
	adds r0, r0, r1
	ldr r1, _080714BC @ =0x000677FF
	cmp r0, r1
	ble _080714A2
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_080714A2:
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _080714B6
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _080714B6
	ldrb r1, [r4, #0x18]
	movs r0, #3
	bl sub_8027674
_080714B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080714BC: .4byte 0x000677FF

	thumb_func_start sub_80714C0
sub_80714C0: @ 0x080714C0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0807158A
	ldr r0, _080714F8 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0807150A
	cmp r0, #1
	bgt _080714FC
	cmp r0, #0
	beq _08071502
	b _0807151E
	.align 2, 0
_080714F8: .4byte 0x000004D5
_080714FC:
	cmp r0, #2
	beq _08071518
	b _0807151E
_08071502:
	adds r0, r4, #0
	bl sub_8071720
	b _0807151E
_0807150A:
	adds r0, r4, #0
	bl sub_8071764
	adds r0, r4, #0
	bl sub_806FE98
	b _0807151E
_08071518:
	adds r0, r4, #0
	bl sub_80717A8
_0807151E:
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071534
	ldr r0, _08071530 @ =0x0000022E
	b _08071536
	.align 2, 0
_08071530: .4byte 0x0000022E
_08071534:
	ldr r0, _08071568 @ =0x00000229
_08071536:
	bl m4aSongNumStart
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _08071558
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _0807156C @ =0x0000066F
	cmp r0, r1
	ble _08071558
	movs r0, #3
	strh r0, [r4, #0x10]
_08071558:
	ldr r0, _08071570 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08071574
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0807157A
	.align 2, 0
_08071568: .4byte 0x00000229
_0807156C: .4byte 0x0000066F
_08071570: .4byte gStageData
_08071574:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_0807157A:
	adds r0, r0, r1
	ldr r1, _08071590 @ =0x000677FF
	cmp r0, r1
	ble _0807158A
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_0807158A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071590: .4byte 0x000677FF

	thumb_func_start sub_8071594
sub_8071594: @ 0x08071594
	push {r4, r5, r6, lr}
	ldr r1, _080715C0 @ =gStageData
	adds r6, r1, #0
	adds r6, #0x88
	ldr r1, [r6]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldrb r1, [r0, #2]
	movs r2, #0x7f
	ands r2, r1
	ldrb r1, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r2, #1
	beq _080715C4
	cmp r2, #3
	beq _08071604
	b _0807160E
	.align 2, 0
_080715C0: .4byte gStageData
_080715C4:
	lsls r0, r1, #8
	str r0, [r5]
	movs r2, #0
	strb r2, [r5, #0x1c]
	ldr r1, [r5, #0x40]
	ldr r0, [r1, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r0, r4
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r1, #4]
	strh r2, [r1, #0x1c]
	ldr r0, [r5, #0x40]
	strh r2, [r0, #0x18]
	ldr r1, [r5, #0x44]
	ldr r0, [r1, #4]
	orrs r0, r4
	ands r0, r3
	str r0, [r1, #4]
	strh r2, [r1, #0x1c]
	ldr r0, [r5, #0x44]
	strh r2, [r0, #0x18]
	strh r2, [r5, #0x2c]
	ldr r1, [r6]
	ldr r0, _08071600 @ =Task_EggCube_806F3A0
	str r0, [r1, #8]
	b _0807160E
	.align 2, 0
_08071600: .4byte Task_EggCube_806F3A0
_08071604:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_80714C0
_0807160E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Task_EggCubeInit
Task_EggCubeInit: @ 0x08071614
	push {r4, r5, lr}
	ldr r4, _08071634 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x14]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08071638
	adds r0, r2, #0
	bl TaskDestroy
	b _08071658
	.align 2, 0
_08071634: .4byte gCurTask
_08071638:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807164C
	ldr r1, [r4]
	ldr r0, _08071648 @ =Task_EggCube_806EC50
	b _08071650
	.align 2, 0
_08071648: .4byte Task_EggCube_806EC50
_0807164C:
	ldr r1, [r4]
	ldr r0, _08071660 @ =Task_EggCube_806ED00
_08071650:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_806FA0C
_08071658:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071660: .4byte Task_EggCube_806ED00

	thumb_func_start Task_EggCube_8071664
Task_EggCube_8071664: @ 0x08071664
	push {lr}
	ldr r0, _08071690 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_806FA0C
	pop {r0}
	bx r0
	.align 2, 0
_08071690: .4byte gCurTask

	thumb_func_start TaskDestructor_EggCube
TaskDestructor_EggCube: @ 0x08071694
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _080716A8
	bl VramFree
_080716A8:
	ldr r1, _080716D4 @ =0x030000C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080716B6
	bl VramFree
_080716B6:
	ldr r1, _080716D8 @ =0x030000CC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080716C4
	bl VramFree
_080716C4:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _080716CE
	bl VramFree
_080716CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080716D4: .4byte 0x030000C8
_080716D8: .4byte 0x030000CC

	thumb_func_start sub_80716DC
sub_80716DC: @ 0x080716DC
	push {r4, lr}
	adds r4, r0, #0
	strb r1, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _08071700
	cmp r0, #1
	bgt _080716F2
	cmp r0, #0
	beq _080716F8
	b _08071714
_080716F2:
	cmp r0, #2
	beq _0807170E
	b _08071714
_080716F8:
	adds r0, r4, #0
	bl sub_8071720
	b _08071714
_08071700:
	adds r0, r4, #0
	bl sub_8071764
	adds r0, r4, #0
	bl sub_806FE98
	b _08071714
_0807170E:
	adds r0, r4, #0
	bl sub_80717A8
_08071714:
	movs r0, #1
	strb r0, [r4, #0x13]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8071720
sub_8071720: @ 0x08071720
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807175C @ =Task_14_80717EC
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _08071760 @ =TaskDestructor_EggCube14
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #0
	bl sub_8070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807175C: .4byte Task_14_80717EC
_08071760: .4byte TaskDestructor_EggCube14

	thumb_func_start sub_8071764
sub_8071764: @ 0x08071764
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080717A0 @ =Task_14_80703D4
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080717A4 @ =TaskDestructor_EggCube14
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	bl sub_8070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080717A0: .4byte Task_14_80703D4
_080717A4: .4byte TaskDestructor_EggCube14

	thumb_func_start sub_80717A8
sub_80717A8: @ 0x080717A8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080717E4 @ =Task_14_8071864
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080717E8 @ =TaskDestructor_EggCube14
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #2
	bl sub_8070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080717E4: .4byte Task_14_8071864
_080717E8: .4byte TaskDestructor_EggCube14

	thumb_func_start Task_14_80717EC
Task_14_80717EC: @ 0x080717EC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08071818 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08071810
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0807181C
_08071810:
	adds r0, r2, #0
	bl TaskDestroy
	b _0807185C
	.align 2, 0
_08071818: .4byte gCurTask
_0807181C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8070B08
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r0, [r6]
	bl sub_80711C8
_0807185C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_14_8071864
Task_14_8071864: @ 0x08071864
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08071890 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08071888
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _08071894
_08071888:
	adds r0, r2, #0
	bl TaskDestroy
	b _080718D4
	.align 2, 0
_08071890: .4byte gCurTask
_08071894:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80707A0
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r0, [r6]
	bl sub_80711C8
_080718D4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_EggCube14
TaskDestructor_EggCube14: @ 0x080718DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	beq _080718F2
	movs r0, #0
	b _080718F4
_080718F2:
	movs r0, #0xc8
_080718F4:
	strh r0, [r1, #0x24]
	pop {r0}
	bx r0
	.align 2, 0

    thumb_func_start sub_80718FC
sub_80718FC:
    bx lr

    thumb_func_start sub_8071900
sub_8071900:
    bx lr

    @ matched as sub_8071904_inline in boss_4.c
	thumb_func_start sub_8071904
sub_8071904: @ 0x08071904
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2, #0x10]
	cmp r0, r1
	beq _08071962
	movs r4, #0
	movs r3, #0
	strh r1, [r2, #0x10]
	ldrh r0, [r2, #0x10]
	cmp r0, #1
	beq _08071938
	cmp r0, #1
	bgt _08071928
	cmp r0, #0
	beq _08071932
	b _08071962
_08071928:
	cmp r0, #2
	beq _0807193E
	cmp r0, #4
	beq _08071958
	b _08071962
_08071932:
	strb r4, [r2, #0x1a]
	str r3, [r2, #8]
	b _08071960
_08071938:
	movs r0, #8
	rsbs r0, r0, #0
	b _0807195E
_0807193E:
	movs r0, #0x80
	str r0, [r2, #8]
	str r3, [r2, #0xc]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, _08071954 @ =0x0000066F
	cmp r0, r1
	ble _08071962
	movs r0, #3
	strh r0, [r2, #0x10]
	b _08071962
	.align 2, 0
_08071954: .4byte 0x0000066F
_08071958:
	strb r4, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #4
_0807195E:
	str r0, [r2, #8]
_08071960:
	str r3, [r2, #0xc]
_08071962:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8071968
sub_8071968: @ 0x08071968
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r0, #0
	adds r2, #0xd0
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r2, #8]
	cmp r1, #1
	beq _080719A0
	cmp r1, #1
	bgt _08071986
	cmp r1, #0
	beq _0807198C
	b _080719A6
_08071986:
	cmp r1, #2
	beq _080719A0
	b _080719A6
_0807198C:
	movs r1, #0
	ldr r0, _0807199C @ =0x000004CB
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0x3e
	orrs r0, r3
	str r0, [r2, #8]
	b _080719A6
	.align 2, 0
_0807199C: .4byte 0x000004CB
_080719A0:
	ldr r0, _080719B0 @ =0x000004CB
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_080719A6:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r0}
	bx r0
	.align 2, 0
_080719B0: .4byte 0x000004CB

	thumb_func_start sub_80719B4
sub_80719B4: @ 0x080719B4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x54
	bl VramMalloc
	adds r4, #0xcc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80719C8
sub_80719C8: @ 0x080719C8
	push {r4, r5, lr}
	movs r3, #0
	strb r3, [r0, #0x1c]
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #0x14
	orrs r1, r5
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r1, r4
	str r1, [r2, #4]
	strh r3, [r2, #0x1c]
	ldr r1, [r0, #0x40]
	strh r3, [r1, #0x18]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r5
	ands r1, r4
	str r1, [r2, #4]
	strh r3, [r2, #0x1c]
	ldr r1, [r0, #0x44]
	strh r3, [r1, #0x18]
	strh r3, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    thumb_func_start sub_8071A00
sub_8071A00:
    bx lr
	.align 2, 0

    thumb_func_start sub_8071A04
sub_8071A04:
    bx lr
	.align 2, 0
