.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8041E74
sub_8041E74: @ 0x08041E74
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08041E8E
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	b _08041E9A
_08041E8E:
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _08041ED0 @ =0x00000389
_08041E9A:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
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
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041ED0: .4byte 0x00000389

	thumb_func_start sub_8041ED4
sub_8041ED4: @ 0x08041ED4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _08041F50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r5, _08041F54 @ =0x0300000C
	add r5, r8
	ldr r2, [r7]
	mov sb, r2
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	ldr r4, _08041F58 @ =gCamera
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _08041FA4
	movs r1, #0
	ldr r2, _08041F5C @ =gPlayers
_08041F3C:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08041F60
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08041F64
	.align 2, 0
_08041F50: .4byte gCurTask
_08041F54: .4byte 0x0300000C
_08041F58: .4byte gCamera
_08041F5C: .4byte gPlayers
_08041F60:
	ldr r0, _08041F9C @ =gStageData
	ldrb r1, [r0, #6]
_08041F64:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	adds r0, r5, #0
	adds r1, r6, #0
	str r2, [sp, #4]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, #1
	ble _08041F3C
	ldrb r0, [r7, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _08041FA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080420D0
	.align 2, 0
_08041F9C: .4byte gStageData
_08041FA0: .4byte gCurTask
_08041FA4:
	ldr r0, _08041FE0 @ =0x0300004C
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804208C
	ldr r2, _08041FE4 @ =0x0300004A
	add r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _08041FC8
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08041FE8 @ =0x013F0000
	cmp r0, r1
	bls _08041FC8
	movs r0, #0
	strh r0, [r2]
_08041FC8:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r2, r1, #0
	cmp r1, #0
	bne _08041FF0
	movs r1, #0
	ldr r0, _08041FEC @ =0x00000389
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08041FE0: .4byte 0x0300004C
_08041FE4: .4byte 0x0300004A
_08041FE8: .4byte 0x013F0000
_08041FEC: .4byte 0x00000389
_08041FF0:
	cmp r1, #0xad
	bhi _08042008
	ldr r0, _08042004 @ =0x00000389
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	lsrs r0, r1, #3
	strb r0, [r5, #0x1c]
	b _0804208C
	.align 2, 0
_08042004: .4byte 0x00000389
_08042008:
	cmp r1, #0xb3
	bhi _08042020
	movs r0, #0
	ldr r1, _0804201C @ =0x00000387
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	b _0804208C
	.align 2, 0
_0804201C: .4byte 0x00000387
_08042020:
	cmp r1, #0xb5
	bls _0804205E
	cmp r1, #0xb7
	bls _08042046
	ldr r0, _08042038 @ =0x0000012F
	cmp r1, r0
	bhi _08042040
	ldr r0, _0804203C @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #3
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042038: .4byte 0x0000012F
_0804203C: .4byte 0x00000387
_08042040:
	ldr r0, _08042050 @ =0x00000131
	cmp r1, r0
	bhi _08042058
_08042046:
	ldr r0, _08042054 @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042050: .4byte 0x00000131
_08042054: .4byte 0x00000387
_08042058:
	ldr r0, _08042068 @ =0x00000133
	cmp r1, r0
	bhi _08042070
_0804205E:
	ldr r0, _0804206C @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042068: .4byte 0x00000133
_0804206C: .4byte 0x00000387
_08042070:
	ldr r0, _080420AC @ =0x0000013F
	cmp r2, r0
	bhi _0804208C
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x2c
	ldr r2, _080420B0 @ =0x01000002
	bl CpuSet
	ldr r0, _080420B4 @ =0x00000389
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
_0804208C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r4, #0
_08042094:
	cmp r4, #0
	beq _080420B8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	b _080420C6
	.align 2, 0
_080420AC: .4byte 0x0000013F
_080420B0: .4byte 0x01000002
_080420B4: .4byte 0x00000389
_080420B8:
	ldr r0, [r5, #8]
	ldr r1, _080420E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
_080420C6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08042094
_080420D0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080420E0: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_DeathCrusher
TaskDestructor_DeathCrusher: @ 0x080420E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
