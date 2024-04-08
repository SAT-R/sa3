.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable061
CreateEntity_Interactable061: @ 0x08035CE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08035DC4 @ =sub_8035DD4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035DC8 @ =sub_8036054
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08035DCC @ =0x0300000C
	adds r6, r1, r0
	mov r1, ip
	strh r7, [r1, #4]
	mov r2, r8
	strh r2, [r1, #6]
	str r5, [r1]
	ldrb r0, [r5]
	strb r0, [r1, #0xa]
	strb r4, [r1, #0xb]
	movs r3, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08035D5A
	movs r2, #1
_08035D40:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _08035D5A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08035D40
_08035D5A:
	mov r0, ip
	adds r0, #0x44
	movs r2, #0
	strb r3, [r0]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #0x40
	movs r3, #0
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x42
	strh r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x3c]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x3e]
	mov r0, ip
	adds r0, #0x45
	strb r3, [r0]
	ldr r2, _08035DD0 @ =gCamera
	ldr r1, [r2]
	mov r3, ip
	ldrh r0, [r3, #0x3c]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r3, #0x3e]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_8036068
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035DC4: .4byte sub_8035DD4
_08035DC8: .4byte sub_8036054
_08035DCC: .4byte 0x0300000C
_08035DD0: .4byte gCamera

	thumb_func_start sub_8035DD4
sub_8035DD4: @ 0x08035DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08035E70 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0
	ldrh r5, [r7, #0x3c]
	ldrh r4, [r7, #0x3e]
	ldr r0, _08035E74 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08035E78 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08035E10
	b _08035F1C
_08035E10:
	lsls r5, r5, #0x10
	asrs r1, r5, #0x10
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	str r0, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r3, r0, #0
	cmp r3, #0
	beq _08035EB2
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r3
	cmp r1, #0
	bne _08035EA8
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08035EA8
	strh r1, [r6, #0x18]
	strh r1, [r6, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08035E80
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035E80
	ldr r1, _08035E7C @ =0xFFFFFF00
	adds r0, r2, r1
	b _08035E9C
	.align 2, 0
_08035E70: .4byte gCurTask
_08035E74: .4byte gStageData
_08035E78: .4byte gPlayers
_08035E7C: .4byte 0xFFFFFF00
_08035E80:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08035EB2
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035EB2
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_08035E9C:
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _08035EB2
_08035EA8:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_08035EB2:
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	str r6, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r0, r8
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08035F18
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0xa
	beq _08035ED4
	cmp r0, #0xf7
	bne _08035F10
_08035ED4:
	ldr r3, _08035F0C @ =gStageData
	ldrh r1, [r6, #0x20]
	ldrh r0, [r3, #0x14]
	ands r0, r1
	adds r2, r7, #0
	adds r2, #0x45
	cmp r0, #0
	bne _08035EEA
	ldrb r0, [r2]
	cmp r0, #0
	bne _08035F1C
_08035EEA:
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x6e
	adds r0, r0, r1
	strh r4, [r0]
	b _08035F1C
	.align 2, 0
_08035F0C: .4byte gStageData
_08035F10:
	adds r0, r7, #0
	adds r0, #0x45
	strb r4, [r0]
	b _08035F1C
_08035F18:
	mov r3, r8
	strb r0, [r3, #0x1c]
_08035F1C:
	ldr r1, _08035F88 @ =gStageData
	adds r0, r7, #0
	adds r0, #0x44
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r1, #0x4e
	adds r2, r2, r1
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r4, r1, #0
	cmp r0, #0
	beq _08035F5E
	subs r0, r2, #2
	strh r0, [r4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl sub_8003E0C
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08035F5E
	movs r0, #0
	strh r0, [r4]
_08035F5E:
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	cmp r0, #0x20
	bgt _08035F72
	adds r1, r2, #0
_08035F72:
	mov r3, r8
	strb r1, [r3, #0x1c]
	bl sub_8035F8C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F88: .4byte gStageData

	thumb_func_start sub_8035F8C
sub_8035F8C: @ 0x08035F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08035FDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08035FE0 @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r0, r8
	movs r1, #0x3c
	ldrsh r5, [r0, r1]
	movs r1, #0x3e
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08036028
	movs r1, #0
	ldr r6, _08035FE4 @ =gPlayers
_08035FC6:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08035FE8
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08035FEC
	.align 2, 0
_08035FDC: .4byte gCurTask
_08035FE0: .4byte 0x0300000C
_08035FE4: .4byte gPlayers
_08035FE8:
	ldr r0, _08036020 @ =gStageData
	ldrb r1, [r0, #6]
_08035FEC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08035FC6
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08036024 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08036042
	.align 2, 0
_08036020: .4byte gStageData
_08036024: .4byte gCurTask
_08036028:
	ldr r0, _08036050 @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08036042:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036050: .4byte gCamera

	thumb_func_start sub_8036054
sub_8036054: @ 0x08036054
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8036068
sub_8036068: @ 0x08036068
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strb r2, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
