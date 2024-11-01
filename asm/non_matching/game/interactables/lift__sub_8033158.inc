
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080331E0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0          @ r8 = lift
	ldr r1, _080331E4 @ =0x0300000C
	adds r6, r2, r1     @ r6 = s
	ldr r7, [r0]
	mov sb, r7          @ sb = me
	ldr r0, _080331E8 @ =0x03000084
	adds r4, r2, r0     @ r4 = &lift->worldX
	adds r1, #0x7c
	adds r0, r2, r1     @ r0 = &lift->worldY
	ldr r3, _080331EC @ =gCamera
	ldr r1, [r3, #4]
	movs r7, #0
	ldrsh r5, [r0, r7]
	subs r1, r5, r1
	ldr r7, _080331F0 @ =0x0300008C
	adds r0, r2, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10      @ r7 = handleY
	ldr r0, [r3]
	movs r1, #0
	ldrsh r4, [r4, r1]
	subs r0, r4, r0
	strh r0, [r6, #0x10]
	ldr r0, [r3, #4]
	subs r0, r5, r0
	strh r0, [r6, #0x12]
	ldr r0, _080331F4 @ =0x0300008E
	adds r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _080331F8
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	movs r0, #0x12
	ldrsh r3, [r6, r0]
	adds r0, r4, #0
	bl sub_802C140
	cmp r0, #0
	bne _080331F8
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r7, sl
	ldr r0, [r7]
	bl TaskDestroy
	b _0803326A
	.align 2, 0
_080331E0: .4byte gCurTask
_080331E4: .4byte 0x0300000C
_080331E8: .4byte 0x03000084
_080331EC: .4byte gCamera
_080331F0: .4byte 0x0300008C
_080331F4: .4byte 0x0300008E
_080331F8:
	ldrh r0, [r6, #0x10]
	mov sb, r0              @ sb = screenX = s->x;
	ldrh r1, [r6, #0x12]
	mov sl, r1              @ sl = screenY = s->y;
	ldr r0, [r6, #8]
	movs r5, #0x80
	lsls r5, r5, #3
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #8]
	ldr r4, _08033278 @ =0xFFFFFBFF
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	mov r6, r8
	adds r6, #0x5c
	mov r2, sb
	strh r2, [r6, #0x10]
	strh r7, [r6, #0x12]
	ldr r0, [r6, #8]
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #8]
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	subs r6, #0x28
	lsls r1, r7, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r0
	ble _0803326A
	adds r4, r2, #0
_08033250:
	mov r0, sb
	strh r0, [r6, #0x10]
	strh r7, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	lsls r0, r7, #0x10
	ldr r1, _0803327C @ =0xFFF00000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bgt _08033250
_0803326A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033278: .4byte 0xFFFFFBFF
_0803327C: .4byte 0xFFF00000

.syntax divided
