
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
_08094936:
	movs r1, #0
	mov sb, r1
	ldr r2, [sp]
	lsls r0, r2, #4
	lsls r4, r2, #2
	str r4, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0x14]
	ldr r5, [sp]
	subs r0, r0, r5
	lsls r0, r0, #4
	str r0, [sp, #4]
_0809494E:
	movs r0, #0
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #4
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	mov r2, sb
	adds r2, #1
	str r2, [sp, #8]
	mov r4, sb
	subs r0, r0, r4
	lsls r0, r0, #2
	mov sl, r0
_08094968:
	mov r5, r8
	lsls r2, r5, #1
	add r2, sl
	ldr r0, [sp, #4]
	adds r2, r2, r0
	ldr r1, _08094A70 @ =0x0000054C
	adds r3, r7, r1
	adds r3, r3, r2
	lsls r6, r5, #2
	ldr r1, [sp, #0x10]
	add r1, sb
	lsls r1, r1, #2
	adds r1, r6, r1
	ldr r4, [sp, #0xc]
	ldr r5, [sp]
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08094A74 @ =gLoadedSaveGame
	adds r4, r1, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r5, _08094A78 @ =0x0000054D
	adds r1, r7, r5
	adds r1, r1, r2
	ldr r2, _08094A7C @ =0x0000012D
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r5, #0x97
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrh r4, [r0]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	add r6, r8
	lsls r6, r6, #1
	add r6, sl
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r1, _08094A80 @ =0x0000055E
	adds r2, r7, r1
	adds r2, r2, r6
	lsls r5, r5, #1
	ldr r1, _08094A84 @ =gUnknown_080CE4B2
	adds r1, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strh r1, [r2]
	ldr r1, _08094A88 @ =0x0000055C
	adds r2, r7, r1
	adds r2, r2, r6
	ldr r1, _08094A84 @ =gUnknown_080CE4B2
	adds r5, r5, r1
	ldrb r1, [r5]
	strh r1, [r2]
	ldr r5, _08094A8C @ =0x0000055A
	adds r2, r7, r5
	adds r2, r2, r6
	lsrs r4, r4, #0xf
	ldr r1, _08094A90 @ =gUnknown_080CE438
	adds r1, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strh r1, [r2]
	movs r1, #0xab
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r6
	ldr r5, _08094A90 @ =gUnknown_080CE438
	adds r4, r4, r5
	ldrb r1, [r4]
	strh r1, [r2]
	ldr r2, _08094A94 @ =0x00000556
	adds r1, r7, r2
	adds r1, r1, r6
	strh r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08094968
	ldr r4, [sp, #8]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _08094A52
	b _0809494E
_08094A52:
	ldr r5, [sp, #0x14]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #6
	bhi _08094A60
	b _08094936
_08094A60:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094A70: .4byte 0x0000054C
_08094A74: .4byte gLoadedSaveGame
_08094A78: .4byte 0x0000054D
_08094A7C: .4byte 0x0000012D
_08094A80: .4byte 0x0000055E
_08094A84: .4byte gUnknown_080CE4B2
_08094A88: .4byte 0x0000055C
_08094A8C: .4byte 0x0000055A
_08094A90: .4byte gUnknown_080CE438
_08094A94: .4byte 0x00000556

.syntax divided
