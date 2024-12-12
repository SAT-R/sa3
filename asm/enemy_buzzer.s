.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805A04C
sub_805A04C: @ 0x0805A04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r7, #0x18]
	asrs r6, r0, #8
	ldr r0, [r7, #0x1c]
	asrs r5, r0, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r3, #0
	b _0805A108
_0805A074:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp]
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0805A0D8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0xfe
	bhi _0805A0AC
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A0C6
_0805A0AC:
	ldr r1, _0805A0DC @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805A102
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805A102
_0805A0C6:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0805A0E0
	cmp r1, #0x63
	ble _0805A0E6
	b _0805A102
	.align 2, 0
_0805A0D8: .4byte 0xFFFF0000
_0805A0DC: .4byte 0xFFFFFEFF
_0805A0E0:
	subs r0, r0, r6
	cmp r0, #0x63
	bgt _0805A102
_0805A0E6:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0805A0F6
	cmp r1, #0x63
	ble _0805A0FC
	b _0805A102
_0805A0F6:
	subs r0, r0, r5
	cmp r0, #0x63
	bgt _0805A102
_0805A0FC:
	strh r2, [r7, #0xe]
	movs r0, #1
	b _0805A11E
_0805A102:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0805A108:
	cmp r3, #1
	bhi _0805A11C
	adds r0, r3, #0
	str r3, [sp]
	bl sub_805CD20
	adds r4, r0, #0
	ldr r3, [sp]
	cmp r4, #0
	bne _0805A074
_0805A11C:
	movs r0, #0
_0805A11E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A12C
sub_805A12C: @ 0x0805A12C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #4
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _0805A18C @ =gUnknown_080D1EC4
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _0805A190 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A18C: .4byte gUnknown_080D1EC4
_0805A190: .4byte gCamera

	thumb_func_start sub_805A194
sub_805A194: @ 0x0805A194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0805A1B8:
	cmp r5, #0
	bne _0805A1C8
	ldr r0, _0805A1C4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0805A1D2
	.align 2, 0
_0805A1C4: .4byte gStageData
_0805A1C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805A1D2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805A21C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805A220
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805A220
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805A218
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805A218:
	movs r0, #1
	b _0805A22C
	.align 2, 0
_0805A21C: .4byte gPlayers
_0805A220:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805A1B8
	movs r0, #0
_0805A22C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805A238
sub_805A238: @ 0x0805A238
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805A25E
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bge _0805A272
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _0805A272
	b _0805A270
_0805A25E:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _0805A272
	ldr r3, _0805A278 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _0805A272
_0805A270:
	str r1, [r2, #0x18]
_0805A272:
	pop {r0}
	bx r0
	.align 2, 0
_0805A278: .4byte 0xFFFFFF00

	thumb_func_start sub_805A27C
sub_805A27C: @ 0x0805A27C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A2BC @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
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
_0805A2BC: .4byte gCamera

	thumb_func_start sub_805A2C0
sub_805A2C0: @ 0x0805A2C0
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
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

	thumb_func_start sub_805A2EC
sub_805A2EC: @ 0x0805A2EC
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805A2C0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
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

	thumb_func_start TaskDestructor_Buzzer
TaskDestructor_Buzzer: @ 0x0805A328
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateBuzzerProjectile
CreateBuzzerProjectile: @ 0x0805A33C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805A39C @ =Task_BuzzerProjectileInit
	ldr r2, _0805A3A0 @ =0x00004040
	ldr r1, _0805A3A4 @ =TaskDestructor_BuzzerProjectile
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0, #0x10]
	mov r1, sb
	str r1, [r0, #0x14]
	mov r1, r8
	str r1, [r0, #8]
	mov r1, sb
	str r1, [r0, #0xc]
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	bl sub_805A12C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A39C: .4byte Task_BuzzerProjectileInit
_0805A3A0: .4byte 0x00004040
_0805A3A4: .4byte TaskDestructor_BuzzerProjectile

	thumb_func_start Task_BuzzerProjectileInit
Task_BuzzerProjectileInit: @ 0x0805A3A8
	push {r4, r5, lr}
	ldr r5, _0805A3E0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805A3E4
	adds r0, r4, #0
	bl sub_805A464
	adds r0, r4, #0
	bl sub_805A194
	adds r0, r4, #0
	bl sub_805A424
	cmp r0, #1
	bne _0805A3D8
	ldr r0, [r5]
	bl TaskDestroy
_0805A3D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3E0: .4byte gCurTask

	thumb_func_start sub_805A3E4
sub_805A3E4: @ 0x0805A3E4
	push {r4, lr}
	ldr r4, _0805A420 @ =gSineTable
	ldrh r3, [r0, #4]
	lsrs r3, r3, #2
	movs r1, #0xff
	ands r3, r1
	lsls r1, r3, #3
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x14]
	adds r2, r2, r1
	str r2, [r0, #0x14]
	lsls r3, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r3, r1
	adds r3, r3, r4
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x10]
	adds r2, r2, r1
	str r2, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A420: .4byte gSineTable

	thumb_func_start sub_805A424
sub_805A424: @ 0x0805A424
	push {lr}
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A458 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _0805A454
	cmp r1, #0xa0
	bls _0805A45C
_0805A454:
	movs r0, #1
	b _0805A45E
	.align 2, 0
_0805A458: .4byte gCamera
_0805A45C:
	movs r0, #0
_0805A45E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A464
sub_805A464: @ 0x0805A464
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A4A4 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
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
_0805A4A4: .4byte gCamera

	thumb_func_start TaskDestructor_BuzzerProjectile
TaskDestructor_BuzzerProjectile: @ 0x0805A4A8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0
