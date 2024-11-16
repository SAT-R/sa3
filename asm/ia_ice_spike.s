.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8044450
sub_8044450: @ 0x08044450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c4
	str r0, [sp, #0x1c0]
	adds r0, #0x54
	mov sb, r0
	ldr r4, [sp, #0x1c0]
	adds r4, #0xc4
	ldr r1, [sp, #0x1c0]
	adds r1, #0x8c
	mov r8, r1
	ldr r6, [sp, #0x1c0]
	adds r6, #0xe0
	ldr r1, _080444C8 @ =gUnknown_080D014C
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r0, sp
	bl memcpy
	ldr r0, _080444CC @ =gStageData
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x10
	movs r5, #0
	add r2, sp, #8
	mov sl, r2
	add r7, sp, #0xc
	mov ip, r7
_0804448E:
	lsls r3, r5, #4
	mov r0, sp
	adds r0, r0, r3
	adds r0, #8
	ldr r0, [r0]
	asrs r0, r0, #1
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	movs r7, #0xff
	ands r1, r7
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	add r3, ip
	ldr r0, [r3]
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, #0x40
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	cmp r5, #6
	bls _0804448E
	b _08044526
	.align 2, 0
_080444C8: .4byte gUnknown_080D014C
_080444CC: .4byte gStageData
_080444D0:
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	ldm r2!, {r0}
	mov r4, r8
	adds r4, #4
	mov r8, r4
	subs r4, #4
	stm r4!, {r0}
	lsls r3, r5, #4
	mov r7, sl
	adds r0, r7, r3
	ldr r0, [r0]
	asrs r0, r0, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xff
	ands r2, r1
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #2
	mov r4, sb
	adds r4, #4
	mov sb, r4
	subs r4, #4
	ldm r4!, {r0}
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	add r3, ip
	ldr r0, [r3]
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, #0x40
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_08044526:
	ldr r0, [sp, #0x1c0]
	ldrb r0, [r0, #0x18]
	cmp r5, r0
	blo _080444D0
	movs r0, #1
	ldr r1, [sp, #0x1c0]
	strb r0, [r1, #0x19]
	add sp, #0x1c4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044544
sub_8044544: @ 0x08044544
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x54
	adds r4, r6, #0
	adds r4, #0xc4
	ldrh r0, [r6, #0x10]
	cmp r0, #0xf
	bls _08044618
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bne _08044574
	ldrb r0, [r6, #0x18]
	cmp r0, #0xe
	beq _08044574
	movs r0, #0xe
	strb r0, [r6, #0x18]
	movs r0, #0x50
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl sub_8044450
_08044574:
	ldr r3, _08044614 @ =gSineTable
	lsls r0, r7, #0x10
	asrs r0, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x40
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #9
	movs r0, #0x60
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _080445D0
	movs r7, #0xa
_080445D0:
	movs r2, #0
	ldrb r0, [r6, #0x18]
	cmp r2, r0
	bhs _08044646
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
_080445DC:
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r6, #0x18]
	cmp r2, r0
	blo _080445DC
	b _08044646
	.align 2, 0
_08044614: .4byte gSineTable
_08044618:
	movs r2, #0
	b _08044640
_0804461C:
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08044640:
	ldrb r1, [r6, #0x18]
	cmp r2, r1
	blo _0804461C
_08044646:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804464C
sub_804464C: @ 0x0804464C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x54
	ldr r1, _080446D8 @ =gUnknown_080D030C
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	movs r0, #0
	mov r8, r0
	ldrb r0, [r5, #0x18]
	cmp r0, #0xe
	bne _08044672
	movs r1, #1
	mov r8, r1
_08044672:
	movs r4, #0
_08044674:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xfc
	adds r0, r5, r0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08044674
	movs r4, #0
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	bhs _080446CC
	ldr r6, _080446DC @ =gCamera
_08044696:
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	add r1, r8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xfc
	adds r0, r5, r0
	ldm r7!, {r1}
	asrs r1, r1, #8
	ldr r2, [r6]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldm r7!, {r1}
	asrs r1, r1, #8
	ldr r2, [r6, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	blo _08044696
_080446CC:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080446D8: .4byte gUnknown_080D030C
_080446DC: .4byte gCamera

	thumb_func_start sub_80446E0
sub_80446E0: @ 0x080446E0
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldr r1, [r0, #4]
	asrs r1, r1, #8
	ldr r3, _08044714 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r4, #0x12]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _08044708
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08044708:
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044714: .4byte gCamera

	thumb_func_start TaskDestructor_IceSpike
TaskDestructor_IceSpike: @ 0x08044718
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0
