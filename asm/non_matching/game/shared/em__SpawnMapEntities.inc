
.syntax unified
.text
	push {r4, r5, r6, lr}
	sub sp, #0x50
	ldr r2, _0802BC98 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	beq _0802BB96
	b _0802BCEE
_0802BB96:
	ldr r0, _0802BC9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r1, [r6, #8]
	str r1, [sp, #0x44]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0802BBBC
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [sp, #0x44]
	ldr r0, [r6, #4]
	adds r0, #0xc
	str r0, [sp, #0x4c]
_0802BBBC:
	ldr r0, [sp, #0x48]
	adds r1, r0, #4
	str r1, [sp, #0x48]
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	adds r0, r1, #4
	str r0, [sp, #0x48]
	ldrh r1, [r1, #4]
	str r1, [sp, #8]
	adds r0, #4
	str r0, [sp, #0x48]
	ldr r1, _0802BCA0 @ =gCamera
	ldr r0, [r1]
	adds r2, r0, #0
	subs r2, #0x80
	str r2, [sp, #0x34]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [sp, #0x3c]
	ldr r1, [r1, #4]
	adds r0, r1, #0
	subs r0, #0x80
	str r0, [sp, #0x38]
	subs r4, #0x50
	adds r0, r1, r4
	str r0, [sp, #0x40]
	cmp r2, #0
	bge _0802BBF8
	str r3, [sp, #0x34]
_0802BBF8:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bge _0802BC00
	str r3, [sp, #0x38]
_0802BC00:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bge _0802BC08
	str r3, [sp, #0x3c]
_0802BC08:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bge _0802BC10
	str r3, [sp, #0x40]
_0802BC10:
	ldr r0, [sp, #4]
	lsls r2, r0, #8
	ldr r0, [sp, #0x34]
	cmp r0, r2
	blo _0802BC1E
	subs r0, r2, #1
	str r0, [sp, #0x34]
_0802BC1E:
	ldr r0, [sp, #8]
	lsls r1, r0, #8
	ldr r0, [sp, #0x38]
	cmp r0, r1
	blo _0802BC2C
	subs r0, r1, #1
	str r0, [sp, #0x38]
_0802BC2C:
	ldr r0, [sp, #0x3c]
	cmp r0, r2
	blo _0802BC36
	subs r0, r2, #1
	str r0, [sp, #0x3c]
_0802BC36:
	ldr r0, [sp, #0x40]
	cmp r0, r1
	blo _0802BC40
	subs r0, r1, #1
	str r0, [sp, #0x40]
_0802BC40:
	mov r1, sp
	ldr r0, [sp, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BCD8
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BCD8
	mov r5, sp
_0802BC5C:
	ldr r0, [sp, #0x34]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BCC2
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BCC2
	mov r4, sp
_0802BC74:
	ldr r0, _0802BC98 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BCA4
	movs r0, #1
	mov r1, sp
	bl sub_802BD04
	movs r0, #1
	mov r1, sp
	bl sub_802BDE4
	movs r0, #1
	mov r1, sp
	bl sub_802BEE4
	b _0802BCAC
	.align 2, 0
_0802BC98: .4byte gStageData
_0802BC9C: .4byte gCurTask
_0802BCA0: .4byte gCamera
_0802BCA4:
	movs r0, #1
	mov r1, sp
	bl sub_802BFA4
_0802BCAC:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BCC2
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BC74
_0802BCC2:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BCD8
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BC5C
_0802BCD8:
	ldr r1, _0802BCF8 @ =gCamera
	ldr r0, [r1]
	str r0, [r6, #0xc]
	ldr r0, [r1, #4]
	str r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0x14]
	ldr r0, _0802BCFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BD00 @ =Task_EntitiesManagerInit
	str r0, [r1, #8]
_0802BCEE:
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCF8: .4byte gCamera
_0802BCFC: .4byte gCurTask
_0802BD00: .4byte Task_EntitiesManagerInit

.syntax divided
