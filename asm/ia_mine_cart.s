.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8048420
sub_8048420: @ 0x08048420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r7, _080484AC @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sb, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _080484B0 @ =0x03000071
	adds r4, r6, r1
	ldrb r0, [r4]
	cmp r0, #4
	beq _0804849C
	mov r1, sb
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #8
	ldr r2, _080484B4 @ =0x03000080
	adds r1, r6, r2
	ldr r1, [r1]
	lsls r1, r1, #8
	lsrs r3, r0, #0x10
	str r3, [sp, #4]
	asrs r0, r0, #0x10
	mov r8, r0
	lsrs r0, r1, #0x10
	str r0, [sp, #8]
	asrs r1, r1, #0x10
	mov sl, r1
	mov r0, r8
	bl IsPointInScreenRect
	adds r5, r0, #0
	cmp r5, #0
	bne _080484C4
	ldr r0, _080484B8 @ =0x0000025E
	bl sub_8003E28
	ldr r1, _080484BC @ =0x03000090
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0804849C
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	str r5, [r4, #0x6c]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r1, _080484C0 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0804849C:
	mov r2, sb
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, [r7]
	bl TaskDestroy
	b _08048602
	.align 2, 0
_080484AC: .4byte gCurTask
_080484B0: .4byte 0x03000071
_080484B4: .4byte 0x03000080
_080484B8: .4byte 0x0000025E
_080484BC: .4byte 0x03000090
_080484C0: .4byte Player_8005380
_080484C4:
	ldrb r0, [r4]
	cmp r0, #3
	beq _0804852C
	ldr r0, _08048518 @ =0x0300000C
	adds r7, r6, r0
	ldr r1, _0804851C @ =0x03000034
	adds r4, r6, r1
	ldr r2, _08048520 @ =0x03000070
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, _08048524 @ =gCamera
	ldr r0, [r1]
	mov r3, r8
	subs r0, r3, r0
	strh r0, [r4, #6]
	ldr r0, [r1, #4]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r4, #8]
	ldr r2, _08048528 @ =gUnknown_03002C24
	ldrb r0, [r2]
	movs r1, #0x81
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	b _08048602
	.align 2, 0
_08048518: .4byte 0x0300000C
_0804851C: .4byte 0x03000034
_08048520: .4byte 0x03000070
_08048524: .4byte gCamera
_08048528: .4byte gUnknown_03002C24
_0804852C:
	ldr r2, _08048554 @ =0x03000073
	adds r0, r6, r2
	ldrb r0, [r0]
	mov sl, r0
	mov r3, sl
	lsls r3, r3, #1
	str r3, [sp, #0xc]
	ldr r0, _08048558 @ =0x0300000C
	adds r7, r6, r0
	ldr r0, _0804855C @ =gCamera
	ldr r0, [r0]
	mov r1, r8
	subs r2, r1, r0
	mov r1, sl
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08048560
	subs r0, r2, r3
	b _08048562
	.align 2, 0
_08048554: .4byte 0x03000073
_08048558: .4byte 0x0300000C
_0804855C: .4byte gCamera
_08048560:
	adds r0, r2, r1
_08048562:
	strh r0, [r7, #0x10]
	ldr r4, _080485A8 @ =gCamera
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	lsls r6, r2, #0x10
	asrs r1, r6, #0x10
	subs r1, r1, r0
	mov r5, sb
	adds r5, #0x74
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r7, sb
	adds r7, #0x40
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4]
	subs r3, r0, r1
	mov r2, sl
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080485AC
	ldr r1, [sp, #0xc]
	lsrs r0, r1, #1
	b _080485B0
	.align 2, 0
_080485A8: .4byte gCamera
_080485AC:
	rsbs r0, r2, #0
	asrs r0, r0, #1
_080485B0:
	adds r0, r3, r0
	strh r0, [r7, #0x10]
	ldr r0, _08048614 @ =gCamera
	ldr r0, [r0, #4]
	asrs r1, r6, #0x10
	subs r1, r1, r0
	mov r4, sb
	adds r4, #0x76
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r2, sb
	adds r2, #0x78
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	mov r1, sb
	adds r1, #0x7a
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08048602:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048614: .4byte gCamera

	thumb_func_start TaskDestructor_Minecart
TaskDestructor_Minecart: @ 0x08048618
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl VramFree
	pop {r0}
	bx r0
