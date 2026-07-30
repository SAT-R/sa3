
.syntax unified
.text
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0     @ r5 = r2 = EggPinball *boss
	lsls r3, r3, #0x18
	mov sb, r3
	mov r0, sb
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _080748B8 @ =Task_Platform_OuterPlat
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080748BC @ =TaskDestructor_EggPinballOuterPlatform
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r1, _080748C0 @ =0x03000028
	adds r4, r3, r1
	str r5, [r2]
	lsls r6, r6, #8
	str r6, [r2, #0xc]
	mov r0, r8
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r1, #0
	mov r8, r1
	movs r6, #0
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x16]
	ldr r1, _080748C4 @ =0x03000020
	adds r0, r3, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r2, #0x24]
	strh r6, [r2, #0x26]
	ldr r0, [r5, #0x68]
	str r0, [r2, #0x18]
	ldr r0, [r5, #0x6c]
	str r0, [r2, #0x1c]
	mov r0, sb
	lsls r0, r0, #2
	mov sb, r0
	adds r5, #0x34
	add r5, sb
	ldr r1, _080748C8 @ =0x03000024
	adds r3, r3, r1
	str r3, [r5]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	ldr r0, _080748CC @ =0x000003A9 @ ANIM_PLATFORM_BOSS_6
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r1, r8
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080748B8: .4byte Task_Platform_OuterPlat
_080748BC: .4byte TaskDestructor_EggPinballOuterPlatform
_080748C0: .4byte 0x03000028
_080748C4: .4byte 0x03000020
_080748C8: .4byte 0x03000024
_080748CC: .4byte 0x000003A9

.syntax divided
