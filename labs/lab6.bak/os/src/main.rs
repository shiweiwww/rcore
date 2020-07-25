//! # 全局属性
//! - `#![no_std]`  
//!   禁用标准库
#![no_std]
//!
//! - `#![no_main]`  
//!   不使用 `main` 函数等全部 Rust-level 入口点来作为程序入口
#![no_main]
//! # 一些 unstable 的功能需要在 crate 层级声明后才可以使用
//! - `#![feature(llvm_asm)]`  
//!   内嵌汇编
#![feature(llvm_asm)]
//!
//! - `#![feature(global_asm)]`  
//!   内嵌整个汇编文件
#![feature(global_asm)]
//!
//! - `#![feature(panic_info_message)]`  
//!   panic! 时，获取其中的信息并打印
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]
#![feature(drain_filter)]
#![feature(slice_fill)]
#[macro_use]
extern crate lazy_static;
#[macro_use]
mod console;
mod panic;
mod sbi;
mod interrupt;
// mod mem;
mod memory;
mod process;
use process::*;
mod drivers;
mod fs;
use fs::*;
use xmas_elf::ElfFile;

// 汇编编写的程序入口，具体见该文件
global_asm!(include_str!("entry.asm"));

/// Rust 的入口函数
///
/// 在 `_start` 为我们进行了一系列准备之后，这是第一个被调用的 Rust 函数
#[no_mangle]
pub extern "C" fn rust_main(_hart_id: usize, dtb_pa: PhysicalAddress) -> ! {
    println!("Hello rCore-Tutorial!");
    // panic!("end of rust_main");
    interrupt::init();
    memory::init();
    drivers::init(dtb_pa);
    fs::init();

    println!("******************************************* lab6 *******************************");

    println!("_hard_id:{},dtb_pa:=0x{}",_hart_id,dtb_pa);

    {
        let mut processor = PROCESSOR.get();
        processor.add_thread(create_user_process("hello_world"));
    }

    unsafe { PROCESSOR.unsafe_get().run() }

}

pub fn create_user_process(name: &str) -> Arc<Thread> {
    // 从文件系统中找到程序
    let app = fs::ROOT_INODE.find(name).unwrap();
    // 读取数据
    let data = app.readall().unwrap();
    // 解析 ELF 文件
    let elf = ElfFile::new(data.as_slice()).unwrap();
    // 利用 ELF 文件创建线程，映射空间并加载数据
    let process = Process::from_elf(&elf, true).unwrap();
    // 再从 ELF 中读出程序入口地址
    Thread::new(process, elf.header.pt2.entry_point() as usize, None).unwrap()
}