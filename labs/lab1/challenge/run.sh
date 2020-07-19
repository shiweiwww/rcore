riscv64-unknown-linux-gnu-as -o interrupt.o  interrupt.s -g
riscv64-unknown-linux-gnu-ld -o interrupt interrupt.o -T linker.ld
riscv64-unknown-linux-gnu-objcopy interrupt --strip-all -O binary interrupt.bin
qemu-system-riscv64 -machine virt -nographic -m 1G -bios default -device loader,file=interrupt.bin,addr=0x80200000
# qemu-system-riscv64 -M sifive_u -m 8G -bios default -display none -serial stdio -device loader,addr=0x80200000,file=interrupt.bin

# rm interrupt.bin interrupt.o interrupt



# 0x8001cd80