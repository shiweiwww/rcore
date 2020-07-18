riscv64-unknown-linux-gnu-as -o HelloWorld.o  HelloWorld.s
riscv64-unknown-linux-gnu-ld -o HelloWorld HelloWorld.o -T linker.ld
riscv64-unknown-linux-gnu-objcopy HelloWorld --strip-all -O binary hello.bin
qemu-system-riscv64 -machine virt -nographic -bios default -device loader,file=hello.bin,addr=0x80200000
rm hello.bin HelloWorld.o HelloWorld