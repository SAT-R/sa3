.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_Boulder
Task_Boulder: @ 0x08049AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _08049B30 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, _08049B34 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	ldr r3, _08049B38 @ =0x03000078
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, [r5, #0x78]
	ldr r0, _08049B3C @ =0x00FFFFFF
	ands r1, r0
	cmp r1, #0
	bne _08049B9C
	str r1, [r5, #0x68]
	str r1, [r5, #0x6c]
	str r1, [r5, #0x70]
	ldr r0, _08049B40 @ =0x0300007A
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08049B44 @ =0x0300000C
	adds r7, r2, r1
	movs r1, #0
_08049B20:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08049B48
	ldr r0, _08049B34 @ =gStageData
	ldrb r1, [r0, #6]
	b _08049B52
	.align 2, 0
_08049B30: .4byte gCurTask
_08049B34: .4byte gStageData
_08049B38: .4byte 0x03000078
_08049B3C: .4byte 0x00FFFFFF
_08049B40: .4byte 0x0300007A
_08049B44: .4byte 0x0300000C
_08049B48:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08049B52:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08049BC0 @ =gPlayers
	adds r4, r0, r1
	ldr r1, [r5, #0x60]
	asrs r1, r1, #8
	ldr r2, [r5, #0x64]
	asrs r2, r2, #8
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020874
	cmp r0, #0
	beq _08049B8E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08049B8E
	adds r0, r4, #0
	bl sub_8008E38
_08049B8E:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08049B20
_08049B9C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08049C94
	adds r7, r5, #0
	adds r7, #0xc
	movs r1, #0
_08049BB2:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08049BC8
	ldr r0, _08049BC4 @ =gStageData
	ldrb r1, [r0, #6]
	b _08049BD2
	.align 2, 0
_08049BC0: .4byte gPlayers
_08049BC4: .4byte gStageData
_08049BC8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08049BD2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08049C1C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08049C86
	ldr r1, [r5, #0x60]
	asrs r1, r1, #8
	ldr r2, [r5, #0x64]
	asrs r2, r2, #8
	str r4, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020874
	adds r1, r0, #0
	cmp r1, #0
	beq _08049C86
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08049C20
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _08049C2C
	.align 2, 0
_08049C1C: .4byte gPlayers
_08049C20:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_08049C2C:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08049C46
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _08049C46
	cmp r0, #0xf5
	bne _08049C56
_08049C46:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_800DAF4
_08049C56:
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	ldr r1, [r5, #0x60]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _08049CA4 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r1, r0, #0
	cmp r1, #0
	bge _08049C80
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08049C80:
	adds r0, r4, #0
	bl sub_8014550
_08049C86:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08049BB2
_08049C94:
	bl sub_8049CA8
	bl sub_804A1E0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049CA4: .4byte sub_805217C

	thumb_func_start sub_8049CA8
sub_8049CA8: @ 0x08049CA8
	push {r4, lr}
	ldr r0, _08049CCC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x7a
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08049D58
	lsls r0, r0, #2
	ldr r1, _08049CD0 @ =_08049CD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049CCC: .4byte gCurTask
_08049CD0: .4byte _08049CD4
_08049CD4: @ jump table
	.4byte _08049CEC @ case 0
	.4byte _08049D00 @ case 1
	.4byte _08049D00 @ case 2
	.4byte _08049D00 @ case 3
	.4byte _08049D0A @ case 4
	.4byte _08049D2E @ case 5
_08049CEC:
	ldr r0, _08049CFC @ =0x00000246
	bl sub_8003E28
	adds r0, r4, #0
	bl sub_804A0B0
	b _08049D58
	.align 2, 0
_08049CFC: .4byte 0x00000246
_08049D00:
	bl sub_8049D70
	bl sub_8049FD0
	b _08049D58
_08049D0A:
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08049D58
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #5
	b _08049D56
_08049D2E:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x60]
	adds r0, r4, #0
	adds r0, #0x5e
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
	adds r1, #1
_08049D56:
	strb r0, [r1]
_08049D58:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8049D70
sub_8049D70: @ 0x08049D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08049DE8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x7b
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r0]
	add r0, sp, #8
	strb r1, [r0]
	ldr r4, _08049DEC @ =gSineTable
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	asrs r5, r0, #4
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r4
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	asrs r0, r0, #4
	mov sb, r0
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	movs r0, #8
	mov sl, r0
	ldr r2, _08049DF0 @ =0x0300007A
	adds r3, r3, r2
	ldrb r0, [r3]
	cmp r0, #1
	bne _08049DD6
	movs r4, #4
	mov sl, r4
_08049DD6:
	lsrs r4, r1, #6
	cmp r4, #1
	beq _08049E2C
	cmp r4, #1
	bgt _08049DF4
	cmp r4, #0
	beq _08049DFE
	b _08049EEA
	.align 2, 0
_08049DE8: .4byte gCurTask
_08049DEC: .4byte gSineTable
_08049DF0: .4byte 0x0300007A
_08049DF4:
	cmp r4, #2
	beq _08049E6C
	cmp r4, #3
	beq _08049EB0
	b _08049EEA
_08049DFE:
	ldr r0, [r6, #0x64]
	add r0, sb
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08049E28 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, sl
	bge _08049EEA
	lsls r1, r7, #8
	ldr r0, [r6, #0x64]
	adds r0, r0, r1
	b _08049E96
	.align 2, 0
_08049E28: .4byte sub_805217C
_08049E2C:
	ldr r0, [r6, #0x60]
	adds r0, r0, r5
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	add r1, sb
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08049E68 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, #3
	bgt _08049EEA
	lsls r0, r7, #8
	ldr r1, [r6, #0x60]
	subs r1, r1, r0
	str r1, [r6, #0x60]
	add r0, sp, #8
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08049EEA
	mov r4, r8
	strb r0, [r4]
	b _08049EEA
	.align 2, 0
_08049E68: .4byte sub_805203C
_08049E6C:
	ldr r0, [r6, #0x64]
	add r0, sb
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	adds r1, r1, r5
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08049EAC @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, #3
	bgt _08049EEA
	lsls r1, r7, #8
	ldr r0, [r6, #0x64]
	subs r0, r0, r1
_08049E96:
	str r0, [r6, #0x64]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08049EEA
	mov r0, r8
	strb r1, [r0]
	b _08049EEA
	.align 2, 0
_08049EAC: .4byte sub_805217C
_08049EB0:
	ldr r0, [r6, #0x60]
	adds r0, r0, r5
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	add r1, sb
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08049F5C @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, #3
	bgt _08049EEA
	lsls r1, r7, #8
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08049EEA
	mov r4, r8
	strb r1, [r4]
_08049EEA:
	adds r0, r6, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _08049F64
	ldr r0, [r6, #0x60]
	mov r5, sb
	subs r0, r0, r5
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r4, _08049F5C @ =sub_805203C
	str r4, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r5, r0, #0
	ldr r0, [r6, #0x60]
	add r0, sb
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r5, #0
	blt _08049F36
	cmp r0, #0
	bge _08049F50
_08049F36:
	movs r0, #0
	movs r1, #4
	mov r4, r8
	strb r1, [r4]
	str r0, [r6, #0x68]
	str r0, [r6, #0x6c]
	str r0, [r6, #0x70]
	adds r0, r6, #0
	bl sub_804A104
	ldr r0, _08049F60 @ =0x00000246
	bl sub_8003DF0
_08049F50:
	cmp r7, #0x10
	ble _08049F9E
	movs r0, #3
	mov r5, r8
	strb r0, [r5]
	b _08049F9E
	.align 2, 0
_08049F5C: .4byte sub_805203C
_08049F60: .4byte 0x00000246
_08049F64:
	cmp r1, #3
	beq _08049F6C
	cmp r1, #1
	bne _08049F9E
_08049F6C:
	cmp r7, #0
	bgt _08049F9E
	cmp r1, #1
	bne _08049F84
	movs r1, #0
	movs r0, #2
	mov r2, r8
	strb r0, [r2]
	str r1, [r6, #0x68]
	str r1, [r6, #0x6c]
	str r1, [r6, #0x70]
	b _08049F9E
_08049F84:
	movs r0, #0
	movs r1, #4
	mov r4, r8
	strb r1, [r4]
	str r0, [r6, #0x68]
	str r0, [r6, #0x6c]
	str r0, [r6, #0x70]
	adds r0, r6, #0
	bl sub_804A104
	ldr r0, _08049FCC @ =0x00000246
	bl sub_8003DF0
_08049F9E:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08049FBA
	movs r0, #5
	mov r5, r8
	strb r0, [r5]
	ldr r0, _08049FCC @ =0x00000246
	bl sub_8003E28
_08049FBA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049FCC: .4byte 0x00000246

	thumb_func_start sub_8049FD0
sub_8049FD0: @ 0x08049FD0
	push {r4, r5, r6, lr}
	ldr r0, _0804A004 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0804A008 @ =0x0300007A
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804A078
	ldr r6, _0804A00C @ =0x0300007B
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0
	beq _0804A010
	cmp r2, #0x40
	bgt _0804A010
	ldr r0, [r5, #0x68]
	adds r0, #4
	str r0, [r5, #0x68]
	adds r6, r1, #0
	b _0804A020
	.align 2, 0
_0804A004: .4byte gCurTask
_0804A008: .4byte 0x0300007A
_0804A00C: .4byte 0x0300007B
_0804A010:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0xbf
	ble _0804A020
	ldr r0, [r5, #0x68]
	subs r0, #4
	str r0, [r5, #0x68]
_0804A020:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bge _0804A028
	rsbs r0, r0, #0
_0804A028:
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804A042
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bge _0804A040
	ldr r0, _0804A03C @ =0xFFFFF800
	str r0, [r5, #0x68]
	b _0804A042
	.align 2, 0
_0804A03C: .4byte 0xFFFFF800
_0804A040:
	str r1, [r5, #0x68]
_0804A042:
	ldr r4, [r5, #0x68]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r3, _0804A074 @ =gSineTable
	asrs r1, r6, #0x10
	lsls r0, r1, #3
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [r5, #0x6c]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [r5, #0x70]
	b _0804A08A
	.align 2, 0
_0804A074: .4byte gSineTable
_0804A078:
	cmp r0, #1
	beq _0804A082
	ldr r4, [r5, #0x68]
	cmp r0, #3
	bne _0804A08A
_0804A082:
	ldr r0, [r5, #0x70]
	adds r0, #0x10
	str r0, [r5, #0x70]
	ldr r4, [r5, #0x68]
_0804A08A:
	cmp r4, #0
	bge _0804A098
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804A0A2
_0804A098:
	cmp r4, #0
	ble _0804A0A4
	ldr r0, [r5, #0x14]
	ldr r1, _0804A0AC @ =0xFFFFFBFF
	ands r0, r1
_0804A0A2:
	str r0, [r5, #0x14]
_0804A0A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A0AC: .4byte 0xFFFFFBFF

	thumb_func_start sub_804A0B0
sub_804A0B0: @ 0x0804A0B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _0804A0C6
	movs r0, #0x19
	bl VramMalloc
	str r0, [r5, #0x74]
_0804A0C6:
	ldr r0, [r5, #0x74]
	str r0, [r5, #0xc]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804A100 @ =0x000003A1
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A100: .4byte 0x000003A1

	thumb_func_start sub_804A104
sub_804A104: @ 0x0804A104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _0804A1D8 @ =gUnknown_080D03C8
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	adds r1, r7, #0
	adds r1, #0xc
	ldr r0, [r7, #0x74]
	str r0, [r7, #0xc]
	movs r5, #0
	movs r4, #0
	ldr r0, _0804A1DC @ =0x000003A1
	mov sl, r0
	mov r0, sl
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r1, #0x20]
	str r4, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r1, r7, #0
	adds r1, #0x34
	ldr r0, [r7, #0x74]
	adds r0, #0x80
	str r0, [r7, #0x34]
	mov r0, sl
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	adds r0, r6, #0
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	str r6, [r1, #0x20]
	str r4, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x7c
	strb r5, [r0]
	movs r2, #0
	adds r5, r7, #0
	adds r5, #0x7d
_0804A198:
	movs r1, #0
	lsls r4, r2, #0x10
	asrs r3, r4, #0xe
_0804A19E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r3
	adds r2, r5, r1
	add r1, sp
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0804A19E
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0804A198
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1D8: .4byte gUnknown_080D03C8
_0804A1DC: .4byte 0x000003A1

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
	adds r4, r6, r0
	ldr r2, _0804A264 @ =0x0300000C
	adds r7, r6, r2
	ldr r3, [r4]
	mov sl, r3
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
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	asrs r1, r1, #0x10
	mov r8, r1
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
	mov sl, r1
	movs r3, #0
	ldr r0, [sp]
	mov ip, r0
	ldr r1, [sp, #4]
	str r1, [sp, #8]
	adds r2, #1
	adds r2, r2, r6
	mov r8, r2
	ldr r0, _0804A37C @ =0x0300007F
	adds r5, r6, r0
	ldr r1, _0804A380 @ =0x0300007E
	adds r1, r6, r1
	str r1, [sp, #0xc]
	ldr r2, _0804A384 @ =0x03000080
	adds r4, r6, r2
	subs r0, #0x4b
	adds r0, r0, r6
	mov sb, r0
_0804A2B4:
	lsls r1, r3, #1
	add r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	mov r6, r8
	adds r2, r6, r1
	adds r0, r5, r1
	ldrb r0, [r0]
	ldrb r6, [r2]
	adds r0, r0, r6
	strb r0, [r2]
	ldr r0, [sp, #0xc]
	adds r2, r0, r1
	adds r1, r4, r1
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
	asrs r5, r3, #0x10
	subs r1, r5, r1
	mov r6, sl
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
	asrs r4, r0, #0x10
	subs r1, r4, r1
	ldr r3, [sp, #0xc]
	adds r2, r3, r2
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
	mov r2, r8
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
