
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r2, _0802B8A4 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802B87E
	b _0802BB72
_0802B87E:
	ldr r0, _0802B8A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _0802B926
	ldr r0, _0802B8AC @ =gCamera
	ldr r5, [r0]
	ldr r4, [r6, #0xc]
	subs r3, r5, r4
	adds r7, r0, #0
	cmp r3, #0
	blt _0802B8B0
	cmp r3, #0xf8
	bgt _0802B926
	b _0802B8B6
	.align 2, 0
_0802B8A4: .4byte gStageData
_0802B8A8: .4byte gCurTask
_0802B8AC: .4byte gCamera
_0802B8B0:
	subs r0, r4, r5
	cmp r0, #0xf8
	bgt _0802B926
_0802B8B6:
	ldr r3, [r7, #4]
	ldr r0, [r6, #0x10]
	subs r1, r3, r0
	cmp r1, #0
	blt _0802B8C6
	cmp r1, #0xd0
	bgt _0802B926
	b _0802B8CC
_0802B8C6:
	subs r0, r0, r3
	cmp r0, #0xd0
	bgt _0802B926
_0802B8CC:
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r1, [r6, #8]
	str r1, [sp, #0x44]
	ldr r3, [r6, #4]
	str r3, [sp, #0x4c]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0802B8EA
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [sp, #0x44]
	adds r0, r3, #0
	adds r0, #0xc
	str r0, [sp, #0x4c]
_0802B8EA:
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
	ldr r2, [r7]
	ldr r1, [r6, #0xc]
	cmp r2, r1
	ble _0802B914
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #0x24]
	adds r0, r2, r0
	b _0802B91E
_0802B914:
	adds r0, r2, #0
	subs r0, #0x80
	str r0, [sp, #0x24]
	ldr r0, [r6, #0xc]
	subs r0, #0x80
_0802B91E:
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0802B92C
_0802B926:
	bl SpawnMapEntities
	b _0802BB72
_0802B92C:
	ldr r0, [r7, #4]
	adds r3, r0, #0
	subs r3, #0x80
	str r3, [sp, #0x28]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r0, r1
	str r2, [sp, #0x30]
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _0802B94E
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [sp, #0x38]
	str r2, [sp, #0x40]
	b _0802B956
_0802B94E:
	str r3, [sp, #0x38]
	ldr r0, [r6, #0x10]
	subs r0, #0x80
	str r0, [sp, #0x40]
_0802B956:
	ldr r1, [r7]
	adds r0, r1, #0
	subs r0, #0x80
	str r0, [sp, #0x34]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bge _0802B970
	movs r0, #0
	str r0, [sp, #0x24]
_0802B970:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bge _0802B97A
	movs r0, #0
	str r0, [sp, #0x28]
_0802B97A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bge _0802B984
	movs r0, #0
	str r0, [sp, #0x2c]
_0802B984:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0802B98E
	movs r0, #0
	str r0, [sp, #0x30]
_0802B98E:
	ldr r0, [sp, #4]
	lsls r3, r0, #8
	ldr r1, [sp, #0x24]
	adds r5, r0, #0
	cmp r1, r3
	blo _0802B99E
	subs r0, r3, #1
	str r0, [sp, #0x24]
_0802B99E:
	ldr r0, [sp, #8]
	lsls r2, r0, #8
	ldr r1, [sp, #0x28]
	adds r4, r0, #0
	cmp r1, r2
	blo _0802B9AE
	subs r0, r2, #1
	str r0, [sp, #0x28]
_0802B9AE:
	ldr r0, [sp, #0x2c]
	cmp r0, r3
	blo _0802B9B8
	subs r0, r3, #1
	str r0, [sp, #0x2c]
_0802B9B8:
	ldr r0, [sp, #0x30]
	cmp r0, r2
	blo _0802B9C2
	subs r0, r2, #1
	str r0, [sp, #0x30]
_0802B9C2:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bge _0802B9CC
	movs r0, #0
	str r0, [sp, #0x34]
_0802B9CC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bge _0802B9D6
	movs r0, #0
	str r0, [sp, #0x38]
_0802B9D6:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bge _0802B9E0
	movs r0, #0
	str r0, [sp, #0x3c]
_0802B9E0:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bge _0802B9EA
	movs r0, #0
	str r0, [sp, #0x40]
_0802B9EA:
	ldr r0, [sp, #0x34]
	cmp r0, r3
	blo _0802B9F4
	subs r0, r3, #1
	str r0, [sp, #0x34]
_0802B9F4:
	ldr r0, [sp, #0x38]
	cmp r0, r2
	blo _0802B9FE
	subs r0, r2, #1
	str r0, [sp, #0x38]
_0802B9FE:
	lsls r1, r5, #8
	ldr r0, [sp, #0x3c]
	cmp r0, r1
	blo _0802BA0A
	subs r0, r1, #1
	str r0, [sp, #0x3c]
_0802BA0A:
	lsls r1, r4, #8
	ldr r0, [sp, #0x40]
	cmp r0, r1
	blo _0802BA16
	subs r0, r1, #1
	str r0, [sp, #0x40]
_0802BA16:
	ldr r1, [r7]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _0802BABC
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	beq _0802BABC
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x30]
	cmp r2, r0
	beq _0802BABC
	mov r1, sp
	asrs r0, r2, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bge _0802BABC
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BABC
	mov r5, sp
_0802BA48:
	ldr r0, [sp, #0x24]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bge _0802BAA6
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BAA6
	mov r4, sp
_0802BA60:
	ldr r0, _0802BA84 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BA88
	movs r0, #0
	mov r1, sp
	bl sub_802BD04
	movs r0, #0
	mov r1, sp
	bl sub_802BDE4
	movs r0, #0
	mov r1, sp
	bl sub_802BEE4
	b _0802BA90
	.align 2, 0
_0802BA84: .4byte gStageData
_0802BA88:
	movs r0, #0
	mov r1, sp
	bl sub_802BFA4
_0802BA90:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bge _0802BAA6
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BA60
_0802BAA6:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bge _0802BABC
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BA48
_0802BABC:
	ldr r0, _0802BB2C @ =gCamera
	ldr r1, [r0, #4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	beq _0802BB68
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x40]
	cmp r2, r0
	beq _0802BB68
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	beq _0802BB68
	mov r1, sp
	asrs r0, r2, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BB68
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BB68
	mov r5, sp
_0802BAF0:
	ldr r0, [sp, #0x34]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BB52
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BB52
	mov r4, sp
_0802BB08:
	ldr r0, _0802BB30 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BB34
	movs r0, #1
	mov r1, sp
	bl sub_802BD04
	movs r0, #1
	mov r1, sp
	bl sub_802BDE4
	movs r0, #1
	mov r1, sp
	bl sub_802BEE4
	b _0802BB3C
	.align 2, 0
_0802BB2C: .4byte gCamera
_0802BB30: .4byte gStageData
_0802BB34:
	movs r0, #1
	mov r1, sp
	bl sub_802BFA4
_0802BB3C:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BB52
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BB08
_0802BB52:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BB68
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BAF0
_0802BB68:
	ldr r0, _0802BB7C @ =gCamera
	ldr r1, [r0]
	str r1, [r6, #0xc]
	ldr r0, [r0, #4]
	str r0, [r6, #0x10]
_0802BB72:
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BB7C: .4byte gCamera

.syntax divided
