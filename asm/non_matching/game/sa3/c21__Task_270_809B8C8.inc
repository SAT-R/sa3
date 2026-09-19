
.syntax unified
.text
	push {r4, r5, lr}
	ldr r5, _0809B91C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809BA58
	cmp r0, #0
	beq _0809B960
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	subs r0, #0x16
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _0809B8F4
	adds r0, r4, #0
	bl sub_809B970
_0809B8F4:
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r2, #0xb4
	lsls r2, r2, #9
	ldr r3, [r4, #4]
	adds r4, r0, #0
	cmp r1, r2
	bls _0809B934
	ldrb r0, [r3]
	cmp r0, #0x1d
	beq _0809B914
	cmp r0, #0x23
	bls _0809B92C
_0809B914:
	cmp r0, #0x24
	bne _0809B920
	movs r0, #0x25
	b _0809B922
	.align 2, 0
_0809B91C: .4byte gCurTask
_0809B920:
	movs r0, #0x24
_0809B922:
	strb r0, [r3]
	ldr r0, [r5]
	bl TaskDestroy
	b _0809B960
_0809B92C:
	cmp r0, #4
	bne _0809B934
	ldr r1, [r5]
	b _0809B95C
_0809B934:
	ldrb r0, [r3]
	cmp r0, #0x1f
	bne _0809B960
	ldr r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #6
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #9
	cmp r0, r1
	bls _0809B958
	ldr r0, _0809B954 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809B960
	.align 2, 0
_0809B954: .4byte gCurTask
_0809B958:
	ldr r0, _0809B968 @ =gCurTask
	ldr r1, [r0]
_0809B95C:
	ldr r0, _0809B96C @ =Task_270_809BF9C
	str r0, [r1, #8]
_0809B960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B968: .4byte gCurTask
_0809B96C: .4byte Task_270_809BF9C

.syntax divided
