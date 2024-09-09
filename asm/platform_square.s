.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_8044AA0
sub_8044AA0: @ 0x08044AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08044AE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x20
	adds r7, r1, r0
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	movs r1, #0
	mov sb, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08044AE8
	movs r0, #0
	b _08044BEE
	.align 2, 0
_08044AE4: .4byte gCurTask
_08044AE8:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044B02
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _08044B02
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08044B02:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	movs r5, #1
	str r5, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _08044B4C
	adds r1, r2, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, _08044B48 @ =0xFFFFFF00
	ands r0, r1
	subs r0, #1
	str r0, [r4, #0x14]
	adds r0, r5, #0
	mov r1, sl
	lsls r0, r1
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	b _08044BEC
	.align 2, 0
_08044B48: .4byte 0xFFFFFF00
_08044B4C:
	movs r5, #0x80
	lsls r5, r5, #0xa
	ands r5, r2
	cmp r5, #0
	beq _08044B6A
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
	b _08044BEC
_08044B6A:
	movs r3, #0x80
	lsls r3, r3, #0xb
	ands r3, r2
	cmp r3, #0
	beq _08044BA8
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08044B90
	strh r5, [r4, #0x18]
_08044B90:
	strh r5, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044BEC
	ldr r0, [r4, #0x10]
	ldr r1, _08044BA4 @ =0xFFFFFF00
	b _08044BE0
	.align 2, 0
_08044BA4: .4byte 0xFFFFFF00
_08044BA8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08044BEC
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08044BCE
	strh r3, [r4, #0x18]
_08044BCE:
	strh r3, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08044BEC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_08044BE0:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08044BEC:
	mov r0, sb
_08044BEE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.endif

	thumb_func_start sub_8044C00
sub_8044C00: @ 0x08044C00
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x20
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08044C30 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044C30: .4byte gCamera

	thumb_func_start TaskDestructor_PlatformSquare
TaskDestructor_PlatformSquare: @ 0x08044C34
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0
