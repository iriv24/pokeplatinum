	.include "macros/function.inc"


	.text

	thumb_func_start ov52_022561C0
ov52_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov52_022561D4
	ldr r1, _022561D0 @ =ov52_0225629C
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov52_022561D4
_022561D0: .4byte ov52_0225629C
	thumb_func_end ov52_022561C0

	thumb_func_start ov52_022561D4
ov52_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x24
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov52_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov52_02256260
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	adds r0, r4, #0
	bl FUN_020181C4
_02256212:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .4byte ov52_02256260
	thumb_func_end ov52_022561D4

	thumb_func_start ov52_0225621C
ov52_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x14
	adds r1, r5, #4
	bl ov52_02256694
	cmp r0, #0
	beq _02256248
	movs r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	adds r0, r5, #0
	strb r1, [r5, #2]
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x21
	strb r1, [r0]
	str r4, [r5, #0x18]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02256248:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov52_0225621C

	thumb_func_start ov52_0225624C
ov52_0225624C: @ 0x0225624C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov52_022566EC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov52_0225624C

	thumb_func_start ov52_02256260
ov52_02256260: @ 0x02256260
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #6
	bhs _02256294
	adds r0, r4, #0
	bl ov52_022565EC
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _02256298 @ =0x02256D4C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256294
	adds r0, r4, #0
	bl ov52_0225624C
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x18]
	bl FUN_02254260
_02256294:
	pop {r3, r4, r5, pc}
	nop
_02256298: .4byte 0x02256D4C
	thumb_func_end ov52_02256260

	thumb_func_start ov52_0225629C
ov52_0225629C: @ 0x0225629C
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov52_0225629C

	thumb_func_start ov52_022562A4
ov52_022562A4: @ 0x022562A4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562AC
	b _022562AE
_022562AC:
	movs r1, #5
_022562AE:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov52_022562A4

	thumb_func_start ov52_022562B8
ov52_022562B8: @ 0x022562B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562C8
	cmp r0, #1
	beq _022562D8
	b _022562F2
_022562C8:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022562F2
_022562D8:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov52_022567C8
	cmp r0, #0
	beq _022562F2
	ldr r0, [r4, #0x18]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov52_022562A4
_022562F2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov52_022562B8

	thumb_func_start ov52_022562F8
ov52_022562F8: @ 0x022562F8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225630C
	movs r1, #5
	bl ov52_022562A4
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225630C:
	ldrb r1, [r4, #1]
	cmp r1, #0
	bne _0225635A
	bl ov52_02256554
	cmp r0, #0
	beq _0225635A
	adds r0, r4, #0
	bl ov52_02256684
	cmp r0, #0
	beq _02256354
	ldr r0, [r4, #0x18]
	bl FUN_0225453C
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #3
	bl ov52_022567A4
	ldr r0, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_0203A2C8
	cmp r0, #0
	beq _0225634A
	adds r0, r4, #0
	movs r1, #3
	bl ov52_022562A4
	b _0225635A
_0225634A:
	adds r0, r4, #0
	movs r1, #2
	bl ov52_022562A4
	b _0225635A
_02256354:
	ldr r0, _02256360 @ =0x0000066E
	bl FUN_02254424
_0225635A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02256360: .4byte 0x0000066E
	thumb_func_end ov52_022562F8

	thumb_func_start ov52_02256364
ov52_02256364: @ 0x02256364
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256378
	movs r1, #5
	bl ov52_022562A4
	movs r0, #0
	pop {r4, pc}
_02256378:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256388
	cmp r1, #1
	beq _02256398
	cmp r1, #2
	beq _022563E0
	b _0225642C
_02256388:
	bl ov52_0225664C
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225642C
_02256398:
	bl ov52_02256430
	cmp r0, #0
	beq _022563AC
	adds r0, r4, #0
	movs r1, #4
	bl ov52_022562A4
	movs r0, #0
	pop {r4, pc}
_022563AC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	bhs _022563B6
	adds r0, r0, #1
	str r0, [r4, #0x1c]
_022563B6:
	adds r0, r4, #0
	bl ov52_0225666C
	cmp r0, #0
	beq _0225642C
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	blo _0225642C
	adds r0, r4, #0
	bl ov52_0225659C
	ldr r0, [r4, #0x14]
	movs r1, #6
	bl ov52_022567A4
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225642C
_022563E0:
	bl ov52_02256430
	cmp r0, #0
	bne _022563F2
	adds r0, r4, #0
	bl ov52_02256554
	cmp r0, #0
	beq _0225640C
_022563F2:
	adds r0, r4, #0
	bl ov52_0225667C
	ldr r0, [r4, #0x14]
	movs r1, #2
	bl ov52_022567A4
	adds r0, r4, #0
	movs r1, #1
	bl ov52_022562A4
	movs r0, #0
	pop {r4, pc}
_0225640C:
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x1e
	blo _0225642C
	movs r0, #0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov52_0225659C
	cmp r0, #0
	beq _0225642C
	ldr r0, [r4, #0x14]
	movs r1, #6
	bl ov52_022567A4
_0225642C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov52_02256364

	thumb_func_start ov52_02256430
ov52_02256430: @ 0x02256430
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_0225450C
	cmp r0, #0
	beq _02256442
	movs r0, #1
	pop {r4, pc}
_02256442:
	ldr r0, [r4, #0x18]
	bl FUN_02254534
	cmp r0, #0
	beq _02256450
	movs r0, #1
	pop {r4, pc}
_02256450:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov52_02256430

	thumb_func_start ov52_02256454
ov52_02256454: @ 0x02256454
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256468
	movs r1, #5
	bl ov52_022562A4
	movs r0, #0
	pop {r4, pc}
_02256468:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256478
	cmp r1, #1
	beq _02256482
	cmp r1, #2
	beq _0225649C
	b _022564B4
_02256478:
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
_02256482:
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x3c
	blo _022564B4
	ldr r0, [r4, #0x14]
	movs r1, #4
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022564B4
_0225649C:
	bl ov52_02256554
	cmp r0, #0
	beq _022564B4
	ldr r0, [r4, #0x14]
	movs r1, #2
	bl ov52_022567A4
	adds r0, r4, #0
	movs r1, #1
	bl ov52_022562A4
_022564B4:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov52_02256454

	thumb_func_start ov52_022564B8
ov52_022564B8: @ 0x022564B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022564CC
	movs r1, #5
	bl ov52_022562A4
	movs r0, #0
	pop {r4, pc}
_022564CC:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022564D8
	cmp r1, #1
	beq _022564EC
	b _02256504
_022564D8:
	bl ov52_0225667C
	ldr r0, [r4, #0x14]
	movs r1, #5
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256504
_022564EC:
	bl ov52_02256554
	cmp r0, #0
	beq _02256504
	ldr r0, [r4, #0x14]
	movs r1, #2
	bl ov52_022567A4
	adds r0, r4, #0
	movs r1, #1
	bl ov52_022562A4
_02256504:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov52_022564B8

	thumb_func_start ov52_02256508
ov52_02256508: @ 0x02256508
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225651C
	cmp r1, #1
	beq _02256526
	cmp r1, #2
	beq _02256540
	b _0225654E
_0225651C:
	bl ov52_0225667C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
_02256526:
	adds r0, r4, #0
	bl ov52_02256684
	cmp r0, #0
	beq _0225654E
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl ov52_022567A4
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225654E
_02256540:
	ldr r0, [r4, #0x14]
	bl ov52_022567D4
	cmp r0, #0
	beq _0225654E
	movs r0, #1
	pop {r4, pc}
_0225654E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov52_02256508

	thumb_func_start ov52_02256554
ov52_02256554: @ 0x02256554
	push {r3, lr}
	sub sp, #8
	ldr r0, [r0, #0x18]
	bl FUN_0225450C
	cmp r0, #0
	bne _02256594
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_020227C0
	cmp r0, #0
	beq _02256594
	ldr r0, [sp, #4]
	subs r0, #0x10
	cmp r0, #0xbf
	bhs _0225657A
	movs r1, #1
	b _0225657C
_0225657A:
	movs r1, #0
_0225657C:
	ldr r0, [sp]
	subs r0, #0x10
	cmp r0, #0x9f
	bhs _02256588
	movs r0, #1
	b _0225658A
_02256588:
	movs r0, #0
_0225658A:
	tst r0, r1
	beq _02256594
	add sp, #8
	movs r0, #1
	pop {r3, pc}
_02256594:
	movs r0, #0
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov52_02256554

	thumb_func_start ov52_0225659C
ov52_0225659C: @ 0x0225659C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	ldr r5, _022565E8 @ =0x02256D64
	str r0, [sp]
	str r0, [sp, #4]
_022565AA:
	ldr r0, [r5, #4]
	movs r4, #0
	adds r6, r4, #0
	cmp r0, #0
	bls _022565C6
_022565B4:
	ldr r0, [r5]
	ldrb r0, [r0, r4]
	bl FUN_02034120
	adds r6, r6, r0
	ldr r0, [r5, #4]
	adds r4, r4, #1
	cmp r4, r0
	blo _022565B4
_022565C6:
	ldr r0, [r7, #4]
	cmp r6, r0
	beq _022565D2
	movs r0, #1
	str r6, [r7, #4]
	str r0, [sp]
_022565D2:
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	adds r7, r7, #4
	str r0, [sp, #4]
	cmp r0, #4
	blo _022565AA
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022565E8: .4byte 0x02256D64
	thumb_func_end ov52_0225659C

	thumb_func_start ov52_022565EC
ov52_022565EC: @ 0x022565EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02256648
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02256604: @ jump table
	.2byte _02256648 - _02256604 - 2 @ case 0
	.2byte _0225660C - _02256604 - 2 @ case 1
	.2byte _0225661C - _02256604 - 2 @ case 2
	.2byte _0225663A - _02256604 - 2 @ case 3
_0225660C:
	bl FUN_02037C18
	cmp r0, #0
	beq _02256648
	movs r0, #2
	adds r4, #0x20
	strb r0, [r4]
	pop {r4, pc}
_0225661C:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _02256648
	bl FUN_02037BFC
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #3
	adds r4, #0x20
	strb r0, [r4]
	pop {r4, pc}
_0225663A:
	bl FUN_02035E38
	cmp r0, #0
	bne _02256648
	movs r0, #0
	adds r4, #0x20
	strb r0, [r4]
_02256648:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov52_022565EC

	thumb_func_start ov52_0225664C
ov52_0225664C: @ 0x0225664C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _02256668
	ldr r0, [r4, #0x18]
	bl FUN_02254544
	bl FUN_02037BC0
	movs r0, #1
	adds r4, #0x20
	strb r0, [r4]
_02256668:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov52_0225664C

	thumb_func_start ov52_0225666C
ov52_0225666C: @ 0x0225666C
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _02256678
	movs r0, #1
	bx lr
_02256678:
	movs r0, #0
	bx lr
	thumb_func_end ov52_0225666C

	thumb_func_start ov52_0225667C
ov52_0225667C: @ 0x0225667C
	movs r1, #1
	adds r0, #0x21
	strb r1, [r0]
	bx lr
	thumb_func_end ov52_0225667C

	thumb_func_start ov52_02256684
ov52_02256684: @ 0x02256684
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _02256690
	movs r0, #1
	bx lr
_02256690:
	movs r0, #0
	bx lr
	thumb_func_end ov52_02256684

	thumb_func_start ov52_02256694
ov52_02256694: @ 0x02256694
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	movs r1, #0x60
	bl FUN_02018144
	adds r4, r0, #0
	beq _022566E2
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r5, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x30]
	ldr r2, _022566E8 @ =0x000001CD
	movs r0, #1
	movs r1, #0x1a
	movs r3, #8
	bl FUN_0200B144
	str r0, [r4, #0x58]
	movs r0, #0x60
	movs r1, #8
	bl FUN_02023790
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov52_0225670C
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_022566E2:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_022566E8: .4byte 0x000001CD
	thumb_func_end ov52_02256694

	thumb_func_start ov52_022566EC
ov52_022566EC: @ 0x022566EC
	push {r4, lr}
	adds r4, r0, #0
	beq _0225670A
	ldr r0, [r4, #0x5c]
	bl FUN_020237BC
	ldr r0, [r4, #0x58]
	bl FUN_0200B190
	adds r0, r4, #0
	bl ov52_0225677C
	adds r0, r4, #0
	bl FUN_020181C4
_0225670A:
	pop {r4, pc}
	thumb_func_end ov52_022566EC

	thumb_func_start ov52_0225670C
ov52_0225670C: @ 0x0225670C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	adds r6, r0, #0
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x63
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0xc
	movs r2, #0x61
	movs r3, #0x62
	bl FUN_02255958
	adds r0, r6, #0
	str r0, [sp, #0xc]
	adds r0, #0x44
	ldr r4, _02256778 @ =0x02256DA4
	movs r7, #0
	adds r5, r6, #0
	str r0, [sp, #0xc]
_02256746:
	ldr r0, [r6, #0x30]
	ldr r2, [sp, #0xc]
	adds r1, r4, #0
	bl FUN_02255810
	str r0, [r5, #0x34]
	adds r7, r7, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r7, #4
	blt _02256746
	ldr r0, [r6, #0x38]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r6, #0x3c]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r6, #0x40]
	movs r1, #1
	bl FUN_02255914
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256778: .4byte 0x02256DA4
	thumb_func_end ov52_0225670C

	thumb_func_start ov52_0225677C
ov52_0225677C: @ 0x0225677C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_02256784:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02256790
	ldr r0, [r6, #0x30]
	bl FUN_022558B0
_02256790:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02256784
	adds r6, #0x44
	adds r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov52_0225677C

	thumb_func_start ov52_022567A4
ov52_022567A4: @ 0x022567A4
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022567C4 @ =0x02256DE4
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022567C4: .4byte 0x02256DE4
	thumb_func_end ov52_022567A4

	thumb_func_start ov52_022567C8
ov52_022567C8: @ 0x022567C8
	ldr r3, _022567D0 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022567D0: .4byte FUN_02255130
	thumb_func_end ov52_022567C8

	thumb_func_start ov52_022567D4
ov52_022567D4: @ 0x022567D4
	ldr r3, _022567DC @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022567DC: .4byte FUN_02255154
	thumb_func_end ov52_022567D4

	thumb_func_start ov52_022567E0
ov52_022567E0: @ 0x022567E0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov52_022567E0

	thumb_func_start ov52_022567F4
ov52_022567F4: @ 0x022567F4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022568A8 @ =0x02256D88
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x60
	movs r3, #6
	bl FUN_02006E3C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x5f
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	movs r3, #2
	adds r1, r5, #0
	str r3, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #0xb
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	adds r1, #0x20
	movs r2, #6
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201A9F4
	adds r0, r5, #0
	bl ov52_02256A7C
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _022568AC @ =0x04001000
	ldr r0, _022568B0 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x14]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #4
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r6, #0
	bl ov52_022567E0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_022568A8: .4byte 0x02256D88
_022568AC: .4byte 0x04001000
_022568B0: .4byte 0xFFFFE0FF
	thumb_func_end ov52_022567F4

	thumb_func_start ov52_022568B4
ov52_022568B4: @ 0x022568B4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, #0x20
	bl FUN_0201A8FC
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov52_022568B4

	thumb_func_start ov52_022568D8
ov52_022568D8: @ 0x022568D8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x38]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02255914
	adds r0, r4, #0
	bl ov52_02256A7C
	ldr r0, _02256918 @ =0x00000663
	bl FUN_02254424
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256918: .4byte 0x00000663
	thumb_func_end ov52_022568D8

	thumb_func_start ov52_0225691C
ov52_0225691C: @ 0x0225691C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x38]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x38]
	movs r1, #1
	bl FUN_022558C4
	adds r0, r4, #0
	bl ov52_02256B10
	ldr r0, _02256964 @ =0x00000663
	bl FUN_02254424
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256964: .4byte 0x00000663
	thumb_func_end ov52_0225691C

	thumb_func_start ov52_02256968
ov52_02256968: @ 0x02256968
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x38]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #2
	bl FUN_022558C4
	adds r0, r4, #0
	bl ov52_02256B64
	ldr r0, _022569B0 @ =0x0000066E
	bl FUN_02254424
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022569B0: .4byte 0x0000066E
	thumb_func_end ov52_02256968

	thumb_func_start ov52_022569B4
ov52_022569B4: @ 0x022569B4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x38]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #2
	bl FUN_022558C4
	adds r0, r4, #0
	bl ov52_02256BDC
	ldr r0, _022569FC @ =0x0000066E
	bl FUN_02254424
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022569FC: .4byte 0x0000066E
	thumb_func_end ov52_022569B4

	thumb_func_start ov52_02256A00
ov52_02256A00: @ 0x02256A00
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r6, r0, #0
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x38]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x3c]
	movs r1, #1
	bl FUN_02255914
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_022558C4
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov52_02256C64
	ldr r0, _02256A54 @ =0x00000663
	bl FUN_02254424
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r4, r5, r6, pc}
	nop
_02256A54: .4byte 0x00000663
	thumb_func_end ov52_02256A00

	thumb_func_start ov52_02256A58
ov52_02256A58: @ 0x02256A58
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov52_02256C64
	adds r0, r5, #0
	bl ov52_022567E0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov52_02256A58

	thumb_func_start ov52_02256A7C
ov52_02256A7C: @ 0x02256A7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x20
	movs r1, #4
	bl FUN_0201ADA4
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	movs r1, #0
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r5, #0x5c]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256B0C @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x5c]
	adds r0, #0x20
	bl FUN_0201D78C
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	movs r1, #0xa
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r5, #0x5c]
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r4, r0, #1
	ldr r0, [r5, #0x5c]
	movs r6, #0x40
	bl FUN_02023C5C
	lsls r0, r0, #3
	subs r0, r6, r0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256B0C @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x5c]
	adds r0, #0x20
	adds r3, r4, #0
	bl FUN_0201D78C
	adds r5, #0x20
	adds r0, r5, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02256B0C: .4byte 0x00010804
	thumb_func_end ov52_02256A7C

	thumb_func_start ov52_02256B10
ov52_02256B10: @ 0x02256B10
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x20
	movs r1, #4
	bl FUN_0201ADA4
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #1
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r4, #0x5c]
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256B60 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x20
	bl FUN_0201D78C
	adds r4, #0x20
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	nop
_02256B60: .4byte 0x00010804
	thumb_func_end ov52_02256B10

	thumb_func_start ov52_02256B64
ov52_02256B64: @ 0x02256B64
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x20
	movs r1, #4
	bl FUN_0201ADA4
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #2
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r4, #0x5c]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256BD8 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x20
	bl FUN_0201D78C
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #3
	bl FUN_0200B1B8
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256BD8 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x20
	movs r3, #0x10
	bl FUN_0201D78C
	adds r4, #0x20
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02256BD8: .4byte 0x00010804
	thumb_func_end ov52_02256B64

	thumb_func_start ov52_02256BDC
ov52_02256BDC: @ 0x02256BDC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x20
	movs r1, #4
	bl FUN_0201ADA4
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #2
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r4, #0x5c]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256C60 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x20
	bl FUN_0201D78C
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #4
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r4, #0x5c]
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256C60 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x20
	bl FUN_0201D78C
	adds r4, #0x20
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	nop
_02256C60: .4byte 0x00010804
	thumb_func_end ov52_02256BDC

	thumb_func_start ov52_02256C64
ov52_02256C64: @ 0x02256C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, #0x20
	movs r1, #4
	bl FUN_0201ADA4
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	movs r1, #5
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r5, #0x5c]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xc0
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256D24 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x5c]
	adds r0, #0x20
	bl FUN_0201D78C
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r5, #0
	str r0, [sp, #0x14]
	adds r0, #0x20
	ldr r6, _02256D28 @ =0x02256D84
	movs r4, #0x20
	str r0, [sp, #0x14]
_02256CB8:
	ldrb r1, [r6]
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	bl FUN_0200B1B8
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256D24 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x5c]
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #1
	str r0, [sp]
	movs r2, #2
	ldr r0, [r5, #0x5c]
	ldr r1, [r7]
	adds r3, r2, #0
	bl FUN_020238A0
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256D24 @ =0x00010804
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x5c]
	movs r3, #0xa0
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r0, r0, #1
	adds r4, #0x10
	adds r7, r7, #4
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02256CB8
	adds r5, #0x20
	adds r0, r5, #0
	bl FUN_0201ACCC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256D24: .4byte 0x00010804
_02256D28: .4byte 0x02256D84
	thumb_func_end ov52_02256C64
	@ 0x02256D2C
