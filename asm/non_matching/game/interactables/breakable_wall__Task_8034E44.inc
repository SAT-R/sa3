
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08034E7C @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0     @ r5 = wall
	ldr r0, [r5]
	mov ip, r0          @ ip = me
	ldr r4, _08034E80 @ =0x0300000C
	adds r2, r1, r4     @ r2 = s
	adds r4, #0x2e      @ r4 = &wall->unk3A
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034E84
	cmp r0, #0x28
	beq _08034F60
	adds r0, r4, #0
	adds r0, r0, r1
	mov sb, r0
	b _08034F6E
	.align 2, 0
_08034E7C: .4byte gCurTask
_08034E80: .4byte 0x0300000C
_08034E84:
	movs r4, #0
	ldr r0, _08034F40 @ =0x03000032
	adds r0, r0, r1
	mov r8, r0          @ r8 = &wall->s.hitboxes[0].right
	ldr r0, _08034F44 @ =0x03000033
	adds r0, r0, r1
	mov sl, r0          @ sl = &wall->s.hitboxes[0].bottom
	ldr r0, _08034F48 @ =0x0300003A
	adds r0, r0, r1
	mov sb, r0          @ &wall->unk3A
	ldr r7, _08034F4C @ =gPlayers
	movs r6, #0
	movs r3, #0x21
	rsbs r3, r3, #0
_08034EA0:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r1, r0, r7     @ r1 = p
	ldr r0, [r1, #0x6c]
	cmp r0, r2
	bne _08034EBA
	str r6, [r1, #0x6c]
	ldr r0, [r1, #4]
	ands r0, r3
	str r0, [r1, #4]
_08034EBA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08034EA0
	ldrb r3, [r5, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r3, r3, r0     @ r3 = worldX
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r3, r0
	mov r2, ip
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	movs r4, #0
	ldr r6, _08034F50 @ =gPseudoRandom
	lsls r3, r3, #0x10
	mov r8, r3
	lsls r7, r1, #0x10
_08034F08:
	ldr r1, [r6]
	ldr r0, _08034F54 @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _08034F58 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r6]
	ldr r0, _08034F5C @ =0x000001FF
	ands r3, r0
	movs r0, #0x1e
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_8034F88
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08034F08
	b _08034F6E
	.align 2, 0
_08034F40: .4byte 0x03000032
_08034F44: .4byte 0x03000033
_08034F48: .4byte 0x0300003A
_08034F4C: .4byte gPlayers
_08034F50: .4byte gPseudoRandom
_08034F54: .4byte 0x00196225
_08034F58: .4byte 0x3C6EF35F
_08034F5C: .4byte 0x000001FF
_08034F60:
	ldrb r0, [r5, #0xa]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08034F76
_08034F6E:
	mov r4, sb
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08034F76:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    
.syntax divided
