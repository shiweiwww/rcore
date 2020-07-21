pub mod config;
mod heap;
mod address;
pub mod frame;
pub use frame::allocator::FRAME_ALLOCATOR as FRAME_ALLOCATOR;
pub use heap::alloc as alloc;
// pub use config::KERNEL_END_ADDRESS as KERNEL_END_ADDRESS;
pub fn init() {
    heap::init();
    println!("mem initialized");
}

