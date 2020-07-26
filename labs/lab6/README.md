### lab6实验报告
 ##### 一. 实验目的和内容
  - ###### 进程和线程
 
 ##### 二. 操作方法和实验步骤
  - ###### 参考实验指导书中线程和进程的介绍
  - ###### 实验
    * ##### 暂未开始做，先刷一遍熟悉下
 ##### 三. 实验结果和分析
  - ###### 代码流程分析 
      * ###### Thread 线程定义，包括线程运行栈以及所属进程process,类似于tcb的ThreadInner，用来保存线程切换的Context
      * ###### Process 进程定义，包括区分内核态和用户态线程，线程公用的页表MemorySet
      * ###### Processor 处理器来管理线程池，包括当前运行线程，线程调度器记录当前活跃线程，睡眠线程池
      * ###### PROCESSOR是定义了加锁的Processor变量，通过processor.add_thread向shedule活跃线程池加入新的线程。Thread::new根据父进程创建一个运行栈以及Context::new来创建一个线程。当时钟中断发生时候，保存当前线程的Context(Processor.park_current_thread(context))，同时通过调用prepare_next_thread方法让调度器选出next_thread，next_thread执行prepare获得内核栈指针sp(sp=KERNEL_STACK_SIZE - sizeof(Context))，中断处理返回，执行__restore,切换sp到内核栈，同时恢复sscratch内核栈的初始值以及各个寄存器的值，当sret后，sepc值切换同时sp值切换到运行态栈
      * ###### entry.asm内核刚加载后因为内核内存布局已经改变，需要做下临时的页表boot_page_table映射下

 ##### 四. 问题建议以及改进的地方
  - ###### 相比较于ucore的实现，整体思想没什么大的变化，都是需要保存各个寄存器的值，需要一个内核栈来保存
  - ###### 实验题目前先不做，先刷一遍整体对代码有理解在刷吧

