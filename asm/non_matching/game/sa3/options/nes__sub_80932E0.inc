
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r6, _0809331C @ =gUnknown_080D7470
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r7, r6, #0
	mov sb, ip
_080932FC:
	mov r1, r8
	cmp r1, #0
	bne _0809332C
	ldr r0, [r2, #0x40]
	cmp r0, #0x34
	bne _08093328
	ldrh r1, [r2, #0x12]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08093320
	movs r0, #0x84
	str r0, [r2, #0x40]
	mov r0, ip
	strh r0, [r2, #0x12]
	b _08093350
	.align 2, 0
_0809331C: .4byte gUnknown_080D7470
_08093320:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0x12]
	b _08093350
_08093328:
	subs r0, #0x10
	b _0809334E
_0809332C:
	ldr r0, [r2, #0x40]
	cmp r0, #0x84
	bne _0809334C
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	cmp r0, sb
	bne _08093344
	movs r0, #0x34
	str r0, [r2, #0x40]
	movs r0, #0
	strh r0, [r2, #0x12]
	b _08093350
_08093344:
	ldrh r0, [r2, #0x12]
	adds r0, #0x10
	strh r0, [r2, #0x12]
	b _08093350
_0809334C:
	adds r0, #0x10
_0809334E:
	str r0, [r2, #0x40]
_08093350:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldrh r0, [r7]
	cmp r0, r4
	bne _0809337A
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08093398
_0809337A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093398
	lsls r1, r3, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0809337A
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _0809337A
_08093398:
	movs r0, #0
	cmp r3, #0xe
	bne _080933A0
	movs r0, #1
_080933A0:
	cmp r0, #0
	beq _080932FC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
