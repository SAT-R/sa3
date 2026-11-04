
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r1, [r7, #8]
	cmp r1, #0xc8
	bne _08083FA2
	b _08084164
_08083FA2:
	cmp r1, #0xc8
	bgt _08083FBA
	cmp r1, #0x64
	beq _0808404C
	cmp r1, #0x64
	bgt _08083FB4
	cmp r1, #0
	beq _08083FDC
	b _0808438C
_08083FB4:
	cmp r1, #0x6e
	beq _080840AE
	b _0808438C
_08083FBA:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08083FC4
	b _0808430C
_08083FC4:
	cmp r1, r0
	bgt _08083FD0
	cmp r1, #0xd2
	bne _08083FCE
	b _080842C8
_08083FCE:
	b _0808438C
_08083FD0:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	bne _08083FDA
	b _08084374
_08083FDA:
	b _0808438C
_08083FDC:
	adds r0, r7, #0
	adds r0, #0xbb
	strb r1, [r0]
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0xe2
	adds r4, r7, #0
	adds r4, #0xbc
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0xc4
_08083FF2:
	adds r0, r4, r3
	strb r1, [r0]
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _08083FF2
	movs r0, #0
	strb r0, [r5]
	strb r0, [r7, #3]
	strb r0, [r7, #2]
	movs r0, #1
	strh r0, [r7, #4]
	movs r0, #0x64
	strh r0, [r7, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r1, #0
	movs r3, #0
	ldr r2, _08084048 @ =0x000004FE
_08084022:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r4, #0xed
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r7, r0
	strh r2, [r0, #0xc]
	strb r3, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08084022
	adds r0, r7, #0
	movs r1, #0
	bl sub_878_8082E2C
	b _0808438C
	.align 2, 0
_08084048: .4byte 0x000004FE
_0808404C:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0xbb
	cmp r0, #0
	bne _08084078
	movs r0, #0x14
	strh r0, [r7, #4]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _08084078
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _08084078
	ldrh r0, [r7, #4]
	subs r0, #4
	strh r0, [r7, #4]
_08084078:
	movs r3, #0
	adds r2, r1, #0
	adds r4, r7, #0
	adds r4, #0xbc
	ldrb r0, [r2]
	cmp r3, r0
	bhs _0808409C
	adds r5, r4, #0
_08084088:
	adds r0, r5, r3
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r2]
	cmp r3, r1
	blo _08084088
_0808409C:
	ldrb r0, [r4]
	cmp r0, #0x77
	bhi _080840A4
	b _08084364
_080840A4:
	movs r0, #0x3c
	strh r0, [r7, #4]
	movs r0, #0x6e
	strh r0, [r7, #8]
	b _08084364
_080840AE:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080840BC
	b _08084364
_080840BC:
	adds r1, r7, #0
	adds r1, #0xe2
	movs r0, #1
	strb r0, [r1]
	movs r3, #1
	adds r6, r7, #0
	adds r6, #0xc4
	ldr r2, _08084118 @ =gUnknown_080D5D50
	mov sl, r2
	ldr r4, _0808411C @ =gPseudoRandom
	mov r8, r4
	movs r0, #0
	mov sb, r0
_080840D6:
	adds r1, r6, r3
	movs r0, #0x78
	strb r0, [r1]
	lsls r4, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r5, r7, r0
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08084120 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08084124 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xa
	str r3, [sp, #4]
	bl __umodsi3
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, [sp, #4]
	cmp r3, #2
	bne _08084128
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r7, r0
	subs r0, #0x50
	b _08084132
	.align 2, 0
_08084118: .4byte gUnknown_080D5D50
_0808411C: .4byte gPseudoRandom
_08084120: .4byte 0x00196225
_08084124: .4byte 0x3C6EF35F
_08084128:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0xc0
	lsls r0, r0, #2
_08084132:
	strh r0, [r1]
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r2, r7, r0
	movs r4, #0x91
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r2, r1
	mov r2, sb
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080840D6
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r7, #4]
	movs r0, #0xc8
	strh r0, [r7, #8]
	b _08084364
_08084164:
	adds r0, r7, #0
	movs r1, #3
	bl sub_878_8082E2C
	movs r3, #1
	ldr r4, _08084194 @ =gPseudoRandom
	mov sl, r4
_08084172:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x8f
	lsls r0, r0, #1
	add r0, r8
	mov sb, r0
	ldrh r0, [r0]
	cmp r0, #0xa
	beq _080841FC
	cmp r0, #0xa
	bgt _08084198
	cmp r0, #0
	beq _0808419E
	b _0808428E
	.align 2, 0
_08084194: .4byte gPseudoRandom
_08084198:
	cmp r0, #0x14
	beq _08084232
	b _0808428E
_0808419E:
	movs r1, #0x8e
	lsls r1, r1, #1
	add r1, r8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080841BC
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0xa
	mov r1, sb
	strh r0, [r1]
	b _0808428E
_080841BC:
	movs r2, #0x91
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _080841DE
	adds r1, r7, #0
	adds r1, #0xc4
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x69
	bls _0808428E
	b _080841F2
_080841DE:
	adds r1, r7, #0
	adds r1, #0xc4
	adds r1, r1, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _0808428E
_080841F2:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	b _0808428E
_080841FC:
	movs r4, #0x8e
	lsls r4, r4, #1
	add r4, r8
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808428E
	adds r0, r7, r3
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0808421C
	movs r0, #1
	strh r0, [r4]
	b _0808428E
_0808421C:
	adds r0, r7, #0
	adds r1, r3, #0
	str r3, [sp, #4]
	bl ExtraBoss_CreateMissile
	movs r0, #0x1e
	strh r0, [r4]
	movs r0, #0x14
	mov r2, sb
	strh r0, [r2]
	b _0808428C
_08084232:
	movs r6, #0x8e
	lsls r6, r6, #1
	add r6, r8
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0808428E
	mov r4, sl
	ldr r0, [r4]
	ldr r1, _080842BC @ =0x00196225
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r5, _080842C0 @ =0x3C6EF35F
	adds r4, r4, r5
	mov r0, sl
	str r4, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	str r3, [sp, #4]
	bl __umodsi3
	lsls r0, r0, #1
	ldr r1, _080842C4 @ =gUnknown_080D5D50
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, _080842BC @ =0x00196225
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r1, r5
	mov r4, sl
	str r1, [r4]
	movs r0, #1
	ands r1, r0
	movs r0, #0x91
	lsls r0, r0, #1
	add r0, r8
	strb r1, [r0]
	ldr r2, [sp]
	mov r0, sb
	strh r2, [r0]
_0808428C:
	ldr r3, [sp, #4]
_0808428E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bhi _0808429A
	b _08084172
_0808429A:
	ldrh r1, [r7, #4]
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _080842AE
	subs r0, r1, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808438C
_080842AE:
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0808438C
	movs r0, #0xd2
	strh r0, [r7, #8]
	b _0808438C
	.align 2, 0
_080842BC: .4byte 0x00196225
_080842C0: .4byte 0x3C6EF35F
_080842C4: .4byte gUnknown_080D5D50
_080842C8:
	movs r3, #1
	adds r6, r7, #0
	adds r6, #0xc4
	adds r2, r6, #0
_080842D0:
	adds r1, r2, r3
	ldrb r0, [r1]
	cmp r0, #0x77
	bhi _080842DC
	adds r0, #1
	strb r0, [r1]
_080842DC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080842D0
	ldr r0, [r6]
	ldr r1, _08084304 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _08084308 @ =0x00787800
	cmp r0, r1
	bne _08084364
	adds r1, r7, #0
	adds r1, #0xe2
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r7, #8]
	b _08084364
	.align 2, 0
_08084304: .4byte 0x00FFFF00
_08084308: .4byte 0x00787800
_0808430C:
	movs r3, #0
	adds r0, r7, #0
	adds r0, #0xbb
	adds r1, r0, #0
	adds r4, r7, #0
	adds r4, #0xbc
	ldrb r0, [r1]
	cmp r3, r0
	bhs _0808433A
	adds r5, r4, #0
	adds r2, r1, #0
_08084322:
	adds r1, r5, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808432E
	subs r0, #1
	strb r0, [r1]
_0808432E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r2]
	cmp r3, r1
	blo _08084322
_0808433A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08084364
	strb r0, [r7, #1]
	movs r1, #0
	ldr r3, _08084370 @ =0x000004FE
	movs r2, #1
_08084348:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r4, #0xed
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r7, r0
	strh r3, [r0, #0xc]
	strb r2, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08084348
_08084364:
	adds r0, r7, #0
	movs r1, #3
	bl sub_878_8082E2C
	b _0808438C
	.align 2, 0
_08084370: .4byte 0x000004FE
_08084374:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08084384
	strh r0, [r7, #8]
_08084384:
	adds r0, r7, #0
	movs r1, #3
	bl sub_878_8082E2C
_0808438C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
