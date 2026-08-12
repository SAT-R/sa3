
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r3, _0809486C @ =gLoadedSaveGame
	ldr r1, _08094870 @ =0x00000366
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	movs r1, #0
	strh r2, [r4, #0x22]
	strb r1, [r4, #0x1c]
	strb r1, [r4, #0x1d]
	strh r2, [r4, #0x26]
	strh r2, [r4, #0x28]
	movs r0, #0xa
	strh r0, [r4, #0x20]
	strh r2, [r4, #0x24]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #4]
	movs r4, #0
	mov r8, r3
	mov r6, ip
	adds r6, #0x78
	mov r5, ip
	adds r5, #0x7c
	mov r3, ip
	adds r3, #0xf
	mov sb, r4
_08094834:
	lsls r1, r4, #3
	adds r2, r6, r1
	lsls r0, r4, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r4, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, r4
	mov r7, sb
	strb r7, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08094834
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08094874
	movs r0, #7
	strb r0, [r1, #0x14]
	b _08094888
	.align 2, 0
_0809486C: .4byte gLoadedSaveGame
_08094870: .4byte 0x00000366
_08094874:
	mov r2, r8
	ldrb r3, [r2, #0x11]
	cmp r3, #7
	bls _08094884
	movs r0, #7
	mov r4, ip
	strb r0, [r4, #0x14]
	b _08094888
_08094884:
	mov r7, ip
	strb r3, [r7, #0x14]
_08094888:
	movs r4, #0
	mov r6, ip
	adds r6, #0xa0
	mov r2, ip
	adds r2, #0x15
	movs r3, #3
	ldr r5, _080948A4 @ =gLoadedSaveGame + 0x29
_08094896:
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _080948A8
	adds r0, r2, r4
	strb r3, [r0]
	b _080948CC
	.align 2, 0
_080948A4: .4byte gLoadedSaveGame + 0x29
_080948A8:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080948C8
	adds r1, r2, r4
	lsrs r0, r0, #0x19
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080948CC
	strb r3, [r1]
	b _080948CC
_080948C8:
	adds r0, r2, r4
	strb r1, [r0]
_080948CC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08094896
	ldr r0, _0809491C @ =0xFFFFCE00
	mov r2, ip
	str r0, [r2, #0x30]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r2, #0x68]
	str r1, [r2, #0x6c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r2, #0x70]
	str r1, [r2, #0x74]
	movs r0, #0
	str r0, [r2, #0x58]
	str r0, [r2, #0x5c]
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x2c]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x60]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x64]
	ldr r0, _08094920 @ =0x06010000
	str r0, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809491C: .4byte 0xFFFFCE00
_08094920: .4byte 0x06010000

.syntax divided
