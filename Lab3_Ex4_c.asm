# i + j <= 0
.data 
i: .word 1
j: .word 2
x: .word 3
y: .word 4
z: .word 5
.text
	lw 	$s1, i			
	lw 	$s2, j	
	lw 	$t1, x
	lw 	$t2, y
	lw	$t3, z		
start: 
	add 	$s3, $s1, $s2		#sum = i + j
	slt 	$t0, $zero, $s3		
	bne 	$t0, $zero, else	
	addi 	$t1, $t1, 1		#x=x+1
	addi 	$t3, $zero, 1		#z=1
	j 	endif			#else
else:	addi 	$t2, $t2, -1		#y=y-1
	add 	$t3, $t3, $t3		#z-2*z
endif:
	