
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08037768 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0     @ r7 = deco
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0          @ r8 = s
	ldr r1, [r7]
	mov sb, r1          @ sb = me
	ldrb r2, [r7, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0     @ r2 = worldX
	lsls r2, r2, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10  @ r6 = worldY
	lsrs r0, r2, #0x10
	mov ip, r0          @ ip = worldX
	asrs r2, r2, #0x10
	ldr r4, _0803776C @ =gCamera
	ldr r0, [r4]
	subs r2, r2, r0
	ldr r1, _08037770 @ =0x03000086
	adds r3, r3, r1
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037774
	subs r0, r2, #2
	b _08037776
	.align 2, 0
_08037768: .4byte gCurTask
_0803776C: .4byte gCamera
_08037770: .4byte 0x03000086
_08037774:
	adds r0, r2, #2
_08037776:
	mov r1, r8
	strh r0, [r1, #0x10]
	lsls r3, r6, #0x10
	asrs r1, r3, #0x10
	ldr r0, [r4, #4]
	subs r4, r1, r0
	adds r2, r7, #0
	adds r2, #0x86
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08037794
	subs r0, r4, #1
	b _08037796
_08037794:
	adds r0, r4, #1
_08037796:
	mov r1, r8
	strh r0, [r1, #0x12]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080377A4
	subs r0, #1
	strb r0, [r2]
_080377A4:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r3, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08037810
	movs r1, #0
	ldr r6, _080377CC @ =gPlayers
_080377B8:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080377D0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080377D4
	.align 2, 0
_080377CC: .4byte gPlayers
_080377D0:
	ldr r0, _08037808 @ =gStageData
	ldrb r1, [r0, #6]
_080377D4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r6
	mov r0, r8
	adds r1, r5, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080377B8
	ldrb r0, [r7, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803780C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803781C
	.align 2, 0
_08037808: .4byte gStageData
_0803780C: .4byte gCurTask
_08037810:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0803781C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
