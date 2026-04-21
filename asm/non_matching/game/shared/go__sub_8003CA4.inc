
.syntax unified
.text
	push {r4, r5, lr}
	ldr r5, _08003CE8 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldr r1, _08003CEC @ =0x03000054
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	adds r1, #2
	adds r3, r2, r1
	movs r1, #1
	strh r1, [r3]
	ldr r3, _08003CF0 @ =0x03000058
	adds r1, r2, r3
	strh r4, [r1]
	ldr r1, _08003CF4 @ =0x0300005A
	adds r3, r2, r1
	movs r1, #0x80
	strh r1, [r3]
	ldr r1, _08003CF8 @ =0x0300005C
	adds r3, r2, r1
	movs r1, #0xbf
	strh r1, [r3]
	ldr r3, _08003CFC @ =0x0300005E
	adds r2, r2, r3
	strh r4, [r2]
	bl ScreenFadeUpdateValues
	ldr r1, [r5]
	ldr r0, _08003D00 @ =Task_8004058
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003CE8: .4byte gCurTask
_08003CEC: .4byte 0x03000054
_08003CF0: .4byte 0x03000058
_08003CF4: .4byte 0x0300005A
_08003CF8: .4byte 0x0300005C
_08003CFC: .4byte 0x0300005E
_08003D00: .4byte Task_8004058

.syntax divided
