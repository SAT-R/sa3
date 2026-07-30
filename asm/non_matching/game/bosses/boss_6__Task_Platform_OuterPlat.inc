
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08074960 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r2, [r7]
	adds r1, #0x28
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _08074964 @ =0x03000020
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r1, [r7, #0x24]
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08074910
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08074910
	movs r0, #0
	strh r0, [r7, #0x24]
_08074910:
	movs r5, #0
	movs r2, #0x18
	adds r2, r2, r7
	mov sl, r2
	movs r0, #0x20
	adds r0, r0, r7
	mov r8, r0
	mov r6, r8
	movs r1, #1
	mov sb, r1
_08074924:
	lsls r0, r5, #2
	add r0, sl
	ldr r4, [r0]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, [r7, #0x10]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08074968
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sb
	lsls r0, r5
	ldrb r1, [r6]
	orrs r0, r1
	b _08074970
	.align 2, 0
_08074960: .4byte gCurTask
_08074964: .4byte 0x03000020
_08074968:
	mov r1, sb
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
_08074970:
	strb r0, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074924
	ldrh r2, [r7, #0x24]
	subs r0, r2, #2
	lsls r0, r0, #0x10
	ldr r1, _080749C4 @ =0x03E50000
	cmp r0, r1
	bhi _0807498C
	subs r0, r2, #1
	strh r0, [r7, #0x24]
_0807498C:
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080749AE
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080749A0
	b _08074AA8
_080749A0:
	ldrh r0, [r7, #0x24]
	cmp r0, #0
	bne _080749AE
	cmp r3, r2
	bne _080749AE
	movs r0, #0x3c
	strh r0, [r7, #0x26]
_080749AE:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08074AA8
	subs r1, r3, r2
	cmp r1, #0
	blt _080749CC
	ldr r0, _080749C8 @ =0x00005FFF
	cmp r1, r0
	ble _080749D6
	b _08074ADA
	.align 2, 0
_080749C4: .4byte 0x03E50000
_080749C8: .4byte 0x00005FFF
_080749CC:
	subs r1, r2, r3
	ldr r0, _080749E8 @ =0x00005FFF
	cmp r1, r0
	ble _080749D6
	b _08074ADA
_080749D6:
	ldrh r1, [r7, #0x24]
	cmp r1, #1
	beq _08074A36
	cmp r1, #1
	bgt _080749EC
	cmp r1, #0
	beq _080749F6
	b _08074ADA
	.align 2, 0
_080749E8: .4byte 0x00005FFF
_080749EC:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _08074A6C
	b _08074ADA
_080749F6:
	ldrh r1, [r7, #0x26]
	movs r2, #0x26
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08074A04
	subs r0, r1, #1
	b _08074AD8
_08074A04:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, sl
	mov r2, r8
	movs r6, #1
_08074A14:
	lsls r0, r5, #2
	adds r0, r3, r0
	ldr r4, [r0]
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A2A
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A2A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A14
	b _08074ADA
_08074A36:
	ldr r1, _08074A68 @ =0xFFFFFA00
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, r8
	movs r6, #1
	mov r2, sl
_08074A44:
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A5A
	lsls r0, r5, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A5A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A44
	b _08074ADA
	.align 2, 0
_08074A68: .4byte 0xFFFFFA00
_08074A6C:
	cmp r3, r2
	bgt _08074A74
	str r2, [r7, #0x10]
	b _08074ADA
_08074A74:
	ldr r1, _08074AA4 @ =0xFFFFFA00
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, r8
	movs r6, #1
	mov r2, sl
_08074A82:
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A98
	lsls r0, r5, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A98:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A82
	b _08074ADA
	.align 2, 0
_08074AA4: .4byte 0xFFFFFA00
_08074AA8:
	adds r0, r3, #0
	adds r1, r2, #0
	cmp r0, r1
	beq _08074AD6
	cmp r0, r1
	ble _08074AC8
	ldr r2, _08074AC4 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r7, #0x10]
	cmp r0, r1
	bgt _08074AD6
	str r1, [r7, #0x10]
	b _08074AD6
	.align 2, 0
_08074AC4: .4byte 0xFFFFFA00
_08074AC8:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r7, #0x10]
	cmp r0, r2
	blt _08074AD6
	str r2, [r7, #0x10]
_08074AD6:
	movs r0, #0
_08074AD8:
	strh r0, [r7, #0x26]
_08074ADA:
	adds r0, r7, #0
	bl PlatformRender
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
