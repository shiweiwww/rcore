#![feature(alloc_error_handler)] // at the top of the file
use super::alloc::alloc::{GlobalAlloc, Layout};
use core::ptr::null_mut;

pub struct Dummy;
pub const KERNEL_HEAP_SIZE: usize = 0x80_0000;


/// 初始化操作系统运行时堆空间
pub fn init() {
    // 告诉分配器使用这一段预留的空间作为堆
}

#[global_allocator]
static ALLOCATOR: Dummy = Dummy;

#[alloc_error_handler]
fn alloc_error_handler(layout:Layout) -> ! {
    panic!("allocation error: {:?}", layout)
}

unsafe impl GlobalAlloc for Dummy {
    unsafe fn alloc(&self, _layout: Layout) -> *mut u8 {
        null_mut()
    }

    unsafe fn dealloc(&self, _ptr: *mut u8, _layout: Layout) {
        panic!("dealloc should be never called")
    }
}