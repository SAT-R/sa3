
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	movs r7, #6
	movs r6, #0
	ldr r0, _080620E0 @ =gSineTable
	mov r8, r0
_08061F66:
	mov r1, ip
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062000
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E4 @ =gUnknown_080D20AC
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r0, r2, #3
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	add r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _08061FB4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061FB4:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x30
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0xc
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08062000:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061F66
	movs r6, #0
	movs r1, #2
	add r1, ip
	mov sl, r1
	ldr r0, _080620E0 @ =gSineTable
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
_0806201C:
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080620C2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E8 @ =gUnknown_080D20B0
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r6, #1
	bhi _08062068
	mov r1, r8
	adds r0, r2, r1
	str r0, [sp, #8]
_08062068:
	cmp r6, #0
	beq _08062070
	cmp r6, #3
	bne _08062076
_08062070:
	ldr r0, [sp, #0xc]
	add r0, r8
	str r0, [sp, #0xc]
_08062076:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x40
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x3c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0x14
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080620C2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806201C
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080620E0: .4byte gSineTable
_080620E4: .4byte gUnknown_080D20AC
_080620E8: .4byte gUnknown_080D20B0

.syntax divided
