
.syntax unified
.text
	push {lr}
	adds r2, r0, #0     @ r2 = p
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08034A32
	b _08034BC8
_08034A32:
	ldrh r0, [r2, #0x30]
	subs r0, #0xa6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5d
	bls _08034A40
	b _08034C2A
_08034A40:
	lsls r0, r0, #2
	ldr r1, _08034A4C @ =_08034A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034A4C: .4byte _08034A50
_08034A50: @ jump table
	.4byte _08034C38_return_2 @ case 0
	.4byte _08034C2A @ case 1
	.4byte _08034C38_return_2 @ case 2
	.4byte _08034C2A @ case 3
	.4byte _08034C2A @ case 4
	.4byte _08034C2A @ case 5
	.4byte _08034C2A @ case 6
	.4byte _08034C2A @ case 7
	.4byte _08034C2A @ case 8
	.4byte _08034C2A @ case 9
	.4byte _08034C2A @ case 10
	.4byte _08034C2A @ case 11
	.4byte _08034C2A @ case 12
	.4byte _08034C2A @ case 13
	.4byte _08034C2A @ case 14
	.4byte _08034C2A @ case 15
	.4byte _08034C2A @ case 16
	.4byte _08034C2A @ case 17
	.4byte _08034C38_return_2 @ case 18
	.4byte _08034C2A @ case 19
	.4byte _08034C2A @ case 20
	.4byte _08034C2A @ case 21
	.4byte _08034C2A @ case 22
	.4byte _08034C2A @ case 23
	.4byte _08034C2A @ case 24
	.4byte _08034C2A @ case 25
	.4byte _08034C2A @ case 26
	.4byte _08034C2A @ case 27
	.4byte _08034C2A @ case 28
	.4byte _08034C2A @ case 29
	.4byte _08034C2A @ case 30
	.4byte _08034C2A @ case 31
	.4byte _08034C2A @ case 32
	.4byte _08034C2A @ case 33
	.4byte _08034C2A @ case 34
	.4byte _08034C2A @ case 35
	.4byte _08034C2A @ case 36
	.4byte _08034C2A @ case 37
	.4byte _08034C38_return_2 @ case 38
	.4byte _08034C2A @ case 39
	.4byte _08034C2A @ case 40
	.4byte _08034C2A @ case 41
	.4byte _08034C2A @ case 42
	.4byte _08034C2A @ case 43
	.4byte _08034C2A @ case 44
	.4byte _08034C2A @ case 45
	.4byte _08034C2A @ case 46
	.4byte _08034C2A @ case 47
	.4byte _08034C2A @ case 48
	.4byte _08034C2A @ case 49
	.4byte _08034C2A @ case 50
	.4byte _08034C2A @ case 51
	.4byte _08034C2A @ case 52
	.4byte _08034C2A @ case 53
	.4byte _08034C2A @ case 54
	.4byte _08034C2A @ case 55
	.4byte _08034C2A @ case 56
	.4byte _08034C2A @ case 57
	.4byte _08034C2A @ case 58
	.4byte _08034C2A @ case 59
	.4byte _08034C4A_return_3 @ case 60
	.4byte _08034C4A_return_3 @ case 61
	.4byte _08034C2A @ case 62
	.4byte _08034C4A_return_3 @ case 63
	.4byte _08034C38_return_2 @ case 64
	.4byte _08034C2A @ case 65
	.4byte _08034C2A @ case 66
	.4byte _08034C2A @ case 67
	.4byte _08034C2A @ case 68
	.4byte _08034C2A @ case 69
	.4byte _08034C2A @ case 70
	.4byte _08034C2A @ case 71
	.4byte _08034C2A @ case 72
	.4byte _08034C2A @ case 73
	.4byte _08034C2A @ case 74
	.4byte _08034C2A @ case 75
	.4byte _08034C2A @ case 76
	.4byte _08034C2A @ case 77
	.4byte _08034C2A @ case 78
	.4byte _08034C2A @ case 79
	.4byte _08034C2A @ case 80
	.4byte _08034C2A @ case 81
	.4byte _08034C2A @ case 82
	.4byte _08034C2A @ case 83
	.4byte _08034C2A @ case 84
	.4byte _08034C2A @ case 85
	.4byte _08034C2A @ case 86
	.4byte _08034C2A @ case 87
	.4byte _08034C38_return_2 @ case 88
	.4byte _08034C4A_return_3 @ case 89
	.4byte _08034C2A @ case 90
	.4byte _08034C2A @ case 91
	.4byte _08034C2A @ case 92
	.4byte _08034C38_return_2 @ case 93
_08034BC8:
	ldrh r1, [r2, #0x34]
	ldr r0, _08034BE4 @ =0x0000020F
	cmp r1, r0
	bgt _08034BF2
	subs r0, #1
	cmp r1, r0
	bge _08034C4A_return_3
	cmp r1, #0x2a
	beq _08034C38_return_2
	cmp r1, #0x2a
	bgt _08034BE8
	cmp r1, #0x26
	beq _08034C24
	b _08034C2A
	.align 2, 0
_08034BE4: .4byte 0x0000020F
_08034BE8:
	cmp r1, #0xcd
	beq _08034C38_return_2
	movs r0, #0xb8
	lsls r0, r0, #1
	b _08034C18
_08034BF2:
	ldr r0, _08034C0C @ =0x000002B1
	cmp r1, r0
	beq _08034C38_return_2
	cmp r1, r0
	bgt _08034C10
	subs r0, #0x9e
	cmp r1, r0
	beq _08034C38_return_2
	adds r0, #0x27
	cmp r1, r0
	beq _08034C4A_return_3
	b _08034C2A
	.align 2, 0
_08034C0C: .4byte 0x000002B1
_08034C10:
	ldr r0, _08034C20 @ =0x000002B2
	cmp r1, r0
	beq _08034C4A_return_3
	adds r0, #5
_08034C18:
	cmp r1, r0
	beq _08034C38_return_2
	b _08034C2A
	.align 2, 0
_08034C20: .4byte 0x000002B2
_08034C24:
	ldrh r0, [r2, #0x36]
	cmp r0, #2
	bne _08034C38_return_2
_08034C2A:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xd5
	bne _08034C3C
	ldrh r0, [r2, #0x36]
	cmp r0, #1
	bne _08034C3C
_08034C38_return_2:
	movs r0, #2
	b _08034C5A
_08034C3C:
	ldr r1, [r2]
	ldr r0, _08034C50 @ =Player_801D73C
	cmp r1, r0
	beq _08034C4A_return_3
	ldr r0, _08034C54 @ =Player_801DF18
	cmp r1, r0
	bne _08034C58_return_1
_08034C4A_return_3:
	movs r0, #3
	b _08034C5A
	.align 2, 0
_08034C50: .4byte Player_801D73C
_08034C54: .4byte Player_801DF18
_08034C58_return_1:
	movs r0, #1
_08034C5A:
	pop {r1}
	bx r1
	.align 2, 0
    
.syntax divided
