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

    println!("******************************************* lab5 *******************************");
    println!("_hard_id:{},dtb_pa:=0x{}",_hart_id,dtb_pa);

    // {
    //     let mut processor = PROCESSOR.get();
    //     // 创建一个内核进程
    //     let kernel_process = Process::new_kernel().unwrap();
    //     // 为这个进程创建多个线程，并设置入口均为 sample_process，而参数不同
    //     processor.add_thread(create_kernel_thread(
    //             kernel_process.clone(),
    //             ls as usize,
    //             Some(&[0]),
    //             (1,2)
    //     ));
    // }

    // unsafe { PROCESSOR.unsafe_get().run() }

    println!("***************************************************测试优先级***************************************");
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

}
fn simple(id: usize) {
    println!("hello from thread id {}", id);
}
/// 测试任何内核线程都可以操作文件系统和驱动
fn ls(id: usize) {
    println!("hello from thread id {}", id);
    // 新建一个目录
    fs::ROOT_INODE
        .create("tmp", rcore_fs::vfs::FileType::Dir, 0o666)
        .expect("failed to mkdir /tmp");
    // 输出根文件目录内容
    fs::ls("/");
}