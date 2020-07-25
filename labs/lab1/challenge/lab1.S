.macro SAVE reg, offset
    sd  \reg, \offset*8(sp)
.endm

.macro LOAD reg, offset
    ld  \reg, \offset*8(sp)
.endm
.global _start

_start: 

		auipc	sp,18
		la		t0,__interrupt
        csrw	stvec, t0
        # csrr   zero, stvec, t0

		# ebreak

        # csrs	sstatus, a0,a0=2
		#	时钟中断sstatus.sie=1
        li      t0, 2
        csrrs   zero, sstatus, t0

        #   csrs	sie, a0,a0=32
		#	时钟sie.stime=1
        li      t0, 32
        csrrs   zero, sie, t0

        call set_next_time

loop:
        wfi
        j       loop   


q:
	call 	sbi_shutdown

set_next_time:
        addi    sp,sp,-48
        SAVE    ra,1
        SAVE    a0,2
        SAVE    t0,3
        SAVE    a1,4
        SAVE    a2,5
        SAVE    a7,6

        rdtime	t0
        lui	    a0, 24
        addiw	a0, a0, 1696
        add	    a0, a0, t0
        addi    a7,x0,0
        addi    a1,x0,0
        addi    a2,x0,0
        ecall
        mv      a0,t0
        call print_nums
        LOAD    a7,6
        LOAD    a2,5
        LOAD    a1,4
        LOAD    t0,3
        LOAD    a0,2
        LOAD    ra,1
        addi    sp,sp,48
        ret

print:
	addi 	a1,x0,0
	addi 	a2,x0,0
	addi 	a7,x0,1
	ecall
	ret

sbi_shutdown:
	addi 	a7,x0,8
	ecall

.align 2
__interrupt:

    # 在栈上开辟 Context 所需的空间
    addi    sp, sp, -34*8

    # 保存通用寄存器，除了 x0（固定为 0）
    SAVE    x1, 1
    # 将原来的 sp（sp 又名 x2）写入 2 位置
    addi    x1, sp, 34*8
    SAVE    x1, 2
    # 其他通用寄存器
    SAVE    x3, 3
    SAVE    x4, 4
    SAVE    x5, 5
    SAVE    x6, 6
    SAVE    x7, 7
    SAVE    x8, 8
    SAVE    x9, 9
    SAVE    x10, 10
    SAVE    x11, 11
    SAVE    x12, 12
    SAVE    x13, 13
    SAVE    x14, 14
    SAVE    x15, 15
    SAVE    x16, 16
    SAVE    x17, 17
    SAVE    x18, 18
    SAVE    x19, 19
    SAVE    x20, 20
    SAVE    x21, 21
    SAVE    x22, 22
    SAVE    x23, 23
    SAVE    x24, 24
    SAVE    x25, 25
    SAVE    x26, 26
    SAVE    x27, 27
    SAVE    x28, 28
    SAVE    x29, 29
    SAVE    x30, 30
    SAVE    x31, 31

    # 取出 CSR 并保存
    csrr    s1, sstatus
    csrr    s2, sepc
    SAVE    s1, 32
    SAVE    s2, 33

    jal     interrupt_handle
    li      a0,	53
    call print 

# 从 Context 中恢复所有寄存器，并跳转至 Context 中 sepc 的位置
__restore:
    # 恢复 CSR
    LOAD    s1, 32
    LOAD    s2, 33
    csrw    sstatus, s1
    csrw    sepc, s2

    # 恢复通用寄存器
    LOAD    x1, 1
    LOAD    x3, 3
    LOAD    x4, 4
    LOAD    x5, 5
    LOAD    x6, 6
    LOAD    x7, 7
    LOAD    x8, 8
    LOAD    x9, 9
    LOAD    x10, 10
    LOAD    x11, 11
    LOAD    x12, 12
    LOAD    x13, 13
    LOAD    x14, 14
    LOAD    x15, 15
    LOAD    x16, 16
    LOAD    x17, 17
    LOAD    x18, 18
    LOAD    x19, 19
    LOAD    x20, 20
    LOAD    x21, 21
    LOAD    x22, 22
    LOAD    x23, 23
    LOAD    x24, 24
    LOAD    x25, 25
    LOAD    x26, 26
    LOAD    x27, 27
    LOAD    x28, 28
    LOAD    x29, 29
    LOAD    x30, 30
    LOAD    x31, 31

    # 恢复 sp（又名 x2）这里最后恢复是为了上面可以正常使用 LOAD 宏
    LOAD    x2, 2

	# csrr 	t0, sepc
	# addi	t0,t0,4
	# csrw 	sepc, t0
    sret

interrupt_handle:
	
	addi	sp,sp,-16
	SAVE	ra,1
    SAVE    t3,2

	li		t0,0
	li		t1,12
	la		t2,interrupt
lp:
	lb 		a0,0(t2)
	call 	print
	addi 	t0,t0,1
	addi 	t2,t2,1
	blt		t0,t1,lp

    call    set_next_time

    csrr 	t3, scause
    slli    t3,t3,1
    srli    t3,t3,1
    li      t4, 5
    bne     t3, t4,q

    LOAD    t3,2
	LOAD	ra,1
	addi	sp,sp,16

	ret


print_nums:
    addi    sp,sp,-32
    SAVE    ra,1
    SAVE    t0,2
    SAVE    a0,3
    SAVE    t1,4

    mv      t0,a0
    addi    t1,zero,10
fr:
    rem     a0,t0,t1
    div     t0,t0,t1

    addi    a0,a0,0x30
    call print
    bgt     t0,zero,fr
    call print

    LOAD    t1,4
    LOAD    a0,3
    LOAD    t0,2
    LOAD    ra,1
    addi    sp,sp,32
    ret



.data
	before_interrupt:	.string	"before","\n"
	interrupt:			.string	"interrupt","\n"
	after_interrupt:	.string	"after","\n"
