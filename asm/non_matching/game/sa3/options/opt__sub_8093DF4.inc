
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08093E5C @ =gSoundInfo
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov r0, sp
	movs r2, #8
	bl memset
	mov r1, sp
	ldr r0, _08093E60 @ =0x04000062
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	ldr r0, _08093E64 @ =0x04000072
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1, #4]
	ldr r0, _08093E68 @ =0x04000078
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1, #6]
	mov r3, r8
	strh r3, [r6, #0x22]
	mov r7, r8
	str r7, [r6, #0x58]
	movs r5, #0
	movs r0, #0x1a
	adds r0, r0, r6
	mov ip, r0
_08093E3E:
	lsls r2, r5, #1
	mov r1, ip
	adds r4, r1, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	mov r7, sp
	adds r3, r7, r2
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	cmp r1, #0
	blt _08093E6C
	ldrh r0, [r4]
	ldrh r1, [r3]
	b _08093E70
	.align 2, 0
_08093E5C: .4byte gSoundInfo
_08093E60: .4byte 0x04000062
_08093E64: .4byte 0x04000072
_08093E68: .4byte 0x04000078
_08093E6C:
	ldrh r0, [r3]
	ldrh r1, [r4]
_08093E70:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x22
	ldrsh r1, [r6, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08093E84
	strh r3, [r6, #0x22]
_08093E84:
	mov r3, ip
	adds r1, r3, r2
	mov r7, sp
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08093E3E
	movs r5, #0
	movs r0, #0x70
	add r0, sb
	mov ip, r0
	adds r7, r6, #0
	adds r7, #0x28
_08093EA6:
	lsls r0, r5, #6
	mov r1, ip
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r5, #2
	adds r3, r7, r0
	ldr r0, [r3]
	subs r2, r0, r1
	subs r1, r1, r0
	cmp r2, #0
	blt _08093EBE
	adds r1, r2, #0
_08093EBE:
	ldr r0, [r6, #0x58]
	cmp r0, r1
	bhs _08093EC6
	str r1, [r6, #0x58]
_08093EC6:
	ldr r0, [r4]
	str r0, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08093EA6
	ldr r0, [r6, #0x58]
	lsrs r3, r0, #7
	cmp r3, #0x20
	bls _08093EDE
	movs r3, #0x20
_08093EDE:
	ldrh r0, [r6, #0x22]
	lsls r0, r0, #0x13
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08093EEC
	movs r4, #0x20
_08093EEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	add r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08093F3E
	ldr r0, [r6, #0x5c]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	subs r0, r2, r1
	cmp r0, #0
	bge _08093F0C
	subs r0, r1, r2
_08093F0C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08093F1C
	lsls r0, r0, #0x12
	b _08093F1E
_08093F1C:
	lsls r0, r0, #0x11
_08093F1E:
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _08093F30
	movs r0, #0x30
	mov r8, r0
_08093F30:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r6, #0x5c]
_08093F3E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r0, r3, r0
	add r0, r8
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x80
	cmp r0, r1
	bls _08093F56
	strh r1, [r6, #0x26]
_08093F56:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
