#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;

use user_lib::console::*;

#[no_mangle]
pub fn main() -> usize {
    println!("Hello world from user mode program!");
    let tid = get_id();
    println!("xxxxxxxxx thread id is:{}",tid);
    0
}
