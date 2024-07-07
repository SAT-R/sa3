.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable106
CreateEntity_Interactable106: @ 0x08043DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _08043F4C @ =gUnknown_080D0144
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldr r0, _08043F50 @ =sub_8043F68
	movs r1, #0xba
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08043F54 @ =sub_8044718
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, sb
	adds r7, r1, r0
	movs r0, #0
	mov r8, r0
	movs r3, #0
	strh r4, [r7, #0xc]
	strh r5, [r7, #0xe]
	mov r1, sl
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #0x14]
	strb r6, [r7, #0x15]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	str r0, [r7, #4]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [r7, #8]
	strh r3, [r7, #0x12]
	ldr r0, _08043F58 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08043F5C @ =gPlayers
	adds r0, r0, r2
	str r0, [r7, #0x1c]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r7, #0x20]
	mov r0, r8
	strb r0, [r7, #0x16]
	movs r0, #1
	strb r0, [r7, #0x17]
	movs r0, #0x50
	strh r0, [r7, #0x10]
	movs r0, #7
	strb r0, [r7, #0x18]
	movs r0, #2
	strb r0, [r7, #0x19]
	movs r0, #0x10
	str r3, [sp, #0xc]
	bl VramMalloc
	adds r5, r0, #0
	ldr r2, _08043F60 @ =0x03000024
	add r2, sb
	str r5, [r2]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	ldr r4, _08043F64 @ =0x0000039A
	strh r4, [r2, #0xc]
	mov r1, r8
	strb r1, [r2, #0x1a]
	ldr r3, [sp, #0xc]
	strh r3, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	strh r3, [r2, #0x10]
	strh r3, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r3, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_08043EEE:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xfc
	adds r2, r7, r0
	str r5, [r2]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xc]
	adds r1, r3, #1
	strb r1, [r2, #0x1a]
	strh r6, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	strh r6, [r2, #0x10]
	strh r6, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	lsls r0, r3, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	adds r5, r5, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #2
	bls _08043EEE
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043F4C: .4byte gUnknown_080D0144
_08043F50: .4byte sub_8043F68
_08043F54: .4byte sub_8044718
_08043F58: .4byte gStageData
_08043F5C: .4byte gPlayers
_08043F60: .4byte 0x03000024
_08043F64: .4byte 0x0000039A

	thumb_func_start sub_8043F68
sub_8043F68: @ 0x08043F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044028 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7]
	str r0, [sp, #8]
	ldr r2, _0804402C @ =0x03000024
	adds r2, r1, r2
	str r2, [sp, #0xc]
	ldr r0, [r7, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x10]
	mov r8, r0
	ldr r2, _08044030 @ =0x0300001C
	adds r2, r1, r2
	str r2, [sp, #0x14]
_08043FA6:
	mov r1, r8
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08043FD4
	cmp r1, #8
	beq _08043FD4
	mov r2, sl
	lsls r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r0, sb
	lsls r0, r0, #0x10
	str r0, [sp, #0x1c]
	cmp r1, #0x10
	bne _0804404C
_08043FD4:
	adds r0, r4, #0
	bl sub_802C0D4
	mov r1, sl
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	mov r2, sb
	lsls r2, r2, #0x10
	str r2, [sp, #0x1c]
	cmp r0, #0
	bne _0804404C
	asrs r5, r1, #0x10
	asrs r6, r2, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08044034
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	ldr r2, [sp, #0x10]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	b _0804404C
	.align 2, 0
_08044028: .4byte gCurTask
_0804402C: .4byte 0x03000024
_08044030: .4byte 0x0300001C
_08044034:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804404C
	str r4, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0804404C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08043FA6
	movs r0, #0
	mov r8, r0
	movs r6, #0
_08044060:
	mov r1, r8
	lsls r0, r1, #2
	ldr r2, [sp, #0x14]
	adds r5, r2, r0
	ldr r2, [r5]
	ldr r0, [r2, #0x14]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x10]
	ldr r2, [r7, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	mov r2, r8
	lsls r1, r2, #1
	mov r4, sp
	adds r4, r4, r1
	adds r4, #4
	strh r0, [r4]
	movs r1, #0
	subs r0, #0x81
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0804409C
	movs r1, #1
_0804409C:
	strh r1, [r4]
	cmp r1, #0
	beq _080440D6
	ldr r2, [r5]
	ldr r0, [r2, #0x10]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	asrs r3, r0, #8
	cmp r3, #0
	bge _080440B2
	rsbs r3, r3, #0
_080440B2:
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	ldr r0, [r2, #0x14]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	bge _080440C6
	rsbs r0, r0, #0
_080440C6:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r3, r3, r0
	ldr r0, _08044134 @ =0x00002710
	cmp r3, r0
	ble _080440D6
	strh r6, [r4]
_080440D6:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08044060
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	beq _080440F0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08044100
_080440F0:
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	bne _08044100
	add r0, sp, #4
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08044108
_08044100:
	ldr r0, _08044138 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804413C @ =sub_8044160
	str r0, [r1, #8]
_08044108:
	ldr r1, [sp, #0x18]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x1c]
	asrs r1, r2, #0x10
	ldr r3, _08044140 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08044144
	ldrb r0, [r7, #0x14]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _08044138 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044150
	.align 2, 0
_08044134: .4byte 0x00002710
_08044138: .4byte gCurTask
_0804413C: .4byte sub_8044160
_08044140: .4byte gCamera
_08044144:
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r7, #0x16]
	adds r0, r7, #0
	bl sub_80446E0
_08044150:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044160
sub_8044160: @ 0x08044160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044240 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r1, _08044244 @ =0x03000024
	adds r1, r5, r1
	str r1, [sp, #0xc]
	mov r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	ldr r2, [r2, #8]
	lsls r3, r2, #8
	mov r4, r8
	ldrh r0, [r4, #0x12]
	adds r0, #0x20
	strh r0, [r4, #0x12]
	movs r6, #0x12
	ldrsh r0, [r4, r6]
	adds r2, r2, r0
	str r2, [r4, #8]
	ldr r2, _08044248 @ =gCamera
	ldr r0, [r2]
	lsrs r4, r1, #0x10
	str r4, [sp, #0x10]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r6, [sp, #0xc]
	strh r1, [r6, #0x10]
	ldr r0, [r2, #4]
	lsrs r1, r3, #0x10
	str r1, [sp, #0x14]
	asrs r3, r3, #0x10
	subs r3, r3, r0
	strh r3, [r6, #0x12]
	movs r2, #0
	mov sb, r2
	ldr r4, _0804424C @ =0x0300001C
	adds r4, r5, r4
	str r4, [sp, #0x1c]
_080441C4:
	mov r6, sb
	lsls r0, r6, #2
	mov r1, r8
	adds r1, #0x1c
	adds r1, r1, r0
	ldr r6, [r1]
	adds r0, r6, #0
	bl sub_802C080
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x10
	mov sl, r1
	ldr r2, [sp, #0x14]
	lsls r5, r2, #0x10
	cmp r0, #0
	bne _0804425E
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044202
	ldr r0, [r6, #0x6c]
	ldr r4, [sp, #0xc]
	cmp r0, r4
	bne _08044202
	mov r0, r8
	movs r2, #0x12
	ldrsh r1, [r0, r2]
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_08044202:
	ldr r4, [sp, #0x10]
	lsls r5, r4, #0x10
	asrs r4, r5, #0x10
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	asrs r7, r0, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	mov sl, r5
	ldr r5, [sp, #0x18]
	cmp r0, #0
	beq _08044250
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _0804425E
	.align 2, 0
_08044240: .4byte gCurTask
_08044244: .4byte 0x03000024
_08044248: .4byte gCamera
_0804424C: .4byte 0x0300001C
_08044250:
	str r6, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
_0804425E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _080441C4
	asrs r4, r5, #0x10
	adds r0, r4, #6
	mov r1, sl
	asrs r5, r1, #0x10
	mov r6, r8
	ldrb r2, [r6, #0x17]
	movs r1, #0
	str r1, [sp]
	ldr r1, _080442FC @ =sub_805217C
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _0804430C
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	ldr r0, _08044300 @ =gCurTask
	ldr r0, [r0]
	ldr r5, _08044304 @ =sub_8044350
	str r5, [r0, #8]
	mov r0, r8
	bl sub_80443B0
	bl _call_via_r5
	movs r0, #0
	mov sb, r0
_080442AC:
	mov r1, sb
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080442EA
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080442EA
	ldr r0, [r6, #0x6c]
	ldr r4, [sp, #0xc]
	cmp r0, r4
	bne _080442EA
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80213B0
	adds r0, r6, #0
	bl sub_800E67C
	ldr r1, _08044308 @ =0xFFFFFD00
	adds r0, r1, #0
	ldrh r2, [r6, #0x1a]
	adds r0, r0, r2
	strh r0, [r6, #0x1a]
_080442EA:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _080442AC
	b _0804433E
	.align 2, 0
_080442FC: .4byte sub_805217C
_08044300: .4byte gCurTask
_08044304: .4byte sub_8044350
_08044308: .4byte 0xFFFFFD00
_0804430C:
	ldr r6, [sp, #0xc]
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	movs r1, #0x12
	ldrsh r3, [r6, r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802C140
	cmp r0, #0
	bne _08044338
	mov r2, r8
	ldrb r0, [r2, #0x14]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _08044334 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804433E
	.align 2, 0
_08044334: .4byte gCurTask
_08044338:
	mov r0, r8
	bl sub_80446E0
_0804433E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8044350
sub_8044350: @ 0x08044350
	push {r4, r5, lr}
	ldr r3, _0804437C @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	ldrb r1, [r4, #0x19]
	ldrh r0, [r4, #0x10]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044380
	ldrb r0, [r4, #0x14]
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _080443AA
	.align 2, 0
_0804437C: .4byte gCurTask
_08044380:
	movs r5, #0
	b _08044390
_08044384:
	adds r0, r4, #0
	bl sub_8044544
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08044390:
	ldrb r0, [r4, #0x19]
	cmp r5, r0
	blo _08044384
	ldrh r1, [r4, #0x10]
	cmp r1, #0x1d
	bhi _080443A4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080443AA
_080443A4:
	adds r0, r4, #0
	bl sub_804464C
_080443AA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80443B0
sub_80443B0: @ 0x080443B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c0
	adds r5, r0, #0
	ldr r0, [r5, #4]
	mov sb, r0
	ldr r2, [r5, #8]
	mov r8, r2
	adds r7, r5, #0
	adds r7, #0x54
	adds r4, r5, #0
	adds r4, #0xc4
	ldr r1, _080443E4 @ =gUnknown_080D014C
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r0, sp
	bl memcpy
	ldr r0, _080443E8 @ =gStageData
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0x10
	movs r3, #0
	b _0804442E
	.align 2, 0
_080443E4: .4byte gUnknown_080D014C
_080443E8: .4byte gStageData
_080443EC:
	lsls r1, r3, #4
	mov r2, sp
	adds r0, r2, r1
	ldr r0, [r0]
	add r0, sb
	stm r7!, {r0}
	add r0, sp, #8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #1
	strh r0, [r4]
	adds r4, #2
	add r0, sp, #4
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, r8
	stm r7!, {r0}
	add r0, sp, #0xc
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, #0x40
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
_0804442E:
	ldrb r0, [r5, #0x18]
	cmp r3, r0
	blo _080443EC
	movs r0, #2
	strb r0, [r5, #0x19]
	ldr r0, _0804444C @ =0x0000024A
	bl sub_8003DF0
	add sp, #0x1c0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804444C: .4byte 0x0000024A

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

	thumb_func_start sub_8044718
sub_8044718: @ 0x08044718
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0
