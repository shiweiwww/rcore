### lab0实验报告
 ##### 一.实验目的和内容
  - ###### 搭建Qemu运行环境以及Debug环境,成功运行打印Hello rCore-Tutorial!
  - ###### 完成一个risc-v的汇编小练习，成功打印Hello,rcore!(个人学ucore的经验，写os汇编是拦路虎，越熟悉越好)
 ##### 二.操作方法和实验步骤
  - ###### 参考实验指导书完成基环境的搭建，代码见os/src目录下
  - ###### riscv汇编练习，代码见challenge目录下
    * ###### riscv汇编语法学习，参考[RISC-V手册](http://crva.ict.ac.cn/documents/RISC-V-Reader-Chinese-v2p1.pdf)和[assembly-exercise](https://github.com/Forec/assembly-exercise)
    * ###### riscv汇编环境搭使用实验指导书中的环境就行，顺便安装下[riscv-tools](https://blog.csdn.net/weiqi7777/article/details/88045720)
 ##### 三.实验结果和分析
  - ###### 以前用c写Os，如linux 0.11等，整体经过三步才bootloader-->setup-->Os,opensbi帮我们完成了前面的两步骤，现在只需要关心如何写好Os就可以，极大的简化了代码的复杂度
 ##### 四.问题建议以及改进的地方
  - ##### 由于lab0比较简单，都是基本环境的搭建，没什么问题


