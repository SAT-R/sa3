
.syntax unified
.text
	push {r4, lr}
	sub sp, #8
	movs r1, #0
	ldr r0, _080857A8 @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _080857AC @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _080857B8
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, _080857B0 @ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _080857B4 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080857CE
	.align 2, 0
_080857A8: .4byte gBgOffsetsHBlankPrimary
_080857AC: .4byte gBgOffsetsBuffer
_080857B0: .4byte 0x040000D4
_080857B4: .4byte 0x81000140
_080857B8:
	add r0, sp, #4
	strh r1, [r0]
	ldr r1, _08085830 @ =0x040000D4
	str r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _08085834 @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080857CE:
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x42
	bl sa2__sub_8005FB4
	movs r2, #0xf0
	lsls r2, r2, #2
	ldr r1, _08085838 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r1, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r2, #1
	adds r0, r1, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r1, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r2, #1
	adds r0, r1, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0
	ldr r0, _0808583C @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _08085840 @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _08085844
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, _08085830 @ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08085834 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0808585A
	.align 2, 0
_08085830: .4byte 0x040000D4
_08085834: .4byte 0x81000140
_08085838: .4byte gSineTable
_0808583C: .4byte gBgOffsetsHBlankPrimary
_08085840: .4byte gBgOffsetsBuffer
_08085844:
	add r0, sp, #4
	strh r1, [r0]
	ldr r1, _08085874 @ =0x040000D4
	str r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _08085878 @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0808585A:
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xe
	bl sa2__sub_8005FB4
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08085874: .4byte 0x040000D4
_08085878: .4byte 0x81000140

.syntax divided
