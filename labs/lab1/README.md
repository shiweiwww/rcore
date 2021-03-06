### lab1实验报告
 ##### 一. 实验目的和内容
  - ###### RISC-V 中断处理的寄存器和相关流程
  - ###### 完成时钟中断和断点中断
  - ###### 汇编下的时钟中断和断点中断，以及debug寄存器sstause,sepc,scause的值
 ##### 二. 操作方法和实验步骤
  - ###### 本实验比较简单，关键是对riscv特权级的理解，参考实验指导书即可完成
  - ###### riscv汇编实现时钟中断以及断点中断
    * ###### 和rust的代码没什么大的区别，主要是csr寄存器的操作以及debug模式下查看相关寄存器的状态，具体见challenge/lab1.S代码
  - ###### 实验
    * ##### 1.如果程序访问不存在的地址，会得到 Exception::LoadFault。模仿捕获 ebreak 和时钟中断的方法，捕获 LoadFault（之后 panic 即可）
      + ###### handle_interrupt中添加Exception::LoadFault即可
    * ##### 2.在处理异常的过程中，如果程序想要非法访问的地址是 0x0，则打印 SUCCESS!
      + ###### LoadFault异常时候stval保存了要访问的内存的值，直接在捕捉Exception::LoadFault异常，判断stval是否为0即可
    * ##### 3.添加或修改少量代码，使得运行时触发这个异常，并且打印出 SUCCESS!。要求：不允许添加或修改任何 unsafe 代码
      + ###### ebreak时候修改context.sepc=0，中断返会执行sret时候即可触发Exception::LoadFault异常
 ##### 三. 实验结果和分析
  - ###### 在 rust_main 函数中，执行 ebreak 命令后至函数结束前，sp 寄存器的值是怎样变化的？
    * ###### ebreak会导致断点中断，由中断处理函数处理异常，中断处理完成后会返回到ebreak这行代码接着执行(sepc中的值是执行ebreak出的pc值，不是下一条，需要+4才行),中断处理函数handle_interrupt之前需要把sp的值保存在context中，中断结束后，进行恢复
  - ###### 如果去掉 rust_main 后的 panic 会发生什么，为什么？
    * ###### 查看下entry.asm,jarl rust_main后，没有任何指令，要是rust_main返回，屏幕卡死，无法正常结束
  - ###### Debug riscv汇编
    * ###### 调试过程中不断的查看csr寄存器的各个状态，起初由于没设置sp指令，执行ld指令的时候sscause状态始终表示LoadFault
    * ###### ebreak 断点中断返会后sepc的值还是ebreak这条指令的值，+4才可以跳出执行下一条指令
    * ###### 理解了始终中断怎么发生的，比较mtime和mtimecmp寄存器的值，当mtime>mtimecmp发生始终中断，注意mtimecmp的值只能通过ecall来设置
 ##### 四. 问题建议以及改进的地方
  - ###### debug汇编花了一天时间，主要是犯了一个低级错误，刚开始没设置sp的值，导致ld一直失败，解决了这bug，感觉riscv汇编不是什么大问题了，同时在看lab1的代码，理解更深了一点，明白为啥这么做，和x86实现中断没什么本质区别
  <!-- - ###### 实验3道题目前先不做，先刷一遍整体对代码有理解在刷吧 -->


