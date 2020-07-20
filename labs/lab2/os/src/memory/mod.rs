mod config;
mod heap;
pub use heap::alloc as alloc;
pub fn init() {
    heap::init();
    println!("mem initialized");
}

