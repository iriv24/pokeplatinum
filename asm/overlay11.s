	.include "macros/function.inc"


	.text

	thumb_func_start ov11_0221F800
ov11_0221F800: @ 0x0221F800
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0221F810
	lsls r1, r0, #2
	ldr r0, _0221F814 @ =0x0221FBD0
	ldr r0, [r0, r1]
	bx lr
_0221F810:
	ldr r0, _0221F818 @ =0x0221F96C
	bx lr
	.align 2, 0
_0221F814: .4byte 0x0221FBD0
_0221F818: .4byte 0x0221F96C
	thumb_func_end ov11_0221F800

	thumb_func_start ov11_0221F81C
ov11_0221F81C: @ 0x0221F81C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r3, #0
	bl ov11_0221F800
	ldr r3, [sp, #0x10]
	adds r1, r0, #0
	movs r0, #0x20
	lsls r3, r3, #0x14
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	lsrs r3, r3, #0x10
	bl FUN_02002FBC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov11_0221F81C

	thumb_func_start ov11_0221F840
ov11_0221F840: @ 0x0221F840
	push {r4, lr}
	sub sp, #8
	movs r1, #0x12
	lsls r1, r1, #0xa
	adds r4, r0, #0
	bl FUN_02018144
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r3, #0x12
	ldr r0, _0221F880 @ =ov11_0221F914
	ldr r1, _0221F884 @ =ov11_0221F930
	lsls r3, r3, #0xa
	str r4, [sp, #4]
	bl FUN_02014014
	adds r4, r0, #0
	bl FUN_02014784
	adds r2, r0, #0
	beq _0221F878
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
_0221F878:
	adds r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0221F880: .4byte ov11_0221F914
_0221F884: .4byte ov11_0221F930
	thumb_func_end ov11_0221F840

	thumb_func_start ov11_0221F888
ov11_0221F888: @ 0x0221F888
	push {r4, lr}
	sub sp, #8
	movs r1, #0x42
	lsls r1, r1, #8
	adds r4, r0, #0
	bl FUN_02018144
	adds r2, r0, #0
	bne _0221F8A0
	add sp, #8
	movs r0, #0
	pop {r4, pc}
_0221F8A0:
	movs r0, #1
	str r0, [sp]
	movs r3, #0x42
	ldr r0, _0221F8D0 @ =ov11_0221F914
	ldr r1, _0221F8D4 @ =ov11_0221F930
	lsls r3, r3, #8
	str r4, [sp, #4]
	bl FUN_02014014
	adds r4, r0, #0
	bl FUN_02014784
	adds r2, r0, #0
	beq _0221F8C8
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
_0221F8C8:
	adds r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0221F8D0: .4byte ov11_0221F914
_0221F8D4: .4byte ov11_0221F930
	thumb_func_end ov11_0221F888

	thumb_func_start ov11_0221F8D8
ov11_0221F8D8: @ 0x0221F8D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02014730
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0201411C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov11_0221F8D8

	thumb_func_start ov11_0221F8F0
ov11_0221F8F0: @ 0x0221F8F0
	push {r3, lr}
	bl FUN_020241B4
	bl FUN_02014680
	cmp r0, #0
	beq _0221F912
	bl FUN_0201469C
	cmp r0, #0
	ble _0221F90E
	bl FUN_020241B4
	blx FUN_020A73C0
_0221F90E:
	bl FUN_020146C0
_0221F912:
	pop {r3, pc}
	thumb_func_end ov11_0221F8F0

	thumb_func_start ov11_0221F914
ov11_0221F914: @ 0x0221F914
	push {r4, lr}
	ldr r3, _0221F92C @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145B4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0221F92C: .4byte 0x02100DEC
	thumb_func_end ov11_0221F914

	thumb_func_start ov11_0221F930
ov11_0221F930: @ 0x0221F930
	push {r4, lr}
	ldr r3, _0221F948 @ =0x02100DF4
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145F4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0221F948: .4byte 0x02100DF4
	thumb_func_end ov11_0221F930
	@ 0x0221F94C
