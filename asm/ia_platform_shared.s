.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_804DC38
sub_804DC38: @ 0x0804DC38
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r3, #4]
	ldr r1, _0804DC68 @ =0x00FFFF00
	ands r0, r1
	cmp r0, #0
	bne _0804DC4E
	b _0804DD60
_0804DC4E:
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #5]
	cmp r0, r1
	bhs _0804DC6C
	ldrb r0, [r3, #5]
	lsls r2, r0, #2
	adds r1, r6, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r6, #0
	b _0804DC7C
	.align 2, 0
_0804DC68: .4byte 0x00FFFF00
_0804DC6C:
	ldrb r0, [r3, #6]
	lsls r2, r0, #2
	adds r1, r5, #0
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r6, #1
_0804DC7C:
	adds r0, r0, r2
	subs r0, r1, r0
	lsls r0, r0, #0xe
	adds r1, r2, #0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0804DCE8
	movs r1, #0
	ldr r3, _0804DCC0 @ =gSineTable
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r2, r0
	ble _0804DCB2
_0804DC9C:
	adds r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bhi _0804DCB2
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	bgt _0804DC9C
_0804DCB2:
	cmp r4, #1
	beq _0804DCD2
	cmp r4, #1
	bgt _0804DCC4
	cmp r4, #0
	beq _0804DCCA
	b _0804DD46
	.align 2, 0
_0804DCC0: .4byte gSineTable
_0804DCC4:
	cmp r4, #2
	beq _0804DCDE
	b _0804DD46
_0804DCCA:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	b _0804DD58
_0804DCD2:
	cmp r6, #0
	bne _0804DD46
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	b _0804DD58
_0804DCDE:
	cmp r6, #0
	beq _0804DD46
	movs r7, #0x80
	lsls r7, r7, #2
	b _0804DD56
_0804DCE8:
	ldr r3, _0804DD24 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #2
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r3, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	bge _0804DD14
	ldr r5, _0804DD28 @ =0x000002FF
_0804DCFE:
	adds r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	bhi _0804DD14
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	blt _0804DCFE
_0804DD14:
	cmp r4, #1
	beq _0804DD36
	cmp r4, #1
	bgt _0804DD2C
	cmp r4, #0
	beq _0804DD46
	b _0804DD60
	.align 2, 0
_0804DD24: .4byte gSineTable
_0804DD28: .4byte 0x000002FF
_0804DD2C:
	cmp r4, #2
	beq _0804DD42
	cmp r4, #3
	beq _0804DD52
	b _0804DD60
_0804DD36:
	cmp r6, #0
	beq _0804DD46
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r2, #0
	b _0804DD58
_0804DD42:
	cmp r6, #0
	beq _0804DD4A
_0804DD46:
	adds r0, r1, #0
	b _0804DD62
_0804DD4A:
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r0, r5, #0
	b _0804DD58
_0804DD52:
	movs r7, #0xc0
	lsls r7, r7, #3
_0804DD56:
	adds r0, r7, #0
_0804DD58:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0804DD62
_0804DD60:
	movs r0, #0
_0804DD62:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_804DD68
sub_804DD68: @ 0x0804DD68
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	ldrh r2, [r3, #0x28]
	ldr r6, [r3, #0x1c]
	ldr r7, [r3, #0x20]
	ldr r4, [r3, #0x18]
	ldr r5, [r3, #0x14]
	cmp r1, #0
	beq _0804DD98
	ldr r0, _0804DD90 @ =gStageData
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r1, _0804DD94 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	b _0804DDA6
	.align 2, 0
_0804DD90: .4byte gStageData
_0804DD94: .4byte 0x000003FF
_0804DD98:
	ldr r0, _0804DDCC @ =gStageData
	ldr r0, [r0, #0x1c]
	lsrs r1, r2, #2
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r2, r0, #2
_0804DDA6:
	ldr r1, _0804DDD0 @ =gSineTable
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r0, r6, r0
	str r0, [r3, #0xc]
	adds r0, r5, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r0, r7, r0
	str r0, [r3, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DDCC: .4byte gStageData
_0804DDD0: .4byte gSineTable

@ DrawPlatform?
	thumb_func_start sub_804DDD4
sub_804DDD4: @ 0x0804DDD4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r4, [r0, #0xc]
	asrs r4, r4, #8
	ldr r2, _0804DE28 @ =gCamera
	ldr r1, [r2]
	subs r4, r4, r1
	strh r4, [r5, #0x10]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xd
	adds r4, r4, r0
	ldr r0, _0804DE2C @ =0x012D0000
	cmp r4, r0
	bhi _0804DE20
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0804DE20
	cmp r1, #0xbf
	bgt _0804DE20
	adds r0, r5, #0
	bl DisplaySprite
_0804DE20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE28: .4byte gCamera
_0804DE2C: .4byte 0x012D0000
