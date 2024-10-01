
.syntax unified
.text
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    ldr r0, _0802F6F0 @ =gCurTask
    ldr r0, [r0]
    ldrh r1, [r0, #6]
    movs r0, #0xc0
    lsls r0, r0, #0x12
    adds r7, r1, r0
    str r7, [sp, #4]
    adds r0, #0x2c
    adds r0, r0, r1
    mov sl, r0
    ldr r0, [r7, #0x10]
    mov sb, r0
    ldr r0, _0802F6F4 @ =0x03000054
    adds r2, r1, r0
    ldrb r0, [r2]
    cmp r0, #0xff
    beq _0802F6D6
    adds r1, r0, #0
    movs r0, #0x2a
    muls r0, r1, r0
    add r0, sb
    str r0, [r7, #0x10]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
_0802F6D6:
    ldr r0, [r7, #0x10]
    mov r1, sb
    subs r1, r1, r0
    mov sb, r1
    movs r1, #0
_0802F6E0:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F6FC
    ldr r0, _0802F6F8 @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F706
    .align 2, 0
_0802F6F0: .4byte gCurTask
_0802F6F4: .4byte 0x03000054
_0802F6F8: .4byte gStageData
_0802F6FC:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F706:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    ldr r1, _0802F798 @ =gPlayers
    adds r4, r0, r1
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r0, [r0]
    movs r1, #0x1c
    ands r1, r0
    cmp r1, #4
    beq _0802F72C
    cmp r1, #8
    beq _0802F72C
    cmp r1, #0x10
    beq _0802F72C
    b _0802F8E0
_0802F72C:
    adds r0, r4, #0
    bl sub_802C0D4
    cmp r0, #0
    beq _0802F738
    b _0802F8E0
_0802F738:
    ldr r0, [r4, #4]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F756
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F756
    ldr r0, [r4, #0x14]
    mov r1, sb
    subs r0, r0, r1
    str r0, [r4, #0x14]
    adds r0, r4, #0
    bl Player_80149E4
_0802F756:
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, [r7, #0x10]
    asrs r2, r2, #8
    movs r6, #0
    str r6, [sp]
    mov r0, sl
    adds r3, r4, #0
    bl sub_8020950
    adds r5, r0, #0
    movs r3, #0x80
    lsls r3, r3, #9
    ands r0, r3
    cmp r0, #0
    beq _0802F79C
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x14]
    adds r1, r1, r0
    str r1, [r4, #0x14]
    adds r0, r4, #0
    adds r0, #0x26
    strb r6, [r0]
    adds r0, r4, #0
    bl sub_801226C
    ldr r6, [sp, #4]
    adds r6, #0x55
    cmp r0, #0
    bge _0802F832
    b _0802F7F2
    .align 2, 0
_0802F798: .4byte gPlayers
_0802F79C:
    ldr r2, [sp, #4]
    adds r2, #0x55
    ldrb r1, [r2]
    movs r0, #8
    ands r0, r1
    adds r6, r2, #0
    cmp r0, #0
    bne _0802F7AE
    b _0802F8E0
_0802F7AE:
    movs r0, #0x80
    lsls r0, r0, #0xa
    ands r0, r5
    cmp r0, #0
    beq _0802F832
    ldr r0, [r4, #4]
    ands r0, r3
    cmp r0, #0
    beq _0802F7CC
    ldr r1, [r4, #0x14]
    ldr r0, _0802F7C8 @ =0xFFFFFC00
    b _0802F7D2
    .align 2, 0
_0802F7C8: .4byte 0xFFFFFC00
_0802F7CC:
    ldr r1, [r4, #0x14]
    movs r0, #0x80
    lsls r0, r0, #3
_0802F7D2:
    adds r1, r1, r0
    lsls r0, r5, #0x18
    asrs r0, r0, #0x10
    adds r1, r1, r0
    str r1, [r4, #0x14]
    movs r0, #0
    strh r0, [r4, #0x1a]
    ldr r0, _0802F804 @ =gStageData
    ldrb r0, [r0, #3]
    cmp r0, #7
    beq _0802F832
    adds r0, r4, #0
    bl sub_8012368
    cmp r0, #0
    bge _0802F808
_0802F7F2:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F832
    adds r0, r4, #0
    bl sub_8008E38
    b _0802F832
    .align 2, 0
_0802F804: .4byte gStageData
_0802F808:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F822
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F822
    cmp r0, #0xf5
    bne _0802F832
_0802F822:
    adds r0, r4, #0
    bl Player_8012FE0
    movs r0, #0x18
    strh r0, [r4, #0x30]
    adds r0, r4, #0
    bl Player_800DAF4
_0802F832:
    ldrb r1, [r6]
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    beq _0802F8E0
    movs r0, #0xc0
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F8E0
    lsls r1, r5, #0x10
    asrs r1, r1, #0x18
    lsls r1, r1, #8
    ldr r0, [r4, #0x10]
    adds r0, r0, r1
    str r0, [r4, #0x10]
    movs r0, #0
    strh r0, [r4, #0x18]
    movs r0, #0x80
    lsls r0, r0, #0xb
    ands r0, r5
    cmp r0, #0
    beq _0802F86A
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F87E
_0802F86A:
    movs r0, #0x80
    lsls r0, r0, #0xc
    ands r0, r5
    cmp r0, #0
    beq _0802F882
    ldr r0, [r4, #4]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _0802F882
_0802F87E:
    movs r0, #0
    strh r0, [r4, #0x1c]
_0802F882:
    ldrh r1, [r4, #0x30]
    adds r0, r1, #0
    subs r0, #0xee
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #1
    bls _0802F89C
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf4
    beq _0802F89C
    cmp r0, #0xf5
    bne _0802F8AC
_0802F89C:
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F8AC
    adds r0, r4, #0
    bl sub_8008E38
_0802F8AC:
    adds r0, r4, #0
    bl sub_801246C
    cmp r0, #0
    bge _0802F8C6
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F8C6
    adds r0, r4, #0
    bl sub_8008E38
_0802F8C6:
    adds r0, r4, #0
    bl sub_8012550
    cmp r0, #0
    bge _0802F8E0
    adds r0, r4, #0
    bl sub_802C080
    cmp r0, #0
    bne _0802F8E0
    adds r0, r4, #0
    bl sub_8008E38
_0802F8E0:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bgt _0802F8F0
    b _0802F6E0
_0802F8F0:
    mov r0, sl
    bl sub_802F1B8
    lsls r0, r0, #0x10
    cmp r0, #0
    beq _0802F95E
    movs r1, #0
    ldr r2, _0802F910 @ =gPlayers
_0802F900:
    lsls r0, r1, #0x10
    mov r8, r0
    cmp r0, #0
    bne _0802F918
    ldr r0, _0802F914 @ =gStageData
    ldrb r1, [r0, #6]
    b _0802F922
    .align 2, 0
_0802F910: .4byte gPlayers
_0802F914: .4byte gStageData
_0802F918:
    adds r0, r4, #0
    adds r0, #0x2b
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
_0802F922:
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    adds r4, r0, r2
    ldr r1, [r4, #4]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802F94E
    ldr r0, [r4, #0x6c]
    cmp r0, sl
    bne _0802F94E
    movs r0, #0x21
    rsbs r0, r0, #0
    ands r1, r0
    movs r0, #4
    orrs r1, r0
    str r1, [r4, #4]
    movs r0, #0
    str r0, [r4, #0x6c]
_0802F94E:
    movs r0, #0x80
    lsls r0, r0, #9
    add r0, r8
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    ble _0802F900
    b _0802F9AE
_0802F95E:
    ldr r0, [sp, #4]
    adds r0, #0x55
    ldrb r1, [r0]
    movs r0, #0x10
    ands r0, r1
    cmp r0, #0
    beq _0802F9A6
    ldr r4, [sp, #4]
    adds r4, #0x54
    ldrb r0, [r4]
    cmp r0, #0xff
    beq _0802F9A6
    ldr r0, [r7, #0x10]
    asrs r0, r0, #8
    mov r1, sl
    adds r1, #0x27
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    ldr r1, [r7, #0xc]
    asrs r1, r1, #8
    ldr r2, _0802F9C0 @ =sub_8051F54
    str r2, [sp]
    movs r2, #1
    movs r3, #8
    bl sub_8052418
    cmp r0, #0
    bgt _0802F9A6
    lsls r0, r0, #8
    ldr r1, [r7, #0x10]
    adds r1, r1, r0
    str r1, [r7, #0x10]
    movs r0, #0xff
    strb r0, [r4]
_0802F9A6:
    adds r0, r7, #0
    mov r1, sl
    bl DrawPlatformShared
_0802F9AE:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802F9C0: .4byte sub_8051F54

.syntax divided
