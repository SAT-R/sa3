.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r7, #0x2c      @ r7 = s
	ldr r1, [r0, #0x1c]
	asrs r6, r1, #8     @ r6 = qWorldX
	ldr r1, [r0, #0x20]
	asrs r5, r1, #8     @ r5 = qWorldY
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r6, r6, r1
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r5, r5, r0     @ r5 = worldY = TO_WORLD_POS_RAW(worldY, enemy->region.y);
	movs r4, #0
	movs r0, #0xff
	lsls r0, r0, #1
	mov r8, r0          @ r8 = 510 (0x1FE)
	b _08059B7E
_08059B10:
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08059B6C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bls _08059B42
	ldr r1, _08059B70 @ =0xFFFFFCFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _08059B4E
_08059B42:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08059B66
_08059B4E:
	ldr r1, _08059B74 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bhi _08059B78
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08059B78
_08059B66:
	movs r0, #1
	b _08059B90
	.align 2, 0
_08059B6C: .4byte 0xFFFF0000
_08059B70: .4byte 0xFFFFFCFF
_08059B74: .4byte 0xFFFFFEFF
_08059B78:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08059B7E:
	cmp r4, #1
	bhi _08059B8E
	adds r0, r4, #0
	bl sub_805CD20
	adds r1, r0, #0
	cmp r1, #0
	bne _08059B10
_08059B8E:
	movs r0, #0
_08059B90:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
