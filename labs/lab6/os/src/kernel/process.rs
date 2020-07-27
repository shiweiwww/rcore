//! 进程相关的内核功能

use super::*;

pub(super) fn sys_exit(code: usize) -> SyscallResult {
    println!(
        "thread {} exit with code {}",
        PROCESSOR.get().current_thread().id,
        code
    );
    SyscallResult::Kill
}
pub (super) fn sys_get_id()->SyscallResult{
    let ret = PROCESSOR.get().current_thread().id;
    return SyscallResult::Proceed(ret);
}
