riscv64-unknown-linux-gnu-as -o lab2.o  lab2.S -g
riscv64-unknown-linux-gnu-ld -o lab2 lab2.o -T linker.ld
riscv64-unknown-linux-gnu-objcopy lab2 --strip-all -O binary lab2.bin
qemu-system-riscv64 -machine virt -nographic -m 1G -bios default -device loader,file=lab2.bin,addr=0x80200000