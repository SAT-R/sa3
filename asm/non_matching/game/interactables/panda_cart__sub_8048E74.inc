.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0     @ r6 = cart
	lsls r1, r1, #0x18  @ r1 = param1 << 24
	cmp r1, #0
	bne _08048F20
	movs r4, #0
	movs r0, #0x78
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x7c
	adds r1, r1, r6
	mov r8, r1
	ldr r2, _08048F10 @ =gPseudoRandom
	mov ip, r2
	ldr r7, _08048F14 @ =gSineTable
_08048E98:
	mov r3, ip
	ldr r1, [r3]
	ldr r0, _08048F18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08048F1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xff
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r5, r0, #0     @ r5 = Q(2.5) + (PseudoRandom32() & 0xFF)
	movs r0, #1
	ands r0, r4
	adds r0, #3
	adds r2, r0, #0     @ r2 = (i & 1) + 3
	lsls r0, r4, #2
	adds r3, r6, r0
	adds r1, #1         @ r1 = 0x100
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08048ED2
	adds r0, #0x3f
_08048ED2:
	asrs r1, r0, #6
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08048EEA
	adds r0, #0x3f
_08048EEA:
	asrs r1, r0, #6
	adds r0, r3, #0
	adds r0, #0x5a
	strh r1, [r0]
	lsls r1, r4, #3
	mov r3, sb
	adds r2, r3, r1
	ldr r0, [r6, #0x3c]
	str r0, [r2]
	add r1, r8
	ldr r0, [r6, #0x40]
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08048E98
	b _08048F64
	.align 2, 0
_08048F10: .4byte gPseudoRandom
_08048F14: .4byte gSineTable
_08048F18: .4byte 0x00196225
_08048F1C: .4byte 0x3C6EF35F
_08048F20:
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x78
	adds r5, r6, #0
	adds r5, #0x7c
_08048F2A:
	lsls r1, r4, #2
	adds r1, r6, r1
	movs r0, #0x5a
	adds r0, r0, r1
	mov ip, r0
	ldrh r0, [r0]
	adds r0, #0x20
	mov r2, ip
	strh r0, [r2]
	lsls r2, r4, #3
	adds r3, r7, r2
	adds r1, #0x58
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r2, r5, r2
	mov r3, ip
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08048F2A
_08048F64:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
