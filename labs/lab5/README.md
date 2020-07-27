### lab5实验报告
 ##### 一. 实验目的和内容
  - ###### 设备树
  - ###### 驱动和块设备驱动
 
 ##### 二. 操作方法和实验步骤
  - ###### 设备树的解析以及驱动的加载
  - ###### 实验
    * ###### 实验：1.了解并实现 Stride Scheduling 调度算法，为不同线程设置不同优先级，使得其获得与优先级成正比的运行时间。
        * ###### Stride Scheduling算法步骤
            + ###### 1、为每个runnable的进程设置一个当前状态stride，表示该进程当前的调度权。另外定义其对应的pass值，表示对应进程在调度后，stride 需要进行的累加值。
            + ###### 2、每次需要调度时，从当前 runnable 态的进程中选择 stride最小的进程调度。对于获得调度的进程P，将对应的stride加上其对应的步长pass（只与进程的优先权有关系）。
            + ###### 3、在一段固定的时间之后，回到步骤2，重新调度当前stride最小的进程
        * ###### Stride Scheduling算法的数据结构是直接用的linklist，代码如下
        ```rust
            /// process/scheduler.rs
            pub struct StrideScheduler {
                pool: LinkedList<Arc<Thread>>,
            }
            /// `Default` 创建一个空的调度器
            impl Default for StrideScheduler {
                fn default() -> Self {
                    Self {
                        pool: LinkedList::new(),
                    }
                }
            }
            impl Scheduler<Arc<Thread>> for StrideScheduler {
                type Priority = (i32,i32);
                fn add_thread(&mut self, thread: Arc<Thread>) {
                    // 加入链表尾部
                    self.pool.push_back(thread);
                }
                fn get_next(&mut self) -> Option<Arc<Thread>> {
                    match self.pool.pop_front() {
                        Some(thread)=>{

                            self.pool.push_back(thread.clone());
                            let mut thd=thread;
                            let (mut min_stride,mut ps)=thd.inner().priority;
                            for thread in self.pool.iter(){
                                let (stride,pass) = thread.inner().priority;
                                if min_stride>stride{
                                    min_stride = stride;
                                    ps = pass;
                                    thd = thread.clone();
                                }
                            }
                            thd.inner().priority=(min_stride+ps,ps);
                            Some(thd)
                        },
                        None => None
                    }
                }
                fn remove_thread(&mut self, thread: &Arc<Thread>) {
                    // 移除相应的线程并且确认恰移除一个线程
                    let mut removed = self.pool.drain_filter(|t| t == thread);
                    assert!(removed.next().is_some() && removed.next().is_none());
                }
                fn set_priority(&mut self, _thread: Arc<Thread>, _priority: (i32,i32)) {
                    _thread.inner().priority=_priority;

                }
            }

            ///测试代码
            /// main.rs
            {
                let mut processor = PROCESSOR.get();
                // 创建一个内核进程
                let kernel_process = Process::new_kernel().unwrap();
                processor.add_thread(create_kernel_thread(kernel_process.clone(),simple as usize,Some(&[1]),(10,2)));//设置(stride,pass)
                processor.add_thread(create_kernel_thread(kernel_process.clone(),simple as usize,Some(&[2]),(1,2)));//设置(stride,pass)
                processor.add_thread(create_kernel_thread(kernel_process.clone(),simple as usize,Some(&[3]),(3,2)));//设置(stride,pass)
                processor.add_thread(create_kernel_thread(kernel_process.clone(),simple as usize,Some(&[4]),(4,2)));//设置(stride,pass)
                processor.add_thread(create_kernel_thread(kernel_process.clone(),simple as usize,Some(&[5]),(1,2)));//设置(stride,pass)
            }
            unsafe { PROCESSOR.unsafe_get().run() }

            unreachable!();           
        ```
    * ###### 在 Stride Scheduling 算法下，如果一个线程进入了一段时间的等待（例如等待输入，此时它不会被运行），会发生什么？
        + ###### 其他进程忙等待，一直占用的资源其他进程没办法执行
    * ###### 对于两个优先级分别为 9 和 1 的线程，连续 10 个时间片中，前者的运行次数一定更多吗？
        + ###### 不一定，Stride Scheduling算法优先级由stride+pass两部分控制
    * ###### 你认为 Stride Scheduling 算法有什么不合理之处？可以怎样改进？
        + ###### Stride Scheduling算法下要是某一进程先级设置的高，其他进程永远在等待，导致其他进程的响应时间过长
        + ###### 每次切换进程，重新设置下一个进程的优先级为stride+pass，几轮下来，可能导致数据的溢出

 ##### 三. 实验结果和分析
  - ###### 代码流程分析 
      * ###### driver::init解析设备树，并查找满足compatible="virtio,mmio"条件的节点,解析该节点的reg信息判断设备类型，要是设备类型为Block，定义块设备驱动VirtIOBlkDriver，通过virtio_blk加载设备驱动，并记录在DRIVERS中；同时定义BlockDevice(pub Arc\<dyn Driver\>),使得文件系统可以通过调用块设备的该接口来读写。具体来说，遍历DRIVERS找到Block设备的驱动bdriver，通过BlockDevice引用该driver,返回INode节点来读取块内容
    ```rust
        lazy_static! {
            pub static ref ROOT_INODE: Arc<dyn INode> = {
                for driver in DRIVERS.read().iter() {
                    if driver.device_type() == DeviceType::Block {
                        let device = BlockDevice(driver.clone());
                        let device_with_cache = Arc::new(BlockCache::new(device, BLOCK_CACHE_CAPACITY));
                        return SimpleFileSystem::open(device_with_cache)
                            .expect("failed to open SFS")
                            .root_inode();
                    }
                }
                panic!("failed to load fs")
            };
        }
        pub fn init() {
            ROOT_INODE.ls();
            println!("mod fs initialized");
        }
    ```    
 ##### 四. 问题建议以及改进的地方
  - ###### 清楚的理解了设备驱动以及设备的工作原理，对如何书写设备驱动还是不是很清楚，后面抽时间补补相关知识
  <!-- - ###### 实验题目前先不做，先刷一遍整体对代码有理解在刷吧 -->

