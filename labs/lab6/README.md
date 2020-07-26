### lab6实验报告
 ##### 一. 实验目的和内容
  - ###### 构建用户程序框架
  - ###### 解析 ELF 文件并创建线程
 
 ##### 二. 操作方法和实验步骤
  - ###### 参考实验指导书中线程和进程的介绍
  - ###### 实验
    * ##### 暂未开始做，先刷一遍熟悉下
 ##### 三. 实验结果和分析
  - ###### 代码流程分析 
      * ###### 打包磁盘镜像,运行如下代码,为目标下载一个标准库和core库，然后运行make build就行
      ```rust
      rustup target add riscv64imac-unknown-none-elf
      ```
      * ###### 从磁盘解析elf文件,Process::from_elf最终调用MemorySet::from_elf完成elf文件的解析，建立内核映射的MemorySet和elf每个段进行映射(需要把数据copy到对于的物理地址中去)，Tread::new创建线程，并把elf入口地址传进去就可，其他的过程和lab4没什么区别
      ```rust
      pub fn create_user_process(name: &str) -> Arc<Thread> {
          let app = ROOT_INODE.find(name).unwrap();
          let data = app.readall().unwrap();
          // 解析 ELF 文件
          let elf = ElfFile::new(data.as_slice()).unwrap();
          // 利用 ELF 文件创建线程，映射空间并加载数据
          let process = Process::from_elf(&elf, true).unwrap();
          // 再从 ELF 中读出程序入口地址
          Thread::new(process, elf.header.pt2.entry_point() as usize, None).unwrap()
      }
      ```
      * ###### 解析磁盘上的hello_world程序，hello_world中调用了println!本质上是执行了系统调用sys_write，sys_write底层是ecall的调用，产生一个Exception::UserEnvCall中断，由kernel/syscall/syscall_handler来处理，context通过syscall_id来决定调用sys_write
      ```rust
      let syscall_id = context.x[17];
      let args = [context.x[10], context.x[11], context.x[12]];

      let result = match syscall_id {
          SYS_READ => sys_read(args[0], args[1] as *mut u8, args[2]),
          SYS_WRITE => sys_write(args[0], args[1] as *mut u8, args[2]),
          SYS_EXIT => sys_exit(args[0]),
          _ => {
              println!("unimplemented syscall: {}", syscall_id);
              SyscallResult::Kill
          }
      };
      ```
      ###### sys_write向STDOUT写入字符串，调用的是inode.write_at,STDOUT代表终端市场
      ```rust
      pub(super) fn sys_write(fd: usize, buffer: *mut u8, size: usize) -> SyscallResult {
      if let Some(inode) = PROCESSOR.get().current_thread().inner().descriptors.get(fd) {
          let buffer = unsafe { from_raw_parts_mut(buffer, size) };
          if let Ok(ret) = inode.write_at(0, buffer) {
              let ret = ret as isize;
              if ret >= 0 {
                  return SyscallResult::Proceed(ret);
              }
          }
      }
      SyscallResult::Proceed(-1)
      }
      ```
 ##### 四. 问题建议以及改进的地方
  - ###### 自己按照实验指导做了下，似乎是进程那块有点问题，卡住了，只能看了下跑了下master的代码
  - ###### 实验题目前先不做，先刷一遍整体对代码有理解在刷吧

