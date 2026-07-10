.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_806AC7C
Task_806AC7C: @ 0x0806AC7C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r2, _0806ACAC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x10]
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #2
	bne _0806ACF2
	movs r0, #1
	strb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	movs r2, #0
	ldr r7, _0806ACB0 @ =sub_806AD04
	ldr r6, _0806ACB4 @ =gPlayers
_0806ACA2:
	cmp r2, #0
	bne _0806ACBC
	ldr r0, _0806ACB8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806ACC6
	.align 2, 0
_0806ACAC: .4byte gCurTask
_0806ACB0: .4byte sub_806AD04
_0806ACB4: .4byte gPlayers
_0806ACB8: .4byte gStageData
_0806ACBC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806ACC6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	movs r3, #0
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #0
	bne _0806ACE0
	movs r3, #1
_0806ACE0:
	strb r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806ACA2
	mov r1, ip
	ldr r0, [r1]
	str r7, [r0, #8]
_0806ACF2:
	adds r0, r5, #0
	bl sub_806D07C
	adds r0, r5, #0
	bl sub_806BC50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806AD04
sub_806AD04: @ 0x0806AD04
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
	ldr r0, _0806ADD8 @ =sub_806ADDC
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
_0806ADD8: .4byte sub_806ADDC

	thumb_func_start sub_806ADDC
sub_806ADDC: @ 0x0806ADDC
	push {r4, r5, lr}
	ldr r0, _0806AE04 @ =gCurTask
	ldr r1, [r0]
	ldrh r5, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0806AE0C
	movs r0, #0
	strh r0, [r4, #0x2e]
	ldr r0, _0806AE08 @ =sub_806AE3C
	str r0, [r1, #8]
	b _0806AE2E
	.align 2, 0
_0806AE04: .4byte gCurTask
_0806AE08: .4byte sub_806AE3C
_0806AE0C:
	adds r0, r4, #0
	bl sub_806D07C
	adds r0, r4, #0
	bl sub_806BC50
	cmp r0, #0
	bne _0806AE2E
	ldr r0, _0806AE34 @ =0x03000094
	adds r1, r5, r0
	ldr r2, _0806AE38 @ =gUnknown_080D5780
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_0806AE2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806AE34: .4byte 0x03000094
_0806AE38: .4byte gUnknown_080D5780

	thumb_func_start sub_806AE3C
sub_806AE3C: @ 0x0806AE3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806AEC0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, [r4]
	asrs r3, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #6]
	ldr r6, _0806AEC4 @ =0x03000058
	adds r0, r5, r6
	movs r6, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1b
	strb r3, [r0]
	ldr r3, [r4, #4]
	asrs r3, r3, #8
	adds r3, #0x26
	ldr r7, _0806AEC8 @ =0x03000059
	adds r4, r5, r7
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1b
	strb r3, [r4]
	ldr r3, _0806AECC @ =0x0300005A
	adds r4, r5, r3
	movs r3, #0x1c
	strb r3, [r4]
	adds r7, #2
	adds r4, r5, r7
	movs r3, #0xa
	strb r3, [r4]
	ldr r4, _0806AED0 @ =0x0300005C
	adds r3, r5, r4
	movs r4, #1
	strb r4, [r3]
	adds r7, #2
	adds r3, r5, r7
	strb r6, [r3]
	adds r7, #1
	adds r3, r5, r7
	strb r6, [r3]
	ldr r6, _0806AED4 @ =0x0300005F
	adds r3, r5, r6
	strb r4, [r3]
	ldrb r3, [r0]
	subs r7, #0x3c
	adds r5, r5, r7
	strb r3, [r5]
	movs r3, #0
	bl CreateEntity_BlueButton @ NOTE(Jace)::What..?
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0806AED8 @ =sub_806AEDC
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AEC0: .4byte gCurTask
_0806AEC4: .4byte 0x03000058
_0806AEC8: .4byte 0x03000059
_0806AECC: .4byte 0x0300005A
_0806AED0: .4byte 0x0300005C
_0806AED4: .4byte 0x0300005F
_0806AED8: .4byte sub_806AEDC

	thumb_func_start sub_806AEDC
sub_806AEDC: @ 0x0806AEDC
	push {r4, r5, r6, lr}
	ldr r0, _0806AF54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0x30]
	cmp r0, #0
	beq _0806AEFA
	subs r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806AF0E
_0806AEFA:
	movs r0, #0xfa
	lsls r0, r0, #1
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #1
	str r1, [r5, #0x40]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #1
	str r0, [r5, #0x44]
_0806AF0E:
	ldr r0, [r5]
	ldr r1, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_806B094
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	bne _0806AF5C
	ldr r1, _0806AF58 @ =gSineTable
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	b _0806AF7E
	.align 2, 0
_0806AF54: .4byte gCurTask
_0806AF58: .4byte gSineTable
_0806AF5C:
	ldr r1, _0806AFA4 @ =gSineTable
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
_0806AF7E:
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	adds r3, r0, r2
	str r3, [r5, #0x38]
	ldrh r0, [r5, #0x30]
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AFD6
	cmp r2, #0
	bge _0806AFA8
	movs r2, #0x80
	lsls r2, r2, #2
	b _0806AFAE
	.align 2, 0
_0806AFA4: .4byte gSineTable
_0806AFA8:
	cmp r2, #0
	ble _0806AFB2
	ldr r2, _0806AFC0 @ =0xFFFFFE00
_0806AFAE:
	adds r0, r3, r2
	str r0, [r5, #0x38]
_0806AFB2:
	cmp r1, #0
	bge _0806AFC4
	ldr r0, [r5, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0806AFCE
	.align 2, 0
_0806AFC0: .4byte 0xFFFFFE00
_0806AFC4:
	cmp r1, #0
	ble _0806AFD0
	ldr r0, [r5, #0x3c]
	ldr r2, _0806B01C @ =0xFFFFFE00
	adds r0, r0, r2
_0806AFCE:
	str r0, [r5, #0x3c]
_0806AFD0:
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _0806AFE0
_0806AFD6:
	adds r0, r5, #0
	bl sub_806D01C
	ldr r0, _0806B020 @ =0x0000FFFF
	strh r0, [r5, #0x30]
_0806AFE0:
	adds r0, r5, #0
	bl sub_806CEE8
	ldrb r0, [r5, #0x1e]
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_806D07C
	adds r0, r5, #0
	bl sub_806BC50
	cmp r6, #0
	beq _0806B000
	adds r0, r5, #0
	bl sub_806D01C
_0806B000:
	adds r0, r5, #0
	bl sub_806B844
	cmp r0, #1
	bne _0806B02C
	ldr r0, _0806B024 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806B028 @ =sub_806C1C8
	str r0, [r1, #8]
	adds r1, r5, #0
	adds r1, #0x5f
	movs r0, #0xff
	b _0806B08C
	.align 2, 0
_0806B01C: .4byte 0xFFFFFE00
_0806B020: .4byte 0x0000FFFF
_0806B024: .4byte gCurTask
_0806B028: .4byte sub_806C1C8
_0806B02C:
	ldr r4, [r5]
	lsrs r0, r4, #0x10
	ldr r2, [r5, #4]
	asrs r3, r2, #8
	lsrs r2, r2, #0x10
	adds r1, r5, #0
	adds r1, #0x22
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r4, r4, #8
	adds r3, #0x26
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	subs r0, #0x10
	asrs r4, r4, #0x10
	cmp r0, r4
	bge _0806B08E
	adds r0, #0x20
	cmp r0, r4
	ble _0806B08E
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	subs r1, #8
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	bge _0806B08E
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r3
	ble _0806B08E
	adds r1, r5, #0
	adds r1, #0x5f
	movs r0, #2
_0806B08C:
	strb r0, [r1]
_0806B08E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_806B094
sub_806B094: @ 0x0806B094
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	ldr r2, _0806B0F8 @ =gSineTable
	ldrb r1, [r4, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	rsbs r0, r0, #0
	lsls r1, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r2
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r2, r0, #5
	ldr r1, [r4]
	adds r1, r1, r2
	lsls r2, r0, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r2, r3, #5
	ldr r0, [r4, #4]
	adds r0, r0, r2
	lsls r2, r3, #2
	adds r0, r0, r2
	lsls r3, r3, #1
	adds r0, r0, r3
	asrs r1, r1, #8
	str r1, [sp]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldrb r1, [r4, #0x1e]
	adds r0, r1, #0
	adds r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0806B0FC
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B144
	b _0806B138
	.align 2, 0
_0806B0F8: .4byte gSineTable
_0806B0FC:
	adds r0, r1, #0
	subs r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0806B112
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B23C
	b _0806B138
_0806B112:
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0806B128
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B2F4
	b _0806B138
_0806B128:
	cmp r0, #0xbf
	bls _0806B138
	adds r0, r4, #0
	mov r1, sp
	bl sub_806B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0806B138:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806B144
sub_806B144: @ 0x0806B144
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0
	mov sb, r0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	adds r6, r7, #0
	adds r6, #0x1e
	str r6, [sp]
	ldr r2, _0806B1D4 @ =sa2__sub_801ED24
	mov r8, r2
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4]
	subs r0, #8
	ldr r1, [r4, #4]
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r0, r0, #0x18
	lsls r1, r5, #0x18
	cmp r0, r1
	ble _0806B196
	adds r2, r5, #0
_0806B196:
	adds r4, r2, #0
	ldrb r0, [r7, #0x1e]
	cmp r0, #0x80
	bne _0806B1A2
	mov r0, sb
	strb r0, [r7, #0x1e]
_0806B1A2:
	ldrb r0, [r7, #0x1e]
	cmp r0, #0
	bne _0806B1AC
	movs r0, #0xa0
	strb r0, [r7, #0x1e]
_0806B1AC:
	movs r1, #1
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _0806B1D8
	adds r0, #4
	mov r2, sb
	strb r2, [r0]
	ldr r1, [r7, #0x40]
	rsbs r1, r1, #0
	str r1, [r7, #0x44]
	ldr r1, [r7, #0x38]
	rsbs r1, r1, #0
	str r1, [r7, #0x3c]
	adds r2, r0, #0
	b _0806B1EC
	.align 2, 0
_0806B1D4: .4byte sa2__sub_801ED24
_0806B1D8:
	adds r2, r7, #0
	adds r2, #0x24
	cmp r1, #1
	bne _0806B1EC
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, [r7, #0x40]
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x38]
	str r0, [r7, #0x3c]
_0806B1EC:
	ldrb r0, [r7, #0x1d]
	cmp r0, #1
	beq _0806B1F8
	ldr r0, [r7, #0x44]
	adds r0, #2
	str r0, [r7, #0x44]
_0806B1F8:
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ble _0806B202
	movs r0, #0xff
	b _0806B204
_0806B202:
	movs r0, #1
_0806B204:
	strb r0, [r2]
	movs r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x40]
	movs r0, #3
	strb r0, [r3]
	mov r0, sb
	cmp r0, #0
	beq _0806B22E
	cmp r0, #0
	ble _0806B224
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7]
	adds r0, r0, r1
	b _0806B22C
_0806B224:
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7]
	subs r0, r0, r1
_0806B22C:
	str r0, [r7]
_0806B22E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806B23C
sub_806B23C: @ 0x0806B23C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	adds r2, r4, #0
	adds r2, #0x1e
	str r2, [sp]
	ldr r2, _0806B288 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #0
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _0806B268
	movs r0, #0xa0
	strb r0, [r4, #0x1e]
_0806B268:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bne _0806B28C
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	rsbs r0, r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	rsbs r0, r0, #0
	b _0806B29E
	.align 2, 0
_0806B288: .4byte sa2__sub_801EE64
_0806B28C:
	cmp r1, #3
	bne _0806B2A0
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
_0806B29E:
	str r0, [r4, #0x38]
_0806B2A0:
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	beq _0806B2C0
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B2BA
	ldr r0, [r4, #0x40]
	subs r0, #2
	b _0806B2BE
_0806B2BA:
	ldr r0, [r4, #0x40]
	adds r0, #2
_0806B2BE:
	str r0, [r4, #0x40]
_0806B2C0:
	movs r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x3c]
	movs r0, #1
	strb r0, [r3]
	movs r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806B2EC
	cmp r0, #0
	ble _0806B2E2
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0806B2EA
_0806B2E2:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	subs r0, r0, r1
_0806B2EA:
	str r0, [r4, #4]
_0806B2EC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_806B2F4
sub_806B2F4: @ 0x0806B2F4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r3, #8
	rsbs r3, r3, #0
	adds r2, r4, #0
	adds r2, #0x1e
	str r2, [sp]
	ldr r2, _0806B33C @ =sa2__sub_801ED24
	str r2, [sp, #4]
	movs r2, #0
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _0806B320
	movs r0, #0x40
	strb r0, [r4, #0x1e]
_0806B320:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r5, r0, #0
	cmp r2, #0
	bne _0806B340
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x38]
	b _0806B354
	.align 2, 0
_0806B33C: .4byte sa2__sub_801ED24
_0806B340:
	adds r1, r4, #0
	adds r1, #0x24
	cmp r2, #1
	bne _0806B356
	strb r2, [r1]
	ldr r0, [r4, #0x40]
	rsbs r0, r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x38]
	rsbs r0, r0, #0
_0806B354:
	str r0, [r4, #0x3c]
_0806B356:
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	beq _0806B362
	ldr r0, [r4, #0x44]
	adds r0, #2
	str r0, [r4, #0x44]
_0806B362:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ble _0806B36C
	movs r0, #1
	b _0806B36E
_0806B36C:
	movs r0, #0xff
_0806B36E:
	strb r0, [r1]
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
	movs r0, #2
	strb r0, [r5]
	movs r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806B39C
	cmp r0, #0
	ble _0806B392
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4]
	adds r0, r0, r1
	b _0806B39A
_0806B392:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4]
	subs r0, r0, r1
_0806B39A:
	str r0, [r4]
_0806B39C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_806B3A4
sub_806B3A4: @ 0x0806B3A4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	adds r2, r4, #0
	adds r2, #0x1e
	str r2, [sp]
	ldr r2, _0806B3E8 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r7, #1
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x80
	bne _0806B3D0
	strb r5, [r4, #0x1e]
_0806B3D0:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	bne _0806B3EC
	adds r0, #4
	strb r7, [r0]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	b _0806B402
	.align 2, 0
_0806B3E8: .4byte sa2__sub_801EE64
_0806B3EC:
	cmp r1, #3
	bne _0806B404
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	rsbs r0, r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	rsbs r0, r0, #0
_0806B402:
	str r0, [r4, #0x38]
_0806B404:
	ldrb r0, [r4, #0x1d]
	adds r2, r0, #0
	cmp r2, #1
	beq _0806B426
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B420
	ldr r0, [r4, #0x40]
	adds r0, #2
	b _0806B424
_0806B420:
	ldr r0, [r4, #0x40]
	subs r0, #2
_0806B424:
	str r0, [r4, #0x40]
_0806B426:
	ldr r1, [r4, #0x40]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B430
	rsbs r0, r1, #0
_0806B430:
	cmp r0, #0
	bgt _0806B454
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806B452
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B44E
	adds r0, r1, #2
	b _0806B450
_0806B44E:
	subs r0, r1, #2
_0806B450:
	str r0, [r4, #0x40]
_0806B452:
	movs r5, #1
_0806B454:
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x44]
	strb r0, [r6]
	adds r0, r7, #0
	cmp r0, #0
	beq _0806B47A
	cmp r0, #0
	ble _0806B470
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0806B478
_0806B470:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #4]
	subs r0, r0, r1
_0806B478:
	str r0, [r4, #4]
_0806B47A:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_806B484
sub_806B484: @ 0x0806B484
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r6, #5
	movs r4, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0806B498
	movs r6, #7
	subs r0, #1
	strb r0, [r2, #0x14]
_0806B498:
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4A2
	rsbs r0, r1, #0
_0806B4A2:
	ldr r7, _0806B4C0 @ =0xFFFFFE0C
	adds r0, r0, r7
	ldr r5, _0806B4C4 @ =0x0000012B
	cmp r0, r5
	bls _0806B4BC
	ldr r3, [r2, #0x3c]
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B4B6
	rsbs r0, r3, #0
_0806B4B6:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B4C8
_0806B4BC:
	movs r4, #2
	b _0806B50C
	.align 2, 0
_0806B4C0: .4byte 0xFFFFFE0C
_0806B4C4: .4byte 0x0000012B
_0806B4C8:
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4D0
	rsbs r0, r1, #0
_0806B4D0:
	ldr r7, _0806B4EC @ =0xFFFFFCE0
	adds r0, r0, r7
	cmp r0, r5
	bls _0806B4E6
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B4E0
	rsbs r0, r3, #0
_0806B4E0:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B4F0
_0806B4E6:
	movs r4, #3
	b _0806B50C
	.align 2, 0
_0806B4EC: .4byte 0xFFFFFCE0
_0806B4F0:
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4F8
	rsbs r0, r1, #0
_0806B4F8:
	ldr r5, _0806B524 @ =0x0000044B
	cmp r0, r5
	bgt _0806B50A
	adds r0, r3, #0
	cmp r0, #0
	bge _0806B506
	rsbs r0, r0, #0
_0806B506:
	cmp r0, r5
	ble _0806B50C
_0806B50A:
	movs r4, #4
_0806B50C:
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B534
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806B528
	adds r1, r4, #1
	b _0806B58C
	.align 2, 0
_0806B524: .4byte 0x0000044B
_0806B528:
	adds r0, r1, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B534:
	cmp r0, #1
	bne _0806B54C
	cmp r1, #0x7f
	bgt _0806B540
	adds r1, r4, #1
	b _0806B58C
_0806B540:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B54C:
	cmp r0, #2
	bne _0806B570
	ldr r3, [r2, #0x3c]
	movs r5, #0x80
	rsbs r5, r5, #0
	cmp r3, r5
	ble _0806B55E
	adds r1, r4, #1
	b _0806B58C
_0806B55E:
	ldr r0, _0806B56C @ =0xFFFFFF00
	cmp r3, r0
	ble _0806B58A
	cmp r1, r5
	bgt _0806B58A
	adds r1, r4, #2
	b _0806B58C
	.align 2, 0
_0806B56C: .4byte 0xFFFFFF00
_0806B570:
	cmp r0, #3
	bne _0806B594
	ldr r0, [r2, #0x3c]
	cmp r0, #0x7f
	bgt _0806B57E
	adds r1, r4, #1
	b _0806B58C
_0806B57E:
	cmp r0, #0xff
	bgt _0806B58A
	cmp r1, #0x7f
	ble _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B58A:
	adds r1, r4, #3
_0806B58C:
	lsls r1, r6
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	strh r0, [r2, #0x2c]
_0806B594:
	ldrh r0, [r2, #0x2c]
	ldr r1, _0806B5A4 @ =0x00003FF0
	cmp r0, r1
	bls _0806B59E
	strh r1, [r2, #0x2c]
_0806B59E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5A4: .4byte 0x00003FF0

	thumb_func_start sub_806B5A8
sub_806B5A8: @ 0x0806B5A8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r6, #5
	movs r4, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0806B5BC
	movs r6, #7
	subs r0, #1
	strb r0, [r2, #0x14]
_0806B5BC:
	ldr r3, [r2, #0x38]
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B5C6
	rsbs r0, r3, #0
_0806B5C6:
	ldr r7, _0806B5E4 @ =0xFFFFFE0C
	adds r0, r0, r7
	ldr r5, _0806B5E8 @ =0x0000012B
	cmp r0, r5
	bls _0806B5E0
	ldr r1, [r2, #0x3c]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B5DA
	rsbs r0, r1, #0
_0806B5DA:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B5EC
_0806B5E0:
	movs r4, #2
	b _0806B630
	.align 2, 0
_0806B5E4: .4byte 0xFFFFFE0C
_0806B5E8: .4byte 0x0000012B
_0806B5EC:
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B5F4
	rsbs r0, r3, #0
_0806B5F4:
	ldr r7, _0806B610 @ =0xFFFFFCE0
	adds r0, r0, r7
	cmp r0, r5
	bls _0806B60A
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B604
	rsbs r0, r1, #0
_0806B604:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B614
_0806B60A:
	movs r4, #3
	b _0806B630
	.align 2, 0
_0806B610: .4byte 0xFFFFFCE0
_0806B614:
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B61C
	rsbs r0, r3, #0
_0806B61C:
	ldr r5, _0806B644 @ =0x0000044B
	cmp r0, r5
	bgt _0806B62E
	adds r0, r1, #0
	cmp r0, #0
	bge _0806B62A
	rsbs r0, r0, #0
_0806B62A:
	cmp r0, r5
	ble _0806B630
_0806B62E:
	movs r4, #4
_0806B630:
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B654
	cmp r3, #0x7f
	bgt _0806B648
	adds r0, r4, #1
	b _0806B6A8
	.align 2, 0
_0806B644: .4byte 0x0000044B
_0806B648:
	adds r0, r3, #0
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B654:
	cmp r0, #1
	bne _0806B670
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r3, r0
	ble _0806B664
	adds r0, r4, #1
	b _0806B6A8
_0806B664:
	adds r0, r3, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B670:
	cmp r0, #2
	bne _0806B688
	ldr r0, [r2, #0x3c]
	cmp r0, #0x7f
	bgt _0806B67E
	adds r0, r4, #1
	b _0806B6A8
_0806B67E:
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B688:
	cmp r0, #3
	bne _0806B6B0
	ldr r1, [r2, #0x3c]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806B69A
	adds r0, r4, #1
	b _0806B6A8
_0806B69A:
	adds r0, r1, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B6A6:
	adds r0, r4, #3
_0806B6A8:
	lsls r0, r6
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
	strh r0, [r2, #0x2c]
_0806B6B0:
	ldrh r1, [r2, #0x2c]
	ldr r0, _0806B6C4 @ =0x00003FF0
	cmp r1, r0
	bls _0806B6BC
	movs r0, #0
	strh r0, [r2, #0x2c]
_0806B6BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B6C4: .4byte 0x00003FF0

	thumb_func_start sub_806B6C8
sub_806B6C8: @ 0x0806B6C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x94
	movs r0, #0
	mov ip, r0
	str r0, [sp]
	mov r0, sp
	mov r1, ip
	strb r1, [r0, #8]
	mov r0, ip
	str r0, [sp, #4]
	mov r0, sp
	strb r1, [r0, #9]
	adds r4, r5, #0
	adds r4, #0xb8
	ldrb r0, [r4]
	adds r0, #0x11
	strb r0, [r4]
	movs r0, #0xb9
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r0, #0x29
	mov r1, r8
	strb r0, [r1]
	adds r7, r5, #0
	adds r7, #0xba
	ldrb r0, [r7]
	adds r0, #0x11
	strb r0, [r7]
	adds r6, r5, #0
	adds r6, #0xbb
	ldrb r0, [r6]
	adds r0, #0x29
	strb r0, [r6]
	str r3, [sp, #0x1c]
	movs r0, #0x10
	ldrsh r1, [r3, r0]
	ldr r2, _0806B784 @ =gCamera
	ldr r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r0, #0x12
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	mov r0, sp
	mov r1, ip
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	bl sub_806CAA4
	mov ip, r0
	ldrb r0, [r4]
	subs r0, #0x11
	strb r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #0x29
	strb r0, [r1]
	ldrb r0, [r7]
	subs r0, #0x11
	strb r0, [r7]
	ldrb r0, [r6]
	subs r0, #0x29
	strb r0, [r6]
	mov r0, sp
	ldrb r0, [r0, #9]
	strb r0, [r5, #0x15]
	mov r0, sp
	ldrb r0, [r0, #0xa]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r0, sp
	ldrb r1, [r0, #0xb]
	adds r0, r5, #0
	adds r0, #0x27
	strb r1, [r0]
	mov r0, ip
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B784: .4byte gCamera

	thumb_func_start sub_806B788
sub_806B788: @ 0x0806B788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r2, _0806B7F0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r0, [r7, #0x2e]
	mov ip, r0
	mov r8, r2
	mov r1, ip
	cmp r1, #0
	bne _0806B7D8
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r3, _0806B7F4 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	adds r4, r0, #0
	adds r4, #0xa
	mov r0, ip
	adds r0, #1
	strh r0, [r7, #0x2e]
	ldr r2, [r3]
	adds r2, r2, r4
	str r2, [sp]
	ldr r0, [r3, #0x14]
	adds r1, r0, #0
	subs r1, #0x32
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r0, #0x1b
	str r0, [sp, #0xc]
	ldr r1, _0806B7F8 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
_0806B7D8:
	ldrb r0, [r7, #0x1c]
	cmp r0, #4
	bne _0806B836
	movs r2, #0
	ldr r4, _0806B7FC @ =sub_806CEB8
	ldr r3, _0806B800 @ =gPlayers
_0806B7E4:
	cmp r2, #0
	bne _0806B808
	ldr r0, _0806B804 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806B812
	.align 2, 0
_0806B7F0: .4byte gCurTask
_0806B7F4: .4byte gCamera
_0806B7F8: .4byte sub_807A37C
_0806B7FC: .4byte sub_806CEB8
_0806B800: .4byte gPlayers
_0806B804: .4byte gStageData
_0806B808:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806B812:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r1, r6, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806B7E4
	mov r1, r8
	ldr r0, [r1]
	str r4, [r0, #8]
_0806B836:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806B844
sub_806B844: @ 0x0806B844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r6, #0x90
	lsls r6, r6, #3
	movs r1, #0x1c
	mov sb, r1
	movs r2, #0
	str r2, [sp, #4]
	movs r4, #0
	mov r1, r8
	adds r1, #0x25
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806B876
	strb r2, [r1]
	mov r7, r8
	adds r7, #0x23
	b _0806B8BC
_0806B876:
	mov r0, r8
	adds r0, #0x94
	ldrh r1, [r0, #0x10]
	str r0, [sp, #8]
	cmp r1, #0xf0
	bls _0806B884
	b _0806BC3E
_0806B884:
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	cmp r0, #0xa0
	ble _0806B88E
	b _0806BC3E
_0806B88E:
	cmp r0, #0
	bge _0806B894
	b _0806BC3E
_0806B894:
	mov r0, r8
	adds r0, #0x23
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0
	bne _0806B8B6
	mov r2, r8
	ldrb r0, [r2, #0x1d]
	cmp r0, #0
	beq _0806B8B6
	mov r0, r8
	bl sub_806B6C8
	cmp r0, #1
	bne _0806B8B6
	movs r4, #1
_0806B8B6:
	cmp r4, #0
	bne _0806B8BC
	b _0806BA3C
_0806B8BC:
	movs r0, #0x3c
	mov r1, r8
	strb r0, [r1, #0x14]
	ldrb r4, [r1, #0x1e]
	ldrb r5, [r1, #0x1f]
	mov r0, r8
	bl sub_806AA40
	mov r2, r8
	strb r4, [r2, #0x1e]
	strb r5, [r2, #0x1f]
	mov r0, r8
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	bne _0806B904
	adds r0, #6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0806B8F4
	mov r1, r8
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	str r6, [r2, #0x40]
	b _0806B974
_0806B8F4:
	mov r0, r8
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	rsbs r0, r6, #0
	mov r1, r8
	str r0, [r1, #0x40]
	b _0806B974
_0806B904:
	cmp r1, #1
	bne _0806B932
	mov r0, r8
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B924
	mov r0, r8
	adds r0, #0x24
	strb r1, [r0]
	rsbs r0, r6, #0
	mov r2, r8
	str r0, [r2, #0x40]
	b _0806B974
_0806B924:
	mov r1, r8
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	str r6, [r0, #0x40]
	b _0806B974
_0806B932:
	cmp r1, #3
	bne _0806B946
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0806B958
	b _0806B968
_0806B946:
	cmp r1, #2
	bne _0806B974
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0806B968
_0806B958:
	mov r0, r8
	adds r0, #0x24
	movs r1, #1
	strb r1, [r0]
	rsbs r0, r6, #0
	mov r1, r8
	str r0, [r1, #0x44]
	b _0806B974
_0806B968:
	mov r1, r8
	adds r1, #0x24
	movs r0, #0xff
	strb r0, [r1]
	mov r2, r8
	str r6, [r2, #0x44]
_0806B974:
	movs r0, #0x8f
	bl m4aSongNumStart
	bl sub_807A468
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	subs r1, r0, #1
	mov r2, r8
	strb r1, [r2, #0x1d]
	ldr r2, _0806B9A8 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _0806B9B6
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0806B9AC
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0806B9B6
	mov r0, r8
	ldrb r1, [r0, #0x1d]
	movs r0, #3
	bl sub_8027674
	b _0806B9B6
	.align 2, 0
_0806B9A8: .4byte gStageData
_0806B9AC:
	mov r2, r8
	ldrb r1, [r2, #0x1d]
	movs r0, #4
	bl sub_8027674
_0806B9B6:
	ldr r0, _0806B9D0 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806B9D4
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	cmp r0, #4
	bne _0806B9E2
	movs r0, #0x33
	bl sub_80299D4
	b _0806B9E2
	.align 2, 0
_0806B9D0: .4byte gStageData
_0806B9D4:
	mov r2, r8
	ldrb r0, [r2, #0x1d]
	cmp r0, #3
	bne _0806B9E2
	movs r0, #0x33
	bl sub_80299D4
_0806B9E2:
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	bne _0806B9F4
	ldr r0, _0806B9F0 @ =0x0000FFFF
	strh r0, [r1, #0x30]
	b _0806B9FA
	.align 2, 0
_0806B9F0: .4byte 0x0000FFFF
_0806B9F4:
	movs r0, #0x3c
	mov r2, r8
	strh r0, [r2, #0x30]
_0806B9FA:
	ldr r2, _0806BA30 @ =gUnknown_080D5780
	ldrh r1, [r2, #0x18]
	mov r0, r8
	adds r0, #0xa0
	strh r1, [r0]
	ldrb r0, [r2, #0x1a]
	mov r1, r8
	adds r1, #0xae
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x7a
	strb r0, [r7]
	ldr r0, _0806BA34 @ =0x000004BE
	movs r1, #0
	movs r2, #0x7a
	movs r3, #1
	bl sub_8078DB0
	ldr r0, _0806BA38 @ =0x000004BF
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	b _0806BBFA
	.align 2, 0
_0806BA30: .4byte gUnknown_080D5780
_0806BA34: .4byte 0x000004BE
_0806BA38: .4byte 0x000004BF
_0806BA3C:
	mov r0, r8
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806BA48
	b _0806BBFA
_0806BA48:
	movs r0, #0
	str r0, [sp]
_0806BA4C:
	ldr r1, [sp]
	cmp r1, #0
	bne _0806BA5C
	ldr r0, _0806BA58 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806BA66
	.align 2, 0
_0806BA58: .4byte gStageData
_0806BA5C:
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806BA66:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806BABC @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	mov r0, sl
	bl sub_802C080
	cmp r0, #0
	beq _0806BA82
	b _0806BBEA
_0806BA82:
	mov r2, sl
	ldr r4, [r2, #0x10]
	asrs r5, r4, #8
	mov r3, sl
	adds r3, #0xe0
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	ldr r2, [r2, #0x14]
	asrs r6, r2, #8
	adds r1, #0x31
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r6, r6, r0
	mov r1, r8
	ldr r0, [r1]
	asrs r7, r0, #8
	subs r1, r5, r7
	mov ip, r0
	cmp r1, #0
	blt _0806BAC0
	cmp r1, sb
	blt _0806BAC6
	b _0806BAE2
	.align 2, 0
_0806BABC: .4byte gPlayers
_0806BAC0:
	subs r0, r7, r5
	cmp r0, sb
	bge _0806BAE2
_0806BAC6:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BAD8
	cmp r1, sb
	blt _0806BADE
	b _0806BAE2
_0806BAD8:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BAE2
_0806BADE:
	movs r0, #1
	str r0, [sp, #4]
_0806BAE2:
	asrs r5, r4, #8
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	asrs r6, r2, #8
	adds r1, #0x33
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r6, r6, r0
	mov r1, ip
	asrs r0, r1, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0806BB0C
	cmp r1, sb
	blt _0806BB12
	b _0806BB2E
_0806BB0C:
	subs r0, r0, r5
	cmp r0, sb
	bge _0806BB2E
_0806BB12:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BB24
	cmp r1, sb
	blt _0806BB2A
	b _0806BB2E
_0806BB24:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BB2E
_0806BB2A:
	movs r0, #1
	str r0, [sp, #4]
_0806BB2E:
	asrs r5, r4, #8
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r5, r1
	asrs r6, r2, #8
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	mov r1, ip
	asrs r0, r1, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0806BB5A
	cmp r1, sb
	blt _0806BB60
	b _0806BB7C
_0806BB5A:
	subs r0, r0, r5
	cmp r0, sb
	bge _0806BB7C
_0806BB60:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BB72
	cmp r1, sb
	blt _0806BB78
	b _0806BB7C
_0806BB72:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BB7C
_0806BB78:
	movs r0, #1
	str r0, [sp, #4]
_0806BB7C:
	asrs r5, r4, #8
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r5, r5, r1
	asrs r6, r2, #8
	adds r0, #0x33
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	mov r1, ip
	asrs r0, r1, #8
	subs r1, r5, r0
	cmp r1, #0
	blt _0806BBA8
	cmp r1, sb
	blt _0806BBAE
	b _0806BBCA
_0806BBA8:
	subs r0, r0, r5
	cmp r0, sb
	bge _0806BBCA
_0806BBAE:
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r1, r6, r0
	cmp r1, #0
	blt _0806BBC0
	cmp r1, sb
	blt _0806BBC6
	b _0806BBCA
_0806BBC0:
	subs r0, r0, r6
	cmp r0, sb
	bge _0806BBCA
_0806BBC6:
	movs r0, #1
	str r0, [sp, #4]
_0806BBCA:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0806BBE6
	mov r0, sl
	bl Player_8014550
	ldr r1, _0806BC1C @ =gUnknown_080D5780
	ldrh r0, [r1, #0x10]
	ldr r2, [sp, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_0806BBE6:
	movs r0, #0
	str r0, [sp, #4]
_0806BBEA:
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #1
	bhi _0806BBFA
	b _0806BA4C
_0806BBFA:
	mov r1, r8
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	bne _0806BC3E
	ldr r1, _0806BC20 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806BC34
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0806BC2C
	ldr r0, _0806BC24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806BC28 @ =sub_806C12C
	str r0, [r1, #8]
	b _0806BC3E
	.align 2, 0
_0806BC1C: .4byte gUnknown_080D5780
_0806BC20: .4byte gStageData
_0806BC24: .4byte gCurTask
_0806BC28: .4byte sub_806C12C
_0806BC2C:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_0806BC34:
	mov r0, r8
	bl sub_806CA28
	movs r0, #1
	b _0806BC40
_0806BC3E:
	movs r0, #0
_0806BC40:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_806BC50
sub_806BC50: @ 0x0806BC50
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x23
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0806BC66
	subs r0, r2, #1
	strb r0, [r1]
_0806BC66:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _0806BC94 @ =gCamera
	ldr r1, [r2]
	subs r5, r0, r1
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r6, r0, r1
	adds r4, r3, #0
	adds r4, #0x94
	adds r2, r3, #0
	adds r2, #0x60
	adds r0, r3, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806BC98
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	b _0806BC9E
	.align 2, 0
_0806BC94: .4byte gCamera
_0806BC98:
	ldr r0, [r4, #8]
	ldr r1, _0806BD04 @ =0xFFFBFFFF
	ands r0, r1
_0806BC9E:
	str r0, [r4, #8]
	strh r5, [r4, #0x10]
	strh r6, [r4, #0x12]
	ldrh r0, [r3, #0x2c]
	lsrs r0, r0, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r2, #8]
	adds r0, r4, #0
	adds r1, r2, #0
	bl TransformSprite
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r3, _0806BD08 @ =gCamera
	ldr r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x12
	ldrsh r2, [r4, r1]
	ldr r1, [r3, #4]
	adds r1, r1, r2
	lsls r1, r1, #8
	bl sub_8004D68
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r5, #0
	bne _0806BCFA
	ldr r2, _0806BD0C @ =gUnknown_080D5780
	ldrb r1, [r2, #0xa]
	ldrb r0, [r4, #0x1a]
	cmp r0, r1
	beq _0806BCFA
	ldrh r0, [r2, #8]
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0806BCFA:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806BD04: .4byte 0xFFFBFFFF
_0806BD08: .4byte gCamera
_0806BD0C: .4byte gUnknown_080D5780

	thumb_func_start CreateBoss2Entrance
CreateBoss2Entrance: @ 0x0806BD10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0806BDB8 @ =Task_Boss2Entrance
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806BDBC @ =TaskDestructor_Boss2Entrance
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	str r5, [r6]
	movs r0, #0xe0
	lsls r0, r0, #3
	str r0, [r6, #8]
	ldr r0, _0806BDC0 @ =0xFFFFCE00
	str r0, [r6, #0xc]
	ldr r5, _0806BDC4 @ =gCamera
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0806BDC8 @ =0x03000010
	adds r4, r4, r0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	ldr r0, _0806BDCC @ =0x0000037F
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, [r5, #0x18]
	ldr r0, [r5]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r5, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806BDB8: .4byte Task_Boss2Entrance
_0806BDBC: .4byte TaskDestructor_Boss2Entrance
_0806BDC0: .4byte 0xFFFFCE00
_0806BDC4: .4byte gCamera
_0806BDC8: .4byte 0x03000010
_0806BDCC: .4byte 0x0000037F

	thumb_func_start Task_Boss2Entrance
Task_Boss2Entrance: @ 0x0806BDD0
	push {r4, lr}
	ldr r0, _0806BDF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0806BE06
	ldr r0, [r4, #0xc]
	ldr r1, _0806BDFC @ =0xFFFFE700
	cmp r0, r1
	bge _0806BE00
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _0806BE06
	.align 2, 0
_0806BDF8: .4byte gCurTask
_0806BDFC: .4byte 0xFFFFE700
_0806BE00:
	str r1, [r4, #0xc]
	movs r0, #2
	strb r0, [r2]
_0806BE06:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r3, _0806BE50 @ =gCamera
	ldr r2, [r3, #0x18]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806BE4A
	ldr r0, _0806BE54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806BE58 @ =sub_806BE5C
	str r0, [r1, #8]
_0806BE4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BE50: .4byte gCamera
_0806BE54: .4byte gCurTask
_0806BE58: .4byte sub_806BE5C

	thumb_func_start sub_806BE5C
sub_806BE5C: @ 0x0806BE5C
	push {r4, r5, lr}
	ldr r5, _0806BEB4 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0806BEB8 @ =0x03000010
	adds r0, r0, r1
	ldr r3, _0806BEBC @ =gCamera
	ldr r2, [r3, #0x18]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	cmn r1, r0
	bhs _0806BEAE
	ldr r0, [r5]
	bl TaskDestroy
_0806BEAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BEB4: .4byte gCurTask
_0806BEB8: .4byte 0x03000010
_0806BEBC: .4byte gCamera

	thumb_func_start CreateBoss2Exit
CreateBoss2Exit: @ 0x0806BEC0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0806BF5C @ =Task_Boss2ExitInit
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806BF60 @ =TaskDestructor_Boss2Exit
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	str r6, [r5]
	ldr r0, _0806BF64 @ =0xFFFFF800
	str r0, [r5, #8]
	ldr r0, _0806BF68 @ =0xFFFFCE00
	str r0, [r5, #0xc]
	ldr r0, _0806BF6C @ =0x03000010
	adds r4, r4, r0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r6, #0
	movs r3, #0
	ldr r0, _0806BF70 @ =0x0000037F
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r2, _0806BF74 @ =gCamera
	ldr r1, [r2, #0x18]
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF5C: .4byte Task_Boss2ExitInit
_0806BF60: .4byte TaskDestructor_Boss2Exit
_0806BF64: .4byte 0xFFFFF800
_0806BF68: .4byte 0xFFFFCE00
_0806BF6C: .4byte 0x03000010
_0806BF70: .4byte 0x0000037F
_0806BF74: .4byte gCamera

	thumb_func_start Task_Boss2ExitInit
Task_Boss2ExitInit: @ 0x0806BF78
	push {r4, lr}
	ldr r0, _0806BFA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0806BFAE
	ldr r0, [r4, #0xc]
	ldr r1, _0806BFA4 @ =0xFFFFE700
	cmp r0, r1
	bge _0806BFA8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _0806BFAE
	.align 2, 0
_0806BFA0: .4byte gCurTask
_0806BFA4: .4byte 0xFFFFE700
_0806BFA8:
	str r1, [r4, #0xc]
	movs r0, #2
	strb r0, [r2]
_0806BFAE:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r3, _0806BFF8 @ =gCamera
	ldr r2, [r3, #0x1c]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806BFF2
	ldr r0, _0806BFFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C000 @ =sub_806C004
	str r0, [r1, #8]
_0806BFF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BFF8: .4byte gCamera
_0806BFFC: .4byte gCurTask
_0806C000: .4byte sub_806C004

	thumb_func_start sub_806C004
sub_806C004: @ 0x0806C004
	push {r4, r5, lr}
	ldr r5, _0806C064 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x10
	adds r0, r0, r1
	ldr r3, _0806C068 @ =gCamera
	ldr r2, [r3, #0x1c]
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r1, r1, r2
	asrs r1, r1, #1
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	bl sub_806D17C
	cmp r0, #1
	bne _0806C05C
	ldr r0, [r4]
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
_0806C05C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C064: .4byte gCurTask
_0806C068: .4byte gCamera

	thumb_func_start sub_806C06C
sub_806C06C: @ 0x0806C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r6, sb
	adds r6, #0x10
	movs r4, #0
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r2, _0806C0A0 @ =gCamera
	ldr r0, [r2]
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0x12
	ldrsh r1, [r6, r0]
	ldr r0, [r2, #4]
	adds r7, r1, r0
	movs r5, #0
_0806C094:
	cmp r5, #0
	bne _0806C0A8
	ldr r0, _0806C0A4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806C0B2
	.align 2, 0
_0806C0A0: .4byte gCamera
_0806C0A4: .4byte gStageData
_0806C0A8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806C0B2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806C0E0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r5, #1
	cmp r0, #0
	bne _0806C116
	str r0, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	cmp r0, #0
	beq _0806C116
	b _0806C102
	.align 2, 0
_0806C0E0: .4byte gPlayers
_0806C0E4:
	mov r1, sb
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	cmp r0, #4
	bne _0806C0F8
	ldr r0, [r4, #0x10]
	ldr r1, _0806C0F4 @ =0xFFFFFF00
	b _0806C0FE
	.align 2, 0
_0806C0F4: .4byte 0xFFFFFF00
_0806C0F8:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_0806C0FE:
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0806C102:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	cmp r0, #0
	bne _0806C0E4
_0806C116:
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806C094
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806C12C
sub_806C12C: @ 0x0806C12C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _0806C1B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806C1BC @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r6, #0x28
	str r6, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806C1C0 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	ldr r0, _0806C1C4 @ =0x0300006C
	adds r5, r5, r0
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r5, #0
	bl sub_80BE46C
	adds r0, r4, #0
	bl sub_806BC50
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C1B8: .4byte gCurTask
_0806C1BC: .4byte gCamera
_0806C1C0: .4byte gBgAffineRegs
_0806C1C4: .4byte 0x0300006C

	thumb_func_start sub_806C1C8
sub_806C1C8: @ 0x0806C1C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _0806C2DC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _0806C2E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806C2E4 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	ldr r0, _0806C2E8 @ =0x0300006C
	adds r4, r4, r0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	movs r1, #0
	ldr r3, _0806C2EC @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C240:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C240
	adds r0, r6, #0
	bl sub_806CFD4
	adds r4, r0, #0
	cmp r4, #1
	bne _0806C2C0
	ldr r2, _0806C2E0 @ =gCamera
	ldr r0, [r2]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r6]
	movs r1, #0
	str r1, [r6, #0x44]
	str r1, [r6, #0x40]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x38]
	str r1, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x24
	strb r4, [r0]
	movs r3, #0
	strh r1, [r6, #0x2a]
	strb r3, [r6, #0x17]
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	strb r4, [r6, #0x16]
	adds r2, r6, #0
	adds r2, #0x94
	ldr r0, _0806C2F0 @ =gUnknown_080D5780
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, _0806C2DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C2F4 @ =sub_806C2F8
	str r0, [r1, #8]
_0806C2C0:
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r6, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C2DC: .4byte gCurTask
_0806C2E0: .4byte gCamera
_0806C2E4: .4byte gBgAffineRegs
_0806C2E8: .4byte 0x0300006C
_0806C2EC: .4byte gPlayers
_0806C2F0: .4byte gUnknown_080D5780
_0806C2F4: .4byte sub_806C2F8

	thumb_func_start sub_806C2F8
sub_806C2F8: @ 0x0806C2F8
	push {r4, lr}
	ldr r0, _0806C364 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0
	ldr r3, _0806C368 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C30E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C30E
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0806C350
	adds r0, r4, #0
	adds r0, #0xc4
	adds r1, r4, #0
	adds r1, #0x48
	adds r2, r4, #0
	adds r2, #0x16
	bl sub_8078920
	movs r0, #0
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
_0806C350:
	ldrb r0, [r4, #0x19]
	cmp r0, #5
	bls _0806C35E
	ldr r0, _0806C364 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C36C @ =sub_806C370
	str r0, [r1, #8]
_0806C35E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C364: .4byte gCurTask
_0806C368: .4byte gPlayers
_0806C36C: .4byte sub_806C370

	thumb_func_start sub_806C370
sub_806C370: @ 0x0806C370
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _0806C45C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _0806C460 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r1, #0
	ldr r7, _0806C464 @ =gBgAffineRegs
	ldr r4, _0806C468 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C3A8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C3A8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x18]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x1c]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x18]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, r6, #0
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	ldrh r0, [r6, #0x2c]
	subs r0, #0xe0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806C46C @ =0x00003FF0
	cmp r0, r1
	bls _0806C430
	strh r1, [r6, #0x2c]
_0806C430:
	adds r0, r6, #0
	bl sub_806C9C4
	ldr r0, [sp, #0x14]
	cmp r0, #0xa
	ble _0806C442
	adds r0, r6, #0
	bl sub_806C5D4
_0806C442:
	adds r0, r6, #0
	bl sub_806C6FC
	cmp r0, #1
	bne _0806C4DE
	ldr r4, [r6, #0x3c]
	cmp r4, #0
	beq _0806C474
	ldr r0, _0806C45C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C470 @ =sub_806C4F8
	b _0806C4DC
	.align 2, 0
_0806C45C: .4byte gCurTask
_0806C460: .4byte gCamera
_0806C464: .4byte gBgAffineRegs
_0806C468: .4byte gPlayers
_0806C46C: .4byte 0x00003FF0
_0806C470: .4byte sub_806C4F8
_0806C474:
	ldr r3, _0806C4E8 @ =gSineTable
	ldrb r1, [r6, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	rsbs r2, r2, #0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r1, r2, #5
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r0, r2
	str r2, [sp, #0x20]
	lsls r1, r3, #5
	ldr r0, [r6, #4]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0x24]
	asrs r1, r2, #8
	str r1, [sp, #0x20]
	adds r2, r3, #0
	asrs r0, r2, #8
	str r4, [sp]
	ldr r2, _0806C4EC @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r0
	str r1, [r6, #4]
	strh r4, [r6, #0x2a]
	ldr r0, _0806C4F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C4F4 @ =sub_806C7B0
_0806C4DC:
	str r0, [r1, #8]
_0806C4DE:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C4E8: .4byte gSineTable
_0806C4EC: .4byte sa2__sub_801EE64
_0806C4F0: .4byte gCurTask
_0806C4F4: .4byte sub_806C7B0

	thumb_func_start sub_806C4F8
sub_806C4F8: @ 0x0806C4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0806C5BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r1, #0
	ldr r7, _0806C5C0 @ =gCamera
	ldr r0, _0806C5C4 @ =gBgAffineRegs
	mov ip, r0
	ldr r5, _0806C5C8 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C516:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C516
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r7]
	subs r1, r1, r0
	adds r3, r1, #0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r7, #4]
	subs r0, r0, r2
	adds r4, r0, #0
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, ip
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, r6, #0
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	ldrh r0, [r6, #0x2c]
	subs r0, #0xe0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806C5CC @ =0x00003FF0
	cmp r0, r1
	bls _0806C59C
	strh r1, [r6, #0x2c]
_0806C59C:
	adds r0, r6, #0
	bl sub_806C9C4
	adds r0, r6, #0
	bl sub_806CF70
	cmp r0, #1
	bne _0806C5B4
	ldr r0, _0806C5BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C5D0 @ =sub_806C370
	str r0, [r1, #8]
_0806C5B4:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C5BC: .4byte gCurTask
_0806C5C0: .4byte gCamera
_0806C5C4: .4byte gBgAffineRegs
_0806C5C8: .4byte gPlayers
_0806C5CC: .4byte 0x00003FF0
_0806C5D0: .4byte sub_806C370

	thumb_func_start sub_806C5D4
sub_806C5D4: @ 0x0806C5D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	movs r0, #0
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, _0806C6A0 @ =gSineTable
	ldrb r1, [r7, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	rsbs r2, r2, #0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r1, r2, #5
	ldr r0, [r7]
	adds r0, r0, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r0, r2
	str r2, [sp, #8]
	lsls r1, r3, #5
	ldr r0, [r7, #4]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0xc]
	adds r1, r2, #0
	asrs r6, r1, #8
	str r6, [sp, #8]
	adds r0, r3, #0
	asrs r0, r0, #8
	str r0, [sp, #0x10]
	movs r3, #8
	rsbs r3, r3, #0
	mov r1, sb
	str r1, [sp]
	ldr r4, _0806C6A4 @ =sa2__sub_801ED24
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	movs r2, #0
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov sb, r5
	mov r0, r8
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	ldr r3, [r7]
	asrs r2, r3, #8
	adds r1, r2, #0
	subs r1, #0x1e
	ldr r0, _0806C6A8 @ =gCamera
	ldr r0, [r0]
	cmp r1, r0
	bge _0806C6AC
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bge _0806C680
	rsbs r0, r0, #0
_0806C680:
	str r0, [r7, #0x38]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r0, r3, r0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	b _0806C6E0
	.align 2, 0
_0806C6A0: .4byte gSineTable
_0806C6A4: .4byte sa2__sub_801ED24
_0806C6A8: .4byte gCamera
_0806C6AC:
	adds r1, r2, #0
	adds r1, #0x1e
	adds r0, #0xf0
	cmp r1, r0
	ble _0806C6E0
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bge _0806C6BE
	rsbs r0, r0, #0
_0806C6BE:
	rsbs r0, r0, #0
	str r0, [r7, #0x38]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	adds r0, r3, r0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
_0806C6E0:
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806C6FC
sub_806C6FC: @ 0x0806C6FC
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	movs r6, #0
	ldr r4, [r0, #4]
	adds r3, r4, #0
	asrs r3, r3, #8
	asrs r0, r4, #8
	ldr r5, _0806C770 @ =gCamera
	ldr r1, [r5, #4]
	subs r0, r0, r1
	cmp r0, #0x14
	ble _0806C722
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x30
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0806C722:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0806C778
	lsls r0, r0, #8
	adds r0, r4, r0
	mov r1, ip
	str r0, [r1, #4]
	adds r1, #0x24
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0806C774 @ =gUnknown_080D57C0
	mov r4, ip
	ldrh r0, [r4, #0x2a]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #8
	lsls r0, r0, #9
	subs r1, r1, r0
	str r1, [r4, #0x3c]
	str r2, [r4, #0x44]
	ldrh r0, [r4, #0x2a]
	cmp r0, #3
	bhi _0806C75C
	adds r0, #1
	strh r0, [r4, #0x2a]
_0806C75C:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	movs r0, #1
	b _0806C7A8
	.align 2, 0
_0806C770: .4byte gCamera
_0806C774: .4byte gUnknown_080D57C0
_0806C778:
	mov r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	mov r2, ip
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _0806C79C
	str r1, [r2, #0x3c]
_0806C79C:
	mov r4, ip
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0
_0806C7A8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_806C7B0
sub_806C7B0: @ 0x0806C7B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0806C8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _0806C8A4 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r1, #0
	ldr r7, _0806C8A8 @ =gBgAffineRegs
	ldr r4, _0806C8AC @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C7E4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C7E4
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, r6, #0
	adds r4, #0x6c
	movs r7, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	strb r7, [r6, #0x16]
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0806C898
	strh r0, [r6, #0x2a]
	strb r7, [r6, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r6, #0
	adds r1, #0x48
	adds r2, r6, #0
	adds r2, #0x16
	bl sub_80789EC
	ldr r2, _0806C8B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806C8B4 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806C8A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C8B8 @ =sub_806C8BC
	str r0, [r1, #8]
_0806C898:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C8A0: .4byte gCurTask
_0806C8A4: .4byte gCamera
_0806C8A8: .4byte gBgAffineRegs
_0806C8AC: .4byte gPlayers
_0806C8B0: .4byte gDispCnt
_0806C8B4: .4byte 0x0000FBFF
_0806C8B8: .4byte sub_806C8BC

	thumb_func_start sub_806C8BC
sub_806C8BC: @ 0x0806C8BC
	push {r4, r5, lr}
	ldr r0, _0806C944 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, _0806C948 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r5, #0x48]
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r1, #0
	ldr r3, _0806C94C @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C8EC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C8EC
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0806C932
	ldrh r0, [r5, #0x2a]
	cmp r0, #1
	bhi _0806C932
	adds r0, #1
	movs r4, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r1, #0x48
	adds r2, r5, #0
	adds r2, #0x16
	bl sub_80789EC
	strb r4, [r5, #0x18]
_0806C932:
	ldrb r0, [r5, #0x16]
	cmp r0, #1
	bhi _0806C950
	adds r0, r5, #0
	adds r0, #0xc4
	bl UpdateSpriteAnimation
	b _0806C95E
	.align 2, 0
_0806C944: .4byte gCurTask
_0806C948: .4byte gCamera
_0806C94C: .4byte gPlayers
_0806C950:
	ldr r0, _0806C964 @ =0x00000221
	bl m4aSongNumStart
	ldr r0, _0806C968 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C96C @ =sub_806C970
	str r0, [r1, #8]
_0806C95E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C964: .4byte 0x00000221
_0806C968: .4byte gCurTask
_0806C96C: .4byte sub_806C970

	thumb_func_start sub_806C970
sub_806C970: @ 0x0806C970
	push {r4, r5, r6, lr}
	ldr r2, _0806C9B8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r3, #0
	adds r5, r2, #0
	ldr r6, _0806C9BC @ =sub_806B788
	ldr r4, _0806C9C0 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C98A:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0806C98A
	movs r0, #0
	strh r0, [r1, #0x2e]
	movs r0, #3
	strb r0, [r1, #0x1b]
	strb r0, [r1, #0x1c]
	ldr r0, [r5]
	str r6, [r0, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C9B8: .4byte gCurTask
_0806C9BC: .4byte sub_806B788
_0806C9C0: .4byte gPlayers

	thumb_func_start sub_806C9C4
sub_806C9C4: @ 0x0806C9C4
	push {lr}
	adds r3, r0, #0
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r2, _0806CA18 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r3, #0x48]
	lsls r0, r0, #8
	str r0, [r3, #0x4c]
	ldrh r0, [r3, #0x2e]
	adds r0, #1
	strh r0, [r3, #0x2e]
	ldr r2, _0806CA1C @ =gUnknown_080D57C5
	ldrb r1, [r3, #0x17]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _0806CA24
	movs r0, #0
	strh r0, [r3, #0x2e]
	ldrb r0, [r3, #0x17]
	adds r0, #1
	strb r0, [r3, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0806CA20
	adds r0, r3, #0
	adds r0, #0x48
	adds r1, r3, #0
	adds r1, #0x17
	bl sub_80781C0
	b _0806CA24
	.align 2, 0
_0806CA18: .4byte gCamera
_0806CA1C: .4byte gUnknown_080D57C5
_0806CA20:
	movs r0, #3
	strb r0, [r3, #0x17]
_0806CA24:
	pop {r0}
	bx r0

	thumb_func_start sub_806CA28
sub_806CA28: @ 0x0806CA28
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x2e]
	movs r5, #0
	ldr r6, _0806CA48 @ =gPlayers
_0806CA38:
	cmp r5, #0
	beq _0806CA4C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0806CA50
	.align 2, 0
_0806CA48: .4byte gPlayers
_0806CA4C:
	ldr r0, _0806CA9C @ =gStageData
	ldrb r1, [r0, #6]
_0806CA50:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806CA78
	adds r0, r4, #0
	bl Player_8005380
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
_0806CA78:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806CA38
	adds r2, r7, #0
	adds r2, #0x94
	ldr r0, _0806CAA0 @ =gUnknown_080D5780
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA9C: .4byte gStageData
_0806CAA0: .4byte gUnknown_080D5780

	thumb_func_start sub_806CAA4
sub_806CAA4: @ 0x0806CAA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	asrs r7, r0, #8
	ldr r0, [r5, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r5, #0x1c]
	mov r8, r1
	lsls r0, r7, #8
	lsls r1, r6, #8
	bl sub_8004D68
	movs r0, #0
	mov sl, r0
_0806CADC:
	mov r1, sl
	cmp r1, #0
	bne _0806CAEC
	ldr r0, _0806CAE8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806CAF6
	.align 2, 0
_0806CAE8: .4byte gStageData
_0806CAEC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806CAF6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806CB60 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0806CB12
	b _0806CC8C
_0806CB12:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0806CB2E
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0806CB2E
	movs r0, #1
	str r0, [sp, #8]
_0806CB2E:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0806CB3A
	b _0806CC8C
_0806CB3A:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CB64
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806CB5C
	b _0806CC8C
_0806CB5C:
	b _0806CBE6
	.align 2, 0
_0806CB60: .4byte gPlayers
_0806CB64:
	str r4, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CBC6
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CB8A
	mov r1, sb
	strb r1, [r5, #0xa]
	b _0806CB8E
_0806CB8A:
	movs r0, #0xff
	strb r0, [r5, #0xa]
_0806CB8E:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CB9A
	movs r0, #1
	b _0806CB9C
_0806CB9A:
	movs r0, #0xff
_0806CB9C:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r0, sl
	cmp r0, #0
	bne _0806CBB4
	ldr r0, _0806CBB0 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CBBE
	.align 2, 0
_0806CBB0: .4byte gStageData
_0806CBB4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CBBE:
	strb r0, [r5, #9]
	movs r1, #1
	str r1, [sp, #8]
	b _0806CC8C
_0806CBC6:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CC4E
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC04
_0806CBE6:
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0806CC8C
_0806CC04:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CC10
	mov r0, sb
	b _0806CC12
_0806CC10:
	movs r0, #0xff
_0806CC12:
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CC20
	movs r0, #1
	b _0806CC22
_0806CC20:
	movs r0, #0xff
_0806CC22:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r1, sl
	cmp r1, #0
	bne _0806CC3C
	ldr r0, _0806CC38 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CC46
	.align 2, 0
_0806CC38: .4byte gStageData
_0806CC3C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CC46:
	strb r0, [r5, #9]
	movs r0, #1
	str r0, [sp, #8]
	b _0806CC8C
_0806CC4E:
	str r4, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CC8C
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC8C
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0806CC8C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0806CC9C
	b _0806CADC
_0806CC9C:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806CCB0
sub_806CCB0: @ 0x0806CCB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CD1C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806CDB0
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r1, r1, r0
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	ldr r1, _0806CD20 @ =gSineTable
	lsrs r2, r0, #0x10
	asrs r0, r0, #0xf
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0806CD24
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0806CD10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0806CD10:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0806CD40
	b _0806CD3A
	.align 2, 0
_0806CD1C: .4byte gCurTask
_0806CD20: .4byte gSineTable
_0806CD24:
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CD32
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0806CD32:
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CD40
_0806CD3A:
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
_0806CD40:
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0806CD4A
	rsbs r0, r0, #0
_0806CD4A:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0806CD64
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0806CD5E
	strh r1, [r4, #0x1c]
	b _0806CD64
_0806CD5E:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
_0806CD64:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0806CD6E
	rsbs r0, r0, #0
_0806CD6E:
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0806CD88
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0806CD82
	strh r1, [r4, #0x18]
	b _0806CD88
_0806CD82:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
_0806CD88:
	ldr r0, _0806CDA0 @ =gSineTable
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0806CDA4
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0806CDA8
	.align 2, 0
_0806CDA0: .4byte gSineTable
_0806CDA4:
	movs r0, #0x80
	lsls r0, r0, #2
_0806CDA8:
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl Player_800DB30
_0806CDB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CDB8
sub_0806CDB8: @ 0x0806CDB8
	push {r4, r5, lr}
	ldr r1, _0806CDF8 @ =gStageData
	adds r5, r1, #0
	adds r5, #0x88
	ldr r1, [r5]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0806CE04
	ldr r0, _0806CDFC @ =0x0300005F
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3, #0x1d]
	adds r0, r3, #0
	bl sub_806CA28
	ldr r1, [r5]
	ldr r0, _0806CE00 @ =sub_806C1C8
	str r0, [r1, #8]
	b _0806CE22
	.align 2, 0
_0806CDF8: .4byte gStageData
_0806CDFC: .4byte 0x0300005F
_0806CE00: .4byte sub_806C1C8
_0806CE04:
	cmp r1, #1
	blt _0806CE22
	cmp r1, #4
	bgt _0806CE22
	cmp r1, #3
	blt _0806CE22
	ldrb r1, [r3, #0x1d]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806CE22
	ldr r0, _0806CE28 @ =0x03000025
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_0806CE22:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE28: .4byte 0x03000025

	thumb_func_start Task_Boss2Init
Task_Boss2Init: @ 0x0806CE2C
	push {r4, lr}
	ldr r4, _0806CE4C @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806CE50
	adds r0, r2, #0
	bl TaskDestroy
	b _0806CE6A
	.align 2, 0
_0806CE4C: .4byte gCurTask
_0806CE50:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CE64
	ldr r1, [r4]
	ldr r0, _0806CE60 @ =sub_806CE74
	b _0806CE68
	.align 2, 0
_0806CE60: .4byte sub_806CE74
_0806CE64:
	ldr r1, [r4]
	ldr r0, _0806CE70 @ =sub_806ABD4
_0806CE68:
	str r0, [r1, #8]
_0806CE6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE70: .4byte sub_806ABD4

	thumb_func_start sub_806CE74
sub_806CE74: @ 0x0806CE74
	push {r4, lr}
	ldr r4, _0806CE94 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806CE98
	adds r0, r2, #0
	bl TaskDestroy
	b _0806CEAC
	.align 2, 0
_0806CE94: .4byte gCurTask
_0806CE98:
	cmp r0, #2
	bne _0806CEAC
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CEAC
	ldr r1, [r4]
	ldr r0, _0806CEB4 @ =sub_806ABD4
	str r0, [r1, #8]
_0806CEAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEB4: .4byte sub_806ABD4

	thumb_func_start sub_806CEB8
sub_806CEB8: @ 0x0806CEB8
	push {r4, lr}
	ldr r0, _0806CEDC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0806CEE0 @ =0x03000094
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, [r4, #0x10]
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEDC: .4byte gCurTask
_0806CEE0: .4byte 0x03000094

	thumb_func_start TaskDestructor_Boss2
TaskDestructor_Boss2: @ 0x0806CEE4
	bx lr
	.align 2, 0

	thumb_func_start sub_806CEE8
sub_806CEE8: @ 0x0806CEE8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806CEFC
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _0806CF24
	b _0806CF12
_0806CEFC:
	cmp r0, #0
	bne _0806CF08
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _0806CF12
	b _0806CF24
_0806CF08:
	cmp r0, #2
	bne _0806CF1A
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	ble _0806CF24
_0806CF12:
	adds r0, r1, #0
	bl sub_806B5A8
	b _0806CF32
_0806CF1A:
	cmp r0, #3
	bne _0806CF32
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	ble _0806CF2C
_0806CF24:
	adds r0, r1, #0
	bl sub_806B484
	b _0806CF32
_0806CF2C:
	adds r0, r1, #0
	bl sub_806B5A8
_0806CF32:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806CF38
sub_806CF38: @ 0x0806CF38
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	bl sub_806B6C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x94
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x48]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x4c]
	str r0, [sp, #0x14]
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	str r0, [sp]
	mov r0, sp
	strb r2, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806CF70
sub_806CF70: @ 0x0806CF70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldr r1, [r4, #4]
	adds r3, r1, #0
	asrs r3, r3, #8
	asrs r1, r1, #8
	ldr r5, _0806CFC8 @ =gCamera
	ldr r0, [r5, #4]
	subs r1, r1, r0
	cmp r1, #0xa
	ble _0806CF94
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x30
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0806CF94:
	cmp r3, #0xa
	ble _0806CF9E
	adds r0, r4, #0
	bl sub_806C5D4
_0806CF9E:
	lsls r0, r6, #0x18
	cmp r0, #0
	blt _0806CFCC
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	ldr r2, [r4, #0x3c]
	adds r2, r2, r1
	str r2, [r4, #0x3c]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r4, #4]
	movs r0, #0
	b _0806CFCE
	.align 2, 0
_0806CFC8: .4byte gCamera
_0806CFCC:
	movs r0, #1
_0806CFCE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_806CFD4
sub_806CFD4: @ 0x0806CFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, _0806D000 @ =gCamera
	ldr r1, [r1, #4]
	subs r3, r0, r1
	lsls r3, r3, #8
	ldr r0, _0806D004 @ =0xFFFF8800
	cmp r3, r0
	ble _0806CFF2
	ldr r5, _0806D008 @ =0xFFFFFC00
	adds r3, r3, r5
	cmp r3, r0
	bge _0806D00C
_0806CFF2:
	adds r3, r0, #0
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #1
	b _0806D014
	.align 2, 0
_0806D000: .4byte gCamera
_0806D004: .4byte 0xFFFF8800
_0806D008: .4byte 0xFFFFFC00
_0806D00C:
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #0
_0806D014:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806D01C
sub_806D01C: @ 0x0806D01C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806D048 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806D04C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806D050 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D058
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D054 @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D048: .4byte gPseudoRandom
_0806D04C: .4byte 0x00196225
_0806D050: .4byte 0x3C6EF35F
_0806D054: .4byte 0xFFFFF900
_0806D058:
	adds r0, r3, #0
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D06C @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D06C: .4byte 0xFFFFF900
_0806D070:
	ldr r0, _0806D078 @ =0xFFFFFF00
_0806D072:
	str r0, [r3, #0x40]
	pop {r0}
	bx r0
	.align 2, 0
_0806D078: .4byte 0xFFFFFF00

	thumb_func_start sub_806D07C
sub_806D07C: @ 0x0806D07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D0E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D0E4 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D0E0: .4byte gCamera
_0806D0E4: .4byte gBgAffineRegs

	thumb_func_start sub_806D0E8
sub_806D0E8: @ 0x0806D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D14C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D150 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D14C: .4byte gCamera
_0806D150: .4byte gBgAffineRegs

	thumb_func_start TaskDestructor_Boss2Entrance
TaskDestructor_Boss2Entrance: @ 0x0806D154
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Boss2Exit
TaskDestructor_Boss2Exit: @ 0x0806D168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806D17C
sub_806D17C: @ 0x0806D17C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _0806D18C @ =0xFFFFBA00
	cmp r1, r0
	bgt _0806D190
	movs r0, #1
	b _0806D198
	.align 2, 0
_0806D18C: .4byte 0xFFFFBA00
_0806D190:
	ldr r3, _0806D19C @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
	movs r0, #0
_0806D198:
	pop {r1}
	bx r1
	.align 2, 0
_0806D19C: .4byte 0xFFFFFF00
