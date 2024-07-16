.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8040B34
sub_8040B34: @ 0x08040B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xc
	adds r0, #0x61
	ldrb r4, [r0]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r6, #0xc]
	movs r7, #0
	ldr r0, _08040BE0 @ =0x000003D7
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r7, [r5, #0xe]
	strh r7, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040BD0
	adds r5, #0x28
	movs r0, #6
	bl VramMalloc
	str r0, [r6, #0x34]
	ldr r0, _08040BE0 @ =0x000003D7
	strh r0, [r5, #0xc]
	movs r0, #3
	strb r0, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r7, [r5, #0xe]
	strh r7, [r5, #0x16]
	ldrb r0, [r5, #0x1b]
	orrs r0, r4
	strb r0, [r5, #0x1b]
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	mov r0, r8
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08040BD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040BE0: .4byte 0x000003D7

	thumb_func_start sub_8040BE4
sub_8040BE4: @ 0x08040BE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08040C38 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08040C3C @ =0x0300000C
	adds r4, r5, r1
	ldr r2, [r0]
	mov sb, r2
	adds r1, #0x50
	adds r0, r5, r1
	ldr r2, _08040C40 @ =0x0300005E
	adds r1, r5, r2
	movs r2, #0
	ldrsh r6, [r0, r2]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08040C44
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _08040C8A
	.align 2, 0
_08040C38: .4byte gCurTask
_08040C3C: .4byte 0x0300000C
_08040C40: .4byte 0x0300005E
_08040C44:
	ldr r2, _08040C98 @ =gCamera
	mov r8, r2
	ldr r0, [r2]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _08040C9C @ =0x03000063
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C88
	ldr r2, _08040CA0 @ =0x03000034
	adds r4, r5, r2
	mov r1, r8
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08040C88:
	movs r0, #1
_08040C8A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040C98: .4byte gCamera
_08040C9C: .4byte 0x03000063
_08040CA0: .4byte 0x03000034

	thumb_func_start TaskDestructor_ActRing
TaskDestructor_ActRing: @ 0x08040CA4
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0xc]
	bl VramFree
	ldr r0, _08040CCC @ =0x03000063
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08040CC4
	ldr r0, [r5, #0x34]
	bl VramFree
_08040CC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040CCC: .4byte 0x03000063

	thumb_func_start sub_8040CD0
sub_8040CD0: @ 0x08040CD0
	push {lr}
	bl sub_8040BE4
	pop {r0}
	bx r0
	.align 2, 0
