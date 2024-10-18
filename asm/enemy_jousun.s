.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_805B980
sub_805B980: @ 0x0805B980
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x14
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x30
	str r1, [r4, #0x30]
	ldr r2, _0805B9EC @ =gUnknown_080D1F2C
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B9F0 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x24]
	asrs r2, r2, #8
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	movs r1, #0x90
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
_0805B9EC: .4byte gUnknown_080D1F2C
_0805B9F0: .4byte gCamera

	thumb_func_start Task_JousunMain
Task_JousunMain: @ 0x0805B9F4
	push {r4, lr}
	ldr r0, _0805BA30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0805BA34 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805BA1A
	cmp r1, #4
	beq _0805BA1A
	adds r0, r4, #0
	bl sub_805BF04
_0805BA1A:
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BA38
	ldr r0, _0805BA30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805BA66
	.align 2, 0
_0805BA30: .4byte gCurTask
_0805BA34: .4byte gStageData
_0805BA38:
	adds r0, r4, #0
	bl sub_805BF7C
	adds r0, r4, #0
	bl sub_805BD08
	cmp r0, #1
	bne _0805BA66
	adds r2, r4, #0
	adds r2, #0x30
	ldr r1, _0805BA6C @ =gUnknown_080D1F2C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x2c]
	ldr r0, _0805BA70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805BA74 @ =sub_805BEAC
	str r0, [r1, #8]
_0805BA66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA6C: .4byte gUnknown_080D1F2C
_0805BA70: .4byte gCurTask
_0805BA74: .4byte sub_805BEAC

	thumb_func_start sub_805BA78
sub_805BA78: @ 0x0805BA78
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0805BAA0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805BF7C
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BAA4
	ldr r0, [r6]
	bl TaskDestroy
	b _0805BAE6
	.align 2, 0
_0805BAA0: .4byte gCurTask
_0805BAA4:
	ldr r0, _0805BAF0 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805BAE6
	cmp r1, #4
	beq _0805BAE6
	adds r0, r4, #0
	bl sub_805BB80
	cmp r0, #1
	bne _0805BAE6
	ldr r0, _0805BAF4 @ =0x03000030
	adds r2, r5, r0
	ldr r1, _0805BAF8 @ =gUnknown_080D1F2C
	ldrh r0, [r1, #0x18]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	mov r0, sp
	strh r3, [r0]
	ldr r0, _0805BAFC @ =0x0300005C
	adds r1, r5, r0
	ldr r2, _0805BB00 @ =0x01000002
	mov r0, sp
	bl CpuSet
	ldr r1, [r6]
	ldr r0, _0805BB04 @ =sub_805BB08
	str r0, [r1, #8]
_0805BAE6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BAF0: .4byte gStageData
_0805BAF4: .4byte 0x03000030
_0805BAF8: .4byte gUnknown_080D1F2C
_0805BAFC: .4byte 0x0300005C
_0805BB00: .4byte 0x01000002
_0805BB04: .4byte sub_805BB08

	thumb_func_start sub_805BB08
sub_805BB08: @ 0x0805BB08
	push {r4, r5, r6, lr}
	ldr r6, _0805BB28 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BB2C
	ldr r0, [r6]
	bl TaskDestroy
	b _0805BB7A
	.align 2, 0
_0805BB28: .4byte gCurTask
_0805BB2C:
	ldr r0, _0805BB64 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805BB74
	cmp r1, #4
	beq _0805BB74
	adds r0, r4, #0
	bl sub_805BC24
	cmp r0, #1
	bne _0805BB74
	ldr r0, _0805BB68 @ =0x03000030
	adds r2, r5, r0
	ldr r1, _0805BB6C @ =gUnknown_080D1F2C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	adds r0, r4, #0
	bl sub_805BF7C
	ldr r1, [r6]
	ldr r0, _0805BB70 @ =Task_JousunMain
	str r0, [r1, #8]
	b _0805BB7A
	.align 2, 0
_0805BB64: .4byte gStageData
_0805BB68: .4byte 0x03000030
_0805BB6C: .4byte gUnknown_080D1F2C
_0805BB70: .4byte Task_JousunMain
_0805BB74:
	adds r0, r4, #0
	bl sub_805BF7C
_0805BB7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805BB80
sub_805BB80: @ 0x0805BB80
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #2
	movs r4, #0
	ldrh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	ldr r3, [r2, #0x14]
	subs r0, r3, r0
	ldr r1, [r2, #0x1c]
	cmp r1, r0
	bge _0805BBAC
	ldr r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r2, #0x24]
	ldrh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	subs r0, r3, r0
	cmp r1, r0
	ble _0805BBC2
	b _0805BBBE
_0805BBAC:
	ldr r1, [r2, #0x24]
	ldr r0, _0805BBE8 @ =0xFFFFFC00
	adds r1, r1, r0
	str r1, [r2, #0x24]
	ldrh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	subs r0, r3, r0
	cmp r1, r0
	bge _0805BBC2
_0805BBBE:
	str r0, [r2, #0x24]
	movs r4, #1
_0805BBC2:
	ldr r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805BBF0
	adds r1, r5, #0
	adds r1, #8
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x28]
	ldr r3, _0805BBEC @ =0xFFFFC400
	adds r0, r0, r3
	cmp r1, r0
	bgt _0805BC12
	b _0805BC0A
	.align 2, 0
_0805BBE8: .4byte 0xFFFFFC00
_0805BBEC: .4byte 0xFFFFC400
_0805BBF0:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2, #0x20]
	adds r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x28]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r0, r3
	cmp r1, r0
	blt _0805BC12
_0805BC0A:
	str r0, [r2, #0x20]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805BC12:
	cmp r4, #2
	beq _0805BC1A
	movs r0, #0
	b _0805BC1C
_0805BC1A:
	movs r0, #1
_0805BC1C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805BC24
sub_805BC24: @ 0x0805BC24
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r2, [r1, #0x28]
	ldr r0, [r1, #0x20]
	cmp r2, r0
	bgt _0805BC44
	ldr r4, _0805BC40 @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r1, #0x20]
	cmp r2, r0
	blt _0805BC54
	b _0805BC50
	.align 2, 0
_0805BC40: .4byte 0xFFFFFF00
_0805BC44:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #0x20]
	cmp r2, r0
	bgt _0805BC54
_0805BC50:
	str r2, [r1, #0x20]
	movs r3, #1
_0805BC54:
	ldr r0, [r1, #0x24]
	ldr r2, [r1, #0x2c]
	cmp r0, r2
	ble _0805BC68
	ldr r2, _0805BC64 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x24]
	b _0805BC70
	.align 2, 0
_0805BC64: .4byte 0xFFFFFF00
_0805BC68:
	str r2, [r1, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0805BC70:
	cmp r3, #2
	beq _0805BC78
	movs r0, #0
	b _0805BC7A
_0805BC78:
	movs r0, #1
_0805BC7A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805BC80
sub_805BC80: @ 0x0805BC80
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r2, #0x30
	movs r4, #0
	ldr r1, [r0, #0x20]
	asrs r6, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r6, r6, r0
	movs r5, #0
	ldr r7, _0805BCA0 @ =gPlayers
_0805BC96:
	cmp r5, #0
	bne _0805BCA8
	ldr r0, _0805BCA4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0805BCB2
	.align 2, 0
_0805BCA0: .4byte gPlayers
_0805BCA4: .4byte gStageData
_0805BCA8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805BCB2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805BCE4
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r6
	blt _0805BCDA
	ldr r0, _0805BD04 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #8]
_0805BCDA:
	ldr r1, [r2, #8]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0805BCF4
_0805BCE4:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805BCF4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r2, #8]
_0805BCF4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805BC96
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BD04: .4byte 0xFFFFFBFF

	thumb_func_start sub_805BD08
sub_805BD08: @ 0x0805BD08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r4, #0x24]
	asrs r7, r0, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	movs r6, #0
	b _0805BDA2
_0805BD2A:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	mov r2, r8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r0, r1, r0
	ldr r1, [r4, #0x24]
	subs r2, r0, r1
	cmp r2, #0
	blt _0805BD5E
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	ble _0805BD68
	b _0805BD9C
_0805BD5E:
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0805BD9C
_0805BD68:
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805BD84
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x20]
	cmp r0, r2
	ble _0805BD92
	b _0805BD9C
_0805BD84:
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x20]
	cmp r0, r2
	blt _0805BD9C
_0805BD92:
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	movs r0, #1
	b _0805BDB4
_0805BD9C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0805BDA2:
	cmp r6, #1
	bhi _0805BDB2
	adds r0, r6, #0
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805BD2A
_0805BDB2:
	movs r0, #0
_0805BDB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Jousun_0
CreateEntity_Jousun_0: @ 0x0805BDC0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805BE28 @ =Task_JousunMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805BE2C @ =TaskDestructor_Jousun
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805BF38
	adds r0, r4, #0
	bl sub_805B980
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BE28: .4byte Task_JousunMain
_0805BE2C: .4byte TaskDestructor_Jousun

	thumb_func_start CreateEntity_Jousun_1
CreateEntity_Jousun_1: @ 0x0805BE30
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805BEA4 @ =Task_JousunMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805BEA8 @ =TaskDestructor_Jousun
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_805BF38
	adds r0, r4, #0
	bl sub_805B980
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x38]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BEA4: .4byte Task_JousunMain
_0805BEA8: .4byte TaskDestructor_Jousun

	thumb_func_start sub_805BEAC
sub_805BEAC: @ 0x0805BEAC
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805BED4 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_805BF7C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805BFEC
	cmp r0, #1
	bne _0805BED8
	ldr r0, [r7]
	bl TaskDestroy
	b _0805BEF0
	.align 2, 0
_0805BED4: .4byte gCurTask
_0805BED8:
	cmp r5, #0
	bne _0805BEF0
	ldr r0, _0805BEF8 @ =0x03000030
	adds r2, r6, r0
	ldr r1, _0805BEFC @ =gUnknown_080D1F2C
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r1, [r7]
	ldr r0, _0805BF00 @ =sub_805BA78
	str r0, [r1, #8]
_0805BEF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BEF8: .4byte 0x03000030
_0805BEFC: .4byte gUnknown_080D1F2C
_0805BF00: .4byte sub_805BA78

	thumb_func_start sub_805BF04
sub_805BF04: @ 0x0805BF04
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	cmp r0, #0xff
	bhi _0805BF12
	adds r0, #1
	b _0805BF14
_0805BF12:
	movs r0, #0
_0805BF14:
	strh r0, [r2, #6]
	ldr r0, [r2, #0x18]
	str r0, [r2, #0x20]
	ldr r1, _0805BF34 @ =gSineTable
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [r2, #0x1c]
	adds r1, r1, r0
	str r1, [r2, #0x24]
	pop {r0}
	bx r0
	.align 2, 0
_0805BF34: .4byte gSineTable

	thumb_func_start sub_805BF38
sub_805BF38: @ 0x0805BF38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [sp, #0x14]
	str r1, [r4]
	ldrb r0, [r1]
	movs r5, #0
	strb r0, [r4, #5]
	strb r6, [r4, #4]
	strh r2, [r4, #0xa]
	strh r3, [r4, #0xc]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r4, #0x20]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x24]
	str r2, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	adds r4, #0x5c
	ldr r2, _0805BF78 @ =0x01000002
	adds r1, r4, #0
	bl CpuSet
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BF78: .4byte 0x01000002

	thumb_func_start sub_805BF7C
sub_805BF7C: @ 0x0805BF7C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x30
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805BFBC @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
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
_0805BFBC: .4byte gCamera

	thumb_func_start sub_805BFC0
sub_805BFC0: @ 0x0805BFC0
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x30
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
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

	thumb_func_start sub_805BFEC
sub_805BFEC: @ 0x0805BFEC
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805BFC0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x30
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
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

	thumb_func_start TaskDestructor_Jousun
TaskDestructor_Jousun: @ 0x0805C028
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	bl VramFree
	pop {r0}
	bx r0
