.global _start
_start: 
	auipc	sp,18
	li		t0,0
	li		t1,17
	# li	t1,hello_chr
	la		t2,hello_str
lp:
	lb 		a0,0(t2)
	call 	print
	addi 	t0,t0,1
	addi 	t2,t2,1
	blt		t0,t1,lp
q:
	call 	sbi_shutdown
.data
	hello_chr: 	.byte 72,101,108,108,111,10   #  hello 的ascii码
	hello_str:	.string "Hello",",","rcore","!","\n"
print:
	addi 	a1,x0,0
	addi 	a2,x0,0
	addi 	a7,x0,1
	ecall
	ret

sbi_shutdown:
	addi 	a7,x0,8
	ecall


