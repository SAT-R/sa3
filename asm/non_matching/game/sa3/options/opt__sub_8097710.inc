
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #8
	ldr r3, _08097794 @ =gFlags
	ldr r0, [r3]
	movs r2, #4
	orrs r0, r2
	str r0, [r3]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, r5, r1
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	mov ip, r0
	movs r2, #0xe8
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r1, _08097798 @ =gHBlankCopyTarget
	ldr r0, _0809779C @ =0x04000040
	str r0, [r1]
	ldr r1, _080977A0 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080977A4 @ =gBgOffsetsHBlankPrimary
	ldr r7, [r0]
	movs r3, #0
	ldr r6, _080977A8 @ =gUnknown_080D8C74
	mov sb, r3
	movs r2, #2
	mov r8, r2
	adds r0, r4, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xfe
	lsls r0, r0, #0x10
	mov sl, r0
_08097782:
	adds r0, r3, #0
	subs r0, #0x1e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080977AC
	movs r2, #0x78
	movs r1, #0x79
	b _0809780E
	.align 2, 0
_08097794: .4byte gFlags
_08097798: .4byte gHBlankCopyTarget
_0809779C: .4byte 0x04000040
_080977A0: .4byte gHBlankCopySize
_080977A4: .4byte gBgOffsetsHBlankPrimary
_080977A8: .4byte gUnknown_080D8C74
_080977AC:
	cmp r3, r5
	blo _080977D8
	adds r0, r5, #0
	adds r0, #0xc
	cmp r3, r0
	bge _080977D8
	subs r1, r3, r5
	lsls r1, r1, #2
	mov r2, sb
	adds r0, r2, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r4, r0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	b _0809780C
_080977D8:
	mov r0, ip
	subs r0, #0xc
	cmp r3, r0
	blt _08097806
	cmp r3, ip
	bhs _08097806
	ldr r0, [sp]
	subs r1, r3, r0
	lsls r1, r1, #2
	mov r2, sb
	adds r0, r2, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r4, r0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	b _0809780C
_08097806:
	ldr r0, [sp, #4]
	lsrs r2, r0, #0x10
	mov r0, sl
_0809780C:
	lsrs r1, r0, #0x10
_0809780E:
	lsls r0, r2, #8
	adds r0, r1, r0
	strh r0, [r7]
	adds r7, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9f
	bls _08097782
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
