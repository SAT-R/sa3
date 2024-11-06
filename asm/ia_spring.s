.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_802DFC8
sub_802DFC8: @ 0x0802DFC8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r5, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802DFEE
	movs r6, #6
	movs r0, #1
	ands r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r5, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #3
	ands r5, r0
	b _0802E03A
_0802DFEE:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802E014
	movs r6, #4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E004
	movs r5, #0x80
	lsls r5, r5, #3
_0802E004:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E03A
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r5, r0
	b _0802E03A
_0802E014:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E02C
	movs r6, #2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E03A
	movs r5, #0x80
	lsls r5, r5, #3
	b _0802E03A
_0802E02C:
	movs r6, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E03A
	movs r5, #0x80
	lsls r5, r5, #4
_0802E03A:
	ldr r1, _0802E064 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _0802E094
	ldrb r0, [r1, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0802E080
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _0802E068
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xea
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0802E0A6
	.align 2, 0
_0802E064: .4byte gStageData
_0802E068:
	cmp r0, #3
	bne _0802E080
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0802E07C @ =0x000003DB
	strh r0, [r4, #0xc]
	b _0802E0A6
	.align 2, 0
_0802E07C: .4byte 0x000003DB
_0802E080:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0802E090 @ =0x00000362
	strh r0, [r4, #0xc]
	b _0802E0A6
	.align 2, 0
_0802E090: .4byte 0x00000362
_0802E094:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0802E0D4 @ =0x00000362
	strh r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_0802E0A6:
	movs r1, #0
	strb r6, [r4, #0x1a]
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #3
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
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r5, r0
	str r5, [r4, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E0D4: .4byte 0x00000362

	thumb_func_start sub_802E0D8
sub_802E0D8: @ 0x0802E0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802E11C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	movs r0, #0x34
	ldrsh r6, [r4, r0]
	movs r1, #0x36
	ldrsh r7, [r4, r1]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0802E120
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0802E14C
	.align 2, 0
_0802E11C: .4byte gCurTask
_0802E120:
	ldr r1, _0802E158 @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802E146
	ldrb r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802E146
	subs r0, r1, #1
	strb r0, [r5, #0x1a]
_0802E146:
	adds r0, r5, #0
	bl DisplaySprite
_0802E14C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E158: .4byte gCamera

	thumb_func_start CreateEntity_Spring_Up
CreateEntity_Spring_Up: @ 0x0802E15C
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
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Down
CreateEntity_Spring_Down: @ 0x0802E188
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
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Left
CreateEntity_Spring_Left: @ 0x0802E1B4
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
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Right
CreateEntity_Spring_Right: @ 0x0802E1E0
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
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_UpLeft
CreateEntity_Spring_UpLeft: @ 0x0802E20C
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
	movs r0, #6
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_DownLeft
CreateEntity_Spring_DownLeft: @ 0x0802E238
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
	movs r0, #7
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_UpRight
CreateEntity_Spring_UpRight: @ 0x0802E264
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
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_DownRight
CreateEntity_Spring_DownRight: @ 0x0802E290
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
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Small_UpRight
CreateEntity_Spring_Small_UpRight: @ 0x0802E2BC
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
	movs r0, #8
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Spring_Small_UpLeft
CreateEntity_Spring_Small_UpLeft: @ 0x0802E2E8
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
	movs r0, #9
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Spring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Spring
TaskDestructor_Spring: @ 0x0802E314
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
