
.syntax unified
.text
	push {r4, r5, r6, lr}
	ldr r0, _0806AF54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0x30]
	cmp r0, #0
	beq _0806AEFA
	subs r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806AF0E
_0806AEFA:
	movs r0, #0xfa
	lsls r0, r0, #1
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #1
	str r1, [r5, #0x40]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #1
	str r0, [r5, #0x44]
_0806AF0E:
	ldr r0, [r5]
	ldr r1, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_806B094
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	bne _0806AF5C
	ldr r1, _0806AF58 @ =gSineTable
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	b _0806AF7E
	.align 2, 0
_0806AF54: .4byte gCurTask
_0806AF58: .4byte gSineTable
_0806AF5C:
	ldr r1, _0806AFA4 @ =gSineTable
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
_0806AF7E:
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	adds r3, r0, r2
	str r3, [r5, #0x38]
	ldrh r0, [r5, #0x30]
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AFD6
	cmp r2, #0
	bge _0806AFA8
	movs r2, #0x80
	lsls r2, r2, #2
	b _0806AFAE
	.align 2, 0
_0806AFA4: .4byte gSineTable
_0806AFA8:
	cmp r2, #0
	ble _0806AFB2
	ldr r2, _0806AFC0 @ =0xFFFFFE00
_0806AFAE:
	adds r0, r3, r2
	str r0, [r5, #0x38]
_0806AFB2:
	cmp r1, #0
	bge _0806AFC4
	ldr r0, [r5, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0806AFCE
	.align 2, 0
_0806AFC0: .4byte 0xFFFFFE00
_0806AFC4:
	cmp r1, #0
	ble _0806AFD0
	ldr r0, [r5, #0x3c]
	ldr r2, _0806B01C @ =0xFFFFFE00
	adds r0, r0, r2
_0806AFCE:
	str r0, [r5, #0x3c]
_0806AFD0:
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _0806AFE0
_0806AFD6:
	adds r0, r5, #0
	bl sub_806D01C
	ldr r0, _0806B020 @ =0x0000FFFF
	strh r0, [r5, #0x30]
_0806AFE0:
	adds r0, r5, #0
	bl sub_806CEE8
	ldrb r0, [r5, #0x1e]
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_806D07C
	adds r0, r5, #0
	bl sub_806BC50
	cmp r6, #0
	beq _0806B000
	adds r0, r5, #0
	bl sub_806D01C
_0806B000:
	adds r0, r5, #0
	bl sub_806B844
	cmp r0, #1
	bne _0806B02C
	ldr r0, _0806B024 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806B028 @ =sub_806C1C8
	str r0, [r1, #8]
	adds r1, r5, #0
	adds r1, #0x5f
	movs r0, #0xff
	b _0806B08C
	.align 2, 0
_0806B01C: .4byte 0xFFFFFE00
_0806B020: .4byte 0x0000FFFF
_0806B024: .4byte gCurTask
_0806B028: .4byte sub_806C1C8
_0806B02C:
	ldr r4, [r5]
	lsrs r0, r4, #0x10
	ldr r2, [r5, #4]
	asrs r3, r2, #8
	lsrs r2, r2, #0x10
	adds r1, r5, #0
	adds r1, #0x22
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r4, r4, #8
	adds r3, #0x26
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	subs r0, #0x10
	asrs r4, r4, #0x10
	cmp r0, r4
	bge _0806B08E
	adds r0, #0x20
	cmp r0, r4
	ble _0806B08E
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	subs r1, #8
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	bge _0806B08E
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r3
	ble _0806B08E
	adds r1, r5, #0
	adds r1, #0x5f
	movs r0, #2
_0806B08C:
	strb r0, [r1]
_0806B08E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

.syntax divided
