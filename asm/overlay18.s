	.include "macros/function.inc"


	.text

	thumb_func_start ov18_0221F800
ov18_0221F800: @ 0x0221F800
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02033478
	blx FUN_020C3790
	blx FUN_020C39BC
	blx FUN_020C3D98
	adds r5, r0, #0
	movs r0, #2
	blx FUN_021D792C
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0x12
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0
	blx ov18_0222F20C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	blx FUN_020C3DAC
	ldr r1, _0221F848 @ =0x04000208
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	pop {r3, r4, r5, pc}
	nop
_0221F848: .4byte 0x04000208
	thumb_func_end ov18_0221F800

	arm_func_start ov18_0221F84C
ov18_0221F84C: @ 0x0221F84C
	push {r4, lr}
	mov r4, r0
	bl FUN_020C3D98
	ldr r1, _0221F870 @ =0x02250D2C
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r4, [r1, #0x4e4]
	bl FUN_020C3DAC
	pop {r4, pc}
	.align 2, 0
_0221F870: .4byte 0x02250D2C
	arm_func_end ov18_0221F84C

	arm_func_start ov18_0221F874
ov18_0221F874: @ 0x0221F874
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_020C3D98
	ldr r1, _0221F8F4 @ =0x02250D2C
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0221F8E4
	mov r0, r5
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221F8E4
	ldr r0, _0221F8F4 @ =0x02250D2C
	sub r1, r5, #1
	ldr r3, [r0]
	mov r2, #0x16
	add r0, r3, #0x1340
	mla r0, r1, r2, r0
	add r1, r3, #0x72
	add r1, r1, #0x1700
	bl FUN_020C4DB0
	mov r0, r4
	bl FUN_020C3DAC
	ldr r0, _0221F8F4 @ =0x02250D2C
	ldr r0, [r0]
	add r0, r0, #0x72
	add r0, r0, #0x1700
	pop {r3, r4, r5, pc}
_0221F8E4:
	mov r0, r4
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0221F8F4: .4byte 0x02250D2C
	arm_func_end ov18_0221F874

	arm_func_start ov18_0221F8F8
ov18_0221F8F8: @ 0x0221F8F8
	push {r4, lr}
	ldr r1, _0221F948 @ =0x02250D2C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0221F940
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221F940
	ldr r0, _0221F948 @ =0x02250D2C
	sub r1, r4, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #7
	moveq r0, #1
	popeq {r4, pc}
_0221F940:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0221F948: .4byte 0x02250D2C
	arm_func_end ov18_0221F8F8

	arm_func_start ov18_0221F94C
ov18_0221F94C: @ 0x0221F94C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl FUN_020C3D98
	mov r6, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _0221F9AC
_0221F96C: @ jump table
	b _0221F97C @ case 0
	b _0221F988 @ case 1
	b _0221F994 @ case 2
	b _0221F9A0 @ case 3
_0221F97C:
	mov r5, #0xa
	mov r4, #4
	b _0221F9BC
_0221F988:
	mov r5, #0xa
	mov r4, #3
	b _0221F9BC
_0221F994:
	mov r5, #0xe
	mov r4, #2
	b _0221F9BC
_0221F9A0:
	mov r5, #7
	mov r4, #5
	b _0221F9BC
_0221F9AC:
	mov r0, r6
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0221F9BC:
	ldr r0, _0221FA28 @ =0x02250D2C
	ldr r0, [r0]
	cmp r0, #0
	beq _0221FA18
	mov r0, r7
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221FA18
	ldr r0, _0221FA28 @ =0x02250D2C
	sub r2, r7, #1
	ldr r1, [r0]
	add r0, r1, r2, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r5, r0
	bne _0221FA18
	add r0, r1, r2, lsl #1
	add r1, r0, #0x1700
	mov r0, r6
	strh r4, [r1, #0x54]
	bl FUN_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FA18:
	mov r0, r6
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0221FA28: .4byte 0x02250D2C
	arm_func_end ov18_0221F94C

	arm_func_start ov18_0221FA2C
ov18_0221FA2C: @ 0x0221FA2C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221FA60
	ldr r0, _0221FA74 @ =0x02250D2C
	sub r1, r6, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	str r5, [r0, #0x4e8]
_0221FA60:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_0221FA78
	pop {r4, r5, r6, pc}
	.align 2, 0
_0221FA74: .4byte 0x02250D2C
	arm_func_end ov18_0221FA2C

	arm_func_start ov18_0221FA78
ov18_0221FA78: @ 0x0221FA78
	push {r3, lr}
	ldr r3, _0221FA9C @ =0x02250D2C
	ldr r3, [r3]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x4e4]
	cmp r3, #0
	popeq {r3, pc}
	blx r3
	pop {r3, pc}
	.align 2, 0
_0221FA9C: .4byte 0x02250D2C
	arm_func_end ov18_0221FA78

	arm_func_start ov18_0221FAA0
ov18_0221FAA0: @ 0x0221FAA0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov r4, r1
	cmp r5, #0x19
	bgt _0221FAF8
	bge _0221FD3C
	cmp r5, #0x11
	bgt _0221FAEC
	bge _0221FEF0
	cmp r5, #3
	bgt _0221FEF0
	cmp r5, #0
	blt _0221FEF0
	beq _0221FB30
	cmp r5, #1
	beq _0221FB54
	cmp r5, #3
	beq _0221FD30
	b _0221FEF0
_0221FAEC:
	cmp r5, #0x15
	beq _0221FB1C
	b _0221FEF0
_0221FAF8:
	cmp r5, #0xff
	bgt _0221FB10
	bge _0221FDDC
	cmp r5, #0x1c
	beq _0221FD44
	b _0221FEF0
_0221FB10:
	cmp r5, #0x100
	beq _0221FE4C
	b _0221FEF0
_0221FB1C:
	mov r2, r4
	mov r0, #0
	mov r1, #1
	bl ov18_0221FA2C
	b _0221FEF0
_0221FB30:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0221FEF0
	cmp r0, #0x10
	bhs _0221FEF0
	mov r2, r4
	mov r1, #2
	bl ov18_0221FA2C
	b _0221FEF0
_0221FB54:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0221FEF0
	cmp r0, #0x10
	bhs _0221FEF0
	ldr r2, _0221FF38 @ =0x02250D2C
	sub r0, r0, #1
	ldr r3, [r2]
	mov r1, #0
	add r0, r3, r0, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2]
	ldrh r2, [r4, #0x10]
	add r0, r0, #0xa8
	add r3, r0, #0x1400
	sub r0, r2, #1
	add r0, r3, r0, lsl #2
	mov r2, #4
	bl FUN_020C4CF4
	ldr r0, _0221FF38 @ =0x02250D2C
	ldrh r1, [r4, #0x10]
	ldr r0, [r0]
	mov r2, #0x16
	add r0, r0, #0x1340
	sub r1, r1, #1
	mla r0, r1, r2, r0
	mov r1, #0
	bl FUN_020C4CF4
	ldrh r0, [r4, #0x10]
	bl ov18_02224400
	ldrh r1, [r4, #0x10]
	ldr r0, _0221FF38 @ =0x02250D2C
	mov r3, #0
	ldr r2, [r0]
	sub r1, r1, #1
	add r1, r2, r1, lsl #1
	add r1, r1, #0x1700
	strh r3, [r1, #0x54]
	ldrh r7, [r4, #0x10]
	ldr r8, [r0]
	sub r2, r3, #1
	sub r6, r7, #1
	add r1, r8, r6
	add r1, r1, #0x1500
	ldrsb r3, [r1, #0x26]
	cmp r3, r2
	beq _0221FC80
	ldr r1, _0221FF3C @ =0x000005D4
	and r2, r3, #0xff
	mul r1, r2, r1
	add r2, r8, r1
	add r8, r2, #0x1d00
	mov r3, #1
	ldrh sb, [r8, #0x4e]
	mvn r2, r3, lsl r7
	and sb, sb, r2
	strh sb, [r8, #0x4e]
	ldr r8, [r0]
	sub sb, r3, #2
	add r8, r8, r1
	add r8, r8, #0x1d00
	ldrh ip, [r8, #0x50]
	orr r3, ip, r3, lsl r7
	strh r3, [r8, #0x50]
	ldr r3, [r0]
	add r3, r3, r6
	add r3, r3, #0x1000
	strb sb, [r3, #0x526]
	ldr r0, [r0]
	add r0, r0, r1
	add r0, r0, #0x1d00
	ldrh r1, [r0, #0x4c]
	and r1, r1, r2
	strh r1, [r0, #0x4c]
_0221FC80:
	ldr r1, _0221FF38 @ =0x02250D2C
	ldrh r2, [r4, #0x10]
	ldr r6, [r1]
	mov r3, #1
	add r0, r6, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, r3, lsl r2
	beq _0221FCCC
	add r0, r6, #0x1000
	ldrb r2, [r0, #0x535]
	sub r2, r2, #1
	strb r2, [r0, #0x535]
	ldr r0, [r1]
	ldrh r1, [r4, #0x10]
	add r0, r0, #0x1500
	ldrh r2, [r0, #0x36]
	mvn r1, r3, lsl r1
	and r1, r2, r1
	strh r1, [r0, #0x36]
_0221FCCC:
	ldrh r0, [r4, #0x10]
	ldr r1, _0221FF38 @ =0x02250D2C
	ldr r2, [r1]
	sub r1, r0, #1
	add r1, r2, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4e8]
	cmp r1, #8
	bne _0221FCFC
	mov r1, #9
	mov r2, #0
	bl ov18_0221FA2C
_0221FCFC:
	ldrh r0, [r4, #0x10]
	mov r2, r4
	mov r1, #3
	bl ov18_0221FA2C
	ldrh r1, [r4, #0x10]
	ldr r0, _0221FF38 @ =0x02250D2C
	mov r3, #0
	ldr r2, [r0]
	sub r0, r1, #1
	add r0, r2, r0, lsl #2
	add r0, r0, #0x1000
	str r3, [r0, #0x4e8]
	b _0221FEF0
_0221FD30:
	mov r0, r4
	bl ov18_02220424
	b _0221FEF0
_0221FD3C:
	bl ov18_022209E8
	b _0221FEF0
_0221FD44:
	mov r8, #0
	ldr r6, _0221FF38 @ =0x02250D2C
	ldr r4, _0221FF3C @ =0x000005D4
	mov r7, r8
_0221FD54:
	mul sb, r8, r4
	ldr r1, [r6]
	add r2, r1, sb
	add r0, r2, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r2, r2, #0x1d00
	ldrhne r3, [r2, #0x50]
	cmpne r3, #0
	beq _0221FDA4
	add r0, r1, #0x6c
	add r0, r0, #0x1800
	ldrh r2, [r2, #0x4e]
	add r0, r0, sb
	add r1, r1, #0x1340
	bl ov18_02221B20
	ldr r0, [r6]
	add r0, r0, sb
	add r0, r0, #0x1d00
	strh r7, [r0, #0x50]
_0221FDA4:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0x10
	blo _0221FD54
	bl ov18_02223E30
	mov r6, r0
	bl ov18_02223E44
	mov r4, r0
	bl ov18_02223E58
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl ov18_02221C4C
	b _0221FEF0
_0221FDDC:
	ldrh r0, [r4, #2]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0221FE3C
_0221FDEC: @ jump table
	b _0221FE3C @ case 0
	b _0221FE2C @ case 1
	b _0221FE3C @ case 2
	b _0221FE3C @ case 3
	b _0221FE2C @ case 4
	b _0221FE2C @ case 5
	b _0221FE2C @ case 6
	b _0221FE3C @ case 7
	b _0221FE2C @ case 8
	b _0221FE2C @ case 9
	b _0221FE3C @ case 10
	b _0221FE3C @ case 11
	b _0221FE3C @ case 12
	b _0221FE3C @ case 13
	b _0221FE3C @ case 14
	b _0221FE3C @ case 15
_0221FE2C:
	mov r0, #0
	mov r1, #9
	bl ov18_02220C10
	b _0221FEF0
_0221FE3C:
	mov r0, #0
	mov r1, #8
	bl ov18_02220C10
	b _0221FEF0
_0221FE4C:
	ldrh r0, [r4]
	cmp r0, #0x1d
	addls pc, pc, r0, lsl #2
	b _0221FEE4
_0221FE5C: @ jump table
	b _0221FED4 @ case 0
	b _0221FEE4 @ case 1
	b _0221FEE4 @ case 2
	b _0221FEE4 @ case 3
	b _0221FEE4 @ case 4
	b _0221FEE4 @ case 5
	b _0221FEE4 @ case 6
	b _0221FED4 @ case 7
	b _0221FED4 @ case 8
	b _0221FEE4 @ case 9
	b _0221FEE4 @ case 10
	b _0221FEE4 @ case 11
	b _0221FEE4 @ case 12
	b _0221FED4 @ case 13
	b _0221FED4 @ case 14
	b _0221FED4 @ case 15
	b _0221FEE4 @ case 16
	b _0221FED4 @ case 17
	b _0221FED4 @ case 18
	b _0221FEE4 @ case 19
	b _0221FEE4 @ case 20
	b _0221FED4 @ case 21
	b _0221FEE4 @ case 22
	b _0221FEE4 @ case 23
	b _0221FEE4 @ case 24
	b _0221FED4 @ case 25
	b _0221FEE4 @ case 26
	b _0221FEE4 @ case 27
	b _0221FEE4 @ case 28
	b _0221FED4 @ case 29
_0221FED4:
	mov r0, #0
	mov r1, #9
	bl ov18_02220C10
	b _0221FEF0
_0221FEE4:
	mov r0, #0
	mov r1, #8
	bl ov18_02220C10
_0221FEF0:
	cmp r5, #0x11
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _0221FF38 @ =0x02250D2C
	mov r0, #0
	ldr r1, [r1]
	mov r2, #0x7d00
	add r3, r1, #0x1000
	ldr r4, [r3, #0x4e4]
	bl FUN_020C4BB8
	ldr r1, _0221FF38 @ =0x02250D2C
	mov r0, #0
	str r0, [r1]
	cmp r4, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r2, r0
	mov r1, #0xc
	blx r4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0221FF38: .4byte 0x02250D2C
_0221FF3C: .4byte 0x000005D4
	arm_func_end ov18_0221FAA0

	arm_func_start ov18_0221FF40
ov18_0221FF40: @ 0x0221FF40
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	movs r6, r1
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0xf
	addhi sp, sp, #0x34
	pophi {r3, r4, r5, r6, r7, r8, pc}
	add r1, sp, #0x20
	mov r2, r6
	add r0, r0, #0xa
	bl ov18_022244C8
	ldr r1, _02220418 @ =0x02250D2C
	ldrb r7, [sp, #0x20]
	ldr r2, [r1]
	sub r3, r6, #1
	add r4, r2, r3, lsl #2
	add r4, r4, #0x1000
	ldr r4, [r4, #0x4e8]
	mov r5, r0
	cmp r7, #0xb
	addls pc, pc, r7, lsl #2
	b _02220410
_0221FF9C: @ jump table
	b _02220410 @ case 0
	b _02220410 @ case 1
	b _02220410 @ case 2
	b _02220410 @ case 3
	b _02220410 @ case 4
	b _02220410 @ case 5
	b _02220410 @ case 6
	b _0221FFCC @ case 7
	b _02220264 @ case 8
	b _0222030C @ case 9
	b _0222037C @ case 10
	b _02220410 @ case 11
_0221FFCC:
	cmp r4, #2
	bne _02220074
	cmp r5, #0
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r2, #0x1d
	bl FUN_020C4DB0
	ldr r2, _02220418 @ =0x02250D2C
	sub r0, r6, #1
	ldr r1, [r2]
	ldr r3, [sp]
	add r1, r1, r0, lsl #2
	add r1, r1, #0x1000
	str r3, [r1, #0x4a8]
	ldr r1, [r2]
	ldrh r3, [sp, #0x1a]
	add r1, r1, r0, lsl #1
	add r1, r1, #0x1400
	strh r3, [r1, #0x8a]
	ldr r1, [r2]
	mov r2, #0x16
	add r1, r1, #0x1340
	mla r1, r0, r2, r1
	add r0, sp, #4
	bl FUN_020C4DB0
	ldr r0, _02220418 @ =0x02250D2C
	sub r2, r6, #1
	ldr r3, [r0]
	mov r0, #0x16
	mul r7, r2, r0
	add r8, r3, #0x1340
	and r1, r6, #0xff
	ldrb r3, [r8, r7]
	lsl r0, r1, #0x1c
	add r2, sp, #4
	bic r1, r3, #0xf0
	orr r1, r1, r0, lsr #24
	strb r1, [r8, r7]
	mov r0, r6
	mov r1, #0xa
	bl ov18_0221FA2C
_02220074:
	cmp r4, #0xa
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	ldrb lr, [r5, #0x1c]
	mov r0, #0
	cmp lr, #0x10
	bhs _022200D0
	ldr r2, _02220418 @ =0x02250D2C
	ldr r1, _0222041C @ =0x000005D4
	ldr r3, [r2]
	mla r4, lr, r1, r3
	add r1, r4, #0x1000
	ldrb r2, [r1, #0xd52]
	cmp r2, #0
	beq _022200D0
	sub r2, r6, #1
	add r3, r3, r2, lsl #2
	ldr r2, [r1, #0xd40]
	add r1, r3, #0x1000
	ldr r3, [r1, #0x4a8]
	ldr r1, [r2, #0x14]
	cmp r3, r1
	beq _022200F0
_022200D0:
	ldr r0, _02220418 @ =0x02250D2C
	sub r1, r6, #1
	ldr r0, [r0]
	mov r2, #4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	b _0222016C
_022200F0:
	mov r5, r0
	add r1, r4, #0x1d00
	mov r3, #1
	b _02220118
_02220100:
	ldrh r2, [r1, #0x4e]
	tst r2, r3, lsl r5
	addne r0, r0, #1
	add r2, r5, #1
	andne r0, r0, #0xff
	and r5, r2, #0xff
_02220118:
	cmp r5, #0x10
	blo _02220100
	ldr r2, _02220418 @ =0x02250D2C
	ldr r1, _0222041C @ =0x000005D4
	ldr r2, [r2]
	mla r1, lr, r1, r2
	add r1, r1, #0x1000
	ldr r1, [r1, #0xd40]
	ldrb r1, [r1, #0x18]
	cmp r0, r1
	blo _0222016C
	sub r0, r6, #1
	add r1, r2, r0, lsl #1
	add r3, r1, #0x1700
	mov r2, #0
	mov r0, r6
	mov r1, #0xb
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_0222016C:
	ldr r3, _02220418 @ =0x02250D2C
	sub ip, r6, #1
	ldr r1, [r3]
	add r0, r1, ip, lsl #1
	add r4, r0, #0x1700
	ldrh r0, [r4, #0x54]
	cmp r0, #3
	beq _0222019C
	cmp r0, #4
	beq _02220248
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_0222019C:
	add r0, r1, #0x1500
	ldrh r0, [r0, #0x36]
	mov r5, #1
	tst r0, r5, lsl r6
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r1, r1, #0x1000
	ldrb r4, [r1, #0x535]
	ldr r2, _0222041C @ =0x000005D4
	mov r0, r6
	add r4, r4, #1
	strb r4, [r1, #0x535]
	ldr r1, [r3]
	mul r4, lr, r2
	add r7, r1, #0x1500
	ldrh r8, [r7, #0x36]
	mov r2, #0
	mov r1, #5
	orr r8, r8, r5, lsl r6
	strh r8, [r7, #0x36]
	ldr r7, [r3]
	add r7, r7, ip
	add r7, r7, #0x1000
	strb lr, [r7, #0x526]
	ldr r7, [r3]
	add r7, r7, #0x4e
	add lr, r7, #0x1d00
	ldrh r7, [lr, r4]
	orr r7, r7, r5, lsl r6
	strh r7, [lr, r4]
	ldr r7, [r3]
	add r7, r7, #0xd50
	add lr, r7, #0x1000
	ldrh r7, [lr, r4]
	orr r5, r7, r5, lsl r6
	strh r5, [lr, r4]
	ldr r3, [r3]
	add r3, r3, ip, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_02220248:
	mov r2, #0
	mov r0, r6
	mov r1, #4
	strh r2, [r4, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_02220264:
	cmp r4, #5
	bne _02220284
	mov r0, r6
	mov r1, #0xe
	mov r2, #0
	bl ov18_0221FA2C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_02220284:
	cmp r4, #0xe
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3, lsl #1
	add r0, r0, #0x1700
	ldrh r0, [r0, #0x54]
	cmp r0, #2
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r7, [r0, #0x526]
	ldr r4, _0222041C @ =0x000005D4
	add r0, r2, #0x14c
	mul r5, r7, r4
	add r7, r0, #0x1c00
	ldrh r4, [r7, r5]
	mov r0, #1
	mov r2, #0
	orr r0, r4, r0, lsl r6
	strh r0, [r7, r5]
	ldr r4, [r1]
	mov r0, r6
	add r4, r4, r5
	add r4, r4, #0x1d00
	strh r2, [r4, #0x48]
	ldr r4, [r1]
	mov r1, #6
	add r3, r4, r3, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_0222030C:
	cmp r4, #6
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x526]
	cmp r4, #0xff
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0222041C @ =0x000005D4
	ldrh r1, [sp, #0x22]
	mla r0, r4, r0, r2
	add r0, r0, #0x1d00
	ldrh r0, [r0, #0x4a]
	bl ov18_02220BE4
	ldr r2, _02220418 @ =0x02250D2C
	ldr r1, _0222041C @ =0x000005D4
	ldr r3, [r2]
	ldr r2, _02220420 @ =0x0224B260
	mla r1, r4, r1, r3
	add r1, r1, #0x1d00
	strh r0, [r1, #0x4a]
	ldr r1, [r2]
	mov r0, #1
	orr r0, r1, r0, lsl r4
	str r0, [r2]
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_0222037C:
	cmp r4, #6
	bne _022203D8
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r3, [r0, #0x526]
	cmp r3, #0xff
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _0222041C @ =0x000005D4
	add r0, r2, #0x14c
	mul r4, r3, r1
	add r5, r0, #0x1c00
	mov r0, #1
	ldrh r1, [r5, r4]
	mvn r0, r0, lsl r6
	and r3, r1, r0
	mov r0, r6
	mov r1, #7
	mov r2, #0
	strh r3, [r5, r4]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022203D8:
	cmp r4, #7
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3, lsl #1
	add r3, r0, #0x1700
	ldrh r0, [r3, #0x54]
	cmp r0, #5
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	mov r2, #0
	mov r0, r6
	mov r1, #8
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
_02220410:
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02220418: .4byte 0x02250D2C
_0222041C: .4byte 0x000005D4
_02220420: .4byte 0x0224B260
	arm_func_end ov18_0221FF40

	arm_func_start ov18_02220424
ov18_02220424: @ 0x02220424
	push {r4, r5, r6, lr}
	mov ip, #0
	ldr r2, _022204C0 @ =0x02250D2C
	ldr r1, _022204C4 @ =0x000005D4
	mov r4, r0
	mov r3, ip
_0222043C:
	ldr r0, [r2]
	mla r5, ip, r1, r0
	add r0, r5, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, r5, #0x1d00
	strhne r3, [r0, #0x4a]
	add r0, ip, #1
	lsl r0, r0, #0x10
	lsr ip, r0, #0x10
	cmp ip, #0x10
	blo _0222043C
	ldr r0, _022204C8 @ =0x0224B260
	mov r1, #0
	ldr r5, _022204CC @ =0x0000FFFF
	str r1, [r0]
	mov r6, #1
_02220480:
	mov r0, r4
	mov r1, r6
	bl FUN_020CE710
	cmp r0, #0
	ldrhne r1, [r0]
	cmpne r1, r5
	cmpne r1, #0
	beq _022204A8
	mov r1, r6
	bl ov18_0221FF40
_022204A8:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xf
	bls _02220480
	pop {r4, r5, r6, pc}
	.align 2, 0
_022204C0: .4byte 0x02250D2C
_022204C4: .4byte 0x000005D4
_022204C8: .4byte 0x0224B260
_022204CC: .4byte 0x0000FFFF
	arm_func_end ov18_02220424

	arm_func_start ov18_022204D0
ov18_022204D0: @ 0x022204D0
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222050C @ =0x02250D2C
	mov r4, r1
	ldr r1, [r2]
	strb r0, [sp]
	add r0, sp, #0
	bl ov18_02224444
	ldr r0, _0222050C @ =0x02250D2C
	mov r1, r4
	ldr r2, [r0]
	mov r0, #6
	bl ov18_0222190C
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222050C: .4byte 0x02250D2C
	arm_func_end ov18_022204D0

	arm_func_start ov18_02220510
ov18_02220510: @ 0x02220510
	push {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, #0
	add r0, sp, #6
	mov r1, r5
	mov r2, #0x10
	mvn r4, #0
	bl FUN_020C4CF4
	ldr r1, _0222069C @ =0x02250D2C
	mov r0, #1
	ldr r1, [r1]
	add ip, sp, #6
_02220540:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _0222056C
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r3, [r2, #0x25]
	ldrb r2, [ip, r3]
	add r2, r2, #1
	strb r2, [ip, r3]
_0222056C:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bls _02220540
	ldr r2, _022206A0 @ =0x02249760
	ldr ip, _022206A4 @ =0x000005D4
	ldrb r3, [r2]
	mov r0, #0
	add lr, sp, #6
_02220594:
	add r2, r3, #1
	lsr r3, r2, #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	and r3, r2, #0xff
	mla r2, r3, ip, r1
	add r2, r2, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	ldrbne r2, [lr, r3]
	cmpne r2, #0
	lslne r0, r3, #0x18
	asrne r4, r0, #0x18
	bne _022205DC
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	blo _02220594
_022205DC:
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, pc}
	ldr r2, _022206A0 @ =0x02249760
	mov r0, #1
	strb r4, [r2]
	mov r3, r0
_02220600:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _02220630
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r2, [r2, #0x25]
	cmp r4, r2
	orreq r2, r5, r3, lsl r0
	lsleq r2, r2, #0x10
	lsreq r5, r2, #0x10
_02220630:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bls _02220600
	mov r2, #3
	add r0, sp, #0
	strb r2, [sp]
	strh r4, [sp, #2]
	bl ov18_02224444
	movs r1, r0
	beq _02220680
	ldr r0, _0222069C @ =0x02250D2C
	ldr r3, _022206A4 @ =0x000005D4
	ldr r0, [r0]
	mov r2, #0xe4
	add r0, r0, #0x388
	add r0, r0, #0x1400
	mla r0, r4, r3, r0
	bl FUN_020C4DB0
_02220680:
	ldr r0, _0222069C @ =0x02250D2C
	mov r1, r5
	ldr r2, [r0]
	mov r0, #0xea
	bl ov18_0222190C
	add sp, sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222069C: .4byte 0x02250D2C
_022206A0: .4byte 0x02249760
_022206A4: .4byte 0x000005D4
	arm_func_end ov18_02220510

	arm_func_start ov18_022206A8
ov18_022206A8: @ 0x022206A8
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	ldr r5, [r0, #0x14]
	ldr r4, [r0, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r5, #0x10
	bl FUN_020C7760
	movs r6, r0
	add r0, sp, #4
	ldreq r6, [r5, #0x18]
	bl FUN_020C7DA0
	ldr r2, [r4]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, sp, #4
	mov r1, r6
	add r3, r2, r3
	bl FUN_020C7FC8
	cmp r0, #0
	beq _02220724
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_020C81D4
	ldr r1, [r4, #4]
	cmp r1, r0
	moveq r0, #2
	streq r0, [r4, #0xc]
	add r0, sp, #4
	bl FUN_020C80C8
_02220724:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	addeq sp, sp, #0x4c
	popeq {r3, r4, r5, r6, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov18_022206A8

	arm_func_start ov18_0222074C
ov18_0222074C: @ 0x0222074C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r5, _022209DC @ =0x02250D2C
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x524]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r4, _022209E0 @ =0x000005D4
	mov r1, #0
_0222077C:
	ldr r0, [r5]
	add r3, r0, #0x1000
	ldrb r0, [r3, #0x525]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	rsb r0, r2, r0, lsl #28
	add r0, r2, r0, ror #28
	strb r0, [r3, #0x525]
	ldr r2, [r5]
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x525]
	mla r3, r0, r4, r2
	add r2, r3, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	addne r2, r3, #0x1d00
	ldrhne r2, [r2, #0x4c]
	cmpne r2, #0
	bne _022207D8
	add r1, r1, #1
	and r1, r1, #0xff
	cmp r1, #0x10
	blo _0222077C
_022207D8:
	cmp r1, #0x10
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov18_02220B68
	ldr r0, _022209DC @ =0x02250D2C
	ldr r2, _022209E0 @ =0x000005D4
	ldr r6, [r0]
	add r0, sp, #8
	add r1, r6, #0x1000
	ldrb r4, [r1, #0x525]
	add r1, r6, #0x12c
	add r3, r6, #0x388
	mul r5, r4, r2
	add r2, r6, r5
	add r2, r2, #0x1d00
	add r1, r1, #0x1c00
	add r3, r3, #0x1400
	ldrh r2, [r2, #0x48]
	add r1, r1, r5
	add r3, r3, r5
	bl ov18_022216E0
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, _022209DC @ =0x02250D2C
	mov r3, #4
	ldr r1, [r0]
	strb r3, [sp]
	add r2, r1, #0x1000
	ldrb r4, [r2, #0x525]
	add r3, r3, #0x5d0
	add r0, sp, #0
	strh r4, [sp, #2]
	ldrb r4, [r2, #0x525]
	mla r2, r4, r3, r1
	add r2, r2, #0x1d00
	ldrh r2, [r2, #0x48]
	strh r2, [sp, #4]
	bl ov18_02224444
	ldr r1, _022209DC @ =0x02250D2C
	ldr r4, _022209E0 @ =0x000005D4
	ldr r5, [r1]
	ldrb r1, [sp, #0x14]
	add r2, r5, #0x1000
	ldrb r2, [r2, #0x525]
	ldr r6, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mla r4, r2, r4, r5
	add r2, r4, r1, lsl #2
	add r5, r4, #0x1000
	ldr r4, [r5, #0xd58]
	add r2, r2, #0x1000
	ldr r2, [r2, #0xd2c]
	ldr r1, [r4, r1, lsl #2]
	sub r2, r6, r2
	add r4, r2, r1
	ldr r5, [r5, #0xd54]
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov18_02223F8C
	cmp r0, #0
	bne _022209A8
	ldr r0, _022209DC @ =0x02250D2C
	ldr r0, [r0]
	add r0, r0, #0xce0
	add r6, r0, #0x7000
	mov r0, r6
	bl ov18_022241EC
	cmp r0, #0
	bne _0222099C
	ldr r0, [r5]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r5]
	bne _0222099C
	add r2, r5, #0x30
	mov r7, #0
	mov r3, r7
	mov ip, r2
_02220920:
	add r0, r2, r3, lsl #4
	ldr r0, [r0, #0xc]
	cmp r0, #2
	bne _0222094C
	cmp r7, #0
	beq _02220948
	ldr r1, [r7]
	ldr r0, [r2, r3, lsl #4]
	cmp r1, r0
	bls _0222094C
_02220948:
	mov r7, ip
_0222094C:
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #0x10
	blt _02220920
	cmp r7, #0
	bne _02220968
	bl FUN_020C42A8
_02220968:
	mov r0, #2
	str r0, [r5]
	mov r0, #1
	str r0, [r7, #0xc]
	bic r0, r4, #0x1f
	str r0, [r7]
	str r7, [r6, #0x10]
	ldr r1, _022209E4 @ =ov18_022206A8
	mov r0, r6
	mov r2, #0
	mov r3, #4
	str r5, [r6, #0x14]
	bl ov18_02224204
_0222099C:
	add sp, sp, #0x18
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_022209A8:
	ldr r0, _022209DC @ =0x02250D2C
	ldr r4, [sp, #0xc]
	ldr r2, [r0]
	ldr r1, _022209E0 @ =0x000005D4
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x525]
	add r0, r4, #6
	mla r1, r3, r1, r2
	add r1, r1, #0x1d00
	ldrh r1, [r1, #0x4c]
	bl ov18_0222190C
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022209DC: .4byte 0x02250D2C
_022209E0: .4byte 0x000005D4
_022209E4: .4byte ov18_022206A8
	arm_func_end ov18_0222074C

	arm_func_start ov18_022209E8
ov18_022209E8: @ 0x022209E8
	push {r4, r5, lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r0, #0
	mov r2, #0xa
	bl FUN_020C4AF0
	mov r3, #1
	ldr r0, _02220B60 @ =0x02250D2C
	mov r4, r3
	ldr ip, [r0]
	mov r5, r3
	mov r0, r3
	mov r1, r3
	mov r2, r3
_02220A20:
	add lr, ip, r3, lsl #2
	add lr, lr, #0x1000
	ldr lr, [lr, #0x4e4]
	cmp lr, #0xb
	addls pc, pc, lr, lsl #2
	b _02220AB4
_02220A38: @ jump table
	b _02220AB4 @ case 0
	b _02220AB4 @ case 1
	b _02220A68 @ case 2
	b _02220AB4 @ case 3
	b _02220A88 @ case 4
	b _02220A78 @ case 5
	b _02220AB4 @ case 6
	b _02220AB4 @ case 7
	b _02220A98 @ case 8
	b _02220AB4 @ case 9
	b _02220AB4 @ case 10
	b _02220AA8 @ case 11
_02220A68:
	ldrh lr, [sp]
	orr lr, lr, r2, lsl r3
	strh lr, [sp]
	b _02220AB4
_02220A78:
	ldrh lr, [sp, #2]
	orr lr, lr, r1, lsl r3
	strh lr, [sp, #2]
	b _02220AB4
_02220A88:
	ldrh lr, [sp, #4]
	orr lr, lr, r0, lsl r3
	strh lr, [sp, #4]
	b _02220AB4
_02220A98:
	ldrh lr, [sp, #6]
	orr lr, lr, r5, lsl r3
	strh lr, [sp, #6]
	b _02220AB4
_02220AA8:
	ldrh lr, [sp, #8]
	orr lr, lr, r4, lsl r3
	strh lr, [sp, #8]
_02220AB4:
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	cmp r3, #0xf
	bls _02220A20
	ldrh r1, [sp, #6]
	cmp r1, #0
	beq _02220AE0
	mov r0, #5
	bl ov18_022204D0
	b _02220B40
_02220AE0:
	ldrh r1, [sp]
	cmp r1, #0
	beq _02220AF8
	mov r0, #1
	bl ov18_022204D0
	b _02220B40
_02220AF8:
	ldrh r1, [sp, #8]
	cmp r1, #0
	beq _02220B10
	mov r0, #6
	bl ov18_022204D0
	b _02220B40
_02220B10:
	ldrh r1, [sp, #4]
	cmp r1, #0
	beq _02220B28
	mov r0, #2
	bl ov18_022204D0
	b _02220B40
_02220B28:
	ldrh r0, [sp, #2]
	cmp r0, #0
	beq _02220B3C
	bl ov18_02220510
	b _02220B40
_02220B3C:
	bl ov18_0222074C
_02220B40:
	cmp r0, #0x15
	addne sp, sp, #0xc
	popne {r4, r5, pc}
	ldr r1, _02220B64 @ =0x0000FFFF
	mov r0, #0
	bl ov18_022204D0
	add sp, sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02220B60: .4byte 0x02250D2C
_02220B64: .4byte 0x0000FFFF
	arm_func_end ov18_022209E8

	arm_func_start ov18_02220B68
ov18_02220B68: @ 0x02220B68
	ldr r1, _02220BD8 @ =0x0224B260
	mov r2, #1
	ldr r1, [r1]
	tst r1, r2, lsl r0
	bxeq lr
	ldr r2, _02220BDC @ =0x02250D2C
	ldr r1, _02220BE0 @ =0x000005D4
	ldr r2, [r2]
	mla ip, r0, r1, r2
	add r0, ip, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, ip, #0x1d00
	ldrhne r1, [r0, #0x4c]
	cmpne r1, #0
	bxeq lr
	ldrh r2, [r0, #0x48]
	ldrh r3, [r0, #0x4a]
	cmp r3, r2
	bhi _02220BCC
	add r1, r3, #2
	cmp r2, r1
	addle r1, r2, #1
	strhle r1, [r0, #0x48]
	bxle lr
_02220BCC:
	add r0, ip, #0x1d00
	strh r3, [r0, #0x48]
	bx lr
	.align 2, 0
_02220BD8: .4byte 0x0224B260
_02220BDC: .4byte 0x02250D2C
_02220BE0: .4byte 0x000005D4
	arm_func_end ov18_02220B68

	arm_func_start ov18_02220BE4
ov18_02220BE4: @ 0x02220BE4
	cmp r1, r0
	movls r1, r0
	mov r0, r1
	bx lr
	arm_func_end ov18_02220BE4

	arm_func_start ov18_02220BF4
ov18_02220BF4: @ 0x02220BF4
	cmp r0, #1
	blo _02220C08
	cmp r0, #0xf
	movls r0, #1
	bxls lr
_02220C08:
	mov r0, #0
	bx lr
	arm_func_end ov18_02220BF4

	arm_func_start ov18_02220C10
ov18_02220C10: @ 0x02220C10
	push {r3, lr}
	strh r1, [sp]
	add r2, sp, #0
	mov r1, #0xd
	bl ov18_0221FA78
	pop {r3, pc}
	arm_func_end ov18_02220C10

	arm_func_start ov18_02220C28
ov18_02220C28: @ 0x02220C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r4, #0
	movs r7, r0
	mov r5, r4
	beq _02220C74
	ldr ip, [r7, #0x2c]
	ldr r3, [r7, #0x24]
	add r1, sp, #0
	mov r2, #0x60
	sub r6, ip, r3
	bl FUN_020C81D4
	cmp r0, #0x60
	mov r0, r7
	mov r1, r6
	mov r2, #0
	addhs r4, sp, #0
	bl FUN_020C81E4
	b _02220C78
_02220C74:
	ldr r4, _02220CA4 @ =0x027FFE00
_02220C78:
	cmp r4, #0
	beq _02220C98
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	add r1, r1, #0x268
	add r5, r1, r0
	cmp r5, #0x10000
	movlo r5, #0x10000
_02220C98:
	mov r0, r5
	add sp, sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02220CA4: .4byte 0x027FFE00
	arm_func_end ov18_02220C28

	arm_func_start ov18_02220CA8
ov18_02220CA8: @ 0x02220CA8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	str r2, [sp, #4]
	cmp r2, #0x164
	mov r2, #0
	mov sl, r0
	mov sb, r1
	str r2, [sp, #0x10]
	blo _02221100
	ldr r4, [sp, #4]
	mov r5, sb
	str r2, [sp, #0xc]
	mov r6, r2
	mov fp, r2
	cmp sl, #0
	add r5, r5, #0x160
	sub r4, r4, #0x160
	beq _02220D20
	ldr r7, [sl, #0x2c]
	ldr r3, [sl, #0x24]
	mov r2, #0x160
	sub r3, r7, r3
	str r3, [sp, #8]
	bl FUN_020C81D4
	cmp r0, #0x160
	ldr r7, [sb, #0x80]
	movlt r4, fp
	cmp r7, #0
	moveq r7, #0x1000000
	b _02220D9C
_02220D20:
	ldr r0, _0222110C @ =0x027FFE00
	mov r1, #1
	ldr r7, [r0, #0x80]
	add r0, sp, #0x24
	cmp r7, #0
	moveq r7, #0x1000000
	str r1, [sp, #0xc]
	bl FUN_020C7DA0
	ldr r0, _02221110 @ =0x02249768
	mov r1, #3
	bl FUN_020C7760
	mov r1, r0
	mvn r0, #0
	str r0, [sp]
	add r0, sp, #0x24
	mov r2, #0
	add r3, r7, #0x88
	bl FUN_020C7FC8
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x48]
	ldr r0, _0222110C @ =0x027FFE00
	sub r1, r2, r1
	str r1, [sp, #8]
	mov r1, sb
	mov r2, #0x160
	add sl, sp, #0x24
	bl FUN_020C4DB0
	ldr r0, [sb, #0x60]
	orr r0, r0, #0x6000
	orr r0, r0, #0x400000
	str r0, [sb, #0x60]
_02220D9C:
	cmp r4, #0x88
	movlo r4, #0
	blo _02220DD4
	ldr r1, [sp, #8]
	mov r0, sl
	add r1, r1, r7
	mov r2, #0
	bl FUN_020C81E4
	mov r0, sl
	mov r1, r5
	mov r2, #0x88
	bl FUN_020C81D4
	add r5, r5, #0x88
	sub r4, r4, #0x88
_02220DD4:
	cmp r4, #0x70
	blo _02220E4C
	mov r0, r5
	mov r6, r5
	bl ov18_02223F10
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, #0
	mov r2, #0x160
	mov r3, sb
	add r5, r5, #0x70
	sub r4, r4, #0x70
	bl ov18_02223F24
	ldr r8, [sl, #8]
	mov r7, #0
	b _02220E1C
_02220E18:
	add r7, r7, #1
_02220E1C:
	cmp r7, #3
	bge _02220E30
	ldrsb r0, [r8, r7]
	cmp r0, #0
	bne _02220E18
_02220E30:
	mov r0, r8
	mov r2, r7
	add r1, r6, #0x10
	bl FUN_020C4DB0
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	b _02220E50
_02220E4C:
	mov r4, #0
_02220E50:
	cmp r4, #0x10
	movlo r4, #0
	blo _02220EA0
	mov r0, #0
	str r0, [r5]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x20]
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r5, #4]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x30]
	add r0, r0, r1
	add r0, r2, r0
	mov fp, r5
	str r0, [r5, #8]
	add r5, r5, #0x10
	sub r4, r4, #0x10
_02220EA0:
	ldr r1, [sb, #0x2c]
	ldr r0, [sb, #0x3c]
	add r0, r1, r0
	cmp r4, r0
	blo _02220F48
	ldr r7, [sl, #0x24]
	ldr r1, [fp, #4]
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FUN_020C81E4
	ldr r2, [sb, #0x2c]
	mov r0, sl
	mov r1, r5
	bl FUN_020C81D4
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #4]
	ldr r2, [sb, #0x2c]
	mov r0, r6
	mov r3, r5
	bl ov18_02223F24
	ldr r1, [fp, #8]
	ldr r4, [sb, #0x2c]
	mov r0, sl
	mov r2, #0
	sub r1, r1, r7
	bl FUN_020C81E4
	ldr r2, [sb, #0x3c]
	mov r0, sl
	add r1, r5, r4
	bl FUN_020C81D4
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #8]
	ldr r2, [sb, #0x3c]
	add r3, r5, r4
	mov r0, r6
	bl ov18_02223F24
	mov r0, #1
	str r0, [sp, #0x10]
	b _0222101C
_02220F48:
	cmp r4, #0xcc00
	blo _0222101C
	ldr r7, [sl, #0x24]
	ldr r4, [fp, #4]
	mov r0, sl
	sub r1, r4, r7
	mov r2, #0
	bl FUN_020C81E4
	mov r0, sl
	mov r1, r5
	mov r2, #0x4400
	bl FUN_020C81D4
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0x4400
	mov r3, r5
	bl ov18_02223F24
	add r1, r4, #0x4400
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FUN_020C81E4
	mov r0, sl
	add r1, r5, #0x4400
	mov r2, #0x4400
	bl FUN_020C81D4
	mov r0, #2
	str r0, [sp]
	mov r0, r6
	add r1, r4, #0x4400
	mov r2, #0x4400
	add r3, r5, #0x4400
	bl ov18_02223F24
	add r1, r4, #0x8800
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FUN_020C81E4
	mov r0, sl
	add r1, r5, #0x8800
	mov r2, #0x4400
	bl FUN_020C81D4
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0x8800
	add r3, r5, #0x8800
	mov r0, r6
	mov r2, #0x4400
	bl ov18_02223F24
	mov r0, #1
	str r0, [sp, #0x10]
_0222101C:
	ldr r1, [sp, #8]
	mov r0, sl
	mov r2, #0
	bl FUN_020C81E4
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022210E8
	add r0, sp, #0x24
	bl FUN_020C80C8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022210E8
	ldr r1, [sb, #0x20]
	ldr r0, _02221114 @ =0x02249764
	str r1, [sp, #0x14]
	ldr r2, [sb, #0x28]
	ldr r1, [sb, #0x20]
	ldr r4, [r0]
	sub r0, r2, r1
	str r0, [sp, #0x18]
	ldr r2, [r6, #0x48]
	ldr r1, [sb, #0x20]
	add r0, sp, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #4]
	mov r2, #0x8000
	str r1, [sp, #0x20]
	mov r1, #0x4000
	mov r3, #1
	bl ov18_02221120
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022210D0
	add r7, sp, #0x14
	mov r5, #0
_022210AC:
	ldm r4, {r1, r2}
	mov r0, r7
	mov r3, r5
	add r2, r1, r2
	bl ov18_02221120
	add r4, r4, #8
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022210AC
_022210D0:
	ldr r1, [sb, #0x28]
	ldr r2, _02221118 @ =0x02000AAC
	ldr r3, [r6, #0x48]
	ldr r0, _0222111C @ =0xE12FFF1E
	sub r1, r2, r1
	str r0, [r3, r1]
_022210E8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02221100
	ldr r1, [sp, #4]
	mov r0, sb
	bl FUN_020C2C54
_02221100:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x6c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222110C: .4byte 0x027FFE00
_02221110: .4byte 0x02249768
_02221114: .4byte 0x02249764
_02221118: .4byte 0x02000AAC
_0222111C: .4byte 0xE12FFF1E
	arm_func_end ov18_02220CA8

	arm_func_start ov18_02221120
ov18_02221120: @ 0x02221120
	push {r3, lr}
	mov lr, r1
	ldr ip, [r0]
	ldr r1, [r0, #0xc]
	cmp lr, #0x4000
	movlo lr, #0x4000
	cmp r2, #0x8000
	movhi r2, #0x8000
	cmp lr, ip
	add r1, ip, r1
	movlo lr, ip
	cmp r2, r1
	movhi r2, r1
	cmp lr, r2
	pophs {r3, pc}
	cmp r3, #0
	beq _0222117C
	ldr r0, [r0, #8]
	sub r2, r2, lr
	add r0, r0, lr
	mov r1, #0
	bl FUN_020C4CF4
	pop {r3, pc}
_0222117C:
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r3, lr
	add r1, r1, lr
	sub r2, r2, lr
	bl FUN_020C4DB0
	pop {r3, pc}
	arm_func_end ov18_02221120

	arm_func_start ov18_02221198
ov18_02221198: @ 0x02221198
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0xff
	bl FUN_020C3D98
	mov r5, r0
	bl ov18_02223EB8
	cmp r0, #0
	bne _022211CC
	mov r0, r5
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022211CC:
	ldr r0, _0222141C @ =0x02250D2C
	ldr r0, [r0]
	add r1, r0, #0x1000
	ldrb r1, [r1, #0x524]
	add r1, r1, #1
	cmp r1, #0x10
	ble _022211F8
	mov r0, r5
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022211F8:
	ldr r1, _02221420 @ =0x000005D4
	mov r6, #0
_02221200:
	mla r2, r6, r1, r0
	add r2, r2, #0x1000
	ldr r3, [r2, #0xd40]
	cmp r3, r8
	bne _02221224
	mov r0, r5
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_02221224:
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	moveq r4, r6
	beq _02221244
	add r2, r6, #1
	and r6, r2, #0xff
	cmp r6, #0x10
	blo _02221200
_02221244:
	cmp r6, #0x10
	bne _0222125C
	mov r0, r5
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_0222125C:
	ldr r1, _02221420 @ =0x000005D4
	ldr r2, _0222141C @ =0x02250D2C
	mul r6, r4, r1
	add r0, r0, r6
	add r0, r0, #0x1000
	str r8, [r0, #0xd40]
	ldr r0, [r2]
	mov r1, r7
	add r0, r0, #0x388
	add r0, r0, #0x1400
	add sb, r0, r6
	mov r0, sb
	bl ov18_02221428
	add r0, r8, #0x1c
	add r1, sb, #0xc4
	mov r2, #0x20
	bl FUN_020C4DB0
	ldr r0, _0222141C @ =0x02250D2C
	mov r1, sb
	ldr r0, [r0]
	add r0, r0, #0x12c
	add r0, r0, #0x1c00
	add r0, r0, r6
	bl ov18_02221614
	cmp r0, #0
	bne _022212D4
	mov r0, r5
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022212D4:
	ldr r0, _0222141C @ =0x02250D2C
	mov r1, r8
	ldr r2, [r0]
	add r0, r2, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	add r2, r2, #0x1300
	bl ov18_02221990
	ldr r1, _0222141C @ =0x02250D2C
	ldr r0, [r1]
	add r0, r0, r6
	add r0, r0, #0x1000
	strb r4, [r0, #0xd21]
	ldr r0, [r1]
	add r0, r0, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	bl ov18_02221BB8
	ldr r2, _0222141C @ =0x02250D2C
	ldr r3, _02221424 @ =0x0224B264
	ldr r1, [r2]
	ldrb r0, [r3]
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r0, [r1, #0xd1f]
	ldr r1, [r2]
	mov r4, #1
	add r1, r1, r6
	add r1, r1, #0x1d00
	strh r4, [r1, #0x4e]
	ldr r1, [r2]
	add r8, r7, #0x1e8
	add r1, r1, r6
	add r1, r1, #0x1000
	str r7, [r1, #0xd44]
	ldr r1, [r2]
	add r4, r7, #0x258
	add r1, r1, r6
	add r1, r1, #0x1000
	str r8, [r1, #0xd54]
	ldr r1, [r2]
	add r7, r0, #1
	add r0, r1, r6
	add r0, r0, #0x1000
	str r4, [r0, #0xd58]
	ldr r0, [r2]
	strb r7, [r3]
	add r0, r0, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0xd54]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _022213E0
	bl ov18_022241BC
	cmp r0, #0
	bne _022213E0
	ldr r0, _0222141C @ =0x02250D2C
	ldr r0, [r0]
	add r0, r0, #0xce0
	add r0, r0, #0x7000
	bl ov18_022241D8
	ldr r0, _0222141C @ =0x02250D2C
	mov r1, #0x800
	ldr r0, [r0]
	add r0, r0, #0x4e0
	add r0, r0, #0x7000
	bl ov18_0222413C
_022213E0:
	ldr r2, _0222141C @ =0x02250D2C
	mov r3, #1
	ldr r1, [r2]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r3, [r1, #0xd52]
	ldr r1, [r2]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x524]
	add r2, r2, #1
	strb r2, [r1, #0x524]
	bl FUN_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0222141C: .4byte 0x02250D2C
_02221420: .4byte 0x000005D4
_02221424: .4byte 0x0224B264
	arm_func_end ov18_02221198

	arm_func_start ov18_02221428
ov18_02221428: @ 0x02221428
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, #0x22c0000
	mov r4, r1
	mov r5, r0
	str r2, [sp]
	ldr r0, [r4, #0x24]
	ldr r7, _02221498 @ =0x02246434
	str r0, [r5]
	ldr r0, [r4, #0x34]
	add r8, r5, #0xc
	str r0, [r5, #4]
	mov sb, #0
	add r6, sp, #0
_0222145C:
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl ov18_0222149C
	add sb, sb, #1
	cmp sb, #3
	add r8, r8, #0x10
	add r7, r7, #4
	blt _0222145C
	add r0, r4, #0x160
	add r1, r5, #0x3c
	mov r2, #0x88
	bl FUN_020C4DB0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02221498: .4byte 0x02246434
	arm_func_end ov18_02221428

	arm_func_start ov18_0222149C
ov18_0222149C: @ 0x0222149C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, [r1]
	mov r7, r0
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	beq _022214CC
	cmp r1, #1
	beq _02221518
	cmp r1, #2
	beq _022215E8
	pop {r3, r4, r5, r6, r7, pc}
_022214CC:
	ldr r0, [r7, #0x28]
	cmp r0, #0x2000000
	blo _02221510
	cmp r0, #0x22c0000
	bhs _02221510
	ldr r1, [r7, #0x2c]
	add r0, r0, r1
	cmp r0, #0x22c0000
	bhi _02221510
	str r1, [r6, #8]
	ldr r0, [r7, #0x28]
	str r0, [r6, #4]
	str r0, [r6]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02221510:
	bl FUN_020C42A8
	pop {r3, r4, r5, r6, r7, pc}
_02221518:
	ldr ip, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	mov r2, #0
	mov r4, r2
	cmp ip, #0x2000000
	add r3, ip, r1
	blo _02221564
	ldr r0, _02221608 @ =0x023FE800
	cmp ip, r0
	bhs _02221564
	cmp r3, #0x2300000
	bls _02221590
	cmp r3, r0
	bhs _0222155C
	cmp r1, #0x40000
	movls r4, #1
	bls _02221590
_0222155C:
	mov r2, #1
	b _02221590
_02221564:
	ldr r1, _0222160C @ =0x037F8000
	cmp ip, r1
	blo _0222158C
	add r0, r1, #0x17000
	cmp ip, r0
	bhs _0222158C
	cmp r3, r0
	movls r4, #1
	movhi r2, #1
	b _02221590
_0222158C:
	mov r2, #1
_02221590:
	cmp r2, #1
	bne _0222159C
	bl FUN_020C42A8
_0222159C:
	ldr r0, [r7, #0x3c]
	cmp r4, #0
	str r0, [r6, #8]
	ldr r0, [r7, #0x38]
	str r0, [r6, #4]
	ldreq r0, [r6, #4]
	streq r0, [r6]
	beq _022215D4
	ldr r0, [r5]
	str r0, [r6]
	ldr r1, [r5]
	ldr r0, [r6, #8]
	add r0, r1, r0
	str r0, [r5]
_022215D4:
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022215E8:
	ldr r0, _02221610 @ =0x027FFE00
	mov r1, #0x160
	stmib r6, {r0, r1}
	str r0, [r6]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02221608: .4byte 0x023FE800
_0222160C: .4byte 0x037F8000
_02221610: .4byte 0x027FFE00
	arm_func_end ov18_0222149C

	arm_func_start ov18_02221614
ov18_02221614: @ 0x02221614
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	add r6, sl, #0xc
	cmp r1, #0
	mov r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r2, r0
_02221630:
	str r0, [sl, r2, lsl #2]
	add r3, r1, r2, lsl #4
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	and r2, r2, #0xff
	cmp r2, #3
	add r0, r0, r3
	blo _02221630
	mov sb, #0
	ldr r4, _022216DC @ =0x02250D2C
	strh sb, [r6]
	add r5, r1, #0xc
_02221660:
	ldr r0, [r4]
	add r7, r5, sb, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0x318]
	ldr r8, [r7, #8]
	add r0, r8, r1
	sub r0, r0, #1
	bl FUN_020E2178
	lsl r1, sb, #1
	ldrh r3, [r6, r1]
	lsl r2, r0, #0x10
	ldr r1, [r7, #4]
	add r2, r3, r2, lsr #16
	lsl r3, r2, #0x10
	mov r0, sb
	mov r2, r8
	lsr r7, r3, #0x10
	bl ov18_02221840
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp sb, #2
	addlo r0, r6, sb, lsl #1
	strhlo r7, [r0, #2]
	add r0, sb, #1
	and sb, r0, #0xff
	strhhs r7, [sl, #0x12]
	cmp sb, #3
	blo _02221660
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022216DC: .4byte 0x02250D2C
	arm_func_end ov18_02221614

	arm_func_start ov18_022216E0
ov18_022216E0: @ 0x022216E0
	push {r3, r4, r5, lr}
	ldrh r4, [r1, #0x12]
	cmp r2, r4
	movhs r0, #0
	pophs {r3, r4, r5, pc}
	mov ip, #2
_022216F8:
	add r4, r1, ip, lsl #1
	ldrh r4, [r4, #0xc]
	cmp r2, r4
	bhs _02221718
	sub r4, ip, #1
	lsl ip, r4, #0x18
	asrs ip, ip, #0x18
	bpl _022216F8
_02221718:
	cmp ip, #0
	movlt r0, #0
	poplt {r3, r4, r5, pc}
	ldr r4, _02221790 @ =0x02250D2C
	add r5, r1, ip, lsl #1
	ldr lr, [r4]
	ldrh r5, [r5, #0xc]
	add lr, lr, #0x1000
	ldr lr, [lr, #0x318]
	sub r5, r2, r5
	mul r2, r5, lr
	add r3, r3, #0xc
	add r5, r3, ip, lsl #4
	ldr r3, [r5, #8]
	sub lr, r3, r2
	str lr, [r0, #4]
	ldr r3, [r4]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x318]
	cmp lr, r3
	strhi r3, [r0, #4]
	ldr r1, [r1, ip, lsl #2]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r5]
	add r1, r2, r1
	str r1, [r0]
	strb ip, [r0, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02221790: .4byte 0x02250D2C
	arm_func_end ov18_022216E0

	arm_func_start ov18_02221794
ov18_02221794: @ 0x02221794
	ldr r3, _02221838 @ =0x02246434
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq _022217D8
	cmp r0, #1
	beq _022217F4
	cmp r0, #2
	bne _02221828
	ldr r0, _0222183C @ =0x027FFE00
	cmp r1, r0
	blo _02221830
	add r1, r1, r2
	add r0, r0, #0x160
	cmp r1, r0
	bhi _02221830
	mov r0, #1
	bx lr
_022217D8:
	cmp r1, #0x2000000
	blo _02221830
	add r0, r1, r2
	cmp r0, #0x22c0000
	bhi _02221830
	mov r0, #1
	bx lr
_022217F4:
	cmp r1, #0x22c0000
	blo _0222180C
	add r0, r1, r2
	cmp r0, #0x2300000
	movls r0, #1
	bxls lr
_0222180C:
	cmp r1, #0x2000000
	blo _02221830
	add r0, r1, r2
	cmp r0, #0x2300000
	bhi _02221830
	mov r0, #1
	bx lr
_02221828:
	mov r0, #0
	bx lr
_02221830:
	mov r0, #0
	bx lr
	.align 2, 0
_02221838: .4byte 0x02246434
_0222183C: .4byte 0x027FFE00
	arm_func_end ov18_02221794

	arm_func_start ov18_02221840
ov18_02221840: @ 0x02221840
	push {r3, lr}
	ldr r3, _02221900 @ =0x02246434
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	beq _02221864
	cmp r3, #1
	beq _0222186C
	cmp r3, #2
	bne _022218F0
_02221864:
	bl ov18_02221794
	pop {r3, pc}
_0222186C:
	cmp r1, #0x2000000
	blo _022218C4
	ldr r0, _02221904 @ =0x023FE800
	cmp r1, r0
	bhs _022218C4
	cmp r1, #0x2300000
	add r1, r1, r2
	bhs _02221898
	cmp r1, #0x2300000
	movhi r0, #0
	pophi {r3, pc}
_02221898:
	cmp r1, #0x2300000
	movls r0, #1
	popls {r3, pc}
	ldr r0, _02221904 @ =0x023FE800
	cmp r1, r0
	bhs _022218BC
	cmp r2, #0x40000
	movls r0, #1
	popls {r3, pc}
_022218BC:
	mov r0, #0
	pop {r3, pc}
_022218C4:
	ldr r3, _02221908 @ =0x037F8000
	cmp r1, r3
	blo _022218F8
	add r0, r3, #0x17000
	cmp r1, r0
	bhs _022218F8
	add r1, r1, r2
	cmp r1, r0
	movls r0, #1
	movhi r0, #0
	pop {r3, pc}
_022218F0:
	mov r0, #0
	pop {r3, pc}
_022218F8:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02221900: .4byte 0x02246434
_02221904: .4byte 0x023FE800
_02221908: .4byte 0x037F8000
	arm_func_end ov18_02221840

	arm_func_start ov18_0222190C
ov18_0222190C: @ 0x0222190C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	add r2, r6, #0x1f
	mov r5, r1
	mov r0, r4
	bic r1, r2, #0x1f
	bl FUN_020C2C54
	bl FUN_020C2C78
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov18_02223D50
	pop {r4, r5, r6, pc}
	arm_func_end ov18_0222190C

	arm_func_start ov18_02221944
ov18_02221944: @ 0x02221944
	asr r3, r1, #1
	cmp r3, #0
	mov r2, #0
	ble _02221968
_02221954:
	ldrh r1, [r0], #2
	sub r3, r3, #1
	cmp r3, #0
	add r2, r2, r1
	bgt _02221954
_02221968:
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	add r1, r0, r2, lsr #16
	ldr r0, _0222198C @ =0x0000FFFF
	add r1, r1, r1, lsr #16
	eor r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.align 2, 0
_0222198C: .4byte 0x0000FFFF
	arm_func_end ov18_02221944

	arm_func_start ov18_02221990
ov18_02221990: @ 0x02221990
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r1, r6
	mov r0, #0
	mov r2, #0x4c0
	bl FUN_020C4AF0
	mov r0, #0
	strb r0, [r6, #0x4b2]
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r2, #1
	bl ov18_02221A80
	cmp r0, #0
	moveq r7, #1
	ldr r0, [r5, #0x10]
	mov r1, r6
	mov r2, #0
	movne r7, #0
	bl ov18_02221A80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	orrs r0, r7, r0
	beq _02221A10
	mov r3, #1
	mov r1, r6
	mov r0, #0
	mov r2, #0x220
	strb r3, [r6, #0x4b2]
	bl FUN_020C4BB8
_02221A10:
	ldr r0, [r5, #0x14]
	cmp r4, #0
	str r0, [r6, #0x4b8]
	beq _02221A30
	mov r0, r4
	add r1, r6, #0x220
	mov r2, #0x16
	bl FUN_020C4B18
_02221A30:
	ldrb r0, [r5, #0x18]
	strb r0, [r6, #0x236]
	ldr r0, [r5, #4]
	bl ov18_02221B90
	lsl r2, r0, #0x11
	ldr r0, [r5, #4]
	add r1, r6, #0x238
	lsr r2, r2, #0x10
	bl FUN_020C4B18
	ldr r0, [r5, #8]
	add r1, r6, #0x298
	mov r2, #0xc0
	bl FUN_020C4B18
	mov r1, #1
	strb r1, [r6, #0x358]
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	add r0, r6, #0x400
	strh r1, [r0, #0xb0]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02221990

	arm_func_start ov18_02221A80
ov18_02221A80: @ 0x02221A80
	push {r4, r5, r6, lr}
	sub sp, sp, #0x48
	cmp r2, #0
	movne r4, #0x200
	moveq r4, #0x20
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	addne r5, r5, #0x20
	cmp r6, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	add r0, sp, #0
	bl FUN_020C7DA0
	add r0, sp, #0
	mov r1, r6
	bl FUN_020C8080
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	cmp r4, r0
	add r0, sp, #0
	beq _02221B00
	bl FUN_020C80C8
	add sp, sp, #0x48
	mov r0, #0
	pop {r4, r5, r6, pc}
_02221B00:
	mov r1, r5
	mov r2, r4
	bl FUN_020C81D4
	add r0, sp, #0
	bl FUN_020C80C8
	mov r0, #1
	add sp, sp, #0x48
	pop {r4, r5, r6, pc}
	arm_func_end ov18_02221A80

	arm_func_start ov18_02221B20
ov18_02221B20: @ 0x02221B20
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r2
	add r4, r6, #0x5e
	mov r0, r1
	add r1, r4, #0x300
	ldr r2, _02221B8C @ =0x0000014A
	mov r4, r3
	mov r7, #1
	bl FUN_020C4B18
	mov r2, #0
	mov r1, #2
_02221B50:
	tst r5, r1, lsl r2
	addne r0, r7, #1
	add r2, r2, #1
	andne r7, r0, #0xff
	cmp r2, #0xf
	blt _02221B50
	strb r7, [r6, #0x358]
	orr r1, r5, #1
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	strh r4, [r0, #0x5c]
	ldrb r0, [r6, #0x4b4]
	add r0, r0, #1
	strb r0, [r6, #0x4b4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02221B8C: .4byte 0x0000014A
	arm_func_end ov18_02221B20

	arm_func_start ov18_02221B90
ov18_02221B90: @ 0x02221B90
	ldrh r1, [r0], #2
	mov r2, #0
	cmp r1, #0
	beq _02221BB0
_02221BA0:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _02221BA0
_02221BB0:
	mov r0, r2
	bx lr
	arm_func_end ov18_02221B90

	arm_func_start ov18_02221BB8
ov18_02221BB8: @ 0x02221BB8
	ldr r1, _02221BF8 @ =0x0224B280
	ldr r2, [r1, #0x18]
	cmp r2, #0
	streq r0, [r1, #0x18]
	beq _02221BEC
	ldr r1, [r2, #0x4bc]
	cmp r1, #0
	beq _02221BE8
_02221BD8:
	mov r2, r1
	ldr r1, [r1, #0x4bc]
	cmp r1, #0
	bne _02221BD8
_02221BE8:
	str r0, [r2, #0x4bc]
_02221BEC:
	mov r1, #0
	str r1, [r0, #0x4bc]
	bx lr
	.align 2, 0
_02221BF8: .4byte 0x0224B280
	arm_func_end ov18_02221BB8

	arm_func_start ov18_02221BFC
ov18_02221BFC: @ 0x02221BFC
	ldr r0, _02221C20 @ =0x0224B280
	mov r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	mov r1, #1
	strb r1, [r0, #0x24]
	ldr ip, _02221C24 @ =ov18_02221C28
	str r2, [r0, #0x14]
	bx ip
	.align 2, 0
_02221C20: .4byte 0x0224B280
_02221C24: .4byte ov18_02221C28
	arm_func_end ov18_02221BFC

	arm_func_start ov18_02221C28
ov18_02221C28: @ 0x02221C28
	ldr r0, _02221C48 @ =0x0224B280
	mov r1, #0
	strb r1, [r0, #0x25]
	strb r1, [r0, #0x26]
	strb r1, [r0, #0x27]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	bx lr
	.align 2, 0
_02221C48: .4byte 0x0224B280
	arm_func_end ov18_02221C28

	arm_func_start ov18_02221C4C
ov18_02221C4C: @ 0x02221C4C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02221CD4 @ =0x0224B280
	mov r7, r0
	mov r6, r1
	mov r5, r2
_02221C60:
	ldrb r0, [r4, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02221C60
_02221C70: @ jump table
	b _02221C8C @ case 0
	b _02221C8C @ case 1
	b _02221C9C @ case 2
	b _02221CA4 @ case 3
	b _02221CB8 @ case 4
	b _02221CC0 @ case 5
	b _02221C60 @ case 6
_02221C8C:
	bl ov18_02221CD8
	cmp r0, #0
	bne _02221C60
	pop {r3, r4, r5, r6, r7, pc}
_02221C9C:
	bl ov18_02221D78
	b _02221C60
_02221CA4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02221DCC
	pop {r3, r4, r5, r6, r7, pc}
_02221CB8:
	bl ov18_02221F30
	b _02221C60
_02221CC0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02221F60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02221CD4: .4byte 0x0224B280
	arm_func_end ov18_02221C4C

	arm_func_start ov18_02221CD8
ov18_02221CD8: @ 0x02221CD8
	push {r4, lr}
	sub sp, sp, #8
	ldr r0, _02221D70 @ =0x0224B280
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _02221D28
	bl ov18_02223E30
	mov r4, r0
	bl ov18_02223E44
	str r0, [sp]
	mov ip, #8
	ldr r1, _02221D74 @ =0x0224B2C0
	mov r3, r4
	mov r0, #0
	mov r2, #0x70
	str ip, [sp, #4]
	bl FUN_020D065C
	add sp, sp, #8
	mov r0, #0
	pop {r4, pc}
_02221D28:
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldrne r1, [r0, #0x4bc]
	cmpne r1, #0
	ldreq r0, _02221D70 @ =0x0224B280
	ldreq r1, [r0, #0x18]
	ldr r0, _02221D70 @ =0x0224B280
	str r1, [r0, #0x1c]
	bl ov18_02221C28
	ldr r1, _02221D70 @ =0x0224B280
	mov r2, #2
	ldr r3, [r1, #0x1c]
	mov r0, #1
	ldrb r3, [r3, #0x4b4]
	strb r3, [r1, #0x26]
	strb r2, [r1, #0x24]
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_02221D70: .4byte 0x0224B280
_02221D74: .4byte 0x0224B2C0
	arm_func_end ov18_02221CD8

	arm_func_start ov18_02221D78
ov18_02221D78: @ 0x02221D78
	ldr r0, _02221DC8 @ =0x0224B280
	ldrb r1, [r0, #0x24]
	cmp r1, #2
	bxne lr
	ldr r2, [r0, #0x1c]
	ldrb r1, [r2, #0x4b2]
	cmp r1, #0
	bne _02221DA8
	mov r1, #9
	strb r1, [r0, #0x28]
	str r2, [r0, #0x20]
	b _02221DB8
_02221DA8:
	mov r1, #4
	strb r1, [r0, #0x28]
	add r1, r2, #0x220
	str r1, [r0, #0x20]
_02221DB8:
	ldr r0, _02221DC8 @ =0x0224B280
	mov r1, #3
	strb r1, [r0, #0x24]
	bx lr
	.align 2, 0
_02221DC8: .4byte 0x0224B280
	arm_func_end ov18_02221D78

	arm_func_start ov18_02221DCC
ov18_02221DCC: @ 0x02221DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _02221F20 @ =0x0224B280
	mov r6, r0
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #0x20]
	add ip, r4, #0x358
	add r7, r0, #0x62
	cmp r7, ip
	movls r0, #0x62
	mov r5, r1
	mov r4, r2
	strbls r0, [r3, #0x4c]
	bls _02221E24
	sub r7, ip, r0
	and r1, r7, #0xff
	ldr r0, _02221F24 @ =0x0224B2CE
	rsb r2, r1, #0x62
	add r1, r0, r1
	mov r0, #0
	strb r7, [r3, #0x4c]
	bl FUN_020C4AF0
_02221E24:
	ldr r0, _02221F20 @ =0x0224B280
	ldr r1, _02221F24 @ =0x0224B2CE
	ldrb r2, [r0, #0x4c]
	ldr r0, [r0, #0x20]
	bl FUN_020C4B18
	ldr r2, _02221F20 @ =0x0224B280
	ldr r0, _02221F28 @ =0x0224B2C8
	ldrb r7, [r2, #0x27]
	mov r3, #0
	mov r1, #0x68
	strb r7, [r2, #0x4a]
	ldrb r7, [r2, #0x28]
	strb r7, [r2, #0x4b]
	ldr r7, [r2, #0x1c]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b2]
	bic lr, lr, #3
	and ip, ip, #3
	orr ip, lr, ip
	strb ip, [r2, #0x44]
	ldrb ip, [r7, #0x4b3]
	strb ip, [r2, #0x45]
	ldrb ip, [r2, #0x26]
	strb ip, [r2, #0x46]
	ldr ip, [r7, #0x4b8]
	str ip, [r2, #0x40]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b5]
	bic lr, lr, #0xfc
	lsl ip, ip, #0x1a
	orr ip, lr, ip, lsr #24
	strb ip, [r2, #0x44]
	ldrb lr, [r2, #0x29]
	add ip, lr, #1
	strb ip, [r2, #0x29]
	strb lr, [r2, #0x47]
	strh r3, [r2, #0x48]
	bl ov18_02221944
	ldr r1, _02221F20 @ =0x0224B280
	strh r0, [r1, #0x48]
	ldrb r0, [r1, #0x27]
	add r2, r0, #1
	strb r2, [r1, #0x27]
	ldrb r0, [r1, #0x28]
	and r2, r2, #0xff
	cmp r2, r0
	movhs r0, #4
	strbhs r0, [r1, #0x24]
	bhs _02221EF4
	ldr r0, [r1, #0x20]
	add r0, r0, #0x62
	str r0, [r1, #0x20]
_02221EF4:
	orr r0, r4, #3
	ldr r1, _02221F2C @ =0x0224B2C0
	mov r3, r6
	str r5, [sp]
	and r4, r0, #0xff
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl FUN_020D065C
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02221F20: .4byte 0x0224B280
_02221F24: .4byte 0x0224B2CE
_02221F28: .4byte 0x0224B2C8
_02221F2C: .4byte 0x0224B2C0
	arm_func_end ov18_02221DCC

	arm_func_start ov18_02221F30
ov18_02221F30: @ 0x02221F30
	ldr r1, _02221F5C @ =0x0224B280
	mov r3, #1
	ldr r0, [r1, #0x1c]
	mov r2, #5
	add r0, r0, #0x400
	strh r3, [r0, #0xb0]
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0, #0x4b4]
	strb r0, [r1, #0x26]
	strb r2, [r1, #0x24]
	bx lr
	.align 2, 0
_02221F5C: .4byte 0x0224B280
	arm_func_end ov18_02221F30

	arm_func_start ov18_02221F60
ov18_02221F60: @ 0x02221F60
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r3, _022221B8 @ =0x0224B280
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	ldrb r3, [r3, #0x26]
	ldrb r0, [r0, #0x4b4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r3, r0
	beq _02221F90
	bl ov18_02221F30
_02221F90:
	ldr r2, _022221B8 @ =0x0224B280
	ldrb r0, [r2, #0x44]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r2, #0x44]
	ldr r0, [r2, #0x1c]
	ldrb r3, [r0, #0x4b3]
	add r1, r0, #0x300
	strb r3, [r2, #0x45]
	ldrb r3, [r2, #0x26]
	strb r3, [r2, #0x46]
	ldr r3, [r0, #0x4b8]
	str r3, [r2, #0x40]
	ldrb r4, [r2, #0x44]
	ldrb r3, [r0, #0x4b5]
	bic r4, r4, #0xfc
	lsl r3, r3, #0x1a
	orr r3, r4, r3, lsr #24
	strb r3, [r2, #0x44]
	ldrb r4, [r2, #0x29]
	add r3, r4, #1
	strb r3, [r2, #0x29]
	strb r4, [r2, #0x47]
	ldrb r3, [r0, #0x358]
	strb r3, [r2, #0x4a]
	ldrh r3, [r1, #0x5a]
	strh r3, [r2, #0x4c]
	ldrh r1, [r1, #0x5c]
	strh r1, [r2, #0x4e]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	bne _02222024
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _02222024
	ldr r0, [r0, #0x4b8]
	blx r1
_02222024:
	ldr r0, _022221B8 @ =0x0224B280
	mov sb, #0
	ldr r1, _022221BC @ =0x0224B328
	ldr r2, [r0, #0x1c]
	b _02222048
_02222038:
	add r0, r2, sb
	ldrb r0, [r0, #0x4a8]
	strb r0, [r1, sb]
	add sb, sb, #1
_02222048:
	cmp sb, #8
	blt _02222038
	ldr r1, _022221C0 @ =0x0224B2D0
	mov r0, #0
	mov r2, #0x58
	bl FUN_020C4AF0
	ldr r5, _022221B8 @ =0x0224B280
	mov sl, #0
	ldr r1, [r5, #0x1c]
	mov r6, #2
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r2, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	mov sb, sl
	ldr r7, _022221C0 @ =0x0224B2D0
	eor r0, r2, r0
	lsl r4, r0, #0x10
	mov r8, r6
	mov fp, #0x16
	b _022220EC
_0222209C:
	lsl r0, r8, sb
	tst r0, r4, lsr #16
	beq _022220E8
	ldr r0, [r5, #0x1c]
	mla r1, sl, fp, r7
	add r0, r0, #0x5e
	add r2, r0, #0x300
	mov r0, #0x16
	mla r0, sb, r0, r2
	mov r2, #0x16
	bl FUN_020C4B18
	ldr r0, [r5, #0x1c]
	add sl, sl, #1
	add r0, r0, #0x400
	ldrh r1, [r0, #0xb0]
	cmp sl, #4
	orr r1, r1, r6, lsl sb
	strh r1, [r0, #0xb0]
	beq _022220F4
_022220E8:
	add sb, sb, #1
_022220EC:
	cmp sb, #0xf
	blt _0222209C
_022220F4:
	cmp sl, #4
	bhs _02222114
	mov r0, #0x16
	mul r1, sl, r0
	ldr r2, _022221C0 @ =0x0224B2D0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf0
	strb r0, [r2, r1]
_02222114:
	ldr r2, _022221B8 @ =0x0224B280
	mov r3, #0
	ldr r0, _022221C4 @ =0x0224B2C8
	mov r1, #0x68
	strh r3, [r2, #0x48]
	bl ov18_02221944
	ldr r2, _022221B8 @ =0x0224B280
	strh r0, [r2, #0x48]
	ldr r1, [r2, #0x1c]
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r3, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	ldr r1, _022221C8 @ =0x0224B2C0
	cmp r3, r0
	moveq r0, #1
	strbeq r0, [r2, #0x24]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	orr r2, r0, #3
	ldr r0, [sp, #0xc]
	and r4, r2, #0xff
	str r0, [sp]
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl FUN_020D065C
	ldr r0, _022221B8 @ =0x0224B280
	ldr r1, [r0, #0x10]
	cmp r1, #1
	addne sp, sp, #0x14
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	addeq sp, sp, #0x14
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x4b8]
	blx r1
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022221B8: .4byte 0x0224B280
_022221BC: .4byte 0x0224B328
_022221C0: .4byte 0x0224B2D0
_022221C4: .4byte 0x0224B2C8
_022221C8: .4byte 0x0224B2C0
	arm_func_end ov18_02221F60

	arm_func_start ov18_022221CC
ov18_022221CC: @ 0x022221CC
	push {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_020CE7F4
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrh lr, [r4, #4]
	mov r2, #1
	mov ip, #0
	mov r5, lr
	mov r3, r2
_022221F8:
	sub r1, r5, #1
	tst r0, r3, lsl r1
	cmpne lr, r5
	strhne r5, [r4, #4]
	bne _02222234
	add r1, ip, #1
	lsl r1, r1, #0x10
	cmp r5, #0x10
	lsr ip, r1, #0x10
	moveq r1, r2
	addne r1, r5, #1
	lsl r1, r1, #0x10
	cmp ip, #0x10
	lsr r5, r1, #0x10
	blo _022221F8
_02222234:
	mov r0, #1
	pop {r3, r4, r5, pc}
	arm_func_end ov18_022221CC

	arm_func_start ov18_0222223C
ov18_0222223C: @ 0x0222223C
	ldr r1, _02222298 @ =0x02250D20
	mov r0, #0
	ldr ip, [r1, #8]
	mov r3, r0
	add r1, ip, #0x500
	ldrh r1, [r1, #0x28]
	mov r2, r0
	cmp r1, #1
	ldrbeq r1, [ip, #0x50c]
	cmpeq r1, #0
	moveq r3, #1
	cmp r3, #0
	beq _02222280
	add r1, ip, #0x500
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	moveq r2, #1
_02222280:
	cmp r2, #0
	addne r1, ip, #0x500
	ldrhne r1, [r1, #0x2a]
	cmpne r1, #0
	movne r0, #1
	bx lr
	.align 2, 0
_02222298: .4byte 0x02250D20
	arm_func_end ov18_0222223C

	arm_func_start ov18_0222229C
ov18_0222229C: @ 0x0222229C
	push {r3, lr}
	ldr r0, _022222E4 @ =ov18_02222330
	bl FUN_020CE478
	mov r1, r0
	mov r0, #0x80
	bl ov18_02223ED8
	ldr r3, _022222E8 @ =0x0224976C
	ldr r0, _022222E4 @ =ov18_02222330
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl FUN_020D0764
	mov r1, r0
	mov r0, #0x1d
	bl ov18_02223ED8
	pop {r3, pc}
	.align 2, 0
_022222E4: .4byte ov18_02222330
_022222E8: .4byte 0x0224976C
	arm_func_end ov18_0222229C

	arm_func_start ov18_022222EC
ov18_022222EC: @ 0x022222EC
	push {r3, lr}
	ldr r2, _0222232C @ =0x02250D20
	mov ip, #0
	ldr r3, [r2, #8]
	mov r1, r0
	strb ip, [r3, #0x50d]
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1300
	strh ip, [r0, #0x16]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x51c]
	cmp r2, #0
	popeq {r3, pc}
	mov r0, #0x11
	blx r2
	pop {r3, pc}
	.align 2, 0
_0222232C: .4byte 0x02250D20
	arm_func_end ov18_022222EC

	arm_func_start ov18_02222330
ov18_02222330: @ 0x02222330
	push {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #0x19
	bgt _02222398
	bge _02222474
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _02222B58
_02222358: @ jump table
	b _022223B4 @ case 0
	b _02222928 @ case 1
	b _02222A18 @ case 2
	b _02222B58 @ case 3
	b _02222B58 @ case 4
	b _02222B58 @ case 5
	b _02222B58 @ case 6
	b _0222243C @ case 7
	b _02222510 @ case 8
	b _02222B58 @ case 9
	b _02222B58 @ case 10
	b _02222B58 @ case 11
	b _02222B58 @ case 12
	b _02222A60 @ case 13
	b _02222764 @ case 14
	b _02222804 @ case 15
_02222398:
	cmp r1, #0x1d
	bgt _022223A8
	beq _022223EC
	b _02222B58
_022223A8:
	cmp r1, #0x80
	beq _02222A98
	b _02222B58
_022223B4:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022223E0
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022223E0:
	bl ov18_0222229C
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022223EC:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02222418
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222418:
	ldr r1, _02222B78 @ =0x02250D20
	ldr r0, _02222B7C @ =ov18_02222330
	ldr r1, [r1, #8]
	bl FUN_020CEDC8
	mov r1, r0
	mov r0, #7
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_0222243C:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x15
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r0, _02222B7C @ =ov18_02222330
	mov r1, #1
	bl FUN_020D0714
	mov r1, r0
	mov r0, #0x19
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222474:
	ldr r2, _02222B78 @ =0x02250D20
	ldr ip, [r2, #8]
	add r1, ip, #0x500
	ldrh r3, [r1, #0x26]
	cmp r3, #0
	bne _022224D4
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022224B0
	ldr r2, [ip, #0x51c]
	mov r1, r4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022224B0:
	ldr r1, _02222B80 @ =0x0224976C
	ldr r0, _02222B7C @ =ov18_02222330
	ldr r1, [r1, #0xc]
	bl FUN_020CEEF4
	mov r1, r0
	mov r0, #8
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022224D4:
	ldrh r3, [r4, #2]
	cmp r3, #0
	beq _02222504
	mov r0, #0
	strh r0, [r1, #0x26]
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222504:
	bl ov18_022222EC
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222510:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0222253C
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_0222253C:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _0222256C
	bge _022225B4
	cmp r0, #2
	bgt _02222744
	cmp r0, #0
	blt _02222744
	beq _0222258C
	cmp r0, #2
	beq _02222710
	b _02222744
_0222256C:
	cmp r0, #9
	bgt _0222257C
	beq _022226D4
	b _02222744
_0222257C:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	b _02222744
_0222258C:
	ldr r1, _02222B78 @ =0x02250D20
	mov r2, #0
	ldr r0, [r1, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	strh r2, [r0, #0x28]
	pop {r3, r4, pc}
_022225B4:
	ldr r2, _02222B78 @ =0x02250D20
	ldr r0, [r2, #8]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x26]
	cmp r1, #1
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	ldrh lr, [r0, #0x2a]
	ldrh r3, [r4, #0x10]
	mov ip, #1
	mov r1, r4
	orr r3, lr, ip, lsl r3
	strh r3, [r0, #0x2a]
	ldr r2, [r2, #8]
	mov r0, #0
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r1, _02222B78 @ =0x02250D20
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	bne _022226A4
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x31c]
	cmp r2, #0
	bne _022226A4
	mov r2, #1
	str r2, [r0, #0x31c]
	ldr r0, [r1, #8]
	ldr r1, _02222B78 @ =0x02250D20
	add r0, r0, #0x500
	ldrh r0, [r0, #0x2c]
	ldr ip, [r1, #8]
	mov r1, #1
	cmp r0, #0
	movne r2, #0
	lsl r0, r2, #0x10
	lsr r3, r0, #0x10
	add r0, ip, #0x500
	ldrh r4, [r0, #0x18]
	mov r2, #0
	str r4, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r0, #0x1a]
	ldr r1, [ip, #0x504]
	ldr r0, _02222B7C @ =ov18_02222330
	add r3, ip, #0x40
	bl FUN_020CF540
	mov r1, r0
	mov r0, #0xe
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022226A4:
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	ldr r1, _02222B78 @ =0x02250D20
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022226D4:
	ldr r2, _02222B78 @ =0x02250D20
	ldrh r3, [r4, #0x10]
	ldr r1, [r2, #8]
	mov r0, #1
	add r1, r1, #0x500
	ldrh ip, [r1, #0x2a]
	mvn r3, r0, lsl r3
	and r3, ip, r3
	strh r3, [r1, #0x2a]
	ldr r2, [r2, #8]
	mov r1, r4
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222710:
	ldr r0, _02222B78 @ =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r4
	mov r0, #0x1c
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222744:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222764:
	ldr r2, _02222B78 @ =0x02250D20
	mov r1, #0
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	beq _02222790
	cmp r0, #0xb
	beq _022227CC
	b _022227E8
_02222790:
	ldr r0, [r2, #8]
	mov r3, #1
	add r0, r0, #0x500
	strh r3, [r0, #0x28]
	ldr r2, [r2, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r2, [r2, #0x51c]
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022227CC:
	ldr r0, [r2, #8]
	ldr r1, [r4, #8]
	ldr r2, [r0, #0x51c]
	mov r0, #3
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022227E8:
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222804:
	ldr r0, _02222B78 @ =0x02250D20
	ldr r3, [r0, #0xc]
	add r0, r3, #0x7000
	ldr r0, [r0, #0x4c8]
	cmp r0, #0
	beq _02222860
	mov r2, #0
	mov r1, r2
_02222824:
	add r0, r3, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0
	beq _02222844
	add r2, r2, #1
	cmp r2, #2
	bhs _02222850
_02222844:
	add r1, r1, #1
	cmp r1, #0xf
	blo _02222824
_02222850:
	cmp r2, #1
	bne _02222860
	ldr r0, _02222B84 @ =0x000032C8
	bl FUN_020C3E08
_02222860:
	ldr r0, _02222B78 @ =0x02250D20
	mov r2, #0
	ldr r1, [r0, #8]
	strb r2, [r1, #0x50c]
	ldrh r1, [r4, #2]
	cmp r1, #0
	bne _022228C4
	ldr r0, [r0, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #2
	blx r2
	ldr r0, _02222B78 @ =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022228C4:
	cmp r1, #0xa
	ldr r0, [r0, #8]
	mov r1, r4
	bne _022228E8
	ldr r2, [r0, #0x51c]
	mov r0, #0x2a
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022228E8:
	ldr r2, [r0, #0x51c]
	mov r0, #0x13
	blx r2
	ldr r0, _02222B78 @ =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222928:
	ldr r1, _02222B78 @ =0x02250D20
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _022229A4
	ldrh r0, [r4, #2]
	mov r2, #0
	cmp r0, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	beq _02222978
	strh r2, [r0, #0x26]
	ldr r0, [r1, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222978:
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _02222B7C @ =ov18_02222330
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl FUN_020CED88
	mov r1, r0
	mov r0, #2
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022229A4:
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_020CE4BC
	mov r0, #0
	bl FUN_020CE478
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022229F8
	ldr r2, _02222B78 @ =0x02250D20
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022229F8:
	ldr r0, _02222B7C @ =ov18_02222330
	mov r1, #0
	bl FUN_020D0714
	mov r1, r0
	mov r0, #0x19
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222A18:
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _02222A54
	ldr r2, _02222B78 @ =0x02250D20
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222A54:
	bl ov18_022222EC
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222A60:
	ldrh r0, [r4, #2]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r0, _02222B78 @ =0x02250D20
	ldrh r1, [r4, #0xa]
	ldr r0, [r0, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	ldrh r2, [r0, #0x2a]
	mvn r1, r1
	and r1, r2, r1
	strh r1, [r0, #0x2a]
	pop {r3, r4, pc}
_02222A98:
	ldrh r0, [r4, #4]
	sub r0, r0, #0x10
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02222B70
_02222AAC: @ jump table
	b _02222ACC @ case 0
	b _02222AEC @ case 1
	b _02222B0C @ case 2
	b _02222B2C @ case 3
	b _02222B70 @ case 4
	b _02222B70 @ case 5
	b _02222B4C @ case 6
	b _02222B70 @ case 7
_02222ACC:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1d
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222AEC:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1f
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222B0C:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x20
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222B2C:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x21
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222B4C:
	bl FUN_020C42A8
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_02222B58:
	ldr r0, _02222B78 @ =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
_02222B70:
	add sp, sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_02222B78: .4byte 0x02250D20
_02222B7C: .4byte ov18_02222330
_02222B80: .4byte 0x0224976C
_02222B84: .4byte 0x000032C8
	arm_func_end ov18_02222330

	arm_func_start ov18_02222B88
ov18_02222B88: @ 0x02222B88
	push {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	popne {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _02222BC4
	bge _02222BDC
	cmp r0, #9
	popgt {r3, pc}
	cmp r0, #7
	poplt {r3, pc}
	cmpne r0, #9
	pop {r3, pc}
_02222BC4:
	cmp r0, #0x1a
	popgt {r3, pc}
	cmp r0, #0x19
	poplt {r3, pc}
	cmpne r0, #0x1a
	pop {r3, pc}
_02222BDC:
	ldr r2, _02222BF4 @ =0x02250D20
	mov r0, #9
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x51c]
	blx r2
	pop {r3, pc}
	.align 2, 0
_02222BF4: .4byte 0x02250D20
	arm_func_end ov18_02222B88

	arm_func_start ov18_02222BF8
ov18_02222BF8: @ 0x02222BF8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldrh r2, [r6]
	ldr r1, _02223410 @ =0x02250D20
	cmp r2, #0x1d
	ldr r4, [r1, #8]
	bgt _02222C84
	cmp r2, #0x1d
	bge _02222CF0
	cmp r2, #0x15
	addls pc, pc, r2, lsl #2
	b _022233F8
_02222C2C: @ jump table
	b _02222C90 @ case 0
	b _02223310 @ case 1
	b _02223370 @ case 2
	b _022233F8 @ case 3
	b _022233F8 @ case 4
	b _022233F8 @ case 5
	b _022233F8 @ case 6
	b _022233F8 @ case 7
	b _022233F8 @ case 8
	b _022233F8 @ case 9
	b _02222D8C @ case 10
	b _02223054 @ case 11
	b _022230A4 @ case 12
	b _022233F8 @ case 13
	b _0222321C @ case 14
	b _02223290 @ case 15
	b _022233F8 @ case 16
	b _022233F8 @ case 17
	b _022233F8 @ case 18
	b _022233F8 @ case 19
	b _022233F8 @ case 20
	b _022233AC @ case 21
_02222C84:
	cmp r2, #0x80
	beq _022233D4
	b _022233F8
_02222C90:
	ldrh r0, [r6, #2]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	cmp r0, #0
	beq _02222CB4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222CB4:
	mov r0, #0x15
	blx r2
	ldr r3, _02223414 @ =0x0224976C
	ldr r0, _02223418 @ =ov18_02222BF8
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl FUN_020D0764
	mov r1, r0
	mov r0, #0x1d
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222CF0:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02222D14
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222D14:
	add r0, r4, #0x440
	str r0, [r1, #0x20]
	ldrh r0, [r1, #0x24]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	strheq r0, [r1, #0x24]
	ldr r0, _02223410 @ =0x02250D20
	ldrh r1, [r0, #0x26]
	cmp r1, #0
	moveq r1, #0xc8
	strheq r1, [r0, #0x26]
	ldr r0, _02223410 @ =0x02250D20
	mov r1, #0xff
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	strb r1, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	strb r1, [r0, #0x2c]
	strb r1, [r0, #0x2d]
	str r2, [r4, #0x5e4]
	ldr r0, _02223418 @ =ov18_02222BF8
	ldr r1, _0222341C @ =0x02250D40
	str r2, [r4, #0x5e8]
	bl FUN_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222D8C:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02222DB0
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222DB0:
	ldrh r0, [r6, #8]
	cmp r0, #3
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #4
	beq _02222FDC
	cmp r0, #5
	bne _0222303C
	add ip, r4, #0x600
	mov r5, #0
	add r0, r4, #0x500
	mov fp, #0x180
	b _02222F0C
_02222DE4:
	mla r2, r5, fp, ip
	ldrb r3, [r6, #0xa]
	ldrb r1, [r2, #0xca]
	mov lr, #0
	mov sl, lr
	cmp r3, r1
	ldrbeq r1, [r2, #0xcb]
	ldrbeq r2, [r6, #0xb]
	mov r7, lr
	mov r8, lr
	cmpeq r2, r1
	moveq sl, #1
	mov sb, lr
	cmp sl, #0
	beq _02222E38
	mov r2, #0x180
	mla r2, r5, r2, ip
	ldrb r1, [r6, #0xc]
	ldrb r2, [r2, #0xcc]
	cmp r1, r2
	moveq sb, #1
_02222E38:
	cmp sb, #0
	beq _02222E58
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xd]
	ldrb r1, [r1, #0xcd]
	cmp r2, r1
	moveq r8, #1
_02222E58:
	cmp r8, #0
	beq _02222E78
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xe]
	ldrb r1, [r1, #0xce]
	cmp r2, r1
	moveq r7, #1
_02222E78:
	cmp r7, #0
	beq _02222E98
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xf]
	ldrb r1, [r1, #0xcf]
	cmp r2, r1
	moveq lr, #1
_02222E98:
	cmp lr, #0
	beq _02222F08
	mov r0, #0x180
	mla r0, r5, r0, ip
	ldrh r1, [r6, #0x36]
	add sb, r6, #0x38
	add r8, r0, #0xf8
	strh r1, [r0, #0xf6]
	mov r7, #8
_02222EBC:
	ldm sb!, {r0, r1, r2, r3}
	stm r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _02222EBC
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl FUN_020C2C1C
	ldr r1, _02223410 @ =0x02250D20
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl FUN_020C43C4
	str r5, [r4, #0x5ec]
	b _02222F7C
_02222F08:
	add r5, r5, #1
_02222F0C:
	ldrh r1, [r0, #0xe0]
	cmp r5, r1
	blt _02222DE4
	cmp r5, #0x10
	bge _02222F7C
	mov r0, #0x180
	mla r1, r5, r0, ip
	mov r0, r6
	add r7, r5, #1
	add r3, r4, #0x500
	add r1, r1, #0xc0
	mov r2, #0xb8
	strh r7, [r3, #0xe0]
	bl FUN_020C4B18
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl FUN_020C2C1C
	ldr r1, _02223410 @ =0x02250D20
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl FUN_020C43C4
	str r5, [r4, #0x5ec]
_02222F7C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #4
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _02222FBC
	ldr r0, _0222341C @ =0x02250D40
	bl ov18_022221CC
	cmp r0, #0
	bne _02222FBC
	bl ov18_02223A98
_02222FBC:
	ldr r0, _02223418 @ =ov18_02222BF8
	ldr r1, _0222341C @ =0x02250D40
	bl FUN_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222FDC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #5
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _0222301C
	ldr r0, _0222341C @ =0x02250D40
	bl ov18_022221CC
	cmp r0, #0
	bne _0222301C
	bl ov18_02223A98
_0222301C:
	ldr r0, _02223418 @ =ov18_02222BF8
	ldr r1, _0222341C @ =0x02250D40
	bl FUN_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222303C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223054:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02223078
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223078:
	ldr r1, [r4, #0x520]
	mov r2, #0
	ldr r0, _02223418 @ =ov18_02222BF8
	mov r3, #1
	str r2, [sp]
	bl FUN_020CF21C
	mov r1, r0
	mov r0, #0xc
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022230A4:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022230D4
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0xe0]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xb
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022230D4:
	ldrh r0, [r6, #8]
	cmp r0, #9
	bgt _02223100
	cmp r0, #6
	blt _02223204
	beq _02223110
	cmp r0, #7
	beq _0222312C
	cmp r0, #9
	beq _022231DC
	b _02223204
_02223100:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _02223204
_02223110:
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	mov r1, #1
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222312C:
	ldrh r2, [r6, #0xa]
	add r0, r4, #0x500
	mov r1, r6
	strh r2, [r0, #0xe2]
	ldr r2, [r4, #0x51c]
	mov r0, #6
	blx r2
	ldr r1, _02223420 @ =ov18_02222B88
	add r3, r4, #0x500
	mov r0, #1
	mov r2, #0
	strh r0, [r3, #0x2a]
	bl FUN_020CE4BC
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r4, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r4, #0x504]
	ldr r0, _02223418 @ =ov18_02222BF8
	add r3, r4, #0x40
	bl FUN_020CF540
	mov r1, r0
	mov r0, #0xe
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022231DC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xa
	blx r2
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223204:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222321C:
	ldrh r0, [r6, #4]
	cmp r0, #0xa
	beq _02223244
	cmp r0, #0xc
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xd
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _02223278
_02223244:
	add r0, r4, #0x500
	mov r1, #1
	strh r1, [r0, #0x28]
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223278:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223290:
	mov r0, #0
	strb r0, [r4, #0x50c]
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _022232B8
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #8
	blx r2
	b _022232DC
_022232B8:
	cmp r0, #9
	ldr r2, [r4, #0x51c]
	mov r1, r6
	bne _022232D4
	mov r0, #0x29
	blx r2
	b _022232DC
_022232D4:
	mov r0, #0x12
	blx r2
_022232DC:
	ldr r0, _02223410 @ =0x02250D20
	ldr r0, [r0, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223310:
	ldrh r0, [r6, #2]
	cmp r0, #0
	add r0, r4, #0x500
	beq _02223340
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223340:
	mov r2, #0
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _02223418 @ =ov18_02222BF8
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl FUN_020CED88
	mov r1, r0
	mov r0, #2
	bl ov18_02223ED8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223370:
	ldrh r1, [r6, #2]
	cmp r1, #0
	beq _022233A0
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233A0:
	bl ov18_022222EC
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233AC:
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233D4:
	ldrh r0, [r6, #4]
	cmp r0, #0x16
	beq _022233EC
	add sp, sp, #0x1c
	cmp r0, #0x17
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233EC:
	bl FUN_020C42A8
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233F8:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02223410: .4byte 0x02250D20
_02223414: .4byte 0x0224976C
_02223418: .4byte ov18_02222BF8
_0222341C: .4byte 0x02250D40
_02223420: .4byte ov18_02222B88
	arm_func_end ov18_02222BF8

	arm_func_start ov18_02223424
ov18_02223424: @ 0x02223424
	push {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_020C3FA0
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
_02223440:
	ldrb r0, [r2], #1
	add r1, r1, #1
	cmp r1, #6
	add r3, r3, r0
	blt _02223440
	ldr r1, _02223484 @ =0x027FFC3C
	ldr r0, _02223488 @ =0xCCCCCCCD
	ldr r1, [r1]
	mov r2, #0x14
	add r1, r3, r1
	rsb r3, r1, r1, lsl #3
	umull r1, r0, r3, r0
	lsr r0, r0, #4
	umull r0, r1, r2, r0
	sub r0, r3, r0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_02223484: .4byte 0x027FFC3C
_02223488: .4byte 0xCCCCCCCD
	arm_func_end ov18_02223424

	arm_func_start ov18_0222348C
ov18_0222348C: @ 0x0222348C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02223664 @ =0x02250D20
	mov sb, r1
	ldr r1, [r4, #0xc]
	mov r8, r2
	cmp r1, #0
	addne r1, r1, #0x1300
	ldrhne r1, [r1, #0x16]
	mov r7, r3
	cmpne r1, #0
	movne r0, #2
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #0x1f
	bic r4, r0, #0x1f
	add r0, r4, #0x1f
	add r0, r0, #0x1e00
	cmp r7, #0x10000
	bic r5, r0, #0x1f
	bne _022234E0
	bl FUN_020CEB20
	mov r7, r0
_022234E0:
	bl FUN_020C3D98
	ldr r3, _02223668 @ =0x0000FFFF
	ldr r1, _0222366C @ =0x0224976C
	mov r2, #5
	strh r3, [r1, #6]
	strh r2, [r1]
	mov r2, #0x28
	strh r2, [r1, #2]
	mov r6, r0
	strh r2, [r1, #4]
	mov r2, #1
	ldr r0, [sp, #0x20]
	ldr r3, _02223664 @ =0x02250D20
	str r2, [r1, #0xc]
	strh r0, [r3]
	str r4, [r3, #8]
	mov r1, r4
	mov r0, #0
	mov r2, #0x1e00
	str r5, [r3, #0xc]
	bl FUN_020C4B4C
	mov r1, r5
	mov r0, #0
	mov r2, #0x1340
	bl FUN_020C4AF0
	ldrb r0, [sb, #1]
	add r2, r4, #0x530
	mov r1, #0
	cmp r0, #0
	ble _02223574
_02223558:
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #2]
	add r1, r1, #1
	strh r0, [r2], #2
	ldrb r0, [sb, #1]
	cmp r1, r0
	blt _02223558
_02223574:
	add r0, r4, #0x138
	add r3, r0, #0x400
	ldr r0, _0222366C @ =0x0224976C
	mov ip, #0
	ldr r1, [r0, #8]
_02223588:
	ldrh r2, [r1]
	cmp r2, #0
	beq _022235AC
	add r1, r1, #2
	add ip, ip, #1
	str r1, [r0, #8]
	cmp ip, #0x10
	strh r2, [r3], #2
	blt _02223588
_022235AC:
	mov r0, sb
	add r1, r5, #0x1300
	mov r2, #0x16
	bl FUN_020C4DB0
	ldrb r0, [sb, #1]
	cmp r0, #0xa
	bhs _022235D8
	add r0, r5, r0, lsl #1
	add r0, r0, #0x1300
	mov r1, #0
	strh r1, [r0, #2]
_022235D8:
	add r0, r4, #0x500
	mov r1, #0x100
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r1, #1
	strh r1, [r0, #0x2c]
	add r0, r5, #0x400
	str r0, [r4, #0x504]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x12]
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x14]
	str r8, [r4, #8]
	strh r7, [r4, #0xc]
	bl ov18_02223424
	add r0, r0, #0xc8
	strh r0, [r4, #0x18]
	mov r0, #0xf
	strh r0, [r4, #0x10]
	mov r3, #0
	strb r3, [r4, #0x50c]
	strb r3, [r4, #0x50d]
	add r1, r5, #0x1300
	mov r2, #1
	mov r0, r6
	strh r2, [r1, #0x16]
	add r1, r5, #0x1000
	str r3, [r1, #0x31c]
	bl FUN_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02223664: .4byte 0x02250D20
_02223668: .4byte 0x0000FFFF
_0222366C: .4byte 0x0224976C
	arm_func_end ov18_0222348C

	arm_func_start ov18_02223670
ov18_02223670: @ 0x02223670
	ldr r3, _022236D8 @ =0x000001FE
	cmp r0, r3
	bhi _02223684
	cmp r0, #0xe4
	bhs _0222368C
_02223684:
	mov r0, #0
	bx lr
_0222368C:
	cmp r1, #0x10
	bhi _0222369C
	cmp r1, #8
	bhs _022236A4
_0222369C:
	mov r0, #0
	bx lr
_022236A4:
	add r0, r0, #0x26
	lsl r0, r0, #2
	add r1, r1, #0x20
	add r0, r0, #0x4a
	lsl r1, r1, #2
	add r3, r0, #0x100
	add r0, r1, #0x70
	mla r1, r2, r0, r3
	ldr r0, _022236DC @ =0x000015E0
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	bx lr
	.align 2, 0
_022236D8: .4byte 0x000001FE
_022236DC: .4byte 0x000015E0
	arm_func_end ov18_02223670

	arm_func_start ov18_022236E0
ov18_022236E0: @ 0x022236E0
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020C3D98
	ldr r1, _02223774 @ =0x02250D20
	mov r6, r0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #0x50d]
	cmp r1, #0
	beq _02223714
	bl FUN_020C3DAC
	mov r0, #0
	pop {r4, r5, r6, pc}
_02223714:
	mov r0, r5
	mov r2, r4
	mov r1, #8
	bl ov18_02223670
	cmp r0, #0
	bne _0222373C
	mov r0, r6
	bl FUN_020C3DAC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222373C:
	ldr r2, _02223774 @ =0x02250D20
	mov r0, r6
	ldr r1, [r2, #8]
	mov r3, #8
	strh r4, [r1, #0x10]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r5, [r1]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #2]
	bl FUN_020C3DAC
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02223774: .4byte 0x02250D20
	arm_func_end ov18_022236E0

	arm_func_start ov18_02223778
ov18_02223778: @ 0x02223778
	push {r4, lr}
	ldr r2, _02223848 @ =0x02250D20
	mov r3, #0
	ldr r1, [r2, #8]
	mov r0, #0xa
	add r1, r1, #0x500
	strh r3, [r1, #0x28]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x2a]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x26]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x48]
	bl ov18_02223CF4
	ldr r4, _02223848 @ =0x02250D20
	ldr r0, [r4, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _02223820
_022237D4:
	ldrh r2, [r4]
	ldmib r4, {r0, r1}
	ldr r1, [r1, #0x508]
	bl FUN_020CECC8
	cmp r0, #4
	beq _022237D4
	cmp r0, #2
	movne r0, #8
	popne {r4, pc}
	ldr r0, _02223848 @ =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl FUN_020CE478
	ldr r0, _02223848 @ =0x02250D20
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0
	strb r2, [r1, #0x50d]
	pop {r4, pc}
_02223820:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x508]
	bl FUN_020CE478
	mov r0, r4
	ldr r0, [r0, #8]
	mov r1, #1
	strb r1, [r0, #0x50d]
	bl ov18_0222229C
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02223848: .4byte 0x02250D20
	arm_func_end ov18_02223778

	arm_func_start ov18_0222384C
ov18_0222384C: @ 0x0222384C
	push {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_020C3D98
	ldr r3, _02223A1C @ =0x02250D20
	mov r4, r0
	ldr r0, [r3, #8]
	ldr r2, _02223A20 @ =0x000069C0
	strh r5, [r0, #0x32]
	ldr r5, [r3, #0xc]
	mov r0, #0
	add r1, r5, #0x1f
	add r1, r1, #0x7d00
	bic r1, r1, #0x1f
	str r1, [r3, #4]
	add r1, r5, #0x1000
	ldr r6, [r1, #0x4e4]
	add r1, r5, #0x1340
	bl FUN_020C4AF0
	mov r0, r6
	bl ov18_0221F84C
	ldr r1, _02223A1C @ =0x02250D20
	ldr r0, [r1, #8]
	ldr r2, [r1, #0xc]
	add r0, r0, #0x500
	ldrh r3, [r0]
	add r0, r2, #0x1000
	sub r2, r3, #6
	str r2, [r0, #0x318]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #2]
	bl ov18_022243B0
	ldr r0, _02223A1C @ =0x02250D20
	ldr r0, [r0, #0xc]
	add r0, r0, #0x138
	add r0, r0, #0x1400
	bl ov18_022243E0
	mov r5, #0
	ldr r2, _02223A1C @ =0x02250D20
	mov r0, r5
	mvn r3, #0
_022238F0:
	ldr r1, [r2, #0xc]
	add r1, r1, r5, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x4e8]
	ldr r1, [r2, #0xc]
	add r1, r1, r5
	add r1, r1, #0x1000
	add r5, r5, #1
	strb r3, [r1, #0x526]
	cmp r5, #0xf
	blt _022238F0
	ldr r3, _02223A1C @ =0x02250D20
	ldr r2, _02223A24 @ =0x00005D40
	ldr r1, [r3, #0xc]
	add r1, r1, #0x1000
	strb r0, [r1, #0x524]
	ldr r1, [r3, #0xc]
	add r1, r1, #0x388
	add r1, r1, #0x1400
	bl FUN_020C4AF0
	ldr r0, _02223A1C @ =0x02250D20
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x1e
	add r0, r0, #0x354
	add r0, r0, #0x1400
	bl FUN_020C4CF4
	ldr r1, _02223A1C @ =0x02250D20
	mov r2, #1
	ldr r0, [r1, #8]
	ldr r3, _02223A28 @ =ov18_0221FAA0
	add r0, r0, #0x500
	strh r2, [r0, #0x24]
	ldr r0, [r1, #8]
	ldr r2, _02223A2C @ =ov18_02222330
	str r3, [r0, #0x51c]
	ldr r0, [r1, #8]
	str r2, [r0, #0x508]
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldrh r2, [r0, #0x34]
	add r0, r0, #0x500
	add r2, r2, #0x23
	bic r2, r2, #0x1f
	strh r2, [r0, #0x18]
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x36]
	ldr r0, [r1, #8]
	ldrh r1, [r0, #0x36]
	add r0, r0, #0x500
	add r1, r1, #0xe
	rsb r1, r1, r1, lsl #4
	add r1, r1, #0x29
	bic r1, r1, #0x1f
	lsl r1, r1, #1
	strh r1, [r0, #0x1a]
	bl ov18_02221BFC
	bl ov18_02223778
	mov r5, r0
	mov r0, r4
	bl FUN_020C3DAC
	mov r0, #0xf
	mov r1, #1
	bl FUN_020C64A8
	ldr r1, _02223A1C @ =0x02250D20
	ldr r1, [r1, #0xc]
	add r1, r1, #0x7000
	str r0, [r1, #0x4c8]
	mov r0, r5
	pop {r4, r5, r6, pc}
	.align 2, 0
_02223A1C: .4byte 0x02250D20
_02223A20: .4byte 0x000069C0
_02223A24: .4byte 0x00005D40
_02223A28: .4byte ov18_0221FAA0
_02223A2C: .4byte ov18_02222330
	arm_func_end ov18_0222384C

	arm_func_start ov18_02223A30
ov18_02223A30: @ 0x02223A30
	ldr r1, _02223A4C @ =0x02250D20
	ldr ip, _02223A50 @ =ov18_0222384C
	ldr r1, [r1, #0xc]
	mov r2, #1
	add r1, r1, #0x1000
	str r2, [r1, #0x320]
	bx ip
	.align 2, 0
_02223A4C: .4byte 0x02250D20
_02223A50: .4byte ov18_0222384C
	arm_func_end ov18_02223A30

	arm_func_start ov18_02223A54
ov18_02223A54: @ 0x02223A54
	push {r4, lr}
	ldr r0, _02223A88 @ =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl FUN_020CED50
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl ov18_02223ED8
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_02223A88: .4byte 0x02250D20
	arm_func_end ov18_02223A54

	arm_func_start ov18_02223A8C
ov18_02223A8C: @ 0x02223A8C
	ldr ip, _02223A94 @ =ov18_02223A54
	bx ip
	.align 2, 0
_02223A94: .4byte ov18_02223A54
	arm_func_end ov18_02223A8C

	arm_func_start ov18_02223A98
ov18_02223A98: @ 0x02223A98
	push {r3, r4, r5, lr}
	mov r5, #1
	bl FUN_020C3D98
	ldr r1, _02223B24 @ =0x02250D20
	mov r4, r0
	ldr r2, [r1, #8]
	ldrb r0, [r2, #0x50d]
	cmp r0, #0
	bne _02223AC8
	mov r0, #0
	bl ov18_022222EC
	b _02223B14
_02223AC8:
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _02223B14
	mov r0, #0
	str r0, [r2, #0x5e4]
	ldr r0, [r1, #8]
	mov r1, r5
	add r0, r0, #0x500
	strh r1, [r0, #0x26]
	bl ov18_022241BC
	cmp r0, #0
	beq _02223B0C
	ldr r0, _02223B28 @ =ov18_02223A8C
	bl ov18_02224368
	mov r5, #0
	b _02223B14
_02223B0C:
	bl ov18_02223A54
	mov r5, r0
_02223B14:
	mov r0, r4
	bl FUN_020C3DAC
	mov r0, r5
	pop {r3, r4, r5, pc}
	.align 2, 0
_02223B24: .4byte 0x02250D20
_02223B28: .4byte ov18_02223A8C
	arm_func_end ov18_02223A98

	arm_func_start ov18_02223B2C
ov18_02223B2C: @ 0x02223B2C
	push {r4, lr}
	bl FUN_020C3D98
	ldr r1, _02223B64 @ =0x02250D20
	mov r4, r0
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _02223B54
	bl FUN_020C42A8
_02223B54:
	bl ov18_02223A98
	mov r0, r4
	bl FUN_020C3DAC
	pop {r4, pc}
	.align 2, 0
_02223B64: .4byte 0x02250D20
	arm_func_end ov18_02223B2C

	arm_func_start ov18_02223B68
ov18_02223B68: @ 0x02223B68
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _02223CE8 @ =ov18_02222330
	mov r1, r5
	bl FUN_020CF2E8
	cmp r5, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	pophs {r3, r4, r5, r6, r7, pc}
	ldr r2, _02223CEC @ =0x02250D20
	sub r4, r5, #1
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2, #0xc]
	mov r2, #4
	add r0, r0, #0xa8
	add r0, r0, #0x1400
	add r0, r0, r4, lsl #2
	bl FUN_020C4CF4
	ldr r0, _02223CEC @ =0x02250D20
	mov r2, #0x16
	ldr r0, [r0, #0xc]
	mov r1, #0
	add r0, r0, #0x1340
	mla r0, r4, r2, r0
	bl FUN_020C4CF4
	mov r0, r5
	bl ov18_02224400
	ldr ip, _02223CEC @ =0x02250D20
	mov r2, #0
	ldr r0, [ip, #0xc]
	sub r1, r2, #1
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	ldr r3, [ip, #0xc]
	add r0, r3, r4
	add r0, r0, #0x1500
	ldrsb r2, [r0, #0x26]
	cmp r2, r1
	beq _02223C88
	ldr r0, _02223CF0 @ =0x000005D4
	and r1, r2, #0xff
	mul r0, r1, r0
	add r1, r3, r0
	add r3, r1, #0x1d00
	mov r2, #1
	ldrh r6, [r3, #0x4e]
	mvn r1, r2, lsl r5
	and r6, r6, r1
	strh r6, [r3, #0x4e]
	ldr r3, [ip, #0xc]
	sub r6, r2, #2
	add r3, r3, r0
	add r3, r3, #0x1d00
	ldrh r7, [r3, #0x50]
	mov lr, r4
	orr r2, r7, r2, lsl r5
	strh r2, [r3, #0x50]
	ldr r2, [ip, #0xc]
	add r2, r2, lr
	add r2, r2, #0x1000
	strb r6, [r2, #0x526]
	ldr r2, [ip, #0xc]
	add r0, r2, r0
	add r0, r0, #0x1d00
	ldrh r2, [r0, #0x4c]
	and r1, r2, r1
	strh r1, [r0, #0x4c]
_02223C88:
	ldr r1, _02223CEC @ =0x02250D20
	mov ip, #1
	ldr r2, [r1, #0xc]
	add r0, r2, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, ip, lsl r5
	beq _02223CCC
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x535]
	mvn r2, ip, lsl r5
	sub r3, r3, #1
	strb r3, [r0, #0x535]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1500
	ldrh r1, [r0, #0x36]
	and r1, r1, r2
	strh r1, [r0, #0x36]
_02223CCC:
	ldr r0, _02223CEC @ =0x02250D20
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02223CE8: .4byte ov18_02222330
_02223CEC: .4byte 0x02250D20
_02223CF0: .4byte 0x000005D4
	arm_func_end ov18_02223B68

	arm_func_start ov18_02223CF4
ov18_02223CF4: @ 0x02223CF4
	ldr r1, _02223D00 @ =0x02250D20
	strh r0, [r1, #0x26]
	bx lr
	.align 2, 0
_02223D00: .4byte 0x02250D20
	arm_func_end ov18_02223CF4

	arm_func_start ov18_02223D04
ov18_02223D04: @ 0x02223D04
	push {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r4, [sp, #0x18]
	mov r3, r2
	mov r2, r1
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #3
	mov r1, #0
	str r4, [sp, #8]
	bl FUN_020CF64C
	mov r4, r0
	mov r1, r4
	mov r0, #0xf
	bl ov18_02223ED8
	mov r0, r4
	add sp, sp, #0xc
	pop {r3, r4, pc}
	arm_func_end ov18_02223D04

	arm_func_start ov18_02223D50
ov18_02223D50: @ 0x02223D50
	push {r3, r4, r5, lr}
	ldr ip, _02223E28 @ =0x02250D20
	lsl r3, r1, #0x10
	ldr r5, [ip, #8]
	lsl ip, r2, #0x10
	add lr, r5, #0x500
	ldrh r4, [lr, #0x28]
	mov r1, r0
	lsr r2, r3, #0x10
	cmp r4, #0
	ldrhne r0, [lr, #0x26]
	lsr r4, ip, #0x10
	cmpne r0, #1
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrh r0, [lr, #0x24]
	cmp r0, #1
	beq _02223DA4
	cmp r0, #2
	beq _02223DEC
	b _02223E20
_02223DA4:
	ldrh r0, [lr, #0x2c]
	cmp r0, #0
	moveq r0, #0x3e8
	movne r0, #0
	lsl r3, r0, #0x10
	str r4, [sp]
	ldr r0, [r5, #0x508]
	lsr r3, r3, #0x10
	bl ov18_02223D04
	cmp r0, #2
	bne _02223DE0
	ldr r1, _02223E28 @ =0x02250D20
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_02223DE0:
	cmp r0, #2
	moveq r0, #0
	pop {r3, r4, r5, pc}
_02223DEC:
	ldr r0, _02223E2C @ =ov18_02222BF8
	mov r3, #0
	str r4, [sp]
	bl ov18_02223D04
	cmp r0, #2
	bne _02223E14
	ldr r1, _02223E28 @ =0x02250D20
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_02223E14:
	cmp r0, #2
	moveq r0, #0
	pop {r3, r4, r5, pc}
_02223E20:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02223E28: .4byte 0x02250D20
_02223E2C: .4byte ov18_02222BF8
	arm_func_end ov18_02223D50

	arm_func_start ov18_02223E30
ov18_02223E30: @ 0x02223E30
	ldr r0, _02223E40 @ =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_02223E40: .4byte 0x02250D20
	arm_func_end ov18_02223E30

	arm_func_start ov18_02223E44
ov18_02223E44: @ 0x02223E44
	ldr r0, _02223E54 @ =0x02250D20
	ldr r0, [r0, #8]
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02223E54: .4byte 0x02250D20
	arm_func_end ov18_02223E44

	arm_func_start ov18_02223E58
ov18_02223E58: @ 0x02223E58
	ldr r0, _02223EB4 @ =0x02250D20
	ldr r1, [r0, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	ldrh r0, [r1, #0xe]
	movne r2, #2
	moveq r2, #0
	cmp r0, #0
	movne r3, #1
	ldrh r0, [r1, #0x14]
	moveq r3, #0
	cmp r0, #0
	movne ip, #4
	ldrh r0, [r1, #0x16]
	moveq ip, #0
	cmp r0, #0
	movne r1, #8
	orr r0, r3, r2
	moveq r1, #0
	orr r0, ip, r0
	orr r0, r1, r0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_02223EB4: .4byte 0x02250D20
	arm_func_end ov18_02223E58

	arm_func_start ov18_02223EB8
ov18_02223EB8: @ 0x02223EB8
	ldr r0, _02223ED4 @ =0x02250D20
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x50d]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_02223ED4: .4byte 0x02250D20
	arm_func_end ov18_02223EB8

	arm_func_start ov18_02223ED8
ov18_02223ED8: @ 0x02223ED8
	push {r3, lr}
	cmp r1, #2
	cmpne r1, #0
	popeq {r3, pc}
	ldr r2, _02223F0C @ =0x02250D20
	strh r0, [sp]
	ldr r0, [r2, #8]
	strh r1, [sp, #2]
	ldr r2, [r0, #0x51c]
	add r1, sp, #0
	mov r0, #0xff
	blx r2
	pop {r3, pc}
	.align 2, 0
_02223F0C: .4byte 0x02250D20
	arm_func_end ov18_02223ED8

	arm_func_start ov18_02223F10
ov18_02223F10: @ 0x02223F10
	ldr ip, _02223F20 @ =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x70
	bx ip
	.align 2, 0
_02223F20: .4byte FUN_020C4CF4
	arm_func_end ov18_02223F10

	arm_func_start ov18_02223F24
ov18_02223F24: @ 0x02223F24
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	bl FUN_020C3D98
	add r6, r4, #0x30
	mov r5, r0
	add r4, r4, #0x70
_02223F48:
	cmp r6, r4
	blo _02223F54
	bl FUN_020C42A8
_02223F54:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _02223F78
	str sb, [r6]
	str r8, [r6, #4]
	ldr r0, [sp, #0x20]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	b _02223F80
_02223F78:
	add r6, r6, #0x10
	b _02223F48
_02223F80:
	mov r0, r5
	bl FUN_020C3DAC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov18_02223F24

	arm_func_start ov18_02223F8C
ov18_02223F8C: @ 0x02223F8C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl FUN_020C3D98
	add r2, sb, #0x30
	add r1, sb, #0x70
	mov r5, r0
	cmp r2, r1
	bhs _02224014
_02223FBC:
	ldr r0, [r2, #0xc]
	cmp r0, #2
	blo _02224008
	ldr r0, [r2]
	subs r0, r8, r0
	bmi _02224008
	ldr r3, [r2, #4]
	add ip, r0, r6
	cmp ip, r3
	bhi _02224008
	ldr r3, [r2, #8]
	mov r1, r7
	mov r2, r6
	add r0, r3, r0
	bl FUN_020C4DB0
	mov r0, #0
	str r0, [sb]
	mov r4, #1
	b _02224014
_02224008:
	add r2, r2, #0x10
	cmp r2, r1
	blo _02223FBC
_02224014:
	mov r0, r5
	bl FUN_020C3DAC
	mov r0, r4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov18_02223F8C

	arm_func_start ov18_02224024
ov18_02224024: @ 0x02224024
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
_0222402C:
	bl FUN_020C3D98
	ldr r1, [r7, #0xc0]
	mov r5, r0
	cmp r1, #0
	bne _02224068
	mov r6, #0
	mov r4, r6
_02224048:
	mov r0, r7
	mov r1, r6
	bl FUN_020C23F4
	mov r0, r4
	bl FUN_020C2218
	ldr r0, [r7, #0xc0]
	cmp r0, #0
	beq _02224048
_02224068:
	ldr r4, [r7, #0xc0]
	ldr r1, [r7, #0xc0]
	mov r0, r7
	ldr r1, [r1]
	str r1, [r7, #0xc0]
	ldr r1, [r4, #4]
	lsr r1, r1, #1
	bl FUN_020C23F4
	mov r0, r5
	bl FUN_020C3DAC
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _022240A4
	mov r0, r4
	blx r1
_022240A4:
	bl FUN_020C3D98
	mov r5, r0
	mov r0, r7
	ldr r6, [r4, #0xc]
	bl FUN_020C249C
	ldr r1, [r7, #0xc0]
	cmp r1, #0
	moveq r1, #0
	beq _022240E8
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	cmp r0, r1, lsr #1
	movhs r1, r0
	bhs _022240E8
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	lsr r1, r1, #1
_022240E8:
	cmp r1, r0
	beq _022240F8
	mov r0, r7
	bl FUN_020C23F4
_022240F8:
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r6, #0
	bic r0, r0, #1
	str r0, [r4, #4]
	beq _0222411C
	mov r0, r4
	blx r6
_0222411C:
	add r0, r7, #0xc4
	cmp r4, r0
	beq _02224134
	mov r0, r5
	bl FUN_020C3DAC
	b _0222402C
_02224134:
	bl FUN_020C2030
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02224024

	arm_func_start ov18_0222413C
ov18_0222413C: @ 0x0222413C
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r1
	bl FUN_020C3D98
	ldr r1, _022241B4 @ =0x02250D60
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _022241A4
	add r0, r5, #0xc4
	str r5, [r1]
	bl ov18_022241D8
	sub r0, r6, #0xe4
	mov lr, #0
	bic ip, r0, #3
	add r3, r5, #0xe4
	str lr, [r5, #0xc0]
	ldr r1, _022241B8 @ =ov18_02224024
	mov r0, r5
	mov r2, r5
	add r3, r3, ip
	stm sp, {ip, lr}
	bl FUN_020C1F34
	mov r0, r5
	bl FUN_020C22D0
_022241A4:
	mov r0, r4
	bl FUN_020C3DAC
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022241B4: .4byte 0x02250D60
_022241B8: .4byte ov18_02224024
	arm_func_end ov18_0222413C

	arm_func_start ov18_022241BC
ov18_022241BC: @ 0x022241BC
	ldr r0, _022241D4 @ =0x02250D60
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_022241D4: .4byte 0x02250D60
	arm_func_end ov18_022241BC

	arm_func_start ov18_022241D8
ov18_022241D8: @ 0x022241D8
	ldr ip, _022241E8 @ =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x20
	bx ip
	.align 2, 0
_022241E8: .4byte FUN_020C4CF4
	arm_func_end ov18_022241D8

	arm_func_start ov18_022241EC
ov18_022241EC: @ 0x022241EC
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov18_022241EC

	arm_func_start ov18_02224204
ov18_02224204: @ 0x02224204
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02224364 @ =0x02250D60
	mov sb, r0
	ldr r4, [r4]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov18_022241BC
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #4]
	lsl r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0x1f
	bls _02224288
	mov r0, r4
	bl FUN_020C249C
	cmp r6, #0x20
	bne _02224264
	cmp r0, #0
	subne r6, r0, #1
	moveq r6, #0
	b _02224288
_02224264:
	cmp r6, #0x21
	bne _0222427C
	cmp r0, #0x1f
	addlo r6, r0, #1
	movhs r6, #0x1f
	b _02224288
_0222427C:
	cmp r6, #0x22
	moveq r6, r0
	movne r6, #0x1f
_02224288:
	bl FUN_020C3D98
	ldr r1, [sb, #4]
	mov r5, r0
	bic r0, r1, #1
	orr r1, r0, #1
	and r0, r1, #1
	str r1, [sb, #4]
	orr r0, r0, r6, lsl #1
	stmib sb, {r0, r8}
	str r7, [sb, #0xc]
	ldr r0, [r4, #0xc0]
	cmp r0, #0
	add r0, r4, #0xc4
	bne _022242E0
	cmp sb, r0
	ldreq r0, _02224364 @ =0x02250D60
	moveq r1, #0
	streq r1, [r0]
	mov r0, r4
	str sb, [r4, #0xc0]
	bl FUN_020C22D0
	b _02224358
_022242E0:
	cmp sb, r0
	ldr r1, [r4, #0xc0]
	bne _0222431C
	ldr r0, [r1]
	cmp r0, #0
	beq _02224308
_022242F8:
	mov r1, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _022242F8
_02224308:
	ldr r0, _02224364 @ =0x02250D60
	str sb, [r1]
	mov r1, #0
	str r1, [r0]
	b _02224358
_0222431C:
	ldr r0, [r1, #4]
	cmp r6, r0, lsr #1
	strlo sb, [r4, #0xc0]
	strlo r1, [sb]
	blo _02224358
	b _02224338
_02224334:
	mov r1, r2
_02224338:
	ldr r2, [r1]
	cmp r2, #0
	beq _02224350
	ldr r0, [r2, #4]
	cmp r6, r0, lsr #1
	bhs _02224334
_02224350:
	str r2, [sb]
	str sb, [r1]
_02224358:
	mov r0, r5
	bl FUN_020C3DAC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02224364: .4byte 0x02250D60
	arm_func_end ov18_02224204

	arm_func_start ov18_02224368
ov18_02224368: @ 0x02224368
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_020C3D98
	mov r4, r0
	bl ov18_022241BC
	cmp r0, #0
	beq _022243A0
	ldr r0, _022243AC @ =0x02250D60
	mov r1, #0
	ldr r0, [r0]
	mov r2, r5
	mov r3, r1
	add r0, r0, #0xc4
	bl ov18_02224204
_022243A0:
	mov r0, r4
	bl FUN_020C3DAC
	pop {r3, r4, r5, pc}
	.align 2, 0
_022243AC: .4byte 0x02250D60
	arm_func_end ov18_02224368

	arm_func_start ov18_022243B0
ov18_022243B0: @ 0x022243B0
	push {r3, lr}
	ldr r2, _022243DC @ =0x02250D64
	sub r1, r0, #2
	mov r0, #0x1e
	str r1, [r2, #8]
	bl FUN_020E1F6C
	ldr r1, _022243DC @ =0x02250D64
	mov r2, #0x1e
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	pop {r3, pc}
	.align 2, 0
_022243DC: .4byte 0x02250D64
	arm_func_end ov18_022243B0

	arm_func_start ov18_022243E0
ov18_022243E0: @ 0x022243E0
	ldr r3, _022243F8 @ =0x02250D64
	ldr ip, _022243FC @ =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x21c
	str r0, [r3, #4]
	bx ip
	.align 2, 0
_022243F8: .4byte 0x02250D64
_022243FC: .4byte FUN_020C4CF4
	arm_func_end ov18_022243E0

	arm_func_start ov18_02224400
ov18_02224400: @ 0x02224400
	push {r4, lr}
	ldr r1, _02224440 @ =0x02250D64
	ldr r1, [r1, #4]
	cmp r1, #0
	popeq {r4, pc}
	sub r4, r0, #1
	add r0, r1, r4, lsl #5
	mov r1, #0
	mov r2, #0x1e
	bl FUN_020C4CF4
	ldr r0, _02224440 @ =0x02250D64
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x1e0]
	pop {r4, pc}
	.align 2, 0
_02224440: .4byte 0x02250D64
	arm_func_end ov18_02224400

	arm_func_start ov18_02224444
ov18_02224444: @ 0x02224444
	ldrb r2, [r0]
	mov r3, r1
	add r3, r3, #1
	strb r2, [r1]
	ldrb r1, [r0]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _022244B8
_02224464: @ jump table
	b _022244B8 @ case 0
	b _022244C0 @ case 1
	b _022244C0 @ case 2
	b _022244C0 @ case 3
	b _02224480 @ case 4
	b _022244C0 @ case 5
	b _022244C0 @ case 6
_02224480:
	ldrh r1, [r0, #2]
	strb r1, [r3]
	ldrh r1, [r0, #2]
	and r1, r1, #0xff00
	asr r1, r1, #8
	strb r1, [r3, #1]
	ldrh r1, [r0, #4]
	strb r1, [r3, #2]
	ldrh r0, [r0, #4]
	and r0, r0, #0xff00
	asr r0, r0, #8
	strb r0, [r3, #3]
	add r3, r3, #4
	b _022244C0
_022244B8:
	mov r0, #0
	bx lr
_022244C0:
	mov r0, r3
	bx lr
	arm_func_end ov18_02224444

	arm_func_start ov18_022244C8
ov18_022244C8: @ 0x022244C8
	push {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6]
	mov r5, r1
	mov r4, r2
	strb r0, [r5]
	cmp r0, #7
	beq _022244FC
	cmp r0, #8
	beq _02224560
	cmp r0, #9
	beq _02224588
	b _022245D0
_022244FC:
	mov r0, r4
	bl ov18_02224670
	cmp r0, #0
	beq _02224520
	ldr r0, _022245E0 @ =0x02250D64
	sub r1, r4, #1
	ldr r0, [r0, #4]
	add r0, r0, r1, lsl #5
	pop {r4, r5, r6, pc}
_02224520:
	ldrb r2, [r6, #1]
	ldr r0, _022245E0 @ =0x02250D64
	strb r2, [r5, #2]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	movgt r0, #0
	popgt {r4, r5, r6, pc}
	ldr r2, [r0, #8]
	add r0, r6, #2
	add r1, r5, #3
	bl FUN_020C4DB0
	mov r0, r5
	mov r1, r4
	bl ov18_022245E4
	mov r4, r0
	b _022245D8
_02224560:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	strh r0, [r5, #2]
	ldrb r0, [r6, #2]
	ldrh r1, [r5, #2]
	lsl r0, r0, #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [r5, #2]
	b _022245D8
_02224588:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	ldr r1, _022245E0 @ =0x02250D64
	strh r0, [r5, #2]
	ldrb r2, [r6, #2]
	ldrh r3, [r5, #2]
	mov r0, r4
	lsl r2, r2, #8
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r5, #2]
	ldr r2, [r1, #8]
	add r1, r5, #4
	bl FUN_020C4DB0
	ldr r0, _022245E0 @ =0x02250D64
	ldr r0, [r0, #8]
	add r4, r4, r0
	b _022245D8
_022245D0:
	mov r0, #0
	pop {r4, r5, r6, pc}
_022245D8:
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022245E0: .4byte 0x02250D64
	arm_func_end ov18_022244C8

	arm_func_start ov18_022245E4
ov18_022245E4: @ 0x022245E4
	push {r4, r5, r6, lr}
	ldr r2, _0222466C @ =0x02250D64
	mov r6, r1
	ldr r3, [r2, #4]
	cmp r3, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldrb r5, [r0, #2]
	ldr r1, [r2, #0xc]
	cmp r5, r1
	movgt r0, #0
	popgt {r4, r5, r6, pc}
	sub r4, r6, #1
	ldr r2, [r2, #8]
	add r1, r3, r4, lsl #5
	mla r1, r5, r2, r1
	add r0, r0, #3
	bl FUN_020C4DB0
	ldr r0, _0222466C @ =0x02250D64
	mov r1, #1
	ldr r2, [r0, #4]
	mov r0, r6
	add r3, r2, #0x1e0
	ldr r2, [r3, r4, lsl #2]
	orr r1, r2, r1, lsl r5
	str r1, [r3, r4, lsl #2]
	bl ov18_02224670
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r0, _0222466C @ =0x02250D64
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #5
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222466C: .4byte 0x02250D64
	arm_func_end ov18_022245E4

	arm_func_start ov18_02224670
ov18_02224670: @ 0x02224670
	ldr r1, _022246C0 @ =0x02250D64
	mov r2, #0
	ldr ip, [r1, #0xc]
	cmp ip, #0
	ble _022246B8
	ldr r1, [r1, #4]
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	ldr r3, [r0, #0x1e0]
	mov r1, #1
_02224698:
	tst r3, r1, lsl r2
	moveq r0, #0
	bxeq lr
	add r0, r2, #1
	lsl r0, r0, #0x10
	cmp ip, r0, lsr #16
	lsr r2, r0, #0x10
	bgt _02224698
_022246B8:
	mov r0, #1
	bx lr
	.align 2, 0
_022246C0: .4byte 0x02250D64
	arm_func_end ov18_02224670

	thumb_func_start ov18_022246C4
ov18_022246C4: @ 0x022246C4
	push {r3, lr}
	ldr r1, _022246D0 @ =0x02251B60
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_022246D0: .4byte 0x02251B60
	thumb_func_end ov18_022246C4

	thumb_func_start ov18_022246D4
ov18_022246D4: @ 0x022246D4
	push {r3, lr}
	ldr r1, _022246E0 @ =0x02251B6C
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_022246E0: .4byte 0x02251B6C
	thumb_func_end ov18_022246D4

	thumb_func_start ov18_022246E4
ov18_022246E4: @ 0x022246E4
	push {r4, lr}
	ldr r2, _022247B8 @ =0x00000106
	adds r4, r0, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _02224734
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	blt _02224734
	adds r0, r2, #2
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _02224734
	adds r0, r2, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _02224734
	cmp r0, r1
	blt _02224734
	adds r0, r2, #6
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _02224734
	adds r0, r2, #0
	adds r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _02224734
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _02224734
	subs r0, r2, #6
	cmp r1, r0
	bhi _02224734
	subs r0, r1, #1
	adds r0, r4, r0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0222473A
_02224734:
	movs r1, #0
	mvns r1, r1
	b _0222473C
_0222473A:
	movs r1, #0
_0222473C:
	ldr r0, _022247BC @ =0x02251B60
	ldr r0, [r0]
	cmp r0, #0
	beq _0222474C
	ldr r0, _022247C0 @ =0x02251B6C
	ldr r0, [r0]
	cmp r0, #0
	bne _02224750
_0222474C:
	movs r1, #0
	mvns r1, r1
_02224750:
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _02224768
	ldr r0, _022247C4 @ =0x00000116
	movs r1, #0xf
	strb r1, [r4, r0]
	bl ov18_02225204
	movs r0, #0
	mvns r0, r0
	pop {r4, pc}
_02224768:
	ldr r0, _022247C8 @ =0x000005F8
	bl ov18_022246C4
	ldr r1, _022247CC @ =0x02250D78
	cmp r0, #0
	str r0, [r1, #0x14]
	bne _02224786
	ldr r0, _022247C4 @ =0x00000116
	movs r1, #0xf
	strb r1, [r4, r0]
	bl ov18_02225204
	movs r0, #0
	mvns r0, r0
	pop {r4, pc}
_02224786:
	movs r0, #0
	mvns r0, r0
	bl ov18_022255AC
	adds r0, r4, #0
	bl ov18_022247D4
	adds r4, r0, #0
	ldr r0, _022247CC @ =0x02250D78
	ldr r0, [r0, #0x14]
	bl ov18_022246D4
	bl ov18_02225204
	ldr r0, _022247D0 @ =0x02249794
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	cmp r0, r1
	beq _022247B2
	bl ov18_022267F0
_022247B2:
	adds r0, r4, #0
	pop {r4, pc}
	nop
_022247B8: .4byte 0x00000106
_022247BC: .4byte 0x02251B60
_022247C0: .4byte 0x02251B6C
_022247C4: .4byte 0x00000116
_022247C8: .4byte 0x000005F8
_022247CC: .4byte 0x02250D78
_022247D0: .4byte 0x02249794
	thumb_func_end ov18_022246E4

	thumb_func_start ov18_022247D4
ov18_022247D4: @ 0x022247D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	ldr r1, _02224B28 @ =0x02246458
	str r0, [sp, #8]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	add r0, sp, #0x2c
	strh r2, [r0, #0x30]
	strh r1, [r0, #0x32]
	movs r0, #0
	add r1, sp, #0x58
	strh r0, [r1]
	str r0, [sp, #0x24]
	strh r0, [r1, #2]
	movs r0, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, sp, #0xb0
	movs r2, #0x18
	bl ov18_02226754
	ldr r1, _02224B2C @ =0x00000106
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x30]
	movs r0, #0x30
	ldrsh r2, [r1, r0]
	subs r0, #0x31
	cmp r2, r0
	bne _0222481C
	movs r0, #0xa
	strh r0, [r1, #0x30]
_0222481C:
	ldr r1, _02224B30 @ =0x0000010A
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x2c]
	movs r0, #0x2c
	ldrsh r2, [r1, r0]
	subs r0, #0x2d
	cmp r2, r0
	bne _02224834
	movs r0, #0xa
	strh r0, [r1, #0x2c]
_02224834:
	movs r1, #0x42
	ldr r0, [sp, #8]
	lsls r1, r1, #2
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x32]
	movs r0, #0x32
	ldrsh r2, [r1, r0]
	subs r0, #0x33
	cmp r2, r0
	bne _0222484E
	movs r0, #0x64
	strh r0, [r1, #0x32]
_0222484E:
	movs r1, #0x43
	ldr r0, [sp, #8]
	lsls r1, r1, #2
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x2e]
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	subs r0, #0x2f
	cmp r2, r0
	bne _02224868
	movs r0, #0x64
	strh r0, [r1, #0x2e]
_02224868:
	ldr r1, _02224B34 @ =0x0000010E
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	movs r1, #0
	mvns r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _0222487E
	movs r0, #0x7d
	lsls r0, r0, #4
	str r0, [sp, #0xc]
_0222487E:
	ldr r0, [sp, #8]
	bl ov18_02225230
	ldr r0, _02224B38 @ =0x02250D78
	ldr r1, [r0, #0x2c]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	beq _022248AA
	movs r0, #0x13
	bl ov18_02225288
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022248AA:
	movs r4, #0
	adds r0, r4, #0
	bl ov18_022255AC
	add r1, sp, #0x2c
	movs r0, #0x32
	ldrsh r6, [r1, r0]
	movs r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _02224B38 @ =0x02250D78
_022248BE:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022248CC
	bl ov18_022246D4
	movs r0, #0
	str r0, [r5, #4]
_022248CC:
	ldr r0, _02224B40 @ =0x02250D7C
	bl ov18_02226B8C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _022248EE
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022248EE:
	ldr r0, [r5, #4]
	bl ov18_022254BC
	cmp r0, #4
	bne _0222490C
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #2
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222490C:
	cmp r0, #0
	beq _02224936
	cmp r4, r7
	blt _02224928
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #1
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224928:
	adds r0, r6, #0
	bl ov18_02226ED4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _022248BE
_02224936:
	movs r0, #1
	bl ov18_022255AC
	add r0, sp, #0x74
	movs r1, #0
	movs r2, #0x3c
	bl ov18_02226754
	add r0, sp, #0x74
	bl ov18_02225538
	cmp r0, #0
	beq _02224964
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224964:
	movs r0, #0x58
	bl ov18_022246C4
	ldr r1, _02224B38 @ =0x02250D78
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _02224986
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224986:
	movs r1, #0
	movs r2, #0x58
	bl ov18_02226754
	add r1, sp, #0x2c
	movs r0, #0x30
	ldrsh r5, [r1, r0]
	movs r4, #0
	cmp r5, #0
	ble _022249DE
	ldr r7, _02224B38 @ =0x02250D78
_0222499C:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl ov18_02226D04
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _022249C0
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022249C0:
	cmp r0, #0
	bne _022249CE
	bne _022249DE
	ldr r0, [r7, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	beq _022249DE
_022249CE:
	adds r0, r6, #0
	bl ov18_02226ED4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, r5
	blt _0222499C
_022249DE:
	add r0, sp, #0x2c
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _022249FC
	ldr r0, [sp, #8]
	movs r2, #0xf
	adds r1, #0xe6
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022249FC:
	ldr r0, _02224B44 @ =0xC0A80B65
	movs r1, #0xff
	mvns r1, r1
	adds r2, r0, #0
	bl ov18_022266A8
	cmp r0, #0
	beq _02224A26
	movs r0, #0xc
	bl ov18_02225288
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224A26:
	bl ov18_02225204
	movs r3, #0x11
	ldr r2, [sp, #8]
	lsls r3, r3, #4
	movs r0, #3
	add r1, sp, #0xb0
	adds r2, r2, r3
	bl ov18_0222557C
	movs r0, #2
	adds r1, r0, #0
	movs r2, #0
	bl ov18_022267DC
	ldr r1, _02224B48 @ =0x02249794
	cmp r0, #0
	str r0, [r1]
	bge _02224A60
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224A60:
	movs r1, #4
	str r1, [sp]
	ldr r1, _02224B4C @ =0x0000FFFF
	movs r2, #1
	add r3, sp, #0x54
	bl ov18_022267D8
	cmp r0, #0
	bge _02224A8C
	movs r0, #0xb
	bl ov18_02225288
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224A8C:
	add r0, sp, #0x2c
	movs r1, #0
	movs r2, #8
	bl ov18_02226754
	movs r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, _02224B44 @ =0xC0A80B65
	bl ov18_022267F8
	str r0, [sp, #0x30]
	ldr r0, _02224B50 @ =0x00005790
	bl ov18_02226820
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _02224B48 @ =0x02249794
	add r1, sp, #0x2c
	ldr r0, [r0]
	movs r2, #8
	bl ov18_022267E4
	cmp r0, #0
	bge _02224AD2
	ldr r1, _02224B3C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224AD2:
	ldr r0, _02224B38 @ =0x02250D78
	movs r1, #0
	ldr r0, [r0, #0x14]
	movs r2, #0x14
	str r0, [sp, #0x18]
	add r0, sp, #0x60
	bl ov18_02226754
	ldr r0, _02224B44 @ =0xC0A80B65
	movs r1, #0xfa
	str r0, [sp, #0x70]
	subs r0, #0x64
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xc]
	lsls r1, r1, #2
	blx FUN_020E1F6C
	str r0, [sp, #0x14]
	movs r1, #0xfa
	ldr r0, [sp, #0xc]
	lsls r1, r1, #2
	blx FUN_020E1F6C
	movs r0, #0xfa
	lsls r0, r0, #2
	muls r0, r1, r0
	str r0, [sp, #0x10]
	movs r1, #0x30
	add r0, sp, #0x2c
	ldrsh r7, [r0, r1]
	ldr r5, _02224B38 @ =0x02250D78
_02224B10:
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _02224B20
	ldr r1, _02224B54 @ =0x02250D98
	movs r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _02224B22
_02224B20:
	b _02224D9C
_02224B22:
	ldr r0, _02224B48 @ =0x02249794
	b _02224B58
	nop
_02224B28: .4byte 0x02246458
_02224B2C: .4byte 0x00000106
_02224B30: .4byte 0x0000010A
_02224B34: .4byte 0x0000010E
_02224B38: .4byte 0x02250D78
_02224B3C: .4byte 0x00000116
_02224B40: .4byte 0x02250D7C
_02224B44: .4byte 0xC0A80B65
_02224B48: .4byte 0x02249794
_02224B4C: .4byte 0x0000FFFF
_02224B50: .4byte 0x00005790
_02224B54: .4byte 0x02250D98
_02224B58:
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	cmp r0, r1
	beq _02224B66
	bl ov18_022267F0
_02224B66:
	movs r1, #0
	ldr r0, _02224E98 @ =0x02249794
	mvns r1, r1
	str r1, [r0]
	bl ov18_02226700
	cmp r0, #0
	beq _02224B8A
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224B8A:
	movs r0, #0x58
	bl ov18_022246C4
	str r0, [r5, #4]
	cmp r0, #0
	bne _02224BAA
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224BAA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02224BB8
	bl ov18_022246D4
	movs r0, #0
	str r0, [r5, #4]
_02224BB8:
	ldr r0, _02224EA0 @ =0x02250D7C
	bl ov18_02226B8C
	movs r1, #0
	mvns r1, r1
	str r0, [sp, #0x28]
	cmp r0, r1
	bne _02224BDC
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224BDC:
	ldr r0, [r5, #4]
	bl ov18_022254BC
	cmp r0, #4
	bne _02224BFA
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #2
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224BFA:
	cmp r0, #0
	beq _02224C24
	cmp r4, r7
	blt _02224C16
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #1
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C16:
	adds r0, r6, #0
	bl ov18_02226ED4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _02224BAA
_02224C24:
	movs r0, #0
	ldr r1, [sp, #0x28]
	mvns r0, r0
	cmp r1, r0
	bne _02224C42
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C42:
	movs r0, #0x58
	bl ov18_022246C4
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _02224C62
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C62:
	movs r1, #0
	movs r2, #0x58
	bl ov18_02226754
	movs r4, #0
	cmp r7, #0
	ble _02224CB2
_02224C70:
	ldr r1, [r5, #0xc]
	add r0, sp, #0x74
	bl ov18_02226D04
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02224C94
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C94:
	cmp r0, #0
	bne _02224CA2
	bne _02224CB2
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	beq _02224CB2
_02224CA2:
	adds r0, r6, #0
	bl ov18_02226ED4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, r7
	blt _02224C70
_02224CB2:
	cmp r4, r7
	bne _02224CCA
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224CCA:
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl ov18_022251EC
	ldr r1, [r5, #0x38]
	adds r2, r0, #0
	str r0, [sp, #0x1c]
	bl ov18_022266A8
	cmp r0, #0
	beq _02224CFA
	movs r0, #0xc
	bl ov18_02225288
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224CFA:
	ldr r0, _02224EA4 @ =0x02250D98
	movs r1, #1
	strb r1, [r0, #0x1c]
	bl ov18_02225204
	movs r0, #2
	adds r1, r0, #0
	movs r2, #0
	bl ov18_022267DC
	ldr r1, _02224E98 @ =0x02249794
	cmp r0, #0
	str r0, [r1]
	bge _02224D2A
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224D2A:
	movs r1, #4
	str r1, [sp]
	ldr r1, _02224EA8 @ =0x0000FFFF
	movs r2, #1
	add r3, sp, #0x54
	bl ov18_022267D8
	cmp r0, #0
	bge _02224D56
	movs r0, #0xb
	bl ov18_02225288
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224D56:
	add r0, sp, #0x2c
	movs r1, #0
	movs r2, #8
	bl ov18_02226754
	movs r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl ov18_022267F8
	str r0, [sp, #0x30]
	ldr r0, _02224EAC @ =0x00005790
	bl ov18_02226820
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _02224E98 @ =0x02249794
	add r1, sp, #0x2c
	ldr r0, [r0]
	movs r2, #8
	bl ov18_022267E4
	cmp r0, #0
	bge _02224D9C
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224D9C:
	ldr r3, _02224E98 @ =0x02249794
	ldr r0, [sp, #0x24]
	ldr r3, [r3]
	add r1, sp, #0x60
	add r2, sp, #0xb0
	bl ov18_02225E90
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02224DD2
	movs r1, #1
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0xc
	adds r0, r0, r1
	bl ov18_02225288
	ldr r1, _02224E9C @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224DD2:
	ldr r0, [sp, #0x18]
	ldr r2, _02224EB0 @ =0x000005F8
	movs r1, #0
	bl ov18_02226754
	add r0, sp, #0x3c
	bl ov18_022268FC
	ldr r0, _02224E98 @ =0x02249794
	add r1, sp, #0x3c
	ldr r0, [r0]
	bl ov18_02226908
	ldr r0, [sp, #0x14]
	movs r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x3c
	str r0, [sp, #0x38]
	add r0, sp, #0x34
	str r0, [sp]
	ldr r0, _02224E98 @ =0x02249794
	adds r3, r2, #0
	ldr r0, [r0]
	adds r0, r0, #1
	bl ov18_02226774
	cmp r0, #0
	bgt _02224E4C
	ldr r0, [sp, #0x50]
	add r1, sp, #0x2c
	adds r2, r0, #1
	str r2, [sp, #0x50]
	movs r0, #0x2c
	ldrsh r0, [r1, r0]
	cmp r2, r0
	ble _02224E42
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _02224E2A
	movs r0, #0xf
	bl ov18_02225288
	b _02224E3C
_02224E2A:
	cmp r0, #1
	bne _02224E36
	movs r0, #0x10
	bl ov18_02225288
	b _02224E3C
_02224E36:
	movs r0, #0x11
	bl ov18_02225288
_02224E3C:
	movs r5, #0
	mvns r5, r5
	b _0222512A
_02224E42:
	movs r0, #0x2e
	ldrsh r0, [r1, r0]
	bl ov18_02226ED4
	b _02224B10
_02224E4C:
	movs r0, #8
	str r0, [sp, #0x44]
	add r0, sp, #0x48
	str r0, [sp]
	add r0, sp, #0x44
	str r0, [sp, #4]
	ldr r0, _02224E98 @ =0x02249794
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _02224EB4 @ =0x000005DC
	adds r1, #0xc
	movs r3, #0
	bl ov18_02226760
	ldr r1, _02224E98 @ =0x02249794
	lsls r0, r0, #0x10
	ldr r2, [r1]
	ldr r1, [sp, #0x18]
	lsrs r0, r0, #0x10
	str r2, [r1]
	bl ov18_02226860
	ldr r1, [sp, #0x18]
	add r2, sp, #0x50
	str r0, [r1, #4]
	ldr r0, _02224E98 @ =0x02249794
	add r3, sp, #0xb0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	bl ov18_022255D8
	str r0, [sp, #0x20]
	cmp r0, #0x64
	bne _02224EB8
	movs r5, #0
	b _0222512A
	nop
_02224E98: .4byte 0x02249794
_02224E9C: .4byte 0x00000116
_02224EA0: .4byte 0x02250D7C
_02224EA4: .4byte 0x02250D98
_02224EA8: .4byte 0x0000FFFF
_02224EAC: .4byte 0x00005790
_02224EB0: .4byte 0x000005F8
_02224EB4: .4byte 0x000005DC
_02224EB8:
	movs r5, #0
	mvns r5, r5
	cmp r0, r5
	bne _02224EC2
	b _0222512A
_02224EC2:
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _02224ECA
	b _022250EC
_02224ECA:
	cmp r0, #2
	beq _02224ED0
	b _022250E6
_02224ED0:
	ldr r0, _022251D4 @ =0x02249794
	ldr r0, [r0]
	cmp r0, r5
	beq _02224EDC
	bl ov18_022267F0
_02224EDC:
	movs r1, #0
	ldr r0, _022251D4 @ =0x02249794
	mvns r1, r1
	str r1, [r0]
	bl ov18_02226700
	cmp r0, #0
	beq _02224F00
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F00:
	movs r0, #4
	movs r4, #0
	bl ov18_022255AC
	add r1, sp, #0x2c
	movs r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _022251DC @ =0x02250D78
_02224F10:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02224F1E
	bl ov18_022246D4
	movs r0, #0
	str r0, [r5, #4]
_02224F1E:
	ldr r0, _022251E0 @ =0x02250D7C
	bl ov18_02226B8C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02224F40
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F40:
	ldr r0, [r5, #4]
	bl ov18_022254BC
	cmp r0, #4
	bne _02224F5E
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #2
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F5E:
	cmp r0, #0
	beq _02224F88
	cmp r4, r7
	blt _02224F7A
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #1
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F7A:
	adds r0, r6, #0
	bl ov18_02226ED4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _02224F10
_02224F88:
	movs r0, #0x58
	bl ov18_022246C4
	ldr r1, _022251DC @ =0x02250D78
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _02224FAA
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224FAA:
	movs r1, #0
	movs r2, #0x58
	bl ov18_02226754
	add r1, sp, #0x2c
	movs r0, #0x30
	ldrsh r5, [r1, r0]
	movs r4, #0
	cmp r5, #0
	ble _02225002
	ldr r7, _022251DC @ =0x02250D78
_02224FC0:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl ov18_02226D04
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02224FE4
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224FE4:
	cmp r0, #0
	bne _02224FF2
	bne _02225002
	ldr r0, [r7, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	beq _02225002
_02224FF2:
	adds r0, r6, #0
	bl ov18_02226ED4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, r5
	blt _02224FC0
_02225002:
	add r0, sp, #0x2c
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _02225020
	ldr r0, [sp, #8]
	movs r2, #0xf
	adds r1, #0xe6
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225020:
	ldr r1, _022251DC @ =0x02250D78
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x38]
	adds r2, r0, #0
	bl ov18_022266A8
	cmp r0, #0
	beq _0222504A
	movs r0, #0xc
	bl ov18_02225288
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222504A:
	bl ov18_02225204
	movs r0, #2
	adds r1, r0, #0
	movs r2, #0
	bl ov18_022267DC
	ldr r1, _022251D4 @ =0x02249794
	cmp r0, #0
	str r0, [r1]
	bge _02225074
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225074:
	movs r1, #4
	str r1, [sp]
	ldr r1, _022251E4 @ =0x0000FFFF
	movs r2, #1
	add r3, sp, #0x54
	bl ov18_022267D8
	cmp r0, #0
	bge _022250A0
	movs r0, #0xb
	bl ov18_02225288
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022250A0:
	add r0, sp, #0x2c
	movs r1, #0
	movs r2, #8
	bl ov18_02226754
	movs r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl ov18_022267F8
	str r0, [sp, #0x30]
	ldr r0, _022251E8 @ =0x00005790
	bl ov18_02226820
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _022251D4 @ =0x02249794
	add r1, sp, #0x2c
	ldr r0, [r0]
	movs r2, #8
	bl ov18_022267E4
	cmp r0, #0
	bge _022250E6
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022250E6:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _02224AD2
_022250EC:
	str r0, [sp, #0x24]
	add r1, sp, #0x2c
	movs r0, #0x2c
	ldrsh r0, [r1, r0]
	ldr r2, [sp, #0x50]
	cmp r2, r0
	ble _02225120
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02225108
	movs r0, #0xf
	bl ov18_02225288
	b _0222511A
_02225108:
	cmp r0, #1
	bne _02225114
	movs r0, #0x10
	bl ov18_02225288
	b _0222511A
_02225114:
	movs r0, #0x11
	bl ov18_02225288
_0222511A:
	movs r5, #0
	mvns r5, r5
	b _0222512A
_02225120:
	movs r0, #0x2e
	ldrsh r0, [r1, r0]
	bl ov18_02226ED4
	b _02224AD2
_0222512A:
	ldr r0, _022251D4 @ =0x02249794
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	cmp r0, r1
	beq _0222513A
	bl ov18_022267F0
_0222513A:
	movs r1, #0
	ldr r0, _022251D4 @ =0x02249794
	mvns r1, r1
	str r1, [r0]
	bl ov18_02226700
	cmp r0, #0
	beq _0222515E
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222515E:
	cmp r5, #0
	beq _022251AE
	bl ov18_02225294
	subs r0, #0xf
	cmp r0, #6
	bhi _0222519A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02225178: @ jump table
	.2byte _02225186 - _02225178 - 2 @ case 0
	.2byte _0222518A - _02225178 - 2 @ case 1
	.2byte _0222518E - _02225178 - 2 @ case 2
	.2byte _0222519A - _02225178 - 2 @ case 3
	.2byte _0222519A - _02225178 - 2 @ case 4
	.2byte _02225192 - _02225178 - 2 @ case 5
	.2byte _02225196 - _02225178 - 2 @ case 6
_02225186:
	movs r2, #3
	b _0222519C
_0222518A:
	movs r2, #4
	b _0222519C
_0222518E:
	movs r2, #5
	b _0222519C
_02225192:
	movs r2, #7
	b _0222519C
_02225196:
	movs r2, #8
	b _0222519C
_0222519A:
	movs r2, #0xf
_0222519C:
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022251AE:
	ldr r0, [sp, #8]
	bl ov18_022252A0
	cmp r0, #0
	beq _022251CC
	ldr r1, _022251D8 @ =0x00000116
	ldr r0, [sp, #8]
	movs r2, #6
	strb r2, [r0, r1]
	bl ov18_02225204
	movs r0, #0
	add sp, #0xc8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022251CC:
	movs r0, #0
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022251D4: .4byte 0x02249794
_022251D8: .4byte 0x00000116
_022251DC: .4byte 0x02250D78
_022251E0: .4byte 0x02250D7C
_022251E4: .4byte 0x0000FFFF
_022251E8: .4byte 0x00005790
	thumb_func_end ov18_022247D4

	thumb_func_start ov18_022251EC
ov18_022251EC: @ 0x022251EC
	adds r2, r0, #0
	ands r2, r1
	mvns r1, r1
	ands r0, r1
	adds r0, r0, #1
	orrs r0, r2
	orrs r1, r2
	cmp r0, r1
	blo _02225202
	movs r0, #1
	orrs r0, r2
_02225202:
	bx lr
	thumb_func_end ov18_022251EC

	thumb_func_start ov18_02225204
ov18_02225204: @ 0x02225204
	push {r3, lr}
	ldr r0, _0222522C @ =0x02250D78
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02225218
	bl ov18_022246D4
	ldr r0, _0222522C @ =0x02250D78
	movs r1, #0
	str r1, [r0, #0xc]
_02225218:
	ldr r0, _0222522C @ =0x02250D78
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0222522A
	bl ov18_022246D4
	ldr r0, _0222522C @ =0x02250D78
	movs r1, #0
	str r1, [r0, #4]
_0222522A:
	pop {r3, pc}
	.align 2, 0
_0222522C: .4byte 0x02250D78
	thumb_func_end ov18_02225204

	thumb_func_start ov18_02225230
ov18_02225230: @ 0x02225230
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02225274 @ =0x02251AD8
	movs r1, #0
	movs r2, #8
	bl ov18_02226754
	ldr r0, _02225278 @ =0x02250D78
	movs r1, #1
	str r1, [r0, #0x10]
	ldr r0, _0222527C @ =0x02250D9C
	movs r1, #0
	movs r2, #0x1c
	bl ov18_02226754
	ldr r1, _02225278 @ =0x02250D78
	adds r0, r4, #6
	str r0, [r1, #0x24]
	ldrh r0, [r4, #4]
	movs r3, #0
	str r0, [r1, #0x28]
	ldrh r2, [r4]
	movs r0, #0xf
	ands r0, r2
	str r0, [r1, #0x2c]
	ldrb r2, [r4, #2]
	ldr r0, _02225280 @ =0x02250D98
	strb r2, [r0, #0x1d]
	ldr r2, _02225284 @ =0xC0A80B01
	str r3, [r1, #0x30]
	str r2, [r1, #0x34]
	strb r3, [r0, #0x1c]
	pop {r4, pc}
	nop
_02225274: .4byte 0x02251AD8
_02225278: .4byte 0x02250D78
_0222527C: .4byte 0x02250D9C
_02225280: .4byte 0x02250D98
_02225284: .4byte 0xC0A80B01
	thumb_func_end ov18_02225230

	thumb_func_start ov18_02225288
ov18_02225288: @ 0x02225288
	ldr r1, _02225290 @ =0x02250D78
	str r0, [r1, #0x10]
	bx lr
	nop
_02225290: .4byte 0x02250D78
	thumb_func_end ov18_02225288

	thumb_func_start ov18_02225294
ov18_02225294: @ 0x02225294
	ldr r0, _0222529C @ =0x02250D78
	ldr r0, [r0, #0x10]
	bx lr
	nop
_0222529C: .4byte 0x02250D78
	thumb_func_end ov18_02225294

	thumb_func_start ov18_022252A0
ov18_022252A0: @ 0x022252A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _02225478 @ =0x022516A0
	ldr r2, _0222547C @ =0x00000117
	str r0, [sp, #4]
	ldr r0, _02225480 @ =0x02251710
	adds r4, r7, r2
	ldr r6, _02225484 @ =0x02251440
	ldr r5, _02225488 @ =0x02251570
	str r0, [sp]
	bne _022252C0
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022252C0:
	ldr r1, _0222548C @ =0x02250D78
	adds r2, #0x3d
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x30]
	ands r0, r1
	strh r0, [r7]
	adds r0, r4, #0
	movs r1, #0
	bl ov18_02226754
	ldrh r1, [r7]
	movs r0, #1
	tst r0, r1
	beq _0222533E
	adds r1, r6, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	adds r1, #0x30
	bl ov18_02226744
	adds r1, r6, #0
	ldr r2, [r6, #4]
	adds r0, r4, #6
	adds r1, #0x70
	bl ov18_02226744
	adds r0, r4, #0
	adds r1, r6, #0
	ldr r2, [r6, #4]
	adds r0, #0xc
	adds r1, #0xb0
	bl ov18_02226744
	adds r0, r4, #0
	adds r1, r6, #0
	ldr r2, [r6, #4]
	adds r0, #0x12
	adds r1, #0xf0
	bl ov18_02226744
	adds r0, r6, #0
	adds r0, #8
	bl ov18_02226878
	adds r1, r0, #0
	adds r0, r6, #0
	adds r0, #8
	bl ov18_02225498
	cmp r0, #0
	beq _02225328
	b _02225464
_02225328:
	adds r0, r6, #0
	adds r0, #8
	bl ov18_02226878
	adds r2, r0, #0
	adds r0, r4, #0
	adds r6, #8
	adds r0, #0x18
	adds r1, r6, #0
	bl ov18_02226744
_0222533E:
	ldrh r1, [r7]
	movs r0, #2
	tst r0, r1
	beq _022253AA
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [r5, #4]
	adds r0, #0x39
	adds r1, #0x30
	bl ov18_02226744
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [r5, #4]
	adds r0, #0x47
	adds r1, #0x70
	bl ov18_02226744
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [r5, #4]
	adds r0, #0x55
	adds r1, #0xb0
	bl ov18_02226744
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [r5, #4]
	adds r0, #0x63
	adds r1, #0xf0
	bl ov18_02226744
	adds r0, r5, #0
	adds r0, #8
	bl ov18_02226878
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #8
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	adds r0, r5, #0
	adds r0, #8
	bl ov18_02226878
	adds r2, r0, #0
	adds r0, r4, #0
	adds r5, #8
	adds r0, #0x71
	adds r1, r5, #0
	bl ov18_02226744
_022253AA:
	ldrh r1, [r7]
	movs r0, #4
	tst r0, r1
	beq _02225402
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	adds r0, #0x30
	subs r1, r1, #1
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r2, [sp, #4]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r0, #0x92
	adds r1, #0x30
	bl ov18_02226744
	ldr r0, [sp, #4]
	adds r0, #8
	bl ov18_02226878
	adds r1, r0, #0
	ldr r0, [sp, #4]
	adds r0, #8
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r0, [sp, #4]
	adds r0, #8
	bl ov18_02226878
	ldr r1, [sp, #4]
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #8
	adds r0, #0xd2
	str r1, [sp, #4]
	bl ov18_02226744
_02225402:
	ldrh r1, [r7]
	movs r0, #8
	tst r0, r1
	beq _0222545A
	ldr r1, [sp]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	adds r0, #0x30
	subs r1, r1, #1
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r2, [sp]
	ldr r1, [sp]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r0, #0xf3
	adds r1, #0x30
	bl ov18_02226744
	ldr r0, [sp]
	adds r0, #8
	bl ov18_02226878
	adds r1, r0, #0
	ldr r0, [sp]
	adds r0, #8
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r0, [sp]
	adds r0, #8
	bl ov18_02226878
	adds r2, r0, #0
	ldr r0, _02225490 @ =0x00000133
	ldr r1, [sp]
	adds r0, r4, r0
	adds r1, #8
	str r1, [sp]
	bl ov18_02226744
_0222545A:
	ldr r1, _02225494 @ =0x00000116
	movs r0, #0
	add sp, #8
	strb r0, [r7, r1]
	pop {r3, r4, r5, r6, r7, pc}
_02225464:
	movs r2, #0x55
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #2
	bl ov18_02226754
	movs r0, #0
	mvns r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02225478: .4byte 0x022516A0
_0222547C: .4byte 0x00000117
_02225480: .4byte 0x02251710
_02225484: .4byte 0x02251440
_02225488: .4byte 0x02251570
_0222548C: .4byte 0x02250D78
_02225490: .4byte 0x00000133
_02225494: .4byte 0x00000116
	thumb_func_end ov18_022252A0

	thumb_func_start ov18_02225498
ov18_02225498: @ 0x02225498
	movs r3, #0
	cmp r1, #0
	ble _022254B6
_0222549E:
	ldrb r2, [r0]
	adds r0, r0, #1
	cmp r2, #0x20
	blo _022254AA
	cmp r2, #0x7f
	bls _022254B0
_022254AA:
	movs r0, #0
	mvns r0, r0
	bx lr
_022254B0:
	adds r3, r3, #1
	cmp r3, r1
	blt _0222549E
_022254B6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov18_02225498

	thumb_func_start ov18_022254BC
ov18_022254BC: @ 0x022254BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	movs r4, #0
	str r4, [sp, #4]
	str r0, [sp]
	cmp r0, #0
	bne _022254D4
	add sp, #8
	movs r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022254D4:
	cmp r0, #0x40
	bls _022254DC
	movs r0, #0x40
	str r0, [sp]
_022254DC:
	ldr r0, [sp]
	movs r7, #0
	cmp r0, #0
	ble _0222551E
	adds r6, r5, #0
	adds r6, #8
_022254E8:
	ldr r1, [r5, #0x54]
	movs r0, #1
	tst r0, r1
	beq _02225512
	ldr r0, _02225534 @ =0x022497F4
	bl ov18_02226878
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _02225512
	ldr r0, _02225534 @ =0x022497F4
	bl ov18_02226878
	adds r2, r0, #0
	ldr r1, _02225534 @ =0x022497F4
	adds r0, r6, #0
	bl ov18_02226724
	cmp r0, #0
	bne _02225512
	adds r4, r4, #1
_02225512:
	ldr r0, [sp]
	adds r7, r7, #1
	adds r5, #0x54
	adds r6, #0x54
	cmp r7, r0
	blt _022254E8
_0222551E:
	cmp r4, #1
	ble _02225526
	movs r0, #4
	str r0, [sp, #4]
_02225526:
	cmp r4, #0
	bne _0222552E
	movs r0, #5
	str r0, [sp, #4]
_0222552E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02225534: .4byte 0x022497F4
	thumb_func_end ov18_022254BC

	thumb_func_start ov18_02225538
ov18_02225538: @ 0x02225538
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02225574 @ =0x022497F4
	bl ov18_02226878
	str r0, [r4]
	ldr r1, _02225574 @ =0x022497F4
	ldr r2, [r4]
	adds r0, r4, #4
	bl ov18_02226744
	movs r0, #1
	str r0, [r4, #0x24]
	ldr r0, _02225578 @ =0x02249800
	bl ov18_02226878
	adds r2, r0, #0
	str r0, [r4, #0x28]
	cmp r2, #0xd
	bls _02225566
	movs r0, #0
	mvns r0, r0
	pop {r4, pc}
_02225566:
	adds r4, #0x2c
	ldr r1, _02225578 @ =0x02249800
	adds r0, r4, #0
	bl ov18_02226744
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02225574: .4byte 0x022497F4
_02225578: .4byte 0x02249800
	thumb_func_end ov18_02225538

	thumb_func_start ov18_0222557C
ov18_0222557C: @ 0x0222557C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r4, #0
	cmp r6, #0
	ble _022255AA
_0222558A:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #6
	bl ov18_02226744
	bl ov18_0222688C
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	bl ov18_02226820
	strh r0, [r5, #6]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, r6
	blt _0222558A
_022255AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_0222557C

	thumb_func_start ov18_022255AC
ov18_022255AC: @ 0x022255AC
	push {r3, lr}
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _022255BE
	ldr r1, _022255D4 @ =0x02249794
	str r0, [r1, #4]
	movs r0, #0
	pop {r3, pc}
_022255BE:
	ldr r1, _022255D4 @ =0x02249794
	ldr r2, [r1, #4]
	cmp r2, r0
	beq _022255CE
	str r0, [r1, #4]
	bl ov18_02226EDC
	pop {r3, pc}
_022255CE:
	movs r0, #0
	pop {r3, pc}
	nop
_022255D4: .4byte 0x02249794
	thumb_func_end ov18_022255AC

	thumb_func_start ov18_022255D8
ov18_022255D8: @ 0x022255D8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldrh r0, [r6, #0xc]
	adds r7, r6, #0
	adds r4, r2, #0
	str r3, [sp]
	adds r7, #0xc
	bl ov18_02226860
	cmp r0, #1
	bhs _022255FA
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022255FA:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x11
	beq _0222560A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222560A:
	adds r0, r6, #0
	adds r0, #0xc
	bl ov18_022258D0
	cmp r0, #0
	ble _02225620
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225620:
	ldrh r0, [r7, #6]
	bl ov18_02226860
	ldr r1, _0222566C @ =0x00001010
	cmp r0, r1
	beq _0222563A
	ldr r1, _02225670 @ =0x00002010
	cmp r0, r1
	beq _0222564A
	ldr r1, _02225674 @ =0x00003010
	cmp r0, r1
	beq _0222565A
	b _02225668
_0222563A:
	ldr r3, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov18_02225678
	adds r5, r0, #0
	b _02225668
_0222564A:
	ldr r3, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov18_02225754
	adds r5, r0, #0
	b _02225668
_0222565A:
	ldr r3, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov18_0222582C
	adds r5, r0, #0
_02225668:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222566C: .4byte 0x00001010
_02225670: .4byte 0x00002010
_02225674: .4byte 0x00003010
	thumb_func_end ov18_022255D8

	thumb_func_start ov18_02225678
ov18_02225678: @ 0x02225678
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	cmp r6, #0
	beq _0222568A
	ldr r1, [r5]
	adds r1, r1, #1
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222568A:
	adds r7, r1, #0
	adds r7, #0xc
	adds r4, r1, #0
	adds r1, r7, #0
	adds r0, r3, #0
	adds r1, #0x10
	adds r4, #0x24
	bl ov18_02225A08
	cmp r0, #0
	bge _022256AA
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022256AA:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	cmp r0, #0
	bne _022256BE
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022256BE:
	ldrb r0, [r4]
	cmp r0, #7
	bne _022256FC
	ldr r0, [r4, #4]
	bl ov18_02226838
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _022256DA
	movs r0, #0x14
	bl ov18_02225288
	b _022256F6
_022256DA:
	ldr r0, [r4, #4]
	bl ov18_02226838
	movs r1, #2
	mvns r1, r1
	cmp r0, r1
	bne _022256F0
	movs r0, #0x15
	bl ov18_02225288
	b _022256F6
_022256F0:
	movs r0, #0x18
	bl ov18_02225288
_022256F6:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022256FC:
	cmp r0, #1
	beq _0222570A
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222570A:
	ldr r1, _0222574C @ =0x02250DB8
	adds r0, r4, #4
	bl ov18_02225A54
	cmp r0, #0
	bge _02225734
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _0222572A
	movs r0, #0x16
	bl ov18_02225288
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222572A:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225734:
	ldrh r0, [r7, #0xc]
	bl ov18_02226860
	bl ov18_02225E80
	ldr r1, _02225750 @ =0x02250D78
	str r0, [r1]
	movs r0, #0
	str r0, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222574C: .4byte 0x02250DB8
_02225750: .4byte 0x02250D78
	thumb_func_end ov18_02225678

	thumb_func_start ov18_02225754
ov18_02225754: @ 0x02225754
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	cmp r6, #1
	beq _02225766
	ldr r1, [r5]
	adds r1, r1, #1
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02225766:
	adds r7, r1, #0
	adds r7, #0xc
	adds r4, r1, #0
	adds r3, #8
	adds r1, r7, #0
	adds r0, r3, #0
	adds r1, #0x10
	adds r4, #0x24
	bl ov18_02225A08
	cmp r0, #0
	bge _02225788
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225788:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	cmp r0, #0
	bne _0222579C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222579C:
	ldrb r0, [r4]
	cmp r0, #7
	bne _022257DA
	ldr r0, [r4, #4]
	bl ov18_02226838
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _022257B8
	movs r0, #0x14
	bl ov18_02225288
	b _022257D4
_022257B8:
	ldr r0, [r4, #4]
	bl ov18_02226838
	movs r1, #2
	mvns r1, r1
	cmp r0, r1
	bne _022257CE
	movs r0, #0x15
	bl ov18_02225288
	b _022257D4
_022257CE:
	movs r0, #0x18
	bl ov18_02225288
_022257D4:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022257DA:
	movs r2, #0x6a
	ldr r0, _02225820 @ =0x02251438
	movs r1, #0
	lsls r2, r2, #4
	bl ov18_02226754
	ldrh r0, [r7, #0xa]
	bl ov18_02226860
	adds r2, r0, #0
	ldr r0, _02225824 @ =0x02250DB8
	ldr r3, _02225820 @ =0x02251438
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	bl ov18_02225D70
	cmp r0, #0
	bge _0222580A
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222580A:
	ldr r0, _02225828 @ =0x02250D78
	ldr r1, [r0, #0x30]
	ldr r0, [r0, #0x2c]
	tst r0, r1
	bne _02225818
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225818:
	movs r0, #0
	str r0, [r5]
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02225820: .4byte 0x02251438
_02225824: .4byte 0x02250DB8
_02225828: .4byte 0x02250D78
	thumb_func_end ov18_02225754

	thumb_func_start ov18_0222582C
ov18_0222582C: @ 0x0222582C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	cmp r6, #2
	beq _0222583E
	ldr r1, [r5]
	adds r1, r1, #1
	str r1, [r5]
	pop {r4, r5, r6, pc}
_0222583E:
	adds r4, r1, #0
	adds r3, #0x10
	adds r1, #0xc
	adds r0, r3, #0
	adds r1, #0x10
	adds r4, #0x24
	bl ov18_02225A08
	cmp r0, #0
	bge _0222585C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_0222585C:
	ldrb r0, [r4]
	cmp r0, #7
	beq _0222586C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_0222586C:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	cmp r0, #0
	bne _02225880
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_02225880:
	ldr r0, [r4, #4]
	bl ov18_02226838
	cmp r0, #0
	bne _0222588E
	movs r0, #0x64
	pop {r4, r5, r6, pc}
_0222588E:
	ldr r0, [r4, #4]
	bl ov18_02226838
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _022258A8
	movs r0, #0x14
	bl ov18_02225288
	movs r0, #0
	mvns r0, r0
	pop {r4, r5, r6, pc}
_022258A8:
	ldr r0, [r4, #4]
	bl ov18_02226838
	movs r1, #2
	mvns r1, r1
	cmp r0, r1
	bne _022258C2
	movs r0, #0x15
	bl ov18_02225288
	movs r0, #0
	mvns r0, r0
	pop {r4, r5, r6, pc}
_022258C2:
	movs r0, #0x18
	bl ov18_02225288
	movs r0, #0
	mvns r0, r0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov18_0222582C

	thumb_func_start ov18_022258D0
ov18_022258D0: @ 0x022258D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r1, r5, #0
	adds r4, r5, #0
	add r0, sp, #0xc
	adds r1, #0x10
	movs r2, #8
	adds r4, #0x18
	bl ov18_02226744
	ldr r0, _022259BC @ =0x02249800
	bl ov18_02226878
	adds r3, r0, #0
	ldr r2, _022259BC @ =0x02249800
	add r0, sp, #0xc
	movs r1, #8
	bl ov18_0222657C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0222590E
	movs r0, #2
	bl ov18_02225288
	movs r0, #0x63
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_0222590E:
	ldrh r0, [r5, #6]
	bl ov18_02226860
	add r1, sp, #0xc
	bl ov18_022259C4
	cmp r0, #0
	bne _022259B6
	ldrh r0, [r5, #6]
	bl ov18_02226860
	movs r1, #1
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _02225936
	ldr r0, _022259C0 @ =0x02251AD8
	add r1, sp, #0xc
	movs r2, #8
	bl ov18_02226744
_02225936:
	ldrh r0, [r5, #0xc]
	bl ov18_02226860
	movs r1, #0xf
	tst r0, r1
	bne _02225948
	add sp, #0x14
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02225948:
	ldrh r0, [r4]
	bl ov18_02226860
	adds r6, r0, #0
	bl ov18_022246C4
	adds r7, r0, #0
	bne _02225964
	movs r0, #2
	bl ov18_02225288
	add sp, #0x14
	movs r0, #0x64
	pop {r4, r5, r6, r7, pc}
_02225964:
	adds r0, r4, #2
	str r0, [sp]
	ldr r0, _022259C0 @ =0x02251AD8
	adds r1, r7, #0
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldrb r3, [r5, #0xe]
	adds r0, r4, #4
	adds r2, r6, #0
	bl ov18_0222638C
	cmp r0, #0
	bge _0222599A
	adds r0, r7, #0
	bl ov18_022246D4
	bl ov18_02225294
	cmp r0, #2
	bne _02225994
	add sp, #0x14
	movs r0, #0x64
	pop {r4, r5, r6, r7, pc}
_02225994:
	add sp, #0x14
	movs r0, #0xc8
	pop {r4, r5, r6, r7, pc}
_0222599A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov18_02226744
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #0xa]
	adds r0, r7, #0
	bl ov18_022246D4
	movs r0, #0
_022259B6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022259BC: .4byte 0x02249800
_022259C0: .4byte 0x02251AD8
	thumb_func_end ov18_022258D0

	thumb_func_start ov18_022259C4
ov18_022259C4: @ 0x022259C4
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _02225A04 @ =0x02251AD8
	adds r5, r4, #0
	adds r3, r4, #0
_022259CE:
	ldrb r2, [r6]
	cmp r2, #0
	beq _022259D8
	movs r5, #1
	b _022259E0
_022259D8:
	adds r3, r3, #1
	adds r6, r6, #1
	cmp r3, #6
	blt _022259CE
_022259E0:
	cmp r5, #0
	beq _022259F4
	ldr r0, _02225A04 @ =0x02251AD8
	movs r2, #6
	bl ov18_02226724
	cmp r0, #0
	beq _022259FE
	movs r4, #1
	b _022259FE
_022259F4:
	movs r1, #1
	lsls r1, r1, #0xc
	cmp r0, r1
	beq _022259FE
	movs r4, #2
_022259FE:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02225A04: .4byte 0x02251AD8
	thumb_func_end ov18_022259C4

	thumb_func_start ov18_02225A08
ov18_02225A08: @ 0x02225A08
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _02225A50 @ =0x02249800
	adds r5, r1, #0
	movs r4, #0
	bl ov18_02226878
	adds r3, r0, #0
	ldr r2, _02225A50 @ =0x02249800
	adds r0, r5, #0
	movs r1, #8
	bl ov18_0222657C
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	bl ov18_02226724
	cmp r0, #0
	beq _02225A34
	subs r4, r4, #1
	b _02225A4A
_02225A34:
	ldrh r0, [r6, #6]
	bl ov18_02226860
	adds r6, r0, #0
	ldrh r0, [r5, #6]
	bl ov18_02226860
	adds r1, r6, #1
	cmp r1, r0
	beq _02225A4A
	subs r4, r4, #2
_02225A4A:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02225A50: .4byte 0x02249800
	thumb_func_end ov18_02225A08

	thumb_func_start ov18_02225A54
ov18_02225A54: @ 0x02225A54
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r2, #0x41
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	lsls r2, r2, #2
	bl ov18_02226754
	adds r7, r5, #0
	adds r4, r6, #0
	adds r7, #0x80
_02225A6C:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	adds r2, r0, #0
	cmp r2, #0
	bgt _02225A7E
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225A7E:
	ldrb r0, [r4]
	cmp r0, #6
	bhi _02225AF4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02225A90: @ jump table
	.2byte _02225A9E - _02225A90 - 2 @ case 0
	.2byte _02225AA8 - _02225A90 - 2 @ case 1
	.2byte _02225AB2 - _02225A90 - 2 @ case 2
	.2byte _02225AC0 - _02225A90 - 2 @ case 3
	.2byte _02225AC0 - _02225A90 - 2 @ case 4
	.2byte _02225AD0 - _02225A90 - 2 @ case 5
	.2byte _02225AE2 - _02225A90 - 2 @ case 6
_02225A9E:
	adds r0, r5, #0
	adds r1, r4, #6
	bl ov18_02226744
	b _02225AFA
_02225AA8:
	adds r0, r7, #0
	adds r1, r4, #6
	bl ov18_02226744
	b _02225AFA
_02225AB2:
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r5, r0
	adds r1, r4, #6
	bl ov18_02226744
	b _02225AFA
_02225AC0:
	ldrb r0, [r4, #6]
	bl ov18_02226860
	cmp r0, #0
	bgt _02225AFA
	movs r0, #1
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225AD0:
	adds r0, r4, #6
	adds r1, r2, #0
	bl ov18_02225B10
	bl ov18_02226838
	ldr r1, _02225B0C @ =0x02250D78
	str r0, [r1, #0x34]
	b _02225AFA
_02225AE2:
	adds r0, r4, #6
	adds r1, r2, #0
	bl ov18_02225B10
	bl ov18_02226838
	ldr r1, _02225B0C @ =0x02250D78
	str r0, [r1, #0x38]
	b _02225AFA
_02225AF4:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225AFA:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02225B08
	bl ov18_02226860
	adds r4, r6, r0
	b _02225A6C
_02225B08:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02225B0C: .4byte 0x02250D78
	thumb_func_end ov18_02225A54

	thumb_func_start ov18_02225B10
ov18_02225B10: @ 0x02225B10
	push {r4, r5}
	movs r3, #0
	subs r2, r1, #1
	adds r5, r0, r2
	adds r4, r3, #0
	cmp r1, #0
	ble _02225B2C
_02225B1E:
	ldrb r0, [r5]
	lsls r2, r3, #8
	adds r4, r4, #1
	subs r5, r5, #1
	adds r3, r2, r0
	cmp r4, r1
	blt _02225B1E
_02225B2C:
	adds r0, r3, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov18_02225B10

	thumb_func_start ov18_02225B34
ov18_02225B34: @ 0x02225B34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r5, r0, #6
	adds r0, r6, #0
	str r0, [sp, #0xc]
	adds r0, #8
	str r0, [sp, #0xc]
	adds r0, r6, #0
	str r0, [sp, #8]
	adds r0, #0xf0
	str r0, [sp, #8]
	adds r0, r6, #0
	str r0, [sp, #4]
	adds r0, #0xb0
	str r0, [sp, #4]
	adds r0, r6, #0
	str r0, [sp]
	adds r0, #0x70
	adds r7, r6, #0
	str r0, [sp]
	adds r7, #0x30
	str r5, [sp, #0x10]
_02225B62:
	ldrh r0, [r5, #2]
	bl ov18_02226860
	adds r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0x21
	bgt _02225B9A
	bge _02225BB8
	cmp r0, #0x15
	bgt _02225B94
	adds r1, r0, #0
	subs r1, #0x10
	bmi _02225BD0
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02225B88: @ jump table
	.2byte _02225BAC - _02225B88 - 2 @ case 0
	.2byte _02225BAC - _02225B88 - 2 @ case 1
	.2byte _02225BAC - _02225B88 - 2 @ case 2
	.2byte _02225BAC - _02225B88 - 2 @ case 3
	.2byte _02225BD0 - _02225B88 - 2 @ case 4
	.2byte _02225BC4 - _02225B88 - 2 @ case 5
_02225B94:
	cmp r0, #0x20
	beq _02225BB8
	b _02225BD0
_02225B9A:
	cmp r0, #0x23
	bgt _02225BA6
	bge _02225BB8
	cmp r0, #0x22
	beq _02225BB8
	b _02225BD0
_02225BA6:
	cmp r0, #0x25
	beq _02225BC4
	b _02225BD0
_02225BAC:
	cmp r4, #5
	bls _02225BD0
	movs r0, #0
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02225BB8:
	cmp r4, #0xd
	bls _02225BD0
	movs r0, #0
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02225BC4:
	cmp r4, #0x21
	bls _02225BD0
	movs r0, #0
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02225BD0:
	cmp r0, #0x21
	bgt _02225BFE
	bge _02225C1E
	cmp r0, #0x15
	bgt _02225BF8
	adds r1, r0, #0
	subs r1, #0x10
	bmi _02225C68
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02225BEC: @ jump table
	.2byte _02225C10 - _02225BEC - 2 @ case 0
	.2byte _02225C1E - _02225BEC - 2 @ case 1
	.2byte _02225C2C - _02225BEC - 2 @ case 2
	.2byte _02225C3A - _02225BEC - 2 @ case 3
	.2byte _02225C68 - _02225BEC - 2 @ case 4
	.2byte _02225C48 - _02225BEC - 2 @ case 5
_02225BF8:
	cmp r0, #0x20
	beq _02225C10
	b _02225C68
_02225BFE:
	cmp r0, #0x23
	bgt _02225C0A
	bge _02225C3A
	cmp r0, #0x22
	beq _02225C2C
	b _02225C68
_02225C0A:
	cmp r0, #0x25
	beq _02225C48
	b _02225C68
_02225C10:
	adds r0, r7, #0
	adds r1, r5, #6
	adds r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C1E:
	ldr r0, [sp]
	adds r1, r5, #6
	adds r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C2C:
	ldr r0, [sp, #4]
	adds r1, r5, #6
	adds r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C3A:
	ldr r0, [sp, #8]
	adds r1, r5, #6
	adds r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C48:
	cmp r4, #0
	beq _02225C5C
	adds r0, r5, r4
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02225C5C
	movs r0, #0
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02225C5C:
	ldr r0, [sp, #0xc]
	adds r1, r5, #6
	adds r2, r4, #0
	bl ov18_02226744
	b _02225C70
_02225C68:
	movs r0, #0
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02225C70:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02225C80
	bl ov18_02226860
	ldr r1, [sp, #0x10]
	adds r5, r1, r0
	b _02225B62
_02225C80:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_02225B34

	thumb_func_start ov18_02225C88
ov18_02225C88: @ 0x02225C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r4, r0, #6
	adds r0, r6, #0
	str r0, [sp]
	adds r0, #8
	adds r7, r6, #0
	str r0, [sp]
	adds r7, #0x30
	str r4, [sp, #4]
_02225C9E:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x35
	bgt _02225CB4
	bge _02225CCE
	cmp r0, #0x30
	beq _02225CC2
	b _02225CDA
_02225CB4:
	cmp r0, #0x40
	bgt _02225CBC
	beq _02225CC2
	b _02225CDA
_02225CBC:
	cmp r0, #0x45
	beq _02225CCE
	b _02225CDA
_02225CC2:
	cmp r5, #0x40
	bls _02225CDA
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225CCE:
	cmp r5, #0x21
	bls _02225CDA
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225CDA:
	cmp r0, #0x35
	bgt _02225CE6
	bge _02225D02
	cmp r0, #0x30
	beq _02225CF4
	b _02225D22
_02225CE6:
	cmp r0, #0x40
	bgt _02225CEE
	beq _02225CF4
	b _02225D22
_02225CEE:
	cmp r0, #0x45
	beq _02225D02
	b _02225D22
_02225CF4:
	adds r0, r7, #0
	adds r1, r4, #6
	adds r2, r5, #0
	bl ov18_02226744
	str r5, [r6, #4]
	b _02225D2A
_02225D02:
	cmp r5, #0
	beq _02225D16
	adds r0, r4, r5
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02225D16
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225D16:
	ldr r0, [sp]
	adds r1, r4, #6
	adds r2, r5, #0
	bl ov18_02226744
	b _02225D2A
_02225D22:
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225D2A:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02225D3A
	bl ov18_02226860
	ldr r1, [sp, #4]
	adds r4, r1, r0
	b _02225C9E
_02225D3A:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_02225C88

	thumb_func_start ov18_02225D40
ov18_02225D40: @ 0x02225D40
	push {r3, r4, r5, lr}
	adds r4, r0, #6
	ldrh r0, [r4, #2]
	adds r5, r1, #0
	bl ov18_02226860
	adds r2, r0, #0
	cmp r2, #0
	bgt _02225D58
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, pc}
_02225D58:
	ldrb r0, [r4]
	cmp r0, #0x70
	beq _02225D64
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, pc}
_02225D64:
	adds r0, r5, #0
	adds r1, r4, #6
	bl ov18_02226744
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_02225D40

	thumb_func_start ov18_02225D70
ov18_02225D70: @ 0x02225D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r2, #0
	str r0, [sp]
	adds r4, r1, #0
	movs r5, #0
	str r3, [sp, #4]
	cmp r6, #0
	bgt _02225D88
	add sp, #0x14
	subs r0, r5, #2
	pop {r4, r5, r6, r7, pc}
_02225D88:
	ldr r7, _02225E78 @ =0x02249790
_02225D8A:
	ldr r2, [sp]
	ldrb r0, [r4]
	ldrb r2, [r7, r2]
	adds r1, r4, #0
	cmp r0, r2
	beq _02225DAE
	ldrh r0, [r4, #2]
	bl ov18_02226860
	adds r0, r0, #4
	subs r6, r6, r0
	adds r4, r4, r0
	cmp r6, #0
	bgt _02225D8A
	movs r0, #3
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02225DAE:
	ldrh r0, [r1, #2]
	adds r4, r4, #4
	bl ov18_02226860
	adds r7, r0, #0
	movs r1, #0x35
	ldr r0, [sp]
	lsls r1, r1, #4
	muls r1, r0, r1
	ldr r0, [sp, #4]
	adds r6, r0, r1
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp]
	adds r0, r0, #3
	lsls r0, r0, #7
	str r0, [sp, #0xc]
	adds r0, r6, #0
	str r0, [sp, #0x10]
	adds r0, #8
	str r0, [sp, #0x10]
_02225DD8:
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _02225E52
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02225DEA: @ jump table
	.2byte _02225E52 - _02225DEA - 2 @ case 0
	.2byte _02225E52 - _02225DEA - 2 @ case 1
	.2byte _02225E52 - _02225DEA - 2 @ case 2
	.2byte _02225E00 - _02225DEA - 2 @ case 3
	.2byte _02225E0E - _02225DEA - 2 @ case 4
	.2byte _02225E20 - _02225DEA - 2 @ case 5
	.2byte _02225E32 - _02225DEA - 2 @ case 6
	.2byte _02225E52 - _02225DEA - 2 @ case 7
	.2byte _02225E52 - _02225DEA - 2 @ case 8
	.2byte _02225E52 - _02225DEA - 2 @ case 9
	.2byte _02225E44 - _02225DEA - 2 @ case 10
_02225E00:
	ldr r1, [sp, #0x10]
	adds r0, r4, #0
	bl ov18_02225B34
	movs r1, #1
	orrs r5, r1
	b _02225E56
_02225E0E:
	movs r1, #0x4e
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r1, r6, r1
	bl ov18_02225B34
	movs r1, #2
	orrs r5, r1
	b _02225E56
_02225E20:
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r1, r6, r1
	bl ov18_02225C88
	movs r1, #4
	orrs r5, r1
	b _02225E56
_02225E32:
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r1, r6, r1
	bl ov18_02225C88
	movs r1, #8
	orrs r5, r1
	b _02225E56
_02225E44:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r2, r1
	bl ov18_02225D40
	b _02225E56
_02225E52:
	movs r0, #2
	mvns r0, r0
_02225E56:
	cmp r0, #0
	bne _02225E74
	ldrh r0, [r4, #2]
	bl ov18_02226860
	adds r0, r0, #4
	subs r7, r7, r0
	adds r4, r4, r0
	cmp r7, #0
	bgt _02225DD8
	ldr r0, _02225E7C @ =0x02250D78
	ldr r1, [r0, #0x30]
	orrs r1, r5
	str r1, [r0, #0x30]
	movs r0, #0
_02225E74:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02225E78: .4byte 0x02249790
_02225E7C: .4byte 0x02250D78
	thumb_func_end ov18_02225D70

	thumb_func_start ov18_02225E80
ov18_02225E80: @ 0x02225E80
	movs r1, #0x10
	movs r2, #0
	tst r0, r1
	beq _02225E8A
	movs r2, #1
_02225E8A:
	adds r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end ov18_02225E80

	thumb_func_start ov18_02225E90
ov18_02225E90: @ 0x02225E90
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	beq _02225EA6
	cmp r0, #1
	beq _02225EB8
	cmp r0, #2
	beq _02225ECA
	b _02225EDC
_02225EA6:
	movs r0, #2
	bl ov18_022255AC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov18_02225EE4
	pop {r4, r5, r6, pc}
_02225EB8:
	movs r0, #3
	bl ov18_022255AC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov18_02226028
	pop {r4, r5, r6, pc}
_02225ECA:
	movs r0, #5
	bl ov18_022255AC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov18_02226104
	pop {r4, r5, r6, pc}
_02225EDC:
	movs r0, #0
	mvns r0, r0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov18_02225E90

	thumb_func_start ov18_02225EE4
ov18_02225EE4: @ 0x02225EE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r7, r1, #0
	movs r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _02226018 @ =0x02250D78
	str r2, [sp, #0xc]
	ldr r5, [r0, #0x14]
	ldr r2, _0222601C @ =0x000005DC
	adds r0, r5, #0
	bl ov18_02226754
	movs r0, #0x21
	lsls r0, r0, #4
	bl ov18_022246C4
	adds r4, r0, #0
	bne _02225F1C
	movs r0, #2
	bl ov18_02225288
	movs r0, #0
	add sp, #0x20
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225F1C:
	movs r2, #0x21
	movs r1, #0
	lsls r2, r2, #4
	bl ov18_02226754
	adds r6, r5, #0
	ldr r0, _02226020 @ =0x02251AD8
	adds r1, r7, #0
	movs r2, #8
	adds r6, #0x18
	bl ov18_02226744
	add r0, sp, #0x14
	ldr r1, _02226020 @ =0x02251AD8
	adds r0, #2
	movs r2, #8
	bl ov18_02226744
	adds r0, r4, #4
	bl ov18_02226170
	add r1, sp, #0x10
	strh r0, [r1, #4]
	movs r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _02225F6A
	movs r0, #3
	bl ov18_02225288
	cmp r4, #0
	beq _02225F62
	adds r0, r4, #0
	bl ov18_022246D4
_02225F62:
	movs r0, #0
	add sp, #0x20
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225F6A:
	movs r0, #0
	strb r0, [r4]
	ldrh r0, [r1, #4]
	bl ov18_02226820
	strh r0, [r4, #2]
	add r1, sp, #0x10
	movs r0, #4
	ldrsh r0, [r1, r0]
	adds r2, r4, #0
	add r3, sp, #0x14
	adds r0, r0, #4
	strh r0, [r1, #4]
	add r0, sp, #0x10
	adds r0, #2
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r6, #0
	bl ov18_022261FC
	add r1, sp, #0x10
	movs r0, #2
	ldrsh r2, [r1, r0]
	movs r0, #0x10
	movs r3, #6
	orrs r0, r2
	strh r0, [r1, #2]
	add r0, sp, #0x14
	ldr r2, _02226024 @ =0x02249800
	adds r0, #2
	movs r1, #8
	bl ov18_0222657C
	cmp r0, #0
	beq _02225FCC
	movs r0, #2
	bl ov18_02225288
	cmp r4, #0
	beq _02225FC4
	adds r0, r4, #0
	bl ov18_022246D4
_02225FC4:
	movs r0, #0
	add sp, #0x20
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225FCC:
	add r3, sp, #0x10
	movs r0, #0
	ldrsb r0, [r3, r0]
	movs r1, #1
	movs r2, #4
	str r0, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x14
	adds r0, #2
	str r0, [sp, #8]
	movs r6, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r6]
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl ov18_02226250
	add r2, sp, #0x10
	movs r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [sp, #0xc]
	adds r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	adds r0, r5, #0
	movs r2, #0xff
	bl ov18_022262A8
	cmp r4, #0
	beq _02226010
	adds r0, r4, #0
	bl ov18_022246D4
_02226010:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226018: .4byte 0x02250D78
_0222601C: .4byte 0x000005DC
_02226020: .4byte 0x02251AD8
_02226024: .4byte 0x02249800
	thumb_func_end ov18_02225EE4

	thumb_func_start ov18_02226028
ov18_02226028: @ 0x02226028
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r1, #0
	movs r1, #0
	add r0, sp, #0xc
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _022260F8 @ =0x02250D78
	adds r6, r2, #0
	ldr r4, [r0, #0x14]
	add r0, sp, #0x14
	movs r2, #8
	bl ov18_02226754
	ldr r2, _022260FC @ =0x000005DC
	adds r0, r4, #0
	movs r1, #0
	bl ov18_02226754
	movs r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #8]
	movs r1, #0
	strb r1, [r0, #9]
	movs r0, #4
	bl ov18_02226820
	add r1, sp, #0xc
	strh r0, [r1, #0xa]
	ldr r0, _022260F8 @ =0x02250D78
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x18]
	bl ov18_022267F8
	str r0, [sp, #0x18]
	movs r1, #8
	add r0, sp, #0xc
	strh r1, [r0, #4]
	add r0, sp, #0xc
	adds r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, _022260F8 @ =0x02250D78
	adds r1, r4, #0
	ldr r0, [r0]
	adds r1, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov18_022261FC
	adds r5, #8
	add r0, sp, #0x1c
	adds r1, r5, #0
	movs r2, #8
	bl ov18_02226744
	ldr r2, _02226100 @ =0x02249800
	add r0, sp, #0x1c
	movs r1, #8
	movs r3, #6
	bl ov18_0222657C
	cmp r0, #0
	beq _022260BA
	movs r0, #2
	bl ov18_02225288
	movs r0, #0
	add sp, #0x24
	mvns r0, r0
	pop {r3, r4, r5, r6, pc}
_022260BA:
	add r3, sp, #0xc
	movs r0, #0
	ldrsb r0, [r3, r0]
	movs r1, #2
	movs r2, #4
	str r0, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	movs r5, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	adds r0, r4, #0
	lsls r1, r1, #0xc
	bl ov18_02226250
	add r2, sp, #0xc
	movs r1, #4
	ldrsh r0, [r2, r1]
	adds r3, r6, #0
	adds r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	adds r0, r4, #0
	movs r2, #0
	bl ov18_022262A8
	movs r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022260F8: .4byte 0x02250D78
_022260FC: .4byte 0x000005DC
_02226100: .4byte 0x02249800
	thumb_func_end ov18_02226028

	thumb_func_start ov18_02226104
ov18_02226104: @ 0x02226104
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _02226164 @ =0x02250D78
	adds r6, r2, #0
	ldr r4, [r0, #0x14]
	ldr r2, _02226168 @ =0x000005DC
	adds r5, r1, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov18_02226754
	adds r5, #0x10
	add r0, sp, #0xc
	adds r1, r5, #0
	movs r2, #8
	bl ov18_02226744
	ldr r0, _0222616C @ =0x02249800
	bl ov18_02226878
	adds r3, r0, #0
	ldr r2, _0222616C @ =0x02249800
	add r0, sp, #0xc
	movs r1, #8
	bl ov18_0222657C
	movs r2, #0
	movs r1, #3
	str r2, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	adds r0, r4, #0
	lsls r1, r1, #0xc
	adds r3, r2, #0
	bl ov18_02226250
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0
	adds r3, r6, #0
	bl ov18_022262A8
	movs r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02226164: .4byte 0x02250D78
_02226168: .4byte 0x000005DC
_0222616C: .4byte 0x02249800
	thumb_func_end ov18_02226104

	thumb_func_start ov18_02226170
ov18_02226170: @ 0x02226170
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022261F4 @ =0x02250D98
	adds r5, r0, #0
	movs r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _022261F8 @ =0x02250D78
	movs r6, #0
	strb r0, [r5]
	movs r0, #1
	strb r0, [r5, #1]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #6
	adds r2, r4, #0
	bl ov18_02226744
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #2]
	adds r0, r4, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #1
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #0x11
	asrs r7, r0, #0x10
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #4]
	adds r0, r6, r7
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x60
	strb r0, [r5, r7]
	adds r4, r5, r7
	movs r0, #0
	strb r0, [r4, #1]
	bl ov18_02226820
	strh r0, [r4, #4]
	movs r0, #0xe
	bl ov18_022267F8
	str r0, [sp]
	adds r0, r4, #6
	add r1, sp, #0
	movs r2, #4
	bl ov18_02226744
	movs r0, #4
	bl ov18_02226820
	adds r6, #0xa
	strh r0, [r4, #2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022261F4: .4byte 0x02250D98
_022261F8: .4byte 0x02250D78
	thumb_func_end ov18_02226170

	thumb_func_start ov18_022261FC
ov18_022261FC: @ 0x022261FC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r4, r3, #0
	cmp r0, #1
	bne _0222623C
	ldr r0, [sp, #0x18]
	movs r1, #1
	strh r1, [r0]
	adds r0, r5, #2
	str r0, [sp]
	ldr r0, _0222624C @ =0x02251AD8
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	adds r0, r2, #0
	movs r2, #0
	ldrsh r2, [r4, r2]
	adds r1, r5, #4
	bl ov18_02226310
	ldrh r0, [r4]
	bl ov18_02226820
	strh r0, [r5]
	movs r0, #0
	ldrsh r0, [r4, r0]
	add sp, #0xc
	adds r0, r0, #4
	strh r0, [r4]
	pop {r4, r5, pc}
_0222623C:
	adds r1, r2, #0
	movs r2, #0
	ldrsh r2, [r4, r2]
	adds r0, r5, #0
	bl ov18_02226744
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0222624C: .4byte 0x02251AD8
	thumb_func_end ov18_022261FC

	thumb_func_start ov18_02226250
ov18_02226250: @ 0x02226250
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov18_02226820
	strh r0, [r5]
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #6]
	movs r0, #0
	strh r0, [r5, #8]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #0xa]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #0xc]
	add r1, sp, #8
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	movs r2, #8
	strb r0, [r5, #0xe]
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	strb r0, [r5, #0xf]
	adds r5, #0x10
	adds r0, r5, #0
	bl ov18_02226744
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_02226250

	thumb_func_start ov18_022262A8
ov18_022262A8: @ 0x022262A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	add r0, sp, #8
	movs r1, #0
	movs r2, #8
	adds r7, r3, #0
	bl ov18_02226754
	movs r1, #2
	add r0, sp, #8
	strb r1, [r0, #1]
	ldr r0, _02226304 @ =0x00005790
	bl ov18_02226820
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _02226308 @ =0x02250D78
	ldr r0, [r0, #0x34]
	bl ov18_022267F8
	str r0, [sp, #0xc]
	cmp r4, #0xff
	beq _022262E6
	ldr r1, _0222630C @ =0x02250D98
	movs r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _022262EC
_022262E6:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0xc]
_022262EC:
	add r0, sp, #8
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl ov18_022267C8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02226304: .4byte 0x00005790
_02226308: .4byte 0x02250D78
_0222630C: .4byte 0x02250D98
	thumb_func_end ov18_022262A8

	thumb_func_start ov18_02226310
ov18_02226310: @ 0x02226310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r2, #0
	adds r7, r1, #0
	adds r4, r3, #0
	adds r1, r5, #0
	adds r6, r0, #0
	bl ov18_022264E4
	strb r0, [r4]
	adds r0, r5, #0
	bl ov18_022246C4
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02226338
	movs r0, #0
	add sp, #0x14
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02226338:
	bl ov18_0222688C
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, sp, #0
	movs r2, #2
	bl ov18_02226744
	ldr r0, _02226384 @ =0x02251AE0
	ldr r1, [sp, #0x28]
	movs r2, #2
	bl ov18_02226744
	ldr r0, _02226388 @ =0x02251AE2
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov18_02226744
	ldr r2, [sp, #0x30]
	ldr r1, _02226384 @ =0x02251AE0
	add r0, sp, #4
	adds r2, r2, #2
	adds r3, r5, #0
	bl ov18_02226414
	add r0, sp, #4
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl ov18_02226478
	ldr r0, [sp, #0xc]
	bl ov18_022246D4
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02226384: .4byte 0x02251AE0
_02226388: .4byte 0x02251AE2
	thumb_func_end ov18_02226310

	thumb_func_start ov18_0222638C
ov18_0222638C: @ 0x0222638C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r2, #0
	adds r7, r0, #0
	adds r0, r4, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov18_022246C4
	str r0, [sp, #8]
	cmp r0, #0
	bne _022263B2
	movs r0, #2
	bl ov18_02225288
	movs r0, #0
	add sp, #0x10
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022263B2:
	ldr r0, _0222640C @ =0x02251AE0
	ldr r1, [sp, #0x28]
	movs r2, #2
	bl ov18_02226744
	ldr r0, _02226410 @ =0x02251AE2
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov18_02226744
	ldr r2, [sp, #0x30]
	ldr r1, _0222640C @ =0x02251AE0
	add r0, sp, #0
	adds r2, r2, #2
	adds r3, r4, #0
	bl ov18_02226414
	add r0, sp, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov18_02226478
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov18_022264E4
	cmp r0, r6
	beq _02226400
	movs r0, #0x12
	bl ov18_02225288
	ldr r0, [sp, #8]
	bl ov18_022246D4
	movs r0, #0
	add sp, #0x10
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226400:
	ldr r0, [sp, #8]
	bl ov18_022246D4
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222640C: .4byte 0x02251AE0
_02226410: .4byte 0x02251AE2
	thumb_func_end ov18_0222638C

	thumb_func_start ov18_02226414
ov18_02226414: @ 0x02226414
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	ldr r4, [r0, #8]
	ldr r1, [sp]
	movs r0, #0
	str r0, [r1, #4]
	str r2, [sp, #8]
	str r0, [r1]
	adds r2, r3, #0
	str r2, [r1, #0xc]
	str r3, [sp, #0xc]
	adds r1, r3, #0
	beq _0222643C
_02226432:
	ldr r1, [sp, #0xc]
	strb r0, [r4, r0]
	adds r0, r0, #1
	cmp r0, r1
	blo _02226432
_0222643C:
	ldr r0, [sp, #0xc]
	movs r1, #0
	adds r6, r1, #0
	adds r5, r1, #0
	cmp r0, #0
	bls _02226472
_02226448:
	ldr r0, [sp, #4]
	ldrb r7, [r4, r5]
	ldrb r0, [r0, r6]
	adds r0, r1, r0
	ldr r1, [sp]
	adds r0, r7, r0
	ldr r1, [r1, #0xc]
	blx FUN_020E2178
	ldrb r0, [r4, r1]
	adds r6, r6, #1
	strb r7, [r4, r1]
	strb r0, [r4, r5]
	ldr r0, [sp, #8]
	cmp r6, r0
	blo _0222646A
	movs r6, #0
_0222646A:
	ldr r0, [sp, #0xc]
	adds r5, r5, #1
	cmp r5, r0
	blo _02226448
_02226472:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_02226414

	thumb_func_start ov18_02226478
ov18_02226478: @ 0x02226478
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r4, _022264A0 @ =0x00000000
	beq _0222649C
_02226486:
	ldr r0, [sp]
	bl ov18_022264A4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r0, [r6, r4]
	eors r0, r1
	strb r0, [r5, r4]
	adds r4, r4, #1
	cmp r4, r7
	blo _02226486
_0222649C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022264A0: .4byte 0x00000000
	thumb_func_end ov18_02226478

	thumb_func_start ov18_022264A4
ov18_022264A4: @ 0x022264A4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r4, [r5, #8]
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [sp]
	adds r0, r0, #1
	blx FUN_020E2178
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	ldrb r6, [r4, r7]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	adds r0, r6, r0
	blx FUN_020E2178
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldrb r0, [r4, r1]
	str r7, [r5]
	str r1, [r5, #4]
	strb r6, [r4, r1]
	strb r0, [r4, r7]
	ldr r1, [r5, #0xc]
	adds r0, r6, r0
	blx FUN_020E2178
	ldrb r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_022264A4

	thumb_func_start ov18_022264E4
ov18_022264E4: @ 0x022264E4
	push {r3, lr}
	adds r3, r0, #0
	ldr r0, _02226508 @ =0x02251038
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0
	adds r1, r3, #0
	mvns r0, r0
	movs r3, #0
	bl ov18_0222650C
	movs r1, #0
	mvns r1, r1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r3, pc}
	nop
_02226508: .4byte 0x02251038
	thumb_func_end ov18_022264E4

	thumb_func_start ov18_0222650C
ov18_0222650C: @ 0x0222650C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	ldr r6, [sp, #0x18]
	cmp r3, #0
	bne _02226522
	adds r0, r3, #0
	adds r1, r6, #0
	bl ov18_02226544
_02226522:
	movs r1, #0
	cmp r4, #0
	ble _0222653E
_02226528:
	ldrb r2, [r7, r1]
	lsrs r0, r5, #8
	adds r1, r1, #1
	eors r2, r5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x16
	ldr r2, [r6, r2]
	adds r5, r0, #0
	eors r5, r2
	cmp r1, r4
	blt _02226528
_0222653E:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_0222650C

	thumb_func_start ov18_02226544
ov18_02226544: @ 0x02226544
	push {r4, r5, r6, r7}
	movs r5, #1
	adds r3, r5, #0
	ldr r4, _02226578 @ =0xEDB88320
	movs r0, #0
	adds r3, #0xff
_02226550:
	adds r7, r0, #0
	movs r2, #0
_02226554:
	adds r6, r7, #0
	tst r6, r5
	beq _02226562
	lsrs r6, r7, #1
	adds r7, r6, #0
	eors r7, r4
	b _02226564
_02226562:
	lsrs r7, r7, #1
_02226564:
	adds r2, r2, #1
	cmp r2, #8
	blt _02226554
	adds r0, r0, #1
	stm r1!, {r7}
	cmp r0, r3
	blt _02226550
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02226578: .4byte 0xEDB88320
	thumb_func_end ov18_02226544

	thumb_func_start ov18_0222657C
ov18_0222657C: @ 0x0222657C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r7, r0, #0
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov18_022246C4
	adds r6, r0, #0
	bne _0222659E
	movs r0, #0
	add sp, #0x10
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222659E:
	adds r0, r5, #0
	bl ov18_022246C4
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _022265B8
	adds r0, r6, #0
	bl ov18_022246D4
	movs r0, #0
	add sp, #0x10
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022265B8:
	movs r4, #0
_022265BA:
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov18_022265F8
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov18_0222662C
	ldr r2, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov18_02226650
	adds r4, r4, #1
	cmp r4, #2
	blt _022265BA
	adds r0, r6, #0
	bl ov18_022246D4
	ldr r0, [sp, #0xc]
	bl ov18_022246D4
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_0222657C

	thumb_func_start ov18_022265F8
ov18_022265F8: @ 0x022265F8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	ldr r6, [sp, #0x18]
	asrs r4, r1, #1
	adds r1, r6, #0
	adds r7, r3, #0
	blx FUN_020E1F6C
	movs r0, #0
	cmp r4, #0
	ble _0222662A
_02226612:
	strb r0, [r5, r0]
	ldrsb r2, [r7, r1]
	ldrsb r3, [r5, r0]
	adds r1, r1, #1
	eors r2, r3
	strb r2, [r5, r0]
	cmp r1, r6
	blt _02226624
	movs r1, #0
_02226624:
	adds r0, r0, #1
	cmp r0, r4
	blt _02226612
_0222662A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_022265F8

	thumb_func_start ov18_0222662C
ov18_0222662C: @ 0x0222662C
	push {r4, r5}
	lsrs r3, r2, #0x1f
	adds r3, r2, r3
	asrs r4, r3, #1
	movs r3, #0
	cmp r4, #0
	ble _0222664C
	adds r5, r1, r4
_0222663C:
	ldrsb r1, [r0, r3]
	ldrb r2, [r5]
	adds r3, r3, #1
	eors r1, r2
	strb r1, [r5]
	adds r5, r5, #1
	cmp r3, r4
	blt _0222663C
_0222664C:
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222662C

	thumb_func_start ov18_02226650
ov18_02226650: @ 0x02226650
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r7, r0, #1
	adds r4, r2, #0
	adds r0, r4, #0
	adds r1, r5, r7
	adds r2, r7, #0
	bl ov18_02226744
	adds r0, r4, r7
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov18_02226744
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov18_02226744
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_02226650

	thumb_func_start ov18_02226680
ov18_02226680: @ 0x02226680
	push {r3, lr}
	cmp r1, #0
	ble _02226690
	adds r0, r1, #0
	ldr r1, _02226694 @ =0x02251B60
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
_02226690:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02226694: .4byte 0x02251B60
	thumb_func_end ov18_02226680

	thumb_func_start ov18_02226698
ov18_02226698: @ 0x02226698
	push {r3, lr}
	adds r0, r1, #0
	ldr r1, _022266A4 @ =0x02251B6C
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	.align 2, 0
_022266A4: .4byte 0x02251B6C
	thumb_func_end ov18_02226698

	thumb_func_start ov18_022266A8
ov18_022266A8: @ 0x022266A8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	bl ov18_022267F8
	ldr r1, _022266F4 @ =0x02249794
	str r0, [r1, #0x18]
	adds r0, r5, #0
	bl ov18_022267F8
	ldr r1, _022266F4 @ =0x02249794
	str r0, [r1, #0x1c]
	adds r0, r4, #0
	bl ov18_022267F8
	ldr r1, _022266F4 @ =0x02249794
	str r0, [r1, #0x20]
	ldr r0, _022266F8 @ =0x0224979C
	blx FUN_02208874
	cmp r0, #0
	bge _022266DA
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, pc}
_022266DA:
	ldr r5, _022266FC @ =0x0221DE40
	ldr r0, [r5]
	cmp r0, #0
	bne _022266F0
	movs r4, #0x64
_022266E4:
	adds r0, r4, #0
	blx FUN_020C24A4
	ldr r0, [r5]
	cmp r0, #0
	beq _022266E4
_022266F0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022266F4: .4byte 0x02249794
_022266F8: .4byte 0x0224979C
_022266FC: .4byte 0x0221DE40
	thumb_func_end ov18_022266A8

	thumb_func_start ov18_02226700
ov18_02226700: @ 0x02226700
	push {r3, lr}
	blx FUN_022089E8
	cmp r0, #0
	bge _02226710
	movs r0, #0
	mvns r0, r0
	pop {r3, pc}
_02226710:
	bl ov18_02226B54
	cmp r0, #0
	beq _0222671C
	movs r0, #1
	b _0222671E
_0222671C:
	movs r0, #0
_0222671E:
	rsbs r0, r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov18_02226700

	thumb_func_start ov18_02226724
ov18_02226724: @ 0x02226724
	push {r3, r4}
	movs r3, #0
	b _0222672E
_0222672A:
	adds r0, r0, #1
	adds r1, r1, #1
_0222672E:
	adds r4, r2, #0
	subs r2, r2, #1
	cmp r4, #0
	ble _0222673E
	ldrb r4, [r0]
	ldrb r3, [r1]
	subs r3, r4, r3
	beq _0222672A
_0222673E:
	adds r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov18_02226724

	thumb_func_start ov18_02226744
ov18_02226744: @ 0x02226744
	adds r3, r0, #0
	adds r0, r1, #0
	adds r1, r3, #0
	ldr r3, _02226750 @ =FUN_020C4DB0
	bx r3
	nop
_02226750: .4byte FUN_020C4DB0
	thumb_func_end ov18_02226744

	thumb_func_start ov18_02226754
ov18_02226754: @ 0x02226754
	ldr r3, _0222675C @ =FUN_020C4CF4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bx r3
	.align 2, 0
_0222675C: .4byte FUN_020C4CF4
	thumb_func_end ov18_02226754

	thumb_func_start ov18_02226760
ov18_02226760: @ 0x02226760
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [r4]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx FUN_022083FC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov18_02226760

	thumb_func_start ov18_02226774
ov18_02226774: @ 0x02226774
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r2, [r1]
	ldr r0, [r1, #4]
	ldr r5, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	movs r4, #0
	ldr r2, _022267C4 @ =0x01FF6210
	asrs r1, r0, #0x1f
	adds r3, r4, #0
	blx FUN_020E1F1C
	lsrs r3, r0, #6
	lsls r2, r1, #0x1a
	orrs r3, r2
	lsrs r0, r1, #6
	adds r6, r4, r3
	adcs r4, r0
	ldr r0, [r5, #4]
	ldr r2, _022267C4 @ =0x01FF6210
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	lsrs r3, r0, #6
	lsls r2, r1, #0x1a
	orrs r3, r2
	lsrs r0, r1, #6
	adds r2, r6, r3
	adcs r4, r0
	add r0, sp, #0
	movs r1, #1
	adds r3, r4, #0
	blx FUN_02208B18
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022267C4: .4byte 0x01FF6210
	thumb_func_end ov18_02226774

	thumb_func_start ov18_022267C8
ov18_022267C8: @ 0x022267C8
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x14]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx FUN_022084B0
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_022267C8

	thumb_func_start ov18_022267D8
ov18_022267D8: @ 0x022267D8
	bx lr
	.align 2, 0
	thumb_func_end ov18_022267D8

	thumb_func_start ov18_022267DC
ov18_022267DC: @ 0x022267DC
	ldr r3, _022267E0 @ =FUN_02208324
	bx r3
	.align 2, 0
_022267E0: .4byte FUN_02208324
	thumb_func_end ov18_022267DC

	thumb_func_start ov18_022267E4
ov18_022267E4: @ 0x022267E4
	ldr r3, _022267EC @ =FUN_02208350
	strb r2, [r1]
	bx r3
	nop
_022267EC: .4byte FUN_02208350
	thumb_func_end ov18_022267E4

	thumb_func_start ov18_022267F0
ov18_022267F0: @ 0x022267F0
	ldr r3, _022267F4 @ =FUN_02208540
	bx r3
	.align 2, 0
_022267F4: .4byte FUN_02208540
	thumb_func_end ov18_022267F0

	thumb_func_start ov18_022267F8
ov18_022267F8: @ 0x022267F8
	push {r4, r5}
	movs r3, #0xff
	lsls r1, r0, #0x18
	lsls r3, r3, #0x18
	adds r2, r1, #0
	lsls r4, r0, #8
	lsrs r1, r3, #8
	ands r1, r4
	lsrs r4, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	lsrs r4, r0, #8
	lsrs r0, r3, #0x10
	ands r0, r4
	orrs r0, r5
	ands r2, r3
	orrs r0, r1
	orrs r0, r2
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_022267F8

	thumb_func_start ov18_02226820
ov18_02226820: @ 0x02226820
	asrs r1, r0, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r0, #8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
	thumb_func_end ov18_02226820

	thumb_func_start ov18_02226838
ov18_02226838: @ 0x02226838
	push {r4, r5}
	movs r3, #0xff
	lsls r1, r0, #0x18
	lsls r3, r3, #0x18
	adds r2, r1, #0
	lsls r4, r0, #8
	lsrs r1, r3, #8
	ands r1, r4
	lsrs r4, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	lsrs r4, r0, #8
	lsrs r0, r3, #0x10
	ands r0, r4
	orrs r0, r5
	ands r2, r3
	orrs r0, r1
	orrs r0, r2
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_02226838

	thumb_func_start ov18_02226860
ov18_02226860: @ 0x02226860
	asrs r1, r0, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r0, #8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
	thumb_func_end ov18_02226860

	thumb_func_start ov18_02226878
ov18_02226878: @ 0x02226878
	movs r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0
	beq _02226888
_02226880:
	adds r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _02226880
_02226888:
	adds r0, r2, #0
	bx lr
	thumb_func_end ov18_02226878

	thumb_func_start ov18_0222688C
ov18_0222688C: @ 0x0222688C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, _022268EC @ =0x02250D78
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _022268CE
	movs r4, #0
	add r0, sp, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl ov18_02226754
	add r0, sp, #0
	blx FUN_020CBA30
	cmp r0, #0
	bne _022268BE
	ldr r0, [sp]
	lsls r0, r0, #0xa
	adds r1, r4, r0
	ldr r0, [sp, #4]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, [sp, #8]
	adds r4, r1, r0
_022268BE:
	ldr r0, _022268EC @ =0x02250D78
	ldr r1, _022268F0 @ =0x5D588B65
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, _022268F4 @ =0x00269EC3
	str r1, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #8]
_022268CE:
	ldr r0, _022268EC @ =0x02250D78
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r3, [r0, #0x20]
	muls r1, r2, r1
	adds r1, r3, r1
	str r1, [r0, #0x18]
	ldr r0, _022268F8 @ =0x00007FFF
	lsrs r1, r1, #0x10
	muls r0, r1, r0
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_022268EC: .4byte 0x02250D78
_022268F0: .4byte 0x5D588B65
_022268F4: .4byte 0x00269EC3
_022268F8: .4byte 0x00007FFF
	thumb_func_end ov18_0222688C

	thumb_func_start ov18_022268FC
ov18_022268FC: @ 0x022268FC
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end ov18_022268FC

	thumb_func_start ov18_02226908
ov18_02226908: @ 0x02226908
	str r0, [r1]
	movs r0, #1
	strh r0, [r1, #4]
	bx lr
	thumb_func_end ov18_02226908

	thumb_func_start ov18_02226910
ov18_02226910: @ 0x02226910
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	adds r4, r1, #0
	adds r1, r4, #4
	str r0, [r4]
	adds r0, r5, #0
	adds r0, #0xc
	movs r2, #0x20
	blx FUN_020C4B18
	ldrh r0, [r5, #0x36]
	adds r1, r4, #0
	adds r1, #0x30
	str r0, [r4, #0x24]
	adds r0, r5, #4
	movs r2, #6
	blx FUN_020C4B18
	movs r1, #0
	ldr r2, _02226998 @ =0x02249808
	adds r0, r1, #0
	movs r6, #0x80
_0222693E:
	ldrh r7, [r5, #0x30]
	ldrh r3, [r2]
	tst r3, r7
	beq _02226968
	ldrb r7, [r2, #2]
	adds r3, r4, r1
	adds r3, #0x3c
	strb r7, [r3]
	ldrh r7, [r5, #0x2e]
	ldrh r3, [r2]
	tst r3, r7
	beq _02226966
	adds r3, r4, r1
	adds r3, #0x3c
	ldrb r3, [r3]
	adds r7, r3, #0
	adds r3, r4, r1
	orrs r7, r6
	adds r3, #0x3c
	strb r7, [r3]
_02226966:
	adds r1, r1, #1
_02226968:
	adds r0, r0, #1
	adds r2, r2, #4
	cmp r0, #0xc
	blt _0222693E
	str r1, [r4, #0x38]
	ldrh r0, [r5, #0x32]
	str r0, [r4, #0x4c]
	ldrh r1, [r5, #0x2c]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _02226986
	movs r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02226986:
	cmp r0, #2
	bne _02226990
	movs r0, #2
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02226990:
	movs r0, #0
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226998: .4byte 0x02249808
	thumb_func_end ov18_02226910

	thumb_func_start ov18_0222699C
ov18_0222699C: @ 0x0222699C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	adds r1, #0xc
	movs r2, #0x20
	blx FUN_020C4AF0
	ldr r0, [r5]
	adds r1, r4, #0
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	adds r0, r5, #4
	adds r1, #0xc
	blx FUN_020C4DB0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov18_0222699C

	thumb_func_start ov18_022269C0
ov18_022269C0: @ 0x022269C0
	adds r3, r0, #0
	adds r0, r1, #0
	str r2, [r3]
	adds r1, r3, #4
	ldr r3, _022269CC @ =ov18_02226910
	bx r3
	.align 2, 0
_022269CC: .4byte ov18_02226910
	thumb_func_end ov18_022269C0

	thumb_func_start ov18_022269D0
ov18_022269D0: @ 0x022269D0
	ldr r3, _022269DC @ =FUN_020C2770
	adds r1, r0, #0
	ldr r0, _022269E0 @ =0x02251B80
	movs r2, #0
	bx r3
	nop
_022269DC: .4byte FUN_020C2770
_022269E0: .4byte 0x02251B80
	thumb_func_end ov18_022269D0

	thumb_func_start ov18_022269E4
ov18_022269E4: @ 0x022269E4
	ldr r3, _022269F0 @ =FUN_020C2770
	adds r1, r0, #0
	ldr r0, _022269F4 @ =0x02251B80
	movs r2, #0
	bx r3
	nop
_022269F0: .4byte FUN_020C2770
_022269F4: .4byte 0x02251B80
	thumb_func_end ov18_022269E4

	thumb_func_start ov18_022269F8
ov18_022269F8: @ 0x022269F8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _02226AA8 @ =0x02251B80
	ldr r1, _02226AAC @ =0x02251B70
	movs r2, #4
	movs r4, #1
	blx FUN_020C2748
	cmp r5, #0
	beq _02226A12
	cmp r6, #0
	bne _02226A18
_02226A12:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226A18:
	blx FUN_020C3D98
	ldr r1, _02226AB0 @ =0x02251B60
	str r5, [r1]
	str r6, [r1, #0xc]
	blx FUN_020C3DAC
	ldr r1, _02226AB0 @ =0x02251B60
	ldr r0, _02226AB4 @ =0x00005890
	ldr r1, [r1]
	blx r1
	adds r1, r0, #0
	ldr r0, _02226AB0 @ =0x02251B60
	str r1, [r0, #8]
	bne _02226A3A
	subs r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02226A3A:
	ldr r0, _02226AB8 @ =ov18_022269D0
	ldr r2, _02226AB4 @ =0x00005890
	bl ov18_02227494
	cmp r0, #0
	bne _02226A48
	movs r4, #0
_02226A48:
	cmp r4, #0
	beq _02226A98
	ldr r5, _02226AA8 @ =0x02251B80
	add r6, sp, #0
	movs r7, #1
_02226A52:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	blx FUN_020C2804
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _02226A92
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02226A6E: @ jump table
	.2byte _02226A92 - _02226A6E - 2 @ case 0
	.2byte _02226A92 - _02226A6E - 2 @ case 1
	.2byte _02226A92 - _02226A6E - 2 @ case 2
	.2byte _02226A92 - _02226A6E - 2 @ case 3
	.2byte _02226A94 - _02226A6E - 2 @ case 4
	.2byte _02226A94 - _02226A6E - 2 @ case 5
	.2byte _02226A8E - _02226A6E - 2 @ case 6
	.2byte _02226A92 - _02226A6E - 2 @ case 7
	.2byte _02226A92 - _02226A6E - 2 @ case 8
	.2byte _02226A92 - _02226A6E - 2 @ case 9
	.2byte _02226A92 - _02226A6E - 2 @ case 10
	.2byte _02226A92 - _02226A6E - 2 @ case 11
	.2byte _02226A92 - _02226A6E - 2 @ case 12
	.2byte _02226A92 - _02226A6E - 2 @ case 13
	.2byte _02226A92 - _02226A6E - 2 @ case 14
	.2byte _02226A92 - _02226A6E - 2 @ case 15
_02226A8E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226A92:
	movs r4, #0
_02226A94:
	cmp r4, #0
	bne _02226A52
_02226A98:
	ldr r1, _02226AB0 @ =0x02251B60
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r1
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226AA8: .4byte 0x02251B80
_02226AAC: .4byte 0x02251B70
_02226AB0: .4byte 0x02251B60
_02226AB4: .4byte 0x00005890
_02226AB8: .4byte ov18_022269D0
	thumb_func_end ov18_022269F8

	thumb_func_start ov18_02226ABC
ov18_02226ABC: @ 0x02226ABC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02226B4C @ =0x02251B60
	movs r4, #1
	ldr r0, [r0, #0xc]
	subs r5, r4, #2
	cmp r0, #0
	bne _02226ACE
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226ACE:
	bl ov18_022273B8
	cmp r0, #0
	bne _02226ADA
	subs r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02226ADA:
	ldr r7, _02226B50 @ =0x02251B80
	ldr r6, _02226B4C @ =0x02251B60
_02226ADE:
	adds r0, r7, #0
	add r1, sp, #0
	movs r2, #1
	blx FUN_020C2804
	ldr r0, [sp]
	cmp r0, #0x14
	bhi _02226B30
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02226AFA: @ jump table
	.2byte _02226B30 - _02226AFA - 2 @ case 0
	.2byte _02226B30 - _02226AFA - 2 @ case 1
	.2byte _02226B30 - _02226AFA - 2 @ case 2
	.2byte _02226B30 - _02226AFA - 2 @ case 3
	.2byte _02226B32 - _02226AFA - 2 @ case 4
	.2byte _02226B32 - _02226AFA - 2 @ case 5
	.2byte _02226B30 - _02226AFA - 2 @ case 6
	.2byte _02226B30 - _02226AFA - 2 @ case 7
	.2byte _02226B30 - _02226AFA - 2 @ case 8
	.2byte _02226B30 - _02226AFA - 2 @ case 9
	.2byte _02226B30 - _02226AFA - 2 @ case 10
	.2byte _02226B30 - _02226AFA - 2 @ case 11
	.2byte _02226B30 - _02226AFA - 2 @ case 12
	.2byte _02226B30 - _02226AFA - 2 @ case 13
	.2byte _02226B30 - _02226AFA - 2 @ case 14
	.2byte _02226B30 - _02226AFA - 2 @ case 15
	.2byte _02226B30 - _02226AFA - 2 @ case 16
	.2byte _02226B30 - _02226AFA - 2 @ case 17
	.2byte _02226B30 - _02226AFA - 2 @ case 18
	.2byte _02226B30 - _02226AFA - 2 @ case 19
	.2byte _02226B24 - _02226AFA - 2 @ case 20
_02226B24:
	ldr r0, [r6, #8]
	movs r4, #0
	ldr r1, [r6, #0xc]
	adds r5, r4, #0
	blx r1
	b _02226B32
_02226B30:
	movs r4, #0
_02226B32:
	cmp r4, #0
	bne _02226ADE
	blx FUN_020C3D98
	ldr r1, _02226B4C @ =0x02251B60
	movs r2, #0
	str r2, [r1]
	str r2, [r1, #0xc]
	blx FUN_020C3DAC
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226B4C: .4byte 0x02251B60
_02226B50: .4byte 0x02251B80
	thumb_func_end ov18_02226ABC

	thumb_func_start ov18_02226B54
ov18_02226B54: @ 0x02226B54
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	mvns r5, r5
	bl ov18_02227380
	cmp r0, #0
	beq _02226B84
	ldr r4, _02226B88 @ =0x02251B80
	add r6, sp, #0
	movs r7, #1
_02226B68:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	blx FUN_020C2804
	ldr r0, [sp]
	cmp r0, #0xe
	bne _02226B7E
	movs r0, #0
	adds r5, r0, #0
	b _02226B80
_02226B7E:
	movs r0, #0
_02226B80:
	cmp r0, #0
	bne _02226B68
_02226B84:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02226B88: .4byte 0x02251B80
	thumb_func_end ov18_02226B54

	thumb_func_start ov18_02226B8C
ov18_02226B8C: @ 0x02226B8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r6, #0
	ldr r0, _02226CF0 @ =0x02251B60
	adds r7, r6, #0
	ldr r1, [r0]
	adds r5, r6, #0
	cmp r1, #0
	beq _02226BB0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02226BB8
_02226BB0:
	movs r0, #0
	add sp, #0x44
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02226BB8:
	movs r0, #3
	lsls r0, r0, #0xc
	blx r1
	adds r4, r0, #0
	bne _02226BC8
	add sp, #0x44
	subs r0, r6, #1
	pop {r4, r5, r6, r7, pc}
_02226BC8:
	adds r0, r6, #0
	ldr r3, _02226CF4 @ =0x0030BFFE
	adds r1, r0, #0
	adds r2, r0, #0
	str r4, [sp, #8]
	bl ov18_02227254
	cmp r0, #0
	bne _02226BDC
	b _02226CE0
_02226BDC:
	add r0, sp, #0x18
	blx FUN_020C3A0C
	movs r0, #0x13
	str r0, [sp]
	ldr r1, _02226CF8 @ =0x003FEC42
	ldr r3, _02226CFC @ =ov18_022269E4
	add r0, sp, #0x18
	adds r2, r6, #0
	blx FUN_020C3B48
_02226BF2:
	ldr r0, _02226D00 @ =0x02251B80
	add r1, sp, #0x14
	movs r2, #1
	blx FUN_020C2804
	ldr r0, [sp, #0x14]
	cmp r0, #0x13
	bhi _02226CC6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02226C0E: @ jump table
	.2byte _02226CC6 - _02226C0E - 2 @ case 0
	.2byte _02226CC6 - _02226C0E - 2 @ case 1
	.2byte _02226CC6 - _02226C0E - 2 @ case 2
	.2byte _02226CC6 - _02226C0E - 2 @ case 3
	.2byte _02226C7C - _02226C0E - 2 @ case 4
	.2byte _02226C54 - _02226C0E - 2 @ case 5
	.2byte _02226CC6 - _02226C0E - 2 @ case 6
	.2byte _02226CC6 - _02226C0E - 2 @ case 7
	.2byte _02226C7C - _02226C0E - 2 @ case 8
	.2byte _02226CC6 - _02226C0E - 2 @ case 9
	.2byte _02226C76 - _02226C0E - 2 @ case 10
	.2byte _02226CC6 - _02226C0E - 2 @ case 11
	.2byte _02226CC6 - _02226C0E - 2 @ case 12
	.2byte _02226CC6 - _02226C0E - 2 @ case 13
	.2byte _02226CC6 - _02226C0E - 2 @ case 14
	.2byte _02226CC6 - _02226C0E - 2 @ case 15
	.2byte _02226CC6 - _02226C0E - 2 @ case 16
	.2byte _02226CC6 - _02226C0E - 2 @ case 17
	.2byte _02226C7C - _02226C0E - 2 @ case 18
	.2byte _02226C36 - _02226C0E - 2 @ case 19
_02226C36:
	cmp r6, #0
	bne _02226C7C
	cmp r5, #0
	beq _02226C48
	adds r0, r4, #0
	movs r1, #0x40
	bl ov18_02227210
	adds r7, r0, #0
_02226C48:
	bl ov18_02227344
	cmp r0, #0
	beq _02226CC6
	movs r6, #1
	b _02226C7C
_02226C54:
	cmp r6, #0
	bne _02226C7C
	cmp r5, #8
	bge _02226C60
	adds r5, r5, #1
	b _02226C7C
_02226C60:
	adds r0, r4, #0
	movs r1, #0x40
	bl ov18_02227210
	adds r7, r0, #0
	bl ov18_02227344
	cmp r0, #0
	beq _02226CC6
	movs r6, #1
	b _02226C7C
_02226C76:
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_02226C7C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02226BF2
	cmp r7, #0
	beq _02226C9A
	subs r1, r7, #1
	movs r0, #0x54
	muls r0, r1, r0
	ldr r1, _02226CF0 @ =0x02251B60
	adds r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	bne _02226CA6
	b _02226CC6
_02226C9A:
	ldr r1, _02226CF0 @ =0x02251B60
	movs r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	beq _02226CC6
_02226CA6:
	ldr r1, [sp, #4]
	movs r6, #0
	str r0, [r1]
	str r7, [r0]
	cmp r7, #0
	ble _02226CC6
	adds r5, r0, #4
_02226CB4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov18_02226910
	adds r6, r6, #1
	adds r4, #0xc0
	adds r5, #0x54
	cmp r6, r7
	blt _02226CB4
_02226CC6:
	add r0, sp, #0x18
	blx FUN_020C3BB4
	ldr r5, _02226D00 @ =0x02251B80
	add r4, sp, #0x14
	movs r6, #0
_02226CD2:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	blx FUN_020C2804
	cmp r0, #1
	beq _02226CD2
_02226CE0:
	ldr r1, _02226CF0 @ =0x02251B60
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02226CF0: .4byte 0x02251B60
_02226CF4: .4byte 0x0030BFFE
_02226CF8: .4byte 0x003FEC42
_02226CFC: .4byte ov18_022269E4
_02226D00: .4byte 0x02251B80
	thumb_func_end ov18_02226B8C

	thumb_func_start ov18_02226D04
ov18_02226D04: @ 0x02226D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	movs r4, #1
	adds r7, r0, #0
	subs r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x24]
	movs r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	bne _02226D1E
	lsls r5, r4, #0x13
	b _02226D26
_02226D1E:
	cmp r0, #1
	bne _02226D26
	movs r5, #3
	lsls r5, r5, #0x12
_02226D26:
	movs r0, #3
	lsls r0, r0, #0x10
	orrs r5, r0
	ldr r0, _02226EB8 @ =0x02251C60
	movs r1, #0
	movs r2, #0x60
	blx FUN_020C4CF4
	ldr r0, [r7, #0x28]
	cmp r0, #5
	bne _02226D44
	ldr r0, _02226EB8 @ =0x02251C60
	movs r1, #1
	strb r1, [r0]
	b _02226D64
_02226D44:
	cmp r0, #0xd
	bne _02226D50
	ldr r0, _02226EB8 @ =0x02251C60
	movs r1, #2
	strb r1, [r0]
	b _02226D64
_02226D50:
	cmp r0, #0x10
	bne _02226D5C
	ldr r0, _02226EB8 @ =0x02251C60
	movs r1, #3
	strb r1, [r0]
	b _02226D64
_02226D5C:
	movs r0, #0
	add sp, #0x40
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226D64:
	movs r1, #0x14
	ldr r2, _02226EB8 @ =0x02251C60
	muls r1, r6, r1
	adds r1, r1, #2
	adds r0, r7, #0
	strb r6, [r2, #1]
	adds r1, r2, r1
	ldr r2, [r7, #0x28]
	adds r0, #0x2c
	blx FUN_020C4DB0
	blx FUN_02214E34
	ldr r2, [r7]
	ldr r3, _02226EBC @ =0x0030BFFE
	movs r0, #0
	adds r1, r7, #4
	bl ov18_02227254
	cmp r0, #0
	bne _02226D90
	b _02226E9E
_02226D90:
	movs r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	blx FUN_020C3A0C
	movs r0, #0x12
	str r0, [sp]
	ldr r1, _02226EC0 @ =0x003FEC42
	ldr r3, _02226EC4 @ =ov18_022269E4
	add r0, sp, #0x14
	movs r2, #0
	blx FUN_020C3B48
	b _02226E80
_02226DAC:
	ldr r0, _02226EC8 @ =0x02251B80
	add r1, sp, #0x10
	movs r2, #1
	blx FUN_020C2804
	ldr r0, [sp, #0x10]
	cmp r0, #0x13
	bhi _02226E7E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02226DC8: @ jump table
	.2byte _02226E7E - _02226DC8 - 2 @ case 0
	.2byte _02226E7E - _02226DC8 - 2 @ case 1
	.2byte _02226E7E - _02226DC8 - 2 @ case 2
	.2byte _02226E7E - _02226DC8 - 2 @ case 3
	.2byte _02226E80 - _02226DC8 - 2 @ case 4
	.2byte _02226DF8 - _02226DC8 - 2 @ case 5
	.2byte _02226E7E - _02226DC8 - 2 @ case 6
	.2byte _02226E7E - _02226DC8 - 2 @ case 7
	.2byte _02226E80 - _02226DC8 - 2 @ case 8
	.2byte _02226E7E - _02226DC8 - 2 @ case 9
	.2byte _02226E3E - _02226DC8 - 2 @ case 10
	.2byte _02226E7E - _02226DC8 - 2 @ case 11
	.2byte _02226E58 - _02226DC8 - 2 @ case 12
	.2byte _02226E5E - _02226DC8 - 2 @ case 13
	.2byte _02226E7E - _02226DC8 - 2 @ case 14
	.2byte _02226E7E - _02226DC8 - 2 @ case 15
	.2byte _02226E7E - _02226DC8 - 2 @ case 16
	.2byte _02226E7E - _02226DC8 - 2 @ case 17
	.2byte _02226DF0 - _02226DC8 - 2 @ case 18
	.2byte _02226DF6 - _02226DC8 - 2 @ case 19
_02226DF0:
	cmp r6, #0
	bne _02226E80
	movs r4, #0
_02226DF6:
	b _02226E80
_02226DF8:
	cmp r6, #0
	bne _02226E80
	add r0, sp, #0x14
	blx FUN_020C3BB4
	ldr r0, _02226ECC @ =0x02251BA0
	movs r1, #1
	bl ov18_02227210
	cmp r0, #1
	beq _02226E12
	movs r4, #0
	b _02226E80
_02226E12:
	ldr r1, _02226ECC @ =0x02251BA0
	adds r0, r7, #0
	bl ov18_0222699C
	ldr r1, _02226ED0 @ =0x02251BA0
	movs r0, #0
	ldrh r1, [r1, #0xa]
	b _02226E24
_02226E22:
	adds r0, r0, #1
_02226E24:
	cmp r0, r1
	blt _02226E22
	ldr r0, _02226ECC @ =0x02251BA0
	ldr r1, _02226EB8 @ =0x02251C60
	adds r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E3A
	movs r4, #0
	b _02226E80
_02226E3A:
	movs r6, #1
	b _02226E80
_02226E3E:
	ldr r1, _02226ECC @ =0x02251BA0
	adds r0, r7, #0
	bl ov18_0222699C
	ldr r0, _02226ECC @ =0x02251BA0
	ldr r1, _02226EB8 @ =0x02251C60
	adds r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E80
	movs r4, #0
	b _02226E80
_02226E58:
	movs r4, #0
	str r4, [sp, #0xc]
	b _02226E80
_02226E5E:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	bge _02226E7A
	ldr r0, _02226ECC @ =0x02251BA0
	ldr r1, _02226EB8 @ =0x02251C60
	adds r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E80
	movs r4, #0
	b _02226E80
_02226E7A:
	movs r4, #0
	b _02226E80
_02226E7E:
	movs r4, #0
_02226E80:
	cmp r4, #0
	bne _02226DAC
	add r0, sp, #0x14
	blx FUN_020C3BB4
	ldr r5, _02226EC8 @ =0x02251B80
	add r4, sp, #0x10
	movs r6, #0
_02226E90:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	blx FUN_020C2804
	cmp r0, #1
	beq _02226E90
_02226E9E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02226EA8
	movs r2, #1
	b _02226EAA
_02226EA8:
	movs r2, #0
_02226EAA:
	ldr r0, [sp, #4]
	ldr r1, _02226ECC @ =0x02251BA0
	bl ov18_022269C0
	ldr r0, [sp, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02226EB8: .4byte 0x02251C60
_02226EBC: .4byte 0x0030BFFE
_02226EC0: .4byte 0x003FEC42
_02226EC4: .4byte ov18_022269E4
_02226EC8: .4byte 0x02251B80
_02226ECC: .4byte 0x02251BA0
_02226ED0: .4byte 0x02251BA0
	thumb_func_end ov18_02226D04

	thumb_func_start ov18_02226ED4
ov18_02226ED4: @ 0x02226ED4
	ldr r3, _02226ED8 @ =FUN_020C24A4
	bx r3
	.align 2, 0
_02226ED8: .4byte FUN_020C24A4
	thumb_func_end ov18_02226ED4

	thumb_func_start ov18_02226EDC
ov18_02226EDC: @ 0x02226EDC
	push {r3, lr}
	ldr r1, _02226EEC @ =0x02251B60
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02226EE8
	blx r1
_02226EE8:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02226EEC: .4byte 0x02251B60
	thumb_func_end ov18_02226EDC

	thumb_func_start ov18_02226EF0
ov18_02226EF0: @ 0x02226EF0
	push {r3, lr}
	cmp r0, #0
	bne _02226EF8
	b _022271A0
_02226EF8:
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #7
	bls _02226F02
	b _02227192
_02226F02:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02226F0E: @ jump table
	.2byte _02227192 - _02226F0E - 2 @ case 0
	.2byte _02226F1E - _02226F0E - 2 @ case 1
	.2byte _02227146 - _02226F0E - 2 @ case 2
	.2byte _02226F9E - _02226F0E - 2 @ case 3
	.2byte _02227002 - _02226F0E - 2 @ case 4
	.2byte _02226FD0 - _02226F0E - 2 @ case 5
	.2byte _022270A2 - _02226F0E - 2 @ case 6
	.2byte _0222717E - _02226F0E - 2 @ case 7
_02226F1E:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226F8A
	ldr r2, _022271A4 @ =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02226F3E
	movs r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _02226F96
	movs r0, #6
	blx r2
	pop {r3, pc}
_02226F3E:
	cmp r0, #6
	bne _02226F64
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx FUN_0221312C
	cmp r0, #3
	beq _02226F96
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _02226F96
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02226F64:
	cmp r0, #8
	bne _02226F96
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx FUN_02213368
	cmp r0, #3
	beq _02226F96
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _02226F96
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02226F8A:
	ldr r0, _022271A4 @ =0x02251CC0
	movs r3, #1
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	bne _02226F98
_02226F96:
	b _022271A0
_02226F98:
	adds r0, r2, #0
	blx r3
	pop {r3, pc}
_02226F9E:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226FBE
	ldr r0, _022271A4 @ =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #6
	bne _0222709A
	movs r2, #5
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #8
	blx r2
	pop {r3, pc}
_02226FBE:
	ldr r0, _022271A4 @ =0x02251CC0
	movs r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #9
	blx r2
	pop {r3, pc}
_02226FD0:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226FF0
	ldr r0, _022271A4 @ =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #8
	bne _0222709A
	movs r2, #7
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #0xc
	blx r2
	pop {r3, pc}
_02226FF0:
	ldr r0, _022271A4 @ =0x02251CC0
	movs r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #0xd
	blx r2
	pop {r3, pc}
_02227002:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222708E
	ldr r2, _022271A4 @ =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02227022
	movs r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #0xa
	blx r2
	pop {r3, pc}
_02227022:
	cmp r0, #6
	bne _02227048
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx FUN_0221312C
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02227048:
	cmp r0, #2
	bne _02227068
	blx FUN_0221303C
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02227068:
	cmp r0, #8
	bne _0222709A
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx FUN_02213368
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_0222708E:
	ldr r0, _022271A4 @ =0x02251CC0
	movs r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	bne _0222709C
_0222709A:
	b _022271A0
_0222709C:
	movs r0, #0xb
	blx r2
	pop {r3, pc}
_022270A2:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227134
	ldr r2, _022271A4 @ =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _022270C2
	movs r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #0xe
	blx r2
	pop {r3, pc}
_022270C2:
	cmp r0, #6
	bne _022270E8
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx FUN_0221312C
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_022270E8:
	cmp r0, #2
	bne _02227108
	blx FUN_0221303C
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02227108:
	cmp r0, #8
	bne _0222712E
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx FUN_02213368
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_0222712E:
	movs r0, #3
	str r0, [r2, #0x18]
	pop {r3, pc}
_02227134:
	ldr r0, _022271A4 @ =0x02251CC0
	movs r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #0xf
	blx r2
	pop {r3, pc}
_02227146:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222716C
	ldr r0, _022271A4 @ =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #2
	bne _022271A0
	blx FUN_02212DE0
	ldr r0, _022271A4 @ =0x02251CC0
	movs r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #0x14
	blx r2
	pop {r3, pc}
_0222716C:
	ldr r0, _022271A4 @ =0x02251CC0
	movs r3, #3
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _022271A0
	adds r0, r2, #0
	blx r3
	pop {r3, pc}
_0222717E:
	ldr r0, _022271A4 @ =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #5
	bne _022271A0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #5
	blx r2
	pop {r3, pc}
_02227192:
	ldr r0, _022271A4 @ =0x02251CC0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	movs r0, #1
	movs r1, #0
	blx r2
_022271A0:
	pop {r3, pc}
	nop
_022271A4: .4byte 0x02251CC0
	thumb_func_end ov18_02226EF0

	thumb_func_start ov18_022271A8
ov18_022271A8: @ 0x022271A8
	push {r3, lr}
	ldr r1, _02227208 @ =0x02251CC0
	ldr r0, [r1, #0x18]
	cmp r0, #8
	bhi _022271FE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022271BE: @ jump table
	.2byte _022271FE - _022271BE - 2 @ case 0
	.2byte _022271EE - _022271BE - 2 @ case 1
	.2byte _022271FE - _022271BE - 2 @ case 2
	.2byte _022271FE - _022271BE - 2 @ case 3
	.2byte _022271FE - _022271BE - 2 @ case 4
	.2byte _022271D0 - _022271BE - 2 @ case 5
	.2byte _022271FE - _022271BE - 2 @ case 6
	.2byte _022271E2 - _022271BE - 2 @ case 7
	.2byte _022271FE - _022271BE - 2 @ case 8
_022271D0:
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_0221312C
	cmp r0, #3
	beq _02227202
	movs r0, #0
	pop {r3, pc}
_022271E2:
	blx FUN_0221356C
	cmp r0, #3
	beq _02227202
	movs r0, #0
	pop {r3, pc}
_022271EE:
	ldr r0, [r1, #8]
	ldr r1, _0222720C @ =ov18_02226EF0
	blx FUN_02212E38
	cmp r0, #3
	beq _02227202
	movs r0, #0
	pop {r3, pc}
_022271FE:
	movs r0, #0
	pop {r3, pc}
_02227202:
	movs r0, #1
	pop {r3, pc}
	nop
_02227208: .4byte 0x02251CC0
_0222720C: .4byte ov18_02226EF0
	thumb_func_end ov18_022271A8

	thumb_func_start ov18_02227210
ov18_02227210: @ 0x02227210
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	adds r7, r1, #0
	blx FUN_02214EE0
	blx FUN_02214E88
	adds r6, r0, #0
	cmp r6, #0
	ble _02227248
	movs r4, #0
	cmp r6, #0
	ble _02227248
_0222722C:
	cmp r4, r7
	bge _02227248
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	blx FUN_02214F5C
	adds r1, r5, #0
	movs r2, #0xc0
	blx FUN_020C4B68
	adds r4, r4, #1
	adds r5, #0xc0
	cmp r4, r6
	blt _0222722C
_02227248:
	movs r0, #0
	blx FUN_02214EE0
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_02227210

	thumb_func_start ov18_02227254
ov18_02227254: @ 0x02227254
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	blx FUN_020C3D98
	adds r7, r0, #0
	ldr r1, _02227330 @ =0x02251CC0
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #4]
	beq _02227288
	ldr r2, _02227334 @ =0x02251CE8
	movs r1, #0
_02227272:
	ldrb r0, [r5]
	adds r1, r1, #1
	adds r5, r5, #1
	strb r0, [r2]
	adds r2, r2, #1
	cmp r1, #6
	blt _02227272
	ldr r1, _02227334 @ =0x02251CE8
	ldr r0, _02227330 @ =0x02251CC0
	str r1, [r0, #0x10]
	b _02227298
_02227288:
	ldr r0, _02227334 @ =0x02251CE8
	movs r1, #0xff
	movs r2, #6
	blx FUN_020C4CF4
	ldr r1, _02227338 @ =0x02215E48
	ldr r0, _02227330 @ =0x02251CC0
	str r1, [r0, #0x10]
_02227298:
	cmp r4, #0
	beq _022272D6
	cmp r6, #0
	ble _022272D6
	cmp r6, #0x20
	bgt _022272D6
	movs r0, #0
	cmp r6, #0
	ble _022272BA
	ldr r2, _0222733C @ =0x02251CF0
_022272AC:
	ldrb r1, [r4]
	adds r0, r0, #1
	adds r4, r4, #1
	strb r1, [r2]
	adds r2, r2, #1
	cmp r0, r6
	blt _022272AC
_022272BA:
	cmp r0, #0x20
	bge _022272CE
	ldr r1, _0222733C @ =0x02251CF0
	adds r2, r1, r0
	movs r1, #0
_022272C4:
	adds r0, r0, #1
	strb r1, [r2]
	adds r2, r2, #1
	cmp r0, #0x20
	blt _022272C4
_022272CE:
	ldr r1, _0222733C @ =0x02251CF0
	ldr r0, _02227330 @ =0x02251CC0
	str r1, [r0, #0x14]
	b _022272E6
_022272D6:
	ldr r0, _0222733C @ =0x02251CF0
	movs r1, #0xff
	movs r2, #0x20
	blx FUN_020C4CF4
	ldr r1, _02227340 @ =0x02215E50
	ldr r0, _02227330 @ =0x02251CC0
	str r1, [r0, #0x14]
_022272E6:
	ldr r2, _02227330 @ =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _0222730C
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx FUN_0221312C
	cmp r0, #3
	bne _02227324
	ldr r0, _02227330 @ =0x02251CC0
	movs r1, #6
	str r1, [r0, #0x18]
	adds r0, r7, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222730C:
	bl ov18_022271A8
	cmp r0, #1
	bne _02227324
	ldr r0, _02227330 @ =0x02251CC0
	movs r1, #6
	str r1, [r0, #0x18]
	adds r0, r7, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227324:
	adds r0, r7, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227330: .4byte 0x02251CC0
_02227334: .4byte 0x02251CE8
_02227338: .4byte 0x02215E48
_0222733C: .4byte 0x02251CF0
_02227340: .4byte 0x02215E50
	thumb_func_end ov18_02227254

	thumb_func_start ov18_02227344
ov18_02227344: @ 0x02227344
	push {r4, lr}
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _0222737C @ =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #5
	bne _02227372
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_0221312C
	cmp r0, #3
	bne _02227372
	ldr r0, _0222737C @ =0x02251CC0
	movs r1, #4
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_02227372:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0222737C: .4byte 0x02251CC0
	thumb_func_end ov18_02227344

	thumb_func_start ov18_02227380
ov18_02227380: @ 0x02227380
	push {r4, lr}
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _022273B4 @ =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #7
	bne _022273A8
	blx FUN_0221356C
	cmp r0, #3
	bne _022273A8
	ldr r0, _022273B4 @ =0x02251CC0
	movs r1, #4
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_022273A8:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
	nop
_022273B4: .4byte 0x02251CC0
	thumb_func_end ov18_02227380

	thumb_func_start ov18_022273B8
ov18_022273B8: @ 0x022273B8
	push {r4, lr}
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _0222740C @ =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #3
	bne _022273EA
	blx FUN_0221303C
	cmp r0, #3
	beq _022273DA
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
_022273DA:
	ldr r0, _0222740C @ =0x02251CC0
	movs r1, #2
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_022273EA:
	bl ov18_022271A8
	cmp r0, #1
	bne _02227402
	ldr r0, _0222740C @ =0x02251CC0
	movs r1, #2
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_02227402:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0222740C: .4byte 0x02251CC0
	thumb_func_end ov18_022273B8

	thumb_func_start ov18_02227410
ov18_02227410: @ 0x02227410
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	blx FUN_020C3D98
	ldr r1, _02227490 @ =0x02251CC0
	adds r4, r0, #0
	str r6, [r1, #0xc]
	cmp r5, #0
	beq _02227432
	ldr r1, [r1, #0x24]
	adds r0, r5, #0
	movs r2, #0x50
	blx FUN_020C4DB0
	b _0222743C
_02227432:
	ldr r0, [r1, #0x24]
	movs r1, #0
	movs r2, #0x50
	blx FUN_020C4CF4
_0222743C:
	ldr r1, _02227490 @ =0x02251CC0
	adds r0, r7, #0
	ldr r1, [r1, #0x20]
	movs r2, #0xc0
	blx FUN_020C4B68
	bl ov18_022271A8
	cmp r0, #1
	bne _02227460
	ldr r0, _02227490 @ =0x02251CC0
	movs r1, #8
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227460:
	ldr r2, _02227490 @ =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _02227486
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx FUN_02213368
	cmp r0, #3
	bne _02227486
	ldr r0, _02227490 @ =0x02251CC0
	movs r1, #8
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227486:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02227490: .4byte 0x02251CC0
	thumb_func_end ov18_02227410

	thumb_func_start ov18_02227494
ov18_02227494: @ 0x02227494
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	str r2, [sp]
	blx FUN_020C3D98
	adds r4, r0, #0
	adds r0, r5, #0
	ldr r2, _02227540 @ =0x02251CC0
	adds r0, #0x53
	movs r1, #3
	bics r0, r1
	adds r6, r0, #0
	str r5, [r2, #0x24]
	adds r6, #0x2f
	movs r1, #0x1f
	ldr r3, _02227544 @ =0x0000231F
	str r0, [r2, #8]
	bics r6, r1
	str r6, [r2]
	adds r6, r6, r3
	bics r6, r1
	str r6, [r2, #0x20]
	adds r6, #0xdf
	bics r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	subs r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	movs r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	movs r1, #3
	str r1, [r0]
	str r7, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _02227506
	subs r3, #0x1f
	ldr r0, [r2]
	adds r1, r3, #0
	blx FUN_02212CC8
	cmp r0, #0
	beq _02227500
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227500:
	ldr r0, _02227540 @ =0x02251CC0
	movs r1, #1
	str r1, [r0, #0x18]
_02227506:
	ldr r0, _02227540 @ =0x02251CC0
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _02227534
	ldr r0, [r0, #8]
	ldr r1, _02227548 @ =ov18_02226EF0
	blx FUN_02212E38
	cmp r0, #3
	beq _02227524
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227524:
	ldr r0, _02227540 @ =0x02251CC0
	movs r1, #4
	str r1, [r0, #0x18]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227534:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227540: .4byte 0x02251CC0
_02227544: .4byte 0x0000231F
_02227548: .4byte ov18_02226EF0
	thumb_func_end ov18_02227494

	thumb_func_start ov18_0222754C
ov18_0222754C: @ 0x0222754C
	push {r3, lr}
	cmp r0, #0
	bne _02227554
	b _0222784E
_02227554:
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #9
	bls _0222755E
	b _02227840
_0222755E:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0222756A: @ jump table
	.2byte _02227840 - _0222756A - 2 @ case 0
	.2byte _0222757E - _0222756A - 2 @ case 1
	.2byte _022277CE - _0222756A - 2 @ case 2
	.2byte _02227604 - _0222756A - 2 @ case 3
	.2byte _02227672 - _0222756A - 2 @ case 4
	.2byte _0222763C - _0222756A - 2 @ case 5
	.2byte _0222771A - _0222756A - 2 @ case 6
	.2byte _0222780A - _0222756A - 2 @ case 7
	.2byte _02227820 - _0222756A - 2 @ case 8
	.2byte _0222782E - _0222756A - 2 @ case 9
_0222757E:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022275F0
	ldr r2, _02227850 @ =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _022275A0
	movs r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227634
	movs r0, #6
	blx r2
	pop {r3, pc}
_022275A0:
	cmp r0, #6
	bne _022275C8
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	blx FUN_0221312C
	cmp r0, #3
	beq _02227634
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227634
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_022275C8:
	cmp r0, #8
	bne _02227634
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx FUN_02213368
	cmp r0, #3
	beq _02227634
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227634
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_022275F0:
	ldr r0, _02227850 @ =0x02251D10
	movs r3, #1
	str r3, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r3, [r0]
	cmp r3, #0
	beq _02227634
	adds r0, r2, #0
	blx r3
	pop {r3, pc}
_02227604:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227626
	ldr r0, _02227850 @ =0x02251D10
	ldr r2, [r0, #0x2c]
	cmp r2, #6
	bne _02227634
	movs r2, #5
	str r2, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227634
	movs r0, #8
	blx r2
	pop {r3, pc}
_02227626:
	ldr r0, _02227850 @ =0x02251D10
	movs r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	bne _02227636
_02227634:
	b _0222784E
_02227636:
	movs r0, #9
	blx r2
	pop {r3, pc}
_0222763C:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222765E
	ldr r0, _02227850 @ =0x02251D10
	ldr r2, [r0, #0x2c]
	cmp r2, #8
	bne _02227736
	movs r2, #7
	str r2, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #0xc
	blx r2
	pop {r3, pc}
_0222765E:
	ldr r0, _02227850 @ =0x02251D10
	movs r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #0xd
	blx r2
	pop {r3, pc}
_02227672:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227706
	ldr r2, _02227850 @ =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _02227694
	movs r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #0xa
	blx r2
	pop {r3, pc}
_02227694:
	cmp r0, #6
	bne _022276BC
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	blx FUN_0221312C
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_022276BC:
	cmp r0, #2
	bne _022276DE
	blx FUN_0221303C
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_022276DE:
	cmp r0, #8
	bne _02227736
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx FUN_02213368
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02227706:
	ldr r0, _02227850 @ =0x02251D10
	movs r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _02227736
	movs r0, #0xb
	blx r2
	pop {r3, pc}
_0222771A:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022277BA
	ldr r2, _02227850 @ =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _0222773E
	movs r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	bne _02227738
_02227736:
	b _0222784E
_02227738:
	movs r0, #0xe
	blx r2
	pop {r3, pc}
_0222773E:
	cmp r0, #6
	bne _02227766
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	blx FUN_0221312C
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02227766:
	cmp r0, #2
	bne _02227788
	blx FUN_0221303C
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_02227788:
	cmp r0, #8
	bne _022277B0
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx FUN_02213368
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #2
	movs r1, #0
	blx r2
	pop {r3, pc}
_022277B0:
	cmp r0, #7
	bne _0222784E
	movs r0, #3
	str r0, [r2, #0x2c]
	pop {r3, pc}
_022277BA:
	ldr r0, _02227850 @ =0x02251D10
	movs r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #0xf
	blx r2
	pop {r3, pc}
_022277CE:
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022277F6
	ldr r0, _02227850 @ =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #2
	bne _0222784E
	blx FUN_02212DE0
	ldr r0, _02227850 @ =0x02251D10
	movs r1, #0
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #0x14
	blx r2
	pop {r3, pc}
_022277F6:
	ldr r0, _02227850 @ =0x02251D10
	movs r3, #3
	str r3, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r3, [r0]
	cmp r3, #0
	beq _0222784E
	adds r0, r2, #0
	blx r3
	pop {r3, pc}
_0222780A:
	ldr r0, _02227850 @ =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #5
	bne _0222784E
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #5
	blx r2
	pop {r3, pc}
_02227820:
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #4
	blx r2
	pop {r3, pc}
_0222782E:
	ldr r0, _02227850 @ =0x02251D10
	str r1, [r0, #0x2c]
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #3
	blx r2
	pop {r3, pc}
_02227840:
	ldr r0, _02227854 @ =0x02251D90
	ldr r2, [r0]
	cmp r2, #0
	beq _0222784E
	movs r0, #1
	movs r1, #0
	blx r2
_0222784E:
	pop {r3, pc}
	.align 2, 0
_02227850: .4byte 0x02251D10
_02227854: .4byte 0x02251D90
	thumb_func_end ov18_0222754C

	thumb_func_start ov18_02227858
ov18_02227858: @ 0x02227858
	push {r3, lr}
	ldr r1, _022278B8 @ =0x02251D10
	ldr r0, [r1, #0x2c]
	cmp r0, #8
	bhi _022278AE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222786E: @ jump table
	.2byte _022278AE - _0222786E - 2 @ case 0
	.2byte _0222789E - _0222786E - 2 @ case 1
	.2byte _022278AE - _0222786E - 2 @ case 2
	.2byte _022278AE - _0222786E - 2 @ case 3
	.2byte _022278AE - _0222786E - 2 @ case 4
	.2byte _02227880 - _0222786E - 2 @ case 5
	.2byte _022278AE - _0222786E - 2 @ case 6
	.2byte _02227892 - _0222786E - 2 @ case 7
	.2byte _022278AE - _0222786E - 2 @ case 8
_02227880:
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_0221312C
	cmp r0, #3
	beq _022278B2
	movs r0, #0
	pop {r3, pc}
_02227892:
	blx FUN_0221356C
	cmp r0, #3
	beq _022278B2
	movs r0, #0
	pop {r3, pc}
_0222789E:
	ldr r0, [r1, #8]
	ldr r1, _022278BC @ =ov18_0222754C
	blx FUN_02212E38
	cmp r0, #3
	beq _022278B2
	movs r0, #0
	pop {r3, pc}
_022278AE:
	movs r0, #0
	pop {r3, pc}
_022278B2:
	movs r0, #1
	pop {r3, pc}
	nop
_022278B8: .4byte 0x02251D10
_022278BC: .4byte ov18_0222754C
	thumb_func_end ov18_02227858

	thumb_func_start ov18_022278C0
ov18_022278C0: @ 0x022278C0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	adds r7, r1, #0
	blx FUN_02214EE0
	blx FUN_02214E88
	adds r6, r0, #0
	cmp r6, #0
	ble _022278F8
	movs r4, #0
	cmp r6, #0
	ble _022278F8
_022278DC:
	cmp r4, r7
	bge _022278F8
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	blx FUN_02214F5C
	adds r1, r5, #0
	movs r2, #0xc0
	blx FUN_020C4B68
	adds r4, r4, #1
	adds r5, #0xc0
	cmp r4, r6
	blt _022278DC
_022278F8:
	movs r0, #0
	blx FUN_02214EE0
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_022278C0

	thumb_func_start ov18_02227904
ov18_02227904: @ 0x02227904
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	blx FUN_020C3D98
	adds r7, r0, #0
	ldr r1, _022279D8 @ =0x02251D10
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #0x60]
	ldr r0, _022279DC @ =0x022521C8
	str r0, [r1, #0x44]
	beq _02227934
	movs r2, #0
_02227924:
	ldrb r1, [r5]
	adds r2, r2, #1
	adds r5, r5, #1
	strb r1, [r0]
	adds r0, r0, #1
	cmp r2, #6
	blt _02227924
	b _02227942
_02227934:
	movs r1, #0xff
	movs r2, #6
	blx FUN_020C4CF4
	ldr r1, _022279E0 @ =0x02215E48
	ldr r0, _022279D8 @ =0x02251D10
	str r1, [r0, #0x44]
_02227942:
	ldr r2, _022279E4 @ =0x02252200
	ldr r0, _022279D8 @ =0x02251D10
	cmp r4, #0
	str r2, [r0, #0x48]
	beq _0222797E
	cmp r6, #0
	ble _0222797E
	cmp r6, #0x20
	bge _0222797E
	movs r0, #0
	cmp r6, #0
	ble _02227968
_0222795A:
	ldrb r1, [r4]
	adds r0, r0, #1
	adds r4, r4, #1
	strb r1, [r2]
	adds r2, r2, #1
	cmp r0, r6
	blt _0222795A
_02227968:
	cmp r0, #0x20
	bge _0222798E
	ldr r1, _022279E4 @ =0x02252200
	adds r2, r1, r0
	movs r1, #0
_02227972:
	adds r0, r0, #1
	strb r1, [r2]
	adds r2, r2, #1
	cmp r0, #0x20
	blt _02227972
	b _0222798E
_0222797E:
	ldr r0, _022279E4 @ =0x02252200
	movs r1, #0xff
	movs r2, #0x20
	blx FUN_020C4CF4
	ldr r1, _022279E8 @ =0x02215E50
	ldr r0, _022279D8 @ =0x02251D10
	str r1, [r0, #0x48]
_0222798E:
	ldr r2, _022279D8 @ =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _022279B4
	ldr r1, [r2, #0x48]
	ldr r0, _022279DC @ =0x022521C8
	ldr r2, [r2, #0x60]
	blx FUN_0221312C
	cmp r0, #3
	bne _022279CC
	ldr r0, _022279D8 @ =0x02251D10
	movs r1, #6
	str r1, [r0, #0x2c]
	adds r0, r7, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022279B4:
	bl ov18_02227858
	cmp r0, #1
	bne _022279CC
	ldr r0, _022279D8 @ =0x02251D10
	movs r1, #6
	str r1, [r0, #0x2c]
	adds r0, r7, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022279CC:
	adds r0, r7, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022279D8: .4byte 0x02251D10
_022279DC: .4byte 0x022521C8
_022279E0: .4byte 0x02215E48
_022279E4: .4byte 0x02252200
_022279E8: .4byte 0x02215E50
	thumb_func_end ov18_02227904

	thumb_func_start ov18_022279EC
ov18_022279EC: @ 0x022279EC
	push {r4, lr}
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _02227A20 @ =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #7
	bne _02227A14
	blx FUN_0221356C
	cmp r0, #3
	bne _02227A14
	ldr r0, _02227A20 @ =0x02251D10
	movs r1, #4
	str r1, [r0, #0x2c]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_02227A14:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
	nop
_02227A20: .4byte 0x02251D10
	thumb_func_end ov18_022279EC

	thumb_func_start ov18_02227A24
ov18_02227A24: @ 0x02227A24
	push {r4, lr}
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _02227A78 @ =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #3
	bne _02227A56
	blx FUN_0221303C
	cmp r0, #3
	beq _02227A46
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
_02227A46:
	ldr r0, _02227A78 @ =0x02251D10
	movs r1, #2
	str r1, [r0, #0x2c]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_02227A56:
	bl ov18_02227858
	cmp r0, #1
	bne _02227A6E
	ldr r0, _02227A78 @ =0x02251D10
	movs r1, #2
	str r1, [r0, #0x2c]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r4, pc}
_02227A6E:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02227A78: .4byte 0x02251D10
	thumb_func_end ov18_02227A24

	thumb_func_start ov18_02227A7C
ov18_02227A7C: @ 0x02227A7C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	blx FUN_020C3D98
	ldr r1, _02227AFC @ =0x02251D10
	adds r4, r0, #0
	str r6, [r1, #0x58]
	cmp r5, #0
	beq _02227A9E
	ldr r1, [r1, #0x28]
	adds r0, r5, #0
	movs r2, #0x60
	blx FUN_020C4DB0
	b _02227AA8
_02227A9E:
	ldr r0, [r1, #0x28]
	movs r1, #0
	movs r2, #0x60
	blx FUN_020C4CF4
_02227AA8:
	ldr r1, _02227AFC @ =0x02251D10
	adds r0, r7, #0
	ldr r1, [r1, #0x4c]
	movs r2, #0xc0
	blx FUN_020C4B68
	bl ov18_02227858
	cmp r0, #1
	bne _02227ACC
	ldr r0, _02227AFC @ =0x02251D10
	movs r1, #8
	str r1, [r0, #0x2c]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227ACC:
	ldr r2, _02227AFC @ =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _02227AF2
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx FUN_02213368
	cmp r0, #3
	bne _02227AF2
	ldr r0, _02227AFC @ =0x02251D10
	movs r1, #8
	str r1, [r0, #0x2c]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227AF2:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02227AFC: .4byte 0x02251D10
	thumb_func_end ov18_02227A7C

	thumb_func_start ov18_02227B00
ov18_02227B00: @ 0x02227B00
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	str r2, [sp]
	blx FUN_020C3D98
	adds r4, r0, #0
	adds r0, r5, #0
	ldr r2, _02227BAC @ =0x02251D10
	adds r0, #0x63
	movs r1, #3
	bics r0, r1
	adds r6, r0, #0
	str r5, [r2, #0x28]
	adds r6, #0x2f
	movs r1, #0x1f
	ldr r3, _02227BB0 @ =0x0000231F
	str r0, [r2, #8]
	bics r6, r1
	str r6, [r2, #0x3c]
	adds r6, r6, r3
	bics r6, r1
	str r6, [r2, #0x4c]
	adds r6, #0xdf
	bics r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	subs r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	movs r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	movs r1, #3
	str r1, [r0]
	ldr r0, _02227BB4 @ =0x02251D90
	str r7, [r0]
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _02227B74
	subs r3, #0x1f
	ldr r0, [r2, #0x3c]
	adds r1, r3, #0
	blx FUN_02212CC8
	cmp r0, #0
	beq _02227B6E
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227B6E:
	ldr r0, _02227BAC @ =0x02251D10
	movs r1, #1
	str r1, [r0, #0x2c]
_02227B74:
	ldr r0, _02227BAC @ =0x02251D10
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	bne _02227BA2
	ldr r0, [r0, #8]
	ldr r1, _02227BB8 @ =ov18_0222754C
	blx FUN_02212E38
	cmp r0, #3
	beq _02227B92
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227B92:
	ldr r0, _02227BAC @ =0x02251D10
	movs r1, #4
	str r1, [r0, #0x2c]
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227BA2:
	adds r0, r4, #0
	blx FUN_020C3DAC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02227BAC: .4byte 0x02251D10
_02227BB0: .4byte 0x0000231F
_02227BB4: .4byte 0x02251D90
_02227BB8: .4byte ov18_0222754C
	thumb_func_end ov18_02227B00

	thumb_func_start ov18_02227BBC
ov18_02227BBC: @ 0x02227BBC
	ldr r0, _02227BC4 @ =0x02251D10
	ldr r0, [r0, #0x2c]
	bx lr
	nop
_02227BC4: .4byte 0x02251D10
	thumb_func_end ov18_02227BBC

	thumb_func_start ov18_02227BC8
ov18_02227BC8: @ 0x02227BC8
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #0
	ble _02227BEA
	ldr r0, _02227BF0 @ =0x02251DA4
	blx FUN_020C29D8
	ldr r1, _02227BF4 @ =0x02251D10
	adds r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	adds r4, r0, #0
	ldr r0, _02227BF0 @ =0x02251DA4
	blx FUN_020C2A5C
	adds r0, r4, #0
	pop {r4, pc}
_02227BEA:
	movs r0, #0
	pop {r4, pc}
	nop
_02227BF0: .4byte 0x02251DA4
_02227BF4: .4byte 0x02251D10
	thumb_func_end ov18_02227BC8

	thumb_func_start ov18_02227BF8
ov18_02227BF8: @ 0x02227BF8
	push {r4, lr}
	adds r4, r1, #0
	beq _02227C16
	cmp r2, #0
	ble _02227C16
	ldr r0, _02227C18 @ =0x02251DA4
	blx FUN_020C29D8
	ldr r1, _02227C1C @ =0x02251D10
	adds r0, r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02227C18 @ =0x02251DA4
	blx FUN_020C2A5C
_02227C16:
	pop {r4, pc}
	.align 2, 0
_02227C18: .4byte 0x02251DA4
_02227C1C: .4byte 0x02251D10
	thumb_func_end ov18_02227BF8

	thumb_func_start ov18_02227C20
ov18_02227C20: @ 0x02227C20
	push {r3, lr}
	blx FUN_020C3D98
	ldr r1, _02227C40 @ =0x02251D10
	movs r2, #0
	str r2, [r1, #0x68]
	str r2, [r1, #0x6c]
	ldr r3, _02227C44 @ =0x02251D94
	adds r1, r2, #0
_02227C32:
	adds r2, r2, #1
	stm r3!, {r1}
	cmp r2, #4
	blt _02227C32
	blx FUN_020C3DAC
	pop {r3, pc}
	.align 2, 0
_02227C40: .4byte 0x02251D10
_02227C44: .4byte 0x02251D94
	thumb_func_end ov18_02227C20

	thumb_func_start ov18_02227C48
ov18_02227C48: @ 0x02227C48
	push {r3, r4, r5, lr}
	blx FUN_020C3D98
	ldr r1, _02227C78 @ =0x02251D10
	ldr r5, [r1, #0x6c]
	ldr r2, [r1, #0x68]
	cmp r2, r5
	bne _02227C5C
	movs r4, #0
	b _02227C6E
_02227C5C:
	ldr r2, _02227C7C @ =0x02251D94
	lsls r3, r5, #2
	ldr r4, [r2, r3]
	adds r2, r5, #1
	str r2, [r1, #0x6c]
	cmp r2, #4
	blt _02227C6E
	movs r2, #0
	str r2, [r1, #0x6c]
_02227C6E:
	blx FUN_020C3DAC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02227C78: .4byte 0x02251D10
_02227C7C: .4byte 0x02251D94
	thumb_func_end ov18_02227C48

	thumb_func_start ov18_02227C80
ov18_02227C80: @ 0x02227C80
	push {r3, r4}
	ldr r1, _02227CA8 @ =0x02251D10
	ldr r3, [r1, #0x68]
	ldr r2, [r1, #0x6c]
	adds r4, r3, #1
	cmp r4, r2
	beq _02227CA4
	adds r2, r2, #3
	cmp r3, r2
	beq _02227CA4
	ldr r2, _02227CAC @ =0x02251D94
	lsls r3, r3, #2
	str r0, [r2, r3]
	str r4, [r1, #0x68]
	cmp r4, #4
	blt _02227CA4
	movs r0, #0
	str r0, [r1, #0x68]
_02227CA4:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02227CA8: .4byte 0x02251D10
_02227CAC: .4byte 0x02251D94
	thumb_func_end ov18_02227C80

	thumb_func_start ov18_02227CB0
ov18_02227CB0: @ 0x02227CB0
	ldr r3, _02227CB8 @ =ov18_02227C80
	movs r1, #0
	bx r3
	nop
_02227CB8: .4byte ov18_02227C80
	thumb_func_end ov18_02227CB0

	thumb_func_start ov18_02227CBC
ov18_02227CBC: @ 0x02227CBC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _02227D50 @ =0x02251D10
	movs r4, #1
	str r6, [r0, #0x70]
	bl ov18_02227C20
	movs r0, #0xd0
	adds r7, r6, #0
	muls r7, r0, r7
	ldr r0, _02227D54 @ =0x000024D0
	adds r1, r7, r0
	movs r0, #0xc0
	muls r0, r6, r0
	adds r0, r1, r0
	ldr r1, _02227D50 @ =0x02251D10
	ldr r1, [r1, #4]
	blx r1
	ldr r6, _02227D50 @ =0x02251D10
	cmp r0, #0
	str r0, [r6, #0x54]
	bne _02227CEC
	subs r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02227CEC:
	movs r1, #0x1f
	adds r2, r0, r1
	adds r0, r1, #0
	subs r0, #0x3f
	adds r3, r2, #0
	ands r3, r0
	ldr r0, _02227D58 @ =0x00002490
	str r3, [r6, #0x40]
	adds r2, r7, r0
	adds r0, r3, r2
	adds r0, r0, r1
	subs r1, #0x3f
	ands r0, r1
	str r0, [r6, #0x5c]
	ldr r0, _02227D5C @ =ov18_02227C80
	adds r1, r3, #0
	bl ov18_02227B00
	cmp r0, #0
	bne _02227D18
	subs r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02227D18:
	movs r6, #0
	adds r7, r4, #0
_02227D1C:
	movs r0, #0xa
	blx FUN_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227D48
_02227D2A:
	cmp r0, #4
	beq _02227D40
	cmp r0, #5
	beq _02227D40
	cmp r0, #6
	bne _02227D3C
	adds r4, r6, #0
	adds r5, r7, #0
	b _02227D40
_02227D3C:
	movs r4, #0
	subs r5, r4, #2
_02227D40:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227D2A
_02227D48:
	cmp r4, #0
	bne _02227D1C
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02227D50: .4byte 0x02251D10
_02227D54: .4byte 0x000024D0
_02227D58: .4byte 0x00002490
_02227D5C: .4byte ov18_02227C80
	thumb_func_end ov18_02227CBC

	thumb_func_start ov18_02227D60
ov18_02227D60: @ 0x02227D60
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #1
	bl ov18_02227A24
	cmp r0, #0
	beq _02227D9E
	movs r6, #0
	adds r4, r6, #0
	movs r7, #0xa
_02227D72:
	adds r0, r7, #0
	blx FUN_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227D9A
_02227D80:
	cmp r0, #4
	beq _02227D92
	cmp r0, #5
	beq _02227D92
	cmp r0, #0x14
	bne _02227D90
	adds r5, r4, #0
	b _02227D92
_02227D90:
	adds r5, r6, #0
_02227D92:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227D80
_02227D9A:
	cmp r5, #0
	bne _02227D72
_02227D9E:
	ldr r1, _02227DB4 @ =0x02251D10
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02227DB0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02227DB4 @ =0x02251D10
	movs r1, #0
	str r1, [r0, #0x54]
_02227DB0:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02227DB4: .4byte 0x02251D10
	thumb_func_end ov18_02227D60

	thumb_func_start ov18_02227DB8
ov18_02227DB8: @ 0x02227DB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, _02227EC8 @ =0x02251D10
	movs r4, #1
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x18]
	movs r2, #0xc0
	adds r1, r0, #0
	muls r1, r2, r1
	subs r5, r4, #3
	adds r6, r3, r1
	bne _02227DD6
	add sp, #0x30
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227DD6:
	adds r0, r6, #0
	movs r1, #0
	lsls r2, r2, #0xa
	bl ov18_02227A7C
	cmp r0, #0
	bne _02227DEA
	add sp, #0x30
	subs r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02227DEA:
	add r0, sp, #4
	blx FUN_020C3A0C
	movs r0, #0x12
	str r0, [sp]
	ldr r1, _02227ECC @ =0x003FEC42
	ldr r3, _02227ED0 @ =ov18_02227CB0
	add r0, sp, #4
	movs r2, #0
	blx FUN_020C3B48
	movs r7, #0
_02227E02:
	bl ov18_0222AA98
	ldr r1, _02227ED4 @ =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02227E14
	movs r5, #2
	mvns r5, r5
	b _02227E94
_02227E14:
	ldr r0, _02227EC8 @ =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02227E22
	movs r5, #7
	mvns r5, r5
	b _02227E94
_02227E22:
	movs r0, #0xa
	blx FUN_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227E90
_02227E30:
	cmp r0, #0xc
	bgt _02227E46
	bge _02227E5A
	cmp r0, #5
	bgt _02227E86
	cmp r0, #4
	blt _02227E86
	beq _02227E88
	cmp r0, #5
	beq _02227E88
	b _02227E86
_02227E46:
	cmp r0, #0x13
	bgt _02227E86
	cmp r0, #0xd
	blt _02227E86
	beq _02227E60
	cmp r0, #0x12
	beq _02227E88
	cmp r0, #0x13
	beq _02227E88
	b _02227E86
_02227E5A:
	adds r4, r7, #0
	movs r5, #1
	b _02227E88
_02227E60:
	ldr r0, _02227EC8 @ =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02227E70
	movs r4, #0
	adds r5, r4, #0
	subs r5, #8
	b _02227E88
_02227E70:
	movs r2, #3
	adds r0, r6, #0
	movs r1, #0
	lsls r2, r2, #0x10
	bl ov18_02227A7C
	cmp r0, #0
	bne _02227E88
	add sp, #0x30
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227E86:
	movs r4, #0
_02227E88:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227E30
_02227E90:
	cmp r4, #0
	bne _02227E02
_02227E94:
	add r0, sp, #4
	blx FUN_020C3BB4
_02227E9A:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227E9A
	cmp r5, #0
	ble _02227EC2
	ldr r0, _02227EC8 @ =0x02251D10
	movs r1, #1
	str r1, [r0, #0x20]
	ldr r0, _02227ED8 @ =0x0224984C
	blx FUN_02208874
	cmp r0, #0
	bge _02227EBC
	movs r5, #1
	mvns r5, r5
	b _02227EC2
_02227EBC:
	ldr r0, _02227EC8 @ =0x02251D10
	movs r1, #1
	str r1, [r0, #0x24]
_02227EC2:
	adds r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02227EC8: .4byte 0x02251D10
_02227ECC: .4byte 0x003FEC42
_02227ED0: .4byte ov18_02227CB0
_02227ED4: .4byte 0x02249838
_02227ED8: .4byte 0x0224984C
	thumb_func_end ov18_02227DB8

	thumb_func_start ov18_02227EDC
ov18_02227EDC: @ 0x02227EDC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02227F3C @ =0x02251D10
	movs r5, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02227F28
	bl ov18_022279EC
	cmp r0, #0
	beq _02227F22
	movs r6, #0
	adds r4, r6, #0
	movs r7, #0xa
_02227EF6:
	adds r0, r7, #0
	blx FUN_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227F1E
_02227F04:
	cmp r0, #4
	beq _02227F16
	cmp r0, #5
	beq _02227F16
	cmp r0, #0xe
	bne _02227F14
	adds r5, r4, #0
	b _02227F16
_02227F14:
	adds r5, r6, #0
_02227F16:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227F04
_02227F1E:
	cmp r5, #0
	bne _02227EF6
_02227F22:
	ldr r0, _02227F3C @ =0x02251D10
	movs r1, #0
	str r1, [r0, #0x20]
_02227F28:
	ldr r0, _02227F3C @ =0x02251D10
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _02227F38
	movs r1, #0
	str r1, [r0, #0x24]
	blx FUN_022089E8
_02227F38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227F3C: .4byte 0x02251D10
	thumb_func_end ov18_02227EDC

	thumb_func_start ov18_02227F40
ov18_02227F40: @ 0x02227F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r1, [sp, #4]
	adds r6, r0, #4
	adds r0, r1, #0
	adds r4, r0, #4
	ldr r0, [sp, #0x20]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bls _02228014
_02227F64:
	add r2, sp, #0x48
	adds r2, #2
	movs r1, #0x22
	movs r0, #0
_02227F6C:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02227F6C
	add r0, sp, #0x48
	adds r0, #2
	adds r1, r6, #4
	movs r2, #0x20
	blx FUN_020D50B8
	add r0, sp, #0x48
	ldr r1, [r6]
	movs r7, #0
	adds r0, #2
	strb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _02227FF8
	adds r0, r6, #0
	str r0, [sp, #0x24]
	adds r0, #0x28
	ldr r5, [r6]
	str r0, [sp, #0x24]
_02227F9E:
	cmp r5, #0
	beq _02227FF8
	cmp r5, #0x20
	bhi _02227FF8
	cmp r5, #1
	bne _02227FB4
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02227FF8
	cmp r0, #0x20
	beq _02227FF8
_02227FB4:
	add r0, sp, #0x48
	adds r0, #2
	blx FUN_020D8B60
	adds r2, r0, #0
	add r0, sp, #0x48
	adds r0, #2
	adds r1, r4, #4
	blx FUN_020D5190
	cmp r0, #0
	bne _02227FEE
	adds r1, r4, #0
	ldr r0, [sp, #0x24]
	adds r1, #0x28
	movs r2, #6
	blx FUN_020D5190
	cmp r0, #0
	bne _02227FEE
	ldrh r1, [r6, #0x2e]
	ldrh r0, [r4, #0x2e]
	cmp r1, r0
	beq _02227FEE
	cmp r1, #0
	bne _02227FEE
	movs r0, #1
	str r0, [sp, #0x20]
	b _02227FF8
_02227FEE:
	ldr r0, [sp, #0x10]
	adds r7, r7, #1
	adds r4, #0x30
	cmp r7, r0
	blo _02227F9E
_02227FF8:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02228014
	ldr r0, [sp, #4]
	adds r6, #0x30
	adds r4, r0, #4
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02227F64
_02228014:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _022280F0
	add r2, sp, #0x28
	movs r1, #0x22
	movs r0, #0
_02228020:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02228020
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r6, [sp, #0x18]
	adds r4, r0, #4
	ldr r0, [sp, #4]
	adds r5, r0, #4
	ldr r0, [r0]
	cmp r0, #0
	bls _0222807C
	add r7, sp, #0x28
_02228040:
	adds r0, r7, #0
	adds r1, r5, #4
	movs r2, #0x20
	blx FUN_020D50B8
	ldr r1, [r5]
	movs r0, #0
	strb r0, [r7, r1]
	ldr r0, _02228108 @ =0x022498A4
	blx FUN_020D8B60
	adds r2, r0, #0
	ldr r1, _02228108 @ =0x022498A4
	adds r0, r7, #0
	blx FUN_020D5190
	cmp r0, #0
	bne _02228070
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _02228070
	movs r0, #1
	str r0, [sp, #0x14]
	b _0222807C
_02228070:
	ldr r0, [sp, #4]
	adds r6, r6, #1
	ldr r0, [r0]
	adds r5, #0x30
	cmp r6, r0
	blo _02228040
_0222807C:
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bls _022280E0
	ldr r7, _02228108 @ =0x022498A4
	add r5, sp, #0x28
_0222808C:
	adds r0, r5, #0
	adds r1, r4, #4
	movs r2, #0x20
	blx FUN_020D50B8
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r5, r1]
	adds r0, r5, #0
	blx FUN_020D8B60
	adds r6, r0, #0
	adds r0, r7, #0
	blx FUN_020D8B60
	cmp r6, r0
	bne _022280CE
	adds r0, r7, #0
	blx FUN_020D8B60
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	blx FUN_020D5190
	cmp r0, #0
	bne _022280CE
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _022280CE
	movs r0, #1
	str r0, [sp, #0x18]
	b _022280E0
_022280CE:
	ldr r0, [sp, #0xc]
	adds r4, #0x30
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _0222808C
_022280E0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022280F0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _022280F0
	movs r0, #1
	str r0, [sp, #0x20]
_022280F0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02228100
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r1, [r0]
	movs r0, #1
	str r0, [sp, #0x1c]
_02228100:
	ldr r0, [sp, #0x1c]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_02228108: .4byte 0x022498A4
	thumb_func_end ov18_02227F40

	thumb_func_start ov18_0222810C
ov18_0222810C: @ 0x0222810C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _02228384 @ =0x02251D10
	movs r4, #0
	ldr r1, [r0, #0x70]
	movs r0, #0x30
	muls r0, r1, r0
	str r0, [sp, #0x10]
	adds r0, #0x34
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	movs r0, #1
	mvns r4, r4
	bl ov18_0222AAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02228144
	ldr r1, [sp, #0x10]
	movs r0, #1
	bl ov18_0222AAB4
	str r0, [sp, #8]
	cmp r0, #0
	bne _02228146
_02228144:
	b _0222836A
_02228146:
	movs r0, #0
	str r0, [sp, #0x1c]
	b _02228332
_0222814C:
	bl ov18_0222AA98
	ldr r1, _02228388 @ =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02228236
	movs r0, #0
	ldr r3, _0222838C @ =0x0030BFFE
	adds r1, r0, #0
	adds r2, r0, #0
	bl ov18_02227904
	cmp r0, #0
	bne _0222816E
	movs r4, #1
	mvns r4, r4
	b _0222836A
_0222816E:
	add r0, sp, #0x24
	blx FUN_020C3A0C
	movs r0, #0x13
	str r0, [sp]
	ldr r1, _02228390 @ =0x000FFB10
	ldr r3, _02228394 @ =ov18_02227CB0
	add r0, sp, #0x24
	movs r2, #0
	blx FUN_020C3B48
	ldr r7, _02228384 @ =0x02251D10
	movs r5, #1
	movs r4, #0
	add r6, sp, #0x24
_0222818C:
	movs r0, #0xa
	blx FUN_020C24A4
	bl ov18_0222AA98
	ldr r1, _02228388 @ =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02228220
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02228220
	bl ov18_02227C48
	cmp r0, #0
	beq _0222821C
_022281AC:
	cmp r0, #0x13
	bhi _02228212
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022281BC: @ jump table
	.2byte _02228212 - _022281BC - 2 @ case 0
	.2byte _02228212 - _022281BC - 2 @ case 1
	.2byte _02228212 - _022281BC - 2 @ case 2
	.2byte _02228212 - _022281BC - 2 @ case 3
	.2byte _02228214 - _022281BC - 2 @ case 4
	.2byte _022281E8 - _022281BC - 2 @ case 5
	.2byte _02228212 - _022281BC - 2 @ case 6
	.2byte _02228212 - _022281BC - 2 @ case 7
	.2byte _02228214 - _022281BC - 2 @ case 8
	.2byte _02228212 - _022281BC - 2 @ case 9
	.2byte _0222820E - _022281BC - 2 @ case 10
	.2byte _02228212 - _022281BC - 2 @ case 11
	.2byte _02228212 - _022281BC - 2 @ case 12
	.2byte _02228212 - _022281BC - 2 @ case 13
	.2byte _02228212 - _022281BC - 2 @ case 14
	.2byte _02228212 - _022281BC - 2 @ case 15
	.2byte _02228212 - _022281BC - 2 @ case 16
	.2byte _02228212 - _022281BC - 2 @ case 17
	.2byte _02228214 - _022281BC - 2 @ case 18
	.2byte _022281E4 - _022281BC - 2 @ case 19
_022281E4:
	movs r5, #0
	b _02228214
_022281E8:
	ldr r0, [r7, #0x5c]
	ldr r1, [r7, #0x70]
	bl ov18_022278C0
	cmp r0, r4
	ble _02228214
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020C3BB4
	movs r0, #0x13
	str r0, [sp]
	ldr r1, _02228390 @ =0x000FFB10
	ldr r3, _02228394 @ =ov18_02227CB0
	adds r0, r6, #0
	movs r2, #0
	blx FUN_020C3B48
	b _02228214
_0222820E:
	movs r5, #0
	b _02228214
_02228212:
	movs r5, #0
_02228214:
	bl ov18_02227C48
	cmp r0, #0
	bne _022281AC
_0222821C:
	cmp r5, #0
	bne _0222818C
_02228220:
	add r0, sp, #0x24
	blx FUN_020C3BB4
_02228226:
	bl ov18_02227C48
	cmp r0, #0
	bne _02228226
	ldr r1, _02228384 @ =0x02251D10
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _02228238
_02228236:
	b _02228342
_02228238:
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x70]
	cmp r4, r0
	blt _02228248
	ldr r0, [sp, #0x14]
	subs r4, r0, #6
	b _0222836A
_02228248:
	ldr r0, [sp, #0x14]
	ldr r5, [r1, #0x5c]
	str r0, [sp, #0x18]
	cmp r4, #0
	ble _022282BE
	ble _022282BE
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0xc]
	str r0, [sp, #4]
	adds r0, #8
	adds r6, r7, #0
	str r0, [sp, #4]
	adds r6, #0x2c
_02228262:
	adds r1, r5, #0
	ldr r0, [sp, #4]
	adds r1, #0xc
	movs r2, #0x20
	blx FUN_020D50B8
	ldrh r0, [r5, #0xa]
	str r0, [r7, #4]
	ldrh r0, [r5, #0xa]
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1, #8]
	ldrh r1, [r5, #0x2c]
	movs r0, #0x10
	tst r0, r1
	beq _02228286
	movs r0, #1
	b _02228288
_02228286:
	movs r0, #0
_02228288:
	strh r0, [r7, #0x32]
	ldrb r0, [r5, #4]
	adds r7, #0x30
	strb r0, [r6]
	ldrb r0, [r5, #5]
	strb r0, [r6, #1]
	ldrb r0, [r5, #6]
	strb r0, [r6, #2]
	ldrb r0, [r5, #7]
	strb r0, [r6, #3]
	ldrb r0, [r5, #8]
	strb r0, [r6, #4]
	ldrb r0, [r5, #9]
	adds r5, #0xc0
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	adds r6, #0x30
	adds r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _02228262
_022282BE:
	ldr r0, [sp, #0xc]
	str r4, [r0]
	ldr r0, _02228384 @ =0x02251D10
	ldr r0, [r0, #0x38]
	cmp r0, #1
	beq _02228318
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, sp, #0x20
	bl ov18_02227F40
	cmp r0, #0
	beq _02228318
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	adds r1, r0, #4
	movs r0, #0x30
	muls r0, r2, r0
	adds r4, r1, r0
	ldr r0, _02228384 @ =0x02251D10
	adds r1, r4, #4
	str r2, [r0, #0x18]
	ldr r0, _02228398 @ =0x02252220
	blx FUN_020D8B7C
	adds r0, r4, #0
	adds r4, #0x28
	ldrb r2, [r4]
	ldr r1, _0222839C @ =0x022521C0
	adds r0, #0x28
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r0, [r0, #5]
	strb r0, [r1, #5]
	add r0, sp, #0x50
	bl ov18_0222AB1C
	b _02228342
_02228318:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	blx FUN_020D50B8
	ldr r0, _02228384 @ =0x02251D10
	movs r1, #2
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
_02228332:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02228342
	ldr r0, _02228384 @ =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02228342
	b _0222814C
_02228342:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02228354
	bl ov18_0222AA98
	ldr r1, _02228388 @ =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bls _0222835A
_02228354:
	movs r4, #2
	mvns r4, r4
	b _0222836A
_0222835A:
	ldr r0, _02228384 @ =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02228368
	movs r4, #7
	mvns r4, r4
	b _0222836A
_02228368:
	movs r4, #1
_0222836A:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02228374
	bl ov18_0222AAD8
_02228374:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222837E
	bl ov18_0222AAD8
_0222837E:
	adds r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02228384: .4byte 0x02251D10
_02228388: .4byte 0x02249838
_0222838C: .4byte 0x0030BFFE
_02228390: .4byte 0x000FFB10
_02228394: .4byte ov18_02227CB0
_02228398: .4byte 0x02252220
_0222839C: .4byte 0x022521C0
	thumb_func_end ov18_0222810C

	thumb_func_start ov18_022283A0
ov18_022283A0: @ 0x022283A0
	push {r3, lr}
	ldr r2, [sp, #8]
	str r1, [sp]
	adds r1, r3, #0
	movs r3, #0
	blx FUN_022084B0
	cmp r0, #0
	bge _022283B6
	movs r0, #3
	mvns r0, r0
_022283B6:
	pop {r3, pc}
	thumb_func_end ov18_022283A0

	thumb_func_start ov18_022283B8
ov18_022283B8: @ 0x022283B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #8
	add r0, sp, #4
	strb r1, [r0, #4]
	movs r1, #2
	strb r1, [r0, #5]
	subs r1, r1, #3
	str r1, [sp, #0xc]
	ldr r1, _022283F0 @ =0x000001E6
	adds r4, r2, #0
	strh r1, [r0, #6]
	blx FUN_02208088
	add r1, sp, #4
	blx FUN_02208AF8
	adds r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	adds r3, r6, #0
	str r4, [sp]
	bl ov18_022283A0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_022283F0: .4byte 0x000001E6
	thumb_func_end ov18_022283B8

	thumb_func_start ov18_022283F4
ov18_022283F4: @ 0x022283F4
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _022283FC @ =ov18_022283B8
	bx r3
	.align 2, 0
_022283FC: .4byte ov18_022283B8
	thumb_func_end ov18_022283F4

	thumb_func_start ov18_02228400
ov18_02228400: @ 0x02228400
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	movs r3, #0
	asrs r4, r5, #8
	lsls r4, r4, #0x18
	lsrs r6, r4, #0x18
	lsls r4, r5, #8
	movs r5, #0xff
	lsls r5, r5, #8
	ands r4, r5
	orrs r4, r6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [r1]
	ldrh r6, [r0, #2]
	asrs r1, r6, #8
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r1, r6, #8
	ands r1, r5
	orrs r1, r4
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r0, #6
	str r4, [r2]
	adds r2, r1, r4
	adds r4, r0, #0
	cmp r0, r2
	bhs _02228444
_0222843A:
	ldrb r1, [r4]
	adds r4, r4, #1
	adds r3, r3, r1
	cmp r4, r2
	blo _0222843A
_02228444:
	ldrh r5, [r2]
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	asrs r2, r5, #8
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r2, #0xff
	lsls r3, r5, #8
	lsls r2, r2, #8
	ands r2, r3
	orrs r2, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r1, r2
	beq _02228468
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02228468:
	adds r0, r0, #6
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov18_02228400

	thumb_func_start ov18_02228470
ov18_02228470: @ 0x02228470
	push {r3, r4, r5, r6}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, r1
	blo _02228480
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02228480:
	ldrh r5, [r0]
	asrs r1, r5, #8
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r1, r5, #8
	movs r5, #0xff
	lsls r5, r5, #8
	ands r1, r5
	orrs r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [r2]
	ldrh r6, [r0, #2]
	adds r0, r0, #4
	asrs r1, r6, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r6, #8
	ands r1, r5
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	str r2, [r3]
	adds r2, #0xb
	movs r1, #7
	bics r2, r1
	subs r1, r2, #4
	adds r1, r0, r1
	str r1, [r4]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov18_02228470

	thumb_func_start ov18_022284C0
ov18_022284C0: @ 0x022284C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r5, #8
	str r5, [sp]
	adds r3, r2, #0
	ldrh r2, [r0]
	adds r4, r1, #0
	add r0, sp, #0
	asrs r1, r2, #8
	lsls r6, r2, #8
	movs r2, #0xff
	lsls r1, r1, #0x18
	lsls r2, r2, #8
	lsrs r1, r1, #0x18
	ands r2, r6
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r1, r5, r1
	adds r2, r4, #0
	bl ov18_02228470
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov18_022284C0

	thumb_func_start ov18_022284F4
ov18_022284F4: @ 0x022284F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r3, #0
	adds r6, r0, #0
	adds r0, r7, #0
	subs r0, #8
	str r1, [sp, #4]
	lsls r0, r0, #0x10
	adds r1, r2, #0
	movs r5, #0
	strb r5, [r1]
	lsrs r0, r0, #0x10
	strb r5, [r1, #1]
	asrs r2, r0, #8
	strb r5, [r1, #2]
	lsls r2, r2, #0x18
	strb r5, [r1, #3]
	lsrs r3, r2, #0x18
	lsls r2, r0, #8
	movs r0, #0xff
	strb r5, [r1, #4]
	lsls r0, r0, #8
	strb r5, [r1, #5]
	ands r0, r2
	strb r5, [r1, #6]
	orrs r0, r3
	strb r5, [r1, #7]
	ldr r3, [sp, #0x20]
	adds r4, r6, #0
	strh r0, [r1]
	cmp r3, #0
	beq _02228544
	movs r0, #0x10
	str r0, [sp]
	adds r0, r6, #6
	adds r2, r7, #0
	bl ov18_02229134
	adds r7, #8
	b _0222854C
_02228544:
	adds r0, r6, #6
	adds r2, r7, #0
	blx FUN_020D50B8
_0222854C:
	movs r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r1, r0
	orrs r1, r2
	strh r1, [r6]
	lsls r1, r7, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r2, #8
	lsls r1, r1, #0x18
	lsls r2, r2, #8
	lsrs r1, r1, #0x18
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
	adds r0, r4, #6
	adds r4, r0, r7
	adds r1, r6, #0
	cmp r6, r4
	bhs _02228598
_0222858E:
	ldrb r0, [r1]
	adds r1, r1, #1
	adds r5, r5, r0
	cmp r1, r4
	blo _0222858E
_02228598:
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	adds r0, r4, #2
	subs r0, r0, r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_022284F4

	thumb_func_start ov18_022285B8
ov18_022285B8: @ 0x022285B8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r0, r1, #0x10
	adds r4, r3, #0
	movs r3, #0
	lsrs r0, r0, #0x10
	adds r7, r2, #0
	strb r3, [r5]
	asrs r1, r0, #8
	lsls r2, r0, #8
	movs r0, #0xff
	strb r3, [r5, #1]
	lsls r1, r1, #0x18
	lsls r0, r0, #8
	strb r3, [r5, #2]
	lsrs r1, r1, #0x18
	ands r2, r0
	orrs r1, r2
	strb r3, [r5, #3]
	adds r2, r4, #0
	strh r1, [r5]
	adds r2, #0xb
	movs r1, #7
	bics r2, r1
	lsls r1, r4, #0x10
	subs r6, r2, #4
	lsrs r2, r1, #0x10
	asrs r1, r2, #8
	lsls r1, r1, #0x18
	lsls r2, r2, #8
	ands r0, r2
	lsrs r1, r1, #0x18
	orrs r0, r1
	strh r0, [r5, #2]
	adds r5, r5, #4
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r6, #0
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	blx FUN_020D50B8
	adds r0, r5, r6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_022285B8

	thumb_func_start ov18_02228618
ov18_02228618: @ 0x02228618
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	adds r0, r4, #0
	adds r0, #8
	bl ov18_022285B8
	subs r0, r0, r4
	adds r1, r0, #0
	subs r1, #8
	strh r1, [r4]
	pop {r4, pc}
	thumb_func_end ov18_02228618

	thumb_func_start ov18_02228640
ov18_02228640: @ 0x02228640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov18_02228400
	movs r6, #0
	adds r5, r0, #0
	adds r7, r6, #0
	str r5, [sp, #8]
	str r6, [sp, #4]
	cmp r5, #0
	bne _02228662
	add sp, #0x1c
	adds r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02228662:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _0222866E
	add sp, #0x1c
	adds r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0222866E:
	ldr r4, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #8]
	add r0, sp, #8
	adds r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	cmp r0, #0
	beq _022286EE
_02228686:
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _02228696
	cmp r1, #2
	beq _022286AE
	cmp r1, #5
	beq _022286C8
	b _022286DE
_02228696:
	ldrh r1, [r0]
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _022286DE
_022286AE:
	ldrh r1, [r0]
	asrs r0, r1, #8
	lsls r2, r1, #8
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	ands r1, r2
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	b _022286DE
_022286C8:
	ldrh r1, [r0]
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_022286DE:
	add r0, sp, #8
	adds r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	cmp r0, #0
	bne _02228686
_022286EE:
	cmp r6, #1
	bne _022286F8
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _022286FE
_022286F8:
	add sp, #0x1c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_022286FE:
	cmp r7, #1
	blt _02228708
	movs r1, #1
	ldr r0, [sp]
	b _0222870C
_02228708:
	ldr r0, [sp]
	movs r1, #0
_0222870C:
	str r1, [r0]
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov18_02228640

	thumb_func_start ov18_02228714
ov18_02228714: @ 0x02228714
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r2, #0
	add r1, sp, #8
	add r2, sp, #4
	adds r4, r3, #0
	bl ov18_02228400
	adds r1, r0, #0
	bne _02228730
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_02228730:
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _0222873C
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0222873C:
	cmp r4, #0
	beq _02228756
	movs r0, #0x10
	str r0, [sp]
	ldr r2, [sp, #4]
	adds r0, r6, #0
	adds r3, r4, #0
	bl ov18_022292EC
	ldr r0, [sp, #4]
	subs r0, #8
	str r0, [sp, #4]
	b _0222875E
_02228756:
	ldr r2, [sp, #4]
	adds r0, r6, #0
	blx FUN_020D50B8
_0222875E:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov18_02228714

	thumb_func_start ov18_02228764
ov18_02228764: @ 0x02228764
	push {r4, lr}
	sub sp, #0x10
	movs r1, #1
	adds r4, r0, #0
	add r2, sp, #4
	lsls r1, r1, #8
	add r0, sp, #4
	strh r1, [r0]
	ldr r3, _022287EC @ =0x0224645C
	adds r2, #2
	movs r1, #7
_0222877A:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0222877A
	ldr r0, _022287F0 @ =0x02249838
	movs r1, #1
	ldr r0, [r0]
	add r2, sp, #4
	movs r3, #2
	bl ov18_022285B8
	movs r1, #2
	add r2, sp, #4
	adds r3, r1, #0
	bl ov18_022285B8
	ldr r1, _022287F4 @ =0x02251D10
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022287B0
	movs r1, #5
	add r2, sp, #4
	movs r3, #2
	bl ov18_022285B8
_022287B0:
	add r2, sp, #4
	movs r1, #3
	adds r2, #2
	movs r3, #7
	bl ov18_022285B8
	ldr r1, _022287F4 @ =0x02251D10
	adds r3, r0, #0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022287D2
	ldr r2, _022287F8 @ =0x022521B8
	movs r1, #4
	movs r3, #6
	bl ov18_022285B8
	adds r3, r0, #0
_022287D2:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	ldr r4, _022287F0 @ =0x02249838
	ldr r2, _022287FC @ =0x02252244
	ldr r4, [r4]
	movs r1, #2
	subs r3, r3, r4
	adds r3, #8
	bl ov18_022284F4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022287EC: .4byte 0x0224645C
_022287F0: .4byte 0x02249838
_022287F4: .4byte 0x02251D10
_022287F8: .4byte 0x022521B8
_022287FC: .4byte 0x02252244
	thumb_func_end ov18_02228764

	thumb_func_start ov18_02228800
ov18_02228800: @ 0x02228800
	push {r3, lr}
	blx FUN_020C3FA0
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov18_02228800

	thumb_func_start ov18_0222880C
ov18_0222880C: @ 0x0222880C
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r1, _022288F8 @ =0x022498F8
	adds r4, r0, #0
	ldrb r0, [r1]
	adds r2, r4, #0
	adds r2, #0xc
	strb r0, [r4, #0xc]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #4
	adds r1, #2
	strb r0, [r2, #3]
	ldr r0, _022288FC @ =0x022521C0
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	strb r2, [r1, #4]
	strb r0, [r1, #5]
	add r1, sp, #0
	ldrb r2, [r1, #6]
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r1, #6]
	add r0, sp, #0
	bl ov18_02228800
	add r1, sp, #0
	ldrb r2, [r1]
	ldr r0, _02228900 @ =0x022521B8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r2, [r1, #4]
	strb r2, [r0, #4]
	ldrb r2, [r1, #5]
	strb r2, [r0, #5]
	add r0, sp, #4
	adds r0, #2
	movs r2, #6
	blx FUN_020D5190
	cmp r0, #0
	bgt _022288A0
	add r1, sp, #0
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #4
	adds r1, #2
	strb r0, [r4, #5]
	b _022288BE
_022288A0:
	add r1, sp, #4
	adds r1, #2
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #0
	strb r0, [r4, #5]
_022288BE:
	ldrb r0, [r1]
	strb r0, [r4, #6]
	ldrb r0, [r1, #1]
	strb r0, [r4, #7]
	ldrb r0, [r1, #2]
	strb r0, [r4, #8]
	ldrb r0, [r1, #3]
	strb r0, [r4, #9]
	ldrb r0, [r1, #4]
	strb r0, [r4, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r4, #0xb]
	ldr r0, _02228904 @ =0x02249838
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022288F0
	add r0, sp, #0x2c
	add r1, sp, #0
	bl ov18_0222AB1C
	add r1, sp, #4
	add r0, sp, #0xc
	adds r1, #2
	bl ov18_0222AB1C
_022288F0:
	movs r0, #1
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_022288F8: .4byte 0x022498F8
_022288FC: .4byte 0x022521C0
_02228900: .4byte 0x022521B8
_02228904: .4byte 0x02249838
	thumb_func_end ov18_0222880C

	thumb_func_start ov18_02228908
ov18_02228908: @ 0x02228908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r1, r0, #0
	str r1, [sp, #4]
	adds r1, #8
	str r1, [sp, #4]
	str r1, [sp, #0x14]
	movs r1, #0
	str r1, [sp]
	ldrh r1, [r0]
	add r3, sp, #0xc
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	adds r1, r2, r1
	add r2, sp, #0x10
	bl ov18_02228470
	adds r5, r0, #0
	bne _02228948
	b _02228AB8
_02228948:
	ldr r2, [sp, #0x10]
	ldr r0, _02228AC0 @ =0x00000201
	subs r1, r2, r0
	cmp r1, #9
	bhi _022289D6
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222895E: @ jump table
	.2byte _02228972 - _0222895E - 2 @ case 0
	.2byte _02228992 - _0222895E - 2 @ case 1
	.2byte _022289AE - _0222895E - 2 @ case 2
	.2byte _022289D8 - _0222895E - 2 @ case 3
	.2byte _02228A02 - _0222895E - 2 @ case 4
	.2byte _02228A1E - _0222895E - 2 @ case 5
	.2byte _02228A1E - _0222895E - 2 @ case 6
	.2byte _02228A1E - _0222895E - 2 @ case 7
	.2byte _02228A1E - _0222895E - 2 @ case 8
	.2byte _02228A7E - _0222895E - 2 @ case 9
_02228972:
	ldr r3, _02228AC4 @ =0x02252064
	movs r0, #0
	adds r2, r3, #0
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	adds r0, r3, #0
	adds r1, r5, #0
	blx FUN_020D50B8
	movs r0, #1
	str r0, [sp]
	b _02228AA2
_02228992:
	ldrh r1, [r5]
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _02228AC8 @ =0x02252090
	str r1, [r0]
	b _02228AA2
_022289AE:
	ldrh r3, [r5]
	ldr r1, _02228ACC @ =0x02251F64
	movs r0, #0
	asrs r2, r3, #8
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r2, #0xff
	lsls r3, r3, #8
	lsls r2, r2, #8
	ands r2, r3
	orrs r2, r4
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	movs r2, #0x57
	lsls r2, r2, #2
_022289CC:
	adds r0, r0, #1
	str r3, [r1, r2]
	adds r1, #0x28
	cmp r0, #4
	blt _022289CC
_022289D6:
	b _02228AA2
_022289D8:
	ldrh r3, [r5]
	ldr r0, _02228ACC @ =0x02251F64
	movs r1, #0
	asrs r2, r3, #8
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r2, #0xff
	lsls r3, r3, #8
	lsls r2, r2, #8
	ands r2, r3
	orrs r2, r4
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	movs r2, #0x16
	lsls r2, r2, #4
_022289F6:
	adds r1, r1, #1
	str r3, [r0, r2]
	adds r0, #0x28
	cmp r1, #4
	blt _022289F6
	b _02228AA2
_02228A02:
	ldrh r1, [r5]
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #8
	lsls r0, r0, #8
	ands r0, r1
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _02228AC8 @ =0x02252090
	str r1, [r0, #4]
	b _02228AA2
_02228A1E:
	adds r0, r0, #5
	subs r2, r2, r0
	movs r0, #0x28
	muls r0, r2, r0
	ldr r1, _02228AD0 @ =0x022520C8
	movs r2, #0x20
	adds r0, r1, r0
	movs r1, #0
	blx FUN_020D5124
	ldr r0, _02228AC8 @ =0x02252090
	ldr r1, _02228AD4 @ =0x00000206
	ldr r0, [r0, #0x30]
	cmp r0, #1
	bne _02228A68
	ldr r2, [sp, #0x10]
	ldr r0, _02228AD0 @ =0x022520C8
	subs r2, r2, r1
	movs r1, #0x28
	muls r1, r2, r1
	adds r4, r0, r1
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	ble _02228AA2
	adds r7, r6, #0
_02228A52:
	ldrsb r1, [r5, r7]
	adds r0, r4, #0
	adds r5, r5, #1
	bl ov18_0222AAE8
	adds r4, r4, r0
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	cmp r6, r0
	blt _02228A52
	b _02228AA2
_02228A68:
	ldr r2, [sp, #0x10]
	ldr r0, _02228AD0 @ =0x022520C8
	subs r2, r2, r1
	movs r1, #0x28
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r2, [sp, #0xc]
	adds r1, r5, #0
	blx FUN_020D50B8
	b _02228AA2
_02228A7E:
	ldr r3, _02228AD8 @ =0x02252160
	movs r0, #0
	adds r2, r3, #0
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	adds r0, r3, #0
	adds r1, r5, #0
	blx FUN_020D50B8
_02228AA2:
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	adds r1, r2, r1
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	adds r5, r0, #0
	beq _02228AB8
	b _02228948
_02228AB8:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228AC0: .4byte 0x00000201
_02228AC4: .4byte 0x02252064
_02228AC8: .4byte 0x02252090
_02228ACC: .4byte 0x02251F64
_02228AD0: .4byte 0x022520C8
_02228AD4: .4byte 0x00000206
_02228AD8: .4byte 0x02252160
	thumb_func_end ov18_02228908

	thumb_func_start ov18_02228ADC
ov18_02228ADC: @ 0x02228ADC
	push {r4, r5, r6, r7}
	adds r4, r2, #0
	movs r2, #0
	adds r5, r1, #0
	adds r3, r2, #0
	cmp r4, #0
	ble _02228B8A
	movs r7, #0x1f
_02228AEC:
	ldrsb r1, [r5, r3]
	cmp r1, #0x63
	bgt _02228B42
	bge _02228B5A
	cmp r1, #0x61
	bgt _02228B3C
	bge _02228B5A
	adds r6, r1, #0
	subs r6, #0x30
	cmp r6, #0x16
	bhi _02228B66
	adds r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	add pc, r6
_02228B0E: @ jump table
	.2byte _02228B54 - _02228B0E - 2 @ case 0
	.2byte _02228B54 - _02228B0E - 2 @ case 1
	.2byte _02228B54 - _02228B0E - 2 @ case 2
	.2byte _02228B54 - _02228B0E - 2 @ case 3
	.2byte _02228B54 - _02228B0E - 2 @ case 4
	.2byte _02228B54 - _02228B0E - 2 @ case 5
	.2byte _02228B54 - _02228B0E - 2 @ case 6
	.2byte _02228B54 - _02228B0E - 2 @ case 7
	.2byte _02228B54 - _02228B0E - 2 @ case 8
	.2byte _02228B54 - _02228B0E - 2 @ case 9
	.2byte _02228B66 - _02228B0E - 2 @ case 10
	.2byte _02228B66 - _02228B0E - 2 @ case 11
	.2byte _02228B66 - _02228B0E - 2 @ case 12
	.2byte _02228B66 - _02228B0E - 2 @ case 13
	.2byte _02228B66 - _02228B0E - 2 @ case 14
	.2byte _02228B66 - _02228B0E - 2 @ case 15
	.2byte _02228B66 - _02228B0E - 2 @ case 16
	.2byte _02228B60 - _02228B0E - 2 @ case 17
	.2byte _02228B60 - _02228B0E - 2 @ case 18
	.2byte _02228B60 - _02228B0E - 2 @ case 19
	.2byte _02228B60 - _02228B0E - 2 @ case 20
	.2byte _02228B60 - _02228B0E - 2 @ case 21
	.2byte _02228B60 - _02228B0E - 2 @ case 22
_02228B3C:
	cmp r1, #0x62
	beq _02228B5A
	b _02228B66
_02228B42:
	cmp r1, #0x65
	bgt _02228B4E
	bge _02228B5A
	cmp r1, #0x64
	beq _02228B5A
	b _02228B66
_02228B4E:
	cmp r1, #0x66
	beq _02228B5A
	b _02228B66
_02228B54:
	subs r1, #0x30
	adds r2, r2, r1
	b _02228B6C
_02228B5A:
	subs r1, #0x57
	adds r2, r2, r1
	b _02228B6C
_02228B60:
	subs r1, #0x37
	adds r2, r2, r1
	b _02228B6C
_02228B66:
	movs r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02228B6C:
	lsrs r6, r3, #0x1f
	lsls r1, r3, #0x1f
	subs r1, r1, r6
	rors r1, r7
	adds r1, r6, r1
	bne _02228B7C
	lsls r2, r2, #4
	b _02228B84
_02228B7C:
	adds r6, r3, r6
	asrs r1, r6, #1
	strb r2, [r0, r1]
	movs r2, #0
_02228B84:
	adds r3, r3, #1
	cmp r3, r4
	blt _02228AEC
_02228B8A:
	movs r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov18_02228ADC

	thumb_func_start ov18_02228B90
ov18_02228B90: @ 0x02228B90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	movs r0, #1
	str r0, [sp]
	ldr r0, _02228CF8 @ =0x02251E7C
	ldr r1, _02228CFC @ =0x02252064
	blx FUN_020D8B7C
	ldr r1, _02228D00 @ =0x02252090
	ldr r0, [r1]
	cmp r0, #3
	bls _02228BAA
	b _02228CEA
_02228BAA:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02228BB6: @ jump table
	.2byte _02228BBE - _02228BB6 - 2 @ case 0
	.2byte _02228BC6 - _02228BB6 - 2 @ case 1
	.2byte _02228CBE - _02228BB6 - 2 @ case 2
	.2byte _02228CD4 - _02228BB6 - 2 @ case 3
_02228BBE:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #0
	str r1, [r0, #0xc]
	b _02228CF0
_02228BC6:
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02228BD4
	movs r0, #6
	mvns r0, r0
	str r0, [sp]
	b _02228CF0
_02228BD4:
	ldr r0, _02228D04 @ =0x02251E90
	ldr r6, _02228D08 @ =0x022520C8
	ldr r5, _02228D0C @ =0x02251EA4
	str r1, [r0, #0x10]
	movs r7, #0
	add r4, sp, #4
_02228BE0:
	add r0, sp, #4
	adds r1, r6, #0
	movs r2, #0x20
	blx FUN_020D50B8
	movs r1, #0
	add r0, sp, #0x24
	strb r1, [r0]
	add r0, sp, #4
	blx FUN_020D8B60
	cmp r0, #0x10
	bhi _02228C18
	cmp r0, #0xa
	blo _02228C0A
	beq _02228C42
	cmp r0, #0xd
	beq _02228C54
	cmp r0, #0x10
	beq _02228C80
	b _02228CAC
_02228C0A:
	cmp r0, #0
	bhi _02228C12
	beq _02228CB2
	b _02228CAC
_02228C12:
	cmp r0, #5
	beq _02228C26
	b _02228CAC
_02228C18:
	cmp r0, #0x1a
	bhi _02228C20
	beq _02228C6E
	b _02228CAC
_02228C20:
	cmp r0, #0x20
	beq _02228C9A
	b _02228CAC
_02228C26:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #1
	str r1, [r0, #0xc]
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldrb r0, [r4, #4]
	strb r0, [r5, #4]
	b _02228CB2
_02228C42:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #1
	str r1, [r0, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl ov18_02228ADC
	b _02228CB2
_02228C54:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #2
	str r1, [r0, #0xc]
	adds r3, r4, #0
	adds r2, r5, #0
	movs r1, #0xd
_02228C60:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02228C60
	b _02228CB2
_02228C6E:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #2
	str r1, [r0, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x1a
	bl ov18_02228ADC
	b _02228CB2
_02228C80:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #3
	str r1, [r0, #0xc]
	adds r3, r4, #0
	adds r2, r5, #0
	movs r1, #0x10
_02228C8C:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02228C8C
	b _02228CB2
_02228C9A:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #3
	str r1, [r0, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl ov18_02228ADC
	b _02228CB2
_02228CAC:
	movs r0, #6
	mvns r0, r0
	str r0, [sp]
_02228CB2:
	adds r7, r7, #1
	adds r6, #0x28
	adds r5, #0x20
	cmp r7, #4
	blt _02228BE0
	b _02228CF0
_02228CBE:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #4
	ldr r4, _02228D10 @ =0x02251F24
	ldr r3, _02228D14 @ =0x02252160
	str r1, [r0, #0xc]
	movs r2, #8
_02228CCA:
	ldm r3!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _02228CCA
	b _02228CF0
_02228CD4:
	ldr r0, _02228D04 @ =0x02251E90
	movs r1, #5
	ldr r4, _02228D10 @ =0x02251F24
	ldr r3, _02228D14 @ =0x02252160
	str r1, [r0, #0xc]
	movs r2, #8
_02228CE0:
	ldm r3!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _02228CE0
	b _02228CF0
_02228CEA:
	movs r0, #6
	mvns r0, r0
	str r0, [sp]
_02228CF0:
	ldr r0, [sp]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228CF8: .4byte 0x02251E7C
_02228CFC: .4byte 0x02252064
_02228D00: .4byte 0x02252090
_02228D04: .4byte 0x02251E90
_02228D08: .4byte 0x022520C8
_02228D0C: .4byte 0x02251EA4
_02228D10: .4byte 0x02251F24
_02228D14: .4byte 0x02252160
	thumb_func_end ov18_02228B90

	thumb_func_start ov18_02228D18
ov18_02228D18: @ 0x02228D18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	movs r4, #0
	subs r0, r4, #5
	str r0, [sp, #8]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #1
	str r4, [sp, #0xc]
	str r4, [sp, #4]
	adds r6, r4, #0
	str r1, [r0, #0x1c]
	b _022290CA
_02228D30:
	movs r0, #0x7d
	lsls r0, r0, #2
	blx FUN_020C24A4
	ldr r0, _02229060 @ =0x02251D10
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	bls _02228D42
	b _022290CA
_02228D42:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02228D4E: @ jump table
	.2byte _022290CA - _02228D4E - 2 @ case 0
	.2byte _02228D64 - _02228D4E - 2 @ case 1
	.2byte _02228D84 - _02228D4E - 2 @ case 2
	.2byte _02228D9A - _02228D4E - 2 @ case 3
	.2byte _02228DE8 - _02228D4E - 2 @ case 4
	.2byte _02228E50 - _02228D4E - 2 @ case 5
	.2byte _02228E74 - _02228D4E - 2 @ case 6
	.2byte _02228F1E - _02228D4E - 2 @ case 7
	.2byte _02228F7A - _02228D4E - 2 @ case 8
	.2byte _02229002 - _02228D4E - 2 @ case 9
	.2byte _022290A0 - _02228D4E - 2 @ case 10
_02228D64:
	bl ov18_0222810C
	str r0, [sp, #8]
	cmp r0, #1
	beq _02228D72
	movs r6, #1
	b _022290CA
_02228D72:
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #2
	str r1, [r0, #0x1c]
	b _022290CA
_02228D84:
	bl ov18_02227DB8
	str r0, [sp, #8]
	cmp r0, #1
	beq _02228D92
	movs r6, #1
	b _022290CA
_02228D92:
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #3
	str r1, [r0, #0x1c]
	b _022290CA
_02228D9A:
	movs r0, #2
	adds r1, r0, #0
	movs r2, #0
	blx FUN_02208324
	adds r4, r0, #0
	bpl _02228DB2
	movs r0, #1
	mvns r0, r0
	str r0, [sp, #8]
	movs r6, #1
	b _022290CA
_02228DB2:
	add r5, sp, #0x24
	movs r1, #0
	str r1, [r5]
	str r1, [r5, #4]
	movs r3, #8
	add r2, sp, #0x10
	strb r3, [r2, #0x14]
	movs r3, #2
	strb r3, [r2, #0x15]
	ldr r3, _02229064 @ =0x000001E6
	strh r3, [r2, #0x16]
	str r1, [sp, #0x28]
	adds r1, r5, #0
	blx FUN_02208350
	str r0, [sp, #8]
	cmp r0, #0
	bge _02228DE0
	movs r0, #1
	mvns r0, r0
	str r0, [sp, #8]
	movs r6, #1
	b _022290CA
_02228DE0:
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #4
	str r1, [r0, #0x1c]
	b _022290CA
_02228DE8:
	bl ov18_0222AA98
	ldr r1, _02229068 @ =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02228E04
	adds r0, r4, #0
	blx FUN_02208540
	movs r0, #2
	mvns r0, r0
	str r0, [sp, #8]
	movs r6, #1
	b _022290CA
_02228E04:
	movs r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xc]
	ldr r0, _0222906C @ =0x022521D0
	add r1, sp, #0x1c
	bl ov18_0222880C
	add r0, sp, #0x1c
	movs r2, #2
	str r0, [sp]
	ldr r1, _02229070 @ =0x02252A44
	adds r0, r4, #0
	lsls r2, r2, #0xa
	movs r3, #4
	blx FUN_022083FC
	cmp r0, #0
	ble _02228F02
	ldr r0, _02229070 @ =0x02252A44
	ldr r1, _02229074 @ =0x02251D60
	bl ov18_02228640
	cmp r0, #0
	beq _02228F02
	bl ov18_0222AA98
	ldr r1, _02229078 @ =0x00007530
	adds r1, r0, r1
	ldr r0, _02229068 @ =0x02249838
	str r1, [r0, #0xc]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #5
	str r1, [r0, #0x1c]
	movs r1, #4
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	b _022290CA
_02228E50:
	ldr r0, _02229070 @ =0x02252A44
	bl ov18_02228764
	adds r3, r0, #0
	ldr r0, _02229060 @ =0x02251D10
	ldr r2, _02229070 @ =0x02252A44
	str r3, [r0, #0x14]
	adds r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #6
	str r1, [r0, #0x1c]
	b _022290CA
_02228E74:
	bl ov18_0222AA98
	ldr r1, _02229068 @ =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02228E90
	adds r0, r4, #0
	blx FUN_02208540
	movs r0, #3
	mvns r0, r0
	str r0, [sp, #8]
	movs r6, #1
	b _022290CA
_02228E90:
	add r0, sp, #0x1c
	movs r2, #2
	str r0, [sp]
	ldr r1, _02229070 @ =0x02252A44
	adds r0, r4, #0
	lsls r2, r2, #0xa
	movs r3, #4
	blx FUN_022083FC
	cmp r0, #0
	ble _02228F04
	ldr r0, _02229070 @ =0x02252A44
	ldr r2, _0222907C @ =0x02252244
	ldr r3, _0222906C @ =0x022521D0
	movs r1, #3
	bl ov18_02228714
	cmp r0, #0
	beq _02228F04
	ldr r0, _0222907C @ =0x02252244
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov18_022284C0
	adds r5, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, _02229080 @ =0x00000101
	cmp r1, r0
	bne _02228F02
	bl ov18_0222AA98
	ldr r2, _02229084 @ =0x022521E0
	str r0, [sp, #0x10]
	movs r1, #8
_02228ED4:
	ldrb r0, [r5]
	adds r5, r5, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02228ED4
	ldr r0, _02229088 @ =0x022521E8
	add r1, sp, #0x10
	movs r2, #4
	bl ov18_0222AA70
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #7
	str r1, [r0, #0x1c]
	movs r1, #5
	str r1, [r0, #0x38]
	ldr r0, _02229068 @ =0x02249838
	subs r1, r1, #6
	str r1, [r0, #0xc]
	bl ov18_0222AD18
_02228F02:
	b _022290CA
_02228F04:
	bl ov18_0222AA98
	movs r2, #0xfa
	ldr r1, [sp, #0xc]
	lsls r2, r2, #2
	adds r1, r1, r2
	cmp r0, r1
	bhs _02228F16
	b _022290CA
_02228F16:
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #5
	str r1, [r0, #0x1c]
	b _022290CA
_02228F1E:
	ldr r0, _0222907C @ =0x02252244
	ldr r1, _0222908C @ =0x00000102
	ldr r2, _02229088 @ =0x022521E8
	movs r3, #8
	bl ov18_02228618
	ldr r3, _02229060 @ =0x02251D10
	ldr r2, _0222907C @ =0x02252244
	str r0, [r3, #0x34]
	ldr r0, _0222906C @ =0x022521D0
	movs r1, #4
	str r0, [sp]
	ldr r0, _02229070 @ =0x02252A44
	ldr r3, [r3, #0x34]
	bl ov18_022284F4
	adds r3, r0, #0
	ldr r0, _02229060 @ =0x02251D10
	ldr r2, _02229070 @ =0x02252A44
	str r3, [r0, #0x14]
	adds r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	movs r0, #0
	movs r5, #0x12
	ldr r7, _02229090 @ =0x02251F64
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	mov ip, r5
_02228F62:
	stm r7!, {r0, r1, r2, r3}
	mov r5, ip
	subs r5, r5, #1
	stm r7!, {r0, r1, r2, r3}
	mov ip, r5
	bne _02228F62
	stm r7!, {r0, r1, r2, r3}
	str r0, [r7]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #8
	str r1, [r0, #0x1c]
	b _022290CA
_02228F7A:
	add r0, sp, #0x1c
	movs r2, #2
	str r0, [sp]
	ldr r1, _02229070 @ =0x02252A44
	adds r0, r4, #0
	lsls r2, r2, #0xa
	movs r3, #4
	blx FUN_022083FC
	cmp r0, #0
	ble _02228FD0
	ldr r0, _02229070 @ =0x02252A44
	ldr r2, _0222907C @ =0x02252244
	ldr r3, _02229084 @ =0x022521E0
	movs r1, #5
	bl ov18_02228714
	ldr r1, _02229060 @ =0x02251D10
	cmp r0, #0
	str r0, [r1, #0x34]
	beq _02228FD0
	ldr r0, _0222907C @ =0x02252244
	bl ov18_02228908
	cmp r0, #0
	beq _02228FD0
	ldr r1, _02229094 @ =0x02252050
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02228FBE
	movs r1, #1
	ldr r0, _02229060 @ =0x02251D10
	b _02228FC2
_02228FBE:
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #0
_02228FC2:
	strb r1, [r0]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #9
	str r1, [r0, #0x1c]
	b _022290CA
_02228FD0:
	bl ov18_0222AA98
	movs r2, #0xfa
	ldr r1, [sp, #0xc]
	lsls r2, r2, #2
	adds r1, r1, r2
	cmp r0, r1
	blo _022290CA
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _02228FFA
	adds r0, r4, #0
	blx FUN_02208540
	movs r0, #1
	mvns r0, r0
	str r0, [sp, #8]
	movs r6, #1
	b _022290CA
_02228FFA:
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #7
	str r1, [r0, #0x1c]
	b _022290CA
_02229002:
	ldr r0, _0222907C @ =0x02252244
	ldr r1, _02229098 @ =0x00000301
	ldr r2, _0222909C @ =0x02251D10
	movs r3, #1
	bl ov18_02228618
	ldr r3, _02229060 @ =0x02251D10
	ldr r2, _0222907C @ =0x02252244
	str r0, [r3, #0x34]
	ldr r0, _02229084 @ =0x022521E0
	movs r1, #6
	str r0, [sp]
	ldr r0, _02229070 @ =0x02252A44
	ldr r3, [r3, #0x34]
	bl ov18_022284F4
	ldr r1, _02229060 @ =0x02251D10
	str r0, [r1, #0x14]
	bl ov18_02227BBC
	cmp r0, #7
	beq _02229044
	bl ov18_0222AA98
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
	movs r0, #0xa
	ldr r1, _02229060 @ =0x02251D10
	str r0, [sp, #4]
	str r0, [r1, #0x1c]
	b _022290CA
_02229044:
	ldr r3, _02229060 @ =0x02251D10
	ldr r2, _02229070 @ =0x02252A44
	ldr r3, [r3, #0x14]
	adds r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	ldr r0, _02229060 @ =0x02251D10
	movs r1, #0xa
	str r1, [r0, #0x1c]
	b _022290CA
	.align 2, 0
_02229060: .4byte 0x02251D10
_02229064: .4byte 0x000001E6
_02229068: .4byte 0x02249838
_0222906C: .4byte 0x022521D0
_02229070: .4byte 0x02252A44
_02229074: .4byte 0x02251D60
_02229078: .4byte 0x00007530
_0222907C: .4byte 0x02252244
_02229080: .4byte 0x00000101
_02229084: .4byte 0x022521E0
_02229088: .4byte 0x022521E8
_0222908C: .4byte 0x00000102
_02229090: .4byte 0x02251F64
_02229094: .4byte 0x02252050
_02229098: .4byte 0x00000301
_0222909C: .4byte 0x02251D10
_022290A0:
	bl ov18_0222AA98
	movs r2, #0xfa
	ldr r1, [sp, #0xc]
	lsls r2, r2, #2
	adds r1, r1, r2
	cmp r0, r1
	blo _022290CA
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _022290C4
	movs r6, #1
	bl ov18_02228B90
	str r0, [sp, #8]
	b _022290CA
_022290C4:
	ldr r0, _022290F8 @ =0x02251D10
	movs r1, #9
	str r1, [r0, #0x1c]
_022290CA:
	cmp r6, #0
	bne _022290D8
	ldr r0, _022290F8 @ =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _022290D8
	b _02228D30
_022290D8:
	cmp r4, #0
	beq _022290E2
	adds r0, r4, #0
	blx FUN_02208540
_022290E2:
	ldr r0, _022290F8 @ =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022290F0
	movs r0, #7
	mvns r0, r0
	str r0, [sp, #8]
_022290F0:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022290F8: .4byte 0x02251D10
	thumb_func_end ov18_02228D18

	thumb_func_start ov18_022290FC
ov18_022290FC: @ 0x022290FC
	push {r4, lr}
	bl ov18_02228D18
	adds r4, r0, #0
	ldr r0, _0222912C @ =0x02251D10
	str r4, [r0, #0x78]
	bl ov18_02227EDC
	cmp r4, #1
	bne _02229116
	movs r1, #6
	ldr r0, _0222912C @ =0x02251D10
	b _0222911A
_02229116:
	ldr r0, _0222912C @ =0x02251D10
	movs r1, #7
_0222911A:
	str r1, [r0, #0x38]
	movs r1, #0
	ldr r0, _02229130 @ =0x02249838
	mvns r1, r1
	str r1, [r0, #0xc]
	bl ov18_0222AD18
	pop {r4, pc}
	nop
_0222912C: .4byte 0x02251D10
_02229130: .4byte 0x02249838
	thumb_func_end ov18_022290FC

	thumb_func_start ov18_02229134
ov18_02229134: @ 0x02229134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	ldr r0, _022292E8 @ =0xA6A6A6A6
	adds r4, r2, #0
	adds r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	movs r0, #7
	adds r1, r4, #0
	tst r1, r0
	bne _02229152
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02229158
_02229152:
	add sp, #0x1a8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229158:
	lsrs r0, r4, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02229166
	add sp, #0x1a8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229166:
	add r0, sp, #0x68
	adds r1, r3, #0
	lsls r2, r2, #3
	bl ov18_022294EC
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	adds r1, r5, #0
	adds r0, #8
	adds r2, r4, #0
	blx FUN_020D50B8
	add r3, sp, #0x58
	add r2, sp, #0x48
	movs r1, #8
_02229184:
	ldrb r0, [r2]
	adds r2, r2, #1
	strb r0, [r3]
	adds r3, r3, #1
	subs r1, r1, #1
	bne _02229184
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x18]
_0222919A:
	ldr r0, [sp, #0x14]
	movs r4, #1
	cmp r0, #1
	bge _022291A4
	b _022292C0
_022291A4:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	str r0, [sp, #0xc]
	movs r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x30]
	adds r0, r1, #0
	orrs r0, r1
	str r0, [sp, #0x40]
_022291C2:
	ldr r0, [sp]
	lsls r1, r4, #3
	adds r5, r0, r1
	adds r3, r5, #0
	add r2, sp, #0x60
	movs r1, #8
_022291CE:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _022291CE
	add r2, sp, #0x58
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x68
	adds r3, r2, #0
	bl ov18_02229934
	ldr r0, [sp, #0xc]
	asrs r1, r4, #0x1f
	adds r3, r4, r0
	ldr r0, [sp, #8]
	adcs r1, r0
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r0, r0, #8
	str r0, [sp, #0x2c]
	movs r0, #0xff
	lsls r0, r0, #8
	movs r2, #0
	ands r0, r1
	ands r2, r3
	lsls r6, r0, #8
	lsrs r2, r2, #0x18
	str r2, [sp, #0x34]
	orrs r2, r6
	lsrs r0, r0, #0x18
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	movs r0, #0xff
	movs r2, #0
	ands r0, r1
	ands r2, r3
	lsls r6, r0, #0x18
	lsrs r2, r2, #8
	str r2, [sp, #0x44]
	orrs r2, r6
	lsrs r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	movs r0, #0
	adds r2, r1, #0
	ands r2, r0
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r3
	lsrs r6, r0, #0x18
	lsls r0, r0, #8
	mov ip, r0
	movs r0, #0
	ands r1, r0
	movs r0, #0xff
	lsls r0, r0, #0x10
	lsls r2, r2, #8
	ands r0, r3
	orrs r2, r6
	lsrs r6, r0, #8
	lsls r7, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #0x18
	ands r0, r3
	orrs r1, r6
	lsls r6, r0, #0x18
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r3
	lsls r0, r0, #8
	orrs r0, r6
	orrs r1, r0
	ldr r0, [sp, #0x40]
	adds r3, r7, #0
	orrs r3, r0
	mov r0, ip
	orrs r1, r2
	adds r2, r0, #0
	ldr r0, [sp, #0x3c]
	orrs r2, r3
	orrs r1, r0
	ldr r0, [sp, #0x44]
	orrs r2, r0
	ldr r0, [sp, #0x38]
	orrs r1, r0
	ldr r0, [sp, #0x34]
	orrs r2, r0
	ldr r0, [sp, #0x30]
	orrs r1, r0
	ldr r0, [sp, #0x2c]
	orrs r2, r0
	ldr r0, [sp, #0x28]
	orrs r1, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x54]
	orrs r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	adds r2, r0, #0
	bl ov18_022294A4
	add r2, sp, #0x60
	movs r1, #8
_022292AC:
	ldrb r0, [r2]
	adds r2, r2, #1
	strb r0, [r5]
	adds r5, r5, #1
	subs r1, r1, #1
	bne _022292AC
	ldr r0, [sp, #0x14]
	adds r4, r4, #1
	cmp r4, r0
	ble _022291C2
_022292C0:
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	bge _022292CC
	b _0222919A
_022292CC:
	add r3, sp, #0x58
	movs r2, #8
_022292D0:
	ldrb r1, [r3]
	ldr r0, [sp]
	adds r3, r3, #1
	strb r1, [r0]
	adds r0, r0, #1
	str r0, [sp]
	subs r2, r2, #1
	bne _022292D0
	movs r0, #1
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022292E8: .4byte 0xA6A6A6A6
	thumb_func_end ov18_02229134

	thumb_func_start ov18_022292EC
ov18_022292EC: @ 0x022292EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022294A0 @ =0xA6A6A6A6
	adds r4, r2, #0
	adds r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	movs r0, #7
	adds r1, r4, #0
	tst r1, r0
	bne _0222930E
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02229314
_0222930E:
	add sp, #0x1a8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229314:
	subs r0, r4, #1
	lsrs r0, r0, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02229324
	add sp, #0x1a8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229324:
	add r0, sp, #0x68
	adds r1, r3, #0
	lsls r2, r2, #3
	bl ov18_022297A4
	str r0, [sp, #0x20]
	add r3, sp, #0x58
	adds r2, r5, #0
	movs r1, #8
_02229336:
	ldrb r0, [r2]
	adds r2, r2, #1
	strb r0, [r3]
	adds r3, r3, #1
	subs r1, r1, #1
	bne _02229336
	adds r5, #8
	ldr r0, [sp]
	adds r1, r5, #0
	subs r2, r4, #1
	blx FUN_020D50B8
	movs r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x18]
_02229358:
	ldr r4, [sp, #0x14]
	adds r0, r4, #0
	cmp r0, #0
	bgt _02229362
	b _0222947C
_02229362:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x18]
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	str r0, [sp, #0xc]
	movs r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x2c]
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x34]
	adds r0, r1, #0
	orrs r0, r1
	str r0, [sp, #0x40]
_02229380:
	ldr r0, [sp, #0xc]
	asrs r1, r4, #0x1f
	adds r5, r4, r0
	ldr r0, [sp, #8]
	adcs r1, r0
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r0, r0, #8
	str r0, [sp, #0x30]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r2, r1, #0
	ands r2, r0
	movs r0, #0
	adds r3, r5, #0
	ands r3, r0
	lsls r0, r2, #8
	lsrs r3, r3, #0x18
	orrs r3, r0
	lsrs r0, r2, #0x18
	str r0, [sp, #0x38]
	movs r0, #0xff
	movs r2, #0
	ands r0, r1
	ands r2, r5
	lsls r6, r0, #0x18
	lsrs r2, r2, #8
	str r2, [sp, #0x44]
	orrs r2, r6
	lsrs r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	movs r0, #0
	adds r2, r1, #0
	ands r2, r0
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r5
	lsrs r6, r0, #0x18
	lsls r0, r0, #8
	mov ip, r0
	movs r0, #0
	ands r1, r0
	movs r0, #0xff
	lsls r0, r0, #0x10
	lsls r2, r2, #8
	ands r0, r5
	orrs r2, r6
	lsrs r6, r0, #8
	lsls r7, r0, #0x18
	movs r0, #0xff
	lsls r1, r1, #0x18
	ands r0, r5
	orrs r1, r6
	lsls r6, r0, #0x18
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r5
	lsls r0, r0, #8
	orrs r0, r6
	orrs r1, r0
	ldr r0, [sp, #0x40]
	adds r5, r7, #0
	orrs r5, r0
	mov r0, ip
	orrs r1, r2
	adds r2, r0, #0
	ldr r0, [sp, #0x3c]
	orrs r2, r5
	orrs r1, r0
	ldr r0, [sp, #0x44]
	orrs r2, r0
	ldr r0, [sp, #0x38]
	orrs r2, r3
	orrs r1, r0
	ldr r0, [sp, #0x34]
	orrs r1, r0
	ldr r0, [sp, #0x30]
	orrs r2, r0
	ldr r0, [sp, #0x2c]
	orrs r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x54]
	orrs r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	adds r2, r0, #0
	bl ov18_022294A4
	subs r0, r4, #1
	lsls r1, r0, #3
	ldr r0, [sp]
	add r2, sp, #0x60
	adds r5, r0, r1
	adds r3, r5, #0
	movs r1, #8
_0222944E:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0222944E
	add r2, sp, #0x58
	ldr r1, [sp, #0x20]
	add r0, sp, #0x68
	adds r3, r2, #0
	bl ov18_02229CF0
	add r2, sp, #0x60
	movs r1, #8
_0222946A:
	ldrb r0, [r2]
	adds r2, r2, #1
	strb r0, [r5]
	adds r5, r5, #1
	subs r1, r1, #1
	bne _0222946A
	subs r4, r4, #1
	cmp r4, #0
	bgt _02229380
_0222947C:
	ldr r0, [sp, #0x24]
	subs r0, r0, #1
	str r0, [sp, #0x24]
	bmi _02229486
	b _02229358
_02229486:
	add r0, sp, #0x48
	add r1, sp, #0x58
	movs r2, #8
	blx FUN_020D5190
	cmp r0, #0
	beq _02229498
	movs r0, #0
	str r0, [sp, #0x1c]
_02229498:
	ldr r0, [sp, #0x1c]
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022294A0: .4byte 0xA6A6A6A6
	thumb_func_end ov18_022292EC

	thumb_func_start ov18_022294A4
ov18_022294A4: @ 0x022294A4
	push {r3, r4}
	ldrb r4, [r0]
	ldrb r3, [r1]
	eors r3, r4
	strb r3, [r2]
	ldrb r4, [r0, #1]
	ldrb r3, [r1, #1]
	eors r3, r4
	strb r3, [r2, #1]
	ldrb r4, [r0, #2]
	ldrb r3, [r1, #2]
	eors r3, r4
	strb r3, [r2, #2]
	ldrb r4, [r0, #3]
	ldrb r3, [r1, #3]
	eors r3, r4
	strb r3, [r2, #3]
	ldrb r4, [r0, #4]
	ldrb r3, [r1, #4]
	eors r3, r4
	strb r3, [r2, #4]
	ldrb r4, [r0, #5]
	ldrb r3, [r1, #5]
	eors r3, r4
	strb r3, [r2, #5]
	ldrb r4, [r0, #6]
	ldrb r3, [r1, #6]
	eors r3, r4
	strb r3, [r2, #6]
	ldrb r3, [r0, #7]
	ldrb r0, [r1, #7]
	eors r0, r3
	strb r0, [r2, #7]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov18_022294A4

	thumb_func_start ov18_022294EC
ov18_022294EC: @ 0x022294EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	movs r2, #0
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrb r6, [r3, #1]
	ldrb r5, [r3, #3]
	lsls r4, r2, #8
	ldrb r2, [r3]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0]
	ldrb r2, [r3, #6]
	ldrb r6, [r3, #5]
	ldrb r5, [r3, #7]
	lsls r4, r2, #8
	ldrb r2, [r3, #4]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0, #4]
	ldrb r2, [r3, #0xa]
	ldrb r6, [r3, #9]
	ldrb r5, [r3, #0xb]
	lsls r4, r2, #8
	ldrb r2, [r3, #8]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0, #8]
	ldrb r2, [r3, #0xe]
	ldrb r6, [r3, #0xd]
	ldrb r5, [r3, #0xf]
	lsls r4, r2, #8
	ldrb r2, [r3, #0xc]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0, #0xc]
	cmp r1, #0x80
	bne _022295D0
	ldr r5, _0222979C @ =0x02246464
	ldr r2, _022297A0 @ =0x0224808C
_02229558:
	ldr r4, [r0, #0xc]
	ldr r3, [r5]
	lsrs r1, r4, #0x18
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	adds r5, r5, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x16
	ldr r6, [r2, r1]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r7, r6, #0
	ands r7, r1
	ldr r1, [r0]
	str r1, [sp, #4]
	lsrs r1, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	ldr r6, [r2, r1]
	movs r1, #0xff
	lsls r1, r1, #0x18
	lsrs r4, r4, #8
	ands r6, r1
	ldr r1, [sp, #4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	eors r1, r6
	ldr r6, [r2, r4]
	movs r4, #0xff
	lsls r4, r4, #0x10
	ands r4, r6
	eors r1, r4
	adds r4, r7, #0
	eors r4, r1
	ldr r1, [sp, #8]
	eors r1, r4
	eors r3, r1
	str r3, [r0, #0x10]
	ldr r1, [r0, #4]
	eors r3, r1
	str r3, [r0, #0x14]
	ldr r1, [r0, #8]
	eors r3, r1
	str r3, [r0, #0x18]
	ldr r1, [r0, #0xc]
	eors r1, r3
	str r1, [r0, #0x1c]
	ldr r1, [sp]
	adds r1, r1, #1
	str r1, [sp]
	cmp r1, #0xa
	blt _022295CC
	add sp, #0x18
	movs r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_022295CC:
	adds r0, #0x10
	b _02229558
_022295D0:
	ldrb r2, [r3, #0x12]
	ldrb r6, [r3, #0x11]
	ldrb r5, [r3, #0x13]
	lsls r4, r2, #8
	ldrb r2, [r3, #0x10]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0, #0x10]
	ldrb r2, [r3, #0x16]
	ldrb r6, [r3, #0x15]
	ldrb r5, [r3, #0x17]
	lsls r4, r2, #8
	ldrb r2, [r3, #0x14]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0, #0x14]
	cmp r1, #0xc0
	bne _0222968C
	ldr r5, _0222979C @ =0x02246464
	ldr r3, _022297A0 @ =0x0224808C
_02229604:
	ldr r4, [r0, #0x14]
	ldr r6, [r5]
	lsrs r1, r4, #0x18
	lsls r1, r1, #2
	ldr r1, [r3, r1]
	adds r5, r5, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x16
	ldr r2, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r7, r2, #0
	ands r7, r1
	ldr r1, [r0]
	mov lr, r1
	lsrs r1, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	ldr r2, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #0x18
	ands r1, r2
	mov r2, lr
	eors r1, r2
	lsrs r2, r4, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x16
	ldr r4, [r3, r2]
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r4
	eors r1, r2
	adds r2, r7, #0
	eors r2, r1
	ldr r1, [sp, #0xc]
	eors r1, r2
	adds r2, r6, #0
	eors r2, r1
	str r2, [r0, #0x18]
	ldr r1, [r0, #4]
	eors r2, r1
	str r2, [r0, #0x1c]
	ldr r1, [r0, #8]
	eors r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #0xc]
	eors r1, r2
	str r1, [r0, #0x24]
	ldr r1, [sp]
	adds r1, r1, #1
	str r1, [sp]
	cmp r1, #8
	blt _0222967A
	add sp, #0x18
	movs r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0222967A:
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x24]
	eors r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0x14]
	eors r1, r2
	str r1, [r0, #0x2c]
	adds r0, #0x18
	b _02229604
_0222968C:
	ldrb r2, [r3, #0x1a]
	ldrb r6, [r3, #0x19]
	ldrb r5, [r3, #0x1b]
	lsls r4, r2, #8
	ldrb r2, [r3, #0x18]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r4
	eors r2, r5
	str r2, [r0, #0x18]
	ldrb r2, [r3, #0x1e]
	ldrb r5, [r3, #0x1f]
	lsls r4, r2, #8
	ldrb r2, [r3, #0x1c]
	ldrb r3, [r3, #0x1d]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	eors r2, r3
	eors r2, r4
	eors r2, r5
	str r2, [r0, #0x1c]
	movs r2, #1
	lsls r2, r2, #8
	cmp r1, r2
	bne _02229796
	ldr r5, _0222979C @ =0x02246464
	ldr r3, _022297A0 @ =0x0224808C
_022296C4:
	ldr r4, [r0, #0x1c]
	ldr r6, [r5]
	lsrs r1, r4, #0x18
	lsls r1, r1, #2
	ldr r1, [r3, r1]
	adds r5, r5, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x16
	ldr r2, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r7, r2, #0
	ands r7, r1
	ldr r1, [r0]
	mov ip, r1
	lsrs r1, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	ldr r2, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #0x18
	ands r1, r2
	mov r2, ip
	eors r1, r2
	lsrs r2, r4, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x16
	ldr r4, [r3, r2]
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r4
	eors r1, r2
	adds r2, r7, #0
	eors r2, r1
	ldr r1, [sp, #0x10]
	eors r1, r2
	adds r2, r6, #0
	eors r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #4]
	eors r2, r1
	str r2, [r0, #0x24]
	ldr r1, [r0, #8]
	eors r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0xc]
	eors r1, r2
	str r1, [r0, #0x2c]
	ldr r1, [sp]
	adds r1, r1, #1
	str r1, [sp]
	cmp r1, #7
	blt _0222973A
	add sp, #0x18
	movs r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0222973A:
	ldr r6, [r0, #0x2c]
	ldr r7, [r0, #0x10]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x16
	ldr r1, [r3, r1]
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsrs r1, r6, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	ldr r2, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r2
	str r1, [sp, #0x14]
	lsrs r1, r6, #0x18
	lsls r1, r1, #2
	ldr r2, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #0x18
	ands r1, r2
	lsrs r2, r6, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x16
	ldr r6, [r3, r2]
	movs r2, #0xff
	lsls r2, r2, #0x10
	eors r1, r7
	ands r2, r6
	eors r2, r1
	ldr r1, [sp, #0x14]
	eors r1, r2
	adds r2, r4, #0
	eors r2, r1
	str r2, [r0, #0x30]
	ldr r1, [r0, #0x14]
	eors r2, r1
	str r2, [r0, #0x34]
	ldr r1, [r0, #0x18]
	eors r2, r1
	str r2, [r0, #0x38]
	ldr r1, [r0, #0x1c]
	eors r1, r2
	str r1, [r0, #0x3c]
	adds r0, #0x20
	b _022296C4
_02229796:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222979C: .4byte 0x02246464
_022297A0: .4byte 0x0224808C
	thumb_func_end ov18_022294EC

	thumb_func_start ov18_022297A4
ov18_022297A4: @ 0x022297A4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl ov18_022294EC
	mov ip, r0
	mov r1, ip
	lsls r6, r1, #2
	movs r0, #0
	cmp r6, #0
	ble _022297EA
	lsls r2, r6, #2
	adds r1, r4, #0
	adds r2, r4, r2
_022297BE:
	ldr r5, [r1]
	ldr r3, [r2]
	adds r0, r0, #4
	str r3, [r1]
	str r5, [r2]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	subs r6, r6, #4
	str r3, [r1, #4]
	str r5, [r2, #4]
	ldr r5, [r1, #8]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	str r5, [r2, #8]
	ldr r5, [r1, #0xc]
	ldr r3, [r2, #0xc]
	str r3, [r1, #0xc]
	str r5, [r2, #0xc]
	adds r1, #0x10
	subs r2, #0x10
	cmp r0, r6
	blt _022297BE
_022297EA:
	movs r0, #1
	str r0, [sp]
	mov r0, ip
	cmp r0, #1
	bgt _022297F6
	b _0222991A
_022297F6:
	ldr r2, _02229920 @ =0x0224808C
	ldr r7, _02229924 @ =0x0224688C
_022297FA:
	adds r4, #0x10
	ldr r3, [r4]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, [r7, r0]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x16
	ldr r0, _02229928 @ =0x0224648C
	ldr r6, [r0, r5]
	lsrs r0, r3, #0x18
	lsls r0, r0, #2
	lsrs r3, r3, #0x10
	ldr r0, [r2, r0]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x16
	lsls r0, r0, #0x18
	ldr r3, [r2, r3]
	lsrs r5, r0, #0x16
	ldr r0, _0222992C @ =0x0224848C
	lsls r3, r3, #0x18
	ldr r0, [r0, r5]
	lsrs r5, r3, #0x16
	ldr r3, _02229930 @ =0x0224888C
	ldr r3, [r3, r5]
	eors r0, r3
	eors r0, r6
	eors r0, r1
	str r0, [r4]
	ldr r3, [r4, #4]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, [r7, r0]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x16
	ldr r0, _02229928 @ =0x0224648C
	ldr r6, [r0, r5]
	lsrs r0, r3, #0x18
	lsls r0, r0, #2
	lsrs r3, r3, #0x10
	ldr r0, [r2, r0]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x16
	lsls r0, r0, #0x18
	ldr r3, [r2, r3]
	lsrs r5, r0, #0x16
	ldr r0, _0222992C @ =0x0224848C
	lsls r3, r3, #0x18
	ldr r0, [r0, r5]
	lsrs r5, r3, #0x16
	ldr r3, _02229930 @ =0x0224888C
	ldr r3, [r3, r5]
	eors r0, r3
	eors r0, r6
	eors r0, r1
	str r0, [r4, #4]
	ldr r3, [r4, #8]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, [r7, r0]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x16
	ldr r0, _02229928 @ =0x0224648C
	ldr r6, [r0, r5]
	lsrs r0, r3, #0x18
	lsls r0, r0, #2
	lsrs r3, r3, #0x10
	ldr r0, [r2, r0]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x16
	lsls r0, r0, #0x18
	ldr r3, [r2, r3]
	lsrs r5, r0, #0x16
	ldr r0, _0222992C @ =0x0224848C
	lsls r3, r3, #0x18
	ldr r0, [r0, r5]
	lsrs r5, r3, #0x16
	ldr r3, _02229930 @ =0x0224888C
	ldr r3, [r3, r5]
	eors r0, r3
	eors r0, r6
	eors r0, r1
	str r0, [r4, #8]
	ldr r3, [r4, #0xc]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, [r7, r0]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r2, r0]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x16
	ldr r0, _02229928 @ =0x0224648C
	ldr r6, [r0, r5]
	lsrs r0, r3, #0x18
	lsls r0, r0, #2
	lsrs r3, r3, #0x10
	ldr r0, [r2, r0]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x16
	lsls r0, r0, #0x18
	ldr r3, [r2, r3]
	lsrs r5, r0, #0x16
	ldr r0, _0222992C @ =0x0224848C
	lsls r3, r3, #0x18
	ldr r0, [r0, r5]
	lsrs r5, r3, #0x16
	ldr r3, _02229930 @ =0x0224888C
	ldr r3, [r3, r5]
	eors r0, r3
	eors r0, r6
	eors r0, r1
	str r0, [r4, #0xc]
	ldr r0, [sp]
	adds r1, r0, #1
	mov r0, ip
	str r1, [sp]
	cmp r1, r0
	bge _0222991A
	b _022297FA
_0222991A:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229920: .4byte 0x0224808C
_02229924: .4byte 0x0224688C
_02229928: .4byte 0x0224648C
_0222992C: .4byte 0x0224848C
_02229930: .4byte 0x0224888C
	thumb_func_end ov18_022297A4

	thumb_func_start ov18_02229934
ov18_02229934: @ 0x02229934
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r7, r1, #0
	adds r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsls r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r3
	eors r2, r4
	ldr r5, [r0]
	ldrb r6, [r1, #5]
	eors r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsls r6, r6, #0x10
	lsls r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r3
	eors r2, r4
	eors r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsls r3, r2, #8
	ldrb r2, [r1, #8]
	lsls r6, r6, #0x10
	ldr r5, [r0, #8]
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r3
	eors r2, r4
	eors r5, r2
	ldrb r2, [r1, #0xe]
	ldrb r4, [r1, #0xf]
	ldr r6, [r0, #0xc]
	lsls r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	lsls r2, r2, #0x18
	lsls r1, r1, #0x10
	eors r1, r2
	eors r1, r3
	eors r1, r4
	eors r6, r1
	asrs r1, r7, #1
	str r1, [sp, #4]
_022299A6:
	lsls r1, r6, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CDC @ =0x02247C8C
	ldr r4, [r0, #0x10]
	ldr r3, [r1, r2]
	lsrs r1, r5, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CE0 @ =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #0x18
	lsls r2, r1, #2
	ldr r1, _02229CE4 @ =0x0224708C
	ldr r7, [r1, r2]
	ldr r1, [sp, #8]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CE8 @ =0x0224748C
	ldr r1, [r1, r2]
	adds r2, r7, #0
	eors r2, r1
	ldr r1, [sp, #0x40]
	eors r1, r2
	eors r1, r3
	eors r1, r4
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r4, [r0, #0x14]
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CDC @ =0x02247C8C
	ldr r3, [r1, r2]
	lsrs r1, r6, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CE0 @ =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x48]
	ldr r1, [sp, #8]
	lsrs r1, r1, #0x18
	lsls r2, r1, #2
	ldr r1, _02229CE4 @ =0x0224708C
	ldr r7, [r1, r2]
	lsrs r1, r5, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CE8 @ =0x0224748C
	ldr r1, [r1, r2]
	adds r2, r7, #0
	eors r2, r1
	ldr r1, [sp, #0x48]
	eors r1, r2
	eors r1, r3
	eors r1, r4
	str r1, [sp, #0x44]
	ldr r1, [sp, #8]
	ldr r4, [r0, #0x18]
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CDC @ =0x02247C8C
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CE0 @ =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x14]
	lsrs r1, r5, #0x18
	lsls r2, r1, #2
	ldr r1, _02229CE4 @ =0x0224708C
	ldr r7, [r1, r2]
	lsrs r1, r6, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _02229CE8 @ =0x0224748C
	ldr r1, [r1, r2]
	adds r2, r7, #0
	eors r2, r1
	ldr r1, [sp, #0x14]
	ldr r7, [r0, #0x1c]
	eors r1, r2
	eors r1, r3
	adds r2, r4, #0
	eors r2, r1
	lsls r1, r5, #0x18
	lsrs r3, r1, #0x16
	ldr r1, _02229CDC @ =0x02247C8C
	adds r0, #0x20
	ldr r3, [r1, r3]
	ldr r1, [sp, #8]
	lsrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x16
	ldr r1, _02229CE0 @ =0x0224788C
	ldr r1, [r1, r4]
	lsrs r4, r6, #0x18
	lsls r5, r4, #2
	ldr r4, _02229CE4 @ =0x0224708C
	ldr r6, [r4, r5]
	ldr r4, [sp, #0xc]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x16
	ldr r4, _02229CE8 @ =0x0224748C
	ldr r4, [r4, r5]
	eors r4, r6
	eors r1, r4
	eors r1, r3
	ldr r3, [sp, #4]
	eors r1, r7
	subs r3, r3, #1
	str r3, [sp, #4]
	beq _02229B70
	lsls r3, r1, #0x18
	lsrs r5, r3, #0x16
	ldr r3, _02229CDC @ =0x02247C8C
	ldr r4, [r0]
	ldr r3, [r3, r5]
	lsrs r5, r2, #8
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _02229CE0 @ =0x0224788C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsrs r5, r5, #0x18
	lsls r6, r5, #2
	ldr r5, _02229CE4 @ =0x0224708C
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	ldr r5, [sp, #0x44]
	lsrs r5, r5, #0x10
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _02229CE8 @ =0x0224748C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eors r5, r6
	eors r5, r7
	eors r3, r5
	eors r3, r4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #4]
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x16
	ldr r3, _02229CDC @ =0x02247C8C
	ldr r3, [r3, r5]
	lsrs r5, r1, #8
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _02229CE0 @ =0x0224788C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsrs r5, r5, #0x18
	lsls r6, r5, #2
	ldr r5, _02229CE4 @ =0x0224708C
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	lsrs r5, r2, #0x10
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _02229CE8 @ =0x0224748C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eors r5, r6
	eors r5, r7
	eors r3, r5
	eors r3, r4
	str r3, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r6, [r0, #8]
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _02229CDC @ =0x02247C8C
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsrs r3, r3, #8
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _02229CE0 @ =0x0224788C
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsrs r3, r2, #0x18
	lsls r4, r3, #2
	ldr r3, _02229CE4 @ =0x0224708C
	lsls r2, r2, #0x18
	ldr r7, [r3, r4]
	lsrs r3, r1, #0x10
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _02229CE8 @ =0x0224748C
	lsrs r1, r1, #0x18
	ldr r3, [r3, r4]
	adds r4, r7, #0
	eors r4, r3
	ldr r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	eors r3, r4
	eors r3, r5
	adds r5, r6, #0
	eors r5, r3
	lsrs r3, r2, #0x16
	ldr r2, _02229CDC @ =0x02247C8C
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x44]
	lsrs r2, r2, #8
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x16
	ldr r2, _02229CE0 @ =0x0224788C
	ldr r2, [r2, r4]
	lsls r4, r1, #2
	ldr r1, _02229CE4 @ =0x0224708C
	ldr r6, [r1, r4]
	ldr r1, [sp, #0x10]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x16
	ldr r1, _02229CE8 @ =0x0224748C
	ldr r1, [r1, r4]
	eors r1, r6
	eors r1, r2
	eors r1, r3
	adds r6, r7, #0
	eors r6, r1
	b _022299A6
_02229B70:
	ldr r3, [r0]
	movs r6, #0xff
	str r3, [sp, #0x24]
	lsls r3, r1, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _02229CEC @ =0x0224808C
	lsls r6, r6, #0x10
	ldr r4, [r3, r4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x28]
	lsrs r4, r2, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #8
	ands r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsrs r4, r4, #0x18
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x18
	ands r5, r4
	ldr r4, [sp, #0x44]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	ands r4, r6
	eors r5, r4
	ldr r4, [sp, #0x2c]
	eors r5, r4
	ldr r4, [sp, #0x28]
	eors r5, r4
	ldr r4, [sp, #0x24]
	eors r4, r5
	ldr r5, [sp]
	lsrs r6, r4, #0x18
	strb r6, [r5]
	lsrs r6, r4, #0x10
	strb r6, [r5, #1]
	lsrs r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	movs r6, #0xff
	str r4, [sp, #0x30]
	ldr r4, [sp, #0x10]
	lsls r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x34]
	lsrs r4, r1, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #8
	ands r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsrs r4, r4, #0x18
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x18
	ands r5, r4
	lsrs r4, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	ands r4, r6
	eors r5, r4
	ldr r4, [sp, #0x38]
	eors r5, r4
	ldr r4, [sp, #0x34]
	eors r5, r4
	ldr r4, [sp, #0x30]
	eors r4, r5
	ldr r5, [sp]
	lsrs r6, r4, #0x18
	strb r6, [r5, #4]
	lsrs r6, r4, #0x10
	strb r6, [r5, #5]
	lsrs r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsrs r4, r4, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #8
	ands r4, r5
	mov ip, r4
	lsrs r4, r2, #0x18
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x18
	adds r6, r5, #0
	ands r6, r4
	lsrs r4, r1, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x10
	ands r4, r5
	eors r4, r6
	mov r5, ip
	eors r5, r4
	mov r4, lr
	eors r5, r4
	ldr r4, [sp, #0x3c]
	eors r4, r5
	ldr r5, [sp]
	lsrs r6, r4, #0x18
	strb r6, [r5, #8]
	lsrs r6, r4, #0x10
	strb r6, [r5, #9]
	lsrs r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r3, r0]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r2, [r3, r0]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r2, r0
	lsrs r0, r1, #0x18
	lsls r0, r0, #2
	ldr r1, [r3, r0]
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	ldr r1, [sp, #0x10]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	ldr r3, [r3, r1]
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r3
	eors r0, r1
	eors r0, r2
	eors r0, r4
	eors r0, r5
	ldr r1, [sp]
	lsrs r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsrs r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsrs r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02229CDC: .4byte 0x02247C8C
_02229CE0: .4byte 0x0224788C
_02229CE4: .4byte 0x0224708C
_02229CE8: .4byte 0x0224748C
_02229CEC: .4byte 0x0224808C
	thumb_func_end ov18_02229934

	thumb_func_start ov18_02229CF0
ov18_02229CF0: @ 0x02229CF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r7, r1, #0
	adds r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsls r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsls r6, r6, #0x10
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r3
	eors r2, r4
	ldr r5, [r0]
	ldrb r6, [r1, #5]
	eors r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsls r6, r6, #0x10
	lsls r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r3
	eors r2, r4
	eors r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsls r3, r2, #8
	ldrb r2, [r1, #8]
	lsls r6, r6, #0x10
	ldr r5, [r0, #8]
	lsls r2, r2, #0x18
	eors r2, r6
	eors r2, r3
	eors r2, r4
	eors r2, r5
	str r2, [sp, #0x40]
	ldrb r2, [r1, #0xe]
	ldr r5, [r0, #0xc]
	ldrb r4, [r1, #0xf]
	lsls r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	adds r6, r5, #0
	lsls r2, r2, #0x18
	lsls r1, r1, #0x10
	eors r1, r2
	eors r1, r3
	eors r1, r4
	eors r6, r1
	asrs r1, r7, #1
	str r1, [sp, #4]
_02229D66:
	ldr r1, [sp, #8]
	ldr r5, [r0, #0x10]
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A098 @ =0x0224688C
	ldr r4, [r1, r2]
	ldr r1, [sp, #0x40]
	lsrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A09C @ =0x0224648C
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #0x18
	lsls r2, r1, #2
	ldr r1, _0222A0A0 @ =0x0224848C
	ldr r7, [r1, r2]
	lsrs r1, r6, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A0A4 @ =0x0224888C
	ldr r1, [r1, r2]
	eors r1, r7
	eors r1, r3
	eors r1, r4
	eors r1, r5
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x40]
	ldr r5, [r0, #0x14]
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A098 @ =0x0224688C
	ldr r4, [r1, r2]
	lsrs r1, r6, #8
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A09C @ =0x0224648C
	ldr r3, [r1, r2]
	ldr r1, [sp, #8]
	lsrs r1, r1, #0x18
	lsls r2, r1, #2
	ldr r1, _0222A0A0 @ =0x0224848C
	ldr r7, [r1, r2]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A0A4 @ =0x0224888C
	ldr r1, [r1, r2]
	eors r1, r7
	eors r1, r3
	eors r1, r4
	eors r1, r5
	str r1, [sp, #0x44]
	lsls r1, r6, #0x18
	lsrs r2, r1, #0x16
	ldr r1, _0222A098 @ =0x0224688C
	ldr r3, [r0, #0x18]
	ldr r2, [r1, r2]
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x16
	ldr r1, _0222A09C @ =0x0224648C
	ldr r1, [r1, r4]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	lsrs r1, r1, #0x18
	lsls r4, r1, #2
	ldr r1, _0222A0A0 @ =0x0224848C
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x16
	ldr r4, _0222A0A4 @ =0x0224888C
	ldr r4, [r4, r5]
	eors r4, r1
	ldr r1, [sp, #0x14]
	eors r1, r4
	eors r1, r2
	adds r2, r3, #0
	eors r2, r1
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x1c]
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x16
	ldr r1, _0222A098 @ =0x0224688C
	adds r0, #0x20
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsrs r4, r4, #8
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x16
	ldr r4, _0222A09C @ =0x0224648C
	ldr r7, [r4, r5]
	lsrs r4, r6, #0x18
	lsls r5, r4, #2
	ldr r4, _0222A0A0 @ =0x0224848C
	ldr r6, [r4, r5]
	ldr r4, [sp, #0x40]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x16
	ldr r4, _0222A0A4 @ =0x0224888C
	ldr r4, [r4, r5]
	eors r4, r6
	eors r4, r7
	eors r1, r4
	eors r1, r3
	ldr r3, [sp, #4]
	subs r3, r3, #1
	str r3, [sp, #4]
	beq _02229F2A
	ldr r3, [sp, #0x44]
	ldr r4, [r0]
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x16
	ldr r3, _0222A098 @ =0x0224688C
	ldr r3, [r3, r5]
	lsrs r5, r2, #8
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _0222A09C @ =0x0224648C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsrs r5, r5, #0x18
	lsls r6, r5, #2
	ldr r5, _0222A0A0 @ =0x0224848C
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	lsrs r5, r1, #0x10
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _0222A0A4 @ =0x0224888C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eors r5, r6
	eors r5, r7
	eors r3, r5
	eors r3, r4
	str r3, [sp, #0xc]
	lsls r3, r2, #0x18
	lsrs r5, r3, #0x16
	ldr r3, _0222A098 @ =0x0224688C
	ldr r4, [r0, #4]
	ldr r3, [r3, r5]
	lsrs r5, r1, #8
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _0222A09C @ =0x0224648C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsrs r5, r5, #0x18
	lsls r6, r5, #2
	ldr r5, _0222A0A0 @ =0x0224848C
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsrs r5, r5, #0x10
	lsls r5, r5, #0x18
	lsrs r6, r5, #0x16
	ldr r5, _0222A0A4 @ =0x0224888C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eors r5, r6
	eors r5, r7
	eors r3, r5
	eors r3, r4
	str r3, [sp, #8]
	lsls r3, r1, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _0222A098 @ =0x0224688C
	ldr r6, [r0, #8]
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsrs r1, r1, #0x18
	lsrs r3, r3, #8
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _0222A09C @ =0x0224648C
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsrs r3, r2, #0x18
	lsls r4, r3, #2
	ldr r3, _0222A0A0 @ =0x0224848C
	lsrs r2, r2, #0x10
	ldr r7, [r3, r4]
	ldr r3, [sp, #0x44]
	lsls r2, r2, #0x18
	lsrs r3, r3, #0x10
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _0222A0A4 @ =0x0224888C
	ldr r3, [r3, r4]
	adds r4, r7, #0
	eors r4, r3
	ldr r3, [sp, #0x20]
	eors r3, r4
	eors r3, r5
	eors r3, r6
	str r3, [sp, #0x40]
	ldr r3, [sp, #0x10]
	ldr r5, [r0, #0xc]
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _0222A098 @ =0x0224688C
	ldr r4, [r3, r4]
	ldr r3, [sp, #0x44]
	lsrs r3, r3, #8
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x16
	ldr r3, _0222A09C @ =0x0224648C
	ldr r3, [r3, r6]
	lsls r6, r1, #2
	ldr r1, _0222A0A0 @ =0x0224848C
	ldr r1, [r1, r6]
	lsrs r6, r2, #0x16
	ldr r2, _0222A0A4 @ =0x0224888C
	ldr r2, [r2, r6]
	adds r6, r5, #0
	eors r1, r2
	eors r1, r3
	eors r1, r4
	eors r6, r1
	b _02229D66
_02229F2A:
	ldr r3, [r0]
	movs r6, #0xff
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x44]
	lsls r6, r6, #0x10
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x16
	ldr r3, _0222A0A8 @ =0x02246C8C
	ldr r4, [r3, r4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x28]
	lsrs r4, r2, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #8
	ands r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsrs r4, r4, #0x18
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x18
	ands r5, r4
	lsrs r4, r1, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	ands r4, r6
	eors r5, r4
	ldr r4, [sp, #0x2c]
	eors r5, r4
	ldr r4, [sp, #0x28]
	eors r5, r4
	ldr r4, [sp, #0x24]
	eors r4, r5
	ldr r5, [sp]
	lsrs r6, r4, #0x18
	strb r6, [r5]
	lsrs r6, r4, #0x10
	strb r6, [r5, #1]
	lsrs r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	movs r6, #0xff
	str r4, [sp, #0x30]
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	lsls r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x34]
	lsrs r4, r1, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #8
	ands r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsrs r4, r4, #0x18
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x18
	ands r5, r4
	ldr r4, [sp, #0x10]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	ands r4, r6
	eors r5, r4
	ldr r4, [sp, #0x38]
	eors r5, r4
	ldr r4, [sp, #0x34]
	eors r5, r4
	ldr r4, [sp, #0x30]
	eors r4, r5
	ldr r5, [sp]
	lsrs r6, r4, #0x18
	strb r6, [r5, #4]
	lsrs r6, r4, #0x10
	strb r6, [r5, #5]
	lsrs r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x16
	ldr r4, [r3, r4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsrs r4, r4, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #8
	ands r4, r5
	mov ip, r4
	lsrs r4, r2, #0x18
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x18
	adds r6, r5, #0
	ands r6, r4
	ldr r4, [sp, #0x44]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldr r5, [r3, r4]
	movs r4, #0xff
	lsls r4, r4, #0x10
	ands r4, r5
	eors r4, r6
	mov r5, ip
	eors r5, r4
	mov r4, lr
	eors r5, r4
	ldr r4, [sp, #0x3c]
	eors r4, r5
	ldr r5, [sp]
	lsrs r6, r4, #0x18
	strb r6, [r5, #8]
	lsrs r6, r4, #0x10
	strb r6, [r5, #9]
	lsrs r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	ldr r0, [sp, #0x10]
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r0, [r3, r0]
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsls r2, r2, #0x18
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r6, [r3, r0]
	movs r0, #0xff
	lsls r0, r0, #8
	lsls r1, r1, #2
	ands r0, r6
	movs r6, #0xff
	lsrs r2, r2, #0x16
	ldr r1, [r3, r1]
	ldr r3, [r3, r2]
	movs r2, #0xff
	lsls r6, r6, #0x18
	lsls r2, r2, #0x10
	ands r1, r6
	ands r2, r3
	eors r1, r2
	eors r0, r1
	eors r0, r4
	eors r0, r5
	ldr r1, [sp]
	lsrs r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsrs r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsrs r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A098: .4byte 0x0224688C
_0222A09C: .4byte 0x0224648C
_0222A0A0: .4byte 0x0224848C
_0222A0A4: .4byte 0x0224888C
_0222A0A8: .4byte 0x02246C8C
	thumb_func_end ov18_02229CF0

	thumb_func_start ov18_0222A0AC
ov18_0222A0AC: @ 0x0222A0AC
	movs r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _0222A0C4 @ =0x67452301
	str r1, [r0]
	ldr r1, _0222A0C8 @ =0xEFCDAB89
	str r1, [r0, #4]
	ldr r1, _0222A0CC @ =0x98BADCFE
	str r1, [r0, #8]
	ldr r1, _0222A0D0 @ =0x10325476
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0222A0C4: .4byte 0x67452301
_0222A0C8: .4byte 0xEFCDAB89
_0222A0CC: .4byte 0x98BADCFE
_0222A0D0: .4byte 0x10325476
	thumb_func_end ov18_0222A0AC

	thumb_func_start ov18_0222A0D4
ov18_0222A0D4: @ 0x0222A0D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x10]
	adds r6, r2, #0
	lsrs r2, r1, #3
	movs r0, #0x3f
	ands r0, r2
	lsls r2, r6, #3
	adds r1, r1, r2
	str r1, [r5, #0x10]
	cmp r1, r2
	bhs _0222A0F4
	ldr r1, [r5, #0x14]
	adds r1, r1, #1
	str r1, [r5, #0x14]
_0222A0F4:
	ldr r2, [r5, #0x14]
	lsrs r1, r6, #0x1d
	adds r1, r2, r1
	str r1, [r5, #0x14]
	movs r1, #0x40
	subs r4, r1, r0
	cmp r6, r4
	blo _0222A13A
	adds r1, r5, #0
	adds r1, #0x18
	adds r0, r1, r0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov18_0222AA40
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x18
	bl ov18_0222A1A0
	adds r0, r4, #0
	adds r0, #0x3f
	cmp r0, r6
	bhs _0222A136
_0222A124:
	adds r0, r5, #0
	adds r1, r7, r4
	bl ov18_0222A1A0
	adds r4, #0x40
	adds r0, r4, #0
	adds r0, #0x3f
	cmp r0, r6
	blo _0222A124
_0222A136:
	movs r0, #0
	b _0222A13C
_0222A13A:
	movs r4, #0
_0222A13C:
	adds r5, #0x18
	adds r0, r5, r0
	adds r1, r7, r4
	subs r2, r6, r4
	bl ov18_0222AA40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov18_0222A0D4

	thumb_func_start ov18_0222A14C
ov18_0222A14C: @ 0x0222A14C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	adds r1, #0x10
	movs r2, #8
	bl ov18_0222A9E8
	ldr r0, [r4, #0x10]
	lsrs r1, r0, #3
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0x38
	bhs _0222A16E
	movs r0, #0x38
	b _0222A170
_0222A16E:
	movs r0, #0x78
_0222A170:
	subs r2, r0, r1
	ldr r1, _0222A19C @ =0x022498B8
	adds r0, r4, #0
	bl ov18_0222A0D4
	adds r0, r4, #0
	add r1, sp, #0
	movs r2, #8
	bl ov18_0222A0D4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl ov18_0222A9E8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x58
	bl ov18_0222AA58
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222A19C: .4byte 0x022498B8
	thumb_func_end ov18_0222A14C

	thumb_func_start ov18_0222A1A0
ov18_0222A1A0: @ 0x0222A1A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	adds r7, r0, #0
	ldr r0, [r7]
	movs r2, #0x40
	str r0, [sp]
	add r0, sp, #0x44
	ldr r4, [r7, #4]
	ldr r5, [r7, #8]
	ldr r6, [r7, #0xc]
	bl ov18_0222AA14
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	str r0, [sp, #4]
	mvns r0, r4
	ands r1, r5
	ands r0, r6
	orrs r1, r0
	ldr r0, [sp, #4]
	adds r1, r0, r1
	ldr r0, _0222A578 @ =0x28955B88
	subs r1, r1, r0
	ldr r0, [sp]
	adds r0, r0, r1
	lsls r1, r0, #7
	lsrs r0, r0, #0x19
	orrs r0, r1
	adds r3, r0, r4
	ldr r0, [sp, #0x48]
	mvns r1, r3
	str r0, [sp, #8]
	adds r0, r3, #0
	ands r0, r4
	ands r1, r5
	orrs r1, r0
	ldr r0, [sp, #8]
	adds r1, r0, r1
	ldr r0, _0222A57C @ =0x173848AA
	subs r0, r1, r0
	adds r0, r6, r0
	lsls r1, r0, #0xc
	lsrs r0, r0, #0x14
	orrs r0, r1
	adds r2, r0, r3
	ldr r0, [sp, #0x4c]
	mvns r1, r2
	str r0, [sp, #0xc]
	adds r0, r2, #0
	ands r0, r3
	ands r1, r4
	orrs r1, r0
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	ldr r0, _0222A580 @ =0x242070DB
	adds r0, r1, r0
	adds r0, r5, r0
	lsls r1, r0, #0x11
	lsrs r0, r0, #0xf
	orrs r0, r1
	adds r1, r0, r2
	ldr r0, [sp, #0x50]
	mvns r5, r1
	str r0, [sp, #0x10]
	adds r0, r1, #0
	ands r0, r2
	ands r5, r3
	orrs r5, r0
	ldr r0, [sp, #0x10]
	adds r5, r0, r5
	ldr r0, _0222A584 @ =0x3E423112
	subs r0, r5, r0
	adds r0, r4, r0
	lsls r4, r0, #0x16
	lsrs r0, r0, #0xa
	orrs r0, r4
	ldr r4, [sp, #0x54]
	adds r0, r0, r1
	str r4, [sp, #0x14]
	adds r4, r0, #0
	mvns r5, r0
	ands r4, r1
	ands r5, r2
	orrs r5, r4
	ldr r4, [sp, #0x14]
	adds r5, r4, r5
	ldr r4, _0222A588 @ =0x0A83F051
	subs r4, r5, r4
	adds r3, r3, r4
	lsls r4, r3, #7
	lsrs r3, r3, #0x19
	orrs r3, r4
	ldr r4, [sp, #0x58]
	adds r3, r3, r0
	str r4, [sp, #0x18]
	adds r4, r3, #0
	mvns r5, r3
	ands r4, r0
	ands r5, r1
	orrs r5, r4
	ldr r4, [sp, #0x18]
	adds r5, r4, r5
	ldr r4, _0222A58C @ =0x4787C62A
	adds r4, r5, r4
	adds r2, r2, r4
	lsls r4, r2, #0xc
	lsrs r2, r2, #0x14
	orrs r2, r4
	ldr r4, [sp, #0x5c]
	adds r2, r2, r3
	str r4, [sp, #0x1c]
	adds r4, r2, #0
	mvns r5, r2
	ands r4, r3
	ands r5, r0
	orrs r5, r4
	ldr r4, [sp, #0x1c]
	adds r5, r4, r5
	ldr r4, _0222A590 @ =0x57CFB9ED
	subs r4, r5, r4
	adds r1, r1, r4
	lsls r4, r1, #0x11
	lsrs r1, r1, #0xf
	orrs r1, r4
	ldr r4, [sp, #0x60]
	adds r1, r1, r2
	str r4, [sp, #0x20]
	adds r4, r1, #0
	mvns r5, r1
	ands r4, r2
	ands r5, r3
	orrs r5, r4
	ldr r4, [sp, #0x20]
	adds r5, r4, r5
	ldr r4, _0222A594 @ =0x02B96AFF
	subs r4, r5, r4
	adds r0, r0, r4
	lsls r4, r0, #0x16
	lsrs r0, r0, #0xa
	orrs r0, r4
	ldr r4, [sp, #0x64]
	adds r0, r0, r1
	str r4, [sp, #0x24]
	adds r4, r0, #0
	mvns r5, r0
	ands r4, r1
	ands r5, r2
	orrs r5, r4
	ldr r4, [sp, #0x24]
	adds r5, r4, r5
	ldr r4, _0222A598 @ =0x698098D8
	adds r4, r5, r4
	adds r3, r3, r4
	lsls r4, r3, #7
	lsrs r3, r3, #0x19
	orrs r3, r4
	ldr r4, [sp, #0x68]
	adds r3, r3, r0
	str r4, [sp, #0x28]
	adds r4, r3, #0
	mvns r5, r3
	ands r4, r0
	ands r5, r1
	orrs r5, r4
	ldr r4, [sp, #0x28]
	adds r5, r4, r5
	ldr r4, _0222A59C @ =0x74BB0851
	subs r4, r5, r4
	adds r2, r2, r4
	lsls r4, r2, #0xc
	lsrs r2, r2, #0x14
	orrs r2, r4
	ldr r4, [sp, #0x6c]
	adds r2, r2, r3
	str r4, [sp, #0x2c]
	adds r4, r2, #0
	mvns r5, r2
	ands r4, r3
	ands r5, r0
	orrs r5, r4
	ldr r4, [sp, #0x2c]
	adds r5, r4, r5
	ldr r4, _0222A5A0 @ =0x0000A44F
	subs r4, r5, r4
	adds r1, r1, r4
	lsls r4, r1, #0x11
	lsrs r1, r1, #0xf
	orrs r1, r4
	ldr r4, [sp, #0x70]
	adds r1, r1, r2
	str r4, [sp, #0x30]
	adds r4, r1, #0
	mvns r5, r1
	ands r4, r2
	ands r5, r3
	orrs r5, r4
	ldr r4, [sp, #0x30]
	adds r5, r4, r5
	ldr r4, _0222A5A4 @ =0x76A32842
	subs r4, r5, r4
	adds r0, r0, r4
	lsls r4, r0, #0x16
	lsrs r0, r0, #0xa
	orrs r0, r4
	adds r0, r0, r1
	ldr r4, [sp, #0x74]
	mvns r5, r0
	str r4, [sp, #0x34]
	adds r4, r0, #0
	ands r4, r1
	ands r5, r2
	orrs r5, r4
	ldr r4, [sp, #0x34]
	adds r5, r4, r5
	ldr r4, _0222A5A8 @ =0x6B901122
	adds r4, r5, r4
	adds r3, r3, r4
	lsls r4, r3, #7
	lsrs r3, r3, #0x19
	orrs r3, r4
	adds r4, r3, r0
	ldr r3, [sp, #0x78]
	mvns r5, r4
	str r3, [sp, #0x38]
	adds r3, r4, #0
	ands r3, r0
	ands r5, r1
	orrs r5, r3
	ldr r3, [sp, #0x38]
	adds r5, r3, r5
	ldr r3, _0222A5AC @ =0x02678E6D
	subs r3, r5, r3
	adds r2, r2, r3
	lsls r3, r2, #0xc
	lsrs r2, r2, #0x14
	orrs r2, r3
	adds r3, r2, r4
	mvns r2, r3
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x7c]
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0x40]
	adds r2, r3, #0
	ands r2, r4
	ands r5, r0
	orrs r5, r2
	ldr r2, [sp, #0x40]
	adds r5, r2, r5
	ldr r2, _0222A5B0 @ =0x5986BC72
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0x11
	lsrs r1, r1, #0xf
	orrs r1, r2
	adds r2, r1, r3
	ldr r1, [sp, #0x80]
	adds r5, r2, #0
	mvns r6, r2
	mov ip, r1
	adds r1, r6, #0
	ands r5, r3
	ands r1, r4
	orrs r5, r1
	mov r1, ip
	adds r5, r1, r5
	ldr r1, _0222A5B4 @ =0x49B40821
	adds r1, r5, r1
	adds r0, r0, r1
	lsls r1, r0, #0x16
	lsrs r0, r0, #0xa
	orrs r0, r1
	adds r1, r0, r2
	ldr r5, [sp, #0x3c]
	adds r0, r1, #0
	ands r0, r3
	ands r5, r2
	orrs r5, r0
	ldr r0, [sp, #8]
	adds r5, r0, r5
	ldr r0, _0222A5B8 @ =0x09E1DA9E
	subs r0, r5, r0
	adds r0, r4, r0
	lsls r4, r0, #5
	lsrs r0, r0, #0x1b
	orrs r0, r4
	adds r0, r0, r1
	adds r4, r0, #0
	adds r5, r1, #0
	ands r4, r2
	bics r5, r2
	orrs r5, r4
	ldr r4, [sp, #0x1c]
	adds r5, r4, r5
	ldr r4, _0222A5BC @ =0x3FBF4CC0
	subs r4, r5, r4
	adds r3, r3, r4
	lsls r4, r3, #9
	lsrs r3, r3, #0x17
	orrs r3, r4
	adds r3, r3, r0
	adds r4, r3, #0
	mvns r5, r1
	ands r4, r1
	ands r5, r0
	orrs r5, r4
	ldr r4, [sp, #0x30]
	adds r5, r4, r5
	ldr r4, _0222A5C0 @ =0x265E5A51
	adds r4, r5, r4
	adds r2, r2, r4
	lsls r4, r2, #0xe
	lsrs r2, r2, #0x12
	orrs r2, r4
	adds r2, r2, r3
	adds r4, r2, #0
	mvns r5, r0
	ands r4, r0
	ands r5, r3
	orrs r5, r4
	ldr r4, [sp, #4]
	adds r5, r4, r5
	ldr r4, _0222A5C4 @ =0x16493856
	subs r4, r5, r4
	adds r1, r1, r4
	lsls r4, r1, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r4
	adds r1, r1, r2
	adds r4, r1, #0
	mvns r5, r3
	ands r4, r3
	ands r5, r2
	orrs r5, r4
	ldr r4, [sp, #0x18]
	adds r5, r4, r5
	ldr r4, _0222A5C8 @ =0x29D0EFA3
	subs r4, r5, r4
	adds r0, r0, r4
	lsls r4, r0, #5
	lsrs r0, r0, #0x1b
	orrs r0, r4
	adds r4, r0, r1
	adds r0, r4, #0
	mvns r5, r2
	ands r0, r2
	ands r5, r1
	orrs r5, r0
	ldr r0, [sp, #0x2c]
	adds r5, r0, r5
	ldr r0, _0222A5CC @ =0x02441453
	adds r0, r5, r0
	adds r0, r3, r0
	lsls r3, r0, #9
	lsrs r0, r0, #0x17
	orrs r0, r3
	adds r3, r0, r4
	adds r0, r3, #0
	mvns r5, r1
	ands r0, r1
	ands r5, r4
	orrs r5, r0
	mov r0, ip
	adds r5, r0, r5
	ldr r0, _0222A5D0 @ =0x275E197F
	subs r0, r5, r0
	adds r0, r2, r0
	lsls r2, r0, #0xe
	lsrs r0, r0, #0x12
	orrs r0, r2
	adds r0, r0, r3
	adds r2, r0, #0
	mvns r5, r4
	ands r2, r4
	ands r5, r3
	orrs r5, r2
	ldr r2, [sp, #0x14]
	adds r5, r2, r5
	ldr r2, _0222A5D4 @ =0x182C0438
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r2
	adds r5, r1, r0
	adds r1, r5, #0
	mvns r2, r3
	ands r1, r3
	ands r2, r0
	orrs r2, r1
	ldr r1, [sp, #0x28]
	adds r2, r1, r2
	ldr r1, _0222A5D8 @ =0x21E1CDE6
	adds r1, r2, r1
	adds r1, r4, r1
	lsls r2, r1, #5
	lsrs r1, r1, #0x1b
	orrs r1, r2
	adds r2, r1, r5
	adds r1, r2, #0
	mvns r4, r0
	ands r1, r0
	ands r4, r5
	orrs r4, r1
	ldr r1, [sp, #0x40]
	adds r4, r1, r4
	ldr r1, _0222A5DC @ =0x3CC8F82A
	subs r1, r4, r1
	adds r1, r3, r1
	lsls r3, r1, #9
	lsrs r1, r1, #0x17
	orrs r1, r3
	adds r1, r1, r2
	adds r3, r1, #0
	mvns r4, r5
	ands r3, r5
	ands r4, r2
	orrs r4, r3
	ldr r3, [sp, #0x10]
	adds r4, r3, r4
	ldr r3, _0222A5E0 @ =0x0B2AF279
	subs r3, r4, r3
	adds r0, r0, r3
	lsls r3, r0, #0xe
	lsrs r0, r0, #0x12
	orrs r0, r3
	adds r4, r0, r1
	adds r0, r4, #0
	mvns r3, r2
	ands r0, r2
	ands r3, r1
	orrs r3, r0
	ldr r0, [sp, #0x24]
	adds r3, r0, r3
	ldr r0, _0222A5E4 @ =0x455A14ED
	adds r0, r3, r0
	adds r0, r5, r0
	lsls r3, r0, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r3
	adds r3, r0, r4
	adds r0, r3, #0
	mvns r5, r1
	ands r0, r1
	ands r5, r4
	orrs r5, r0
	ldr r0, [sp, #0x38]
	adds r5, r0, r5
	ldr r0, _0222A5E8 @ =0x561C16FB
	subs r0, r5, r0
	adds r0, r2, r0
	lsls r2, r0, #5
	lsrs r0, r0, #0x1b
	orrs r0, r2
	adds r0, r0, r3
	adds r2, r0, #0
	mvns r5, r4
	ands r2, r4
	ands r5, r3
	orrs r5, r2
	ldr r2, [sp, #0xc]
	adds r5, r2, r5
	ldr r2, _0222A5EC @ =0x03105C08
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #9
	lsrs r1, r1, #0x17
	orrs r1, r2
	adds r5, r1, r0
	adds r1, r5, #0
	mvns r2, r3
	ands r1, r3
	ands r2, r0
	orrs r2, r1
	ldr r1, [sp, #0x20]
	adds r2, r1, r2
	ldr r1, _0222A5F0 @ =0x676F02D9
	adds r1, r2, r1
	adds r1, r4, r1
	lsls r2, r1, #0xe
	lsrs r1, r1, #0x12
	orrs r1, r2
	adds r2, r1, r5
	adds r1, r2, #0
	mvns r4, r0
	ands r1, r0
	ands r4, r5
	orrs r4, r1
	ldr r1, [sp, #0x34]
	adds r4, r1, r4
	ldr r1, _0222A5F4 @ =0x72D5B376
	b _0222A5F8
	nop
_0222A578: .4byte 0x28955B88
_0222A57C: .4byte 0x173848AA
_0222A580: .4byte 0x242070DB
_0222A584: .4byte 0x3E423112
_0222A588: .4byte 0x0A83F051
_0222A58C: .4byte 0x4787C62A
_0222A590: .4byte 0x57CFB9ED
_0222A594: .4byte 0x02B96AFF
_0222A598: .4byte 0x698098D8
_0222A59C: .4byte 0x74BB0851
_0222A5A0: .4byte 0x0000A44F
_0222A5A4: .4byte 0x76A32842
_0222A5A8: .4byte 0x6B901122
_0222A5AC: .4byte 0x02678E6D
_0222A5B0: .4byte 0x5986BC72
_0222A5B4: .4byte 0x49B40821
_0222A5B8: .4byte 0x09E1DA9E
_0222A5BC: .4byte 0x3FBF4CC0
_0222A5C0: .4byte 0x265E5A51
_0222A5C4: .4byte 0x16493856
_0222A5C8: .4byte 0x29D0EFA3
_0222A5CC: .4byte 0x02441453
_0222A5D0: .4byte 0x275E197F
_0222A5D4: .4byte 0x182C0438
_0222A5D8: .4byte 0x21E1CDE6
_0222A5DC: .4byte 0x3CC8F82A
_0222A5E0: .4byte 0x0B2AF279
_0222A5E4: .4byte 0x455A14ED
_0222A5E8: .4byte 0x561C16FB
_0222A5EC: .4byte 0x03105C08
_0222A5F0: .4byte 0x676F02D9
_0222A5F4: .4byte 0x72D5B376
_0222A5F8:
	subs r1, r4, r1
	adds r1, r3, r1
	lsls r3, r1, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r3
	adds r1, r1, r2
	adds r3, r1, #0
	eors r3, r2
	adds r4, r5, #0
	eors r4, r3
	ldr r3, [sp, #0x18]
	adds r4, r3, r4
	ldr r3, _0222A968 @ =0x0005C6BE
	subs r3, r4, r3
	adds r0, r0, r3
	lsls r3, r0, #4
	lsrs r0, r0, #0x1c
	orrs r0, r3
	adds r4, r0, r1
	adds r0, r4, #0
	eors r0, r1
	adds r3, r2, #0
	eors r3, r0
	ldr r0, [sp, #0x24]
	adds r3, r0, r3
	ldr r0, _0222A96C @ =0x788E097F
	subs r0, r3, r0
	adds r0, r5, r0
	lsls r3, r0, #0xb
	lsrs r0, r0, #0x15
	orrs r0, r3
	adds r3, r0, r4
	adds r0, r3, #0
	eors r0, r4
	adds r5, r1, #0
	eors r5, r0
	ldr r0, [sp, #0x30]
	adds r5, r0, r5
	ldr r0, _0222A970 @ =0x6D9D6122
	adds r0, r5, r0
	adds r0, r2, r0
	lsls r2, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r2
	adds r0, r0, r3
	adds r2, r0, #0
	eors r2, r3
	adds r5, r4, #0
	eors r5, r2
	ldr r2, [sp, #0x40]
	adds r5, r2, r5
	ldr r2, _0222A974 @ =0x021AC7F4
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0x17
	lsrs r1, r1, #9
	orrs r1, r2
	adds r5, r1, r0
	adds r1, r5, #0
	eors r1, r0
	adds r2, r3, #0
	eors r2, r1
	ldr r1, [sp, #8]
	adds r2, r1, r2
	ldr r1, _0222A978 @ =0x5B4115BC
	subs r1, r2, r1
	adds r1, r4, r1
	lsls r2, r1, #4
	lsrs r1, r1, #0x1c
	orrs r1, r2
	adds r2, r1, r5
	adds r1, r2, #0
	eors r1, r5
	adds r4, r0, #0
	eors r4, r1
	ldr r1, [sp, #0x14]
	adds r4, r1, r4
	ldr r1, _0222A97C @ =0x4BDECFA9
	adds r1, r4, r1
	adds r1, r3, r1
	lsls r3, r1, #0xb
	lsrs r1, r1, #0x15
	orrs r1, r3
	adds r1, r1, r2
	adds r3, r1, #0
	eors r3, r2
	adds r4, r5, #0
	eors r4, r3
	ldr r3, [sp, #0x20]
	adds r4, r3, r4
	ldr r3, _0222A980 @ =0x0944B4A0
	subs r3, r4, r3
	adds r0, r0, r3
	lsls r3, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r3
	adds r4, r0, r1
	adds r0, r4, #0
	eors r0, r1
	adds r3, r2, #0
	eors r3, r0
	ldr r0, [sp, #0x2c]
	adds r3, r0, r3
	ldr r0, _0222A984 @ =0x41404390
	subs r0, r3, r0
	adds r0, r5, r0
	lsls r3, r0, #0x17
	lsrs r0, r0, #9
	orrs r0, r3
	adds r3, r0, r4
	adds r0, r3, #0
	eors r0, r4
	adds r5, r1, #0
	eors r5, r0
	ldr r0, [sp, #0x38]
	adds r5, r0, r5
	ldr r0, _0222A988 @ =0x289B7EC6
	adds r0, r5, r0
	adds r0, r2, r0
	lsls r2, r0, #4
	lsrs r0, r0, #0x1c
	orrs r0, r2
	adds r0, r0, r3
	adds r2, r0, #0
	eors r2, r3
	adds r5, r4, #0
	eors r5, r2
	ldr r2, [sp, #4]
	adds r5, r2, r5
	ldr r2, _0222A98C @ =0x155ED806
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0xb
	lsrs r1, r1, #0x15
	orrs r1, r2
	adds r5, r1, r0
	adds r1, r5, #0
	eors r1, r0
	adds r2, r3, #0
	eors r2, r1
	ldr r1, [sp, #0x10]
	adds r2, r1, r2
	ldr r1, _0222A990 @ =0x2B10CF7B
	subs r1, r2, r1
	adds r1, r4, r1
	lsls r2, r1, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	adds r2, r1, r5
	adds r1, r2, #0
	eors r1, r5
	adds r4, r0, #0
	eors r4, r1
	ldr r1, [sp, #0x1c]
	adds r4, r1, r4
	ldr r1, _0222A994 @ =0x04881D05
	adds r1, r4, r1
	adds r1, r3, r1
	lsls r3, r1, #0x17
	lsrs r1, r1, #9
	orrs r1, r3
	adds r1, r1, r2
	adds r3, r1, #0
	eors r3, r2
	adds r4, r5, #0
	eors r4, r3
	ldr r3, [sp, #0x28]
	adds r4, r3, r4
	ldr r3, _0222A998 @ =0x262B2FC7
	subs r3, r4, r3
	adds r0, r0, r3
	lsls r3, r0, #4
	lsrs r0, r0, #0x1c
	orrs r0, r3
	adds r4, r0, r1
	adds r0, r4, #0
	eors r0, r1
	adds r3, r2, #0
	eors r3, r0
	ldr r0, [sp, #0x34]
	adds r3, r0, r3
	ldr r0, _0222A99C @ =0x1924661B
	subs r0, r3, r0
	adds r0, r5, r0
	lsls r3, r0, #0xb
	lsrs r0, r0, #0x15
	orrs r0, r3
	adds r3, r0, r4
	adds r0, r3, #0
	eors r0, r4
	adds r5, r1, #0
	eors r5, r0
	mov r0, ip
	adds r5, r0, r5
	ldr r0, _0222A9A0 @ =0x1FA27CF8
	adds r0, r5, r0
	adds r0, r2, r0
	lsls r2, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r2
	adds r0, r0, r3
	adds r2, r0, #0
	eors r2, r3
	adds r5, r4, #0
	eors r5, r2
	ldr r2, [sp, #0xc]
	adds r5, r2, r5
	ldr r2, _0222A9A4 @ =0x3B53A99B
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0x17
	lsrs r1, r1, #9
	orrs r1, r2
	adds r5, r1, r0
	mvns r1, r3
	orrs r1, r5
	adds r2, r0, #0
	eors r2, r1
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldr r1, _0222A9A8 @ =0x0BD6DDBC
	subs r1, r2, r1
	adds r1, r4, r1
	lsls r2, r1, #6
	lsrs r1, r1, #0x1a
	orrs r1, r2
	adds r2, r1, r5
	mvns r1, r0
	orrs r1, r2
	adds r4, r5, #0
	eors r4, r1
	ldr r1, [sp, #0x20]
	adds r4, r1, r4
	ldr r1, _0222A9AC @ =0x432AFF97
	adds r1, r4, r1
	adds r1, r3, r1
	lsls r3, r1, #0xa
	lsrs r1, r1, #0x16
	orrs r1, r3
	adds r1, r1, r2
	mvns r3, r5
	orrs r3, r1
	adds r4, r2, #0
	eors r4, r3
	ldr r3, [sp, #0x40]
	adds r4, r3, r4
	ldr r3, _0222A9B0 @ =0x546BDC59
	subs r3, r4, r3
	adds r0, r0, r3
	lsls r3, r0, #0xf
	lsrs r0, r0, #0x11
	orrs r0, r3
	adds r4, r0, r1
	mvns r0, r2
	orrs r0, r4
	adds r3, r1, #0
	eors r3, r0
	ldr r0, [sp, #0x18]
	adds r3, r0, r3
	ldr r0, _0222A9B4 @ =0x036C5FC7
	subs r0, r3, r0
	adds r0, r5, r0
	lsls r3, r0, #0x15
	lsrs r0, r0, #0xb
	orrs r0, r3
	adds r3, r0, r4
	mvns r0, r1
	orrs r0, r3
	adds r5, r4, #0
	eors r5, r0
	ldr r0, [sp, #0x34]
	adds r5, r0, r5
	ldr r0, _0222A9B8 @ =0x655B59C3
	adds r0, r5, r0
	adds r0, r2, r0
	lsls r2, r0, #6
	lsrs r0, r0, #0x1a
	orrs r0, r2
	adds r0, r0, r3
	mvns r2, r4
	orrs r2, r0
	adds r5, r3, #0
	eors r5, r2
	ldr r2, [sp, #0x10]
	adds r5, r2, r5
	ldr r2, _0222A9BC @ =0x70F3336E
	subs r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0xa
	lsrs r1, r1, #0x16
	orrs r1, r2
	adds r5, r1, r0
	mvns r1, r3
	orrs r1, r5
	adds r2, r0, #0
	eors r2, r1
	ldr r1, [sp, #0x2c]
	adds r2, r1, r2
	ldr r1, _0222A9C0 @ =0x00100B83
	subs r1, r2, r1
	adds r1, r4, r1
	lsls r2, r1, #0xf
	lsrs r1, r1, #0x11
	orrs r1, r2
	adds r2, r1, r5
	mvns r1, r0
	orrs r1, r2
	adds r4, r5, #0
	eors r4, r1
	ldr r1, [sp, #8]
	adds r4, r1, r4
	ldr r1, _0222A9C4 @ =0x7A7BA22F
	subs r1, r4, r1
	adds r1, r3, r1
	lsls r3, r1, #0x15
	lsrs r1, r1, #0xb
	orrs r1, r3
	adds r1, r1, r2
	mvns r3, r5
	orrs r3, r1
	adds r4, r2, #0
	eors r4, r3
	ldr r3, [sp, #0x24]
	adds r4, r3, r4
	ldr r3, _0222A9C8 @ =0x6FA87E4F
	adds r3, r4, r3
	adds r0, r0, r3
	lsls r3, r0, #6
	lsrs r0, r0, #0x1a
	orrs r0, r3
	adds r3, r0, r1
	mvns r0, r2
	orrs r0, r3
	eors r0, r1
	mov r4, ip
	adds r4, r4, r0
	ldr r0, _0222A9CC @ =0x01D31920
	subs r0, r4, r0
	adds r0, r5, r0
	lsls r4, r0, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r4
	adds r0, r0, r3
	mvns r4, r1
	orrs r4, r0
	adds r5, r3, #0
	eors r5, r4
	ldr r4, [sp, #0x1c]
	adds r5, r4, r5
	ldr r4, _0222A9D0 @ =0x5CFEBCEC
	subs r4, r5, r4
	adds r2, r2, r4
	lsls r4, r2, #0xf
	lsrs r2, r2, #0x11
	orrs r2, r4
	adds r4, r2, r0
	mvns r2, r3
	orrs r2, r4
	adds r5, r0, #0
	eors r5, r2
	ldr r2, [sp, #0x38]
	adds r5, r2, r5
	ldr r2, _0222A9D4 @ =0x4E0811A1
	adds r2, r5, r2
	adds r1, r1, r2
	lsls r2, r1, #0x15
	lsrs r1, r1, #0xb
	orrs r1, r2
	adds r2, r1, r4
	mvns r1, r0
	orrs r1, r2
	adds r5, r4, #0
	eors r5, r1
	ldr r1, [sp, #0x14]
	adds r5, r1, r5
	ldr r1, _0222A9D8 @ =0x08AC817E
	subs r1, r5, r1
	adds r1, r3, r1
	lsls r3, r1, #6
	lsrs r1, r1, #0x1a
	orrs r1, r3
	adds r1, r1, r2
	mvns r3, r4
	orrs r3, r1
	adds r5, r2, #0
	eors r5, r3
	ldr r3, [sp, #0x30]
	adds r5, r3, r5
	ldr r3, _0222A9DC @ =0x42C50DCB
	subs r3, r5, r3
	adds r0, r0, r3
	lsls r3, r0, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r3
	adds r5, r0, r1
	mvns r0, r2
	orrs r0, r5
	adds r3, r1, #0
	eors r3, r0
	ldr r0, [sp, #0xc]
	adds r3, r0, r3
	ldr r0, _0222A9E0 @ =0x2AD7D2BB
	adds r0, r3, r0
	adds r0, r4, r0
	lsls r3, r0, #0xf
	lsrs r0, r0, #0x11
	orrs r0, r3
	adds r3, r0, r5
	mvns r0, r1
	orrs r0, r3
	adds r4, r5, #0
	eors r4, r0
	ldr r0, [sp, #0x28]
	adds r4, r0, r4
	ldr r0, _0222A9E4 @ =0x14792C6F
	subs r0, r4, r0
	adds r0, r2, r0
	lsls r2, r0, #0x15
	lsrs r0, r0, #0xb
	orrs r0, r2
	ldr r2, [r7]
	adds r0, r0, r3
	adds r1, r2, r1
	str r1, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x40
	adds r0, r1, r0
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	movs r1, #0
	adds r0, r0, r3
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	adds r0, r0, r5
	str r0, [r7, #0xc]
	add r0, sp, #0x44
	bl ov18_0222AA58
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222A968: .4byte 0x0005C6BE
_0222A96C: .4byte 0x788E097F
_0222A970: .4byte 0x6D9D6122
_0222A974: .4byte 0x021AC7F4
_0222A978: .4byte 0x5B4115BC
_0222A97C: .4byte 0x4BDECFA9
_0222A980: .4byte 0x0944B4A0
_0222A984: .4byte 0x41404390
_0222A988: .4byte 0x289B7EC6
_0222A98C: .4byte 0x155ED806
_0222A990: .4byte 0x2B10CF7B
_0222A994: .4byte 0x04881D05
_0222A998: .4byte 0x262B2FC7
_0222A99C: .4byte 0x1924661B
_0222A9A0: .4byte 0x1FA27CF8
_0222A9A4: .4byte 0x3B53A99B
_0222A9A8: .4byte 0x0BD6DDBC
_0222A9AC: .4byte 0x432AFF97
_0222A9B0: .4byte 0x546BDC59
_0222A9B4: .4byte 0x036C5FC7
_0222A9B8: .4byte 0x655B59C3
_0222A9BC: .4byte 0x70F3336E
_0222A9C0: .4byte 0x00100B83
_0222A9C4: .4byte 0x7A7BA22F
_0222A9C8: .4byte 0x6FA87E4F
_0222A9CC: .4byte 0x01D31920
_0222A9D0: .4byte 0x5CFEBCEC
_0222A9D4: .4byte 0x4E0811A1
_0222A9D8: .4byte 0x08AC817E
_0222A9DC: .4byte 0x42C50DCB
_0222A9E0: .4byte 0x2AD7D2BB
_0222A9E4: .4byte 0x14792C6F
	thumb_func_end ov18_0222A1A0

	thumb_func_start ov18_0222A9E8
ov18_0222A9E8: @ 0x0222A9E8
	push {r4, r5}
	movs r4, #0
	cmp r2, #0
	bls _0222AA10
_0222A9F0:
	ldr r5, [r1]
	adds r3, r0, r4
	strb r5, [r0, r4]
	ldr r5, [r1]
	adds r4, r4, #4
	lsrs r5, r5, #8
	strb r5, [r3, #1]
	ldr r5, [r1]
	lsrs r5, r5, #0x10
	strb r5, [r3, #2]
	ldr r5, [r1]
	adds r1, r1, #4
	lsrs r5, r5, #0x18
	strb r5, [r3, #3]
	cmp r4, r2
	blo _0222A9F0
_0222AA10:
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222A9E8

	thumb_func_start ov18_0222AA14
ov18_0222AA14: @ 0x0222AA14
	push {r4, r5, r6, r7}
	movs r7, #0
	cmp r2, #0
	bls _0222AA3A
_0222AA1C:
	adds r6, r1, r7
	ldrb r3, [r6, #3]
	lsls r5, r3, #0x18
	ldrb r3, [r6, #2]
	ldrb r6, [r6, #1]
	lsls r4, r3, #0x10
	ldrb r3, [r1, r7]
	lsls r6, r6, #8
	adds r7, r7, #4
	orrs r3, r6
	orrs r3, r4
	orrs r3, r5
	stm r0!, {r3}
	cmp r7, r2
	blo _0222AA1C
_0222AA3A:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov18_0222AA14

	thumb_func_start ov18_0222AA40
ov18_0222AA40: @ 0x0222AA40
	push {r3, r4}
	movs r4, #0
	cmp r2, #0
	bls _0222AA52
_0222AA48:
	ldrb r3, [r1, r4]
	strb r3, [r0, r4]
	adds r4, r4, #1
	cmp r4, r2
	blo _0222AA48
_0222AA52:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov18_0222AA40

	thumb_func_start ov18_0222AA58
ov18_0222AA58: @ 0x0222AA58
	movs r3, #0
	cmp r2, #0
	bls _0222AA6C
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
_0222AA62:
	adds r3, r3, #1
	strb r1, [r0]
	adds r0, r0, #1
	cmp r3, r2
	blo _0222AA62
_0222AA6C:
	bx lr
	.align 2, 0
	thumb_func_end ov18_0222AA58

	thumb_func_start ov18_0222AA70
ov18_0222AA70: @ 0x0222AA70
	push {r4, r5, r6, lr}
	sub sp, #0x58
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	add r0, sp, #0
	bl ov18_0222A0AC
	add r0, sp, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov18_0222A0D4
	adds r0, r5, #0
	add r1, sp, #0
	bl ov18_0222A14C
	add sp, #0x58
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov18_0222AA70

	thumb_func_start ov18_0222AA98
ov18_0222AA98: @ 0x0222AA98
	push {r3, lr}
	blx FUN_020C3880
	lsrs r2, r0, #0x1a
	lsls r1, r1, #6
	orrs r1, r2
	ldr r2, _0222AAB0 @ =0x000082EA
	lsls r0, r0, #6
	movs r3, #0
	blx FUN_020E1ED4
	pop {r3, pc}
	.align 2, 0
_0222AAB0: .4byte 0x000082EA
	thumb_func_end ov18_0222AA98

	thumb_func_start ov18_0222AAB4
ov18_0222AAB4: @ 0x0222AAB4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r1, _0222AAD4 @ =0x02251D10
	adds r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	adds r5, r0, #0
	beq _0222AACE
	movs r1, #0
	adds r2, r4, #0
	blx FUN_020D5124
_0222AACE:
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0222AAD4: .4byte 0x02251D10
	thumb_func_end ov18_0222AAB4

	thumb_func_start ov18_0222AAD8
ov18_0222AAD8: @ 0x0222AAD8
	push {r3, lr}
	ldr r1, _0222AAE4 @ =0x02251D10
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	nop
_0222AAE4: .4byte 0x02251D10
	thumb_func_end ov18_0222AAD8

	thumb_func_start ov18_0222AAE8
ov18_0222AAE8: @ 0x0222AAE8
	push {r4, r5}
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r1, #0xf0
	ands r1, r3
	asrs r5, r1, #4
	movs r1, #0xf
	adds r2, r0, #0
	movs r4, #0
	ands r1, r3
_0222AAFC:
	cmp r5, #9
	bgt _0222AB04
	adds r5, #0x30
	b _0222AB06
_0222AB04:
	adds r5, #0x37
_0222AB06:
	adds r4, r4, #1
	strb r5, [r2]
	adds r2, r2, #1
	adds r5, r1, #0
	cmp r4, #2
	blt _0222AAFC
	movs r1, #0
	strb r1, [r2]
	subs r0, r2, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222AAE8

	thumb_func_start ov18_0222AB1C
ov18_0222AB1C: @ 0x0222AB1C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r6, r1, #0
	adds r4, r0, #0
	movs r5, #0
	movs r7, #0x3a
_0222AB28:
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r0, r4, #0
	adds r6, r6, #1
	bl ov18_0222AAE8
	adds r0, r4, r0
	adds r4, r0, #0
	cmp r5, #5
	bge _0222AB40
	adds r4, r0, #1
	strb r7, [r0]
_0222AB40:
	adds r5, r5, #1
	cmp r5, #6
	blt _0222AB28
	movs r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	subs r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_0222AB1C

	thumb_func_start ov18_0222AB50
ov18_0222AB50: @ 0x0222AB50
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0222AC20 @ =0x02251D10
	ldr r0, [r0, #0x38]
	cmp r0, #1
	blt _0222AB6A
	cmp r0, #5
	bgt _0222AB6A
	movs r0, #9
	add sp, #8
	mvns r0, r0
	pop {r4, r5, r6, pc}
_0222AB6A:
	ldr r5, _0222AC24 @ =0x02249838
	ldr r0, _0222AC20 @ =0x02251D10
	movs r6, #7
	str r1, [r5, #0x10]
	str r6, [r0, #0x38]
	str r2, [r0, #0x7c]
	ldr r2, [sp, #0x18]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #8]
	adds r0, r1, #0
	bl ov18_02227CBC
	movs r2, #1
	ldr r1, _0222AC20 @ =0x02251D10
	cmp r0, #0
	str r2, [r1, #0x74]
	bge _0222AB96
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222AB96:
	adds r0, r5, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	blx r1
	ldr r1, _0222AC20 @ =0x02251D10
	cmp r0, #0
	str r0, [r1, #0x30]
	bne _0222ABB0
	adds r0, r6, #0
	subs r0, #8
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222ABB0:
	blx FUN_020C1F24
	cmp r0, #1
	beq _0222ABC4
	adds r0, r6, #0
	ldr r1, _0222AC20 @ =0x02251D10
	subs r0, #0x10
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222ABC4:
	adds r0, r5, #0
	ldr r3, [r0, #8]
	ldr r0, _0222AC28 @ =0x02251DBC
	str r3, [sp]
	str r4, [sp, #4]
	ldr r4, _0222AC20 @ =0x02251D10
	ldr r1, _0222AC2C @ =ov18_022290FC
	ldr r5, [r4, #0x30]
	movs r4, #7
	bics r3, r4
	movs r2, #0
	adds r3, r5, r3
	blx FUN_020C1F34
	ldr r0, _0222AC20 @ =0x02251D10
	movs r1, #1
	str r1, [r0, #0x38]
	bl ov18_0222AA98
	ldr r1, _0222AC30 @ =0x0000EA60
	ldr r5, _0222AC34 @ =0x02251E7C
	adds r1, r0, r1
	ldr r0, _0222AC24 @ =0x02249838
	adds r4, r6, #0
	str r1, [r0, #0xc]
	movs r0, #0
	ldr r1, _0222AC20 @ =0x02251D10
	adds r2, r0, #0
	str r0, [r1, #0x10]
	adds r1, r0, #0
	adds r3, r0, #0
_0222AC02:
	stm r5!, {r0, r1, r2, r3}
	stm r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0222AC02
	stm r5!, {r0, r1}
	bl ov18_0222AD18
	ldr r0, _0222AC28 @ =0x02251DBC
	blx FUN_020C22D0
	ldr r1, _0222AC20 @ =0x02251D10
	movs r0, #1
	str r0, [r1, #0x64]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222AC20: .4byte 0x02251D10
_0222AC24: .4byte 0x02249838
_0222AC28: .4byte 0x02251DBC
_0222AC2C: .4byte ov18_022290FC
_0222AC30: .4byte 0x0000EA60
_0222AC34: .4byte 0x02251E7C
	thumb_func_end ov18_0222AB50

	thumb_func_start ov18_0222AC38
ov18_0222AC38: @ 0x0222AC38
	push {r4, r5, r6, lr}
	ldr r4, _0222ACC4 @ =0x02251D10
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0222ACA8
	ldr r6, [r4, #0x38]
	movs r0, #1
	str r0, [r4, #0x10]
	movs r5, #0x64
	b _0222AC52
_0222AC4C:
	adds r0, r5, #0
	blx FUN_020C24A4
_0222AC52:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	blt _0222AC5C
	cmp r0, #5
	ble _0222AC4C
_0222AC5C:
	movs r0, #0x7d
	lsls r0, r0, #2
	blx FUN_020C24A4
	ldr r0, _0222ACC8 @ =0x02251DBC
	blx FUN_020C2204
	cmp r0, #0
	bne _0222AC86
	ldr r4, _0222ACC8 @ =0x02251DBC
_0222AC70:
	adds r0, r4, #0
	blx FUN_020C22D0
	adds r0, r4, #0
	blx FUN_020C21D4
	adds r0, r4, #0
	blx FUN_020C2204
	cmp r0, #0
	beq _0222AC70
_0222AC86:
	ldr r1, _0222ACC4 @ =0x02251D10
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0222AC98
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _0222ACC4 @ =0x02251D10
	movs r1, #0
	str r1, [r0, #0x30]
_0222AC98:
	ldr r0, _0222ACC4 @ =0x02251D10
	movs r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x38]
	cmp r6, r0
	beq _0222ACA8
	bl ov18_0222AD18
_0222ACA8:
	ldr r0, _0222ACC4 @ =0x02251D10
	ldr r0, [r0, #0x74]
	cmp r0, #0
	ble _0222ACBC
	bl ov18_02227D60
	ldr r1, _0222ACC4 @ =0x02251D10
	movs r2, #0
	str r2, [r1, #0x74]
	pop {r4, r5, r6, pc}
_0222ACBC:
	movs r0, #9
	mvns r0, r0
	pop {r4, r5, r6, pc}
	nop
_0222ACC4: .4byte 0x02251D10
_0222ACC8: .4byte 0x02251DBC
	thumb_func_end ov18_0222AC38

	thumb_func_start ov18_0222ACCC
ov18_0222ACCC: @ 0x0222ACCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222ACFC @ =0x02251D10
	ldr r0, [r0, #0x38]
	str r0, [r4]
	ldr r0, _0222AD00 @ =0x02249838
	ldr r1, [r0, #0xc]
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _0222ACE4
	b _0222ACEE
_0222ACE4:
	bl ov18_0222AA98
	ldr r1, _0222AD00 @ =0x02249838
	ldr r1, [r1, #0xc]
	subs r0, r1, r0
_0222ACEE:
	str r0, [r4, #4]
	ldr r0, _0222ACFC @ =0x02251D10
	ldr r0, [r0, #0x78]
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	nop
_0222ACFC: .4byte 0x02251D10
_0222AD00: .4byte 0x02249838
	thumb_func_end ov18_0222ACCC

	thumb_func_start ov18_0222AD04
ov18_0222AD04: @ 0x0222AD04
	push {r3, lr}
	ldr r1, _0222AD14 @ =0x02251E7C
	movs r2, #0xe8
	blx FUN_020D50B8
	movs r0, #1
	pop {r3, pc}
	nop
_0222AD14: .4byte 0x02251E7C
	thumb_func_end ov18_0222AD04

	thumb_func_start ov18_0222AD18
ov18_0222AD18: @ 0x0222AD18
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl ov18_0222ACCC
	ldr r1, _0222AD30 @ =0x02251D10
	add r0, sp, #0
	ldr r1, [r1, #0x7c]
	blx r1
	add sp, #0xc
	pop {pc}
	nop
_0222AD30: .4byte 0x02251D10
	thumb_func_end ov18_0222AD18

	arm_func_start ov18_0222AD34
ov18_0222AD34: @ 0x0222AD34
	push {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0xc
	mov r1, #4
	bl ov18_02245068
	ldr r2, _0222ADF4 @ =0x02253244
	mov r1, #0x47
	str r0, [r2]
	strb r4, [r0, #8]
	mov r0, #0
	bl ov18_02243F60
	ldr lr, _0222ADF4 @ =0x02253244
	ldr r1, _0222ADF8 @ =0x02248C8C
	ldr r2, [lr]
	ldrb r4, [r1, r4]
	str r0, [r2, #4]
	ldr r0, [lr]
	ldr ip, _0222ADFC @ =0xFE00FF00
	ldr r5, [r0, #4]
	ldr r1, _0222AE00 @ =ov18_0222AE40
	ldrh r3, [r5, #4]
	mov r0, #1
	mov r2, #0
	bic r3, r3, #0xc00
	orr r3, r3, #0x400
	strh r3, [r5, #4]
	ldr r5, [lr]
	mov r3, #0x78
	ldr r6, [r5, #4]
	ldr r5, [r6]
	bic r5, r5, #0xc00
	str r5, [r6]
	ldrh r5, [r6, #4]
	bic r5, r5, #0xf000
	orr r4, r5, r4, lsl #12
	strh r4, [r6, #4]
	ldr r4, [lr]
	ldr r4, [r4, #4]
	ldr lr, [r4]
	and ip, lr, ip
	orr ip, ip, #0x8b
	orr ip, ip, #0xe60000
	str ip, [r4]
	bl ov18_02246304
	ldr r1, _0222ADF4 @ =0x02253244
	ldr r1, [r1]
	str r0, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222ADF4: .4byte 0x02253244
_0222ADF8: .4byte 0x02248C8C
_0222ADFC: .4byte 0xFE00FF00
_0222AE00: .4byte ov18_0222AE40
	arm_func_end ov18_0222AD34

	arm_func_start ov18_0222AE04
ov18_0222AE04: @ 0x0222AE04
	push {r3, lr}
	ldr r1, _0222AE38 @ =0x02253244
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1]
	bl ov18_022463CC
	ldr r0, _0222AE38 @ =0x02253244
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov18_02245B74
	ldr r0, _0222AE3C @ =0x02253244
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0222AE38: .4byte 0x02253244
_0222AE3C: .4byte 0x02253244
	arm_func_end ov18_0222AE04

	arm_func_start ov18_0222AE40
ov18_0222AE40: @ 0x0222AE40
	push {r3, lr}
	ldr r0, _0222AF00 @ =0x02253244
	mov r1, #0x28
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	add r0, r0, #1
	bl FUN_020BD140
	ldr r2, _0222AF00 @ =0x02253244
	mov r1, #5
	ldr r3, [r2]
	strb r0, [r3, #9]
	ldr r0, [r2]
	ldrb r0, [r0, #9]
	bl FUN_020BD104
	ldr r2, _0222AF00 @ =0x02253244
	add r1, r0, #0x47
	ldr r2, [r2]
	mov r0, #0
	ldr r2, [r2, #4]
	bl ov18_02243ECC
	ldr r1, _0222AF00 @ =0x02253244
	ldr ip, _0222AF04 @ =0x02248C8C
	ldr r2, [r1]
	ldr r0, _0222AF08 @ =0xFE00FF00
	ldr r3, [r2, #4]
	ldrh r2, [r3, #4]
	bic r2, r2, #0xc00
	orr r2, r2, #0x400
	strh r2, [r3, #4]
	ldr r2, [r1]
	ldrb lr, [r2, #8]
	ldr r3, [r2, #4]
	ldr r2, [r3]
	ldrb ip, [ip, lr]
	bic r2, r2, #0xc00
	str r2, [r3]
	ldrh r2, [r3, #4]
	bic r2, r2, #0xf000
	orr r2, r2, ip, lsl #12
	strh r2, [r3, #4]
	ldr r1, [r1]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x8b
	orr r0, r0, #0xe60000
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_0222AF00: .4byte 0x02253244
_0222AF04: .4byte 0x02248C8C
_0222AF08: .4byte 0xFE00FF00
	arm_func_end ov18_0222AE40

	arm_func_start ov18_0222AF0C
ov18_0222AF0C: @ 0x0222AF0C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _0222AFF4 @ =0x02248CBC
	mov r5, r0
	mov r0, #0x1c
	mov r1, #4
	ldrb r8, [r2, r5]
	bl ov18_02245068
	ldr r4, _0222AFF8 @ =0x02253248
	mvn r7, #1
	str r0, [r4]
	strb r7, [r0, #0x16]
	ldr r0, [r4]
	cmp r8, #0
	strb r5, [r0, #0x17]
	mov sb, #0
	ble _0222AF98
	ldr r0, _0222AFFC @ =0x02248CA0
	mov r6, sb
	add sl, r0, r5, lsl #1
	mov r5, #1
	mov fp, r5
_0222AF60:
	ldrb r1, [sl], #1
	mov r0, r6
	mov r2, r5
	bl ov18_02243F8C
	ldr r1, [r4]
	mov r2, fp
	str r0, [r1, sb, lsl #2]
	ldr r0, [r4]
	add r1, r7, #1
	ldr r0, [r0, sb, lsl #2]
	bl ov18_02243DE4
	add sb, sb, #1
	cmp sb, r8
	blt _0222AF60
_0222AF98:
	mov r1, #1
	mov r2, r1
	mov r0, #0
	bl ov18_02243F8C
	ldr r3, _0222AFF8 @ =0x02253248
	mvn r1, #0
	ldr r4, [r3]
	mov r2, #1
	str r0, [r4, #8]
	ldr r0, [r3]
	ldr r0, [r0, #8]
	bl ov18_02243DE4
	mov r0, #0xc0
	bl ov18_0222B0D8
	mov r0, #0
	ldr r1, _0222B000 @ =ov18_0222B16C
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0222AFF8 @ =0x02253248
	ldr r1, [r1]
	str r0, [r1, #0xc]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222AFF4: .4byte 0x02248CBC
_0222AFF8: .4byte 0x02253248
_0222AFFC: .4byte 0x02248CA0
_0222B000: .4byte ov18_0222B16C
	arm_func_end ov18_0222AF0C

	arm_func_start ov18_0222B004
ov18_0222B004: @ 0x0222B004
	ldr r0, _0222B028 @ =0x02253248
	mov r3, #1
	ldr r2, [r0]
	ldr ip, _0222B02C @ =ov18_022463A4
	strb r3, [r2, #0x19]
	ldr r0, [r0]
	ldr r1, _0222B030 @ =ov18_0222B3B4
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_0222B028: .4byte 0x02253248
_0222B02C: .4byte ov18_022463A4
_0222B030: .4byte ov18_0222B3B4
	arm_func_end ov18_0222B004

	arm_func_start ov18_0222B034
ov18_0222B034: @ 0x0222B034
	ldr r0, _0222B044 @ =0x02253248
	ldr r0, [r0]
	ldrsb r0, [r0, #0x16]
	bx lr
	.align 2, 0
_0222B044: .4byte 0x02253248
	arm_func_end ov18_0222B034

	arm_func_start ov18_0222B048
ov18_0222B048: @ 0x0222B048
	ldr r2, _0222B064 @ =0x02253248
	mvn r1, #0
	ldr r3, [r2]
	ldrsb r2, [r3, #0x16]
	cmp r2, r1
	strbeq r0, [r3, #0x16]
	bx lr
	.align 2, 0
_0222B064: .4byte 0x02253248
	arm_func_end ov18_0222B048

	arm_func_start ov18_0222B068
ov18_0222B068: @ 0x0222B068
	ldr r1, _0222B078 @ =0x02253248
	ldr r1, [r1]
	strb r0, [r1, #0x16]
	bx lr
	.align 2, 0
_0222B078: .4byte 0x02253248
	arm_func_end ov18_0222B068

	arm_func_start ov18_0222B07C
ov18_0222B07C: @ 0x0222B07C
	ldr r0, _0222B0A4 @ =0x02253248
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_0222B0A4: .4byte 0x02253248
	arm_func_end ov18_0222B07C

	arm_func_start ov18_0222B0A8
ov18_0222B0A8: @ 0x0222B0A8
	ldr r0, _0222B0BC @ =0x02253248
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0222B0BC: .4byte 0x02253248
	arm_func_end ov18_0222B0A8

	arm_func_start ov18_0222B0C0
ov18_0222B0C0: @ 0x0222B0C0
	ldr r0, _0222B0D4 @ =0x02253248
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0222B0D4: .4byte 0x02253248
	arm_func_end ov18_0222B0C0

	arm_func_start ov18_0222B0D8
ov18_0222B0D8: @ 0x0222B0D8
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _0222B15C @ =0x02253248
	mov r8, r0
	ldr r0, [r1]
	ldr r1, _0222B160 @ =0x02248CBC
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, #8]
	mov r3, r8
	ldrb r6, [r1, r2]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243CF4
	mov r7, #0
	cmp r6, #0
	pople {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, _0222B164 @ =0x02248CAE
	ldr sl, _0222B168 @ =0x02248C98
	ldr sb, _0222B15C @ =0x02253248
	mvn r5, #0
_0222B124:
	ldr r0, [sb]
	mov r1, r5
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, r7, lsl #2]
	add r3, r8, #4
	add r2, r4, r2, lsl #1
	ldrb r2, [r7, r2]
	lsl r2, r2, #2
	ldrh r2, [sl, r2]
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, r6
	blt _0222B124
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0222B15C: .4byte 0x02253248
_0222B160: .4byte 0x02248CBC
_0222B164: .4byte 0x02248CAE
_0222B168: .4byte 0x02248C98
	arm_func_end ov18_0222B0D8

	arm_func_start ov18_0222B16C
ov18_0222B16C: @ 0x0222B16C
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222B1D0 @ =0x02253248
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	sub r0, r0, #4
	str r0, [sp]
	bl ov18_0222B0D8
	ldr r0, [sp]
	cmp r0, #0xa8
	addgt sp, sp, #8
	popgt {r4, pc}
	mov r0, #0xa8
	bl ov18_0222B0D8
	ldr r1, _0222B1D4 @ =ov18_0222B1D8
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222B1D0: .4byte 0x02253248
_0222B1D4: .4byte ov18_0222B1D8
	arm_func_end ov18_0222B16C

	arm_func_start ov18_0222B1D8
ov18_0222B1D8: @ 0x0222B1D8
	push {r3, lr}
	ldr r1, _0222B220 @ =0x02253248
	mvn r3, #0
	ldr r2, [r1]
	strb r3, [r2, #0x16]
	ldr r3, [r1]
	ldrh r2, [r3, #0x14]
	add r2, r2, #1
	strh r2, [r3, #0x14]
	ldr r3, [r1]
	ldrh r1, [r3, #0x14]
	cmp r1, #4
	poplo {r3, pc}
	ldr r1, _0222B224 @ =ov18_0222B228
	mov r2, #0
	strh r2, [r3, #0x14]
	bl ov18_022463A4
	pop {r3, pc}
	.align 2, 0
_0222B220: .4byte 0x02253248
_0222B224: .4byte ov18_0222B228
	arm_func_end ov18_0222B1D8

	arm_func_start ov18_0222B228
ov18_0222B228: @ 0x0222B228
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r8, _0222B394 @ =0x02253248
	ldr r1, _0222B398 @ =0x02248CBC
	ldr r3, [r8]
	ldrb r2, [r3, #0x17]
	ldrb r0, [r3, #0x18]
	ldrb r6, [r1, r2]
	cmp r0, #0
	bne _0222B37C
	ldrsb r1, [r3, #0x16]
	mvn r0, #0
	cmp r1, r0
	addne sp, sp, #8
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r6, #0
	mov r7, #0
	ble _0222B37C
	ldr r5, _0222B39C @ =0x02248C98
	ldr r4, _0222B3A0 @ =0x02248CAE
	ldr sl, _0222B3A4 @ =0x02248C94
	add sb, sp, #0
_0222B280:
	ldr r0, [r8]
	mov r1, sl
	ldrb r0, [r0, #0x17]
	mov r2, sb
	add r0, r4, r0, lsl #1
	ldrb r0, [r7, r0]
	add r0, r5, r0, lsl #2
	bl ov18_02244C50
	mov r0, sb
	bl ov18_022455B8
	cmp r0, #0
	beq _0222B370
	ldr r0, _0222B394 @ =0x02253248
	ldr r3, [r0]
	ldr r0, [r3, #0x10]
	cmp r0, #0
	bne _0222B37C
	ldrb r2, [r3, #0x17]
	ldr r1, _0222B3A8 @ =0x02248CA0
	ldr r0, [r3, r7, lsl #2]
	add r1, r1, r2, lsl #1
	ldrb r4, [r7, r1]
	mov r1, #0
	bl ov18_02243BBC
	mov r2, r0
	add r1, r4, #1
	mov r0, #0
	bl ov18_02243ECC
	ldr r0, _0222B394 @ =0x02253248
	ldr r1, _0222B3A0 @ =0x02248CAE
	ldr r0, [r0]
	ldr r2, _0222B39C @ =0x02248C98
	ldrb r4, [r0, #0x17]
	ldr r3, _0222B3AC @ =0x02248C9A
	ldr r0, [r0, r7, lsl #2]
	add r1, r1, r4, lsl #1
	ldrb r4, [r7, r1]
	mvn r1, #0
	lsl r4, r4, #2
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl ov18_02243CF4
	ldr r0, _0222B394 @ =0x02253248
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #1
	ldr r0, [r0, r7, lsl #2]
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0222B3B0 @ =ov18_0222B490
	mov r2, r0
	mov r3, #0x6e
	bl ov18_02246304
	ldr r1, _0222B394 @ =0x02253248
	add sp, sp, #8
	ldr r2, [r1]
	str r0, [r2, #0x10]
	ldr r0, [r1]
	strb r7, [r0, #0x16]
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_0222B370:
	add r7, r7, #1
	cmp r7, r6
	blt _0222B280
_0222B37C:
	ldr r0, _0222B394 @ =0x02253248
	mvn r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x16]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0222B394: .4byte 0x02253248
_0222B398: .4byte 0x02248CBC
_0222B39C: .4byte 0x02248C98
_0222B3A0: .4byte 0x02248CAE
_0222B3A4: .4byte 0x02248C94
_0222B3A8: .4byte 0x02248CA0
_0222B3AC: .4byte 0x02248C9A
_0222B3B0: .4byte ov18_0222B490
	arm_func_end ov18_0222B228

	arm_func_start ov18_0222B3B4
ov18_0222B3B4: @ 0x0222B3B4
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222B410 @ =0x02253248
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	bl ov18_0222B0D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222B414 @ =ov18_0222B418
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222B410: .4byte 0x02253248
_0222B414: .4byte ov18_0222B418
	arm_func_end ov18_0222B3B4

	arm_func_start ov18_0222B418
ov18_0222B418: @ 0x0222B418
	push {r3, r4, r5, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	ldr r0, _0222B488 @ =0x02253248
	ldr r0, [r0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0222B444
	mov r0, #0
	bl ov18_022463AC
_0222B444:
	ldr r4, _0222B488 @ =0x02253248
	mov r5, #0
_0222B44C:
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _0222B460
	bl ov18_02243B3C
_0222B460:
	add r5, r5, #1
	cmp r5, #2
	blt _0222B44C
	ldr r0, _0222B488 @ =0x02253248
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl ov18_02243B3C
	ldr r0, _0222B48C @ =0x02253248
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222B488: .4byte 0x02253248
_0222B48C: .4byte 0x02253248
	arm_func_end ov18_0222B418

	arm_func_start ov18_0222B490
ov18_0222B490: @ 0x0222B490
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _0222B574 @ =0x02253248
	str r0, [sp]
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	add r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	cmp r0, #0x10
	poplo {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r1, #0x17]
	ldr r0, _0222B578 @ =0x02248CBC
	mov sb, #0
	ldrb r8, [r0, r1]
	cmp r8, #0
	ble _0222B530
	ldr r7, _0222B57C @ =0x02248CA0
	mov r6, sb
	mov fp, sb
	mvn r5, #0
_0222B4E4:
	ldr r0, [r4]
	mov r1, r6
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, sb, lsl #2]
	add r2, r7, r2, lsl #1
	ldrb sl, [sb, r2]
	bl ov18_02243BBC
	mov r2, r0
	mov r1, sl
	mov r0, fp
	bl ov18_02243ECC
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, sb, lsl #2]
	mov r2, #1
	bl ov18_02243DE4
	add sb, sb, #1
	cmp sb, r8
	blt _0222B4E4
_0222B530:
	mov r0, #0xa8
	bl ov18_0222B0D8
	ldr r1, _0222B574 @ =0x02253248
	mov r0, #0
	ldr r2, [r1]
	sub r3, r0, #1
	strh r0, [r2, #0x14]
	ldr r2, [r1]
	strb r3, [r2, #0x16]
	ldr r2, [r1]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp]
	str r0, [r2, #0x10]
	bl ov18_022463AC
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222B574: .4byte 0x02253248
_0222B578: .4byte 0x02248CBC
_0222B57C: .4byte 0x02248CA0
	arm_func_end ov18_0222B490

	arm_func_start ov18_0222B580
ov18_0222B580: @ 0x0222B580
	ldr r0, _0222B590 @ =0x0225324C
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0222B590: .4byte 0x0225324C
	arm_func_end ov18_0222B580

	arm_func_start ov18_0222B594
ov18_0222B594: @ 0x0222B594
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r3, _0222B650 @ =0x0225324C
	mov r7, r0
	ldrb r0, [r3]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222B654 @ =0x02249900
	ldr r1, _0222B658 @ =0x020C03CC
	bl ov18_0222B700
	ldr r3, _0222B65C @ =0x01920000
	ldr r2, _0222B660 @ =0x04001010
	mov r0, #1
	mov r1, #0
	str r3, [r2]
	bl ov18_0224467C
	ldr r1, _0222B664 @ =0x022532D8
	mov r4, r0
	ldr r0, [r1]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl ov18_0222F8D0
	mov r5, r0
	bl ov18_0222B8F8
	mov r1, #0x40
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r4
	mov r1, #0x14
	mov r2, #0
	mov r3, #0xd8
	bl ov18_02244A9C
	mov r0, r4
	bl ov18_02244C08
	mov r0, #1
	ldr r1, _0222B650 @ =0x0225324C
	strb r0, [r1]
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B650: .4byte 0x0225324C
_0222B654: .4byte 0x02249900
_0222B658: .4byte 0x020C03CC
_0222B65C: .4byte 0x01920000
_0222B660: .4byte 0x04001010
_0222B664: .4byte 0x022532D8
	arm_func_end ov18_0222B594

	arm_func_start ov18_0222B668
ov18_0222B668: @ 0x0222B668
	push {r3, lr}
	ldr r0, _0222B69C @ =0x0225324C
	ldrb r0, [r0]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	mov r0, #1
	bl ov18_022448E0
	ldr r0, _0222B69C @ =0x0225324C
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_0222B69C: .4byte 0x0225324C
	arm_func_end ov18_0222B668

	arm_func_start ov18_0222B6A0
ov18_0222B6A0: @ 0x0222B6A0
	push {r4, lr}
	mov r4, r0
	ldr r0, _0222B6F8 @ =0x02253250
	mov r1, r4
	mov r2, #0x3f
	bl FUN_020D8C44
	ldrb r0, [r4, #5]
	cmp r0, #0x78
	ldreq r0, _0222B6F8 @ =0x02253250
	popeq {r4, pc}
	bl ov18_0222F74C
	ldrb r1, [r4, #5]
	cmp r1, #0x79
	bne _0222B6E4
	cmp r0, #0
	ldrne r0, _0222B6F8 @ =0x02253250
	popne {r4, pc}
_0222B6E4:
	ldr r1, _0222B6FC @ =0x02248D0C
	ldrb r1, [r1, r0]
	ldr r0, _0222B6F8 @ =0x02253250
	strb r1, [r0, #5]
	pop {r4, pc}
	.align 2, 0
_0222B6F8: .4byte 0x02253250
_0222B6FC: .4byte 0x02248D0C
	arm_func_end ov18_0222B6A0

	arm_func_start ov18_0222B700
ov18_0222B700: @ 0x0222B700
	push {r3, r4, r5, lr}
	mov r5, r1
	bl ov18_0222B6A0
	add r1, sp, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, [sp]
	mov r4, r0
	bl FUN_020C2C54
	ldr r2, [sp]
	mov r0, r4
	mov r1, #0
	blx r5
	mov r0, r4
	bl ov18_0224382C
	pop {r3, r4, r5, pc}
	arm_func_end ov18_0222B700

	arm_func_start ov18_0222B740
ov18_0222B740: @ 0x0222B740
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F6E8
	ldr r0, [sp]
	cmp r0, #1
	bne _0222B774
	mov r0, r4
	bl ov18_0223EA28
	add sp, sp, #4
	pop {r3, r4, pc}
_0222B774:
	cmp r0, #2
	addne sp, sp, #4
	popne {r3, r4, pc}
	mov r0, r4
	bl ov18_0223EFBC
	add sp, sp, #4
	pop {r3, r4, pc}
	arm_func_end ov18_0222B740

	arm_func_start ov18_0222B790
ov18_0222B790: @ 0x0222B790
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F6E8
	ldr r0, [sp]
	cmp r0, #1
	addne sp, sp, #4
	popne {r3, r4, pc}
	mov r0, r4
	bl ov18_0222AF0C
	add sp, sp, #4
	pop {r3, r4, pc}
	arm_func_end ov18_0222B790

	arm_func_start ov18_0222B7C8
ov18_0222B7C8: @ 0x0222B7C8
	push {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r1, _0222B838 @ =0x022532D8
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	bl ov18_0222F8B8
	mov r4, r0
	bl ov18_0222B8F8
	mov r1, #0x70
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x28
	mov r3, #0xe6
	bl ov18_02244A9C
	mov r0, r5
	bl ov18_02244C08
	add sp, sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222B838: .4byte 0x022532D8
	arm_func_end ov18_0222B7C8

	arm_func_start ov18_0222B83C
ov18_0222B83C: @ 0x0222B83C
	push {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0
	mov r6, r1
	mov r1, r0
	bl ov18_0224467C
	ldr r1, _0222B8E8 @ =0x022532D8
	mov r4, r0
	ldr r0, [r1]
	mov r1, r6
	bl ov18_0222F8B8
	mov r6, r0
	bl ov18_0222B8F8
	mov r1, #0x5e
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r6, [sp, #0xc]
	bl ov18_02244A9C
	bl ov18_0222F74C
	mov r6, r0
	bl ov18_0222F74C
	ldr r1, _0222B8EC @ =0x00000209
	lsl r3, r0, #2
	stm sp, {r1, r5}
	ldr r2, _0222B8F0 @ =0x02248CF2
	ldr r1, _0222B8F4 @ =0x02248CF0
	lsl ip, r6, #2
	ldrh r2, [r2, r3]
	ldrh r1, [r1, ip]
	mov r0, r4
	mov r3, #2
	bl ov18_02244904
	mov r0, r4
	bl ov18_02244C08
	add sp, sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B8E8: .4byte 0x022532D8
_0222B8EC: .4byte 0x00000209
_0222B8F0: .4byte 0x02248CF2
_0222B8F4: .4byte 0x02248CF0
	arm_func_end ov18_0222B83C

	arm_func_start ov18_0222B8F8
ov18_0222B8F8: @ 0x0222B8F8
	push {r3, lr}
	bl ov18_0222F74C
	ldr r1, _0222B90C @ =0x02248CD4
	ldr r0, [r1, r0, lsl #2]
	pop {r3, pc}
	.align 2, 0
_0222B90C: .4byte 0x02248CD4
	arm_func_end ov18_0222B8F8

	arm_func_start ov18_0222B910
ov18_0222B910: @ 0x0222B910
	push {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0222B92C @ =0x02253290
	str r0, [r1]
	pop {r3, pc}
	.align 2, 0
_0222B92C: .4byte 0x02253290
	arm_func_end ov18_0222B910

	arm_func_start ov18_0222B930
ov18_0222B930: @ 0x0222B930
	push {r3, lr}
	bl ov18_0222BAF4
	ldr r0, _0222B944 @ =0x02253290
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0222B944: .4byte 0x02253290
	arm_func_end ov18_0222B930

	arm_func_start ov18_0222B948
ov18_0222B948: @ 0x0222B948
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r4, r0
	str r1, [sp]
	str r2, [sp, #4]
	mov fp, r3
	bl ov18_0222BAF4
	ldr r0, _0222B9FC @ =0x02248D14
	mov sb, #0
	add sl, r0, r4, lsl #1
	mov r7, #1
	ldr r4, _0222BA00 @ =0x02253290
	mov r8, sb
	mvn r6, #0
	mov r5, r7
_0222B984:
	ldrb r1, [sl], #1
	mov r0, r8
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4]
	mov r1, r6
	str r0, [r2, sb, lsl #2]
	ldr r0, [r4]
	mov r2, r5
	ldr r0, [r0, sb, lsl #2]
	bl ov18_02243DE4
	add sb, sb, #1
	cmp sb, #2
	blt _0222B984
	ldr r0, _0222BA00 @ =0x02253290
	ldr r2, [sp]
	ldr r0, [r0]
	mov r3, fp
	ldr r0, [r0]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BA00 @ =0x02253290
	ldr r2, [sp, #4]
	ldr r0, [r0]
	mov r3, fp
	ldr r0, [r0, #4]
	mvn r1, #0
	bl ov18_02243CF4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222B9FC: .4byte 0x02248D14
_0222BA00: .4byte 0x02253290
	arm_func_end ov18_0222B948

	arm_func_start ov18_0222BA04
ov18_0222BA04: @ 0x0222BA04
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov fp, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov sb, #6
	bl ov18_0222BAF4
	mov sl, #0
	mov r7, #1
	ldr r4, _0222BAF0 @ =0x02253290
	mov r8, sl
	mvn r6, #0
	mov r5, r7
_0222BA3C:
	mov r0, r8
	mov r1, sb
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4]
	mov r1, r6
	str r0, [r2, sl, lsl #2]
	ldr r0, [r4]
	mov r2, r5
	ldr r0, [r0, sl, lsl #2]
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #4
	add sb, sb, #1
	blt _0222BA3C
	ldr r0, _0222BAF0 @ =0x02253290
	ldr r3, [sp, #4]
	ldr r0, [r0]
	mov r2, fp
	ldr r0, [r0]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BAF0 @ =0x02253290
	ldr r2, [sp]
	ldr r0, [r0]
	ldr r3, [sp, #4]
	ldr r0, [r0, #4]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BAF0 @ =0x02253290
	ldr r3, [sp, #8]
	ldr r0, [r0]
	mov r2, fp
	ldr r0, [r0, #8]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BAF0 @ =0x02253290
	ldr r2, [sp]
	ldr r0, [r0]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0xc]
	mvn r1, #0
	bl ov18_02243CF4
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222BAF0: .4byte 0x02253290
	arm_func_end ov18_0222BA04

	arm_func_start ov18_0222BAF4
ov18_0222BAF4: @ 0x0222BAF4
	push {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _0222BB30 @ =0x02253290
	mov r5, r6
_0222BB04:
	ldr r0, [r4]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _0222BB20
	bl ov18_02243B3C
	ldr r0, [r4]
	str r5, [r0, r6, lsl #2]
_0222BB20:
	add r6, r6, #1
	cmp r6, #4
	blt _0222BB04
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222BB30: .4byte 0x02253290
	arm_func_end ov18_0222BAF4

	arm_func_start ov18_0222BB34
ov18_0222BB34: @ 0x0222BB34
	push {r3, lr}
	mov r0, #0xc0
	mov r1, #4
	bl ov18_02245068
	ldr r2, _0222BB98 @ =0x02253294
	ldr r1, _0222BB9C @ =0x020C072C
	str r0, [r2]
	ldr r0, _0222BBA0 @ =0x02249B34
	bl ov18_0222B700
	bl ov18_0222F75C
	cmp r0, #0
	beq _0222BB70
	cmp r0, #1
	beq _0222BB84
	pop {r3, pc}
_0222BB70:
	ldr r0, _0222BBA4 @ =0x02249AE4
	ldr r1, _0222BBA8 @ =FUN_020C042C
	ldr r0, [r0]
	bl ov18_0222B700
	pop {r3, pc}
_0222BB84:
	ldr r0, _0222BBA4 @ =0x02249AE4
	ldr r1, _0222BBA8 @ =FUN_020C042C
	ldr r0, [r0, #4]
	bl ov18_0222B700
	pop {r3, pc}
	.align 2, 0
_0222BB98: .4byte 0x02253294
_0222BB9C: .4byte 0x020C072C
_0222BBA0: .4byte 0x02249B34
_0222BBA4: .4byte 0x02249AE4
_0222BBA8: .4byte FUN_020C042C
	arm_func_end ov18_0222BB34

	arm_func_start ov18_0222BBAC
ov18_0222BBAC: @ 0x0222BBAC
	ldr ip, _0222BBB8 @ =ov18_0224508C
	ldr r0, _0222BBBC @ =0x02253294
	bx ip
	.align 2, 0
_0222BBB8: .4byte ov18_0224508C
_0222BBBC: .4byte 0x02253294
	arm_func_end ov18_0222BBAC

	arm_func_start ov18_0222BBC0
ov18_0222BBC0: @ 0x0222BBC0
	push {r4, lr}
	ldr r1, _0222BC10 @ =0x02249AE4
	ldr r0, [r1, r0, lsl #2]
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _0222BC14 @ =0x02253294
	mov r4, r0
	ldr r1, [r1]
	mov r2, #0xc0
	bl FUN_020C4C14
	mov r0, r4
	bl ov18_0224382C
	mov r0, #1
	ldr r1, _0222BC18 @ =ov18_0222BC4C
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	pop {r4, pc}
	.align 2, 0
_0222BC10: .4byte 0x02249AE4
_0222BC14: .4byte 0x02253294
_0222BC18: .4byte ov18_0222BC4C
	arm_func_end ov18_0222BBC0

	arm_func_start ov18_0222BC1C
ov18_0222BC1C: @ 0x0222BC1C
	push {r3, lr}
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	add r0, r0, #5
	bl ov18_0222BBC0
	pop {r3, pc}
	arm_func_end ov18_0222BC1C

	arm_func_start ov18_0222BC34
ov18_0222BC34: @ 0x0222BC34
	push {r3, lr}
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	add r0, r0, #2
	bl ov18_0222BBC0
	pop {r3, pc}
	arm_func_end ov18_0222BC34

	arm_func_start ov18_0222BC4C
ov18_0222BC4C: @ 0x0222BC4C
	push {r4, lr}
	ldr r1, _0222BC88 @ =0x02253294
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0xc0
	bl FUN_020C2C54
	ldr r0, _0222BC88 @ =0x02253294
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0xc0
	bl FUN_020C042C
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_0222BC88: .4byte 0x02253294
	arm_func_end ov18_0222BC4C

	arm_func_start ov18_0222BC8C
ov18_0222BC8C: @ 0x0222BC8C
	push {r3, r4, r5, lr}
	ldr r1, _0222BD34 @ =0x02253298
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #0xc
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0222BD38 @ =0x02248D20
	ldr r2, _0222BD34 @ =0x02253298
	ldrb r1, [r1, r4, lsl #2]
	str r0, [r2]
	strb r4, [r0, #8]
	mov r0, #0
	bl ov18_02243F60
	ldr lr, _0222BD34 @ =0x02253298
	ldr ip, _0222BD3C @ =0xFE00FF00
	ldr r2, [lr]
	ldr r1, _0222BD40 @ =ov18_0222BD88
	str r0, [r2]
	ldr r2, [lr]
	mov r0, #0
	ldr r5, [r2]
	mov r2, r0
	ldr r4, [r5]
	mov r3, #0x78
	and r4, r4, ip
	orr r4, r4, #0x26
	orr r4, r4, #0xe50000
	str r4, [r5]
	ldr ip, [lr]
	ldr lr, [ip]
	ldrh ip, [lr, #4]
	bic ip, ip, #0xc00
	orr ip, ip, #0x800
	strh ip, [lr, #4]
	bl ov18_02246304
	ldr r1, _0222BD34 @ =0x02253298
	ldr r1, [r1]
	str r0, [r1, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222BD34: .4byte 0x02253298
_0222BD38: .4byte 0x02248D20
_0222BD3C: .4byte 0xFE00FF00
_0222BD40: .4byte ov18_0222BD88
	arm_func_end ov18_0222BC8C

	arm_func_start ov18_0222BD44
ov18_0222BD44: @ 0x0222BD44
	push {r3, lr}
	ldr r0, _0222BD80 @ =0x02253298
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	ldr r1, [r0, #4]
	mov r0, #0
	bl ov18_022463CC
	ldr r0, _0222BD80 @ =0x02253298
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov18_02245B74
	ldr r0, _0222BD84 @ =0x02253298
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0222BD80: .4byte 0x02253298
_0222BD84: .4byte 0x02253298
	arm_func_end ov18_0222BD44

	arm_func_start ov18_0222BD88
ov18_0222BD88: @ 0x0222BD88
	push {r3, r4, r5, lr}
	ldr r0, _0222BE20 @ =0x04000208
	mov r4, #0
	ldrh r5, [r0]
	strh r4, [r0]
	bl FUN_020CE7F4
	cmp r0, #0x8000
	beq _0222BDB0
	bl FUN_020CE814
	mov r4, r0
_0222BDB0:
	ldr r2, _0222BE20 @ =0x04000208
	ldr r1, _0222BE24 @ =0x02253298
	ldrh r0, [r2]
	ldr r3, _0222BE28 @ =0x02248D20
	mov r0, #0
	strh r5, [r2]
	ldr r2, [r1]
	ldrsb r1, [r2, #8]
	ldr r2, [r2]
	add r1, r3, r1, lsl #2
	ldrb r1, [r4, r1]
	bl ov18_02243ECC
	ldr r1, _0222BE24 @ =0x02253298
	ldr r0, _0222BE2C @ =0xFE00FF00
	ldr r2, [r1]
	ldr r3, [r2]
	ldr r2, [r3]
	and r0, r2, r0
	orr r0, r0, #0x26
	orr r0, r0, #0xe50000
	str r0, [r3]
	ldr r0, [r1]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0x800
	strh r0, [r1, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222BE20: .4byte 0x04000208
_0222BE24: .4byte 0x02253298
_0222BE28: .4byte 0x02248D20
_0222BE2C: .4byte 0xFE00FF00
	arm_func_end ov18_0222BD88

	arm_func_start ov18_0222BE30
ov18_0222BE30: @ 0x0222BE30
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r5, sp, #0x1c
	mov r4, #0
	strh r4, [r5, #4]
	mov r3, #0x11
	strh r4, [r5, #6]
	mov r2, #0x12
	mov r0, #0x128
	mov r1, #4
	strh r4, [r5]
	strh r4, [r5, #2]
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	bl ov18_02245068
	ldr r8, _0222C17C @ =0x0225329C
	mov r1, #0xff
	str r0, [r8]
	strb r1, [r0, #0x11c]
	ldr r0, [r8]
	mov r6, r4
	strb r6, [r0, #0x121]
	mov r5, r4
	ldr r0, [r8]
	mov r1, #1
	strb r1, [r0, #0x123]
	ldr r0, [r8]
	ldr r7, _0222C180 @ =0xC1FFFCFF
	strb r1, [r0, #0x124]
	mov r4, #0x34
_0222BEA8:
	mov r0, r5
	mov r1, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x30]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x30]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #0x2f
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222BEA8
	mov r6, #0
	ldr r5, _0222C184 @ =0x02248D38
	ldr r8, _0222C17C @ =0x0225329C
	ldr r7, _0222C180 @ =0xC1FFFCFF
	mov r4, r6
_0222BF18:
	ldrb r1, [r5], #1
	mov r0, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0xec]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #4
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222BF18
	mov sl, #0
	ldr sb, _0222C188 @ =0x02248D30
	ldr r4, _0222C17C @ =0x0225329C
	mov r8, sl
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov fp, sl
_0222BF94:
	ldrb r1, [sb], #1
	mov r0, r8
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, sl, lsl #2
	str r0, [r2, #0xfc]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0xfc]
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, #3
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #2
	blt _0222BF94
	mov sl, #0
	strh sl, [sp, #0x16]
_0222BFF8:
	mov sb, #0
	ldr r6, _0222C18C @ =0x02249B54
	ldr r4, _0222C17C @ =0x0225329C
	str sb, [sp, #0x10]
	mov fp, #2
_0222C00C:
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0x1c
	mov r2, #2
	mov r3, r0
	bl ov18_02244574
	ldr r1, [r4]
	lsl r2, sb, #2
	add r1, r1, sl, lsl #4
	str r0, [r1, sb, lsl #2]
	mov r0, #0
	ldr r7, [sp, #0x10]
	strh r0, [sp, #0x1c]
	mov r8, r0
	add r5, r2, sl, lsl #4
_0222C050:
	ldr r1, [r6, sl, lsl #2]
	lsl r0, r7, #1
	ldrh r1, [r1, r0]
	ldrh r0, [sp, #0x22]
	strh r1, [sp, #0x14]
	stm sp, {r0, fp}
	mov r0, #0x480
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldrh r1, [sp, #0x1c]
	ldrh r2, [sp, #0x1e]
	ldrh r3, [sp, #0x20]
	ldr r0, [r0, r5]
	bl ov18_02244A9C
	ldrh r0, [sp, #0x1c]
	add r8, r8, #1
	cmp r8, #0xc
	add r0, r0, #0x12
	add r7, r7, #1
	strh r0, [sp, #0x1c]
	blt _0222C050
	cmp sl, #0
	bne _0222C0D0
	ldr r1, [sp, #0x18]
	mov r0, #0
	mov r2, #1
	bl ov18_022439E0
	ldr r1, [r4]
	add r1, r1, sb, lsl #2
	str r0, [r1, #0x104]
_0222C0D0:
	ldr r0, [sp, #0x10]
	add sb, sb, #1
	add r0, r0, #0xc
	str r0, [sp, #0x10]
	cmp sb, #4
	blt _0222C00C
	add sl, sl, #1
	cmp sl, #3
	blt _0222BFF8
	mov r0, #0
	mov r1, #0x40
	mov r2, #1
	bl ov18_02243F8C
	ldr r3, _0222C17C @ =0x0225329C
	mvn r1, #0
	ldr r4, [r3]
	mov r2, #0x200
	str r0, [r4, #0x114]
	ldr r0, [r3]
	mov r3, #0
	ldr r0, [r0, #0x114]
	bl ov18_02243BD0
	ldr r0, _0222C17C @ =0x0225329C
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #2
	ldr r0, [r0, #0x114]
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0222C190 @ =ov18_0222C220
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r3, _0222C17C @ =0x0225329C
	mov r1, #0
	ldr r4, [r3]
	mov r2, #0xc0
	str r0, [r4, #0x118]
	ldr r0, [r3]
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	add sp, sp, #0x24
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222C17C: .4byte 0x0225329C
_0222C180: .4byte 0xC1FFFCFF
_0222C184: .4byte 0x02248D38
_0222C188: .4byte 0x02248D30
_0222C18C: .4byte 0x02249B54
_0222C190: .4byte ov18_0222C220
	arm_func_end ov18_0222BE30

	arm_func_start ov18_0222C194
ov18_0222C194: @ 0x0222C194
	push {r3, lr}
	ldr r0, _0222C1C0 @ =0x0225329C
	ldr r0, [r0]
	ldr r0, [r0, #0x114]
	bl ov18_02243B3C
	ldr r0, _0222C1C0 @ =0x0225329C
	ldr r1, _0222C1C4 @ =ov18_0222D7A8
	ldr r0, [r0]
	ldr r0, [r0, #0x118]
	bl ov18_022463A4
	pop {r3, pc}
	.align 2, 0
_0222C1C0: .4byte 0x0225329C
_0222C1C4: .4byte ov18_0222D7A8
	arm_func_end ov18_0222C194

	arm_func_start ov18_0222C1C8
ov18_0222C1C8: @ 0x0222C1C8
	ldr r0, _0222C1D8 @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x11c]
	bx lr
	.align 2, 0
_0222C1D8: .4byte 0x0225329C
	arm_func_end ov18_0222C1C8

	arm_func_start ov18_0222C1DC
ov18_0222C1DC: @ 0x0222C1DC
	ldr r1, _0222C1EC @ =0x0225329C
	ldr r1, [r1]
	strb r0, [r1, #0x123]
	bx lr
	.align 2, 0
_0222C1EC: .4byte 0x0225329C
	arm_func_end ov18_0222C1DC

	arm_func_start ov18_0222C1F0
ov18_0222C1F0: @ 0x0222C1F0
	ldr r1, _0222C200 @ =0x0225329C
	ldr r1, [r1]
	strb r0, [r1, #0x124]
	bx lr
	.align 2, 0
_0222C200: .4byte 0x0225329C
	arm_func_end ov18_0222C1F0

	arm_func_start ov18_0222C204
ov18_0222C204: @ 0x0222C204
	ldr r0, _0222C21C @ =0x0225329C
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0222C21C: .4byte 0x0225329C
	arm_func_end ov18_0222C204

	arm_func_start ov18_0222C220
ov18_0222C220: @ 0x0222C220
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C2A8 @ =0x0225329C
	mov r4, r0
	ldr r3, [r2]
	ldr r1, _0222C2AC @ =0x01FF0000
	ldr r0, [r3, #0x30]
	ldr r0, [r0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	lsr r0, r1, #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x51
	ldrb r0, [r3, #0x11d]
	mov r1, #0
	ble _0222C274
	bl ov18_0222CECC
	add sp, sp, #8
	pop {r4, pc}
_0222C274:
	mov r2, #0x51
	bl ov18_0222CECC
	ldr r0, _0222C2A8 @ =0x0225329C
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C2B0 @ =ov18_0222C2B4
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222C2A8: .4byte 0x0225329C
_0222C2AC: .4byte 0x01FF0000
_0222C2B0: .4byte ov18_0222C2B4
	arm_func_end ov18_0222C220

	arm_func_start ov18_0222C2B4
ov18_0222C2B4: @ 0x0222C2B4
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C33C @ =0x0225329C
	mov r4, r0
	ldr r3, [r2]
	ldr r1, _0222C340 @ =0x01FF0000
	ldr r0, [r3, #0x60]
	ldr r0, [r0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	lsr r0, r1, #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x67
	ldrb r0, [r3, #0x11d]
	mov r1, #1
	ble _0222C308
	bl ov18_0222CECC
	add sp, sp, #8
	pop {r4, pc}
_0222C308:
	mov r2, #0x67
	bl ov18_0222CECC
	ldr r0, _0222C33C @ =0x0225329C
	mov r1, #2
	ldr r0, [r0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C344 @ =ov18_0222C348
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222C33C: .4byte 0x0225329C
_0222C340: .4byte 0x01FF0000
_0222C344: .4byte ov18_0222C348
	arm_func_end ov18_0222C2B4

	arm_func_start ov18_0222C348
ov18_0222C348: @ 0x0222C348
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C3D0 @ =0x0225329C
	mov r4, r0
	ldr r3, [r2]
	ldr r1, _0222C3D4 @ =0x01FF0000
	ldr r0, [r3, #0x90]
	ldr r0, [r0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	lsr r0, r1, #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x7d
	ldrb r0, [r3, #0x11d]
	mov r1, #2
	ble _0222C39C
	bl ov18_0222CECC
	add sp, sp, #8
	pop {r4, pc}
_0222C39C:
	mov r2, #0x7d
	bl ov18_0222CECC
	ldr r0, _0222C3D0 @ =0x0225329C
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C3D8 @ =ov18_0222C3DC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222C3D0: .4byte 0x0225329C
_0222C3D4: .4byte 0x01FF0000
_0222C3D8: .4byte ov18_0222C3DC
	arm_func_end ov18_0222C348

	arm_func_start ov18_0222C3DC
ov18_0222C3DC: @ 0x0222C3DC
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C464 @ =0x0225329C
	mov r4, r0
	ldr r3, [r2]
	ldr r1, _0222C468 @ =0x01FF0000
	ldr r0, [r3, #0xc0]
	ldr r0, [r0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	lsr r0, r1, #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x93
	ldrb r0, [r3, #0x11d]
	mov r1, #3
	ble _0222C430
	bl ov18_0222CECC
	add sp, sp, #8
	pop {r4, pc}
_0222C430:
	mov r2, #0x93
	bl ov18_0222CECC
	ldr r0, _0222C464 @ =0x0225329C
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C46C @ =ov18_0222C470
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222C464: .4byte 0x0225329C
_0222C468: .4byte 0x01FF0000
_0222C46C: .4byte ov18_0222C470
	arm_func_end ov18_0222C3DC

	arm_func_start ov18_0222C470
ov18_0222C470: @ 0x0222C470
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222C4F4 @ =0x0225329C
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #0xfc]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	mov r1, #4
	sub r2, r0, #0xc
	str r2, [sp]
	cmp r2, #0xaa
	ble _0222C4C8
	ldr r0, _0222C4F4 @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	add sp, sp, #8
	pop {r4, pc}
_0222C4C8:
	ldr r0, _0222C4F4 @ =0x0225329C
	mov r2, #0xaa
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	bl ov18_0222D294
	ldr r1, _0222C4F8 @ =ov18_0222C4FC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222C4F4: .4byte 0x0225329C
_0222C4F8: .4byte ov18_0222C4FC
	arm_func_end ov18_0222C470

	arm_func_start ov18_0222C4FC
ov18_0222C4FC: @ 0x0222C4FC
	push {r3, lr}
	bl ov18_0222C514
	bl ov18_0222C6FC
	bl ov18_0222CA44
	bl ov18_0222CC9C
	pop {r3, pc}
	arm_func_end ov18_0222C4FC

	arm_func_start ov18_0222C514
ov18_0222C514: @ 0x0222C514
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222C6D8 @ =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C6DC @ =0x0225329C
	mvn r1, #0
	ldr r0, [r0]
	ldr r7, _0222C6E0 @ =0x02248D80
	ldr r6, _0222C6E4 @ =0x02248D44
	strb r1, [r0, #0x11e]
	mov r4, #0
	add r5, sp, #0
_0222C550:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222C5B0
	ldr r0, _0222C6DC @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x124]
	cmp r0, #0
	bne _0222C594
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222C594:
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222C6DC @ =0x0225329C
	add sp, sp, #8
	ldr r0, [r0]
	strb r4, [r0, #0x11e]
	pop {r3, r4, r5, r6, r7, pc}
_0222C5B0:
	add r4, r4, #1
	cmp r4, #0x2f
	add r7, r7, #4
	blt _0222C550
	ldr r6, _0222C6E8 @ =0x02248D70
	ldr r7, _0222C6EC @ =0x02248D60
	mov r4, #0
	add r5, sp, #0
_0222C5D0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222C65C
	cmp r4, #3
	bne _0222C60C
	ldr r0, _0222C6DC @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x123]
	cmp r0, #0
	beq _0222C628
_0222C60C:
	cmp r4, #2
	bne _0222C638
	ldr r0, _0222C6DC @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x124]
	cmp r0, #0
	bne _0222C638
_0222C628:
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222C638:
	ldr r0, _0222C6F0 @ =0x02249B60
	ldr r0, [r0, r4, lsl #2]
	bl ov18_0223E994
	ldr r0, _0222C6DC @ =0x0225329C
	add r1, r4, #0x2f
	ldr r0, [r0]
	add sp, sp, #8
	strb r1, [r0, #0x11e]
	pop {r3, r4, r5, r6, r7, pc}
_0222C65C:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #4
	add r7, r7, #4
	blt _0222C5D0
	ldr r6, _0222C6F4 @ =0x02248D58
	ldr r5, _0222C6F8 @ =0x02248D40
	mov r7, #0
	add r4, sp, #0
_0222C680:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_022455B8
	cmp r0, #0
	beq _0222C6C0
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222C6DC @ =0x0225329C
	add r1, r7, #0x33
	ldr r0, [r0]
	add sp, sp, #8
	strb r1, [r0, #0x11e]
	pop {r3, r4, r5, r6, r7, pc}
_0222C6C0:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222C680
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222C6D8: .4byte 0x02249734
_0222C6DC: .4byte 0x0225329C
_0222C6E0: .4byte 0x02248D80
_0222C6E4: .4byte 0x02248D44
_0222C6E8: .4byte 0x02248D70
_0222C6EC: .4byte 0x02248D60
_0222C6F0: .4byte 0x02249B60
_0222C6F4: .4byte 0x02248D58
_0222C6F8: .4byte 0x02248D40
	arm_func_end ov18_0222C514

	arm_func_start ov18_0222C6FC
ov18_0222C6FC: @ 0x0222C6FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _0222C9A8 @ =0x0225329C
	ldr r0, _0222C9AC @ =0x02249734
	ldr r1, [r1]
	mov r2, #0
	strb r2, [r1, #0x11c]
	bl ov18_022456C8
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r7, _0222C9B0 @ =0x02248D80
	ldr r6, _0222C9B4 @ =0x02248D44
	mov r4, #0
	add r5, sp, #0
_0222C738:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C7B8
	ldr r1, _0222C9A8 @ =0x0225329C
	ldr r3, [r1]
	add r0, r3, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r4
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r3, #0x11d]
	ldr r0, _0222C9B8 @ =0x02249B48
	ldr r0, [r0, r2, lsl #2]
	ldrb r0, [r0, r4]
	strb r0, [r3, #0x11c]
	ldr r0, [r1]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _0222C7A0
	mov r0, #0
	bl ov18_0222D148
_0222C7A0:
	ldr r0, _0222C9A8 @ =0x0225329C
	ldr r0, [r0]
	strb r4, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222C7B8:
	add r4, r4, #1
	cmp r4, #0x2f
	add r7, r7, #4
	blt _0222C738
	ldr r6, _0222C9BC @ =0x02248D78
	ldr r7, _0222C9C0 @ =0x02248D68
	mov r4, #2
	add r5, sp, #0
_0222C7D8:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C858
	ldr r1, _0222C9A8 @ =0x0225329C
	add r2, r4, #0x2f
	ldr r3, [r1]
	add r0, r3, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r2
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C9C4 @ =0x02248FE4
	ldrb r0, [r0, r4]
	strb r0, [r3, #0x11c]
	ldr r0, [r1]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _0222C83C
	mov r0, #0
	bl ov18_0222D148
_0222C83C:
	ldr r0, _0222C9A8 @ =0x0225329C
	add r1, r4, #0x2f
	ldr r0, [r0]
	strb r1, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222C858:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #4
	add r7, r7, #4
	blt _0222C7D8
	ldr r7, _0222C9C8 @ =0x02248D58
	ldr r6, _0222C9CC @ =0x02248D40
	mov r4, #0
	add r5, sp, #0
_0222C87C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C8DC
	ldr r1, _0222C9A8 @ =0x0225329C
	add r2, r4, #0x33
	ldr r3, [r1]
	add r0, r3, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r2
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C9D0 @ =0x02248D34
	ldrb r0, [r0, r4]
	strb r0, [r3, #0x11c]
	ldr r0, [r1]
	strb r2, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222C8DC:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222C87C
	ldr r0, _0222C9D4 @ =0x02248D60
	ldr r1, _0222C9D8 @ =0x02248D70
	add r2, sp, #0
	bl ov18_02244C50
	add r0, sp, #0
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C948
	ldr r0, _0222C9A8 @ =0x0225329C
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x2f
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	bl ov18_0222C9E4
	ldr r0, _0222C9A8 @ =0x0225329C
	mov r1, #0x2f
	ldr r0, [r0]
	strb r1, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222C948:
	ldr r0, _0222C9DC @ =0x02248D64
	ldr r1, _0222C9E0 @ =0x02248D74
	add r2, sp, #0
	bl ov18_02244C50
	add r0, sp, #0
	bl ov18_022456C8
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C9A8 @ =0x0225329C
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x30
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	bl ov18_0222CA14
	ldr r0, _0222C9A8 @ =0x0225329C
	mov r1, #0x30
	ldr r0, [r0]
	strb r1, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222C9A8: .4byte 0x0225329C
_0222C9AC: .4byte 0x02249734
_0222C9B0: .4byte 0x02248D80
_0222C9B4: .4byte 0x02248D44
_0222C9B8: .4byte 0x02249B48
_0222C9BC: .4byte 0x02248D78
_0222C9C0: .4byte 0x02248D68
_0222C9C4: .4byte 0x02248FE4
_0222C9C8: .4byte 0x02248D58
_0222C9CC: .4byte 0x02248D40
_0222C9D0: .4byte 0x02248D34
_0222C9D4: .4byte 0x02248D60
_0222C9D8: .4byte 0x02248D70
_0222C9DC: .4byte 0x02248D64
_0222C9E0: .4byte 0x02248D74
	arm_func_end ov18_0222C6FC

	arm_func_start ov18_0222C9E4
ov18_0222C9E4: @ 0x0222C9E4
	push {r3, lr}
	ldr r0, _0222CA10 @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #2
	moveq r0, #0
	movne r0, #2
	bl ov18_0222D148
	mov r0, #1
	bl ov18_0223E994
	pop {r3, pc}
	.align 2, 0
_0222CA10: .4byte 0x0225329C
	arm_func_end ov18_0222C9E4

	arm_func_start ov18_0222CA14
ov18_0222CA14: @ 0x0222CA14
	push {r3, lr}
	ldr r0, _0222CA40 @ =0x0225329C
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	bl ov18_0222D148
	mov r0, #1
	bl ov18_0223E994
	pop {r3, pc}
	.align 2, 0
_0222CA40: .4byte 0x0225329C
	arm_func_end ov18_0222CA14

	arm_func_start ov18_0222CA44
ov18_0222CA44: @ 0x0222CA44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222CC28 @ =0x02249734
	bl ov18_02245530
	cmp r0, #0
	beq _0222CC08
	ldr r7, _0222CC2C @ =0x02248D80
	ldr r5, _0222CC30 @ =0x02248D44
	mov r6, #0
	add r4, sp, #0
_0222CA6C:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222CAB0
	ldr r0, _0222CC34 @ =0x0225329C
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r6
	bne _0222CC08
	mov r0, r6
	bl ov18_0222CC48
	b _0222CC10
_0222CAB0:
	add r6, r6, #1
	cmp r6, #0x2f
	add r7, r7, #4
	blt _0222CA6C
	ldr r6, _0222CC38 @ =0x02248D78
	ldr r7, _0222CC3C @ =0x02248D68
	mov r4, #2
	add r5, sp, #0
_0222CAD0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_02245530
	cmp r0, #0
	beq _0222CB90
	ldr r1, _0222CC34 @ =0x0225329C
	add r0, r4, #0x2f
	ldr r1, [r1]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _0222CC08
	bl ov18_0222CC48
	cmp r4, #3
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222CC34 @ =0x0225329C
	ldr r2, [r0]
	ldrb r1, [r2, #0x122]
	add r1, r1, #1
	strb r1, [r2, #0x122]
	ldr r2, [r0]
	ldrb r1, [r2, #0x122]
	cmp r1, #0x28
	addlo sp, sp, #8
	poplo {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r2, #0x123]
	cmp r1, #0
	bne _0222CB70
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222CC34 @ =0x0225329C
	mvn r1, #0
	ldr r0, [r0]
	add sp, sp, #8
	strb r1, [r0, #0x11e]
	pop {r3, r4, r5, r6, r7, pc}
_0222CB70:
	mov r1, #0x80
	strb r1, [r2, #0x11c]
	ldr r1, [r0]
	add sp, sp, #8
	ldrb r0, [r1, #0x122]
	sub r0, r0, #7
	strb r0, [r1, #0x122]
	pop {r3, r4, r5, r6, r7, pc}
_0222CB90:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #4
	add r7, r7, #4
	blt _0222CAD0
	ldr r6, _0222CC40 @ =0x02248D58
	ldr r5, _0222CC44 @ =0x02248D40
	mov r7, #0
	add r4, sp, #0
_0222CBB4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222CBF8
	ldr r1, _0222CC34 @ =0x0225329C
	add r0, r7, #0x33
	ldr r1, [r1]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _0222CC08
	bl ov18_0222CC48
	b _0222CC10
_0222CBF8:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222CBB4
_0222CC08:
	mvn r0, #0
	bl ov18_0222CC48
_0222CC10:
	ldr r0, _0222CC34 @ =0x0225329C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x122]
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222CC28: .4byte 0x02249734
_0222CC2C: .4byte 0x02248D80
_0222CC30: .4byte 0x02248D44
_0222CC34: .4byte 0x0225329C
_0222CC38: .4byte 0x02248D78
_0222CC3C: .4byte 0x02248D68
_0222CC40: .4byte 0x02248D58
_0222CC44: .4byte 0x02248D40
	arm_func_end ov18_0222CA44

	arm_func_start ov18_0222CC48
ov18_0222CC48: @ 0x0222CC48
	push {r4, lr}
	ldr r1, _0222CC98 @ =0x0225329C
	mov r4, r0
	ldr r1, [r1]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1f]
	cmp r4, r1
	popeq {r4, pc}
	mov r1, #1
	bl ov18_0222D1CC
	ldr r0, _0222CC98 @ =0x0225329C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1f]
	bl ov18_0222D1CC
	ldr r0, _0222CC98 @ =0x0225329C
	ldr r0, [r0]
	strb r4, [r0, #0x11f]
	pop {r4, pc}
	.align 2, 0
_0222CC98: .4byte 0x0225329C
	arm_func_end ov18_0222CC48

	arm_func_start ov18_0222CC9C
ov18_0222CC9C: @ 0x0222CC9C
	push {r4, lr}
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CCB8
	mov r0, #0
	bl ov18_0222D370
_0222CCB8:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CCD0
	mov r0, #1
	bl ov18_0222D370
_0222CCD0:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CCE8
	mov r0, #2
	bl ov18_0222D370
_0222CCE8:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CD00
	mov r0, #3
	bl ov18_0222D370
_0222CD00:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0222CE18
	ldr r2, _0222CEBC @ =0x0225329C
	ldr r0, [r2]
	add r1, r0, #0x100
	ldrsb r4, [r1, #0x21]
	cmp r4, #0x2f
	bge _0222CD70
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _0222CD40
	mov r0, #9
	bl ov18_0223E994
	pop {r4, pc}
_0222CD40:
	ldrb r3, [r0, #0x11d]
	ldr r1, _0222CEC0 @ =0x02249B48
	ldr r1, [r1, r3, lsl #2]
	ldrb r1, [r1, r4]
	strb r1, [r0, #0x11c]
	ldr r0, [r2]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	popne {r4, pc}
	mov r0, #0
	bl ov18_0222D148
	pop {r4, pc}
_0222CD70:
	sub r1, r4, #0x2f
	cmp r1, #4
	bge _0222CE08
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0222CDD8
_0222CD88: @ jump table
	b _0222CD98 @ case 0
	b _0222CDA0 @ case 1
	b _0222CDA8 @ case 2
	b _0222CDC0 @ case 3
_0222CD98:
	bl ov18_0222C9E4
	pop {r4, pc}
_0222CDA0:
	bl ov18_0222CA14
	pop {r4, pc}
_0222CDA8:
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _0222CDD8
	mov r0, #9
	bl ov18_0223E994
	pop {r4, pc}
_0222CDC0:
	ldrb r1, [r0, #0x123]
	cmp r1, #0
	bne _0222CDD8
	mov r0, #9
	bl ov18_0223E994
	pop {r4, pc}
_0222CDD8:
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _0222CDEC
	mov r0, #0
	bl ov18_0222D148
_0222CDEC:
	ldr r1, _0222CEC4 @ =0x02248FE4
	sub r2, r4, #0x2f
	ldr r0, _0222CEBC @ =0x0225329C
	ldrb r1, [r1, r2]
	ldr r0, [r0]
	strb r1, [r0, #0x11c]
	pop {r4, pc}
_0222CE08:
	ldr r1, _0222CEC8 @ =0x02248D34
	sub r2, r4, #0x33
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x11c]
_0222CE18:
	mov r0, #2
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CE70
	ldr r0, _0222CEBC @ =0x0225329C
	ldr r1, [r0]
	ldrb r0, [r1, #0x123]
	cmp r0, #0
	bne _0222CE64
	ldrb r0, [r1, #0x125]
	cmp r0, #0
	popne {r4, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222CEBC @ =0x0225329C
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x125]
	pop {r4, pc}
_0222CE64:
	mov r0, #0x80
	strb r0, [r1, #0x11c]
	b _0222CE90
_0222CE70:
	mov r0, #2
	bl ov18_022454F0
	cmp r0, #0
	beq _0222CE90
	ldr r0, _0222CEBC @ =0x0225329C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x125]
_0222CE90:
	mov r0, #0x400
	bl ov18_02245470
	cmp r0, #0
	beq _0222CEA4
	bl ov18_0222C9E4
_0222CEA4:
	mov r0, #0x800
	bl ov18_02245470
	cmp r0, #0
	popeq {r4, pc}
	bl ov18_0222CA14
	pop {r4, pc}
	.align 2, 0
_0222CEBC: .4byte 0x0225329C
_0222CEC0: .4byte 0x02249B48
_0222CEC4: .4byte 0x02248FE4
_0222CEC8: .4byte 0x02248D34
	arm_func_end ov18_0222CC9C

	arm_func_start ov18_0222CECC
ov18_0222CECC: @ 0x0222CECC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r3, _0222D12C @ =0x02248D3C
	mov sl, r1
	ldrb r5, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r1, #0xc
	mul r1, sl, r1
	strb r5, [sp, #0x12]
	strb r4, [sp, #0x13]
	ldrb r4, [r3, #0x14]
	ldrb r5, [r3, #0x13]
	str r1, [sp, #4]
	strb r4, [sp, #0x15]
	strb r5, [sp, #0x14]
	ldrb r1, [r3, #0x15]
	mov sb, r2
	add r4, sp, #0x12
	strb r1, [sp, #0x16]
	ldrb r1, [r4, sl]
	ldrb r6, [r3, #0x16]
	ldrb r2, [r3, #0x17]
	cmp r1, #0
	ldr r5, [sp, #4]
	strb r6, [sp, #0xd]
	strb r2, [sp, #0xe]
	ldrb r7, [r3, #0x18]
	ldrb r2, [r3, #0x19]
	mov r6, #0
	strb r7, [sp, #0xf]
	strb r2, [sp, #0x10]
	ldrb r1, [r3, #0x1a]
	strb r1, [sp, #0x11]
	ldrb r2, [r3, #0xc]
	ldrb r1, [r3, #0xd]
	strb r2, [sp, #8]
	strb r1, [sp, #9]
	ldrb r2, [r3, #0xe]
	ldrb r1, [r3, #0xf]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	ldrb r1, [r3, #0x10]
	strb r1, [sp, #0xc]
	ble _0222CFE8
	ldr r1, _0222D130 @ =0x02248D80
	ldr fp, _0222D134 @ =0x0225329C
	ldr lr, _0222D138 @ =0xC1FFFCFF
	ldr r8, _0222D13C @ =0xFE00FF00
	and r7, sb, #0xff
_0222CF90:
	ldr r2, [fp]
	lsl r3, r5, #2
	add r2, r2, r5, lsl #2
	ldr r2, [r2, #0x30]
	ldrh r3, [r1, r3]
	ldr ip, [r2]
	add r6, r6, #1
	and ip, ip, lr
	str ip, [r2]
	lsl r2, r3, #0x17
	ldr r3, [fp]
	add r3, r3, r5, lsl #2
	ldr r3, [r3, #0x30]
	add r5, r5, #1
	ldr ip, [r3]
	and ip, ip, r8
	orr ip, ip, r7
	orr r2, ip, r2, lsr #7
	str r2, [r3]
	ldrb r2, [r4, sl]
	cmp r6, r2
	blt _0222CF90
_0222CFE8:
	cmp sl, #4
	bge _0222D028
	ldr r1, _0222D134 @ =0x0225329C
	ldr r3, _0222D130 @ =0x02248D80
	ldr r4, [r1]
	ldr r1, [sp, #4]
	mov r2, #2
	lsl r1, r1, #2
	str r2, [sp]
	add r0, r4, r0, lsl #4
	add r2, r4, sl, lsl #2
	ldrh r1, [r3, r1]
	ldr r3, [r2, #0x104]
	ldr r0, [r0, sl, lsl #2]
	mov r2, sb
	bl ov18_02244B70
_0222D028:
	add r0, sl, #3
	mov r1, #4
	bl FUN_020BD140
	add r3, sp, #0xd
	ldrb r1, [r3, sl]
	mov r5, #0
	cmp r1, #0
	ble _0222D0B0
	ldr r2, _0222D140 @ =0x02248D60
	lsl r1, r0, #2
	ldrh r0, [r2, r1]
	ldr r8, _0222D134 @ =0x0225329C
	ldr r6, _0222D138 @ =0xC1FFFCFF
	ldr r7, _0222D13C @ =0xFE00FF00
	and r4, sb, #0xff
	lsl r2, r0, #0x17
_0222D068:
	ldr r0, [r8]
	add r5, r5, #1
	add r0, r1, r0
	ldr fp, [r0, #0xec]
	ldr r0, [fp]
	and r0, r0, r6
	str r0, [fp]
	ldr r0, [r8]
	add r0, r1, r0
	ldr r0, [r0, #0xec]
	ldr fp, [r0]
	and fp, fp, r7
	orr fp, fp, r4
	orr fp, fp, r2, lsr #7
	str fp, [r0]
	ldrb r0, [r3, sl]
	cmp r5, r0
	blt _0222D068
_0222D0B0:
	add r7, sp, #8
	ldrb r0, [r7, sl]
	mov r8, #0
	cmp r0, #0
	addle sp, sp, #0x18
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _0222D144 @ =0x02248D58
	ldr r4, _0222D134 @ =0x0225329C
	mvn r6, #0
	mov fp, r8
_0222D0D8:
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, fp
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4]
	lsl r1, r8, #2
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0xfc]
	ldrh r2, [r5, r1]
	mov r1, r6
	mov r3, sb
	bl ov18_02243CF4
	ldrb r0, [r7, sl]
	add r8, r8, #1
	cmp r8, r0
	blt _0222D0D8
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222D12C: .4byte 0x02248D3C
_0222D130: .4byte 0x02248D80
_0222D134: .4byte 0x0225329C
_0222D138: .4byte 0xC1FFFCFF
_0222D13C: .4byte 0xFE00FF00
_0222D140: .4byte 0x02248D60
_0222D144: .4byte 0x02248D58
	arm_func_end ov18_0222CECC

	arm_func_start ov18_0222D148
ov18_0222D148: @ 0x0222D148
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _0222D1C4 @ =0x0225329C
	mov r5, #0
	ldr r1, [r1]
	mov r8, r0
	ldr sb, _0222D1C8 @ =0x02248D80
	mov r6, r5
	mov r4, r5
	mov r7, r5
	strb r8, [r1, #0x11d]
_0222D170:
	add r0, sb, r7, lsl #2
	ldrh r2, [r0, #2]
	mov r0, r8
	mov r1, r4
	bl ov18_0222CECC
	add r4, r4, #1
	cmp r4, #4
	add r7, r7, #0xc
	blt _0222D170
	cmp r8, #2
	moveq r5, #1
	beq _0222D1A8
	cmp r8, #1
	moveq r6, #1
_0222D1A8:
	mov r1, r5
	mov r0, #0x2f
	bl ov18_0222D1CC
	mov r1, r6
	mov r0, #0x30
	bl ov18_0222D1CC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0222D1C4: .4byte 0x0225329C
_0222D1C8: .4byte 0x02248D80
	arm_func_end ov18_0222D148

	arm_func_start ov18_0222D1CC
ov18_0222D1CC: @ 0x0222D1CC
	push {r3, lr}
	cmp r0, #0
	poplt {r3, pc}
	cmp r0, #0x2f
	bge _0222D218
	ldr r2, _0222D288 @ =0x0225329C
	ldr r3, _0222D28C @ =0x02248D28
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x30]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	pop {r3, pc}
_0222D218:
	sub ip, r0, #0x2f
	cmp ip, #4
	bge _0222D25C
	ldr r0, _0222D288 @ =0x0225329C
	ldr r2, _0222D28C @ =0x02248D28
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, ip, lsl #2
	ldr r2, [r1, #0xec]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	pop {r3, pc}
_0222D25C:
	ldr r2, _0222D288 @ =0x0225329C
	ldr r3, _0222D290 @ =0x02248D2C
	ldr r2, [r2]
	sub r0, r0, #0x33
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0xfc]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243C74
	pop {r3, pc}
	.align 2, 0
_0222D288: .4byte 0x0225329C
_0222D28C: .4byte 0x02248D28
_0222D290: .4byte 0x02248D2C
	arm_func_end ov18_0222D1CC

	arm_func_start ov18_0222D294
ov18_0222D294: @ 0x0222D294
	push {r4, lr}
	ldr r0, _0222D364 @ =0x0225329C
	ldr r1, [r0]
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x21]
	sub r0, r0, #0x2f
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0222D2F8
_0222D2B8: @ jump table
	b _0222D2D0 @ case 0
	b _0222D2D8 @ case 1
	b _0222D2E0 @ case 2
	b _0222D2E8 @ case 3
	b _0222D2F0 @ case 4
	b _0222D2F0 @ case 5
_0222D2D0:
	mov r4, #0x42
	b _0222D2FC
_0222D2D8:
	mov r4, #0x41
	b _0222D2FC
_0222D2E0:
	mov r4, #0x43
	b _0222D2FC
_0222D2E8:
	mov r4, #0x41
	b _0222D2FC
_0222D2F0:
	mov r4, #0x45
	b _0222D2FC
_0222D2F8:
	mov r4, #0x40
_0222D2FC:
	ldr r0, [r1, #0x114]
	mov r1, #0
	bl ov18_02243BBC
	mov r2, r0
	mov r1, r4
	mov r0, #0
	bl ov18_02243ECC
	ldr r0, _0222D364 @ =0x0225329C
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #2
	ldr r0, [r0, #0x114]
	bl ov18_02243DE4
	ldr r0, _0222D364 @ =0x0225329C
	ldr r2, _0222D368 @ =0x02248E3C
	ldr r3, [r0]
	mvn r1, #0
	add r0, r3, #0x100
	ldrsb ip, [r0, #0x21]
	ldr r0, [r3, #0x114]
	ldr r3, _0222D36C @ =0x02248E3E
	lsl ip, ip, #2
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_02243CF4
	pop {r4, pc}
	.align 2, 0
_0222D364: .4byte 0x0225329C
_0222D368: .4byte 0x02248E3C
_0222D36C: .4byte 0x02248E3E
	arm_func_end ov18_0222D294

	arm_func_start ov18_0222D370
ov18_0222D370: @ 0x0222D370
	push {r3, lr}
	ldr r2, _0222D7A0 @ =0x0225329C
	ldr r3, _0222D7A4 @ =0x02248F10
	ldr ip, [r2]
	add r1, ip, #0x100
	ldrsb lr, [r1, #0x21]
	add r1, r3, lr, lsl #2
	ldrsb r1, [r0, r1]
	strb r1, [ip, #0x121]
	ldr r1, [r2]
	add r2, r1, #0x100
	ldrsb r3, [r2, #0x21]
	cmp r3, #0x2e
	cmpeq r0, #3
	strbeq lr, [r1, #0x120]
	beq _0222D790
	cmp r3, #0x33
	bne _0222D3C8
	cmp r0, #1
	cmpne r0, #3
	strbeq lr, [r1, #0x120]
	beq _0222D790
_0222D3C8:
	cmp r3, #0x34
	bne _0222D3E8
	cmp r0, #1
	cmpne r0, #3
	bne _0222D3E8
	cmp lr, #0x2e
	strbne lr, [r1, #0x120]
	b _0222D790
_0222D3E8:
	mvn r2, #0
	cmp r3, r2
	bne _0222D418
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	cmpne r0, #0x32
	moveq r0, #0x23
	strbeq r0, [r1, #0x121]
	movne r0, #0x22
	strbne r0, [r1, #0x121]
	b _0222D790
_0222D418:
	sub r0, r2, #1
	cmp r3, r0
	bne _0222D4D8
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _0222D470
	bge _0222D4A8
	cmp r0, #5
	bgt _0222D464
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D4CC
_0222D44C: @ jump table
	b _0222D490 @ case 0
	b _0222D49C @ case 1
	b _0222D4CC @ case 2
	b _0222D4A8 @ case 3
	b _0222D4B4 @ case 4
	b _0222D4C0 @ case 5
_0222D464:
	cmp r0, #0x24
	beq _0222D49C
	b _0222D4CC
_0222D470:
	cmp r0, #0x28
	bgt _0222D488
	bge _0222D4C0
	cmp r0, #0x27
	beq _0222D4B4
	b _0222D4CC
_0222D488:
	cmp r0, #0x31
	bne _0222D4CC
_0222D490:
	mov r0, #0x31
	strb r0, [r1, #0x121]
	b _0222D790
_0222D49C:
	mov r0, #0x24
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4A8:
	mov r0, #0x26
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4B4:
	mov r0, #0x27
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4C0:
	mov r0, #0x28
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4CC:
	mov r0, #0x25
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4D8:
	sub r0, r2, #2
	cmp r3, r0
	bne _0222D5D0
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _0222D548
	bge _0222D5B8
	cmp r0, #0xb
	bgt _0222D53C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D5C4
_0222D50C: @ jump table
	b _0222D5C4 @ case 0
	b _0222D5C4 @ case 1
	b _0222D5C4 @ case 2
	b _0222D5C4 @ case 3
	b _0222D5C4 @ case 4
	b _0222D5C4 @ case 5
	b _0222D588 @ case 6
	b _0222D594 @ case 7
	b _0222D5C4 @ case 8
	b _0222D5A0 @ case 9
	b _0222D5AC @ case 10
	b _0222D5B8 @ case 11
_0222D53C:
	cmp r0, #0x22
	beq _0222D5B8
	b _0222D5C4
_0222D548:
	cmp r0, #0x2a
	bgt _0222D560
	bge _0222D594
	cmp r0, #0x29
	beq _0222D588
	b _0222D5C4
_0222D560:
	cmp r0, #0x32
	bgt _0222D5C4
	cmp r0, #0x2c
	blt _0222D5C4
	beq _0222D5A0
	cmp r0, #0x2d
	beq _0222D5AC
	cmp r0, #0x32
	beq _0222D5B8
	b _0222D5C4
_0222D588:
	mov r0, #0x29
	strb r0, [r1, #0x121]
	b _0222D790
_0222D594:
	mov r0, #0x2a
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5A0:
	mov r0, #0x2c
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5AC:
	mov r0, #0x2d
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5B8:
	mov r0, #0x2e
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5C4:
	mov r0, #0x2b
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5D0:
	sub r0, r2, #3
	cmp r3, r0
	bne _0222D690
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _0222D628
	bge _0222D660
	cmp r0, #5
	bgt _0222D61C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D684
_0222D604: @ jump table
	b _0222D648 @ case 0
	b _0222D654 @ case 1
	b _0222D684 @ case 2
	b _0222D660 @ case 3
	b _0222D66C @ case 4
	b _0222D678 @ case 5
_0222D61C:
	cmp r0, #0x24
	beq _0222D654
	b _0222D684
_0222D628:
	cmp r0, #0x28
	bgt _0222D640
	bge _0222D678
	cmp r0, #0x27
	beq _0222D66C
	b _0222D684
_0222D640:
	cmp r0, #0x31
	bne _0222D684
_0222D648:
	mov r0, #0
	strb r0, [r1, #0x121]
	b _0222D790
_0222D654:
	mov r0, #1
	strb r0, [r1, #0x121]
	b _0222D790
_0222D660:
	mov r0, #3
	strb r0, [r1, #0x121]
	b _0222D790
_0222D66C:
	mov r0, #4
	strb r0, [r1, #0x121]
	b _0222D790
_0222D678:
	mov r0, #5
	strb r0, [r1, #0x121]
	b _0222D790
_0222D684:
	mov r0, #2
	strb r0, [r1, #0x121]
	b _0222D790
_0222D690:
	sub r0, r2, #4
	cmp r3, r0
	bne _0222D790
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _0222D700
	bge _0222D77C
	cmp r0, #0xb
	bgt _0222D6F4
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D788
_0222D6C4: @ jump table
	b _0222D788 @ case 0
	b _0222D788 @ case 1
	b _0222D788 @ case 2
	b _0222D788 @ case 3
	b _0222D788 @ case 4
	b _0222D788 @ case 5
	b _0222D740 @ case 6
	b _0222D74C @ case 7
	b _0222D788 @ case 8
	b _0222D758 @ case 9
	b _0222D764 @ case 10
	b _0222D770 @ case 11
_0222D6F4:
	cmp r0, #0x22
	beq _0222D770
	b _0222D788
_0222D700:
	cmp r0, #0x2a
	bgt _0222D718
	bge _0222D74C
	cmp r0, #0x29
	beq _0222D740
	b _0222D788
_0222D718:
	cmp r0, #0x32
	bgt _0222D788
	cmp r0, #0x2c
	blt _0222D788
	beq _0222D758
	cmp r0, #0x2d
	beq _0222D764
	cmp r0, #0x32
	beq _0222D77C
	b _0222D788
_0222D740:
	mov r0, #6
	strb r0, [r1, #0x121]
	b _0222D790
_0222D74C:
	mov r0, #7
	strb r0, [r1, #0x121]
	b _0222D790
_0222D758:
	mov r0, #9
	strb r0, [r1, #0x121]
	b _0222D790
_0222D764:
	mov r0, #0xa
	strb r0, [r1, #0x121]
	b _0222D790
_0222D770:
	mov r0, #0xb
	strb r0, [r1, #0x121]
	b _0222D790
_0222D77C:
	mov r0, #0x32
	strb r0, [r1, #0x121]
	b _0222D790
_0222D788:
	mov r0, #8
	strb r0, [r1, #0x121]
_0222D790:
	bl ov18_0222D294
	mov r0, #8
	bl ov18_0223E994
	pop {r3, pc}
	.align 2, 0
_0222D7A0: .4byte 0x0225329C
_0222D7A4: .4byte 0x02248F10
	arm_func_end ov18_0222D370

	arm_func_start ov18_0222D7A8
ov18_0222D7A8: @ 0x0222D7A8
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D820 @ =0x0225329C
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r0, [r0, #0xfc]
	bl ov18_02243BBC
	ldr r3, [r0]
	ldr r1, _0222D820 @ =0x0225329C
	ldr r0, _0222D824 @ =0x01FF0000
	and r2, r3, #0xff
	and r0, r3, r0
	lsr r3, r0, #0x10
	ldr r1, [r1]
	add r2, r2, #0xc
	ldrb r0, [r1, #0x11d]
	str r2, [sp]
	mov r1, #4
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222D828 @ =ov18_0222D82C
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222D820: .4byte 0x0225329C
_0222D824: .4byte 0x01FF0000
_0222D828: .4byte ov18_0222D82C
	arm_func_end ov18_0222D7A8

	arm_func_start ov18_0222D82C
ov18_0222D82C: @ 0x0222D82C
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D894 @ =0x0225329C
	ldr r2, _0222D898 @ =0x01FF0000
	ldr r3, [r1]
	mov r4, r0
	ldr r1, [r3, #0xc0]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #3
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	lsr r3, ip, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222D89C @ =ov18_0222D8A0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222D894: .4byte 0x0225329C
_0222D898: .4byte 0x01FF0000
_0222D89C: .4byte ov18_0222D8A0
	arm_func_end ov18_0222D82C

	arm_func_start ov18_0222D8A0
ov18_0222D8A0: @ 0x0222D8A0
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D908 @ =0x0225329C
	ldr r2, _0222D90C @ =0x01FF0000
	ldr r3, [r1]
	mov r4, r0
	ldr r1, [r3, #0x90]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #2
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	lsr r3, ip, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222D910 @ =ov18_0222D914
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222D908: .4byte 0x0225329C
_0222D90C: .4byte 0x01FF0000
_0222D910: .4byte ov18_0222D914
	arm_func_end ov18_0222D8A0

	arm_func_start ov18_0222D914
ov18_0222D914: @ 0x0222D914
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D97C @ =0x0225329C
	ldr r2, _0222D980 @ =0x01FF0000
	ldr r3, [r1]
	mov r4, r0
	ldr r1, [r3, #0x60]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #1
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	lsr r3, ip, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222D984 @ =ov18_0222D988
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222D97C: .4byte 0x0225329C
_0222D980: .4byte 0x01FF0000
_0222D984: .4byte ov18_0222D988
	arm_func_end ov18_0222D914

	arm_func_start ov18_0222D988
ov18_0222D988: @ 0x0222D988
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D9F0 @ =0x0225329C
	ldr r2, _0222D9F4 @ =0x01FF0000
	ldr r3, [r1]
	mov r4, r0
	ldr r1, [r3, #0x30]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #0
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	lsr r3, ip, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222D9F8 @ =ov18_0222D9FC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222D9F0: .4byte 0x0225329C
_0222D9F4: .4byte 0x01FF0000
_0222D9F8: .4byte ov18_0222D9FC
	arm_func_end ov18_0222D988

	arm_func_start ov18_0222D9FC
ov18_0222D9FC: @ 0x0222D9FC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	mov r5, #0
	ldr r7, _0222DAD4 @ =0x0225329C
	mov r4, r5
_0222DA18:
	mov r6, r4
_0222DA1C:
	ldr r0, [r7]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, r6, lsl #2]
	bl ov18_02244650
	cmp r5, #0
	bne _0222DA44
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x104]
	bl ov18_02243B3C
_0222DA44:
	add r6, r6, #1
	cmp r6, #4
	blt _0222DA1C
	add r5, r5, #1
	cmp r5, #3
	blt _0222DA18
	ldr r4, _0222DAD4 @ =0x0225329C
	mov r5, #0
_0222DA64:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xfc]
	bl ov18_02243B3C
	add r5, r5, #1
	cmp r5, #2
	blt _0222DA64
	ldr r4, _0222DAD4 @ =0x0225329C
	mov r5, #0
_0222DA88:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xec]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #4
	blt _0222DA88
	ldr r4, _0222DAD4 @ =0x0225329C
	mov r5, #0
_0222DAAC:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x30]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #0x2f
	blt _0222DAAC
	ldr r0, _0222DAD8 @ =0x0225329C
	bl ov18_0224508C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222DAD4: .4byte 0x0225329C
_0222DAD8: .4byte 0x0225329C
	arm_func_end ov18_0222D9FC

	arm_func_start ov18_0222DADC
ov18_0222DADC: @ 0x0222DADC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r0, _0222DDFC @ =0x02249004
	mov r3, #0x1c
	ldrh r5, [r0, #0x20]
	ldrh r4, [r0, #0x22]
	mov r2, #0x14
	mov r0, #0x6c
	mov r1, #4
	strh r5, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	bl ov18_02245068
	ldr r8, _0222DE00 @ =0x022532A0
	mov r6, #0
	mov r1, #0x1f
	str r0, [r8]
	strb r1, [r0, #0x60]
	ldr r0, [r8]
	mov r1, #1
	strb r6, [r0, #0x63]
	ldr r0, [r8]
	ldr r7, _0222DE04 @ =0xC1FFFCFF
	strb r1, [r0, #0x66]
	ldr r0, [r8]
	mov r5, r6
	strb r1, [r0, #0x67]
	ldr r0, [r8]
	mov r4, #0x36
	strb r1, [r0, #0x68]
_0222DB58:
	mov r0, r5
	mov r1, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x10]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x10]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #0xa
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222DB58
	mov r6, #0
	ldr r5, _0222DE08 @ =0x02248FF0
	ldr r8, _0222DE00 @ =0x022532A0
	ldr r7, _0222DE04 @ =0xC1FFFCFF
	mov r4, r6
_0222DBC8:
	ldrb r1, [r5], #1
	mov r0, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x38]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #2
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222DBC8
	mov sl, #0
	ldr sb, _0222DE0C @ =0x02248FF4
	ldr r4, _0222DE00 @ =0x022532A0
	mov r8, sl
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov fp, sl
_0222DC44:
	ldrb r1, [sb], #1
	mov r0, r8
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, sl, lsl #2
	str r0, [r2, #0x40]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0x40]
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, #3
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #2
	blt _0222DC44
	mov sl, #0
	str sl, [sp, #0x10]
	strh sl, [sp, #0x16]
_0222DCAC:
	add r1, sp, #0x18
	mov r0, #0
	str r1, [sp]
	mov r3, r0
	mov r1, #0xc
	mov r2, #4
	str r0, [sp, #4]
	bl ov18_02244574
	ldr fp, _0222DE00 @ =0x022532A0
	mov sb, #0
	ldr r1, [fp]
	ldr r8, [sp, #0x10]
	ldr r7, _0222DE10 @ =0x0224903C
	str r0, [r1, sl, lsl #2]
	strh sb, [sp, #0x1c]
	mov r6, #2
	mov r5, #0x480
	add r4, sp, #0x14
_0222DCF4:
	lsl r0, r8, #1
	ldrh r2, [r7, r0]
	ldrh r0, [sp, #0x22]
	ldrh r1, [sp, #0x1c]
	strh r2, [sp, #0x14]
	stm sp, {r0, r6}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [fp]
	ldrh r2, [sp, #0x1e]
	ldrh r3, [sp, #0x20]
	ldr r0, [r0, sl, lsl #2]
	bl ov18_02244A9C
	ldrh r0, [sp, #0x1c]
	add sb, sb, #1
	cmp sb, #3
	add r0, r0, #0x20
	strh r0, [sp, #0x1c]
	add r8, r8, #1
	blt _0222DCF4
	mov r0, #0
	ldr r1, [sp, #0x18]
	mov r2, r0
	bl ov18_022439E0
	ldr r1, [sp, #0x10]
	ldr r2, _0222DE00 @ =0x022532A0
	add r1, r1, #3
	str r1, [sp, #0x10]
	ldr r1, [r2]
	add r1, r1, sl, lsl #2
	add sl, sl, #1
	str r0, [r1, #0x48]
	cmp sl, #4
	blt _0222DCAC
	mov r0, #0
	mov r1, #0x44
	mov r2, #1
	bl ov18_02243F8C
	ldr r3, _0222DE00 @ =0x022532A0
	mvn r1, #0
	ldr r4, [r3]
	mov r2, #0x200
	str r0, [r4, #0x58]
	ldr r0, [r3]
	mov r3, #0
	ldr r0, [r0, #0x58]
	bl ov18_02243BD0
	ldr r0, _0222DE00 @ =0x022532A0
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #2
	ldr r0, [r0, #0x58]
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0222DE14 @ =ov18_0222DEB8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r2, _0222DE00 @ =0x022532A0
	mov r1, #0xc0
	ldr r2, [r2]
	str r0, [r2, #0x5c]
	mov r0, #0
	bl ov18_0222E8D8
	add sp, sp, #0x24
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222DDFC: .4byte 0x02249004
_0222DE00: .4byte 0x022532A0
_0222DE04: .4byte 0xC1FFFCFF
_0222DE08: .4byte 0x02248FF0
_0222DE0C: .4byte 0x02248FF4
_0222DE10: .4byte 0x0224903C
_0222DE14: .4byte ov18_0222DEB8
	arm_func_end ov18_0222DADC

	arm_func_start ov18_0222DE18
ov18_0222DE18: @ 0x0222DE18
	push {r3, lr}
	ldr r0, _0222DE44 @ =0x022532A0
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	bl ov18_02243B3C
	ldr r0, _0222DE44 @ =0x022532A0
	ldr r1, _0222DE48 @ =ov18_0222ED38
	ldr r0, [r0]
	ldr r0, [r0, #0x5c]
	bl ov18_022463A4
	pop {r3, pc}
	.align 2, 0
_0222DE44: .4byte 0x022532A0
_0222DE48: .4byte ov18_0222ED38
	arm_func_end ov18_0222DE18

	arm_func_start ov18_0222DE4C
ov18_0222DE4C: @ 0x0222DE4C
	ldr r0, _0222DE5C @ =0x022532A0
	ldr r0, [r0]
	ldrb r0, [r0, #0x60]
	bx lr
	.align 2, 0
_0222DE5C: .4byte 0x022532A0
	arm_func_end ov18_0222DE4C

	arm_func_start ov18_0222DE60
ov18_0222DE60: @ 0x0222DE60
	ldr r1, _0222DE70 @ =0x022532A0
	ldr r1, [r1]
	strb r0, [r1, #0x66]
	bx lr
	.align 2, 0
_0222DE70: .4byte 0x022532A0
	arm_func_end ov18_0222DE60

	arm_func_start ov18_0222DE74
ov18_0222DE74: @ 0x0222DE74
	ldr r1, _0222DE84 @ =0x022532A0
	ldr r1, [r1]
	strb r0, [r1, #0x67]
	bx lr
	.align 2, 0
_0222DE84: .4byte 0x022532A0
	arm_func_end ov18_0222DE74

	arm_func_start ov18_0222DE88
ov18_0222DE88: @ 0x0222DE88
	ldr r1, _0222DE98 @ =0x022532A0
	ldr r1, [r1]
	strb r0, [r1, #0x68]
	bx lr
	.align 2, 0
_0222DE98: .4byte 0x022532A0
	arm_func_end ov18_0222DE88

	arm_func_start ov18_0222DE9C
ov18_0222DE9C: @ 0x0222DE9C
	ldr r0, _0222DEB4 @ =0x022532A0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0222DEB4: .4byte 0x022532A0
	arm_func_end ov18_0222DE9C

	arm_func_start ov18_0222DEB8
ov18_0222DEB8: @ 0x0222DEB8
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222DF30 @ =0x022532A0
	mov r4, r0
	ldr r2, [r2]
	ldr r1, _0222DF34 @ =0x01FF0000
	ldr r0, [r2, #0x10]
	ldr r0, [r0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	lsr r0, r2, #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x4c
	mov r0, #0
	ble _0222DF08
	bl ov18_0222E8D8
	add sp, sp, #8
	pop {r4, pc}
_0222DF08:
	mov r1, #0x4c
	bl ov18_0222E8D8
	mov r0, #1
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222DF38 @ =ov18_0222DF3C
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222DF30: .4byte 0x022532A0
_0222DF34: .4byte 0x01FF0000
_0222DF38: .4byte ov18_0222DF3C
	arm_func_end ov18_0222DEB8

	arm_func_start ov18_0222DF3C
ov18_0222DF3C: @ 0x0222DF3C
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222DFB4 @ =0x022532A0
	mov r4, r0
	ldr r2, [r2]
	ldr r1, _0222DFB8 @ =0x01FF0000
	ldr r0, [r2, #0x1c]
	ldr r0, [r0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	lsr r0, r2, #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x63
	mov r0, #1
	ble _0222DF8C
	bl ov18_0222E8D8
	add sp, sp, #8
	pop {r4, pc}
_0222DF8C:
	mov r1, #0x63
	bl ov18_0222E8D8
	mov r0, #2
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222DFBC @ =ov18_0222DFC0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222DFB4: .4byte 0x022532A0
_0222DFB8: .4byte 0x01FF0000
_0222DFBC: .4byte ov18_0222DFC0
	arm_func_end ov18_0222DF3C

	arm_func_start ov18_0222DFC0
ov18_0222DFC0: @ 0x0222DFC0
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222E038 @ =0x022532A0
	mov r4, r0
	ldr r2, [r2]
	ldr r1, _0222E03C @ =0x01FF0000
	ldr r0, [r2, #0x28]
	ldr r0, [r0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	lsr r0, r2, #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x7a
	mov r0, #2
	ble _0222E010
	bl ov18_0222E8D8
	add sp, sp, #8
	pop {r4, pc}
_0222E010:
	mov r1, #0x7a
	bl ov18_0222E8D8
	mov r0, #3
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222E040 @ =ov18_0222E044
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222E038: .4byte 0x022532A0
_0222E03C: .4byte 0x01FF0000
_0222E040: .4byte ov18_0222E044
	arm_func_end ov18_0222DFC0

	arm_func_start ov18_0222E044
ov18_0222E044: @ 0x0222E044
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222E0BC @ =0x022532A0
	mov r4, r0
	ldr r2, [r2]
	ldr r1, _0222E0C0 @ =0x01FF0000
	ldr r0, [r2, #0x34]
	ldr r0, [r0]
	and r2, r0, r1
	and r0, r0, #0xff
	sub r1, r0, #0xc
	lsr r0, r2, #0x10
	str r0, [sp, #4]
	str r1, [sp]
	cmp r1, #0x91
	mov r0, #3
	ble _0222E094
	bl ov18_0222E8D8
	add sp, sp, #8
	pop {r4, pc}
_0222E094:
	mov r1, #0x91
	bl ov18_0222E8D8
	mov r0, #4
	mov r1, #0xc0
	bl ov18_0222E8D8
	ldr r1, _0222E0C4 @ =ov18_0222E0C8
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222E0BC: .4byte 0x022532A0
_0222E0C0: .4byte 0x01FF0000
_0222E0C4: .4byte ov18_0222E0C8
	arm_func_end ov18_0222E044

	arm_func_start ov18_0222E0C8
ov18_0222E0C8: @ 0x0222E0C8
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222E134 @ =0x022532A0
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #0x40]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	sub r1, r0, #0xc
	str r1, [sp]
	cmp r1, #0xaa
	mov r0, #4
	ble _0222E114
	bl ov18_0222E8D8
	add sp, sp, #8
	pop {r4, pc}
_0222E114:
	mov r1, #0xaa
	bl ov18_0222E8D8
	bl ov18_0222EC00
	ldr r1, _0222E138 @ =ov18_0222E13C
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222E134: .4byte 0x022532A0
_0222E138: .4byte ov18_0222E13C
	arm_func_end ov18_0222E0C8

	arm_func_start ov18_0222E13C
ov18_0222E13C: @ 0x0222E13C
	push {r3, lr}
	bl ov18_0222E154
	bl ov18_0222E330
	bl ov18_0222E500
	bl ov18_0222E73C
	pop {r3, pc}
	arm_func_end ov18_0222E13C

	arm_func_start ov18_0222E154
ov18_0222E154: @ 0x0222E154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222E310 @ =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222E314 @ =0x022532A0
	mvn r1, #0
	ldr r0, [r0]
	ldr r7, _0222E318 @ =0x02249056
	ldr r6, _0222E31C @ =0x02249004
	strb r1, [r0, #0x61]
	mov r4, #0
	add r5, sp, #0
_0222E190:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222E1F0
	ldr r0, _0222E314 @ =0x022532A0
	ldr r0, [r0]
	ldrb r0, [r0, #0x67]
	cmp r0, #0
	bne _0222E1D4
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E1D4:
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222E314 @ =0x022532A0
	add sp, sp, #8
	ldr r0, [r0]
	strb r4, [r0, #0x61]
	pop {r3, r4, r5, r6, r7, pc}
_0222E1F0:
	add r4, r4, #1
	cmp r4, #0xa
	add r7, r7, #4
	blt _0222E190
	ldr r7, _0222E320 @ =0x0224902C
	ldr r6, _0222E324 @ =0x0224900C
	mov r4, #0
	add r5, sp, #0
_0222E210:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222E298
	cmp r4, #0
	bne _0222E24C
	ldr r0, _0222E314 @ =0x022532A0
	ldr r0, [r0]
	ldrb r0, [r0, #0x66]
	cmp r0, #0
	beq _0222E268
_0222E24C:
	cmp r4, #1
	bne _0222E278
	ldr r0, _0222E314 @ =0x022532A0
	ldr r0, [r0]
	ldrb r0, [r0, #0x68]
	cmp r0, #0
	bne _0222E278
_0222E268:
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E278:
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222E314 @ =0x022532A0
	add r1, r4, #0xa
	ldr r0, [r0]
	add sp, sp, #8
	strb r1, [r0, #0x61]
	pop {r3, r4, r5, r6, r7, pc}
_0222E298:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222E210
	ldr r6, _0222E328 @ =0x02249034
	ldr r5, _0222E32C @ =0x02249010
	mov r7, #0
	add r4, sp, #0
_0222E2B8:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_022455B8
	cmp r0, #0
	beq _0222E2F8
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222E314 @ =0x022532A0
	add r1, r7, #0xc
	ldr r0, [r0]
	add sp, sp, #8
	strb r1, [r0, #0x61]
	pop {r3, r4, r5, r6, r7, pc}
_0222E2F8:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222E2B8
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E310: .4byte 0x02249734
_0222E314: .4byte 0x022532A0
_0222E318: .4byte 0x02249056
_0222E31C: .4byte 0x02249004
_0222E320: .4byte 0x0224902C
_0222E324: .4byte 0x0224900C
_0222E328: .4byte 0x02249034
_0222E32C: .4byte 0x02249010
	arm_func_end ov18_0222E154

	arm_func_start ov18_0222E330
ov18_0222E330: @ 0x0222E330
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _0222E4D4 @ =0x022532A0
	ldr r0, _0222E4D8 @ =0x02249734
	ldr r1, [r1]
	mov r2, #0
	strb r2, [r1, #0x60]
	bl ov18_022456C8
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r7, _0222E4DC @ =0x02249056
	ldr r6, _0222E4E0 @ =0x02249004
	mov r4, #0
	add r5, sp, #0
_0222E36C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222E3C4
	ldr r0, _0222E4D4 @ =0x022532A0
	ldr r2, [r0]
	ldrsb r1, [r2, #0x61]
	cmp r1, r4
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, _0222E4E4 @ =0x022490F0
	ldrb r1, [r1, r4]
	strb r1, [r2, #0x60]
	ldr r0, [r0]
	strb r4, [r0, #0x63]
	bl ov18_0222EC00
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E3C4:
	add r4, r4, #1
	cmp r4, #0xa
	add r7, r7, #4
	blt _0222E36C
	ldr r7, _0222E4E8 @ =0x0224902C
	ldr r6, _0222E4EC @ =0x0224900C
	mov r4, #0
	add r5, sp, #0
_0222E3E4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222E440
	ldr r0, _0222E4D4 @ =0x022532A0
	add r2, r4, #0xa
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, _0222E4F0 @ =0x02249000
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl ov18_0222EC00
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E440:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222E3E4
	ldr r7, _0222E4F4 @ =0x02249034
	ldr r6, _0222E4F8 @ =0x02249010
	mov r4, #0
	add r5, sp, #0
_0222E460:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222E4BC
	ldr r0, _0222E4D4 @ =0x022532A0
	add r2, r4, #0xc
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, _0222E4FC @ =0x02248FFC
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl ov18_0222EC00
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222E4BC:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222E460
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E4D4: .4byte 0x022532A0
_0222E4D8: .4byte 0x02249734
_0222E4DC: .4byte 0x02249056
_0222E4E0: .4byte 0x02249004
_0222E4E4: .4byte 0x022490F0
_0222E4E8: .4byte 0x0224902C
_0222E4EC: .4byte 0x0224900C
_0222E4F0: .4byte 0x02249000
_0222E4F4: .4byte 0x02249034
_0222E4F8: .4byte 0x02249010
_0222E4FC: .4byte 0x02248FFC
	arm_func_end ov18_0222E330

	arm_func_start ov18_0222E500
ov18_0222E500: @ 0x0222E500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222E6D0 @ =0x02249734
	bl ov18_02245530
	cmp r0, #0
	beq _0222E6B0
	ldr r7, _0222E6D4 @ =0x02249056
	ldr r5, _0222E6D8 @ =0x02249004
	mov r6, #0
	add r4, sp, #0
_0222E528:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222E568
	ldr r0, _0222E6DC @ =0x022532A0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x61]
	cmp r0, r6
	bne _0222E6B0
	mov r0, r6
	bl ov18_0222E6F0
	b _0222E6B8
_0222E568:
	add r6, r6, #1
	cmp r6, #0xa
	add r7, r7, #4
	blt _0222E528
	ldr r6, _0222E6E0 @ =0x0224902C
	ldr r5, _0222E6E4 @ =0x0224900C
	mov r7, #0
	add r4, sp, #0
_0222E588:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222E640
	ldr r1, _0222E6DC @ =0x022532A0
	add r0, r7, #0xa
	ldr r1, [r1]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _0222E6B0
	bl ov18_0222E6F0
	cmp r7, #0
	bne _0222E6B8
	ldr r0, _0222E6DC @ =0x022532A0
	ldr r2, [r0]
	ldrb r1, [r2, #0x65]
	add r1, r1, #1
	strb r1, [r2, #0x65]
	ldr r2, [r0]
	ldrb r1, [r2, #0x65]
	cmp r1, #0x28
	addlo sp, sp, #8
	poplo {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r2, #0x66]
	cmp r1, #0
	bne _0222E620
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222E6DC @ =0x022532A0
	mvn r1, #0
	ldr r0, [r0]
	add sp, sp, #8
	strb r1, [r0, #0x61]
	pop {r3, r4, r5, r6, r7, pc}
_0222E620:
	mov r1, #0x10
	strb r1, [r2, #0x60]
	ldr r1, [r0]
	add sp, sp, #8
	ldrb r0, [r1, #0x65]
	sub r0, r0, #7
	strb r0, [r1, #0x65]
	pop {r3, r4, r5, r6, r7, pc}
_0222E640:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222E588
	ldr r6, _0222E6E8 @ =0x02249034
	ldr r5, _0222E6EC @ =0x02249010
	mov r7, #0
	add r4, sp, #0
_0222E660:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222E6A0
	ldr r1, _0222E6DC @ =0x022532A0
	add r0, r7, #0xc
	ldr r1, [r1]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _0222E6B0
	bl ov18_0222E6F0
	b _0222E6B8
_0222E6A0:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222E660
_0222E6B0:
	mvn r0, #0
	bl ov18_0222E6F0
_0222E6B8:
	ldr r0, _0222E6DC @ =0x022532A0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x65]
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E6D0: .4byte 0x02249734
_0222E6D4: .4byte 0x02249056
_0222E6D8: .4byte 0x02249004
_0222E6DC: .4byte 0x022532A0
_0222E6E0: .4byte 0x0224902C
_0222E6E4: .4byte 0x0224900C
_0222E6E8: .4byte 0x02249034
_0222E6EC: .4byte 0x02249010
	arm_func_end ov18_0222E500

	arm_func_start ov18_0222E6F0
ov18_0222E6F0: @ 0x0222E6F0
	push {r4, lr}
	ldr r1, _0222E738 @ =0x022532A0
	mov r4, r0
	ldr r1, [r1]
	ldrsb r1, [r1, #0x62]
	cmp r4, r1
	popeq {r4, pc}
	mov r1, #1
	bl ov18_0222EB38
	ldr r0, _0222E738 @ =0x022532A0
	mov r1, #0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x62]
	bl ov18_0222EB38
	ldr r0, _0222E738 @ =0x022532A0
	ldr r0, [r0]
	strb r4, [r0, #0x62]
	pop {r4, pc}
	.align 2, 0
_0222E738: .4byte 0x022532A0
	arm_func_end ov18_0222E6F0

	arm_func_start ov18_0222E73C
ov18_0222E73C: @ 0x0222E73C
	push {r3, lr}
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E758
	mov r0, #0
	bl ov18_0222EC8C
_0222E758:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E770
	mov r0, #1
	bl ov18_0222EC8C
_0222E770:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E788
	mov r0, #2
	bl ov18_0222EC8C
_0222E788:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E7A0
	mov r0, #3
	bl ov18_0222EC8C
_0222E7A0:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0222E84C
	ldr r0, _0222E8C8 @ =0x022532A0
	ldr r0, [r0]
	ldrsb r2, [r0, #0x63]
	cmp r2, #0xa
	bge _0222E7EC
	ldrb r1, [r0, #0x67]
	cmp r1, #0
	beq _0222E7E0
	ldr r1, _0222E8CC @ =0x022490F0
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	pop {r3, pc}
_0222E7E0:
	mov r0, #9
	bl ov18_0223E994
	pop {r3, pc}
_0222E7EC:
	sub r1, r2, #0xa
	cmp r1, #2
	bge _0222E83C
	cmp r1, #0
	ldrbeq r1, [r0, #0x66]
	cmpeq r1, #0
	beq _0222E81C
	sub r1, r2, #0xa
	cmp r1, #1
	ldrbeq r1, [r0, #0x68]
	cmpeq r1, #0
	bne _0222E828
_0222E81C:
	mov r0, #9
	bl ov18_0223E994
	pop {r3, pc}
_0222E828:
	ldr r1, _0222E8D0 @ =0x02249000
	sub r2, r2, #0xa
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	pop {r3, pc}
_0222E83C:
	ldr r1, _0222E8D4 @ =0x02248FFC
	sub r2, r2, #0xc
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
_0222E84C:
	mov r0, #2
	bl ov18_022454B0
	cmp r0, #0
	beq _0222E8A4
	ldr r0, _0222E8C8 @ =0x022532A0
	ldr r1, [r0]
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _0222E898
	ldrb r0, [r1, #0x69]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222E8C8 @ =0x022532A0
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x69]
	pop {r3, pc}
_0222E898:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	pop {r3, pc}
_0222E8A4:
	mov r0, #2
	bl ov18_022454F0
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _0222E8C8 @ =0x022532A0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x69]
	pop {r3, pc}
	.align 2, 0
_0222E8C8: .4byte 0x022532A0
_0222E8CC: .4byte 0x022490F0
_0222E8D0: .4byte 0x02249000
_0222E8D4: .4byte 0x02248FFC
	arm_func_end ov18_0222E73C

	arm_func_start ov18_0222E8D8
ov18_0222E8D8: @ 0x0222E8D8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r2, _0222EB1C @ =0x02249004
	mov sl, r0
	ldrb r3, [r2, #0x15]
	ldrb r0, [r2, #0x16]
	ldrb r4, [r2, #0x17]
	strb r3, [sp, #0xe]
	strb r0, [sp, #0xf]
	ldrb r0, [r2, #0x18]
	mov sb, r1
	add r3, sp, #0xe
	strb r4, [sp, #0x10]
	strb r0, [sp, #0x11]
	ldrb r0, [r2, #0x19]
	add lr, sl, sl, lsl #1
	mov r4, lr
	strb r0, [sp, #0x12]
	ldrb r6, [r2, #0x1a]
	ldrb r1, [r2, #0x1b]
	ldrb r0, [r3, sl]
	mov r5, #0
	strb r6, [sp, #9]
	strb r1, [sp, #0xa]
	ldrb r6, [r2, #0x1c]
	ldrb r1, [r2, #0x1d]
	cmp r0, #0
	strb r6, [sp, #0xb]
	strb r1, [sp, #0xc]
	ldrb r0, [r2, #0x1e]
	strb r0, [sp, #0xd]
	ldrb r1, [r2, #0x10]
	ldrb r0, [r2, #0x11]
	strb r1, [sp, #4]
	strb r0, [sp, #5]
	ldrb r1, [r2, #0x12]
	ldrb r0, [r2, #0x13]
	strb r1, [sp, #6]
	strb r0, [sp, #7]
	ldrb r0, [r2, #0x14]
	strb r0, [sp, #8]
	ble _0222E9EC
	ldr r0, _0222EB20 @ =0x02249056
	ldr fp, _0222EB24 @ =0x022532A0
	ldr r7, _0222EB28 @ =0xC1FFFCFF
	ldr r8, _0222EB2C @ =0xFE00FF00
	and r6, sb, #0xff
_0222E994:
	ldr r1, [fp]
	lsl r2, r4, #2
	add r1, r1, r4, lsl #2
	ldr r1, [r1, #0x10]
	ldrh r2, [r0, r2]
	ldr ip, [r1]
	add r5, r5, #1
	and ip, ip, r7
	str ip, [r1]
	ldr ip, [fp]
	lsl r1, r2, #0x17
	add r2, ip, r4, lsl #2
	ldr r2, [r2, #0x10]
	add r4, r4, #1
	ldr ip, [r2]
	and ip, ip, r8
	orr ip, ip, r6
	orr r1, ip, r1, lsr #7
	str r1, [r2]
	ldrb r1, [r3, sl]
	cmp r5, r1
	blt _0222E994
_0222E9EC:
	cmp sl, #4
	bge _0222EA24
	ldr r0, _0222EB24 @ =0x022532A0
	ldr r1, _0222EB20 @ =0x02249056
	ldr r3, [r0]
	lsl r0, lr, #2
	mov r2, #2
	str r2, [sp]
	add r2, r3, sl, lsl #2
	ldrh r1, [r1, r0]
	ldr r0, [r3, sl, lsl #2]
	ldr r3, [r2, #0x48]
	mov r2, sb
	bl ov18_02244B70
_0222EA24:
	add r3, sp, #9
	ldrb r0, [r3, sl]
	mov r5, #0
	cmp r0, #0
	ble _0222EAA0
	ldr r0, _0222EB30 @ =0x0224902C
	ldr r8, _0222EB24 @ =0x022532A0
	ldr r6, _0222EB28 @ =0xC1FFFCFF
	ldr r7, _0222EB2C @ =0xFE00FF00
	and r4, sb, #0xff
_0222EA4C:
	ldr r1, [r8]
	lsl r2, r5, #2
	add r1, r1, r5, lsl #2
	ldr fp, [r1, #0x38]
	ldrh r1, [r0, r2]
	ldr r2, [fp]
	and r2, r2, r6
	str r2, [fp]
	ldr r2, [r8]
	lsl r1, r1, #0x17
	add r2, r2, r5, lsl #2
	ldr r2, [r2, #0x38]
	add r5, r5, #1
	ldr fp, [r2]
	and fp, fp, r7
	orr fp, fp, r4
	orr r1, fp, r1, lsr #7
	str r1, [r2]
	ldrb r1, [r3, sl]
	cmp r5, r1
	blt _0222EA4C
_0222EAA0:
	add r7, sp, #4
	ldrb r0, [r7, sl]
	mov r8, #0
	cmp r0, #0
	addle sp, sp, #0x14
	pople {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _0222EB34 @ =0x02249034
	ldr r4, _0222EB24 @ =0x022532A0
	mvn r6, #0
	mov fp, r8
_0222EAC8:
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, fp
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4]
	lsl r1, r8, #2
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0x40]
	ldrh r2, [r5, r1]
	mov r1, r6
	mov r3, sb
	bl ov18_02243CF4
	ldrb r0, [r7, sl]
	add r8, r8, #1
	cmp r8, r0
	blt _0222EAC8
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222EB1C: .4byte 0x02249004
_0222EB20: .4byte 0x02249056
_0222EB24: .4byte 0x022532A0
_0222EB28: .4byte 0xC1FFFCFF
_0222EB2C: .4byte 0xFE00FF00
_0222EB30: .4byte 0x0224902C
_0222EB34: .4byte 0x02249034
	arm_func_end ov18_0222E8D8

	arm_func_start ov18_0222EB38
ov18_0222EB38: @ 0x0222EB38
	push {r3, lr}
	cmp r0, #0
	poplt {r3, pc}
	cmp r0, #0xa
	bge _0222EB84
	ldr r2, _0222EBF4 @ =0x022532A0
	ldr r3, _0222EBF8 @ =0x02248FF8
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x10]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	pop {r3, pc}
_0222EB84:
	sub ip, r0, #0xa
	cmp ip, #2
	bge _0222EBC8
	ldr r0, _0222EBF4 @ =0x022532A0
	ldr r2, _0222EBF8 @ =0x02248FF8
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, ip, lsl #2
	ldr r2, [r1, #0x38]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	pop {r3, pc}
_0222EBC8:
	ldr r2, _0222EBF4 @ =0x022532A0
	ldr r3, _0222EBFC @ =0x02248FEC
	ldr r2, [r2]
	sub r0, r0, #0xc
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0x40]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243C74
	pop {r3, pc}
	.align 2, 0
_0222EBF4: .4byte 0x022532A0
_0222EBF8: .4byte 0x02248FF8
_0222EBFC: .4byte 0x02248FEC
	arm_func_end ov18_0222EB38

	arm_func_start ov18_0222EC00
ov18_0222EC00: @ 0x0222EC00
	push {r4, lr}
	ldr r0, _0222EC80 @ =0x022532A0
	ldr r1, [r0]
	ldrsb r0, [r1, #0x63]
	cmp r0, #0xb
	movle r4, #0x44
	ldr r0, [r1, #0x58]
	movgt r4, #0x45
	mov r1, #0
	bl ov18_02243BBC
	mov r2, r0
	mov r1, r4
	mov r0, #0
	bl ov18_02243ECC
	ldr r0, _0222EC80 @ =0x022532A0
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #2
	ldr r0, [r0, #0x58]
	bl ov18_02243DE4
	ldr r0, _0222EC80 @ =0x022532A0
	ldr r2, _0222EC84 @ =0x0224907E
	ldr r0, [r0]
	ldr r3, _0222EC88 @ =0x02249080
	ldrsb ip, [r0, #0x63]
	ldr r0, [r0, #0x58]
	mvn r1, #0
	lsl ip, ip, #2
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_02243CF4
	pop {r4, pc}
	.align 2, 0
_0222EC80: .4byte 0x022532A0
_0222EC84: .4byte 0x0224907E
_0222EC88: .4byte 0x02249080
	arm_func_end ov18_0222EC00

	arm_func_start ov18_0222EC8C
ov18_0222EC8C: @ 0x0222EC8C
	push {r3, lr}
	ldr r1, _0222ED30 @ =0x022532A0
	ldr r2, _0222ED34 @ =0x022490B6
	ldr r3, [r1]
	ldrsb ip, [r3, #0x63]
	add r2, r2, ip, lsl #2
	ldrsb r2, [r0, r2]
	strb r2, [r3, #0x63]
	ldr r2, [r1]
	ldrsb r1, [r2, #0x63]
	cmp r1, #0xd
	bne _0222ECCC
	cmp r0, #1
	cmpne r0, #3
	strbeq ip, [r2, #0x64]
	beq _0222ED20
_0222ECCC:
	mvn r0, #0
	cmp r1, r0
	bne _0222ECF8
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #0xa
	strbeq r0, [r2, #0x63]
	movne r0, #0xb
	strbne r0, [r2, #0x63]
	b _0222ED20
_0222ECF8:
	sub r0, r0, #1
	cmp r1, r0
	bne _0222ED20
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #1
	strbeq r0, [r2, #0x63]
	movne r0, #2
	strbne r0, [r2, #0x63]
_0222ED20:
	bl ov18_0222EC00
	mov r0, #8
	bl ov18_0223E994
	pop {r3, pc}
	.align 2, 0
_0222ED30: .4byte 0x022532A0
_0222ED34: .4byte 0x022490B6
	arm_func_end ov18_0222EC8C

	arm_func_start ov18_0222ED38
ov18_0222ED38: @ 0x0222ED38
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EDA4 @ =0x022532A0
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl ov18_02243BBC
	ldr r2, [r0]
	ldr r0, _0222EDA8 @ =0x01FF0000
	and r1, r2, #0xff
	and r0, r2, r0
	lsr r2, r0, #0x10
	add r1, r1, #0xc
	str r1, [sp]
	mov r0, #4
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222EDAC @ =ov18_0222EDB0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222EDA4: .4byte 0x022532A0
_0222EDA8: .4byte 0x01FF0000
_0222EDAC: .4byte ov18_0222EDB0
	arm_func_end ov18_0222ED38

	arm_func_start ov18_0222EDB0
ov18_0222EDB0: @ 0x0222EDB0
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EE14 @ =0x022532A0
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _0222EE18 @ =0x01FF0000
	ldr r2, [r0, #0x34]
	mov r0, #3
	ldr r3, [r2]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	lsr r2, r3, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222EE1C @ =ov18_0222EE20
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222EE14: .4byte 0x022532A0
_0222EE18: .4byte 0x01FF0000
_0222EE1C: .4byte ov18_0222EE20
	arm_func_end ov18_0222EDB0

	arm_func_start ov18_0222EE20
ov18_0222EE20: @ 0x0222EE20
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EE84 @ =0x022532A0
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _0222EE88 @ =0x01FF0000
	ldr r2, [r0, #0x28]
	mov r0, #2
	ldr r3, [r2]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	lsr r2, r3, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222EE8C @ =ov18_0222EE90
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222EE84: .4byte 0x022532A0
_0222EE88: .4byte 0x01FF0000
_0222EE8C: .4byte ov18_0222EE90
	arm_func_end ov18_0222EE20

	arm_func_start ov18_0222EE90
ov18_0222EE90: @ 0x0222EE90
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EEF4 @ =0x022532A0
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _0222EEF8 @ =0x01FF0000
	ldr r2, [r0, #0x1c]
	mov r0, #1
	ldr r3, [r2]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	lsr r2, r3, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222EEFC @ =ov18_0222EF00
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222EEF4: .4byte 0x022532A0
_0222EEF8: .4byte 0x01FF0000
_0222EEFC: .4byte ov18_0222EF00
	arm_func_end ov18_0222EE90

	arm_func_start ov18_0222EF00
ov18_0222EF00: @ 0x0222EF00
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222EF64 @ =0x022532A0
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _0222EF68 @ =0x01FF0000
	ldr r2, [r0, #0x10]
	mov r0, #0
	ldr r3, [r2]
	and r2, r3, #0xff
	and r3, r3, r1
	add r1, r2, #0xc
	lsr r2, r3, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl ov18_0222E8D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r1, _0222EF6C @ =ov18_0222EF70
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0222EF64: .4byte 0x022532A0
_0222EF68: .4byte 0x01FF0000
_0222EF6C: .4byte ov18_0222EF70
	arm_func_end ov18_0222EF00

	arm_func_start ov18_0222EF70
ov18_0222EF70: @ 0x0222EF70
	push {r3, r4, r5, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	ldr r4, _0222F028 @ =0x022532A0
	mov r5, #0
_0222EF88:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x48]
	bl ov18_02243B3C
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	bl ov18_02244650
	add r5, r5, #1
	cmp r5, #4
	blt _0222EF88
	ldr r4, _0222F028 @ =0x022532A0
	mov r5, #0
_0222EFB8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x40]
	bl ov18_02243B3C
	add r5, r5, #1
	cmp r5, #2
	blt _0222EFB8
	ldr r4, _0222F028 @ =0x022532A0
	mov r5, #0
_0222EFDC:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x38]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #2
	blt _0222EFDC
	ldr r4, _0222F028 @ =0x022532A0
	mov r5, #0
_0222F000:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #0xa
	blt _0222F000
	ldr r0, _0222F02C @ =0x022532A0
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F028: .4byte 0x022532A0
_0222F02C: .4byte 0x022532A0
	arm_func_end ov18_0222EF70

	arm_func_start ov18_0222F030
ov18_0222F030: @ 0x0222F030
	stmdb sp!, {lr}
	sub sp, sp, #0x104
	mov r0, #0x26c
	mov r1, #4
	bl ov18_02245068
	ldr r3, _0222F130 @ =0x022532A4
	add r1, sp, #0
	str r0, [r3, #4]
	mov r0, #0
	mov r2, #0x104
	strb r0, [r3]
	bl FUN_020C4AF0
	mov r3, #0x50
	mov r2, #0xc
	ldr r0, _0222F134 @ =0x022490FC
	add r1, sp, #4
	strb r3, [sp]
	strh r2, [sp, #2]
	bl FUN_020C4DB0
	ldr r0, _0222F130 @ =0x022532A4
	mov r2, #3
	ldr r1, [r0, #4]
	add ip, sp, #0
	strh r2, [r1]
	ldr lr, [r0, #4]
	mov r2, #0x41
	add r3, lr, #2
_0222F09C:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	subs r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _0222F09C
	ldr r1, _0222F130 @ =0x022532A4
	mov r3, #1
	add r0, lr, #0x100
	strh r3, [r0, #6]
	ldr r0, [r1, #4]
	sub r2, r3, #2
	add r0, r0, #0x100
	strh r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0xa]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xe]
	ldr r0, [r1, #4]
	add r0, r0, #0x110
	bl FUN_020C3FA0
	ldr r0, _0222F138 @ =ov18_0222F1F0
	ldr r1, _0222F13C @ =ov18_0222F200
	blx ov18_022269F8
	cmp r0, #0
	addeq sp, sp, #0x104
	ldmeq sp!, {pc}
	bl FUN_020C42A8
	add sp, sp, #0x104
	ldm sp!, {pc}
	.align 2, 0
_0222F130: .4byte 0x022532A4
_0222F134: .4byte 0x022490FC
_0222F138: .4byte ov18_0222F1F0
_0222F13C: .4byte ov18_0222F200
	arm_func_end ov18_0222F030

	arm_func_start ov18_0222F140
ov18_0222F140: @ 0x0222F140
	push {r4, lr}
	mov r4, r0
	blx ov18_02226ABC
	cmp r4, #0
	beq _0222F17C
	ldr r0, _0222F188 @ =0x022532A4
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x116]
	cmp r1, #0
	ldrbeq r0, [r0]
	cmpeq r0, #1
	bne _0222F17C
	add r0, r2, #0x17
	add r0, r0, #0x100
	bl ov18_0223E4C0
_0222F17C:
	ldr r0, _0222F18C @ =0x022532A8
	bl ov18_0224508C
	pop {r4, pc}
	.align 2, 0
_0222F188: .4byte 0x022532A4
_0222F18C: .4byte 0x022532A8
	arm_func_end ov18_0222F140

	arm_func_start ov18_0222F190
ov18_0222F190: @ 0x0222F190
	push {r3, lr}
	ldr r0, _0222F1EC @ =0x022532A4
	ldr r0, [r0, #4]
	blx ov18_022246E4
	cmp r0, #0
	bne _0222F1B8
	ldr r1, _0222F1EC @ =0x022532A4
	mov r0, #1
	strb r0, [r1]
	pop {r3, pc}
_0222F1B8:
	ldr r0, _0222F1EC @ =0x022532A4
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x116]
	cmp r0, #1
	beq _0222F1DC
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _0222F1E4
_0222F1DC:
	mov r0, #0
	pop {r3, pc}
_0222F1E4:
	mov r0, #2
	pop {r3, pc}
	.align 2, 0
_0222F1EC: .4byte 0x022532A4
	arm_func_end ov18_0222F190

	arm_func_start ov18_0222F1F0
ov18_0222F1F0: @ 0x0222F1F0
	ldr ip, _0222F1FC @ =ov18_02245068
	mov r1, #0x20
	bx ip
	.align 2, 0
_0222F1FC: .4byte ov18_02245068
	arm_func_end ov18_0222F1F0

	arm_func_start ov18_0222F200
ov18_0222F200: @ 0x0222F200
	ldr ip, _0222F208 @ =ov18_022450D0
	bx ip
	.align 2, 0
_0222F208: .4byte ov18_022450D0
	arm_func_end ov18_0222F200

	arm_func_start ov18_0222F20C
ov18_0222F20C: @ 0x0222F20C
	push {r3, r4, r5, lr}
	ldr r3, _0222F290 @ =0x022532AC
	str r0, [r3, #4]
	mov r0, r1
	mov r1, r2
	bl ov18_0222F298
	cmp r0, #0
	mvneq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _0222F290 @ =0x022532AC
	mov r1, #0
	strb r1, [r0, #1]
	bl ov18_0222F334
	bl ov18_0222F3FC
	bl ov18_0223E8D8
	ldr r0, _0222F294 @ =ov18_0222FF98
	bl ov18_0222F6C4
	ldr r4, _0222F290 @ =0x022532AC
	mov r5, #0
_0222F258:
	bl ov18_022451C0
	ldr r0, [r4, #0xc]
	blx r0
	mov r0, r5
	bl ov18_02246254
	bl ov18_02245820
	bl ov18_022460BC
	bl FUN_020C3E14
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0222F258
	bl ov18_0222F674
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F290: .4byte 0x022532AC
_0222F294: .4byte ov18_0222FF98
	arm_func_end ov18_0222F20C

	arm_func_start ov18_0222F298
ov18_0222F298: @ 0x0222F298
	ldr r2, _0222F330 @ =0x022532AC
	cmp r0, #0
	strb r0, [r2]
	str r1, [r2, #8]
	blt _0222F2B4
	cmp r0, #6
	ble _0222F2BC
_0222F2B4:
	mov r0, #0
	bx lr
_0222F2BC:
	cmp r0, #1
	bne _0222F2D4
	lsr r1, r1, #4
	bics r1, r1, #2
	movne r0, #0
	bxne lr
_0222F2D4:
	ldr r1, _0222F330 @ =0x022532AC
	ldr r1, [r1, #8]
	lsl r2, r1, #0x1c
	lsr r2, r2, #0x1c
	cmp r2, #1
	movhi r0, #0
	bxhi lr
	cmp r0, #0
	beq _0222F308
	lsr r1, r1, #4
	tst r1, #1
	movne r0, #0
	bxne lr
_0222F308:
	cmp r0, #0
	bne _0222F328
	ldr r0, _0222F330 @ =0x022532AC
	ldr r0, [r0, #8]
	lsr r0, r0, #4
	tst r0, #1
	moveq r0, #0
	bxeq lr
_0222F328:
	mov r0, #1
	bx lr
	.align 2, 0
_0222F330: .4byte 0x022532AC
	arm_func_end ov18_0222F298

	arm_func_start ov18_0222F334
ov18_0222F334: @ 0x0222F334
	push {r3, lr}
	ldr r2, _0222F3F0 @ =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	bl FUN_020BDDBC
	ldr r1, _0222F3F4 @ =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl FUN_020C3808
	cmp r0, #0
	bne _0222F36C
	bl FUN_020C42A8
_0222F36C:
	bl FUN_020C39FC
	cmp r0, #0
	bne _0222F37C
	bl FUN_020C42A8
_0222F37C:
	mov r0, #0
	bl FUN_020BDD88
	bl FUN_020BDBC8
	mvn r0, #0
	bl FUN_020C7D68
	bl FUN_020C9CF8
	bl FUN_020CB8A8
	bl FUN_020BDDBC
	ldr r1, _0222F3F4 @ =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl ov18_02245E7C
	ldr r0, _0222F3F8 @ =0x022532AC
	ldr r0, [r0, #4]
	bl ov18_02244FB8
	bl ov18_0224589C
	bl ov18_022460F8
	bl ov18_02243440
	bl ov18_0224510C
	bl ov18_02244114
	mov r0, #0x700
	mov r1, #0x20
	bl ov18_02245068
	str r0, [sp]
	bl FUN_020A3404
	add r0, sp, #0
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0222F3F0: .4byte 0x04000208
_0222F3F4: .4byte 0x04001000
_0222F3F8: .4byte 0x022532AC
	arm_func_end ov18_0222F334

	arm_func_start ov18_0222F3FC
ov18_0222F3FC: @ 0x0222F3FC
	push {r4, lr}
	mov r0, #0
	bl FUN_020BDD88
	mov r0, #1
	bl FUN_020BE004
	mov r0, #2
	bl FUN_020BE294
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_020BDE40
	mov r3, #0x4000000
	ldr r1, [r3]
	add r0, r3, #0x6c
	bic r1, r1, #0x1f00
	str r1, [r3]
	ldr r2, [r3]
	mov r1, #0
	bic r2, r2, #0xe000
	str r2, [r3]
	bl FUN_020BDEC4
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, _0222F660 @ =0xFFCFFFEF
	ldr r1, _0222F664 @ =0x00200010
	and r0, r2, r0
	orr r0, r0, #0x10
	add ip, r1, #0x3e00000
	orr r0, r0, #0x200000
	str r0, [r3]
	ldrh r1, [r3, #8]
	mov lr, #0
	add r0, r3, #0x50
	bic r1, r1, #0x40
	strh r1, [r3, #8]
	ldrh r4, [r3, #0xa]
	mov r1, #0x3f
	mov r2, #0x10
	bic r4, r4, #0x40
	strh r4, [r3, #0xa]
	ldrh r4, [r3, #0xc]
	bic r4, r4, #0x40
	strh r4, [r3, #0xc]
	ldrh r4, [r3, #0xe]
	bic r4, r4, #0x40
	strh r4, [r3, #0xe]
	str lr, [ip]
	str lr, [r3, #0x14]
	str lr, [r3, #0x18]
	str lr, [r3, #0x1c]
	bl FUN_020BF578
	mov r0, #0x80
	bl FUN_020BEA50
	mov r0, #0x100
	bl FUN_020BEAF8
	mov r0, #0
	bl FUN_020BDEA8
	ldr r1, _0222F668 @ =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
	add r0, r1, #0x6c
	mov r1, #0
	bl FUN_020BDEC4
	ldr r3, _0222F668 @ =0x04001000
	ldr r0, _0222F660 @ =0xFFCFFFEF
	ldr r1, [r3]
	mov ip, #0
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r3]
	ldrh r2, [r3, #8]
	add r0, r3, #0x50
	mov r1, #0x3f
	bic r2, r2, #0x40
	strh r2, [r3, #8]
	ldrh lr, [r3, #0xa]
	mov r2, #0x10
	bic lr, lr, #0x40
	strh lr, [r3, #0xa]
	ldrh lr, [r3, #0xc]
	bic lr, lr, #0x40
	strh lr, [r3, #0xc]
	ldrh lr, [r3, #0xe]
	bic lr, lr, #0x40
	strh lr, [r3, #0xe]
	str ip, [r3, #0x10]
	str ip, [r3, #0x14]
	str ip, [r3, #0x18]
	str ip, [r3, #0x1c]
	bl FUN_020BF578
	ldr r2, _0222F66C @ =0x04000008
	ldr r3, _0222F670 @ =0x0400100A
	ldrh r0, [r2]
	add r1, r2, #0x1000
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r2]
	ldrh r0, [r2, #2]
	and r0, r0, #0x43
	orr r0, r0, #0x108
	orr r0, r0, #0xc00
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r2, #4]
	ldrh r0, [r2, #6]
	and r0, r0, #0x43
	orr r0, r0, #0xf10
	strh r0, [r2, #6]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r1]
	ldrh r0, [r3]
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r3]
	ldrh r0, [r3, #2]
	and r0, r0, #0x43
	orr r0, r0, #0xe00
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	mov r2, #0x4000000
	add r1, r2, #0x304
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r3, #4]
	ldr r0, [r2]
	bic r0, r0, #0x38000000
	str r0, [r2]
	ldr r0, [r2]
	bic r0, r0, #0x7000000
	str r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl ov18_02244424
	bl ov18_02245A44
	bl ov18_02245BD8
	bl ov18_022438B8
	bl FUN_020BDDF8
	ldr r2, _0222F668 @ =0x04001000
	mov r0, #1
	ldr r1, [r2]
	orr r1, r1, #0x10000
	str r1, [r2]
	bl FUN_020BDD88
	pop {r4, pc}
	.align 2, 0
_0222F660: .4byte 0xFFCFFFEF
_0222F664: .4byte 0x00200010
_0222F668: .4byte 0x04001000
_0222F66C: .4byte 0x04000008
_0222F670: .4byte 0x0400100A
	arm_func_end ov18_0222F3FC

	arm_func_start ov18_0222F674
ov18_0222F674: @ 0x0222F674
	push {r3, lr}
	bl FUN_020BDDBC
	ldr r1, _0222F6C0 @ =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl ov18_022460E8
	bl ov18_02245188
	bl ov18_02245910
	bl ov18_0223E968
	bl ov18_0224398C
	bl ov18_02245B28
	bl ov18_02244528
	bl ov18_0224415C
	bl ov18_022435F0
	bl ov18_0224620C
	bl ov18_02244FF8
	bl ov18_02245F30
	pop {r3, pc}
	.align 2, 0
_0222F6C0: .4byte 0x04001000
	arm_func_end ov18_0222F674

	arm_func_start ov18_0222F6C4
ov18_0222F6C4: @ 0x0222F6C4
	ldr r1, _0222F6D0 @ =0x022532AC
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0222F6D0: .4byte 0x022532AC
	arm_func_end ov18_0222F6C4

	arm_func_start ov18_0222F6D4
ov18_0222F6D4: @ 0x0222F6D4
	ldr r2, _0222F6E4 @ =0x022532AC
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	bx lr
	.align 2, 0
_0222F6E4: .4byte 0x022532AC
	arm_func_end ov18_0222F6D4

	arm_func_start ov18_0222F6E8
ov18_0222F6E8: @ 0x0222F6E8
	cmp r0, #0
	ldrne r2, _0222F70C @ =0x022532AC
	ldrne r2, [r2, #0x10]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _0222F70C @ =0x022532AC
	ldrne r0, [r0, #0x14]
	strne r0, [r1]
	bx lr
	.align 2, 0
_0222F70C: .4byte 0x022532AC
	arm_func_end ov18_0222F6E8

	arm_func_start ov18_0222F710
ov18_0222F710: @ 0x0222F710
	ldr r2, _0222F720 @ =0x022532AC
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	bx lr
	.align 2, 0
_0222F720: .4byte 0x022532AC
	arm_func_end ov18_0222F710

	arm_func_start ov18_0222F724
ov18_0222F724: @ 0x0222F724
	cmp r0, #0
	ldrne r2, _0222F748 @ =0x022532AC
	ldrne r2, [r2, #0x18]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _0222F748 @ =0x022532AC
	ldrne r0, [r0, #0x1c]
	strne r0, [r1]
	bx lr
	.align 2, 0
_0222F748: .4byte 0x022532AC
	arm_func_end ov18_0222F724

	arm_func_start ov18_0222F74C
ov18_0222F74C: @ 0x0222F74C
	ldr r0, _0222F758 @ =0x022532AC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0222F758: .4byte 0x022532AC
	arm_func_end ov18_0222F74C

	arm_func_start ov18_0222F75C
ov18_0222F75C: @ 0x0222F75C
	ldr r0, _0222F770 @ =0x022532AC
	ldr r0, [r0, #8]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
	.align 2, 0
_0222F770: .4byte 0x022532AC
	arm_func_end ov18_0222F75C

	arm_func_start ov18_0222F774
ov18_0222F774: @ 0x0222F774
	ldr r1, _0222F78C @ =0x022532AC
	ldr r1, [r1, #8]
	tst r0, r1, lsr #4
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0222F78C: .4byte 0x022532AC
	arm_func_end ov18_0222F774

	arm_func_start ov18_0222F790
ov18_0222F790: @ 0x0222F790
	ldr r0, _0222F7A0 @ =0x022532AC
	mov r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_0222F7A0: .4byte 0x022532AC
	arm_func_end ov18_0222F790

	arm_func_start ov18_0222F7A4
ov18_0222F7A4: @ 0x0222F7A4
	ldr r0, _0222F7E0 @ =0x022532AC
	ldrb r1, [r0]
	cmp r1, #6
	moveq r0, #0x38
	bxeq lr
	cmp r1, #1
	bne _0222F7D4
	ldr r0, [r0, #8]
	lsr r0, r0, #4
	tst r0, #2
	moveq r0, #0x37
	bxeq lr
_0222F7D4:
	add r0, r1, #0x31
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0222F7E0: .4byte 0x022532AC
	arm_func_end ov18_0222F7A4

	arm_func_start ov18_0222F7E4
ov18_0222F7E4: @ 0x0222F7E4
	push {r3, lr}
	mov r0, #0x64
	mov r1, #4
	bl ov18_02245068
	mov r1, r0
	ldr r3, _0222F81C @ =0x022532CC
	mov r0, #8
	mov r2, #0xc
	str r1, [r3]
	bl ov18_02244008
	ldr r1, _0222F81C @ =0x022532CC
	ldr r1, [r1]
	str r0, [r1, #0x60]
	pop {r3, pc}
	.align 2, 0
_0222F81C: .4byte 0x022532CC
	arm_func_end ov18_0222F7E4

	arm_func_start ov18_0222F820
ov18_0222F820: @ 0x0222F820
	ldr ip, _0222F82C @ =ov18_0224508C
	ldr r0, _0222F830 @ =0x022532CC
	bx ip
	.align 2, 0
_0222F82C: .4byte ov18_0224508C
_0222F830: .4byte 0x022532CC
	arm_func_end ov18_0222F820

	arm_func_start ov18_0222F834
ov18_0222F834: @ 0x0222F834
	push {r3, r4, r5, lr}
	ldr r1, _0222F888 @ =0x022532CC
	mov r5, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x60]
	bl ov18_022440BC
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	mov r2, #4
	bl ov18_02243738
	add r2, r0, #0x20
	str r0, [r4, #8]
	add r0, r2, #0x10
	str r0, [r4]
	ldr r1, [r2, #4]
	mov r0, r4
	add r1, r2, r1
	add r1, r1, #8
	str r1, [r4, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F888: .4byte 0x022532CC
	arm_func_end ov18_0222F834

	arm_func_start ov18_0222F88C
ov18_0222F88C: @ 0x0222F88C
	push {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl ov18_0224382C
	ldr r0, _0222F8B4 @ =0x022532CC
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl ov18_02244064
	pop {r4, pc}
	.align 2, 0
_0222F8B4: .4byte 0x022532CC
	arm_func_end ov18_0222F88C

	arm_func_start ov18_0222F8B8
ov18_0222F8B8: @ 0x0222F8B8
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldm r0, {r2, r3}
	ldr r0, [r2, r1, lsl #2]
	add r0, r3, r0
	bx lr
	arm_func_end ov18_0222F8B8

	arm_func_start ov18_0222F8D0
ov18_0222F8D0: @ 0x0222F8D0
	push {r3, lr}
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldm r0, {ip, lr}
	ldr r0, [ip, r1, lsl #2]
	cmp r2, #0
	add r0, lr, r0
	addge r3, r3, #0x30
	lslge r1, r2, #1
	strhge r3, [r0, r1]
	pop {r3, pc}
	arm_func_end ov18_0222F8D0

	arm_func_start ov18_0222F8FC
ov18_0222F8FC: @ 0x0222F8FC
	push {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _0222F9D4 @ =0x0001E2A4
	mov r1, #0x20
	bl ov18_02245068
	ldr r2, _0222F9D8 @ =0x022532D0
	add r1, r0, #0x1e000
	str r0, [r2]
	str r4, [r1, #0x298]
	ldr r0, [r2]
	mov r4, #0
	add r0, r0, #0x1e000
	strb r4, [r0, #0x2a0]
	ldr r0, [r2]
	ldr lr, _0222F9DC @ =0x02249D6C
	add r0, r0, #0x1e000
	strb r4, [r0, #0x2a1]
	add ip, sp, #0
	ldm lr!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	ldm lr, {r0, r1, r2}
	stm ip, {r0, r1, r2}
	ldr r0, _0222F9E0 @ =0x022532D8
	mov r1, r4
	ldr r0, [r0]
	bl ov18_0222F8B8
	ldr r1, _0222F9E0 @ =0x022532D8
	str r0, [sp, #4]
	ldr r0, [r1]
	mov r1, #1
	bl ov18_0222F8B8
	str r0, [sp, #8]
	bl ov18_0222F7A4
	strb r0, [sp, #0x18]
	ldr r0, _0222F9D8 @ =0x022532D0
	add r1, sp, #0
	ldr r0, [r0]
	bl ov18_022425E8
	bl ov18_02242834
	cmp r0, #0
	bne _0222F9A8
	bl FUN_020C42A8
_0222F9A8:
	mov r0, #0
	ldr r1, _0222F9E4 @ =ov18_0222FA9C
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0222F9D8 @ =0x022532D0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x29c]
	add sp, sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_0222F9D4: .4byte 0x0001E2A4
_0222F9D8: .4byte 0x022532D0
_0222F9DC: .4byte 0x02249D6C
_0222F9E0: .4byte 0x022532D8
_0222F9E4: .4byte ov18_0222FA9C
	arm_func_end ov18_0222F8FC

	arm_func_start ov18_0222F9E8
ov18_0222F9E8: @ 0x0222F9E8
	ldr ip, _0222FA00 @ =ov18_02246304
	mov r0, #0
	ldr r1, _0222FA04 @ =ov18_0222FA08
	mov r2, r0
	mov r3, #0x78
	bx ip
	.align 2, 0
_0222FA00: .4byte ov18_02246304
_0222FA04: .4byte ov18_0222FA08
	arm_func_end ov18_0222F9E8

	arm_func_start ov18_0222FA08
ov18_0222FA08: @ 0x0222FA08
	push {r4, lr}
	mov r4, r0
	bl ov18_022426D8
	cmp r0, #0
	popeq {r4, pc}
	ldr r0, _0222FA40 @ =0x022532D0
	mov r1, r4
	ldr r0, [r0]
	mov r3, #1
	add r2, r0, #0x1e000
	mov r0, #0
	strb r3, [r2, #0x2a1]
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_0222FA40: .4byte 0x022532D0
	arm_func_end ov18_0222FA08

	arm_func_start ov18_0222FA44
ov18_0222FA44: @ 0x0222FA44
	ldr r0, _0222FA5C @ =0x022532D0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_0222FA5C: .4byte 0x022532D0
	arm_func_end ov18_0222FA44

	arm_func_start ov18_0222FA60
ov18_0222FA60: @ 0x0222FA60
	ldr r1, _0222FA74 @ =0x022532D0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x298]
	bx lr
	.align 2, 0
_0222FA74: .4byte 0x022532D0
	arm_func_end ov18_0222FA60

	arm_func_start ov18_0222FA78
ov18_0222FA78: @ 0x0222FA78
	ldr ip, _0222FA80 @ =ov18_0224287C
	bx ip
	.align 2, 0
_0222FA80: .4byte ov18_0224287C
	arm_func_end ov18_0222FA78

	arm_func_start ov18_0222FA84
ov18_0222FA84: @ 0x0222FA84
	ldr r0, _0222FA98 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x2280
	add r0, r0, #0x1c000
	bx lr
	.align 2, 0
_0222FA98: .4byte 0x022532D0
	arm_func_end ov18_0222FA84

	arm_func_start ov18_0222FA9C
ov18_0222FA9C: @ 0x0222FA9C
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov18_022428B0
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x1e000
	ldrb r1, [r0, #0x2a0]
	cmp r1, #0
	beq _0222FAF0
	ldrb r1, [r0, #0x2a1]
	cmp r1, #0
	bne _0222FAF0
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FAF0:
	add r0, sp, #1
	add r1, sp, #0
	bl ov18_02242C34
	ldrb r0, [sp, #1]
	cmp r0, #0x1a
	bgt _0222FB84
	bge _0222FC90
	cmp r0, #0x14
	bgt _0222FB74
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222FD2C
_0222FB20: @ jump table
	b _0222FD2C @ case 0
	b _0222FD2C @ case 1
	b _0222FD2C @ case 2
	b _0222FD2C @ case 3
	b _0222FD2C @ case 4
	b _0222FBA8 @ case 5
	b _0222FD2C @ case 6
	b _0222FD2C @ case 7
	b _0222FD2C @ case 8
	b _0222FD2C @ case 9
	b _0222FD2C @ case 10
	b _0222FD2C @ case 11
	b _0222FCD4 @ case 12
	b _0222FC08 @ case 13
	b _0222FD2C @ case 14
	b _0222FD2C @ case 15
	b _0222FD2C @ case 16
	b _0222FD2C @ case 17
	b _0222FD2C @ case 18
	b _0222FD2C @ case 19
	b _0222FC4C @ case 20
_0222FB74:
	cmp r0, #0x17
	beq _0222FC4C
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FB84:
	cmp r0, #0x1d
	bgt _0222FB98
	beq _0222FC90
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FB98:
	cmp r0, #0x22
	beq _0222FD18
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FBA8:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r4, r0, #0x2280
	bl ov18_02242C78
	add r1, r4, #0x1c000
	mov r2, #0x16
	bl FUN_020C4B18
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	strbeq r1, [r0, #0x2a0]
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FC08:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	strbeq r1, [r0, #0x2a0]
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	mov r0, #1
	blx r1
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FC4C:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	strbeq r1, [r0, #0x2a0]
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	mov r0, #3
	blx r1
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FC90:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	strbeq r1, [r0, #0x2a0]
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	mov r0, #4
	blx r1
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FCD4:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	ldr r0, _0222FD34 @ =0x022532D0
	ldr r0, [r0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	strbeq r1, [r0, #0x2a0]
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	mov r0, #2
	blx r1
	add sp, sp, #4
	pop {r3, r4, pc}
_0222FD18:
	mov r1, r4
	mov r0, #0
	bl ov18_022463AC
	ldr r0, _0222FD38 @ =0x022532D0
	bl ov18_0224508C
_0222FD2C:
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222FD34: .4byte 0x022532D0
_0222FD38: .4byte 0x022532D0
	arm_func_end ov18_0222FA9C

	arm_func_start ov18_0222FD3C
ov18_0222FD3C: @ 0x0222FD3C
	push {r3, lr}
	sub sp, sp, #8
	mov r0, #0xc
	sub r1, r0, #0x10
	bl ov18_02245068
	ldr r1, _0222FD98 @ =0x022532D4
	ldr ip, _0222FD9C @ =ov18_0222FEDC
	str r0, [r1]
	ldr r2, _0222FDA0 @ =ov18_0222FEB4
	ldr r3, _0222FDA4 @ =ov18_0222FECC
	str ip, [sp]
	mov ip, #0x800
	mov r0, #0xf
	mov r1, #0x40
	str ip, [sp, #4]
	blx ov18_0222AB50
	cmp r0, #1
	beq _0222FD88
	bl FUN_020C42A8
_0222FD88:
	mov r0, #0xa
	bl FUN_020C24A4
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0222FD98: .4byte 0x022532D4
_0222FD9C: .4byte ov18_0222FEDC
_0222FDA0: .4byte ov18_0222FEB4
_0222FDA4: .4byte ov18_0222FECC
	arm_func_end ov18_0222FD3C

	arm_func_start ov18_0222FDA8
ov18_0222FDA8: @ 0x0222FDA8
	push {r3, lr}
	blx ov18_0222AC38
	cmp r0, #1
	beq _0222FDBC
	bl FUN_020C42A8
_0222FDBC:
	ldr r0, _0222FDC8 @ =0x022532D4
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0222FDC8: .4byte 0x022532D4
	arm_func_end ov18_0222FDA8

	arm_func_start ov18_0222FDCC
ov18_0222FDCC: @ 0x0222FDCC
	push {r3, lr}
	sub sp, sp, #0xe8
	ldr r1, _0222FE84 @ =0x022532D4
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0222FE7C
_0222FDEC: @ jump table
	b _0222FE0C @ case 0
	b _0222FE0C @ case 1
	b _0222FE18 @ case 2
	b _0222FE0C @ case 3
	b _0222FE24 @ case 4
	b _0222FE0C @ case 5
	b _0222FE30 @ case 6
	b _0222FE78 @ case 7
_0222FE0C:
	add sp, sp, #0xe8
	mov r0, #0
	pop {r3, pc}
_0222FE18:
	add sp, sp, #0xe8
	mov r0, #1
	pop {r3, pc}
_0222FE24:
	add sp, sp, #0xe8
	mov r0, #2
	pop {r3, pc}
_0222FE30:
	add r0, sp, #0
	blx ov18_0222AD04
	cmp r0, #1
	beq _0222FE44
	bl FUN_020C42A8
_0222FE44:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	blt _0222FE6C
	cmp r0, #3
	bgt _0222FE6C
	ldr r0, [sp, #0x24]
	cmp r0, #1
	addeq sp, sp, #0xe8
	moveq r0, #3
	popeq {r3, pc}
_0222FE6C:
	add sp, sp, #0xe8
	mov r0, #5
	pop {r3, pc}
_0222FE78:
	mov r0, #4
_0222FE7C:
	add sp, sp, #0xe8
	pop {r3, pc}
	.align 2, 0
_0222FE84: .4byte 0x022532D4
	arm_func_end ov18_0222FDCC

	arm_func_start ov18_0222FE88
ov18_0222FE88: @ 0x0222FE88
	push {r3, lr}
	sub sp, sp, #0xe8
	add r0, sp, #0
	blx ov18_0222AD04
	cmp r0, #1
	beq _0222FEA4
	bl FUN_020C42A8
_0222FEA4:
	add r0, sp, #0
	bl ov18_0223E3AC
	add sp, sp, #0xe8
	pop {r3, pc}
	arm_func_end ov18_0222FE88

	arm_func_start ov18_0222FEB4
ov18_0222FEB4: @ 0x0222FEB4
	ldr r3, _0222FEC8 @ =0x022532D4
	ldm r0, {r0, r1, r2}
	ldr r3, [r3]
	stm r3, {r0, r1, r2}
	bx lr
	.align 2, 0
_0222FEC8: .4byte 0x022532D4
	arm_func_end ov18_0222FEB4

	arm_func_start ov18_0222FECC
ov18_0222FECC: @ 0x0222FECC
	ldr ip, _0222FED8 @ =ov18_02245068
	mov r1, #0x20
	bx ip
	.align 2, 0
_0222FED8: .4byte ov18_02245068
	arm_func_end ov18_0222FECC

	arm_func_start ov18_0222FEDC
ov18_0222FEDC: @ 0x0222FEDC
	ldr ip, _0222FEE4 @ =ov18_022450D0
	bx ip
	.align 2, 0
_0222FEE4: .4byte ov18_022450D0
	arm_func_end ov18_0222FEDC

	arm_func_start ov18_0222FEE8
ov18_0222FEE8: @ 0x0222FEE8
	push {r3, lr}
	mov r0, #3
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0x14
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x14
	bl ov18_02244194
	ldr r0, _0222FF20 @ =ov18_0222FF24
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0222FF20: .4byte ov18_0222FF24
	arm_func_end ov18_0222FEE8

	arm_func_start ov18_0222FF24
ov18_0222FF24: @ 0x0222FF24
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	mov r1, r0
	bl ov18_0224641C
	mov r0, #1
	mov r1, #0
	bl ov18_0224641C
	mov r0, #1
	bl ov18_02243EA4
	mov r0, #0
	bl ov18_02243EA4
	bl ov18_0222BBAC
	bl ov18_0222B930
	ldr r0, _0222FF94 @ =0x022532D8
	ldr r0, [r0]
	bl ov18_0222F88C
	bl ov18_0222F820
	bl ov18_0223DDB8
	bl ov18_0222F790
	pop {r3, pc}
	.align 2, 0
_0222FF94: .4byte 0x022532D8
	arm_func_end ov18_0222FF24

	arm_func_start ov18_0222FF98
ov18_0222FF98: @ 0x0222FF98
	push {r3, lr}
	bl ov18_0223DD74
	bl ov18_0222F7E4
	bl ov18_0222B910
	bl ov18_0222BB34
	bl ov18_0222B580
	bl ov18_0222F74C
	cmp r0, #1
	bne _0222FFE0
	mov r0, #2
	bl ov18_0222F774
	cmp r0, #0
	beq _0222FFE0
	ldr r0, _02230110 @ =0x02249E14
	bl ov18_0222F834
	ldr r1, _02230114 @ =0x022532D8
	str r0, [r1]
	b _0222FFF8
_0222FFE0:
	bl ov18_0222F74C
	ldr r1, _02230118 @ =0x02249DF8
	ldr r0, [r1, r0, lsl #2]
	bl ov18_0222F834
	ldr r1, _02230114 @ =0x022532D8
	str r0, [r1]
_0222FFF8:
	ldr r0, _0223011C @ =0x02249E24
	bl ov18_0222B6A0
	mov r1, r0
	mov r0, #1
	bl ov18_02243E74
	ldr r0, _02230120 @ =0x02249E38
	bl ov18_0222B6A0
	mov r1, r0
	mov r0, #0
	bl ov18_02243E74
	ldr r0, _02230124 @ =0x02249E4C
	ldr r1, _02230128 @ =0x020C078C
	bl ov18_0222B700
	ldr r0, _0223012C @ =0x02249E60
	ldr r1, _02230130 @ =0x020C0108
	bl ov18_0222B700
	ldr r0, _02230134 @ =0x02249E74
	ldr r1, _02230138 @ =0x020C0314
	bl ov18_0222B700
	ldr r0, _0223013C @ =0x02249E8C
	ldr r1, _02230140 @ =0x020C01B8
	bl ov18_0222B700
	ldr r0, _02230144 @ =0x02249EA4
	ldr r1, _02230148 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223014C @ =0x02249EBC
	ldr r1, _02230150 @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _02230154 @ =0x02249ED4
	ldr r1, _02230158 @ =0x020C02BC
	bl ov18_0222B700
	ldr r0, _0223015C @ =0x02249EEC
	ldr r1, _02230160 @ =0x020C0160
	bl ov18_0222B700
	bl ov18_0222F75C
	cmp r0, #0
	beq _02230098
	cmp r0, #1
	beq _022300A8
	b _022300B4
_02230098:
	ldr r0, _02230164 @ =0x02249F04
	ldr r1, _02230168 @ =FUN_020C048C
	bl ov18_0222B700
	b _022300B4
_022300A8:
	ldr r0, _0223016C @ =0x02249F18
	ldr r1, _02230168 @ =FUN_020C048C
	bl ov18_0222B700
_022300B4:
	ldr ip, _02230170 @ =0x0400100A
	mov r0, #1
	ldrh r2, [ip]
	sub r3, ip, #0x1000
	mov r1, #2
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [ip]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	bl ov18_02244C84
	mov r0, #0
	mov r1, #2
	bl ov18_02244C84
	ldr r0, _02230174 @ =ov18_02230178
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230110: .4byte 0x02249E14
_02230114: .4byte 0x022532D8
_02230118: .4byte 0x02249DF8
_0223011C: .4byte 0x02249E24
_02230120: .4byte 0x02249E38
_02230124: .4byte 0x02249E4C
_02230128: .4byte 0x020C078C
_0223012C: .4byte 0x02249E60
_02230130: .4byte 0x020C0108
_02230134: .4byte 0x02249E74
_02230138: .4byte 0x020C0314
_0223013C: .4byte 0x02249E8C
_02230140: .4byte 0x020C01B8
_02230144: .4byte 0x02249EA4
_02230148: .4byte 0x020C07EC
_0223014C: .4byte 0x02249EBC
_02230150: .4byte FUN_020C00B4
_02230154: .4byte 0x02249ED4
_02230158: .4byte 0x020C02BC
_0223015C: .4byte 0x02249EEC
_02230160: .4byte 0x020C0160
_02230164: .4byte 0x02249F04
_02230168: .4byte FUN_020C048C
_0223016C: .4byte 0x02249F18
_02230170: .4byte 0x0400100A
_02230174: .4byte ov18_02230178
	arm_func_end ov18_0222FF98

	arm_func_start ov18_02230178
ov18_02230178: @ 0x02230178
	push {r3, lr}
	mov r0, #2
	mov r2, r0
	mov r1, #1
	mov r3, #0x14
	bl ov18_02244194
	mov r0, #2
	mov r2, r0
	mov r1, #0
	mov r3, #0x14
	bl ov18_02244194
	ldr r0, _022301B0 @ =ov18_022301B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022301B0: .4byte ov18_022301B4
	arm_func_end ov18_02230178

	arm_func_start ov18_022301B4
ov18_022301B4: @ 0x022301B4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222F75C
	cmp r0, #0
	beq _022301F0
	cmp r0, #1
	beq _02230208
	pop {r3, pc}
_022301F0:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02230220 @ =ov18_02230228
	bl ov18_0222F6C4
	pop {r3, pc}
_02230208:
	mov r0, #1
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _02230224 @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230220: .4byte ov18_02230228
_02230224: .4byte ov18_0223A6B4
	arm_func_end ov18_022301B4

	arm_func_start ov18_02230228
ov18_02230228: @ 0x02230228
	push {r3, lr}
	bl ov18_022302A4
	mov r0, #0
	bl ov18_0222BBC0
	mov r0, #0x2e
	sub r1, r0, #0x2f
	mov r2, #0
	bl ov18_0222B594
	mov r0, #4
	bl ov18_0223F4D0
	ldr r0, _0223028C @ =0x022532DC
	ldr r3, _02230290 @ =0x0224911A
	ldrb r0, [r0]
	ldr r1, _02230294 @ =0x0224911E
	ldr r2, _02230298 @ =0x0224911C
	lsl ip, r0, #3
	ldrh r0, [r3, ip]
	ldrh r1, [r1, ip]
	ldrh r2, [r2, ip]
	ldr r3, _0223029C @ =0x02249120
	ldrh r3, [r3, ip]
	bl ov18_0222BA04
	ldr r0, _022302A0 @ =ov18_02230390
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223028C: .4byte 0x022532DC
_02230290: .4byte 0x0224911A
_02230294: .4byte 0x0224911E
_02230298: .4byte 0x0224911C
_0223029C: .4byte 0x02249120
_022302A0: .4byte ov18_02230390
	arm_func_end ov18_02230228

	arm_func_start ov18_022302A4
ov18_022302A4: @ 0x022302A4
	push {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _02230368 @ =0x0224912A
	add r3, sp, #0
	mov r2, #0xb
_022302B8:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _022302B8
	ldr r0, _0223036C @ =0x02249F2C
	ldr r1, _02230370 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02230374 @ =0x02249F44
	ldr r1, _02230378 @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223037C @ =0x02249F5C
	ldr r1, _02230380 @ =FUN_020C04EC
	bl ov18_0222B700
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02230384 @ =0x022532DC
	ldr r2, _02230388 @ =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _0223038C @ =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	pop {r3, pc}
	.align 2, 0
_02230368: .4byte 0x0224912A
_0223036C: .4byte 0x02249F2C
_02230370: .4byte 0x020C07EC
_02230374: .4byte 0x02249F44
_02230378: .4byte FUN_020C00B4
_0223037C: .4byte 0x02249F5C
_02230380: .4byte FUN_020C04EC
_02230384: .4byte 0x022532DC
_02230388: .4byte 0x04001008
_0223038C: .4byte 0x0400000A
	arm_func_end ov18_022302A4

	arm_func_start ov18_02230390
ov18_02230390: @ 0x02230390
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _022303E0 @ =ov18_022303E4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022303E0: .4byte ov18_022303E4
	arm_func_end ov18_02230390

	arm_func_start ov18_022303E4
ov18_022303E4: @ 0x022303E4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _0223041C @ =ov18_02230420
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223041C: .4byte ov18_02230420
	arm_func_end ov18_022303E4

	arm_func_start ov18_02230420
ov18_02230420: @ 0x02230420
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02230444 @ =ov18_02230448
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230444: .4byte ov18_02230448
	arm_func_end ov18_02230420

	arm_func_start ov18_02230448
ov18_02230448: @ 0x02230448
	push {r3, lr}
	bl ov18_0223045C
	bl ov18_02230588
	bl ov18_0223058C
	pop {r3, pc}
	arm_func_end ov18_02230448

	arm_func_start ov18_0223045C
ov18_0223045C: @ 0x0223045C
	push {r3, r4, r5, lr}
	ldr r5, _02230570 @ =0x0224910A
	mov r4, #0
_02230468:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _022304B8
	mov r0, #1
	bl ov18_0222B048
	and r1, r4, #0xff
	lsl lr, r1, #3
	ldr r0, _02230574 @ =0x0224911A
	ldr r1, _02230578 @ =0x0224911E
	ldr r2, _0223057C @ =0x0224911C
	ldr r3, _02230580 @ =0x02249120
	ldr ip, _02230584 @ =0x022532DC
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [ip]
	bl ov18_0222BA04
	pop {r3, r4, r5, pc}
_022304B8:
	add r4, r4, #1
	cmp r4, #2
	add r5, r5, #8
	blo _02230468
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022304E4
	mov r0, #1
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_022304E4:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02230500
	mov r0, #0
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_02230500:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0223051C
	mov r0, #1
	bl ov18_022306F0
	pop {r3, r4, r5, pc}
_0223051C:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _02230538
	mov r0, #3
	bl ov18_022306F0
	pop {r3, r4, r5, pc}
_02230538:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _02230554
	mov r0, #0
	bl ov18_022306F0
	pop {r3, r4, r5, pc}
_02230554:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #2
	bl ov18_022306F0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02230570: .4byte 0x0224910A
_02230574: .4byte 0x0224911A
_02230578: .4byte 0x0224911E
_0223057C: .4byte 0x0224911C
_02230580: .4byte 0x02249120
_02230584: .4byte 0x022532DC
	arm_func_end ov18_0223045C

	arm_func_start ov18_02230588
ov18_02230588: @ 0x02230588
	bx lr
	arm_func_end ov18_02230588

	arm_func_start ov18_0223058C
ov18_0223058C: @ 0x0223058C
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _022305A8
	cmp r0, #1
	beq _022305BC
	pop {r3, pc}
_022305A8:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022305D4 @ =ov18_0222FEE8
	bl ov18_0222F6C4
	pop {r3, pc}
_022305BC:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_02230760
	ldr r0, _022305D8 @ =ov18_022305DC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022305D4: .4byte ov18_0222FEE8
_022305D8: .4byte ov18_022305DC
	arm_func_end ov18_0223058C

	arm_func_start ov18_022305DC
ov18_022305DC: @ 0x022305DC
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022305F8 @ =ov18_022305FC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022305F8: .4byte ov18_022305FC
	arm_func_end ov18_022305DC

	arm_func_start ov18_022305FC
ov18_022305FC: @ 0x022305FC
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x16
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02230644 @ =ov18_02230648
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230644: .4byte ov18_02230648
	arm_func_end ov18_022305FC

	arm_func_start ov18_02230648
ov18_02230648: @ 0x02230648
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _022306E4 @ =0x022532DC
	ldr r0, [r0, #4]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _022306E4 @ =0x022532DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _022306B4
	cmp r0, #1
	beq _022306CC
	pop {r3, pc}
_022306B4:
	mov r0, #1
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _022306E8 @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
_022306CC:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _022306EC @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022306E4: .4byte 0x022532DC
_022306E8: .4byte ov18_0223A6B4
_022306EC: .4byte ov18_02231230
	arm_func_end ov18_02230648

	arm_func_start ov18_022306F0
ov18_022306F0: @ 0x022306F0
	push {r3, lr}
	cmp r0, #1
	cmpne r0, #3
	popeq {r3, pc}
	ldr r1, _0223074C @ =0x022532DC
	mov r0, #8
	ldrb r2, [r1]
	eor r2, r2, #1
	strb r2, [r1]
	bl ov18_0223E994
	ldr r0, _0223074C @ =0x022532DC
	ldr ip, _02230750 @ =0x0224911A
	ldrb r0, [r0]
	ldr r1, _02230754 @ =0x0224911E
	ldr r2, _02230758 @ =0x0224911C
	lsl lr, r0, #3
	ldr r3, _0223075C @ =0x02249120
	ldrh r0, [ip, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	bl ov18_0222BA04
	pop {r3, pc}
	.align 2, 0
_0223074C: .4byte 0x022532DC
_02230750: .4byte 0x0224911A
_02230754: .4byte 0x0224911E
_02230758: .4byte 0x0224911C
_0223075C: .4byte 0x02249120
	arm_func_end ov18_022306F0

	arm_func_start ov18_02230760
ov18_02230760: @ 0x02230760
	push {r3, lr}
	ldr r1, _02230798 @ =0x02249108
	ldr r0, _0223079C @ =0x022532DC
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb r1, [r0]
	add ip, sp, #0
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r1, [ip, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl ov18_0223D154
	pop {r3, pc}
	.align 2, 0
_02230798: .4byte 0x02249108
_0223079C: .4byte 0x022532DC
	arm_func_end ov18_02230760

	arm_func_start ov18_022307A0
ov18_022307A0: @ 0x022307A0
	push {r3, lr}
	ldr r0, _022307E0 @ =0x022532E4
	mov r1, #0
	strb r1, [r0]
	bl ov18_022307E8
	mov r0, #0x12
	bl ov18_0222BBC0
	mov r0, #0x3b
	sub r1, r0, #0x3c
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0x17
	bl ov18_0222B7C8
	ldr r0, _022307E4 @ =ov18_02230868
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022307E0: .4byte 0x022532E4
_022307E4: .4byte ov18_02230868
	arm_func_end ov18_022307A0

	arm_func_start ov18_022307E8
ov18_022307E8: @ 0x022307E8
	push {r3, lr}
	ldr r0, _02230858 @ =0x02249F70
	ldr r1, _0223085C @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02230860 @ =0x04001008
	ldr r1, _02230864 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02230858: .4byte 0x02249F70
_0223085C: .4byte FUN_020C04EC
_02230860: .4byte 0x04001008
_02230864: .4byte 0x0400000A
	arm_func_end ov18_022307E8

	arm_func_start ov18_02230868
ov18_02230868: @ 0x02230868
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022308B8 @ =ov18_022308BC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022308B8: .4byte ov18_022308BC
	arm_func_end ov18_02230868

	arm_func_start ov18_022308BC
ov18_022308BC: @ 0x022308BC
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #3
	bl ov18_0222B790
	ldr r0, _022308F4 @ =ov18_022308F8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022308F4: .4byte ov18_022308F8
	arm_func_end ov18_022308BC

	arm_func_start ov18_022308F8
ov18_022308F8: @ 0x022308F8
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223091C @ =ov18_02230920
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223091C: .4byte ov18_02230920
	arm_func_end ov18_022308F8

	arm_func_start ov18_02230920
ov18_02230920: @ 0x02230920
	push {r3, lr}
	bl ov18_02230934
	bl ov18_0223096C
	bl ov18_02230970
	pop {r3, pc}
	arm_func_end ov18_02230920

	arm_func_start ov18_02230934
ov18_02230934: @ 0x02230934
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _02230950
	mov r0, #1
	bl ov18_0222B048
_02230950:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02230934

	arm_func_start ov18_0223096C
ov18_0223096C: @ 0x0223096C
	bx lr
	arm_func_end ov18_0223096C

	arm_func_start ov18_02230970
ov18_02230970: @ 0x02230970
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _0223098C
	cmp r0, #1
	beq _022309A0
	pop {r3, pc}
_0223098C:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022309D0 @ =ov18_022309D8
	bl ov18_0222F6C4
	pop {r3, pc}
_022309A0:
	mov r0, #6
	bl ov18_0223E994
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x18
	str r1, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _022309D4 @ =ov18_02230B14
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022309D0: .4byte ov18_022309D8
_022309D4: .4byte ov18_02230B14
	arm_func_end ov18_02230970

	arm_func_start ov18_022309D8
ov18_022309D8: @ 0x022309D8
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022309F4 @ =ov18_022309F8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022309F4: .4byte ov18_022309F8
	arm_func_end ov18_022309D8

	arm_func_start ov18_022309F8
ov18_022309F8: @ 0x022309F8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _02230A54 @ =0x022532E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02230A34
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02230A34:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02230A58 @ =ov18_02230A5C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230A54: .4byte 0x022532E4
_02230A58: .4byte ov18_02230A5C
	arm_func_end ov18_022309F8

	arm_func_start ov18_02230A5C
ov18_02230A5C: @ 0x02230A5C
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02230B08 @ =0x022532E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02230A90
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_02230A90:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02230B08 @ =0x022532E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02230AC4
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02230AC4:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02230B08 @ =0x022532E4
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #0
	bne _02230AF8
	bl ov18_0222F6D4
	ldr r0, _02230B0C @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
_02230AF8:
	bl ov18_0222F6D4
	ldr r0, _02230B10 @ =ov18_02230B84
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230B08: .4byte 0x022532E4
_02230B0C: .4byte ov18_02231230
_02230B10: .4byte ov18_02230B84
	arm_func_end ov18_02230A5C

	arm_func_start ov18_02230B14
ov18_02230B14: @ 0x02230B14
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	beq _02230B44
	cmp r0, #1
	popne {r3, pc}
	mov r0, #0xe
	bl ov18_0223E994
	ldr r0, _02230B5C @ =0x022532E4
	mov r1, #1
	strb r1, [r0]
	b _02230B4C
_02230B44:
	mov r0, #7
	bl ov18_0223E994
_02230B4C:
	bl ov18_0223FF74
	ldr r0, _02230B60 @ =ov18_02230B64
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230B5C: .4byte 0x022532E4
_02230B60: .4byte ov18_02230B64
	arm_func_end ov18_02230B14

	arm_func_start ov18_02230B64
ov18_02230B64: @ 0x02230B64
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02230B80 @ =ov18_022309D8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230B80: .4byte ov18_022309D8
	arm_func_end ov18_02230B64

	arm_func_start ov18_02230B84
ov18_02230B84: @ 0x02230B84
	push {r3, lr}
	bl ov18_02230BA8
	mov r0, #0x19
	bl ov18_0222B7C8
	bl ov18_0223E61C
	ldr r0, _02230BA4 @ =ov18_02230C28
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230BA4: .4byte ov18_02230C28
	arm_func_end ov18_02230B84

	arm_func_start ov18_02230BA8
ov18_02230BA8: @ 0x02230BA8
	push {r3, lr}
	ldr r0, _02230C18 @ =0x02249F84
	ldr r1, _02230C1C @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02230C20 @ =0x04001008
	ldr r1, _02230C24 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02230C18: .4byte 0x02249F84
_02230C1C: .4byte FUN_020C04EC
_02230C20: .4byte 0x04001008
_02230C24: .4byte 0x0400000A
	arm_func_end ov18_02230BA8

	arm_func_start ov18_02230C28
ov18_02230C28: @ 0x02230C28
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02230C58 @ =ov18_02230C5C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230C58: .4byte ov18_02230C5C
	arm_func_end ov18_02230C28

	arm_func_start ov18_02230C5C
ov18_02230C5C: @ 0x02230C5C
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #5
	bl ov18_0222B790
	ldr r0, _02230C84 @ =ov18_02230C88
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230C84: .4byte ov18_02230C88
	arm_func_end ov18_02230C5C

	arm_func_start ov18_02230C88
ov18_02230C88: @ 0x02230C88
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02230CAC @ =ov18_02230CB0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230CAC: .4byte ov18_02230CB0
	arm_func_end ov18_02230C88

	arm_func_start ov18_02230CB0
ov18_02230CB0: @ 0x02230CB0
	push {r3, lr}
	bl ov18_02230CC4
	bl ov18_02230CE4
	bl ov18_02230CE8
	pop {r3, pc}
	arm_func_end ov18_02230CB0

	arm_func_start ov18_02230CC4
ov18_02230CC4: @ 0x02230CC4
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02230CC4

	arm_func_start ov18_02230CE4
ov18_02230CE4: @ 0x02230CE4
	bx lr
	arm_func_end ov18_02230CE4

	arm_func_start ov18_02230CE8
ov18_02230CE8: @ 0x02230CE8
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02230D0C @ =ov18_02230D10
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230D0C: .4byte ov18_02230D10
	arm_func_end ov18_02230CE8

	arm_func_start ov18_02230D10
ov18_02230D10: @ 0x02230D10
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02230D2C @ =ov18_02230D30
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230D2C: .4byte ov18_02230D30
	arm_func_end ov18_02230D10

	arm_func_start ov18_02230D30
ov18_02230D30: @ 0x02230D30
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #3
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0x40
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x40
	bl ov18_02244194
	ldr r0, _02230D78 @ =ov18_02230D7C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230D78: .4byte ov18_02230D7C
	arm_func_end ov18_02230D30

	arm_func_start ov18_02230D7C
ov18_02230D7C: @ 0x02230D7C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0x1000000
	bl FUN_020C3E08
	bl FUN_020CB218
	pop {r3, pc}
	arm_func_end ov18_02230D7C

	arm_func_start ov18_02230DB0
ov18_02230DB0: @ 0x02230DB0
	push {r3, lr}
	bl ov18_02230DE4
	mov r0, #0x11
	bl ov18_0222BBC0
	mov r0, #0x3a
	sub r1, r0, #0x3b
	mov r2, #0
	bl ov18_0222B594
	bl ov18_02230E64
	ldr r0, _02230DE0 @ =ov18_02231038
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02230DE0: .4byte ov18_02231038
	arm_func_end ov18_02230DB0

	arm_func_start ov18_02230DE4
ov18_02230DE4: @ 0x02230DE4
	push {r3, lr}
	ldr r0, _02230E54 @ =0x02249F98
	ldr r1, _02230E58 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02230E5C @ =0x04001008
	ldr r1, _02230E60 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02230E54: .4byte 0x02249F98
_02230E58: .4byte FUN_020C04EC
_02230E5C: .4byte 0x04001008
_02230E60: .4byte 0x0400000A
	arm_func_end ov18_02230DE4

	arm_func_start ov18_02230E64
ov18_02230E64: @ 0x02230E64
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	mov fp, r0
	add r0, sp, #0x14
	bl FUN_020C3FA0
	ldrb r1, [sp, #0x15]
	ldr r2, _02231028 @ =0x02249FAC
	add r0, sp, #0x1a
	str r1, [sp]
	ldrb r3, [sp, #0x16]
	mov r1, #0x14
	str r3, [sp, #4]
	ldrb r3, [sp, #0x17]
	str r3, [sp, #8]
	ldrb r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldrb r3, [sp, #0x19]
	str r3, [sp, #0x10]
	ldrb r3, [sp, #0x14]
	bl FUN_020DCDCC
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r1, sp, #0x1a
	str r1, [sp, #0xc]
	mov r0, fp
	mov r1, #8
	mov r2, #0x40
	mov r3, #0xf0
	bl ov18_02244A9C
	add r0, sp, #0x54
	bl FUN_020A283C
	ldr sl, [sp, #0x58]
	ldr r8, [sp, #0x54]
	cmp sl, #0
	mov r3, #0
	cmpeq r8, #0
	beq _02230FD4
	mov r0, r8
	mov r1, sl
	mov r2, #0xa
	bl FUN_020E1EE0
	mov r1, #0x3e8
	umull r4, r1, r0, r1
	mov r0, r8
	mov r1, sl
	mov r3, #0
	mov r2, #0xa
	str r4, [sp, #0x50]
	bl FUN_020E1ED4
	mov sb, #0
	ldr r7, _0223102C @ =0x00002710
	mov r8, r0
	mov sl, r1
	mov r6, sb
	add r5, sp, #0x44
	mov r4, sb
_02230F60:
	mov r0, r8
	mov r1, sl
	mov r2, r7
	mov r3, r6
	bl FUN_020E1EE0
	rsb r1, sb, #2
	str r0, [r5, r1, lsl #2]
	mov r0, r8
	mov r1, sl
	mov r2, r7
	mov r3, r4
	bl FUN_020E1ED4
	mov r8, r0
	mov sl, r1
	add sb, sb, #1
	cmp sb, #3
	blt _02230F60
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r4, [sp, #0x50]
	ldr r3, [sp, #0x44]
	ldr r2, _02231030 @ =0x02249FE8
	add r0, sp, #0x1a
	mov r1, #0x14
	str r4, [sp, #8]
	bl FUN_020DCDCC
	b _02230FE4
_02230FD4:
	ldr r2, _02231034 @ =0x0224A010
	add r0, sp, #0x1a
	mov r1, #0x14
	bl FUN_020DCDCC
_02230FE4:
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r4, sp, #0x1a
	mov r0, fp
	mov r1, #8
	mov r2, #0x78
	mov r3, #0xf0
	str r4, [sp, #0xc]
	bl ov18_02244A9C
	mov r0, fp
	bl ov18_02244C08
	add sp, sp, #0x68
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02231028: .4byte 0x02249FAC
_0223102C: .4byte 0x00002710
_02231030: .4byte 0x02249FE8
_02231034: .4byte 0x0224A010
	arm_func_end ov18_02230E64

	arm_func_start ov18_02231038
ov18_02231038: @ 0x02231038
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231088 @ =ov18_0223108C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231088: .4byte ov18_0223108C
	arm_func_end ov18_02231038

	arm_func_start ov18_0223108C
ov18_0223108C: @ 0x0223108C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #2
	bl ov18_0222B790
	ldr r0, _022310C4 @ =ov18_022310C8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022310C4: .4byte ov18_022310C8
	arm_func_end ov18_0223108C

	arm_func_start ov18_022310C8
ov18_022310C8: @ 0x022310C8
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _022310EC @ =ov18_022310F0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022310EC: .4byte ov18_022310F0
	arm_func_end ov18_022310C8

	arm_func_start ov18_022310F0
ov18_022310F0: @ 0x022310F0
	push {r3, lr}
	bl ov18_02231104
	bl ov18_02231124
	bl ov18_02231128
	pop {r3, pc}
	arm_func_end ov18_022310F0

	arm_func_start ov18_02231104
ov18_02231104: @ 0x02231104
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02231104

	arm_func_start ov18_02231124
ov18_02231124: @ 0x02231124
	bx lr
	arm_func_end ov18_02231124

	arm_func_start ov18_02231128
ov18_02231128: @ 0x02231128
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223114C @ =ov18_02231150
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223114C: .4byte ov18_02231150
	arm_func_end ov18_02231128

	arm_func_start ov18_02231150
ov18_02231150: @ 0x02231150
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223116C @ =ov18_02231170
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223116C: .4byte ov18_02231170
	arm_func_end ov18_02231150

	arm_func_start ov18_02231170
ov18_02231170: @ 0x02231170
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _022311BC @ =ov18_022311C0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022311BC: .4byte ov18_022311C0
	arm_func_end ov18_02231170

	arm_func_start ov18_022311C0
ov18_022311C0: @ 0x022311C0
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223122C @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223122C: .4byte ov18_02231230
	arm_func_end ov18_022311C0

	arm_func_start ov18_02231230
ov18_02231230: @ 0x02231230
	push {r4, lr}
	ldr r0, _022312DC @ =0x022532E8
	mov r1, #0
	strb r1, [r0, #1]
	bl ov18_022312F8
	mov r0, #0x10
	bl ov18_0222BBC0
	mov r0, #3
	bl ov18_0223F4D0
	mov r0, #0x39
	sub r1, r0, #0x3a
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0
	mov r1, #0x5b
	bl ov18_02243F60
	ldr r2, _022312DC @ =0x022532E8
	ldr r1, _022312E0 @ =0xFE00FF00
	str r0, [r2, #8]
	ldr r3, [r0]
	ldr lr, _022312E4 @ =0x0224918E
	and r1, r3, r1
	orr r1, r1, #0x84
	orr r1, r1, #0xe00000
	str r1, [r0]
	ldr r4, [r2, #8]
	ldr r1, _022312E8 @ =0x02249192
	ldrh r0, [r4, #4]
	ldr ip, _022312EC @ =0x02249190
	ldr r3, _022312F0 @ =0x02249194
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r4, #4]
	ldrb r0, [r2]
	lsl r4, r0, #3
	ldrh r0, [lr, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [ip, r4]
	ldrh r3, [r3, r4]
	bl ov18_0222BA04
	ldr r0, _022312F4 @ =ov18_02231494
	bl ov18_0222F6C4
	pop {r4, pc}
	.align 2, 0
_022312DC: .4byte 0x022532E8
_022312E0: .4byte 0xFE00FF00
_022312E4: .4byte 0x0224918E
_022312E8: .4byte 0x02249192
_022312EC: .4byte 0x02249190
_022312F0: .4byte 0x02249194
_022312F4: .4byte ov18_02231494
	arm_func_end ov18_02231230

	arm_func_start ov18_022312F8
ov18_022312F8: @ 0x022312F8
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r4, _02231470 @ =0x02249148
	add r3, sp, #0x2b
	mov r2, #0xb
_0223130C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0223130C
	ldr r4, _02231474 @ =0x0224915E
	add r3, sp, #0x14
	mov r2, #0xb
_02231338:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02231338
	ldrb r2, [r4]
	ldr r0, _02231478 @ =0x0224A038
	ldr r1, _0223147C @ =0x020C07EC
	strb r2, [r3]
	bl ov18_0222B700
	ldr r0, _02231480 @ =0x0224A050
	ldr r1, _02231484 @ =FUN_020C04EC
	bl ov18_0222B700
	add r0, sp, #0x14
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02231488 @ =0x022532E8
	str r0, [r1, #4]
	add r0, sp, #0x2b
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	mov r8, r0
	add r0, sp, #0
	bl FUN_020A283C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	mov r7, #0
	cmpeq r1, #0
	bne _022313FC
	add r5, r8, #0xc0
	add r6, r8, #0x40
	mov r4, #0x20
_022313D8:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020C4DB0
	add r7, r7, #1
	cmp r7, #2
	add r5, r5, #0x20
	add r6, r6, #0x20
	blt _022313D8
_022313FC:
	mov r0, r8
	mov r1, #0x200
	bl FUN_020C2C54
	mov r0, r8
	mov r1, #0
	mov r2, #0x200
	bl FUN_020C00B4
	mov r0, r8
	bl ov18_0224382C
	ldr r2, _0223148C @ =0x04001008
	ldr r1, _02231490 @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x44
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02231470: .4byte 0x02249148
_02231474: .4byte 0x0224915E
_02231478: .4byte 0x0224A038
_0223147C: .4byte 0x020C07EC
_02231480: .4byte 0x0224A050
_02231484: .4byte FUN_020C04EC
_02231488: .4byte 0x022532E8
_0223148C: .4byte 0x04001008
_02231490: .4byte 0x0400000A
	arm_func_end ov18_022312F8

	arm_func_start ov18_02231494
ov18_02231494: @ 0x02231494
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _022314E4 @ =ov18_022314E8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022314E4: .4byte ov18_022314E8
	arm_func_end ov18_02231494

	arm_func_start ov18_022314E8
ov18_022314E8: @ 0x022314E8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _02231520 @ =ov18_02231524
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231520: .4byte ov18_02231524
	arm_func_end ov18_022314E8

	arm_func_start ov18_02231524
ov18_02231524: @ 0x02231524
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02231548 @ =ov18_0223154C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231548: .4byte ov18_0223154C
	arm_func_end ov18_02231524

	arm_func_start ov18_0223154C
ov18_0223154C: @ 0x0223154C
	push {r3, lr}
	bl ov18_02231560
	bl ov18_02231654
	bl ov18_02231658
	pop {r3, pc}
	arm_func_end ov18_0223154C

	arm_func_start ov18_02231560
ov18_02231560: @ 0x02231560
	push {r3, r4, r5, lr}
	ldr r5, _0223163C @ =0x02249176
	mov r4, #0
_0223156C:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _022315BC
	mov r0, #1
	bl ov18_0222B048
	and r1, r4, #0xff
	lsl lr, r1, #3
	ldr r0, _02231640 @ =0x0224918E
	ldr r1, _02231644 @ =0x02249192
	ldr r2, _02231648 @ =0x02249190
	ldr r3, _0223164C @ =0x02249194
	ldr ip, _02231650 @ =0x022532E8
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [ip]
	bl ov18_0222BA04
	pop {r3, r4, r5, pc}
_022315BC:
	add r4, r4, #1
	cmp r4, #3
	add r5, r5, #8
	blo _0223156C
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022315E8
	mov r0, #1
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_022315E8:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02231604
	mov r0, #0
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_02231604:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _02231620
	mov r0, #1
	bl ov18_0223188C
	pop {r3, r4, r5, pc}
_02231620:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #3
	bl ov18_0223188C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223163C: .4byte 0x02249176
_02231640: .4byte 0x0224918E
_02231644: .4byte 0x02249192
_02231648: .4byte 0x02249190
_0223164C: .4byte 0x02249194
_02231650: .4byte 0x022532E8
	arm_func_end ov18_02231560

	arm_func_start ov18_02231654
ov18_02231654: @ 0x02231654
	bx lr
	arm_func_end ov18_02231654

	arm_func_start ov18_02231658
ov18_02231658: @ 0x02231658
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	bl ov18_0222B034
	cmp r0, #0
	beq _0223167C
	cmp r0, #1
	beq _02231688
	add sp, sp, #0x14
	ldm sp!, {pc}
_0223167C:
	mov r0, #7
	bl ov18_0223E994
	b _022316E4
_02231688:
	add r0, sp, #0
	bl FUN_020A283C
	ldr r0, _022316F4 @ =0x022532E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _022316CC
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	cmpeq r1, #0
	bne _022316CC
	mov r0, #9
	bl ov18_0223E994
	mvn r0, #0
	bl ov18_0222B068
	add sp, sp, #0x14
	ldm sp!, {pc}
_022316CC:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223191C
	ldr r0, _022316F4 @ =0x022532E8
	mov r1, #1
	strb r1, [r0, #1]
_022316E4:
	ldr r0, _022316F8 @ =ov18_022316FC
	bl ov18_0222F6C4
	add sp, sp, #0x14
	ldm sp!, {pc}
	.align 2, 0
_022316F4: .4byte 0x022532E8
_022316F8: .4byte ov18_022316FC
	arm_func_end ov18_02231658

	arm_func_start ov18_022316FC
ov18_022316FC: @ 0x022316FC
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02231718 @ =ov18_0223171C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231718: .4byte ov18_0223171C
	arm_func_end ov18_022316FC

	arm_func_start ov18_0223171C
ov18_0223171C: @ 0x0223171C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02231778 @ =0x022532E8
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _02231744
	bl ov18_0222B004
_02231744:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223177C @ =ov18_02231780
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231778: .4byte 0x022532E8
_0223177C: .4byte ov18_02231780
	arm_func_end ov18_0223171C

	arm_func_start ov18_02231780
ov18_02231780: @ 0x02231780
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _02231878 @ =0x022532E8
	ldr r0, [r0, #8]
	bl ov18_02245B74
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _02231878 @ =0x022532E8
	ldr r0, [r0, #4]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _02231878 @ =0x022532E8
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _02231810
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223187C @ =ov18_02230228
	bl ov18_0222F6C4
	pop {r3, pc}
_02231810:
	ldrb r0, [r0]
	cmp r0, #0
	beq _02231830
	cmp r0, #1
	beq _02231848
	cmp r0, #2
	beq _02231860
	pop {r3, pc}
_02231830:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231880 @ =ov18_02230DB0
	bl ov18_0222F6C4
	pop {r3, pc}
_02231848:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231884 @ =ov18_022307A0
	bl ov18_0222F6C4
	pop {r3, pc}
_02231860:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231888 @ =ov18_02231FFC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231878: .4byte 0x022532E8
_0223187C: .4byte ov18_02230228
_02231880: .4byte ov18_02230DB0
_02231884: .4byte ov18_022307A0
_02231888: .4byte ov18_02231FFC
	arm_func_end ov18_02231780

	arm_func_start ov18_0223188C
ov18_0223188C: @ 0x0223188C
	push {r3, lr}
	cmp r0, #1
	mov r1, #3
	bne _022318B4
	ldr r0, _02231908 @ =0x022532E8
	ldrb r0, [r0]
	add r0, r0, #2
	bl FUN_020BD140
	ldr r1, _02231908 @ =0x022532E8
	b _022318C8
_022318B4:
	ldr r0, _02231908 @ =0x022532E8
	ldrb r0, [r0]
	add r0, r0, #1
	bl FUN_020BD140
	ldr r1, _02231908 @ =0x022532E8
_022318C8:
	strb r0, [r1]
	mov r0, #8
	bl ov18_0223E994
	ldr r0, _02231908 @ =0x022532E8
	ldr ip, _0223190C @ =0x0224918E
	ldrb r0, [r0]
	ldr r1, _02231910 @ =0x02249192
	ldr r2, _02231914 @ =0x02249190
	lsl lr, r0, #3
	ldr r3, _02231918 @ =0x02249194
	ldrh r0, [ip, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	bl ov18_0222BA04
	pop {r3, pc}
	.align 2, 0
_02231908: .4byte 0x022532E8
_0223190C: .4byte 0x0224918E
_02231910: .4byte 0x02249192
_02231914: .4byte 0x02249190
_02231918: .4byte 0x02249194
	arm_func_end ov18_0223188C

	arm_func_start ov18_0223191C
ov18_0223191C: @ 0x0223191C
	ldr r0, _0223193C @ =0x022532E8
	ldr r1, _02231940 @ =0x02249140
	ldrb r2, [r0]
	ldr ip, _02231944 @ =ov18_0223D154
	ldr r0, [r0, #4]
	ldrb r1, [r1, r2]
	mov r2, r1
	bx ip
	.align 2, 0
_0223193C: .4byte 0x022532E8
_02231940: .4byte 0x02249140
_02231944: .4byte ov18_0223D154
	arm_func_end ov18_0223191C

	arm_func_start ov18_02231948
ov18_02231948: @ 0x02231948
	push {r3, lr}
	bl ov18_02231980
	mov r0, #0x1e
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	mov r0, #1
	bl ov18_0222BC8C
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _0223197C @ =ov18_02231A00
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223197C: .4byte ov18_02231A00
	arm_func_end ov18_02231948

	arm_func_start ov18_02231980
ov18_02231980: @ 0x02231980
	push {r3, lr}
	ldr r0, _022319F0 @ =0x0224A068
	ldr r1, _022319F4 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _022319F8 @ =0x04001008
	ldr r1, _022319FC @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022319F0: .4byte 0x0224A068
_022319F4: .4byte FUN_020C04EC
_022319F8: .4byte 0x04001008
_022319FC: .4byte 0x0400000A
	arm_func_end ov18_02231980

	arm_func_start ov18_02231A00
ov18_02231A00: @ 0x02231A00
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231A30 @ =ov18_02231A34
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231A30: .4byte ov18_02231A34
	arm_func_end ov18_02231A00

	arm_func_start ov18_02231A34
ov18_02231A34: @ 0x02231A34
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02231A5C @ =ov18_02231B38
	bl ov18_0222FA60
	ldr r0, _02231A60 @ =ov18_02231A64
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231A5C: .4byte ov18_02231B38
_02231A60: .4byte ov18_02231A64
	arm_func_end ov18_02231A34

	arm_func_start ov18_02231A64
ov18_02231A64: @ 0x02231A64
	push {r3, lr}
	bl ov18_02231A74
	bl ov18_02231A78
	pop {r3, pc}
	arm_func_end ov18_02231A64

	arm_func_start ov18_02231A74
ov18_02231A74: @ 0x02231A74
	bx lr
	arm_func_end ov18_02231A74

	arm_func_start ov18_02231A78
ov18_02231A78: @ 0x02231A78
	bx lr
	arm_func_end ov18_02231A78

	arm_func_start ov18_02231A7C
ov18_02231A7C: @ 0x02231A7C
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02231AA0 @ =ov18_02231AA4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231AA0: .4byte ov18_02231AA4
	arm_func_end ov18_02231A7C

	arm_func_start ov18_02231AA4
ov18_02231AA4: @ 0x02231AA4
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222FA44
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0222BD44
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231B28 @ =0x022532F4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02231B08
	ldr r0, _02231B2C @ =ov18_02232530
	bl ov18_0222F6C4
	pop {r3, pc}
_02231B08:
	cmp r0, #2
	bne _02231B1C
	ldr r0, _02231B30 @ =ov18_02232348
	bl ov18_0222F6C4
	pop {r3, pc}
_02231B1C:
	ldr r0, _02231B34 @ =ov18_02231BC0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231B28: .4byte 0x022532F4
_02231B2C: .4byte ov18_02232530
_02231B30: .4byte ov18_02232348
_02231B34: .4byte ov18_02231BC0
	arm_func_end ov18_02231AA4

	arm_func_start ov18_02231B38
ov18_02231B38: @ 0x02231B38
	push {r3, lr}
	cmp r0, #2
	bne _02231B64
	bl ov18_0223E61C
	ldr r0, _02231BB8 @ =0x022532F4
	mov r1, #1
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x10
	bl ov18_0223E994
	b _02231BA0
_02231B64:
	cmp r0, #3
	bne _02231B88
	ldr r0, _02231BB8 @ =0x022532F4
	mov r1, #2
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
	b _02231BA0
_02231B88:
	ldr r0, _02231BB8 @ =0x022532F4
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
_02231BA0:
	mov r0, #0
	bl ov18_0222FA60
	bl ov18_0222F9E8
	ldr r0, _02231BBC @ =ov18_02231A7C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231BB8: .4byte 0x022532F4
_02231BBC: .4byte ov18_02231A7C
	arm_func_end ov18_02231B38

	arm_func_start ov18_02231BC0
ov18_02231BC0: @ 0x02231BC0
	push {r3, lr}
	bl ov18_02231BE0
	mov r0, #0x1f
	bl ov18_0222B7C8
	ldr r0, _02231BDC @ =ov18_02231C48
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231BDC: .4byte ov18_02231C48
	arm_func_end ov18_02231BC0

	arm_func_start ov18_02231BE0
ov18_02231BE0: @ 0x02231BE0
	ldr r3, _02231C40 @ =0x04001008
	ldr r1, _02231C44 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_02231C40: .4byte 0x04001008
_02231C44: .4byte 0x0400000A
	arm_func_end ov18_02231BE0

	arm_func_start ov18_02231C48
ov18_02231C48: @ 0x02231C48
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231C78 @ =ov18_02231C7C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231C78: .4byte ov18_02231C7C
	arm_func_end ov18_02231C48

	arm_func_start ov18_02231C7C
ov18_02231C7C: @ 0x02231C7C
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #5
	bl ov18_0222B790
	ldr r0, _02231CA4 @ =ov18_02231CA8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231CA4: .4byte ov18_02231CA8
	arm_func_end ov18_02231C7C

	arm_func_start ov18_02231CA8
ov18_02231CA8: @ 0x02231CA8
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02231CCC @ =ov18_02231CD0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231CCC: .4byte ov18_02231CD0
	arm_func_end ov18_02231CA8

	arm_func_start ov18_02231CD0
ov18_02231CD0: @ 0x02231CD0
	push {r3, lr}
	bl ov18_02231CE4
	bl ov18_02231D04
	bl ov18_02231D08
	pop {r3, pc}
	arm_func_end ov18_02231CD0

	arm_func_start ov18_02231CE4
ov18_02231CE4: @ 0x02231CE4
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02231CE4

	arm_func_start ov18_02231D04
ov18_02231D04: @ 0x02231D04
	bx lr
	arm_func_end ov18_02231D04

	arm_func_start ov18_02231D08
ov18_02231D08: @ 0x02231D08
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02231D2C @ =ov18_02231D30
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231D2C: .4byte ov18_02231D30
	arm_func_end ov18_02231D08

	arm_func_start ov18_02231D30
ov18_02231D30: @ 0x02231D30
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02231D4C @ =ov18_02231D50
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231D4C: .4byte ov18_02231D50
	arm_func_end ov18_02231D30

	arm_func_start ov18_02231D50
ov18_02231D50: @ 0x02231D50
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #3
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0x40
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x40
	bl ov18_02244194
	ldr r0, _02231D98 @ =ov18_02231D9C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231D98: .4byte ov18_02231D9C
	arm_func_end ov18_02231D50

	arm_func_start ov18_02231D9C
ov18_02231D9C: @ 0x02231D9C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0x1000000
	bl FUN_020C3E08
	bl FUN_020CB218
	pop {r3, pc}
	arm_func_end ov18_02231D9C

	arm_func_start ov18_02231DD0
ov18_02231DD0: @ 0x02231DD0
	push {r3, lr}
	bl ov18_02231DF0
	mov r0, #0x1a
	bl ov18_0222B7C8
	ldr r0, _02231DEC @ =ov18_02231E58
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231DEC: .4byte ov18_02231E58
	arm_func_end ov18_02231DD0

	arm_func_start ov18_02231DF0
ov18_02231DF0: @ 0x02231DF0
	ldr r3, _02231E50 @ =0x04001008
	ldr r1, _02231E54 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_02231E50: .4byte 0x04001008
_02231E54: .4byte 0x0400000A
	arm_func_end ov18_02231DF0

	arm_func_start ov18_02231E58
ov18_02231E58: @ 0x02231E58
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231E88 @ =ov18_02231E8C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231E88: .4byte ov18_02231E8C
	arm_func_end ov18_02231E58

	arm_func_start ov18_02231E8C
ov18_02231E8C: @ 0x02231E8C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #4
	bl ov18_0222B790
	ldr r0, _02231EC4 @ =ov18_02231EC8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231EC4: .4byte ov18_02231EC8
	arm_func_end ov18_02231E8C

	arm_func_start ov18_02231EC8
ov18_02231EC8: @ 0x02231EC8
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02231EEC @ =ov18_02231EF0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231EEC: .4byte ov18_02231EF0
	arm_func_end ov18_02231EC8

	arm_func_start ov18_02231EF0
ov18_02231EF0: @ 0x02231EF0
	push {r3, lr}
	bl ov18_02231F04
	bl ov18_02231F24
	bl ov18_02231F28
	pop {r3, pc}
	arm_func_end ov18_02231EF0

	arm_func_start ov18_02231F04
ov18_02231F04: @ 0x02231F04
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02231F04

	arm_func_start ov18_02231F24
ov18_02231F24: @ 0x02231F24
	bx lr
	arm_func_end ov18_02231F24

	arm_func_start ov18_02231F28
ov18_02231F28: @ 0x02231F28
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02231F4C @ =ov18_02231F50
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231F4C: .4byte ov18_02231F50
	arm_func_end ov18_02231F28

	arm_func_start ov18_02231F50
ov18_02231F50: @ 0x02231F50
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02231F6C @ =ov18_02231F70
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231F6C: .4byte ov18_02231F70
	arm_func_end ov18_02231F50

	arm_func_start ov18_02231F70
ov18_02231F70: @ 0x02231F70
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02231FA8 @ =ov18_02231FAC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231FA8: .4byte ov18_02231FAC
	arm_func_end ov18_02231F70

	arm_func_start ov18_02231FAC
ov18_02231FAC: @ 0x02231FAC
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231FF8 @ =ov18_02232C90
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02231FF8: .4byte ov18_02232C90
	arm_func_end ov18_02231FAC

	arm_func_start ov18_02231FFC
ov18_02231FFC: @ 0x02231FFC
	push {r3, lr}
	ldr r0, _0223203C @ =0x022532F8
	mov r1, #0
	strb r1, [r0]
	bl ov18_02232044
	mov r0, #0x13
	bl ov18_0222BBC0
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0x1b
	bl ov18_0222B7C8
	ldr r0, _02232040 @ =ov18_022320C4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223203C: .4byte 0x022532F8
_02232040: .4byte ov18_022320C4
	arm_func_end ov18_02231FFC

	arm_func_start ov18_02232044
ov18_02232044: @ 0x02232044
	push {r3, lr}
	ldr r0, _022320B4 @ =0x0224A07C
	ldr r1, _022320B8 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _022320BC @ =0x04001008
	ldr r1, _022320C0 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022320B4: .4byte 0x0224A07C
_022320B8: .4byte FUN_020C04EC
_022320BC: .4byte 0x04001008
_022320C0: .4byte 0x0400000A
	arm_func_end ov18_02232044

	arm_func_start ov18_022320C4
ov18_022320C4: @ 0x022320C4
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232114 @ =ov18_02232118
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232114: .4byte ov18_02232118
	arm_func_end ov18_022320C4

	arm_func_start ov18_02232118
ov18_02232118: @ 0x02232118
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #3
	bl ov18_0222B790
	ldr r0, _02232140 @ =ov18_02232144
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232140: .4byte ov18_02232144
	arm_func_end ov18_02232118

	arm_func_start ov18_02232144
ov18_02232144: @ 0x02232144
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02232168 @ =ov18_0223216C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232168: .4byte ov18_0223216C
	arm_func_end ov18_02232144

	arm_func_start ov18_0223216C
ov18_0223216C: @ 0x0223216C
	push {r3, lr}
	bl ov18_02232180
	bl ov18_022321B8
	bl ov18_022321BC
	pop {r3, pc}
	arm_func_end ov18_0223216C

	arm_func_start ov18_02232180
ov18_02232180: @ 0x02232180
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223219C
	mov r0, #1
	bl ov18_0222B048
_0223219C:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02232180

	arm_func_start ov18_022321B8
ov18_022321B8: @ 0x022321B8
	bx lr
	arm_func_end ov18_022321B8

	arm_func_start ov18_022321BC
ov18_022321BC: @ 0x022321BC
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _022321D8
	cmp r0, #1
	beq _022321E4
	pop {r3, pc}
_022321D8:
	mov r0, #7
	bl ov18_0223E994
	b _022321F8
_022321E4:
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02232204 @ =0x022532F8
	mov r1, #1
	strb r1, [r0]
_022321F8:
	ldr r0, _02232208 @ =ov18_0223220C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232204: .4byte 0x022532F8
_02232208: .4byte ov18_0223220C
	arm_func_end ov18_022321BC

	arm_func_start ov18_0223220C
ov18_0223220C: @ 0x0223220C
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02232228 @ =ov18_0223222C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232228: .4byte ov18_0223222C
	arm_func_end ov18_0223220C

	arm_func_start ov18_0223222C
ov18_0223222C: @ 0x0223222C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _02232288 @ =0x022532F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232268
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02232268:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223228C @ =ov18_02232290
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232288: .4byte 0x022532F8
_0223228C: .4byte ov18_02232290
	arm_func_end ov18_0223222C

	arm_func_start ov18_02232290
ov18_02232290: @ 0x02232290
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223233C @ =0x022532F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _022322C4
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_022322C4:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223233C @ =0x022532F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _022322F8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022322F8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223233C @ =0x022532F8
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #0
	bne _0223232C
	bl ov18_0222F6D4
	ldr r0, _02232340 @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
_0223232C:
	bl ov18_0222F6D4
	ldr r0, _02232344 @ =ov18_02231DD0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223233C: .4byte 0x022532F8
_02232340: .4byte ov18_02231230
_02232344: .4byte ov18_02231DD0
	arm_func_end ov18_02232290

	arm_func_start ov18_02232348
ov18_02232348: @ 0x02232348
	push {r3, lr}
	ldr r0, _02232370 @ =0x022532FC
	mov r1, #0
	strb r1, [r0]
	bl ov18_02232378
	mov r0, #0x21
	bl ov18_0222B7C8
	ldr r0, _02232374 @ =ov18_022323E4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232370: .4byte 0x022532FC
_02232374: .4byte ov18_022323E4
	arm_func_end ov18_02232348

	arm_func_start ov18_02232378
ov18_02232378: @ 0x02232378
	push {r3, lr}
	ldr r0, _022323D4 @ =0x0224A090
	ldr r1, _022323D8 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r2, _022323DC @ =0x04001008
	ldr r1, _022323E0 @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022323D4: .4byte 0x0224A090
_022323D8: .4byte FUN_020C04EC
_022323DC: .4byte 0x04001008
_022323E0: .4byte 0x0400000A
	arm_func_end ov18_02232378

	arm_func_start ov18_022323E4
ov18_022323E4: @ 0x022323E4
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232414 @ =ov18_02232418
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232414: .4byte ov18_02232418
	arm_func_end ov18_022323E4

	arm_func_start ov18_02232418
ov18_02232418: @ 0x02232418
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222FA44
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _02232444 @ =ov18_02232448
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232444: .4byte ov18_02232448
	arm_func_end ov18_02232418

	arm_func_start ov18_02232448
ov18_02232448: @ 0x02232448
	push {r3, lr}
	bl ov18_022324FC
	bl ov18_02232458
	pop {r3, pc}
	arm_func_end ov18_02232448

	arm_func_start ov18_02232458
ov18_02232458: @ 0x02232458
	bx lr
	arm_func_end ov18_02232458

	arm_func_start ov18_0223245C
ov18_0223245C: @ 0x0223245C
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02232494 @ =ov18_02232498
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232494: .4byte ov18_02232498
	arm_func_end ov18_0223245C

	arm_func_start ov18_02232498
ov18_02232498: @ 0x02232498
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _022324F8 @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022324F8: .4byte ov18_02231230
	arm_func_end ov18_02232498

	arm_func_start ov18_022324FC
ov18_022324FC: @ 0x022324FC
	push {r3, lr}
	ldr r0, _02232528 @ =0x022532FC
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	poplo {r3, pc}
	ldr r0, _0223252C @ =ov18_0223245C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232528: .4byte 0x022532FC
_0223252C: .4byte ov18_0223245C
	arm_func_end ov18_022324FC

	arm_func_start ov18_02232530
ov18_02232530: @ 0x02232530
	push {r3, lr}
	bl ov18_0223256C
	mov r0, #0x20
	bl ov18_0222B7C8
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl ov18_0222B594
	ldr r1, _02232564 @ =0x02253300
	strb r0, [r1]
	ldr r0, _02232568 @ =ov18_022325EC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232564: .4byte 0x02253300
_02232568: .4byte ov18_022325EC
	arm_func_end ov18_02232530

	arm_func_start ov18_0223256C
ov18_0223256C: @ 0x0223256C
	push {r3, lr}
	ldr r0, _022325DC @ =0x0224A0A4
	ldr r1, _022325E0 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _022325E4 @ =0x04001008
	ldr r1, _022325E8 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022325DC: .4byte 0x0224A0A4
_022325E0: .4byte FUN_020C04EC
_022325E4: .4byte 0x04001008
_022325E8: .4byte 0x0400000A
	arm_func_end ov18_0223256C

	arm_func_start ov18_022325EC
ov18_022325EC: @ 0x022325EC
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223264C @ =0x02253300
	ldrb r0, [r0]
	cmp r0, #0
	beq _02232640
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
_02232640:
	ldr r0, _02232650 @ =ov18_02232654
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223264C: .4byte 0x02253300
_02232650: .4byte ov18_02232654
	arm_func_end ov18_022325EC

	arm_func_start ov18_02232654
ov18_02232654: @ 0x02232654
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #3
	bl ov18_0222B790
	ldr r0, _0223268C @ =ov18_02232690
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223268C: .4byte ov18_02232690
	arm_func_end ov18_02232654

	arm_func_start ov18_02232690
ov18_02232690: @ 0x02232690
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222FA44
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _022326C0 @ =ov18_022326C4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022326C0: .4byte ov18_022326C4
	arm_func_end ov18_02232690

	arm_func_start ov18_022326C4
ov18_022326C4: @ 0x022326C4
	push {r3, lr}
	bl ov18_022326D8
	bl ov18_02232710
	bl ov18_02232714
	pop {r3, pc}
	arm_func_end ov18_022326C4

	arm_func_start ov18_022326D8
ov18_022326D8: @ 0x022326D8
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022326F4
	mov r0, #1
	bl ov18_0222B048
_022326F4:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_022326D8

	arm_func_start ov18_02232710
ov18_02232710: @ 0x02232710
	bx lr
	arm_func_end ov18_02232710

	arm_func_start ov18_02232714
ov18_02232714: @ 0x02232714
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _02232744
	cmp r0, #1
	popne {r3, pc}
	ldr r1, _02232764 @ =0x02253300
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #1]
	bl ov18_0223E994
	b _02232758
_02232744:
	ldr r1, _02232764 @ =0x02253300
	mov r2, #0
	mov r0, #7
	strb r2, [r1, #1]
	bl ov18_0223E994
_02232758:
	ldr r0, _02232768 @ =ov18_0223276C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232764: .4byte 0x02253300
_02232768: .4byte ov18_0223276C
	arm_func_end ov18_02232714

	arm_func_start ov18_0223276C
ov18_0223276C: @ 0x0223276C
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02232788 @ =ov18_0223278C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232788: .4byte ov18_0223278C
	arm_func_end ov18_0223276C

	arm_func_start ov18_0223278C
ov18_0223278C: @ 0x0223278C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _022327E8 @ =0x02253300
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _022327C8
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_022327C8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _022327EC @ =ov18_022327F0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022327E8: .4byte 0x02253300
_022327EC: .4byte ov18_022327F0
	arm_func_end ov18_0223278C

	arm_func_start ov18_022327F0
ov18_022327F0: @ 0x022327F0
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223288C @ =0x02253300
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232848
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02232848:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223288C @ =0x02253300
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	mov r0, #0
	bne _0223287C
	bl ov18_0222F6D4
	ldr r0, _02232890 @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
_0223287C:
	bl ov18_0222F6D4
	ldr r0, _02232894 @ =ov18_02232C90
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223288C: .4byte 0x02253300
_02232890: .4byte ov18_02231230
_02232894: .4byte ov18_02232C90
	arm_func_end ov18_022327F0

	arm_func_start ov18_02232898
ov18_02232898: @ 0x02232898
	push {r3, r4, r5, lr}
	sub sp, sp, #0x28
	bl ov18_0222FA84
	mov r5, r0
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r1, _0223295C @ =0x02253304
	mov r2, #0
	strb r2, [r1, #1]
	mov r4, r0
	strb r2, [r1]
	bl ov18_02232968
	mov r0, #0
	add r1, sp, #0x10
	mov r2, #0x16
	bl FUN_020C4AF0
	ldrb r2, [r5, #1]
	add r0, r5, #2
	add r1, sp, #0x10
	lsl r2, r2, #1
	bl FUN_020C4B18
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r1, sp, #0x10
	str r1, [sp, #0xc]
	mov r0, r4
	mov r1, #8
	mov r2, #0x35
	mov r3, #0xf0
	bl ov18_02244A9C
	mov r0, r4
	bl ov18_02244C08
	ldr r0, _02232960 @ =ov18_02232C5C
	bl ov18_0222FA60
	mov r1, #4
	mov r2, #0
	mov r0, #0x1d
	sub r3, r1, #5
	str r2, [sp]
	bl ov18_0223FC48
	ldr r0, _02232964 @ =ov18_022329E8
	bl ov18_0222F6C4
	add sp, sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223295C: .4byte 0x02253304
_02232960: .4byte ov18_02232C5C
_02232964: .4byte ov18_022329E8
	arm_func_end ov18_02232898

	arm_func_start ov18_02232968
ov18_02232968: @ 0x02232968
	push {r3, lr}
	ldr r0, _022329D8 @ =0x0224A0B8
	ldr r1, _022329DC @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _022329E0 @ =0x04001008
	ldr r1, _022329E4 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022329D8: .4byte 0x0224A0B8
_022329DC: .4byte FUN_020C04EC
_022329E0: .4byte 0x04001008
_022329E4: .4byte 0x0400000A
	arm_func_end ov18_02232968

	arm_func_start ov18_022329E8
ov18_022329E8: @ 0x022329E8
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232A18 @ =ov18_02232A1C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232A18: .4byte ov18_02232A1C
	arm_func_end ov18_022329E8

	arm_func_start ov18_02232A1C
ov18_02232A1C: @ 0x02232A1C
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02232A3C @ =ov18_02232A40
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232A3C: .4byte ov18_02232A40
	arm_func_end ov18_02232A1C

	arm_func_start ov18_02232A40
ov18_02232A40: @ 0x02232A40
	push {r3, lr}
	bl ov18_0223FFB8
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	ldr r0, _02232A60 @ =ov18_02232A64
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232A60: .4byte ov18_02232A64
	arm_func_end ov18_02232A40

	arm_func_start ov18_02232A64
ov18_02232A64: @ 0x02232A64
	push {r3, lr}
	bl ov18_02232AD4
	bl ov18_02232AD8
	bl ov18_0223FFB8
	cmp r0, #0
	beq _02232A88
	cmp r0, #1
	beq _02232AA0
	pop {r3, pc}
_02232A88:
	ldr r1, _02232ACC @ =0x02253304
	mov r2, #0
	mov r0, #7
	strb r2, [r1, #1]
	bl ov18_0223E994
	b _02232AB4
_02232AA0:
	ldr r1, _02232ACC @ =0x02253304
	mov r2, #1
	mov r0, #0xe
	strb r2, [r1, #1]
	bl ov18_0223E994
_02232AB4:
	mov r0, #0
	bl ov18_0222FA60
	bl ov18_0223FF74
	ldr r0, _02232AD0 @ =ov18_02232ADC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232ACC: .4byte 0x02253304
_02232AD0: .4byte ov18_02232ADC
	arm_func_end ov18_02232A64

	arm_func_start ov18_02232AD4
ov18_02232AD4: @ 0x02232AD4
	bx lr
	arm_func_end ov18_02232AD4

	arm_func_start ov18_02232AD8
ov18_02232AD8: @ 0x02232AD8
	bx lr
	arm_func_end ov18_02232AD8

	arm_func_start ov18_02232ADC
ov18_02232ADC: @ 0x02232ADC
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02232B30 @ =0x02253304
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232B10
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02232B10:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02232B34 @ =ov18_02232B38
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232B30: .4byte 0x02253304
_02232B34: .4byte ov18_02232B38
	arm_func_end ov18_02232ADC

	arm_func_start ov18_02232B38
ov18_02232B38: @ 0x02232B38
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02232B8C @ =0x02253304
	ldrb r1, [r0]
	cmp r1, #0
	ldrbeq r0, [r0, #1]
	cmpeq r0, #1
	bne _02232B7C
	bl ov18_0222FA78
	b _02232B80
_02232B7C:
	bl ov18_0222F9E8
_02232B80:
	ldr r0, _02232B90 @ =ov18_02232B94
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232B8C: .4byte 0x02253304
_02232B90: .4byte ov18_02232B94
	arm_func_end ov18_02232B38

	arm_func_start ov18_02232B94
ov18_02232B94: @ 0x02232B94
	push {r3, lr}
	ldr r0, _02232C4C @ =0x02253304
	ldrb r1, [r0]
	cmp r1, #0
	bne _02232BB4
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232BC0
_02232BB4:
	bl ov18_0222FA44
	cmp r0, #0
	popeq {r3, pc}
_02232BC0:
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02232C4C @ =0x02253304
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232BF4
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02232BF4:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02232C4C @ =0x02253304
	ldrb r1, [r0]
	cmp r1, #0
	beq _02232C1C
	ldr r0, _02232C50 @ =ov18_02232530
	bl ov18_0222F6C4
	pop {r3, pc}
_02232C1C:
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232C40
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	ldr r0, _02232C54 @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
_02232C40:
	ldr r0, _02232C58 @ =ov18_02231948
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232C4C: .4byte 0x02253304
_02232C50: .4byte ov18_02232530
_02232C54: .4byte ov18_02231230
_02232C58: .4byte ov18_02231948
	arm_func_end ov18_02232B94

	arm_func_start ov18_02232C5C
ov18_02232C5C: @ 0x02232C5C
	ldr r0, _02232C6C @ =0x02253304
	mov r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_02232C6C: .4byte 0x02253304
	arm_func_end ov18_02232C5C

	arm_func_start ov18_02232C70
ov18_02232C70: @ 0x02232C70
	ldr r0, _02232C8C @ =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02232C8C: .4byte 0x027FFFA8
	arm_func_end ov18_02232C70

	arm_func_start ov18_02232C90
ov18_02232C90: @ 0x02232C90
	push {r3, lr}
	ldr r0, _02232CD0 @ =ov18_0223300C
	bl ov18_0222F8FC
	ldr r0, _02232CD4 @ =0x02253308
	mov r1, #0
	strb r1, [r0]
	bl ov18_02232CDC
	mov r0, #0x1c
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _02232CD8 @ =ov18_02232D5C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232CD0: .4byte ov18_0223300C
_02232CD4: .4byte 0x02253308
_02232CD8: .4byte ov18_02232D5C
	arm_func_end ov18_02232C90

	arm_func_start ov18_02232CDC
ov18_02232CDC: @ 0x02232CDC
	push {r3, lr}
	ldr r0, _02232D4C @ =0x0224A0CC
	ldr r1, _02232D50 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02232D54 @ =0x04001008
	ldr r1, _02232D58 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02232D4C: .4byte 0x0224A0CC
_02232D50: .4byte FUN_020C04EC
_02232D54: .4byte 0x04001008
_02232D58: .4byte 0x0400000A
	arm_func_end ov18_02232CDC

	arm_func_start ov18_02232D5C
ov18_02232D5C: @ 0x02232D5C
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232D8C @ =ov18_02232D90
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232D8C: .4byte ov18_02232D90
	arm_func_end ov18_02232D5C

	arm_func_start ov18_02232D90
ov18_02232D90: @ 0x02232D90
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _02232DB8 @ =ov18_02232DBC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232DB8: .4byte ov18_02232DBC
	arm_func_end ov18_02232D90

	arm_func_start ov18_02232DBC
ov18_02232DBC: @ 0x02232DBC
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	ldr r0, _02232DDC @ =ov18_02232DE0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232DDC: .4byte ov18_02232DE0
	arm_func_end ov18_02232DBC

	arm_func_start ov18_02232DE0
ov18_02232DE0: @ 0x02232DE0
	push {r3, lr}
	bl ov18_02232DF4
	bl ov18_02232E2C
	bl ov18_02232E30
	pop {r3, pc}
	arm_func_end ov18_02232DE0

	arm_func_start ov18_02232DF4
ov18_02232DF4: @ 0x02232DF4
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02232E14
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
_02232E14:
	bl ov18_02232C70
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02232DF4

	arm_func_start ov18_02232E2C
ov18_02232E2C: @ 0x02232E2C
	bx lr
	arm_func_end ov18_02232E2C

	arm_func_start ov18_02232E30
ov18_02232E30: @ 0x02232E30
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _02232E58 @ =ov18_02232E5C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232E58: .4byte ov18_02232E5C
	arm_func_end ov18_02232E30

	arm_func_start ov18_02232E5C
ov18_02232E5C: @ 0x02232E5C
	push {r3, lr}
	ldr r0, _02232E8C @ =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232E74
	bl ov18_0222F9E8
_02232E74:
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02232E90 @ =ov18_02232E94
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232E8C: .4byte 0x02253308
_02232E90: .4byte ov18_02232E94
	arm_func_end ov18_02232E5C

	arm_func_start ov18_02232E94
ov18_02232E94: @ 0x02232E94
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02232F0C @ =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232EC4
	bl ov18_0222FA44
	cmp r0, #0
	popeq {r3, pc}
_02232EC4:
	bl ov18_0222B004
	ldr r0, _02232F0C @ =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232EEC
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02232EEC:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02232F10 @ =ov18_02232F14
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232F0C: .4byte 0x02253308
_02232F10: .4byte ov18_02232F14
	arm_func_end ov18_02232E94

	arm_func_start ov18_02232F14
ov18_02232F14: @ 0x02232F14
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02232FFC @ =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232F48
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_02232F48:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _02232FFC @ =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232F70
	bl ov18_0222FA44
	cmp r0, #0
	popeq {r3, pc}
_02232F70:
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02232FFC @ =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232F9C
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02232F9C:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02232FFC @ =0x02253308
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232FD0
	mov r0, #0
	bl ov18_0222F6D4
	ldr r0, _02233000 @ =ov18_02231230
	bl ov18_0222F6C4
	pop {r3, pc}
_02232FD0:
	cmp r0, #2
	mov r0, #0
	bne _02232FEC
	bl ov18_0222F6D4
	ldr r0, _02233004 @ =ov18_02232530
	bl ov18_0222F6C4
	pop {r3, pc}
_02232FEC:
	bl ov18_0222F6D4
	ldr r0, _02233008 @ =ov18_02232898
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02232FFC: .4byte 0x02253308
_02233000: .4byte ov18_02231230
_02233004: .4byte ov18_02232530
_02233008: .4byte ov18_02232898
	arm_func_end ov18_02232F14

	arm_func_start ov18_0223300C
ov18_0223300C: @ 0x0223300C
	push {r4, lr}
	mov r4, r0
	bl ov18_0223E9FC
	cmp r4, #0
	bne _02233038
	ldr r1, _02233060 @ =0x02253308
	mov r2, #1
	mov r0, #0x10
	strb r2, [r1]
	bl ov18_0223E994
	b _0223304C
_02233038:
	ldr r1, _02233060 @ =0x02253308
	mov r2, #2
	mov r0, #0x12
	strb r2, [r1]
	bl ov18_0223E994
_0223304C:
	mov r0, #0
	bl ov18_0222FA60
	ldr r0, _02233064 @ =ov18_02232E5C
	bl ov18_0222F6C4
	pop {r4, pc}
	.align 2, 0
_02233060: .4byte 0x02253308
_02233064: .4byte ov18_02232E5C
	arm_func_end ov18_0223300C

	arm_func_start ov18_02233068
ov18_02233068: @ 0x02233068
	ldr r0, _02233084 @ =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02233084: .4byte 0x027FFFA8
	arm_func_end ov18_02233068

	arm_func_start ov18_02233088
ov18_02233088: @ 0x02233088
	push {r3, lr}
	ldr r0, _022330E0 @ =0x0225330C
	mov r1, #0
	strh r1, [r0, #2]
	bl ov18_022330E8
	bl ov18_0222BC1C
	mov r0, #0x36
	sub r1, r0, #0x37
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0x22
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	bl ov18_0222F030
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _022330E4 @ =ov18_02233190
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022330E0: .4byte 0x0225330C
_022330E4: .4byte ov18_02233190
	arm_func_end ov18_02233088

	arm_func_start ov18_022330E8
ov18_022330E8: @ 0x022330E8
	push {r3, lr}
	ldr r0, _02233170 @ =0x0224A0E0
	ldr r1, _02233174 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02233178 @ =0x0224A0F8
	ldr r1, _0223317C @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _02233180 @ =0x0224A110
	ldr r1, _02233184 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02233188 @ =0x04001008
	ldr r1, _0223318C @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02233170: .4byte 0x0224A0E0
_02233174: .4byte 0x020C07EC
_02233178: .4byte 0x0224A0F8
_0223317C: .4byte FUN_020C00B4
_02233180: .4byte 0x0224A110
_02233184: .4byte FUN_020C04EC
_02233188: .4byte 0x04001008
_0223318C: .4byte 0x0400000A
	arm_func_end ov18_022330E8

	arm_func_start ov18_02233190
ov18_02233190: @ 0x02233190
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022331E0 @ =ov18_022331E4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022331E0: .4byte ov18_022331E4
	arm_func_end ov18_02233190

	arm_func_start ov18_022331E4
ov18_022331E4: @ 0x022331E4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _0223321C @ =ov18_02233220
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223321C: .4byte ov18_02233220
	arm_func_end ov18_022331E4

	arm_func_start ov18_02233220
ov18_02233220: @ 0x02233220
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	ldr r1, _0223325C @ =ov18_02233540
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02233260 @ =0x0225330C
	str r0, [r1, #4]
	ldr r0, _02233264 @ =ov18_02233268
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223325C: .4byte ov18_02233540
_02233260: .4byte 0x0225330C
_02233264: .4byte ov18_02233268
	arm_func_end ov18_02233220

	arm_func_start ov18_02233268
ov18_02233268: @ 0x02233268
	push {r3, lr}
	bl ov18_0223333C
	bl ov18_02233374
	bl ov18_02233378
	bl ov18_0222F190
	cmp r0, #0
	popeq {r3, pc}
	cmp r0, #1
	beq _02233298
	cmp r0, #2
	beq _022332CC
	pop {r3, pc}
_02233298:
	ldr r2, _02233330 @ =0x0225330C
	ldr r1, [r2, #4]
	cmp r1, #0
	popeq {r3, pc}
	mov r0, #1
	strb r0, [r2]
	bl ov18_022463CC
	ldr r1, _02233330 @ =0x0225330C
	mov r2, #0
	ldr r0, _02233334 @ =ov18_022335A8
	str r2, [r1, #4]
	bl ov18_0222F6C4
	pop {r3, pc}
_022332CC:
	ldr r0, _02233330 @ =0x0225330C
	ldr r0, [r0, #4]
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0223E9FC
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xc
	str ip, [sp]
	bl ov18_0223FC48
	mov r0, #9
	bl ov18_0223E994
	bl ov18_0222B0C0
	ldr r1, _02233330 @ =0x0225330C
	mov r0, #1
	ldr r1, [r1, #4]
	bl ov18_022463CC
	ldr r1, _02233330 @ =0x0225330C
	mov r2, #0
	ldr r0, _02233338 @ =ov18_0223355C
	str r2, [r1, #4]
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233330: .4byte 0x0225330C
_02233334: .4byte ov18_022335A8
_02233338: .4byte ov18_0223355C
	arm_func_end ov18_02233268

	arm_func_start ov18_0223333C
ov18_0223333C: @ 0x0223333C
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223335C
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
_0223335C:
	bl ov18_02233068
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_0223333C

	arm_func_start ov18_02233374
ov18_02233374: @ 0x02233374
	bx lr
	arm_func_end ov18_02233374

	arm_func_start ov18_02233378
ov18_02233378: @ 0x02233378
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022333BC @ =0x0225330C
	ldr r1, [r0, #4]
	cmp r1, #0
	popeq {r3, pc}
	mov r0, #1
	bl ov18_022463AC
	ldr r0, _022333BC @ =0x0225330C
	mov r1, #0
	str r1, [r0, #4]
	bl ov18_0222B0C0
	ldr r0, _022333C0 @ =ov18_022335F4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022333BC: .4byte 0x0225330C
_022333C0: .4byte ov18_022335F4
	arm_func_end ov18_02233378

	arm_func_start ov18_022333C4
ov18_022333C4: @ 0x022333C4
	push {r3, lr}
	bl ov18_0222B0C0
	ldr r0, _022333F8 @ =0x0225330C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _022333E4
	mov r0, #1
	bl ov18_022463CC
_022333E4:
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022333FC @ =ov18_02233400
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022333F8: .4byte 0x0225330C
_022333FC: .4byte ov18_02233400
	arm_func_end ov18_022333C4

	arm_func_start ov18_02233400
ov18_02233400: @ 0x02233400
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223345C @ =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223343C
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223343C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02233460 @ =ov18_02233464
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223345C: .4byte 0x0225330C
_02233460: .4byte ov18_02233464
	arm_func_end ov18_02233400

	arm_func_start ov18_02233464
ov18_02233464: @ 0x02233464
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02233534 @ =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02233498
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_02233498:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _02233534 @ =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bl ov18_0222F140
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02233534 @ =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022334E8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022334E8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02233534 @ =0x0225330C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223351C
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02233538 @ =ov18_0223B3F4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223351C:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223353C @ =ov18_02233624
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233534: .4byte 0x0225330C
_02233538: .4byte ov18_0223B3F4
_0223353C: .4byte ov18_02233624
	arm_func_end ov18_02233464

	arm_func_start ov18_02233540
ov18_02233540: @ 0x02233540
	push {r3, lr}
	bl ov18_022451C0
	mov r0, #0
	bl ov18_02246254
	bl ov18_0223333C
	bl ov18_02233378
	pop {r3, pc}
	arm_func_end ov18_02233540

	arm_func_start ov18_0223355C
ov18_0223355C: @ 0x0223355C
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02233584 @ =ov18_02233588
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233584: .4byte ov18_02233588
	arm_func_end ov18_0223355C

	arm_func_start ov18_02233588
ov18_02233588: @ 0x02233588
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022335A4 @ =ov18_022333C4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022335A4: .4byte ov18_022333C4
	arm_func_end ov18_02233588

	arm_func_start ov18_022335A8
ov18_022335A8: @ 0x022335A8
	push {r3, lr}
	bl ov18_0223333C
	bl ov18_02233374
	bl ov18_02233378
	ldr r1, _022335E8 @ =0x0225330C
	ldr r0, _022335EC @ =0x00000438
	ldrh r2, [r1, #2]
	add r2, r2, #1
	strh r2, [r1, #2]
	ldrh r1, [r1, #2]
	cmp r1, r0
	poplo {r3, pc}
	bl ov18_0223E9FC
	ldr r0, _022335F0 @ =ov18_022333C4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022335E8: .4byte 0x0225330C
_022335EC: .4byte 0x00000438
_022335F0: .4byte ov18_022333C4
	arm_func_end ov18_022335A8

	arm_func_start ov18_022335F4
ov18_022335F4: @ 0x022335F4
	push {r3, lr}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r1, _0223361C @ =0x0225330C
	mov r2, #0
	ldr r0, _02233620 @ =ov18_022333C4
	strb r2, [r1]
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223361C: .4byte 0x0225330C
_02233620: .4byte ov18_022333C4
	arm_func_end ov18_022335F4

	arm_func_start ov18_02233624
ov18_02233624: @ 0x02233624
	push {r3, lr}
	ldr r0, _02233658 @ =0x02253314
	mov r1, #0
	strb r1, [r0]
	bl ov18_02233660
	bl ov18_0222BC1C
	mov r0, #0x23
	bl ov18_0222B7C8
	mov r0, #0x10
	bl ov18_0223E994
	ldr r0, _0223365C @ =ov18_022336CC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233658: .4byte 0x02253314
_0223365C: .4byte ov18_022336CC
	arm_func_end ov18_02233624

	arm_func_start ov18_02233660
ov18_02233660: @ 0x02233660
	push {r3, lr}
	ldr r0, _022336BC @ =0x0224A124
	ldr r1, _022336C0 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r2, _022336C4 @ =0x04001008
	ldr r1, _022336C8 @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022336BC: .4byte 0x0224A124
_022336C0: .4byte FUN_020C04EC
_022336C4: .4byte 0x04001008
_022336C8: .4byte 0x0400000A
	arm_func_end ov18_02233660

	arm_func_start ov18_022336CC
ov18_022336CC: @ 0x022336CC
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022336FC @ =ov18_02233700
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022336FC: .4byte ov18_02233700
	arm_func_end ov18_022336CC

	arm_func_start ov18_02233700
ov18_02233700: @ 0x02233700
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02233720 @ =ov18_02233724
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233720: .4byte ov18_02233724
	arm_func_end ov18_02233700

	arm_func_start ov18_02233724
ov18_02233724: @ 0x02233724
	push {r3, lr}
	bl ov18_022337E4
	bl ov18_02233734
	pop {r3, pc}
	arm_func_end ov18_02233724

	arm_func_start ov18_02233734
ov18_02233734: @ 0x02233734
	bx lr
	arm_func_end ov18_02233734

	arm_func_start ov18_02233738
ov18_02233738: @ 0x02233738
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02233770 @ =ov18_02233774
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233770: .4byte ov18_02233774
	arm_func_end ov18_02233738

	arm_func_start ov18_02233774
ov18_02233774: @ 0x02233774
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _022337E0 @ =ov18_0223C21C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022337E0: .4byte ov18_0223C21C
	arm_func_end ov18_02233774

	arm_func_start ov18_022337E4
ov18_022337E4: @ 0x022337E4
	push {r3, lr}
	ldr r0, _02233810 @ =0x02253314
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	poplo {r3, pc}
	ldr r0, _02233814 @ =ov18_02233738
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233810: .4byte 0x02253314
_02233814: .4byte ov18_02233738
	arm_func_end ov18_022337E4

	arm_func_start ov18_02233818
ov18_02233818: @ 0x02233818
	push {r3, lr}
	mov r0, #0x5c
	mov r1, #4
	bl ov18_02245068
	ldr r2, _022338E4 @ =0x02253318
	mov r1, #0
	str r0, [r2, #4]
	add r0, sp, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _02233858
	ldr r0, _022338E4 @ =0x02253318
	mov r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
_02233858:
	ldr r0, _022338E4 @ =0x02253318
	ldr r0, [r0, #4]
	bl ov18_0223DAE0
	ldr r1, _022338E4 @ =0x02253318
	ldr r1, [r1, #4]
	strb r0, [r1, #0x51]
	bl ov18_022338F0
	bl ov18_0222BC1C
	mov r0, #0x34
	sub r1, r0, #0x35
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	bl ov18_02233A44
	bl ov18_02233AEC
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r2, _022338E4 @ =0x02253318
	ldr r1, _022338E8 @ =ov18_02234A44
	ldr r3, [r2, #4]
	mov r2, #0
	str r0, [r3, #0xc]
	mov r0, #1
	mov r3, #0x6e
	bl ov18_02246304
	ldr r1, _022338E4 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x3c]
	bl ov18_02234588
	bl ov18_02234AA0
	ldr r0, _022338EC @ =ov18_02233C60
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022338E4: .4byte 0x02253318
_022338E8: .4byte ov18_02234A44
_022338EC: .4byte ov18_02233C60
	arm_func_end ov18_02233818

	arm_func_start ov18_022338F0
ov18_022338F0: @ 0x022338F0
	push {r3, lr}
	sub sp, sp, #0x30
	ldr r3, _02233A28 @ =0x022491BF
	add lr, sp, #0x16
	mov r2, #0xc
_02233904:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [lr]
	strb r0, [lr, #1]
	add lr, lr, #2
	subs r2, r2, #1
	bne _02233904
	ldrb r0, [r3]
	ldr ip, _02233A2C @ =0x022491A9
	add r3, sp, #0
	strb r0, [lr]
	mov r2, #0xb
_02233938:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02233938
	ldr r0, _02233A30 @ =0x0224A138
	ldr r1, _02233A34 @ =0x020C05AC
	bl ov18_0222B700
	add r0, sp, #0x16
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02233A38 @ =0x02253318
	ldr r2, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0, #4]
	bl ov18_0223D004
	bl ov18_0223D090
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02233A38 @ =0x02253318
	ldr r3, _02233A3C @ =0x04001008
	ldr r1, [r1, #4]
	sub r2, r3, #0x1000
	str r0, [r1, #8]
	ldrh r0, [r3]
	ldr r1, _02233A40 @ =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	add sp, sp, #0x30
	pop {r3, pc}
	.align 2, 0
_02233A28: .4byte 0x022491BF
_02233A2C: .4byte 0x022491A9
_02233A30: .4byte 0x0224A138
_02233A34: .4byte 0x020C05AC
_02233A38: .4byte 0x02253318
_02233A3C: .4byte 0x04001008
_02233A40: .4byte 0x0400000A
	arm_func_end ov18_022338F0

	arm_func_start ov18_02233A44
ov18_02233A44: @ 0x02233A44
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _02233AE8 @ =0x02253318
	mov r1, #0x1c
	ldr ip, [r2, #4]
	mov r0, #0
	ldrb r3, [ip, #0x51]
	sub r3, r3, #4
	mul r1, r3, r1
	strh r1, [ip, #0x40]
	ldr r2, [r2, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	movls r4, r0
	strbls r0, [r2, #0x53]
	bls _02233AA4
	cmp r1, #8
	movhi r1, #0x37
	strbhi r1, [r2, #0x53]
	movhi r4, #2
	bhi _02233AA4
	mov r1, #0x1f
	strb r1, [r2, #0x53]
	mov r4, #1
_02233AA4:
	cmp r4, #0
	beq _02233AC8
	ldr r0, _02233AE8 @ =0x02253318
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FUN_020BD104
_02233AC8:
	str r0, [sp]
	mov r0, r4
	mov r1, #0x55
	mov r2, #0xec
	mov r3, #0x3f
	bl ov18_0223D218
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02233AE8: .4byte 0x02253318
	arm_func_end ov18_02233A44

	arm_func_start ov18_02233AEC
ov18_02233AEC: @ 0x02233AEC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02233C50 @ =0x02253318
	mov sb, #0
	ldr r0, [r0, #4]
	ldrb r8, [r0, #0x51]
	cmp r8, #5
	movgt r8, #5
	cmp r8, #0
	ble _02233B60
	ldr sl, _02233C50 @ =0x02253318
	mov r7, sb
	mov r6, #0x2e
	mov r5, sb
	mov r4, #0x18
_02233B24:
	mov r0, r7
	mov r1, r6
	bl ov18_02243F60
	ldr r2, [sl, #4]
	mov r1, r4
	add r2, r2, sb, lsl #2
	str r0, [r2, #0x10]
	mov r0, r5
	bl ov18_02243F60
	ldr r1, [sl, #4]
	add r1, r1, sb, lsl #2
	add sb, sb, #1
	str r0, [r1, #0x24]
	cmp sb, r8
	blt _02233B24
_02233B60:
	mov r6, #0
	ldr r5, _02233C54 @ =0x02249228
	ldr sb, _02233C50 @ =0x02253318
	ldr r7, _02233C58 @ =0x000003FF
	mov r4, r6
_02233B74:
	ldr r0, [sb, #4]
	ldrb r1, [r5], #1
	ldr r2, [r0, #0x10]
	mov r0, r4
	bl ov18_02243ECC
	ldr r0, [sb, #4]
	ldr r1, [r0, #0x10]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #3
	and r1, r1, r7
	strh r1, [r0, #0x42]
	blo _02233B74
	mov r6, #0
	ldr r5, _02233C5C @ =0x0224922C
	ldr sb, _02233C50 @ =0x02253318
	ldr r7, _02233C58 @ =0x000003FF
	mov r4, r6
_02233BC0:
	ldr r0, [sb, #4]
	ldrb r1, [r5], #1
	ldr r2, [r0, #0x24]
	mov r0, r4
	bl ov18_02243ECC
	ldr r0, [sb, #4]
	ldr r1, [r0, #0x24]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #4
	and r1, r1, r7
	strh r1, [r0, #0x48]
	blo _02233BC0
	cmp r8, #0
	mov r0, #0
	pople {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02233C50 @ =0x02253318
_02233C08:
	ldr r2, [r1, #4]
	add r2, r2, r0, lsl #2
	ldr r3, [r2, #0x10]
	ldrh r2, [r3, #4]
	bic r2, r2, #0xc00
	orr r2, r2, #0xc00
	strh r2, [r3, #4]
	ldr r2, [r1, #4]
	add r2, r2, r0, lsl #2
	ldr r3, [r2, #0x24]
	add r0, r0, #1
	ldrh r2, [r3, #4]
	cmp r0, r8
	bic r2, r2, #0xc00
	orr r2, r2, #0xc00
	strh r2, [r3, #4]
	blt _02233C08
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02233C50: .4byte 0x02253318
_02233C54: .4byte 0x02249228
_02233C58: .4byte 0x000003FF
_02233C5C: .4byte 0x0224922C
	arm_func_end ov18_02233AEC

	arm_func_start ov18_02233C60
ov18_02233C60: @ 0x02233C60
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x1d
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244C84
	ldr r0, _02233CB0 @ =ov18_02233CB4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233CB0: .4byte ov18_02233CB4
	arm_func_end ov18_02233C60

	arm_func_start ov18_02233CB4
ov18_02233CB4: @ 0x02233CB4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _02233CEC @ =ov18_02233CF0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233CEC: .4byte ov18_02233CF0
	arm_func_end ov18_02233CB4

	arm_func_start ov18_02233CF0
ov18_02233CF0: @ 0x02233CF0
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02233D14 @ =ov18_02233D18
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02233D14: .4byte ov18_02233D18
	arm_func_end ov18_02233CF0

	arm_func_start ov18_02233D18
ov18_02233D18: @ 0x02233D18
	push {r3, lr}
	bl ov18_02233D2C
	bl ov18_02233F80
	bl ov18_022341F0
	pop {r3, pc}
	arm_func_end ov18_02233D18

	arm_func_start ov18_02233D2C
ov18_02233D2C: @ 0x02233D2C
	push {r3, r4, r5, lr}
	ldr r0, _02233F74 @ =0x02253318
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldrbeq r0, [r1, #0x57]
	cmpeq r0, #0
	popne {r3, r4, r5, pc}
	ldr r0, _02233F78 @ =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	beq _02233DC4
	ldr r0, _02233F74 @ =0x02253318
	mvn r1, #0
	ldr r0, [r0, #4]
	ldr r5, _02233F7C @ =0x022491D8
	strb r1, [r0, #0x50]
	mov r4, #0
_02233D74:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _02233DB4
	cmp r4, #4
	bge _02233D9C
	ldr r0, _02233F74 @ =0x02253318
	ldr r0, [r0, #4]
	strb r4, [r0, #0x50]
	b _02233DC4
_02233D9C:
	mov r0, #1
	bl ov18_0222B048
	ldr r0, _02233F74 @ =0x02253318
	strb r4, [r0]
	bl ov18_02234AA0
	pop {r3, r4, r5, pc}
_02233DB4:
	add r4, r4, #1
	cmp r4, #5
	add r5, r5, #8
	blo _02233D74
_02233DC4:
	ldr r0, _02233F78 @ =0x02249734
	bl ov18_022456C8
	cmp r0, #0
	beq _02233E40
	ldr r4, _02233F7C @ =0x022491D8
	mov r5, #0
_02233DDC:
	mov r0, r4
	bl ov18_022456C8
	cmp r0, #0
	beq _02233E30
	ldr r0, _02233F74 @ =0x02253318
	ldr r1, [r0, #4]
	ldrsb r0, [r1, #0x50]
	cmp r0, r5
	bne _02233E40
	ldrb r0, [r1, #0x51]
	cmp r5, r0
	blt _02233E18
	mov r0, #9
	bl ov18_0223E994
	b _02233E40
_02233E18:
	mov r0, #1
	bl ov18_0222B048
	ldr r0, _02233F74 @ =0x02253318
	strb r5, [r0]
	bl ov18_02234AA0
	pop {r3, r4, r5, pc}
_02233E30:
	add r5, r5, #1
	cmp r5, #4
	add r4, r4, #8
	blt _02233DDC
_02233E40:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _02233E60
	mov r0, #1
	bl ov18_0222B048
	bl ov18_0223D378
	pop {r3, r4, r5, pc}
_02233E60:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02233E7C
	mov r0, #0
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_02233E7C:
	mov r0, #0x200
	bl ov18_022454B0
	cmp r0, #0
	beq _02233E94
	bl ov18_02234CAC
	pop {r3, r4, r5, pc}
_02233E94:
	mov r0, #0x200
	bl ov18_022454F0
	cmp r0, #0
	beq _02233EB8
	ldr r0, _02233F74 @ =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r3, r4, r5, pc}
_02233EB8:
	mov r0, #0x100
	bl ov18_022454B0
	cmp r0, #0
	beq _02233ED0
	bl ov18_02234C38
	pop {r3, r4, r5, pc}
_02233ED0:
	mov r0, #0x100
	bl ov18_022454F0
	cmp r0, #0
	beq _02233EF4
	ldr r0, _02233F74 @ =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r3, r4, r5, pc}
_02233EF4:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _02233F10
	mov r0, #1
	bl ov18_02234AEC
	pop {r3, r4, r5, pc}
_02233F10:
	mov r0, #0x40
	bl ov18_022454F0
	cmp r0, #0
	beq _02233F34
	ldr r0, _02233F74 @ =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r3, r4, r5, pc}
_02233F34:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _02233F50
	mov r0, #3
	bl ov18_02234AEC
	pop {r3, r4, r5, pc}
_02233F50:
	mov r0, #0x80
	bl ov18_022454F0
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _02233F74 @ =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02233F74: .4byte 0x02253318
_02233F78: .4byte 0x02249734
_02233F7C: .4byte 0x022491D8
	arm_func_end ov18_02233D2C

	arm_func_start ov18_02233F80
ov18_02233F80: @ 0x02233F80
	push {r3, lr}
	ldr r0, _022341E4 @ =0x02253318
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	popne {r3, pc}
	ldrb r0, [r1, #0x55]
	cmp r0, #0
	subne r0, r0, #1
	strbne r0, [r1, #0x55]
	bl ov18_0223D340
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_02233FB8: @ jump table
	pop {r3, pc} @ case 0
	b _02233FD8 @ case 1
	b _02233FF0 @ case 2
	b _02234044 @ case 3
	b _022340F0 @ case 4
	b _022341D0 @ case 5
	b _02234158 @ case 6
	b _022341D0 @ case 7
_02233FD8:
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x57]
	bl ov18_0222B0C0
	pop {r3, pc}
_02233FF0:
	ldr r0, _022341E4 @ =0x02253318
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x55]
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0223D32C
	ldr r1, _022341E4 @ =0x02253318
	ldr r1, [r1, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FUN_020BD104
	ldr r1, _022341E4 @ =0x02253318
	strh r0, [r1, #2]
	bl ov18_02234588
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #4
	ldr r0, [r0, #4]
	strb r1, [r0, #0x55]
	pop {r3, pc}
_02234044:
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x57]
	bl ov18_0222B0A8
	bl ov18_0223D32C
	ldr r1, _022341E4 @ =0x02253318
	ldr r1, [r1, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FUN_020BD104
	ldr r1, _022341E4 @ =0x02253318
	strh r0, [r1, #2]
	mov r0, #0x13
	bl ov18_0223E994
	bl ov18_02234588
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FUN_020BD140
	cmp r0, #0
	bne _022340A8
	bl ov18_02234AA0
	pop {r3, pc}
_022340A8:
	cmp r0, #0xe
	mov r0, #0
	mov r3, #0x78
	bge _022340D4
	ldr r1, _022341E8 @ =ov18_022348F0
	mov r2, r0
	bl ov18_02246304
	ldr r1, _022341E4 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r3, pc}
_022340D4:
	ldr r1, _022341EC @ =ov18_022349AC
	mov r2, r0
	bl ov18_02246304
	ldr r1, _022341E4 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r3, pc}
_022340F0:
	ldr r0, _022341E4 @ =0x02253318
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _0223412C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x58]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x58]
	pop {r3, pc}
_0223412C:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _022341E8 @ =ov18_022348F0
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _022341E4 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r3, pc}
_02234158:
	ldr r0, _022341E4 @ =0x02253318
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	bls _0223417C
	ldrh r1, [r0, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	bne _022341A4
_0223417C:
	ldrb r0, [r2, #0x58]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x58]
	pop {r3, pc}
_022341A4:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _022341EC @ =ov18_022349AC
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _022341E4 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r3, pc}
_022341D0:
	ldr r0, _022341E4 @ =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x58]
	pop {r3, pc}
	.align 2, 0
_022341E4: .4byte 0x02253318
_022341E8: .4byte ov18_022348F0
_022341EC: .4byte ov18_022349AC
	arm_func_end ov18_02233F80

	arm_func_start ov18_022341F0
ov18_022341F0: @ 0x022341F0
	push {r3, lr}
	ldr r0, _022342F0 @ =0x02253318
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldrbeq r0, [r1, #0x57]
	cmpeq r0, #0
	popne {r3, pc}
	bl ov18_0222B034
	cmp r0, #0
	beq _02234228
	cmp r0, #1
	beq _02234234
	pop {r3, pc}
_02234228:
	mov r0, #7
	bl ov18_0223E994
	b _022342E4
_02234234:
	ldr r0, _022342F0 @ =0x02253318
	ldrb r1, [r0]
	cmp r1, #4
	bne _02234260
	ldr r1, [r0, #4]
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #0x54]
	bl ov18_0223E994
	bl ov18_02234D30
	b _022342E4
_02234260:
	ldrh r0, [r0, #2]
	mov r1, #0x1c
	bl FUN_020BD104
	ldr r2, _022342F0 @ =0x02253318
	mov r1, #0x2a
	ldrb lr, [r2]
	ldr ip, [r2, #4]
	ldr r3, [ip]
	add lr, lr, r0
	mla r0, lr, r1, r3
	ldrb r0, [r0, #0x28]
	cmp r0, #2
	bne _022342CC
	mov r0, #9
	bl ov18_0223E994
	bl ov18_0223D378
	bl ov18_0222B0C0
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	mov r2, r1
	mov r0, #0xe
	sub r3, r1, #2
	bl ov18_0223FC48
	ldr r0, _022342F4 @ =ov18_02234D60
	bl ov18_0222F6C4
	pop {r3, pc}
_022342CC:
	mov r0, #1
	strb r0, [ip, #0x54]
	ldr r1, [r2, #4]
	mov r0, #6
	strb lr, [r1, #0x52]
	bl ov18_0223E994
_022342E4:
	ldr r0, _022342F8 @ =ov18_022342FC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022342F0: .4byte 0x02253318
_022342F4: .4byte ov18_02234D60
_022342F8: .4byte ov18_022342FC
	arm_func_end ov18_022341F0

	arm_func_start ov18_022342FC
ov18_022342FC: @ 0x022342FC
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02234318 @ =ov18_0223431C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02234318: .4byte ov18_0223431C
	arm_func_end ov18_022342FC

	arm_func_start ov18_0223431C
ov18_0223431C: @ 0x0223431C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02234384 @ =0x02253318
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _0223434C
	bl ov18_0222B004
	b _02234350
_0223434C:
	bl ov18_0222B0C0
_02234350:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x1d
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02234388 @ =ov18_0223438C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02234384: .4byte 0x02253318
_02234388: .4byte ov18_0223438C
	arm_func_end ov18_0223431C

	arm_func_start ov18_0223438C
ov18_0223438C: @ 0x0223438C
	push {r3, r4, r5, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, r4, r5, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r1, _0223456C @ =0x02253318
	mov r0, #1
	ldr r1, [r1, #4]
	ldr r1, [r1, #0x3c]
	bl ov18_022463CC
	ldr r4, _0223456C @ =0x02253318
	mov r5, #0
_022343D8:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022343F0
	bl ov18_02245B74
_022343F0:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02234408
	bl ov18_02245B74
_02234408:
	add r5, r5, #1
	cmp r5, #5
	blt _022343D8
	ldr r0, _0223456C @ =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov18_0224487C
	bl ov18_0223D2F0
	bl ov18_0222BAF4
	bl ov18_0222B668
	bl ov18_0223D064
	ldr r0, _0223456C @ =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl ov18_0224382C
	ldr r0, _0223456C @ =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244CD8
	mov r2, #0
	ldr r1, _02234570 @ =0x04000010
	ldr r0, _0223456C @ =0x02253318
	str r2, [r1]
	str r2, [r1, #8]
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x54]
	cmp r1, #0
	bne _022344B8
	bl ov18_0223D910
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	bl ov18_0223E1F0
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _02234574 @ =ov18_0223B3F4
	bl ov18_0222F6C4
	b _02234560
_022344B8:
	ldrb r0, [r0]
	cmp r0, #4
	bne _022344E0
	bl ov18_0223D910
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02234578 @ =ov18_0223A1D0
	bl ov18_0222F6C4
	b _02234560
_022344E0:
	ldrb r1, [r2, #0x52]
	ldr r2, [r2]
	mov r0, #0x2a
	mla r0, r1, r0, r2
	bl ov18_0223DE08
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r1, _0223456C @ =0x02253318
	mov r0, #0x2a
	ldr r2, [r1, #4]
	ldrb r1, [r2, #0x52]
	ldr r2, [r2]
	mla r0, r1, r0, r2
	ldrb r0, [r0, #0x28]
	mov r1, #1
	cmp r0, #0
	mov r0, #0
	beq _02234548
	bl ov18_0222F6D4
	mov r0, #1
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _0223457C @ =ov18_02234DB4
	bl ov18_0222F6C4
	b _02234560
_02234548:
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _02234580 @ =ov18_0223C21C
	bl ov18_0222F6C4
_02234560:
	ldr r0, _02234584 @ =0x0225331C
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223456C: .4byte 0x02253318
_02234570: .4byte 0x04000010
_02234574: .4byte ov18_0223B3F4
_02234578: .4byte ov18_0223A1D0
_0223457C: .4byte ov18_02234DB4
_02234580: .4byte ov18_0223C21C
_02234584: .4byte 0x0225331C
	arm_func_end ov18_0223438C

	arm_func_start ov18_02234588
ov18_02234588: @ 0x02234588
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223462C @ =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FUN_020BD104
	ldr r1, _0223462C @ =0x02253318
	mov r7, r0
	ldr r0, [r1, #4]
	mov r1, #0
	ldrb r4, [r0, #0x51]
	ldr r0, [r0, #0xc]
	bl ov18_02244B5C
	cmp r4, #5
	movgt r4, #5
	mov r5, r7
	cmp r4, #0
	mov r6, #0
	ble _022345EC
_022345D0:
	mov r0, r5
	mov r1, r6
	bl ov18_02234630
	add r6, r6, #1
	cmp r6, r4
	add r5, r5, #1
	blt _022345D0
_022345EC:
	cmp r4, #0
	mov r5, #0
	ble _02234614
_022345F8:
	mov r0, r7
	mov r1, r5
	bl ov18_022347A8
	add r5, r5, #1
	cmp r5, r4
	add r7, r7, #1
	blt _022345F8
_02234614:
	ldr r0, _0223462C @ =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov18_02244C08
	bl ov18_02234834
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223462C: .4byte 0x02253318
	arm_func_end ov18_02234588

	arm_func_start ov18_02234630
ov18_02234630: @ 0x02234630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r7, r0
	mov r0, #0x2a
	ldr r2, _022347A4 @ =0x02253318
	mul r6, r7, r0
	ldr r0, [r2, #4]
	mov r4, r1
	ldr r0, [r0]
	mov r1, #0x20
	add r0, r0, r6
	bl ov18_02245E50
	ldr r2, _022347A4 @ =0x02253318
	mov r1, #0x1c
	mul r5, r4, r1
	ldr r2, [r2, #4]
	mov r4, r0
	ldrb r1, [r2, #0x51]
	cmp r7, r1
	addge sp, sp, #0x30
	popge {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0xc
	cmp r4, #0x10
	mov r1, #0
	mov r2, #0x22
	addle r5, r5, #6
	bl FUN_020C4CF4
	cmp r4, #0x10
	movle ip, r4
	movgt ip, #0x10
	cmp ip, #0
	mov r3, #0
	ble _022346E0
	ldr r0, _022347A4 @ =0x02253318
	ldr r7, [r0, #4]
	add r0, sp, #0xc
_022346C0:
	ldr r2, [r7]
	lsl r1, r3, #1
	add r2, r6, r2
	ldrb r2, [r3, r2]
	add r3, r3, #1
	cmp r3, ip
	strh r2, [r0, r1]
	blt _022346C0
_022346E0:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _022347A4 @ =0x02253318
	mov r2, r5
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl ov18_022449F0
	cmp r4, #0x10
	addle sp, sp, #0x30
	pople {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl FUN_020C4CF4
	sub r3, r4, #0x10
	cmp r3, #0
	mov r7, #0
	ble _0223476C
	ldr r0, _022347A4 @ =0x02253318
	ldr r4, [r0, #4]
	add r0, sp, #0xc
_02234748:
	ldr r2, [r4]
	lsl r1, r7, #1
	add r2, r6, r2
	add r2, r7, r2
	ldrb r2, [r2, #0x10]
	add r7, r7, #1
	cmp r7, r3
	strh r2, [r0, r1]
	blt _02234748
_0223476C:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _022347A4 @ =0x02253318
	add r2, r5, #0xc
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl ov18_022449F0
	add sp, sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022347A4: .4byte 0x02253318
	arm_func_end ov18_02234630

	arm_func_start ov18_022347A8
ov18_022347A8: @ 0x022347A8
	push {r4, lr}
	ldr r3, _02234830 @ =0x02253318
	ldr lr, [r3, #4]
	ldrb r2, [lr, #0x51]
	cmp r0, r2
	popge {r4, pc}
	mov r2, #0x2a
	mul r2, r0, r2
	ldr r0, [lr]
	add r4, lr, r1, lsl #2
	add r0, r0, r2
	ldrb ip, [r0, #0x28]
	ldr r4, [r4, #0x10]
	mov r0, #0x400
	add ip, lr, ip, lsl #1
	ldrh lr, [r4, #4]
	rsb r0, r0, #0
	ldrh ip, [ip, #0x42]
	and lr, lr, r0
	orr ip, lr, ip
	strh ip, [r4, #4]
	ldr lr, [r3, #4]
	ldr r3, [lr]
	add ip, lr, r1, lsl #2
	add r1, r3, r2
	ldrh r1, [r1, #0x26]
	ldr r3, [ip, #0x24]
	add r1, lr, r1, lsl #1
	ldrh r2, [r3, #4]
	ldrh r1, [r1, #0x48]
	and r0, r2, r0
	orr r0, r0, r1
	strh r0, [r3, #4]
	pop {r4, pc}
	.align 2, 0
_02234830: .4byte 0x02253318
	arm_func_end ov18_022347A8

	arm_func_start ov18_02234834
ov18_02234834: @ 0x02234834
	push {r4, r5, r6, lr}
	ldr r0, _022348E8 @ =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FUN_020BD140
	ldr r1, _022348E8 @ =0x02253318
	rsb r0, r0, #0x36
	ldr r1, [r1, #4]
	mov r2, #0
	ldrb r1, [r1, #0x51]
	cmp r1, #5
	movgt r1, #5
	cmp r1, #0
	ble _022348D4
	ldr ip, _022348E8 @ =0x02253318
	ldr r3, _022348EC @ =0xFE00FF00
_02234874:
	ldr r5, [ip, #4]
	sub r4, r0, #2
	add r5, r5, r2, lsl #2
	ldr r6, [r5, #0x10]
	add lr, r0, #1
	ldr r5, [r6]
	and r4, r4, #0xff
	and r5, r5, r3
	orr r4, r5, r4
	orr r4, r4, #0xb30000
	str r4, [r6]
	ldr r4, [ip, #4]
	and lr, lr, #0xff
	add r4, r4, r2, lsl #2
	ldr r5, [r4, #0x24]
	add r2, r2, #1
	ldr r4, [r5]
	cmp r2, r1
	and r4, r4, r3
	orr r4, r4, lr
	orr r4, r4, #0xd20000
	str r4, [r5]
	add r0, r0, #0x1c
	blt _02234874
_022348D4:
	ldr r0, _022348E8 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x56]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022348E8: .4byte 0x02253318
_022348EC: .4byte 0xFE00FF00
	arm_func_end ov18_02234834

	arm_func_start ov18_022348F0
ov18_022348F0: @ 0x022348F0
	push {r3, r4, r5, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _022349A8 @ =0x02253318
	ldrh r1, [r0, #2]
	cmp r1, #4
	subhi r1, r1, #4
	movls r1, #0
	strh r1, [r0, #2]
	ldr r0, _022349A8 @ =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FUN_020BD140
	mov r5, r0
	cmp r5, #0x18
	bne _0223493C
	bl ov18_02234588
	pop {r3, r4, r5, pc}
_0223493C:
	ble _02234958
	ldr r0, _022349A8 @ =0x02253318
	rsb r1, r5, #0x1c
	ldrh r2, [r0, #2]
	mov r5, #0
	add r1, r2, r1
	strh r1, [r0, #2]
_02234958:
	bl ov18_02234834
	cmp r5, #0
	popne {r3, r4, r5, pc}
	ldr r0, _022349A8 @ =0x02253318
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FUN_020BD104
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02234AA0
	ldr r0, _022349A8 @ =0x02253318
	mov r1, r4
	ldr r2, [r0, #4]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	pop {r3, r4, r5, pc}
	.align 2, 0
_022349A8: .4byte 0x02253318
	arm_func_end ov18_022348F0

	arm_func_start ov18_022349AC
ov18_022349AC: @ 0x022349AC
	push {r4, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _02234A40 @ =0x02253318
	mov r1, #0x1c
	ldrh r2, [r0, #2]
	add r2, r2, #4
	strh r2, [r0, #2]
	ldrh r0, [r0, #2]
	bl FUN_020BD140
	cmp r0, #4
	blt _022349E8
	bl ov18_02234834
	pop {r4, pc}
_022349E8:
	ldr r1, _02234A40 @ =0x02253318
	ldrh r2, [r1, #2]
	sub r0, r2, r0
	strh r0, [r1, #2]
	bl ov18_02234588
	ldr r0, _02234A40 @ =0x02253318
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FUN_020BD104
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02234AA0
	ldr r0, _02234A40 @ =0x02253318
	mov r1, r4
	ldr r2, [r0, #4]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_02234A40: .4byte 0x02253318
	arm_func_end ov18_022349AC

	arm_func_start ov18_02234A44
ov18_02234A44: @ 0x02234A44
	push {r3, lr}
	ldr r0, _02234A94 @ =0x02253318
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x56]
	cmp r1, #0
	popeq {r3, pc}
	ldrh r0, [r0, #2]
	mov r1, #0x1c
	bl FUN_020BD140
	ldr r1, _02234A98 @ =0x01FF0000
	sub r0, r0, #0x32
	ldr r2, _02234A9C @ =0x04000010
	and r1, r1, r0, lsl #16
	str r1, [r2]
	ldr r0, _02234A94 @ =0x02253318
	str r1, [r2, #8]
	ldr r0, [r0, #4]
	mov r1, #0
	strb r1, [r0, #0x56]
	pop {r3, pc}
	.align 2, 0
_02234A94: .4byte 0x02253318
_02234A98: .4byte 0x01FF0000
_02234A9C: .4byte 0x04000010
	arm_func_end ov18_02234A44

	arm_func_start ov18_02234AA0
ov18_02234AA0: @ 0x02234AA0
	push {r3, lr}
	ldr r0, _02234ADC @ =0x02253318
	ldr r1, _02234AE0 @ =0x02249200
	ldrb r2, [r0]
	ldr r3, _02234AE4 @ =0x02249202
	lsl ip, r2, #3
	cmp r2, #4
	ldr r2, _02234AE8 @ =0x02249204
	movlo r0, #2
	ldrh r1, [r1, ip]
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	movhs r0, #3
	bl ov18_0222B948
	pop {r3, pc}
	.align 2, 0
_02234ADC: .4byte 0x02253318
_02234AE0: .4byte 0x02249200
_02234AE4: .4byte 0x02249202
_02234AE8: .4byte 0x02249204
	arm_func_end ov18_02234AA0

	arm_func_start ov18_02234AEC
ov18_02234AEC: @ 0x02234AEC
	push {r4, lr}
	ldr r1, _02234C30 @ =0x02253318
	mov r4, #1
	ldrb r3, [r1]
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _02234BE8
_02234B08: @ jump table
	b _02234B1C @ case 0
	b _02234B80 @ case 1
	b _02234B80 @ case 2
	b _02234BAC @ case 3
	b _02234BC4 @ case 4
_02234B1C:
	cmp r0, #1
	bne _02234B64
	ldrh r0, [r1, #2]
	cmp r0, #0
	moveq r0, #4
	strbeq r0, [r1]
	beq _02234BE8
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02234C34 @ =ov18_022348F0
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02234C30 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r4, pc}
_02234B64:
	ldr r0, [r1, #4]
	ldrb r0, [r0, #0x51]
	cmp r0, #1
	addhi r0, r3, #1
	strbhi r0, [r1]
	movls r4, #0
	b _02234BE8
_02234B80:
	cmp r0, #1
	subeq r0, r3, #1
	strbeq r0, [r1]
	beq _02234BE8
	ldr r2, [r1, #4]
	add r0, r3, #1
	ldrb r2, [r2, #0x51]
	cmp r2, r0
	strbgt r0, [r1]
	movle r4, #0
	b _02234BE8
_02234BAC:
	cmp r0, #1
	subeq r0, r3, #1
	strbeq r0, [r1]
	beq _02234BE8
	bl ov18_02234CAC
	pop {r4, pc}
_02234BC4:
	cmp r0, #1
	moveq r4, #0
	beq _02234BE8
	mov r0, #0
	strh r0, [r1, #2]
	strb r0, [r1]
	bl ov18_02234588
	mov r0, #0
	bl ov18_0223D354
_02234BE8:
	cmp r4, #0
	bne _02234C20
	ldr r0, _02234C30 @ =0x02253318
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	popne {r4, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02234C30 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r4, pc}
_02234C20:
	mov r0, #8
	bl ov18_0223E994
	bl ov18_02234AA0
	pop {r4, pc}
	.align 2, 0
_02234C30: .4byte 0x02253318
_02234C34: .4byte ov18_022348F0
	arm_func_end ov18_02234AEC

	arm_func_start ov18_02234C38
ov18_02234C38: @ 0x02234C38
	push {r3, lr}
	ldr r0, _02234CA4 @ =0x02253318
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _02234C78
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02234CA4 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r3, pc}
_02234C78:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02234CA8 @ =ov18_022348F0
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02234CA4 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r3, pc}
	.align 2, 0
_02234CA4: .4byte 0x02253318
_02234CA8: .4byte ov18_022348F0
	arm_func_end ov18_02234C38

	arm_func_start ov18_02234CAC
ov18_02234CAC: @ 0x02234CAC
	push {r3, lr}
	ldr r0, _02234D28 @ =0x02253318
	ldr r2, [r0, #4]
	ldrh r1, [r0, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	beq _02234CD4
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bhi _02234CFC
_02234CD4:
	ldrb r0, [r2, #0x59]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02234D28 @ =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	pop {r3, pc}
_02234CFC:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02234D2C @ =ov18_022349AC
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02234D28 @ =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	pop {r3, pc}
	.align 2, 0
_02234D28: .4byte 0x02253318
_02234D2C: .4byte ov18_022349AC
	arm_func_end ov18_02234CAC

	arm_func_start ov18_02234D30
ov18_02234D30: @ 0x02234D30
	push {r3, lr}
	ldr r1, _02234D58 @ =0x022491A8
	ldr r0, _02234D5C @ =0x02253318
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	mov r2, r1
	strb r1, [sp]
	bl ov18_0223D154
	pop {r3, pc}
	.align 2, 0
_02234D58: .4byte 0x022491A8
_02234D5C: .4byte 0x02253318
	arm_func_end ov18_02234D30

	arm_func_start ov18_02234D60
ov18_02234D60: @ 0x02234D60
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02234D88 @ =ov18_02234D8C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02234D88: .4byte ov18_02234D8C
	arm_func_end ov18_02234D60

	arm_func_start ov18_02234D8C
ov18_02234D8C: @ 0x02234D8C
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B0A8
	bl ov18_0223D360
	ldr r0, _02234DB0 @ =ov18_02233D18
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02234DB0: .4byte ov18_02233D18
	arm_func_end ov18_02234D8C

	arm_func_start ov18_02234DB4
ov18_02234DB4: @ 0x02234DB4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _02234EDC @ =0x02249230
	mov r0, #0x2c
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	mov r1, #4
	strb r3, [sp]
	strb r2, [sp, #1]
	bl ov18_02245068
	ldr r2, _02234EE0 @ =0x02253320
	add r1, sp, #4
	str r0, [r2]
	add r0, sp, #8
	bl ov18_0222F724
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02234E2C
	ldr r0, _02234EE0 @ =0x02253320
	ldr r0, [r0]
	add r0, r0, #8
	bl ov18_0223E068
	ldr r0, _02234EE0 @ =0x02253320
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #8
	bl ov18_02245E50
	ldr r1, _02234EE0 @ =0x02253320
	ldr r1, [r1]
	strb r0, [r1, #0x29]
_02234E2C:
	bl ov18_02234EE8
	ldr r0, [sp, #8]
	add r0, r0, #9
	bl ov18_0222BBC0
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02234E5C
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl ov18_0222B594
	b _02234E74
_02234E5C:
	ldr r2, [sp, #8]
	add r0, sp, #0
	ldrb r0, [r0, r2]
	mvn r1, #0
	mov r2, #0
	bl ov18_0222B594
_02234E74:
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r2, _02234EE0 @ =0x02253320
	mov r1, #0x3e
	ldr r2, [r2]
	str r0, [r2]
	mov r0, #0
	bl ov18_02243F60
	ldr r1, _02234EE0 @ =0x02253320
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl ov18_02235584
	bl ov18_02235490
	ldr r0, _02234EE4 @ =ov18_02234FA4
	bl ov18_0222F6C4
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_02234EDC: .4byte 0x02249230
_02234EE0: .4byte 0x02253320
_02234EE4: .4byte ov18_02234FA4
	arm_func_end ov18_02234DB4

	arm_func_start ov18_02234EE8
ov18_02234EE8: @ 0x02234EE8
	push {r3, lr}
	ldr r0, _02234F7C @ =0x0224A150
	ldr r1, _02234F80 @ =0x020C0160
	bl ov18_0222B700
	ldr r0, _02234F84 @ =0x0224A164
	ldr r1, _02234F88 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02234F8C @ =0x0224A17C
	ldr r1, _02234F90 @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _02234F94 @ =0x0224A194
	ldr r1, _02234F98 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02234F9C @ =0x04001008
	ldr r1, _02234FA0 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02234F7C: .4byte 0x0224A150
_02234F80: .4byte 0x020C0160
_02234F84: .4byte 0x0224A164
_02234F88: .4byte 0x020C07EC
_02234F8C: .4byte 0x0224A17C
_02234F90: .4byte FUN_020C00B4
_02234F94: .4byte 0x0224A194
_02234F98: .4byte FUN_020C04EC
_02234F9C: .4byte 0x04001008
_02234FA0: .4byte 0x0400000A
	arm_func_end ov18_02234EE8

	arm_func_start ov18_02234FA4
ov18_02234FA4: @ 0x02234FA4
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02234FF4 @ =ov18_02234FF8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02234FF4: .4byte ov18_02234FF8
	arm_func_end ov18_02234FA4

	arm_func_start ov18_02234FF8
ov18_02234FF8: @ 0x02234FF8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222BE30
	mov r0, #0x14
	bl ov18_0223E994
	ldr r0, _0223506C @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	bne _02235044
	mov r0, #0
	bl ov18_0222C1DC
_02235044:
	ldr r0, _0223506C @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _02235060
	mov r0, #0
	bl ov18_0222C1F0
_02235060:
	ldr r0, _02235070 @ =ov18_02235074
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223506C: .4byte 0x02253320
_02235070: .4byte ov18_02235074
	arm_func_end ov18_02234FF8

	arm_func_start ov18_02235074
ov18_02235074: @ 0x02235074
	push {r3, lr}
	bl ov18_0222C1C8
	cmp r0, #0xff
	popeq {r3, pc}
	ldr r0, _02235090 @ =ov18_02235094
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235090: .4byte ov18_02235094
	arm_func_end ov18_02235074

	arm_func_start ov18_02235094
ov18_02235094: @ 0x02235094
	push {r3, lr}
	bl ov18_022350A4
	bl ov18_02235264
	pop {r3, pc}
	arm_func_end ov18_02235094

	arm_func_start ov18_022350A4
ov18_022350A4: @ 0x022350A4
	push {r4, lr}
	bl ov18_0222C1C8
	mov r4, r0
	cmp r4, #0x83
	bgt _022350E4
	cmp r4, #0x80
	blt _022350D8
	beq _022350F0
	cmp r4, #0x82
	beq _02235154
	cmp r4, #0x83
	beq _02235178
	b _022351E4
_022350D8:
	cmp r4, #0
	beq _02235248
	b _022351E4
_022350E4:
	ldr r0, _02235254 @ =0x0000E01D
	cmp r4, r0
	b _022351E4
_022350F0:
	ldr r0, _02235258 @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	beq _02235248
	mov r0, #3
	bl ov18_0223E994
	ldr r1, _02235258 @ =0x02253320
	mov r0, #0
	ldr r3, [r1]
	ldrb r2, [r3, #0x29]
	sub r2, r2, #1
	strb r2, [r3, #0x29]
	ldr r3, [r1]
	ldrb r2, [r3, #0x29]
	add r2, r3, r2
	strb r0, [r2, #8]
	ldr r1, [r1]
	ldrb r1, [r1, #0x29]
	cmp r1, #0
	bne _02235148
	bl ov18_0222C1DC
_02235148:
	mov r0, #1
	bl ov18_0222C1F0
	b _02235248
_02235154:
	mov r0, #7
	bl ov18_0223E994
	ldr r1, _02235258 @ =0x02253320
	ldr r0, _0223525C @ =ov18_02235268
	ldr r1, [r1]
	mov r2, #0
	strb r2, [r1, #0x2a]
	bl ov18_0222F6C4
	pop {r4, pc}
_02235178:
	bl ov18_022356F8
	cmp r0, #0
	beq _022351A0
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02235258 @ =0x02253320
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x2a]
	b _022351B8
_022351A0:
	ldr r0, _02235258 @ =0x02253320
	mov r2, #2
	ldr r1, [r0]
	mov r0, #9
	strb r2, [r1, #0x2a]
	bl ov18_0223E994
_022351B8:
	ldr r0, _02235258 @ =0x02253320
	ldr r1, _02235260 @ =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _0223525C @ =ov18_02235268
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	orr r1, r1, #0x200
	str r1, [r3]
	bl ov18_0222F6C4
	pop {r4, pc}
_022351E4:
	ldr r0, _02235258 @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	beq _02235248
	mov r0, #1
	bl ov18_0223E994
	ldr r1, _02235258 @ =0x02253320
	mov r0, #1
	ldr r3, [r1]
	ldrb r2, [r3, #0x29]
	add r2, r3, r2
	strb r4, [r2, #8]
	ldr r2, [r1]
	ldrb r1, [r2, #0x29]
	add r1, r1, #1
	strb r1, [r2, #0x29]
	bl ov18_0222C1DC
	ldr r0, _02235258 @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _02235248
	mov r0, #0
	bl ov18_0222C1F0
_02235248:
	bl ov18_02235490
	bl ov18_02235584
	pop {r4, pc}
	.align 2, 0
_02235254: .4byte 0x0000E01D
_02235258: .4byte 0x02253320
_0223525C: .4byte ov18_02235268
_02235260: .4byte 0xC1FFFCFF
	arm_func_end ov18_022350A4

	arm_func_start ov18_02235264
ov18_02235264: @ 0x02235264
	bx lr
	arm_func_end ov18_02235264

	arm_func_start ov18_02235268
ov18_02235268: @ 0x02235268
	push {r3, lr}
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02235280 @ =ov18_02235284
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235280: .4byte ov18_02235284
	arm_func_end ov18_02235268

	arm_func_start ov18_02235284
ov18_02235284: @ 0x02235284
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222C194
	mov r0, #0x15
	bl ov18_0223E994
	ldr r0, _022352B0 @ =ov18_022352B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022352B0: .4byte ov18_022352B4
	arm_func_end ov18_02235284

	arm_func_start ov18_022352B4
ov18_022352B4: @ 0x022352B4
	push {r3, lr}
	sub sp, sp, #0x10
	ldr r0, _02235378 @ =0x02249230
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	bl ov18_0222C204
	cmp r0, #0
	addne sp, sp, #0x10
	popne {r3, pc}
	ldr r0, _0223537C @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	bne _02235304
	ldr r0, _02235380 @ =ov18_0223538C
	bl ov18_0222F6C4
	add sp, sp, #0x10
	pop {r3, pc}
_02235304:
	cmp r0, #2
	bne _02235338
	mov r2, #1
	mov ip, #0
	sub r3, r2, #2
	mov r0, #6
	mov r1, #3
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _02235384 @ =ov18_02235884
	bl ov18_0222F6C4
	add sp, sp, #0x10
	pop {r3, pc}
_02235338:
	add r1, sp, #4
	mov r0, #0
	bl ov18_0222F724
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	ldr r1, [sp, #4]
	add r0, sp, #8
	ldr r0, [r0, r1, lsl #2]
	sub r3, r2, #2
	mov r1, #2
	bl ov18_0223FC48
	ldr r0, _02235388 @ =ov18_022355EC
	bl ov18_0222F6C4
	add sp, sp, #0x10
	pop {r3, pc}
	.align 2, 0
_02235378: .4byte 0x02249230
_0223537C: .4byte 0x02253320
_02235380: .4byte ov18_0223538C
_02235384: .4byte ov18_02235884
_02235388: .4byte ov18_022355EC
	arm_func_end ov18_022352B4

	arm_func_start ov18_0223538C
ov18_0223538C: @ 0x0223538C
	push {r3, lr}
	sub sp, sp, #8
	bl ov18_0222B668
	ldr r0, _02235474 @ =0x02253320
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov18_02245B74
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02235478 @ =0x0224A1A8
	ldr r1, _0223547C @ =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	add r0, sp, #4
	add r1, sp, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _02235410
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r1, [sp, #4]
	mov r0, #0
	bl ov18_0222F710
	ldr r0, _02235480 @ =ov18_02236BE0
	bl ov18_0222F6C4
	b _02235464
_02235410:
	ldr r0, _02235474 @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	mov r0, #0
	bne _02235448
	mov r1, #1
	bl ov18_0222F6D4
	mov r0, #1
	mov r1, #0
	bl ov18_0222F710
	ldr r0, _02235484 @ =ov18_02233818
	bl ov18_0222F6C4
	b _02235464
_02235448:
	mov r1, r0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _02235488 @ =ov18_0223C21C
	bl ov18_0222F6C4
_02235464:
	ldr r0, _0223548C @ =0x02253320
	bl ov18_0224508C
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_02235474: .4byte 0x02253320
_02235478: .4byte 0x0224A1A8
_0223547C: .4byte 0x020C0160
_02235480: .4byte ov18_02236BE0
_02235484: .4byte ov18_02233818
_02235488: .4byte ov18_0223C21C
_0223548C: .4byte 0x02253320
	arm_func_end ov18_0223538C

	arm_func_start ov18_02235490
ov18_02235490: @ 0x02235490
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r0, _02235578 @ =0x02253320
	add r5, sp, #0x14
	mov r1, #0
	strh r1, [r5, #2]
	mov r4, #0x20
	strh r1, [r5, #4]
	mov r3, #0xe
	strh r1, [r5, #6]
	mov r2, #0x10
	ldr r0, [r0]
	strh r1, [r5]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	ldr r0, [r0]
	bl ov18_02244B5C
	mov sl, #0
	ldr r7, _0223557C @ =0x0000E01D
	ldr r6, _02235580 @ =0x0224924C
	mov sb, sl
	strh sl, [sp, #0x12]
	mov r8, #0x31
	mov r5, #2
	mov r4, #0x480
	add fp, sp, #0x10
_022354FC:
	ldr r0, _02235578 @ =0x02253320
	cmp sl, #0x10
	ldr r0, [r0]
	moveq sb, #0
	strheq r8, [sp, #0x16]
	add r1, r0, sl
	ldrb r1, [r1, #8]
	ldrb r2, [r6, sb]
	cmp r1, #0x20
	strheq r7, [sp, #0x10]
	strhne r1, [sp, #0x10]
	ldrh r1, [sp, #0x1a]
	strh r2, [sp, #0x14]
	stm sp, {r1, r5}
	str r4, [sp, #8]
	str fp, [sp, #0xc]
	ldrh r1, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	ldrh r3, [sp, #0x18]
	ldr r0, [r0]
	bl ov18_02244A9C
	add sl, sl, #1
	cmp sl, #0x20
	add sb, sb, #1
	blt _022354FC
	ldr r0, _02235578 @ =0x02253320
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov18_02244C08
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02235578: .4byte 0x02253320
_0223557C: .4byte 0x0000E01D
_02235580: .4byte 0x0224924C
	arm_func_end ov18_02235490

	arm_func_start ov18_02235584
ov18_02235584: @ 0x02235584
	push {r3, lr}
	ldr r0, _022355DC @ =0x02253320
	ldr r1, [r0]
	ldrb r0, [r1, #0x29]
	ldr ip, [r1, #4]
	ldr r1, _022355E0 @ =0x02249248
	cmp r0, #0x20
	and r2, r0, #0xf
	asr lr, r0, #4
	movhs lr, #1
	ldr r0, _022355E4 @ =0x0224924C
	movhs r2, #0xf
	ldrb r3, [r0, r2]
	ldr r2, [ip]
	ldr r0, _022355E8 @ =0xFE00FF00
	ldrb r1, [r1, lr]
	and r0, r2, r0
	lsl r2, r3, #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [ip]
	pop {r3, pc}
	.align 2, 0
_022355DC: .4byte 0x02253320
_022355E0: .4byte 0x02249248
_022355E4: .4byte 0x0224924C
_022355E8: .4byte 0xFE00FF00
	arm_func_end ov18_02235584

	arm_func_start ov18_022355EC
ov18_022355EC: @ 0x022355EC
	push {r3, lr}
	bl ov18_0223FFB8
	ldr r1, _02235640 @ =0x02253320
	ldr r2, [r1]
	strb r0, [r2, #0x2a]
	ldr r0, [r1]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	beq _0223561C
	cmp r0, #1
	beq _02235628
	pop {r3, pc}
_0223561C:
	mov r0, #7
	bl ov18_0223E994
	b _02235630
_02235628:
	mov r0, #0xe
	bl ov18_0223E994
_02235630:
	bl ov18_0223FF74
	ldr r0, _02235644 @ =ov18_02235648
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235640: .4byte 0x02253320
_02235644: .4byte ov18_02235648
	arm_func_end ov18_022355EC

	arm_func_start ov18_02235648
ov18_02235648: @ 0x02235648
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _022356E4 @ =0x02249230
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r1, [sp, #4]
	str r0, [sp, #8]
	bl ov18_0223FFCC
	cmp r0, #0
	addne sp, sp, #0xc
	ldmne sp!, {pc}
	ldr r0, _022356E8 @ =0x02253320
	ldr r1, [r0]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	bne _022356AC
	ldr r3, [r1, #4]
	ldr r1, _022356EC @ =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _022356F0 @ =ov18_02234FF8
	and r1, r2, r1
	str r1, [r3]
	bl ov18_0222F6C4
	add sp, sp, #0xc
	ldm sp!, {pc}
_022356AC:
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F724
	ldr r0, _022356E8 @ =0x02253320
	ldr r2, [sp]
	add r1, sp, #4
	ldr r0, [r0]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, #8
	blx r1
	ldr r0, _022356F4 @ =ov18_0223538C
	bl ov18_0222F6C4
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_022356E4: .4byte 0x02249230
_022356E8: .4byte 0x02253320
_022356EC: .4byte 0xC1FFFCFF
_022356F0: .4byte ov18_02234FF8
_022356F4: .4byte ov18_0223538C
	arm_func_end ov18_02235648

	arm_func_start ov18_022356F8
ov18_022356F8: @ 0x022356F8
	push {r3, lr}
	sub sp, sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #1
	bne _02235728
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl ov18_0222B594
_02235728:
	add r0, sp, #4
	add r1, sp, #0
	bl ov18_0222F724
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02235760
	ldr r0, _02235880 @ =0x02253320
	add sp, sp, #8
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
_02235760:
	ldr r0, [sp]
	cmp r0, #1
	bne _02235788
	ldr r0, _02235880 @ =0x02253320
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	popeq {r3, pc}
_02235788:
	ldr r0, _02235880 @ =0x02253320
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #8
	bl ov18_02245E50
	cmp r0, #0x10
	bgt _022357DC
	cmp r0, #0xa
	blt _022357C0
	beq _02235804
	cmp r0, #0xd
	cmpne r0, #0x10
	beq _022357F8
	b _02235874
_022357C0:
	cmp r0, #0
	bgt _022357D0
	beq _022357F8
	b _02235874
_022357D0:
	cmp r0, #5
	beq _022357F8
	b _02235874
_022357DC:
	cmp r0, #0x1a
	bgt _022357EC
	beq _02235804
	b _02235874
_022357EC:
	cmp r0, #0x20
	beq _02235804
	b _02235874
_022357F8:
	add sp, sp, #8
	mov r0, #1
	pop {r3, pc}
_02235804:
	cmp r0, #0
	mov r2, #0
	ble _02235868
	ldr r1, _02235880 @ =0x02253320
	ldr r3, [r1]
_02235818:
	ldrb r1, [r3, #8]
	cmp r1, #0x30
	blo _0223582C
	cmp r1, #0x39
	bls _02235858
_0223582C:
	cmp r1, #0x41
	blo _0223583C
	cmp r1, #0x46
	bls _02235858
_0223583C:
	cmp r1, #0x61
	blo _0223584C
	cmp r1, #0x66
	bls _02235858
_0223584C:
	add sp, sp, #8
	mov r0, #0
	pop {r3, pc}
_02235858:
	add r2, r2, #1
	cmp r2, r0
	add r3, r3, #1
	blt _02235818
_02235868:
	add sp, sp, #8
	mov r0, #1
	pop {r3, pc}
_02235874:
	mov r0, #0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_02235880: .4byte 0x02253320
	arm_func_end ov18_022356F8

	arm_func_start ov18_02235884
ov18_02235884: @ 0x02235884
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _022358AC @ =ov18_022358B0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022358AC: .4byte ov18_022358B0
	arm_func_end ov18_02235884

	arm_func_start ov18_022358B0
ov18_022358B0: @ 0x022358B0
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022358E8 @ =0x02253320
	ldr r1, _022358EC @ =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _022358F0 @ =ov18_02234FF8
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022358E8: .4byte 0x02253320
_022358EC: .4byte 0xC1FFFCFF
_022358F0: .4byte ov18_02234FF8
	arm_func_end ov18_022358B0

	arm_func_start ov18_022358F4
ov18_022358F4: @ 0x022358F4
	push {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _02235A54 @ =0x02249274
	ldr ip, _02235A58 @ =0x0224925C
	ldm r4!, {r0, r1, r2, r3}
	add r5, sp, #0xc
	stm r5!, {r0, r1, r2, r3}
	ldr r4, [r4]
	ldrb lr, [ip, #0xa]
	str r4, [r5]
	ldrb r5, [ip, #8]
	ldrb r4, [ip, #9]
	ldrb r3, [ip, #0xb]
	ldrb r2, [ip, #0xc]
	mov r0, #0x18
	mov r1, #4
	strb r5, [sp, #4]
	strb r4, [sp, #5]
	strb lr, [sp, #6]
	strb r3, [sp, #7]
	strb r2, [sp, #8]
	bl ov18_02245068
	ldr r2, _02235A5C @ =0x02253324
	mov r1, #0
	str r0, [r2]
	add r0, sp, #0
	bl ov18_0222F724
	ldr r0, _02235A5C @ =0x02253324
	ldr r2, [sp]
	add r1, sp, #0xc
	ldr r0, [r0]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, #8
	blx r1
	ldr r0, _02235A5C @ =0x02253324
	ldr r1, _02235A60 @ =0x0224A1C0
	ldr r4, [r0]
	mov r2, #3
	add r0, r4, #8
	bl FUN_020D5190
	cmp r0, #0
	movne r0, #3
	strbne r0, [r4, #0x14]
	bne _022359C4
	add r0, r4, #8
	mov r1, #0
	mov r2, #0xc
	bl FUN_020C4CF4
	ldr r0, _02235A5C @ =0x02253324
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x14]
_022359C4:
	bl ov18_02235A68
	ldr r0, [sp]
	add r0, r0, #0xb
	bl ov18_0222BBC0
	ldr r2, [sp]
	add r0, sp, #4
	ldrb r0, [r0, r2]
	mvn r1, #0
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r2, _02235A5C @ =0x02253324
	mov r1, #0x3f
	ldr r2, [r2]
	str r0, [r2]
	mov r0, #0
	bl ov18_02243F60
	ldr r1, _02235A5C @ =0x02253324
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl ov18_0223621C
	bl ov18_02236158
	ldr r0, _02235A64 @ =ov18_02235B24
	bl ov18_0222F6C4
	add sp, sp, #0x20
	pop {r3, r4, r5, pc}
	.align 2, 0
_02235A54: .4byte 0x02249274
_02235A58: .4byte 0x0224925C
_02235A5C: .4byte 0x02253324
_02235A60: .4byte 0x0224A1C0
_02235A64: .4byte ov18_02235B24
	arm_func_end ov18_022358F4

	arm_func_start ov18_02235A68
ov18_02235A68: @ 0x02235A68
	push {r3, lr}
	ldr r0, _02235AFC @ =0x0224A1C4
	ldr r1, _02235B00 @ =0x020C0160
	bl ov18_0222B700
	ldr r0, _02235B04 @ =0x0224A1D8
	ldr r1, _02235B08 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02235B0C @ =0x0224A1F0
	ldr r1, _02235B10 @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _02235B14 @ =0x0224A208
	ldr r1, _02235B18 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02235B1C @ =0x04001008
	ldr r1, _02235B20 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02235AFC: .4byte 0x0224A1C4
_02235B00: .4byte 0x020C0160
_02235B04: .4byte 0x0224A1D8
_02235B08: .4byte 0x020C07EC
_02235B0C: .4byte 0x0224A1F0
_02235B10: .4byte FUN_020C00B4
_02235B14: .4byte 0x0224A208
_02235B18: .4byte FUN_020C04EC
_02235B1C: .4byte 0x04001008
_02235B20: .4byte 0x0400000A
	arm_func_end ov18_02235A68

	arm_func_start ov18_02235B24
ov18_02235B24: @ 0x02235B24
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02235B74 @ =ov18_02235B78
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235B74: .4byte ov18_02235B78
	arm_func_end ov18_02235B24

	arm_func_start ov18_02235B78
ov18_02235B78: @ 0x02235B78
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222DADC
	mov r0, #0x14
	bl ov18_0223E994
	ldr r0, _02235BFC @ =0x02253324
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _02235BD0
	mov r0, #0
	bl ov18_0222DE60
	mov r0, #0
	bl ov18_0222DE88
	b _02235BF0
_02235BD0:
	mov r0, #0x1a
	bl ov18_02235F44
	cmp r0, #0
	beq _02235BE8
	mov r0, #0
	bl ov18_0222DE74
_02235BE8:
	mov r0, #0
	bl ov18_0222DE88
_02235BF0:
	ldr r0, _02235C00 @ =ov18_02235C04
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235BFC: .4byte 0x02253324
_02235C00: .4byte ov18_02235C04
	arm_func_end ov18_02235B78

	arm_func_start ov18_02235C04
ov18_02235C04: @ 0x02235C04
	push {r3, lr}
	bl ov18_0222DE4C
	cmp r0, #0x1f
	popeq {r3, pc}
	ldr r0, _02235C20 @ =ov18_02235C24
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235C20: .4byte ov18_02235C24
	arm_func_end ov18_02235C04

	arm_func_start ov18_02235C24
ov18_02235C24: @ 0x02235C24
	push {r3, lr}
	bl ov18_02235C34
	bl ov18_02235FD8
	pop {r3, pc}
	arm_func_end ov18_02235C24

	arm_func_start ov18_02235C34
ov18_02235C34: @ 0x02235C34
	push {r3, r4, r5, lr}
	bl ov18_0222DE4C
	mov r4, r0
	cmp r4, #0
	bgt _02235C50
	popeq {r3, r4, r5, pc}
	b _02235E14
_02235C50:
	sub r0, r4, #0x10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02235E14
_02235C60: @ jump table
	b _02235C74 @ case 0
	b _02235D1C @ case 1
	b _02235D70 @ case 2
	b _02235D94 @ case 3
	pop {r3, r4, r5, pc} @ case 4
_02235C74:
	ldr r0, _02235F38 @ =0x02253324
	ldr r1, [r0]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldrbeq r0, [r1, #0xa]
	cmpeq r0, #0
	beq _02235F2C
	mov r0, #3
	bl ov18_0223E994
	ldr r0, _02235F38 @ =0x02253324
	ldr r2, [r0]
	ldrb r1, [r2, #0x14]
	add r0, r1, r1, lsl #1
	add r0, r0, #2
	add r0, r2, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	subeq r0, r1, #1
	strbeq r0, [r2, #0x14]
	ldr r0, _02235F38 @ =0x02253324
	mov r1, #0
	ldr r3, [r0]
	mov r2, #3
	ldrb r0, [r3, #0x14]
	add r3, r3, #8
	add r0, r0, r0, lsl #1
	add r0, r3, r0
	bl FUN_020C4CF4
	ldr r0, _02235F38 @ =0x02253324
	ldr r1, [r0]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldrbeq r0, [r1, #0xa]
	cmpeq r0, #0
	bne _02235D08
	mov r0, #0
	bl ov18_0222DE60
_02235D08:
	mov r0, #1
	bl ov18_0222DE74
	mov r0, #0
	bl ov18_0222DE88
	b _02235F2C
_02235D1C:
	ldr r0, _02235F38 @ =0x02253324
	ldr r1, [r0]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	bhs _02235F2C
	add r0, r0, r0, lsl #1
	add r0, r0, #2
	add r0, r1, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _02235F2C
	mov r0, #1
	bl ov18_0223E994
	ldr r1, _02235F38 @ =0x02253324
	mov r0, #0
	ldr r2, [r1]
	ldrb r1, [r2, #0x14]
	add r1, r1, #1
	strb r1, [r2, #0x14]
	bl ov18_0222DE88
	b _02235F2C
_02235D70:
	ldr r0, _02235F38 @ =0x02253324
	mov r2, #0
	ldr r1, [r0]
	mov r0, #7
	strb r2, [r1, #0x15]
	bl ov18_0223E994
	ldr r0, _02235F3C @ =ov18_02235FDC
	bl ov18_0222F6C4
	pop {r3, r4, r5, pc}
_02235D94:
	bl ov18_022363F8
	cmp r0, #0
	beq _02235DBC
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02235F38 @ =0x02253324
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x15]
	b _02235DD4
_02235DBC:
	ldr r0, _02235F38 @ =0x02253324
	mov r2, #2
	ldr r1, [r0]
	mov r0, #9
	strb r2, [r1, #0x15]
	bl ov18_0223E994
_02235DD4:
	ldr r1, _02235F38 @ =0x02253324
	mov r3, #3
	ldr r2, [r1]
	ldr r0, _02235F40 @ =0xC1FFFCFF
	strb r3, [r2, #0x14]
	ldr r1, [r1]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x200
	str r0, [r2]
	bl ov18_0223621C
	bl ov18_02236380
	ldr r0, _02235F3C @ =ov18_02235FDC
	bl ov18_0222F6C4
	pop {r3, r4, r5, pc}
_02235E14:
	ldr r0, _02235F38 @ =0x02253324
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _02235E38
	mov r0, #0x1a
	bl ov18_02235F44
	cmp r0, #0
	bne _02235F2C
_02235E38:
	mov r0, #1
	bl ov18_0223E994
	ldr r0, _02235F38 @ =0x02253324
	ldr r2, [r0]
	ldrb r1, [r2, #0x14]
	add r5, r2, #8
	add lr, r1, r1, lsl #1
	add ip, lr, #2
	ldrb r3, [r5, ip]
	cmp r3, #0
	strbeq r4, [r5, ip]
	beq _02235ED0
	add r2, lr, #1
	ldrb r1, [r5, r2]
	cmp r1, #0
	bne _02235EAC
	strb r3, [r5, r2]
	mov r0, #0x1a
	strb r4, [r5, ip]
	bl ov18_02235F44
	cmp r0, #0
	beq _02235ED0
	ldr r0, _02235F38 @ =0x02253324
	ldr r1, [r0]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strblo r0, [r1, #0x14]
	b _02235ED0
_02235EAC:
	strb r1, [r5, lr]
	ldrb r1, [r5, ip]
	strb r1, [r5, r2]
	strb r4, [r5, ip]
	ldr r1, [r0]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strblo r0, [r1, #0x14]
_02235ED0:
	mov r0, #1
	bl ov18_0222DE60
	ldr r0, _02235F38 @ =0x02253324
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bhs _02235EF8
	mov r0, #1
	bl ov18_0222DE88
	b _02235F00
_02235EF8:
	mov r0, #0
	bl ov18_0222DE88
_02235F00:
	ldr r0, _02235F38 @ =0x02253324
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _02235F2C
	mov r0, #0x1a
	bl ov18_02235F44
	cmp r0, #0
	beq _02235F2C
	mov r0, #0
	bl ov18_0222DE74
_02235F2C:
	bl ov18_02236158
	bl ov18_0223621C
	pop {r3, r4, r5, pc}
	.align 2, 0
_02235F38: .4byte 0x02253324
_02235F3C: .4byte ov18_02235FDC
_02235F40: .4byte 0xC1FFFCFF
	arm_func_end ov18_02235C34

	arm_func_start ov18_02235F44
ov18_02235F44: @ 0x02235F44
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02235FD4 @ =0x02253324
	mov r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, #0x14]
	add r3, r1, #8
	add r2, r0, r0, lsl #1
	ldrb r0, [r3, r2]
	cmp r0, #0
	cmpne r0, #0x20
	addne sp, sp, #4
	movne r0, #1
	popne {r3, r4, pc}
	add r0, r3, r2
	add r1, sp, #0
	mov r2, #3
	bl FUN_020C4DB0
	mov r2, #0
	add r3, sp, #0
	strb r2, [sp, #3]
	mov r0, #0x20
_02235F9C:
	ldrb r1, [r3]
	cmp r1, #0
	bne _02235FB8
	add r2, r2, #1
	cmp r2, #3
	strb r0, [r3], #1
	blt _02235F9C
_02235FB8:
	add r0, sp, #0
	bl FUN_020DAE0C
	cmp r0, r4
	movge r0, #1
	movlt r0, #0
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02235FD4: .4byte 0x02253324
	arm_func_end ov18_02235F44

	arm_func_start ov18_02235FD8
ov18_02235FD8: @ 0x02235FD8
	bx lr
	arm_func_end ov18_02235FD8

	arm_func_start ov18_02235FDC
ov18_02235FDC: @ 0x02235FDC
	push {r3, lr}
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02235FF4 @ =ov18_02235FF8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02235FF4: .4byte ov18_02235FF8
	arm_func_end ov18_02235FDC

	arm_func_start ov18_02235FF8
ov18_02235FF8: @ 0x02235FF8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222DE18
	mov r0, #0x15
	bl ov18_0223E994
	ldr r0, _02236024 @ =ov18_02236028
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236024: .4byte ov18_02236028
	arm_func_end ov18_02235FF8

	arm_func_start ov18_02236028
ov18_02236028: @ 0x02236028
	push {r3, lr}
	bl ov18_0222DE9C
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022360A4 @ =0x02253324
	ldr r0, [r0]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _02236058
	ldr r0, _022360A8 @ =ov18_022360B4
	bl ov18_0222F6C4
	pop {r3, pc}
_02236058:
	mov r2, #1
	cmp r0, #2
	mov ip, #0
	sub r3, r2, #2
	bne _02236088
	mov r0, #6
	mov r1, #3
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _022360AC @ =ov18_0223654C
	bl ov18_0222F6C4
	pop {r3, pc}
_02236088:
	mov r0, #0x47
	mov r1, #2
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _022360B0 @ =ov18_02236270
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022360A4: .4byte 0x02253324
_022360A8: .4byte ov18_022360B4
_022360AC: .4byte ov18_0223654C
_022360B0: .4byte ov18_02236270
	arm_func_end ov18_02236028

	arm_func_start ov18_022360B4
ov18_022360B4: @ 0x022360B4
	push {r3, lr}
	bl ov18_0222B668
	ldr r0, _02236144 @ =0x02253324
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov18_02245B74
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02236148 @ =0x0224A220
	ldr r1, _0223614C @ =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F724
	ldr r0, [sp]
	mov r1, #1
	cmp r0, #3
	addge r0, r0, #1
	strge r0, [sp]
	mov r0, #2
	bl ov18_0222F6D4
	ldr r1, [sp]
	mov r0, #0
	add r1, r1, #3
	bl ov18_0222F710
	ldr r0, _02236150 @ =ov18_02236BE0
	bl ov18_0222F6C4
	ldr r0, _02236154 @ =0x02253324
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_02236144: .4byte 0x02253324
_02236148: .4byte 0x0224A220
_0223614C: .4byte 0x020C0160
_02236150: .4byte ov18_02236BE0
_02236154: .4byte 0x02253324
	arm_func_end ov18_022360B4

	arm_func_start ov18_02236158
ov18_02236158: @ 0x02236158
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	ldr r0, _02236210 @ =0x02253324
	ldr r1, _02236214 @ =0x0224925C
	ldr r0, [r0]
	ldrh r5, [r1, #0xe]
	ldrh r4, [r1, #0x10]
	mov r3, #0xb
	mov r2, #0x10
	ldr r0, [r0]
	mov r1, #0
	strh r5, [sp, #0x14]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl ov18_02244B5C
	mov r4, #0
	ldr r5, _02236218 @ =0x0224929C
	ldr r6, _02236210 @ =0x02253324
	strh r4, [sp, #0x12]
	mov sb, #2
	mov r8, #0x480
	add r7, sp, #0x10
_022361B4:
	ldr ip, [r6]
	ldrb r1, [r5], #1
	add r0, ip, r4
	ldrb r3, [r0, #8]
	ldrh r0, [sp, #0x1a]
	ldrh r2, [sp, #0x16]
	strh r3, [sp, #0x10]
	stm sp, {r0, sb}
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r3, [sp, #0x18]
	ldr r0, [ip]
	strh r1, [sp, #0x14]
	bl ov18_02244A9C
	add r4, r4, #1
	cmp r4, #0xc
	blt _022361B4
	ldr r0, _02236210 @ =0x02253324
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov18_02244C08
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02236210: .4byte 0x02253324
_02236214: .4byte 0x0224925C
_02236218: .4byte 0x0224929C
	arm_func_end ov18_02236158

	arm_func_start ov18_0223621C
ov18_0223621C: @ 0x0223621C
	ldr r0, _02236264 @ =0x02253324
	ldr r2, [r0]
	ldrb r0, [r2, #0x14]
	ldr r3, [r2, #4]
	cmp r0, #3
	movgt r0, #3
	add r1, r0, r0, lsl #1
	ldr r0, _02236268 @ =0x0224929C
	add r1, r1, #2
	ldrb r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _0223626C @ =0xFE00FF00
	lsl r2, r2, #0x17
	and r0, r1, r0
	orr r0, r0, #0x28
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	bx lr
	.align 2, 0
_02236264: .4byte 0x02253324
_02236268: .4byte 0x0224929C
_0223626C: .4byte 0xFE00FF00
	arm_func_end ov18_0223621C

	arm_func_start ov18_02236270
ov18_02236270: @ 0x02236270
	push {r3, lr}
	bl ov18_0223FFB8
	ldr r1, _022362C4 @ =0x02253324
	ldr r2, [r1]
	strb r0, [r2, #0x15]
	ldr r0, [r1]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022362A0
	cmp r0, #1
	beq _022362AC
	pop {r3, pc}
_022362A0:
	mov r0, #7
	bl ov18_0223E994
	b _022362B4
_022362AC:
	mov r0, #0xe
	bl ov18_0223E994
_022362B4:
	bl ov18_0223FF74
	ldr r0, _022362C8 @ =ov18_022362CC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022362C4: .4byte 0x02253324
_022362C8: .4byte ov18_022362CC
	arm_func_end ov18_02236270

	arm_func_start ov18_022362CC
ov18_022362CC: @ 0x022362CC
	push {r3, lr}
	sub sp, sp, #0x18
	ldr lr, _0223636C @ =0x02249288
	add ip, sp, #4
	ldm lr!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	str r0, [ip]
	bl ov18_0223FFCC
	cmp r0, #0
	addne sp, sp, #0x18
	popne {r3, pc}
	ldr r0, _02236370 @ =0x02253324
	ldr r1, [r0]
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _02236334
	ldr r3, [r1, #4]
	ldr r1, _02236374 @ =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _02236378 @ =ov18_02235B78
	and r1, r2, r1
	str r1, [r3]
	bl ov18_0222F6C4
	add sp, sp, #0x18
	pop {r3, pc}
_02236334:
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F724
	ldr r0, _02236370 @ =0x02253324
	ldr r2, [sp]
	add r1, sp, #4
	ldr r0, [r0]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, #8
	blx r1
	ldr r0, _0223637C @ =ov18_022360B4
	bl ov18_0222F6C4
	add sp, sp, #0x18
	pop {r3, pc}
	.align 2, 0
_0223636C: .4byte 0x02249288
_02236370: .4byte 0x02253324
_02236374: .4byte 0xC1FFFCFF
_02236378: .4byte ov18_02235B78
_0223637C: .4byte ov18_022360B4
	arm_func_end ov18_022362CC

	arm_func_start ov18_02236380
ov18_02236380: @ 0x02236380
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r0, _022363F4 @ =0x02253324
	mov r6, r4
	mov r1, #0x20
	mov r2, #0x30
	mov ip, r4
_0223639C:
	ldr r3, [r0]
	mov r5, ip
	add r3, r3, #8
	add lr, r3, r6
_022363AC:
	ldrb r3, [lr, r5]
	cmp r3, #0x30
	cmpne r3, #0x20
	cmpne r3, #0
	bne _022363DC
	cmp r5, #2
	moveq r3, r2
	movne r3, r1
	strb r3, [lr, r5]
	add r5, r5, #1
	cmp r5, #3
	blt _022363AC
_022363DC:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #3
	blt _0223639C
	bl ov18_02236158
	pop {r4, r5, r6, pc}
	.align 2, 0
_022363F4: .4byte 0x02253324
	arm_func_end ov18_02236380

	arm_func_start ov18_022363F8
ov18_022363F8: @ 0x022363F8
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r2, _02236544 @ =0x0224925C
	mov r0, #0
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	ldr r1, _02236548 @ =0x02253324
	strb ip, [sp, #8]
	strb r3, [sp, #9]
	ldrb ip, [r2, #2]
	ldrb r3, [r2, #3]
	ldr r2, [r1]
	add r4, sp, #8
	strb ip, [sp, #0xa]
	mov r7, r0
	strb r3, [sp, #0xb]
	add lr, r2, #8
	mov ip, r0
_02236440:
	ldrb r1, [lr, r7]
	add r5, lr, r7
	cmp r1, #0x20
	beq _02236484
	mov r6, ip
	mov r8, r4
_02236458:
	ldrb r3, [r5, r6]
	ldrb r1, [r8]
	cmp r3, r1
	addhi sp, sp, #0xc
	movhi r0, #0
	pophi {r3, r4, r5, r6, r7, r8, pc}
	blo _02236484
	add r6, r6, #1
	cmp r6, #3
	add r8, r8, #1
	blt _02236458
_02236484:
	add r0, r0, #1
	cmp r0, #4
	add r7, r7, #3
	blt _02236440
	add r1, sp, #0
	add r0, r2, #8
	bl ov18_0223E834
	add r0, sp, #4
	mov r1, #0
	bl ov18_0222F724
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02236528
	mov r4, #0
	mov r1, #1
	add r5, sp, #0
	mov r6, r4
	mov r2, r1
	mov ip, r4
_022364D0:
	ldrb r3, [r5]
	mov r7, ip
_022364D8:
	cmp r4, #0
	rsb r0, r7, #7
	beq _022364F8
	tst r3, r2, lsl r0
	beq _02236500
	add sp, sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, pc}
_022364F8:
	tst r3, r1, lsl r0
	moveq r4, r1
_02236500:
	add r7, r7, #1
	cmp r7, #8
	blt _022364D8
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #1
	blt _022364D0
	add sp, sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, pc}
_02236528:
	add r0, sp, #0
	bl FUN_020A2CAC
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02236544: .4byte 0x0224925C
_02236548: .4byte 0x02253324
	arm_func_end ov18_022363F8

	arm_func_start ov18_0223654C
ov18_0223654C: @ 0x0223654C
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02236574 @ =ov18_02236578
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236574: .4byte ov18_02236578
	arm_func_end ov18_0223654C

	arm_func_start ov18_02236578
ov18_02236578: @ 0x02236578
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022365B0 @ =0x02253324
	ldr r1, _022365B4 @ =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _022365B8 @ =ov18_02235B78
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022365B0: .4byte 0x02253324
_022365B4: .4byte 0xC1FFFCFF
_022365B8: .4byte ov18_02235B78
	arm_func_end ov18_02236578

	arm_func_start ov18_022365BC
ov18_022365BC: @ 0x022365BC
	push {r3, lr}
	bl ov18_022365D8
	bl ov18_02236658
	ldr r0, _022365D4 @ =ov18_022369B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022365D4: .4byte ov18_022369B4
	arm_func_end ov18_022365BC

	arm_func_start ov18_022365D8
ov18_022365D8: @ 0x022365D8
	push {r3, lr}
	ldr r0, _02236648 @ =0x0224A238
	ldr r1, _0223664C @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02236650 @ =0x04001008
	ldr r1, _02236654 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02236648: .4byte 0x0224A238
_0223664C: .4byte FUN_020C04EC
_02236650: .4byte 0x04001008
_02236654: .4byte 0x0400000A
	arm_func_end ov18_022365D8

	arm_func_start ov18_02236658
ov18_02236658: @ 0x02236658
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	add r1, sp, #0x10
	mov r0, #0
	bl ov18_0222F724
	ldr r0, _02236988 @ =0x02253328
	ldr r2, _0223698C @ =0xFFFFB17D
	ldr r1, [r0]
	cmp r1, r2
	movge r4, #0
	bge _022368B4
	sub r0, r2, #1
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #2
	cmp r1, r0
	movge r4, #0x13
	bge _022368B4
	sub r0, r2, #8
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #9
	cmp r1, r0
	movge r4, #0x12
	bge _022368B4
	sub r0, r2, #0xa
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #0xb
	cmp r1, r0
	movge r4, #3
	bge _022368B4
	sub r0, r2, #0x384
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	ldr r0, _02236990 @ =0xFFFFA629
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r0, #0x3e8
	cmp r1, r0
	movge r4, #0x13
	bge _022368B4
	ldr r0, _02236994 @ =0xFFFF3CB1
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r2, r0, #3
	cmp r1, r2
	movge r4, #7
	bge _022368B4
	sub r2, r0, #4
	cmp r1, r2
	movge r4, #5
	bge _022368B4
	sub r2, r0, #0x63
	cmp r1, r2
	movge r4, #0
	bge _022368B4
	sub r2, r0, #0x64
	cmp r1, r2
	blt _02236774
	ldr r0, [sp, #0x10]
	cmp r0, #2
	moveq r4, #5
	movne r4, #7
	b _022368B4
_02236774:
	ldr r3, _02236998 @ =0xFFFF3866
	cmp r1, r3
	movge r4, #0
	bge _022368B4
	sub r2, r3, #1
	cmp r1, r2
	blt _022367A4
	ldr r0, [sp, #0x10]
	cmp r0, #2
	moveq r4, #5
	movne r4, #8
	b _022368B4
_022367A4:
	sub r2, r3, #4
	cmp r1, r2
	movge r4, #9
	bge _022368B4
	sub r2, r3, #5
	cmp r1, r2
	movge r4, #5
	bge _022368B4
	sub r2, r3, #0x65
	cmp r1, r2
	movge r4, #0
	bge _022368B4
	sub r2, r3, #0xc9
	cmp r1, r2
	movge r4, #0x14
	bge _022368B4
	sub r2, r3, #0xcc
	cmp r1, r2
	movge r4, #0x15
	bge _022368B4
	sub r2, r3, #0xcd
	cmp r1, r2
	movge r4, #4
	bge _022368B4
	sub r0, r0, #0x7d0
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r3, #0x388
	cmp r1, r0
	movge r4, #0xa
	bge _022368B4
	ldr r2, _0223699C @ =0xFFFF34DD
	cmp r1, r2
	movge r4, #0x16
	bge _022368B4
	sub r0, r2, #0x60
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0x64
	cmp r1, r0
	movge r4, #0xb
	bge _022368B4
	sub r0, r2, #0xc4
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0xc8
	cmp r1, r0
	movge r4, #0xb
	bge _022368B4
	sub r0, r2, #0x128
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0x18c
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #0x3e4
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0x510
	cmp r1, r0
	movge r4, #2
	movlt r4, #0
_022368B4:
	bl ov18_0222F74C
	mov r2, r0
	ldr r1, _022369A0 @ =0x022492A8
	mov r0, #0
	ldrb r1, [r1, r2]
	bl ov18_0224467C
	ldr r1, _022369A4 @ =0x022532D8
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	bl ov18_0222F8B8
	ldr r1, _02236988 @ =0x02253328
	mov r4, r0
	ldr r1, [r1]
	ldr r2, _022369A8 @ =0x0224A24C
	rsb r3, r1, #0
	add r0, sp, #0x14
	mov r1, #8
	bl FUN_020DCDCC
	bl ov18_0222F74C
	lsl r1, r0, #2
	ldr r0, _022369AC @ =0x022492BA
	ldrh r6, [r0, r1]
	bl ov18_0222F74C
	lsl r3, r0, #2
	ldr r1, _022369B0 @ =0x022492B8
	mov r0, #0xa
	ldrh r1, [r1, r3]
	str r0, [sp]
	add r3, sp, #0x14
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r2, r6
	mov r0, r5
	mov r3, #2
	bl ov18_022449F0
	bl ov18_0222B8F8
	mov r1, #0x5e
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r4, [sp, #0xc]
	bl ov18_02244A9C
	mov r0, r5
	bl ov18_02244C08
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02236988: .4byte 0x02253328
_0223698C: .4byte 0xFFFFB17D
_02236990: .4byte 0xFFFFA629
_02236994: .4byte 0xFFFF3CB1
_02236998: .4byte 0xFFFF3866
_0223699C: .4byte 0xFFFF34DD
_022369A0: .4byte 0x022492A8
_022369A4: .4byte 0x022532D8
_022369A8: .4byte 0x0224A24C
_022369AC: .4byte 0x022492BA
_022369B0: .4byte 0x022492B8
	arm_func_end ov18_02236658

	arm_func_start ov18_022369B4
ov18_022369B4: @ 0x022369B4
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022369E4 @ =ov18_022369E8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022369E4: .4byte ov18_022369E8
	arm_func_end ov18_022369B4

	arm_func_start ov18_022369E8
ov18_022369E8: @ 0x022369E8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #4
	bl ov18_0222B790
	ldr r0, _02236A20 @ =ov18_02236A24
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236A20: .4byte ov18_02236A24
	arm_func_end ov18_022369E8

	arm_func_start ov18_02236A24
ov18_02236A24: @ 0x02236A24
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02236A48 @ =ov18_02236A4C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236A48: .4byte ov18_02236A4C
	arm_func_end ov18_02236A24

	arm_func_start ov18_02236A4C
ov18_02236A4C: @ 0x02236A4C
	push {r3, lr}
	bl ov18_02236A60
	bl ov18_02236A80
	bl ov18_02236A84
	pop {r3, pc}
	arm_func_end ov18_02236A4C

	arm_func_start ov18_02236A60
ov18_02236A60: @ 0x02236A60
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02236A60

	arm_func_start ov18_02236A80
ov18_02236A80: @ 0x02236A80
	bx lr
	arm_func_end ov18_02236A80

	arm_func_start ov18_02236A84
ov18_02236A84: @ 0x02236A84
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02236AA8 @ =ov18_02236AAC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236AA8: .4byte ov18_02236AAC
	arm_func_end ov18_02236A84

	arm_func_start ov18_02236AAC
ov18_02236AAC: @ 0x02236AAC
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02236AC8 @ =ov18_02236ACC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236AC8: .4byte ov18_02236ACC
	arm_func_end ov18_02236AAC

	arm_func_start ov18_02236ACC
ov18_02236ACC: @ 0x02236ACC
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02236B18 @ =ov18_02236B1C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236B18: .4byte ov18_02236B1C
	arm_func_end ov18_02236ACC

	arm_func_start ov18_02236B1C
ov18_02236B1C: @ 0x02236B1C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #2
	beq _02236BA0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02236BC8 @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
_02236BA0:
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	mov r0, #0
	bl ov18_0223909C
	ldr r0, _02236BCC @ =ov18_02236BE0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02236BC8: .4byte ov18_0223A6B4
_02236BCC: .4byte ov18_02236BE0
	arm_func_end ov18_02236B1C

	arm_func_start ov18_02236BD0
ov18_02236BD0: @ 0x02236BD0
	ldr r1, _02236BDC @ =0x02253328
	str r0, [r1]
	bx lr
	.align 2, 0
_02236BDC: .4byte 0x02253328
	arm_func_end ov18_02236BD0

	arm_func_start ov18_02236BE0
ov18_02236BE0: @ 0x02236BE0
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	bl ov18_0223DDCC
	mov r4, r0
	mov r0, #0x48
	mov r1, #4
	bl ov18_02245068
	ldr r1, _02236DC4 @ =0x0225332C
	mov r2, #0xc
	str r0, [r1, #8]
	ldrb r3, [r4, #0xf6]
	strb r3, [r0, #0x43]
	ldr r0, [r1, #8]
	strb r2, [r0, #0x42]
	bl ov18_02236FF0
	bl ov18_02236DDC
	ldr r0, _02236DC4 @ =0x0225332C
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02236C50
	bl ov18_0222F74C
	ldr r1, _02236DC8 @ =0x022493B0
	ldrb r2, [r4, #0xf4]
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	add r2, r2, #1
	bl ov18_0222B594
	b _02236C60
_02236C50:
	mov r0, #0x45
	sub r1, r0, #0x46
	mov r2, #0
	bl ov18_0222B594
_02236C60:
	mov r0, #1
	bl ov18_0222B740
	bl ov18_0222BC34
	ldr r0, _02236DC4 @ =0x0225332C
	mov r1, #0x37
	ldrh r3, [r0, #4]
	ldr r2, _02236DCC @ =0xE1FC780F
	mov r0, #2
	mul r5, r3, r1
	smull r1, r3, r2, r5
	add r3, r5, r3
	lsr r1, r5, #0x1f
	add r3, r1, r3, asr #7
	str r3, [sp]
	mov r1, #0x55
	mov r2, #0xf1
	mov r3, #0x41
	bl ov18_0223D218
	mov r0, #0
	mov r1, #1
	bl ov18_0224467C
	ldr r6, _02236DC4 @ =0x0225332C
	mov r5, #0
	ldr r1, [r6, #8]
	mov r8, r5
	str r0, [r1, #0x14]
	mov r7, #0x29
_02236CCC:
	mov r0, r8
	mov r1, r7
	bl ov18_02243F60
	ldr r1, [r6, #8]
	add r1, r1, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x18]
	cmp r5, #7
	blt _02236CCC
	ldrb r0, [r4, #0xe7]
	cmp r0, #1
	beq _02236D08
	cmp r0, #2
	beq _02236D3C
	b _02236D6C
_02236D08:
	mov r0, #0
	mov r1, #0x50
	bl ov18_02243F60
	ldr r1, _02236DC4 @ =0x0225332C
	ldr r2, [r1, #8]
	str r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	b _02236D6C
_02236D3C:
	mov r0, #0
	mov r1, #0x51
	bl ov18_02243F60
	ldr r1, _02236DC4 @ =0x0225332C
	ldr r2, [r1, #8]
	str r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
_02236D6C:
	ldr r1, _02236DD0 @ =ov18_02238924
	mov r0, #1
	mov r2, #0
	mov r3, #0x6e
	bl ov18_02246304
	ldr r2, _02236DC4 @ =0x0225332C
	ldr r1, _02236DD4 @ =ov18_02238E84
	ldr r2, [r2, #8]
	mov r3, #0x78
	str r0, [r2, #0x3c]
	mov r0, #0
	mov r2, r0
	bl ov18_02246304
	ldr r1, _02236DC4 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1]
	bl ov18_02237BA8
	bl ov18_022389A8
	ldr r0, _02236DD8 @ =ov18_0223702C
	bl ov18_0222F6C4
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02236DC4: .4byte 0x0225332C
_02236DC8: .4byte 0x022493B0
_02236DCC: .4byte 0xE1FC780F
_02236DD0: .4byte ov18_02238924
_02236DD4: .4byte ov18_02238E84
_02236DD8: .4byte ov18_0223702C
	arm_func_end ov18_02236BE0

	arm_func_start ov18_02236DDC
ov18_02236DDC: @ 0x02236DDC
	stmdb sp!, {lr}
	sub sp, sp, #0x44
	ldr r3, _02236FB0 @ =0x0224934F
	add ip, sp, #0x2b
	mov r2, #0xb
_02236DF0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	bne _02236DF0
	ldrb r0, [r3]
	ldr r3, _02236FB4 @ =0x02249324
	add lr, sp, #0x16
	strb r0, [ip]
	mov r2, #0xa
_02236E24:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [lr]
	strb r0, [lr, #1]
	add lr, lr, #2
	subs r2, r2, #1
	bne _02236E24
	ldrb r0, [r3]
	ldr ip, _02236FB8 @ =0x02249339
	add r3, sp, #0
	strb r0, [lr]
	mov r2, #0xb
_02236E58:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02236E58
	ldr r3, _02236FBC @ =0x0400000C
	ldr r0, _02236FC0 @ =0x0224A254
	ldrh r2, [r3]
	ldr r1, _02236FC4 @ =0x020C0160
	and r2, r2, #0x43
	orr r2, r2, #0x218
	orr r2, r2, #0xc00
	strh r2, [r3]
	bl ov18_0222B700
	ldr r0, _02236FC8 @ =0x0224A268
	ldr r1, _02236FCC @ =0x020C08AC
	bl ov18_0222B700
	ldr r0, _02236FD0 @ =0x0224A280
	ldr r1, _02236FD4 @ =0x020C07EC
	bl ov18_0222B700
	ldr r1, _02236FD8 @ =FUN_020C00B4
	add r0, sp, #0x16
	bl ov18_0222B700
	ldr r0, _02236FDC @ =0x0224A298
	ldr r1, _02236FE0 @ =0x020C05AC
	bl ov18_0222B700
	add r0, sp, #0x2b
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02236FE4 @ =0x0225332C
	ldr r2, [r1, #8]
	str r0, [r2, #8]
	ldr r0, [r1, #8]
	ldr r0, [r0, #8]
	bl ov18_0223D004
	bl ov18_0223D090
	add r0, sp, #0x16
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02236FE4 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02236FE4 @ =0x0225332C
	ldr r2, _02236FE8 @ =0x04001008
	ldr r1, [r1, #8]
	str r0, [r1, #0x10]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	sub r2, r2, #0x1000
	ldrh r0, [r2]
	ldr r1, _02236FEC @ =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	add sp, sp, #0x44
	ldm sp!, {pc}
	.align 2, 0
_02236FB0: .4byte 0x0224934F
_02236FB4: .4byte 0x02249324
_02236FB8: .4byte 0x02249339
_02236FBC: .4byte 0x0400000C
_02236FC0: .4byte 0x0224A254
_02236FC4: .4byte 0x020C0160
_02236FC8: .4byte 0x0224A268
_02236FCC: .4byte 0x020C08AC
_02236FD0: .4byte 0x0224A280
_02236FD4: .4byte 0x020C07EC
_02236FD8: .4byte FUN_020C00B4
_02236FDC: .4byte 0x0224A298
_02236FE0: .4byte 0x020C05AC
_02236FE4: .4byte 0x0225332C
_02236FE8: .4byte 0x04001008
_02236FEC: .4byte 0x0400000A
	arm_func_end ov18_02236DDC

	arm_func_start ov18_02236FF0
ov18_02236FF0: @ 0x02236FF0
	push {r3, lr}
	bl ov18_0223DDCC
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02237028 @ =0x0225332C
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0]
	strb r1, [r0, #2]
	pop {r3, pc}
	.align 2, 0
_02237028: .4byte 0x0225332C
	arm_func_end ov18_02236FF0

	arm_func_start ov18_0223702C
ov18_0223702C: @ 0x0223702C
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x1d
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244C84
	ldr r0, _0223707C @ =ov18_02237080
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223707C: .4byte ov18_02237080
	arm_func_end ov18_0223702C

	arm_func_start ov18_02237080
ov18_02237080: @ 0x02237080
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022370B0 @ =ov18_022370B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022370B0: .4byte ov18_022370B4
	arm_func_end ov18_02237080

	arm_func_start ov18_022370B4
ov18_022370B4: @ 0x022370B4
	push {r3, lr}
	bl ov18_022370C4
	bl ov18_022375EC
	pop {r3, pc}
	arm_func_end ov18_022370B4

	arm_func_start ov18_022370C4
ov18_022370C4: @ 0x022370C4
	push {r3, lr}
	ldr r0, _02237334 @ =0x0225332C
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldrbeq r0, [r1, #0x45]
	cmpeq r0, #0
	popne {r3, pc}
	bl ov18_02237344
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _02237110
	ldr r0, _02237334 @ =0x0225332C
	ldrb r0, [r0]
	bl ov18_022373C8
	pop {r3, pc}
_02237110:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02237144
	mov r0, #7
	bl ov18_0223E994
	ldr r1, _02237334 @ =0x0225332C
	ldr r0, _02237338 @ =ov18_02237848
	ldr r1, [r1, #8]
	mov r2, #0xd
	strb r2, [r1, #0x40]
	bl ov18_0222F6C4
	pop {r3, pc}
_02237144:
	mov r0, #0x200
	bl ov18_022454B0
	cmp r0, #0
	beq _022371BC
	ldr r0, _02237334 @ =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0x91
	bne _02237190
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237334 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, pc}
_02237190:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _0223733C @ =ov18_02238880
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237334 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, pc}
_022371BC:
	mov r0, #0x200
	bl ov18_022454F0
	cmp r0, #0
	beq _022371E0
	ldr r0, _02237334 @ =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, pc}
_022371E0:
	mov r0, #0x100
	bl ov18_022454B0
	cmp r0, #0
	beq _02237258
	ldr r0, _02237334 @ =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _0223722C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237334 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, pc}
_0223722C:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02237340 @ =ov18_022387B8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237334 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, pc}
_02237258:
	mov r0, #0x100
	bl ov18_022454F0
	cmp r0, #0
	beq _0223727C
	ldr r0, _02237334 @ =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, pc}
_0223727C:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _02237298
	mov r0, #1
	bl ov18_02238B60
	pop {r3, pc}
_02237298:
	mov r0, #0x40
	bl ov18_022454F0
	cmp r0, #0
	beq _022372BC
	ldr r0, _02237334 @ =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, pc}
_022372BC:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _022372D8
	mov r0, #3
	bl ov18_02238B60
	pop {r3, pc}
_022372D8:
	mov r0, #0x80
	bl ov18_022454F0
	cmp r0, #0
	beq _022372FC
	ldr r0, _02237334 @ =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, pc}
_022372FC:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _02237318
	mov r0, #0
	bl ov18_02238B60
	pop {r3, pc}
_02237318:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #2
	bl ov18_02238B60
	pop {r3, pc}
	.align 2, 0
_02237334: .4byte 0x0225332C
_02237338: .4byte ov18_02237848
_0223733C: .4byte ov18_02238880
_02237340: .4byte ov18_022387B8
	arm_func_end ov18_022370C4

	arm_func_start ov18_02237344
ov18_02237344: @ 0x02237344
	push {r4, lr}
	bl ov18_0223DDCC
	bl ov18_022384DC
	mov r4, r0
	cmp r4, #0xe
	moveq r0, #0
	popeq {r4, pc}
	bl ov18_02237F58
	cmp r0, #0
	bne _0223737C
	mov r0, #9
	bl ov18_0223E994
	mov r0, #1
	pop {r4, pc}
_0223737C:
	mov r0, r4
	bl ov18_02238B30
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _022373B8
_02237390: @ jump table
	b _022373B8 @ case 0
	b _022373B8 @ case 1
	b _022373B4 @ case 2
	b _022373B4 @ case 3
	b _022373B8 @ case 4
	b _022373B8 @ case 5
	b _022373B8 @ case 6
	b _022373B4 @ case 7
	b _022373B4 @ case 8
_022373B4:
	bl ov18_02238ED8
_022373B8:
	mov r0, r4
	bl ov18_022373C8
	mov r0, #1
	pop {r4, pc}
	arm_func_end ov18_02237344

	arm_func_start ov18_022373C8
ov18_022373C8: @ 0x022373C8
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov18_02237F58
	cmp r0, #0
	bne _022373F0
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #4
	pop {r3, r4, pc}
_022373F0:
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _02237468
_022373FC: @ jump table
	b _02237468 @ case 0
	b _02237468 @ case 1
	b _02237420 @ case 2
	b _02237420 @ case 3
	b _02237468 @ case 4
	b _02237468 @ case 5
	b _02237468 @ case 6
	b _02237444 @ case 7
	b _02237444 @ case 8
_02237420:
	mov r0, #6
	bl ov18_0223E994
	sub r0, r4, #2
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl ov18_02237548
	add sp, sp, #4
	pop {r3, r4, pc}
_02237444:
	mov r0, #6
	bl ov18_0223E994
	sub r0, r4, #7
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl ov18_022375B4
	add sp, sp, #4
	pop {r3, r4, pc}
_02237468:
	ldr r0, _02237538 @ =0x0225332C
	sub r1, r4, #0xb
	ldr r0, [r0, #8]
	cmp r1, #1
	strb r4, [r0, #0x40]
	bhi _022374E4
	bl ov18_02238E50
	bl ov18_02238F9C
	cmp r0, #0
	bne _022374C4
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #6
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _0223753C @ =ov18_0223903C
	bl ov18_0222F6C4
	add sp, sp, #4
	pop {r3, r4, pc}
_022374C4:
	cmp r4, #0xb
	bne _022374D8
	mov r0, #6
	bl ov18_0223E994
	b _02237524
_022374D8:
	mov r0, #0xe
	bl ov18_0223E994
	b _02237524
_022374E4:
	cmp r4, #0xd
	bne _022374FC
	bl ov18_02238E50
	mov r0, #7
	bl ov18_0223E994
	b _02237524
_022374FC:
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02237540 @ =0x022493D0
	ldrb r0, [r0, r4]
	bl ov18_02238750
	mov r2, r0
	mov r0, #0
	mov r1, #1
	bl ov18_02237FEC
	bl ov18_022382CC
_02237524:
	bl ov18_0223D378
	ldr r0, _02237544 @ =ov18_02237848
	bl ov18_0222F6C4
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02237538: .4byte 0x0225332C
_0223753C: .4byte ov18_0223903C
_02237540: .4byte 0x022493D0
_02237544: .4byte ov18_02237848
	arm_func_end ov18_022373C8

	arm_func_start ov18_02237548
ov18_02237548: @ 0x02237548
	push {r3, r4, r5, lr}
	mov r4, r0
	bl ov18_0223DDCC
	ldrb r1, [r0, #0xf5]
	cmp r1, r4
	popeq {r3, r4, r5, pc}
	cmp r4, #0
	beq _02237584
	ldr r0, _022375B0 @ =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x43]
	cmp r0, #0
	movne r5, #1
	moveq r5, #0
	b _02237598
_02237584:
	ldr r1, _022375B0 @ =0x0225332C
	ldrb r2, [r0, #0xf6]
	ldr r0, [r1, #8]
	mov r5, #0
	strb r2, [r0, #0x43]
_02237598:
	mov r0, r4
	bl ov18_0223DDE0
	mov r0, r5
	bl ov18_0223DDF4
	bl ov18_02237BA8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022375B0: .4byte 0x0225332C
	arm_func_end ov18_02237548

	arm_func_start ov18_022375B4
ov18_022375B4: @ 0x022375B4
	push {r4, lr}
	mov r4, r0
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf6]
	cmp r0, r4
	popeq {r4, pc}
	ldr r1, _022375E8 @ =0x0225332C
	mov r0, r4
	ldr r1, [r1, #8]
	strb r4, [r1, #0x43]
	bl ov18_0223DDF4
	bl ov18_02237BA8
	pop {r4, pc}
	.align 2, 0
_022375E8: .4byte 0x0225332C
	arm_func_end ov18_022375B4

	arm_func_start ov18_022375EC
ov18_022375EC: @ 0x022375EC
	push {r3, lr}
	ldr r0, _02237838 @ =0x0225332C
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	popne {r3, pc}
	ldrb r0, [r1, #0x41]
	cmp r0, #0
	subne r0, r0, #1
	strbne r0, [r1, #0x41]
	bl ov18_0223D340
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_02237624: @ jump table
	pop {r3, pc} @ case 0
	b _02237644 @ case 1
	b _02237658 @ case 2
	b _022376AC @ case 3
	b _02237754 @ case 4
	b _02237824 @ case 5
	b _022377BC @ case 6
	b _02237824 @ case 7
_02237644:
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x45]
	pop {r3, pc}
_02237658:
	ldr r0, _02237838 @ =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x41]
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0223D32C
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _0223783C @ =0x094F2095
	lsr r0, r1, #0x1f
	smull r1, r3, r2, r1
	ldr r1, _02237838 @ =0x0225332C
	add r3, r0, r3, asr #1
	strh r3, [r1, #4]
	bl ov18_02237BA8
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #4
	ldr r0, [r0, #8]
	strb r1, [r0, #0x41]
	pop {r3, pc}
_022376AC:
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x45]
	bl ov18_0223D32C
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _0223783C @ =0x094F2095
	lsr r0, r1, #0x1f
	smull r1, r3, r2, r1
	ldr r1, _02237838 @ =0x0225332C
	add r3, r0, r3, asr #1
	mov r0, #0x13
	strh r3, [r1, #4]
	bl ov18_0223E994
	bl ov18_02237BA8
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD140
	cmp r0, #0
	bne _0223770C
	bl ov18_02238A80
	pop {r3, pc}
_0223770C:
	cmp r0, #0x10
	mov r0, #0
	mov r3, #0x78
	bge _02237738
	ldr r1, _02237840 @ =ov18_022387B8
	mov r2, r0
	bl ov18_02246304
	ldr r1, _02237838 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, pc}
_02237738:
	ldr r1, _02237844 @ =ov18_02238880
	mov r2, r0
	bl ov18_02246304
	ldr r1, _02237838 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, pc}
_02237754:
	ldr r0, _02237838 @ =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _02237790
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x46]
	pop {r3, pc}
_02237790:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02237840 @ =ov18_022387B8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237838 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, pc}
_022377BC:
	ldr r0, _02237838 @ =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0x91
	bne _022377F8
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x46]
	pop {r3, pc}
_022377F8:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02237844 @ =ov18_02238880
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237838 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, pc}
_02237824:
	ldr r0, _02237838 @ =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x46]
	pop {r3, pc}
	.align 2, 0
_02237838: .4byte 0x0225332C
_0223783C: .4byte 0x094F2095
_02237840: .4byte ov18_022387B8
_02237844: .4byte ov18_02238880
	arm_func_end ov18_022375EC

	arm_func_start ov18_02237848
ov18_02237848: @ 0x02237848
	push {r3, lr}
	bl ov18_0223D378
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02237864 @ =ov18_02237868
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02237864: .4byte ov18_02237868
	arm_func_end ov18_02237848

	arm_func_start ov18_02237868
ov18_02237868: @ 0x02237868
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x1d
	mov r3, #8
	bl ov18_02244194
	ldr r0, _022378B0 @ =ov18_022378B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022378B0: .4byte ov18_022378B4
	arm_func_end ov18_02237868

	arm_func_start ov18_022378B4
ov18_022378B4: @ 0x022378B4
	push {r3, r4, r5, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, r4, r5, pc}
	ldr r1, _02237B7C @ =0x0225332C
	mov r0, #0
	ldr r1, [r1, #8]
	ldr r1, [r1]
	bl ov18_022463CC
	ldr r1, _02237B7C @ =0x0225332C
	mov r0, #1
	ldr r1, [r1, #8]
	ldr r1, [r1, #0x3c]
	bl ov18_022463CC
	ldr r4, _02237B7C @ =0x0225332C
	mov r5, #0
_02237908:
	ldr r0, [r4, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x18]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #7
	blt _02237908
	ldr r0, _02237B7C @ =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _0223793C
	bl ov18_02245B74
_0223793C:
	bl ov18_0223D2F0
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222BAF4
	ldr r0, _02237B7C @ =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xc
	beq _02237964
	bl ov18_0222B668
_02237964:
	bl ov18_0223D064
	ldr r0, _02237B7C @ =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl ov18_0224382C
	ldr r4, _02237B7C @ =0x0225332C
	mov r5, #0
_02237980:
	ldr r0, [r4, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl ov18_0224382C
	add r5, r5, #1
	cmp r5, #2
	blt _02237980
	ldr r0, _02237B80 @ =0x0224A2AC
	ldr r1, _02237B84 @ =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244CD8
	ldr r0, _02237B88 @ =0x04000010
	mov r1, #0
	str r1, [r0]
	sub r3, r0, #4
	str r1, [r0, #8]
	ldrh r0, [r3]
	ldr r2, _02237B7C @ =0x0225332C
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r3]
	ldr r0, [r2, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _02237B70
_022379FC: @ jump table
	b _02237A34 @ case 0
	b _02237A34 @ case 1
	b _02237B70 @ case 2
	b _02237B70 @ case 3
	b _02237A50 @ case 4
	b _02237A50 @ case 5
	b _02237A50 @ case 6
	b _02237B70 @ case 7
	b _02237B70 @ case 8
	b _02237A50 @ case 9
	b _02237A50 @ case 10
	b _02237A80 @ case 11
	b _02237B18 @ case 12
	b _02237B2C @ case 13
_02237A34:
	bl ov18_0222F710
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _02237B8C @ =ov18_02234DB4
	bl ov18_0222F6C4
	b _02237B70
_02237A50:
	sub r4, r0, #4
	cmp r0, #9
	subhs r4, r4, #2
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, r4
	mov r1, #0
	bl ov18_0222F710
	ldr r0, _02237B90 @ =ov18_022358F4
	bl ov18_0222F6C4
	b _02237B70
_02237A80:
	bl ov18_0223DDCC
	mov r4, r0
	add r0, r4, #0xf0
	bl FUN_020A2B94
	strb r0, [r4, #0xd0]
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	beq _02237AD8
	add r0, r4, #0xc0
	mov r1, #0
	mov r2, #4
	bl FUN_020C4CF4
	add r0, r4, #0xc4
	mov r1, #0
	mov r2, #4
	bl FUN_020C4CF4
	add r0, r4, #0xf0
	mov r1, #0
	mov r2, #4
	bl FUN_020C4CF4
	mov r0, #0
	strb r0, [r4, #0xd0]
_02237AD8:
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	beq _02237AF4
	add r0, r4, #0xc8
	mov r1, #0
	mov r2, #8
	bl FUN_020C4CF4
_02237AF4:
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _02237B94 @ =ov18_0223BBAC
	bl ov18_0222F6C4
	b _02237B70
_02237B18:
	mov r0, r1
	bl ov18_0222F6D4
	ldr r0, _02237B98 @ =ov18_022390AC
	bl ov18_0222F6C4
	b _02237B70
_02237B2C:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _02237B50
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02237B9C @ =ov18_0223A6B4
	bl ov18_0222F6C4
	b _02237B70
_02237B50:
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	bl ov18_0223E1F0
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02237BA0 @ =ov18_0223B3F4
	bl ov18_0222F6C4
_02237B70:
	ldr r0, _02237BA4 @ =0x02253334
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237B7C: .4byte 0x0225332C
_02237B80: .4byte 0x0224A2AC
_02237B84: .4byte 0x020C0160
_02237B88: .4byte 0x04000010
_02237B8C: .4byte ov18_02234DB4
_02237B90: .4byte ov18_022358F4
_02237B94: .4byte ov18_0223BBAC
_02237B98: .4byte ov18_022390AC
_02237B9C: .4byte ov18_0223A6B4
_02237BA0: .4byte ov18_0223B3F4
_02237BA4: .4byte 0x02253334
	arm_func_end ov18_022378B4

	arm_func_start ov18_02237BA8
ov18_02237BA8: @ 0x02237BA8
	push {r4, r5, r6, lr}
	ldr r0, _02237C60 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD104
	ldr r1, _02237C60 @ =0x0225332C
	mov r4, r0
	ldr r0, [r1, #8]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl ov18_02244B5C
	mov r5, r4
	mov r6, #0
_02237BDC:
	mov r0, r5
	mov r1, r6
	bl ov18_02237C68
	add r6, r6, #1
	cmp r6, #5
	add r5, r5, #1
	blt _02237BDC
	ldr r0, _02237C60 @ =0x0225332C
	ldr r1, _02237C64 @ =0x02249312
	lsl r2, r4, #1
	ldr r3, [r0, #8]
	ldrh r0, [r1, r2]
	ldr r2, [r3, #8]
	mov r1, #0
	add r0, r2, r0, lsl #1
	mov r2, #0x1e
	mov r3, #0x13
	bl ov18_0223D0A8
	mov r5, #0
_02237C28:
	mov r0, r4
	mov r1, r5
	bl ov18_02237E04
	add r5, r5, #1
	cmp r5, #5
	add r4, r4, #1
	blt _02237C28
	bl ov18_0223D090
	ldr r0, _02237C60 @ =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x14]
	bl ov18_02244C08
	bl ov18_022382CC
	pop {r4, r5, r6, pc}
	.align 2, 0
_02237C60: .4byte 0x0225332C
_02237C64: .4byte 0x02249312
	arm_func_end ov18_02237BA8

	arm_func_start ov18_02237C68
ov18_02237C68: @ 0x02237C68
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r6, r0
	mov r5, r1
	bl ov18_0223DDCC
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _02237DFC
_02237C88: @ jump table
	b _02237CAC @ case 0
	b _02237CC0 @ case 1
	b _02237DFC @ case 2
	b _02237D50 @ case 3
	b _02237D74 @ case 4
	b _02237D98 @ case 5
	b _02237DFC @ case 6
	b _02237DBC @ case 7
	b _02237DE0 @ case 8
_02237CAC:
	mov r1, r5
	add r0, r0, #0x40
	bl ov18_022380F0
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237CC0:
	ldrb r1, [r0, #0xe6]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1e
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02237D04
_02237CD8: @ jump table
	b _02237CE8 @ case 0
	b _02237CF0 @ case 1
	b _02237CF8 @ case 2
	b _02237D00 @ case 3
_02237CE8:
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237CF0:
	mov r4, #0xa
	b _02237D04
_02237CF8:
	mov r4, #0x1a
	b _02237D04
_02237D00:
	mov r4, #0x20
_02237D04:
	ldrb r0, [r0, #0xe6]
	mov r1, #0
	mov r2, #0x21
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1a
	cmp r0, #1
	addeq r0, r4, r4, lsr #31
	asreq r4, r0, #1
	add r0, sp, #0
	bl FUN_020C4CF4
	add r0, sp, #0
	mov r2, r4
	mov r1, #0x2a
	bl FUN_020D5124
	add r0, sp, #0
	mov r1, r5
	bl ov18_022380F0
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237D50:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	popne {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc0
	bl ov18_02238244
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237D74:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	popne {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xf0
	bl ov18_02238244
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237D98:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	popne {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc4
	bl ov18_02238244
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237DBC:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	popne {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc8
	bl ov18_02238244
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02237DE0:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	popne {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xcc
	bl ov18_02238244
_02237DFC:
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov18_02237C68

	arm_func_start ov18_02237E04
ov18_02237E04: @ 0x02237E04
	push {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	bl ov18_0223DDCC
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _02237F38
_02237E20: @ jump table
	b _02237E44 @ case 0
	b _02237E44 @ case 1
	b _02237E60 @ case 2
	b _02237EAC @ case 3
	b _02237EAC @ case 4
	b _02237EAC @ case 5
	b _02237EC4 @ case 6
	b _02237F20 @ case 7
	b _02237F20 @ case 8
_02237E44:
	mov r4, #0
	mov r0, r4
	mov r5, r4
	bl ov18_02237F58
	cmp r0, #0
	moveq r5, #2
	b _02237F40
_02237E60:
	ldr r2, _02237F54 @ =0x0225332C
	ldrb r0, [r0, #0xf5]
	ldr r3, [r2, #8]
	mov r1, #0
	ldrb r2, [r3, #4]
	cmp r0, #0
	movne r4, #1
	movne r0, #4
	moveq r4, #2
	moveq r0, #3
	cmp r2, #0
	mov r5, r1
	ldrb r2, [r3, #5]
	movne r5, #1
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl ov18_02237FEC
	b _02237F40
_02237EAC:
	ldrb r0, [r0, #0xf5]
	mov r4, #0
	cmp r0, #0
	movne r5, #2
	moveq r5, r4
	b _02237F40
_02237EC4:
	ldrb r2, [r0, #0xf6]
	mov r1, #0
	mov r5, r1
	cmp r2, #0
	movne r4, #1
	movne r0, #4
	bne _02237EF4
	ldrb r0, [r0, #0xf5]
	mov r4, #2
	cmp r0, #0
	moveq r5, #2
	mov r0, #3
_02237EF4:
	ldr r2, _02237F54 @ =0x0225332C
	ldr r3, [r2, #8]
	ldrb r2, [r3, #6]
	cmp r2, #0
	ldrb r2, [r3, #7]
	movne r5, #1
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl ov18_02237FEC
	b _02237F40
_02237F20:
	ldrb r0, [r0, #0xf6]
	mov r4, #0
	cmp r0, #0
	movne r5, #2
	moveq r5, r4
	b _02237F40
_02237F38:
	mov r4, #0
	mov r5, #2
_02237F40:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl ov18_02237FEC
	pop {r4, r5, r6, pc}
	.align 2, 0
_02237F54: .4byte 0x0225332C
	arm_func_end ov18_02237E04

	arm_func_start ov18_02237F58
ov18_02237F58: @ 0x02237F58
	push {r4, lr}
	mov r4, r0
	bl ov18_0223DDCC
	cmp r4, #0xa
	mov r1, #1
	addls pc, pc, r4, lsl #2
	b _02237FE4
_02237F74: @ jump table
	b _02237FB0 @ case 0
	b _02237FB0 @ case 1
	b _02237FE4 @ case 2
	b _02237FE4 @ case 3
	b _02237FC8 @ case 4
	b _02237FC8 @ case 5
	b _02237FC8 @ case 6
	b _02237FA0 @ case 7
	b _02237FE4 @ case 8
	b _02237FD8 @ case 9
	b _02237FD8 @ case 10
_02237FA0:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	moveq r1, #0
	b _02237FE4
_02237FB0:
	ldrb r0, [r0, #0xe7]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	movls r1, #0
	b _02237FE4
_02237FC8:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	movne r1, #0
	b _02237FE4
_02237FD8:
	ldrb r0, [r0, #0xf6]
	cmp r0, #0
	movne r1, #0
_02237FE4:
	mov r0, r1
	pop {r4, pc}
	arm_func_end ov18_02237F58

	arm_func_start ov18_02237FEC
ov18_02237FEC: @ 0x02237FEC
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r3, _022380E4 @ =0x0225332C
	mov ip, #0xc0
	ldr r3, [r3, #8]
	mov r6, r0
	mov r4, #0x8f
	add r3, r3, #0x18
	sub r0, r6, #1
	mov lr, #0xcc
	mov r5, r1
	strh lr, [sp]
	strh ip, [sp, #2]
	strh ip, [sp, #4]
	strh r4, [sp, #6]
	strh r4, [sp, #8]
	cmp r0, #1
	add r4, r3, r2, lsl #2
	bhi _02238060
	mov r0, r2
	bl ov18_02238794
	cmp r0, #2
	ldrne r0, _022380E4 @ =0x0225332C
	ldrne r0, [r0, #8]
	addne r4, r0, #0x30
	bne _02238060
	ldr r0, _022380E4 @ =0x0225332C
	ldr r0, [r0, #8]
	add r4, r0, #0x2c
_02238060:
	ldr r0, _022380E8 @ =0x02249302
	add r1, r6, r6, lsl #1
	add r0, r0, r1
	ldrb r1, [r5, r0]
	ldr r2, [r4]
	cmp r1, #0
	beq _022380C8
	mov r0, #0
	bl ov18_02243ECC
	add r0, sp, #0
	lsl r1, r6, #1
	ldrh r2, [r0, r1]
	ldr r3, [r4]
	ldr r0, _022380EC @ =0xFE00FF00
	ldr r1, [r3]
	lsl r2, r2, #0x17
	and r0, r1, r0
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	ldr r1, [r4]
	add sp, sp, #0xc
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	pop {r3, r4, r5, r6, pc}
_022380C8:
	ldr r0, _022380EC @ =0xFE00FF00
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x1000000
	str r0, [r2]
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022380E4: .4byte 0x0225332C
_022380E8: .4byte 0x02249302
_022380EC: .4byte 0xFE00FF00
	arm_func_end ov18_02237FEC

	arm_func_start ov18_022380F0
ov18_022380F0: @ 0x022380F0
	push {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r6, r0
	mov r5, r1
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl FUN_020C4CF4
	mov r0, r6
	mov r1, #0x20
	bl ov18_02245E50
	mov r4, r0
	cmp r4, #0x10
	movle lr, r4
	movgt lr, #0x10
	cmp lr, #0
	mov ip, #0
	ble _02238160
	ldr r2, _0223823C @ =0x0000E01D
	add r1, sp, #0xc
_02238140:
	ldrb r3, [r6, ip]
	lsl r0, ip, #1
	add ip, ip, #1
	cmp r3, #0x20
	strheq r2, [r1, r0]
	strhne r3, [r1, r0]
	cmp ip, lr
	blt _02238140
_02238160:
	mov r0, #0x1d
	mul r0, r5, r0
	mov r1, #8
	add r5, r0, #2
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _02238240 @ =0x0225332C
	cmp r4, #0x10
	ldr r0, [r0, #8]
	addle r5, r5, #5
	ldr r0, [r0, #0x14]
	mov r2, r5
	mov r1, #0x48
	mov r3, #2
	bl ov18_022449F0
	cmp r4, #0x10
	addle sp, sp, #0x30
	pople {r4, r5, r6, pc}
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl FUN_020C4CF4
	sub r4, r4, #0x10
	cmp r4, #0
	mov ip, #0
	ble _02238200
	ldr r2, _0223823C @ =0x0000E01D
	add r1, sp, #0xc
_022381DC:
	add r0, r6, ip
	ldrb r3, [r0, #0x10]
	lsl r0, ip, #1
	add ip, ip, #1
	cmp r3, #0x20
	strheq r2, [r1, r0]
	strhne r3, [r1, r0]
	cmp ip, r4
	blt _022381DC
_02238200:
	mov r1, #8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _02238240 @ =0x0225332C
	add r2, r5, #0xc
	ldr r0, [r0, #8]
	mov r1, #0x48
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl ov18_022449F0
	add sp, sp, #0x30
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223823C: .4byte 0x0000E01D
_02238240: .4byte 0x0225332C
	arm_func_end ov18_022380F0

	arm_func_start ov18_02238244
ov18_02238244: @ 0x02238244
	push {r3, r4, lr}
	sub sp, sp, #0x2c
	mov ip, r0
	ldrb r2, [ip, #1]
	mov r4, r1
	add r0, sp, #0xc
	str r2, [sp]
	ldrb r3, [ip, #2]
	ldr r2, _022382C4 @ =0x0224A2C4
	mov r1, #0x10
	str r3, [sp, #4]
	ldrb r3, [ip, #3]
	str r3, [sp, #8]
	ldrb r3, [ip]
	bl FUN_020DCDCC
	mov r2, #7
	mov r0, #0x1d
	mul r1, r4, r0
	str r2, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _022382C8 @ =0x0225332C
	add r2, r1, #8
	ldr r0, [r0, #8]
	mov r1, #0x5f
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl ov18_022449F0
	add sp, sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
_022382C4: .4byte 0x0224A2C4
_022382C8: .4byte 0x0225332C
	arm_func_end ov18_02238244

	arm_func_start ov18_022382CC
ov18_022382CC: @ 0x022382CC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r0, _022384D0 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD104
	ldr r1, _022384D0 @ =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020BD140
	ldr r1, _022384D0 @ =0x0225332C
	rsb ip, r0, #0x34
	ldr r1, [r1, #8]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _0223834C
	ldr r5, [r1, #0x34]
	cmp r4, #0
	moveq r0, #0x26
	streq r0, [sp, #4]
	movne r0, #0x100
	strne r0, [sp, #4]
	ldr r2, [r5]
	ldr r0, _022384D4 @ =0xFE00FF00
	ldr r3, [sp, #4]
	and r0, r2, r0
	and r1, ip, #0xff
	lsl r2, r3, #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [r5]
_0223834C:
	ldr r8, _022384D0 @ =0x0225332C
	ldr r6, _022384D8 @ =0x01FF0000
	ldr r7, _022384D4 @ =0xFE00FF00
	mov lr, ip
	mov r5, #0
_02238360:
	ldr r0, [r8, #8]
	and sb, lr, #0xff
	add r0, r0, r5, lsl #2
	ldr r3, [r0, #0x18]
	add r5, r5, #1
	ldr r1, [r3]
	cmp r5, #5
	mov r0, r1
	and r2, r1, r6
	and sl, r0, r7
	lsr r2, r2, #0x10
	lsl r0, r2, #0x17
	orr sb, sl, sb
	orr r0, sb, r0, lsr #7
	str r0, [r3]
	and r0, r1, #0xff
	add lr, lr, #0x1d
	blt _02238360
	str r0, [sp]
	str r2, [sp, #4]
	cmp r4, #2
	bgt _02238410
	ldr r0, _022384D0 @ =0x0225332C
	rsb r2, r4, #2
	ldr r0, [r0, #8]
	mov r1, #0x1d
	ldr r0, [r0, #0x2c]
	mla r3, r2, r1, ip
	ldr r2, [r0]
	ldr r1, _022384D8 @ =0x01FF0000
	and r6, r2, #0xff
	and r1, r2, r1
	lsr r7, r1, #0x10
	mov r5, r2
	ldr r1, _022384D4 @ =0xFE00FF00
	and r2, r3, #0xff
	and r1, r5, r1
	lsl r3, r7, #0x17
	orr r1, r1, r2
	orr r1, r1, r3, lsr #7
	str r7, [sp, #4]
	str r6, [sp]
	str r1, [r0]
	b _02238430
_02238410:
	ldr r1, _022384D0 @ =0x0225332C
	ldr r0, _022384D4 @ =0xFE00FF00
	ldr r1, [r1, #8]
	ldr r2, [r1, #0x2c]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x1000000
	str r0, [r2]
_02238430:
	cmp r4, #2
	blt _02238498
	cmp r4, #6
	bgt _02238498
	ldr r0, _022384D0 @ =0x0225332C
	rsb r2, r4, #6
	ldr r0, [r0, #8]
	mov r1, #0x1d
	ldr r0, [r0, #0x30]
	mla r3, r2, r1, ip
	ldr r2, [r0]
	ldr r1, _022384D8 @ =0x01FF0000
	and r5, r2, #0xff
	and r1, r2, r1
	lsr r6, r1, #0x10
	mov r4, r2
	ldr r1, _022384D4 @ =0xFE00FF00
	and r2, r3, #0xff
	and r1, r4, r1
	lsl r3, r6, #0x17
	orr r1, r1, r2
	orr r1, r1, r3, lsr #7
	str r6, [sp, #4]
	str r5, [sp]
	str r1, [r0]
	b _022384B8
_02238498:
	ldr r1, _022384D0 @ =0x0225332C
	ldr r0, _022384D4 @ =0xFE00FF00
	ldr r1, [r1, #8]
	ldr r2, [r1, #0x30]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x1000000
	str r0, [r2]
_022384B8:
	ldr r0, _022384D0 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x44]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022384D0: .4byte 0x0225332C
_022384D4: .4byte 0xFE00FF00
_022384D8: .4byte 0x01FF0000
	arm_func_end ov18_022382CC

	arm_func_start ov18_022384DC
ov18_022384DC: @ 0x022384DC
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, _0223873C @ =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0xe
	popeq {r4, r5, r6, pc}
	ldr r0, _02238740 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD104
	ldr r1, _02238744 @ =0x022492D8
	mov r5, r0
	ldrh r3, [r1, #4]
	ldrh r2, [r1, #6]
	add r4, sp, #0
	strh r3, [sp]
	strh r2, [sp, #2]
	ldrh r2, [r1, #8]
	ldrh r0, [r1, #0xa]
	mov r6, #0
	strh r2, [sp, #4]
	strh r0, [sp, #6]
_0223853C:
	cmp r5, #2
	cmpne r5, #6
	beq _02238564
	mov r0, r4
	bl ov18_02245750
	cmp r0, #0
	ldrne r0, _02238748 @ =0x022493B8
	addne sp, sp, #8
	ldrbne r0, [r0, r5]
	popne {r4, r5, r6, pc}
_02238564:
	ldrh r0, [sp, #2]
	add r6, r6, #1
	cmp r6, #4
	add r0, r0, #0x1d
	strh r0, [sp, #2]
	add r5, r5, #1
	blt _0223853C
	ldr r0, _02238740 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD104
	mov r3, #0
_02238594:
	cmp r0, #2
	bne _02238630
	ldr r1, _02238744 @ =0x022492D8
	mov r0, #0x1d
	ldrh r5, [r1, #0x16]
	ldrh r2, [r1, #0x14]
	mul r4, r3, r0
	strh r2, [sp]
	strh r5, [sp, #2]
	ldrh r3, [r1, #0x18]
	ldrh r2, [r1, #0x1a]
	add r1, r5, r4
	add r0, sp, #0
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	popne {r4, r5, r6, pc}
	ldr r1, _02238744 @ =0x022492D8
	add r0, sp, #0
	ldrh r5, [r1, #0xe]
	ldrh r2, [r1, #0xc]
	strh r5, [sp, #2]
	strh r2, [sp]
	ldrh r3, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	add r1, r5, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	beq _02238640
	add sp, sp, #8
	mov r0, #3
	pop {r4, r5, r6, pc}
_02238630:
	add r3, r3, #1
	cmp r3, #4
	add r0, r0, #1
	blt _02238594
_02238640:
	ldr r0, _02238740 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD104
	mov r3, #0
_02238654:
	cmp r0, #6
	bne _022386F0
	ldr r1, _02238744 @ =0x022492D8
	mov r0, #0x1d
	ldrh r5, [r1, #0x16]
	ldrh r2, [r1, #0x14]
	mul r4, r3, r0
	strh r2, [sp]
	strh r5, [sp, #2]
	ldrh r3, [r1, #0x18]
	ldrh r2, [r1, #0x1a]
	add r1, r5, r4
	add r0, sp, #0
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #7
	popne {r4, r5, r6, pc}
	ldr r1, _02238744 @ =0x022492D8
	add r0, sp, #0
	ldrh r5, [r1, #0xe]
	ldrh r2, [r1, #0xc]
	strh r5, [sp, #2]
	strh r2, [sp]
	ldrh r3, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	add r1, r5, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	beq _02238700
	add sp, sp, #8
	mov r0, #8
	pop {r4, r5, r6, pc}
_022386F0:
	add r3, r3, #1
	cmp r3, #4
	add r0, r0, #1
	blt _02238654
_02238700:
	ldr r4, _0223874C @ =0x02249366
	mov r5, #0
_02238708:
	mov r0, r4
	bl ov18_022455B8
	cmp r0, #0
	addne sp, sp, #8
	addne r0, r5, #0xb
	popne {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #3
	add r4, r4, #8
	blt _02238708
	mov r0, #0xe
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223873C: .4byte 0x02249734
_02238740: .4byte 0x0225332C
_02238744: .4byte 0x022492D8
_02238748: .4byte 0x022493B8
_0223874C: .4byte 0x02249366
	arm_func_end ov18_022384DC

	arm_func_start ov18_02238750
ov18_02238750: @ 0x02238750
	push {r4, lr}
	ldr r1, _02238790 @ =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020BD104
	mov r1, #0
_0223876C:
	cmp r0, r4
	moveq r0, r1
	popeq {r4, pc}
	add r1, r1, #1
	cmp r1, #4
	add r0, r0, #1
	blt _0223876C
	mvn r0, #0
	pop {r4, pc}
	.align 2, 0
_02238790: .4byte 0x0225332C
	arm_func_end ov18_02238750

	arm_func_start ov18_02238794
ov18_02238794: @ 0x02238794
	push {r4, lr}
	ldr r1, _022387B4 @ =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020BD104
	add r0, r0, r4
	pop {r4, pc}
	.align 2, 0
_022387B4: .4byte 0x0225332C
	arm_func_end ov18_02238794

	arm_func_start ov18_022387B8
ov18_022387B8: @ 0x022387B8
	push {r3, r4, r5, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _02238878 @ =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #6
	subhi r1, r1, #6
	movls r1, #0
	strh r1, [r0, #4]
	ldr r0, _02238878 @ =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020BD140
	mov r5, r0
	cmp r5, #0x17
	bne _02238804
	bl ov18_02237BA8
	pop {r3, r4, r5, pc}
_02238804:
	ble _02238820
	ldr r0, _02238878 @ =0x0225332C
	rsb r1, r5, #0x1d
	ldrh r2, [r0, #4]
	mov r5, #0
	add r1, r2, r1
	strh r1, [r0, #4]
_02238820:
	bl ov18_022382CC
	cmp r5, #0
	popne {r3, r4, r5, pc}
	ldr r1, _02238878 @ =0x0225332C
	mov r0, #0x37
	ldrh r1, [r1, #4]
	ldr r2, _0223887C @ =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	lsr r1, r3, #0x1f
	add r0, r1, r0, asr #7
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02238A80
	ldr r0, _02238878 @ =0x0225332C
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238878: .4byte 0x0225332C
_0223887C: .4byte 0xE1FC780F
	arm_func_end ov18_022387B8

	arm_func_start ov18_02238880
ov18_02238880: @ 0x02238880
	push {r4, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _0223891C @ =0x0225332C
	mov r1, #0x1d
	ldrh r2, [r0, #4]
	add r2, r2, #6
	strh r2, [r0, #4]
	ldrh r0, [r0, #4]
	bl FUN_020BD140
	cmp r0, #6
	blt _022388BC
	bl ov18_022382CC
	pop {r4, pc}
_022388BC:
	ldr r1, _0223891C @ =0x0225332C
	ldrh r2, [r1, #4]
	sub r0, r2, r0
	strh r0, [r1, #4]
	bl ov18_02237BA8
	ldr r1, _0223891C @ =0x0225332C
	mov r0, #0x37
	ldrh r1, [r1, #4]
	ldr r2, _02238920 @ =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	lsr r1, r3, #0x1f
	add r0, r1, r0, asr #7
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02238A80
	ldr r0, _0223891C @ =0x0225332C
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_0223891C: .4byte 0x0225332C
_02238920: .4byte 0xE1FC780F
	arm_func_end ov18_02238880

	arm_func_start ov18_02238924
ov18_02238924: @ 0x02238924
	push {r4, lr}
	ldr r0, _02238998 @ =0x0225332C
	ldr r1, [r0, #8]
	ldrb r1, [r1, #0x44]
	cmp r1, #0
	popeq {r4, pc}
	ldrh r0, [r0, #4]
	mov r1, #0x1d
	bl FUN_020BD104
	ldr r1, _02238998 @ =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020BD140
	ldr r2, _0223899C @ =0x022493C4
	ldr r1, _022389A0 @ =0x01FF0000
	sub ip, r0, #0x33
	ldrb r0, [r2, r4]
	ldr r2, _022389A4 @ =0x04000010
	and r3, r1, ip, lsl #16
	add r0, ip, r0
	str r3, [r2]
	and r1, r1, r0, lsl #16
	ldr r0, _02238998 @ =0x0225332C
	str r1, [r2, #8]
	ldr r0, [r0, #8]
	mov r1, #0
	strb r1, [r0, #0x44]
	pop {r4, pc}
	.align 2, 0
_02238998: .4byte 0x0225332C
_0223899C: .4byte 0x022493C4
_022389A0: .4byte 0x01FF0000
_022389A4: .4byte 0x04000010
	arm_func_end ov18_02238924

	arm_func_start ov18_022389A8
ov18_022389A8: @ 0x022389A8
	push {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _02238A6C @ =0x022492F4
	add r3, sp, #8
	mov r2, #7
_022389BC:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _022389BC
	ldr r0, _02238A70 @ =0x0225332C
	add r1, sp, #8
	ldrb r2, [r0]
	ldrb r2, [r1, r2]
	cmp r2, #3
	blt _02238A20
	lsl r3, r2, #3
	ldr r1, _02238A74 @ =0x0224937E
	ldr r2, _02238A78 @ =0x02249382
	ldr r0, _02238A7C @ =0x02249380
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #3
	bl ov18_0222B948
	add sp, sp, #0x18
	pop {r3, pc}
_02238A20:
	ldr r1, _02238A74 @ =0x0224937E
	lsl lr, r2, #3
	add ip, r1, r2, lsl #3
	ldrb r2, [r0, #2]
	ldrh r3, [ip, #2]
	mov r0, #0x1d
	ldrh r1, [r1, lr]
	mla r0, r2, r0, r3
	strh r0, [sp, #2]
	ldrh r2, [ip, #4]
	ldrh ip, [ip, #6]
	ldrh r3, [sp, #2]
	mov r0, #1
	strh r1, [sp]
	strh r2, [sp, #4]
	strh ip, [sp, #6]
	bl ov18_0222B948
	add sp, sp, #0x18
	pop {r3, pc}
	.align 2, 0
_02238A6C: .4byte 0x022492F4
_02238A70: .4byte 0x0225332C
_02238A74: .4byte 0x0224937E
_02238A78: .4byte 0x02249382
_02238A7C: .4byte 0x02249380
	arm_func_end ov18_022389A8

	arm_func_start ov18_02238A80
ov18_02238A80: @ 0x02238A80
	push {r4, lr}
	ldr r0, _02238B28 @ =0x0225332C
	ldrb r0, [r0]
	add r0, r0, #0xf5
	and r0, r0, #0xff
	cmp r0, #2
	bhi _02238AA4
	bl ov18_022389A8
	pop {r4, pc}
_02238AA4:
	bl ov18_0223DDCC
	ldr r1, _02238B28 @ =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020BD104
	ldr r1, _02238B28 @ =0x0225332C
	ldrb r2, [r1, #2]
	add r2, r2, r0
	cmp r2, #2
	beq _02238ADC
	cmp r2, #6
	beq _02238AF8
	b _02238B14
_02238ADC:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	movne r0, #2
	strbne r0, [r1]
	moveq r0, #3
	strbeq r0, [r1]
	b _02238B20
_02238AF8:
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	movne r0, #7
	strbne r0, [r1]
	moveq r0, #8
	strbeq r0, [r1]
	b _02238B20
_02238B14:
	ldr r0, _02238B2C @ =0x022493B8
	ldrb r0, [r0, r2]
	strb r0, [r1]
_02238B20:
	bl ov18_022389A8
	pop {r4, pc}
	.align 2, 0
_02238B28: .4byte 0x0225332C
_02238B2C: .4byte 0x022493B8
	arm_func_end ov18_02238A80

	arm_func_start ov18_02238B30
ov18_02238B30: @ 0x02238B30
	push {r3, lr}
	ldr r1, _02238B58 @ =0x0225332C
	ldr r2, _02238B5C @ =0x022493D0
	strb r0, [r1]
	ldrb r0, [r2, r0]
	bl ov18_02238750
	ldr r1, _02238B58 @ =0x0225332C
	strb r0, [r1, #2]
	bl ov18_022389A8
	pop {r3, pc}
	.align 2, 0
_02238B58: .4byte 0x0225332C
_02238B5C: .4byte 0x022493D0
	arm_func_end ov18_02238B30

	arm_func_start ov18_02238B60
ov18_02238B60: @ 0x02238B60
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov18_0223DDCC
	ldr r1, _02238E44 @ =0x0225332C
	mov r4, #0
	ldrb r2, [r1]
	cmp r2, #8
	ldrbeq r0, [r0, #0xf5]
	cmpeq r0, #0
	bne _02238B94
	cmp r5, #0
	cmpne r5, #2
	popeq {r3, r4, r5, pc}
_02238B94:
	cmp r2, #0
	bgt _02238BA4
	beq _02238BC4
	b _02238D28
_02238BA4:
	sub r0, r2, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02238D28
_02238BB4: @ jump table
	b _02238BFC @ case 0
	b _02238C38 @ case 1
	b _02238CA0 @ case 2
	b _02238CA0 @ case 3
_02238BC4:
	cmp r5, #1
	bne _02238BDC
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #0xb
	strb r1, [r0]
	b _02238E24
_02238BDC:
	cmp r5, #3
	movne r4, #2
	bne _02238E24
	ldr r0, _02238E44 @ =0x0225332C
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	b _02238E24
_02238BFC:
	cmp r5, #1
	bne _02238C18
	ldr r0, _02238E44 @ =0x0225332C
	ldrb r1, [r0, #2]
	sub r1, r1, #1
	strb r1, [r0, #2]
	b _02238E24
_02238C18:
	cmp r5, #3
	movne r4, #2
	bne _02238E24
	ldr r0, _02238E44 @ =0x0225332C
	ldr r1, [r0, #8]
	ldrb r1, [r1, #0x42]
	strb r1, [r0]
	b _02238E24
_02238C38:
	cmp r5, #1
	bne _02238C70
	ldr r0, _02238E44 @ =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, r4, r5, pc}
_02238C70:
	cmp r5, #3
	movne r4, #2
	bne _02238E24
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	strh r1, [r0, #4]
	bl ov18_02237BA8
	mov r0, #0
	bl ov18_0223D354
	b _02238E24
_02238CA0:
	ldr r0, _02238E44 @ =0x0225332C
	cmp r5, #1
	ldr r1, [r0, #8]
	strb r2, [r1, #0x42]
	bne _02238CDC
	mov r1, #0xa
	strb r1, [r0]
	mov r1, #3
	strb r1, [r0, #2]
	mov r1, #0x91
	strh r1, [r0, #4]
	bl ov18_02237BA8
	mov r0, #0x37
	bl ov18_0223D354
	b _02238E24
_02238CDC:
	cmp r5, #3
	bne _02238D10
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	pop {r3, r4, r5, pc}
_02238D10:
	cmp r2, #0xc
	moveq r1, #0xd
	strbeq r1, [r0]
	movne r1, #0xc
	strbne r1, [r0]
	b _02238E24
_02238D28:
	cmp r5, #1
	bne _02238D74
	ldr r0, _02238E44 @ =0x0225332C
	ldrb r1, [r0, #2]
	cmp r1, #0
	subne r1, r1, #1
	strbne r1, [r0, #2]
	bne _02238E24
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02238E48 @ =ov18_022387B8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02238E44 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, r4, r5, pc}
_02238D74:
	cmp r5, #3
	bne _02238DC0
	ldr r0, _02238E44 @ =0x0225332C
	ldrb r1, [r0, #2]
	cmp r1, #3
	addlo r1, r1, #1
	strblo r1, [r0, #2]
	blo _02238E24
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02238E4C @ =ov18_02238880
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02238E44 @ =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	pop {r3, r4, r5, pc}
_02238DC0:
	cmp r2, #2
	mov r4, #2
	bne _02238DDC
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #3
	strb r1, [r0]
	b _02238E18
_02238DDC:
	cmp r2, #3
	ldreq r0, _02238E44 @ =0x0225332C
	strbeq r4, [r0]
	beq _02238E18
	cmp r2, #7
	bne _02238E04
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #8
	strb r1, [r0]
	b _02238E18
_02238E04:
	cmp r2, #8
	bne _02238E24
	ldr r0, _02238E44 @ =0x0225332C
	mov r1, #7
	strb r1, [r0]
_02238E18:
	mov r0, #8
	bl ov18_0223E994
	bl ov18_022389A8
_02238E24:
	cmp r4, #2
	popeq {r3, r4, r5, pc}
	mov r0, #8
	bl ov18_0223E994
	cmp r4, #0
	popne {r3, r4, r5, pc}
	bl ov18_02238A80
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238E44: .4byte 0x0225332C
_02238E48: .4byte ov18_022387B8
_02238E4C: .4byte ov18_02238880
	arm_func_end ov18_02238B60

	arm_func_start ov18_02238E50
ov18_02238E50: @ 0x02238E50
	ldr r0, _02238E78 @ =0x0225332C
	ldr r1, _02238E7C @ =0x022492D4
	ldrb r2, [r0]
	ldr r0, [r0, #8]
	ldr ip, _02238E80 @ =ov18_0223D154
	sub r2, r2, #0xb
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bx ip
	.align 2, 0
_02238E78: .4byte 0x0225332C
_02238E7C: .4byte 0x022492D4
_02238E80: .4byte ov18_0223D154
	arm_func_end ov18_02238E50

	arm_func_start ov18_02238E84
ov18_02238E84: @ 0x02238E84
	push {r3, r4, r5, lr}
	ldr r5, _02238ED4 @ =0x0225332C
	mov r4, #0
_02238E90:
	ldr r0, [r5, #8]
	add r1, r0, r4
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _02238EC4
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02238EC4
	bl ov18_02237BA8
_02238EC4:
	add r4, r4, #1
	cmp r4, #4
	blt _02238E90
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238ED4: .4byte 0x0225332C
	arm_func_end ov18_02238E84

	arm_func_start ov18_02238ED8
ov18_02238ED8: @ 0x02238ED8
	stmdb sp!, {r3}
	sub sp, sp, #4
	ldr r1, _02238F94 @ =0x022492D8
	ldr r0, _02238F98 @ =0x0225332C
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb ip, [r0]
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r2, [r1, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #0
	mov r3, #0
	strb r2, [sp, #2]
	strb r0, [sp, #3]
_02238F14:
	ldrb r0, [r1]
	cmp ip, r0
	bne _02238F78
	ldr r0, _02238F98 @ =0x0225332C
	mov r2, #0x14
	ldr r1, [r0, #8]
	tst r3, #1
	add r1, r1, r3
	strb r2, [r1, #4]
	ldr r1, [r0, #8]
	beq _02238F5C
	sub r0, r3, #1
	add r0, r1, r0
	mov r1, #0
	strb r1, [r0, #4]
	add sp, sp, #4
	ldm sp!, {r3}
	bx lr
_02238F5C:
	add r0, r3, #1
	add r0, r1, r0
	mov r1, #0
	strb r1, [r0, #4]
	add sp, sp, #4
	ldm sp!, {r3}
	bx lr
_02238F78:
	add r3, r3, #1
	cmp r3, #4
	add r1, r1, #1
	blt _02238F14
	add sp, sp, #4
	ldm sp!, {r3}
	bx lr
	.align 2, 0
_02238F94: .4byte 0x022492D8
_02238F98: .4byte 0x0225332C
	arm_func_end ov18_02238ED8

	arm_func_start ov18_02238F9C
ov18_02238F9C: @ 0x02238F9C
	push {r4, lr}
	bl ov18_0223DDCC
	mov r4, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	bne _02238FE8
	add r0, r4, #0xc8
	bl FUN_020A2CAC
	cmp r0, #0
	bne _02238FE8
	add r0, r4, #0xcc
	bl FUN_020A2CAC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
_02238FE8:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	bne _02239034
	add r0, r4, #0xc0
	bl FUN_020A2CAC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	add r0, r4, #0xc4
	bl FUN_020A2CAC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	add r0, r4, #0xc0
	add r1, r4, #0xf0
	bl FUN_020A2C30
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
_02239034:
	mov r0, #1
	pop {r4, pc}
	arm_func_end ov18_02238F9C

	arm_func_start ov18_0223903C
ov18_0223903C: @ 0x0223903C
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02239074 @ =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov18_0223D1BC
	ldr r0, _02239078 @ =ov18_0223907C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239074: .4byte 0x0225332C
_02239078: .4byte ov18_0223907C
	arm_func_end ov18_0223903C

	arm_func_start ov18_0223907C
ov18_0223907C: @ 0x0223907C
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239098 @ =ov18_022370B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239098: .4byte ov18_022370B4
	arm_func_end ov18_0223907C

	arm_func_start ov18_0223909C
ov18_0223909C: @ 0x0223909C
	ldr r1, _022390A8 @ =0x0225332C
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_022390A8: .4byte 0x0225332C
	arm_func_end ov18_0223909C

	arm_func_start ov18_022390AC
ov18_022390AC: @ 0x022390AC
	push {r3, lr}
	bl ov18_022390CC
	bl ov18_0222BC1C
	bl ov18_0223E2D0
	ldr r0, _022390C8 @ =ov18_02239160
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022390C8: .4byte ov18_02239160
	arm_func_end ov18_022390AC

	arm_func_start ov18_022390CC
ov18_022390CC: @ 0x022390CC
	push {r3, lr}
	ldr r0, _02239140 @ =0x0224A2E4
	ldr r1, _02239144 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02239148 @ =0x0224A2FC
	ldr r1, _0223914C @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _02239150 @ =0x0224A314
	ldr r1, _02239154 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r2, _02239158 @ =0x04001008
	ldr r1, _0223915C @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02239140: .4byte 0x0224A2E4
_02239144: .4byte 0x020C07EC
_02239148: .4byte 0x0224A2FC
_0223914C: .4byte FUN_020C00B4
_02239150: .4byte 0x0224A314
_02239154: .4byte FUN_020C04EC
_02239158: .4byte 0x04001008
_0223915C: .4byte 0x0400000A
	arm_func_end ov18_022390CC

	arm_func_start ov18_02239160
ov18_02239160: @ 0x02239160
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _022391B0 @ =ov18_022391B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022391B0: .4byte ov18_022391B4
	arm_func_end ov18_02239160

	arm_func_start ov18_022391B4
ov18_022391B4: @ 0x022391B4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r2, #1
	mov ip, #0
	sub r3, r2, #2
	mov r0, #0x44
	mov r1, #5
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _02239200 @ =ov18_02239204
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239200: .4byte ov18_02239204
	arm_func_end ov18_022391B4

	arm_func_start ov18_02239204
ov18_02239204: @ 0x02239204
	push {r3, lr}
	bl ov18_0223922C
	bl ov18_02239230
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239228 @ =ov18_02239234
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239228: .4byte ov18_02239234
	arm_func_end ov18_02239204

	arm_func_start ov18_0223922C
ov18_0223922C: @ 0x0223922C
	bx lr
	arm_func_end ov18_0223922C

	arm_func_start ov18_02239230
ov18_02239230: @ 0x02239230
	bx lr
	arm_func_end ov18_02239230

	arm_func_start ov18_02239234
ov18_02239234: @ 0x02239234
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223926C @ =ov18_02239270
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223926C: .4byte ov18_02239270
	arm_func_end ov18_02239234

	arm_func_start ov18_02239270
ov18_02239270: @ 0x02239270
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _022392C8 @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022392C8: .4byte ov18_0223A6B4
	arm_func_end ov18_02239270

	arm_func_start ov18_022392CC
ov18_022392CC: @ 0x022392CC
	ldr r0, _022392E8 @ =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_022392E8: .4byte 0x027FFFA8
	arm_func_end ov18_022392CC

	arm_func_start ov18_022392EC
ov18_022392EC: @ 0x022392EC
	push {r3, lr}
	ldr r0, _02239320 @ =0x02253338
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239328
	bl ov18_0222BC1C
	mov r0, #0x25
	bl ov18_0222B7C8
	mov r0, #1
	bl ov18_0222AD34
	ldr r0, _02239324 @ =ov18_022393A8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239320: .4byte 0x02253338
_02239324: .4byte ov18_022393A8
	arm_func_end ov18_022392EC

	arm_func_start ov18_02239328
ov18_02239328: @ 0x02239328
	push {r3, lr}
	ldr r0, _02239398 @ =0x0224A328
	ldr r1, _0223939C @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _022393A0 @ =0x04001008
	ldr r1, _022393A4 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02239398: .4byte 0x0224A328
_0223939C: .4byte FUN_020C04EC
_022393A0: .4byte 0x04001008
_022393A4: .4byte 0x0400000A
	arm_func_end ov18_02239328

	arm_func_start ov18_022393A8
ov18_022393A8: @ 0x022393A8
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022393D8 @ =ov18_022393DC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022393D8: .4byte ov18_022393DC
	arm_func_end ov18_022393A8

	arm_func_start ov18_022393DC
ov18_022393DC: @ 0x022393DC
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _02239404 @ =ov18_02239408
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239404: .4byte ov18_02239408
	arm_func_end ov18_022393DC

	arm_func_start ov18_02239408
ov18_02239408: @ 0x02239408
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223942C @ =ov18_02239430
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223942C: .4byte ov18_02239430
	arm_func_end ov18_02239408

	arm_func_start ov18_02239430
ov18_02239430: @ 0x02239430
	push {r3, lr}
	mov r0, #0xa
	bl FUN_020C24A4
	bl ov18_02239614
	bl ov18_02239450
	bl ov18_02239488
	bl ov18_0223948C
	pop {r3, pc}
	arm_func_end ov18_02239430

	arm_func_start ov18_02239450
ov18_02239450: @ 0x02239450
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02239470
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
_02239470:
	bl ov18_022392CC
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02239450

	arm_func_start ov18_02239488
ov18_02239488: @ 0x02239488
	bx lr
	arm_func_end ov18_02239488

	arm_func_start ov18_0223948C
ov18_0223948C: @ 0x0223948C
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022394B4 @ =ov18_022394B8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022394B4: .4byte ov18_022394B8
	arm_func_end ov18_0223948C

	arm_func_start ov18_022394B8
ov18_022394B8: @ 0x022394B8
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022394D4 @ =ov18_022394D8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022394D4: .4byte ov18_022394D8
	arm_func_end ov18_022394B8

	arm_func_start ov18_022394D8
ov18_022394D8: @ 0x022394D8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239544 @ =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239500
	bl ov18_0222B004
_02239500:
	ldr r0, _02239544 @ =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239524
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02239524:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02239548 @ =ov18_0223954C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239544: .4byte 0x02253338
_02239548: .4byte ov18_0223954C
	arm_func_end ov18_022394D8

	arm_func_start ov18_0223954C
ov18_0223954C: @ 0x0223954C
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239608 @ =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239580
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_02239580:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02239608 @ =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _022395B8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022395B8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02239608 @ =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _022395F0
	bl ov18_0222FDA8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223960C @ =ov18_0223B3F4
	bl ov18_0222F6C4
	pop {r3, pc}
_022395F0:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _02239610 @ =ov18_02239704
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239608: .4byte 0x02253338
_0223960C: .4byte ov18_0223B3F4
_02239610: .4byte ov18_02239704
	arm_func_end ov18_0223954C

	arm_func_start ov18_02239614
ov18_02239614: @ 0x02239614
	push {r3, lr}
	bl ov18_0222FDCC
	cmp r0, #2
	beq _02239630
	cmp r0, #4
	beq _02239648
	pop {r3, pc}
_02239630:
	ldr r1, _0223968C @ =0x02253338
	mov r2, #1
	ldr r0, _02239690 @ =ov18_022394B8
	strb r2, [r1]
	bl ov18_0222F6C4
	pop {r3, pc}
_02239648:
	ldr r0, _0223968C @ =0x02253338
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _02239694 @ =ov18_02239698
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223968C: .4byte 0x02253338
_02239690: .4byte ov18_022394B8
_02239694: .4byte ov18_02239698
	arm_func_end ov18_02239614

	arm_func_start ov18_02239698
ov18_02239698: @ 0x02239698
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _022396C0 @ =ov18_022396C4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022396C0: .4byte ov18_022396C4
	arm_func_end ov18_02239698

	arm_func_start ov18_022396C4
ov18_022396C4: @ 0x022396C4
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022396E0 @ =ov18_022394B8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022396E0: .4byte ov18_022394B8
	arm_func_end ov18_022396C4

	arm_func_start ov18_022396E4
ov18_022396E4: @ 0x022396E4
	ldr r0, _02239700 @ =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02239700: .4byte 0x027FFFA8
	arm_func_end ov18_022396E4

	arm_func_start ov18_02239704
ov18_02239704: @ 0x02239704
	push {r3, lr}
	ldr r0, _02239738 @ =0x0225333C
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239740
	bl ov18_0222BC1C
	mov r0, #0x2a
	bl ov18_0222B7C8
	mov r0, #2
	bl ov18_0222AD34
	ldr r0, _0223973C @ =ov18_022397C0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239738: .4byte 0x0225333C
_0223973C: .4byte ov18_022397C0
	arm_func_end ov18_02239704

	arm_func_start ov18_02239740
ov18_02239740: @ 0x02239740
	push {r3, lr}
	ldr r0, _022397B0 @ =0x0224A33C
	ldr r1, _022397B4 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _022397B8 @ =0x04001008
	ldr r1, _022397BC @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_022397B0: .4byte 0x0224A33C
_022397B4: .4byte FUN_020C04EC
_022397B8: .4byte 0x04001008
_022397BC: .4byte 0x0400000A
	arm_func_end ov18_02239740

	arm_func_start ov18_022397C0
ov18_022397C0: @ 0x022397C0
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022397F0 @ =ov18_022397F4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022397F0: .4byte ov18_022397F4
	arm_func_end ov18_022397C0

	arm_func_start ov18_022397F4
ov18_022397F4: @ 0x022397F4
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _0223981C @ =ov18_02239820
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223981C: .4byte ov18_02239820
	arm_func_end ov18_022397F4

	arm_func_start ov18_02239820
ov18_02239820: @ 0x02239820
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02239844 @ =ov18_02239848
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239844: .4byte ov18_02239848
	arm_func_end ov18_02239820

	arm_func_start ov18_02239848
ov18_02239848: @ 0x02239848
	push {r3, lr}
	mov r0, #0xa
	bl FUN_020C24A4
	bl ov18_02239A10
	bl ov18_02239868
	bl ov18_022398A0
	bl ov18_022398A4
	pop {r3, pc}
	arm_func_end ov18_02239848

	arm_func_start ov18_02239868
ov18_02239868: @ 0x02239868
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02239888
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
_02239888:
	bl ov18_022396E4
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02239868

	arm_func_start ov18_022398A0
ov18_022398A0: @ 0x022398A0
	bx lr
	arm_func_end ov18_022398A0

	arm_func_start ov18_022398A4
ov18_022398A4: @ 0x022398A4
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022398CC @ =ov18_022398D0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022398CC: .4byte ov18_022398D0
	arm_func_end ov18_022398A4

	arm_func_start ov18_022398D0
ov18_022398D0: @ 0x022398D0
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022398EC @ =ov18_022398F0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_022398EC: .4byte ov18_022398F0
	arm_func_end ov18_022398D0

	arm_func_start ov18_022398F0
ov18_022398F0: @ 0x022398F0
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223994C @ =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223992C
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223992C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02239950 @ =ov18_02239954
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223994C: .4byte 0x0225333C
_02239950: .4byte ov18_02239954
	arm_func_end ov18_022398F0

	arm_func_start ov18_02239954
ov18_02239954: @ 0x02239954
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239A04 @ =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239988
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_02239988:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02239A04 @ =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022399C0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022399C0:
	bl ov18_0222FDA8
	ldr r0, _02239A04 @ =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022399EC
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02239A08 @ =ov18_0223B3F4
	bl ov18_0222F6C4
	pop {r3, pc}
_022399EC:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _02239A0C @ =ov18_02239B34
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239A04: .4byte 0x0225333C
_02239A08: .4byte ov18_0223B3F4
_02239A0C: .4byte ov18_02239B34
	arm_func_end ov18_02239954

	arm_func_start ov18_02239A10
ov18_02239A10: @ 0x02239A10
	push {r3, lr}
	bl ov18_0222FDCC
	cmp r0, #3
	beq _02239A34
	cmp r0, #4
	beq _02239A54
	cmp r0, #5
	beq _02239A98
	pop {r3, pc}
_02239A34:
	ldr r0, _02239ADC @ =0x0225333C
	mov r1, #1
	strb r1, [r0]
	bl ov18_0223E9FC
	bl ov18_0222FE88
	ldr r0, _02239AE0 @ =ov18_022398D0
	bl ov18_0222F6C4
	pop {r3, pc}
_02239A54:
	ldr r0, _02239ADC @ =0x0225333C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _02239AE4 @ =ov18_02239AE8
	bl ov18_0222F6C4
	pop {r3, pc}
_02239A98:
	ldr r0, _02239ADC @ =0x0225333C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _02239AE4 @ =ov18_02239AE8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239ADC: .4byte 0x0225333C
_02239AE0: .4byte ov18_022398D0
_02239AE4: .4byte ov18_02239AE8
	arm_func_end ov18_02239A10

	arm_func_start ov18_02239AE8
ov18_02239AE8: @ 0x02239AE8
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02239B10 @ =ov18_02239B14
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239B10: .4byte ov18_02239B14
	arm_func_end ov18_02239AE8

	arm_func_start ov18_02239B14
ov18_02239B14: @ 0x02239B14
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239B30 @ =ov18_022398D0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239B30: .4byte ov18_022398D0
	arm_func_end ov18_02239B14

	arm_func_start ov18_02239B34
ov18_02239B34: @ 0x02239B34
	push {r3, lr}
	ldr r0, _02239B68 @ =0x02253340
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239B70
	bl ov18_0222BC1C
	mov r0, #0x26
	bl ov18_0222B7C8
	mov r0, #0x10
	bl ov18_0223E994
	ldr r0, _02239B6C @ =ov18_02239BF0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239B68: .4byte 0x02253340
_02239B6C: .4byte ov18_02239BF0
	arm_func_end ov18_02239B34

	arm_func_start ov18_02239B70
ov18_02239B70: @ 0x02239B70
	push {r3, lr}
	ldr r0, _02239BE0 @ =0x0224A350
	ldr r1, _02239BE4 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02239BE8 @ =0x04001008
	ldr r1, _02239BEC @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02239BE0: .4byte 0x0224A350
_02239BE4: .4byte FUN_020C04EC
_02239BE8: .4byte 0x04001008
_02239BEC: .4byte 0x0400000A
	arm_func_end ov18_02239B70

	arm_func_start ov18_02239BF0
ov18_02239BF0: @ 0x02239BF0
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02239C20 @ =ov18_02239C24
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239C20: .4byte ov18_02239C24
	arm_func_end ov18_02239BF0

	arm_func_start ov18_02239C24
ov18_02239C24: @ 0x02239C24
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02239C44 @ =ov18_02239C48
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239C44: .4byte ov18_02239C48
	arm_func_end ov18_02239C24

	arm_func_start ov18_02239C48
ov18_02239C48: @ 0x02239C48
	push {r3, lr}
	bl ov18_02239D08
	bl ov18_02239C58
	pop {r3, pc}
	arm_func_end ov18_02239C48

	arm_func_start ov18_02239C58
ov18_02239C58: @ 0x02239C58
	bx lr
	arm_func_end ov18_02239C58

	arm_func_start ov18_02239C5C
ov18_02239C5C: @ 0x02239C5C
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02239C94 @ =ov18_02239C98
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239C94: .4byte ov18_02239C98
	arm_func_end ov18_02239C5C

	arm_func_start ov18_02239C98
ov18_02239C98: @ 0x02239C98
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _02239D04 @ =ov18_0223C21C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239D04: .4byte ov18_0223C21C
	arm_func_end ov18_02239C98

	arm_func_start ov18_02239D08
ov18_02239D08: @ 0x02239D08
	push {r3, lr}
	ldr r0, _02239D34 @ =0x02253340
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	poplo {r3, pc}
	ldr r0, _02239D38 @ =ov18_02239C5C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239D34: .4byte 0x02253340
_02239D38: .4byte ov18_02239C5C
	arm_func_end ov18_02239D08

	arm_func_start ov18_02239D3C
ov18_02239D3C: @ 0x02239D3C
	ldr r0, _02239D58 @ =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02239D58: .4byte 0x027FFFA8
	arm_func_end ov18_02239D3C

	arm_func_start ov18_02239D5C
ov18_02239D5C: @ 0x02239D5C
	push {r3, lr}
	ldr r0, _02239DB0 @ =0x02253344
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239DB8
	bl ov18_0222BC1C
	mov r0, #0x37
	sub r1, r0, #0x38
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0x24
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _02239DB4 @ =ov18_02239E60
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239DB0: .4byte 0x02253344
_02239DB4: .4byte ov18_02239E60
	arm_func_end ov18_02239D5C

	arm_func_start ov18_02239DB8
ov18_02239DB8: @ 0x02239DB8
	push {r3, lr}
	ldr r0, _02239E40 @ =0x0224A364
	ldr r1, _02239E44 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02239E48 @ =0x0224A37C
	ldr r1, _02239E4C @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _02239E50 @ =0x0224A394
	ldr r1, _02239E54 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _02239E58 @ =0x04001008
	ldr r1, _02239E5C @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_02239E40: .4byte 0x0224A364
_02239E44: .4byte 0x020C07EC
_02239E48: .4byte 0x0224A37C
_02239E4C: .4byte FUN_020C00B4
_02239E50: .4byte 0x0224A394
_02239E54: .4byte FUN_020C04EC
_02239E58: .4byte 0x04001008
_02239E5C: .4byte 0x0400000A
	arm_func_end ov18_02239DB8

	arm_func_start ov18_02239E60
ov18_02239E60: @ 0x02239E60
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02239EB0 @ =ov18_02239EB4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239EB0: .4byte ov18_02239EB4
	arm_func_end ov18_02239E60

	arm_func_start ov18_02239EB4
ov18_02239EB4: @ 0x02239EB4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222FD3C
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _02239EF0 @ =ov18_02239EF4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239EF0: .4byte ov18_02239EF4
	arm_func_end ov18_02239EB4

	arm_func_start ov18_02239EF4
ov18_02239EF4: @ 0x02239EF4
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02239F18 @ =ov18_02239F1C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239F18: .4byte ov18_02239F1C
	arm_func_end ov18_02239EF4

	arm_func_start ov18_02239F1C
ov18_02239F1C: @ 0x02239F1C
	push {r3, lr}
	mov r0, #0xa
	bl FUN_020C24A4
	bl ov18_0223A100
	bl ov18_02239F3C
	bl ov18_02239F74
	bl ov18_02239F78
	pop {r3, pc}
	arm_func_end ov18_02239F1C

	arm_func_start ov18_02239F3C
ov18_02239F3C: @ 0x02239F3C
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02239F5C
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
_02239F5C:
	bl ov18_02239D3C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_02239F3C

	arm_func_start ov18_02239F74
ov18_02239F74: @ 0x02239F74
	bx lr
	arm_func_end ov18_02239F74

	arm_func_start ov18_02239F78
ov18_02239F78: @ 0x02239F78
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _02239FA0 @ =ov18_02239FA4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239FA0: .4byte ov18_02239FA4
	arm_func_end ov18_02239F78

	arm_func_start ov18_02239FA4
ov18_02239FA4: @ 0x02239FA4
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02239FC0 @ =ov18_02239FC4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_02239FC0: .4byte ov18_02239FC4
	arm_func_end ov18_02239FA4

	arm_func_start ov18_02239FC4
ov18_02239FC4: @ 0x02239FC4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223A030 @ =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239FEC
	bl ov18_0222B004
_02239FEC:
	ldr r0, _0223A030 @ =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A010
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223A010:
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223A034 @ =ov18_0223A038
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A030: .4byte 0x02253344
_0223A034: .4byte ov18_0223A038
	arm_func_end ov18_02239FC4

	arm_func_start ov18_0223A038
ov18_0223A038: @ 0x0223A038
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223A0F4 @ =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A06C
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_0223A06C:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223A0F4 @ =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A0A4
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_0223A0A4:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223A0F4 @ =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A0DC
	bl ov18_0222FDA8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223A0F8 @ =ov18_0223B3F4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223A0DC:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223A0FC @ =ov18_022392EC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A0F4: .4byte 0x02253344
_0223A0F8: .4byte ov18_0223B3F4
_0223A0FC: .4byte ov18_022392EC
	arm_func_end ov18_0223A038

	arm_func_start ov18_0223A100
ov18_0223A100: @ 0x0223A100
	push {r3, lr}
	bl ov18_0222FDCC
	cmp r0, #1
	beq _0223A11C
	cmp r0, #4
	beq _0223A134
	pop {r3, pc}
_0223A11C:
	ldr r1, _0223A178 @ =0x02253344
	mov r2, #1
	ldr r0, _0223A17C @ =ov18_02239FA4
	strb r2, [r1]
	bl ov18_0222F6C4
	pop {r3, pc}
_0223A134:
	ldr r0, _0223A178 @ =0x02253344
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _0223A180 @ =ov18_0223A184
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A178: .4byte 0x02253344
_0223A17C: .4byte ov18_02239FA4
_0223A180: .4byte ov18_0223A184
	arm_func_end ov18_0223A100

	arm_func_start ov18_0223A184
ov18_0223A184: @ 0x0223A184
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _0223A1AC @ =ov18_0223A1B0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A1AC: .4byte ov18_0223A1B0
	arm_func_end ov18_0223A184

	arm_func_start ov18_0223A1B0
ov18_0223A1B0: @ 0x0223A1B0
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223A1CC @ =ov18_02239FA4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A1CC: .4byte ov18_02239FA4
	arm_func_end ov18_0223A1B0

	arm_func_start ov18_0223A1D0
ov18_0223A1D0: @ 0x0223A1D0
	push {r3, lr}
	ldr r0, _0223A230 @ =0x02253348
	mov r1, #0
	strh r1, [r0, #2]
	strb r1, [r0]
	bl ov18_0223A238
	mov r0, #0x33
	sub r1, r0, #0x34
	mov r2, #0
	bl ov18_0222B594
	bl ov18_0222BC1C
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0x33
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	bl ov18_0223D8DC
	bl ov18_0223D944
	mov r0, #0xa
	bl ov18_0223E994
	ldr r0, _0223A234 @ =ov18_0223A2E0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A230: .4byte 0x02253348
_0223A234: .4byte ov18_0223A2E0
	arm_func_end ov18_0223A1D0

	arm_func_start ov18_0223A238
ov18_0223A238: @ 0x0223A238
	push {r3, lr}
	ldr r0, _0223A2C0 @ =0x0224A3A8
	ldr r1, _0223A2C4 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223A2C8 @ =0x0224A3C0
	ldr r1, _0223A2CC @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223A2D0 @ =0x0224A3D8
	ldr r1, _0223A2D4 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _0223A2D8 @ =0x04001008
	ldr r1, _0223A2DC @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223A2C0: .4byte 0x0224A3A8
_0223A2C4: .4byte 0x020C07EC
_0223A2C8: .4byte 0x0224A3C0
_0223A2CC: .4byte FUN_020C00B4
_0223A2D0: .4byte 0x0224A3D8
_0223A2D4: .4byte FUN_020C04EC
_0223A2D8: .4byte 0x04001008
_0223A2DC: .4byte 0x0400000A
	arm_func_end ov18_0223A238

	arm_func_start ov18_0223A2E0
ov18_0223A2E0: @ 0x0223A2E0
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223A330 @ =ov18_0223A334
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A330: .4byte ov18_0223A334
	arm_func_end ov18_0223A2E0

	arm_func_start ov18_0223A334
ov18_0223A334: @ 0x0223A334
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _0223A36C @ =ov18_0223A370
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A36C: .4byte ov18_0223A370
	arm_func_end ov18_0223A334

	arm_func_start ov18_0223A370
ov18_0223A370: @ 0x0223A370
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223A394 @ =ov18_0223A398
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A394: .4byte ov18_0223A398
	arm_func_end ov18_0223A370

	arm_func_start ov18_0223A398
ov18_0223A398: @ 0x0223A398
	push {r3, lr}
	bl ov18_0223A4D8
	bl ov18_0223A4FC
	bl ov18_0223A500
	bl ov18_0223A3B0
	pop {r3, pc}
	arm_func_end ov18_0223A398

	arm_func_start ov18_0223A3B0
ov18_0223A3B0: @ 0x0223A3B0
	push {r3, lr}
	sub sp, sp, #8
	ldr r0, _0223A4CC @ =0x02253348
	ldrh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	ldrh r0, [r0, #2]
	cmp r0, #0x12c
	addlo sp, sp, #8
	poplo {r3, pc}
	bl ov18_0223E9FC
	add r0, sp, #4
	bl ov18_0223DAE0
	cmp r0, #0
	bne _0223A430
	ldr r0, _0223A4CC @ =0x02253348
	mov r1, #1
	mov r3, #2
	strb r3, [r0]
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xf
	str ip, [sp]
	bl ov18_0223FC48
	mov r0, #0x12
	bl ov18_0223E994
	bl ov18_0222B0C0
	ldr r0, _0223A4D0 @ =ov18_0223A668
	bl ov18_0222F6C4
	add sp, sp, #8
	pop {r3, pc}
_0223A430:
	cmp r0, #0
	mov r2, #0
	ble _0223A45C
	ldr r3, [sp, #4]
_0223A440:
	ldrb r1, [r3, #0x28]
	cmp r1, #2
	bne _0223A45C
	add r2, r2, #1
	cmp r2, r0
	add r3, r3, #0x2a
	blt _0223A440
_0223A45C:
	cmp r2, r0
	bne _0223A4A8
	ldr r0, _0223A4CC @ =0x02253348
	mov r1, #1
	mov r3, #3
	strb r3, [r0]
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str ip, [sp]
	bl ov18_0223FC48
	mov r0, #0x12
	bl ov18_0223E994
	bl ov18_0222B0C0
	ldr r0, _0223A4D0 @ =ov18_0223A668
	bl ov18_0222F6C4
	add sp, sp, #8
	pop {r3, pc}
_0223A4A8:
	ldr r1, _0223A4CC @ =0x02253348
	mov r2, #1
	mov r0, #0xf
	strb r2, [r1]
	bl ov18_0223E994
	ldr r0, _0223A4D4 @ =ov18_0223A52C
	bl ov18_0222F6C4
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0223A4CC: .4byte 0x02253348
_0223A4D0: .4byte ov18_0223A668
_0223A4D4: .4byte ov18_0223A52C
	arm_func_end ov18_0223A3B0

	arm_func_start ov18_0223A4D8
ov18_0223A4D8: @ 0x0223A4D8
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0223E9FC
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_0223A4D8

	arm_func_start ov18_0223A4FC
ov18_0223A4FC: @ 0x0223A4FC
	bx lr
	arm_func_end ov18_0223A4FC

	arm_func_start ov18_0223A500
ov18_0223A500: @ 0x0223A500
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223A528 @ =ov18_0223A52C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A528: .4byte ov18_0223A52C
	arm_func_end ov18_0223A500

	arm_func_start ov18_0223A52C
ov18_0223A52C: @ 0x0223A52C
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223A548 @ =ov18_0223A54C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A548: .4byte ov18_0223A54C
	arm_func_end ov18_0223A52C

	arm_func_start ov18_0223A54C
ov18_0223A54C: @ 0x0223A54C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223A598 @ =ov18_0223A59C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A598: .4byte ov18_0223A59C
	arm_func_end ov18_0223A54C

	arm_func_start ov18_0223A59C
ov18_0223A59C: @ 0x0223A59C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
_0223A5CC:
	bl ov18_0223DA44
	cmp r0, #0
	beq _0223A5CC
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223A65C @ =0x02253348
	ldrb r0, [r0]
	cmp r0, #1
	beq _0223A638
	bl ov18_0223D910
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	bl ov18_0223E1F0
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223A660 @ =ov18_0223B3F4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223A638:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _0223A664 @ =ov18_02233818
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A65C: .4byte 0x02253348
_0223A660: .4byte ov18_0223B3F4
_0223A664: .4byte ov18_02233818
	arm_func_end ov18_0223A59C

	arm_func_start ov18_0223A668
ov18_0223A668: @ 0x0223A668
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _0223A690 @ =ov18_0223A694
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A690: .4byte ov18_0223A694
	arm_func_end ov18_0223A668

	arm_func_start ov18_0223A694
ov18_0223A694: @ 0x0223A694
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223A6B0 @ =ov18_0223A52C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A6B0: .4byte ov18_0223A52C
	arm_func_end ov18_0223A694

	arm_func_start ov18_0223A6B4
ov18_0223A6B4: @ 0x0223A6B4
	push {r3, lr}
	mov r0, #0x20
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0223A70C @ =0x0225334C
	mov r2, #0
	str r0, [r1, #4]
	strb r2, [r0, #0x1d]
	bl ov18_0223A714
	mov r0, #1
	bl ov18_0222BBC0
	mov r0, #0x2f
	sub r1, r0, #0x30
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0
	bl ov18_0222B740
	bl ov18_0223A824
	bl ov18_0223AE94
	ldr r0, _0223A710 @ =ov18_0223A92C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A70C: .4byte 0x0225334C
_0223A710: .4byte ov18_0223A92C
	arm_func_end ov18_0223A6B4

	arm_func_start ov18_0223A714
ov18_0223A714: @ 0x0223A714
	push {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _0223A7F4 @ =0x022493E8
	add r3, sp, #0
	mov r2, #0xb
_0223A728:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0223A728
	ldr r0, _0223A7F8 @ =0x0224A3EC
	ldr r1, _0223A7FC @ =0x020C0160
	bl ov18_0222B700
	ldr r0, _0223A800 @ =0x0224A400
	ldr r1, _0223A804 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223A808 @ =0x0224A418
	ldr r1, _0223A80C @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223A810 @ =0x0224A430
	ldr r1, _0223A814 @ =FUN_020C04EC
	bl ov18_0222B700
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r2, _0223A818 @ =0x0225334C
	mov r1, #0x10
	ldr r2, [r2, #4]
	str r0, [r2]
	mov r0, #1
	bl ov18_02244C84
	ldr r2, _0223A81C @ =0x04001008
	ldr r1, _0223A820 @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	pop {r3, pc}
	.align 2, 0
_0223A7F4: .4byte 0x022493E8
_0223A7F8: .4byte 0x0224A3EC
_0223A7FC: .4byte 0x020C0160
_0223A800: .4byte 0x0224A400
_0223A804: .4byte 0x020C07EC
_0223A808: .4byte 0x0224A418
_0223A80C: .4byte FUN_020C00B4
_0223A810: .4byte 0x0224A430
_0223A814: .4byte FUN_020C04EC
_0223A818: .4byte 0x0225334C
_0223A81C: .4byte 0x04001008
_0223A820: .4byte 0x0400000A
	arm_func_end ov18_0223A714

	arm_func_start ov18_0223A824
ov18_0223A824: @ 0x0223A824
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, #0
	ldr r6, _0223A920 @ =0x022493FE
	ldr r5, _0223A924 @ =0x022493DC
	ldr r4, _0223A928 @ =0x0225334C
	mov fp, sl
	mvn r7, #0
	mov r8, #3
_0223A844:
	mov r0, sl
	bl ov18_0223E1D8
	mov sb, r0
	cmp sb, #0xff
	moveq sb, r8
	beq _0223A8B8
	mov r0, fp
	mov r1, #0x11
	mov r2, #1
	bl ov18_02243F8C
	ldr r1, [r4, #4]
	add r3, sl, #3
	add r1, r1, sl, lsl #2
	str r0, [r1, #0x10]
	lsl r2, r3, #2
	ldr r0, [r4, #4]
	add r3, r6, r3, lsl #2
	add r0, r0, sl, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl ov18_02243DE4
_0223A8B8:
	ldrb r1, [r5, sb]
	mov r0, #0
	mov r2, #1
	bl ov18_02243F8C
	ldr r1, [r4, #4]
	lsl r2, sl, #2
	add r1, r1, sl, lsl #2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r3, r6, sl, lsl #2
	add r0, r0, sl, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #4]
	mov r1, r7
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #4]
	mov r2, #3
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #3
	blt _0223A844
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223A920: .4byte 0x022493FE
_0223A924: .4byte 0x022493DC
_0223A928: .4byte 0x0225334C
	arm_func_end ov18_0223A824

	arm_func_start ov18_0223A92C
ov18_0223A92C: @ 0x0223A92C
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _0223A97C @ =ov18_0223A980
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A97C: .4byte ov18_0223A980
	arm_func_end ov18_0223A92C

	arm_func_start ov18_0223A980
ov18_0223A980: @ 0x0223A980
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _0223A9B8 @ =ov18_0223A9BC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A9B8: .4byte ov18_0223A9BC
	arm_func_end ov18_0223A980

	arm_func_start ov18_0223A9BC
ov18_0223A9BC: @ 0x0223A9BC
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0223F084
	cmp r0, #1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223A9EC @ =ov18_0223A9F0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223A9EC: .4byte ov18_0223A9F0
	arm_func_end ov18_0223A9BC

	arm_func_start ov18_0223A9F0
ov18_0223A9F0: @ 0x0223A9F0
	push {r3, lr}
	bl ov18_0223AA04
	bl ov18_0223AAF8
	bl ov18_0223AAFC
	pop {r3, pc}
	arm_func_end ov18_0223A9F0

	arm_func_start ov18_0223AA04
ov18_0223AA04: @ 0x0223AA04
	push {r3, r4, r5, lr}
	ldr r5, _0223AAF0 @ =0x02249416
	mov r4, #0
_0223AA10:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0223AA38
	mov r0, #1
	bl ov18_0222B048
	ldr r0, _0223AAF4 @ =0x0225334C
	strb r4, [r0]
	bl ov18_0223AE94
	pop {r3, r4, r5, pc}
_0223AA38:
	add r4, r4, #1
	cmp r4, #7
	add r5, r5, #8
	blo _0223AA10
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223AA64
	mov r0, #1
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_0223AA64:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223AA80
	mov r0, #0
	bl ov18_0222B048
	pop {r3, r4, r5, pc}
_0223AA80:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0223AA9C
	mov r0, #1
	bl ov18_0223AF10
	pop {r3, r4, r5, pc}
_0223AA9C:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0223AAB8
	mov r0, #3
	bl ov18_0223AF10
	pop {r3, r4, r5, pc}
_0223AAB8:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0223AAD4
	mov r0, #0
	bl ov18_0223AF10
	pop {r3, r4, r5, pc}
_0223AAD4:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #2
	bl ov18_0223AF10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223AAF0: .4byte 0x02249416
_0223AAF4: .4byte 0x0225334C
	arm_func_end ov18_0223AA04

	arm_func_start ov18_0223AAF8
ov18_0223AAF8: @ 0x0223AAF8
	bx lr
	arm_func_end ov18_0223AAF8

	arm_func_start ov18_0223AAFC
ov18_0223AAFC: @ 0x0223AAFC
	push {r3, r4, lr}
	sub sp, sp, #4
	bl ov18_0222B034
	cmp r0, #0
	beq _0223AB20
	cmp r0, #1
	beq _0223AB68
	add sp, sp, #4
	pop {r3, r4, pc}
_0223AB20:
	bl ov18_0222F75C
	cmp r0, #0
	beq _0223AB38
	cmp r0, #1
	beq _0223AB54
	b _0223AC0C
_0223AB38:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223AC1C @ =0x0225334C
	mov r1, #2
	ldr r0, [r0, #4]
	strb r1, [r0, #0x1d]
	b _0223AC0C
_0223AB54:
	bl ov18_0222B0C0
	ldr r0, _0223AC20 @ =ov18_0222FEE8
	bl ov18_0222F6C4
	add sp, sp, #4
	pop {r3, r4, pc}
_0223AB68:
	ldr r0, _0223AC1C @ =0x0225334C
	mov r2, #1
	ldr r1, [r0, #4]
	strb r2, [r1, #0x1d]
	ldrb r0, [r0]
	cmp r0, #4
	blo _0223ABF4
	sub r4, r0, #4
	mov r0, r4
	bl ov18_0223E1D8
	cmp r0, #0xff
	bne _0223ABB0
	mov r0, #9
	bl ov18_0223E994
	mvn r0, #0
	bl ov18_0222B068
	add sp, sp, #4
	pop {r3, r4, pc}
_0223ABB0:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0222F74C
	ldr r1, _0223AC24 @ =0x02249488
	add ip, r4, #1
	ldrsb r3, [r1, r0]
	mov r0, #0x46
	mov r1, #0
	mov r2, #1
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0223B104
	bl ov18_0222B0C0
	ldr r0, _0223AC28 @ =ov18_0223B194
	bl ov18_0222F6C4
	add sp, sp, #4
	pop {r3, r4, pc}
_0223ABF4:
	cmp r0, #2
	bhi _0223AC00
	bl ov18_0223E1F0
_0223AC00:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223B324
_0223AC0C:
	ldr r0, _0223AC2C @ =ov18_0223AC30
	bl ov18_0222F6C4
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223AC1C: .4byte 0x0225334C
_0223AC20: .4byte ov18_0222FEE8
_0223AC24: .4byte 0x02249488
_0223AC28: .4byte ov18_0223B194
_0223AC2C: .4byte ov18_0223AC30
	arm_func_end ov18_0223AAFC

	arm_func_start ov18_0223AC30
ov18_0223AC30: @ 0x0223AC30
	push {r3, lr}
	ldr r0, _0223AC64 @ =0x0225334C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _0223AC4C
	bl ov18_0223EF7C
_0223AC4C:
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223AC68 @ =ov18_0223AC6C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223AC64: .4byte 0x0225334C
_0223AC68: .4byte ov18_0223AC6C
	arm_func_end ov18_0223AC30

	arm_func_start ov18_0223AC6C
ov18_0223AC6C: @ 0x0223AC6C
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223ACE8 @ =0x0225334C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #1
	bne _0223ACB4
	ldrb r0, [r0]
	cmp r0, #3
	beq _0223ACB0
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	beq _0223ACB4
_0223ACB0:
	bl ov18_0222B004
_0223ACB4:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223ACEC @ =ov18_0223ACF0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223ACE8: .4byte 0x0225334C
_0223ACEC: .4byte ov18_0223ACF0
	arm_func_end ov18_0223AC6C

	arm_func_start ov18_0223ACF0
ov18_0223ACF0: @ 0x0223ACF0
	push {r3, r4, r5, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, r4, r5, pc}
	bl ov18_0223F4A4
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r4, _0223AE74 @ =0x0225334C
	mov r5, #0
_0223AD34:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0223AD4C
	bl ov18_02243B3C
_0223AD4C:
	add r5, r5, #1
	cmp r5, #3
	blo _0223AD34
	ldr r4, _0223AE74 @ =0x0225334C
	mov r5, #0
_0223AD60:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0223AD78
	bl ov18_02243B3C
_0223AD78:
	add r5, r5, #1
	cmp r5, #3
	blo _0223AD60
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _0223AE74 @ =0x0225334C
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov18_0224382C
	ldr r0, _0223AE78 @ =0x0224A444
	ldr r1, _0223AE7C @ =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _0223AE74 @ =0x0225334C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #2
	bne _0223ADEC
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223AE80 @ =ov18_02230228
	bl ov18_0222F6C4
	b _0223AE68
_0223ADEC:
	ldrb r0, [r0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0223AE68
_0223ADFC: @ jump table
	b _0223AE0C @ case 0
	b _0223AE0C @ case 1
	b _0223AE0C @ case 2
	b _0223AE54 @ case 3
_0223AE0C:
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	bne _0223AE34
	ldr r0, _0223AE84 @ =ov18_0223B3F4
	bl ov18_0222F6C4
	b _0223AE68
_0223AE34:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	mov r0, #0
	bl ov18_0223909C
	ldr r0, _0223AE88 @ =ov18_02236BE0
	bl ov18_0222F6C4
	b _0223AE68
_0223AE54:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223AE8C @ =ov18_0223C67C
	bl ov18_0222F6C4
_0223AE68:
	ldr r0, _0223AE90 @ =0x02253350
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223AE74: .4byte 0x0225334C
_0223AE78: .4byte 0x0224A444
_0223AE7C: .4byte 0x020C0160
_0223AE80: .4byte ov18_02230228
_0223AE84: .4byte ov18_0223B3F4
_0223AE88: .4byte ov18_02236BE0
_0223AE8C: .4byte ov18_0223C67C
_0223AE90: .4byte 0x02253350
	arm_func_end ov18_0223ACF0

	arm_func_start ov18_0223AE94
ov18_0223AE94: @ 0x0223AE94
	push {r3, lr}
	ldr r0, _0223AEFC @ =0x0225334C
	ldrb r2, [r0]
	cmp r2, #4
	bhs _0223AED4
	lsl ip, r2, #3
	ldr r0, _0223AF00 @ =0x0224944E
	ldr r1, _0223AF04 @ =0x02249452
	ldr r2, _0223AF08 @ =0x02249450
	ldr r3, _0223AF0C @ =0x02249454
	ldrh r0, [r0, ip]
	ldrh r1, [r1, ip]
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_0222BA04
	pop {r3, pc}
_0223AED4:
	ldr r1, _0223AF00 @ =0x0224944E
	lsl r3, r2, #3
	ldr r2, _0223AF04 @ =0x02249452
	ldr r0, _0223AF08 @ =0x02249450
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #0
	bl ov18_0222B948
	pop {r3, pc}
	.align 2, 0
_0223AEFC: .4byte 0x0225334C
_0223AF00: .4byte 0x0224944E
_0223AF04: .4byte 0x02249452
_0223AF08: .4byte 0x02249450
_0223AF0C: .4byte 0x02249454
	arm_func_end ov18_0223AE94

	arm_func_start ov18_0223AF10
ov18_0223AF10: @ 0x0223AF10
	push {r3, lr}
	ldr r2, _0223B100 @ =0x0225334C
	mov r1, #1
	ldrb r3, [r2]
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _0223B0E8
_0223AF2C: @ jump table
	b _0223AF48 @ case 0
	b _0223AF88 @ case 1
	b _0223AFC8 @ case 2
	b _0223B008 @ case 3
	b _0223B030 @ case 4
	b _0223B070 @ case 5
	b _0223B0AC @ case 6
_0223AF48:
	ldr r3, [r2, #4]
	mov ip, #0
	cmp r0, #0
	strb ip, [r3, #0x1c]
	moveq r0, #2
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	strbeq r1, [r2]
	beq _0223B0E8
	cmp r0, #1
	moveq r0, #3
	strbeq r0, [r2]
	movne r0, #4
	strbne r0, [r2]
	b _0223B0E8
_0223AF88:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #0
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #2
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	moveq r0, #3
	strbeq r0, [r2]
	movne r0, #5
	strbne r0, [r2]
	b _0223B0E8
_0223AFC8:
	ldr r3, [r2, #4]
	mov ip, #2
	strb ip, [r3, #0x1c]
	cmp r0, #0
	strbeq r1, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #0
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	moveq r0, #3
	strbeq r0, [r2]
	movne r0, #6
	strbne r0, [r2]
	b _0223B0E8
_0223B008:
	ldr r3, [r2, #4]
	cmp r0, #1
	ldrb ip, [r3, #0x1c]
	add r3, ip, #4
	strbeq r3, [r2]
	beq _0223B0E8
	cmp r0, #3
	strbeq ip, [r2]
	movne r1, #0
	b _0223B0E8
_0223B030:
	ldr r3, [r2, #4]
	mov ip, #0
	cmp r0, #0
	strb ip, [r3, #0x1c]
	moveq r0, #6
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #5
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	strbeq ip, [r2]
	movne r0, #3
	strbne r0, [r2]
	b _0223B0E8
_0223B070:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #4
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #6
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	strbeq r1, [r2]
	movne r0, #3
	strbne r0, [r2]
	b _0223B0E8
_0223B0AC:
	ldr r3, [r2, #4]
	mov ip, #2
	cmp r0, #0
	strb ip, [r3, #0x1c]
	moveq r0, #5
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #4
	strbeq r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	strbeq ip, [r2]
	movne r0, #3
	strbne r0, [r2]
_0223B0E8:
	cmp r1, #0
	popeq {r3, pc}
	mov r0, #8
	bl ov18_0223E994
	bl ov18_0223AE94
	pop {r3, pc}
	.align 2, 0
_0223B100: .4byte 0x0225334C
	arm_func_end ov18_0223AF10

	arm_func_start ov18_0223B104
ov18_0223B104: @ 0x0223B104
	push {r4, lr}
	ldr r0, _0223B188 @ =0x0225334C
	mov r1, #0
	ldrb r2, [r0]
	ldr r0, [r0, #4]
	sub r4, r2, #4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243BBC
	mov r2, r0
	mov r0, #0
	mov r1, #0x32
	bl ov18_02243ECC
	ldr r0, _0223B188 @ =0x0225334C
	add r3, r4, #3
	ldr r2, [r0, #4]
	ldr r1, _0223B18C @ =0x022493FE
	lsl r3, r3, #2
	ldr r0, _0223B190 @ =0x02249400
	add ip, r2, r4, lsl #2
	ldrh r2, [r1, r3]
	ldrh r3, [r0, r3]
	ldr r0, [ip, #0x10]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0223B188 @ =0x0225334C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r2, #3
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243DE4
	pop {r4, pc}
	.align 2, 0
_0223B188: .4byte 0x0225334C
_0223B18C: .4byte 0x022493FE
_0223B190: .4byte 0x02249400
	arm_func_end ov18_0223B104

	arm_func_start ov18_0223B194
ov18_0223B194: @ 0x0223B194
	push {r4, lr}
	ldr r0, _0223B2F0 @ =0x0225334C
	ldrb r0, [r0]
	sub r4, r0, #4
	bl ov18_0223FFB8
	cmp r0, #0
	beq _0223B264
	cmp r0, #1
	popne {r4, pc}
	mov r0, #0xe
	bl ov18_0223E994
	mov r0, r4
	bl ov18_0223E5E0
	ldr r0, _0223B2F0 @ =0x0225334C
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #4]
	bl ov18_02243BBC
	mov r2, r0
	mov r0, #0
	mov r1, #0x56
	bl ov18_02243ECC
	ldr r0, _0223B2F0 @ =0x0225334C
	lsl ip, r4, #2
	ldr r0, [r0, #4]
	mvn r1, #0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #4]
	ldr r2, _0223B2F4 @ =0x022493FE
	ldr r3, _0223B2F8 @ =0x02249400
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_02243CF4
	ldr r0, _0223B2F0 @ =0x0225334C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r2, #3
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #4]
	bl ov18_02243DE4
	ldr r0, _0223B2F0 @ =0x0225334C
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243B3C
	mov r1, #0
	ldr r0, _0223B2F0 @ =0x0225334C
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x10]
	b _0223B2E0
_0223B264:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223B2F0 @ =0x0225334C
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243BBC
	mov r2, r0
	mov r0, #0
	mov r1, #0x11
	bl ov18_02243ECC
	ldr r0, _0223B2F0 @ =0x0225334C
	add r1, r4, #3
	ldr r0, [r0, #4]
	lsl ip, r1, #2
	ldr r2, _0223B2F4 @ =0x022493FE
	ldr r3, _0223B2F8 @ =0x02249400
	add r0, r0, r4, lsl #2
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	ldr r0, [r0, #0x10]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0223B2F0 @ =0x0225334C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r2, #3
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243DE4
_0223B2E0:
	bl ov18_0223FF74
	ldr r0, _0223B2FC @ =ov18_0223B300
	bl ov18_0222F6C4
	pop {r4, pc}
	.align 2, 0
_0223B2F0: .4byte 0x0225334C
_0223B2F4: .4byte 0x022493FE
_0223B2F8: .4byte 0x02249400
_0223B2FC: .4byte ov18_0223B300
	arm_func_end ov18_0223B194

	arm_func_start ov18_0223B300
ov18_0223B300: @ 0x0223B300
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223B320 @ =ov18_0223A9F0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B320: .4byte ov18_0223A9F0
	arm_func_end ov18_0223B300

	arm_func_start ov18_0223B324
ov18_0223B324: @ 0x0223B324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _0223B3EC @ =0x022493E0
	ldr r0, _0223B3F0 @ =0x0225334C
	ldrb r7, [r1]
	ldrb r6, [r1, #1]
	ldrb r5, [r1, #2]
	ldrb r4, [r1, #3]
	ldrb lr, [r1, #4]
	ldrb ip, [r1, #5]
	ldrb r3, [r1, #6]
	ldrb r2, [r1, #7]
	ldrb r1, [r0]
	strb r7, [sp, #4]
	strb r2, [sp, #3]
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb r4, [sp, #7]
	strb lr, [sp]
	strb ip, [sp, #1]
	strb r3, [sp, #2]
	cmp r1, #3
	add r2, sp, #4
	addhi sp, sp, #8
	pophi {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r2, r1]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	mov r2, r1
	bl ov18_0223D154
	ldr r0, _0223B3F0 @ =0x0225334C
	ldrb r0, [r0]
	cmp r0, #3
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov18_0223E1D8
	ldr r1, _0223B3F0 @ =0x0225334C
	cmp r0, #2
	ldrb ip, [r1]
	ldr r1, [r1, #4]
	movgt r0, #3
	add r2, sp, #0
	ldrb r3, [r2, r0]
	add r0, r1, ip, lsl #2
	ldr r0, [r0, #4]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243C74
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B3EC: .4byte 0x022493E0
_0223B3F0: .4byte 0x0225334C
	arm_func_end ov18_0223B324

	arm_func_start ov18_0223B3F4
ov18_0223B3F4: @ 0x0223B3F4
	push {r4, r5, r6, lr}
	bl ov18_0223DDCC
	ldr r1, _0223B4FC @ =0x02253354
	mov r2, #0
	strb r2, [r1, #2]
	ldrsb r2, [r1]
	mov r4, r0
	cmp r2, #0
	moveq r0, #1
	strbeq r0, [r1]
	bl ov18_0222F74C
	cmp r0, #0
	beq _0223B450
	ldr r0, _0223B4FC @ =0x02253354
	ldrsb r1, [r0, #1]
	cmp r1, #2
	moveq r1, #0
	strbeq r1, [r0, #1]
	ldr r0, _0223B4FC @ =0x02253354
	ldrsb r1, [r0]
	cmp r1, #2
	moveq r1, #1
	strbeq r1, [r0]
_0223B450:
	bl ov18_0223B518
	bl ov18_0222BC1C
	bl ov18_0222F74C
	mov r5, r0
	ldrb r1, [r4, #0xf4]
	mov r0, #0x32
	ldr r3, _0223B500 @ =0x0224954C
	add r2, r1, #1
	ldrsb r1, [r3, r5]
	bl ov18_0222B594
	mov r0, #1
	bl ov18_0222B740
	mov r0, #1
	bl ov18_0222F774
	mov r6, r0
	mov r0, #1
	bl ov18_0222F774
	mov r5, r0
	mov r0, #1
	bl ov18_0222F774
	mov r4, r0
	mov r0, #1
	bl ov18_0222F774
	mov r3, r0
	ldr r1, _0223B504 @ =0x0224950A
	ldr r0, _0223B4FC @ =0x02253354
	add ip, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _0223B508 @ =0x0224950E
	ldr r0, _0223B50C @ =0x0224950C
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	lsl r5, lr, #3
	ldrh r0, [r5, ip]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0223B510 @ =0x02249510
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl ov18_0222BA04
	ldr r0, _0223B514 @ =ov18_0223B604
	bl ov18_0222F6C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223B4FC: .4byte 0x02253354
_0223B500: .4byte 0x0224954C
_0223B504: .4byte 0x0224950A
_0223B508: .4byte 0x0224950E
_0223B50C: .4byte 0x0224950C
_0223B510: .4byte 0x02249510
_0223B514: .4byte ov18_0223B604
	arm_func_end ov18_0223B3F4

	arm_func_start ov18_0223B518
ov18_0223B518: @ 0x0223B518
	push {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _0223B5DC @ =0x02249494
	add r3, sp, #0
	mov r2, #0xb
_0223B52C:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0223B52C
	ldr r0, _0223B5E0 @ =0x0224A45C
	ldr r1, _0223B5E4 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223B5E8 @ =0x0224A474
	ldr r1, _0223B5EC @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223B5F0 @ =0x0224A48C
	ldr r1, _0223B5F4 @ =FUN_020C04EC
	bl ov18_0222B700
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _0223B5F8 @ =0x02253354
	ldr r2, _0223B5FC @ =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _0223B600 @ =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	pop {r3, pc}
	.align 2, 0
_0223B5DC: .4byte 0x02249494
_0223B5E0: .4byte 0x0224A45C
_0223B5E4: .4byte 0x020C07EC
_0223B5E8: .4byte 0x0224A474
_0223B5EC: .4byte FUN_020C00B4
_0223B5F0: .4byte 0x0224A48C
_0223B5F4: .4byte FUN_020C04EC
_0223B5F8: .4byte 0x02253354
_0223B5FC: .4byte 0x04001008
_0223B600: .4byte 0x0400000A
	arm_func_end ov18_0223B518

	arm_func_start ov18_0223B604
ov18_0223B604: @ 0x0223B604
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _0223B654 @ =ov18_0223B658
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B654: .4byte ov18_0223B658
	arm_func_end ov18_0223B604

	arm_func_start ov18_0223B658
ov18_0223B658: @ 0x0223B658
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _0223B690 @ =ov18_0223B694
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B690: .4byte ov18_0223B694
	arm_func_end ov18_0223B658

	arm_func_start ov18_0223B694
ov18_0223B694: @ 0x0223B694
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223B6B8 @ =ov18_0223B6BC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B6B8: .4byte ov18_0223B6BC
	arm_func_end ov18_0223B694

	arm_func_start ov18_0223B6BC
ov18_0223B6BC: @ 0x0223B6BC
	push {r3, lr}
	bl ov18_0223B6D0
	bl ov18_0223B854
	bl ov18_0223B858
	pop {r3, pc}
	arm_func_end ov18_0223B6BC

	arm_func_start ov18_0223B6D0
ov18_0223B6D0: @ 0x0223B6D0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r4, _0223B83C @ =0x022494CA
	mov r7, r6
	mov r5, #1
_0223B6E4:
	mov r0, r5
	bl ov18_0222F774
	add r0, r4, r0, lsl #5
	add r0, r0, r7
	bl ov18_022455B8
	cmp r0, #0
	beq _0223B784
	mov r0, #1
	bl ov18_0222B048
	ldr r1, _0223B840 @ =0x02253354
	mov r0, #1
	strb r6, [r1, #1]
	bl ov18_0222F774
	mov r6, r0
	mov r0, #1
	bl ov18_0222F774
	mov r5, r0
	mov r0, #1
	bl ov18_0222F774
	mov r4, r0
	mov r0, #1
	bl ov18_0222F774
	mov r3, r0
	ldr r0, _0223B840 @ =0x02253354
	ldr r1, _0223B844 @ =0x0224950A
	ldrsb lr, [r0, #1]
	ldr r0, _0223B848 @ =0x0224950C
	add ip, r1, r6, lsl #5
	ldr r1, _0223B84C @ =0x0224950E
	add r2, r0, r4, lsl #5
	ldr r4, _0223B850 @ =0x02249510
	add r1, r1, r5, lsl #5
	lsl r5, lr, #3
	add r3, r4, r3, lsl #5
	ldrh r0, [r5, ip]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldrh r3, [r5, r3]
	bl ov18_0222BA04
	pop {r3, r4, r5, r6, r7, pc}
_0223B784:
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #8
	blo _0223B6E4
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223B7B0
	mov r0, #1
	bl ov18_0222B048
	pop {r3, r4, r5, r6, r7, pc}
_0223B7B0:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223B7CC
	mov r0, #0
	bl ov18_0222B048
	pop {r3, r4, r5, r6, r7, pc}
_0223B7CC:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0223B7E8
	mov r0, #1
	bl ov18_0223BA60
	pop {r3, r4, r5, r6, r7, pc}
_0223B7E8:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0223B804
	mov r0, #3
	bl ov18_0223BA60
	pop {r3, r4, r5, r6, r7, pc}
_0223B804:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0223B820
	mov r0, #0
	bl ov18_0223BA60
	pop {r3, r4, r5, r6, r7, pc}
_0223B820:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	bl ov18_0223BA60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B83C: .4byte 0x022494CA
_0223B840: .4byte 0x02253354
_0223B844: .4byte 0x0224950A
_0223B848: .4byte 0x0224950C
_0223B84C: .4byte 0x0224950E
_0223B850: .4byte 0x02249510
	arm_func_end ov18_0223B6D0

	arm_func_start ov18_0223B854
ov18_0223B854: @ 0x0223B854
	bx lr
	arm_func_end ov18_0223B854

	arm_func_start ov18_0223B858
ov18_0223B858: @ 0x0223B858
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _0223B874
	cmp r0, #1
	beq _0223B880
	pop {r3, pc}
_0223B874:
	mov r0, #7
	bl ov18_0223E994
	b _0223B898
_0223B880:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223BB54
	ldr r0, _0223B8A4 @ =0x02253354
	mov r1, #1
	strb r1, [r0, #2]
_0223B898:
	ldr r0, _0223B8A8 @ =ov18_0223B8AC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B8A4: .4byte 0x02253354
_0223B8A8: .4byte ov18_0223B8AC
	arm_func_end ov18_0223B858

	arm_func_start ov18_0223B8AC
ov18_0223B8AC: @ 0x0223B8AC
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223B8C8 @ =ov18_0223B8CC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B8C8: .4byte ov18_0223B8CC
	arm_func_end ov18_0223B8AC

	arm_func_start ov18_0223B8CC
ov18_0223B8CC: @ 0x0223B8CC
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223B928 @ =0x02253354
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0223B8F4
	bl ov18_0222B004
_0223B8F4:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223B92C @ =ov18_0223B930
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223B928: .4byte 0x02253354
_0223B92C: .4byte ov18_0223B930
	arm_func_end ov18_0223B8CC

	arm_func_start ov18_0223B930
ov18_0223B930: @ 0x0223B930
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _0223BA48 @ =0x02253354
	ldr r0, [r0, #4]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _0223BA48 @ =0x02253354
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0223B9B4
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _0223BA4C @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223B9B4:
	ldrsb r0, [r0, #1]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_0223B9C4: @ jump table
	b _0223B9D4 @ case 0
	b _0223B9EC @ case 1
	b _0223BA04 @ case 2
	b _0223BA1C @ case 3
_0223B9D4:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223BA50 @ =ov18_0223A1D0
	bl ov18_0222F6C4
	pop {r3, pc}
_0223B9EC:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223BA54 @ =ov18_02233088
	bl ov18_0222F6C4
	pop {r3, pc}
_0223BA04:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223BA58 @ =ov18_02239D5C
	bl ov18_0222F6C4
	pop {r3, pc}
_0223BA1C:
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	mov r0, #1
	bl ov18_0223909C
	ldr r0, _0223BA5C @ =ov18_02236BE0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BA48: .4byte 0x02253354
_0223BA4C: .4byte ov18_0223A6B4
_0223BA50: .4byte ov18_0223A1D0
_0223BA54: .4byte ov18_02233088
_0223BA58: .4byte ov18_02239D5C
_0223BA5C: .4byte ov18_02236BE0
	arm_func_end ov18_0223B930

	arm_func_start ov18_0223BA60
ov18_0223BA60: @ 0x0223BA60
	push {r4, r5, r6, lr}
	ldr r1, _0223BB3C @ =0x02253354
	mov r5, r0
	mov r0, #1
	ldrsb r4, [r1, #1]
	bl ov18_0222F774
	ldr r2, _0223BB40 @ =0x022494AA
	mvn r1, #0
	add r0, r2, r0, lsl #4
	add r0, r0, r4, lsl #2
	ldrsb r2, [r5, r0]
	cmp r2, r1
	popeq {r4, r5, r6, pc}
	cmp r2, #0
	ldreq r0, _0223BB3C @ =0x02253354
	strbeq r4, [r0]
	mvn r0, #1
	cmp r2, r0
	ldrne r0, _0223BB3C @ =0x02253354
	strbne r2, [r0, #1]
	bne _0223BAC0
	ldr r0, _0223BB3C @ =0x02253354
	ldrsb r1, [r0]
	strb r1, [r0, #1]
_0223BAC0:
	mov r0, #8
	bl ov18_0223E994
	mov r0, #1
	bl ov18_0222F774
	mov r6, r0
	mov r0, #1
	bl ov18_0222F774
	mov r5, r0
	mov r0, #1
	bl ov18_0222F774
	mov r4, r0
	mov r0, #1
	bl ov18_0222F774
	mov r3, r0
	ldr r1, _0223BB44 @ =0x0224950A
	ldr r0, _0223BB3C @ =0x02253354
	add ip, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _0223BB48 @ =0x0224950E
	ldr r0, _0223BB4C @ =0x0224950C
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	lsl r5, lr, #3
	ldrh r0, [r5, ip]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0223BB50 @ =0x02249510
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl ov18_0222BA04
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223BB3C: .4byte 0x02253354
_0223BB40: .4byte 0x022494AA
_0223BB44: .4byte 0x0224950A
_0223BB48: .4byte 0x0224950E
_0223BB4C: .4byte 0x0224950C
_0223BB50: .4byte 0x02249510
	arm_func_end ov18_0223BA60

	arm_func_start ov18_0223BB54
ov18_0223BB54: @ 0x0223BB54
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0223BBA4 @ =0x02249490
	ldr r0, _0223BBA8 @ =0x02253354
	ldrb lr, [r1]
	ldrb ip, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	ldrsb r1, [r0, #1]
	add r4, sp, #0
	strb lr, [sp]
	strb ip, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl ov18_0223D154
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223BBA4: .4byte 0x02249490
_0223BBA8: .4byte 0x02253354
	arm_func_end ov18_0223BB54

	arm_func_start ov18_0223BBAC
ov18_0223BBAC: @ 0x0223BBAC
	push {r3, lr}
	ldr r0, _0223BC30 @ =0x0225335C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223BC38
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BBE8
	mov r0, #0x31
	sub r1, r0, #0x32
	mov r2, #0
	bl ov18_0222B594
_0223BBE8:
	mov r0, #2
	bl ov18_0222B740
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BC00
	bl ov18_0222BC1C
_0223BC00:
	mov r0, #0x2c
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	bl ov18_0223BCE0
	mov r0, #0
	bl ov18_0222BC8C
	mov r0, #0xc
	bl ov18_0223E994
	ldr r0, _0223BC34 @ =ov18_0223BD78
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BC30: .4byte 0x0225335C
_0223BC34: .4byte ov18_0223BD78
	arm_func_end ov18_0223BBAC

	arm_func_start ov18_0223BC38
ov18_0223BC38: @ 0x0223BC38
	push {r3, lr}
	ldr r0, _0223BCC0 @ =0x0224A4A0
	ldr r1, _0223BCC4 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223BCC8 @ =0x0224A4B8
	ldr r1, _0223BCCC @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223BCD0 @ =0x0224A4D0
	ldr r1, _0223BCD4 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _0223BCD8 @ =0x04001008
	ldr r1, _0223BCDC @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223BCC0: .4byte 0x0224A4A0
_0223BCC4: .4byte 0x020C07EC
_0223BCC8: .4byte 0x0224A4B8
_0223BCCC: .4byte FUN_020C00B4
_0223BCD0: .4byte 0x0224A4D0
_0223BCD4: .4byte FUN_020C04EC
_0223BCD8: .4byte 0x04001008
_0223BCDC: .4byte 0x0400000A
	arm_func_end ov18_0223BC38

	arm_func_start ov18_0223BCE0
ov18_0223BCE0: @ 0x0223BCE0
	push {r4, lr}
	sub sp, sp, #0x10
	bl ov18_0223DDCC
	mov r4, r0
	ldr r0, _0223BD70 @ =0x02249554
	add r1, sp, #4
	mov r2, #0xc
	bl FUN_020C4B68
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #2
	moveq r0, #4
	strbeq r0, [sp, #0xe]
	ldrbne r0, [r4, #0xf4]
	addne r0, r0, #1
	strbne r0, [sp, #0xe]
	add r0, sp, #4
	bl FUN_021E5C34
	cmp r0, #0
	bne _0223BD3C
	bl FUN_020C42A8
_0223BD3C:
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BD54
	ldrb r0, [r4, #0xf4]
	mov r1, r4
	bl FUN_021E60F8
_0223BD54:
	mov r0, #0
	ldr r1, _0223BD74 @ =ov18_0223BF18
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223BD70: .4byte 0x02249554
_0223BD74: .4byte ov18_0223BF18
	arm_func_end ov18_0223BCE0

	arm_func_start ov18_0223BD78
ov18_0223BD78: @ 0x0223BD78
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BDD4
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
_0223BDD4:
	ldr r0, _0223BDE0 @ =ov18_0223BDE4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BDE0: .4byte ov18_0223BDE4
	arm_func_end ov18_0223BD78

	arm_func_start ov18_0223BDE4
ov18_0223BDE4: @ 0x0223BDE4
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223BE14 @ =ov18_0223BE18
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BE14: .4byte ov18_0223BE18
	arm_func_end ov18_0223BDE4

	arm_func_start ov18_0223BE18
ov18_0223BE18: @ 0x0223BE18
	push {r3, lr}
	bl ov18_0223BE2C
	bl ov18_0223BE30
	bl ov18_0223BE34
	pop {r3, pc}
	arm_func_end ov18_0223BE18

	arm_func_start ov18_0223BE2C
ov18_0223BE2C: @ 0x0223BE2C
	bx lr
	arm_func_end ov18_0223BE2C

	arm_func_start ov18_0223BE30
ov18_0223BE30: @ 0x0223BE30
	bx lr
	arm_func_end ov18_0223BE30

	arm_func_start ov18_0223BE34
ov18_0223BE34: @ 0x0223BE34
	bx lr
	arm_func_end ov18_0223BE34

	arm_func_start ov18_0223BE38
ov18_0223BE38: @ 0x0223BE38
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223BE5C @ =ov18_0223BE60
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BE5C: .4byte ov18_0223BE60
	arm_func_end ov18_0223BE38

	arm_func_start ov18_0223BE60
ov18_0223BE60: @ 0x0223BE60
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223BE80 @ =ov18_0223BE84
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BE80: .4byte ov18_0223BE84
	arm_func_end ov18_0223BE60

	arm_func_start ov18_0223BE84
ov18_0223BE84: @ 0x0223BE84
	push {r4, lr}
	bl ov18_0223E5D0
	mov r4, r0
	bl FUN_021E5FA0
	cmp r0, #0
	popeq {r4, pc}
	bl FUN_020A33F8
	add r1, r4, #0xf0
	mov r2, #0xe
	bl FUN_020C4DB0
	bl FUN_020A33F8
	add r1, r4, #0x1f0
	mov r2, #0xe
	bl FUN_020C4DB0
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223BF0C @ =0x0225335C
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #0
	bne _0223BEFC
	bl ov18_0222F6D4
	ldr r0, _0223BF10 @ =ov18_022365BC
	bl ov18_0222F6C4
	pop {r4, pc}
_0223BEFC:
	bl ov18_0222F6D4
	ldr r0, _0223BF14 @ =ov18_0223BFA8
	bl ov18_0222F6C4
	pop {r4, pc}
	.align 2, 0
_0223BF0C: .4byte 0x0225335C
_0223BF10: .4byte ov18_022365BC
_0223BF14: .4byte ov18_0223BFA8
	arm_func_end ov18_0223BE84

	arm_func_start ov18_0223BF18
ov18_0223BF18: @ 0x0223BF18
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_021E5DDC
	movs r4, r0
	popeq {r3, r4, r5, pc}
	bl ov18_0222BD44
	bl ov18_0223E9FC
	cmp r4, #0
	ble _0223BF54
	ldr r1, _0223BF7C @ =0x0225335C
	mov r2, #1
	mov r0, #0x11
	strb r2, [r1]
	bl ov18_0223E994
	b _0223BF64
_0223BF54:
	bl FUN_021E5EAC
	bl ov18_02236BD0
	mov r0, #0x12
	bl ov18_0223E994
_0223BF64:
	ldr r0, _0223BF80 @ =ov18_0223BE38
	bl ov18_0222F6C4
	mov r1, r5
	mov r0, #0
	bl ov18_022463AC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BF7C: .4byte 0x0225335C
_0223BF80: .4byte ov18_0223BE38
	arm_func_end ov18_0223BF18

	arm_func_start ov18_0223BF84
ov18_0223BF84: @ 0x0223BF84
	ldr ip, _0223BF94 @ =ov18_02245068
	mov r0, r1
	mov r1, #0x20
	bx ip
	.align 2, 0
_0223BF94: .4byte ov18_02245068
	arm_func_end ov18_0223BF84

	arm_func_start ov18_0223BF98
ov18_0223BF98: @ 0x0223BF98
	ldr ip, _0223BFA4 @ =ov18_022450D0
	mov r0, r1
	bx ip
	.align 2, 0
_0223BFA4: .4byte ov18_022450D0
	arm_func_end ov18_0223BF98

	arm_func_start ov18_0223BFA8
ov18_0223BFA8: @ 0x0223BFA8
	push {r3, lr}
	ldr r0, _0223BFD0 @ =0x02253360
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223BFD8
	mov r0, #0x2d
	bl ov18_0222B7C8
	ldr r0, _0223BFD4 @ =ov18_0223C044
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223BFD0: .4byte 0x02253360
_0223BFD4: .4byte ov18_0223C044
	arm_func_end ov18_0223BFA8

	arm_func_start ov18_0223BFD8
ov18_0223BFD8: @ 0x0223BFD8
	push {r3, lr}
	ldr r0, _0223C034 @ =0x0224A4E4
	ldr r1, _0223C038 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r2, _0223C03C @ =0x04001008
	ldr r1, _0223C040 @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223C034: .4byte 0x0224A4E4
_0223C038: .4byte FUN_020C04EC
_0223C03C: .4byte 0x04001008
_0223C040: .4byte 0x0400000A
	arm_func_end ov18_0223BFD8

	arm_func_start ov18_0223C044
ov18_0223C044: @ 0x0223C044
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223C074 @ =ov18_0223C078
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C074: .4byte ov18_0223C078
	arm_func_end ov18_0223C044

	arm_func_start ov18_0223C078
ov18_0223C078: @ 0x0223C078
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223C098 @ =ov18_0223C09C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C098: .4byte ov18_0223C09C
	arm_func_end ov18_0223C078

	arm_func_start ov18_0223C09C
ov18_0223C09C: @ 0x0223C09C
	push {r3, lr}
	bl ov18_0223C1AC
	bl ov18_0223C0AC
	pop {r3, pc}
	arm_func_end ov18_0223C09C

	arm_func_start ov18_0223C0AC
ov18_0223C0AC: @ 0x0223C0AC
	bx lr
	arm_func_end ov18_0223C0AC

	arm_func_start ov18_0223C0B0
ov18_0223C0B0: @ 0x0223C0B0
	push {r3, lr}
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	beq _0223C0D0
	bl ov18_0223EF7C
_0223C0D0:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C104 @ =ov18_0223C108
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C104: .4byte ov18_0223C108
	arm_func_end ov18_0223C0B0

	arm_func_start ov18_0223C108
ov18_0223C108: @ 0x0223C108
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223F4A4
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _0223C198
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _0223C1A4 @ =ov18_02236BE0
	bl ov18_0222F6C4
	pop {r3, pc}
_0223C198:
	ldr r0, _0223C1A8 @ =ov18_02230228
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C1A4: .4byte ov18_02236BE0
_0223C1A8: .4byte ov18_02230228
	arm_func_end ov18_0223C108

	arm_func_start ov18_0223C1AC
ov18_0223C1AC: @ 0x0223C1AC
	push {r3, lr}
	ldr r0, _0223C210 @ =0x02253360
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0xb4
	poplo {r3, pc}
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	bl ov18_0222F75C
	cmp r0, #0
	beq _0223C204
	cmp r0, #1
	bne _0223C204
	ldr r0, [sp]
	cmp r0, #0
	beq _0223C204
	ldr r0, _0223C214 @ =ov18_0222FEE8
	bl ov18_0222F6C4
	pop {r3, pc}
_0223C204:
	ldr r0, _0223C218 @ =ov18_0223C0B0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C210: .4byte 0x02253360
_0223C214: .4byte ov18_0222FEE8
_0223C218: .4byte ov18_0223C0B0
	arm_func_end ov18_0223C1AC

	arm_func_start ov18_0223C21C
ov18_0223C21C: @ 0x0223C21C
	push {r3, lr}
	bl ov18_0223D910
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	bl ov18_0223C274
	mov r0, #0x31
	sub r1, r0, #0x32
	mov r2, #0
	bl ov18_0222B594
	ldr r0, [sp]
	cmp r0, #2
	beq _0223C254
	bl ov18_0222BC1C
_0223C254:
	ldr r0, [sp]
	cmp r0, #1
	bne _0223C264
	bl ov18_0223E2D0
_0223C264:
	ldr r0, _0223C270 @ =ov18_0223C2E0
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C270: .4byte ov18_0223C2E0
	arm_func_end ov18_0223C21C

	arm_func_start ov18_0223C274
ov18_0223C274: @ 0x0223C274
	push {r3, lr}
	ldr r0, _0223C2D0 @ =0x0224A4F8
	ldr r1, _0223C2D4 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r2, _0223C2D8 @ =0x04001008
	ldr r1, _0223C2DC @ =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223C2D0: .4byte 0x0224A4F8
_0223C2D4: .4byte FUN_020C04EC
_0223C2D8: .4byte 0x04001008
_0223C2DC: .4byte 0x0400000A
	arm_func_end ov18_0223C274

	arm_func_start ov18_0223C2E0
ov18_0223C2E0: @ 0x0223C2E0
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _0223C330 @ =ov18_0223C334
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C330: .4byte ov18_0223C334
	arm_func_end ov18_0223C2E0

	arm_func_start ov18_0223C334
ov18_0223C334: @ 0x0223C334
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r0, _0223C3B4 @ =0x02249560
	add r3, sp, #8
	ldm r0, {r0, r1, r2}
	stm r3, {r0, r1, r2}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	addne sp, sp, #0x14
	ldmne sp!, {pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	addne sp, sp, #0x14
	ldmne sp!, {pc}
	add r1, sp, #4
	mov r0, #0
	bl ov18_0222F724
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r3, [sp, #4]
	add r0, sp, #8
	ldr r0, [r0, r3, lsl #2]
	mov r2, r1
	sub r3, r1, #2
	bl ov18_0223FC48
	ldr r0, _0223C3B8 @ =ov18_0223C3BC
	bl ov18_0222F6C4
	add sp, sp, #0x14
	ldm sp!, {pc}
	.align 2, 0
_0223C3B4: .4byte 0x02249560
_0223C3B8: .4byte ov18_0223C3BC
	arm_func_end ov18_0223C334

	arm_func_start ov18_0223C3BC
ov18_0223C3BC: @ 0x0223C3BC
	push {r3, lr}
	bl ov18_0223C3F8
	bl ov18_0223C3FC
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _0223C3F4 @ =ov18_0223C400
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C3F4: .4byte ov18_0223C400
	arm_func_end ov18_0223C3BC

	arm_func_start ov18_0223C3F8
ov18_0223C3F8: @ 0x0223C3F8
	bx lr
	arm_func_end ov18_0223C3F8

	arm_func_start ov18_0223C3FC
ov18_0223C3FC: @ 0x0223C3FC
	bx lr
	arm_func_end ov18_0223C3FC

	arm_func_start ov18_0223C400
ov18_0223C400: @ 0x0223C400
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C430 @ =ov18_0223C434
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C430: .4byte ov18_0223C434
	arm_func_end ov18_0223C400

	arm_func_start ov18_0223C434
ov18_0223C434: @ 0x0223C434
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223C46C @ =ov18_0223BBAC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C46C: .4byte ov18_0223BBAC
	arm_func_end ov18_0223C434

	arm_func_start ov18_0223C470
ov18_0223C470: @ 0x0223C470
	push {r3, lr}
	ldr r0, _0223C4A8 @ =0x02253364
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223C4B0
	mov r0, #8
	bl ov18_0222BBC0
	mov r0, #0x29
	bl ov18_0222B7C8
	mov r0, #0x10
	bl ov18_0223E994
	ldr r0, _0223C4AC @ =ov18_0223C530
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C4A8: .4byte 0x02253364
_0223C4AC: .4byte ov18_0223C530
	arm_func_end ov18_0223C470

	arm_func_start ov18_0223C4B0
ov18_0223C4B0: @ 0x0223C4B0
	push {r3, lr}
	ldr r0, _0223C520 @ =0x0224A50C
	ldr r1, _0223C524 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _0223C528 @ =0x04001008
	ldr r1, _0223C52C @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223C520: .4byte 0x0224A50C
_0223C524: .4byte FUN_020C04EC
_0223C528: .4byte 0x04001008
_0223C52C: .4byte 0x0400000A
	arm_func_end ov18_0223C4B0

	arm_func_start ov18_0223C530
ov18_0223C530: @ 0x0223C530
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223C560 @ =ov18_0223C564
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C560: .4byte ov18_0223C564
	arm_func_end ov18_0223C530

	arm_func_start ov18_0223C564
ov18_0223C564: @ 0x0223C564
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223C584 @ =ov18_0223C588
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C584: .4byte ov18_0223C588
	arm_func_end ov18_0223C564

	arm_func_start ov18_0223C588
ov18_0223C588: @ 0x0223C588
	push {r3, lr}
	bl ov18_0223C648
	bl ov18_0223C598
	pop {r3, pc}
	arm_func_end ov18_0223C588

	arm_func_start ov18_0223C598
ov18_0223C598: @ 0x0223C598
	bx lr
	arm_func_end ov18_0223C598

	arm_func_start ov18_0223C59C
ov18_0223C59C: @ 0x0223C59C
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C5D4 @ =ov18_0223C5D8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C5D4: .4byte ov18_0223C5D8
	arm_func_end ov18_0223C59C

	arm_func_start ov18_0223C5D8
ov18_0223C5D8: @ 0x0223C5D8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #2
	bl ov18_0222F710
	ldr r0, _0223C644 @ =ov18_0223C21C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C644: .4byte ov18_0223C21C
	arm_func_end ov18_0223C5D8

	arm_func_start ov18_0223C648
ov18_0223C648: @ 0x0223C648
	push {r3, lr}
	ldr r0, _0223C674 @ =0x02253364
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	poplo {r3, pc}
	ldr r0, _0223C678 @ =ov18_0223C59C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C674: .4byte 0x02253364
_0223C678: .4byte ov18_0223C59C
	arm_func_end ov18_0223C648

	arm_func_start ov18_0223C67C
ov18_0223C67C: @ 0x0223C67C
	push {r3, lr}
	ldr r0, _0223C6C4 @ =0x02253368
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223C6CC
	mov r0, #8
	bl ov18_0222BBC0
	mov r0, #0x38
	sub r1, r0, #0x39
	mov r2, #0
	bl ov18_0222B594
	mov r0, #1
	bl ov18_0222B740
	mov r0, #0x27
	bl ov18_0222B7C8
	ldr r0, _0223C6C8 @ =ov18_0223C774
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C6C4: .4byte 0x02253368
_0223C6C8: .4byte ov18_0223C774
	arm_func_end ov18_0223C67C

	arm_func_start ov18_0223C6CC
ov18_0223C6CC: @ 0x0223C6CC
	push {r3, lr}
	ldr r0, _0223C754 @ =0x0224A520
	ldr r1, _0223C758 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223C75C @ =0x0224A538
	ldr r1, _0223C760 @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223C764 @ =0x0224A550
	ldr r1, _0223C768 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _0223C76C @ =0x04001008
	ldr r1, _0223C770 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223C754: .4byte 0x0224A520
_0223C758: .4byte 0x020C07EC
_0223C75C: .4byte 0x0224A538
_0223C760: .4byte FUN_020C00B4
_0223C764: .4byte 0x0224A550
_0223C768: .4byte FUN_020C04EC
_0223C76C: .4byte 0x04001008
_0223C770: .4byte 0x0400000A
	arm_func_end ov18_0223C6CC

	arm_func_start ov18_0223C774
ov18_0223C774: @ 0x0223C774
	push {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223C7C4 @ =ov18_0223C7C8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C7C4: .4byte ov18_0223C7C8
	arm_func_end ov18_0223C774

	arm_func_start ov18_0223C7C8
ov18_0223C7C8: @ 0x0223C7C8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0222B790
	ldr r0, _0223C800 @ =ov18_0223C804
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C800: .4byte ov18_0223C804
	arm_func_end ov18_0223C7C8

	arm_func_start ov18_0223C804
ov18_0223C804: @ 0x0223C804
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223C828 @ =ov18_0223C82C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C828: .4byte ov18_0223C82C
	arm_func_end ov18_0223C804

	arm_func_start ov18_0223C82C
ov18_0223C82C: @ 0x0223C82C
	push {r3, lr}
	bl ov18_0223C840
	bl ov18_0223C878
	bl ov18_0223C87C
	pop {r3, pc}
	arm_func_end ov18_0223C82C

	arm_func_start ov18_0223C840
ov18_0223C840: @ 0x0223C840
	push {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223C85C
	mov r0, #1
	bl ov18_0222B048
_0223C85C:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_0223C840

	arm_func_start ov18_0223C878
ov18_0223C878: @ 0x0223C878
	bx lr
	arm_func_end ov18_0223C878

	arm_func_start ov18_0223C87C
ov18_0223C87C: @ 0x0223C87C
	push {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _0223C898
	cmp r0, #1
	beq _0223C8A4
	pop {r3, pc}
_0223C898:
	mov r0, #7
	bl ov18_0223E994
	b _0223C8B8
_0223C8A4:
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _0223C8C4 @ =0x02253368
	mov r1, #1
	strb r1, [r0]
_0223C8B8:
	ldr r0, _0223C8C8 @ =ov18_0223C8CC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C8C4: .4byte 0x02253368
_0223C8C8: .4byte ov18_0223C8CC
	arm_func_end ov18_0223C87C

	arm_func_start ov18_0223C8CC
ov18_0223C8CC: @ 0x0223C8CC
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223C8E8 @ =ov18_0223C8EC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C8E8: .4byte ov18_0223C8EC
	arm_func_end ov18_0223C8CC

	arm_func_start ov18_0223C8EC
ov18_0223C8EC: @ 0x0223C8EC
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223C948 @ =0x02253368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223C928
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223C928:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C94C @ =ov18_0223C950
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C948: .4byte 0x02253368
_0223C94C: .4byte ov18_0223C950
	arm_func_end ov18_0223C8EC

	arm_func_start ov18_0223C950
ov18_0223C950: @ 0x0223C950
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223C9FC @ =0x02253368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223C984
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_0223C984:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223C9FC @ =0x02253368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223C9B8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_0223C9B8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223C9FC @ =0x02253368
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #2
	bne _0223C9EC
	bl ov18_0222F6D4
	ldr r0, _0223CA00 @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223C9EC:
	bl ov18_0222F6D4
	ldr r0, _0223CA04 @ =ov18_0223CA28
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223C9FC: .4byte 0x02253368
_0223CA00: .4byte ov18_0223A6B4
_0223CA04: .4byte ov18_0223CA28
	arm_func_end ov18_0223C950

	arm_func_start ov18_0223CA08
ov18_0223CA08: @ 0x0223CA08
	ldr r0, _0223CA24 @ =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0223CA24: .4byte 0x027FFFA8
	arm_func_end ov18_0223CA08

	arm_func_start ov18_0223CA28
ov18_0223CA28: @ 0x0223CA28
	stmdb sp!, {lr}
	sub sp, sp, #0x6c
	ldr r0, _0223CAB0 @ =0x0225336C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223CABC
	mov r0, #8
	bl ov18_0222BBC0
	mov r0, #2
	bl ov18_0222B740
	add r0, sp, #0x16
	bl FUN_020C3FBC
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x16
	bl FUN_020C4AF0
	ldrh r2, [sp, #0x30]
	add r0, sp, #0x1a
	add r1, sp, #0
	lsl r2, r2, #1
	bl FUN_020C4B18
	add r0, sp, #0
	mov r1, #0x28
	bl ov18_0222B83C
	mov r0, #0
	bl ov18_0222AD34
	ldr r0, _0223CAB4 @ =ov18_0223CE08
	bl ov18_0223F564
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _0223CAB8 @ =ov18_0223CB64
	bl ov18_0222F6C4
	add sp, sp, #0x6c
	ldm sp!, {pc}
	.align 2, 0
_0223CAB0: .4byte 0x0225336C
_0223CAB4: .4byte ov18_0223CE08
_0223CAB8: .4byte ov18_0223CB64
	arm_func_end ov18_0223CA28

	arm_func_start ov18_0223CABC
ov18_0223CABC: @ 0x0223CABC
	push {r3, lr}
	ldr r0, _0223CB44 @ =0x0224A564
	ldr r1, _0223CB48 @ =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223CB4C @ =0x0224A57C
	ldr r1, _0223CB50 @ =FUN_020C00B4
	bl ov18_0222B700
	ldr r0, _0223CB54 @ =0x0224A594
	ldr r1, _0223CB58 @ =FUN_020C04EC
	bl ov18_0222B700
	ldr r3, _0223CB5C @ =0x04001008
	ldr r1, _0223CB60 @ =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	pop {r3, pc}
	.align 2, 0
_0223CB44: .4byte 0x0224A564
_0223CB48: .4byte 0x020C07EC
_0223CB4C: .4byte 0x0224A57C
_0223CB50: .4byte FUN_020C00B4
_0223CB54: .4byte 0x0224A594
_0223CB58: .4byte FUN_020C04EC
_0223CB5C: .4byte 0x04001008
_0223CB60: .4byte 0x0400000A
	arm_func_end ov18_0223CABC

	arm_func_start ov18_0223CB64
ov18_0223CB64: @ 0x0223CB64
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223CB94 @ =ov18_0223CB98
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CB94: .4byte ov18_0223CB98
	arm_func_end ov18_0223CB64

	arm_func_start ov18_0223CB98
ov18_0223CB98: @ 0x0223CB98
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	mov r0, #2
	bl ov18_0222B790
	ldr r0, _0223CBC0 @ =ov18_0223CBC4
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CBC0: .4byte ov18_0223CBC4
	arm_func_end ov18_0223CB98

	arm_func_start ov18_0223CBC4
ov18_0223CBC4: @ 0x0223CBC4
	push {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	popeq {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223CBE8 @ =ov18_0223CBEC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CBE8: .4byte ov18_0223CBEC
	arm_func_end ov18_0223CBC4

	arm_func_start ov18_0223CBEC
ov18_0223CBEC: @ 0x0223CBEC
	push {r3, lr}
	bl ov18_0223CC00
	bl ov18_0223CC38
	bl ov18_0223CC3C
	pop {r3, pc}
	arm_func_end ov18_0223CBEC

	arm_func_start ov18_0223CC00
ov18_0223CC00: @ 0x0223CC00
	push {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223CC20
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
_0223CC20:
	bl ov18_0223CA08
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	pop {r3, pc}
	arm_func_end ov18_0223CC00

	arm_func_start ov18_0223CC38
ov18_0223CC38: @ 0x0223CC38
	bx lr
	arm_func_end ov18_0223CC38

	arm_func_start ov18_0223CC3C
ov18_0223CC3C: @ 0x0223CC3C
	push {r3, lr}
	ldr r0, _0223CC80 @ =0x0225336C
	ldrb r0, [r0]
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B034
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223CC80 @ =0x0225336C
	mov r1, #2
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223CC84 @ =ov18_0223CC88
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CC80: .4byte 0x0225336C
_0223CC84: .4byte ov18_0223CC88
	arm_func_end ov18_0223CC3C

	arm_func_start ov18_0223CC88
ov18_0223CC88: @ 0x0223CC88
	push {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223CCA4 @ =ov18_0223CCA8
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CCA4: .4byte ov18_0223CCA8
	arm_func_end ov18_0223CC88

	arm_func_start ov18_0223CCA8
ov18_0223CCA8: @ 0x0223CCA8
	push {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223CD0C @ =0x0225336C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0223CCEC
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223CCEC:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223CD10 @ =ov18_0223CD14
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CD0C: .4byte 0x0225336C
_0223CD10: .4byte ov18_0223CD14
	arm_func_end ov18_0223CCA8

	arm_func_start ov18_0223CD14
ov18_0223CD14: @ 0x0223CD14
	push {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223CDF8 @ =0x0225336C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223CD48
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	popne {r3, pc}
_0223CD48:
	bl ov18_0222B07C
	cmp r0, #0
	popeq {r3, pc}
	bl ov18_0223F71C
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223CDF8 @ =0x0225336C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0223CD8C
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_0223CD8C:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223CDF8 @ =0x0225336C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223CDC0
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223CDFC @ =ov18_0223A6B4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223CDC0:
	cmp r0, #3
	bne _0223CDE0
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223CE00 @ =ov18_0223C67C
	bl ov18_0222F6C4
	pop {r3, pc}
_0223CDE0:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223CE04 @ =ov18_0223C470
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CDF8: .4byte 0x0225336C
_0223CDFC: .4byte ov18_0223A6B4
_0223CE00: .4byte ov18_0223C67C
_0223CE04: .4byte ov18_0223C470
	arm_func_end ov18_0223CD14

	arm_func_start ov18_0223CE08
ov18_0223CE08: @ 0x0223CE08
	push {r3, lr}
	ldr r1, _0223CEE4 @ =0x0225336C
	ldrb r2, [r1]
	cmp r2, #0
	popne {r3, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_0223CE28: @ jump table
	b _0223CE38 @ case 0
	b _0223CE78 @ case 1
	b _0223CE90 @ case 2
	b _0223CEC4 @ case 3
_0223CE38:
	mov r0, #3
	strb r0, [r1]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0x10
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _0223CEE8 @ =ov18_0223CEF4
	bl ov18_0222F6C4
	pop {r3, pc}
_0223CE78:
	mov r0, #1
	strb r0, [r1]
	bl ov18_0223E9FC
	ldr r0, _0223CEEC @ =ov18_0223CC88
	bl ov18_0222F6C4
	pop {r3, pc}
_0223CE90:
	bl ov18_0223E9FC
	mov r0, #0
	bl ov18_0223F800
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x11
	str r1, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _0223CEF0 @ =ov18_0223CF40
	bl ov18_0222F6C4
	pop {r3, pc}
_0223CEC4:
	mov r0, #2
	strb r0, [r1]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0223CEEC @ =ov18_0223CC88
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CEE4: .4byte 0x0225336C
_0223CEE8: .4byte ov18_0223CEF4
_0223CEEC: .4byte ov18_0223CC88
_0223CEF0: .4byte ov18_0223CF40
	arm_func_end ov18_0223CE08

	arm_func_start ov18_0223CEF4
ov18_0223CEF4: @ 0x0223CEF4
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	popne {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _0223CF1C @ =ov18_0223CF20
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CF1C: .4byte ov18_0223CF20
	arm_func_end ov18_0223CEF4

	arm_func_start ov18_0223CF20
ov18_0223CF20: @ 0x0223CF20
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223CF3C @ =ov18_0223CC88
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CF3C: .4byte ov18_0223CC88
	arm_func_end ov18_0223CF20

	arm_func_start ov18_0223CF40
ov18_0223CF40: @ 0x0223CF40
	push {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	beq _0223CF70
	cmp r0, #1
	popne {r3, pc}
	ldr r1, _0223CF94 @ =0x0225336C
	mov r2, #3
	mov r0, #6
	strb r2, [r1]
	bl ov18_0223E994
	b _0223CF84
_0223CF70:
	ldr r1, _0223CF94 @ =0x0225336C
	mov r2, #1
	mov r0, #7
	strb r2, [r1]
	bl ov18_0223E994
_0223CF84:
	bl ov18_0223FF74
	ldr r0, _0223CF98 @ =ov18_0223CF9C
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CF94: .4byte 0x0225336C
_0223CF98: .4byte ov18_0223CF9C
	arm_func_end ov18_0223CF40

	arm_func_start ov18_0223CF9C
ov18_0223CF9C: @ 0x0223CF9C
	push {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223CFF4 @ =0x0225336C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0223CFC8
	ldr r0, _0223CFF8 @ =ov18_0223CC88
	bl ov18_0222F6C4
	pop {r3, pc}
_0223CFC8:
	mov r0, #0xb
	bl ov18_0223E994
	bl ov18_0222B0A8
	ldr r1, _0223CFF4 @ =0x0225336C
	mov r2, #0
	ldr r0, _0223CFFC @ =ov18_0223CE08
	strb r2, [r1]
	bl ov18_0223F800
	ldr r0, _0223D000 @ =ov18_0223CBEC
	bl ov18_0222F6C4
	pop {r3, pc}
	.align 2, 0
_0223CFF4: .4byte 0x0225336C
_0223CFF8: .4byte ov18_0223CC88
_0223CFFC: .4byte ov18_0223CE08
_0223D000: .4byte ov18_0223CBEC
	arm_func_end ov18_0223CF9C

	arm_func_start ov18_0223D004
ov18_0223D004: @ 0x0223D004
	push {r4, lr}
	mov r4, r0
	ldr r0, _0223D058 @ =0x00000608
	mov r1, #4
	bl ov18_02245068
	mov ip, r0
	ldr r3, _0223D05C @ =0x02253370
	mov r0, r4
	add r1, ip, #4
	mov r2, #0x600
	str ip, [r3]
	bl FUN_020C4C14
	ldr r1, _0223D060 @ =ov18_0223D100
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223D05C @ =0x02253370
	ldr r1, [r1]
	str r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0223D058: .4byte 0x00000608
_0223D05C: .4byte 0x02253370
_0223D060: .4byte ov18_0223D100
	arm_func_end ov18_0223D004

	arm_func_start ov18_0223D064
ov18_0223D064: @ 0x0223D064
	push {r3, lr}
	ldr r1, _0223D088 @ =0x02253370
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1]
	bl ov18_022463CC
	ldr r0, _0223D08C @ =0x02253370
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0223D088: .4byte 0x02253370
_0223D08C: .4byte 0x02253370
	arm_func_end ov18_0223D064

	arm_func_start ov18_0223D090
ov18_0223D090: @ 0x0223D090
	ldr r0, _0223D0A4 @ =0x02253370
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x604]
	bx lr
	.align 2, 0
_0223D0A4: .4byte 0x02253370
	arm_func_end ov18_0223D090

	arm_func_start ov18_0223D0A8
ov18_0223D0A8: @ 0x0223D0A8
	push {r4, r5, r6, r7, r8, lr}
	ldr ip, _0223D0FC @ =0x02253370
	mov r7, r3
	ldr r3, [ip]
	mov r8, r0
	add r0, r3, #4
	add r4, r0, r1, lsl #1
	mov r5, #0
	cmp r7, #0
	pople {r4, r5, r6, r7, r8, pc}
	lsl r6, r2, #1
_0223D0D4:
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl FUN_020C4B18
	add r5, r5, #1
	cmp r5, r7
	add r8, r8, #0x40
	add r4, r4, #0x40
	blt _0223D0D4
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223D0FC: .4byte 0x02253370
	arm_func_end ov18_0223D0A8

	arm_func_start ov18_0223D100
ov18_0223D100: @ 0x0223D100
	push {r3, lr}
	ldr r0, _0223D150 @ =0x02253370
	ldr r1, [r0]
	ldrb r0, [r1, #0x604]
	cmp r0, #0
	popeq {r3, pc}
	add r0, r1, #4
	mov r1, #0x600
	bl FUN_020C2C54
	ldr r0, _0223D150 @ =0x02253370
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x600
	add r0, r0, #4
	bl FUN_020C04EC
	ldr r0, _0223D150 @ =0x02253370
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x604]
	pop {r3, pc}
	.align 2, 0
_0223D150: .4byte 0x02253370
	arm_func_end ov18_0223D100

	arm_func_start ov18_0223D154
ov18_0223D154: @ 0x0223D154
	push {r3, lr}
	ldr ip, _0223D188 @ =0x02253370
	add r3, r0, r1, lsl #5
	lsl r0, r2, #5
	ldr r1, _0223D18C @ =ov18_0223D190
	str r3, [ip, #4]
	add lr, r0, #0x5000000
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	str lr, [ip, #8]
	bl ov18_02246304
	pop {r3, pc}
	.align 2, 0
_0223D188: .4byte 0x02253370
_0223D18C: .4byte ov18_0223D190
	arm_func_end ov18_0223D154

	arm_func_start ov18_0223D190
ov18_0223D190: @ 0x0223D190
	push {r4, lr}
	ldr r1, _0223D1B8 @ =0x02253370
	mov r4, r0
	mov r2, #0x20
	ldmib r1, {r0, r1}
	bl FUN_020C4B18
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_0223D1B8: .4byte 0x02253370
	arm_func_end ov18_0223D190

	arm_func_start ov18_0223D1BC
ov18_0223D1BC: @ 0x0223D1BC
	ldr r2, _0223D1DC @ =0x02253370
	ldr ip, _0223D1E0 @ =ov18_02246304
	str r0, [r2, #4]
	ldr r1, _0223D1E4 @ =ov18_0223D1E8
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bx ip
	.align 2, 0
_0223D1DC: .4byte 0x02253370
_0223D1E0: .4byte ov18_02246304
_0223D1E4: .4byte ov18_0223D1E8
	arm_func_end ov18_0223D1BC

	arm_func_start ov18_0223D1E8
ov18_0223D1E8: @ 0x0223D1E8
	push {r4, lr}
	ldr r1, _0223D214 @ =0x02253370
	mov r4, r0
	ldr r0, [r1, #4]
	mov r1, #0x5000000
	mov r2, #0x200
	bl FUN_020C4B18
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_0223D214: .4byte 0x02253370
	arm_func_end ov18_0223D1E8

	arm_func_start ov18_0223D218
ov18_0223D218: @ 0x0223D218
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r1
	mov r0, #0x20
	mov r1, #4
	mov r5, r2
	mov r4, r3
	bl ov18_02245068
	ldr r2, _0223D2E4 @ =0x0225337C
	ldr ip, [sp, #0x18]
	str r0, [r2]
	strb r6, [r0, #0x1b]
	ldr r1, [r2]
	mov r0, r5
	strb r7, [r1, #0x19]
	ldr r3, [r2]
	mov r1, r4
	strb ip, [r3, #0x1a]
	ldr r2, [r2]
	add r2, r2, #0x10
	bl ov18_02244C2C
	ldr r1, _0223D2E8 @ =0x0224956C
	mov r0, #0
	ldrb r1, [r1, r6]
	mov r2, #1
	bl ov18_02243F8C
	mov r2, r5
	ldr r5, _0223D2E4 @ =0x0225337C
	ldr r3, [sp, #0x18]
	ldr r6, [r5]
	mvn r1, #0
	str r0, [r6]
	ldr r0, [r5]
	add r3, r4, r3
	ldr r0, [r0]
	bl ov18_02243CF4
	mov r0, r5
	ldr r0, [r0]
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #1
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0223D2EC @ =ov18_0223D390
	mov r2, r0
	mov r3, #0x80
	bl ov18_02246304
	mov r1, r5
	ldr r1, [r1]
	str r0, [r1, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D2E4: .4byte 0x0225337C
_0223D2E8: .4byte 0x0224956C
_0223D2EC: .4byte ov18_0223D390
	arm_func_end ov18_0223D218

	arm_func_start ov18_0223D2F0
ov18_0223D2F0: @ 0x0223D2F0
	push {r3, lr}
	ldr r1, _0223D324 @ =0x0225337C
	mov r0, #0
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	bl ov18_022463CC
	ldr r0, _0223D324 @ =0x0225337C
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov18_02243B3C
	ldr r0, _0223D328 @ =0x0225337C
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0223D324: .4byte 0x0225337C
_0223D328: .4byte 0x0225337C
	arm_func_end ov18_0223D2F0

	arm_func_start ov18_0223D32C
ov18_0223D32C: @ 0x0223D32C
	ldr r0, _0223D33C @ =0x0225337C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	bx lr
	.align 2, 0
_0223D33C: .4byte 0x0225337C
	arm_func_end ov18_0223D32C

	arm_func_start ov18_0223D340
ov18_0223D340: @ 0x0223D340
	ldr r0, _0223D350 @ =0x0225337C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	bx lr
	.align 2, 0
_0223D350: .4byte 0x0225337C
	arm_func_end ov18_0223D340

	arm_func_start ov18_0223D354
ov18_0223D354: @ 0x0223D354
	ldr ip, _0223D35C @ =ov18_0223D8A0
	bx ip
	.align 2, 0
_0223D35C: .4byte ov18_0223D8A0
	arm_func_end ov18_0223D354

	arm_func_start ov18_0223D360
ov18_0223D360: @ 0x0223D360
	ldr r0, _0223D374 @ =0x0225337C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
	.align 2, 0
_0223D374: .4byte 0x0225337C
	arm_func_end ov18_0223D360

	arm_func_start ov18_0223D378
ov18_0223D378: @ 0x0223D378
	ldr r0, _0223D38C @ =0x0225337C
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
	.align 2, 0
_0223D38C: .4byte 0x0225337C
	arm_func_end ov18_0223D378

	arm_func_start ov18_0223D390
ov18_0223D390: @ 0x0223D390
	push {r3, lr}
	ldr r0, _0223D510 @ =0x0225337C
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x1d]
	ldr r1, [r0]
	ldrb r0, [r1, #0x1c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_0223D3B8: @ jump table
	b _0223D3C8 @ case 0
	b _0223D478 @ case 1
	b _0223D480 @ case 2
	b _0223D4C8 @ case 3
_0223D3C8:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	popne {r3, pc}
	bl ov18_0223D6F0
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_0223D3E4: @ jump table
	pop {r3, pc} @ case 0
	b _0223D3F8 @ case 1
	b _0223D458 @ case 2
	b _0223D464 @ case 3
	b _0223D470 @ case 4
_0223D3F8:
	ldr r0, _0223D510 @ =0x0225337C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0x16
	bl ov18_0223E994
	mov r0, #0
	bl ov18_0223E9B8
	ldr r0, _0223D510 @ =0x0225337C
	mov r2, #1
	ldr r1, [r0]
	strb r2, [r1, #0x1d]
	ldr r0, [r0]
	add r0, r0, #0x14
	bl ov18_022457B8
	ldr r0, _0223D510 @ =0x0225337C
	mov r1, #1
	ldr r3, [r0]
	ldrb r2, [r3, #0x1a]
	strb r2, [r3, #0x18]
	ldr r0, [r0]
	strb r1, [r0, #0x1c]
	pop {r3, pc}
_0223D458:
	mov r0, #2
	bl ov18_0223D65C
	pop {r3, pc}
_0223D464:
	mov r0, #3
	bl ov18_0223D65C
	pop {r3, pc}
_0223D470:
	bl ov18_0223D688
	pop {r3, pc}
_0223D478:
	bl ov18_0223D514
	pop {r3, pc}
_0223D480:
	mov r0, #2
	bl ov18_0223D77C
	cmp r0, #2
	beq _0223D4B0
	ldr r0, _0223D510 @ =0x0225337C
	mov r3, #5
	ldr r2, [r0]
	mov r1, #0
	strb r3, [r2, #0x1d]
	ldr r0, [r0]
	strb r1, [r0, #0x1c]
	pop {r3, pc}
_0223D4B0:
	bl ov18_0223D6F0
	cmp r0, #2
	popne {r3, pc}
	mov r0, #2
	bl ov18_0223D65C
	pop {r3, pc}
_0223D4C8:
	mov r0, #3
	bl ov18_0223D77C
	cmp r0, #3
	beq _0223D4F8
	ldr r0, _0223D510 @ =0x0225337C
	mov r3, #7
	ldr r2, [r0]
	mov r1, #0
	strb r3, [r2, #0x1d]
	ldr r0, [r0]
	strb r1, [r0, #0x1c]
	pop {r3, pc}
_0223D4F8:
	bl ov18_0223D6F0
	cmp r0, #3
	popne {r3, pc}
	mov r0, #3
	bl ov18_0223D65C
	pop {r3, pc}
	.align 2, 0
_0223D510: .4byte 0x0225337C
	arm_func_end ov18_0223D390

	arm_func_start ov18_0223D514
ov18_0223D514: @ 0x0223D514
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _0223D5D8 @ =0x02249734
	bl ov18_02245530
	cmp r0, #0
	beq _0223D5B0
	add r0, sp, #0
	bl ov18_022457B8
	ldr r0, _0223D5DC @ =0x0225337C
	ldrh r1, [sp]
	ldr r3, [r0]
	ldrh r0, [r3, #0x10]
	sub r0, r0, #0x1e
	cmp r1, r0
	blt _0223D5B0
	ldrh r1, [sp, #2]
	ldrh r0, [r3, #0x16]
	ldrb r2, [r3, #0x18]
	sub r0, r1, r0
	adds r4, r2, r0
	movmi r4, #0
	bmi _0223D588
	ldrb r1, [r3, #0x1b]
	ldr r0, _0223D5E0 @ =0x02249570
	ldrb r2, [r3, #0x19]
	ldrb r0, [r0, r1]
	sub r0, r2, r0
	cmp r4, r0
	movge r4, r0
_0223D588:
	mov r0, r4
	bl ov18_0223D5E4
	mov r0, r4
	bl ov18_0223D8A0
	ldr r0, _0223D5DC @ =0x0225337C
	mov r1, #2
	ldr r0, [r0]
	add sp, sp, #4
	strb r1, [r0, #0x1d]
	pop {r3, r4, pc}
_0223D5B0:
	bl ov18_0223E9FC
	ldr r0, _0223D5DC @ =0x0225337C
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	strb r3, [r2, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223D5D8: .4byte 0x02249734
_0223D5DC: .4byte 0x0225337C
_0223D5E0: .4byte 0x02249570
	arm_func_end ov18_0223D514

	arm_func_start ov18_0223D5E4
ov18_0223D5E4: @ 0x0223D5E4
	push {r4, lr}
	ldr r1, _0223D654 @ =0x0225337C
	ldr r1, [r1]
	ldrb r1, [r1, #0x1a]
	subs r4, r1, r0
	rsbmi r4, r4, #0
	cmp r4, #2
	movlt r0, #0
	blt _0223D61C
	cmp r4, #6
	mov r0, #0x7f
	bge _0223D61C
	rsb r1, r4, #6
	bl FUN_020BD104
_0223D61C:
	bl ov18_0223E9B8
	cmp r4, #2
	mvnlt r1, #0xff
	blt _0223D648
	cmp r4, #6
	movge r1, #0x100
	bge _0223D648
	rsb r1, r4, #6
	mov r0, #0x200
	bl FUN_020BD104
	sub r1, r0, #0x100
_0223D648:
	ldr r0, _0223D658 @ =0x0000FFFF
	bl ov18_0223E9D8
	pop {r4, pc}
	.align 2, 0
_0223D654: .4byte 0x0225337C
_0223D658: .4byte 0x0000FFFF
	arm_func_end ov18_0223D5E4

	arm_func_start ov18_0223D65C
ov18_0223D65C: @ 0x0223D65C
	ldr r1, _0223D684 @ =0x0225337C
	cmp r0, #2
	ldr r1, [r1]
	strb r0, [r1, #0x1c]
	ldr r0, _0223D684 @ =0x0225337C
	moveq r1, #4
	ldr r0, [r0]
	movne r1, #6
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0
_0223D684: .4byte 0x0225337C
	arm_func_end ov18_0223D65C

	arm_func_start ov18_0223D688
ov18_0223D688: @ 0x0223D688
	push {r3, lr}
	add r0, sp, #0
	bl ov18_022457B8
	ldr r0, _0223D6E8 @ =0x0225337C
	ldr r2, _0223D6EC @ =0x02249570
	ldr ip, [r0]
	ldrh r1, [sp, #2]
	ldrb r3, [ip, #0x1b]
	ldrh r0, [ip, #0x12]
	ldrb r2, [r2, r3]
	sub r0, r1, r0
	subs r0, r0, r2, lsr #1
	movmi r0, #0
	bmi _0223D6D0
	ldrb r1, [ip, #0x19]
	sub r1, r1, r2
	cmp r0, r1
	movge r0, r1
_0223D6D0:
	bl ov18_0223D8A0
	ldr r0, _0223D6E8 @ =0x0225337C
	mov r1, #3
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	pop {r3, pc}
	.align 2, 0
_0223D6E8: .4byte 0x0225337C
_0223D6EC: .4byte 0x02249570
	arm_func_end ov18_0223D688

	arm_func_start ov18_0223D6F0
ov18_0223D6F0: @ 0x0223D6F0
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	add r1, sp, #0
	mov r0, #1
	bl ov18_0223D7C8
	add r0, sp, #0
	bl ov18_02245640
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r5, #2
	add r4, sp, #0
_0223D724:
	mov r0, r5
	mov r1, r4
	bl ov18_0223D7C8
	mov r0, r4
	bl ov18_02245640
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	popne {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _0223D724
	add r1, sp, #0
	mov r0, #4
	bl ov18_0223D7C8
	add r0, sp, #0
	bl ov18_022455B8
	cmp r0, #0
	movne r0, #4
	moveq r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	arm_func_end ov18_0223D6F0

	arm_func_start ov18_0223D77C
ov18_0223D77C: @ 0x0223D77C
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, #2
	add r4, sp, #0
_0223D78C:
	mov r0, r5
	mov r1, r4
	bl ov18_0223D7C8
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	popne {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _0223D78C
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	arm_func_end ov18_0223D77C

	arm_func_start ov18_0223D7C8
ov18_0223D7C8: @ 0x0223D7C8
	ldr r2, _0223D898 @ =0x0225337C
	cmp r0, #4
	ldr r3, [r2]
	ldrh r3, [r3, #0x10]
	strh r3, [r1]
	add r3, r3, #0xc
	strh r3, [r1, #4]
	addls pc, pc, r0, lsl #2
	bx lr
_0223D7EC: @ jump table
	bx lr @ case 0
	b _0223D800 @ case 1
	b _0223D834 @ case 2
	b _0223D854 @ case 3
	b _0223D878 @ case 4
_0223D800:
	ldr r3, [r2]
	ldr r0, _0223D89C @ =0x02249570
	ldrh ip, [r3, #0x12]
	ldrb r3, [r3, #0x1a]
	add r3, ip, r3
	strh r3, [r1, #2]
	ldr r2, [r2]
	ldrh r3, [r1, #2]
	ldrb r2, [r2, #0x1b]
	ldrb r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
_0223D834:
	ldr r0, [r2]
	ldrh r0, [r0, #0x12]
	sub r0, r0, #0xd
	strh r0, [r1, #2]
	ldr r0, [r2]
	ldrh r0, [r0, #0x12]
	strh r0, [r1, #6]
	bx lr
_0223D854:
	ldr r0, [r2]
	ldrh r2, [r0, #0x12]
	ldrb r0, [r0, #0x19]
	add r0, r2, r0
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	add r0, r0, #0xd
	strh r0, [r1, #6]
	bx lr
_0223D878:
	ldr r0, [r2]
	ldrh r3, [r0, #0x12]
	strh r3, [r1, #2]
	ldr r0, [r2]
	ldrb r0, [r0, #0x19]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0223D898: .4byte 0x0225337C
_0223D89C: .4byte 0x02249570
	arm_func_end ov18_0223D7C8

	arm_func_start ov18_0223D8A0
ov18_0223D8A0: @ 0x0223D8A0
	push {r4, lr}
	ldr r1, _0223D8D8 @ =0x0225337C
	mov r4, r0
	ldr r0, [r1]
	mvn r1, #0
	ldrh r3, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	ldr r0, [r0]
	add r3, r4, r3
	bl ov18_02243CF4
	ldr r0, _0223D8D8 @ =0x0225337C
	ldr r0, [r0]
	strb r4, [r0, #0x1a]
	pop {r4, pc}
	.align 2, 0
_0223D8D8: .4byte 0x0225337C
	arm_func_end ov18_0223D8A0

	arm_func_start ov18_0223D8DC
ov18_0223D8DC: @ 0x0223D8DC
	push {r3, lr}
	ldr r0, _0223D908 @ =0x02253380
	ldr r0, [r0]
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _0223D90C @ =0x00001E60
	mov r1, #0x20
	bl ov18_02245068
	ldr r1, _0223D908 @ =0x02253380
	str r0, [r1]
	pop {r3, pc}
	.align 2, 0
_0223D908: .4byte 0x02253380
_0223D90C: .4byte 0x00001E60
	arm_func_end ov18_0223D8DC

	arm_func_start ov18_0223D910
ov18_0223D910: @ 0x0223D910
	push {r3, lr}
	ldr r0, _0223D93C @ =0x02253380
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
_0223D924:
	bl FUN_020CE7F4
	cmp r0, #0x8000
	bne _0223D924
	ldr r0, _0223D940 @ =0x02253380
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0223D93C: .4byte 0x02253380
_0223D940: .4byte 0x02253380
	arm_func_end ov18_0223D910

	arm_func_start ov18_0223D944
ov18_0223D944: @ 0x0223D944
	push {r3, r4, r5, lr}
	ldr r1, _0223DA04 @ =0x02253380
	mov r0, #0
	ldr r1, [r1]
	mov r2, #0x348
	add r1, r1, #0x1300
	bl FUN_020C4AF0
	ldr r0, _0223DA04 @ =0x02253380
	ldr r1, _0223DA08 @ =ov18_0223DB3C
	ldr r0, [r0]
	mov r2, #3
	bl FUN_020CECC8
	cmp r0, #2
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldr r4, _0223DA04 @ =0x02253380
_0223D984:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl FUN_020CE594
	ldr ip, [r4]
	add r0, ip, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _0223D984
	add r0, ip, #0x248
	ldr r5, _0223DA0C @ =0x02249580
	add lr, r0, #0x1400
	mov r4, #4
_0223D9B8:
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0223D9B8
	ldr r0, [r5]
	add r1, ip, #0xf00
	str r0, [lr]
	add r0, ip, #0x1000
	str r1, [r0, #0x648]
	bl FUN_020CE934
	ldr r1, _0223DA04 @ =0x02253380
	ldr r1, [r1]
	add r1, r1, #0x1600
	strh r0, [r1, #0x50]
	bl ov18_0223DA10
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DA04: .4byte 0x02253380
_0223DA08: .4byte ov18_0223DB3C
_0223DA0C: .4byte 0x02249580
	arm_func_end ov18_0223D944

	arm_func_start ov18_0223DA10
ov18_0223DA10: @ 0x0223DA10
	push {r3, lr}
	ldr r1, _0223DA3C @ =0x02253380
	ldr r0, _0223DA40 @ =ov18_0223DB3C
	ldr r1, [r1]
	add r1, r1, #0x248
	add r1, r1, #0x1400
	bl FUN_020CF08C
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	.align 2, 0
_0223DA3C: .4byte 0x02253380
_0223DA40: .4byte ov18_0223DB3C
	arm_func_end ov18_0223DA10

	arm_func_start ov18_0223DA44
ov18_0223DA44: @ 0x0223DA44
	push {r4, lr}
	ldr r1, _0223DAD8 @ =0x02253380
	mov r2, #1
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r2, [r0, #0xe5c]
	ldr r0, [r1]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl FUN_020CE594
	ldr r0, _0223DAD8 @ =0x02253380
	ldr r0, [r0]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	beq _0223DAC0
	ldr r0, _0223DADC @ =ov18_0223DB3C
	bl FUN_020CED50
	cmp r0, #2
	movne r0, #0
	popne {r4, pc}
	ldr r4, _0223DAD8 @ =0x02253380
_0223DA9C:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl FUN_020CE594
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _0223DA9C
_0223DAC0:
	ldr r0, _0223DADC @ =ov18_0223DB3C
	bl FUN_020CED88
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	pop {r4, pc}
	.align 2, 0
_0223DAD8: .4byte 0x02253380
_0223DADC: .4byte ov18_0223DB3C
	arm_func_end ov18_0223DA44

	arm_func_start ov18_0223DAE0
ov18_0223DAE0: @ 0x0223DAE0
	push {r4, r5, r6, r7, r8, lr}
	ldr r1, _0223DB34 @ =0x02253380
	mov r6, #0
	ldr r1, [r1]
	ldr r5, _0223DB38 @ =0x02249578
	add r8, r1, #0x1300
	mov r7, r6
	str r8, [r0]
	mov r4, #6
_0223DB04:
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x20
	bl FUN_020D5190
	cmp r0, #0
	add r7, r7, #1
	addne r6, r6, #1
	cmp r7, #0x14
	add r8, r8, #0x2a
	blt _0223DB04
	mov r0, r6
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223DB34: .4byte 0x02253380
_0223DB38: .4byte 0x02249578
	arm_func_end ov18_0223DAE0

	arm_func_start ov18_0223DB3C
ov18_0223DB3C: @ 0x0223DB3C
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	popne {r3, pc}
	ldr r1, _0223DB9C @ =0x02253380
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldrb r1, [r1, #0xe5c]
	cmp r1, #0
	ldrheq r1, [r0]
	cmpeq r1, #0x26
	popne {r3, pc}
	ldrh r1, [r0, #8]
	cmp r1, #4
	beq _0223DB8C
	cmp r1, #5
	bne _0223DB94
	bl ov18_0223DBA0
	bl ov18_0223DA10
	pop {r3, pc}
_0223DB8C:
	bl ov18_0223DA10
	pop {r3, pc}
_0223DB94:
	bl FUN_020C42A8
	pop {r3, pc}
	.align 2, 0
_0223DB9C: .4byte 0x02253380
	arm_func_end ov18_0223DB3C

	arm_func_start ov18_0223DBA0
ov18_0223DBA0: @ 0x0223DBA0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x88
	ldr r1, _0223DD68 @ =0x02253380
	mov fp, r0
	ldr r2, [r1]
	mov r1, #0x400
	add r0, r2, #0xf00
	add r2, r2, #0x1300
	str r2, [sp]
	bl FUN_020C2C1C
	ldrh r0, [fp, #0xe]
	mov sl, #0
	cmp r0, #0
	addle sp, sp, #0x88
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223DBDC:
	add r0, fp, sl, lsl #2
	ldr r4, [r0, #0x10]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0223DD50
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _0223DD50
	ldr r7, [sp]
	mov r5, #0
	mov r6, #6
_0223DC08:
	mov r2, r6
	add r0, r4, #4
	add r1, r7, #0x20
	bl FUN_020D5190
	cmp r0, #0
	beq _0223DC30
	add r5, r5, #1
	cmp r5, #0x14
	add r7, r7, #0x2a
	blt _0223DC08
_0223DC30:
	cmp r5, #0x14
	bne _0223DC7C
	ldr r8, [sp]
	ldr r7, _0223DD6C @ =0x02249578
	mov r5, #0
	mov r6, #6
_0223DC48:
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x20
	bl FUN_020D5190
	cmp r0, #0
	beq _0223DC70
	add r5, r5, #1
	cmp r5, #0x14
	add r8, r8, #0x2a
	blt _0223DC48
_0223DC70:
	cmp r5, #0x14
	addeq sp, sp, #0x88
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223DC7C:
	ldr r0, [sp]
	mov r1, #0x2a
	mla sb, r5, r1, r0
	add r0, r4, #4
	add r1, sb, #0x20
	mov r2, #6
	bl FUN_020C4DB0
	mov r1, sb
	add r0, r4, #0xc
	mov r2, #0x20
	bl FUN_020C4DB0
	add r0, fp, sl, lsl #1
	ldrh r0, [r0, #0x50]
	strh r0, [sb, #0x26]
	ldrh r0, [r4, #0x2c]
	tst r0, #0x10
	moveq r0, #0
	strbeq r0, [sb, #0x28]
	beq _0223DD50
	mov r2, #1
	add r0, sp, #4
	mov r1, r4
	strb r2, [sb, #0x28]
	bl FUN_020CE9C8
	ldrb r8, [sp, #4]
	mov r7, #0
	cmp r8, #0
	ble _0223DD50
	ldr r5, _0223DD70 @ =0x02249574
	mov r4, #4
	add r6, sp, #4
_0223DCF8:
	add r1, r6, r7, lsl #3
	ldrb r0, [r1, #4]
	cmp r0, #0x30
	moveq r0, #2
	strbeq r0, [sb, #0x28]
	beq _0223DD50
	cmp r0, #0xdd
	bne _0223DD44
	ldrb r0, [r1, #5]
	cmp r0, #4
	blo _0223DD44
	ldr r0, [r1, #8]
	mov r1, r5
	mov r2, r4
	bl FUN_020D5190
	cmp r0, #0
	moveq r0, #2
	strbeq r0, [sb, #0x28]
	beq _0223DD50
_0223DD44:
	add r7, r7, #1
	cmp r7, r8
	blt _0223DCF8
_0223DD50:
	ldrh r0, [fp, #0xe]
	add sl, sl, #1
	cmp sl, r0
	blt _0223DBDC
	add sp, sp, #0x88
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223DD68: .4byte 0x02253380
_0223DD6C: .4byte 0x02249578
_0223DD70: .4byte 0x02249574
	arm_func_end ov18_0223DBA0

	arm_func_start ov18_0223DD74
ov18_0223DD74: @ 0x0223DD74
	push {r3, lr}
	ldr r0, _0223DDAC @ =0x000006F8
	mov r1, #0x20
	bl ov18_02245068
	ldr r1, _0223DDB0 @ =0x02253384
	add r2, r0, #0xf8
	str r0, [r1]
	ldr r1, _0223DDB4 @ =0x0000A001
	add r0, r2, #0x400
	bl FUN_020D316C
	ldr r0, _0223DDB0 @ =0x02253384
	ldr r0, [r0]
	bl FUN_020A2A34
	pop {r3, pc}
	.align 2, 0
_0223DDAC: .4byte 0x000006F8
_0223DDB0: .4byte 0x02253384
_0223DDB4: .4byte 0x0000A001
	arm_func_end ov18_0223DD74

	arm_func_start ov18_0223DDB8
ov18_0223DDB8: @ 0x0223DDB8
	ldr ip, _0223DDC4 @ =ov18_0224508C
	ldr r0, _0223DDC8 @ =0x02253384
	bx ip
	.align 2, 0
_0223DDC4: .4byte ov18_0224508C
_0223DDC8: .4byte 0x02253384
	arm_func_end ov18_0223DDB8

	arm_func_start ov18_0223DDCC
ov18_0223DDCC: @ 0x0223DDCC
	ldr r0, _0223DDDC @ =0x02253384
	ldr r0, [r0]
	add r0, r0, #0x400
	bx lr
	.align 2, 0
_0223DDDC: .4byte 0x02253384
	arm_func_end ov18_0223DDCC

	arm_func_start ov18_0223DDE0
ov18_0223DDE0: @ 0x0223DDE0
	ldr r1, _0223DDF0 @ =0x02253384
	ldr r1, [r1]
	strb r0, [r1, #0x4f5]
	bx lr
	.align 2, 0
_0223DDF0: .4byte 0x02253384
	arm_func_end ov18_0223DDE0

	arm_func_start ov18_0223DDF4
ov18_0223DDF4: @ 0x0223DDF4
	ldr r1, _0223DE04 @ =0x02253384
	ldr r1, [r1]
	strb r0, [r1, #0x4f6]
	bx lr
	.align 2, 0
_0223DE04: .4byte 0x02253384
	arm_func_end ov18_0223DDF4

	arm_func_start ov18_0223DE08
ov18_0223DE08: @ 0x0223DE08
	push {r3, lr}
	ldr r1, _0223DE34 @ =0x02253384
	mov r2, #0x20
	ldr r1, [r1]
	add r1, r1, #0x440
	bl FUN_020C4DB0
	ldr r0, _0223DE34 @ =0x02253384
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x4e7]
	pop {r3, pc}
	.align 2, 0
_0223DE34: .4byte 0x02253384
	arm_func_end ov18_0223DE08

	arm_func_start ov18_0223DE38
ov18_0223DE38: @ 0x0223DE38
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _0223DFCC @ =0x02253384
	mov r6, r0
	ldr r0, [r1]
	mov r1, #0
	add r0, r0, #0x480
	mov r2, #0x10
	bl FUN_020C4CF4
	mov r0, r6
	mov r1, #0x20
	bl ov18_02245E50
	mov r5, r0
	cmp r5, #0xa
	bgt _0223DE80
	bge _0223DE98
	cmp r5, #0
	beq _0223DE98
	b _0223DEF0
_0223DE80:
	cmp r5, #0x1a
	bgt _0223DE90
	beq _0223DE98
	b _0223DEF0
_0223DE90:
	cmp r5, #0x20
	bne _0223DEF0
_0223DE98:
	ldr r0, _0223DFCC @ =0x02253384
	cmp r5, #0
	ldr r2, [r0]
	mov r4, #0
	ldrb r1, [r2, #0x4e6]
	bic r1, r1, #0xfc
	strb r1, [r2, #0x4e6]
	ldr r0, [r0]
	add r8, r0, #0x480
	ble _0223DF1C
_0223DEC0:
	ldrb r0, [r6, r4]
	add sb, r6, r4
	bl ov18_0223E8BC
	mov r7, r0
	ldrb r0, [sb, #1]
	bl ov18_0223E8BC
	add r0, r0, r7, lsl #4
	add r4, r4, #2
	cmp r4, r5
	strb r0, [r8], #1
	blt _0223DEC0
	b _0223DF1C
_0223DEF0:
	ldr r1, _0223DFCC @ =0x02253384
	mov r0, r6
	ldr r4, [r1]
	mov r2, #0x10
	ldrb r3, [r4, #0x4e6]
	bic r3, r3, #0xfc
	orr r3, r3, #4
	strb r3, [r4, #0x4e6]
	ldr r1, [r1]
	add r1, r1, #0x480
	bl FUN_020C4DB0
_0223DF1C:
	cmp r5, #5
	bgt _0223DF34
	bge _0223DF78
	cmp r5, #0
	beq _0223DF60
	b _0223DFB0
_0223DF34:
	cmp r5, #0xd
	bgt _0223DF54
	cmp r5, #0xa
	blt _0223DFB0
	beq _0223DF78
	cmp r5, #0xd
	beq _0223DF94
	b _0223DFB0
_0223DF54:
	cmp r5, #0x1a
	beq _0223DF94
	b _0223DFB0
_0223DF60:
	ldr r0, _0223DFCC @ =0x02253384
	ldr r1, [r0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	strb r0, [r1, #0x4e6]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_0223DF78:
	ldr r0, _0223DFCC @ =0x02253384
	ldr r1, [r0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r1, #0x4e6]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_0223DF94:
	ldr r0, _0223DFCC @ =0x02253384
	ldr r1, [r0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r1, #0x4e6]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_0223DFB0:
	ldr r0, _0223DFCC @ =0x02253384
	ldr r1, [r0]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r1, #0x4e6]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0223DFCC: .4byte 0x02253384
	arm_func_end ov18_0223DE38

	arm_func_start ov18_0223DFD0
ov18_0223DFD0: @ 0x0223DFD0
	ldr r1, _0223DFE4 @ =0x02253384
	ldr ip, _0223DFE8 @ =ov18_0223E834
	ldr r1, [r1]
	add r1, r1, #0x4c0
	bx ip
	.align 2, 0
_0223DFE4: .4byte 0x02253384
_0223DFE8: .4byte ov18_0223E834
	arm_func_end ov18_0223DFD0

	arm_func_start ov18_0223DFEC
ov18_0223DFEC: @ 0x0223DFEC
	ldr r1, _0223E000 @ =0x02253384
	ldr ip, _0223E004 @ =ov18_0223E834
	ldr r1, [r1]
	add r1, r1, #0x4f0
	bx ip
	.align 2, 0
_0223E000: .4byte 0x02253384
_0223E004: .4byte ov18_0223E834
	arm_func_end ov18_0223DFEC

	arm_func_start ov18_0223E008
ov18_0223E008: @ 0x0223E008
	ldr r1, _0223E020 @ =0x02253384
	ldr ip, _0223E024 @ =ov18_0223E834
	ldr r1, [r1]
	add r1, r1, #0xc4
	add r1, r1, #0x400
	bx ip
	.align 2, 0
_0223E020: .4byte 0x02253384
_0223E024: .4byte ov18_0223E834
	arm_func_end ov18_0223E008

	arm_func_start ov18_0223E028
ov18_0223E028: @ 0x0223E028
	ldr r1, _0223E040 @ =0x02253384
	ldr ip, _0223E044 @ =ov18_0223E834
	ldr r1, [r1]
	add r1, r1, #0xc8
	add r1, r1, #0x400
	bx ip
	.align 2, 0
_0223E040: .4byte 0x02253384
_0223E044: .4byte ov18_0223E834
	arm_func_end ov18_0223E028

	arm_func_start ov18_0223E048
ov18_0223E048: @ 0x0223E048
	ldr r1, _0223E060 @ =0x02253384
	ldr ip, _0223E064 @ =ov18_0223E834
	ldr r1, [r1]
	add r1, r1, #0xcc
	add r1, r1, #0x400
	bx ip
	.align 2, 0
_0223E060: .4byte 0x02253384
_0223E064: .4byte ov18_0223E834
	arm_func_end ov18_0223E048

	arm_func_start ov18_0223E068
ov18_0223E068: @ 0x0223E068
	ldr r2, _0223E084 @ =0x02253384
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _0223E088 @ =FUN_020C4DB0
	mov r2, #0x20
	add r0, r0, #0x440
	bx ip
	.align 2, 0
_0223E084: .4byte 0x02253384
_0223E088: .4byte FUN_020C4DB0
	arm_func_end ov18_0223E068

	arm_func_start ov18_0223E08C
ov18_0223E08C: @ 0x0223E08C
	push {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E0C4 @ =0x02253384
	ldr r1, _0223E0C8 @ =0x0224A5A8
	ldr r3, [r2]
	ldrb r2, [r3, #0x4c2]
	str r2, [sp]
	ldrb r2, [r3, #0x4c3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4c0]
	ldrb r3, [r3, #0x4c1]
	bl FUN_020C1AB0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0223E0C4: .4byte 0x02253384
_0223E0C8: .4byte 0x0224A5A8
	arm_func_end ov18_0223E08C

	arm_func_start ov18_0223E0CC
ov18_0223E0CC: @ 0x0223E0CC
	push {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E104 @ =0x02253384
	ldr r1, _0223E108 @ =0x0224A5A8
	ldr r3, [r2]
	ldrb r2, [r3, #0x4f2]
	str r2, [sp]
	ldrb r2, [r3, #0x4f3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4f0]
	ldrb r3, [r3, #0x4f1]
	bl FUN_020C1AB0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0223E104: .4byte 0x02253384
_0223E108: .4byte 0x0224A5A8
	arm_func_end ov18_0223E0CC

	arm_func_start ov18_0223E10C
ov18_0223E10C: @ 0x0223E10C
	push {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E148 @ =0x02253384
	ldr r1, _0223E14C @ =0x0224A5A8
	ldr ip, [r2]
	add r3, ip, #0xc4
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x4c4]
	ldrb r3, [r3, #0x401]
	bl FUN_020C1AB0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0223E148: .4byte 0x02253384
_0223E14C: .4byte 0x0224A5A8
	arm_func_end ov18_0223E10C

	arm_func_start ov18_0223E150
ov18_0223E150: @ 0x0223E150
	push {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E18C @ =0x02253384
	ldr r1, _0223E190 @ =0x0224A5A8
	ldr ip, [r2]
	add r3, ip, #0xc8
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x4c8]
	ldrb r3, [r3, #0x401]
	bl FUN_020C1AB0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0223E18C: .4byte 0x02253384
_0223E190: .4byte 0x0224A5A8
	arm_func_end ov18_0223E150

	arm_func_start ov18_0223E194
ov18_0223E194: @ 0x0223E194
	push {r3, lr}
	sub sp, sp, #8
	ldr r2, _0223E1D0 @ =0x02253384
	ldr r1, _0223E1D4 @ =0x0224A5A8
	ldr ip, [r2]
	add r3, ip, #0xcc
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [ip, #0x4cc]
	ldrb r3, [r3, #0x401]
	bl FUN_020C1AB0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0223E1D0: .4byte 0x02253384
_0223E1D4: .4byte 0x0224A5A8
	arm_func_end ov18_0223E194

	arm_func_start ov18_0223E1D8
ov18_0223E1D8: @ 0x0223E1D8
	ldr r1, _0223E1EC @ =0x02253384
	ldr r1, [r1]
	add r0, r1, r0, lsl #8
	ldrb r0, [r0, #0xe7]
	bx lr
	.align 2, 0
_0223E1EC: .4byte 0x02253384
	arm_func_end ov18_0223E1D8

	arm_func_start ov18_0223E1F0
ov18_0223E1F0: @ 0x0223E1F0
	push {r3, r4, r5, lr}
	ldr r1, _0223E2C8 @ =0x02253384
	mov r3, #0x78
	ldr r5, [r1]
	add r4, r5, r0, lsl #8
	mov lr, r4
	add ip, r5, #0x400
_0223E20C:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	subs r3, r3, #1
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	bne _0223E20C
	ldr r1, _0223E2CC @ =0x022495C4
	strb r0, [r5, #0x4f4]
	add r0, r4, #0xc0
	mov r2, #4
	bl FUN_020D5190
	cmp r0, #0
	ldrne r0, _0223E2C8 @ =0x02253384
	movne r1, #0
	ldreq r0, _0223E2C8 @ =0x02253384
	moveq r1, #1
	ldr r0, [r0]
	mov r2, #4
	strb r1, [r0, #0x4f5]
	ldr r1, _0223E2CC @ =0x022495C4
	add r0, r4, #0xc8
	bl FUN_020D5190
	cmp r0, #0
	bne _0223E28C
	ldr r1, _0223E2CC @ =0x022495C4
	add r0, r4, #0xcc
	mov r2, #4
	bl FUN_020D5190
	cmp r0, #0
	beq _0223E2A0
_0223E28C:
	ldr r0, _0223E2C8 @ =0x02253384
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x4f6]
	b _0223E2B0
_0223E2A0:
	ldr r0, _0223E2C8 @ =0x02253384
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x4f6]
_0223E2B0:
	ldr r1, _0223E2C8 @ =0x02253384
	ldrb r0, [r4, #0xd0]
	ldr r1, [r1]
	add r1, r1, #0x4f0
	bl FUN_020A2BD8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E2C8: .4byte 0x02253384
_0223E2CC: .4byte 0x022495C4
	arm_func_end ov18_0223E1F0

	arm_func_start ov18_0223E2D0
ov18_0223E2D0: @ 0x0223E2D0
	push {r3, r4, r5, lr}
	ldr r0, _0223E3A8 @ =0x02253384
	mov r2, #0x78
	ldr r1, [r0]
	add r4, r1, #0x400
	ldrb r0, [r4, #0xf4]
	mov ip, r4
	add r5, r1, r0, lsl #8
	mov r3, r5
_0223E2F4:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _0223E2F4
	ldrb r0, [r4, #0xf5]
	mov r2, #4
	cmp r0, #0
	beq _0223E348
	add r0, r5, #0xc0
	mov r1, #0
	bl FUN_020C4CF4
	add r0, r5, #0xc4
	mov r1, #0
	mov r2, #4
	bl FUN_020C4CF4
	mov r0, #0
	b _0223E36C
_0223E348:
	add r0, r4, #0xc0
	add r1, r5, #0xc0
	bl FUN_020C4DB0
	add r0, r4, #0xc4
	add r1, r5, #0xc4
	mov r2, #4
	bl FUN_020C4DB0
	add r0, r4, #0xf0
	bl FUN_020A2B94
_0223E36C:
	strb r0, [r5, #0xd0]
	ldrb r0, [r4, #0xf6]
	mov r2, #8
	cmp r0, #0
	beq _0223E390
	add r0, r5, #0xc8
	mov r1, #0
	bl FUN_020C4CF4
	b _0223E39C
_0223E390:
	add r0, r4, #0xc8
	add r1, r5, #0xc8
	bl FUN_020C4DB0
_0223E39C:
	ldrb r0, [r4, #0xf4]
	bl ov18_0223E6CC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E3A8: .4byte 0x02253384
	arm_func_end ov18_0223E2D0

	arm_func_start ov18_0223E3AC
ov18_0223E3AC: @ 0x0223E3AC
	push {r4, r5, r6, r7, r8, lr}
	ldr r1, _0223E4BC @ =0x02253384
	mov r6, r0
	ldr r4, [r1]
	mov r1, #0
	add r0, r4, #0x400
	mov r2, #0xef
	bl FUN_020C4CF4
	mov r0, r6
	add r1, r4, #0x440
	mov r2, #0x20
	bl FUN_020C4DB0
	ldr r0, [r6, #0x20]
	cmp r0, #1
	beq _0223E3FC
	cmp r0, #2
	beq _0223E414
	cmp r0, #3
	beq _0223E42C
	b _0223E444
_0223E3FC:
	ldrb r0, [r4, #0x4e6]
	mov r5, #5
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r4, #0x4e6]
	b _0223E454
_0223E414:
	ldrb r0, [r4, #0x4e6]
	mov r5, #0xd
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r4, #0x4e6]
	b _0223E454
_0223E42C:
	ldrb r0, [r4, #0x4e6]
	mov r5, #0x10
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r4, #0x4e6]
	b _0223E454
_0223E444:
	ldrb r0, [r4, #0x4e6]
	mov r5, #0
	bic r0, r0, #3
	strb r0, [r4, #0x4e6]
_0223E454:
	ldrb r0, [r4, #0x4e6]
	add r8, r6, #0x28
	add r7, r4, #0x480
	bic r0, r0, #0xfc
	strb r0, [r4, #0x4e6]
	mov r6, #0
_0223E46C:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_020C4DB0
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x10
	add r8, r8, #0x20
	blt _0223E46C
	mov r3, #2
	add r0, r4, #0x4f0
	mov r1, #0
	mov r2, #4
	strb r3, [r4, #0x4e7]
	bl FUN_020C4CF4
	mov r0, #1
	strb r0, [r4, #0x4f5]
	strb r0, [r4, #0x4f6]
	bl ov18_0223E2D0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223E4BC: .4byte 0x02253384
	arm_func_end ov18_0223E3AC

	arm_func_start ov18_0223E4C0
ov18_0223E4C0: @ 0x0223E4C0
	push {r3, r4, r5, lr}
	ldr r1, _0223E5CC @ =0x02253384
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	add r4, r0, #0x400
	mov r0, r4
	mov r2, #0xef
	bl FUN_020C4CF4
	mov r0, r5
	add r1, r4, #0xd1
	mov r2, #5
	bl FUN_020C4DB0
	add r0, r5, #6
	add r1, r4, #0xd6
	mov r2, #5
	bl FUN_020C4DB0
	add r0, r5, #0xc
	add r1, r4, #0xdb
	mov r2, #5
	bl FUN_020C4DB0
	add r0, r5, #0x12
	add r1, r4, #0xe0
	mov r2, #5
	bl FUN_020C4DB0
	add r0, r5, #0x18
	add r1, r4, #0x60
	mov r2, #0x20
	bl FUN_020C4DB0
	add r0, r5, #0x39
	add r1, r4, #0x80
	mov r2, #0xd
	bl FUN_020C4DB0
	add r0, r5, #0x47
	add r1, r4, #0x90
	mov r2, #0xd
	bl FUN_020C4DB0
	add r0, r5, #0x55
	add r1, r4, #0xa0
	mov r2, #0xd
	bl FUN_020C4DB0
	add r0, r5, #0x63
	add r1, r4, #0xb0
	mov r2, #0xd
	bl FUN_020C4DB0
	add r0, r5, #0x71
	add r1, r4, #0x40
	mov r2, #0x20
	bl FUN_020C4DB0
	ldrb r2, [r4, #0xe6]
	mov r1, #1
	add r0, r4, #0xf0
	bic r2, r2, #3
	orr r2, r2, #2
	strb r2, [r4, #0xe6]
	and r2, r2, #0xff
	bic r2, r2, #0xfc
	strb r2, [r4, #0xe6]
	strb r1, [r4, #0xe7]
	mov r1, #0
	mov r2, #4
	bl FUN_020C4CF4
	mov r0, #1
	strb r0, [r4, #0xf5]
	strb r0, [r4, #0xf6]
	bl ov18_0223E2D0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E5CC: .4byte 0x02253384
	arm_func_end ov18_0223E4C0

	arm_func_start ov18_0223E5D0
ov18_0223E5D0: @ 0x0223E5D0
	ldr r0, _0223E5DC @ =0x02253384
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0223E5DC: .4byte 0x02253384
	arm_func_end ov18_0223E5D0

	arm_func_start ov18_0223E5E0
ov18_0223E5E0: @ 0x0223E5E0
	push {r3, r4, r5, lr}
	ldr r1, _0223E618 @ =0x02253384
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	add r4, r0, r5, lsl #8
	mov r0, r4
	mov r2, #0xef
	bl FUN_020C4CF4
	mov r1, #0xff
	mov r0, r5
	strb r1, [r4, #0xe7]
	bl ov18_0223E6CC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E618: .4byte 0x02253384
	arm_func_end ov18_0223E5E0

	arm_func_start ov18_0223E61C
ov18_0223E61C: @ 0x0223E61C
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r1, _0223E6C8 @ =0x02253384
	mov r0, #0
	ldr r1, [r1]
	mov r2, #0x400
	bl FUN_020C4AF0
	ldr r0, _0223E6C8 @ =0x02253384
	mov r3, #0
	mov r2, #0xff
_0223E644:
	ldr r1, [r0]
	add r1, r1, r3, lsl #8
	add r3, r3, #1
	strb r2, [r1, #0xe7]
	cmp r3, #3
	blt _0223E644
	add r0, sp, #0
	bl FUN_020A3A3C
	add r0, sp, #0
	bl FUN_020A3338
	mov r8, #0
	ldr r4, _0223E6C8 @ =0x02253384
	mov r6, r0
	mov r7, r8
	mov r5, #0xe
_0223E680:
	ldr r1, [r4]
	mov r0, r6
	add r1, r1, r7
	mov r2, r5
	add r1, r1, #0xf0
	bl FUN_020C4DB0
	add r8, r8, #1
	cmp r8, #2
	add r7, r7, #0x100
	blt _0223E680
	mov r4, #0
_0223E6AC:
	mov r0, r4
	bl ov18_0223E6CC
	add r4, r4, #1
	cmp r4, #4
	blt _0223E6AC
	add sp, sp, #0x14
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223E6C8: .4byte 0x02253384
	arm_func_end ov18_0223E61C

	arm_func_start ov18_0223E6CC
ov18_0223E6CC: @ 0x0223E6CC
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r1, _0223E830 @ =0x02253384
	mov r7, r0
	ldr r0, [r1]
	mov r6, #0
	add r2, r0, r7, lsl #8
	ldrb r5, [r2, #0xe7]
	add r0, sp, #4
	mov r1, r6
	mov r2, #0x10
	mov r4, #1
	bl FUN_020C4CF4
	add r0, sp, #4
	mov r2, r4
	str r2, [r0, r7, lsl #2]
	cmp r7, #2
	bgt _0223E7A8
	ldr r0, _0223E830 @ =0x02253384
	ldr r0, [r0]
	ldrb r1, [r0, #0xef]
	tst r1, r4, lsl r7
	movne r6, r2
	cmp r5, #0xff
	bne _0223E76C
	cmp r6, #0
	beq _0223E76C
	ldrb r1, [r0, #0xef]
	mvn r3, r4, lsl r7
	and r2, r1, r3
	ldr r1, _0223E830 @ =0x02253384
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	and r1, r1, r3
	strb r1, [r2, #0x1ef]
	str r0, [sp, #8]
	str r0, [sp, #4]
	b _0223E7A8
_0223E76C:
	cmp r5, #0xff
	beq _0223E7A8
	cmp r6, #0
	bne _0223E7A8
	ldrb r3, [r0, #0xef]
	ldr r1, _0223E830 @ =0x02253384
	mov r2, #1
	orr r3, r3, r4, lsl r7
	strb r3, [r0, #0xef]
	ldr r1, [r1]
	ldrb r0, [r1, #0x1ef]
	orr r0, r0, r4, lsl r7
	strb r0, [r1, #0x1ef]
	str r2, [sp, #8]
	str r2, [sp, #4]
_0223E7A8:
	mov r6, #0
	ldr r8, _0223E830 @ =0x02253384
	mov r7, r6
	mov r4, #0xfe
	add r5, sp, #4
_0223E7BC:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _0223E7EC
	ldr r1, [r8]
	mov r2, r4
	add r0, r1, #0xf8
	add r0, r0, #0x400
	add r1, r1, r7
	bl FUN_020D32D4
	ldr r1, [r8]
	add r1, r1, r6, lsl #8
	strh r0, [r1, #0xfe]
_0223E7EC:
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x100
	blt _0223E7BC
	mov r0, #0x100
	mov r1, #0x20
	bl ov18_02245068
	mov r2, r0
	ldr r0, _0223E830 @ =0x02253384
	add r1, sp, #4
	ldr r0, [r0]
	str r2, [sp]
	bl FUN_020A2A60
	add r0, sp, #0
	bl ov18_0224508C
	add sp, sp, #0x14
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223E830: .4byte 0x02253384
	arm_func_end ov18_0223E6CC

	arm_func_start ov18_0223E834
ov18_0223E834: @ 0x0223E834
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl FUN_020C4CF4
	mov r7, #0
	mov r8, r7
	mov r4, #0x20
	add r6, sp, #0
	mov r5, #3
	mov fp, r7
_0223E868:
	mov r1, r6
	mov r2, r5
	add r0, sl, r8
	bl FUN_020C4DB0
	mov r1, fp
	mov r2, r6
_0223E880:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0223E89C
	add r1, r1, #1
	cmp r1, #3
	strb r4, [r2], #1
	blt _0223E880
_0223E89C:
	mov r0, r6
	bl FUN_020DAE0C
	strb r0, [sb, r7]
	add r7, r7, #1
	cmp r7, #4
	add r8, r8, #3
	blt _0223E868
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov18_0223E834

	arm_func_start ov18_0223E8BC
ov18_0223E8BC: @ 0x0223E8BC
	cmp r0, #0x39
	subls r0, r0, #0x30
	bxls lr
	cmp r0, #0x46
	subls r0, r0, #0x37
	subhi r0, r0, #0x57
	bx lr
	arm_func_end ov18_0223E8BC

	arm_func_start ov18_0223E8D8
ov18_0223E8D8: @ 0x0223E8D8
	push {r3, lr}
	mov r0, #0xa0
	mov r1, #4
	bl ov18_02245068
	ldr r2, _0223E95C @ =0x02253388
	add r1, sp, #0
	str r0, [r2]
	ldr r0, _0223E960 @ =0x0224A5B8
	mov r2, #0x20
	bl ov18_02243738
	ldr r1, _0223E95C @ =0x02253388
	ldr r1, [r1]
	str r0, [r1, #0x98]
	bl FUN_020B799C
	ldr r0, _0223E95C @ =0x02253388
	ldr r0, [r0]
	ldr r1, [r0, #0x98]
	bl FUN_020B9A20
	mov r0, #0
	bl FUN_020BACDC
	ldr r0, _0223E95C @ =0x02253388
	ldr r0, [r0]
	add r0, r0, #0x94
	bl FUN_020B80DC
	mov r0, #0
	ldr r1, _0223E964 @ =ov18_0223EA1C
	mov r2, r0
	mov r3, #0xc8
	bl ov18_02246304
	ldr r1, _0223E95C @ =0x02253388
	ldr r1, [r1]
	str r0, [r1, #0x9c]
	pop {r3, pc}
	.align 2, 0
_0223E95C: .4byte 0x02253388
_0223E960: .4byte 0x0224A5B8
_0223E964: .4byte ov18_0223EA1C
	arm_func_end ov18_0223E8D8

	arm_func_start ov18_0223E968
ov18_0223E968: @ 0x0223E968
	push {r3, lr}
	ldr r1, _0223E98C @ =0x02253388
	mov r0, #0
	ldr r1, [r1]
	ldr r1, [r1, #0x9c]
	bl ov18_022463AC
	ldr r0, _0223E990 @ =0x02253388
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_0223E98C: .4byte 0x02253388
_0223E990: .4byte 0x02253388
	arm_func_end ov18_0223E968

	arm_func_start ov18_0223E994
ov18_0223E994: @ 0x0223E994
	ldr r1, _0223E9B0 @ =0x02253388
	mov r2, r0
	ldr r0, [r1]
	ldr ip, _0223E9B4 @ =FUN_020BAE30
	mov r1, #0
	add r0, r0, #0x94
	bx ip
	.align 2, 0
_0223E9B0: .4byte 0x02253388
_0223E9B4: .4byte FUN_020BAE30
	arm_func_end ov18_0223E994

	arm_func_start ov18_0223E9B8
ov18_0223E9B8: @ 0x0223E9B8
	ldr r2, _0223E9D0 @ =0x02253388
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _0223E9D4 @ =FUN_020B8120
	add r0, r0, #0x94
	bx ip
	.align 2, 0
_0223E9D0: .4byte 0x02253388
_0223E9D4: .4byte FUN_020B8120
	arm_func_end ov18_0223E9B8

	arm_func_start ov18_0223E9D8
ov18_0223E9D8: @ 0x0223E9D8
	ldr r2, _0223E9F4 @ =0x02253388
	ldr ip, _0223E9F8 @ =FUN_020B8194
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0x94
	bx ip
	.align 2, 0
_0223E9F4: .4byte 0x02253388
_0223E9F8: .4byte FUN_020B8194
	arm_func_end ov18_0223E9D8

	arm_func_start ov18_0223E9FC
ov18_0223E9FC: @ 0x0223E9FC
	ldr r0, _0223EA14 @ =0x02253388
	ldr ip, _0223EA18 @ =FUN_020B7FC8
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, #0x94
	bx ip
	.align 2, 0
_0223EA14: .4byte 0x02253388
_0223EA18: .4byte FUN_020B7FC8
	arm_func_end ov18_0223E9FC

	arm_func_start ov18_0223EA1C
ov18_0223EA1C: @ 0x0223EA1C
	ldr ip, _0223EA24 @ =FUN_020B7A24
	bx ip
	.align 2, 0
_0223EA24: .4byte FUN_020B7A24
	arm_func_end ov18_0223EA1C

	arm_func_start ov18_0223EA28
ov18_0223EA28: @ 0x0223EA28
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	mov r0, #0x1c
	mov r1, #4
	bl ov18_02245068
	ldr r1, [sp]
	ldr r4, _0223EB10 @ =0x0225338C
	add r3, r1, r1, lsl #2
	ldr r2, _0223EB14 @ =0x022495C8
	ldr r1, _0223EB18 @ =0x022495D7
	mov r8, #0
	mvn r7, #0
	ldr r5, _0223EB1C @ =0x022495E6
	str r0, [r4, #4]
	add sb, r2, r3
	add sl, r1, r3
	sub r6, r7, #0x29
	mov fp, r8
_0223EA70:
	ldrb r1, [sb], #1
	mov r0, #1
	mov r2, r0
	bl ov18_02243F8C
	ldr r2, [r4, #4]
	mov r1, r7
	str r0, [r2, r8, lsl #2]
	ldr r0, [r4, #4]
	mov r2, fp
	ldr r0, [r0, r8, lsl #2]
	bl ov18_02243DE4
	ldr r0, [r4, #4]
	add r3, r5, r8, lsl #2
	ldrh r3, [r3, #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, r6
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	ldrb r3, [sl], #1
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, #0
	bl ov18_02243C74
	add r8, r8, #1
	cmp r8, #5
	blt _0223EA70
	mov r0, #0
	ldr r1, _0223EB20 @ =ov18_0223EB24
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223EB10 @ =0x0225338C
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl ov18_0223F4D0
	mov r0, #0xd
	bl ov18_0223E994
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223EB10: .4byte 0x0225338C
_0223EB14: .4byte 0x022495C8
_0223EB18: .4byte 0x022495D7
_0223EB1C: .4byte 0x022495E6
_0223EB20: .4byte ov18_0223EB24
	arm_func_end ov18_0223EA28

	arm_func_start ov18_0223EB24
ov18_0223EB24: @ 0x0223EB24
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223EBFC @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	blt _0223EB68
	cmp r0, #0x100
	ble _0223EBA8
_0223EB68:
	ldr r5, _0223EC00 @ =0x022495E6
	ldr r4, _0223EBFC @ =0x0225338C
	mov r7, #0
	mvn r6, #0
_0223EB78:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223EB78
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223EBA8:
	mov r0, #0x20
	ldr r6, _0223EC00 @ =0x022495E6
	ldr r5, _0223EBFC @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #0
	mvn r7, #0
_0223EBC0:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223EBC0
	ldr r1, _0223EC04 @ =ov18_0223EC08
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223EBFC: .4byte 0x0225338C
_0223EC00: .4byte 0x022495E6
_0223EC04: .4byte ov18_0223EC08
	arm_func_end ov18_0223EB24

	arm_func_start ov18_0223EC08
ov18_0223EC08: @ 0x0223EC08
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223ECE0 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	blt _0223EC4C
	cmp r0, #0x100
	ble _0223EC8C
_0223EC4C:
	ldr r5, _0223ECE4 @ =0x022495E6
	ldr r4, _0223ECE0 @ =0x0225338C
	mov r7, #1
	mvn r6, #0
_0223EC5C:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223EC5C
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223EC8C:
	mov r0, #0x50
	ldr r6, _0223ECE4 @ =0x022495E6
	ldr r5, _0223ECE0 @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_0223ECA4:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223ECA4
	ldr r1, _0223ECE8 @ =ov18_0223ECEC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223ECE0: .4byte 0x0225338C
_0223ECE4: .4byte 0x022495E6
_0223ECE8: .4byte ov18_0223ECEC
	arm_func_end ov18_0223EC08

	arm_func_start ov18_0223ECEC
ov18_0223ECEC: @ 0x0223ECEC
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223EDC4 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	blt _0223ED30
	cmp r0, #0x100
	ble _0223ED70
_0223ED30:
	ldr r5, _0223EDC8 @ =0x022495E6
	ldr r4, _0223EDC4 @ =0x0225338C
	mov r7, #2
	mvn r6, #0
_0223ED40:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223ED40
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223ED70:
	mov r0, #0x68
	ldr r6, _0223EDC8 @ =0x022495E6
	ldr r5, _0223EDC4 @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_0223ED88:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223ED88
	ldr r1, _0223EDCC @ =ov18_0223EDD0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223EDC4: .4byte 0x0225338C
_0223EDC8: .4byte 0x022495E6
_0223EDCC: .4byte ov18_0223EDD0
	arm_func_end ov18_0223ECEC

	arm_func_start ov18_0223EDD0
ov18_0223EDD0: @ 0x0223EDD0
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223EEA8 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x98
	blt _0223EE14
	cmp r0, #0x100
	ble _0223EE54
_0223EE14:
	ldr r5, _0223EEAC @ =0x022495E6
	ldr r4, _0223EEA8 @ =0x0225338C
	mov r7, #3
	mvn r6, #0
_0223EE24:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223EE24
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223EE54:
	mov r0, #0x98
	ldr r6, _0223EEAC @ =0x022495E6
	ldr r5, _0223EEA8 @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_0223EE6C:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223EE6C
	ldr r1, _0223EEB0 @ =ov18_0223EEB4
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223EEA8: .4byte 0x0225338C
_0223EEAC: .4byte 0x022495E6
_0223EEB0: .4byte ov18_0223EEB4
	arm_func_end ov18_0223EDD0

	arm_func_start ov18_0223EEB4
ov18_0223EEB4: @ 0x0223EEB4
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0223EF4C @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0x10]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	add r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0xb0
	blt _0223EEF8
	cmp r2, #0x100
	ble _0223EF18
_0223EEF8:
	ldr r0, _0223EF4C @ =0x0225338C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x21
	ldr r0, [r0, #0x10]
	bl ov18_02243CF4
	add sp, sp, #8
	pop {r4, pc}
_0223EF18:
	ldr r0, _0223EF4C @ =0x0225338C
	mov r2, #0xb0
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0xb1
	mov r3, #0x21
	bl ov18_02243CF4
	ldr r1, _0223EF50 @ =ov18_0223EF54
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0223EF4C: .4byte 0x0225338C
_0223EF50: .4byte ov18_0223EF54
	arm_func_end ov18_0223EEB4

	arm_func_start ov18_0223EF54
ov18_0223EF54: @ 0x0223EF54
	push {r3, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	ldr r0, _0223EF78 @ =0x0225338C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x14]
	pop {r3, pc}
	.align 2, 0
_0223EF78: .4byte 0x0225338C
	arm_func_end ov18_0223EF54

	arm_func_start ov18_0223EF7C
ov18_0223EF7C: @ 0x0223EF7C
	push {r3, lr}
	ldr r1, _0223EFB4 @ =0x0225338C
	mov r0, #0
	ldr ip, [r1, #4]
	mov lr, #1
	ldr r1, _0223EFB8 @ =ov18_0223F0A4
	mov r2, r0
	mov r3, #0x78
	strb lr, [ip, #0x18]
	bl ov18_02246304
	ldr r1, _0223EFB4 @ =0x0225338C
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	pop {r3, pc}
	.align 2, 0
_0223EFB4: .4byte 0x0225338C
_0223EFB8: .4byte ov18_0223F0A4
	arm_func_end ov18_0223EF7C

	arm_func_start ov18_0223EFBC
ov18_0223EFBC: @ 0x0223EFBC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	add r2, r0, r0, lsl #2
	ldr r1, _0223F074 @ =0x022495C8
	ldr r0, _0223F078 @ =0x022495D7
	mov r8, #0
	ldr r5, _0223F07C @ =0x022495E6
	ldr r4, _0223F080 @ =0x0225338C
	add sb, r1, r2
	add sl, r0, r2
	mov r7, r8
	mov fp, #1
	mvn r6, #0
_0223EFF0:
	ldr r0, [r4, #4]
	mov r1, r7
	ldr r0, [r0, r8, lsl #2]
	bl ov18_02243BBC
	mov r2, r0
	ldrb r1, [sb], #2
	mov r0, fp
	bl ov18_02243ECC
	ldr r0, [r4, #4]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, #0
	bl ov18_02243DE4
	ldr r0, [r4, #4]
	lsl r1, r8, #2
	add r3, r5, r8, lsl #2
	ldrh r2, [r5, r1]
	ldrh r3, [r3, #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r6
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	ldrb r3, [sl], #2
	ldr r0, [r0, r8, lsl #2]
	mov r1, r6
	mov r2, #0
	bl ov18_02243C74
	add r8, r8, #2
	cmp r8, #5
	blt _0223EFF0
	ldr r0, [sp]
	bl ov18_0223F4D0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223F074: .4byte 0x022495C8
_0223F078: .4byte 0x022495D7
_0223F07C: .4byte 0x022495E6
_0223F080: .4byte 0x0225338C
	arm_func_end ov18_0223EFBC

	arm_func_start ov18_0223F084
ov18_0223F084: @ 0x0223F084
	ldr r0, _0223F0A0 @ =0x0225338C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0223F0A0: .4byte 0x0225338C
	arm_func_end ov18_0223F084

	arm_func_start ov18_0223F0A4
ov18_0223F0A4: @ 0x0223F0A4
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0223F130 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0x10]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	mov r3, #0x21
	sub r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0x98
	ble _0223F100
	ldr r0, _0223F130 @ =0x0225338C
	mvn r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	bl ov18_02243CF4
	add sp, sp, #8
	pop {r4, pc}
_0223F100:
	ldr r0, _0223F130 @ =0x0225338C
	mov r2, #0x98
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0x99
	bl ov18_02243CF4
	ldr r1, _0223F134 @ =ov18_0223F138
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0223F130: .4byte 0x0225338C
_0223F134: .4byte ov18_0223F138
	arm_func_end ov18_0223F0A4

	arm_func_start ov18_0223F138
ov18_0223F138: @ 0x0223F138
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F208 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	ble _0223F1B4
	ldr r5, _0223F20C @ =0x022495E6
	ldr r4, _0223F208 @ =0x0225338C
	mov r7, #3
	mvn r6, #0
_0223F184:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223F184
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223F1B4:
	mov r0, #0x68
	ldr r6, _0223F20C @ =0x022495E6
	ldr r5, _0223F208 @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_0223F1CC:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223F1CC
	ldr r1, _0223F210 @ =ov18_0223F214
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223F208: .4byte 0x0225338C
_0223F20C: .4byte 0x022495E6
_0223F210: .4byte ov18_0223F214
	arm_func_end ov18_0223F138

	arm_func_start ov18_0223F214
ov18_0223F214: @ 0x0223F214
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F2E4 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	ble _0223F290
	ldr r5, _0223F2E8 @ =0x022495E6
	ldr r4, _0223F2E4 @ =0x0225338C
	mov r7, #2
	mvn r6, #0
_0223F260:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223F260
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223F290:
	mov r0, #0x50
	ldr r6, _0223F2E8 @ =0x022495E6
	ldr r5, _0223F2E4 @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_0223F2A8:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223F2A8
	ldr r1, _0223F2EC @ =ov18_0223F2F0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223F2E4: .4byte 0x0225338C
_0223F2E8: .4byte 0x022495E6
_0223F2EC: .4byte ov18_0223F2F0
	arm_func_end ov18_0223F214

	arm_func_start ov18_0223F2F0
ov18_0223F2F0: @ 0x0223F2F0
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F3C0 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	ble _0223F36C
	ldr r5, _0223F3C4 @ =0x022495E6
	ldr r4, _0223F3C0 @ =0x0225338C
	mov r7, #1
	mvn r6, #0
_0223F33C:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, #5
	blt _0223F33C
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_0223F36C:
	mov r0, #0x20
	ldr r6, _0223F3C4 @ =0x022495E6
	ldr r5, _0223F3C0 @ =0x0225338C
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_0223F384:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl ov18_02243CF4
	add r8, r8, #1
	cmp r8, #5
	blt _0223F384
	ldr r1, _0223F3C8 @ =ov18_0223F3CC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223F3C0: .4byte 0x0225338C
_0223F3C4: .4byte 0x022495E6
_0223F3C8: .4byte ov18_0223F3CC
	arm_func_end ov18_0223F2F0

	arm_func_start ov18_0223F3CC
ov18_0223F3CC: @ 0x0223F3CC
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _0223F494 @ =0x0225338C
	mov r5, r0
	ldr r0, [r1, #4]
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp, #4]
	ldr r7, _0223F498 @ =0x022495E6
	sub r0, r0, #8
	ldr r6, _0223F494 @ =0x0225338C
	mov r4, #0
	str r0, [sp, #4]
	mvn r8, #0
_0223F410:
	add r0, r7, r4, lsl #2
	ldr r1, [r6, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r8
	bl ov18_02243CF4
	add r4, r4, #1
	cmp r4, #5
	blt _0223F410
	ldr r1, [sp, #4]
	ldr r0, _0223F49C @ =0x000001D6
	cmp r1, r0
	addgt sp, sp, #8
	popgt {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x100
	addlt sp, sp, #8
	poplt {r4, r5, r6, r7, r8, pc}
	mov r1, r5
	mov r0, #0
	bl ov18_022463AC
	ldr r4, _0223F494 @ =0x0225338C
	mov r5, #0
_0223F46C:
	ldr r0, [r4, #4]
	ldr r0, [r0, r5, lsl #2]
	bl ov18_02243B3C
	add r5, r5, #1
	cmp r5, #5
	blt _0223F46C
	ldr r0, _0223F4A0 @ =0x02253390
	bl ov18_0224508C
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0223F494: .4byte 0x0225338C
_0223F498: .4byte 0x022495E6
_0223F49C: .4byte 0x000001D6
_0223F4A0: .4byte 0x02253390
	arm_func_end ov18_0223F3CC

	arm_func_start ov18_0223F4A4
ov18_0223F4A4: @ 0x0223F4A4
	ldr r0, _0223F4CC @ =0x0225338C
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_0223F4CC: .4byte 0x0225338C
	arm_func_end ov18_0223F4A4

	arm_func_start ov18_0223F4D0
ov18_0223F4D0: @ 0x0223F4D0
	push {r3, lr}
	ldr r1, _0223F50C @ =0x0224A634
	ldr r0, [r1, r0, lsl #2]
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r2, _0223F510 @ =0x0225338C
	ldr r1, _0223F514 @ =ov18_0223F518
	str r0, [r2]
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	pop {r3, pc}
	.align 2, 0
_0223F50C: .4byte 0x0224A634
_0223F510: .4byte 0x0225338C
_0223F514: .4byte ov18_0223F518
	arm_func_end ov18_0223F4D0

	arm_func_start ov18_0223F518
ov18_0223F518: @ 0x0223F518
	push {r4, lr}
	ldr r1, _0223F560 @ =0x0225338C
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x600
	bl FUN_020C2C54
	ldr r0, _0223F560 @ =0x0225338C
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x600
	bl FUN_020C048C
	ldr r0, _0223F560 @ =0x0225338C
	ldr r0, [r0]
	bl ov18_0224382C
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	pop {r4, pc}
	.align 2, 0
_0223F560: .4byte 0x0225338C
	arm_func_end ov18_0223F518

	arm_func_start ov18_0223F564
ov18_0223F564: @ 0x0223F564
	push {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r0
	ldr r0, _0223F6CC @ =0x00001BA0
	mov r1, #0x20
	bl ov18_02245068
	ldr r2, _0223F6D0 @ =0x02253394
	add r1, r0, #0x1000
	str r0, [r2]
	str r4, [r1, #0x370]
	bl FUN_020C3880
	ldr r4, _0223F6D0 @ =0x02253394
	mov r2, #3
	ldr r3, [r4]
	add r3, r3, #0x1000
	str r0, [r3, #0xb88]
	str r1, [r3, #0xb8c]
	ldr r0, [r4]
	ldr r1, _0223F6D4 @ =ov18_0223F818
	bl FUN_020CECC8
	cmp r0, #2
	bne _0223F6B8
_0223F5BC:
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl FUN_020CE594
	ldr ip, [r4]
	add r0, ip, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _0223F5BC
	add r0, ip, #0x374
	ldr r5, _0223F6D8 @ =0x02249610
	add lr, r0, #0x1000
	mov r4, #4
_0223F5F0:
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0223F5F0
	ldr r0, [r5]
	add r1, ip, #0xf00
	str r0, [lr]
	add r0, ip, #0x1000
	str r1, [r0, #0x374]
	bl FUN_020CE934
	ldr r1, _0223F6D0 @ =0x02253394
	ldr r1, [r1]
	add r1, r1, #0x1300
	strh r0, [r1, #0x7c]
	add r0, sp, #0
	bl FUN_020C3FBC
	ldr r1, _0223F6D0 @ =0x02253394
	ldr r0, _0223F6DC @ =0x02249604
	ldr r1, [r1]
	mov r2, #8
	add r1, r1, #0x388
	add r1, r1, #0x1000
	bl FUN_020C4DB0
	ldr r2, _0223F6D0 @ =0x02253394
	mov r3, #1
	ldr r1, [r2]
	add r0, sp, #4
	add r1, r1, #0x1000
	strb r3, [r1, #0x391]
	ldr r1, [r2]
	ldrh r2, [sp, #0x1a]
	add r1, r1, #0x394
	add r1, r1, #0x1000
	lsl r2, r2, #1
	bl FUN_020C4DB0
	bl ov18_0223F6E8
	cmp r0, #0
	beq _0223F6B8
	mov r0, #0
	ldr r1, _0223F6E0 @ =ov18_0223FB0C
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223F6D0 @ =0x02253394
	add sp, sp, #0x54
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r0, [r1, #0xb90]
	mov r0, #1
	pop {r4, r5, pc}
_0223F6B8:
	ldr r0, _0223F6E4 @ =0x02253394
	bl ov18_0224508C
	mov r0, #0
	add sp, sp, #0x54
	pop {r4, r5, pc}
	.align 2, 0
_0223F6CC: .4byte 0x00001BA0
_0223F6D0: .4byte 0x02253394
_0223F6D4: .4byte ov18_0223F818
_0223F6D8: .4byte 0x02249610
_0223F6DC: .4byte 0x02249604
_0223F6E0: .4byte ov18_0223FB0C
_0223F6E4: .4byte 0x02253394
	arm_func_end ov18_0223F564

	arm_func_start ov18_0223F6E8
ov18_0223F6E8: @ 0x0223F6E8
	push {r3, lr}
	ldr r1, _0223F714 @ =0x02253394
	ldr r0, _0223F718 @ =ov18_0223F818
	ldr r1, [r1]
	add r1, r1, #0x374
	add r1, r1, #0x1000
	bl FUN_020CF08C
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	.align 2, 0
_0223F714: .4byte 0x02253394
_0223F718: .4byte ov18_0223F818
	arm_func_end ov18_0223F6E8

	arm_func_start ov18_0223F71C
ov18_0223F71C: @ 0x0223F71C
	push {r4, lr}
	ldr r1, _0223F7F4 @ =0x02253394
	mov r2, #1
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r2, [r0, #0xb94]
	ldr r0, [r1]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl FUN_020CE594
	ldr r0, _0223F7F4 @ =0x02253394
	ldr r0, [r0]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	beq _0223F798
	ldr r0, _0223F7F8 @ =ov18_0223F818
	bl FUN_020CED50
	cmp r0, #2
	movne r0, #0
	popne {r4, pc}
	ldr r4, _0223F7F4 @ =0x02253394
_0223F774:
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl FUN_020CE594
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _0223F774
_0223F798:
	ldr r0, _0223F7F8 @ =ov18_0223F818
	bl FUN_020CED88
	cmp r0, #2
	movne r0, #0
	popne {r4, pc}
	ldr r0, _0223F7F4 @ =0x02253394
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xb90]
	cmp r1, #0
	beq _0223F7CC
	mov r0, #0
	bl ov18_022463CC
_0223F7CC:
	ldr r0, _0223F7F4 @ =0x02253394
	ldr r0, [r0]
	add r0, r0, #0x1000
_0223F7D8:
	ldrb r1, [r0, #0xb94]
	cmp r1, #2
	bne _0223F7D8
	ldr r0, _0223F7FC @ =0x02253394
	bl ov18_0224508C
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_0223F7F4: .4byte 0x02253394
_0223F7F8: .4byte ov18_0223F818
_0223F7FC: .4byte 0x02253394
	arm_func_end ov18_0223F71C

	arm_func_start ov18_0223F800
ov18_0223F800: @ 0x0223F800
	ldr r1, _0223F814 @ =0x02253394
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r0, [r1, #0x370]
	bx lr
	.align 2, 0
_0223F814: .4byte 0x02253394
	arm_func_end ov18_0223F800

	arm_func_start ov18_0223F818
ov18_0223F818: @ 0x0223F818
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	popne {r3, pc}
	ldr r1, _0223F8A4 @ =0x02253394
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0xb94]
	cmp r2, #0
	beq _0223F854
	ldrh r0, [r0]
	cmp r0, #2
	moveq r0, #2
	strbeq r0, [r1, #0xb94]
	pop {r3, pc}
_0223F854:
	ldrh r2, [r0]
	cmp r2, #0x26
	popne {r3, pc}
	ldrh r2, [r0, #8]
	cmp r2, #4
	beq _0223F894
	cmp r2, #5
	bne _0223F89C
	ldrb r1, [r1, #0xb96]
	cmp r1, #0
	beq _0223F888
	bl ov18_0223FA00
	b _0223F88C
_0223F888:
	bl ov18_0223F8A8
_0223F88C:
	bl ov18_0223F6E8
	pop {r3, pc}
_0223F894:
	bl ov18_0223F6E8
	pop {r3, pc}
_0223F89C:
	bl FUN_020C42A8
	pop {r3, pc}
	.align 2, 0
_0223F8A4: .4byte 0x02253394
	arm_func_end ov18_0223F818

	arm_func_start ov18_0223F8A8
ov18_0223F8A8: @ 0x0223F8A8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	ldrh r0, [fp, #0xe]
	mov r7, #0
	cmp r0, #0
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223F8C0:
	add r0, fp, r7, lsl #2
	ldr r6, [r0, #0x10]
	mov r1, #0xc0
	mov r0, r6
	bl FUN_020C2C1C
	ldr r1, _0223F9F4 @ =0x02249604
	add r0, r6, #0xc
	mov r2, #8
	bl FUN_020D5190
	cmp r0, #0
	bne _0223F9E0
	ldr r0, _0223F9F8 @ =0x02253394
	mov r5, #0
	ldr sb, [r0]
	mov r4, #6
	add r8, sb, #0x1300
_0223F900:
	mov r1, r8
	mov r2, r4
	add r0, r6, #4
	bl FUN_020D5190
	cmp r0, #0
	bne _0223F958
	rsb r0, r5, r5, lsl #3
	add r0, sb, r0
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _0223F9E0
	ldrb r0, [r6, #0x15]
	tst r0, #1
	beq _0223F9E0
	add r0, sb, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	blx r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223F958:
	add r5, r5, #1
	cmp r5, #0x10
	add r8, r8, #7
	blt _0223F900
	ldr r5, _0223F9FC @ =0x022495FC
	add r8, sb, #0x1300
	mov sl, #0
	mov r4, #6
_0223F978:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl FUN_020D5190
	cmp r0, #0
	bne _0223F9D0
	rsb r4, sl, sl, lsl #3
	add r1, sb, #0x1300
	add r0, r6, #4
	add r1, r1, r4
	mov r2, #6
	bl FUN_020C4DB0
	ldrb r0, [r6, #0x15]
	tst r0, #1
	ldr r0, _0223F9F8 @ =0x02253394
	movne r1, #1
	ldr r0, [r0]
	moveq r1, #0
	add r0, r0, r4
	add r0, r0, #0x1000
	strb r1, [r0, #0x306]
	b _0223F9E0
_0223F9D0:
	add sl, sl, #1
	cmp sl, #0x10
	add r8, r8, #7
	blt _0223F978
_0223F9E0:
	ldrh r0, [fp, #0xe]
	add r7, r7, #1
	cmp r7, r0
	blt _0223F8C0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223F9F4: .4byte 0x02249604
_0223F9F8: .4byte 0x02253394
_0223F9FC: .4byte 0x022495FC
	arm_func_end ov18_0223F8A8

	arm_func_start ov18_0223FA00
ov18_0223FA00: @ 0x0223FA00
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _0223FB04 @ =0x02253394
	mov sl, r0
	ldr r2, [r1]
	add r1, r2, #0x1000
	ldrb r0, [r1, #0xb95]
	cmp r0, #0
	beq _0223FA34
	ldr r1, [r1, #0x370]
	cmp r1, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	blx r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223FA34:
	add r0, r2, #0xf00
	mov r1, #0x400
	bl FUN_020C2C1C
	ldrh fp, [sl, #0xe]
	mov r6, #0
	cmp fp, #0
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _0223FB04 @ =0x02253394
	mov r4, #6
	ldr sb, [r0]
_0223FA5C:
	add r0, sl, r6, lsl #2
	ldr r5, [r0, #0x10]
	ldr r1, _0223FB08 @ =0x02249604
	mov r2, #8
	add r0, r5, #0xc
	bl FUN_020D5190
	cmp r0, #0
	bne _0223FAF4
	ldrb r0, [r5, #0x15]
	tst r0, #1
	beq _0223FAF4
	mov r7, #0
	add r8, sb, #0x1300
_0223FA90:
	mov r1, r8
	mov r2, r4
	add r0, r5, #4
	bl FUN_020D5190
	cmp r0, #0
	bne _0223FAE4
	rsb r0, r7, r7, lsl #3
	add r0, sb, r0
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _0223FAF4
	add r0, sb, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	moveq r1, #1
	strbeq r1, [r0, #0xb95]
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	blx r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223FAE4:
	add r7, r7, #1
	cmp r7, #0x10
	add r8, r8, #7
	blt _0223FA90
_0223FAF4:
	add r6, r6, #1
	cmp r6, fp
	blt _0223FA5C
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223FB04: .4byte 0x02253394
_0223FB08: .4byte 0x02249604
	arm_func_end ov18_0223FA00

	arm_func_start ov18_0223FB0C
ov18_0223FB0C: @ 0x0223FB0C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	bl FUN_020C3880
	ldr r2, _0223FC3C @ =0x02253394
	ldr r3, _0223FC40 @ =0x0017F898
	ldr sl, [r2]
	mov r7, #0
	add r2, sl, #0x1000
	ldr r4, [r2, #0xb88]
	ldr r2, [r2, #0xb8c]
	adds r3, r4, r3
	adc r2, r2, #0
	cmp r1, r2
	cmpeq r0, r3
	poplo {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _0223FC44 @ =0x022495FC
	mov r6, r7
	mov r5, r7
	mov sb, sl
	add r8, sl, #0x1300
	mov fp, #6
_0223FB60:
	mov r0, r8
	mov r1, r4
	mov r2, fp
	bl FUN_020D5190
	cmp r0, #0
	beq _0223FB8C
	add r0, sb, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	movne r6, #1
	moveq r7, #1
_0223FB8C:
	add r5, r5, #1
	cmp r5, #0x10
	add r8, r8, #7
	add sb, sb, #7
	blt _0223FB60
	cmp r6, #0
	cmpne r7, #0
	beq _0223FBC8
	add r0, sl, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0223FC0C
	mov r0, #2
	blx r1
	b _0223FC0C
_0223FBC8:
	cmp r6, #0
	beq _0223FBEC
	add r0, sl, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0223FC0C
	mov r0, #1
	blx r1
	b _0223FC0C
_0223FBEC:
	cmp r7, #0
	bne _0223FC0C
	add r0, sl, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0223FC0C
	mov r0, #0
	blx r1
_0223FC0C:
	ldr r3, _0223FC3C @ =0x02253394
	mov r0, #0
	ldr r2, [r3]
	ldr r1, [sp]
	add r2, r2, #0x1000
	str r0, [r2, #0xb90]
	ldr r2, [r3]
	mov r3, #1
	add r2, r2, #0x1000
	strb r3, [r2, #0xb96]
	bl ov18_022463AC
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223FC3C: .4byte 0x02253394
_0223FC40: .4byte 0x0017F898
_0223FC44: .4byte 0x022495FC
	arm_func_end ov18_0223FB0C

	arm_func_start ov18_0223FC48
ov18_0223FC48: @ 0x0223FC48
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r5, _0223FF44 @ =0x02249654
	ldr r4, _0223FF48 @ =0x022532D8
	ldrb sl, [r5, #4]
	ldrb sb, [r5, #5]
	ldrb r8, [r5, #6]
	ldrb r7, [r5, #7]
	ldrb r6, [r5, #8]
	ldrb r5, [r5, #9]
	strb sl, [sp, #0x1c]
	mov fp, r0
	str r2, [sp, #0x10]
	mov r2, r3
	mov sl, r1
	ldr r0, [r4]
	ldr r3, [sp, #0x48]
	mov r1, fp
	strb sb, [sp, #0x1d]
	strb r8, [sp, #0x1e]
	strb r7, [sp, #0x1f]
	strb r6, [sp, #0x20]
	strb r5, [sp, #0x21]
	bl ov18_0222F8D0
	str r0, [sp, #0x14]
	mov r0, #0x20
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0223FF4C @ =0x02253398
	mvn r3, #1
	str r0, [r1]
	strb sl, [r0, #0x1c]
	ldr r2, [r1]
	ldr r0, _0223FF50 @ =0x04000050
	strb r3, [r2, #0x1b]
	ldr r3, [r1]
	ldr r2, [sp, #0x10]
	mov r1, #0x1f
	strb r2, [r3, #0x1e]
	mov r2, #0
	bl FUN_020BF578
	ldr r1, _0223FF54 @ =0x02249708
	mov r0, #0
	ldrb r1, [r1, sl]
	mov r2, r0
	bl ov18_02243F8C
	ldr r3, _0223FF4C @ =0x02253398
	mvn r1, #0
	ldr r4, [r3]
	mov r2, #0x100
	str r0, [r4]
	ldr r0, [r3]
	mov r3, #0
	ldr r0, [r0]
	bl ov18_02243CF4
	ldr r0, _0223FF4C @ =0x02253398
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #0
	ldr r0, [r0]
	bl ov18_02243DE4
	ldr r7, _0223FF58 @ =0x02249710
	mov r8, #0
	ldrb r0, [r7, sl]
	cmp r0, #0
	ble _0223FDC8
	ldr r0, _0223FF5C @ =0x0224967A
	ldr r4, _0223FF4C @ =0x02253398
	add sb, r0, sl, lsl #1
	mvn r6, #0
	mov r5, #0x100
	mov fp, r8
_0223FD68:
	ldrb r1, [sb], #1
	mov r0, #0
	mov r2, r0
	bl ov18_02243F8C
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, r8, lsl #2
	str r0, [r2, #8]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #8]
	mov r3, fp
	bl ov18_02243CF4
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #8]
	mov r2, #0
	bl ov18_02243DE4
	ldrb r0, [r7, sl]
	add r8, r8, #1
	cmp r8, r0
	blt _0223FD68
_0223FDC8:
	add r1, sp, #0x18
	str r1, [sp]
	mov r0, #0
	mov r1, #0x20
	mov r2, #0xc
	mov r3, #1
	str r0, [sp, #4]
	bl ov18_02244574
	ldr r1, _0223FF4C @ =0x02253398
	ldr r1, [r1]
	str r0, [r1, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x18]
	mov r2, r0
	bl ov18_022439E0
	ldr r1, _0223FF4C @ =0x02253398
	ldr r1, [r1]
	str r0, [r1, #4]
	bl ov18_0222B8F8
	ldr r1, _0223FF60 @ =0x0224969A
	lsl r5, sl, #2
	ldrh r4, [r1, r5]
	mov r3, #2
	ldr r2, _0223FF4C @ =0x02253398
	str r4, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, _0223FF64 @ =0x02249698
	str r0, [sp, #0xc]
	ldr r0, [r2]
	mov r1, #0
	ldrh r3, [r3, r5]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bl ov18_02244A9C
	ldr r0, _0223FF4C @ =0x02253398
	mov r2, #0
	ldr r3, [r0]
	mov r1, #0x100
	str r2, [sp]
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #4]
	bl ov18_02244B70
	mov r0, #0
	mov r1, r0
	mov r2, #0x1f
	mov r3, r0
	bl ov18_02244E4C
	ldr r3, _0223FF4C @ =0x02253398
	add r4, sp, #0x1c
	ldr r3, [r3]
	mov r0, #0
	ldrb r3, [r3, #0x1c]
	mov r1, #1
	mov r2, #0x1f
	ldrb r3, [r4, r3]
	bl ov18_02244E4C
	mov r0, #0
	mov r1, #3
	mov r2, #0x1f
	mov r3, #1
	bl ov18_02244E4C
	ldr r2, _0223FF68 @ =0x0224965E
	mov r0, #0
	mov r1, #1
	bl ov18_02244D34
	mov r0, #0xc0
	bl ov18_022402E4
	mov r2, #0x4000000
	ldr r0, [sp, #0x10]
	ldr r1, [r2]
	cmp r0, #0
	bic r0, r1, #0xe000
	orr r0, r0, #0x6000
	str r0, [r2]
	mov r0, #1
	mov r2, #0
	beq _0223FF24
	ldr r1, _0223FF6C @ =ov18_0223FFE8
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223FF4C @ =0x02253398
	add sp, sp, #0x24
	ldr r1, [r1]
	str r0, [r1, #0x14]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223FF24:
	ldr r1, _0223FF70 @ =ov18_02240048
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223FF4C @ =0x02253398
	ldr r1, [r1]
	str r0, [r1, #0x14]
	add sp, sp, #0x24
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0223FF44: .4byte 0x02249654
_0223FF48: .4byte 0x022532D8
_0223FF4C: .4byte 0x02253398
_0223FF50: .4byte 0x04000050
_0223FF54: .4byte 0x02249708
_0223FF58: .4byte 0x02249710
_0223FF5C: .4byte 0x0224967A
_0223FF60: .4byte 0x0224969A
_0223FF64: .4byte 0x02249698
_0223FF68: .4byte 0x0224965E
_0223FF6C: .4byte ov18_0223FFE8
_0223FF70: .4byte ov18_02240048
	arm_func_end ov18_0223FC48

	arm_func_start ov18_0223FF74
ov18_0223FF74: @ 0x0223FF74
	push {r3, lr}
	ldr r1, _0223FFB0 @ =0x02253398
	mov r0, #0
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	bl ov18_022463AC
	ldr r1, _0223FFB4 @ =ov18_022405D8
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223FFB0 @ =0x02253398
	ldr r1, [r1]
	str r0, [r1, #0x14]
	pop {r3, pc}
	.align 2, 0
_0223FFB0: .4byte 0x02253398
_0223FFB4: .4byte ov18_022405D8
	arm_func_end ov18_0223FF74

	arm_func_start ov18_0223FFB8
ov18_0223FFB8: @ 0x0223FFB8
	ldr r0, _0223FFC8 @ =0x02253398
	ldr r0, [r0]
	ldrsb r0, [r0, #0x1b]
	bx lr
	.align 2, 0
_0223FFC8: .4byte 0x02253398
	arm_func_end ov18_0223FFB8

	arm_func_start ov18_0223FFCC
ov18_0223FFCC: @ 0x0223FFCC
	ldr r0, _0223FFE4 @ =0x02253398
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0223FFE4: .4byte 0x02253398
	arm_func_end ov18_0223FFCC

	arm_func_start ov18_0223FFE8
ov18_0223FFE8: @ 0x0223FFE8
	push {r4, lr}
	ldr r1, _0224003C @ =0x02253398
	mov r4, r0
	ldr r3, [r1]
	ldr r0, _02240040 @ =0x04000050
	ldrsb r2, [r3, #0x1a]
	sub r2, r2, #1
	strb r2, [r3, #0x1a]
	ldr r1, [r1]
	ldrsb r1, [r1, #0x1a]
	bl FUN_020BF5E8
	ldr r1, _0224003C @ =0x02253398
	mvn r0, #0xb
	ldr r1, [r1]
	ldrsb r1, [r1, #0x1a]
	cmp r1, r0
	popgt {r4, pc}
	ldr r1, _02240044 @ =ov18_02240048
	mov r0, r4
	bl ov18_022463A4
	pop {r4, pc}
	.align 2, 0
_0224003C: .4byte 0x02253398
_02240040: .4byte 0x04000050
_02240044: .4byte ov18_02240048
	arm_func_end ov18_0223FFE8

	arm_func_start ov18_02240048
ov18_02240048: @ 0x02240048
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0224010C @ =0x02253398
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	ldr r1, _0224010C @ =0x02253398
	sub r0, r0, #0xc
	ldr r1, [r1]
	str r0, [sp]
	ldrb r2, [r1, #0x1c]
	ldr r1, _02240110 @ =0x022496B2
	lsl r2, r2, #2
	ldrh r1, [r1, r2]
	cmp r0, r1
	ble _022400A8
	bl ov18_022402E4
	add sp, sp, #8
	pop {r4, pc}
_022400A8:
	mov r0, r1
	bl ov18_022402E4
	ldr r0, _0224010C @ =0x02253398
	mov r3, #0x78
	ldr r0, [r0]
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	mov r0, #0
	bne _022400E0
	ldr r1, _02240114 @ =ov18_02240278
	mov r2, r0
	bl ov18_02246304
	ldr r1, _0224010C @ =0x02253398
	b _022400F0
_022400E0:
	ldr r1, _02240118 @ =ov18_0224011C
	mov r2, r0
	bl ov18_02246304
	ldr r1, _0224010C @ =0x02253398
_022400F0:
	ldr r1, [r1]
	str r0, [r1, #0x14]
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0224010C: .4byte 0x02253398
_02240110: .4byte 0x022496B2
_02240114: .4byte ov18_02240278
_02240118: .4byte ov18_0224011C
	arm_func_end ov18_02240048

	arm_func_start ov18_0224011C
ov18_0224011C: @ 0x0224011C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r4, _0224025C @ =0x02253398
	ldr sb, _02240260 @ =0x02249710
	ldr r0, [r4]
	mov sl, #0
	ldrb r1, [r0, #0x1c]
	ldrb r0, [sb, r1]
	cmp r0, #0
	ble _022401A8
	ldr r8, _02240264 @ =0x022496E0
	ldr r7, _02240268 @ =0x02249666
	ldr r6, _0224026C @ =0x02249684
	add r5, sp, #0
_02240154:
	add r0, r7, r1, lsl #1
	ldrb r0, [sl, r0]
	add r3, r8, r1, lsl #3
	mov r2, r5
	add r0, r3, r0, lsl #2
	add r1, r6, r1, lsl #2
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _02240190
	ldr r0, _0224025C @ =0x02253398
	ldr r0, [r0]
	strb sl, [r0, #0x1b]
	b _022401A8
_02240190:
	ldr r0, [r4]
	add sl, sl, #1
	ldrb r1, [r0, #0x1c]
	ldrb r0, [sb, r1]
	cmp sl, r0
	blt _02240154
_022401A8:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022401D4
	ldr r0, _0224025C @ =0x02253398
	ldr r1, _02240270 @ =0x02249670
	ldr r2, [r0]
	ldrb r0, [r2, #0x1c]
	lsl r0, r0, #1
	ldrsb r0, [r1, r0]
	strb r0, [r2, #0x1b]
_022401D4:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02240200
	ldr r0, _0224025C @ =0x02253398
	ldr r1, _02240274 @ =0x02249671
	ldr r2, [r0]
	ldrb r0, [r2, #0x1c]
	lsl r0, r0, #1
	ldrsb r0, [r1, r0]
	strb r0, [r2, #0x1b]
_02240200:
	ldr r0, _0224025C @ =0x02253398
	ldr r2, _02240260 @ =0x02249710
	ldr r4, [r0]
	mov r0, #0
	ldrb r1, [r4, #0x1c]
	ldrb r1, [r2, r1]
	cmp r1, #0
	ble _0224024C
	ldrsb r3, [r4, #0x1b]
_02240224:
	cmp r0, r3
	bne _02240238
	bl ov18_02240518
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_02240238:
	ldrb r1, [r4, #0x1c]
	add r0, r0, #1
	ldrb r1, [r2, r1]
	cmp r0, r1
	blt _02240224
_0224024C:
	mvn r0, #0
	strb r0, [r4, #0x1b]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0224025C: .4byte 0x02253398
_02240260: .4byte 0x02249710
_02240264: .4byte 0x022496E0
_02240268: .4byte 0x02249666
_0224026C: .4byte 0x02249684
_02240270: .4byte 0x02249670
_02240274: .4byte 0x02249671
	arm_func_end ov18_0224011C

	arm_func_start ov18_02240278
ov18_02240278: @ 0x02240278
	push {r3, lr}
	ldr r2, _022402DC @ =0x02253398
	mvn ip, #0
	ldr r3, [r2]
	mov r1, r0
	strb ip, [r3, #0x1b]
	ldr r3, [r2]
	ldrh r0, [r3, #0x18]
	add r0, r0, #1
	strh r0, [r3, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #0x18]
	cmp r0, #0x78
	poplo {r3, pc}
	mov r0, #0
	bl ov18_022463AC
	ldr r1, _022402E0 @ =ov18_022405D8
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _022402DC @ =0x02253398
	ldr r1, [r1]
	str r0, [r1, #0x14]
	pop {r3, pc}
	.align 2, 0
_022402DC: .4byte 0x02253398
_022402E0: .4byte ov18_022405D8
	arm_func_end ov18_02240278

	arm_func_start ov18_022402E4
ov18_022402E4: @ 0x022402E4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r1, _02240470 @ =0x02253398
	mov sl, r0
	ldr r0, [r1]
	ldr r1, _02240474 @ =0x022496B0
	ldrb r2, [r0, #0x1c]
	ldr r0, [r0]
	mov r3, sl
	lsl r2, r2, #2
	ldrh r2, [r1, r2]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _02240470 @ =0x02253398
	ldr r2, _02240474 @ =0x022496B0
	ldr r0, [r0]
	add r3, sl, #8
	ldrb r4, [r0, #0x1c]
	ldr r0, [r0, #4]
	mvn r1, #0
	lsl r4, r4, #2
	ldrh r2, [r2, r4]
	add r2, r2, #8
	bl ov18_02243CF4
	ldr r0, _02240470 @ =0x02253398
	mov r1, sl
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov18_0224048C
	ldr r0, _02240470 @ =0x02253398
	mov r1, sl
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov18_0224048C
	ldr r4, _02240470 @ =0x02253398
	ldr r8, _02240478 @ =0x02249710
	ldr r0, [r4]
	mov sb, #0
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r8, r0]
	cmp r1, #0
	ble _02240408
	ldr r7, _0224047C @ =0x02249666
	ldr r5, _02240480 @ =0x022496E0
	ldr fp, _02240474 @ =0x022496B0
	mvn r6, #0
_0224039C:
	add r1, r7, r0, lsl #1
	ldrb ip, [sb, r1]
	add r2, r5, r0, lsl #3
	add r3, fp, r0, lsl #2
	add r0, r2, ip, lsl #2
	ldr r1, [r4]
	lsl ip, ip, #2
	ldrh r2, [ip, r2]
	ldrh r0, [r0, #2]
	add r1, r1, sb, lsl #2
	ldrh r3, [r3, #2]
	add ip, sl, r0
	ldr r0, [r1, #8]
	mov r1, r6
	sub r3, ip, r3
	bl ov18_02243CF4
	ldr r0, [r4]
	mov r1, sl
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #8]
	bl ov18_0224048C
	ldr r0, [r4]
	add sb, sb, #1
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r8, r0]
	cmp sb, r1
	blt _0224039C
_02240408:
	and r1, sl, #0xff
	cmp r1, #0xc0
	movge r3, #0
	movge r1, r3
	bge _0224042C
	ldr r2, _02240484 @ =0x022496CA
	lsl r3, r0, #2
	ldrh r2, [r2, r3]
	add r3, r1, r2
_0224042C:
	ldr r4, _02240474 @ =0x022496B0
	lsl r5, r0, #2
	ldr r2, _02240488 @ =0x022496C8
	ldrh r0, [r4, r5]
	ldrh r2, [r2, r5]
	cmp r3, #0xc0
	add r4, sp, #4
	movgt r3, #0xc0
	add r2, r0, r2
	str r4, [sp]
	bl ov18_02244C38
	mov r0, #0
	mov r2, r4
	mov r1, r0
	bl ov18_02244D34
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02240470: .4byte 0x02253398
_02240474: .4byte 0x022496B0
_02240478: .4byte 0x02249710
_0224047C: .4byte 0x02249666
_02240480: .4byte 0x022496E0
_02240484: .4byte 0x022496CA
_02240488: .4byte 0x022496C8
	arm_func_end ov18_022402E4

	arm_func_start ov18_0224048C
ov18_0224048C: @ 0x0224048C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	mov sb, r1
	bl ov18_02243BC8
	mov r7, r0
	cmp r7, #0
	mov r8, #0
	addle sp, sp, #8
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #0x200
	mov r4, r8
	add r6, sp, #4
	add r5, sp, #0
_022404C4:
	mov r0, sl
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl ov18_02243E44
	ldr r0, [sp]
	cmp r0, sb
	blt _022404F0
	cmp r0, #0xc0
	movlt r2, r4
	blt _022404F4
_022404F0:
	mov r2, fp
_022404F4:
	mov r0, sl
	mov r1, r8
	mov r3, #0
	bl ov18_02243BD0
	add r8, r8, #1
	cmp r8, r7
	blt _022404C4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov18_0224048C

	arm_func_start ov18_02240518
ov18_02240518: @ 0x02240518
	push {r4, lr}
	ldr r1, _022405C4 @ =0x02253398
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #8]
	bl ov18_02243BBC
	ldr r1, _022405C4 @ =0x02253398
	mov r2, r0
	ldr r0, [r1]
	ldr r1, _022405C8 @ =0x0224967A
	ldrb r3, [r0, #0x1c]
	mov r0, #0
	add r1, r1, r3, lsl #1
	ldrb r1, [r4, r1]
	add r1, r1, #1
	bl ov18_02243ECC
	ldr r0, _022405C4 @ =0x02253398
	ldr r2, _022405CC @ =0x02249666
	ldr r0, [r0]
	ldr r1, _022405D0 @ =0x022496E0
	ldrb lr, [r0, #0x1c]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #8]
	add r2, r2, lr, lsl #1
	ldrb r3, [r4, r2]
	add r2, r1, lr, lsl #3
	mvn r1, #0
	lsl ip, r3, #2
	ldrh r2, [ip, r2]
	ldr r3, _022405D4 @ =0x022496E2
	add r3, r3, lr, lsl #3
	ldrh r3, [ip, r3]
	bl ov18_02243CF4
	ldr r0, _022405C4 @ =0x02253398
	mvn r1, #0
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #8]
	bl ov18_02243DE4
	pop {r4, pc}
	.align 2, 0
_022405C4: .4byte 0x02253398
_022405C8: .4byte 0x0224967A
_022405CC: .4byte 0x02249666
_022405D0: .4byte 0x022496E0
_022405D4: .4byte 0x022496E2
	arm_func_end ov18_02240518

	arm_func_start ov18_022405D8
ov18_022405D8: @ 0x022405D8
	push {r3, lr}
	ldr r1, _0224060C @ =0x02253398
	ldr r3, [r1]
	ldrb r2, [r3, #0x1d]
	add r2, r2, #1
	strb r2, [r3, #0x1d]
	ldr r1, [r1]
	ldrb r1, [r1, #0x1d]
	cmp r1, #8
	poplo {r3, pc}
	ldr r1, _02240610 @ =ov18_02240614
	bl ov18_022463A4
	pop {r3, pc}
	.align 2, 0
_0224060C: .4byte 0x02253398
_02240610: .4byte ov18_02240614
	arm_func_end ov18_022405D8

	arm_func_start ov18_02240614
ov18_02240614: @ 0x02240614
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _02240698 @ =0x02253398
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	add r0, r0, #0xc
	str r0, [sp]
	bl ov18_022402E4
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	poplt {r4, pc}
	ldr r0, _02240698 @ =0x02253398
	ldr r0, [r0]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _02240684
	ldr r1, _0224069C @ =ov18_022406A4
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
_02240684:
	ldr r1, _022406A0 @ =ov18_02240700
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_02240698: .4byte 0x02253398
_0224069C: .4byte ov18_022406A4
_022406A0: .4byte ov18_02240700
	arm_func_end ov18_02240614

	arm_func_start ov18_022406A4
ov18_022406A4: @ 0x022406A4
	push {r4, lr}
	ldr r1, _022406F4 @ =0x02253398
	mov r4, r0
	ldr r3, [r1]
	ldr r0, _022406F8 @ =0x04000050
	ldrsb r2, [r3, #0x1a]
	add r2, r2, #1
	strb r2, [r3, #0x1a]
	ldr r1, [r1]
	ldrsb r1, [r1, #0x1a]
	bl FUN_020BF5E8
	ldr r0, _022406F4 @ =0x02253398
	ldr r0, [r0]
	ldrsb r0, [r0, #0x1a]
	cmp r0, #0
	poplt {r4, pc}
	ldr r1, _022406FC @ =ov18_02240700
	mov r0, r4
	bl ov18_022463A4
	pop {r4, pc}
	.align 2, 0
_022406F4: .4byte 0x02253398
_022406F8: .4byte 0x04000050
_022406FC: .4byte ov18_02240700
	arm_func_end ov18_022406A4

	arm_func_start ov18_02240700
ov18_02240700: @ 0x02240700
	push {r3, r4, r5, r6, r7, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, _022407A4 @ =0x02253398
	bic r2, r2, #0xe000
	str r2, [r3]
	ldr r1, [r1]
	mov r6, r0
	ldr r0, [r1]
	bl ov18_02243B3C
	ldr r0, _022407A4 @ =0x02253398
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov18_02243B3C
	ldr r7, _022407A4 @ =0x02253398
	ldr r4, _022407A8 @ =0x02249710
	ldr r1, [r7]
	mov r5, #0
	ldrb r0, [r1, #0x1c]
	ldrb r0, [r4, r0]
	cmp r0, #0
	ble _02240784
_02240758:
	add r0, r1, r5, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224076C
	bl ov18_02243B3C
_0224076C:
	ldr r1, [r7]
	add r5, r5, #1
	ldrb r0, [r1, #0x1c]
	ldrb r0, [r4, r0]
	cmp r5, r0
	blt _02240758
_02240784:
	ldr r0, [r1, #0x10]
	bl ov18_02244650
	mov r1, r6
	mov r0, #1
	bl ov18_022463AC
	ldr r0, _022407AC @ =0x02253398
	bl ov18_0224508C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022407A4: .4byte 0x02253398
_022407A8: .4byte 0x02249710
_022407AC: .4byte 0x02253398
	arm_func_end ov18_02240700

	arm_func_start ov18_022407B0
ov18_022407B0: @ 0x022407B0
	push {r3, lr}
	ldr r2, _022407EC @ =0x0225339C
	add r1, r0, #0x160
	str r0, [r2]
	add r0, r1, #0x1b000
	bl ov18_02241448
	ldr r1, _022407EC @ =0x0225339C
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x1b000
	str r2, [r0, #0x140]
	ldr r0, [r1]
	add r0, r0, #0x1b000
	str r2, [r0, #0x144]
	pop {r3, pc}
	.align 2, 0
_022407EC: .4byte 0x0225339C
	arm_func_end ov18_022407B0

	arm_func_start ov18_022407F0
ov18_022407F0: @ 0x022407F0
	push {r4, r5, lr}
	sub sp, sp, #0x7c
	mov r5, r0
	add r0, sp, #0x28
	mov r4, r1
	bl FUN_020C3FBC
	ldrb r2, [sp, #0x12]
	ldrb r1, [sp, #0x29]
	ldrh r3, [sp, #0x42]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r2, r2, r1
	strb r2, [sp, #0x12]
	add r0, sp, #0x2c
	add r1, sp, #0x14
	lsl r2, r3, #1
	strb r3, [sp, #0x13]
	bl FUN_020C4DB0
	ldrb r2, [sp, #0x12]
	ldr r0, _02240908 @ =0x0225339C
	add lr, sp, #4
	mov r1, #0
	ldr r0, [r0]
	bic r2, r2, #0xf0
	mov ip, r0
	strb r2, [sp, #0x12]
	strh r1, [lr]
	strh r1, [lr, #2]
	strh r1, [lr, #4]
	strh r1, [lr, #6]
	strh r1, [lr, #8]
	strh r1, [lr, #0xa]
	strh r1, [lr, #0xc]
	mov r3, #3
_02240878:
	ldrh r2, [lr]
	ldrh r1, [lr, #2]
	add lr, lr, #4
	subs r3, r3, #1
	strh r2, [ip]
	strh r1, [ip, #2]
	add ip, ip, #4
	bne _02240878
	ldrh r2, [lr]
	add r1, r0, #0x40
	add r1, r1, #0x10000
	strh r2, [ip]
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	mov r1, #2
	str r1, [sp]
	ldr r0, _02240908 @ =0x0225339C
	add r1, sp, #0x12
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #0x1b000
	ldr r0, [r0, #0x140]
	mov r3, r4
	bl ov18_0222348C
	cmp r0, #0
	beq _022408E4
	bl FUN_020C42A8
_022408E4:
	mov r0, #0x100
	mov r1, #1
	bl ov18_022236E0
	ldr r0, _0224090C @ =ov18_02240F00
	bl ov18_0221F84C
	mov r0, #1
	bl ov18_02241224
	add sp, sp, #0x7c
	pop {r4, r5, pc}
	.align 2, 0
_02240908: .4byte 0x0225339C
_0224090C: .4byte ov18_02240F00
	arm_func_end ov18_022407F0

	arm_func_start ov18_02240910
ov18_02240910: @ 0x02240910
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	bl ov18_02241224
	mov r0, r4
	bl ov18_02223A30
	cmp r0, #0
	beq _02240940
	mov r0, #7
	bl ov18_02241224
	pop {r3, r4, r5, pc}
_02240940:
	mov r0, r5
	bl ov18_02240958
	cmp r0, #0
	popne {r3, r4, r5, pc}
	bl FUN_020C42A8
	pop {r3, r4, r5, pc}
	arm_func_end ov18_02240910

	arm_func_start ov18_02240958
ov18_02240958: @ 0x02240958
	push {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r6, r0
	ldr r0, [r6]
	mov r5, #0
	cmp r0, #0
	moveq r4, r5
	beq _022409A0
	add r0, sp, #0
	bl FUN_020C7DA0
	ldr r1, [r6]
	add r0, sp, #0
	bl FUN_020C8080
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, r5
	popeq {r4, r5, r6, pc}
	add r4, sp, #0
_022409A0:
	mov r0, r4
	bl ov18_02220C28
	cmp r0, #0
	beq _02240A0C
	ldr r1, _02240A28 @ =0x0225339C
	ldr r0, [r1]
	add r2, r0, #0x2c
	add r0, r0, #0x1b000
	str r2, [r0, #0x144]
	ldr r0, [r1]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	beq _02240A0C
	mov r0, r4
	mov r2, #0x10000
	bl ov18_02220CA8
	cmp r0, #0
	beq _02240A0C
	ldr r1, _02240A28 @ =0x0225339C
	mov r0, r6
	ldr r1, [r1]
	add r1, r1, #0x1b000
	ldr r1, [r1, #0x144]
	bl ov18_02221198
	cmp r0, #0
	movne r5, #1
_02240A0C:
	add r0, sp, #0
	cmp r4, r0
	bne _02240A1C
	bl FUN_020C80C8
_02240A1C:
	mov r0, r5
	add sp, sp, #0x48
	pop {r4, r5, r6, pc}
	.align 2, 0
_02240A28: .4byte 0x0225339C
	arm_func_end ov18_02240958

	arm_func_start ov18_02240A2C
ov18_02240A2C: @ 0x02240A2C
	push {r3, r4, r5, lr}
	mov r1, #1
	mov r4, r0
	bl ov18_0221F94C
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #1
	mvn r0, r0, lsl r4
	lsl r5, r0, #0x10
	bl FUN_020C3D98
	ldr r1, _02240AC8 @ =0x0225339C
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl FUN_020C3DAC
	mov r0, r4
	bl ov18_02223B68
	pop {r3, r4, r5, pc}
	.align 2, 0
_02240AC8: .4byte 0x0225339C
	arm_func_end ov18_02240A2C

	arm_func_start ov18_02240ACC
ov18_02240ACC: @ 0x02240ACC
	push {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	bl ov18_0221F94C
	cmp r0, #0
	bne _02240B68
	mov r0, #1
	mvn r0, r0, lsl r4
	lsl r5, r0, #0x10
	bl FUN_020C3D98
	ldr r1, _02240BA0 @ =0x0225339C
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl FUN_020C3DAC
	mov r0, r4
	bl ov18_02223B68
	pop {r3, r4, r5, pc}
_02240B68:
	bl FUN_020C3D98
	ldr r1, _02240BA0 @ =0x0225339C
	mov r2, #1
	ldr r3, [r1]
	mvn r4, r2, lsl r4
	ldrh r2, [r3, #4]
	and r2, r2, r4
	strh r2, [r3, #4]
	ldr r2, [r1]
	ldrh r1, [r2, #2]
	and r1, r1, r4
	strh r1, [r2, #2]
	bl FUN_020C3DAC
	pop {r3, r4, r5, pc}
	.align 2, 0
_02240BA0: .4byte 0x0225339C
	arm_func_end ov18_02240ACC

	arm_func_start ov18_02240BA4
ov18_02240BA4: @ 0x02240BA4
	push {r3, r4, r5, lr}
	mov r1, #2
	mov r4, r0
	bl ov18_0221F94C
	cmp r0, #0
	bne _02240C40
	mov r0, #1
	mvn r0, r0, lsl r4
	lsl r5, r0, #0x10
	bl FUN_020C3D98
	ldr r1, _02240C78 @ =0x0225339C
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl FUN_020C3DAC
	mov r0, r4
	bl ov18_02223B68
	pop {r3, r4, r5, pc}
_02240C40:
	bl FUN_020C3D98
	ldr r1, _02240C78 @ =0x0225339C
	mov ip, #1
	ldr r5, [r1]
	mvn r2, ip, lsl r4
	ldrh r3, [r5, #6]
	and r2, r3, r2
	strh r2, [r5, #6]
	ldr r2, [r1]
	ldrh r1, [r2, #8]
	orr r1, r1, ip, lsl r4
	strh r1, [r2, #8]
	bl FUN_020C3DAC
	pop {r3, r4, r5, pc}
	.align 2, 0
_02240C78: .4byte 0x0225339C
	arm_func_end ov18_02240BA4

	arm_func_start ov18_02240C7C
ov18_02240C7C: @ 0x02240C7C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #3
	bl ov18_02241224
	mov r5, #1
	ldr r7, _02240D58 @ =0x0225339C
	mov r4, r5
_02240C94:
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	tst r0, r4, lsl r5
	beq _02240D40
	ldrh r0, [r1, #4]
	tst r0, r4, lsl r5
	bne _02240D40
	ldrh r0, [r1, #6]
	tst r0, r4, lsl r5
	bne _02240D38
	mvn r0, r4, lsl r5
	lsl r6, r0, #0x10
	bl FUN_020C3D98
	ldr r2, [r7]
	ldrh r1, [r2, #2]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r7]
	ldrh r1, [r2, #4]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r7]
	ldrh r1, [r2, #8]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r7]
	ldrh r1, [r2, #0xa]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r7]
	ldrh r1, [r2, #0xc]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xc]
	bl FUN_020C3DAC
	mov r0, r5
	bl ov18_02223B68
	b _02240D40
_02240D38:
	mov r0, r5
	bl ov18_02240BA4
_02240D40:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x10
	blo _02240C94
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240D58: .4byte 0x0225339C
	arm_func_end ov18_02240C7C

	arm_func_start ov18_02240D5C
ov18_02240D5C: @ 0x02240D5C
	push {r4, r5, r6, lr}
	ldr r4, _02240DC0 @ =0x0225339C
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	mov r6, #1
	mov r5, r6
_02240D80:
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	tst r0, r5, lsl r6
	beq _02240DA4
	mov r0, r6
	bl ov18_0221F8F8
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
_02240DA4:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x10
	blo _02240D80
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02240DC0: .4byte 0x0225339C
	arm_func_end ov18_02240D5C

	arm_func_start ov18_02240DC4
ov18_02240DC4: @ 0x02240DC4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, #1
	ldr r4, _02240EB8 @ =0x0225339C
	mov r8, #0
	mov r5, #3
	mov r6, r7
_02240DDC:
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	tst r0, r6, lsl r7
	beq _02240E84
	mov r0, r7
	mov r1, r5
	bl ov18_0221F94C
	cmp r0, #0
	orrne r0, r8, r6, lsl r7
	lslne r0, r0, #0x10
	lsrne r8, r0, #0x10
	bne _02240E84
	mvn r0, r6, lsl r7
	lsl sb, r0, #0x10
	bl FUN_020C3D98
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #0xc]
	bl FUN_020C3DAC
	mov r0, r7
	bl ov18_02223B68
_02240E84:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #0x10
	blo _02240DDC
	cmp r8, #0
	bne _02240EAC
	mov r0, #7
	bl ov18_02241224
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_02240EAC:
	mov r0, #4
	bl ov18_02241224
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02240EB8: .4byte 0x0225339C
	arm_func_end ov18_02240DC4

	arm_func_start ov18_02240EBC
ov18_02240EBC: @ 0x02240EBC
	push {r3, lr}
	mov r0, #6
	bl ov18_02241224
	bl ov18_02223B2C
	pop {r3, pc}
	arm_func_end ov18_02240EBC

	arm_func_start ov18_02240ED0
ov18_02240ED0: @ 0x02240ED0
	push {r3, lr}
	ldr r0, _02240EFC @ =0x0225339C
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #4
	ldrheq r1, [r2, #2]
	ldrheq r0, [r2, #0xc]
	cmpeq r1, r0
	popne {r3, pc}
	bl ov18_02223B2C
	pop {r3, pc}
	.align 2, 0
_02240EFC: .4byte 0x0225339C
	arm_func_end ov18_02240ED0

	arm_func_start ov18_02240F00
ov18_02240F00: @ 0x02240F00
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _02241218
_02240F18: @ jump table
	b _02241218 @ case 0
	pop {r4, r5, r6, pc} @ case 1
	b _02240F54 @ case 2
	b _02240FDC @ case 3
	pop {r4, r5, r6, pc} @ case 4
	pop {r4, r5, r6, pc} @ case 5
	pop {r4, r5, r6, pc} @ case 6
	b _02241118 @ case 7
	pop {r4, r5, r6, pc} @ case 8
	b _02241148 @ case 9
	b _02241068 @ case 10
	pop {r4, r5, r6, pc} @ case 11
	b _0224117C @ case 12
	b _022411D8 @ case 13
	b _022410D4 @ case 14
_02240F54:
	bl ov18_02241238
	cmp r0, #2
	popne {r4, r5, r6, pc}
	ldr r0, _02241220 @ =0x0225339C
	ldr r6, [r0]
	bl FUN_020C3D98
	ldrh r2, [r6, #2]
	mov r1, #1
	orr r1, r2, r1, lsl r5
	strh r1, [r6, #2]
	bl FUN_020C3DAC
	ldr r1, _02241220 @ =0x0225339C
	sub r3, r5, #1
	mov r0, #0x1e
	mul r0, r3, r0
	ldr r2, [r1]
	add r3, r2, #0x24
	ldrb r2, [r4, #0xa]
	add ip, r3, r0
	strb r2, [r3, r0]
	ldrb r2, [r4, #0xb]
	strb r2, [ip, #1]
	ldrb r2, [r4, #0xc]
	strb r2, [ip, #2]
	ldrb r2, [r4, #0xd]
	strb r2, [ip, #3]
	ldrb r2, [r4, #0xe]
	strb r2, [ip, #4]
	ldrb r2, [r4, #0xf]
	strb r2, [ip, #5]
	ldr r1, [r1]
	add r0, r1, r0
	strh r5, [r0, #0x2a]
	pop {r4, r5, r6, pc}
_02240FDC:
	bl ov18_022412A4
	cmp r0, #6
	popeq {r4, r5, r6, pc}
	mov r0, #1
	mvn r0, r0, lsl r5
	lsl r4, r0, #0x10
	bl FUN_020C3D98
	ldr r1, _02241220 @ =0x0225339C
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r4, lsr #16
	strh r1, [r2, #0xc]
	bl FUN_020C3DAC
	bl ov18_02240ED0
	pop {r4, r5, r6, pc}
_02241068:
	bl ov18_02241238
	cmp r0, #2
	beq _02241080
	mov r0, r5
	bl ov18_02240ACC
	pop {r4, r5, r6, pc}
_02241080:
	ldr r0, _02241220 @ =0x0225339C
	mov r1, #1
	ldr r3, [r0]
	mov r0, r5
	ldrh r2, [r3, #4]
	orr r1, r2, r1, lsl r5
	strh r1, [r3, #4]
	bl ov18_02240A2C
	mov r0, r5
	bl ov18_0221F874
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	ldr r1, _02241220 @ =0x0225339C
	sub r2, r5, #1
	ldr r3, [r1]
	mov r1, #0x1e
	add r3, r3, #0xe
	mla r1, r2, r1, r3
	mov r2, #0x16
	bl FUN_020C4DB0
	pop {r4, r5, r6, pc}
_022410D4:
	ldr r0, _02241220 @ =0x0225339C
	mov r4, #1
	ldr r3, [r0]
	mvn r1, r4, lsl r5
	ldrh r2, [r3, #4]
	and r1, r2, r1
	strh r1, [r3, #4]
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	orr r0, r0, r4, lsl r5
	strh r0, [r1, #6]
	bl ov18_02241238
	cmp r0, #3
	popne {r4, r5, r6, pc}
	mov r0, r5
	bl ov18_02240BA4
	pop {r4, r5, r6, pc}
_02241118:
	ldr r0, _02241220 @ =0x0225339C
	mov r4, #1
	ldr r3, [r0]
	mvn r1, r4, lsl r5
	ldrh r2, [r3, #8]
	and r1, r2, r1
	strh r1, [r3, #8]
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	orr r0, r0, r4, lsl r5
	strh r0, [r1, #0xa]
	pop {r4, r5, r6, pc}
_02241148:
	ldr r0, _02241220 @ =0x0225339C
	mov r4, #1
	ldr r3, [r0]
	mvn r1, r4, lsl r5
	ldrh r2, [r3, #0xa]
	and r1, r2, r1
	strh r1, [r3, #0xa]
	ldr r1, [r0]
	ldrh r0, [r1, #0xc]
	orr r0, r0, r4, lsl r5
	strh r0, [r1, #0xc]
	bl ov18_02240ED0
	pop {r4, r5, r6, pc}
_0224117C:
	bl ov18_02241238
	cmp r0, #4
	bne _02241194
	mov r0, #5
	bl ov18_02241224
	b _0224119C
_02241194:
	mov r0, #0
	bl ov18_02241224
_0224119C:
	ldr r0, _02241220 @ =0x0225339C
	ldr r0, [r0]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x144]
	ldr r0, _02241220 @ =0x0225339C
	ldr r0, [r0]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x140]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x140]
	pop {r4, r5, r6, pc}
_022411D8:
	ldrh r0, [r4]
	cmp r0, #8
	bgt _02241204
	popge {r4, r5, r6, pc}
	cmp r0, #2
	popgt {r4, r5, r6, pc}
	cmp r0, #1
	poplt {r4, r5, r6, pc}
	cmpne r0, #2
	beq _0224120C
	pop {r4, r5, r6, pc}
_02241204:
	cmp r0, #9
	popne {r4, r5, r6, pc}
_0224120C:
	mov r0, #7
	bl ov18_02241224
	pop {r4, r5, r6, pc}
_02241218:
	bl FUN_020C42A8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02241220: .4byte 0x0225339C
	arm_func_end ov18_02240F00

	arm_func_start ov18_02241224
ov18_02241224: @ 0x02241224
	ldr r1, _02241234 @ =0x0225339C
	ldr r1, [r1]
	strh r0, [r1]
	bx lr
	.align 2, 0
_02241234: .4byte 0x0225339C
	arm_func_end ov18_02241224

	arm_func_start ov18_02241238
ov18_02241238: @ 0x02241238
	ldr r0, _02241248 @ =0x0225339C
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_02241248: .4byte 0x0225339C
	arm_func_end ov18_02241238

	arm_func_start ov18_0224124C
ov18_0224124C: @ 0x0224124C
	ldr r2, _02241298 @ =0x0225339C
	ldr r1, _0224129C @ =0x0224A6B8
	ldr ip, [r2]
	ldr r2, _022412A0 @ =0x0224A6B8
	add r3, ip, #2
	str r3, [r1]
	add r3, ip, #4
	str r3, [r1, #4]
	add r3, ip, #6
	str r3, [r1, #8]
	add r3, ip, #8
	str r3, [r1, #0xc]
	add r3, ip, #0xa
	str r3, [r1, #0x10]
	add r3, ip, #0xc
	str r3, [r1, #0x14]
	ldr r0, [r2, r0, lsl #2]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_02241298: .4byte 0x0225339C
_0224129C: .4byte 0x0224A6B8
_022412A0: .4byte 0x0224A6B8
	arm_func_end ov18_0224124C

	arm_func_start ov18_022412A4
ov18_022412A4: @ 0x022412A4
	push {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl FUN_020C3D98
	ldr r1, _02241368 @ =0x0225339C
	mov r3, #1
	ldr r2, [r1]
	lsl r3, r3, r4
	ldrh r1, [r2, #2]
	lsl r4, r3, #0x10
	mov r5, r0
	tst r1, r4, lsr #16
	bne _022412E8
	bl FUN_020C3DAC
	add sp, sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_022412E8:
	mov r0, r2
	add r1, sp, #0
	mov r2, #0xe
	bl FUN_020C4DB0
	mov r0, r5
	bl FUN_020C3DAC
	ldrh r0, [sp, #4]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #2
	popne {r3, r4, r5, pc}
	ldrh r0, [sp, #6]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #3
	popne {r3, r4, r5, pc}
	ldrh r0, [sp, #8]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #4
	popne {r3, r4, r5, pc}
	ldrh r0, [sp, #0xa]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #5
	popne {r3, r4, r5, pc}
	ldrh r0, [sp, #0xc]
	tst r0, r4, lsr #16
	movne r0, #6
	moveq r0, #1
	add sp, sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02241368: .4byte 0x0225339C
	arm_func_end ov18_022412A4

	arm_func_start ov18_0224136C
ov18_0224136C: @ 0x0224136C
	ldr r1, _0224139C @ =0x0225339C
	mov r2, #1
	ldr r3, [r1]
	ldrh r1, [r3, #2]
	tst r1, r2, lsl r0
	moveq r0, #0
	bxeq lr
	sub r1, r0, #1
	add r2, r3, #0xe
	mov r0, #0x1e
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_0224139C: .4byte 0x0225339C
	arm_func_end ov18_0224136C

	arm_func_start ov18_022413A0
ov18_022413A0: @ 0x022413A0
	push {r4, r5, r6, r7, r8, lr}
	ldr r1, _02241444 @ =0x0225339C
	mov lr, #1
	ldr r5, [r1]
	mov ip, lr
	ldrh r4, [r5, #2]
	add r1, r5, #0x24
	mov r6, #0x1e
_022413C0:
	tst r4, ip, lsl lr
	beq _02241428
	sub r2, lr, #1
	mul r3, r2, r6
	ldrb r8, [r0]
	ldrb r7, [r1, r3]
	add r2, r1, r3
	cmp r8, r7
	ldrbeq r8, [r0, #1]
	ldrbeq r7, [r2, #1]
	cmpeq r8, r7
	ldrbeq r8, [r0, #2]
	ldrbeq r7, [r2, #2]
	cmpeq r8, r7
	ldrbeq r8, [r0, #3]
	ldrbeq r7, [r2, #3]
	cmpeq r8, r7
	ldrbeq r8, [r0, #4]
	ldrbeq r7, [r2, #4]
	cmpeq r8, r7
	ldrbeq r7, [r0, #5]
	ldrbeq r2, [r2, #5]
	cmpeq r7, r2
	addeq r0, r5, r3
	ldrheq r0, [r0, #0x2a]
	popeq {r4, r5, r6, r7, r8, pc}
_02241428:
	add r2, lr, #1
	lsl r2, r2, #0x10
	lsr lr, r2, #0x10
	cmp lr, #2
	blo _022413C0
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02241444: .4byte 0x0225339C
	arm_func_end ov18_022413A0

	arm_func_start ov18_02241448
ov18_02241448: @ 0x02241448
	ldr r1, _02241480 @ =0x022533A0
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r0, #0x40]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3a8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3ac]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3b0]
	bx lr
	.align 2, 0
_02241480: .4byte 0x022533A0
	arm_func_end ov18_02241448

	arm_func_start ov18_02241484
ov18_02241484: @ 0x02241484
	push {r4, lr}
	ldr r1, _022414F0 @ =0x022533A0
	mov r4, r0
	ldr r3, [r1]
	cmp r3, #0
	beq _022414B8
	ldr r1, [r1, #4]
	ldr r0, _022414F4 @ =0x0224AF00
	ldr r2, [r1, #0x40]
	ldr r1, _022414F8 @ =0x0224AFE0
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
_022414B8:
	ldr r0, _022414F0 @ =0x022533A0
	ldr r1, [r0, #4]
	str r4, [r1, #0x40]
	ldr r3, [r0]
	cmp r3, #0
	popeq {r4, pc}
	ldr r1, [r0, #4]
	ldr r0, _022414F4 @ =0x0224AF00
	ldr r2, [r1, #0x40]
	ldr r1, _022414FC @ =0x0224AFE8
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
	pop {r4, pc}
	.align 2, 0
_022414F0: .4byte 0x022533A0
_022414F4: .4byte 0x0224AF00
_022414F8: .4byte 0x0224AFE0
_022414FC: .4byte 0x0224AFE8
	arm_func_end ov18_02241484

	arm_func_start ov18_02241500
ov18_02241500: @ 0x02241500
	ldr r1, _0224151C @ =0x022533A0
	ldr r2, [r1, #4]
	ldr r1, [r2, #0x40]
	sub r1, r1, #9
	cmp r1, #1
	strhi r0, [r2, #0x54]
	bx lr
	.align 2, 0
_0224151C: .4byte 0x022533A0
	arm_func_end ov18_02241500

	arm_func_start ov18_02241520
ov18_02241520: @ 0x02241520
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r1, _0224155C @ =0x022533A0
	ldr r0, _02241560 @ =ov18_02241564
	ldr r1, [r1, #4]
	bl FUN_020CEDC8
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0224155C: .4byte 0x022533A0
_02241560: .4byte ov18_02241564
	arm_func_end ov18_02241520

	arm_func_start ov18_02241564
ov18_02241564: @ 0x02241564
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241584
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
_02241584:
	ldr r0, _022415CC @ =0x022533A0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3ac]
	cmp r0, #0
	beq _022415B4
	bl ov18_022415D0
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
_022415B4:
	bl ov18_0224166C
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
	.align 2, 0
_022415CC: .4byte 0x022533A0
	arm_func_end ov18_02241564

	arm_func_start ov18_022415D0
ov18_022415D0: @ 0x022415D0
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _0224162C @ =0x022533A0
	ldr r1, [r0, #4]
	add r0, r1, #0x1000
	ldr r2, [r0, #0x3ac]
	add r0, r1, #0x13c0
	blx r2
	ldr r2, _0224162C @ =0x022533A0
	mov r1, r0
	ldr r2, [r2, #4]
	ldr r0, _02241630 @ =ov18_02241634
	add r2, r2, #0x13c0
	bl FUN_020D056C
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0224162C: .4byte 0x022533A0
_02241630: .4byte ov18_02241634
	arm_func_end ov18_022415D0

	arm_func_start ov18_02241634
ov18_02241634: @ 0x02241634
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241654
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
_02241654:
	bl ov18_0224166C
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
	arm_func_end ov18_02241634

	arm_func_start ov18_0224166C
ov18_0224166C: @ 0x0224166C
	push {r3, lr}
	ldr r0, _022416C8 @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	popls {r3, pc}
	ldr r0, _022416CC @ =ov18_022416D0
	bl FUN_020CEF50
	cmp r0, #2
	beq _022416A8
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
_022416A8:
	ldr r1, _022416C8 @ =0x022533A0
	mov r3, #0
	ldr r2, [r1, #4]
	mov r0, #1
	strh r3, [r2, #0x50]
	ldr r1, [r1, #4]
	strh r0, [r1, #0x52]
	pop {r3, pc}
	.align 2, 0
_022416C8: .4byte 0x022533A0
_022416CC: .4byte ov18_022416D0
	arm_func_end ov18_0224166C

	arm_func_start ov18_022416D0
ov18_022416D0: @ 0x022416D0
	push {r3, r4, r5, lr}
	mov r4, r0
	ldrh r2, [r4, #0x10]
	ldrh r0, [r4, #2]
	mov r1, #1
	lsl r1, r1, r2
	cmp r0, #0
	lsl r5, r1, #0x10
	beq _02241704
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r3, r4, r5, pc}
_02241704:
	ldrh ip, [r4, #8]
	cmp ip, #7
	bgt _02241734
	bge _02241740
	cmp ip, #2
	bgt _0224180C
	cmp ip, #0
	blt _0224180C
	beq _022417F4
	cmp ip, #2
	popeq {r3, r4, r5, pc}
	b _0224180C
_02241734:
	cmp ip, #9
	beq _022417BC
	b _0224180C
_02241740:
	ldr r0, _02241830 @ =0x022533A0
	ldr r3, [r0]
	cmp r3, #0
	beq _0224175C
	ldr r1, _02241834 @ =0x0224AFEC
	mov r0, #0x8000000
	blx r3
_0224175C:
	ldr r0, _02241830 @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _022417A4
	mov r0, r4
	blx r1
	cmp r0, #0
	bne _022417A4
	ldrh r1, [r4, #0x10]
	mov r0, #0
	bl FUN_020CF2E8
	cmp r0, #2
	popeq {r3, r4, r5, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r3, r4, r5, pc}
_022417A4:
	ldr r0, _02241830 @ =0x022533A0
	ldr r1, [r0, #4]
	ldrh r0, [r1, #0x52]
	orr r0, r0, r5, lsr #16
	strh r0, [r1, #0x52]
	pop {r3, r4, r5, pc}
_022417BC:
	ldr r0, _02241830 @ =0x022533A0
	ldr r3, [r0]
	cmp r3, #0
	beq _022417D8
	ldr r1, _02241838 @ =0x0224B018
	mov r0, #0x8000000
	blx r3
_022417D8:
	ldr r0, _02241830 @ =0x022533A0
	mvn r1, r5, lsr #16
	ldr r2, [r0, #4]
	ldrh r0, [r2, #0x52]
	and r0, r0, r1
	strh r0, [r2, #0x52]
	pop {r3, r4, r5, pc}
_022417F4:
	bl ov18_02241840
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #9
	bl ov18_02241484
	pop {r3, r4, r5, pc}
_0224180C:
	ldr r0, _02241830 @ =0x022533A0
	ldr r3, [r0]
	cmp r3, #0
	popeq {r3, r4, r5, pc}
	ldr r1, _0224183C @ =0x0224B044
	mov r2, ip
	mov r0, #0x8000000
	blx r3
	pop {r3, r4, r5, pc}
	.align 2, 0
_02241830: .4byte 0x022533A0
_02241834: .4byte 0x0224AFEC
_02241838: .4byte 0x0224B018
_0224183C: .4byte 0x0224B044
	arm_func_end ov18_022416D0

	arm_func_start ov18_02241840
ov18_02241840: @ 0x02241840
	push {r3, lr}
	sub sp, sp, #8
	ldr r0, _022418D0 @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	addls sp, sp, #8
	movls r0, #1
	popls {r3, pc}
	mov r0, #4
	bl ov18_02241484
	ldr r0, _022418D0 @ =0x022533A0
	mov ip, #1
	ldr lr, [r0, #4]
	ldr r0, _022418D4 @ =ov18_022418D8
	add r3, lr, #0x1000
	ldr r1, [r3, #0x2a0]
	add r2, lr, #0x60
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	stm sp, {r1, ip}
	ldr r3, [r3, #0x2a4]
	add r1, r2, #0x1000
	lsl r2, r3, #0x10
	lsr r2, r2, #0x10
	add r3, lr, #0xf80
	bl FUN_020CF5E4
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022418D0: .4byte 0x022533A0
_022418D4: .4byte ov18_022418D8
	arm_func_end ov18_02241840

	arm_func_start ov18_022418D8
ov18_022418D8: @ 0x022418D8
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _022418FC
	mov r0, r1
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
_022418FC:
	ldrh r2, [r0, #4]
	sub r0, r2, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022419D8
_02241910: @ jump table
	b _02241920 @ case 0
	pop {r3, pc} @ case 1
	b _022419D8 @ case 2
	b _022419D8 @ case 3
_02241920:
	ldr r0, _022419F8 @ =0x022533A0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x44]
	cmp r0, #2
	bne _02241980
	ldr r0, [r1, #0x40]
	cmp r0, #4
	bne _02241974
	bl ov18_02241A04
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022419F8 @ =0x022533A0
	ldr r2, [r0]
	cmp r2, #0
	beq _02241968
	ldr r1, _022419FC @ =0x0224B064
	mov r0, #0x8000000
	blx r2
_02241968:
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
_02241974:
	cmp r0, #6
	bne _022419CC
	pop {r3, pc}
_02241980:
	cmp r0, #4
	bne _022419CC
	add r0, r1, #0x3e0
	mov ip, #1
	add r0, r0, #0x1000
	mov r1, #0xd
	mov r2, #7
	mov r3, #0x44
	str ip, [sp]
	bl FUN_020CF9C4
	cmp r0, #0
	beq _022419C0
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
_022419C0:
	mov r0, #5
	bl ov18_02241484
	pop {r3, pc}
_022419CC:
	mov r0, #4
	bl ov18_02241484
	pop {r3, pc}
_022419D8:
	ldr r0, _022419F8 @ =0x022533A0
	ldr r3, [r0]
	cmp r3, #0
	popeq {r3, pc}
	ldr r1, _02241A00 @ =0x0224B044
	mov r0, #0x8000000
	blx r3
	pop {r3, pc}
	.align 2, 0
_022419F8: .4byte 0x022533A0
_022419FC: .4byte 0x0224B064
_02241A00: .4byte 0x0224B044
	arm_func_end ov18_022418D8

	arm_func_start ov18_02241A04
ov18_02241A04: @ 0x02241A04
	push {r3, lr}
	mov r0, #6
	bl ov18_02241484
	ldr r0, _02241A3C @ =0x022533A0
	mov r1, #0xd
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl FUN_020D0544
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241A3C: .4byte 0x022533A0
	arm_func_end ov18_02241A04

	arm_func_start ov18_02241A40
ov18_02241A40: @ 0x02241A40
	push {r3, lr}
	ldr r0, _02241A6C @ =0x022533A0
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl FUN_020D0560
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241A6C: .4byte 0x022533A0
	arm_func_end ov18_02241A40

	arm_func_start ov18_02241A70
ov18_02241A70: @ 0x02241A70
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241A9C @ =ov18_02241AA0
	bl FUN_020CF77C
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241A9C: .4byte ov18_02241AA0
	arm_func_end ov18_02241A70

	arm_func_start ov18_02241AA0
ov18_02241AA0: @ 0x02241AA0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241ABC
	bl ov18_02241500
	bl ov18_02242474
	pop {r3, pc}
_02241ABC:
	bl ov18_02241AF4
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02241AEC @ =0x022533A0
	ldr r2, [r0]
	cmp r2, #0
	beq _02241AE4
	ldr r1, _02241AF0 @ =0x0224B094
	mov r0, #0x8000000
	blx r2
_02241AE4:
	bl ov18_02242474
	pop {r3, pc}
	.align 2, 0
_02241AEC: .4byte 0x022533A0
_02241AF0: .4byte 0x0224B094
	arm_func_end ov18_02241AA0

	arm_func_start ov18_02241AF4
ov18_02241AF4: @ 0x02241AF4
	push {r3, lr}
	ldr r0, _02241B18 @ =ov18_02241B1C
	bl FUN_020CEF60
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241B18: .4byte ov18_02241B1C
	arm_func_end ov18_02241AF4

	arm_func_start ov18_02241B1C
ov18_02241B1C: @ 0x02241B1C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241B34
	bl ov18_02241500
	pop {r3, pc}
_02241B34:
	mov r0, #1
	bl ov18_02241484
	pop {r3, pc}
	arm_func_end ov18_02241B1C

	arm_func_start ov18_02241B40
ov18_02241B40: @ 0x02241B40
	push {r3, lr}
	ldr r0, _02241B8C @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	movne r0, #0
	popne {r3, pc}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241B8C @ =0x022533A0
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl FUN_020D0560
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241B8C: .4byte 0x022533A0
	arm_func_end ov18_02241B40

	arm_func_start ov18_02241B90
ov18_02241B90: @ 0x02241B90
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241BBC @ =ov18_02241BC0
	bl FUN_020CF77C
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241BBC: .4byte ov18_02241BC0
	arm_func_end ov18_02241B90

	arm_func_start ov18_02241BC0
ov18_02241BC0: @ 0x02241BC0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241BDC
	bl ov18_02241500
	bl ov18_02242490
	pop {r3, pc}
_02241BDC:
	bl ov18_02241BF4
	cmp r0, #0
	popne {r3, pc}
	mov r0, #9
	bl ov18_02241484
	pop {r3, pc}
	arm_func_end ov18_02241BC0

	arm_func_start ov18_02241BF4
ov18_02241BF4: @ 0x02241BF4
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241C28 @ =ov18_02241C2C
	mov r1, #0
	bl FUN_020CF2E8
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	bl ov18_02242474
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241C28: .4byte ov18_02241C2C
	arm_func_end ov18_02241BF4

	arm_func_start ov18_02241C2C
ov18_02241C2C: @ 0x02241C2C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241C44
	bl ov18_02241500
	pop {r3, pc}
_02241C44:
	mov r0, #1
	bl ov18_02241484
	pop {r3, pc}
	arm_func_end ov18_02241C2C

	arm_func_start ov18_02241C50
ov18_02241C50: @ 0x02241C50
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241C7C @ =ov18_02241C80
	bl FUN_020CED50
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02241C7C: .4byte ov18_02241C80
	arm_func_end ov18_02241C50

	arm_func_start ov18_02241C80
ov18_02241C80: @ 0x02241C80
	push {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02241CA8
	mov r0, #9
	bl ov18_02241484
	ldrh r0, [r4, #2]
	bl ov18_02241500
	pop {r4, pc}
_02241CA8:
	mov r0, #1
	bl ov18_02241484
	pop {r4, pc}
	arm_func_end ov18_02241C80

	arm_func_start ov18_02241CB4
ov18_02241CB4: @ 0x02241CB4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241CD0
	mov r0, #0xa
	bl ov18_02241484
	pop {r3, pc}
_02241CD0:
	mov r0, #0
	bl ov18_02241484
	pop {r3, pc}
	arm_func_end ov18_02241CB4

	arm_func_start ov18_02241CDC
ov18_02241CDC: @ 0x02241CDC
	ldr r1, _02241CEC @ =0x022533A0
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_02241CEC: .4byte 0x022533A0
	arm_func_end ov18_02241CDC

	arm_func_start ov18_02241CF0
ov18_02241CF0: @ 0x02241CF0
	ldr r0, _02241D00 @ =0x022533A0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x52]
	bx lr
	.align 2, 0
_02241D00: .4byte 0x022533A0
	arm_func_end ov18_02241CF0

	arm_func_start ov18_02241D04
ov18_02241D04: @ 0x02241D04
	ldr r0, _02241D14 @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bx lr
	.align 2, 0
_02241D14: .4byte 0x022533A0
	arm_func_end ov18_02241D04

	arm_func_start ov18_02241D18
ov18_02241D18: @ 0x02241D18
	push {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_020C3FA0
	ldr r2, _02241DE4 @ =0x027FFC3C
	ldrh r0, [sp]
	ldr r3, [r2]
	ldrh r2, [sp, #2]
	add r0, r0, r3
	ldr r1, _02241DE8 @ =0x022533A0
	add r2, r2, r0
	ldrh r3, [sp, #4]
	ldr r0, [r1, #4]
	add r2, r3, r2
	str r2, [r0, #0x58]
	ldr ip, [r1, #4]
	ldr r0, _02241DEC @ =0x00010DCD
	ldr r2, [ip, #0x58]
	mov r3, #0
	mul r0, r2, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [ip, #0x58]
	ldr r0, [r1, #4]
	mov r2, #0x65
	strh r3, [r0, #0x5c]
	ldr r1, [r1, #4]
	mov r0, #3
	strh r2, [r1, #0x5e]
	bl ov18_02241484
	mov r0, #1
	bl ov18_02241DF0
	cmp r0, #0x18
	bne _02241DBC
	mov r0, #0x18
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	add sp, sp, #8
	mov r0, #0
	pop {r3, pc}
_02241DBC:
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_02241DE4: .4byte 0x027FFC3C
_02241DE8: .4byte 0x022533A0
_02241DEC: .4byte 0x00010DCD
	arm_func_end ov18_02241D18

	arm_func_start ov18_02241DF0
ov18_02241DF0: @ 0x02241DF0
	push {r4, lr}
	mov r4, r0
	bl FUN_020CE7F4
	cmp r0, #0x8000
	bne _02241E1C
	mov r0, #3
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #3
	pop {r4, pc}
_02241E1C:
	cmp r0, #0
	bne _02241E3C
	mov r0, #0x16
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0x18
	pop {r4, pc}
_02241E3C:
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _02241E70
_02241E4C:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x10
	movhi r0, #0x18
	pophi {r4, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _02241E4C
_02241E70:
	ldr r0, _02241E88 @ =ov18_02241E8C
	mov r1, r4
	bl ov18_02241F64
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.align 2, 0
_02241E88: .4byte ov18_02241E8C
	arm_func_end ov18_02241DF0

	arm_func_start ov18_02241E8C
ov18_02241E8C: @ 0x02241E8C
	push {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02241EB0
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	pop {r4, pc}
_02241EB0:
	ldr r0, _02241F5C @ =0x022533A0
	ldr ip, [r0]
	cmp ip, #0
	beq _02241ED4
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r1, _02241F60 @ =0x0224B0EC
	mov r0, #0x8000000
	blx ip
_02241ED4:
	ldr r0, _02241F5C @ =0x022533A0
	ldrh r2, [r4, #0xa]
	ldr r3, [r0, #4]
	ldrh ip, [r4, #8]
	ldrh r1, [r3, #0x5e]
	cmp r1, r2
	bls _02241F0C
	strh r2, [r3, #0x5e]
	sub r1, ip, #1
	mov r2, #1
	lsl r1, r2, r1
	ldr r0, [r0, #4]
	strh r1, [r0, #0x60]
	b _02241F24
_02241F0C:
	bne _02241F24
	ldrh r2, [r3, #0x60]
	sub r0, ip, #1
	mov r1, #1
	orr r0, r2, r1, lsl r0
	strh r0, [r3, #0x60]
_02241F24:
	add r0, ip, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov18_02241DF0
	cmp r0, #0x18
	bne _02241F48
	mov r0, #7
	bl ov18_02241484
	pop {r4, pc}
_02241F48:
	cmp r0, #2
	popeq {r4, pc}
	mov r0, #9
	bl ov18_02241484
	pop {r4, pc}
	.align 2, 0
_02241F5C: .4byte 0x022533A0
_02241F60: .4byte 0x0224B0EC
	arm_func_end ov18_02241E8C

	arm_func_start ov18_02241F64
ov18_02241F64: @ 0x02241F64
	push {r3, lr}
	mov r3, r1
	mov ip, #0x1e
	mov r1, #3
	mov r2, #0x11
	str ip, [sp]
	bl FUN_020D07C4
	pop {r3, pc}
	arm_func_end ov18_02241F64

	arm_func_start ov18_02241F84
ov18_02241F84: @ 0x02241F84
	push {r3, lr}
	ldr r0, _02241FF4 @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #7
	beq _02241FA0
	bl FUN_020C42A8
_02241FA0:
	mov r0, #1
	bl ov18_02241484
	ldr r0, _02241FF4 @ =0x022533A0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x60]
	bl ov18_02241FFC
	ldr r1, _02241FF4 @ =0x022533A0
	ldr r2, [r1, #4]
	strh r0, [r2, #0x5c]
	ldr r3, [r1]
	cmp r3, #0
	beq _02241FE4
	ldr r0, [r1, #4]
	ldr r1, _02241FF8 @ =0x0224B104
	ldrh r2, [r0, #0x5c]
	mov r0, #0x8000000
	blx r3
_02241FE4:
	ldr r0, _02241FF4 @ =0x022533A0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x5c]
	pop {r3, pc}
	.align 2, 0
_02241FF4: .4byte 0x022533A0
_02241FF8: .4byte 0x0224B104
	arm_func_end ov18_02241F84

	arm_func_start ov18_02241FFC
ov18_02241FFC: @ 0x02241FFC
	push {r4, lr}
	mov r3, #0
	mov r1, r3
	mov ip, r3
	mov r4, #1
_02242010:
	tst r0, r4, lsl ip
	beq _02242030
	add r3, ip, #1
	add r2, r1, #1
	lsl r1, r3, #0x10
	lsl r2, r2, #0x10
	asr r3, r1, #0x10
	lsr r1, r2, #0x10
_02242030:
	add r2, ip, #1
	lsl r2, r2, #0x10
	asr ip, r2, #0x10
	cmp ip, #0x10
	blt _02242010
	cmp r1, #1
	movls r0, r3
	popls {r4, pc}
	ldr ip, _022420DC @ =0x022533A0
	ldr r3, _022420E0 @ =0x00010DCD
	ldr r4, [ip, #4]
	mov r2, #0
	ldr lr, [r4, #0x58]
	mul r3, lr, r3
	add r3, r3, #0x39
	add r3, r3, #0x3000
	str r3, [r4, #0x58]
	ldr r3, [ip, #4]
	ldr r3, [r3, #0x58]
	and r3, r3, #0xff
	mul r3, r1, r3
	lsl r1, r3, #8
	lsr r3, r1, #0x10
_0224208C:
	tst r0, #1
	beq _022420B8
	cmp r3, #0
	bne _022420AC
	add r0, r2, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
_022420AC:
	sub r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
_022420B8:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsl r0, r0, #0xf
	asr r2, r1, #0x10
	cmp r2, #0x10
	lsr r0, r0, #0x10
	blt _0224208C
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022420DC: .4byte 0x022533A0
_022420E0: .4byte 0x00010DCD
	arm_func_end ov18_02241FFC

	arm_func_start ov18_022420E4
ov18_022420E4: @ 0x022420E4
	push {r3, lr}
	ldr r2, _02242158 @ =0x022533A0
	mov r0, #0
	ldr r1, [r2, #4]
	mov r3, #1
	add r1, r1, #0x1000
	str r0, [r1, #0x2a4]
	ldr r1, [r2, #4]
	add r1, r1, #0x1000
	str r0, [r1, #0x2a0]
	ldr r1, [r2, #4]
	str r0, [r1, #0x48]
	ldr r1, [r2, #4]
	strh r0, [r1, #0x50]
	ldr r1, [r2, #4]
	strh r3, [r1, #0x52]
	ldr r1, [r2, #4]
	str r0, [r1, #0x54]
	ldr r1, [r2, #4]
	str r0, [r1]
	ldr r1, [r2, #4]
	strh r0, [r1, #4]
	ldr r1, [r2, #4]
	str r0, [r1, #0x4c]
	bl ov18_0224217C
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	pop {r3, pc}
	.align 2, 0
_02242158: .4byte 0x022533A0
	arm_func_end ov18_022420E4

	arm_func_start ov18_0224215C
ov18_0224215C: @ 0x0224215C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	popne {r3, pc}
	mov r0, #9
	bl ov18_02241484
	bl FUN_020C42A8
	pop {r3, pc}
	arm_func_end ov18_0224215C

	arm_func_start ov18_0224217C
ov18_0224217C: @ 0x0224217C
	push {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _022421C0 @ =0x022533A0
	ldr r1, _022421C4 @ =ov18_022421C8
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, r0, #0x80
	bl FUN_020CECC8
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	bl ov18_02241500
	mov r0, #0xa
	bl ov18_02241484
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022421C0: .4byte 0x022533A0
_022421C4: .4byte ov18_022421C8
	arm_func_end ov18_0224217C

	arm_func_start ov18_022421C8
ov18_022421C8: @ 0x022421C8
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _022421E8
	bl ov18_02241500
	mov r0, #0xa
	bl ov18_02241484
	pop {r3, pc}
_022421E8:
	ldr r0, _02242214 @ =ov18_0224215C
	bl FUN_020CE478
	cmp r0, #0
	beq _02242208
	bl ov18_02241500
	mov r0, #0xa
	bl ov18_02241484
	pop {r3, pc}
_02242208:
	mov r0, #1
	bl ov18_02241484
	pop {r3, pc}
	.align 2, 0
_02242214: .4byte ov18_0224215C
	arm_func_end ov18_022421C8

	arm_func_start ov18_02242218
ov18_02242218: @ 0x02242218
	push {r4, r5, r6, lr}
	ldr r3, _02242380 @ =0x022533A0
	mov r6, r0
	ldr r0, [r3, #4]
	mov r5, r1
	ldr r0, [r0, #0x40]
	mov r4, r2
	cmp r0, #1
	beq _02242244
	bl FUN_020C42A8
	movs r0, #0
_02242244:
	ldr r1, _02242380 @ =0x022533A0
	mov r3, #0x180
	ldr r0, [r1, #4]
	mov r2, #0xe0
	add r0, r0, #0x1000
	str r3, [r0, #0x2a4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2a0]
	ldr r3, [r1]
	cmp r3, #0
	beq _0224228C
	ldr r0, [r1, #4]
	ldr r1, _02242384 @ =0x0224B0BC
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a4]
	mov r0, #0x8000000
	blx r3
_0224228C:
	ldr r0, _02242380 @ =0x022533A0
	ldr r3, [r0]
	cmp r3, #0
	beq _022422B4
	ldr r0, [r0, #4]
	ldr r1, _02242388 @ =0x0224B0D4
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a0]
	mov r0, #0x8000000
	blx r3
_022422B4:
	ldr r1, _02242380 @ =0x022533A0
	mov r0, #3
	ldr r1, [r1, #4]
	str r6, [r1, #0x44]
	bl ov18_02241484
	ldr r0, _02242380 @ =0x022533A0
	ldr r1, [r0, #4]
	strh r5, [r1, #0xc]
	ldr r0, [r0, #4]
	strh r4, [r0, #0x32]
	bl FUN_020CE8A4
	ldr r1, _02242380 @ =0x022533A0
	mov r2, #0xd0
	ldr r3, [r1, #4]
	mov r4, #0x44
	strh r0, [r3, #0x18]
	ldr r0, [r1, #4]
	mov r3, #2
	strh r2, [r0, #0x34]
	ldr r0, [r1, #4]
	mov r2, #0
	strh r4, [r0, #0x36]
	ldr r0, [r1, #4]
	mov r4, #1
	strh r3, [r0, #0x10]
	ldr r0, [r1, #4]
	cmp r6, #2
	strh r2, [r0, #0x16]
	ldr r0, [r1, #4]
	strh r2, [r0, #0x12]
	ldr r0, [r1, #4]
	strh r4, [r0, #0xe]
	ldr r0, _02242380 @ =0x022533A0
	movne r4, r2
	ldr r1, [r0, #4]
	cmp r6, #0
	cmpne r6, #2
	strh r4, [r1, #0x14]
	cmpne r6, #4
	bne _0224235C
	bl ov18_02241520
	pop {r4, r5, r6, pc}
_0224235C:
	ldr r3, [r0]
	cmp r3, #0
	beq _02242378
	ldr r1, _0224238C @ =0x0224B11C
	mov r2, r6
	mov r0, #0x8000000
	blx r3
_02242378:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02242380: .4byte 0x022533A0
_02242384: .4byte 0x0224B0BC
_02242388: .4byte 0x0224B0D4
_0224238C: .4byte 0x0224B11C
	arm_func_end ov18_02242218

	arm_func_start ov18_02242390
ov18_02242390: @ 0x02242390
	ldr r1, _022423A0 @ =0x022533A0
	ldr r1, [r1, #4]
	str r0, [r1, #0x4c]
	bx lr
	.align 2, 0
_022423A0: .4byte 0x022533A0
	arm_func_end ov18_02242390

	arm_func_start ov18_022423A4
ov18_022423A4: @ 0x022423A4
	ldr r1, _022423C4 @ =0x022533A0
	ldr ip, _022423C8 @ =FUN_020D04C0
	ldr r1, [r1, #4]
	mov r2, r0
	add r0, r1, #0x3e0
	add r0, r0, #0x1000
	add r1, r1, #0x1c00
	bx ip
	.align 2, 0
_022423C4: .4byte 0x022533A0
_022423C8: .4byte FUN_020D04C0
	arm_func_end ov18_022423A4

	arm_func_start ov18_022423CC
ov18_022423CC: @ 0x022423CC
	push {r4, lr}
	ldr r2, _02242468 @ =0x022533A0
	mov r1, r0
	ldr r2, [r2, #4]
	add r0, r2, #0x3e0
	add r0, r0, #0x1000
	add r2, r2, #0x1c00
	bl FUN_020CFC60
	mov r4, r0
	cmp r4, #7
	bne _0224241C
	ldr r0, _02242468 @ =0x022533A0
	ldr r2, [r0]
	cmp r2, #0
	beq _02242414
	ldr r1, _0224246C @ =0x0224B138
	mov r0, #0x8000000
	blx r2
_02242414:
	mov r0, #0
	pop {r4, pc}
_0224241C:
	cmp r4, #5
	bne _02242450
	ldr r0, _02242468 @ =0x022533A0
	ldr r2, [r0]
	cmp r2, #0
	beq _02242440
	ldr r1, _02242470 @ =0x0224B168
	mov r0, #0x8000000
	blx r2
_02242440:
	mov r0, r4
	bl ov18_02241500
	mov r0, #0
	pop {r4, pc}
_02242450:
	cmp r4, #0
	moveq r0, #1
	popeq {r4, pc}
	bl ov18_02241500
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02242468: .4byte 0x022533A0
_0224246C: .4byte 0x0224B138
_02242470: .4byte 0x0224B168
	arm_func_end ov18_022423CC

	arm_func_start ov18_02242474
ov18_02242474: @ 0x02242474
	push {r3, lr}
	bl ov18_02241C50
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0xa
	bl ov18_02241484
	pop {r3, pc}
	arm_func_end ov18_02242474

	arm_func_start ov18_02242490
ov18_02242490: @ 0x02242490
	push {r3, lr}
	ldr r0, _0224258C @ =0x022533A0
	ldr r1, [r0, #4]
	ldr r2, [r1, #0x40]
	cmp r2, #1
	bne _022424C4
	ldr r2, [r0]
	cmp r2, #0
	popeq {r3, pc}
	ldr r1, _02242590 @ =0x0224B19C
	mov r0, #0x8000000
	blx r2
	pop {r3, pc}
_022424C4:
	ldr r3, [r0]
	cmp r3, #0
	beq _022424DC
	ldr r1, _02242594 @ =0x0224B1C0
	mov r0, #0x8000000
	blx r3
_022424DC:
	ldr r0, _0224258C @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	cmpne r0, #5
	cmpne r0, #4
	mov r0, #3
	beq _02242508
	bl ov18_02241484
	bl ov18_02242474
	pop {r3, pc}
_02242508:
	bl ov18_02241484
	ldr r0, _0224258C @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_02242524: @ jump table
	b _02242578 @ case 0
	b _02242550 @ case 1
	b _02242564 @ case 2
	b _0224253C @ case 3
	b _02242578 @ case 4
	b _02242550 @ case 5
_0224253C:
	bl ov18_02241B40
	cmp r0, #0
	popne {r3, pc}
	bl ov18_02242474
	pop {r3, pc}
_02242550:
	bl ov18_02241B90
	cmp r0, #0
	popne {r3, pc}
	bl ov18_02242474
	pop {r3, pc}
_02242564:
	bl ov18_02241A40
	cmp r0, #0
	popne {r3, pc}
	bl ov18_02242474
	pop {r3, pc}
_02242578:
	bl ov18_02241A70
	cmp r0, #0
	popne {r3, pc}
	bl ov18_02242474
	pop {r3, pc}
	.align 2, 0
_0224258C: .4byte 0x022533A0
_02242590: .4byte 0x0224B19C
_02242594: .4byte 0x0224B1C0
	arm_func_end ov18_02242490

	arm_func_start ov18_02242598
ov18_02242598: @ 0x02242598
	push {r3, lr}
	ldr r0, _022425E0 @ =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _022425B4
	bl FUN_020C42A8
_022425B4:
	mov r0, #3
	bl ov18_02241484
	ldr r0, _022425E4 @ =ov18_02241CB4
	bl FUN_020CED88
	cmp r0, #2
	moveq r0, #1
	popeq {r3, pc}
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022425E0: .4byte 0x022533A0
_022425E4: .4byte ov18_02241CB4
	arm_func_end ov18_02242598

	arm_func_start ov18_022425E8
ov18_022425E8: @ 0x022425E8
	push {r4, lr}
	ldr r2, _022426D4 @ =0x022533A8
	mov r4, r1
	str r0, [r2]
	add r0, r0, #0xb00
	bl ov18_022407B0
	ldr r1, _022426D4 @ =0x022533A8
	mov r3, #0
	ldr r0, [r1]
	mov r2, #1
	add r0, r0, #0x600
	strh r3, [r0, #0x48]
	ldr r0, [r1]
	add r0, r0, #0x600
	strh r3, [r0, #0x4a]
	ldr r0, [r1]
	strb r2, [r0, #0xa90]
	ldr r0, [r1]
	strb r2, [r0, #0xa91]
	ldr r0, [r1]
	str r3, [r0, #0xa9c]
	bl ov18_02243198
	ldr r0, _022426D4 @ =0x022533A8
	ldr r3, [r4]
	ldr r2, [r0]
	mov r1, #2
	str r3, [r2, #0xab4]
	ldr r3, [r4, #4]
	ldr r2, [r0]
	str r3, [r2, #0xab8]
	ldr r3, [r4, #8]
	ldr r2, [r0]
	str r3, [r2, #0xabc]
	ldr r3, [r4, #0xc]
	ldr r2, [r0]
	str r3, [r2, #0xac0]
	ldr r3, [r4, #0x10]
	ldr r2, [r0]
	str r3, [r2, #0xac4]
	ldr r3, [r4, #0x14]
	ldr r2, [r0]
	str r3, [r2, #0xac8]
	ldrb r3, [r4, #0x18]
	ldr r2, [r0]
	strb r3, [r2, #0xa92]
	ldr r0, [r0]
	strb r1, [r0, #0xacc]
	bl FUN_020C3880
	ldr r0, _022426D4 @ =0x022533A8
	ldr r0, [r0]
	add r0, r0, #0x24c
	add r0, r0, #0x400
	bl FUN_020A2A34
	bl FUN_020C3880
	bl ov18_0223E5D0
	ldr r1, _022426D4 @ =0x022533A8
	ldr r1, [r1]
	str r0, [r1, #0xaa4]
	pop {r4, pc}
	.align 2, 0
_022426D4: .4byte 0x022533A8
	arm_func_end ov18_022425E8

	arm_func_start ov18_022426D8
ov18_022426D8: @ 0x022426D8
	push {r3, lr}
	ldr r0, _022427B0 @ =0x022533A8
	ldr r2, [r0]
	ldrb r1, [r2, #0xa90]
	cmp r1, #1
	cmpne r1, #0x14
	cmpne r1, #0x17
	cmpne r1, #0x1a
	cmpne r1, #0x1d
	bne _02242720
	mov r1, #0x22
	strb r1, [r2, #0xa90]
	ldr r0, _022427B0 @ =0x022533A8
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0xaac]
	mov r0, #1
	pop {r3, pc}
_02242720:
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	cmpne r1, #0xd
	bne _02242774
	cmp r1, #4
	bne _0224274C
	ldr r0, [r2, #0xa98]
	cmp r0, #6
	movlo r0, #0
	poplo {r3, pc}
_0224274C:
	bl ov18_02223B2C
	ldr r0, _022427B0 @ =0x022533A8
	mov r3, #0x10
	ldr r1, [r0]
	mov r2, #2
	strb r3, [r1, #0xa90]
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xaac]
	pop {r3, pc}
_02242774:
	add r0, r1, #0xf7
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02242794
	mov r0, #0x20
	strb r0, [r2, #0xa90]
	mov r0, #1
	pop {r3, pc}
_02242794:
	cmp r1, #0xc
	movne r0, #0
	popne {r3, pc}
	mov r0, #0x22
	strb r0, [r2, #0xa90]
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022427B0: .4byte 0x022533A8
	arm_func_end ov18_022426D8

	arm_func_start ov18_022427B4
ov18_022427B4: @ 0x022427B4
	push {r3, lr}
	ldr r0, _02242830 @ =0x022533A8
	ldr r0, [r0]
	ldr r0, [r0, #0xac8]
	bl ov18_02241CDC
	ldr r0, _02242830 @ =0x022533A8
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	bl FUN_020CEB20
	ldr r3, _02242830 @ =0x022533A8
	mov r2, #0x40
	ldr r1, [r3]
	add r1, r1, #0x600
	strh r0, [r1, #0x48]
	ldr r1, [r3]
	ldr r0, [r1, #0xaa4]
	add r1, r1, #0xa50
	bl FUN_020C4DB0
	ldr r0, _02242830 @ =0x022533A8
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0xa93]
	ldr r1, [r0]
	str r2, [r1, #0x204]
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r1, [r0, #0x48]
	add r1, r1, #1
	strh r1, [r0, #0x48]
	pop {r3, pc}
	.align 2, 0
_02242830: .4byte 0x022533A8
	arm_func_end ov18_022427B4

	arm_func_start ov18_02242834
ov18_02242834: @ 0x02242834
	push {r3, lr}
	ldr r0, _02242878 @ =0x022533A8
	ldr r0, [r0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #1
	cmpne r0, #0x1a
	cmpne r0, #0x1d
	movne r0, #0
	popne {r3, pc}
	bl ov18_022427B4
	bl ov18_022420E4
	ldr r0, _02242878 @ =0x022533A8
	mov r2, #2
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xa90]
	pop {r3, pc}
	.align 2, 0
_02242878: .4byte 0x022533A8
	arm_func_end ov18_02242834

	arm_func_start ov18_0224287C
ov18_0224287C: @ 0x0224287C
	push {r3, lr}
	ldr r0, _022428AC @ =0x022533A8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #5
	movne r0, #0
	popne {r3, pc}
	mov r0, #6
	strb r0, [r1, #0xa90]
	bl ov18_02240C7C
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022428AC: .4byte 0x022533A8
	arm_func_end ov18_0224287C

	arm_func_start ov18_022428B0
ov18_022428B0: @ 0x022428B0
	push {r3, lr}
	ldr r1, _02242C2C @ =0x022533A8
	ldr r0, [r1]
	ldrb r2, [r0, #0xa90]
	cmp r2, #0x22
	addls pc, pc, r2, lsl #2
	pop {r3, pc}
_022428CC: @ jump table
	pop {r3, pc} @ case 0
	b _02242958 @ case 1
	b _02242994 @ case 2
	b _0224299C @ case 3
	b _022429B4 @ case 4
	b _022429C8 @ case 5
	b _022429C8 @ case 6
	b _022429D0 @ case 7
	b _022429D8 @ case 8
	b _022429D8 @ case 9
	b _022429D8 @ case 10
	b _022429E0 @ case 11
	pop {r3, pc} @ case 12
	pop {r3, pc} @ case 13
	pop {r3, pc} @ case 14
	pop {r3, pc} @ case 15
	b _022429E8 @ case 16
	b _02242A00 @ case 17
	b _02242A1C @ case 18
	b _02242A40 @ case 19
	pop {r3, pc} @ case 20
	b _02242A78 @ case 21
	b _02242A9C @ case 22
	pop {r3, pc} @ case 23
	b _02242AD4 @ case 24
	b _02242AF8 @ case 25
	pop {r3, pc} @ case 26
	b _02242B30 @ case 27
	b _02242B54 @ case 28
	pop {r3, pc} @ case 29
	b _02242C24 @ case 30
	pop {r3, pc} @ case 31
	b _02242BC8 @ case 32
	b _02242BEC @ case 33
	pop {r3, pc} @ case 34
_02242958:
	ldrb r2, [r0, #0xaac]
	cmp r2, #1
	bne _02242974
	mov r1, #0
	strb r1, [r0, #0xaac]
	bl ov18_02242834
	pop {r3, pc}
_02242974:
	cmp r2, #2
	popne {r3, pc}
	mov r2, #0
	strb r2, [r0, #0xaac]
	ldr r0, [r1]
	mov r1, #0x22
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242994:
	bl ov18_02242C88
	pop {r3, pc}
_0224299C:
	bl ov18_02242D30
	ldr r0, _02242C2C @ =0x022533A8
	mov r1, #4
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_022429B4:
	ldr r1, [r0, #0xa98]
	add r1, r1, #1
	str r1, [r0, #0xa98]
	bl ov18_02242D54
	pop {r3, pc}
_022429C8:
	bl ov18_02242D54
	pop {r3, pc}
_022429D0:
	bl ov18_02242F0C
	pop {r3, pc}
_022429D8:
	bl ov18_02242F38
	pop {r3, pc}
_022429E0:
	bl ov18_02243114
	pop {r3, pc}
_022429E8:
	mov r2, #0
	str r2, [r0, #0xa9c]
	ldr r0, [r1]
	mov r1, #0x11
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242A00:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	popls {r3, pc}
	bl ov18_0224312C
	pop {r3, pc}
_02242A1C:
	bl ov18_02223B2C
	ldr r0, _02242C2C @ =0x022533A8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x16
	str r3, [r2, #0xa9c]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242A40:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	popls {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	popne {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C @ =0x022533A8
	mov r1, #0x14
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242A78:
	bl ov18_02242490
	ldr r0, _02242C2C @ =0x022533A8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x16
	str r3, [r2, #0xa9c]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242A9C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	popls {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	popne {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C @ =0x022533A8
	mov r1, #0x17
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242AD4:
	bl ov18_02242490
	ldr r0, _02242C2C @ =0x022533A8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x19
	str r3, [r2, #0xa9c]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242AF8:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	popls {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	popne {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C @ =0x022533A8
	mov r1, #0x1a
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242B30:
	bl ov18_02242490
	ldr r0, _02242C2C @ =0x022533A8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x1c
	str r3, [r2, #0xa9c]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242B54:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	popls {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	bne _02242B8C
	bl ov18_02242598
	ldr r0, _02242C2C @ =0x022533A8
	mov r1, #0x1d
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242B8C:
	ldr r1, _02242C2C @ =0x022533A8
	ldr r0, _02242C30 @ =0x88888889
	ldr r1, [r1]
	mov r2, #0x1e
	ldr r3, [r1, #0xa9c]
	umull r0, r1, r3, r0
	lsr r1, r1, #4
	umull r0, r1, r2, r1
	sub r1, r3, r0
	cmp r1, #1
	popne {r3, pc}
	cmp r3, #0x37
	popls {r3, pc}
	bl ov18_02242490
	pop {r3, pc}
_02242BC8:
	bl ov18_02242490
	ldr r0, _02242C2C @ =0x022533A8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x21
	str r3, [r2, #0xa9c]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242BEC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	popls {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	popne {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C @ =0x022533A8
	mov r1, #0x22
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242C24:
	bl ov18_02242490
	pop {r3, pc}
	.align 2, 0
_02242C2C: .4byte 0x022533A8
_02242C30: .4byte 0x88888889
	arm_func_end ov18_022428B0

	arm_func_start ov18_02242C34
ov18_02242C34: @ 0x02242C34
	ldr r2, _02242C74 @ =0x022533A8
	ldr r3, [r2]
	ldrb r3, [r3, #0xa90]
	strb r3, [r0]
	ldr r0, [r2]
	ldrb r2, [r0, #0xa90]
	ldrb r0, [r0, #0xa91]
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	strb r0, [r1]
	ldr r0, _02242C74 @ =0x022533A8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	strb r0, [r1, #0xa91]
	bx lr
	.align 2, 0
_02242C74: .4byte 0x022533A8
	arm_func_end ov18_02242C34

	arm_func_start ov18_02242C78
ov18_02242C78: @ 0x02242C78
	ldr ip, _02242C84 @ =ov18_0221F874
	mov r0, #1
	bx ip
	.align 2, 0
_02242C84: .4byte ov18_0221F874
	arm_func_end ov18_02242C78

	arm_func_start ov18_02242C88
ov18_02242C88: @ 0x02242C88
	push {r3, lr}
	bl ov18_02241D04
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02242D24
_02242C9C: @ jump table
	b _02242CFC @ case 0
	b _02242CC4 @ case 1
	b _02242D24 @ case 2
	pop {r3, pc} @ case 3
	b _02242D24 @ case 4
	b _02242D24 @ case 5
	b _02242D24 @ case 6
	b _02242CCC @ case 7
	b _02242D24 @ case 8
	b _02242D1C @ case 9
_02242CC4:
	bl ov18_02241D18
	pop {r3, pc}
_02242CCC:
	bl ov18_02241F84
	ldr r2, _02242D2C @ =0x022533A8
	mov ip, #0
	ldr r1, [r2]
	mov r3, #3
	add r1, r1, #0x600
	strh r0, [r1, #0x4a]
	ldr r0, [r2]
	str ip, [r0, #0xa98]
	ldr r0, [r2]
	strb r3, [r0, #0xa90]
	pop {r3, pc}
_02242CFC:
	ldr r0, _02242D2C @ =0x022533A8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	str r3, [r2, #0xa98]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242D1C:
	bl ov18_02242474
	pop {r3, pc}
_02242D24:
	bl FUN_020C42A8
	pop {r3, pc}
	.align 2, 0
_02242D2C: .4byte 0x022533A8
	arm_func_end ov18_02242C88

	arm_func_start ov18_02242D30
ov18_02242D30: @ 0x02242D30
	ldr r0, _02242D4C @ =0x022533A8
	ldr ip, _02242D50 @ =ov18_022407F0
	ldr r2, [r0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x48]
	ldr r0, [r2, #0xac8]
	bx ip
	.align 2, 0
_02242D4C: .4byte 0x022533A8
_02242D50: .4byte ov18_022407F0
	arm_func_end ov18_02242D30

	arm_func_start ov18_02242D54
ov18_02242D54: @ 0x02242D54
	push {r3, lr}
	bl ov18_02241238
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_02242D68: @ jump table
	b _02242EB8 @ case 0
	b _02242D88 @ case 1
	b _02242DA8 @ case 2
	b _02242E38 @ case 3
	pop {r3, pc} @ case 4
	b _02242E8C @ case 5
	pop {r3, pc} @ case 6
	b _02242EA0 @ case 7
_02242D88:
	ldr r0, _02242F08 @ =0x022533A8
	ldr r2, [r0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x4a]
	add r0, r2, #0x2b4
	add r0, r0, #0x800
	bl ov18_02240910
	pop {r3, pc}
_02242DA8:
	mov r0, #2
	bl ov18_0224124C
	cmp r0, #0
	beq _02242DCC
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #5
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242DCC:
	mov r0, #3
	bl ov18_0224124C
	cmp r0, #0
	bne _02242DEC
	mov r0, #4
	bl ov18_0224124C
	cmp r0, #0
	beq _02242E00
_02242DEC:
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #6
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242E00:
	ldr r0, _02242F08 @ =0x022533A8
	ldr r0, [r0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #5
	popne {r3, pc}
	mov r0, #2
	bl ov18_0224124C
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #0xd
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242E38:
	bl ov18_02240D5C
	cmp r0, #0
	beq _02242E4C
	bl ov18_02240DC4
	pop {r3, pc}
_02242E4C:
	ldr r0, _02242F08 @ =0x022533A8
	ldr r0, [r0]
	ldrb r0, [r0, #0xa90]
	add r0, r0, #0xfa
	and r0, r0, #0xff
	cmp r0, #1
	pophi {r3, pc}
	mov r0, #3
	bl ov18_0224124C
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #0x12
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242E8C:
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #7
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242EA0:
	bl ov18_02240EBC
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242EB8:
	bl ov18_02241D04
	cmp r0, #0
	beq _02242EE0
	cmp r0, #1
	beq _02242ED8
	cmp r0, #3
	popeq {r3, pc}
	b _02242EF4
_02242ED8:
	bl ov18_02242598
	pop {r3, pc}
_02242EE0:
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #0x1f
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_02242EF4:
	ldr r0, _02242F08 @ =0x022533A8
	mov r1, #0x1f
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
	.align 2, 0
_02242F08: .4byte 0x022533A8
	arm_func_end ov18_02242D54

	arm_func_start ov18_02242F0C
ov18_02242F0C: @ 0x02242F0C
	push {r3, lr}
	bl ov18_02243198
	ldr r0, _02242F30 @ =ov18_0224315C
	bl ov18_02242390
	ldr r0, _02242F34 @ =0x022533A8
	mov r1, #8
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
	.align 2, 0
_02242F30: .4byte ov18_0224315C
_02242F34: .4byte 0x022533A8
	arm_func_end ov18_02242F0C

	arm_func_start ov18_02242F38
ov18_02242F38: @ 0x02242F38
	push {r3, lr}
	bl ov18_02241D04
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_02242F4C: @ jump table
	pop {r3, pc} @ case 0
	b _02242F68 @ case 1
	pop {r3, pc} @ case 2
	pop {r3, pc} @ case 3
	b _02242F94 @ case 4
	b _02242F94 @ case 5
	b _02242F94 @ case 6
_02242F68:
	ldr r1, _02243110 @ =0x022533A8
	mov r0, #4
	ldr r1, [r1]
	add r1, r1, #0x600
	ldrh r3, [r1, #0x48]
	ldrh r2, [r1, #0x4a]
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov18_02242218
	pop {r3, pc}
_02242F94:
	ldr r1, _02243110 @ =0x022533A8
	mov r0, #0
	ldr r2, [r1]
	add r1, r2, #0x200
	ldrh r1, [r1]
	ldr ip, [r2, #0xaa4]
	lsr r3, r1, #0x1f
	rsb r2, r3, r1, lsl #28
	add r2, r3, r2, ror #28
	add r2, ip, r2, lsl #6
	bl ov18_022431DC
	bl ov18_02243344
	ldr r0, _02243110 @ =0x022533A8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #0x1b
	popeq {r3, pc}
	ldr r0, [r1, #0x204]
	cmp r0, #0x1e0
	movhi r0, #0x1b
	strbhi r0, [r1, #0xa90]
	pophi {r3, pc}
	bl ov18_02243428
	cmp r0, #0x10
	beq _02243004
	bl ov18_02243428
	cmp r0, #0x20
	bne _0224301C
_02243004:
	bl ov18_02243428
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0xa
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_0224301C:
	bl ov18_02243428
	cmp r0, #0x40
	bne _0224303C
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0xb
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_0224303C:
	bl ov18_02243428
	cmp r0, #0xff
	bne _0224305C
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0x1b
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_0224305C:
	bl ov18_02243428
	cmp r0, #0x50
	bne _0224307C
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0x15
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_0224307C:
	bl ov18_02243428
	cmp r0, #0x60
	bne _0224309C
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0x18
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_0224309C:
	bl ov18_02243428
	cmp r0, #0x70
	bne _022430BC
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0x1b
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_022430BC:
	bl ov18_02243428
	cmp r0, #0
	bne _022430DC
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #8
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_022430DC:
	bl ov18_02243428
	cmp r0, #0xbd
	bne _022430FC
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #9
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
_022430FC:
	ldr r0, _02243110 @ =0x022533A8
	mov r1, #0x1f
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, pc}
	.align 2, 0
_02243110: .4byte 0x022533A8
	arm_func_end ov18_02242F38

	arm_func_start ov18_02243114
ov18_02243114: @ 0x02243114
	ldr r0, _02243128 @ =0x022533A8
	mov r1, #0xc
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	bx lr
	.align 2, 0
_02243128: .4byte 0x022533A8
	arm_func_end ov18_02243114

	arm_func_start ov18_0224312C
ov18_0224312C: @ 0x0224312C
	push {r3, lr}
	bl ov18_02241D04
	cmp r0, #1
	movne r0, #0
	popne {r3, pc}
	bl ov18_02242598
	ldr r1, _02243158 @ =0x022533A8
	mov r0, #1
	ldr r1, [r1]
	strb r0, [r1, #0xa90]
	pop {r3, pc}
	.align 2, 0
_02243158: .4byte 0x022533A8
	arm_func_end ov18_0224312C

	arm_func_start ov18_0224315C
ov18_0224315C: @ 0x0224315C
	push {r4, lr}
	add r0, r0, #0xa
	bl ov18_022413A0
	movs r4, r0
	moveq r0, #0
	popeq {r4, pc}
	bl ov18_0224136C
	ldr r1, _02243194 @ =0x022533A8
	sub r2, r4, #1
	ldr r1, [r1]
	add r1, r1, r2, lsl #2
	str r0, [r1, #0xaa0]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_02243194: .4byte 0x022533A8
	arm_func_end ov18_0224315C

	arm_func_start ov18_02243198
ov18_02243198: @ 0x02243198
	push {r3, lr}
	ldr r0, _022431D8 @ =0x022533A8
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x100
	add r0, r0, #0x100
	bl FUN_020C4CF4
	ldr r0, _022431D8 @ =0x022533A8
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x100
	bl FUN_020C4CF4
	ldr r0, _022431D8 @ =0x022533A8
	ldr r0, [r0]
	str r0, [r0, #0xab0]
	pop {r3, pc}
	.align 2, 0
_022431D8: .4byte 0x022533A8
	arm_func_end ov18_02243198

	arm_func_start ov18_022431DC
ov18_022431DC: @ 0x022431DC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r3, _02243340 @ =0x022533A8
	ldr r5, [r3]
	ldrb r4, [r5, #0xa93]
	cmp r4, #1
	bne _02243224
	ldr r4, [r5, #0xab0]
	strh r0, [r4]
	ldr r4, [r3]
	mov r0, r2
	ldr r4, [r4, #0xab0]
	mov r2, #0x40
	strh r1, [r4, #2]
	ldr r1, [r3]
	ldr r1, [r1, #0xab0]
	add r1, r1, #4
	bl FUN_020C4DB0
	b _02243250
_02243224:
	ldr r0, [r5, #0x204]
	mov r1, #0xbc
	add r0, r0, #1
	str r0, [r5, #0x204]
	ldr r0, [r3]
	ldr r0, [r0, #0xab0]
	strh r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, #0xa92]
	ldr r0, [r0, #0xab0]
	strb r1, [r0, #4]
_02243250:
	bl ov18_02241D04
	cmp r0, #5
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _02243340 @ =0x022533A8
	ldr r0, [r0]
	bl ov18_022423CC
	cmp r0, #0
	bne _02243288
	ldr r0, _02243340 @ =0x022533A8
	ldr r1, [r0]
	ldr r0, [r1, #0x204]
	add r0, r0, #4
	str r0, [r1, #0x204]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_02243288:
	ldr r0, _02243340 @ =0x022533A8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa93]
	cmp r0, #0
	bne _022432AC
	ldr r0, [r1, #0x204]
	add r0, r0, #1
	str r0, [r1, #0x204]
	b _022432D4
_022432AC:
	mov r0, #0
	str r0, [r1, #0x204]
	bl ov18_02241CF0
	cmp r0, #3
	beq _022432D4
	ldr r0, _02243340 @ =0x022533A8
	mov r1, #0x1b
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022432D4:
	mov r7, #0
	mov r6, #0x44
	ldr sb, _02243340 @ =0x022533A8
	mov r4, r7
	mov r5, #1
	mov r8, r6
_022432EC:
	mov r0, r7
	bl ov18_022423A4
	cmp r0, #0
	ldreq r0, [sb]
	addeq r0, r0, r7, lsl #2
	streq r4, [r0, #0x208]
	beq _02243328
	ldr r1, [sb]
	mov r2, r6
	add r1, r1, #0x100
	mla r1, r7, r8, r1
	bl FUN_020C4DB0
	ldr r0, [sb]
	add r0, r0, r7, lsl #2
	str r5, [r0, #0x208]
_02243328:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #2
	blo _022432EC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02243340: .4byte 0x022533A8
	arm_func_end ov18_022431DC

	arm_func_start ov18_02243344
ov18_02243344: @ 0x02243344
	push {r4, r5, r6, r7, r8, lr}
	mov ip, #0
	ldr r4, _02243424 @ =0x022533A8
	mov r0, #1
	mov r5, ip
	mov r1, #0xbc
	mov r2, ip
	mov lr, #0x44
_02243364:
	ldr r3, [r4]
	add r6, r3, ip, lsl #2
	ldr r6, [r6, #0x208]
	cmp r6, #0
	beq _02243414
	mul r7, ip, lr
	cmp ip, #1
	add r8, r3, #0x100
	bne _02243414
	ldrb r6, [r3, #0xa93]
	cmp r6, #1
	bne _022433E4
	ldrh r6, [r8, r7]
	cmp r6, #0x10
	popne {r4, r5, r6, r7, r8, pc}
	ldr r6, [r3, #0xa94]
	add r6, r6, #1
	str r6, [r3, #0xa94]
	ldr r6, [r4]
	ldr r3, [r6, #0xa94]
	tst r3, #1
	bne _02243414
	add r3, r6, #0x200
	ldrh r6, [r3]
	add r6, r6, #1
	strh r6, [r3]
	ldr r3, [r4]
	add r3, r3, #0x200
	ldrh r6, [r3]
	cmp r6, #0x24
	strhhs r2, [r3]
	b _02243414
_022433E4:
	add r3, r3, #0x200
	strh r1, [r3, #2]
	ldrh r3, [r8, r7]
	cmp r3, #0xbd
	bne _02243414
	ldr r3, [r4]
	strb r0, [r3, #0xa93]
	ldr r3, [r4]
	add r3, r3, #0x200
	strh r5, [r3]
	ldr r3, [r4]
	str r5, [r3, #0xa94]
_02243414:
	add ip, ip, #1
	cmp ip, #0x10
	blt _02243364
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02243424: .4byte 0x022533A8
	arm_func_end ov18_02243344

	arm_func_start ov18_02243428
ov18_02243428: @ 0x02243428
	ldr r0, _0224343C @ =0x022533A8
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrh r0, [r0, #0x44]
	bx lr
	.align 2, 0
_0224343C: .4byte 0x022533A8
	arm_func_end ov18_02243428

	arm_func_start ov18_02243440
ov18_02243440: @ 0x02243440
	push {r4, lr}
	sub sp, sp, #0xe8
	mov r0, #0xe8
	mov r1, #4
	bl ov18_02245068
	ldr r1, _022435D0 @ =0x022533AC
	str r0, [r1]
	add r0, sp, #0xa0
	bl FUN_020C7DA0
	ldr r1, _022435D4 @ =0x0224B1E4
	add r0, sp, #0xa0
	bl FUN_020C8080
	cmp r0, #0
	bne _0224347C
	bl FUN_020C42A8
_0224347C:
	bl FUN_020C1A00
	ldr r2, _022435D0 @ =0x022533AC
	add r1, sp, #0x18
	ldr r3, [r2]
	mov r2, #8
	strh r0, [r3, #0xe4]
	add r0, sp, #0xa0
	ldr r4, [sp, #0xc4]
	bl FUN_020C81D4
	add r0, sp, #0xa0
	add r1, sp, #0x10
	mov r2, #8
	bl FUN_020C81D4
	add r0, sp, #0xa0
	bl FUN_020C80C8
	ldr r0, _022435D0 @ =0x022533AC
	ldr r0, [r0]
	add r0, r0, #0x88
	bl FUN_020C7734
	ldr r0, _022435D0 @ =0x022533AC
	ldr r1, _022435D8 @ =0x02249718
	ldr r0, [r0]
	mov r2, #3
	add r0, r0, #0x88
	bl FUN_020C77A0
	cmp r0, #0
	bne _022434EC
	bl FUN_020C42A8
_022434EC:
	ldr r0, _022435D0 @ =0x022533AC
	ldr r1, _022435DC @ =ov18_0224367C
	ldr r0, [r0]
	ldr r2, _022435E0 @ =0x00000602
	add r0, r0, #0x88
	bl FUN_020C7CC4
	ldr r0, [sp, #0x18]
	ldr r1, _022435E4 @ =ov18_022436E0
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, _022435E8 @ =ov18_02243730
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _022435D0 @ =0x022533AC
	ldr r2, [sp, #0x10]
	ldr r0, [r0]
	ldr r3, [sp, #0x14]
	mov r1, r4
	add r0, r0, #0x88
	bl FUN_020C78D8
	cmp r0, #0
	bne _0224354C
	bl FUN_020C42A8
_0224354C:
	ldr r0, _022435D0 @ =0x022533AC
	mov r1, #0
	ldr r0, [r0]
	mov r2, r1
	add r0, r0, #0x88
	bl FUN_020C7A08
	mov r1, #4
	mov r4, r0
	bl ov18_02245068
	ldr r1, _022435D0 @ =0x022533AC
	mov r2, r4
	ldr r3, [r1]
	str r0, [r3]
	ldr r0, [r1]
	ldr r1, [r0], #0x88
	bl FUN_020C7A08
	ldr r1, _022435D0 @ =0x022533AC
	mov r0, #0x20
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #4
	bl ov18_02244008
	ldr r2, _022435D0 @ =0x022533AC
	ldr r1, _022435EC @ =0x0224B1FC
	ldr r3, [r2]
	ldr r2, _022435D8 @ =0x02249718
	str r0, [r3, #0x84]
	add r0, sp, #0x20
	bl FUN_020C1AB0
	add r0, sp, #0x20
	bl FUN_020C8250
	add sp, sp, #0xe8
	pop {r4, pc}
	.align 2, 0
_022435D0: .4byte 0x022533AC
_022435D4: .4byte 0x0224B1E4
_022435D8: .4byte 0x02249718
_022435DC: .4byte ov18_0224367C
_022435E0: .4byte 0x00000602
_022435E4: .4byte ov18_022436E0
_022435E8: .4byte ov18_02243730
_022435EC: .4byte 0x0224B1FC
	arm_func_end ov18_02243440

	arm_func_start ov18_022435F0
ov18_022435F0: @ 0x022435F0
	push {r3, lr}
	ldr r0, _02243670 @ =0x0224B204
	bl FUN_020C8250
	ldr r0, _02243674 @ =0x022533AC
	ldr r0, [r0]
	add r0, r0, #0x88
	bl FUN_020C7B2C
	ldr r0, _02243674 @ =0x022533AC
	ldr r0, [r0]
	add r0, r0, #0x88
	bl FUN_020C7948
	ldr r0, _02243674 @ =0x022533AC
	ldr r0, [r0]
	add r0, r0, #0x88
	bl FUN_020C7854
	ldr r0, _02243674 @ =0x022533AC
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl FUN_020C1A68
	ldr r0, _02243674 @ =0x022533AC
	mov r2, #0
	ldr r1, [r0]
	strh r2, [r1, #0xe4]
	ldr r0, [r0]
	bl ov18_0224508C
	ldr r1, _02243674 @ =0x022533AC
	ldr r0, _02243678 @ =0x022533AC
	ldr r1, [r1]
	mov r2, #0
	str r2, [r1]
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_02243670: .4byte 0x0224B204
_02243674: .4byte 0x022533AC
_02243678: .4byte 0x022533AC
	arm_func_end ov18_022435F0

	arm_func_start ov18_0224367C
ov18_0224367C: @ 0x0224367C
	push {r3, lr}
	cmp r1, #1
	beq _022436CC
	cmp r1, #9
	beq _0224369C
	cmp r1, #0xa
	beq _022436B4
	b _022436D4
_0224369C:
	ldr r0, _022436DC @ =0x022533AC
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl FUN_020CC854
	mov r0, #0
	pop {r3, pc}
_022436B4:
	ldr r0, _022436DC @ =0x022533AC
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl FUN_020CC870
	mov r0, #0
	pop {r3, pc}
_022436CC:
	mov r0, #4
	pop {r3, pc}
_022436D4:
	mov r0, #8
	pop {r3, pc}
	.align 2, 0
_022436DC: .4byte 0x022533AC
	arm_func_end ov18_0224367C

	arm_func_start ov18_022436E0
ov18_022436E0: @ 0x022436E0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _0224371C @ =ov18_02243720
	mov lr, r1
	str ip, [sp]
	mov ip, #1
	stmib sp, {r0, ip}
	ldr r0, [r0, #0x28]
	add r1, r2, r0
	mov r2, lr
	sub r0, ip, #2
	bl FUN_020CD600
	mov r0, #6
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_0224371C: .4byte ov18_02243720
	arm_func_end ov18_022436E0

	arm_func_start ov18_02243720
ov18_02243720: @ 0x02243720
	ldr ip, _0224372C @ =FUN_020C7CE4
	mov r1, #0
	bx ip
	.align 2, 0
_0224372C: .4byte FUN_020C7CE4
	arm_func_end ov18_02243720

	arm_func_start ov18_02243730
ov18_02243730: @ 0x02243730
	mov r0, #1
	bx lr
	arm_func_end ov18_02243730

	arm_func_start ov18_02243738
ov18_02243738: @ 0x02243738
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r3, _02243824 @ =0x022533AC
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	ldr r0, [r0, #0x84]
	mov r4, r2
	bl ov18_022440BC
	add r0, sp, #4
	bl FUN_020C7DA0
	add r0, sp, #4
	mov r1, r6
	bl FUN_020C8080
	cmp r0, #0
	bne _0224377C
	bl FUN_020C42A8
_0224377C:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r2, #2
	sub r7, r1, r0
	cmp r5, #0
	ldr r1, _02243828 @ =0x0224B20C
	mov r0, r6
	strne r7, [r5]
	bl ov18_02243860
	cmp r0, #0
	mvnne r6, #3
	moveq r6, r4
	mov r0, r7
	mov r1, r6
	bl ov18_02245068
	mov r1, r0
	add r0, sp, #4
	mov r2, r7
	str r1, [sp]
	bl FUN_020C81D4
	add r0, sp, #4
	bl FUN_020C80C8
	cmp r6, #0
	ldrgt r0, [sp]
	addgt sp, sp, #0x4c
	popgt {r4, r5, r6, r7, pc}
	ldr r0, [sp]
	cmp r5, #0
	ldr r0, [r0]
	mov r1, r4
	lsr r0, r0, #8
	strne r0, [r5]
	bl ov18_02245068
	mov r4, r0
	ldr r0, [sp]
	mov r1, r4
	bl FUN_020C4F48
	add r0, sp, #0
	bl ov18_0224508C
	mov r0, r4
	add sp, sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02243824: .4byte 0x022533AC
_02243828: .4byte 0x0224B20C
	arm_func_end ov18_02243738

	arm_func_start ov18_0224382C
ov18_0224382C: @ 0x0224382C
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	bl ov18_0224508C
	ldr r0, _0224385C @ =0x022533AC
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0, #0x84]
	bl ov18_02244064
	pop {r3, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0224385C: .4byte 0x022533AC
	arm_func_end ov18_0224382C

	arm_func_start ov18_02243860
ov18_02243860: @ 0x02243860
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	bl FUN_020D8B60
	mov r4, r0
	mov r0, r6
	bl FUN_020D8B60
	cmp r4, r5
	cmpge r0, r5
	movlt r0, #0
	poplt {r3, r4, r5, r6, r7, pc}
	sub r1, r0, r5
	sub r3, r4, r5
	mov r2, r5
	add r0, r7, r3
	add r1, r6, r1
	bl FUN_020D5190
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02243860

	arm_func_start ov18_022438B8
ov18_022438B8: @ 0x022438B8
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r0, #0x450
	mov r1, #4
	bl ov18_02245068
	ldr sl, _02243988 @ =0x022533B0
	mov r8, #0
	mov sb, r8
	str r0, [sl]
	mov r7, #0x20
	mov r6, #0x10
	mov r5, #0x40
	mov r4, #0x7f
_022438E8:
	ldr r1, [sl]
	mov r0, r7
	mov r2, r6
	add r1, r1, sb
	bl ov18_02244008
	ldr r1, [sl]
	add r1, r1, sb
	str r0, [r1, #0x224]
	bl ov18_02245974
	ldr r2, [sl]
	mov r1, r5
	add r2, r2, sb
	str r0, [r2, #0x220]
	mov r0, r8
	bl ov18_02245BC0
	ldr r2, [sl]
	mov r1, r4
	add r2, r2, sb
	str r0, [r2, #0x208]
	mov r0, r8
	bl ov18_02245BC0
	add r1, r0, #8
	ldr r0, [sl]
	add r0, r0, sb
	str r1, [r0, #0x218]
	ldr r0, [sl]
	add r1, r0, sb
	ldr r0, [r1, #0x220]
	add r1, r1, #0x200
	bl ov18_02245A34
	ldr r0, [sl]
	add r1, r0, sb
	ldr r0, [r1, #0x220]
	add r1, r1, #0x210
	bl ov18_02245A24
	add sb, sb, #0x228
	add r8, r8, #1
	cmp r8, #2
	blt _022438E8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02243988: .4byte 0x022533B0
	arm_func_end ov18_022438B8

	arm_func_start ov18_0224398C
ov18_0224398C: @ 0x0224398C
	push {r4, r5, r6, lr}
	mov r5, #0
	ldr r4, _022439D8 @ =0x022533B0
	mov r6, r5
_0224399C:
	ldr r0, [r4]
	add r0, r0, r6
	ldr r0, [r0, #0x220]
	bl ov18_022459A0
	ldr r0, [r4]
	add r0, r0, r6
	ldr r0, [r0, #0x224]
	bl ov18_02244048
	add r5, r5, #1
	cmp r5, #2
	add r6, r6, #0x228
	blt _0224399C
	ldr r0, _022439DC @ =0x022533B0
	bl ov18_0224508C
	pop {r4, r5, r6, pc}
	.align 2, 0
_022439D8: .4byte 0x022533B0
_022439DC: .4byte 0x022533B0
	arm_func_end ov18_0224398C

	arm_func_start ov18_022439E0
ov18_022439E0: @ 0x022439E0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #0x228
	mul r7, sb, r0
	ldr r0, _02243B38 @ =0x022533B0
	mov r8, r1
	ldr r0, [r0]
	mov r5, r2
	add r0, r0, r7
	ldr r0, [r0, #0x224]
	bl ov18_022440BC
	mov r4, r0
	mov r0, #1
	bl FUN_020C164C
	mov r6, r0
	cmp r5, #0
	mov r0, #0x228
	beq _02243AA4
	ldr r1, _02243B38 @ =0x022533B0
	ldr r1, [r1]
	mla r0, sb, r0, r1
	add r5, r0, #0x200
	add r0, r0, #0x210
	cmp r5, r0
	beq _02243A84
	add r0, r1, r7
	add r1, r0, #0x210
_02243A4C:
	ldrb r3, [r5, #0xc]
	ldmib r5, {r0, sb}
	add sb, sb, r3, lsl #3
	ldr r2, [r0, #8]
	add r3, sb, r8, lsl #3
	cmp r3, r2
	bhi _02243A78
	mov r1, r4
	str sb, [r4, #8]
	bl ov18_022459F4
	b _02243A84
_02243A78:
	mov r5, r0
	cmp r0, r1
	bne _02243A4C
_02243A84:
	ldr r0, _02243B38 @ =0x022533B0
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x210
	cmp r5, r0
	bne _02243B24
	bl FUN_020C42A8
	b _02243B24
_02243AA4:
	ldr r1, _02243B38 @ =0x022533B0
	ldr r1, [r1]
	mla r0, sb, r0, r1
	add r5, r0, #0x210
	add r0, r0, #0x200
	cmp r5, r0
	beq _02243B08
	add r0, r1, r7
	add r0, r0, #0x200
_02243AC8:
	ldr sb, [r5]
	ldr r3, [r5, #8]
	ldrb r1, [sb, #0xc]
	ldr r2, [sb, #8]
	sub r3, r3, r8, lsl #3
	add r1, r2, r1, lsl #3
	cmp r3, r1
	blo _02243AFC
	mov r0, r5
	mov r1, r4
	str r3, [r4, #8]
	bl ov18_022459F4
	b _02243B08
_02243AFC:
	mov r5, sb
	cmp sb, r0
	bne _02243AC8
_02243B08:
	ldr r0, _02243B38 @ =0x022533B0
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x200
	cmp r5, r0
	bne _02243B24
	bl FUN_020C42A8
_02243B24:
	mov r0, r6
	bl FUN_020C161C
	mov r0, r4
	strb r8, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02243B38: .4byte 0x022533B0
	arm_func_end ov18_022439E0

	arm_func_start ov18_02243B3C
ov18_02243B3C: @ 0x02243B3C
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xc]
	mov r4, #0
	mov r3, r4
	cmp r0, #0
	ldr r2, [r5, #8]
	ble _02243B80
	ldr r0, _02243BB4 @ =0xC1FFFCFF
_02243B60:
	ldr r1, [r2]
	add r3, r3, #1
	and r1, r1, r0
	orr r1, r1, #0x200
	str r1, [r2], #8
	ldrb r1, [r5, #0xc]
	cmp r3, r1
	blt _02243B60
_02243B80:
	mov r0, r5
	bl ov18_022459BC
	ldr r0, _02243BB8 @ =0x022533B0
	ldr r1, [r0]
	add r0, r1, #0x228
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x228
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x224]
	mov r1, r5
	bl ov18_02244064
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243BB4: .4byte 0xC1FFFCFF
_02243BB8: .4byte 0x022533B0
	arm_func_end ov18_02243B3C

	arm_func_start ov18_02243BBC
ov18_02243BBC: @ 0x02243BBC
	ldr r0, [r0, #8]
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end ov18_02243BBC

	arm_func_start ov18_02243BC8
ov18_02243BC8: @ 0x02243BC8
	ldrb r0, [r0, #0xc]
	bx lr
	arm_func_end ov18_02243BC8

	arm_func_start ov18_02243BD0
ov18_02243BD0: @ 0x02243BD0
	push {r4, lr}
	cmp r1, #0
	ldr ip, [r0, #8]
	blt _02243C1C
	cmp r2, #0x100
	cmpne r2, #0x300
	ldr r0, _02243C70 @ =0xC1FFFCFF
	beq _02243C04
	ldr r3, [ip, r1, lsl #3]
	and r0, r3, r0
	orr r0, r0, r2
	str r0, [ip, r1, lsl #3]
	pop {r4, pc}
_02243C04:
	ldr r4, [ip, r1, lsl #3]
	and r0, r4, r0
	orr r0, r0, r2
	orr r0, r0, r3, lsl #25
	str r0, [ip, r1, lsl #3]
	pop {r4, pc}
_02243C1C:
	ldrb r4, [r0, #0xc]
	mov r1, #0
	cmp r4, #0
	pople {r4, pc}
	ldr lr, _02243C70 @ =0xC1FFFCFF
_02243C30:
	cmp r2, #0x100
	cmpne r2, #0x300
	ldr r4, [ip, r1, lsl #3]
	beq _02243C4C
	and r4, r4, lr
	orr r4, r4, r2
	b _02243C58
_02243C4C:
	and r4, r4, lr
	orr r4, r4, r2
	orr r4, r4, r3, lsl #25
_02243C58:
	str r4, [ip, r1, lsl #3]
	ldrb r4, [r0, #0xc]
	add r1, r1, #1
	cmp r1, r4
	blt _02243C30
	pop {r4, pc}
	.align 2, 0
_02243C70: .4byte 0xC1FFFCFF
	arm_func_end ov18_02243BD0

	arm_func_start ov18_02243C74
ov18_02243C74: @ 0x02243C74
	push {r4, lr}
	cmp r1, #0
	ldr ip, [r0, #8]
	blt _02243CAC
	ldr r0, [ip, r1, lsl #3]
	add lr, ip, r1, lsl #3
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	str r0, [ip, r1, lsl #3]
	ldrh r0, [lr, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r3, lsl #12
	strh r0, [lr, #4]
	pop {r4, pc}
_02243CAC:
	ldrb r1, [r0, #0xc]
	mov r4, #0
	cmp r1, #0
	pople {r4, pc}
_02243CBC:
	ldr r1, [ip, r4, lsl #3]
	add lr, ip, r4, lsl #3
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	str r1, [ip, r4, lsl #3]
	ldrh r1, [lr, #4]
	add r4, r4, #1
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [lr, #4]
	ldrb r1, [r0, #0xc]
	cmp r4, r1
	blt _02243CBC
	pop {r4, pc}
	arm_func_end ov18_02243C74

	arm_func_start ov18_02243CF4
ov18_02243CF4: @ 0x02243CF4
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	cmp r1, #0
	ldr r5, [r0, #8]
	blt _02243D30
	ldr r4, [r5, r1, lsl #3]
	ldr r0, _02243DDC @ =0xFE00FF00
	and r3, r3, #0xff
	and r0, r4, r0
	lsl r2, r2, #0x17
	orr r0, r0, r3
	orr r0, r0, r2, lsr #7
	add sp, sp, #0x10
	str r0, [r5, r1, lsl #3]
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_02243D30:
	ldr r1, [r5]
	ldr ip, _02243DDC @ =0xFE00FF00
	and r6, r3, #0xff
	and r7, r1, ip
	mov sb, r1
	ldr r1, _02243DE0 @ =0x01FF0000
	lsl r8, r2, #0x17
	orr r6, r7, r6
	orr r6, r6, r8, lsr #7
	str r6, [r5]
	ldrb r6, [r0, #0xc]
	and r4, sb, r1
	and lr, sb, #0xff
	lsr r7, r4, #0x10
	str r7, [sp, #0xc]
	cmp r6, #1
	str lr, [sp, #8]
	sub r6, r2, r4, lsr #16
	sub r7, r3, lr
	mov r4, #1
	addle sp, sp, #0x10
	pople {r4, r5, r6, r7, r8, sb, sl, pc}
_02243D88:
	ldr r2, [r5, r4, lsl #3]
	and r3, r2, #0xff
	mov sb, r2
	and lr, r2, r1
	add r8, r3, r7
	add r2, r6, lr, lsr #16
	and sb, sb, ip
	and r8, r8, #0xff
	lsl sl, r2, #0x17
	orr r2, sb, r8
	orr r2, r2, sl, lsr #7
	str r2, [r5, r4, lsl #3]
	ldrb r2, [r0, #0xc]
	add r4, r4, #1
	lsr r8, lr, #0x10
	cmp r4, r2
	blt _02243D88
	str r3, [sp]
	str r8, [sp, #4]
	add sp, sp, #0x10
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02243DDC: .4byte 0xFE00FF00
_02243DE0: .4byte 0x01FF0000
	arm_func_end ov18_02243CF4

	arm_func_start ov18_02243DE4
ov18_02243DE4: @ 0x02243DE4
	push {r3, lr}
	cmp r1, #0
	ldr ip, [r0, #8]
	blt _02243E0C
	add r1, ip, r1, lsl #3
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	strh r0, [r1, #4]
	pop {r3, pc}
_02243E0C:
	ldrb r1, [r0, #0xc]
	mov lr, #0
	cmp r1, #0
	pople {r3, pc}
_02243E1C:
	add r3, ip, lr, lsl #3
	ldrh r1, [r3, #4]
	add lr, lr, #1
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	strh r1, [r3, #4]
	ldrb r1, [r0, #0xc]
	cmp lr, r1
	blt _02243E1C
	pop {r3, pc}
	arm_func_end ov18_02243DE4

	arm_func_start ov18_02243E44
ov18_02243E44: @ 0x02243E44
	push {r3, lr}
	ldr lr, [r0, #8]
	ldr r0, _02243E70 @ =0x01FF0000
	ldr ip, [lr, r1, lsl #3]
	and r0, ip, r0
	lsr r0, r0, #0x10
	str r0, [r2]
	ldr r0, [lr, r1, lsl #3]
	and r0, r0, #0xff
	str r0, [r3]
	pop {r3, pc}
	.align 2, 0
_02243E70: .4byte 0x01FF0000
	arm_func_end ov18_02243E44

	arm_func_start ov18_02243E74
ov18_02243E74: @ 0x02243E74
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, r1
	add r1, sp, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02243EA0 @ =0x022533B4
	str r0, [r1, r4, lsl #2]
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02243EA0: .4byte 0x022533B4
	arm_func_end ov18_02243E74

	arm_func_start ov18_02243EA4
ov18_02243EA4: @ 0x02243EA4
	push {r4, lr}
	ldr r1, _02243EC8 @ =0x022533B4
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	bl ov18_0224382C
	ldr r0, _02243EC8 @ =0x022533B4
	mov r1, #0
	str r1, [r0, r4, lsl #2]
	pop {r4, pc}
	.align 2, 0
_02243EC8: .4byte 0x022533B4
	arm_func_end ov18_02243EA4

	arm_func_start ov18_02243ECC
ov18_02243ECC: @ 0x02243ECC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r3, _02243F5C @ =0x022533B4
	mov r5, r2
	ldr r6, [r3, r0, lsl #2]
	lsl r2, r1, #3
	add r0, r6, r1, lsl #3
	ldr r3, [r0, #4]
	ldrh r4, [r6, r2]
	add r1, sp, #0
	mov r0, #0
	mov r2, #8
	add sb, r6, r3
	bl FUN_020C4B4C
	cmp r4, #0
	mov sl, #0
	addle sp, sp, #8
	pople {r4, r5, r6, r7, r8, sb, sl, pc}
	add r8, sp, #0
	mov r7, #6
	mov r6, #8
_02243F20:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl FUN_020C4B18
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl FUN_020C4B68
	add sl, sl, #1
	cmp sl, r4
	add sb, sb, #6
	add r5, r5, #8
	blt _02243F20
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02243F5C: .4byte 0x022533B4
	arm_func_end ov18_02243ECC

	arm_func_start ov18_02243F60
ov18_02243F60: @ 0x02243F60
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov18_02245B54
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02243ECC
	mov r0, r4
	pop {r4, r5, r6, pc}
	arm_func_end ov18_02243F60

	arm_func_start ov18_02243F8C
ov18_02243F8C: @ 0x02243F8C
	push {r4, r5, r6, lr}
	ldr r3, _02243FD0 @ =0x022533B4
	mov r6, r0
	mov r5, r1
	ldr r3, [r3, r6, lsl #2]
	lsl r1, r5, #3
	ldrh r1, [r3, r1]
	bl ov18_022439E0
	mov r1, #0
	mov r4, r0
	bl ov18_02243BBC
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl ov18_02243ECC
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_02243FD0: .4byte 0x022533B4
	arm_func_end ov18_02243F8C

	arm_func_start ov18_02243FD4
ov18_02243FD4: @ 0x02243FD4
	push {r4, lr}
	mov r4, r0
	add r0, r4, #1
	lsl r0, r0, #2
	add r0, r0, #8
	mov r1, #4
	bl ov18_02245068
	add r1, r4, #1
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r4, pc}
	arm_func_end ov18_02243FD4

	arm_func_start ov18_02244008
ov18_02244008: @ 0x02244008
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov18_02243FD4
	cmp r6, #0
	mov r2, #0
	ble _02244040
_02244028:
	add r1, r0, r2, lsl #2
	add r2, r2, #1
	str r5, [r1, #4]
	cmp r2, r6
	add r5, r5, r4
	blt _02244028
_02244040:
	strb r6, [r0, #3]
	pop {r4, r5, r6, pc}
	arm_func_end ov18_02244008

	arm_func_start ov18_02244048
ov18_02244048: @ 0x02244048
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	bl ov18_0224508C
	pop {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov18_02244048

	arm_func_start ov18_02244064
ov18_02244064: @ 0x02244064
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl FUN_020C164C
	ldrb r2, [r5, #3]
	mov r6, r0
	ldrh r1, [r5]
	add r0, r2, #1
	bl FUN_020BD140
	ldrb r1, [r5, #2]
	mov r7, r0
	cmp r7, r1
	bne _022440A0
	bl FUN_020C42A8
_022440A0:
	ldrb r1, [r5, #3]
	mov r0, r6
	add r1, r5, r1, lsl #2
	str r4, [r1, #4]
	strb r7, [r5, #3]
	bl FUN_020C161C
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02244064

	arm_func_start ov18_022440BC
ov18_022440BC: @ 0x022440BC
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, #0
	bl FUN_020C164C
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #2]
	mov r5, r0
	cmp r1, r2
	beq _02244104
	ldrh r1, [r6]
	add r0, r2, r1
	sub r0, r0, #1
	bl FUN_020BD140
	and r1, r0, #0xff
	strb r0, [r6, #3]
	add r0, r6, r1, lsl #2
	ldr r4, [r0, #4]
_02244104:
	mov r0, r5
	bl FUN_020C161C
	mov r0, r4
	pop {r4, r5, r6, pc}
	arm_func_end ov18_022440BC

	arm_func_start ov18_02244114
ov18_02244114: @ 0x02244114
	push {r3, lr}
	mov r0, #0x18
	mov r1, #4
	bl ov18_02245068
	ldr r2, _02244150 @ =0x022533BC
	mov r1, #0x3f
	str r0, [r2]
	ldr r0, _02244154 @ =0x04000050
	mov r2, #0x10
	bl FUN_020BF578
	ldr r0, _02244158 @ =0x04001050
	mov r1, #0x3f
	mov r2, #0x10
	bl FUN_020BF578
	pop {r3, pc}
	.align 2, 0
_02244150: .4byte 0x022533BC
_02244154: .4byte 0x04000050
_02244158: .4byte 0x04001050
	arm_func_end ov18_02244114

	arm_func_start ov18_0224415C
ov18_0224415C: @ 0x0224415C
	ldr ip, _02244168 @ =ov18_0224508C
	ldr r0, _0224416C @ =0x022533BC
	bx ip
	.align 2, 0
_02244168: .4byte ov18_0224508C
_0224416C: .4byte 0x022533BC
	arm_func_end ov18_0224415C

	arm_func_start ov18_02244170
ov18_02244170: @ 0x02244170
	cmp r0, #1
	ldreq r0, _02244190 @ =0x022533BC
	ldreq r0, [r0]
	ldrne r0, _02244190 @ =0x022533BC
	ldrne r0, [r0]
	addne r0, r0, #0xc
	ldrb r0, [r0, #9]
	bx lr
	.align 2, 0
_02244190: .4byte 0x022533BC
	arm_func_end ov18_02244170

	arm_func_start ov18_02244194
ov18_02244194: @ 0x02244194
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _02244258 @ =0x0224971C
	mov r5, r0
	ldrb r0, [r4, #0xb]
	ldrb r6, [r4, #8]
	ldrb lr, [r4, #9]
	strb r0, [sp, #3]
	cmp r1, #1
	ldreq r0, _0224425C @ =0x022533BC
	strb r6, [sp]
	ldreq r6, [r0]
	ldrne r0, _0224425C @ =0x022533BC
	ldrb ip, [r4, #0xa]
	ldrne r0, [r0]
	mov r4, r3
	addne r6, r0, #0xc
	ldrb r0, [r6, #9]
	strb lr, [sp, #1]
	strb ip, [sp, #2]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	popne {r3, r4, r5, r6, pc}
	cmp r1, #1
	add r0, sp, #0
	mov r1, r2
	bne _02244214
	ldrsb r2, [r0, r5]
	ldr r0, _02244260 @ =0x04001050
	bl FUN_020BF578
	b _02244220
_02244214:
	ldrsb r2, [r0, r5]
	ldr r0, _02244264 @ =0x04000050
	bl FUN_020BF578
_02244220:
	ldr r1, _02244268 @ =ov18_0224426C
	mov r2, r6
	mov r0, #1
	mov r3, #0xc8
	bl ov18_02246304
	str r0, [r6]
	mov r0, #0
	strh r0, [r6, #4]
	strb r5, [r6, #8]
	strh r4, [r6, #6]
	mov r0, #1
	strb r0, [r6, #9]
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02244258: .4byte 0x0224971C
_0224425C: .4byte 0x022533BC
_02244260: .4byte 0x04001050
_02244264: .4byte 0x04000050
_02244268: .4byte ov18_0224426C
	arm_func_end ov18_02244194

	arm_func_start ov18_0224426C
ov18_0224426C: @ 0x0224426C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	ldr r2, _02244384 @ =0x0224971C
	mov r4, r1
	ldrsh r1, [r4, #4]
	ldrb sb, [r2, #4]
	ldrb r8, [r2, #5]
	ldrb r7, [r2, #6]
	ldrb r6, [r2, #7]
	ldrb lr, [r2]
	ldrb ip, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	add r1, r1, #1
	mov r5, r0
	strh r1, [r4, #4]
	ldrsh r0, [r4, #4]
	ldrh r1, [r4, #6]
	strb sb, [sp, #4]
	lsl r0, r0, #4
	strb r8, [sp, #5]
	strb r7, [sp, #6]
	strb r6, [sp, #7]
	strb lr, [sp]
	strb ip, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	bl FUN_020BD104
	ldrb r3, [r4, #8]
	add r2, sp, #4
	mov r1, r0
	ldrb r0, [r2, r3]
	tst r0, #1
	rsbne r1, r1, #0x10
	tst r0, #0x10
	ldr r0, _02244388 @ =0x022533BC
	rsbne r1, r1, #0
	ldr r0, [r0]
	cmp r4, r0
	bne _02244318
	ldr r0, _0224438C @ =0x04001050
	bl FUN_020BF5E8
	b _02244320
_02244318:
	ldr r0, _02244390 @ =0x04000050
	bl FUN_020BF5E8
_02244320:
	ldrsh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	addlt sp, sp, #8
	poplt {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _02244388 @ =0x022533BC
	ldrb r2, [r4, #8]
	ldr r0, [r0]
	add r1, sp, #0
	cmp r4, r0
	bne _0224435C
	ldrsb r1, [r1, r2]
	ldr r0, _0224438C @ =0x04001050
	bl FUN_020BF5E8
	b _02244368
_0224435C:
	ldrsb r1, [r1, r2]
	ldr r0, _02244390 @ =0x04000050
	bl FUN_020BF5E8
_02244368:
	mov r2, #0
	mov r1, r5
	mov r0, #1
	strb r2, [r4, #9]
	bl ov18_022463AC
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02244384: .4byte 0x0224971C
_02244388: .4byte 0x022533BC
_0224438C: .4byte 0x04001050
_02244390: .4byte 0x04000050
	arm_func_end ov18_0224426C

	arm_func_start ov18_02244394
ov18_02244394: @ 0x02244394
	push {r3, r4, r5, lr}
	ldr r1, _022443E4 @ =0x022533BC
	mov r5, r0
	ldr r4, [r1]
	ldrb r0, [r4, #9]
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldr r1, _022443E8 @ =ov18_022443EC
	mov r2, r4
	mov r0, #1
	mov r3, #0xc8
	bl ov18_02246304
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	mov r0, #1
	strb r0, [r4, #9]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022443E4: .4byte 0x022533BC
_022443E8: .4byte ov18_022443EC
	arm_func_end ov18_02244394

	arm_func_start ov18_022443EC
ov18_022443EC: @ 0x022443EC
	push {r3, lr}
	ldrsh r2, [r1, #4]
	add r2, r2, #1
	strh r2, [r1, #4]
	ldrsh r3, [r1, #4]
	ldrh r2, [r1, #6]
	cmp r3, r2
	poplt {r3, pc}
	mov r2, #0
	strb r2, [r1, #9]
	mov r1, r0
	mov r0, #1
	bl ov18_022463AC
	pop {r3, pc}
	arm_func_end ov18_022443EC

	arm_func_start ov18_02244424
ov18_02244424: @ 0x02244424
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r0, #0x680
	mov r1, #4
	bl ov18_02245068
	mov r4, r0
	ldr r3, _0224451C @ =0x022533C0
	add r1, r4, #0x10
	mov r0, #0x20
	mov r2, #0x30
	str r4, [r3]
	bl ov18_02244008
	ldr r1, _0224451C @ =0x022533C0
	ldr r1, [r1]
	str r0, [r1, #0x670]
	bl ov18_0222F74C
	cmp r0, #6
	mov r4, #4
	bne _022444C4
	mov r7, #0
	ldr r6, _02244520 @ =0x0224B210
	ldr sb, _0224451C @ =0x022533C0
	mov r8, r7
	mov r5, r7
_02244480:
	ldr r0, [r6, r7, lsl #2]
	mov r1, r5
	mov r2, r4
	bl ov18_02243738
	ldr r1, [sb]
	add r1, r1, r7, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [sb]
	add r0, r2, r7, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8
	bl FUN_020AC86C
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #8
	blt _02244480
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022444C4:
	mov r8, #0
	ldr r6, _02244524 @ =0x0224B218
	ldr sb, _0224451C @ =0x022533C0
	mov r7, r8
	mov r5, r8
_022444D8:
	ldr r0, [r6, r8, lsl #2]
	mov r1, r5
	mov r2, r4
	bl ov18_02243738
	ldr r1, [sb]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [sb]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r7
	bl FUN_020AC86C
	add r8, r8, #1
	cmp r8, #2
	add r7, r7, #8
	blt _022444D8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0224451C: .4byte 0x022533C0
_02244520: .4byte 0x0224B210
_02244524: .4byte 0x0224B218
	arm_func_end ov18_02244424

	arm_func_start ov18_02244528
ov18_02244528: @ 0x02244528
	push {r3, r4, r5, lr}
	ldr r4, _0224456C @ =0x022533C0
	mov r5, #0
_02244534:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x674]
	bl ov18_0224382C
	add r5, r5, #1
	cmp r5, #2
	blt _02244534
	ldr r0, _0224456C @ =0x022533C0
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl ov18_02244048
	ldr r0, _02244570 @ =0x022533C0
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224456C: .4byte 0x022533C0
_02244570: .4byte 0x022533C0
	arm_func_end ov18_02244528

	arm_func_start ov18_02244574
ov18_02244574: @ 0x02244574
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _0224464C @ =0x022533C0
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	ldr r0, [r0, #0x670]
	mov r5, r2
	mov r8, r3
	bl ov18_022440BC
	mov r4, r0
	strb r6, [r4, #0x2e]
	mul r1, r6, r5
	mov r2, r8
	strb r5, [r4, #0x2f]
	mov r0, r7
	add r3, sp, #4
	bl ov18_02245C98
	str r0, [r4, #0x28]
	ldr r1, [sp, #4]
	mov r0, r6
	strh r1, [r4, #0x2c]
	mov r1, r5
	bl FUN_020ADA78
	ldr r1, [sp, #0x20]
	cmp r7, #1
	str r0, [r1]
	moveq ip, #0x6600000
	ldr r7, [sp, #4]
	mov r1, #4
	movne ip, #0x6400000
	str r1, [sp]
	mov r0, r4
	mov r2, r6
	mov r3, r5
	add r1, ip, r7, lsl #7
	bl FUN_020AD8E4
	ldr r1, [r4, #0x14]
	mov r0, r4
	ldr r2, [r1, #4]
	mov r1, #0
	blx r2
	ldr r0, _0224464C @ =0x022533C0
	ldr r2, [sp, #0x24]
	ldr r0, [r0]
	mov r1, #1
	str r4, [r4, #0x18]
	add r0, r0, r2, lsl #3
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0224464C: .4byte 0x022533C0
	arm_func_end ov18_02244574

	arm_func_start ov18_02244650
ov18_02244650: @ 0x02244650
	push {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl ov18_02245E10
	ldr r0, _02244678 @ =0x022533C0
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl ov18_02244064
	pop {r4, pc}
	.align 2, 0
_02244678: .4byte 0x022533C0
	arm_func_end ov18_02244650

	arm_func_start ov18_0224467C
ov18_0224467C: @ 0x0224467C
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r0, _022447D8 @ =0x022533C0
	ldr r3, _022447DC @ =0x0224972E
	lsl r4, r8, #2
	ldr r2, _022447E0 @ =0x0224972C
	ldr r0, [r0]
	ldrh r5, [r3, r4]
	ldrh r6, [r2, r4]
	add r3, r0, #0x610
	mov r0, #0x30
	mul r2, r6, r5
	mov r7, r1
	mla r4, r8, r0, r3
	lsl r0, r2, #5
	mov r1, #0x20
	bl ov18_02245068
	str r0, [r4, #0x28]
	cmp r8, #1
	bne _022446F4
	ldr r1, _022447E4 @ =0x04001008
	ldrh r0, [r1]
	bic r0, r0, #0x40
	strh r0, [r1]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r1]
	b _02244714
_022446F4:
	ldr r1, _022447E8 @ =0x04000008
	ldrh r0, [r1]
	bic r0, r0, #0x40
	strh r0, [r1]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r1]
_02244714:
	mov r0, #4
	str r0, [sp]
	ldr r1, [r4, #0x28]
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl FUN_020AD8B8
	ldr r0, _022447D8 @ =0x022533C0
	mov r1, #1
	ldr r0, [r0]
	cmp r8, #1
	str r4, [r4, #0x18]
	add r0, r0, r7, lsl #3
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
	bne _02244760
	bl FUN_020BF070
	b _02244764
_02244760:
	bl FUN_020BF03C
_02244764:
	ldr r1, _022447EC @ =0x02249728
	lsl r2, r8, #1
	mov r3, #0
	ldrh r7, [r1, r2]
	str r3, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, r6
	mov r2, r5
	str r7, [sp, #8]
	mov r5, #0xf
	str r5, [sp, #0xc]
	bl FUN_020AD96C
	mov r0, r4
	mov r1, #0
	bl ov18_02244B5C
	ldr r0, _022447D8 @ =0x022533C0
	ldr r1, _022447F0 @ =ov18_022447F4
	ldr r2, [r0]
	mov r0, #1
	add r2, r2, #0x27c
	add r2, r2, #0x400
	add r2, r2, r8
	mov r3, #0xc8
	bl ov18_02246304
	str r0, [r4, #0x2c]
	mov r0, r4
	add sp, sp, #0x10
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022447D8: .4byte 0x022533C0
_022447DC: .4byte 0x0224972E
_022447E0: .4byte 0x0224972C
_022447E4: .4byte 0x04001008
_022447E8: .4byte 0x04000008
_022447EC: .4byte 0x02249728
_022447F0: .4byte ov18_022447F4
	arm_func_end ov18_0224467C

	arm_func_start ov18_022447F4
ov18_022447F4: @ 0x022447F4
	push {r4, lr}
	mov r4, r1
	ldrb r0, [r4]
	cmp r0, #0
	popeq {r4, pc}
	ldr r0, _02244878 @ =0x022533C0
	ldr r1, [r0]
	add r0, r1, #0x27c
	add r0, r0, #0x400
	cmp r4, r0
	bne _02244848
	ldr r0, [r1, #0x638]
	mov r1, #0x6000
	bl FUN_020C2C54
	ldr r0, _02244878 @ =0x022533C0
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x6000
	ldr r0, [r0, #0x638]
	bl FUN_020C066C
	b _0224486C
_02244848:
	ldr r0, [r1, #0x668]
	mov r1, #0x3000
	bl FUN_020C2C54
	ldr r0, _02244878 @ =0x022533C0
	mov r1, #0x3000
	ldr r0, [r0]
	mov r2, r1
	ldr r0, [r0, #0x668]
	bl FUN_020C06CC
_0224486C:
	mov r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02244878: .4byte 0x022533C0
	arm_func_end ov18_022447F4

	arm_func_start ov18_0224487C
ov18_0224487C: @ 0x0224487C
	push {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bl ov18_022463CC
	ldr r0, _022448DC @ =0x022533C0
	ldr r0, [r0]
	add r0, r0, #0x610
	cmp r4, r0
	bne _022448BC
	bl FUN_020BF2D4
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	bl FUN_020C4AF0
	b _022448D0
_022448BC:
	bl FUN_020BF2D4
	mov r1, r0
	mov r0, #0
	mov r2, #0x3000
	bl FUN_020C4AF0
_022448D0:
	add r0, r4, #0x28
	bl ov18_0224508C
	pop {r4, pc}
	.align 2, 0
_022448DC: .4byte 0x022533C0
	arm_func_end ov18_0224487C

	arm_func_start ov18_022448E0
ov18_022448E0: @ 0x022448E0
	ldr r2, _022448FC @ =0x022533C0
	mov r1, #0x30
	ldr r2, [r2]
	ldr ip, _02244900 @ =ov18_0224487C
	add r2, r2, #0x610
	mla r0, r1, r0, r2
	bx ip
	.align 2, 0
_022448FC: .4byte 0x022533C0
_02244900: .4byte ov18_0224487C
	arm_func_end ov18_022448E0

	arm_func_start ov18_02244904
ov18_02244904: @ 0x02244904
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r4, [r0, #0x1c]
	add ip, sp, #0xc
	mov lr, #0
	strb lr, [ip]
	strb lr, [ip, #1]
	ldr ip, [r4]
	ldr ip, [ip, #8]
	ldrb ip, [ip, #7]
	cmp ip, #7
	addls pc, pc, ip, lsl #2
	b _02244984
_02244938: @ jump table
	b _02244958 @ case 0
	b _02244964 @ case 1
	b _02244964 @ case 2
	b _02244970 @ case 3
	b _02244970 @ case 4
	b _0224497C @ case 5
	b _0224497C @ case 6
	b _02244958 @ case 7
_02244958:
	mov ip, #1
	strb ip, [sp, #0xc]
	b _02244984
_02244964:
	mov ip, #1
	strb ip, [sp, #0xd]
	b _02244984
_02244970:
	sub ip, lr, #1
	strb ip, [sp, #0xc]
	b _02244984
_0224497C:
	sub ip, lr, #1
	strb ip, [sp, #0xd]
_02244984:
	ldr lr, [sp, #0x18]
	ldr ip, [sp, #0x1c]
	str lr, [sp]
	str ip, [sp, #4]
	ldrb lr, [sp, #0xc]
	ldrb ip, [sp, #0xd]
	add r0, r0, #0x18
	strb lr, [sp, #8]
	strb ip, [sp, #9]
	bl FUN_020ADFE8
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov18_02244904

	arm_func_start ov18_022449B4
ov18_022449B4: @ 0x022449B4
	push {r3, lr}
	sub sp, sp, #8
	ldrh ip, [sp, #0x10]
	str r3, [sp]
	ldr r3, _022449EC @ =0x022533C0
	str ip, [sp, #4]
	ldr lr, [r3]
	ldr ip, [sp, #0x14]
	mov r3, r2
	mov r2, r1
	add r1, lr, ip, lsl #3
	bl FUN_020AD794
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022449EC: .4byte 0x022533C0
	arm_func_end ov18_022449B4

	arm_func_start ov18_022449F0
ov18_022449F0: @ 0x022449F0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r6, [sp, #0x34]
	mov sb, r1
	ldrh r1, [r6]
	ldr r7, [sp, #0x30]
	ldr r5, [sp, #0x38]
	cmp r1, #0
	mov sl, r0
	mov r8, r2
	mov fp, r3
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02244A24:
	ldr r0, _02244A94 @ =0x022533C0
	ldr r0, [r0]
	add r4, r0, r5, lsl #3
	mov r0, r4
	bl FUN_020AC890
	mov r1, r0
	ldr r0, _02244A98 @ =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r4]
	ldrheq r1, [r0, #2]
	mov r0, r4
	bl FUN_020AC8D8
	ldrh r1, [r6]
	mov r2, r0
	mov r0, sl
	stm sp, {r1, r5}
	ldrsb r1, [r2, #2]
	mov r2, r8
	mov r3, fp
	sub r1, r7, r1
	add r1, sb, r1, asr #1
	bl ov18_022449B4
	ldrh r1, [r6, #2]!
	add sb, sb, r7
	cmp r1, #0
	bne _02244A24
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02244A94: .4byte 0x022533C0
_02244A98: .4byte 0x0000FFFF
	arm_func_end ov18_022449F0

	arm_func_start ov18_02244A9C
ov18_02244A9C: @ 0x02244A9C
	push {r4, lr}
	sub sp, sp, #0x18
	ldr r4, [r0, #0x1c]
	add ip, sp, #0x14
	mov lr, #0
	strb lr, [ip]
	strb lr, [ip, #1]
	ldr ip, [r4]
	ldr ip, [ip, #8]
	ldrb ip, [ip, #7]
	cmp ip, #7
	addls pc, pc, ip, lsl #2
	b _02244B1C
_02244AD0: @ jump table
	b _02244AF0 @ case 0
	b _02244AFC @ case 1
	b _02244AFC @ case 2
	b _02244B08 @ case 3
	b _02244B08 @ case 4
	b _02244B14 @ case 5
	b _02244B14 @ case 6
	b _02244AF0 @ case 7
_02244AF0:
	mov ip, #1
	strb ip, [sp, #0x14]
	b _02244B1C
_02244AFC:
	mov ip, #1
	strb ip, [sp, #0x15]
	b _02244B1C
_02244B08:
	sub ip, lr, #1
	strb ip, [sp, #0x14]
	b _02244B1C
_02244B14:
	sub ip, lr, #1
	strb ip, [sp, #0x15]
_02244B1C:
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str lr, [sp]
	ldr lr, [sp, #0x28]
	str ip, [sp, #4]
	ldr ip, [sp, #0x2c]
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	ldrb lr, [sp, #0x14]
	ldrb ip, [sp, #0x15]
	add r0, r0, #0x18
	strb lr, [sp, #0x10]
	strb ip, [sp, #0x11]
	bl FUN_020AE10C
	add sp, sp, #0x18
	pop {r4, pc}
	arm_func_end ov18_02244A9C

	arm_func_start ov18_02244B5C
ov18_02244B5C: @ 0x02244B5C
	push {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r2, [r2, #4]
	blx r2
	pop {r3, pc}
	arm_func_end ov18_02244B5C

	arm_func_start ov18_02244B70
ov18_02244B70: @ 0x02244B70
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r3
	mov r4, r0
	mov r8, r1
	mov r0, r6
	mov r1, #0
	mov r7, r2
	bl ov18_02243BBC
	mov r2, #0
	mov r5, r0
	mov r0, r6
	mvn r1, #0
	mov r3, r2
	bl ov18_02243BD0
	mov r0, r6
	mvn r1, #0
	mov r2, #0
	mov r3, #0xf
	bl ov18_02243C74
	mov r0, r6
	mvn r1, #0
	ldr r2, [sp, #0x28]
	bl ov18_02243DE4
	str r7, [sp]
	mov r0, r5
	mov r3, r8
	mov r1, #0
	str r1, [sp, #4]
	ldrh r2, [r4, #0x2c]
	mov r1, #2
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x2e]
	ldrb r2, [r4, #0x2f]
	bl FUN_020ADAD4
	add sp, sp, #0x10
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov18_02244B70

	arm_func_start ov18_02244C08
ov18_02244C08: @ 0x02244C08
	ldr r1, _02244C28 @ =0x022533C0
	ldr r2, [r1]
	add r1, r2, #0x610
	cmp r0, r1
	mov r0, #1
	strbeq r0, [r2, #0x67c]
	strbne r0, [r2, #0x67d]
	bx lr
	.align 2, 0
_02244C28: .4byte 0x022533C0
	arm_func_end ov18_02244C08

	arm_func_start ov18_02244C2C
ov18_02244C2C: @ 0x02244C2C
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	arm_func_end ov18_02244C2C

	arm_func_start ov18_02244C38
ov18_02244C38: @ 0x02244C38
	ldr ip, [sp]
	strh r0, [ip]
	strh r1, [ip, #2]
	strh r2, [ip, #4]
	strh r3, [ip, #6]
	bx lr
	arm_func_end ov18_02244C38

	arm_func_start ov18_02244C50
ov18_02244C50: @ 0x02244C50
	ldrh r3, [r0]
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh ip, [r0]
	ldrh r3, [r1]
	add r3, ip, r3
	strh r3, [r2, #4]
	ldrh r3, [r0, #2]
	ldrh r0, [r1, #2]
	add r0, r3, r0
	strh r0, [r2, #6]
	bx lr
	arm_func_end ov18_02244C50

	arm_func_start ov18_02244C84
ov18_02244C84: @ 0x02244C84
	cmp r0, #1
	bne _02244CB0
	ldr r3, _02244CD4 @ =0x04001000
	ldr r2, [r3]
	ldr r0, [r3]
	and ip, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, ip, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_02244CB0:
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, [r3]
	and ip, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, ip, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
	.align 2, 0
_02244CD4: .4byte 0x04001000
	arm_func_end ov18_02244C84

	arm_func_start ov18_02244CD8
ov18_02244CD8: @ 0x02244CD8
	cmp r0, #1
	bne _02244D08
	ldr r3, _02244D30 @ =0x04001000
	mvn r0, r1
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	bic r1, r1, #0x1f00
	and r0, r0, r2, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_02244D08:
	mov r3, #0x4000000
	ldr r0, [r3]
	ldr r2, [r3]
	and ip, r0, #0x1f00
	mvn r0, r1
	bic r1, r2, #0x1f00
	and r0, r0, ip, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
	.align 2, 0
_02244D30: .4byte 0x04001000
	arm_func_end ov18_02244CD8

	arm_func_start ov18_02244D34
ov18_02244D34: @ 0x02244D34
	cmp r0, #1
	bne _02244DBC
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	bne _02244D84
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	lsl r2, r0, #8
	lsl r0, r3, #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E3C @ =0x04001040
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_02244D84:
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	lsl r2, r0, #8
	lsl r0, r3, #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E40 @ =0x04001042
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_02244DBC:
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	bne _02244E04
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	lsl r2, r0, #8
	lsl r0, r3, #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E44 @ =0x04000040
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_02244E04:
	ldrh r1, [r2, #4]
	ldrh ip, [r2, #6]
	lsl r2, r0, #8
	lsl r0, r3, #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _02244E48 @ =0x04000042
	and r1, r0, #0xff00
	and r0, ip, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_02244E3C: .4byte 0x04001040
_02244E40: .4byte 0x04001042
_02244E44: .4byte 0x04000040
_02244E48: .4byte 0x04000042
	arm_func_end ov18_02244D34

	arm_func_start ov18_02244E4C
ov18_02244E4C: @ 0x02244E4C
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_02244E58: @ jump table
	b _02244E68 @ case 0
	b _02244EB8 @ case 1
	b _02244F08 @ case 2
	b _02244F58 @ case 3
_02244E68:
	cmp r0, #1
	bne _02244E94
	ldr r0, _02244FA8 @ =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FA8 @ =0x04001048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_02244E94:
	ldr r0, _02244FAC @ =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FAC @ =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_02244EB8:
	cmp r0, #1
	bne _02244EE4
	ldr r0, _02244FA8 @ =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FA8 @ =0x04001048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244EE4:
	ldr r0, _02244FAC @ =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FAC @ =0x04000048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244F08:
	cmp r0, #1
	bne _02244F34
	ldr r0, _02244FB0 @ =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FB0 @ =0x0400104A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244F34:
	ldr r0, _02244FB4 @ =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _02244FB4 @ =0x0400004A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_02244F58:
	cmp r0, #1
	bne _02244F84
	ldr r0, _02244FB0 @ =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FB0 @ =0x0400104A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_02244F84:
	ldr r0, _02244FB4 @ =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _02244FB4 @ =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
	.align 2, 0
_02244FA8: .4byte 0x04001048
_02244FAC: .4byte 0x04000048
_02244FB0: .4byte 0x0400104A
_02244FB4: .4byte 0x0400004A
	arm_func_end ov18_02244E4C

	arm_func_start ov18_02244FB8
ov18_02244FB8: @ 0x02244FB8
	push {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #0x40000
	bl FUN_020C4CF4
	mov r0, r4
	mov r1, #0x40000
	mov r2, #0
	bl FUN_020A5404
	ldr r1, _02244FF4 @ =0x022533C4
	cmp r0, #0
	str r0, [r1]
	popne {r4, pc}
	bl FUN_020C42A8
	pop {r4, pc}
	.align 2, 0
_02244FF4: .4byte 0x022533C4
	arm_func_end ov18_02244FB8

	arm_func_start ov18_02244FF8
ov18_02244FF8: @ 0x02244FF8
	push {r3, lr}
	ldr r0, _02245018 @ =0x022533C4
	ldr r0, [r0]
	bl FUN_020A543C
	ldr r0, _02245018 @ =0x022533C4
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02245018: .4byte 0x022533C4
	arm_func_end ov18_02244FF8

	arm_func_start ov18_0224501C
ov18_0224501C: @ 0x0224501C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, r1
	bl FUN_020C164C
	ldr r1, _02245064 @ =0x022533C4
	mov r5, r0
	ldr r0, [r1]
	mov r1, r6
	mov r2, r4
	bl FUN_020A5448
	movs r4, r0
	bne _02245054
	bl FUN_020C42A8
_02245054:
	mov r0, r5
	bl FUN_020C161C
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_02245064: .4byte 0x022533C4
	arm_func_end ov18_0224501C

	arm_func_start ov18_02245068
ov18_02245068: @ 0x02245068
	push {r4, lr}
	mov r4, r0
	bl ov18_0224501C
	mov r2, r4
	mov r1, #0
	mov r4, r0
	bl FUN_020C4CF4
	mov r0, r4
	pop {r4, pc}
	arm_func_end ov18_02245068

	arm_func_start ov18_0224508C
ov18_0224508C: @ 0x0224508C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl FUN_020C164C
	ldr r1, [r5]
	mov r4, r0
	cmp r1, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _022450CC @ =0x022533C4
	ldr r0, [r0]
	bl FUN_020A55D8
	mov r0, r4
	bl FUN_020C161C
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022450CC: .4byte 0x022533C4
	arm_func_end ov18_0224508C

	arm_func_start ov18_022450D0
ov18_022450D0: @ 0x022450D0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl FUN_020C164C
	mov r4, r0
	cmp r5, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _02245108 @ =0x022533C4
	mov r1, r5
	ldr r0, [r0]
	bl FUN_020A55D8
	mov r0, r4
	bl FUN_020C161C
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245108: .4byte 0x022533C4
	arm_func_end ov18_022450D0

	arm_func_start ov18_0224510C
ov18_0224510C: @ 0x0224510C
	push {r3, lr}
	sub sp, sp, #8
	mov r0, #0x3a
	mov r1, #4
	bl ov18_02245068
	ldr r1, _02245184 @ =0x022533C8
	str r0, [r1, #4]
	add r0, sp, #0
	bl FUN_020C9D70
	cmp r0, #0
	bne _0224513C
	bl FUN_020C42A8
_0224513C:
	add r0, sp, #0
	bl FUN_020C9E04
	ldr r1, _02245184 @ =0x022533C8
	mov r0, #0
	ldr r2, [r1, #4]
	mov r1, #4
	mov r3, #5
	bl FUN_020CA010
	mov r0, #2
	bl FUN_020CA60C
	mov r0, #2
	bl FUN_020CA624
	cmp r0, #0
	beq _02245178
	bl FUN_020C42A8
_02245178:
	bl ov18_022451C0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_02245184: .4byte 0x022533C8
	arm_func_end ov18_0224510C

	arm_func_start ov18_02245188
ov18_02245188: @ 0x02245188
	push {r3, r4, r5, lr}
	mov r5, #4
	mov r4, r5
_02245194:
	bl FUN_020CA110
	mov r0, r5
	bl FUN_020CA60C
	mov r0, r4
	bl FUN_020CA624
	cmp r0, #0
	bne _02245194
	ldr r0, _022451BC @ =0x022533CC
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022451BC: .4byte 0x022533CC
	arm_func_end ov18_02245188

	arm_func_start ov18_022451C0
ov18_022451C0: @ 0x022451C0
	push {r3, lr}
	bl ov18_022451D0
	bl ov18_022452D4
	pop {r3, pc}
	arm_func_end ov18_022451C0

	arm_func_start ov18_022451D0
ov18_022451D0: @ 0x022451D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022452C0 @ =0x04000130
	ldr r0, _022452C4 @ =0x027FFFA8
	ldrh r2, [r1]
	ldrh r1, [r0]
	ldr r4, _022452C8 @ =0x022533C8
	ldr r0, _022452CC @ =0x00002FFF
	orr r1, r2, r1
	eor r1, r1, r0
	and r0, r1, r0
	ldr r5, [r4, #4]
	lsl r0, r0, #0x10
	ldrh r1, [r5, #0x30]
	lsr ip, r0, #0x10
	ldr r3, _022452D0 @ =0x022533D0
	eor r1, r1, r0, lsr #16
	and r1, r1, r0, lsr #16
	strh r1, [r5, #0x32]
	ldrh r5, [r5, #0x30]
	ldr r1, [r4, #4]
	mov r2, #0
	eor r0, r5, r0, lsr #16
	and r0, r5, r0
	strh r0, [r1, #0x36]
	ldr r0, [r4, #4]
	mov r5, #0x28
	strh ip, [r0, #0x30]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x32]
	strh r0, [r1, #0x34]
	mov r0, r2
	mov r1, #1
_02245250:
	lsl r6, r1, r2
	lsl lr, r6, #0x10
	tst ip, lr, lsr #16
	strbeq r0, [r3]
	beq _022452AC
	ldrb r6, [r3]
	add r7, r6, #1
	and r6, r7, #0xff
	strb r7, [r3]
	cmp r6, #0x28
	bne _02245290
	ldr r7, [r4, #4]
	ldrh r6, [r7, #0x34]
	orr r6, r6, lr, lsr #16
	strh r6, [r7, #0x34]
	b _022452AC
_02245290:
	cmp r6, #0x2f
	bne _022452AC
	ldr r7, [r4, #4]
	ldrh r6, [r7, #0x34]
	orr r6, r6, lr, lsr #16
	strh r6, [r7, #0x34]
	strb r5, [r3]
_022452AC:
	add r2, r2, #1
	cmp r2, #0xe
	add r3, r3, #1
	blt _02245250
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022452C0: .4byte 0x04000130
_022452C4: .4byte 0x027FFFA8
_022452C8: .4byte 0x022533C8
_022452CC: .4byte 0x00002FFF
_022452D0: .4byte 0x022533D0
	arm_func_end ov18_022451D0

	arm_func_start ov18_022452D4
ov18_022452D4: @ 0x022452D4
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _0224546C @ =0x022533C8
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x38]
	lsl r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	movne r6, #1
	moveq r6, #0
	bl FUN_020CA2EC
	ldr r7, _0224546C @ =0x022533C8
	mov r4, r5
	ldr r3, [r7, #4]
	mov r8, #5
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r3, #0x2c]
	strh r1, [r3, #0x2e]
_02245320:
	ldr r1, [r7, #4]
	add r1, r1, r0, lsl #3
	ldrh r2, [r1, #4]
	cmp r2, #1
	ldrheq r2, [r1, #6]
	cmpeq r2, #0
	bne _02245364
	add r0, sp, #0
	mov r5, #1
	bl FUN_020CA4E8
	ldr r1, _0224546C @ =0x022533C8
	ldrh r0, [sp]
	ldr r2, [r1, #4]
	ldrh r1, [sp, #2]
	add r2, r2, #0x28
	bl ov18_02244C2C
	b _0224537C
_02245364:
	mov r1, r8
	add r4, r4, #1
	add r0, r0, #4
	bl FUN_020BD140
	cmp r4, #4
	blt _02245320
_0224537C:
	ldr r0, _0224546C @ =0x022533C8
	eor r7, r5, r6
	ldr r4, [r0, #4]
	and r1, r5, r7
	ldrb r3, [r4, #0x38]
	and r2, r1, #0xff
	and r1, r6, r7
	bic r3, r3, #2
	lsl r2, r2, #0x1f
	orr r2, r3, r2, lsr #30
	strb r2, [r4, #0x38]
	ldr r4, [r0, #4]
	and r1, r1, #0xff
	ldrb r3, [r4, #0x38]
	lsl r2, r1, #0x1f
	cmp r5, #0
	bic r3, r3, #8
	orr r2, r3, r2, lsr #28
	strb r2, [r4, #0x38]
	ldr r3, [r0, #4]
	and r1, r5, #1
	ldrb r2, [r3, #0x38]
	addeq sp, sp, #8
	bic r2, r2, #1
	orr r1, r2, r1
	strb r1, [r3, #0x38]
	ldr r3, [r0, #4]
	ldrb r2, [r3, #0x38]
	lsl r1, r2, #0x1e
	lsr r1, r1, #0x1f
	bic r2, r2, #4
	lsl r1, r1, #0x1f
	orr r1, r2, r1, lsr #29
	strb r1, [r3, #0x38]
	moveq r1, #0
	strbeq r1, [r0, #1]
	popeq {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0, #1]
	cmp r1, #0x28
	bne _02245440
	ldr r1, [r0, #4]
	add sp, sp, #8
	ldrb r0, [r1, #0x38]
	orr r0, r0, #4
	strb r0, [r1, #0x38]
	pop {r4, r5, r6, r7, r8, pc}
_02245440:
	cmp r1, #0x2f
	addne sp, sp, #8
	popne {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	mov r1, #0x28
	ldrb r2, [r3, #0x38]
	orr r2, r2, #4
	strb r2, [r3, #0x38]
	strb r1, [r0, #1]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0224546C: .4byte 0x022533C8
	arm_func_end ov18_022452D4

	arm_func_start ov18_02245470
ov18_02245470: @ 0x02245470
	ldr r1, _022454A8 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022454AC @ =0x022533C8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x32]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022454A8: .4byte 0x027FFFA8
_022454AC: .4byte 0x022533C8
	arm_func_end ov18_02245470

	arm_func_start ov18_022454B0
ov18_022454B0: @ 0x022454B0
	ldr r1, _022454E8 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022454EC @ =0x022533C8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x34]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022454E8: .4byte 0x027FFFA8
_022454EC: .4byte 0x022533C8
	arm_func_end ov18_022454B0

	arm_func_start ov18_022454F0
ov18_022454F0: @ 0x022454F0
	ldr r1, _02245528 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224552C @ =0x022533C8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x36]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_02245528: .4byte 0x027FFFA8
_0224552C: .4byte 0x022533C8
	arm_func_end ov18_022454F0

	arm_func_start ov18_02245530
ov18_02245530: @ 0x02245530
	ldr r1, _022455B0 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022455B4 @ =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	lsl r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	.align 2, 0
_022455B0: .4byte 0x027FFFA8
_022455B4: .4byte 0x022533C8
	arm_func_end ov18_02245530

	arm_func_start ov18_022455B8
ov18_022455B8: @ 0x022455B8
	ldr r1, _02245638 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224563C @ =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	lsl r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	.align 2, 0
_02245638: .4byte 0x027FFFA8
_0224563C: .4byte 0x022533C8
	arm_func_end ov18_022455B8

	arm_func_start ov18_02245640
ov18_02245640: @ 0x02245640
	ldr r1, _022456C0 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022456C4 @ =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	lsl r1, r1, #0x1d
	lsrs r1, r1, #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	.align 2, 0
_022456C0: .4byte 0x027FFFA8
_022456C4: .4byte 0x022533C8
	arm_func_end ov18_02245640

	arm_func_start ov18_022456C8
ov18_022456C8: @ 0x022456C8
	ldr r1, _02245748 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224574C @ =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	lsl r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	.align 2, 0
_02245748: .4byte 0x027FFFA8
_0224574C: .4byte 0x022533C8
	arm_func_end ov18_022456C8

	arm_func_start ov18_02245750
ov18_02245750: @ 0x02245750
	push {r3, lr}
	sub sp, sp, #8
	ldr r1, _022457B4 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	addne sp, sp, #8
	movne r0, #0
	popne {r3, pc}
	ldrh r1, [r0]
	strh r1, [sp]
	ldrh r1, [r0, #2]
	strh r1, [sp, #2]
	ldrh r2, [r0]
	ldrh r1, [r0, #4]
	add r1, r2, r1
	strh r1, [sp, #4]
	ldrh r2, [r0, #2]
	ldrh r1, [r0, #6]
	add r0, sp, #0
	add r1, r2, r1
	strh r1, [sp, #6]
	bl ov18_022455B8
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022457B4: .4byte 0x027FFFA8
	arm_func_end ov18_02245750

	arm_func_start ov18_022457B8
ov18_022457B8: @ 0x022457B8
	ldr r1, _02245818 @ =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	asrs r1, r1, #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224581C @ =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	lsl r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	bne _02245800
	ldrh r2, [r3, #0x2c]
	ldrh r1, [r3, #0x2e]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #0
	bx lr
_02245800:
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #1
	bx lr
	.align 2, 0
_02245818: .4byte 0x027FFFA8
_0224581C: .4byte 0x022533C8
	arm_func_end ov18_022457B8

	arm_func_start ov18_02245820
ov18_02245820: @ 0x02245820
	push {r3, lr}
	ldr r0, _02245894 @ =0x022533C8
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, _02245898 @ =0x027FFFA8
	beq _02245868
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	popne {r3, pc}
	mov r0, #1
	bl FUN_020CB65C
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _02245894 @ =0x022533C8
	mov r1, #0
	strb r1, [r0]
	pop {r3, pc}
_02245868:
	ldrh r0, [r0]
	and r0, r0, #0x8000
	asrs r0, r0, #0xf
	popeq {r3, pc}
	mov r0, #0
	bl FUN_020CB65C
	cmp r0, #0
	ldrne r0, _02245894 @ =0x022533C8
	movne r1, #1
	strbne r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02245894: .4byte 0x022533C8
_02245898: .4byte 0x027FFFA8
	arm_func_end ov18_02245820

	arm_func_start ov18_0224589C
ov18_0224589C: @ 0x0224589C
	push {r3, lr}
	ldr r0, _022458FC @ =0x04000210
	ldr r1, _02245900 @ =0x022533E0
	ldr r2, [r0]
	ldr r0, _02245904 @ =0x00040018
	str r2, [r1, #4]
	bl FUN_020C15F0
	mov r0, #1
	bl FUN_020C161C
	mov r0, #1
	bl FUN_020C14D4
	ldr r2, _02245900 @ =0x022533E0
	ldr r1, _02245908 @ =ov18_0224594C
	str r0, [r2]
	mov r0, #1
	bl FUN_020C144C
	mov r0, #1
	bl FUN_020C167C
	ldr r2, _0224590C @ =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl FUN_020C3D84
	pop {r3, pc}
	.align 2, 0
_022458FC: .4byte 0x04000210
_02245900: .4byte 0x022533E0
_02245904: .4byte 0x00040018
_02245908: .4byte ov18_0224594C
_0224590C: .4byte 0x04000208
	arm_func_end ov18_0224589C

	arm_func_start ov18_02245910
ov18_02245910: @ 0x02245910
	push {r3, lr}
	ldr r2, _02245944 @ =0x04000208
	mov r1, #0
	ldrh r0, [r2]
	ldr r0, _02245948 @ =0x022533E0
	strh r1, [r2]
	ldr r0, [r0, #4]
	bl FUN_020C15F0
	ldr r1, _02245948 @ =0x022533E0
	mov r0, #1
	ldr r1, [r1]
	bl FUN_020C144C
	pop {r3, pc}
	.align 2, 0
_02245944: .4byte 0x04000208
_02245948: .4byte 0x022533E0
	arm_func_end ov18_02245910

	arm_func_start ov18_0224594C
ov18_0224594C: @ 0x0224594C
	push {r3, lr}
	mov r0, #1
	bl ov18_02246254
	ldr r0, _02245970 @ =0x027E0000
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	pop {r3, pc}
	.align 2, 0
_02245970: .4byte 0x027E0000
	arm_func_end ov18_0224594C

	arm_func_start ov18_02245974
ov18_02245974: @ 0x02245974
	push {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl ov18_02245068
	mov r2, #0
	str r2, [r0]
	add r1, r0, #8
	str r1, [r0, #4]
	str r0, [r0, #8]
	str r2, [r0, #0xc]
	pop {r3, pc}
	arm_func_end ov18_02245974

	arm_func_start ov18_022459A0
ov18_022459A0: @ 0x022459A0
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	bl ov18_0224508C
	pop {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov18_022459A0

	arm_func_start ov18_022459BC
ov18_022459BC: @ 0x022459BC
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	bl FUN_020C164C
	ldm r4, {r2, r3}
	str r3, [r2, #4]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r1, #0
	str r3, [r2]
	str r1, [r4, #4]
	str r1, [r4]
	bl FUN_020C161C
	pop {r4, pc}
	arm_func_end ov18_022459BC

	arm_func_start ov18_022459F4
ov18_022459F4: @ 0x022459F4
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl FUN_020C164C
	ldr r1, [r5]
	str r4, [r1, #4]
	ldr r1, [r5]
	stm r4, {r1, r5}
	str r4, [r5]
	bl FUN_020C161C
	pop {r3, r4, r5, pc}
	arm_func_end ov18_022459F4

	arm_func_start ov18_02245A24
ov18_02245A24: @ 0x02245A24
	ldr ip, _02245A30 @ =ov18_022459F4
	add r0, r0, #8
	bx ip
	.align 2, 0
_02245A30: .4byte ov18_022459F4
	arm_func_end ov18_02245A24

	arm_func_start ov18_02245A34
ov18_02245A34: @ 0x02245A34
	ldr ip, _02245A40 @ =ov18_022459F4
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_02245A40: .4byte ov18_022459F4
	arm_func_end ov18_02245A34

	arm_func_start ov18_02245A44
ov18_02245A44: @ 0x02245A44
	push {r4, r5, r6, r7, r8, lr}
	ldr r0, _02245AD4 @ =0x0000080C
	mov r1, #4
	bl ov18_02245068
	mov r1, r0
	ldr r3, _02245AD8 @ =0x022533E8
	mov r0, #0x200
	mov r2, #0x800
	str r1, [r3]
	bl FUN_020C4BB8
	mov r5, #0
	ldr r7, _02245AD8 @ =0x022533E8
	mov r6, r5
	mov r4, #0x40
	mov r8, #8
_02245A80:
	ldr r1, [r7]
	mov r0, r4
	mov r2, r8
	add r1, r1, r6
	bl ov18_02244008
	ldr r1, [r7]
	add r6, r6, #0x400
	add r1, r1, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x800]
	cmp r5, #2
	blt _02245A80
	ldr r1, _02245ADC @ =ov18_02245AE0
	mov r0, #1
	mov r2, #0
	mov r3, #0xc8
	bl ov18_02246304
	ldr r1, _02245AD8 @ =0x022533E8
	ldr r1, [r1]
	str r0, [r1, #0x808]
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02245AD4: .4byte 0x0000080C
_02245AD8: .4byte 0x022533E8
_02245ADC: .4byte ov18_02245AE0
	arm_func_end ov18_02245A44

	arm_func_start ov18_02245AE0
ov18_02245AE0: @ 0x02245AE0
	push {r3, lr}
	ldr r0, _02245B24 @ =0x022533E8
	mov r1, #0x800
	ldr r0, [r0]
	bl FUN_020C2C54
	ldr r0, _02245B24 @ =0x022533E8
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x400
	bl FUN_020C0210
	ldr r0, _02245B24 @ =0x022533E8
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x400
	add r0, r0, #0x400
	bl FUN_020C0264
	pop {r3, pc}
	.align 2, 0
_02245B24: .4byte 0x022533E8
	arm_func_end ov18_02245AE0

	arm_func_start ov18_02245B28
ov18_02245B28: @ 0x02245B28
	push {r3, lr}
	ldr r1, _02245B4C @ =0x022533E8
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1, #0x808]
	bl ov18_022463CC
	ldr r0, _02245B50 @ =0x022533E8
	bl ov18_0224508C
	pop {r3, pc}
	.align 2, 0
_02245B4C: .4byte 0x022533E8
_02245B50: .4byte 0x022533E8
	arm_func_end ov18_02245B28

	arm_func_start ov18_02245B54
ov18_02245B54: @ 0x02245B54
	ldr r1, _02245B6C @ =0x022533E8
	ldr ip, _02245B70 @ =ov18_022440BC
	ldr r1, [r1]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x800]
	bx ip
	.align 2, 0
_02245B6C: .4byte 0x022533E8
_02245B70: .4byte ov18_022440BC
	arm_func_end ov18_02245B54

	arm_func_start ov18_02245B74
ov18_02245B74: @ 0x02245B74
	mov r1, r0
	ldr r3, [r1]
	ldr r0, _02245BB4 @ =0xC1FFFCFF
	ldr r2, _02245BB8 @ =0x022533E8
	and r0, r3, r0
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r3, [r2]
	mov r2, #0
	add r0, r3, #0x400
	cmp r1, r0
	movhs r2, #1
	add r0, r3, r2, lsl #2
	ldr ip, _02245BBC @ =ov18_02244064
	ldr r0, [r0, #0x800]
	bx ip
	.align 2, 0
_02245BB4: .4byte 0xC1FFFCFF
_02245BB8: .4byte 0x022533E8
_02245BBC: .4byte ov18_02244064
	arm_func_end ov18_02245B74

	arm_func_start ov18_02245BC0
ov18_02245BC0: @ 0x02245BC0
	ldr r2, _02245BD4 @ =0x022533E8
	ldr r2, [r2]
	add r0, r2, r0, lsl #10
	add r0, r0, r1, lsl #3
	bx lr
	.align 2, 0
_02245BD4: .4byte 0x022533E8
	arm_func_end ov18_02245BC0

	arm_func_start ov18_02245BD8
ov18_02245BD8: @ 0x02245BD8
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r0, #0x340
	mov r1, #4
	bl ov18_02245068
	ldr r4, _02245C94 @ =0x022533EC
	mov sb, #0
	mov sl, sb
	str r0, [r4]
	mov r8, #0x20
	mov r7, #0xc
	mov r6, #0x300
	mov r5, #0x400
_02245C08:
	ldr r1, [r4]
	mov r0, r8
	mov r2, r7
	add r1, r1, sl
	bl ov18_02244008
	ldr r1, [r4]
	add r1, r1, sl
	str r0, [r1, #0x19c]
	bl ov18_02245974
	ldr r1, [r4]
	add r1, r1, sl
	str r0, [r1, #0x198]
	ldr r0, [r4]
	add r0, r0, sl
	add r0, r0, #0x100
	strh r6, [r0, #0x88]
	ldr r0, [r4]
	add r0, r0, sl
	add r0, r0, #0x100
	strh r5, [r0, #0x94]
	ldr r0, [r4]
	add r1, r0, sl
	ldr r0, [r1, #0x198]
	add r1, r1, #0x180
	bl ov18_02245A34
	ldr r0, [r4]
	add r1, r0, sl
	ldr r0, [r1, #0x198]
	add r1, r1, #0x18c
	bl ov18_02245A24
	add sb, sb, #1
	cmp sb, #2
	add sl, sl, #0x1a0
	blt _02245C08
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02245C94: .4byte 0x022533EC
	arm_func_end ov18_02245BD8

	arm_func_start ov18_02245C98
ov18_02245C98: @ 0x02245C98
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r0
	mov r0, #0x1a0
	mul sb, r5, r0
	ldr r0, _02245E0C @ =0x022533EC
	mov r6, r1
	ldr r0, [r0]
	mov sl, r2
	add r0, r0, sb
	ldr r0, [r0, #0x19c]
	mov r4, r3
	bl ov18_022440BC
	add r1, r6, #3
	bic r1, r1, #3
	mov r6, r0
	asr r8, r1, #2
	mov r0, #1
	strh r8, [r6, #0xa]
	bl FUN_020C164C
	mov r7, r0
	cmp sl, #0
	mov r0, #0x1a0
	beq _02245D74
	ldr r1, _02245E0C @ =0x022533EC
	ldr r1, [r1]
	mla r0, r5, r0, r1
	add r5, r0, #0x180
	add r0, r0, #0x18c
	cmp r5, r0
	beq _02245D54
	add r0, r1, sb
	add r1, r0, #0x18c
_02245D18:
	ldr r0, [r5, #4]
	ldrh sl, [r5, #8]
	ldrh r3, [r5, #0xa]
	ldrh r2, [r0, #8]
	add sl, sl, r3
	add r3, sl, r8
	cmp r3, r2
	bgt _02245D48
	mov r1, r6
	strh sl, [r6, #8]
	bl ov18_022459F4
	b _02245D54
_02245D48:
	mov r5, r0
	cmp r0, r1
	bne _02245D18
_02245D54:
	ldr r0, _02245E0C @ =0x022533EC
	ldr r0, [r0]
	add r0, r0, sb
	add r0, r0, #0x18c
	cmp r5, r0
	bne _02245DF4
	bl FUN_020C42A8
	b _02245DF4
_02245D74:
	ldr r1, _02245E0C @ =0x022533EC
	ldr r1, [r1]
	mla r0, r5, r0, r1
	add r5, r0, #0x18c
	add r0, r0, #0x180
	cmp r5, r0
	beq _02245DD8
	add r0, r1, sb
	add r0, r0, #0x180
_02245D98:
	ldr sl, [r5]
	ldrh r3, [r5, #8]
	ldrh r2, [sl, #8]
	ldrh r1, [sl, #0xa]
	sub r3, r3, r8
	add r1, r2, r1
	cmp r3, r1
	blt _02245DCC
	mov r0, r5
	mov r1, r6
	strh r3, [r6, #8]
	bl ov18_022459F4
	b _02245DD8
_02245DCC:
	mov r5, sl
	cmp sl, r0
	bne _02245D98
_02245DD8:
	ldr r0, _02245E0C @ =0x022533EC
	ldr r0, [r0]
	add r0, r0, sb
	add r0, r0, #0x180
	cmp r5, r0
	bne _02245DF4
	bl FUN_020C42A8
_02245DF4:
	ldrh r1, [r6, #8]
	mov r0, r7
	str r1, [r4]
	bl FUN_020C161C
	mov r0, r6
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02245E0C: .4byte 0x022533EC
	arm_func_end ov18_02245C98

	arm_func_start ov18_02245E10
ov18_02245E10: @ 0x02245E10
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov18_022459BC
	ldr r0, _02245E4C @ =0x022533EC
	ldr r1, [r0]
	add r0, r1, #0x1a0
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x1a0
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x19c]
	mov r1, r5
	bl ov18_02244064
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245E4C: .4byte 0x022533EC
	arm_func_end ov18_02245E10

	arm_func_start ov18_02245E50
ov18_02245E50: @ 0x02245E50
	cmp r1, #0
	mov r3, #0
	ble _02245E74
_02245E5C:
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _02245E74
	add r3, r3, #1
	cmp r3, r1
	blt _02245E5C
_02245E74:
	mov r0, r3
	bx lr
	arm_func_end ov18_02245E50

	arm_func_start ov18_02245E7C
ov18_02245E7C: @ 0x02245E7C
	push {r3, lr}
	bl FUN_020BEEA0
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1]
	bl FUN_020BEEB4
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #4]
	bl FUN_020BEEC8
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #8]
	bl FUN_020BEEEC
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0xc]
	bl FUN_020BEF10
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x10]
	bl FUN_020BEF24
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x14]
	bl FUN_020BEF38
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x18]
	bl FUN_020BEF74
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x1c]
	bl FUN_020BEF88
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x20]
	bl FUN_020BEF9C
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x24]
	bl FUN_020BEFC4
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x28]
	bl FUN_020BEF4C
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x2c]
	bl FUN_020BEF60
	ldr r1, _02245F2C @ =0x022533F0
	str r0, [r1, #0x30]
	ldr r0, [r1, #0x2c]
	bl FUN_020BE984
	bl ov18_02246038
	pop {r3, pc}
	.align 2, 0
_02245F2C: .4byte 0x022533F0
	arm_func_end ov18_02245E7C

	arm_func_start ov18_02245F30
ov18_02245F30: @ 0x02245F30
	push {r4, lr}
	bl FUN_020BEEA0
	bl FUN_020BEEB4
	bl FUN_020BEF74
	bl FUN_020BEF88
	bl ov18_02246038
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0]
	bl FUN_020BE004
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #4]
	bl FUN_020BE294
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #8]
	bl FUN_020BE3E4
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0xc]
	bl FUN_020BE4E4
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x10]
	bl FUN_020BE590
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x14]
	bl FUN_020BE768
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x18]
	bl FUN_020BE850
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x1c]
	bl FUN_020BEA50
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x20]
	bl FUN_020BEAF8
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x24]
	bl FUN_020BEB68
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x28]
	bl FUN_020BEBE8
	ldr r0, _0224602C @ =0x022533F0
	ldr r0, [r0, #0x30]
	bl FUN_020BEA30
	mov r3, #0
	ldr r2, _02246030 @ =0x04000050
	ldr r0, _02246034 @ =0x04001014
	strh r3, [r2]
	add r1, r2, #0x1000
	strh r3, [r1]
	str r3, [r2, #-0x40]
	str r3, [r2, #-0x3c]
	str r3, [r2, #-0x38]
	str r3, [r2, #-0x34]
	str r3, [r2, #0xfc0]
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	bl FUN_020C3D98
	mov r4, r0
	mov r0, #1
	bl FUN_020CB65C
	mov r0, r4
	bl FUN_020C3DAC
	pop {r4, pc}
	.align 2, 0
_0224602C: .4byte 0x022533F0
_02246030: .4byte 0x04000050
_02246034: .4byte 0x04001014
	arm_func_end ov18_02245F30

	arm_func_start ov18_02246038
ov18_02246038: @ 0x02246038
	push {r3, lr}
	ldr r0, _022460AC @ =0x000001F3
	bl FUN_020BEA30
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0x40000
	bl FUN_020C4BB8
	ldr r1, _022460B0 @ =0x06880000
	mov r0, #0
	mov r2, #0x24000
	bl FUN_020C4BB8
	bl FUN_020BEF60
	mov r0, #0x200
	mov r1, #0x7000000
	mov r2, #0x400
	bl FUN_020C4BB8
	mov r0, #0
	mov r1, #0x5000000
	mov r2, #0x400
	bl FUN_020C4BB8
	mov r0, #0x200
	ldr r1, _022460B4 @ =0x07000400
	mov r2, #0x400
	bl FUN_020C4BB8
	mov r0, #0
	ldr r1, _022460B8 @ =0x05000400
	mov r2, #0x400
	bl FUN_020C4BB8
	pop {r3, pc}
	.align 2, 0
_022460AC: .4byte 0x000001F3
_022460B0: .4byte 0x06880000
_022460B4: .4byte 0x07000400
_022460B8: .4byte 0x05000400
	arm_func_end ov18_02246038

	arm_func_start ov18_022460BC
ov18_022460BC: @ 0x022460BC
	push {r3, lr}
	add r0, sp, #0
	bl FUN_020CB750
	cmp r0, #0
	popne {r3, pc}
	ldr r0, [sp]
	cmp r0, #0xf
	popeq {r3, pc}
	mov r0, #0xf
	bl FUN_020CB6E0
	pop {r3, pc}
	arm_func_end ov18_022460BC

	arm_func_start ov18_022460E8
ov18_022460E8: @ 0x022460E8
	ldr ip, _022460F4 @ =FUN_020CB6E0
	mov r0, #1
	bx ip
	.align 2, 0
_022460F4: .4byte FUN_020CB6E0
	arm_func_end ov18_022460E8

	arm_func_start ov18_022460F8
ov18_022460F8: @ 0x022460F8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0x80
	mov r1, #4
	bl ov18_02245068
	mov r8, #0
	ldr r4, _02246204 @ =0x02253424
	ldr sb, _02246208 @ =0x0224973C
	mov sl, r8
	str r0, [r4]
	mov r7, r8
	mov r6, #0xff
	mov r5, #1
	mov fp, #0x14
_0224612C:
	ldr r0, [r4]
	ldrb r2, [sb]
	add r0, r0, r8, lsl #6
	mov r1, #4
	str r2, [r0, #0x34]
	ldrb r2, [sb]
	mul r0, r2, fp
	bl ov18_02245068
	ldr r1, [r4]
	mov r2, #0x14
	add r1, r1, r8, lsl #6
	str r0, [r1, #0x3c]
	ldr r1, [r4]
	ldrb r0, [sb]
	add r1, r1, r8, lsl #6
	ldr r1, [r1, #0x3c]
	bl ov18_02244008
	ldr r1, [r4]
	str r0, [r1, r8, lsl #6]
	ldrb r0, [sb], #1
	bl ov18_02243FD4
	ldr r1, [r4]
	add r1, r1, r8, lsl #6
	str r0, [r1, #4]
	bl ov18_02245974
	ldr r1, [r4]
	add r1, r1, r8, lsl #6
	str r0, [r1, #8]
	ldr r0, [r4]
	add r0, r0, r8, lsl #6
	strb r7, [r0, #0x1c]
	ldr r0, [r4]
	add r0, r0, r8, lsl #6
	strb r6, [r0, #0x30]
	ldr r1, [r4]
	add r0, r1, r8, lsl #6
	add r1, r1, sl
	ldr r0, [r0, #8]
	add r1, r1, #0xc
	bl ov18_02245A34
	ldr r1, [r4]
	add r0, r1, r8, lsl #6
	add r1, r1, sl
	ldr r0, [r0, #8]
	add r1, r1, #0x20
	bl ov18_02245A24
	ldr r0, [r4]
	add sl, sl, #0x40
	add r0, r0, r8, lsl #6
	add r8, r8, #1
	strb r5, [r0, #0x38]
	cmp r8, #2
	blt _0224612C
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02246204: .4byte 0x02253424
_02246208: .4byte 0x0224973C
	arm_func_end ov18_022460F8

	arm_func_start ov18_0224620C
ov18_0224620C: @ 0x0224620C
	push {r3, r4, r5, lr}
	ldr r4, _0224624C @ =0x02253424
	mov r5, #0
_02246218:
	ldr r0, [r4]
	add r0, r0, r5, lsl #6
	ldr r0, [r0, #8]
	bl ov18_022459A0
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #6]
	bl ov18_02244048
	add r5, r5, #1
	cmp r5, #2
	blt _02246218
	ldr r0, _02246250 @ =0x02253424
	bl ov18_0224508C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224624C: .4byte 0x02253424
_02246250: .4byte 0x02253424
	arm_func_end ov18_0224620C

	arm_func_start ov18_02246254
ov18_02246254: @ 0x02246254
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02246300 @ =0x02253424
	mov r6, r0
	ldr r0, [r5]
	add r2, r0, r6, lsl #6
	ldrb r1, [r2, #0x38]
	cmp r1, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r4, [r2, #0x10]
	add r1, r2, #0x20
	cmp r4, r1
	beq _022462AC
_02246284:
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r0, r4
	blx r2
	ldr r0, [r5]
	ldr r4, [r4, #4]
	add r1, r0, r6, lsl #6
	add r1, r1, #0x20
	cmp r4, r1
	bne _02246284
_022462AC:
	add r1, r0, r6, lsl #6
	ldr r1, [r1, #0x34]
	lsl r4, r6, #6
	mov r5, #0
	cmp r1, #0
	pople {r3, r4, r5, r6, r7, pc}
	ldr r7, _02246300 @ =0x02253424
_022462C8:
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl ov18_022440BC
	movs r1, r0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov18_022463D8
	ldr r0, [r7]
	add r5, r5, #1
	add r1, r4, r0
	ldr r1, [r1, #0x34]
	cmp r5, r1
	blt _022462C8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02246300: .4byte 0x02253424
	arm_func_end ov18_02246254

	arm_func_start ov18_02246304
ov18_02246304: @ 0x02246304
	push {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl ov18_02246318
	pop {r3, pc}
	arm_func_end ov18_02246304

	arm_func_start ov18_02246318
ov18_02246318: @ 0x02246318
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, _022463A0 @ =0x02253424
	mov r7, r0
	ldr r0, [r4]
	mov r8, r1
	ldr r0, [r0, r7, lsl #6]
	mov r5, r2
	mov r6, r3
	bl ov18_022440BC
	mov r4, r0
	str r8, [r4, #8]
	str r5, [r4, #0xc]
	ldrb r1, [sp, #0x18]
	strb r6, [r4, #0x10]
	mov r0, #1
	strb r1, [r4, #0x11]
	bl FUN_020C164C
	ldr r1, _022463A0 @ =0x02253424
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, r7, lsl #6
	ldr r0, [r0, #0x10]
_02246370:
	ldrb r1, [r0, #0x10]
	cmp r6, r1
	bhs _02246388
	mov r1, r4
	bl ov18_022459F4
	b _02246390
_02246388:
	ldr r0, [r0, #4]
	b _02246370
_02246390:
	mov r0, r5
	bl FUN_020C161C
	mov r0, r4
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022463A0: .4byte 0x02253424
	arm_func_end ov18_02246318

	arm_func_start ov18_022463A4
ov18_022463A4: @ 0x022463A4
	str r1, [r0, #8]
	bx lr
	arm_func_end ov18_022463A4

	arm_func_start ov18_022463AC
ov18_022463AC: @ 0x022463AC
	ldr r2, _022463C4 @ =0x02253424
	ldr ip, _022463C8 @ =ov18_02244064
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_022463C4: .4byte 0x02253424
_022463C8: .4byte ov18_02244064
	arm_func_end ov18_022463AC

	arm_func_start ov18_022463CC
ov18_022463CC: @ 0x022463CC
	ldr ip, _022463D4 @ =ov18_022463D8
	bx ip
	.align 2, 0
_022463D4: .4byte ov18_022463D8
	arm_func_end ov18_022463CC

	arm_func_start ov18_022463D8
ov18_022463D8: @ 0x022463D8
	push {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0x11]
	mov r5, r0
	cmp r1, #0
	beq _022463F8
	add r0, r4, #0xc
	bl ov18_0224508C
_022463F8:
	mov r0, r4
	bl ov18_022459BC
	ldr r0, _02246418 @ =0x02253424
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, r5, lsl #6]
	bl ov18_02244064
	pop {r3, r4, r5, pc}
	.align 2, 0
_02246418: .4byte 0x02253424
	arm_func_end ov18_022463D8

	arm_func_start ov18_0224641C
ov18_0224641C: @ 0x0224641C
	ldr r2, _02246430 @ =0x02253424
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	strb r1, [r0, #0x38]
	bx lr
	.align 2, 0
_02246430: .4byte 0x02253424
	arm_func_end ov18_0224641C
	@ 0x02246434
