
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldr r3, _0808F258 @ =gUnknown_080D7054
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r6, #0
	adds r1, #0x44
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r7, _0808F25C @ =gUnknown_080D6F5C
	movs r5, #0
	adds r2, r6, #0
	adds r2, #0x14
	str r2, [sp]
	adds r0, r6, #0
	adds r0, #0x18
	str r0, [sp, #4]
_0808F0F4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r0, r6, r0
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r7, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0808F0F4
	adds r0, r6, #0
	adds r0, #0xec
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldr r3, _0808F260 @ =gUnknown_080D7024
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x34]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldr r3, _0808F264 @ =gUnknown_080D701C
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #8]
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r1, r2, r1
	ldr r1, [r1]
	subs r1, #1
	strh r1, [r0, #0x10]
	ldr r3, [r6, #8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r2, [r1]
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #1
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F258: .4byte gUnknown_080D7054
_0808F25C: .4byte gUnknown_080D6F5C
_0808F260: .4byte gUnknown_080D7024
_0808F264: .4byte gUnknown_080D701C

.syntax divided
