	.include "macros/function.inc"


	.text

	thumb_func_start ov55_022561C0
ov55_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov55_022561D4
	ldr r1, _022561D0 @ =ov55_02256288
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov55_022561D4
_022561D0: .4byte ov55_02256288
	thumb_func_end ov55_022561C0

	thumb_func_start ov55_022561D4
ov55_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #8
	movs r1, #0x10
	str r2, [sp]
	adds r5, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256214
	ldr r2, [sp]
	adds r1, r7, #0
	adds r3, r5, #0
	bl ov55_0225621C
	cmp r0, #0
	beq _0225620E
	ldr r0, _02256218 @ =ov55_02256254
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	cmp r0, #0
	beq _0225620E
	str r4, [r6]
	str r5, [r4, #4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620E:
	adds r0, r4, #0
	bl FUN_020181C4
_02256214:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256218: .4byte ov55_02256254
	thumb_func_end ov55_022561D4

	thumb_func_start ov55_0225621C
ov55_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #8
	adds r1, r5, #4
	bl ov55_0225632C
	cmp r0, #0
	beq _0225623C
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0xc]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225623C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov55_0225621C

	thumb_func_start ov55_02256240
ov55_02256240: @ 0x02256240
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl ov55_02256360
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov55_02256240

	thumb_func_start ov55_02256254
ov55_02256254: @ 0x02256254
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _02256280
	lsls r2, r1, #2
	ldr r1, _02256284 @ =0x02256484
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256280
	adds r0, r4, #0
	bl ov55_02256240
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0xc]
	bl FUN_02254260
_02256280:
	pop {r3, r4, r5, pc}
	nop
_02256284: .4byte 0x02256484
	thumb_func_end ov55_02256254

	thumb_func_start ov55_02256288
ov55_02256288: @ 0x02256288
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov55_02256288

	thumb_func_start ov55_02256290
ov55_02256290: @ 0x02256290
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256298
	b _0225629A
_02256298:
	movs r1, #2
_0225629A:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov55_02256290

	thumb_func_start ov55_022562A4
ov55_022562A4: @ 0x022562A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562B4
	cmp r0, #1
	beq _022562C4
	b _022562DE
_022562B4:
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov55_02256378
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022562DE
_022562C4:
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov55_0225639C
	cmp r0, #0
	beq _022562DE
	ldr r0, [r4, #0xc]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov55_02256290
_022562DE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov55_022562A4

	thumb_func_start ov55_022562E4
ov55_022562E4: @ 0x022562E4
	push {r3, lr}
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _022562F2
	movs r1, #2
	bl ov55_02256290
_022562F2:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov55_022562E4

	thumb_func_start ov55_022562F8
ov55_022562F8: @ 0x022562F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256308
	cmp r0, #1
	beq _02256318
	b _02256326
_02256308:
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov55_02256378
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256326
_02256318:
	ldr r0, [r4, #8]
	bl ov55_022563A8
	cmp r0, #0
	beq _02256326
	movs r0, #1
	pop {r4, pc}
_02256326:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov55_022562F8

	thumb_func_start ov55_0225632C
ov55_0225632C: @ 0x0225632C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x30
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225635A
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	movs r0, #8
	str r6, [r4]
	bl FUN_02018340
	str r0, [r4, #4]
	cmp r0, #0
	beq _0225635A
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225635A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov55_0225632C

	thumb_func_start ov55_02256360
ov55_02256360: @ 0x02256360
	push {r4, lr}
	adds r4, r0, #0
	beq _02256376
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02256370
	bl FUN_020181C4
_02256370:
	adds r0, r4, #0
	bl FUN_020181C4
_02256376:
	pop {r4, pc}
	thumb_func_end ov55_02256360

	thumb_func_start ov55_02256378
ov55_02256378: @ 0x02256378
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256398 @ =0x022564AC
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256398: .4byte 0x022564AC
	thumb_func_end ov55_02256378

	thumb_func_start ov55_0225639C
ov55_0225639C: @ 0x0225639C
	ldr r3, _022563A4 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022563A4: .4byte FUN_02255130
	thumb_func_end ov55_0225639C

	thumb_func_start ov55_022563A8
ov55_022563A8: @ 0x022563A8
	ldr r3, _022563B0 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022563B0: .4byte FUN_02255154
	thumb_func_end ov55_022563A8

	thumb_func_start ov55_022563B4
ov55_022563B4: @ 0x022563B4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov55_022563B4

	thumb_func_start ov55_022563C8
ov55_022563C8: @ 0x022563C8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _0225645C @ =0x02256490
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r3, #6
	bl FUN_02006E3C
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #4]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r0, #0x20
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #0xc
	movs r1, #9
	movs r2, #4
	movs r3, #0
	bl FUN_02006E84
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r1]
	movs r2, #6
	bl FUN_02255440
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _02256460 @ =0x04001000
	ldr r0, _02256464 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x10]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #4
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl ov55_022563B4
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0225645C: .4byte 0x02256490
_02256460: .4byte 0x04001000
_02256464: .4byte 0xFFFFE0FF
	thumb_func_end ov55_022563C8

	thumb_func_start ov55_02256468
ov55_02256468: @ 0x02256468
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov55_022563B4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov55_02256468
	@ 0x02256484
