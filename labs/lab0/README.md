### lab0实验报告
 ##### 一. 实验目的和内容
  - ###### 搭建Qemu运行环境以及Debug环境,成功运行打印Hello rCore-Tutorial!
  - ###### 完成一个risc-v的汇编小练习，成功打印Hello,rcore!(个人学ucore的经验，写os汇编是拦路虎，越熟悉越好)
 ##### 二. 操作方法和实验步骤
  - ###### 参考实验指导书完成基环境的搭建，代码见os/src目录下
  - ###### riscv汇编练习，代码见challenge目录下
    * ###### riscv汇编语法学习，参考[RISC-V手册](http://crva.ict.ac.cn/documents/RISC-V-Reader-Chinese-v2p1.pdf)和[assembly-exercise](https://github.com/Forec/assembly-exercise)(本人写x86汇编时候已刷过，本次不再刷，本次练习使用的例子更多的时候和lab0相关)
    * ###### riscv汇编运行环境搭使用实验指导书中的环境就行，编译工具安装下[riscv-tools](https://blog.csdn.net/weiqi7777/article/details/88045720)
 ##### 三. 实验结果和分析
  - ###### 以前用c写Os，如linux 0.11等，整体经过三步才bootloader-->setup-->Os,opensbi帮我们完成了前面的两步骤，现在只需要关心如何写好Os就可以，极大的简化了代码的复杂度
 ##### 四. 问题建议以及改进的地方
  - ##### 由于lab0比较简单，都是基本环境的搭建，没什么问题
  - ##### 做到lab0，终于解决了困扰几天的问题(7月15)，如何用riscv汇编打印字符串以及如何调试riscv汇编，有了这，riscv汇编就简单多了
  - ##### 对rust了解的还是很浅，看了有时间了还得刷下官网的rust的[Embedded devices](https://www.rust-lang.org/what/embedded)教程
  - ##### rcore实验指导书lab0中要是能介绍如何编译运行调试riscv汇编的例子就更好了，这样对riscv有直观的感受，要是不懂有什么指令，特权级相关的，可以简单写个demo在看看，毕竟纸上得来终觉浅，光看书还是不知道怎么用


