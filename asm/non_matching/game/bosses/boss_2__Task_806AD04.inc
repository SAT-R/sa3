
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806ADC0 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, [r4]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_806B094
	adds r0, r4, #0
	bl sub_806CEE8
	ldr r1, _0806ADC4 @ =gSineTable
	ldrb r0, [r4, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x19
	str r2, [r4, #0x38]
	ldrb r0, [r4, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldrb r0, [r4, #0x1e]
	movs r5, #0
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl sub_806D07C
	adds r0, r4, #0
	bl sub_806BC50
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bge _0806AD76
	rsbs r0, r0, #0
_0806AD76:
	cmp r0, #1
	bgt _0806ADBA
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bhi _0806ADBA
	bl sub_807A4A8
	adds r0, r4, #0
	bl sub_806AA40
	ldr r0, _0806ADC8 @ =0x03000024
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0806ADCC @ =0x03000020
	adds r0, r6, r1
	strb r5, [r0]
	movs r0, #0x80
	str r0, [r4, #0x40]
	strh r5, [r4, #0x2c]
	strh r5, [r4, #0x2e]
	ldr r2, _0806ADD0 @ =0x03000094
	adds r1, r6, r2
	ldr r2, _0806ADD4 @ =gUnknown_080D5780
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	ldr r1, [r7]
	ldr r0, _0806ADD8 @ =Task_806ADDC
	str r0, [r1, #8]
_0806ADBA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806ADC0: .4byte gCurTask
_0806ADC4: .4byte gSineTable
_0806ADC8: .4byte 0x03000024
_0806ADCC: .4byte 0x03000020
_0806ADD0: .4byte 0x03000094
_0806ADD4: .4byte gUnknown_080D5780
_0806ADD8: .4byte Task_806ADDC

.syntax divided
