
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r2, [r5, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080B69E8
	ldr r0, _080B69E4 @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080B69FC
	.align 2, 0
_080B69E4: .4byte gRefSpriteTables
_080B69E8:
	ldr r0, _080B6B04 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080B69FC:
	mov r1, r8
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1e]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	lsrs r0, r0, #1
	subs r2, r2, r0
	str r2, [sp]
	movs r7, #0x12
	ldrsh r0, [r5, r7]
	lsrs r1, r1, #1
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r6, #0
	mov r0, r8
	ldrh r0, [r0, #2]
	str r0, [sp, #8]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r6, r0
	bge _080B6AF2
	ldr r3, _080B6B08 @ =0x040000D4
	mov sb, r3
	ldr r7, _080B6B0C @ =0x000001FF
	mov sl, r7
_080B6A34:
	ldr r0, _080B6B04 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldrh r0, [r5, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _080B6B10 @ =iwram_end
	ldr r0, [r0]
	cmp r4, r0
	beq _080B6AF2
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _080B6A6C
	ldr r0, _080B6B14 @ =gOamFreeIndex
	ldrb r0, [r0]
	subs r0, #1
	strb r0, [r5, #0x1d]
_080B6A6C:
	mov r3, r8
	ldrh r1, [r3]
	adds r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r7, r0
	mov r7, sb
	str r0, [r7]
	str r4, [r7, #4]
	ldr r0, _080B6B18 @ =0x80000003
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4, #2]
	mov r2, sl
	ands r2, r3
	movs r1, #0xff
	ldrb r0, [r4]
	ldr r7, [sp, #4]
	adds r0, r7, r0
	ands r0, r1
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	orrs r0, r3
	ldr r3, [sp]
	adds r2, r3, r2
	mov r7, sl
	ands r2, r7
	orrs r0, r2
	strh r0, [r4, #2]
	ldrb r2, [r5, #0x1f]
	lsls r2, r2, #0xc
	ldrh r0, [r4, #4]
	adds r2, r2, r0
	strh r2, [r4, #4]
	ldr r1, [r5, #8]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	lsrs r1, r1, #2
	orrs r1, r2
	strh r1, [r4, #4]
	ldr r0, [r5]
	ldr r2, _080B6B1C @ =0xF9FF0000
	adds r0, r0, r2
	lsrs r0, r0, #5
	adds r1, r1, r0
	strh r1, [r4, #4]
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	cmp r1, r0
	blt _080B6A34
_080B6AF2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6B04: .4byte gRefSpriteTables
_080B6B08: .4byte 0x040000D4
_080B6B0C: .4byte 0x000001FF
_080B6B10: .4byte iwram_end
_080B6B14: .4byte gOamFreeIndex
_080B6B18: .4byte 0x80000003
_080B6B1C: .4byte 0xF9FF0000

.syntax divided
