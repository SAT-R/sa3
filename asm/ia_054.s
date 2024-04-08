.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable054
CreateEntity_Interactable054: @ 0x08033A44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08033AEC @ =sub_8033AF8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08033AF0 @ =sub_8033D50
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r6, [r3, #4]
	strh r7, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033AA6
	movs r4, #1
_08033A8C:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _08033AA6
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08033A8C
_08033AA6:
	adds r0, r2, #1
	adds r2, r3, #0
	adds r2, #0x34
	strb r0, [r2]
	adds r3, #0xc
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	strh r0, [r3, #0x10]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	strh r0, [r3, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	movs r1, #0
	ldr r0, _08033AF4 @ =gStageData
	adds r0, #0x21
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	blo _08033ADC
	movs r1, #1
_08033ADC:
	adds r0, r3, #0
	bl sub_8033C0C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033AEC: .4byte sub_8033AF8
_08033AF0: .4byte sub_8033D50
_08033AF4: .4byte gStageData

	thumb_func_start sub_8033AF8
sub_8033AF8: @ 0x08033AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08033B48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08033B4C @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _08033BEE
	mov r1, r8
	ldr r2, [r1]
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	movs r6, #0
_08033B3E:
	cmp r6, #0
	bne _08033B54
	ldr r0, _08033B50 @ =gStageData
	ldrb r1, [r0, #6]
	b _08033B5E
	.align 2, 0
_08033B48: .4byte gCurTask
_08033B4C: .4byte 0x0300000C
_08033B50: .4byte gStageData
_08033B54:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08033B5E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033C04 @ =gPlayers
	adds r4, r0, r1
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r7, #0x1c
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #8
	beq _08033BE8
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08033BE8
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sb
	ldr r1, [sp, #8]
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08033BE8
	movs r0, #1
	mov r1, sb
	strb r0, [r1, #0x1a]
	movs r0, #0x98
	bl sub_8003DF0
	ldr r2, _08033C08 @ =gStageData
	mov r3, r8
	adds r3, #0x34
	ldrb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xae
	ldrh r0, [r0]
	str r0, [r2, #0x24]
	ldr r0, [sp, #8]
	subs r0, #0x10
	strh r0, [r2, #0x28]
	mov r0, sl
	subs r0, #0xc
	strh r0, [r2, #0x2a]
	ldrb r0, [r2, #3]
	cmp r0, #4
	bls _08033BE8
	ldrb r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #4
	bne _08033BE8
	ldrb r1, [r3]
	movs r0, #7
	ands r0, r1
	ldrh r1, [r2, #0x28]
	movs r3, #0x2a
	ldrsh r2, [r2, r3]
	bl sub_80274F4
_08033BE8:
	adds r6, #1
	cmp r6, #1
	ble _08033B3E
_08033BEE:
	bl sub_8033C64
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C04: .4byte gPlayers
_08033C08: .4byte gStageData

	thumb_func_start sub_8033C0C
sub_8033C0C: @ 0x08033C0C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	movs r0, #0xc
	cmp r5, #0
	bne _08033C1C
	movs r0, #0x12
_08033C1C:
	bl VramMalloc
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	ldr r0, _08033C60 @ =0x0000036B
	strh r0, [r4, #0xc]
	rsbs r0, r5, #0
	orrs r0, r5
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033C60: .4byte 0x0000036B

	thumb_func_start sub_8033C64
sub_8033C64: @ 0x08033C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sl, r0
	ldr r1, _08033CC0 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08033CC4
	ldrb r0, [r5, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08033D42
	.align 2, 0
_08033CC0: .4byte gCurTask
_08033CC4:
	ldr r1, _08033CF0 @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	ldr r0, _08033CF4 @ =gStageData
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08033D16
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08033CF8
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _08033D00
	.align 2, 0
_08033CF0: .4byte gCamera
_08033CF4: .4byte gStageData
_08033CF8:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_08033D00:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033D20
	movs r0, #1
	mov sl, r0
	b _08033D20
_08033D16:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08033D20:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08033D36
	ldrb r0, [r4, #0x1a]
	cmp r0, #1
	bne _08033D36
	movs r0, #2
	strb r0, [r4, #0x1a]
_08033D36:
	mov r1, sl
	cmp r1, #0
	bne _08033D42
	adds r0, r4, #0
	bl DisplaySprite
_08033D42:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8033D50
sub_8033D50: @ 0x08033D50
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
