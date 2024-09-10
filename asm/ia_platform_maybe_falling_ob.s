.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable103
CreateEntity_Interactable103: @ 0x08042B34
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08042BF0 @ =sub_8042C1C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08042BF4 @ =sub_80430A0
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldr r4, _08042BF8 @ =0x030000B0
	adds r2, r3, r4
	movs r1, #2
	strb r1, [r2]
	mov r5, r8
	ldrb r1, [r5, #7]
	lsrs r1, r1, #7
	ldr r6, _08042BFC @ =0x030000B1
	adds r2, r3, r6
	strb r1, [r2]
	ldr r2, _08042C00 @ =0x030000B2
	adds r1, r3, r2
	mov r4, sb
	strh r4, [r1]
	ldr r5, _08042C04 @ =0x030000B4
	adds r1, r3, r5
	movs r2, #0x28
	strh r2, [r1]
	adds r6, #0xb
	adds r1, r3, r6
	movs r5, #0x12
	strh r5, [r1]
	ldr r4, _08042C08 @ =0x030000B6
	adds r1, r3, r4
	strh r2, [r1]
	adds r6, #2
	adds r1, r3, r6
	ldr r4, _08042C0C @ =0x0000FFE8
	strh r4, [r1]
	ldr r2, _08042C10 @ =0x030000B8
	adds r1, r3, r2
	ldr r2, _08042C14 @ =0x0000FFD8
	strh r2, [r1]
	adds r6, #2
	adds r1, r3, r6
	strh r5, [r1]
	ldr r5, _08042C18 @ =0x030000BA
	adds r1, r3, r5
	strh r2, [r1]
	adds r6, #2
	adds r3, r3, r6
	strh r4, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r4, r8
	strb r1, [r4]
	bl sub_8042EA8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08042BF0: .4byte sub_8042C1C
_08042BF4: .4byte sub_80430A0
_08042BF8: .4byte 0x030000B0
_08042BFC: .4byte 0x030000B1
_08042C00: .4byte 0x030000B2
_08042C04: .4byte 0x030000B4
_08042C08: .4byte 0x030000B6
_08042C0C: .4byte 0x0000FFE8
_08042C10: .4byte 0x030000B8
_08042C14: .4byte 0x0000FFD8
_08042C18: .4byte 0x030000BA

	thumb_func_start sub_8042C1C
sub_8042C1C: @ 0x08042C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08042CD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r3, [r0]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r4, [sp, #4]
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08042CDC @ =gStageData
	ldr r0, [r0, #0x1c]
	ldr r1, _08042CE0 @ =0x000001FF
	ands r0, r1
	ldr r6, _08042CE4 @ =0x030000B2
	adds r1, r2, r6
	strh r0, [r1]
	movs r1, #0
	ldr r7, _08042CE8 @ =0x030000B4
	adds r7, r7, r2
	mov sl, r7
	ldr r0, _08042CEC @ =0x030000BC
	adds r0, r2, r0
	str r0, [sp, #0x10]
_08042C76:
	ldr r3, [sp, #4]
	adds r3, #0xb2
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #7
	ldrh r3, [r3]
	adds r3, r0, r3
	ldr r4, _08042CE0 @ =0x000001FF
	adds r0, r4, #0
	lsls r1, r1, #1
	mov r7, sl
	adds r6, r7, r1
	ldrh r4, [r6]
	mov sb, r4
	ldr r7, [sp, #0x10]
	adds r4, r7, r1
	ldrh r1, [r4]
	mov r8, r1
	ands r3, r0
	str r2, [sp, #0x18]
	cmp r3, #0x3f
	bgt _08042CF4
	lsls r2, r3, #3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	ldr r7, _08042CF0 @ =gSineTable
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0x16
	muls r0, r3, r0
	asrs r1, r0, #0xe
	movs r7, #4
	rsbs r7, r7, #0
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r2, #1
	ldr r1, _08042CF0 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r1, r0, #0xe
	subs r3, #0x76
	adds r0, r3, #0
	b _08042D42
	.align 2, 0
_08042CD8: .4byte gCurTask
_08042CDC: .4byte gStageData
_08042CE0: .4byte 0x000001FF
_08042CE4: .4byte 0x030000B2
_08042CE8: .4byte 0x030000B4
_08042CEC: .4byte 0x030000BC
_08042CF0: .4byte gSineTable
_08042CF4:
	cmp r3, #0xff
	bgt _08042D02
	adds r0, r3, #0
	subs r0, #0xa0
	strh r0, [r6]
	movs r0, #0x12
	b _08042D5C
_08042D02:
	ldr r0, _08042D48 @ =0x0000013F
	cmp r3, r0
	bgt _08042D50
	adds r0, r3, #0
	subs r0, #0xc0
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x10
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r2, r7
	lsls r0, r0, #1
	ldr r1, _08042D4C @ =gSineTable
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r7, #0x16
	muls r0, r7, r0
	asrs r1, r0, #0xe
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r2, #1
	ldr r4, _08042D4C @ =gSineTable
	adds r0, r0, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0x16
	muls r0, r1, r0
	asrs r1, r0, #0xe
	movs r0, #0x60
_08042D42:
	subs r0, r0, r1
	strh r0, [r6]
	b _08042D5E
	.align 2, 0
_08042D48: .4byte 0x0000013F
_08042D4C: .4byte gSineTable
_08042D50:
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r3
	strh r0, [r6]
	ldr r0, _08042DC4 @ =0x0000FFE6
_08042D5C:
	strh r0, [r4]
_08042D5E:
	ldr r0, [sp, #4]
	adds r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08042D76
	ldr r3, [sp, #0x18]
	asrs r1, r3, #0xf
	add r1, sl
	movs r4, #0
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	strh r0, [r1]
_08042D76:
	ldr r6, [sp, #0x18]
	asrs r2, r6, #0x10
	lsls r3, r2, #1
	mov r7, sl
	adds r0, r7, r3
	ldrh r1, [r0]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r6, [sp, #0x10]
	adds r4, r6, r3
	ldrh r1, [r4]
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	ldr r1, [sp, #4]
	adds r7, r1, r0
	movs r1, #0
	str r3, [sp, #0x14]
_08042DB4:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08042DCC
	ldr r0, _08042DC8 @ =gStageData
	ldrb r1, [r0, #6]
	b _08042DD6
	.align 2, 0
_08042DC4: .4byte 0x0000FFE6
_08042DC8: .4byte gStageData
_08042DCC:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042DD6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08042EA4 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08042DFA
	cmp r1, #8
	beq _08042DFA
	cmp r1, #0x10
	bne _08042E70
_08042DFA:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08042E70
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042E32
	ldr r0, [r5, #0x6c]
	cmp r0, r7
	bne _08042E32
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
_08042E32:
	ldr r0, [sp, #0x14]
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08042E70
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_08042E70:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08042DB4
	ldr r2, [sp, #0x18]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08042E90
	b _08042C76
_08042E90:
	bl sub_8042F10
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042EA4: .4byte gPlayers

	thumb_func_start sub_8042EA8
sub_8042EA8: @ 0x08042EA8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #9
	bl VramMalloc
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	movs r7, #0
	movs r6, #0
_08042EBE:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	adds r1, r5, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r1, [r0]
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08042EBE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8042F10
sub_8042F10: @ 0x08042F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #1
	mov sb, r0
	ldr r0, _08042FD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	str r1, [sp]
	ldrb r5, [r6, #0xa]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl IsPointInScreenRect
	mov r2, sb
	eors r0, r2
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	mov sb, r1
	ldr r1, _08042FDC @ =gCamera
	ldr r0, [r1]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	ldr r0, [r1, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
	movs r4, #0
_08042F78:
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	adds r5, r6, r0
	lsls r2, r2, #1
	adds r1, r6, #0
	adds r1, #0xb4
	adds r1, r1, r2
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0xbc
	adds r1, r1, r2
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	bl sub_802C1D0
	adds r7, r4, #0
	cmp r0, #1
	bne _08043000
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r1, #0
_08042FC6:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08042FE0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08042FE6
	.align 2, 0
_08042FD8: .4byte gCurTask
_08042FDC: .4byte gCamera
_08042FE0:
	ldr r0, [r5, #8]
	ldr r1, _0804302C @ =0xFFFFFBFF
	ands r0, r1
_08042FE6:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08042FC6
	movs r0, #0
	mov sb, r0
_08043000:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08042F78
	mov r2, sb
	cmp r2, #0
	beq _08043082
	movs r1, #0
_08043016:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08043030
	mov r0, r8
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08043034
	.align 2, 0
_0804302C: .4byte 0xFFFFFBFF
_08043030:
	ldr r0, _08043094 @ =gStageData
	ldrb r1, [r0, #6]
_08043034:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08043098 @ =gPlayers
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
_08043046:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	mov r1, r8
	bl sub_80213B0
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08043046
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08043016
	ldrb r0, [r6, #0xa]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _0804309C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08043082:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043094: .4byte gStageData
_08043098: .4byte gPlayers
_0804309C: .4byte gCurTask

	thumb_func_start sub_80430A0
sub_80430A0: @ 0x080430A0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080430B4 @ =0x030000AC
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080430B4: .4byte 0x030000AC
