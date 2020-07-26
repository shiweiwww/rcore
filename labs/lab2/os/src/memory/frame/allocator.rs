use super::allocthm::{SgtreeAlloc,Allocator,StackedAllocator};
use spin::Mutex;
use super::super::address::{PhysicalAddress,PhysicalPageNumber};
use super::super::config::{KERNEL_END_ADDRESS,MEMORY_END_ADDRESS};
use super::frame_tracker::FrameTracker;
use super::range::Range;

lazy_static! {
    /// 帧分配器
    pub static ref FRAME_ALLOCATOR: Mutex<FrameAllocator<StackedAllocator>> = Mutex::new(FrameAllocator::new(
        Range::from(
            PhysicalPageNumber::ceil(PhysicalAddress::from(*KERNEL_END_ADDRESS))..PhysicalPageNumber::floor(MEMORY_END_ADDRESS),
        )
    ));
}

/// 基于线段树的帧分配 / 回收
pub struct FrameAllocator<T: Allocator> {
    /// 可用区间的起始
    start_ppn: PhysicalPageNumber,
    /// 分配器
    allocator: T,
}

impl<T: Allocator> FrameAllocator<T> {
    /// 创建对象
    pub fn new(range: impl Into<Range<PhysicalPageNumber>> + Copy+core::fmt::Debug) -> Self {
        //建立链表，链表节点为PhysicalPageNumber-PhysicalAddress为一个node，PhysicalAddress相当于next指针，指向链接的下一个PhysicalPageNumber的值
        let mut index = 1;
        let len = range.into().len();
        for item in range.into().iter(){
            let y:usize = PhysicalAddress::from(item).into();
            let ptr = y as *mut usize;
            unsafe {*ptr = index;}
            index += 1;

        }
        for i in 0..len{
            let y:usize = PhysicalAddress::from(range.into().get(i)).into();
            let ptr = y as *mut usize;
            let v= unsafe {*ptr};
            println!("i={},v={}",i,v);
            if i>10{
                break;
            }
        }  
        FrameAllocator {
            start_ppn: range.into().start,
            // allocator: T::new(range.into().len()),
            allocator:  T::new(range.into().start.into(),range.into().start,len)
        }
    }

    /// 分配帧，如果没有剩余则返回 `Err`
    pub fn alloc(&mut self) -> Result<FrameTracker,&str> {
        self.allocator
            .alloc()
            .ok_or("no available frame to allocate")
            .map(|offset| {FrameTracker(self.start_ppn+offset)})
    }

    /// 将被释放的帧添加到空闲列表的尾部
    ///
    /// 这个函数会在 [`FrameTracker`] 被 drop 时自动调用，不应在其他地方调用
    pub(super) fn dealloc(&mut self, frame: &FrameTracker) {
        self.allocator.dealloc(frame.page_number() - self.start_ppn);
    }
}
