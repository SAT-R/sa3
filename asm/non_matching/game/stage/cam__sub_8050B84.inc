
.syntax unified
.text
	push {lr}
	ldr r1, _08050BA4 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	ldr r2, _08050BA8 @ =gCamera
	ldr r0, [r2, #4]
	ldr r3, _08050BAC @ =0xFFFFFCE0
	adds r0, r0, r3
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	blt _08050BB0
	asrs r0, r0, #0x13
	b _08050BB2
	.align 2, 0
_08050BA4: .4byte gBgScrollRegs
_08050BA8: .4byte gCamera
_08050BAC: .4byte 0xFFFFFCE0
_08050BB0:
	movs r0, #0
_08050BB2:
	strh r0, [r1, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _08050BC2
	strh r1, [r3, #2]
_08050BC2:
	movs r0, #8
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	ldr r1, _08050BDC @ =0xFFFFFCE0
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	adds r1, r3, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08050BE0
	asrs r0, r0, #0x13
	b _08050BE2
	.align 2, 0
_08050BDC: .4byte 0xFFFFFCE0
_08050BE0:
	movs r0, #0
_08050BE2:
	strh r0, [r1, #0xe]
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _08050BF2
	strh r1, [r3, #0xe]
_08050BF2:
	ldr r0, _08050C04 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050BFE
	bl sub_8050C08
_08050BFE:
	pop {r0}
	bx r0
	.align 2, 0
_08050C04: .4byte gStageData

.syntax divided
