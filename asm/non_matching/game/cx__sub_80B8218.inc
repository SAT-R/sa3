
.syntax unified
.text
	push {r4, lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r1, ip
	ldrh r0, [r1, #0x3e]
	subs r1, r0, #1
	mov r4, ip
	strh r1, [r4, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B82B2
	ldr r0, _080B82BC @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8258
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8258:
	ldr r0, _080B82C0 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8266
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8266:
	mov r4, ip
	ldr r1, [r4, #0x10]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _080B8282
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8282
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080B82B2
_080B8282:
	ldr r0, _080B82C4 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	movs r0, #0
	mov r4, ip
	strb r0, [r4]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B82C8 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B82CC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B82D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B82D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r4, #2]
_080B82B2:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B82BC: .4byte 0x0000FFCF
_080B82C0: .4byte 0xFFFFFE00
_080B82C4: .4byte gStageData
_080B82C8: .4byte gUnknown_080E3254
_080B82CC: .4byte gPseudoRandom
_080B82D0: .4byte 0x00196225
_080B82D4: .4byte 0x3C6EF35F

.syntax divided
