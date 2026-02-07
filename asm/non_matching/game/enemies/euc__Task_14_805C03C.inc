
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _0805C068 @ =gTask_03001CFC
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r0, r2
	ldr r1, _0805C06C @ =0x03000028
	adds r3, r0, r1
	ldr r1, _0805C070 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r4, r0, r2
	movs r7, #0x8f
	lsls r7, r7, #3
	mov ip, r5
	movs r2, #0
	mov r8, r1
	b _0805C07C
	.align 2, 0
_0805C068: .4byte gTask_03001CFC
_0805C06C: .4byte 0x03000028
_0805C070: .4byte gCurTask
_0805C074:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #0x14
_0805C07C:
	cmp r2, #0x1f
	bhi _0805C08E
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	beq _0805C08C
	cmp r2, #0x1f
	bne _0805C074
	movs r2, #0
_0805C08C:
	mov ip, r2
_0805C08E:
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	movs r1, #1
	ands r0, r1
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	adds r1, r0, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #1
	bls _0805C0AE
	movs r0, #1
	b _0805C0B0
_0805C0AE:
	ldrb r0, [r1]
_0805C0B0:
	strh r0, [r3, #0xe]
	movs r0, #0xb4
	strh r0, [r3, #0xc]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldrh r1, [r4, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #4]
	cmp r7, #0
	blt _0805C100
	asrs r0, r7, #8
	cmp r0, #5
	ble _0805C0E4
	rsbs r0, r0, #0
	adds r2, r0, #0
	adds r2, #9
	b _0805C0E6
_0805C0E4:
	adds r2, r0, #0
_0805C0E6:
	ldr r0, _0805C134 @ =gSineTable
	movs r1, #0xff
	ands r1, r7
	lsls r1, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r1, r5
	adds r1, r1, r0
	movs r0, #0
	ldrsh r5, [r1, r0]
	asrs r5, r2
	asrs r0, r5, #1
	subs r5, r5, r0
_0805C100:
	movs r0, #0
	strh r0, [r3, #8]
	strh r5, [r3, #0xa]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0805C118
	rsbs r0, r5, #0
	strh r0, [r3, #0xa]
_0805C118:
	movs r0, #3
	mov r1, ip
	ands r1, r0
	strh r1, [r3, #0x10]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C134: .4byte gSineTable

.syntax divided
