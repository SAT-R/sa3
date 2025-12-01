.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805F094
sub_805F094: @ 0x0805F094
	push {r4, r5, r6, lr}
	ldr r6, _0805F0CC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0805F0D0 @ =0x0300001C
	adds r0, r4, r1
	subs r1, #0x12
	adds r2, r4, r1
	subs r1, #2
	adds r3, r4, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r5, #0
	bl sub_805F268
	adds r0, r5, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805F0D4
	ldr r0, [r6]
	bl TaskDestroy
	b _0805F0F2
	.align 2, 0
_0805F0CC: .4byte gCurTask
_0805F0D0: .4byte 0x0300001C
_0805F0D4:
	adds r0, r5, #0
	bl sub_805EEB4
	cmp r0, #1
	bne _0805F0F2
	ldr r0, _0805F0F8 @ =0x0300002C
	adds r2, r4, r0
	ldr r1, _0805F0FC @ =gUnknown_080D1F8C
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _0805F100 @ =sub_805F104
	str r0, [r1, #8]
_0805F0F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F0F8: .4byte 0x0300002C
_0805F0FC: .4byte gUnknown_080D1F8C
_0805F100: .4byte sub_805F104

	thumb_func_start sub_805F104
sub_805F104: @ 0x0805F104
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805F12C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_805F268
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805F22C
	cmp r0, #1
	bne _0805F130
	ldr r0, [r7]
	bl TaskDestroy
	b _0805F148
	.align 2, 0
_0805F12C: .4byte gCurTask
_0805F130:
	cmp r5, #0
	bne _0805F148
	ldr r0, _0805F150 @ =0x0300002C
	adds r2, r6, r0
	ldr r1, _0805F154 @ =gUnknown_080D1F8C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805F158 @ =Task_BuBuInit
	str r0, [r1, #8]
_0805F148:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F150: .4byte 0x0300002C
_0805F154: .4byte gUnknown_080D1F8C
_0805F158: .4byte Task_BuBuInit

	thumb_func_start sub_805F15C
sub_805F15C: @ 0x0805F15C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805F182
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x28]
	cmp r0, r1
	bgt _0805F196
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	ble _0805F196
	b _0805F194
_0805F182:
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	blt _0805F196
	ldr r3, _0805F19C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	cmp r0, r1
	bge _0805F196
_0805F194:
	str r1, [r2, #0x1c]
_0805F196:
	pop {r0}
	bx r0
	.align 2, 0
_0805F19C: .4byte 0xFFFFFF00

	thumb_func_start sub_805F1A0
sub_805F1A0: @ 0x0805F1A0
	push {lr}
	ldr r1, _0805F1D0 @ =gTask_03001CFC
	ldr r1, [r1]
	cmp r1, #0
	beq _0805F1D8
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	movs r3, #0
_0805F1B4:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0x34]
	cmp r1, #0
	bne _0805F1D4
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #0x1f
	bls _0805F1B4
	b _0805F1DA
	.align 2, 0
_0805F1D0: .4byte gTask_03001CFC
_0805F1D4:
	movs r0, #1
	b _0805F1DA
_0805F1D8:
	movs r0, #0
_0805F1DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F1E0
sub_805F1E0: @ 0x0805F1E0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x20]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	blt _0805F1FA
	str r2, [r1, #0x20]
	movs r0, #1
	b _0805F1FC
_0805F1FA:
	movs r0, #0
_0805F1FC:
	pop {r1}
	bx r1

@@

	thumb_func_start sub_805F200
sub_805F200: @ 0x0805F200
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x2c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x20]
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

	thumb_func_start sub_805F22C
sub_805F22C: @ 0x0805F22C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805F200
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805F268
sub_805F268: @ 0x0805F268
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805F2A8 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
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
_0805F2A8: .4byte gCamera

	thumb_func_start TaskDestructor_BuBu
TaskDestructor_BuBu: @ 0x0805F2AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0
