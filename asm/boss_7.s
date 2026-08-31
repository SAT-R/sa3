.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start sub_80781C0
sub_80781C0: @ 0x080781C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08078360 @ =Task_BC_8078C3C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078364 @ =TaskDestructor_8078C28
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	mov sl, r0
	str r5, [r0]
	ldr r2, _08078368 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r6, _0807836C @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08078370 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	mov r8, r1
	ands r0, r1
	movs r3, #0
	mov r1, sl
	strb r0, [r1, #5]
	ldr r0, [r2]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #5
	ands r0, r1
	mov r1, sl
	strb r0, [r1, #6]
	strh r3, [r1, #8]
	str r3, [r1, #0x20]
	mov r3, r8
	strb r3, [r1, #4]
	str r4, [r1, #0x10]
	adds r0, r4, #4
	str r0, [r1, #0x14]
	ldr r0, [r4]
	str r0, [r1, #0x18]
	ldr r0, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r1, _08078374 @ =gCamera
	ldr r0, [r1]
	mov r3, sl
	strh r0, [r3, #0xa]
	ldr r0, [r1, #4]
	strh r0, [r3, #0xc]
	movs r7, #0
	ldr r4, _08078378 @ =0x03000024
	add r4, sb
	adds r3, r2, #0
	ldr r0, _08078378 @ =0x03000024
	add r0, sb
	str r0, [sp, #0xc]
_0807824E:
	lsls r2, r7, #3
	adds r2, r4, r2
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, _0807837C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807824E
	movs r7, #0
	movs r3, #0x28
	add r3, sl
	mov r8, r3
	movs r0, #0x3c
	add r0, sl
	mov sb, r0
	movs r1, #0x40
	add r1, sl
	mov ip, r1
	mov r3, sl
	adds r3, #0x60
	str r3, [sp, #8]
	mov r0, sl
	adds r0, #0x54
	str r0, [sp, #4]
	mov r4, r8
	ldr r3, _08078368 @ =gPseudoRandom
	ldr r6, _0807836C @ =0x00196225
	ldr r5, _08078370 @ =0x3C6EF35F
_0807829A:
	lsls r2, r7, #3
	adds r2, r4, r2
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, _0807837C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807829A
	movs r7, #0
	mov r6, sb
	ldr r5, [sp, #0xc]
	mov r4, ip
	mov r3, r8
_080782C8:
	lsls r1, r7, #3
	adds r2, r6, r1
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080782C8
	movs r7, #0
	ldr r5, _08078368 @ =gPseudoRandom
	ldr r3, _0807836C @ =0x00196225
	mov r8, r3
	ldr r6, _08078370 @ =0x3C6EF35F
_080782EE:
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r4, r0, r3
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r6
	str r2, [r5]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	adds r0, #5
	lsls r0, r0, #7
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, [sp, #4]
	adds r4, r1, r3
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	adds r2, r2, r6
	str r2, [r5]
	lsrs r0, r2, #8
	movs r1, #5
	ands r0, r1
	lsls r3, r0, #4
	str r3, [r4]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807833A
	rsbs r0, r3, #0
	str r0, [r4]
_0807833A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080782EE
	movs r0, #0x90      @ SE_CAPSULE_DESTROY
	bl m4aSongNumStart
	mov r0, sl
	bl sub_8078380
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078360: .4byte Task_BC_8078C3C
_08078364: .4byte TaskDestructor_8078C28
_08078368: .4byte gPseudoRandom
_0807836C: .4byte 0x00196225
_08078370: .4byte 0x3C6EF35F
_08078374: .4byte gCamera
_08078378: .4byte 0x03000024
_0807837C: .4byte 0xFFFFF000

	thumb_func_start sub_8078380
sub_8078380: @ 0x08078380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r5, _08078460 @ =gUnknown_080D5A44
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r5, #4
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _08078464 @ =gUnknown_080D5A14
	mov r8, r0
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r4, r0
	bl VramMalloc
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0x6c
	str r7, [r6, #0x6c]
	lsls r4, r4, #5
	adds r7, r7, r4
	ldrb r1, [r6, #5]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrh r1, [r1]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #5]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r1, #0
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldrb r0, [r6, #6]
	cmp r0, #7
	beq _08078452
	adds r0, r6, #0
	adds r0, #0x94
	str r7, [r0]
	ldrb r1, [r6, #6]
	lsls r1, r1, #3
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #6]
	lsls r1, r1, #3
	add r1, r8
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	orrs r1, r5
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	mov r1, sb
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
_08078452:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078460: .4byte gUnknown_080D5A44
_08078464: .4byte gUnknown_080D5A14

	thumb_func_start sub_8078468
sub_8078468: @ 0x08078468
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	mov r7, ip
	adds r7, #0x40
	ldr r3, _080784A8 @ =0x0000B3FF
	mov sb, r3
_08078480:
	lsls r2, r6, #3
	adds r0, r7, r2
	mov r3, ip
	ldr r1, [r3, #0x1c]
	ldr r0, [r0]
	adds r1, r1, r0
	adds r5, r2, #0
	cmp r1, sb
	bgt _080784D8
	lsls r0, r6, #2
	mov r1, ip
	adds r1, #0x54
	adds r3, r1, r0
	ldr r2, [r3]
	adds r4, r0, #0
	cmp r2, #0
	ble _080784AC
	adds r0, r2, #0
	adds r0, #0x10
	b _080784B0
	.align 2, 0
_080784A8: .4byte 0x0000B3FF
_080784AC:
	adds r0, r2, #0
	subs r0, #0x10
_080784B0:
	str r0, [r3]
	mov r2, ip
	adds r2, #0x3c
	adds r2, r2, r5
	adds r1, r1, r4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, ip
	adds r0, #0x60
	adds r0, r0, r4
	ldr r1, [r0]
	adds r1, #0x40
	str r1, [r0]
	adds r2, r7, r5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _080784E2
_080784D8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080784E2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08078480
	mov r0, r8
	cmp r0, #3
	beq _080784F6
	movs r0, #0
	b _080784F8
_080784F6:
	movs r0, #1
_080784F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078504
sub_8078504: @ 0x08078504
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x6c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r8, r0
	movs r7, #0
_0807851A:
	ldr r1, [r5, #0x10]
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x24
	adds r6, r0, r2
	ldr r0, [r1]
	ldr r1, [r6]
	adds r0, r0, r1
	asrs r3, r0, #8
	strh r3, [r4, #0x10]
	ldr r1, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x28
	adds r2, r0, r2
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #8
	strh r1, [r4, #0x12]
	cmp r7, #0
	beq _08078554
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r3, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #0x12]
_08078554:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _0807851A
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8078570
sub_8078570: @ 0x08078570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r7, sp
_0807857E:
	ldrb r0, [r4, #6]
	cmp r0, #7
	beq _08078636
	adds r5, r4, #0
	adds r5, #0x94
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r6, [r4, #0x18]
	adds r3, r0, #0
	cmp r1, r6
	beq _080785E4
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	beq _080785E4
	ldr r2, _080785E0 @ =gCamera
	ldr r0, [r2]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r7]
	ldr r0, [r2, #4]
	ldrh r1, [r4, #0xc]
	subs r0, r0, r1
	strh r0, [r7, #2]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, r6, r1
	mov r0, r8
	lsls r3, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #8
	strh r1, [r5, #0x10]
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	adds r2, r4, #0
	adds r2, #0x40
	adds r1, r2, r3
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	b _080785FE
	.align 2, 0
_080785E0: .4byte gCamera
_080785E4:
	mov r0, r8
	lsls r2, r0, #3
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	adds r3, r2, #0
	adds r2, r4, #0
	adds r2, #0x40
_080785FE:
	ldr r0, [r4, #0x14]
	adds r1, r2, r3
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r1, r0, #8
	strh r1, [r5, #0x12]
	mov r2, r8
	cmp r2, #0
	beq _08078630
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x12]
_08078630:
	adds r0, r5, #0
	bl DisplaySprite
_08078636:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #2
	bls _0807857E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078650
sub_8078650: @ 0x08078650
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08078694 @ =gSineTable
	asrs r0, r0, #7
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	str r1, [r3, #0x14]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	str r0, [r3, #0x1c]
	ldr r1, [r3, #0x18]
	ldr r2, _08078698 @ =0xFFFFFC00
	adds r1, r1, r2
	str r1, [r3, #0x18]
	ldr r0, [r3, #0x20]
	adds r0, r0, r2
	str r0, [r3, #0x20]
	ldr r0, _0807869C @ =0xFFFFC400
	cmp r1, r0
	blt _080786A0
	movs r0, #0
	b _080786B0
	.align 2, 0
_08078694: .4byte gSineTable
_08078698: .4byte 0xFFFFFC00
_0807869C: .4byte 0xFFFFC400
_080786A0:
	ldr r1, [r3, #0x24]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	str r0, [r3, #0x18]
	str r0, [r3, #0x20]
	str r0, [r3, #0x10]
	movs r0, #1
_080786B0:
	pop {r1}
	bx r1

	thumb_func_start sub_80786B4
sub_80786B4: @ 0x080786B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r0, _08078754 @ =sub_8078764
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078758 @ =sub_8078D18
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, [r6]
	str r0, [r5, #4]
	ldr r0, [r6, #4]
	str r0, [r5, #0xc]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	str r0, [r5, #0x10]
	mov r0, r8
	str r0, [r5, #0x14]
	mov r1, sb
	str r1, [r5, #0x18]
	mov r0, sl
	str r0, [r5]
	ldr r6, _0807875C @ =gUnknown_080D5A44
	ldr r0, [r6, #0xc]
	bl VramMalloc
	ldr r1, _08078760 @ =0x0300001C
	adds r4, r4, r1
	str r0, [r4]
	ldrh r0, [r6, #8]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r6, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	str r1, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
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
_08078754: .4byte sub_8078764
_08078758: .4byte sub_8078D18
_0807875C: .4byte gUnknown_080D5A44
_08078760: .4byte 0x0300001C

	thumb_func_start sub_8078764
sub_8078764: @ 0x08078764
	push {r4, r5, r6, r7, lr}
	ldr r7, _080787D0 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ldr r1, [r6, #0xc]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2e]
	ldr r0, _080787D4 @ =0x0300001C
	adds r5, r5, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r6, #0x2e]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	cmp r4, #0
	bne _080787CA
	ldr r0, [r6]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl TaskDestroy
_080787CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080787D0: .4byte gCurTask
_080787D4: .4byte 0x0300001C

	thumb_func_start sub_80787D8
sub_80787D8: @ 0x080787D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r7, #0
	ldr r0, _08078878 @ =gUnknown_080D5A64
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _0807887C @ =gSineTable
	mov sb, r0
_080787F4:
	mov r1, ip
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, sl
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r5, r0, #3
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #0xc]
	lsls r0, r7, #3
	mov r3, r8
	adds r3, #0x28
	adds r3, r3, r0
	mov r1, ip
	str r1, [r3]
	mov r4, r8
	adds r4, #0x24
	adds r4, r4, r0
	str r1, [r4]
	asrs r2, r2, #6
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #8
	adds r6, r0, r1
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r5, r5, #6
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r5, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r1, [r6]
	lsrs r0, r1, #6
	cmp r0, #0x10
	blo _08078880
	movs r0, #1
	b _08078892
	.align 2, 0
_08078878: .4byte gUnknown_080D5A64
_0807887C: .4byte gSineTable
_08078880:
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r6]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080787F4
	movs r0, #0
_08078892:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80788A4
sub_80788A4: @ 0x080788A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0]
	ldr r0, _080788FC @ =Task_104_8077F80
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08078900 @ =sub_8078A68
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [sp, #8]
	str r0, [r5, #0x40]
	str r4, [r5, #0x3c]
	cmp r0, #0
	beq _08078904
	add r0, sp, #8
	movs r2, #0x98
	lsls r2, r2, #3
	add r1, sp, #4
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_807A3D8
	ldr r0, [r0, #0x14]
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r5, #0xc]
	adds r0, #0x12
	str r0, [r5, #0x10]
	b _08078908
	.align 2, 0
_080788FC: .4byte Task_104_8077F80
_08078900: .4byte sub_8078A68
_08078904:
	str r6, [r5, #0xc]
	str r7, [r5, #0x10]
_08078908:
	movs r0, #0
	strb r0, [r5, #9]
	ldr r0, [sp, #0x20]
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8077D40
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0


    @ TODO: Called from Boss 2 (EggWheeler)!
	thumb_func_start sub_8078920
sub_8078920: @ 0x08078920
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08078968 @ =sub_8078C90
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0807896C @ =TaskDestructor_28_8078C8C
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	str r4, [r0, #8]
	adds r4, #4
	str r4, [r0, #0xc]
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #6]
	strb r2, [r0, #4]
	str r6, [r0, #0x24]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078968: .4byte sub_8078C90
_0807896C: .4byte TaskDestructor_28_8078C8C

	thumb_func_start sub_8078970
sub_8078970: @ 0x08078970
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080789E0 @ =Task_30_8078AC4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080789E4 @ =TaskDestructor_8078AC0
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strh r2, [r0, #8]
	str r2, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	strb r4, [r0, #4]
	str r6, [r0]
	ldr r1, [r5]
	str r1, [r0, #0x20]
	ldr r1, [r5, #4]
	str r1, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #0xc]
	ldr r1, _080789E8 @ =0xFFFFFC00
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	mov r1, r8
	str r1, [r0, #0x28]
	mov r1, sb
	str r1, [r0, #0x2c]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080789E0: .4byte Task_30_8078AC4
_080789E4: .4byte TaskDestructor_8078AC0
_080789E8: .4byte 0xFFFFFC00

	thumb_func_start sub_80789EC
sub_80789EC: @ 0x080789EC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08078A58 @ =Task_68_8078D34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08078A5C @ =sub_8078D30
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r5, [r0]
	str r4, [r0, #0x18]
	adds r4, #4
	str r4, [r0, #0x1c]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #6]
	strb r2, [r0, #4]
	str r6, [r0, #0x64]
	movs r2, #0
	ldr r0, _08078A60 @ =0x03000024
	adds r6, r3, r0
	movs r4, #0
	adds r0, #4
	adds r5, r3, r0
	subs r0, #0x20
	adds r3, r3, r0
_08078A34:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	lsls r0, r2, #1
	adds r0, r3, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08078A34
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08078A58: .4byte Task_68_8078D34
_08078A5C: .4byte sub_8078D30
_08078A60: .4byte 0x03000024

	thumb_func_start TaskDestructor_8078A64
TaskDestructor_8078A64: @ 0x08078A64
	bx lr
	.align 2, 0
    

	thumb_func_start sub_8078A68
sub_8078A68: @ 0x08078A68
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0, #4]
	movs r0, #0
	strb r0, [r1]
	bx lr

	thumb_func_start sub_8078A78
sub_8078A78: @ 0x08078A78
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r4, #0
	mov r6, ip
	adds r6, #0x2c
	ldr r5, [r1, #4]
_08078A84:
	lsls r1, r4, #2
	adds r3, r6, r1
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r0, r5, r0
	cmp r0, #0xb3
	bgt _08078AAE
	mov r2, ip
	adds r2, #0x24
	adds r2, r2, r1
	ldr r0, [r2]
	mov r7, ip
	ldr r1, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r7, #0x38]
	adds r1, #0x20
	str r1, [r7, #0x38]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
_08078AAE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08078A84
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_8078AC0
TaskDestructor_8078AC0: @ 0x08078AC0
	bx lr
	.align 2, 0

	thumb_func_start Task_30_8078AC4
Task_30_8078AC4: @ 0x08078AC4
	push {r4, r5, lr}
	ldr r5, _08078AF4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8078B74
	adds r0, r4, #0
	bl sub_807813C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08078AEC
	ldr r0, [r5]
	bl TaskDestroy
_08078AEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078AF4: .4byte gCurTask

	thumb_func_start sub_8078AF8
sub_8078AF8: @ 0x08078AF8
	push {r4, lr}
	ldr r4, _08078B1C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_8078BAC
	cmp r0, #1
	bne _08078B14
	ldr r1, [r4]
	ldr r0, _08078B20 @ =sub_8078B24
	str r0, [r1, #8]
_08078B14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08078B1C: .4byte gCurTask
_08078B20: .4byte sub_8078B24

	thumb_func_start sub_8078B24
sub_8078B24: @ 0x08078B24
	push {lr}
	ldr r2, _08078B48 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	cmp r0, #0xb3
	bls _08078B44
	ldr r1, [r1]
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08078B4C @ =sub_8078B50
	str r0, [r1, #8]
_08078B44:
	pop {r0}
	bx r0
	.align 2, 0
_08078B48: .4byte gCurTask
_08078B4C: .4byte sub_8078B50

	thumb_func_start sub_8078B50
sub_8078B50: @ 0x08078B50
	push {lr}
	ldr r2, _08078B70 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08078B70: .4byte gCurTask

	thumb_func_start sub_8078B74
sub_8078B74: @ 0x08078B74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x28]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08078BA4
	movs r5, #0
	cmp r5, r0
	bhs _08078BA4
_08078B86:
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #4]
	cmp r5, r0
	blo _08078B86
_08078BA4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078BAC
sub_8078BAC: @ 0x08078BAC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r2, #0
	ldr r0, [r5, #0x28]
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	ldr r3, _08078C14 @ =gCamera
	ldr r3, [r3, #4]
	adds r0, r0, r3
	str r4, [sp]
	ldr r3, _08078C18 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08078BF2
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #0xff
	strb r0, [r5, #6]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_08078BF2:
	movs r0, #6
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x18]
	subs r1, r1, r0
	str r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	adds r2, r2, r1
	str r2, [r5, #0x10]
	ldr r0, [r5, #0x24]
	adds r0, r0, r2
	str r0, [r5, #0x24]
	cmp r2, #0
	beq _08078C1C
	movs r0, #0
	b _08078C1E
	.align 2, 0
_08078C14: .4byte gCamera
_08078C18: .4byte sa2__sub_801EE64
_08078C1C:
	movs r0, #1
_08078C1E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_8078C28
TaskDestructor_8078C28: @ 0x08078C28
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_BC_8078C3C
Task_BC_8078C3C: @ 0x08078C3C
	push {r4, r5, lr}
	ldr r5, _08078C88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _08078C58
	adds r0, r4, #0
	bl sub_8078504
	strb r0, [r4, #4]
_08078C58:
	adds r0, r4, #0
	bl sub_8078570
	adds r0, r4, #0
	bl sub_8078468
	cmp r0, #1
	bne _08078C82
	ldr r0, [r4]
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1]
	cmp r0, #0xc8
	bls _08078C7C
	movs r0, #0
	strb r0, [r1]
_08078C7C:
	ldr r0, [r5]
	bl TaskDestroy
_08078C82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078C88: .4byte gCurTask

	thumb_func_start TaskDestructor_28_8078C8C
TaskDestructor_28_8078C8C: @ 0x08078C8C
	bx lr
	.align 2, 0

	thumb_func_start sub_8078C90
sub_8078C90: @ 0x08078C90
	push {r4, r5, lr}
	ldr r5, _08078CB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8078650
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08078CB8
	ldr r0, [r5]
	bl TaskDestroy
	b _08078CBE
	.align 2, 0
_08078CB4: .4byte gCurTask
_08078CB8:
	adds r0, r4, #0
	bl sub_8078CC4
_08078CBE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8078CC4
sub_8078CC4: @ 0x08078CC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
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

	thumb_func_start sub_8078D18
sub_8078D18: @ 0x08078D18
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8078D2C
sub_8078D2C: @ 0x08078D2C
	bx lr
	.align 2, 0

	thumb_func_start sub_8078D30
sub_8078D30: @ 0x08078D30
	bx lr
	.align 2, 0

	thumb_func_start Task_68_8078D34
Task_68_8078D34: @ 0x08078D34
	push {r4, r5, lr}
	ldr r5, _08078D68 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8078D6C
	adds r0, r4, #0
	bl sub_80787D8
	cmp r0, #1
	bne _08078D60
	ldr r0, [r4]
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
_08078D60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08078D68: .4byte gCurTask

	thumb_func_start sub_8078D6C
sub_8078D6C: @ 0x08078D6C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_08078D72:
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x18]
	lsls r3, r5, #3
	adds r2, r4, #0
	adds r2, #0x24
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08078D72
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
.endif
