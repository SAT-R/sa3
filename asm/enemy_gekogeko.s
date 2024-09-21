.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_GekoGeko1
Task_GekoGeko1: @ 0x08059B9C
	push {r4, r5, r6, lr}
	ldr r6, _08059BBC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8059CB0
	cmp r0, #1
	bne _08059BC0
	ldr r0, [r6]
	bl TaskDestroy
	b _08059C02
	.align 2, 0
_08059BBC: .4byte gCurTask
_08059BC0:
	adds r0, r4, #0
	bl sub_8059C3C
	cmp r0, #0
	bne _08059C02
	ldr r0, _08059BE4 @ =0x0300002C
	adds r2, r5, r0
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08059BEC
	ldr r0, _08059BE8 @ =0xFFFFFBFF
	ands r1, r0
	b _08059BEE
	.align 2, 0
_08059BE4: .4byte 0x0300002C
_08059BE8: .4byte 0xFFFFFBFF
_08059BEC:
	orrs r1, r3
_08059BEE:
	str r1, [r2, #8]
	ldr r1, _08059C08 @ =sTileInfoGekoGeko
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _08059C0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08059C10 @ =Task_GekoGeko0
	str r0, [r1, #8]
_08059C02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059C08: .4byte sTileInfoGekoGeko
_08059C0C: .4byte gCurTask
_08059C10: .4byte Task_GekoGeko0

	thumb_func_start sub_8059C14
sub_8059C14: @ 0x08059C14
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08059C2C
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	b _08059C30
_08059C2C:
	ldr r0, [r2, #0x1c]
	ldr r1, _08059C38 @ =0xFFFFFF00
_08059C30:
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08059C38: .4byte 0xFFFFFF00

	thumb_func_start sub_8059C3C
sub_8059C3C: @ 0x08059C3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08059C7C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xe]
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
_08059C7C: .4byte gCamera

	thumb_func_start sub_8059C80
sub_8059C80: @ 0x08059C80
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
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0
    
	thumb_func_start sub_8059CAC
sub_8059CAC: @ 0x08059CAC
    movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8059CB0
sub_8059CB0: @ 0x08059CB0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8059C80
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xe]
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

	thumb_func_start TaskDestructor_GekoGeko
TaskDestructor_GekoGeko: @ 0x08059CEC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0
