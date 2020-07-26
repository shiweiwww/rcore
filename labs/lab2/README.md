### lab2实验报告
 ##### 一. 实验目的和内容
  - ###### 动态内存分配
  - ###### 物理内存探测
  - ###### 物理页内存管理
 
 
 ##### 二. 操作方法和实验步骤
  - ###### 通过objdump -x 查看kernel_end和lab2中的KERNEL_END_ADDRESS输出对比是一致的
  - ###### 动态内存分配可以根据程序运行时状态修改内存申请的大小，要让内核中支持动态内存分配，必须实现rust的Trait GlobalAlloc的alloc和dealloc方法，实验中是直接使用的已开发的包buddy_system_allocator，更具体的实现参考[博客](https://os.phil-opp.com/kernel-heap/)
  - ###### riscv中opensi自动完成包括物理内存在内的各外设的扫描，并将结果以DTB格式保存，其地址保存在a1寄存器中。QEMU默认的DRAM物理内存地址范围为[0x80000000, 0x88000000)，通过lds脚本中的kernel_end即可知道内核结束的地址，对整个内存分布有了初步了解
  - ###### 为了更好的管理物理内存减少外碎片提高内存使用率，以4kb为一页，代码中FrameTracker用来进行物理页管理和FrameAllocator分配器用来进行物理页的分配和回收，FrameAllocator<T: Allocator>中的泛型T要求实现Allocator trait,而Allocator trait可以看成是页面分配算法的抽象，通过impl Allocator来实现物理页分配算法，如线段树等
  - ###### 汇编练习没什么大的改变，只不过打印了下kernel_end的地址
  - ###### 实验
    * ##### 1.algorithm/src/allocator 下有一个 Allocator trait，我们之前用它实现了物理页面分配。这个算法的时间和空间复杂度是什么？
      + ###### 时间复杂度为O(1),每次分配一个页面只需要从空闲物理块中找到一块分配即可，空间复杂度为O(n)，需要维护n个空闲物理块
    * ##### 2.二选一：实现基于线段树的物理页面分配算法（不需要考虑合并分配）；或尝试修改 FrameAllocator，令其使用未被分配的页面空间（而不是全局变量）来存放页面使用状态
      + ###### 对栈分配算法StackedAllocator，需要维护一个Vec的数组来记录空闲物理页，把这个Vec直接替换成为分配的物理页就行，构造静态链表,具体见如下代码
      ```rust
       //链表的构造 os/src/memory/frame/allocator.rs 
       //建立链表，链表节点为PhysicalPageNumber-PhysicalAddress为一个node，PhysicalAddress相当于next指针，指向链接的下一个PhysicalPageNumber的值
        let mut index = 1;
        let len = range.into().len();
        for item in range.into().iter(){
            let y:usize = PhysicalAddress::from(item).into();
            let ptr = y as *mut usize;
            unsafe {*ptr = index;}
            index += 1;

        }
      ```
      ```rust
        //stackAllocator alloc和dealloc方法的实现
        pub struct StackedAllocator {
            // list: Vec<(usize, usize)>,
            base:usize,
            head:PhysicalPageNumber,//链表头指针
            capacity:usize
        }

        impl Allocator for StackedAllocator {
            fn new(base:usize,head:PhysicalPageNumber,capacity: usize) -> Self {
                Self {
                    base:base,
                    head: head,
                    capacity:capacity
                    // list: vec![(0, capacity)],
                }
            }
            
            fn alloc(&mut self) -> Option<usize> {
                let index:usize=self.head.into();
                let pa:usize = PhysicalAddress::from(self.head).into();
                let ptr = pa as *mut usize;
                let v= unsafe{*ptr};
                self.head = PhysicalPageNumber::from(self.base+v);
                if index-self.base>self.capacity{
                    None
                }else{
                    Some(index-self.base)  
                }
                
            }
            fn dealloc(&mut self, index: usize) {
                let i:usize=self.head.into();
                let p=PhysicalPageNumber::from(self.base+index);
                let pa:usize = PhysicalAddress::from(p).into();
                let ptr = pa as *mut usize;
                unsafe {*ptr=i-self.base};
                self.head = p;
            }
        }
      ```
 ##### 三. 实验结果和分析
  - ###### .bss 字段是什么含义？为什么我们要将动态分配的内存（堆）空间放在 .bss 字段？
    * ###### .bss通常是指用来存放程序中未初始化的全局变量的一块内存区域,属于静态内存分配，这个不是必须的，也可以把动态分配的内存放在[kernel_end,kernel_end+KERNEL_HEAP_SIZE]，放在.bss段其实就和内核放在一起了，把kernel_end以后的地址给进程用了，而放在[kernel_end,kernel_end+KERNEL_HEAP_SIZE]，建立页表的时候需要清楚起始地址是kernel_end+KERNEL_HEAP_SIZE就行
  - ###### 我们在动态内存分配中实现了一个堆，它允许我们在内核代码中使用动态分配的内存，例如 Vec Box 等。那么，如果我们在实现这个堆的过程中使用 Vec 而不是 [u8]，会出现什么结果？
    * ###### 堆的实现需要Vec，而Vec的建立又要使用堆，会造成死循环

 ##### 四. 问题建议以及改进的地方
  - ###### 第一遍看对各个结构的设计有些懵懂混乱，写实验报告的时候回想了下整个过程，感觉设计很精妙，唯一不足的是buddy_system_allocator的实现细节还没去看，后期补下
  - ###### 以前做ucore的时候对内存总是很懵懂，做完lab2对内存这块算是有了清楚的认识，弥补了知识盲点 
  <!-- - ###### 实验题目前先不做，先刷一遍整体对代码有理解在刷吧 -->


