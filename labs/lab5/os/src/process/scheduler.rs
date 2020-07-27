use super::*;
/// 线程调度器
///
/// 这里 `ThreadType` 就是 `Arc<Thread>`
pub trait Scheduler<ThreadType: Clone + Eq>: Default {
    /// 优先级的类型
    type Priority;
    /// 向线程池中添加一个线程
    fn add_thread(&mut self, thread: ThreadType);
    /// 获取下一个时间段应当执行的线程
    fn get_next(&mut self) -> Option<ThreadType>;
    /// 移除一个线程
    fn remove_thread(&mut self, thread: &ThreadType);
    /// 设置线程的优先级
    fn set_priority(&mut self, thread: ThreadType, priority: Self::Priority);
}

/// 采用 FIFO 算法的线程调度器
pub struct FifoScheduler<ThreadType: Clone + Eq> {
    pool: LinkedList<ThreadType>,
}

/// `Default` 创建一个空的调度器
impl<ThreadType: Clone + Eq> Default for FifoScheduler<ThreadType> {
    fn default() -> Self {
        Self {
            pool: LinkedList::new(),
        }
    }
}

impl<ThreadType: Clone + Eq> Scheduler<ThreadType> for FifoScheduler<ThreadType> {
    type Priority = ();
    fn add_thread(&mut self, thread: ThreadType) {
        // 加入链表尾部
        self.pool.push_back(thread);
    }
    fn get_next(&mut self) -> Option<ThreadType> {
        // 从头部取出放回尾部，同时将其返回
        if let Some(thread) = self.pool.pop_front() {
            self.pool.push_back(thread.clone());
            Some(thread)
        } else {
            None
        }
    }
    fn remove_thread(&mut self, thread: &ThreadType) {
        // 移除相应的线程并且确认恰移除一个线程
        let mut removed = self.pool.drain_filter(|t| t == thread);
        assert!(removed.next().is_some() && removed.next().is_none());
    }
    fn set_priority(&mut self, _thread: ThreadType, _priority: ()) {}
}

// pub type SchedulerImpl<T> = FifoScheduler<T>;
/// 采用 FIFO 算法的线程调度器
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
