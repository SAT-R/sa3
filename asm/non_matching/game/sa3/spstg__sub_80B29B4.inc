
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	lsls r1, r1, #0x18
	ldr r0, [r0]
	ldr r2, _080B2AD4 @ =gUnknown_080DBE82
	lsrs r1, r1, #0x17
	ldr r3, _080B2AD8 @ =0x000008C7
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r4, [r1]
	add r1, sp, #0x18
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #0xb
	strh r0, [r1, #8]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	add r1, sp, #0x18
	strh r0, [r1, #2]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	add r3, sp, #0x18
	adds r1, r3, #0
	movs r5, #2
	ldrsh r2, [r1, r5]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	add r1, sp, #0x18
	strh r0, [r1, #6]
	adds r0, r1, #0
	ldrh r0, [r0, #2]
	movs r1, #1
	mov sb, r1
	cmp r0, #0
	beq _080B2A28
	movs r2, #0
	mov sb, r2
_080B2A28:
	movs r7, #0
	mov r3, sb
	lsls r3, r3, #2
	str r3, [sp, #0x28]
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x24]
	movs r0, #0
	mov sl, r0
_080B2A3A:
	lsls r6, r7, #1
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x18
	movs r1, #0
	ldrsh r5, [r0, r1]
	lsls r5, r5, #3
	ldr r0, _080B2ADC @ =gUnknown_080DBEF8
	adds r5, r5, r0
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r4, r2
	add r0, r8
	ldrh r2, [r5, #4]
	ldrh r3, [r5]
	mov ip, r3
	mov r1, sl
	str r1, [sp]
	ldr r1, [sp, #0x28]
	add r1, sb
	lsls r1, r1, #1
	adds r1, r6, r1
	ldr r3, _080B2AE0 @ =gUnknown_080DBF94
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r1, [sp, #4]
	ldr r1, _080B2AE4 @ =gUnknown_080DBFCC
	adds r1, r6, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	ldrb r1, [r5, #2]
	str r1, [sp, #0x10]
	mov r5, sl
	str r5, [sp, #0x14]
	movs r1, #1
	mov r3, ip
	bl sub_80B6BB8
	add r4, r8
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x10
	strb r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _080B2A3A
	ldr r0, _080B2AE8 @ =0x0000028A
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B2AF0
	movs r0, #0xa4
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080B2AEC @ =0x00000292
	add r0, r8
	strh r1, [r0]
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, r8
	strh r1, [r0]
	b _080B2B12
	.align 2, 0
_080B2AD4: .4byte gUnknown_080DBE82
_080B2AD8: .4byte 0x000008C7
_080B2ADC: .4byte gUnknown_080DBEF8
_080B2AE0: .4byte gUnknown_080DBF94
_080B2AE4: .4byte gUnknown_080DBFCC
_080B2AE8: .4byte 0x0000028A
_080B2AEC: .4byte 0x00000292
_080B2AF0:
	movs r1, #0xa4
	lsls r1, r1, #2
	add r1, r8
	movs r0, #0xe7
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r1, _080B2B30 @ =0x00000292
	add r1, r8
	movs r0, #0xd9
	lsls r0, r0, #7
	strh r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #2
	add r1, r8
	movs r0, #0xcb
	lsls r0, r0, #7
	strh r0, [r1]
_080B2B12:
	ldr r1, _080B2B34 @ =0x0000028A
	add r1, r8
	ldrb r0, [r1]
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	strb r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2B30: .4byte 0x00000292
_080B2B34: .4byte 0x0000028A

.syntax divided
