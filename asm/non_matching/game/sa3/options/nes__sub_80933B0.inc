
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldrh r2, [r0, #0xc]
	lsrs r2, r2, #8
	ldr r4, _08093440 @ =gFlags
	ldr r1, [r4]
	movs r3, #4
	orrs r1, r3
	str r1, [r4]
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r2, r5, r2
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	mov ip, r1
	movs r3, #0xe8
	lsls r3, r3, #0x18
	adds r2, r2, r3
	lsrs r2, r2, #0x18
	str r2, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r1, _08093444 @ =gHBlankCopyTarget
	ldr r0, _08093448 @ =0x04000040
	str r0, [r1]
	ldr r1, _0809344C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08093450 @ =gBgOffsetsHBlankPrimary
	ldr r7, [r0]
	movs r4, #0
	ldr r6, _08093454 @ =gUnknown_080D74CE
	mov sb, r4
	movs r0, #2
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r0, #0xd3
	lsls r0, r0, #0x10
	mov sl, r0
_08093414:
	cmp r4, r5
	blo _08093458
	adds r0, r5, #0
	adds r0, #0xc
	cmp r4, r0
	bge _08093458
	subs r1, r4, r5
	lsls r1, r1, #2
	mov r3, sb
	adds r0, r3, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _0809348A
	.align 2, 0
_08093440: .4byte gFlags
_08093444: .4byte gHBlankCopyTarget
_08093448: .4byte 0x04000040
_0809344C: .4byte gHBlankCopySize
_08093450: .4byte gBgOffsetsHBlankPrimary
_08093454: .4byte gUnknown_080D74CE
_08093458:
	mov r0, ip
	subs r0, #0xc
	cmp r4, r0
	blt _08093484
	cmp r4, ip
	bhs _08093484
	ldr r0, [sp]
	subs r1, r4, r0
	lsls r1, r1, #2
	mov r3, sb
	adds r0, r3, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _0809348A
_08093484:
	ldr r0, [sp, #4]
	lsrs r3, r0, #0x10
	mov r0, sl
_0809348A:
	lsrs r1, r0, #0x10
	lsls r0, r3, #8
	adds r0, r1, r0
	strh r0, [r7]
	adds r7, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x9f
	bls _08093414
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
