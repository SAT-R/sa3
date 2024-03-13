.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable089
CreateEntity_Interactable089: @ 0x0803EED8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803EFA4 @ =sub_803EFC8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803EFA8 @ =sub_803F370
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	mov r3, r8
	strb r3, [r0, #0xb]
	str r2, [r0, #0x6c]
	mov r7, sb
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r2, _0803EFAC @ =0x03000070
	adds r2, r2, r6
	mov r8, r2
	strh r1, [r2]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r3, _0803EFB0 @ =0x03000072
	adds r4, r6, r3
	strh r1, [r4]
	ldr r7, _0803EFB4 @ =0x03000074
	adds r2, r6, r7
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _0803EFB8 @ =0x03000075
	adds r2, r6, r1
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	ldr r2, _0803EFBC @ =0x0300000C
	adds r5, r6, r2
	ldr r3, _0803EFC0 @ =gUnknown_03001D10
	ldr r2, [r3]
	mov r7, r8
	ldrh r1, [r7]
	subs r1, r1, r2
	strh r1, [r5, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r5, #0x12]
	ldr r1, _0803EFC4 @ =0x03000044
	adds r5, r6, r1
	ldr r2, [r3]
	ldrh r1, [r7]
	subs r1, r1, r2
	strh r1, [r5, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r5, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, sb
	strb r1, [r3]
	bl sub_803F188
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EFA4: .4byte sub_803EFC8
_0803EFA8: .4byte sub_803F370
_0803EFAC: .4byte 0x03000070
_0803EFB0: .4byte 0x03000072
_0803EFB4: .4byte 0x03000074
_0803EFB8: .4byte 0x03000075
_0803EFBC: .4byte 0x0300000C
_0803EFC0: .4byte gUnknown_03001D10
_0803EFC4: .4byte 0x03000044

	thumb_func_start sub_803EFC8
sub_803EFC8: @ 0x0803EFC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803F00C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _0803F010 @ =0x0300000C
	adds r1, r1, r0
	mov sl, r1
	ldr r2, _0803F014 @ =0x03000070
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _0803F018 @ =0x03000072
	adds r0, r0, r3
	ldrh r0, [r0]
	mov sb, r0
	movs r2, #0
	lsls r1, r1, #0x10
	mov r8, r1
_0803EFFC:
	lsls r0, r2, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0803F020
	ldr r0, _0803F01C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803F02A
	.align 2, 0
_0803F00C: .4byte gCurTask
_0803F010: .4byte 0x0300000C
_0803F014: .4byte 0x03000070
_0803F018: .4byte 0x03000072
_0803F01C: .4byte gUnknown_030008A0
_0803F020:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803F02A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803F0B4 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r0, _0803F0B8 @ =sub_800AB48
	cmp r1, r0
	bne _0803F042
	b _0803F164
_0803F042:
	ldr r0, _0803F0BC @ =sub_800E67C
	cmp r1, r0
	bne _0803F04A
	b _0803F164
_0803F04A:
	ldr r0, _0803F0C0 @ =sub_800E6CC
	cmp r1, r0
	bne _0803F052
	b _0803F164
_0803F052:
	adds r0, r4, #0
	bl sub_802C080
	adds r1, r0, #0
	cmp r1, #0
	bne _0803F0C8
	mov r0, r8
	asrs r5, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	str r4, [sp]
	str r1, [sp, #4]
	mov r0, sl
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #2
	bl sub_8020700
	cmp r0, #0
	beq _0803F0C8
	lsls r0, r5, #8
	str r0, [r4, #0x70]
	lsls r0, r6, #8
	str r0, [r4, #0x74]
	adds r0, r4, #0
	ldr r1, _0803F0C4 @ =sub_800AAC0
	bl sub_800D87C
	adds r0, r4, #0
	bl sub_8016F28
	ldr r1, [sp, #8]
	adds r1, #0x74
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _0803F0AE
	ldr r1, [sp, #8]
	adds r1, #0x75
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r2
	bne _0803F164
_0803F0AE:
	movs r0, #0x3e
	strb r0, [r1]
	b _0803F164
	.align 2, 0
_0803F0B4: .4byte gUnknown_030015C0
_0803F0B8: .4byte sub_800AB48
_0803F0BC: .4byte sub_800E67C
_0803F0C0: .4byte sub_800E6CC
_0803F0C4: .4byte sub_800AAC0
_0803F0C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F0DE
	cmp r1, #8
	beq _0803F0DE
	cmp r1, #0x10
	bne _0803F164
_0803F0DE:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F164
	mov r3, sb
	lsls r2, r3, #0x10
	str r0, [sp]
	mov r0, sl
	mov r3, r8
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	cmp r2, #0
	beq _0803F164
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0803F118
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0803F148
_0803F118:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0803F148
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0803F13C
	ldr r3, _0803F138 @ =0xFFFFFF00
	b _0803F140
	.align 2, 0
_0803F138: .4byte 0xFFFFFF00
_0803F13C:
	movs r3, #0x80
	lsls r3, r3, #1
_0803F140:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_0803F148:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F164
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0803F164:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803F174
	b _0803EFFC
_0803F174:
	bl sub_803F1D4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803F188
sub_803F188: @ 0x0803F188
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x36
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _0803F1D0 @ =0x0000038E
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	subs r1, #0x8e
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r1, [r0, #0x28]
	str r1, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F1D0: .4byte 0x0000038E

	thumb_func_start sub_803F1D4
sub_803F1D4: @ 0x0803F1D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803F240 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0803F244 @ =0x0300000C
	adds r4, r7, r1
	ldr r5, [r6]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r2, [r6, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r3, _0803F248 @ =gUnknown_03001D10
	ldr r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r2, r0, r2
	strh r2, [r4, #0x10]
	ldr r2, [r3, #4]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r4, #0x12]
	bl sub_802C198
	cmp r0, #0
	bne _0803F24C
	ldrb r0, [r6, #0xa]
	strb r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0803F362
	.align 2, 0
_0803F240: .4byte gCurTask
_0803F244: .4byte 0x0300000C
_0803F248: .4byte gUnknown_03001D10
_0803F24C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	ldr r2, _0803F274 @ =0x03000074
	adds r2, r2, r7
	mov r8, r2
	ldr r3, _0803F278 @ =0x03000075
	adds r7, r7, r3
_0803F25E:
	cmp r5, #0
	beq _0803F27C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	b _0803F28A
	.align 2, 0
_0803F274: .4byte 0x03000074
_0803F278: .4byte 0x03000075
_0803F27C:
	ldr r0, [r4, #8]
	ldr r1, _0803F34C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
_0803F28A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F25E
	mov r0, r8
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803F2E8
	subs r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bne _0803F2E8
	ldr r0, _0803F350 @ =0x00000255
	bl sub_8003DF0
	adds r1, r6, #0
	adds r1, #0x44
	ldr r0, [r6, #0x6c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x44]
	movs r2, #0
	ldr r0, _0803F354 @ =0x000003A6
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	subs r0, #0xa6
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
_0803F2E8:
	adds r1, r7, #0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0803F2F8
	subs r0, r2, #1
	strb r0, [r1]
_0803F2F8:
	mov r5, r8
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803F362
	adds r4, r6, #0
	adds r4, #0x44
	ldr r2, _0803F358 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	subs r0, #0x30
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803F362
	ldrb r1, [r7]
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	ble _0803F35C
	strb r1, [r5]
	movs r0, #0xff
	strb r0, [r7]
	b _0803F362
	.align 2, 0
_0803F34C: .4byte 0xFFFFFBFF
_0803F350: .4byte 0x00000255
_0803F354: .4byte 0x000003A6
_0803F358: .4byte gUnknown_03001D10
_0803F35C:
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3]
_0803F362:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803F370
sub_803F370: @ 0x0803F370
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803F384
sub_803F384: @ 0x0803F384
	push {r4, lr}
	adds r2, r0, #0
	adds r2, #0x44
	ldr r1, [r0, #0x6c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r0, #0x44]
	movs r4, #0
	movs r1, #0
	ldr r0, _0803F3C0 @ =0x000003A6
	strh r0, [r2, #0xc]
	strb r4, [r2, #0x1a]
	strh r3, [r2, #0x14]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F3C0: .4byte 0x000003A6
