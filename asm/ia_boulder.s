.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_804A1E0
sub_804A1E0: @ 0x0804A1E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov sb, r0
	ldr r1, _0804A260 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0     @ r4 = boulder
	ldr r2, _0804A264 @ =0x0300000C
	adds r7, r6, r2     @ r7 = s
	ldr r3, [r4]
	mov sl, r3          @ sl = me
	ldr r1, _0804A268 @ =0x0300005C
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, _0804A26C @ =0x0300005E
	adds r1, r6, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl IsPointInScreenRect
	cmp r0, #1
	bne _0804A220
	movs r3, #1
	mov sb, r3
_0804A220:
	ldr r0, [r4, #0x60]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x64]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	str r0, [sp]
	asrs r5, r0, #0x10      @ r5 = worldX
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	asrs r1, r1, #0x10
	mov r8, r1              @ r8 = worldY
	adds r0, r5, #0
	bl IsPointInScreenRect
	cmp r0, #1
	bne _0804A248
	movs r0, #1
	mov sb, r0
_0804A248:
	mov r1, sb
	cmp r1, #0
	bne _0804A270
	ldrb r0, [r4, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldr r3, _0804A260 @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _0804A3C4
	.align 2, 0
_0804A260: .4byte gCurTask
_0804A264: .4byte 0x0300000C
_0804A268: .4byte 0x0300005C
_0804A26C: .4byte 0x0300005E
_0804A270:
	ldr r1, _0804A374 @ =0x0300007A
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804A27C
	b _0804A38C
_0804A27C:
	ldr r2, _0804A378 @ =0x0300007C
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	mov sl, r1          @ sl = ((boulder->unk7C & 0x2) >> 1);
	movs r3, #0
	ldr r0, [sp]
	mov ip, r0          @ ip = worldX << 16
	ldr r1, [sp, #4]
	str r1, [sp, #8]    @ sp08 = worldY << 16
	adds r2, #1
	adds r2, r2, r6     @
	mov r8, r2          @ r8 = &boulder->unk7D[0][0]
	ldr r0, _0804A37C @ =0x0300007F
	adds r5, r6, r0     @ r5 = &boulder->unk7D[0][2]
	ldr r1, _0804A380 @ =0x0300007E
	adds r1, r6, r1
	str r1, [sp, #0xc]  @ sp0C = &boulder->unk7D[0][1]
	ldr r2, _0804A384 @ =0x03000080
	adds r4, r6, r2     @ r4 = &boulder->unk7D[0][3]
	subs r0, #0x4b
	adds r0, r0, r6
	mov sb, r0          @ sb = &boulder->s2
_0804A2B4:
	lsls r1, r3, #1
	add r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	mov r6, r8          @ r6 = r8 = &boulder->unk7D[0][0]
	adds r2, r6, r1
	adds r0, r5, r1
	ldrb r0, [r0]
	ldrb r6, [r2]
	adds r0, r0, r6
	strb r0, [r2]
	ldr r0, [sp, #0xc]
	adds r2, r0, r1     @ r2 = &boulder->unk7D[i][1]
	adds r1, r4, r1     @ r1 = &boulder->unk7D[i][3]
	ldrb r0, [r1]
	ldrb r6, [r2]
	adds r0, r0, r6
	strb r0, [r2]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804A2B4
	ldr r2, _0804A388 @ =gCamera
	ldr r1, [r2]
	mov r3, ip
	asrs r5, r3, #0x10  @ r5 = worldX
	subs r1, r5, r1
	mov r6, sl          @ r6 = sl = ((boulder->unk7C & 0x2) >> 1);
	lsls r2, r6, #2
	mov r3, r8
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r6, _0804A388 @ =gCamera
	ldr r1, [r6, #4]
	ldr r0, [sp, #8]
	asrs r4, r0, #0x10  @ r4 = worldY
	subs r1, r4, r1
	ldr r3, [sp, #0xc]  @ r3 = sp0C = &boulder->unk7D[0][1]
	adds r2, r3, r2     @ r2 = &boulder->unk7D[sl][1]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r1
	strh r0, [r7, #0x12]
	movs r6, #0x10
	strb r6, [r7, #0x1c]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, _0804A388 @ =gCamera
	ldr r0, [r1]
	subs r5, r5, r0
	mov r1, sl
	adds r1, #2
	lsls r1, r1, #2
	mov r2, r8          @ r2 = r8 = &boulder->unk7D[sl + 2][1]
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r5
	mov r3, sb
	strh r0, [r3, #0x10]
	ldr r2, _0804A388 @ =gCamera
	ldr r0, [r2, #4]
	subs r4, r4, r0
	ldr r3, [sp, #0xc]
	adds r1, r3, r1
	ldrb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r4
	mov r1, sb
	strh r0, [r1, #0x12]
	strb r6, [r1, #0x1c]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	b _0804A3C4
	.align 2, 0
_0804A374: .4byte 0x0300007A
_0804A378: .4byte 0x0300007C
_0804A37C: .4byte 0x0300007F
_0804A380: .4byte 0x0300007E
_0804A384: .4byte 0x03000080
_0804A388: .4byte gCamera
_0804A38C:
	cmp r0, #5
	beq _0804A3C4
	ldr r1, _0804A3D4 @ =gCamera
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r7, #0x10]
	ldr r0, [r1, #4]
	mov r2, r8
	subs r0, r2, r0
	strh r0, [r7, #0x12]
	ldr r0, [r4, #0x68]
	asrs r0, r0, #4
	cmp r0, #0
	bge _0804A3AA
	rsbs r0, r0, #0
_0804A3AA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #0x40
	bls _0804A3B6
	movs r1, #0x40
_0804A3B6:
	strb r1, [r7, #0x1c]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0804A3C4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3D4: .4byte gCamera
.endif

	thumb_func_start TaskDestructor_Boulder
TaskDestructor_Boulder: @ 0x0804A3D8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _0804A3F4 @ =0x00000246
	bl sub_8003E28
	ldr r0, [r4, #0x74]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3F4: .4byte 0x00000246
