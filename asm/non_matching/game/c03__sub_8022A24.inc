
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08022A68 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08022A6C @ =gStageData
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08022B08
	ldr r0, _08022A70 @ =0x03000234
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08022A74
	movs r0, #0x40
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08022A76
	.align 2, 0
_08022A68: .4byte gCurTask
_08022A6C: .4byte gStageData
_08022A70: .4byte 0x03000234
_08022A74:
	ldrb r0, [r2]
_08022A76:
	movs r2, #0
	ldr r1, _08022B18 @ =gUnknown_080CEE40
	mov sl, r1
	ldr r1, _08022B1C @ =gStageData + 0x8E
	mov sb, r1
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	movs r1, #0x20
	subs r1, r1, r6
	movs r7, #0x1f
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x10
	mov ip, r0
_08022A94:
	lsls r4, r2, #0x18
	asrs r4, r4, #0x18
	lsls r5, r4, #1
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #5
	adds r0, r5, r0
	add r0, sl
	ldrh r3, [r0]
	movs r0, #0x1f
	ands r0, r3
	adds r2, r0, #0
	muls r2, r6, r2
	asrs r2, r2, #5
	add r2, ip
	ands r2, r7
	lsrs r0, r3, #5
	ands r0, r7
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #5
	add r1, ip
	ands r1, r7
	lsrs r3, r3, #0xa
	ands r3, r7
	adds r0, r3, #0
	muls r0, r6, r0
	asrs r0, r0, #5
	add r0, ip
	ands r0, r7
	movs r3, #0x85
	lsls r3, r3, #2
	add r3, r8
	adds r5, r3, r5
	lsls r1, r1, #5
	orrs r2, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #0xf
	ble _08022A94
	ldr r0, _08022B20 @ =0x040000D4
	str r3, [r0]
	ldr r1, _08022B24 @ =gObjPalette + 0x100
	str r1, [r0, #4]
	ldr r1, _08022B28 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08022B2C @ =gFlags
	ldr r0, [r1]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022B2C @ =gFlags
	str r0, [r1]
_08022B08:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022B18: .4byte gUnknown_080CEE40
_08022B1C: .4byte gStageData + 0x8E
_08022B20: .4byte 0x040000D4
_08022B24: .4byte gObjPalette + 0x100
_08022B28: .4byte 0x80000010
_08022B2C: .4byte gFlags

.syntax divided
