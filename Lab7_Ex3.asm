.data
a: .word 5
b: .word 6
.text
	lw	$s0, a
	lw	$s1, b
push:	addi	$sp, $sp, -8
	sw	$s0, 4($sp)
	sw	$s1, 0($sp)
work:	nop	
	nop	
	nop
pop:	lw	$s0, 0($sp)
	lw	$s1, 4($sp)
	addi	$sp, $sp, 8
