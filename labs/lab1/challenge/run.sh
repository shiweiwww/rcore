riscv64-unknown-linux-gnu-as -o lab1.o  lab1.S -g
riscv64-unknown-linux-gnu-ld -o lab1 lab1.o -T linker.ld
riscv64-unknown-linux-gnu-objcopy lab1 --strip-all -O binary lab1.bin
qemu-system-riscv64 -machine virt -nographic -m 1G -bios default -device loader,file=lab1.bin,addr=0x80200000
# qemu-system-riscv64 -M sifive_u -m 8G -bios default -display none -serial stdio -device loader,addr=0x80200000,file=interrupt.bin

rm lab1.bin lab1.o lab1