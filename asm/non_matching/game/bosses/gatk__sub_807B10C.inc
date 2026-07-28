
.syntax unified
.text
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r3, #0
	adds r6, #0x60
	ldr r1, _0807B180 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r6]
	adds r4, r0, r2
	ldr r1, _0807B184 @ =0x000003FF
	adds r0, r1, #0
	ands r4, r0
	ldr r2, _0807B188 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x40
	muls r0, r1, r0
	lsls r0, r0, #6
	lsrs r5, r0, #0x10
	strh r5, [r3, #0x16]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xa
	strh r0, [r3, #0x18]
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #4]
	adds r2, r0, r1
	str r2, [r3, #4]
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r3, #8]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _0807B190
	ldr r0, _0807B18C @ =gCamera
	ldr r0, [r0, #0x18]
	lsls r0, r0, #8
	cmp r2, r0
	bge _0807B190
	str r0, [r3, #4]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r2, r6, #0
	b _0807B1C8
	.align 2, 0
_0807B180: .4byte 0xFFFFFF00
_0807B184: .4byte 0x000003FF
_0807B188: .4byte gSineTable
_0807B18C: .4byte gCamera
_0807B190:
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _0807B1B4
	ldr r0, _0807B1B0 @ =gCamera
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #8
	ldr r1, [r3, #4]
	cmp r1, r0
	ble _0807B1B4
	str r0, [r3, #4]
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r2, r3, #0
	adds r2, #0x60
	b _0807B1C8
	.align 2, 0
_0807B1B0: .4byte gCamera
_0807B1B4:
	adds r1, r3, #0
	adds r1, #0x60
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_0807B1C8:
	ldr r1, _0807B1DC @ =0xFFFFFF00
	adds r0, r4, r1
	ldr r3, _0807B1E0 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0807B1DC: .4byte 0xFFFFFF00
_0807B1E0: .4byte 0x000003FF

.syntax divided
