
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x14]
	mov sl, r2
	mov sb, r3
	ldr r0, [sp, #0x40]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #8
	ldr r2, _08079014 @ =0xFFFF0000
	adds r1, r1, r2
	lsrs r7, r1, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	bge _08078F9E
	b _08079180
_08078F9E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	ldr r3, _08079018 @ =gSineTable
	adds r0, r0, r3
	str r0, [sp, #0x1c]
_08078FAC:
	asrs r0, r1, #0xe
	ldr r4, [sp, #0x14]
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r1, _0807901C @ =0x040000D4
	adds r0, r5, #0
	adds r0, #0x10
	str r0, [r1]
	add r0, sp, #8
	str r0, [r1, #4]
	ldr r0, _08079020 @ =0x84000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08079024
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	ldr r3, _08079018 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	ldr r4, [sp, #0x1c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	muls r0, r2, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	str r1, [sp, #0xc]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	muls r0, r3, r0
	asrs r0, r0, #6
	adds r1, r1, r0
	add r0, sp, #0xc
	str r1, [r0, #4]
	b _08079036
	.align 2, 0
_08079014: .4byte 0xFFFF0000
_08079018: .4byte gSineTable
_0807901C: .4byte 0x040000D4
_08079020: .4byte 0x84000001
_08079024:
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	lsls r0, r0, #8
	add r1, sp, #0xc
	str r0, [r1, #4]
_08079036:
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08079058
	mov r3, sb
	movs r4, #2
	ldrsh r0, [r3, r4]
	lsls r2, r7, #0x10
	mov r8, r2
	mov r3, sl
	ldr r4, [r3]
	ldr r6, [r3, #4]
	cmp r0, r1
	beq _080790A0
_08079058:
	mov r4, sb
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0xc]
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r0, [sp, #0x10]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x10]
	movs r3, #0
	lsls r7, r7, #0x10
	mov r8, r7
	mov r7, sl
	ldr r4, [r7]
	ldr r6, [r7, #4]
_0807907E:
	lsls r0, r3, #1
	mov r2, sp
	adds r2, r2, r0
	adds r2, #8
	add r0, sb
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0807907E
_080790A0:
	ldr r0, [sp, #0xc]
	adds r0, r4, r0
	str r0, [sp, #0xc]
	add r2, sp, #0xc
	ldr r0, [r2, #4]
	adds r0, r6, r0
	str r0, [r2, #4]
	ldrh r0, [r5, #0xa]
	ldr r1, [sp, #0x18]
	adds r4, r1, r0
	ldr r3, _0807911C @ =0x000003FF
	adds r0, r3, #0
	ands r4, r0
	strh r4, [r5, #0x2c]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080790D4
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	str r4, [sp]
	ldr r7, [sp, #0x44]
	str r7, [sp, #4]
	add r3, sp, #8
	bl GemerlUnusedRecursiveFunc
_080790D4:
	ldr r1, [sp, #0x44]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _08079120 @ =gCamera
	ldr r1, [r2]
	lsls r1, r1, #8
	ldr r0, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r5, #8]
	mov r2, r8
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x44]
	ldrb r3, [r3]
	adds r0, r0, r3
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079128
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r4, r7
	lsls r0, r0, #1
	ldr r1, _08079124 @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r5, #0x10]
	adds r3, r1, #0
	b _0807913E
	.align 2, 0
_0807911C: .4byte 0x000003FF
_08079120: .4byte gCamera
_08079124: .4byte gSineTable
_08079128:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	ldr r3, _08079160 @ =gSineTable
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	asrs r0, r0, #4
	strh r0, [r5, #0x10]
_0807913E:
	lsls r2, r4, #0x10
	mov r1, r8
	asrs r0, r1, #0x10
	ldr r4, [sp, #0x44]
	ldrb r4, [r4]
	adds r0, r0, r4
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08079164
	lsrs r0, r2, #0xf
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	b _08079170
	.align 2, 0
_08079160: .4byte gSineTable
_08079164:
	lsrs r0, r2, #0xf
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	asrs r0, r0, #4
_08079170:
	strh r0, [r5, #0x12]
	ldr r0, _08079190 @ =0xFFFF0000
	add r0, r8
	lsrs r7, r0, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	blt _08079180
	b _08078FAC
_08079180:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079190: .4byte 0xFFFF0000

.syntax divided
