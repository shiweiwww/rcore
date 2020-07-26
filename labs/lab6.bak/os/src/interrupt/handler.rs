use super::context::Context;
use riscv::register::stvec;
use riscv::register::scause::{Scause,Trap,Exception,Interrupt};
use super::timer;
use super::super::process::*;
// use crate::fs::syscall_handler;

global_asm!(include_str!("../interrupt.asm"));

/// 初始化中断处理
///
/// 把中断入口 `__interrupt` 写入 `stvec` 中，并且开启中断使能
pub fn init() {
    unsafe {
        extern "C" {
            /// `interrupt.asm` 中的中断入口
            fn __interrupt();
        }
        // 使用 Direct 模式，将中断入口设置为 `__interrupt`
        stvec::write(__interrupt as usize, stvec::TrapMode::Direct);
    }
}

/// 中断的处理入口
/// 
/// `interrupt.asm` 首先保存寄存器至 Context，其作为参数和 scause 以及 stval 一并传入此函数
/// 具体的中断类型需要根据 scause 来推断，然后分别处理
#[no_mangle]
pub fn handle_interrupt(context: &mut Context, scause: Scause, stval: usize) -> *mut Context {
    // 可以通过 Debug 来查看发生了什么中断

    // 首先检查线程是否已经结束（内核线程会自己设置标记来结束自己）
    {
        let mut processor = PROCESSOR.get();
        let current_thread = processor.current_thread();
        if current_thread.as_ref().inner().dead {
            println!("thread {} exit", current_thread.id);
            processor.kill_current_thread();
            return processor.prepare_next_thread();
        }
    }
    // println!("{:x?}", scause.cause());
    match scause.cause() {
        // 断点中断（ebreak）
        Trap::Exception(Exception::Breakpoint) => breakpoint(context),
        // 系统调用
        // Trap::Exception(Exception::UserEnvCall) => syscall_handler(context),
        // 时钟中断
        Trap::Interrupt(Interrupt::SupervisorTimer) => supervisor_timer(context),
        // 其他情况，终止当前线程
        _ => fault("unimplemented interrupt type: {:x?}", scause, stval),
    }
}

/// 处理 ebreak 断点
/// 
/// 继续执行，其中 `sepc` 增加 2 字节，以跳过当前这条 `ebreak` 指令
fn breakpoint(context: &mut Context) -> *mut Context {
    println!("Breakpoint at 0x{:x}", context.sepc);
    context.sepc += 2;
    context
}

/// 处理时钟中断
/// 
/// 目前只会在 [`timer`] 模块中进行计数
fn supervisor_timer(context: &mut Context) -> *mut Context {
    timer::tick();
    PROCESSOR.get().park_current_thread(context);
    PROCESSOR.get().prepare_next_thread()
}
/// 出现未能解决的异常，终止当前线程
fn fault(msg: &str, scause: Scause, stval: usize) -> *mut Context {
    println!(
        "{:#x?} terminated: {}",
        PROCESSOR.get().current_thread(),
        msg
    );
    println!("cause: {:?}, stval: {:x}", scause.cause(), stval);

    PROCESSOR.get().kill_current_thread();
    // 跳转到 PROCESSOR 调度的下一个线程
    PROCESSOR.get().prepare_next_thread()
}
