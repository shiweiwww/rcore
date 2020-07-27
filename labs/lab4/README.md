### lab4实验报告
 ##### 一. 实验目的和内容
  - ###### 进程和线程
 
 ##### 二. 操作方法和实验步骤
  - ###### 参考实验指导书中线程和进程的介绍
  - ###### 实验
    * ##### 原理：线程切换之中，页表是何时切换的？页表的切换会不会影响程序 / 操作系统的运行？为什么？
      + ###### 页表是在页表是在 Process::prepare_next_thread() 中调用 Thread::prepare()换入的。不会，每个线程的父进程都有一套单独的页表，包含了内核映射的页表和进程映射的页表
    * ##### 设计：如果不使用 sscratch 提供内核栈，而是像原来一样，遇到中断就直接将上下文压栈，请举出（思路即可，无需代码）：
        + #####  一种情况不会出现问题
        + #####  一种情况导致异常无法处理（指无法进入 handle_interrupt）
        + #####  一种情况导致产生嵌套异常（指第二个异常能够进行到调用 handle_interrupt，不考虑后续执行情况）
        + #####  一种情况导致一个用户进程（先不考虑是怎么来的）可以将自己变为内核进程，或以内核态执行自己的代码
      + ###### 情况1,只有一个线程运行，sp和sscratch切来切去，都是同一个
      + ###### 情况2,sp的丢失，导致没运行栈
      + ###### 情况3,两个线程切换时候，线程切换成功了，但是sp还是以前的程序的，导致LoadFault
      + ###### 情况4,内核和线程共用一套栈，导致线程可以修改内核的寄存器值，相当于线程在执行内核线程
    * ##### 实验：当键盘按下 Ctrl + C 时，操作系统应该能够捕捉到中断。实现操作系统捕获该信号并结束当前运行的线程（你可能需要阅读一点在实验指导中没有提到的代码）
      + ##### 开启外部中断,比较用Signal去实现更合适，查了下不知道怎么下手，只能键盘中断去捕捉Ctrl+C的方式，见如下代码
      ```rust
        //interrupt/handler.rs 
        // 开启外部中断使能
        sie::set_sext();
        // 在 OpenSBI 中开启外部中断
        *PhysicalAddress(0x0c00_2080).deref_kernel() = 1u32 << 10;
        // 在 OpenSBI 中开启串口
        *PhysicalAddress(0x1000_0004).deref_kernel() = 0x0bu8;
        *PhysicalAddress(0x1000_0001).deref_kernel() = 0x01u8;
        // 其他一些外部中断相关魔数
        *PhysicalAddress(0x0C00_0028).deref_kernel() = 0x07u32;
        *PhysicalAddress(0x0C20_1000).deref_kernel() = 0u32;
        ....
        ....
        //键盘中断处理
        Trap::Interrupt(Interrupt::SupervisorExternal) => supervisor_external(context)
        //supervisor_external处理函数
        /// 处理外部中断，只实现了键盘输入
        fn supervisor_external(context: &mut Context) -> *mut Context {
            let mut c = console_getchar();
            if c==3{
                // PROCESSOR.get().kill_current_thread();
                println!("thread id {} is killed",PROCESSOR.get().current_thread().id);
                PROCESSOR.get().current_thread().as_ref().inner().dead = true;
                unsafe { llvm_asm!("ebreak" :::: "volatile") };
            }
            context
        }                
      ```



 ##### 三. 实验结果和分析
  - ###### 代码流程分析 
      * ###### Thread 线程定义，包括线程运行栈以及所属进程process,类似于tcb的ThreadInner，用来保存线程切换的Context
      * ###### Process 进程定义，包括区分内核态和用户态线程，线程公用的页表MemorySet
      * ###### Processor 处理器来管理线程池，包括当前运行线程，线程调度器记录当前活跃线程，睡眠线程池
      * ###### PROCESSOR是定义了加锁的Processor变量，通过processor.add_thread向shedule活跃线程池加入新的线程。Thread::new根据父进程创建一个运行栈以及Context::new来创建一个线程。当时钟中断发生时候，保存当前线程的Context(Processor.park_current_thread(context))，接着调用prepare_next_thread方法让调度器选出next_thread，next_thread执行prepare获得内核栈指针sp(sp=KERNEL_STACK_SIZE - sizeof(Context))，中断处理返回，执行__restore,切换sp到内核栈，同时恢复sscratch内核栈的初始值以及各个寄存器的值，当sret后，sepc值切换同时sp值切换到运行态栈
      * ###### entry.asm内核刚加载后因为内核内存布局已经改变，需要做下临时的页表boot_page_table映射下

 ##### 四. 问题建议以及改进的地方
  - ###### 相比较于ucore的实现，整体思想没什么大的变化，都是需要保存各个寄存器的值，需要一个内核栈来保存
  - ###### 实验题目前先不做，先刷一遍整体对代码有理解在刷吧

