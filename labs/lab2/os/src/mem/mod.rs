pub mod lib;
pub extern crate alloc;

pub fn init() {
    lib::init();
    println!("mem initialized");
}
