
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0
	ldr r6, _080873C0 @ =gLoadedSaveGame
	mov r2, ip
	adds r2, #7
	movs r3, #0xc
_0808739A:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0808739A
	mov r1, ip
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080873B8
	cmp r0, #4
	beq _080873B8
	cmp r0, #5
	bne _080873C4
_080873B8:
	mov r1, ip
	adds r1, #0x6e
	movs r0, #0
	b _080873CA
	.align 2, 0
_080873C0: .4byte gLoadedSaveGame
_080873C4:
	mov r1, ip
	adds r1, #0x6e
	movs r0, #1
_080873CA:
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x70
	movs r4, #0
	movs r5, #0
	strh r5, [r0]
	mov r7, ip
	strb r4, [r7, #0xc]
	strb r4, [r7, #0xd]
	ldr r0, _08087484 @ =0x0000FF10
	strh r0, [r7, #0x12]
	movs r0, #2
	strb r0, [r7, #0xb]
	mov r0, ip
	adds r0, #0x6c
	strh r5, [r0]
	strb r4, [r7, #4]
	strb r4, [r7, #2]
	strb r4, [r7, #5]
	movs r2, #1
	strb r2, [r7, #0xe]
	adds r0, #6
	strh r5, [r0]
	mov r1, ip
	adds r1, #0x74
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	strb r2, [r7, #0xf]
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r7, #0x18]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #9
	str r0, [r7, #0x20]
	adds r0, r2, r2
	str r0, [r7, #0x24]
	movs r3, #0xc6
	lsls r3, r3, #9
	str r3, [r7, #0x28]
	adds r0, r0, r2
	str r0, [r7, #0x2c]
	movs r1, #0xde
	lsls r1, r1, #9
	str r1, [r7, #0x30]
	adds r0, r0, r2
	str r0, [r7, #0x34]
	ldr r1, _08087488 @ =0xFFFFD800
	str r1, [r7, #0x58]
	movs r0, #0xac
	lsls r0, r0, #7
	str r0, [r7, #0x5c]
	str r1, [r7, #0x60]
	str r0, [r7, #0x64]
	str r3, [r7, #0x38]
	movs r0, #0xd0
	lsls r0, r0, #5
	adds r0, r2, r0
	str r0, [r7, #0x3c]
	str r3, [r7, #0x40]
	movs r1, #0x8c
	lsls r1, r1, #7
	adds r0, r2, r1
	str r0, [r7, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r7, #0x48]
	str r2, [r7, #0x4c]
	strb r4, [r7, #6]
	str r5, [r7, #0x50]
	str r5, [r7, #0x54]
	mov r0, ip
	adds r0, #0x68
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r7, _0808748C @ =0x00000366
	adds r0, r6, r7
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	ldr r0, _08087490 @ =0x0000FFFF
	strh r0, [r1, #0x14]
	ldr r0, _08087494 @ =0x06010000
	str r0, [r1, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087484: .4byte 0x0000FF10
_08087488: .4byte 0xFFFFD800
_0808748C: .4byte 0x00000366
_08087490: .4byte 0x0000FFFF
_08087494: .4byte 0x06010000

.syntax divided
