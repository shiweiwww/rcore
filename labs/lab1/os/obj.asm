
target/riscv64imac-unknown-none-elf/debug/os:	file format ELF64-riscv


Disassembly of section .text:

0000000080200000 text_start:
80200000: 17 61 01 00                  	auipc	sp, 22
80200004: 13 01 81 27                  	addi	sp, sp, 632
80200008: 97 10 00 00                  	auipc	ra, 1
8020000c: e7 80 40 43                  	jalr	1076(ra)

0000000080200010 _ZN5riscv8register6scause6Scause12is_interrupt17h4d6eb0e17b348011E:
;     pub fn is_interrupt(&self) -> bool {
80200010: 39 71                        	addi	sp, sp, -64
80200012: 06 fc                        	sd	ra, 56(sp)
80200014: 2a f4                        	sd	a0, 40(sp)
80200016: a1 45                        	addi	a1, zero, 8
80200018: 2e f8                        	sd	a1, 48(sp)
;         self.bits.get_bit(size_of::<usize>() * 8 - 1)
8020001a: 2a f0                        	sd	a0, 32(sp)
8020001c: 2e ec                        	sd	a1, 24(sp)
8020001e: 09 a0                        	j	2
80200020: 62 65                        	ld	a0, 24(sp)
80200022: 93 15 35 00                  	slli	a1, a0, 3
80200026: 01 46                        	mv	a2, zero
80200028: 2e e8                        	sd	a1, 16(sp)
8020002a: 0d e6                        	bnez	a2, 42
8020002c: 09 a0                        	j	2
8020002e: 42 65                        	ld	a0, 16(sp)
80200030: 93 05 f5 ff                  	addi	a1, a0, -1
80200034: 2e e4                        	sd	a1, 8(sp)
80200036: 63 6e b5 02                  	bltu	a0, a1, 60
8020003a: 09 a0                        	j	2
8020003c: 02 75                        	ld	a0, 32(sp)
8020003e: a2 65                        	ld	a1, 8(sp)
80200040: 97 20 00 00                  	auipc	ra, 2
80200044: e7 80 e0 8b                  	jalr	-1858(ra)
80200048: 2a e0                        	sd	a0, 0(sp)
8020004a: 09 a0                        	j	2
;     }
8020004c: 02 65                        	ld	a0, 0(sp)
8020004e: e2 70                        	ld	ra, 56(sp)
80200050: 21 61                        	addi	sp, sp, 64
80200052: 82 80                        	ret

0000000080200054 .LBB0_7:
;         self.bits.get_bit(size_of::<usize>() * 8 - 1)
80200054: 17 45 00 00                  	auipc	a0, 4
80200058: 13 05 c5 2c                  	addi	a0, a0, 716

000000008020005c .LBB0_8:
8020005c: 17 46 00 00                  	auipc	a2, 4
80200060: 13 06 46 2a                  	addi	a2, a2, 676
80200064: 93 05 10 02                  	addi	a1, zero, 33
80200068: 97 20 00 00                  	auipc	ra, 2
8020006c: e7 80 00 3c                  	jalr	960(ra)
80200070: 00 00                        	unimp	

0000000080200072 .LBB0_9:
80200072: 17 45 00 00                  	auipc	a0, 4
80200076: 13 05 e5 2d                  	addi	a0, a0, 734

000000008020007a .LBB0_10:
8020007a: 17 46 00 00                  	auipc	a2, 4
8020007e: 13 06 66 28                  	addi	a2, a2, 646
80200082: 93 05 10 02                  	addi	a1, zero, 33
80200086: 97 20 00 00                  	auipc	ra, 2
8020008a: e7 80 20 3a                  	jalr	930(ra)
8020008e: 00 00                        	unimp	

0000000080200090 _ZN5riscv8register6scause6Scause5cause17hbe7063db2d04b88cE:
;     pub fn cause(&self) -> Trap {
80200090: 5d 71                        	addi	sp, sp, -80
80200092: 86 e4                        	sd	ra, 72(sp)
80200094: aa e0                        	sd	a0, 64(sp)
;         if self.is_interrupt() {
80200096: 2a f8                        	sd	a0, 48(sp)
80200098: 97 00 00 00                  	auipc	ra, 0
8020009c: e7 80 80 f7                  	jalr	-136(ra)
802000a0: 2a f4                        	sd	a0, 40(sp)
802000a2: 09 a0                        	j	2
802000a4: 22 75                        	ld	a0, 40(sp)
802000a6: 09 e9                        	bnez	a0, 18
802000a8: 09 a0                        	j	2
;             Trap::Exception(Exception::from(self.code()))
802000aa: 42 75                        	ld	a0, 48(sp)
802000ac: 97 20 00 00                  	auipc	ra, 2
802000b0: e7 80 40 bf                  	jalr	-1036(ra)
802000b4: 2a f0                        	sd	a0, 32(sp)
802000b6: 05 a8                        	j	48
;             Trap::Interrupt(Interrupt::from(self.code()))
802000b8: 42 75                        	ld	a0, 48(sp)
802000ba: 97 20 00 00                  	auipc	ra, 2
802000be: e7 80 60 be                  	jalr	-1050(ra)
802000c2: 2a ec                        	sd	a0, 24(sp)
802000c4: 09 a0                        	j	2
802000c6: 62 65                        	ld	a0, 24(sp)
802000c8: 97 20 00 00                  	auipc	ra, 2
802000cc: e7 80 e0 a7                  	jalr	-1410(ra)
802000d0: 13 75 f5 0f                  	andi	a0, a0, 255
802000d4: 2a e8                        	sd	a0, 16(sp)
802000d6: 09 a0                        	j	2
802000d8: 42 65                        	ld	a0, 16(sp)
802000da: a3 0c a1 02                  	sb	a0, 57(sp)
802000de: 81 45                        	mv	a1, zero
802000e0: 23 0c b1 02                  	sb	a1, 56(sp)
;         if self.is_interrupt() {
802000e4: 0d a0                        	j	34
;             Trap::Exception(Exception::from(self.code()))
802000e6: 02 75                        	ld	a0, 32(sp)
802000e8: 97 20 00 00                  	auipc	ra, 2
802000ec: e7 80 e0 ad                  	jalr	-1314(ra)
802000f0: 13 75 f5 0f                  	andi	a0, a0, 255
802000f4: 2a e4                        	sd	a0, 8(sp)
802000f6: 09 a0                        	j	2
802000f8: 22 65                        	ld	a0, 8(sp)
802000fa: a3 0c a1 02                  	sb	a0, 57(sp)
802000fe: 85 45                        	addi	a1, zero, 1
80200100: 23 0c b1 02                  	sb	a1, 56(sp)
;         if self.is_interrupt() {
80200104: 09 a0                        	j	2
;     }
80200106: 03 45 81 03                  	lbu	a0, 56(sp)
8020010a: 83 05 91 03                  	lb	a1, 57(sp)
8020010e: a6 60                        	ld	ra, 72(sp)
80200110: 61 61                        	addi	sp, sp, 80
80200112: 82 80                        	ret

0000000080200114 _ZN4core3str15next_code_point17h32caf6a4384d629cE:
80200114: 31 71                        	addi	sp, sp, -192
80200116: 06 fd                        	sd	ra, 184(sp)
80200118: 2a e5                        	sd	a0, 136(sp)
8020011a: aa f4                        	sd	a0, 104(sp)
8020011c: 97 00 00 00                  	auipc	ra, 0
80200120: e7 80 40 4e                  	jalr	1252(ra)
80200124: aa f0                        	sd	a0, 96(sp)
80200126: 09 a0                        	j	2
80200128: 06 75                        	ld	a0, 96(sp)
8020012a: 97 10 00 00                  	auipc	ra, 1
8020012e: e7 80 80 0c                  	jalr	200(ra)
80200132: aa fc                        	sd	a0, 120(sp)
80200134: 09 a0                        	j	2
80200136: 66 75                        	ld	a0, 120(sp)
80200138: 93 35 15 00                  	seqz	a1, a0
8020013c: 01 46                        	mv	a2, zero
8020013e: 63 14 c5 00                  	bne	a0, a2, 8
80200142: 09 a0                        	j	2
80200144: 39 a8                        	j	30
80200146: 66 75                        	ld	a0, 120(sp)
80200148: 2a ed                        	sd	a0, 152(sp)
8020014a: 03 05 05 00                  	lb	a0, 0(a0)
8020014e: 93 75 f5 0f                  	andi	a1, a0, 255
80200152: a3 03 a1 0a                  	sb	a0, 167(sp)
80200156: 7d 56                        	addi	a2, zero, -1
80200158: ae ec                        	sd	a1, 88(sp)
8020015a: 63 41 a6 04                  	blt	a2, a0, 66
8020015e: 2d a0                        	j	42
80200160: 00 00                        	unimp	
80200162: 97 10 00 00                  	auipc	ra, 1
80200166: e7 80 e0 07                  	jalr	126(ra)
8020016a: 31 a0                        	j	12
8020016c: 46 55                        	lw	a0, 112(sp)
8020016e: d6 55                        	lw	a1, 116(sp)
80200170: ea 70                        	ld	ra, 184(sp)
80200172: 29 61                        	addi	sp, sp, 192
80200174: 82 80                        	ret
80200176: 97 10 00 00                  	auipc	ra, 1
8020017a: e7 80 00 07                  	jalr	112(ra)
8020017e: aa d8                        	sw	a0, 112(sp)
80200180: ae da                        	sw	a1, 116(sp)
80200182: 09 a0                        	j	2
80200184: 09 a0                        	j	2
80200186: dd b7                        	j	-26
80200188: 89 45                        	addi	a1, zero, 2
8020018a: 66 65                        	ld	a0, 88(sp)
8020018c: 97 10 00 00                  	auipc	ra, 1
80200190: e7 80 00 ed                  	jalr	-304(ra)
80200194: aa 85                        	add	a1, zero, a0
80200196: 2a d5                        	sw	a0, 168(sp)
80200198: ae e8                        	sd	a1, 80(sp)
8020019a: 31 a0                        	j	12
8020019c: 66 65                        	ld	a0, 88(sp)
8020019e: aa da                        	sw	a0, 116(sp)
802001a0: 85 45                        	addi	a1, zero, 1
802001a2: ae d8                        	sw	a1, 112(sp)
802001a4: cd b7                        	j	-30
802001a6: 26 75                        	ld	a0, 104(sp)
802001a8: 97 00 00 00                  	auipc	ra, 0
802001ac: e7 80 80 45                  	jalr	1112(ra)
802001b0: aa e4                        	sd	a0, 72(sp)
802001b2: 09 a0                        	j	2
802001b4: 26 65                        	ld	a0, 72(sp)
802001b6: 97 10 00 00                  	auipc	ra, 1
802001ba: e7 80 20 e7                  	jalr	-398(ra)
802001be: aa 85                        	add	a1, zero, a0
802001c0: 23 07 a1 0a                  	sb	a0, 174(sp)
802001c4: ae e0                        	sd	a1, 64(sp)
802001c6: 09 a0                        	j	2
802001c8: 46 65                        	ld	a0, 80(sp)
802001ca: 86 65                        	ld	a1, 64(sp)
802001cc: 97 10 00 00                  	auipc	ra, 1
802001d0: e7 80 c0 ea                  	jalr	-340(ra)
802001d4: 2a c3                        	sw	a0, 132(sp)
802001d6: 09 a0                        	j	2
802001d8: 13 05 f0 0d                  	addi	a0, zero, 223
802001dc: e6 65                        	ld	a1, 88(sp)
802001de: 63 64 b5 00                  	bltu	a0, a1, 8
802001e2: 09 a0                        	j	2
802001e4: 4d a0                        	j	162
802001e6: 26 75                        	ld	a0, 104(sp)
802001e8: 97 00 00 00                  	auipc	ra, 0
802001ec: e7 80 80 41                  	jalr	1048(ra)
802001f0: 2a fc                        	sd	a0, 56(sp)
802001f2: 09 a0                        	j	2
802001f4: 62 75                        	ld	a0, 56(sp)
802001f6: 97 10 00 00                  	auipc	ra, 1
802001fa: e7 80 20 e3                  	jalr	-462(ra)
802001fe: aa 85                        	add	a1, zero, a0
80200200: a3 07 a1 0a                  	sb	a0, 175(sp)
80200204: 2e f8                        	sd	a1, 48(sp)
80200206: 09 a0                        	j	2
80200208: 06 65                        	ld	a0, 64(sp)
8020020a: 13 75 f5 03                  	andi	a0, a0, 63
8020020e: c2 75                        	ld	a1, 48(sp)
80200210: 97 10 00 00                  	auipc	ra, 1
80200214: e7 80 80 e6                  	jalr	-408(ra)
80200218: aa 85                        	add	a1, zero, a0
8020021a: 2a d9                        	sw	a0, 176(sp)
8020021c: 2e f4                        	sd	a1, 40(sp)
8020021e: 09 a0                        	j	2
80200220: 46 65                        	ld	a0, 80(sp)
80200222: 93 15 c5 00                  	slli	a1, a0, 12
80200226: 22 76                        	ld	a2, 40(sp)
80200228: d1 8d                        	or	a1, a1, a2
8020022a: 2e c3                        	sw	a1, 132(sp)
8020022c: 93 05 f0 0e                  	addi	a1, zero, 239
80200230: e6 66                        	ld	a3, 88(sp)
80200232: 63 e4 d5 00                  	bltu	a1, a3, 8
80200236: 09 a0                        	j	2
80200238: b1 a0                        	j	76
8020023a: 26 75                        	ld	a0, 104(sp)
8020023c: 97 00 00 00                  	auipc	ra, 0
80200240: e7 80 40 3c                  	jalr	964(ra)
80200244: 2a f0                        	sd	a0, 32(sp)
80200246: 09 a0                        	j	2
80200248: 02 75                        	ld	a0, 32(sp)
8020024a: 97 10 00 00                  	auipc	ra, 1
8020024e: e7 80 e0 dd                  	jalr	-546(ra)
80200252: aa 85                        	add	a1, zero, a0
80200254: a3 0b a1 0a                  	sb	a0, 183(sp)
80200258: 2e ec                        	sd	a1, 24(sp)
8020025a: 09 a0                        	j	2
8020025c: 46 65                        	ld	a0, 80(sp)
8020025e: 93 75 75 00                  	andi	a1, a0, 7
80200262: ca 05                        	slli	a1, a1, 18
80200264: 22 75                        	ld	a0, 40(sp)
80200266: 62 66                        	ld	a2, 24(sp)
80200268: 2e e8                        	sd	a1, 16(sp)
8020026a: b2 85                        	add	a1, zero, a2
8020026c: 97 10 00 00                  	auipc	ra, 1
80200270: e7 80 c0 e0                  	jalr	-500(ra)
80200274: 2a e4                        	sd	a0, 8(sp)
80200276: 09 a0                        	j	2
80200278: 42 65                        	ld	a0, 16(sp)
8020027a: a2 65                        	ld	a1, 8(sp)
8020027c: 33 66 b5 00                  	or	a2, a0, a1
80200280: 32 c3                        	sw	a2, 132(sp)
80200282: 09 a0                        	j	2
80200284: 09 a0                        	j	2
80200286: 1a 45                        	lw	a0, 132(sp)
80200288: aa da                        	sw	a0, 116(sp)
8020028a: 05 45                        	addi	a0, zero, 1
8020028c: aa d8                        	sw	a0, 112(sp)
8020028e: f9 bd                        	j	-290

0000000080200290 _ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h026677ff4f0fd2e7E:
80200290: 41 11                        	addi	sp, sp, -16
80200292: 2a e0                        	sd	a0, 0(sp)
80200294: 2e e4                        	sd	a1, 8(sp)
80200296: 41 01                        	addi	sp, sp, 16
80200298: 82 80                        	ret

000000008020029a _ZN75_$LT$core..str..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hdd42ae41e8c0ed78E:
8020029a: 01 11                        	addi	sp, sp, -32
8020029c: 06 ec                        	sd	ra, 24(sp)
8020029e: aa 85                        	add	a1, zero, a0
802002a0: 2a ca                        	sw	a0, 20(sp)
802002a2: 2e e4                        	sd	a1, 8(sp)
802002a4: 97 10 00 00                  	auipc	ra, 1
802002a8: e7 80 60 75                  	jalr	1878(ra)
802002ac: 02 15                        	slli	a0, a0, 32
802002ae: 01 91                        	srli	a0, a0, 32
802002b0: 2a e0                        	sd	a0, 0(sp)
802002b2: 09 a0                        	j	2
802002b4: 02 65                        	ld	a0, 0(sp)
802002b6: e2 60                        	ld	ra, 24(sp)
802002b8: 05 61                        	addi	sp, sp, 32
802002ba: 82 80                        	ret

00000000802002bc _ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha66e56030499e1b5E:
802002bc: 41 11                        	addi	sp, sp, -16
802002be: 2a e4                        	sd	a0, 8(sp)
802002c0: 2a e0                        	sd	a0, 0(sp)
802002c2: 41 01                        	addi	sp, sp, 16
802002c4: 82 80                        	ret

00000000802002c6 _ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hf45ee984d3a1519aE:
802002c6: 41 11                        	addi	sp, sp, -16
802002c8: 2a e4                        	sd	a0, 8(sp)
802002ca: 2a e0                        	sd	a0, 0(sp)
802002cc: 41 01                        	addi	sp, sp, 16
802002ce: 82 80                        	ret

00000000802002d0 _ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h852d208ab4d5e8bbE:
802002d0: 41 11                        	addi	sp, sp, -16
802002d2: 2a e4                        	sd	a0, 8(sp)
802002d4: 41 01                        	addi	sp, sp, 16
802002d6: 82 80                        	ret

00000000802002d8 _ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd708019bc403dc91E:
802002d8: 41 11                        	addi	sp, sp, -16
802002da: 2a e4                        	sd	a0, 8(sp)
802002dc: 41 01                        	addi	sp, sp, 16
802002de: 82 80                        	ret

00000000802002e0 _ZN4core5slice18from_raw_parts_mut17h87c004fcdcb454bdE:
802002e0: 79 71                        	addi	sp, sp, -48
802002e2: 06 f4                        	sd	ra, 40(sp)
802002e4: 2a ec                        	sd	a0, 24(sp)
802002e6: 2e f0                        	sd	a1, 32(sp)
802002e8: 97 10 00 00                  	auipc	ra, 1
802002ec: e7 80 20 14                  	jalr	322(ra)
802002f0: 2a e8                        	sd	a0, 16(sp)
802002f2: 2e e4                        	sd	a1, 8(sp)
802002f4: 09 a0                        	j	2
802002f6: 42 65                        	ld	a0, 16(sp)
802002f8: a2 65                        	ld	a1, 8(sp)
802002fa: a2 70                        	ld	ra, 40(sp)
802002fc: 45 61                        	addi	sp, sp, 48
802002fe: 82 80                        	ret

0000000080200300 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h48857a8015058dc1E:
80200300: 41 11                        	addi	sp, sp, -16
80200302: 2a e0                        	sd	a0, 0(sp)
80200304: 2e e4                        	sd	a1, 8(sp)
80200306: 41 01                        	addi	sp, sp, 16
80200308: 82 80                        	ret

000000008020030a _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h11eabfc87e5c1da3E:
8020030a: 01 11                        	addi	sp, sp, -32
8020030c: 2a e8                        	sd	a0, 16(sp)
8020030e: 2e ec                        	sd	a1, 24(sp)
80200310: 2a e0                        	sd	a0, 0(sp)
80200312: 2e e4                        	sd	a1, 8(sp)
80200314: 2e 85                        	add	a0, zero, a1
80200316: 05 61                        	addi	sp, sp, 32
80200318: 82 80                        	ret

000000008020031a _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h6089c6a71aec2b55E:
8020031a: 01 11                        	addi	sp, sp, -32
8020031c: 2a e8                        	sd	a0, 16(sp)
8020031e: 2e ec                        	sd	a1, 24(sp)
80200320: 2a e0                        	sd	a0, 0(sp)
80200322: 2e e4                        	sd	a1, 8(sp)
80200324: 2e 85                        	add	a0, zero, a1
80200326: 05 61                        	addi	sp, sp, 32
80200328: 82 80                        	ret

000000008020032a _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h001abca6b970c801E:
8020032a: 75 71                        	addi	sp, sp, -144
8020032c: 06 e5                        	sd	ra, 136(sp)
8020032e: aa f4                        	sd	a0, 104(sp)
80200330: ae f8                        	sd	a1, 112(sp)
80200332: aa e0                        	sd	a0, 64(sp)
80200334: 2e fc                        	sd	a1, 56(sp)
80200336: 97 00 00 00                  	auipc	ra, 0
8020033a: e7 80 00 15                  	jalr	336(ra)
8020033e: aa 85                        	add	a1, zero, a0
80200340: aa fc                        	sd	a0, 120(sp)
80200342: 2e f8                        	sd	a1, 48(sp)
80200344: 09 a0                        	j	2
80200346: 42 75                        	ld	a0, 48(sp)
80200348: 97 10 00 00                  	auipc	ra, 1
8020034c: e7 80 a0 3d                  	jalr	986(ra)
80200350: 09 a0                        	j	2
80200352: 09 a0                        	j	2
80200354: 05 45                        	addi	a0, zero, 1
80200356: 2a e1                        	sd	a0, 128(sp)
80200358: 2a f4                        	sd	a0, 40(sp)
8020035a: 09 a0                        	j	2
8020035c: 01 45                        	mv	a0, zero
8020035e: a2 75                        	ld	a1, 40(sp)
80200360: 63 8b a5 00                  	beq	a1, a0, 22
80200364: 09 a0                        	j	2
80200366: 06 65                        	ld	a0, 64(sp)
80200368: e2 75                        	ld	a1, 56(sp)
8020036a: 97 00 00 00                  	auipc	ra, 0
8020036e: e7 80 00 fa                  	jalr	-96(ra)
80200372: 2a f0                        	sd	a0, 32(sp)
80200374: 25 a0                        	j	40
80200376: 06 65                        	ld	a0, 64(sp)
80200378: e2 75                        	ld	a1, 56(sp)
8020037a: 97 00 00 00                  	auipc	ra, 0
8020037e: e7 80 00 f9                  	jalr	-112(ra)
80200382: 2a ec                        	sd	a0, 24(sp)
80200384: 09 a0                        	j	2
80200386: 42 75                        	ld	a0, 48(sp)
80200388: e2 65                        	ld	a1, 24(sp)
8020038a: 97 20 00 00                  	auipc	ra, 2
8020038e: e7 80 80 f9                  	jalr	-104(ra)
80200392: 2a e8                        	sd	a0, 16(sp)
80200394: 09 a0                        	j	2
80200396: 42 65                        	ld	a0, 16(sp)
80200398: aa ec                        	sd	a0, 88(sp)
8020039a: 11 a8                        	j	20
8020039c: 42 75                        	ld	a0, 48(sp)
8020039e: 82 75                        	ld	a1, 32(sp)
802003a0: 97 10 00 00                  	auipc	ra, 1
802003a4: e7 80 a0 32                  	jalr	810(ra)
802003a8: aa ec                        	sd	a0, 88(sp)
802003aa: 09 a0                        	j	2
802003ac: 09 a0                        	j	2
802003ae: 42 75                        	ld	a0, 48(sp)
802003b0: 97 00 00 00                  	auipc	ra, 0
802003b4: e7 80 c0 f0                  	jalr	-244(ra)
802003b8: 2a e4                        	sd	a0, 8(sp)
802003ba: 09 a0                        	j	2
802003bc: 66 65                        	ld	a0, 88(sp)
802003be: a2 65                        	ld	a1, 8(sp)
802003c0: ae e4                        	sd	a1, 72(sp)
802003c2: aa e8                        	sd	a0, 80(sp)
802003c4: 2a e0                        	sd	a0, 0(sp)
802003c6: 2e 85                        	add	a0, zero, a1
802003c8: 82 65                        	ld	a1, 0(sp)
802003ca: aa 60                        	ld	ra, 136(sp)
802003cc: 49 61                        	addi	sp, sp, 144
802003ce: 82 80                        	ret

00000000802003d0 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h57bc764864c1e3b5E:
802003d0: 35 71                        	addi	sp, sp, -160
802003d2: 06 ed                        	sd	ra, 152(sp)
802003d4: aa fc                        	sd	a0, 120(sp)
802003d6: 2e e1                        	sd	a1, 128(sp)
802003d8: aa e8                        	sd	a0, 80(sp)
802003da: ae e4                        	sd	a1, 72(sp)
802003dc: 97 00 00 00                  	auipc	ra, 0
802003e0: e7 80 00 0a                  	jalr	160(ra)
802003e4: aa 85                        	add	a1, zero, a0
802003e6: 2a e5                        	sd	a0, 136(sp)
802003e8: ae e0                        	sd	a1, 64(sp)
802003ea: 09 a0                        	j	2
802003ec: 06 65                        	ld	a0, 64(sp)
802003ee: 97 10 00 00                  	auipc	ra, 1
802003f2: e7 80 20 32                  	jalr	802(ra)
802003f6: 09 a0                        	j	2
802003f8: 09 a0                        	j	2
802003fa: 21 45                        	addi	a0, zero, 8
802003fc: 2a e9                        	sd	a0, 144(sp)
802003fe: 2a fc                        	sd	a0, 56(sp)
80200400: 09 a0                        	j	2
80200402: 01 45                        	mv	a0, zero
80200404: e2 75                        	ld	a1, 56(sp)
80200406: 63 8b a5 00                  	beq	a1, a0, 22
8020040a: 09 a0                        	j	2
8020040c: 46 65                        	ld	a0, 80(sp)
8020040e: a6 65                        	ld	a1, 72(sp)
80200410: 97 00 00 00                  	auipc	ra, 0
80200414: e7 80 a0 f0                  	jalr	-246(ra)
80200418: 2a f8                        	sd	a0, 48(sp)
8020041a: 3d a0                        	j	46
8020041c: 06 65                        	ld	a0, 64(sp)
8020041e: c6 65                        	ld	a1, 80(sp)
80200420: 2a f4                        	sd	a0, 40(sp)
80200422: 2e 85                        	add	a0, zero, a1
80200424: a6 65                        	ld	a1, 72(sp)
80200426: 97 00 00 00                  	auipc	ra, 0
8020042a: e7 80 40 ef                  	jalr	-268(ra)
8020042e: 2a f0                        	sd	a0, 32(sp)
80200430: 09 a0                        	j	2
80200432: 22 75                        	ld	a0, 40(sp)
80200434: 82 75                        	ld	a1, 32(sp)
80200436: 97 20 00 00                  	auipc	ra, 2
8020043a: e7 80 c0 ee                  	jalr	-276(ra)
8020043e: 2a ec                        	sd	a0, 24(sp)
80200440: 09 a0                        	j	2
80200442: 62 65                        	ld	a0, 24(sp)
80200444: aa f4                        	sd	a0, 104(sp)
80200446: 11 a8                        	j	20
80200448: 06 65                        	ld	a0, 64(sp)
8020044a: c2 75                        	ld	a1, 48(sp)
8020044c: 97 10 00 00                  	auipc	ra, 1
80200450: e7 80 20 26                  	jalr	610(ra)
80200454: aa f4                        	sd	a0, 104(sp)
80200456: 09 a0                        	j	2
80200458: 09 a0                        	j	2
8020045a: 06 65                        	ld	a0, 64(sp)
8020045c: 97 00 00 00                  	auipc	ra, 0
80200460: e7 80 a0 e6                  	jalr	-406(ra)
80200464: 2a e8                        	sd	a0, 16(sp)
80200466: 09 a0                        	j	2
80200468: 26 75                        	ld	a0, 104(sp)
8020046a: c2 65                        	ld	a1, 16(sp)
8020046c: ae ec                        	sd	a1, 88(sp)
8020046e: aa f0                        	sd	a0, 96(sp)
80200470: 2a e4                        	sd	a0, 8(sp)
80200472: 2e 85                        	add	a0, zero, a1
80200474: a2 65                        	ld	a1, 8(sp)
80200476: ea 60                        	ld	ra, 152(sp)
80200478: 0d 61                        	addi	sp, sp, 160
8020047a: 82 80                        	ret

000000008020047c _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h2b8f36acdd2139acE:
8020047c: 41 11                        	addi	sp, sp, -16
8020047e: 2a e0                        	sd	a0, 0(sp)
80200480: 2e e4                        	sd	a1, 8(sp)
80200482: 41 01                        	addi	sp, sp, 16
80200484: 82 80                        	ret

0000000080200486 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha6528e73a68df393E:
80200486: 41 11                        	addi	sp, sp, -16
80200488: 2a e0                        	sd	a0, 0(sp)
8020048a: 2e e4                        	sd	a1, 8(sp)
8020048c: 41 01                        	addi	sp, sp, 16
8020048e: 82 80                        	ret

0000000080200490 _ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h225c8ce35fb64dd1E:
80200490: 79 71                        	addi	sp, sp, -48
80200492: 06 f4                        	sd	ra, 40(sp)
80200494: 2a e8                        	sd	a0, 16(sp)
80200496: 2e ec                        	sd	a1, 24(sp)
80200498: 97 10 00 00                  	auipc	ra, 1
8020049c: e7 80 a0 32                  	jalr	810(ra)
802004a0: 2a e4                        	sd	a0, 8(sp)
802004a2: 2e e0                        	sd	a1, 0(sp)
802004a4: 09 a0                        	j	2
802004a6: 22 65                        	ld	a0, 8(sp)
802004a8: 82 65                        	ld	a1, 0(sp)
802004aa: a2 70                        	ld	ra, 40(sp)
802004ac: 45 61                        	addi	sp, sp, 48
802004ae: 82 80                        	ret

00000000802004b0 _ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8c171aa982b30a6bE:
802004b0: 39 71                        	addi	sp, sp, -64
802004b2: 06 fc                        	sd	ra, 56(sp)
802004b4: 2a f0                        	sd	a0, 32(sp)
802004b6: 2e f4                        	sd	a1, 40(sp)
802004b8: 32 f8                        	sd	a2, 48(sp)
802004ba: 2a ec                        	sd	a0, 24(sp)
802004bc: 32 85                        	add	a0, zero, a2
802004be: 62 66                        	ld	a2, 24(sp)
802004c0: 2e e8                        	sd	a1, 16(sp)
802004c2: b2 85                        	add	a1, zero, a2
802004c4: 42 66                        	ld	a2, 16(sp)
802004c6: 97 10 00 00                  	auipc	ra, 1
802004ca: e7 80 c0 2b                  	jalr	700(ra)
802004ce: 2a e4                        	sd	a0, 8(sp)
802004d0: 2e e0                        	sd	a1, 0(sp)
802004d2: 09 a0                        	j	2
802004d4: 22 65                        	ld	a0, 8(sp)
802004d6: 82 65                        	ld	a1, 0(sp)
802004d8: e2 70                        	ld	ra, 56(sp)
802004da: 21 61                        	addi	sp, sp, 64
802004dc: 82 80                        	ret

00000000802004de _ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h971fc2c9305e2792E:
802004de: 79 71                        	addi	sp, sp, -48
802004e0: 06 f4                        	sd	ra, 40(sp)
802004e2: 2a e8                        	sd	a0, 16(sp)
802004e4: 2e ec                        	sd	a1, 24(sp)
802004e6: 97 10 00 00                  	auipc	ra, 1
802004ea: e7 80 60 2e                  	jalr	742(ra)
802004ee: 2a e4                        	sd	a0, 8(sp)
802004f0: 2e e0                        	sd	a1, 0(sp)
802004f2: 09 a0                        	j	2
802004f4: 22 65                        	ld	a0, 8(sp)
802004f6: 82 65                        	ld	a1, 0(sp)
802004f8: a2 70                        	ld	ra, 40(sp)
802004fa: 45 61                        	addi	sp, sp, 48
802004fc: 82 80                        	ret

00000000802004fe _ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h149a9ef9bf53e312E:
802004fe: 41 11                        	addi	sp, sp, -16
80200500: 2a e0                        	sd	a0, 0(sp)
80200502: 2e e4                        	sd	a1, 8(sp)
80200504: 41 01                        	addi	sp, sp, 16
80200506: 82 80                        	ret

0000000080200508 _ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78f59ccfb7d232a2E:
80200508: 41 11                        	addi	sp, sp, -16
8020050a: 2a e0                        	sd	a0, 0(sp)
8020050c: 2e e4                        	sd	a1, 8(sp)
8020050e: 41 01                        	addi	sp, sp, 16
80200510: 82 80                        	ret

0000000080200512 _ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h299e3da91583b343E:
80200512: 19 71                        	addi	sp, sp, -128
80200514: 86 fc                        	sd	ra, 120(sp)
80200516: aa e0                        	sd	a0, 64(sp)
80200518: 0c 61                        	ld	a1, 0(a0)
8020051a: 2a f8                        	sd	a0, 48(sp)
8020051c: 2e 85                        	add	a0, zero, a1
8020051e: 97 00 00 00                  	auipc	ra, 0
80200522: e7 80 a0 db                  	jalr	-582(ra)
80200526: 2a f4                        	sd	a0, 40(sp)
80200528: 09 a0                        	j	2
8020052a: 22 75                        	ld	a0, 40(sp)
8020052c: 97 10 00 00                  	auipc	ra, 1
80200530: e7 80 a0 13                  	jalr	314(ra)
80200534: 09 a0                        	j	2
80200536: 09 a0                        	j	2
80200538: 21 45                        	addi	a0, zero, 8
8020053a: aa e4                        	sd	a0, 72(sp)
8020053c: 2a f0                        	sd	a0, 32(sp)
8020053e: 09 a0                        	j	2
80200540: 01 45                        	mv	a0, zero
80200542: 82 75                        	ld	a1, 32(sp)
80200544: 63 94 a5 00                  	bne	a1, a0, 8
80200548: 09 a0                        	j	2
8020054a: 11 a8                        	j	20
8020054c: 42 75                        	ld	a0, 48(sp)
8020054e: 08 65                        	ld	a0, 8(a0)
80200550: 97 10 00 00                  	auipc	ra, 1
80200554: e7 80 00 1c                  	jalr	448(ra)
80200558: 09 a0                        	j	2
8020055a: 09 a0                        	j	2
8020055c: 09 a0                        	j	2
8020055e: 42 75                        	ld	a0, 48(sp)
80200560: 08 61                        	ld	a0, 0(a0)
80200562: 97 00 00 00                  	auipc	ra, 0
80200566: e7 80 60 d7                  	jalr	-650(ra)
8020056a: 2a ec                        	sd	a0, 24(sp)
8020056c: 09 a0                        	j	2
8020056e: 42 75                        	ld	a0, 48(sp)
80200570: 0c 65                        	ld	a1, 8(a0)
80200572: 62 66                        	ld	a2, 24(sp)
80200574: 63 0c b6 06                  	beq	a2, a1, 120
80200578: 09 a0                        	j	2
8020057a: 42 75                        	ld	a0, 48(sp)
8020057c: aa ec                        	sd	a0, 88(sp)
8020057e: 85 45                        	addi	a1, zero, 1
80200580: ae f0                        	sd	a1, 96(sp)
80200582: a1 45                        	addi	a1, zero, 8
80200584: ae f8                        	sd	a1, 112(sp)
80200586: 81 45                        	mv	a1, zero
80200588: 9d ed                        	bnez	a1, 62
8020058a: 09 a0                        	j	2
8020058c: 42 75                        	ld	a0, 48(sp)
8020058e: 08 61                        	ld	a0, 0(a0)
80200590: 97 00 00 00                  	auipc	ra, 0
80200594: e7 80 80 d4                  	jalr	-696(ra)
80200598: aa f4                        	sd	a0, 104(sp)
8020059a: c2 75                        	ld	a1, 48(sp)
8020059c: 90 61                        	ld	a2, 0(a1)
8020059e: 2a e8                        	sd	a0, 16(sp)
802005a0: 32 85                        	add	a0, zero, a2
802005a2: 97 00 00 00                  	auipc	ra, 0
802005a6: e7 80 60 d3                  	jalr	-714(ra)
802005aa: 85 45                        	addi	a1, zero, 1
802005ac: 97 10 00 00                  	auipc	ra, 1
802005b0: e7 80 00 09                  	jalr	144(ra)
802005b4: 97 00 00 00                  	auipc	ra, 0
802005b8: e7 80 20 d1                  	jalr	-750(ra)
802005bc: c2 75                        	ld	a1, 48(sp)
802005be: 88 e1                        	sd	a0, 0(a1)
802005c0: 42 65                        	ld	a0, 16(sp)
802005c2: aa e8                        	sd	a0, 80(sp)
802005c4: 0d a0                        	j	34
802005c6: 42 75                        	ld	a0, 48(sp)
802005c8: 08 65                        	ld	a0, 8(a0)
802005ca: fd 55                        	addi	a1, zero, -1
802005cc: 97 20 00 00                  	auipc	ra, 2
802005d0: e7 80 20 d7                  	jalr	-654(ra)
802005d4: c2 75                        	ld	a1, 48(sp)
802005d6: 88 e5                        	sd	a0, 8(a1)
802005d8: 88 61                        	ld	a0, 0(a1)
802005da: 97 00 00 00                  	auipc	ra, 0
802005de: e7 80 e0 cf                  	jalr	-770(ra)
802005e2: aa e8                        	sd	a0, 80(sp)
802005e4: 09 a0                        	j	2
802005e6: 46 65                        	ld	a0, 80(sp)
802005e8: 2a e4                        	sd	a0, 8(sp)
802005ea: 21 a0                        	j	8
802005ec: 01 45                        	mv	a0, zero
802005ee: 2a fc                        	sd	a0, 56(sp)
802005f0: 21 a0                        	j	8
802005f2: 22 65                        	ld	a0, 8(sp)
802005f4: 2a fc                        	sd	a0, 56(sp)
802005f6: 09 a0                        	j	2
802005f8: 62 75                        	ld	a0, 56(sp)
802005fa: e6 70                        	ld	ra, 120(sp)
802005fc: 09 61                        	addi	sp, sp, 128
802005fe: 82 80                        	ret

0000000080200600 _ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb603c1f8ebd4e748E:
80200600: 19 71                        	addi	sp, sp, -128
80200602: 86 fc                        	sd	ra, 120(sp)
80200604: aa e0                        	sd	a0, 64(sp)
80200606: 0c 61                        	ld	a1, 0(a0)
80200608: 2a f8                        	sd	a0, 48(sp)
8020060a: 2e 85                        	add	a0, zero, a1
8020060c: 97 00 00 00                  	auipc	ra, 0
80200610: e7 80 40 cc                  	jalr	-828(ra)
80200614: 2a f4                        	sd	a0, 40(sp)
80200616: 09 a0                        	j	2
80200618: 22 75                        	ld	a0, 40(sp)
8020061a: 97 10 00 00                  	auipc	ra, 1
8020061e: e7 80 e0 05                  	jalr	94(ra)
80200622: 09 a0                        	j	2
80200624: 09 a0                        	j	2
80200626: 05 45                        	addi	a0, zero, 1
80200628: aa e4                        	sd	a0, 72(sp)
8020062a: 2a f0                        	sd	a0, 32(sp)
8020062c: 09 a0                        	j	2
8020062e: 01 45                        	mv	a0, zero
80200630: 82 75                        	ld	a1, 32(sp)
80200632: 63 94 a5 00                  	bne	a1, a0, 8
80200636: 09 a0                        	j	2
80200638: 11 a8                        	j	20
8020063a: 42 75                        	ld	a0, 48(sp)
8020063c: 08 65                        	ld	a0, 8(a0)
8020063e: 97 10 00 00                  	auipc	ra, 1
80200642: e7 80 40 0e                  	jalr	228(ra)
80200646: 09 a0                        	j	2
80200648: 09 a0                        	j	2
8020064a: 09 a0                        	j	2
8020064c: 42 75                        	ld	a0, 48(sp)
8020064e: 08 61                        	ld	a0, 0(a0)
80200650: 97 00 00 00                  	auipc	ra, 0
80200654: e7 80 00 c8                  	jalr	-896(ra)
80200658: 2a ec                        	sd	a0, 24(sp)
8020065a: 09 a0                        	j	2
8020065c: 42 75                        	ld	a0, 48(sp)
8020065e: 0c 65                        	ld	a1, 8(a0)
80200660: 62 66                        	ld	a2, 24(sp)
80200662: 63 0b b6 06                  	beq	a2, a1, 118
80200666: 09 a0                        	j	2
80200668: 42 75                        	ld	a0, 48(sp)
8020066a: aa ec                        	sd	a0, 88(sp)
8020066c: 85 45                        	addi	a1, zero, 1
8020066e: ae f0                        	sd	a1, 96(sp)
80200670: ae f8                        	sd	a1, 112(sp)
80200672: 81 45                        	mv	a1, zero
80200674: 9d ed                        	bnez	a1, 62
80200676: 09 a0                        	j	2
80200678: 42 75                        	ld	a0, 48(sp)
8020067a: 08 61                        	ld	a0, 0(a0)
8020067c: 97 00 00 00                  	auipc	ra, 0
80200680: e7 80 40 c5                  	jalr	-940(ra)
80200684: aa f4                        	sd	a0, 104(sp)
80200686: c2 75                        	ld	a1, 48(sp)
80200688: 90 61                        	ld	a2, 0(a1)
8020068a: 2a e8                        	sd	a0, 16(sp)
8020068c: 32 85                        	add	a0, zero, a2
8020068e: 97 00 00 00                  	auipc	ra, 0
80200692: e7 80 20 c4                  	jalr	-958(ra)
80200696: 85 45                        	addi	a1, zero, 1
80200698: 97 10 00 00                  	auipc	ra, 1
8020069c: e7 80 a0 fb                  	jalr	-70(ra)
802006a0: 97 00 00 00                  	auipc	ra, 0
802006a4: e7 80 c0 c1                  	jalr	-996(ra)
802006a8: c2 75                        	ld	a1, 48(sp)
802006aa: 88 e1                        	sd	a0, 0(a1)
802006ac: 42 65                        	ld	a0, 16(sp)
802006ae: aa e8                        	sd	a0, 80(sp)
802006b0: 0d a0                        	j	34
802006b2: 42 75                        	ld	a0, 48(sp)
802006b4: 08 65                        	ld	a0, 8(a0)
802006b6: fd 55                        	addi	a1, zero, -1
802006b8: 97 20 00 00                  	auipc	ra, 2
802006bc: e7 80 60 c8                  	jalr	-890(ra)
802006c0: c2 75                        	ld	a1, 48(sp)
802006c2: 88 e5                        	sd	a0, 8(a1)
802006c4: 88 61                        	ld	a0, 0(a1)
802006c6: 97 00 00 00                  	auipc	ra, 0
802006ca: e7 80 a0 c0                  	jalr	-1014(ra)
802006ce: aa e8                        	sd	a0, 80(sp)
802006d0: 09 a0                        	j	2
802006d2: 46 65                        	ld	a0, 80(sp)
802006d4: 2a e4                        	sd	a0, 8(sp)
802006d6: 21 a0                        	j	8
802006d8: 01 45                        	mv	a0, zero
802006da: 2a fc                        	sd	a0, 56(sp)
802006dc: 21 a0                        	j	8
802006de: 22 65                        	ld	a0, 8(sp)
802006e0: 2a fc                        	sd	a0, 56(sp)
802006e2: 09 a0                        	j	2
802006e4: 62 75                        	ld	a0, 56(sp)
802006e6: e6 70                        	ld	ra, 120(sp)
802006e8: 09 61                        	addi	sp, sp, 128
802006ea: 82 80                        	ret

00000000802006ec _ZN4core4char7methods15encode_utf8_raw17h9fa3de3fdd5f6ec9E:
802006ec: 45 71                        	addi	sp, sp, -464
802006ee: 86 e7                        	sd	ra, 456(sp)
802006f0: aa 86                        	add	a3, zero, a0
802006f2: 2a d3                        	sw	a0, 164(sp)
802006f4: ae ea                        	sd	a1, 336(sp)
802006f6: b2 ee                        	sd	a2, 344(sp)
802006f8: 32 ed                        	sd	a2, 152(sp)
802006fa: 2e e9                        	sd	a1, 144(sp)
802006fc: 36 e5                        	sd	a3, 136(sp)
802006fe: 97 00 00 00                  	auipc	ra, 0
80200702: e7 80 c0 27                  	jalr	636(ra)
80200706: 2a f5                        	sd	a0, 168(sp)
80200708: 09 a0                        	j	2
8020070a: 2a 75                        	ld	a0, 168(sp)

000000008020070c .LBB0_22:
8020070c: 17 46 00 00                  	auipc	a2, 4
80200710: 13 06 46 cb                  	addi	a2, a2, -844
80200714: ca 65                        	ld	a1, 144(sp)
80200716: 2a e1                        	sd	a0, 128(sp)
80200718: 2e 85                        	add	a0, zero, a1
8020071a: ea 65                        	ld	a1, 152(sp)
8020071c: 97 00 00 00                  	auipc	ra, 0
80200720: e7 80 20 dc                  	jalr	-574(ra)
80200724: aa fc                        	sd	a0, 120(sp)
80200726: ae f8                        	sd	a1, 112(sp)
80200728: 09 a0                        	j	2
8020072a: 0a 65                        	ld	a0, 128(sp)
8020072c: 2a f9                        	sd	a0, 176(sp)
8020072e: e6 75                        	ld	a1, 120(sp)
80200730: 2e fd                        	sd	a1, 184(sp)
80200732: 46 76                        	ld	a2, 112(sp)
80200734: b2 e1                        	sd	a2, 192(sp)
80200736: 85 46                        	addi	a3, zero, 1
80200738: 0a 67                        	ld	a4, 128(sp)
8020073a: aa f4                        	sd	a0, 104(sp)
8020073c: 63 02 d7 02                  	beq	a4, a3, 36
80200740: 09 a0                        	j	2
80200742: 09 45                        	addi	a0, zero, 2
80200744: a6 75                        	ld	a1, 104(sp)
80200746: 63 81 a5 04                  	beq	a1, a0, 66
8020074a: 09 a0                        	j	2
8020074c: 0d 45                        	addi	a0, zero, 3
8020074e: a6 75                        	ld	a1, 104(sp)
80200750: 63 81 a5 04                  	beq	a1, a0, 66
80200754: 09 a0                        	j	2
80200756: 11 45                        	addi	a0, zero, 4
80200758: a6 75                        	ld	a1, 104(sp)
8020075a: 63 81 a5 04                  	beq	a1, a0, 66
8020075e: 31 a0                        	j	12
80200760: 0e 65                        	ld	a0, 192(sp)
80200762: 81 45                        	mv	a1, zero
80200764: 63 11 b5 04                  	bne	a0, a1, 66
80200768: 09 a0                        	j	2

000000008020076a .LBB0_23:
8020076a: 17 45 00 00                  	auipc	a0, 4
8020076e: 13 05 65 cf                  	addi	a0, a0, -778
80200772: 0c 61                        	ld	a1, 0(a0)
80200774: 4a 65                        	ld	a0, 144(sp)
80200776: 6a 66                        	ld	a2, 152(sp)
80200778: ae f0                        	sd	a1, 96(sp)
8020077a: b2 85                        	add	a1, zero, a2
8020077c: 97 00 00 00                  	auipc	ra, 0
80200780: e7 80 e0 b8                  	jalr	-1138(ra)
80200784: aa e2                        	sd	a0, 320(sp)
80200786: fd a0                        	j	238
80200788: 0e 65                        	ld	a0, 192(sp)
8020078a: 85 45                        	addi	a1, zero, 1
8020078c: 63 e4 a5 02                  	bltu	a1, a0, 40
80200790: e9 bf                        	j	-38
80200792: 0e 65                        	ld	a0, 192(sp)
80200794: 89 45                        	addi	a1, zero, 2
80200796: 63 e4 a5 04                  	bltu	a1, a0, 72
8020079a: c1 bf                        	j	-48
8020079c: 0e 65                        	ld	a0, 192(sp)
8020079e: 8d 45                        	addi	a1, zero, 3
802007a0: 63 ef a5 06                  	bltu	a1, a0, 126
802007a4: d9 b7                        	j	-58
802007a6: 6a 75                        	ld	a0, 184(sp)
802007a8: 2a f7                        	sd	a0, 424(sp)
802007aa: 83 05 41 0a                  	lb	a1, 164(sp)
802007ae: 23 00 b5 00                  	sb	a1, 0(a0)
802007b2: 8d a2                        	j	354
802007b4: 6a 75                        	ld	a0, 184(sp)
802007b6: 2a ef                        	sd	a0, 408(sp)
802007b8: 93 05 15 00                  	addi	a1, a0, 1
802007bc: 2e f3                        	sd	a1, 416(sp)
802007be: 9a 55                        	lw	a1, 164(sp)
802007c0: 99 81                        	srli	a1, a1, 6
802007c2: fd 89                        	andi	a1, a1, 31
802007c4: 93 e5 05 0c                  	ori	a1, a1, 192
802007c8: 23 00 b5 00                  	sb	a1, 0(a0)
802007cc: 83 45 41 0a                  	lbu	a1, 164(sp)
802007d0: 93 f5 f5 03                  	andi	a1, a1, 63
802007d4: 93 e5 05 08                  	ori	a1, a1, 128
802007d8: a3 00 b5 00                  	sb	a1, 1(a0)
802007dc: 25 aa                        	j	312
802007de: 6a 75                        	ld	a0, 184(sp)
802007e0: 2a e3                        	sd	a0, 384(sp)
802007e2: 93 05 15 00                  	addi	a1, a0, 1
802007e6: 2e e7                        	sd	a1, 392(sp)
802007e8: 93 05 25 00                  	addi	a1, a0, 2
802007ec: 2e eb                        	sd	a1, 400(sp)
802007ee: 9a 55                        	lw	a1, 164(sp)
802007f0: b1 81                        	srli	a1, a1, 12
802007f2: bd 89                        	andi	a1, a1, 15
802007f4: 93 e5 05 0e                  	ori	a1, a1, 224
802007f8: 23 00 b5 00                  	sb	a1, 0(a0)
802007fc: 9a 55                        	lw	a1, 164(sp)
802007fe: 99 81                        	srli	a1, a1, 6
80200800: 93 f5 f5 03                  	andi	a1, a1, 63
80200804: 93 e5 05 08                  	ori	a1, a1, 128
80200808: a3 00 b5 00                  	sb	a1, 1(a0)
8020080c: 83 45 41 0a                  	lbu	a1, 164(sp)
80200810: 93 f5 f5 03                  	andi	a1, a1, 63
80200814: 93 e5 05 08                  	ori	a1, a1, 128
80200818: 23 01 b5 00                  	sb	a1, 2(a0)
8020081c: e5 a8                        	j	248
8020081e: 6a 75                        	ld	a0, 184(sp)
80200820: aa f2                        	sd	a0, 352(sp)
80200822: 93 05 15 00                  	addi	a1, a0, 1
80200826: ae f6                        	sd	a1, 360(sp)
80200828: 93 05 25 00                  	addi	a1, a0, 2
8020082c: ae fa                        	sd	a1, 368(sp)
8020082e: 93 05 35 00                  	addi	a1, a0, 3
80200832: ae fe                        	sd	a1, 376(sp)
80200834: 9a 55                        	lw	a1, 164(sp)
80200836: c9 81                        	srli	a1, a1, 18
80200838: 9d 89                        	andi	a1, a1, 7
8020083a: 93 e5 05 0f                  	ori	a1, a1, 240
8020083e: 23 00 b5 00                  	sb	a1, 0(a0)
80200842: 9a 55                        	lw	a1, 164(sp)
80200844: b1 81                        	srli	a1, a1, 12
80200846: 93 f5 f5 03                  	andi	a1, a1, 63
8020084a: 93 e5 05 08                  	ori	a1, a1, 128
8020084e: a3 00 b5 00                  	sb	a1, 1(a0)
80200852: 9a 55                        	lw	a1, 164(sp)
80200854: 99 81                        	srli	a1, a1, 6
80200856: 93 f5 f5 03                  	andi	a1, a1, 63
8020085a: 93 e5 05 08                  	ori	a1, a1, 128
8020085e: 23 01 b5 00                  	sb	a1, 2(a0)
80200862: 83 45 41 0a                  	lbu	a1, 164(sp)
80200866: 93 f5 f5 03                  	andi	a1, a1, 63
8020086a: 93 e5 05 08                  	ori	a1, a1, 128
8020086e: a3 01 b5 00                  	sb	a1, 3(a0)
80200872: 4d a0                        	j	162
80200874: 28 11                        	addi	a0, sp, 168
80200876: 2a f6                        	sd	a0, 296(sp)
80200878: 4c 11                        	addi	a1, sp, 164
8020087a: 2e fa                        	sd	a1, 304(sp)
8020087c: 90 02                        	addi	a2, sp, 320
8020087e: 32 fe                        	sd	a2, 312(sp)
80200880: 2a fb                        	sd	a0, 432(sp)
80200882: 2e ff                        	sd	a1, 440(sp)
80200884: b2 e3                        	sd	a2, 448(sp)

0000000080200886 .LBB0_24:
80200886: 97 46 00 00                  	auipc	a3, 4
8020088a: 93 86 e6 85                  	addi	a3, a3, -1954
8020088e: ae ec                        	sd	a1, 88(sp)
80200890: b6 85                        	add	a1, zero, a3
80200892: b2 e8                        	sd	a2, 80(sp)
80200894: 97 00 00 00                  	auipc	ra, 0
80200898: e7 80 c0 6a                  	jalr	1708(ra)
8020089c: aa e4                        	sd	a0, 72(sp)
8020089e: ae e0                        	sd	a1, 64(sp)
802008a0: 09 a0                        	j	2

00000000802008a2 .LBB0_25:
802008a2: 97 35 00 00                  	auipc	a1, 3
802008a6: 93 85 05 50                  	addi	a1, a1, 1280
802008aa: 66 65                        	ld	a0, 88(sp)
802008ac: 97 00 00 00                  	auipc	ra, 0
802008b0: e7 80 60 6b                  	jalr	1718(ra)
802008b4: 2a fc                        	sd	a0, 56(sp)
802008b6: 2e f8                        	sd	a1, 48(sp)
802008b8: 09 a0                        	j	2

00000000802008ba .LBB0_26:
802008ba: 97 45 00 00                  	auipc	a1, 4
802008be: 93 85 a5 82                  	addi	a1, a1, -2006
802008c2: 46 65                        	ld	a0, 80(sp)
802008c4: 97 00 00 00                  	auipc	ra, 0
802008c8: e7 80 c0 67                  	jalr	1660(ra)
802008cc: 2a f4                        	sd	a0, 40(sp)
802008ce: 2e f0                        	sd	a1, 32(sp)
802008d0: 09 a0                        	j	2
802008d2: 26 65                        	ld	a0, 72(sp)
802008d4: aa fd                        	sd	a0, 248(sp)
802008d6: 86 65                        	ld	a1, 64(sp)
802008d8: 2e e2                        	sd	a1, 256(sp)
802008da: 62 76                        	ld	a2, 56(sp)
802008dc: 32 e6                        	sd	a2, 264(sp)
802008de: c2 76                        	ld	a3, 48(sp)
802008e0: 36 ea                        	sd	a3, 272(sp)
802008e2: 22 77                        	ld	a4, 40(sp)
802008e4: 3a ee                        	sd	a4, 280(sp)
802008e6: 82 77                        	ld	a5, 32(sp)
802008e8: 3e f2                        	sd	a5, 288(sp)
802008ea: a8 01                        	addi	a0, sp, 200
802008ec: b4 19                        	addi	a3, sp, 248
802008ee: 0d 48                        	addi	a6, zero, 3
802008f0: 86 75                        	ld	a1, 96(sp)
802008f2: 42 86                        	add	a2, zero, a6
802008f4: 42 87                        	add	a4, zero, a6
802008f6: 97 10 00 00                  	auipc	ra, 1
802008fa: e7 80 c0 93                  	jalr	-1732(ra)
802008fe: 09 a0                        	j	2

0000000080200900 .LBB0_27:
80200900: 97 45 00 00                  	auipc	a1, 4
80200904: 93 85 85 bb                  	addi	a1, a1, -1096
80200908: a8 01                        	addi	a0, sp, 200
8020090a: 97 20 00 00                  	auipc	ra, 2
8020090e: e7 80 a0 b8                  	jalr	-1142(ra)
80200912: 00 00                        	unimp	
80200914: 2a 75                        	ld	a0, 168(sp)
80200916: aa e6                        	sd	a0, 328(sp)

0000000080200918 .LBB0_28:
80200918: 97 46 00 00                  	auipc	a3, 4
8020091c: 93 86 06 ac                  	addi	a3, a3, -1344
80200920: ca 65                        	ld	a1, 144(sp)
80200922: 2a ec                        	sd	a0, 24(sp)
80200924: 2e 85                        	add	a0, zero, a1
80200926: ea 65                        	ld	a1, 152(sp)
80200928: 62 66                        	ld	a2, 24(sp)
8020092a: 97 00 00 00                  	auipc	ra, 0
8020092e: e7 80 60 b8                  	jalr	-1146(ra)
80200932: 2a e8                        	sd	a0, 16(sp)
80200934: 2e e4                        	sd	a1, 8(sp)
80200936: 09 a0                        	j	2
80200938: 42 65                        	ld	a0, 16(sp)
8020093a: a2 65                        	ld	a1, 8(sp)
8020093c: be 60                        	ld	ra, 456(sp)
8020093e: 79 61                        	addi	sp, sp, 464
80200940: 82 80                        	ret

0000000080200942 _ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h86f0233060d9b134E:
80200942: 5d 71                        	addi	sp, sp, -80
80200944: 86 e4                        	sd	ra, 72(sp)
80200946: aa 86                        	add	a3, zero, a0
80200948: 2a da                        	sw	a0, 52(sp)
8020094a: 2e fc                        	sd	a1, 56(sp)
8020094c: b2 e0                        	sd	a2, 64(sp)
8020094e: 36 f4                        	sd	a3, 40(sp)
80200950: 97 00 00 00                  	auipc	ra, 0
80200954: e7 80 c0 d9                  	jalr	-612(ra)
80200958: 2a f0                        	sd	a0, 32(sp)
8020095a: 2e ec                        	sd	a1, 24(sp)
8020095c: 09 a0                        	j	2
8020095e: 02 75                        	ld	a0, 32(sp)
80200960: e2 65                        	ld	a1, 24(sp)
80200962: 97 00 00 00                  	auipc	ra, 0
80200966: e7 80 40 76                  	jalr	1892(ra)
8020096a: 2a e8                        	sd	a0, 16(sp)
8020096c: 2e e4                        	sd	a1, 8(sp)
8020096e: 09 a0                        	j	2
80200970: 42 65                        	ld	a0, 16(sp)
80200972: a2 65                        	ld	a1, 8(sp)
80200974: a6 60                        	ld	ra, 72(sp)
80200976: 61 61                        	addi	sp, sp, 80
80200978: 82 80                        	ret

000000008020097a _ZN4core4char7methods8len_utf817hc80fcc4d906c1c3aE:
8020097a: 01 11                        	addi	sp, sp, -32
8020097c: 9b 05 05 00                  	sext.w	a1, a0
80200980: 2a 86                        	add	a2, zero, a0
80200982: 2a ce                        	sw	a0, 28(sp)
80200984: 13 05 00 08                  	addi	a0, zero, 128
80200988: 32 e4                        	sd	a2, 8(sp)
8020098a: 63 ea a5 00                  	bltu	a1, a0, 20
8020098e: 09 a0                        	j	2
80200990: 22 65                        	ld	a0, 8(sp)
80200992: 9b 55 b5 00                  	srliw	a1, a0, 11
80200996: 01 46                        	mv	a2, zero
80200998: 63 8d c5 00                  	beq	a1, a2, 26
8020099c: 21 a0                        	j	8
8020099e: 05 45                        	addi	a0, zero, 1
802009a0: 2a e8                        	sd	a0, 16(sp)
802009a2: 1d a0                        	j	38
802009a4: 22 65                        	ld	a0, 8(sp)
802009a6: 9b 55 05 01                  	srliw	a1, a0, 16
802009aa: 01 46                        	mv	a2, zero
802009ac: 63 89 c5 00                  	beq	a1, a2, 18
802009b0: 21 a0                        	j	8
802009b2: 09 45                        	addi	a0, zero, 2
802009b4: 2a e8                        	sd	a0, 16(sp)
802009b6: 01 a8                        	j	16
802009b8: 11 45                        	addi	a0, zero, 4
802009ba: 2a e8                        	sd	a0, 16(sp)
802009bc: 21 a0                        	j	8
802009be: 0d 45                        	addi	a0, zero, 3
802009c0: 2a e8                        	sd	a0, 16(sp)
802009c2: 09 a0                        	j	2
802009c4: 09 a0                        	j	2
802009c6: 09 a0                        	j	2
802009c8: 42 65                        	ld	a0, 16(sp)
802009ca: 05 61                        	addi	sp, sp, 32
802009cc: 82 80                        	ret

00000000802009ce _ZN50_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h03662b09fec30db4E:
802009ce: 01 11                        	addi	sp, sp, -32
802009d0: 06 ec                        	sd	ra, 24(sp)
802009d2: 2a e4                        	sd	a0, 8(sp)
802009d4: 2e e8                        	sd	a1, 16(sp)
802009d6: 08 61                        	ld	a0, 0(a0)
802009d8: 97 10 00 00                  	auipc	ra, 1
802009dc: e7 80 80 8b                  	jalr	-1864(ra)
802009e0: 2a e0                        	sd	a0, 0(sp)
802009e2: 09 a0                        	j	2
802009e4: 02 65                        	ld	a0, 0(sp)
802009e6: e2 60                        	ld	ra, 24(sp)
802009e8: 05 61                        	addi	sp, sp, 32
802009ea: 82 80                        	ret

00000000802009ec __interrupt:
802009ec: 6d 71                        	addi	sp, sp, -272
802009ee: 06 e4                        	sd	ra, 8(sp)
802009f0: 93 00 01 11                  	addi	ra, sp, 272
802009f4: 06 e8                        	sd	ra, 16(sp)
802009f6: 0e ec                        	sd	gp, 24(sp)
802009f8: 12 f0                        	sd	tp, 32(sp)
802009fa: 16 f4                        	sd	t0, 40(sp)
802009fc: 1a f8                        	sd	t1, 48(sp)
802009fe: 1e fc                        	sd	t2, 56(sp)
80200a00: a2 e0                        	sd	s0, 64(sp)
80200a02: a6 e4                        	sd	s1, 72(sp)
80200a04: aa e8                        	sd	a0, 80(sp)
80200a06: ae ec                        	sd	a1, 88(sp)
80200a08: b2 f0                        	sd	a2, 96(sp)
80200a0a: b6 f4                        	sd	a3, 104(sp)
80200a0c: ba f8                        	sd	a4, 112(sp)
80200a0e: be fc                        	sd	a5, 120(sp)
80200a10: 42 e1                        	sd	a6, 128(sp)
80200a12: 46 e5                        	sd	a7, 136(sp)
80200a14: 4a e9                        	sd	s2, 144(sp)
80200a16: 4e ed                        	sd	s3, 152(sp)
80200a18: 52 f1                        	sd	s4, 160(sp)
80200a1a: 56 f5                        	sd	s5, 168(sp)
80200a1c: 5a f9                        	sd	s6, 176(sp)
80200a1e: 5e fd                        	sd	s7, 184(sp)
80200a20: e2 e1                        	sd	s8, 192(sp)
80200a22: e6 e5                        	sd	s9, 200(sp)
80200a24: ea e9                        	sd	s10, 208(sp)
80200a26: ee ed                        	sd	s11, 216(sp)
80200a28: f2 f1                        	sd	t3, 224(sp)
80200a2a: f6 f5                        	sd	t4, 232(sp)
80200a2c: fa f9                        	sd	t5, 240(sp)
80200a2e: fe fd                        	sd	t6, 248(sp)
80200a30: f3 24 00 10                  	csrr	s1, sstatus
80200a34: 73 29 10 14                  	csrr	s2, sepc
80200a38: 26 e2                        	sd	s1, 256(sp)
80200a3a: 4a e6                        	sd	s2, 264(sp)
80200a3c: 0a 85                        	add	a0, zero, sp
80200a3e: f3 25 20 14                  	csrr	a1, scause
80200a42: 73 26 30 14                  	csrr	a2, stval
80200a46: ef 00 00 07                  	jal	112

0000000080200a4a __restore:
80200a4a: 92 64                        	ld	s1, 256(sp)
80200a4c: 32 69                        	ld	s2, 264(sp)
80200a4e: 73 90 04 10                  	csrw	sstatus, s1
80200a52: 73 10 19 14                  	csrw	sepc, s2
80200a56: a2 60                        	ld	ra, 8(sp)
80200a58: e2 61                        	ld	gp, 24(sp)
80200a5a: 02 72                        	ld	tp, 32(sp)
80200a5c: a2 72                        	ld	t0, 40(sp)
80200a5e: 42 73                        	ld	t1, 48(sp)
80200a60: e2 73                        	ld	t2, 56(sp)
80200a62: 06 64                        	ld	s0, 64(sp)
80200a64: a6 64                        	ld	s1, 72(sp)
80200a66: 46 65                        	ld	a0, 80(sp)
80200a68: e6 65                        	ld	a1, 88(sp)
80200a6a: 06 76                        	ld	a2, 96(sp)
80200a6c: a6 76                        	ld	a3, 104(sp)
80200a6e: 46 77                        	ld	a4, 112(sp)
80200a70: e6 77                        	ld	a5, 120(sp)
80200a72: 0a 68                        	ld	a6, 128(sp)
80200a74: aa 68                        	ld	a7, 136(sp)
80200a76: 4a 69                        	ld	s2, 144(sp)
80200a78: ea 69                        	ld	s3, 152(sp)
80200a7a: 0a 7a                        	ld	s4, 160(sp)
80200a7c: aa 7a                        	ld	s5, 168(sp)
80200a7e: 4a 7b                        	ld	s6, 176(sp)
80200a80: ea 7b                        	ld	s7, 184(sp)
80200a82: 0e 6c                        	ld	s8, 192(sp)
80200a84: ae 6c                        	ld	s9, 200(sp)
80200a86: 4e 6d                        	ld	s10, 208(sp)
80200a88: ee 6d                        	ld	s11, 216(sp)
80200a8a: 0e 7e                        	ld	t3, 224(sp)
80200a8c: ae 7e                        	ld	t4, 232(sp)
80200a8e: 4e 7f                        	ld	t5, 240(sp)
80200a90: ee 7f                        	ld	t6, 248(sp)
80200a92: 42 61                        	ld	sp, 16(sp)
80200a94: 73 00 20 10                  	sret	

0000000080200a98 _ZN2os9interrupt7handler4init17hbbc5f43058fa2e70E:
; pub fn init() {
80200a98: 41 11                        	addi	sp, sp, -16
;         stvec::write(__interrupt as usize, stvec::TrapMode::Direct);
80200a9a: 06 e4                        	sd	ra, 8(sp)

0000000080200a9c .LBB0_2:
80200a9c: 17 05 00 00                  	auipc	a0, 0
80200aa0: 13 05 05 f5                  	addi	a0, a0, -176
80200aa4: 81 45                        	mv	a1, zero
80200aa6: 97 10 00 00                  	auipc	ra, 1
80200aaa: e7 80 80 e0                  	jalr	-504(ra)
80200aae: 09 a0                        	j	2
; }
80200ab0: a2 60                        	ld	ra, 8(sp)
80200ab2: 41 01                        	addi	sp, sp, 16
80200ab4: 82 80                        	ret

0000000080200ab6 handle_interrupt:
; pub fn handle_interrupt(context: &mut Context, scause: Scause, stval: usize) {
80200ab6: 5d 71                        	addi	sp, sp, -80
80200ab8: 86 e4                        	sd	ra, 72(sp)
80200aba: 2e f0                        	sd	a1, 32(sp)
80200abc: 2a fc                        	sd	a0, 56(sp)
80200abe: b2 e0                        	sd	a2, 64(sp)
80200ac0: 0c 10                        	addi	a1, sp, 32
;     match scause.cause() {
80200ac2: 2a ec                        	sd	a0, 24(sp)
80200ac4: 2e 85                        	add	a0, zero, a1
80200ac6: 32 e8                        	sd	a2, 16(sp)
80200ac8: 97 f0 ff ff                  	auipc	ra, 1048575
80200acc: e7 80 80 5c                  	jalr	1480(ra)
80200ad0: 23 08 a1 02                  	sb	a0, 48(sp)
80200ad4: a3 08 b1 02                  	sb	a1, 49(sp)
80200ad8: 09 a0                        	j	2
;         Trap::Exception(Exception::Breakpoint) => breakpoint(context),
80200ada: 03 45 01 03                  	lbu	a0, 48(sp)
80200ade: 93 75 15 00                  	andi	a1, a0, 1
80200ae2: 01 46                        	mv	a2, zero
80200ae4: 2a e4                        	sd	a0, 8(sp)
80200ae6: 63 88 c5 00                  	beq	a1, a2, 16
80200aea: 09 a0                        	j	2
80200aec: 05 45                        	addi	a0, zero, 1
80200aee: a2 65                        	ld	a1, 8(sp)
80200af0: 63 81 a5 02                  	beq	a1, a0, 34
80200af4: 39 a0                        	j	14
;         Trap::Interrupt(Interrupt::SupervisorTimer) => supervisor_timer(context),
80200af6: 03 45 11 03                  	lbu	a0, 49(sp)
80200afa: 8d 45                        	addi	a1, zero, 3
80200afc: 63 08 b5 02                  	beq	a0, a1, 48
80200b00: 09 a0                        	j	2
;         _ => fault(context, scause, stval),
80200b02: 82 75                        	ld	a1, 32(sp)
80200b04: 62 65                        	ld	a0, 24(sp)
80200b06: 42 66                        	ld	a2, 16(sp)
80200b08: 97 00 00 00                  	auipc	ra, 0
80200b0c: e7 80 a0 0e                  	jalr	234(ra)
80200b10: 2d a0                        	j	42
;         Trap::Exception(Exception::Breakpoint) => breakpoint(context),
80200b12: 03 45 11 03                  	lbu	a0, 49(sp)
80200b16: 8d 45                        	addi	a1, zero, 3
80200b18: e3 15 b5 fe                  	bne	a0, a1, -22
80200b1c: 09 a0                        	j	2
80200b1e: 62 65                        	ld	a0, 24(sp)
80200b20: 97 00 00 00                  	auipc	ra, 0
80200b24: e7 80 20 02                  	jalr	34(ra)
80200b28: 09 a0                        	j	2
;     match scause.cause() {
80200b2a: 09 a8                        	j	18
;         Trap::Interrupt(Interrupt::SupervisorTimer) => supervisor_timer(context),
80200b2c: 62 65                        	ld	a0, 24(sp)
80200b2e: 97 00 00 00                  	auipc	ra, 0
80200b32: e7 80 e0 0a                  	jalr	174(ra)
80200b36: 09 a0                        	j	2
;     match scause.cause() {
80200b38: 11 a0                        	j	4
80200b3a: 09 a0                        	j	2
; }
80200b3c: a6 60                        	ld	ra, 72(sp)
80200b3e: 61 61                        	addi	sp, sp, 80
80200b40: 82 80                        	ret

0000000080200b42 _ZN2os9interrupt7handler10breakpoint17hbc4bd47d864fe50fE:
; fn breakpoint(context: &mut Context) {
80200b42: 75 71                        	addi	sp, sp, -144
80200b44: 06 e5                        	sd	ra, 136(sp)
80200b46: aa fc                        	sd	a0, 120(sp)

0000000080200b48 .LBB2_6:
;     println!("Breakpoint at 0x{:x}", context.sepc);
80200b48: 97 45 00 00                  	auipc	a1, 4
80200b4c: 93 85 05 9e                  	addi	a1, a1, -1568
80200b50: 8c 61                        	ld	a1, 0(a1)
80200b52: 13 06 85 10                  	addi	a2, a0, 264
80200b56: b2 f8                        	sd	a2, 112(sp)
80200b58: 32 e1                        	sd	a2, 128(sp)

0000000080200b5a .LBB2_7:
80200b5a: 97 36 00 00                  	auipc	a3, 3
80200b5e: 93 86 86 2d                  	addi	a3, a3, 728
80200b62: 2a f4                        	sd	a0, 40(sp)
80200b64: 32 85                        	add	a0, zero, a2
80200b66: 2e f0                        	sd	a1, 32(sp)
80200b68: b6 85                        	add	a1, zero, a3
80200b6a: 97 00 00 00                  	auipc	ra, 0
80200b6e: e7 80 60 3d                  	jalr	982(ra)
80200b72: 2a ec                        	sd	a0, 24(sp)
80200b74: 2e e8                        	sd	a1, 16(sp)
80200b76: 09 a0                        	j	2
80200b78: 62 65                        	ld	a0, 24(sp)
80200b7a: aa f0                        	sd	a0, 96(sp)
80200b7c: c2 65                        	ld	a1, 16(sp)
80200b7e: ae f4                        	sd	a1, 104(sp)
80200b80: 08 18                        	addi	a0, sp, 48
80200b82: 09 46                        	addi	a2, zero, 2
80200b84: 94 10                        	addi	a3, sp, 96
80200b86: 05 47                        	addi	a4, zero, 1
80200b88: 82 75                        	ld	a1, 32(sp)
80200b8a: 97 00 00 00                  	auipc	ra, 0
80200b8e: e7 80 80 6a                  	jalr	1704(ra)
80200b92: 09 a0                        	j	2
80200b94: 08 18                        	addi	a0, sp, 48
80200b96: 97 00 00 00                  	auipc	ra, 0
80200b9a: e7 80 80 23                  	jalr	568(ra)
80200b9e: 09 a0                        	j	2
;     context.sepc += 2;
80200ba0: 22 75                        	ld	a0, 40(sp)
80200ba2: 83 35 85 10                  	ld	a1, 264(a0)
80200ba6: 13 86 25 00                  	addi	a2, a1, 2
80200baa: 32 e4                        	sd	a2, 8(sp)
80200bac: 63 6a b6 00                  	bltu	a2, a1, 20
80200bb0: 09 a0                        	j	2
80200bb2: 22 65                        	ld	a0, 8(sp)
80200bb4: a2 75                        	ld	a1, 40(sp)
80200bb6: 23 b4 a5 10                  	sd	a0, 264(a1)
; }
80200bba: aa 60                        	ld	ra, 136(sp)
80200bbc: 49 61                        	addi	sp, sp, 144
80200bbe: 82 80                        	ret

0000000080200bc0 .LBB2_8:
;     context.sepc += 2;
80200bc0: 17 45 00 00                  	auipc	a0, 4
80200bc4: 13 05 05 9a                  	addi	a0, a0, -1632

0000000080200bc8 .LBB2_9:
80200bc8: 17 46 00 00                  	auipc	a2, 4
80200bcc: 13 06 06 98                  	addi	a2, a2, -1664
80200bd0: f1 45                        	addi	a1, zero, 28
80200bd2: 97 20 00 00                  	auipc	ra, 2
80200bd6: e7 80 60 85                  	jalr	-1962(ra)
80200bda: 00 00                        	unimp	

0000000080200bdc _ZN2os9interrupt7handler16supervisor_timer17h5067ec82403084d1E:
; fn supervisor_timer(_: &Context) {
80200bdc: 41 11                        	addi	sp, sp, -16
80200bde: 06 e4                        	sd	ra, 8(sp)
80200be0: 2a e0                        	sd	a0, 0(sp)
;     timer::tick();
80200be2: 97 10 00 00                  	auipc	ra, 1
80200be6: e7 80 a0 93                  	jalr	-1734(ra)
80200bea: 09 a0                        	j	2
; }
80200bec: a2 60                        	ld	ra, 8(sp)
80200bee: 41 01                        	addi	sp, sp, 16
80200bf0: 82 80                        	ret

0000000080200bf2 _ZN2os9interrupt7handler5fault17hacb159096d9db898E:
; fn fault(context: &mut Context, scause: Scause, stval: usize) {
80200bf2: 11 71                        	addi	sp, sp, -256
80200bf4: 86 fd                        	sd	ra, 248(sp)
80200bf6: aa e4                        	sd	a0, 72(sp)
80200bf8: ae e8                        	sd	a1, 80(sp)
80200bfa: b2 ec                        	sd	a2, 88(sp)

0000000080200bfc .LBB4_6:
;         "Unresolved interrupt: {:?}\n{:x?}\nstval: {:x}",
80200bfc: 17 45 00 00                  	auipc	a0, 4
80200c00: 13 05 45 9e                  	addi	a0, a0, -1564
80200c04: 0c 61                        	ld	a1, 0(a0)
80200c06: 88 08                        	addi	a0, sp, 80
;         scause.cause(),
80200c08: ae e0                        	sd	a1, 64(sp)
80200c0a: 97 f0 ff ff                  	auipc	ra, 1048575
80200c0e: e7 80 60 48                  	jalr	1158(ra)
80200c12: 23 0c a1 0c                  	sb	a0, 216(sp)
80200c16: a3 0c b1 0c                  	sb	a1, 217(sp)
80200c1a: 09 a0                        	j	2
80200c1c: a8 09                        	addi	a0, sp, 216
;     panic!(
80200c1e: aa e1                        	sd	a0, 192(sp)
80200c20: ac 00                        	addi	a1, sp, 72
80200c22: ae e5                        	sd	a1, 200(sp)
80200c24: b0 08                        	addi	a2, sp, 88
80200c26: b2 e9                        	sd	a2, 208(sp)
80200c28: aa f1                        	sd	a0, 224(sp)
80200c2a: ae f5                        	sd	a1, 232(sp)
80200c2c: b2 f9                        	sd	a2, 240(sp)

0000000080200c2e .LBB4_7:
80200c2e: 97 16 00 00                  	auipc	a3, 1
80200c32: 93 86 06 12                  	addi	a3, a3, 288
80200c36: 2e fc                        	sd	a1, 56(sp)
80200c38: b6 85                        	add	a1, zero, a3
80200c3a: 32 f8                        	sd	a2, 48(sp)
80200c3c: 97 00 00 00                  	auipc	ra, 0
80200c40: e7 80 00 2c                  	jalr	704(ra)
80200c44: 2a f4                        	sd	a0, 40(sp)
80200c46: 2e f0                        	sd	a1, 32(sp)
80200c48: 09 a0                        	j	2

0000000080200c4a .LBB4_8:
80200c4a: 97 05 00 00                  	auipc	a1, 0
80200c4e: 93 85 45 d8                  	addi	a1, a1, -636
80200c52: 62 75                        	ld	a0, 56(sp)
80200c54: 97 00 00 00                  	auipc	ra, 0
80200c58: e7 80 00 33                  	jalr	816(ra)
80200c5c: 2a ec                        	sd	a0, 24(sp)
80200c5e: 2e e8                        	sd	a1, 16(sp)
80200c60: 09 a0                        	j	2

0000000080200c62 .LBB4_9:
80200c62: 97 35 00 00                  	auipc	a1, 3
80200c66: 93 85 05 1d                  	addi	a1, a1, 464
80200c6a: 42 75                        	ld	a0, 48(sp)
80200c6c: 97 00 00 00                  	auipc	ra, 0
80200c70: e7 80 40 2d                  	jalr	724(ra)
80200c74: 2a e4                        	sd	a0, 8(sp)
80200c76: 2e e0                        	sd	a1, 0(sp)
80200c78: 09 a0                        	j	2
80200c7a: 22 75                        	ld	a0, 40(sp)
80200c7c: 2a e9                        	sd	a0, 144(sp)
80200c7e: 82 75                        	ld	a1, 32(sp)
80200c80: 2e ed                        	sd	a1, 152(sp)
80200c82: 62 66                        	ld	a2, 24(sp)
80200c84: 32 f1                        	sd	a2, 160(sp)
80200c86: c2 66                        	ld	a3, 16(sp)
80200c88: 36 f5                        	sd	a3, 168(sp)
80200c8a: 22 67                        	ld	a4, 8(sp)
80200c8c: 3a f9                        	sd	a4, 176(sp)
80200c8e: 82 67                        	ld	a5, 0(sp)
80200c90: 3e fd                        	sd	a5, 184(sp)

0000000080200c92 .LBB4_10:
80200c92: 17 48 00 00                  	auipc	a6, 4
80200c96: 13 08 e8 9f                  	addi	a6, a6, -1538
80200c9a: 83 37 08 00                  	ld	a5, 0(a6)
80200c9e: 88 10                        	addi	a0, sp, 96
80200ca0: 14 09                        	addi	a3, sp, 144
80200ca2: 0d 48                        	addi	a6, zero, 3
80200ca4: 86 65                        	ld	a1, 64(sp)
80200ca6: 42 86                        	add	a2, zero, a6
80200ca8: 42 87                        	add	a4, zero, a6
80200caa: 97 00 00 00                  	auipc	ra, 0
80200cae: e7 80 20 56                  	jalr	1378(ra)
80200cb2: 09 a0                        	j	2

0000000080200cb4 .LBB4_11:
80200cb4: 97 45 00 00                  	auipc	a1, 4
80200cb8: 93 85 45 9e                  	addi	a1, a1, -1564
80200cbc: 88 10                        	addi	a0, sp, 96
80200cbe: 97 10 00 00                  	auipc	ra, 1
80200cc2: e7 80 60 7d                  	jalr	2006(ra)
80200cc6: 00 00                        	unimp	

0000000080200cc8 _ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h547f05b6093fa22dE:
;     fn write_str(&mut self, s: &str) -> fmt::Result {
80200cc8: 11 71                        	addi	sp, sp, -256
80200cca: 86 fd                        	sd	ra, 248(sp)
80200ccc: 2a ed                        	sd	a0, 152(sp)
80200cce: 2e f1                        	sd	a1, 160(sp)
80200cd0: 32 f5                        	sd	a2, 168(sp)
80200cd2: 01 45                        	mv	a0, zero
;         let mut buffer = [0u8; 4];
80200cd4: aa d2                        	sw	a0, 100(sp)
;         for c in s.chars() {
80200cd6: 2e 85                        	add	a0, zero, a1
80200cd8: b2 85                        	add	a1, zero, a2
80200cda: 97 00 00 00                  	auipc	ra, 0
80200cde: e7 80 60 3b                  	jalr	950(ra)
80200ce2: aa ec                        	sd	a0, 88(sp)
80200ce4: ae e8                        	sd	a1, 80(sp)
80200ce6: 09 a0                        	j	2
80200ce8: 66 65                        	ld	a0, 88(sp)
80200cea: c6 65                        	ld	a1, 80(sp)
80200cec: 97 f0 ff ff                  	auipc	ra, 1048575
80200cf0: e7 80 40 5a                  	jalr	1444(ra)
80200cf4: aa e4                        	sd	a0, 72(sp)
80200cf6: ae e0                        	sd	a1, 64(sp)
80200cf8: 09 a0                        	j	2
80200cfa: 26 65                        	ld	a0, 72(sp)
80200cfc: aa f4                        	sd	a0, 104(sp)
80200cfe: 86 65                        	ld	a1, 64(sp)
80200d00: ae f8                        	sd	a1, 112(sp)
80200d02: 09 a0                        	j	2
80200d04: a8 10                        	addi	a0, sp, 104
80200d06: 97 00 00 00                  	auipc	ra, 0
80200d0a: e7 80 a0 3c                  	jalr	970(ra)
80200d0e: 02 15                        	slli	a0, a0, 32
80200d10: 01 91                        	srli	a0, a0, 32
80200d12: aa de                        	sw	a0, 124(sp)
80200d14: 09 a0                        	j	2
80200d16: 76 55                        	lw	a0, 124(sp)
80200d18: b7 05 ef ff                  	lui	a1, 1048304
80200d1c: 2e 95                        	add	a0, a0, a1
80200d1e: 02 15                        	slli	a0, a0, 32
80200d20: 01 91                        	srli	a0, a0, 32
80200d22: b3 35 a0 00                  	snez	a1, a0
80200d26: 01 46                        	mv	a2, zero
80200d28: 63 04 c5 00                  	beq	a0, a2, 8
80200d2c: 09 a0                        	j	2
80200d2e: 31 a0                        	j	12
80200d30: 01 45                        	mv	a0, zero
;     }
80200d32: ee 70                        	ld	ra, 248(sp)
80200d34: 11 61                        	addi	sp, sp, 256
80200d36: 82 80                        	ret
;         for c in s.chars() {
80200d38: 00 00                        	unimp	
80200d3a: 76 55                        	lw	a0, 124(sp)
80200d3c: 2a db                        	sw	a0, 180(sp)
80200d3e: 2a dd                        	sw	a0, 184(sp)
80200d40: 2a df                        	sw	a0, 188(sp)
80200d42: cc 10                        	addi	a1, sp, 100
80200d44: 11 46                        	addi	a2, zero, 4
;             for code_point in c.encode_utf8(&mut buffer).as_bytes().iter() {
80200d46: 97 00 00 00                  	auipc	ra, 0
80200d4a: e7 80 c0 bf                  	jalr	-1028(ra)
80200d4e: 2a fc                        	sd	a0, 56(sp)
80200d50: 2e f8                        	sd	a1, 48(sp)
80200d52: 09 a0                        	j	2
80200d54: 62 75                        	ld	a0, 56(sp)
80200d56: aa f5                        	sd	a0, 232(sp)
80200d58: c2 75                        	ld	a1, 48(sp)
80200d5a: ae f9                        	sd	a1, 240(sp)
80200d5c: aa ed                        	sd	a0, 216(sp)
80200d5e: ae f1                        	sd	a1, 224(sp)
80200d60: 2a f4                        	sd	a0, 40(sp)
80200d62: 2e f0                        	sd	a1, 32(sp)
80200d64: 09 a0                        	j	2
80200d66: 22 75                        	ld	a0, 40(sp)
80200d68: 82 75                        	ld	a1, 32(sp)
80200d6a: 97 f0 ff ff                  	auipc	ra, 1048575
80200d6e: e7 80 00 5c                  	jalr	1472(ra)
80200d72: 2a ec                        	sd	a0, 24(sp)
80200d74: 2e e8                        	sd	a1, 16(sp)
80200d76: 09 a0                        	j	2
80200d78: 62 65                        	ld	a0, 24(sp)
80200d7a: c2 65                        	ld	a1, 16(sp)
80200d7c: 97 f0 ff ff                  	auipc	ra, 1048575
80200d80: e7 80 20 78                  	jalr	1922(ra)
80200d84: 2a e4                        	sd	a0, 8(sp)
80200d86: 2e e0                        	sd	a1, 0(sp)
80200d88: 09 a0                        	j	2
80200d8a: 22 65                        	ld	a0, 8(sp)
80200d8c: 2a e1                        	sd	a0, 128(sp)
80200d8e: 82 65                        	ld	a1, 0(sp)
80200d90: 2e e5                        	sd	a1, 136(sp)
80200d92: 09 a0                        	j	2
80200d94: 08 01                        	addi	a0, sp, 128
80200d96: 97 00 00 00                  	auipc	ra, 0
80200d9a: e7 80 a0 86                  	jalr	-1942(ra)
80200d9e: 2a e9                        	sd	a0, 144(sp)
80200da0: 09 a0                        	j	2
80200da2: 4a 65                        	ld	a0, 144(sp)
80200da4: b3 35 a0 00                  	snez	a1, a0
80200da8: 01 46                        	mv	a2, zero
80200daa: 63 04 c5 00                  	beq	a0, a2, 8
80200dae: 09 a0                        	j	2
80200db0: 19 a0                        	j	6
;         for c in s.chars() {
80200db2: 89 bf                        	j	-174
;             for code_point in c.encode_utf8(&mut buffer).as_bytes().iter() {
80200db4: 00 00                        	unimp	
80200db6: 4a 65                        	ld	a0, 144(sp)
80200db8: aa e1                        	sd	a0, 192(sp)
80200dba: aa e5                        	sd	a0, 200(sp)
80200dbc: aa e9                        	sd	a0, 208(sp)
;                 console_putchar(*code_point as usize);
80200dbe: 03 45 05 00                  	lbu	a0, 0(a0)
80200dc2: 97 10 00 00                  	auipc	ra, 1
80200dc6: e7 80 80 bb                  	jalr	-1096(ra)
80200dca: 09 a0                        	j	2
;             for code_point in c.encode_utf8(&mut buffer).as_bytes().iter() {
80200dcc: e1 b7                        	j	-56

0000000080200dce _ZN2os7console5print17hd924ecb1289af6acE:
; pub fn print(args: fmt::Arguments) {
80200dce: 5d 71                        	addi	sp, sp, -80
;     Stdout.write_fmt(args).unwrap();
80200dd0: 86 e4                        	sd	ra, 72(sp)
80200dd2: 0c 75                        	ld	a1, 40(a0)
80200dd4: ae e0                        	sd	a1, 64(sp)
80200dd6: 0c 71                        	ld	a1, 32(a0)
80200dd8: 2e fc                        	sd	a1, 56(sp)
80200dda: 0c 6d                        	ld	a1, 24(a0)
80200ddc: 2e f8                        	sd	a1, 48(sp)
80200dde: 0c 69                        	ld	a1, 16(a0)
80200de0: 2e f4                        	sd	a1, 40(sp)
80200de2: 0c 65                        	ld	a1, 8(a0)
80200de4: 2e f0                        	sd	a1, 32(sp)
80200de6: 08 61                        	ld	a0, 0(a0)
80200de8: 2a ec                        	sd	a0, 24(sp)
80200dea: 08 08                        	addi	a0, sp, 16
80200dec: 2c 08                        	addi	a1, sp, 24
80200dee: 97 10 00 00                  	auipc	ra, 1
80200df2: e7 80 60 c6                  	jalr	-922(ra)
80200df6: 2a e4                        	sd	a0, 8(sp)
80200df8: 09 a0                        	j	2

0000000080200dfa .LBB1_3:
80200dfa: 97 45 00 00                  	auipc	a1, 4
80200dfe: 93 85 65 8c                  	addi	a1, a1, -1850
80200e02: 22 65                        	ld	a0, 8(sp)
80200e04: 97 00 00 00                  	auipc	ra, 0
80200e08: e7 80 00 45                  	jalr	1104(ra)
80200e0c: 09 a0                        	j	2
; }
80200e0e: a6 60                        	ld	ra, 72(sp)
80200e10: 61 61                        	addi	sp, sp, 80
80200e12: 82 80                        	ret

0000000080200e14 _ZN4core3ptr13drop_in_place17h0010001f634800a4E:
80200e14: 41 11                        	addi	sp, sp, -16
80200e16: 2a e4                        	sd	a0, 8(sp)
80200e18: 41 01                        	addi	sp, sp, 16
80200e1a: 82 80                        	ret

0000000080200e1c _ZN4core3ptr13drop_in_place17h18707a7d5ca4fd49E:
80200e1c: 41 11                        	addi	sp, sp, -16
80200e1e: 2a e4                        	sd	a0, 8(sp)
80200e20: 41 01                        	addi	sp, sp, 16
80200e22: 82 80                        	ret

0000000080200e24 _ZN4core3ptr13drop_in_place17h2fa2829e22bbd2fbE:
80200e24: 41 11                        	addi	sp, sp, -16
80200e26: 2a e4                        	sd	a0, 8(sp)
80200e28: 41 01                        	addi	sp, sp, 16
80200e2a: 82 80                        	ret

0000000080200e2c _ZN4core3ptr13drop_in_place17hcfb71737761f616aE:
80200e2c: 41 11                        	addi	sp, sp, -16
80200e2e: 2a e4                        	sd	a0, 8(sp)
80200e30: 41 01                        	addi	sp, sp, 16
80200e32: 82 80                        	ret

0000000080200e34 _ZN4core3ptr13drop_in_place17he56204f275f9ba82E:
80200e34: 41 11                        	addi	sp, sp, -16
80200e36: 2a e4                        	sd	a0, 8(sp)
80200e38: 41 01                        	addi	sp, sp, 16
80200e3a: 82 80                        	ret

0000000080200e3c _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f8f48253332d31dE:
80200e3c: 01 11                        	addi	sp, sp, -32
80200e3e: 06 ec                        	sd	ra, 24(sp)
80200e40: 2a e4                        	sd	a0, 8(sp)
80200e42: 2e e8                        	sd	a1, 16(sp)
80200e44: 08 61                        	ld	a0, 0(a0)
80200e46: 97 00 00 00                  	auipc	ra, 0
80200e4a: e7 80 60 50                  	jalr	1286(ra)
80200e4e: 2a e0                        	sd	a0, 0(sp)
80200e50: 09 a0                        	j	2
80200e52: 02 65                        	ld	a0, 0(sp)
80200e54: e2 60                        	ld	ra, 24(sp)
80200e56: 05 61                        	addi	sp, sp, 32
80200e58: 82 80                        	ret

0000000080200e5a _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hedcda66481c63cb9E:
80200e5a: 79 71                        	addi	sp, sp, -48
80200e5c: 06 f4                        	sd	ra, 40(sp)
80200e5e: 2a ec                        	sd	a0, 24(sp)
80200e60: 2e f0                        	sd	a1, 32(sp)
80200e62: 10 61                        	ld	a2, 0(a0)
80200e64: 08 65                        	ld	a0, 8(a0)
80200e66: 2a e8                        	sd	a0, 16(sp)
80200e68: 32 85                        	add	a0, zero, a2
80200e6a: 42 66                        	ld	a2, 16(sp)
80200e6c: 2e e4                        	sd	a1, 8(sp)
80200e6e: b2 85                        	add	a1, zero, a2
80200e70: 22 66                        	ld	a2, 8(sp)
80200e72: 97 00 00 00                  	auipc	ra, 0
80200e76: e7 80 20 03                  	jalr	50(ra)
80200e7a: 2a e0                        	sd	a0, 0(sp)
80200e7c: 09 a0                        	j	2
80200e7e: 02 65                        	ld	a0, 0(sp)
80200e80: a2 70                        	ld	ra, 40(sp)
80200e82: 45 61                        	addi	sp, sp, 48
80200e84: 82 80                        	ret

0000000080200e86 _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9e0416602be25016E:
80200e86: 01 11                        	addi	sp, sp, -32
80200e88: 06 ec                        	sd	ra, 24(sp)
80200e8a: 2a e4                        	sd	a0, 8(sp)
80200e8c: 2e e8                        	sd	a1, 16(sp)
80200e8e: 08 61                        	ld	a0, 0(a0)
80200e90: 97 20 00 00                  	auipc	ra, 2
80200e94: e7 80 e0 e5                  	jalr	-418(ra)
80200e98: 2a e0                        	sd	a0, 0(sp)
80200e9a: 09 a0                        	j	2
80200e9c: 02 65                        	ld	a0, 0(sp)
80200e9e: e2 60                        	ld	ra, 24(sp)
80200ea0: 05 61                        	addi	sp, sp, 32
80200ea2: 82 80                        	ret

0000000080200ea4 _ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9fb43bb2669cf81E:
80200ea4: 1d 71                        	addi	sp, sp, -96
80200ea6: 86 ec                        	sd	ra, 88(sp)
80200ea8: aa e0                        	sd	a0, 64(sp)
80200eaa: ae e4                        	sd	a1, 72(sp)
80200eac: b2 e8                        	sd	a2, 80(sp)
80200eae: 14 18                        	addi	a3, sp, 48
80200eb0: 2a f4                        	sd	a0, 40(sp)
80200eb2: 36 85                        	add	a0, zero, a3
80200eb4: 2e f0                        	sd	a1, 32(sp)
80200eb6: b2 85                        	add	a1, zero, a2
80200eb8: 97 20 00 00                  	auipc	ra, 2
80200ebc: e7 80 a0 57                  	jalr	1402(ra)
80200ec0: 09 a0                        	j	2
80200ec2: 22 75                        	ld	a0, 40(sp)
80200ec4: 82 75                        	ld	a1, 32(sp)
80200ec6: 97 f0 ff ff                  	auipc	ra, 1048575
80200eca: e7 80 a0 50                  	jalr	1290(ra)
80200ece: 2a ec                        	sd	a0, 24(sp)
80200ed0: 2e e8                        	sd	a1, 16(sp)
80200ed2: 09 a0                        	j	2
80200ed4: 08 18                        	addi	a0, sp, 48
80200ed6: e2 65                        	ld	a1, 24(sp)
80200ed8: 42 66                        	ld	a2, 16(sp)
80200eda: 97 00 00 00                  	auipc	ra, 0
80200ede: e7 80 a0 4d                  	jalr	1242(ra)
80200ee2: 2a e4                        	sd	a0, 8(sp)
80200ee4: 09 a0                        	j	2
80200ee6: 22 65                        	ld	a0, 8(sp)
80200ee8: 97 20 00 00                  	auipc	ra, 2
80200eec: e7 80 a0 b9                  	jalr	-1126(ra)
80200ef0: 2a e0                        	sd	a0, 0(sp)
80200ef2: 09 a0                        	j	2
80200ef4: 02 65                        	ld	a0, 0(sp)
80200ef6: e6 60                        	ld	ra, 88(sp)
80200ef8: 25 61                        	addi	sp, sp, 96
80200efa: 82 80                        	ret

0000000080200efc _ZN4core3fmt10ArgumentV13new17h0cb1acd2e1131302E:
80200efc: 5d 71                        	addi	sp, sp, -80
80200efe: 2a f8                        	sd	a0, 48(sp)
80200f00: 2e fc                        	sd	a1, 56(sp)
80200f02: ae e0                        	sd	a1, 64(sp)
80200f04: 2a ec                        	sd	a0, 24(sp)
80200f06: 2e e8                        	sd	a1, 16(sp)
80200f08: 09 a0                        	j	2
80200f0a: 62 65                        	ld	a0, 24(sp)
80200f0c: aa e4                        	sd	a0, 72(sp)
80200f0e: 2a e4                        	sd	a0, 8(sp)
80200f10: 09 a0                        	j	2
80200f12: 22 65                        	ld	a0, 8(sp)
80200f14: 2a f0                        	sd	a0, 32(sp)
80200f16: c2 65                        	ld	a1, 16(sp)
80200f18: 2e f4                        	sd	a1, 40(sp)
80200f1a: 61 61                        	addi	sp, sp, 80
80200f1c: 82 80                        	ret

0000000080200f1e _ZN4core3fmt10ArgumentV13new17h1839059e6c2f826dE:
80200f1e: 5d 71                        	addi	sp, sp, -80
80200f20: 2a f8                        	sd	a0, 48(sp)
80200f22: 2e fc                        	sd	a1, 56(sp)
80200f24: ae e0                        	sd	a1, 64(sp)
80200f26: 2a ec                        	sd	a0, 24(sp)
80200f28: 2e e8                        	sd	a1, 16(sp)
80200f2a: 09 a0                        	j	2
80200f2c: 62 65                        	ld	a0, 24(sp)
80200f2e: aa e4                        	sd	a0, 72(sp)
80200f30: 2a e4                        	sd	a0, 8(sp)
80200f32: 09 a0                        	j	2
80200f34: 22 65                        	ld	a0, 8(sp)
80200f36: 2a f0                        	sd	a0, 32(sp)
80200f38: c2 65                        	ld	a1, 16(sp)
80200f3a: 2e f4                        	sd	a1, 40(sp)
80200f3c: 61 61                        	addi	sp, sp, 80
80200f3e: 82 80                        	ret

0000000080200f40 _ZN4core3fmt10ArgumentV13new17h64e048d6344fe3e5E:
80200f40: 5d 71                        	addi	sp, sp, -80
80200f42: 2a f8                        	sd	a0, 48(sp)
80200f44: 2e fc                        	sd	a1, 56(sp)
80200f46: ae e0                        	sd	a1, 64(sp)
80200f48: 2a ec                        	sd	a0, 24(sp)
80200f4a: 2e e8                        	sd	a1, 16(sp)
80200f4c: 09 a0                        	j	2
80200f4e: 62 65                        	ld	a0, 24(sp)
80200f50: aa e4                        	sd	a0, 72(sp)
80200f52: 2a e4                        	sd	a0, 8(sp)
80200f54: 09 a0                        	j	2
80200f56: 22 65                        	ld	a0, 8(sp)
80200f58: 2a f0                        	sd	a0, 32(sp)
80200f5a: c2 65                        	ld	a1, 16(sp)
80200f5c: 2e f4                        	sd	a1, 40(sp)
80200f5e: 61 61                        	addi	sp, sp, 80
80200f60: 82 80                        	ret

0000000080200f62 _ZN4core3fmt10ArgumentV13new17hcd9e300a23835a39E:
80200f62: 5d 71                        	addi	sp, sp, -80
80200f64: 2a f8                        	sd	a0, 48(sp)
80200f66: 2e fc                        	sd	a1, 56(sp)
80200f68: ae e0                        	sd	a1, 64(sp)
80200f6a: 2a ec                        	sd	a0, 24(sp)
80200f6c: 2e e8                        	sd	a1, 16(sp)
80200f6e: 09 a0                        	j	2
80200f70: 62 65                        	ld	a0, 24(sp)
80200f72: aa e4                        	sd	a0, 72(sp)
80200f74: 2a e4                        	sd	a0, 8(sp)
80200f76: 09 a0                        	j	2
80200f78: 22 65                        	ld	a0, 8(sp)
80200f7a: 2a f0                        	sd	a0, 32(sp)
80200f7c: c2 65                        	ld	a1, 16(sp)
80200f7e: 2e f4                        	sd	a1, 40(sp)
80200f80: 61 61                        	addi	sp, sp, 80
80200f82: 82 80                        	ret

0000000080200f84 _ZN4core3fmt10ArgumentV13new17hd14085402e2b8f7cE:
80200f84: 5d 71                        	addi	sp, sp, -80
80200f86: 2a f8                        	sd	a0, 48(sp)
80200f88: 2e fc                        	sd	a1, 56(sp)
80200f8a: ae e0                        	sd	a1, 64(sp)
80200f8c: 2a ec                        	sd	a0, 24(sp)
80200f8e: 2e e8                        	sd	a1, 16(sp)
80200f90: 09 a0                        	j	2
80200f92: 62 65                        	ld	a0, 24(sp)
80200f94: aa e4                        	sd	a0, 72(sp)
80200f96: 2a e4                        	sd	a0, 8(sp)
80200f98: 09 a0                        	j	2
80200f9a: 22 65                        	ld	a0, 8(sp)
80200f9c: 2a f0                        	sd	a0, 32(sp)
80200f9e: c2 65                        	ld	a1, 16(sp)
80200fa0: 2e f4                        	sd	a1, 40(sp)
80200fa2: 61 61                        	addi	sp, sp, 80
80200fa4: 82 80                        	ret

0000000080200fa6 rust_begin_unwind:
; fn panic_handler(info: &PanicInfo) -> ! {
80200fa6: 75 71                        	addi	sp, sp, -144
80200fa8: 06 e5                        	sd	ra, 136(sp)
80200faa: aa fc                        	sd	a0, 120(sp)

0000000080200fac .LBB0_6:
;     println!("\x1b[1;31mpanic: '{}'\x1b[0m", info.message().unwrap());
80200fac: 97 35 00 00                  	auipc	a1, 3
80200fb0: 93 85 45 76                  	addi	a1, a1, 1892
80200fb4: 8c 61                        	ld	a1, 0(a1)
80200fb6: 2e f0                        	sd	a1, 32(sp)
80200fb8: 97 10 00 00                  	auipc	ra, 1
80200fbc: e7 80 c0 46                  	jalr	1132(ra)
80200fc0: 2a ec                        	sd	a0, 24(sp)
80200fc2: 09 a0                        	j	2

0000000080200fc4 .LBB0_7:
80200fc4: 97 35 00 00                  	auipc	a1, 3
80200fc8: 93 85 45 76                  	addi	a1, a1, 1892
80200fcc: 62 65                        	ld	a0, 24(sp)
80200fce: 97 00 00 00                  	auipc	ra, 0
80200fd2: e7 80 c0 1d                  	jalr	476(ra)
80200fd6: aa f8                        	sd	a0, 112(sp)
80200fd8: 09 a0                        	j	2
80200fda: 88 18                        	addi	a0, sp, 112
80200fdc: aa f4                        	sd	a0, 104(sp)
80200fde: 2a e1                        	sd	a0, 128(sp)

0000000080200fe0 .LBB0_8:
80200fe0: 97 05 00 00                  	auipc	a1, 0
80200fe4: 93 85 65 ea                  	addi	a1, a1, -346
80200fe8: 97 00 00 00                  	auipc	ra, 0
80200fec: e7 80 60 f3                  	jalr	-202(ra)
80200ff0: 2a e8                        	sd	a0, 16(sp)
80200ff2: 2e e4                        	sd	a1, 8(sp)
80200ff4: 09 a0                        	j	2
80200ff6: 42 65                        	ld	a0, 16(sp)
80200ff8: aa ec                        	sd	a0, 88(sp)
80200ffa: a2 65                        	ld	a1, 8(sp)
80200ffc: ae f0                        	sd	a1, 96(sp)
80200ffe: 28 10                        	addi	a0, sp, 40
80201000: 09 46                        	addi	a2, zero, 2
80201002: b4 08                        	addi	a3, sp, 88
80201004: 05 47                        	addi	a4, zero, 1
80201006: 82 75                        	ld	a1, 32(sp)
80201008: 97 00 00 00                  	auipc	ra, 0
8020100c: e7 80 a0 22                  	jalr	554(ra)
80201010: 09 a0                        	j	2
80201012: 28 10                        	addi	a0, sp, 40
80201014: 97 00 00 00                  	auipc	ra, 0
80201018: e7 80 a0 db                  	jalr	-582(ra)
8020101c: 09 a0                        	j	2
;     shutdown()
8020101e: 97 10 00 00                  	auipc	ra, 1
80201022: e7 80 e0 97                  	jalr	-1666(ra)
80201026: 00 00                        	unimp	

0000000080201028 _ZN4core3str11unwrap_or_017h1ea04bfead0c6975E:
80201028: 41 11                        	addi	sp, sp, -16
8020102a: 2a e0                        	sd	a0, 0(sp)
8020102c: b3 35 a0 00                  	snez	a1, a0
80201030: 01 46                        	mv	a2, zero
80201032: 63 04 c5 00                  	beq	a0, a2, 8
80201036: 09 a0                        	j	2
80201038: 31 a0                        	j	12
8020103a: 01 45                        	mv	a0, zero
8020103c: 23 07 a1 00                  	sb	a0, 14(sp)
80201040: 11 a8                        	j	20
80201042: 00 00                        	unimp	
80201044: 02 65                        	ld	a0, 0(sp)
80201046: 03 05 05 00                  	lb	a0, 0(a0)
8020104a: a3 07 a1 00                  	sb	a0, 15(sp)
8020104e: 23 07 a1 00                  	sb	a0, 14(sp)
80201052: 09 a0                        	j	2
80201054: 03 05 e1 00                  	lb	a0, 14(sp)
80201058: 41 01                        	addi	sp, sp, 16
8020105a: 82 80                        	ret

000000008020105c _ZN4core3str15utf8_first_byte17hbccf9057f870aa92E:
8020105c: 41 11                        	addi	sp, sp, -16
8020105e: 2e 86                        	add	a2, zero, a1
80201060: aa 86                        	add	a3, zero, a0
80201062: a3 05 a1 00                  	sb	a0, 11(sp)
80201066: 2e c6                        	sw	a1, 12(sp)
80201068: 9d 89                        	andi	a1, a1, 7
8020106a: 13 07 f0 07                  	addi	a4, zero, 127
8020106e: b3 55 b7 00                  	srl	a1, a4, a1
80201072: 6d 8d                        	and	a0, a0, a1
80201074: 41 01                        	addi	sp, sp, 16
80201076: 82 80                        	ret

0000000080201078 _ZN4core3str18utf8_acc_cont_byte17h65344a661266c23fE:
80201078: 41 11                        	addi	sp, sp, -16
8020107a: 2e 86                        	add	a2, zero, a1
8020107c: aa 86                        	add	a3, zero, a0
8020107e: 2a c4                        	sw	a0, 8(sp)
80201080: a3 07 b1 00                  	sb	a1, 15(sp)
80201084: 1a 05                        	slli	a0, a0, 6
80201086: 93 f5 f5 03                  	andi	a1, a1, 63
8020108a: 4d 8d                        	or	a0, a0, a1
8020108c: 41 01                        	addi	sp, sp, 16
8020108e: 82 80                        	ret

0000000080201090 _ZN4core3str21_$LT$impl$u20$str$GT$5chars17h40302ed571224f43E:
80201090: 59 71                        	addi	sp, sp, -112
80201092: 86 f4                        	sd	ra, 104(sp)
80201094: 2a fc                        	sd	a0, 56(sp)
80201096: ae e0                        	sd	a1, 64(sp)
80201098: aa ec                        	sd	a0, 88(sp)
8020109a: ae f0                        	sd	a1, 96(sp)
8020109c: aa e4                        	sd	a0, 72(sp)
8020109e: ae e8                        	sd	a1, 80(sp)
802010a0: 2a f0                        	sd	a0, 32(sp)
802010a2: 2e ec                        	sd	a1, 24(sp)
802010a4: 09 a0                        	j	2
802010a6: 02 75                        	ld	a0, 32(sp)
802010a8: e2 65                        	ld	a1, 24(sp)
802010aa: 97 f0 ff ff                  	auipc	ra, 1048575
802010ae: e7 80 00 28                  	jalr	640(ra)
802010b2: 2a e8                        	sd	a0, 16(sp)
802010b4: 2e e4                        	sd	a1, 8(sp)
802010b6: 09 a0                        	j	2
802010b8: 42 65                        	ld	a0, 16(sp)
802010ba: 2a f4                        	sd	a0, 40(sp)
802010bc: a2 65                        	ld	a1, 8(sp)
802010be: 2e f8                        	sd	a1, 48(sp)
802010c0: a6 70                        	ld	ra, 104(sp)
802010c2: 65 61                        	addi	sp, sp, 112
802010c4: 82 80                        	ret

00000000802010c6 _ZN4core3str23from_utf8_unchecked_mut17h92cadde1236c1324E:
802010c6: 41 11                        	addi	sp, sp, -16
802010c8: 2a e0                        	sd	a0, 0(sp)
802010ca: 2e e4                        	sd	a1, 8(sp)
802010cc: 41 01                        	addi	sp, sp, 16
802010ce: 82 80                        	ret

00000000802010d0 _ZN75_$LT$core..str..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6cdeb43a7fbd295dE:
802010d0: 79 71                        	addi	sp, sp, -48
802010d2: 06 f4                        	sd	ra, 40(sp)
802010d4: 2a f0                        	sd	a0, 32(sp)
802010d6: 97 f0 ff ff                  	auipc	ra, 1048575
802010da: e7 80 e0 03                  	jalr	62(ra)
802010de: 2a ec                        	sd	a0, 24(sp)
802010e0: 2e e8                        	sd	a1, 16(sp)
802010e2: 09 a0                        	j	2
802010e4: 62 65                        	ld	a0, 24(sp)
802010e6: c2 65                        	ld	a1, 16(sp)
802010e8: 97 00 00 00                  	auipc	ra, 0
802010ec: e7 80 80 01                  	jalr	24(ra)
802010f0: 02 15                        	slli	a0, a0, 32
802010f2: 01 91                        	srli	a0, a0, 32
802010f4: 2a e4                        	sd	a0, 8(sp)
802010f6: 09 a0                        	j	2
802010f8: 22 65                        	ld	a0, 8(sp)
802010fa: a2 70                        	ld	ra, 40(sp)
802010fc: 45 61                        	addi	sp, sp, 48
802010fe: 82 80                        	ret

0000000080201100 _ZN4core6option15Option$LT$T$GT$3map17h5709600318e4e624E:
80201100: 79 71                        	addi	sp, sp, -48
80201102: 06 f4                        	sd	ra, 40(sp)
80201104: 2e 86                        	add	a2, zero, a1
80201106: aa 86                        	add	a3, zero, a0
80201108: 2a c4                        	sw	a0, 8(sp)
8020110a: 2e c6                        	sw	a1, 12(sp)
8020110c: 85 45                        	addi	a1, zero, 1
8020110e: a3 0f b1 00                  	sb	a1, 31(sp)
80201112: 02 15                        	slli	a0, a0, 32
80201114: 01 91                        	srli	a0, a0, 32
80201116: 81 45                        	mv	a1, zero
80201118: 63 04 b5 00                  	beq	a0, a1, 8
8020111c: 09 a0                        	j	2
8020111e: 31 a0                        	j	12
80201120: 37 05 11 00                  	lui	a0, 272
80201124: 2a ca                        	sw	a0, 20(sp)
80201126: 1d a8                        	j	54
80201128: 00 00                        	unimp	
8020112a: 32 45                        	lw	a0, 12(sp)
8020112c: 2a d2                        	sw	a0, 36(sp)
8020112e: 81 45                        	mv	a1, zero
80201130: a3 0f b1 00                  	sb	a1, 31(sp)
80201134: 2a cc                        	sw	a0, 24(sp)
80201136: 97 f0 ff ff                  	auipc	ra, 1048575
8020113a: e7 80 40 16                  	jalr	356(ra)
8020113e: 02 15                        	slli	a0, a0, 32
80201140: 01 91                        	srli	a0, a0, 32
80201142: 2a e0                        	sd	a0, 0(sp)
80201144: 09 a0                        	j	2
80201146: 02 65                        	ld	a0, 0(sp)
80201148: 2a ca                        	sw	a0, 20(sp)
8020114a: 09 a8                        	j	18
8020114c: 52 45                        	lw	a0, 20(sp)
8020114e: a2 70                        	ld	ra, 40(sp)
80201150: 45 61                        	addi	sp, sp, 48
80201152: 82 80                        	ret
80201154: 01 45                        	mv	a0, zero
80201156: a3 0f a1 00                  	sb	a0, 31(sp)
8020115a: cd bf                        	j	-14
8020115c: 03 45 f1 01                  	lbu	a0, 31(sp)
80201160: 05 89                        	andi	a0, a0, 1
80201162: 6d f9                        	bnez	a0, -14
80201164: e5 b7                        	j	-24

0000000080201166 _ZN4core6option15Option$LT$T$GT$5ok_or17h51a4cb4974409f8eE:
80201166: 79 71                        	addi	sp, sp, -48
80201168: 2a e4                        	sd	a0, 8(sp)
8020116a: 85 45                        	addi	a1, zero, 1
8020116c: a3 0f b1 00                  	sb	a1, 31(sp)
80201170: b3 35 a0 00                  	snez	a1, a0
80201174: 01 46                        	mv	a2, zero
80201176: 63 04 c5 00                  	beq	a0, a2, 8
8020117a: 09 a0                        	j	2
8020117c: 39 a0                        	j	14
8020117e: 01 45                        	mv	a0, zero
80201180: a3 0f a1 00                  	sb	a0, 31(sp)
80201184: 2a e8                        	sd	a0, 16(sp)
80201186: 31 a0                        	j	12
80201188: 00 00                        	unimp	
8020118a: 22 65                        	ld	a0, 8(sp)
8020118c: 2a f4                        	sd	a0, 40(sp)
8020118e: 2a e8                        	sd	a0, 16(sp)
80201190: 09 a0                        	j	2
80201192: 03 45 f1 01                  	lbu	a0, 31(sp)
80201196: 05 89                        	andi	a0, a0, 1
80201198: 09 e5                        	bnez	a0, 10
8020119a: 09 a0                        	j	2
8020119c: 42 65                        	ld	a0, 16(sp)
8020119e: 45 61                        	addi	sp, sp, 48
802011a0: 82 80                        	ret
802011a2: 01 45                        	mv	a0, zero
802011a4: a3 0f a1 00                  	sb	a0, 31(sp)
802011a8: d5 bf                        	j	-12

00000000802011aa _ZN4core6option15Option$LT$T$GT$6unwrap17he35ead1fd475d616E:
802011aa: 01 11                        	addi	sp, sp, -32
802011ac: 2a e8                        	sd	a0, 16(sp)
802011ae: 33 36 a0 00                  	snez	a2, a0
802011b2: 81 46                        	mv	a3, zero
802011b4: 2e e4                        	sd	a1, 8(sp)
802011b6: 63 04 d5 00                  	beq	a0, a3, 8
802011ba: 09 a0                        	j	2
802011bc: 31 a8                        	j	28

00000000802011be .LBB2_5:
802011be: 17 35 00 00                  	auipc	a0, 3
802011c2: 13 05 25 58                  	addi	a0, a0, 1410
802011c6: 93 05 b0 02                  	addi	a1, zero, 43
802011ca: 22 66                        	ld	a2, 8(sp)
802011cc: 97 10 00 00                  	auipc	ra, 1
802011d0: e7 80 c0 25                  	jalr	604(ra)
802011d4: 00 00                        	unimp	
802011d6: 00 00                        	unimp	
802011d8: 42 65                        	ld	a0, 16(sp)
802011da: 2a ec                        	sd	a0, 24(sp)
802011dc: 05 61                        	addi	sp, sp, 32
802011de: 82 80                        	ret

00000000802011e0 _ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hc8824bea7ac7673fE:
802011e0: 41 11                        	addi	sp, sp, -16
802011e2: 41 01                        	addi	sp, sp, 16
802011e4: 82 80                        	ret

00000000802011e6 _ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17hf96bc491a2caf6daE:
802011e6: 41 11                        	addi	sp, sp, -16
802011e8: 01 45                        	mv	a0, zero
802011ea: 2a c0                        	sw	a0, 0(sp)
802011ec: 92 45                        	lw	a1, 4(sp)
802011ee: 41 01                        	addi	sp, sp, 16
802011f0: 82 80                        	ret

00000000802011f2 _ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hbbf698a055a9129bE:
802011f2: 01 11                        	addi	sp, sp, -32
802011f4: 06 ec                        	sd	ra, 24(sp)
802011f6: 2a e8                        	sd	a0, 16(sp)
802011f8: 97 00 00 00                  	auipc	ra, 0
802011fc: e7 80 e0 f6                  	jalr	-146(ra)
80201200: 2a e4                        	sd	a0, 8(sp)
80201202: 09 a0                        	j	2
80201204: 22 65                        	ld	a0, 8(sp)
80201206: e2 60                        	ld	ra, 24(sp)
80201208: 05 61                        	addi	sp, sp, 32
8020120a: 82 80                        	ret

000000008020120c _ZN4core3fmt9Arguments16new_v1_formatted17hb657ec918e7b8ad1E:
8020120c: 39 71                        	addi	sp, sp, -64
8020120e: 2e e8                        	sd	a1, 16(sp)
80201210: 32 ec                        	sd	a2, 24(sp)
80201212: 36 f0                        	sd	a3, 32(sp)
80201214: 3a f4                        	sd	a4, 40(sp)
80201216: 3e f8                        	sd	a5, 48(sp)
80201218: 42 fc                        	sd	a6, 56(sp)
8020121a: 3e e0                        	sd	a5, 0(sp)
8020121c: 42 e4                        	sd	a6, 8(sp)
8020121e: 0c e1                        	sd	a1, 0(a0)
80201220: 10 e5                        	sd	a2, 8(a0)
80201222: 82 65                        	ld	a1, 0(sp)
80201224: 22 66                        	ld	a2, 8(sp)
80201226: 0c e9                        	sd	a1, 16(a0)
80201228: 10 ed                        	sd	a2, 24(a0)
8020122a: 14 f1                        	sd	a3, 32(a0)
8020122c: 18 f5                        	sd	a4, 40(a0)
8020122e: 21 61                        	addi	sp, sp, 64
80201230: 82 80                        	ret

0000000080201232 _ZN4core3fmt9Arguments6new_v117h4bc1d37c1a47eddaE:
80201232: 79 71                        	addi	sp, sp, -48
80201234: 2e e8                        	sd	a1, 16(sp)
80201236: 32 ec                        	sd	a2, 24(sp)
80201238: 36 f0                        	sd	a3, 32(sp)
8020123a: 3a f4                        	sd	a4, 40(sp)
8020123c: 81 47                        	mv	a5, zero
8020123e: 3e e0                        	sd	a5, 0(sp)
80201240: 0c e1                        	sd	a1, 0(a0)
80201242: 10 e5                        	sd	a2, 8(a0)
80201244: 82 65                        	ld	a1, 0(sp)
80201246: 22 66                        	ld	a2, 8(sp)
80201248: 0c e9                        	sd	a1, 16(a0)
8020124a: 10 ed                        	sd	a2, 24(a0)
8020124c: 14 f1                        	sd	a3, 32(a0)
8020124e: 18 f5                        	sd	a4, 40(a0)
80201250: 45 61                        	addi	sp, sp, 48
80201252: 82 80                        	ret

0000000080201254 _ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4edf2fad9dd1397aE:
80201254: 01 11                        	addi	sp, sp, -32
80201256: 2a 86                        	add	a2, zero, a0
80201258: a3 07 a1 00                  	sb	a0, 15(sp)
8020125c: aa 86                        	add	a3, zero, a0
8020125e: 01 47                        	mv	a4, zero
80201260: 2e e0                        	sd	a1, 0(sp)
80201262: 63 05 e5 02                  	beq	a0, a4, 42
80201266: 09 a0                        	j	2

0000000080201268 .LBB0_5:
80201268: 17 35 00 00                  	auipc	a0, 3
8020126c: 13 05 35 50                  	addi	a0, a0, 1283

0000000080201270 .LBB0_6:
80201270: 97 36 00 00                  	auipc	a3, 3
80201274: 93 86 86 52                  	addi	a3, a3, 1320
80201278: 93 05 b0 02                  	addi	a1, zero, 43
8020127c: 10 08                        	addi	a2, sp, 16
8020127e: 02 67                        	ld	a4, 0(sp)
80201280: 97 10 00 00                  	auipc	ra, 1
80201284: e7 80 80 15                  	jalr	344(ra)
80201288: 00 00                        	unimp	
8020128a: 00 00                        	unimp	
8020128c: 05 61                        	addi	sp, sp, 32
8020128e: 82 80                        	ret

0000000080201290 _ZN68_$LT$os..interrupt..context..Context$u20$as$u20$core..fmt..Debug$GT$3fmt17hca01db05c77028fdE:
; #[derive(Debug)]
80201290: 19 71                        	addi	sp, sp, -128
80201292: 86 fc                        	sd	ra, 120(sp)
80201294: aa e8                        	sd	a0, 80(sp)
80201296: ae ec                        	sd	a1, 88(sp)
80201298: 2a 86                        	add	a2, zero, a0
8020129a: aa f0                        	sd	a0, 96(sp)
;     pub sstatus: Sstatus,
8020129c: 93 06 05 10                  	addi	a3, a0, 256
802012a0: b6 f4                        	sd	a3, 104(sp)
;     pub sepc: usize
802012a2: 13 05 85 10                  	addi	a0, a0, 264
802012a6: aa f8                        	sd	a0, 112(sp)

00000000802012a8 .LBB0_6:
; #[derive(Debug)]
802012a8: 17 37 00 00                  	auipc	a4, 3
802012ac: 13 07 07 51                  	addi	a4, a4, 1296
802012b0: 3c 10                        	addi	a5, sp, 40
802012b2: 1d 48                        	addi	a6, zero, 7
802012b4: 2a f0                        	sd	a0, 32(sp)
802012b6: 3e 85                        	add	a0, zero, a5
802012b8: 32 ec                        	sd	a2, 24(sp)
802012ba: 3a 86                        	add	a2, zero, a4
802012bc: 36 e8                        	sd	a3, 16(sp)
802012be: c2 86                        	add	a3, zero, a6
802012c0: 97 20 00 00                  	auipc	ra, 2
802012c4: e7 80 80 10                  	jalr	264(ra)
802012c8: 09 a0                        	j	2
;     pub x: [usize; 32],     // 32 个通用寄存器
802012ca: 62 65                        	ld	a0, 24(sp)
802012cc: 2a fc                        	sd	a0, 56(sp)

00000000802012ce .LBB0_7:
; #[derive(Debug)]
802012ce: 97 35 00 00                  	auipc	a1, 3
802012d2: 93 85 15 4f                  	addi	a1, a1, 1265

00000000802012d6 .LBB0_8:
802012d6: 17 37 00 00                  	auipc	a4, 3
802012da: 13 07 a7 4e                  	addi	a4, a4, 1258
802012de: 28 10                        	addi	a0, sp, 40
802012e0: 05 46                        	addi	a2, zero, 1
802012e2: 34 18                        	addi	a3, sp, 56
802012e4: 97 10 00 00                  	auipc	ra, 1
802012e8: e7 80 40 39                  	jalr	916(ra)
802012ec: 09 a0                        	j	2
;     pub sstatus: Sstatus,
802012ee: 42 65                        	ld	a0, 16(sp)
802012f0: aa e0                        	sd	a0, 64(sp)

00000000802012f2 .LBB0_9:
; #[derive(Debug)]
802012f2: 97 35 00 00                  	auipc	a1, 3
802012f6: 93 85 e5 4e                  	addi	a1, a1, 1262

00000000802012fa .LBB0_10:
802012fa: 17 37 00 00                  	auipc	a4, 3
802012fe: 13 07 e7 4e                  	addi	a4, a4, 1262
80201302: 28 10                        	addi	a0, sp, 40
80201304: 1d 46                        	addi	a2, zero, 7
80201306: 94 00                        	addi	a3, sp, 64
80201308: 97 10 00 00                  	auipc	ra, 1
8020130c: e7 80 00 37                  	jalr	880(ra)
80201310: 09 a0                        	j	2
;     pub sepc: usize
80201312: 02 75                        	ld	a0, 32(sp)
80201314: aa e4                        	sd	a0, 72(sp)

0000000080201316 .LBB0_11:
; #[derive(Debug)]
80201316: 97 35 00 00                  	auipc	a1, 3
8020131a: 93 85 a5 4f                  	addi	a1, a1, 1274

000000008020131e .LBB0_12:
8020131e: 17 37 00 00                  	auipc	a4, 3
80201322: 13 07 a7 4f                  	addi	a4, a4, 1274
80201326: 28 10                        	addi	a0, sp, 40
80201328: 11 46                        	addi	a2, zero, 4
8020132a: b4 00                        	addi	a3, sp, 72
8020132c: 97 10 00 00                  	auipc	ra, 1
80201330: e7 80 c0 34                  	jalr	844(ra)
80201334: 09 a0                        	j	2
80201336: 28 10                        	addi	a0, sp, 40
80201338: 97 10 00 00                  	auipc	ra, 1
8020133c: e7 80 80 49                  	jalr	1176(ra)
80201340: 2a e4                        	sd	a0, 8(sp)
80201342: 09 a0                        	j	2
80201344: 22 65                        	ld	a0, 8(sp)
80201346: e6 70                        	ld	ra, 120(sp)
80201348: 09 61                        	addi	sp, sp, 128
8020134a: 82 80                        	ret

000000008020134c _ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h3f0ff13e4e066a14E:
8020134c: 5d 71                        	addi	sp, sp, -80
8020134e: 86 e4                        	sd	ra, 72(sp)
80201350: 2a fc                        	sd	a0, 56(sp)
80201352: ae e0                        	sd	a1, 64(sp)

0000000080201354 .LBB0_3:
80201354: 17 36 00 00                  	auipc	a2, 3
80201358: 13 06 c6 52                  	addi	a2, a2, 1324
8020135c: 93 06 00 02                  	addi	a3, zero, 32
80201360: 2e f0                        	sd	a1, 32(sp)
80201362: b6 85                        	add	a1, zero, a3
80201364: 97 f0 ff ff                  	auipc	ra, 1048575
80201368: e7 80 c0 12                  	jalr	300(ra)
8020136c: 2a ec                        	sd	a0, 24(sp)
8020136e: 2e e8                        	sd	a1, 16(sp)
80201370: 09 a0                        	j	2
80201372: 62 65                        	ld	a0, 24(sp)
80201374: 2a f4                        	sd	a0, 40(sp)
80201376: c2 65                        	ld	a1, 16(sp)
80201378: 2e f8                        	sd	a1, 48(sp)
8020137a: 28 10                        	addi	a0, sp, 40
8020137c: 82 75                        	ld	a1, 32(sp)
8020137e: 97 00 00 00                  	auipc	ra, 0
80201382: e7 80 c0 ad                  	jalr	-1316(ra)
80201386: 2a e4                        	sd	a0, 8(sp)
80201388: 09 a0                        	j	2
8020138a: 22 65                        	ld	a0, 8(sp)
8020138c: a6 60                        	ld	ra, 72(sp)
8020138e: 61 61                        	addi	sp, sp, 80
80201390: 82 80                        	ret

0000000080201392 _ZN5riscv8register7sstatus4_set17h5541c6e62454a6afE:
;         unsafe fn _set(bits: usize) {
80201392: 41 11                        	addi	sp, sp, -16
80201394: 2a e4                        	sd	a0, 8(sp)
;                 () => llvm_asm!("csrrs x0, $1, $0" :: "r"(bits), "i"($csr_number) :: "volatile"),
80201396: 73 20 05 10                  	csrs	sstatus, a0
;         }
8020139a: 41 01                        	addi	sp, sp, 16
8020139c: 82 80                        	ret

000000008020139e _ZN5riscv8register7sstatus7set_sie17h094275675052d08dE:
;         pub unsafe fn $set_field() {
8020139e: 41 11                        	addi	sp, sp, -16
802013a0: 06 e4                        	sd	ra, 8(sp)
802013a2: 09 45                        	addi	a0, zero, 2
;             _set($e);
802013a4: 97 00 00 00                  	auipc	ra, 0
802013a8: e7 80 e0 fe                  	jalr	-18(ra)
802013ac: 09 a0                        	j	2
;         }
802013ae: a2 60                        	ld	ra, 8(sp)
802013b0: 41 01                        	addi	sp, sp, 16
802013b2: 82 80                        	ret

00000000802013b4 _ZN4core3fmt8builders9DebugList7entries17h219836c1dc2b89b7E:
802013b4: 59 71                        	addi	sp, sp, -112
802013b6: 86 f4                        	sd	ra, 104(sp)
802013b8: aa e0                        	sd	a0, 64(sp)
802013ba: ae e4                        	sd	a1, 72(sp)
802013bc: b2 e8                        	sd	a2, 80(sp)
802013be: 2a ec                        	sd	a0, 24(sp)
802013c0: 2e 85                        	add	a0, zero, a1
802013c2: b2 85                        	add	a1, zero, a2
802013c4: 97 f0 ff ff                  	auipc	ra, 1048575
802013c8: e7 80 40 14                  	jalr	324(ra)
802013cc: 2a e8                        	sd	a0, 16(sp)
802013ce: 2e e4                        	sd	a1, 8(sp)
802013d0: 09 a0                        	j	2
802013d2: 42 65                        	ld	a0, 16(sp)
802013d4: 2a f0                        	sd	a0, 32(sp)
802013d6: a2 65                        	ld	a1, 8(sp)
802013d8: 2e f4                        	sd	a1, 40(sp)
802013da: 09 a0                        	j	2
802013dc: 08 10                        	addi	a0, sp, 32
802013de: 97 f0 ff ff                  	auipc	ra, 1048575
802013e2: e7 80 40 13                  	jalr	308(ra)
802013e6: 2a f8                        	sd	a0, 48(sp)
802013e8: 09 a0                        	j	2
802013ea: 42 75                        	ld	a0, 48(sp)
802013ec: b3 35 a0 00                  	snez	a1, a0
802013f0: 01 46                        	mv	a2, zero
802013f2: 63 04 c5 00                  	beq	a0, a2, 8
802013f6: 09 a0                        	j	2
802013f8: 19 a0                        	j	6
802013fa: 0d a0                        	j	34
802013fc: 00 00                        	unimp	
802013fe: 42 75                        	ld	a0, 48(sp)
80201400: aa ec                        	sd	a0, 88(sp)
80201402: aa f0                        	sd	a0, 96(sp)
80201404: 2a fc                        	sd	a0, 56(sp)

0000000080201406 .LBB0_12:
80201406: 17 36 00 00                  	auipc	a2, 3
8020140a: 13 06 26 49                  	addi	a2, a2, 1170
8020140e: 2c 18                        	addi	a1, sp, 56
80201410: 62 65                        	ld	a0, 24(sp)
80201412: 97 10 00 00                  	auipc	ra, 1
80201416: e7 80 60 65                  	jalr	1622(ra)
8020141a: 11 a0                        	j	4
8020141c: 19 a0                        	j	6
8020141e: 09 a0                        	j	2
80201420: 75 bf                        	j	-68
80201422: 62 65                        	ld	a0, 24(sp)
80201424: a6 70                        	ld	ra, 104(sp)
80201426: 65 61                        	addi	sp, sp, 112
80201428: 82 80                        	ret

000000008020142a _ZN4core3ptr24slice_from_raw_parts_mut17h96c81e5a2c176e98E:
8020142a: 79 71                        	addi	sp, sp, -48
8020142c: 2a f0                        	sd	a0, 32(sp)
8020142e: 2e f4                        	sd	a1, 40(sp)
80201430: 2a e8                        	sd	a0, 16(sp)
80201432: 2e ec                        	sd	a1, 24(sp)
80201434: 2a e0                        	sd	a0, 0(sp)
80201436: 2e e4                        	sd	a1, 8(sp)
80201438: 45 61                        	addi	sp, sp, 48
8020143a: 82 80                        	ret

000000008020143c rust_main:
; pub extern "C" fn rust_main() -> ! {
8020143c: 39 71                        	addi	sp, sp, -64
;     println!("Hello rCore-Tutorial!");
8020143e: 06 fc                        	sd	ra, 56(sp)

0000000080201440 .LBB0_5:
80201440: 17 35 00 00                  	auipc	a0, 3
80201444: 13 05 05 4a                  	addi	a0, a0, 1184
80201448: 0c 61                        	ld	a1, 0(a0)

000000008020144a .LBB0_6:
8020144a: 17 35 00 00                  	auipc	a0, 3
8020144e: 13 05 e5 49                  	addi	a0, a0, 1182
80201452: 14 61                        	ld	a3, 0(a0)
80201454: 28 00                        	addi	a0, sp, 8
80201456: 05 46                        	addi	a2, zero, 1
80201458: 01 47                        	mv	a4, zero
8020145a: 97 00 00 00                  	auipc	ra, 0
8020145e: e7 80 80 dd                  	jalr	-552(ra)
80201462: 09 a0                        	j	2
80201464: 28 00                        	addi	a0, sp, 8
80201466: 97 00 00 00                  	auipc	ra, 0
8020146a: e7 80 80 96                  	jalr	-1688(ra)
8020146e: 09 a0                        	j	2
;     interrupt::init();
80201470: 97 00 00 00                  	auipc	ra, 0
80201474: e7 80 40 2c                  	jalr	708(ra)
80201478: 09 a0                        	j	2
;         llvm_asm!("ebreak"::::"volatile");
8020147a: 02 90                        	ebreak	
;     while true{};
8020147c: 09 a0                        	j	2
8020147e: 01 a0                        	j	0

0000000080201480 _ZN5riscv8register3sie10set_stimer17h1e259d2a45cdd464E:
;         pub unsafe fn $set_field() {
80201480: 41 11                        	addi	sp, sp, -16
80201482: 06 e4                        	sd	ra, 8(sp)
80201484: 13 05 00 02                  	addi	a0, zero, 32
;             _set($e);
80201488: 97 00 00 00                  	auipc	ra, 0
8020148c: e7 80 00 01                  	jalr	16(ra)
80201490: 09 a0                        	j	2
;         }
80201492: a2 60                        	ld	ra, 8(sp)
80201494: 41 01                        	addi	sp, sp, 16
80201496: 82 80                        	ret

0000000080201498 _ZN5riscv8register3sie4_set17h1e503bf3082e0ab2E:
;         unsafe fn _set(bits: usize) {
80201498: 41 11                        	addi	sp, sp, -16
8020149a: 2a e4                        	sd	a0, 8(sp)
;                 () => llvm_asm!("csrrs x0, $1, $0" :: "r"(bits), "i"($csr_number) :: "volatile"),
8020149c: 73 20 45 10                  	csrs	sie, a0
;         }
802014a0: 41 01                        	addi	sp, sp, 16
802014a2: 82 80                        	ret

00000000802014a4 _ZN2os9interrupt5timer4init17h04c8703ee7599ecfE:
; pub fn init() {
802014a4: 41 11                        	addi	sp, sp, -16
;         sie::set_stimer(); 
802014a6: 06 e4                        	sd	ra, 8(sp)
802014a8: 97 00 00 00                  	auipc	ra, 0
802014ac: e7 80 80 fd                  	jalr	-40(ra)
802014b0: 09 a0                        	j	2
;         sstatus::set_sie();
802014b2: 97 00 00 00                  	auipc	ra, 0
802014b6: e7 80 c0 ee                  	jalr	-276(ra)
802014ba: 09 a0                        	j	2
;     set_next_timeout();
802014bc: 97 00 00 00                  	auipc	ra, 0
802014c0: e7 80 00 01                  	jalr	16(ra)
802014c4: 09 a0                        	j	2
; }
802014c6: a2 60                        	ld	ra, 8(sp)
802014c8: 41 01                        	addi	sp, sp, 16
802014ca: 82 80                        	ret

00000000802014cc _ZN2os9interrupt5timer16set_next_timeout17h655d48a68c01dbfbE:
; fn set_next_timeout() {
802014cc: 01 11                        	addi	sp, sp, -32
;     set_timer(time::read() + INTERVAL);
802014ce: 06 ec                        	sd	ra, 24(sp)
802014d0: 97 00 00 00                  	auipc	ra, 0
802014d4: e7 80 a0 1b                  	jalr	442(ra)
802014d8: 2a e8                        	sd	a0, 16(sp)
802014da: 09 a0                        	j	2
802014dc: 61 65                        	lui	a0, 24
802014de: 1b 05 05 6a                  	addiw	a0, a0, 1696
802014e2: c2 65                        	ld	a1, 16(sp)
802014e4: 2e 95                        	add	a0, a0, a1
802014e6: 2a e4                        	sd	a0, 8(sp)
802014e8: 63 6c b5 00                  	bltu	a0, a1, 24
802014ec: 09 a0                        	j	2
802014ee: 22 65                        	ld	a0, 8(sp)
802014f0: 97 00 00 00                  	auipc	ra, 0
802014f4: e7 80 a0 4e                  	jalr	1258(ra)
802014f8: 09 a0                        	j	2
; }
802014fa: e2 60                        	ld	ra, 24(sp)
802014fc: 05 61                        	addi	sp, sp, 32
802014fe: 82 80                        	ret

0000000080201500 .LBB1_5:
;     set_timer(time::read() + INTERVAL);
80201500: 17 35 00 00                  	auipc	a0, 3
80201504: 13 05 05 42                  	addi	a0, a0, 1056

0000000080201508 .LBB1_6:
80201508: 17 36 00 00                  	auipc	a2, 3
8020150c: 13 06 06 40                  	addi	a2, a2, 1024
80201510: f1 45                        	addi	a1, zero, 28
80201512: 97 10 00 00                  	auipc	ra, 1
80201516: e7 80 60 f1                  	jalr	-234(ra)
8020151a: 00 00                        	unimp	

000000008020151c _ZN2os9interrupt5timer4tick17h4c6fc2cd50a4c1b4E:
; pub fn tick() {
8020151c: 19 71                        	addi	sp, sp, -128
;     set_next_timeout();
8020151e: 86 fc                        	sd	ra, 120(sp)
80201520: 97 00 00 00                  	auipc	ra, 0
80201524: e7 80 c0 fa                  	jalr	-84(ra)
80201528: 09 a0                        	j	2

000000008020152a .LBB2_10:
;         TICKS += 1;
8020152a: 17 55 01 00                  	auipc	a0, 21
8020152e: 13 05 e5 d4                  	addi	a0, a0, -690
80201532: 08 61                        	ld	a0, 0(a0)
80201534: 93 05 15 00                  	addi	a1, a0, 1
80201538: 2e ec                        	sd	a1, 24(sp)
8020153a: 63 e6 a5 0a                  	bltu	a1, a0, 172
8020153e: 09 a0                        	j	2

0000000080201540 .LBB2_11:
80201540: 17 55 01 00                  	auipc	a0, 21
80201544: 13 05 85 d3                  	addi	a0, a0, -712
80201548: e2 65                        	ld	a1, 24(sp)
8020154a: 0c e1                        	sd	a1, 0(a0)
;         if TICKS % 100 == 0 {
8020154c: 13 d5 25 00                  	srli	a0, a1, 2
80201550: 37 f6 51 00                  	lui	a2, 1311
80201554: 1b 06 56 b8                  	addiw	a2, a2, -1147
80201558: 36 06                        	slli	a2, a2, 13
8020155a: 13 06 76 3d                  	addi	a2, a2, 983
8020155e: 3a 06                        	slli	a2, a2, 14
80201560: 13 06 f6 28                  	addi	a2, a2, 655
80201564: 32 06                        	slli	a2, a2, 12
80201566: 13 06 36 5c                  	addi	a2, a2, 1475
8020156a: 33 35 c5 02                  	<unknown>
8020156e: 09 81                        	srli	a0, a0, 2
80201570: 13 06 40 06                  	addi	a2, zero, 100
80201574: 33 05 c5 02                  	<unknown>
80201578: 33 85 a5 40                  	sub	a0, a1, a0
8020157c: 01 46                        	mv	a2, zero
8020157e: 63 04 c5 00                  	beq	a0, a2, 8
80201582: 09 a0                        	j	2
80201584: b1 a8                        	j	92

0000000080201586 .LBB2_12:
;             println!("{} tick", TICKS);
80201586: 17 35 00 00                  	auipc	a0, 3
8020158a: 13 05 a5 3f                  	addi	a0, a0, 1018
8020158e: 0c 61                        	ld	a1, 0(a0)

0000000080201590 .LBB2_13:
80201590: 17 55 01 00                  	auipc	a0, 21
80201594: 13 05 85 ce                  	addi	a0, a0, -792
80201598: aa f4                        	sd	a0, 104(sp)
8020159a: aa f8                        	sd	a0, 112(sp)

000000008020159c .LBB2_14:
8020159c: 17 36 00 00                  	auipc	a2, 3
802015a0: 13 06 86 b4                  	addi	a2, a2, -1208
802015a4: 2e e8                        	sd	a1, 16(sp)
802015a6: b2 85                        	add	a1, zero, a2
802015a8: 97 00 00 00                  	auipc	ra, 0
802015ac: e7 80 80 99                  	jalr	-1640(ra)
802015b0: 2a e4                        	sd	a0, 8(sp)
802015b2: 2e e0                        	sd	a1, 0(sp)
802015b4: 09 a0                        	j	2
802015b6: 22 65                        	ld	a0, 8(sp)
802015b8: aa ec                        	sd	a0, 88(sp)
802015ba: 82 65                        	ld	a1, 0(sp)
802015bc: ae f0                        	sd	a1, 96(sp)
802015be: 28 10                        	addi	a0, sp, 40
802015c0: 09 46                        	addi	a2, zero, 2
802015c2: b4 08                        	addi	a3, sp, 88
802015c4: 05 47                        	addi	a4, zero, 1
802015c6: c2 65                        	ld	a1, 16(sp)
802015c8: 97 00 00 00                  	auipc	ra, 0
802015cc: e7 80 a0 c6                  	jalr	-918(ra)
802015d0: 09 a0                        	j	2
802015d2: 28 10                        	addi	a0, sp, 40
802015d4: 97 f0 ff ff                  	auipc	ra, 1048575
802015d8: e7 80 a0 7f                  	jalr	2042(ra)
802015dc: 09 a0                        	j	2
;         if TICKS % 100 == 0 {
802015de: 09 a0                        	j	2
; //! # 全局属性
802015e0: e6 70                        	ld	ra, 120(sp)
802015e2: 09 61                        	addi	sp, sp, 128
802015e4: 82 80                        	ret

00000000802015e6 .LBB2_15:
;         TICKS += 1;
802015e6: 17 35 00 00                  	auipc	a0, 3
802015ea: 13 05 a5 33                  	addi	a0, a0, 826

00000000802015ee .LBB2_16:
802015ee: 17 36 00 00                  	auipc	a2, 3
802015f2: 13 06 26 35                  	addi	a2, a2, 850
802015f6: f1 45                        	addi	a1, zero, 28
802015f8: 97 10 00 00                  	auipc	ra, 1
802015fc: e7 80 00 e3                  	jalr	-464(ra)
80201600: 00 00                        	unimp	

0000000080201602 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5a17eeb504bc2b77E:
80201602: 01 11                        	addi	sp, sp, -32
80201604: 06 ec                        	sd	ra, 24(sp)
80201606: 2a e4                        	sd	a0, 8(sp)
80201608: 2e e8                        	sd	a1, 16(sp)
8020160a: 08 61                        	ld	a0, 0(a0)
8020160c: 97 10 00 00                  	auipc	ra, 1
80201610: e7 80 60 cb                  	jalr	-842(ra)
80201614: 2a e0                        	sd	a0, 0(sp)
80201616: 09 a0                        	j	2
80201618: 02 65                        	ld	a0, 0(sp)
8020161a: e2 60                        	ld	ra, 24(sp)
8020161c: 05 61                        	addi	sp, sp, 32
8020161e: 82 80                        	ret

0000000080201620 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h6e05b5e6e20c17d4E:
80201620: 01 11                        	addi	sp, sp, -32
80201622: 06 ec                        	sd	ra, 24(sp)
80201624: 2a e4                        	sd	a0, 8(sp)
80201626: 2e e8                        	sd	a1, 16(sp)
80201628: 97 00 00 00                  	auipc	ra, 0
8020162c: e7 80 a0 02                  	jalr	42(ra)
80201630: 2a e0                        	sd	a0, 0(sp)
80201632: 09 a0                        	j	2
80201634: 02 65                        	ld	a0, 0(sp)
80201636: e2 60                        	ld	ra, 24(sp)
80201638: 05 61                        	addi	sp, sp, 32
8020163a: 82 80                        	ret

000000008020163c _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h20bcab610aca1901E:
8020163c: 01 11                        	addi	sp, sp, -32
8020163e: 2a e4                        	sd	a0, 8(sp)
80201640: 2e e8                        	sd	a1, 16(sp)
80201642: 8e 05                        	slli	a1, a1, 3
80201644: 2e 95                        	add	a0, a0, a1
80201646: 2a ec                        	sd	a0, 24(sp)
80201648: 2a e0                        	sd	a0, 0(sp)
8020164a: 09 a0                        	j	2
8020164c: 02 65                        	ld	a0, 0(sp)
8020164e: 05 61                        	addi	sp, sp, 32
80201650: 82 80                        	ret

0000000080201652 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h9abbb5e3798b1463E:
80201652: 01 11                        	addi	sp, sp, -32
80201654: 2a e4                        	sd	a0, 8(sp)
80201656: 2e e8                        	sd	a1, 16(sp)
80201658: 2e 95                        	add	a0, a0, a1
8020165a: 2a ec                        	sd	a0, 24(sp)
8020165c: 2a e0                        	sd	a0, 0(sp)
8020165e: 09 a0                        	j	2
80201660: 02 65                        	ld	a0, 0(sp)
80201662: 05 61                        	addi	sp, sp, 32
80201664: 82 80                        	ret

0000000080201666 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2d3c54f1d9cc339dE:
80201666: 41 11                        	addi	sp, sp, -16
80201668: 2a e4                        	sd	a0, 8(sp)
8020166a: 2a e0                        	sd	a0, 0(sp)
8020166c: 09 a0                        	j	2
8020166e: 02 65                        	ld	a0, 0(sp)
80201670: 13 35 15 00                  	seqz	a0, a0
80201674: 41 01                        	addi	sp, sp, 16
80201676: 82 80                        	ret

0000000080201678 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h7c01a27e4a7e7131E:
80201678: 41 11                        	addi	sp, sp, -16
8020167a: 2a e4                        	sd	a0, 8(sp)
8020167c: 2a e0                        	sd	a0, 0(sp)
8020167e: 09 a0                        	j	2
80201680: 02 65                        	ld	a0, 0(sp)
80201682: 13 35 15 00                  	seqz	a0, a0
80201686: 41 01                        	addi	sp, sp, 16
80201688: 82 80                        	ret

000000008020168a _ZN5riscv8register4time4read17h65bdf8682451a294E:
;         pub fn read() -> usize {
8020168a: 41 11                        	addi	sp, sp, -16
;             unsafe { _read() }
8020168c: 06 e4                        	sd	ra, 8(sp)
8020168e: 97 00 00 00                  	auipc	ra, 0
80201692: e7 80 40 01                  	jalr	20(ra)
80201696: 2a e0                        	sd	a0, 0(sp)
80201698: 09 a0                        	j	2
;         }
8020169a: 02 65                        	ld	a0, 0(sp)
8020169c: a2 60                        	ld	ra, 8(sp)
8020169e: 41 01                        	addi	sp, sp, 16
802016a0: 82 80                        	ret

00000000802016a2 _ZN5riscv8register4time5_read17h32ec02597568c54bE:
;         unsafe fn _read() -> usize {
802016a2: 41 11                        	addi	sp, sp, -16
;                     llvm_asm!("csrrs $0, $1, x0" : "=r"(r) : "i"($csr_number) :: "volatile");
802016a4: 73 25 10 c0                  	rdtime	a0
802016a8: 2a e4                        	sd	a0, 8(sp)
;         }
802016aa: 41 01                        	addi	sp, sp, 16
802016ac: 82 80                        	ret

00000000802016ae _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h25537fc2b210d751E:
802016ae: 01 11                        	addi	sp, sp, -32
802016b0: 06 ec                        	sd	ra, 24(sp)
802016b2: 2a e4                        	sd	a0, 8(sp)
802016b4: 2e e8                        	sd	a1, 16(sp)
802016b6: 97 00 00 00                  	auipc	ra, 0
802016ba: e7 80 00 03                  	jalr	48(ra)
802016be: 2a e0                        	sd	a0, 0(sp)
802016c0: 09 a0                        	j	2
802016c2: 02 65                        	ld	a0, 0(sp)
802016c4: e2 60                        	ld	ra, 24(sp)
802016c6: 05 61                        	addi	sp, sp, 32
802016c8: 82 80                        	ret

00000000802016ca _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h7362e5c7f3477f1fE:
802016ca: 01 11                        	addi	sp, sp, -32
802016cc: 06 ec                        	sd	ra, 24(sp)
802016ce: 2a e4                        	sd	a0, 8(sp)
802016d0: 2e e8                        	sd	a1, 16(sp)
802016d2: 97 00 00 00                  	auipc	ra, 0
802016d6: e7 80 a0 02                  	jalr	42(ra)
802016da: 2a e0                        	sd	a0, 0(sp)
802016dc: 09 a0                        	j	2
802016de: 02 65                        	ld	a0, 0(sp)
802016e0: e2 60                        	ld	ra, 24(sp)
802016e2: 05 61                        	addi	sp, sp, 32
802016e4: 82 80                        	ret

00000000802016e6 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h516e69ec400313e9E:
802016e6: 01 11                        	addi	sp, sp, -32
802016e8: 2a e4                        	sd	a0, 8(sp)
802016ea: 2e e8                        	sd	a1, 16(sp)
802016ec: 8e 05                        	slli	a1, a1, 3
802016ee: 2e 95                        	add	a0, a0, a1
802016f0: 2a ec                        	sd	a0, 24(sp)
802016f2: 2a e0                        	sd	a0, 0(sp)
802016f4: 09 a0                        	j	2
802016f6: 02 65                        	ld	a0, 0(sp)
802016f8: 05 61                        	addi	sp, sp, 32
802016fa: 82 80                        	ret

00000000802016fc _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h76ed4e0b69323fd5E:
802016fc: 01 11                        	addi	sp, sp, -32
802016fe: 2a e4                        	sd	a0, 8(sp)
80201700: 2e e8                        	sd	a1, 16(sp)
80201702: 2e 95                        	add	a0, a0, a1
80201704: 2a ec                        	sd	a0, 24(sp)
80201706: 2a e0                        	sd	a0, 0(sp)
80201708: 09 a0                        	j	2
8020170a: 02 65                        	ld	a0, 0(sp)
8020170c: 05 61                        	addi	sp, sp, 32
8020170e: 82 80                        	ret

0000000080201710 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4843a6372bad07c5E:
80201710: 41 11                        	addi	sp, sp, -16
80201712: 2a e4                        	sd	a0, 8(sp)
80201714: 2a e0                        	sd	a0, 0(sp)
80201716: 09 a0                        	j	2
80201718: 02 65                        	ld	a0, 0(sp)
8020171a: 13 35 15 00                  	seqz	a0, a0
8020171e: 41 01                        	addi	sp, sp, 16
80201720: 82 80                        	ret

0000000080201722 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hd06ddd57718ee5b4E:
80201722: 41 11                        	addi	sp, sp, -16
80201724: 2a e4                        	sd	a0, 8(sp)
80201726: 2a e0                        	sd	a0, 0(sp)
80201728: 09 a0                        	j	2
8020172a: 02 65                        	ld	a0, 0(sp)
8020172c: 13 35 15 00                  	seqz	a0, a0
80201730: 41 01                        	addi	sp, sp, 16
80201732: 82 80                        	ret

0000000080201734 _ZN2os9interrupt4init17he7676876e7521a6dE:
; pub fn init() {
80201734: 39 71                        	addi	sp, sp, -64
;     handler::init();
80201736: 06 fc                        	sd	ra, 56(sp)
80201738: 97 f0 ff ff                  	auipc	ra, 1048575
8020173c: e7 80 00 36                  	jalr	864(ra)
80201740: 09 a0                        	j	2
;     timer::init();
80201742: 97 00 00 00                  	auipc	ra, 0
80201746: e7 80 20 d6                  	jalr	-670(ra)
8020174a: 09 a0                        	j	2

000000008020174c .LBB0_5:
;     println!("mod interrupt initialized");
8020174c: 17 35 00 00                  	auipc	a0, 3
80201750: 13 05 c5 26                  	addi	a0, a0, 620
80201754: 0c 61                        	ld	a1, 0(a0)

0000000080201756 .LBB0_6:
80201756: 17 35 00 00                  	auipc	a0, 3
8020175a: 13 05 a5 26                  	addi	a0, a0, 618
8020175e: 14 61                        	ld	a3, 0(a0)
80201760: 28 00                        	addi	a0, sp, 8
80201762: 05 46                        	addi	a2, zero, 1
80201764: 01 47                        	mv	a4, zero
80201766: 97 00 00 00                  	auipc	ra, 0
8020176a: e7 80 c0 ac                  	jalr	-1332(ra)
8020176e: 09 a0                        	j	2
80201770: 28 00                        	addi	a0, sp, 8
80201772: 97 f0 ff ff                  	auipc	ra, 1048575
80201776: e7 80 c0 65                  	jalr	1628(ra)
8020177a: 09 a0                        	j	2
; //! # 全局属性
8020177c: e2 70                        	ld	ra, 56(sp)
8020177e: 21 61                        	addi	sp, sp, 64
80201780: 82 80                        	ret

0000000080201782 _ZN101_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd5e7796de77323c0E:
80201782: 1d 71                        	addi	sp, sp, -96
80201784: 86 ec                        	sd	ra, 88(sp)
80201786: aa e0                        	sd	a0, 64(sp)
80201788: ae e4                        	sd	a1, 72(sp)
8020178a: b2 e8                        	sd	a2, 80(sp)
8020178c: 01 47                        	mv	a4, zero
8020178e: 3a f8                        	sd	a4, 48(sp)
80201790: 2a fc                        	sd	a0, 56(sp)
80201792: 2a f4                        	sd	a0, 40(sp)
80201794: 3a 85                        	add	a0, zero, a4
80201796: 22 77                        	ld	a4, 40(sp)
80201798: 2e f0                        	sd	a1, 32(sp)
8020179a: ba 85                        	add	a1, zero, a4
8020179c: 82 77                        	ld	a5, 32(sp)
8020179e: 32 ec                        	sd	a2, 24(sp)
802017a0: 3e 86                        	add	a2, zero, a5
802017a2: 62 68                        	ld	a6, 24(sp)
802017a4: 36 e8                        	sd	a3, 16(sp)
802017a6: c2 86                        	add	a3, zero, a6
802017a8: 42 67                        	ld	a4, 16(sp)
802017aa: 97 00 00 00                  	auipc	ra, 0
802017ae: e7 80 e0 07                  	jalr	126(ra)
802017b2: 2a e4                        	sd	a0, 8(sp)
802017b4: 2e e0                        	sd	a1, 0(sp)
802017b6: 09 a0                        	j	2
802017b8: 22 65                        	ld	a0, 8(sp)
802017ba: 82 65                        	ld	a1, 0(sp)
802017bc: e6 60                        	ld	ra, 88(sp)
802017be: 25 61                        	addi	sp, sp, 96
802017c0: 82 80                        	ret

00000000802017c2 _ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9ff9e753bd4dad2dE:
802017c2: 01 11                        	addi	sp, sp, -32
802017c4: 2a e8                        	sd	a0, 16(sp)
802017c6: 2e ec                        	sd	a1, 24(sp)
802017c8: 05 61                        	addi	sp, sp, 32
802017ca: 82 80                        	ret

00000000802017cc _ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0096be828d3b83f9E:
802017cc: 01 11                        	addi	sp, sp, -32
802017ce: 2a e8                        	sd	a0, 16(sp)
802017d0: 2e ec                        	sd	a1, 24(sp)
802017d2: 05 61                        	addi	sp, sp, 32
802017d4: 82 80                        	ret

00000000802017d6 _ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h352e7f7e23ad4531E:
802017d6: 1d 71                        	addi	sp, sp, -96
802017d8: 86 ec                        	sd	ra, 88(sp)
802017da: 2a fc                        	sd	a0, 56(sp)
802017dc: ae e0                        	sd	a1, 64(sp)
802017de: b2 e4                        	sd	a2, 72(sp)
802017e0: b6 e8                        	sd	a3, 80(sp)
802017e2: 2a f8                        	sd	a0, 48(sp)
802017e4: 32 85                        	add	a0, zero, a2
802017e6: 2e f4                        	sd	a1, 40(sp)
802017e8: b6 85                        	add	a1, zero, a3
802017ea: 97 f0 ff ff                  	auipc	ra, 1048575
802017ee: e7 80 60 b1                  	jalr	-1258(ra)
802017f2: 2a f0                        	sd	a0, 32(sp)
802017f4: 09 a0                        	j	2
802017f6: 02 75                        	ld	a0, 32(sp)
802017f8: c2 75                        	ld	a1, 48(sp)
802017fa: 97 00 00 00                  	auipc	ra, 0
802017fe: e7 80 60 e2                  	jalr	-474(ra)
80201802: 2a ec                        	sd	a0, 24(sp)
80201804: 09 a0                        	j	2
80201806: 22 75                        	ld	a0, 40(sp)
80201808: c2 75                        	ld	a1, 48(sp)
8020180a: b3 05 b5 40                  	sub	a1, a0, a1
8020180e: 62 65                        	ld	a0, 24(sp)
80201810: 97 f0 ff ff                  	auipc	ra, 1048575
80201814: e7 80 00 ad                  	jalr	-1328(ra)
80201818: 2a e8                        	sd	a0, 16(sp)
8020181a: 2e e4                        	sd	a1, 8(sp)
8020181c: 09 a0                        	j	2
8020181e: 42 65                        	ld	a0, 16(sp)
80201820: a2 65                        	ld	a1, 8(sp)
80201822: e6 60                        	ld	ra, 88(sp)
80201824: 25 61                        	addi	sp, sp, 96
80201826: 82 80                        	ret

0000000080201828 _ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3662a26c567c7b6bE:
80201828: 59 71                        	addi	sp, sp, -112
8020182a: 86 f4                        	sd	ra, 104(sp)
8020182c: aa e4                        	sd	a0, 72(sp)
8020182e: ae e8                        	sd	a1, 80(sp)
80201830: b2 ec                        	sd	a2, 88(sp)
80201832: b6 f0                        	sd	a3, 96(sp)
80201834: ba e0                        	sd	a4, 64(sp)
80201836: 36 fc                        	sd	a3, 56(sp)
80201838: 32 f8                        	sd	a2, 48(sp)
8020183a: 2e f4                        	sd	a1, 40(sp)
8020183c: 2a f0                        	sd	a0, 32(sp)
8020183e: 63 eb a5 00                  	bltu	a1, a0, 22
80201842: 09 a0                        	j	2
80201844: 42 75                        	ld	a0, 48(sp)
80201846: e2 75                        	ld	a1, 56(sp)
80201848: 97 f0 ff ff                  	auipc	ra, 1048575
8020184c: e7 80 20 ac                  	jalr	-1342(ra)
80201850: 2a ec                        	sd	a0, 24(sp)
80201852: 09 a8                        	j	18
80201854: 02 75                        	ld	a0, 32(sp)
80201856: a2 75                        	ld	a1, 40(sp)
80201858: 06 66                        	ld	a2, 64(sp)
8020185a: 97 20 00 00                  	auipc	ra, 2
8020185e: e7 80 60 09                  	jalr	150(ra)
80201862: 00 00                        	unimp	
80201864: 62 65                        	ld	a0, 24(sp)
80201866: a2 75                        	ld	a1, 40(sp)
80201868: 63 6e b5 00                  	bltu	a0, a1, 28
8020186c: 09 a0                        	j	2
8020186e: 02 75                        	ld	a0, 32(sp)
80201870: a2 75                        	ld	a1, 40(sp)
80201872: 42 76                        	ld	a2, 48(sp)
80201874: e2 76                        	ld	a3, 56(sp)
80201876: 97 00 00 00                  	auipc	ra, 0
8020187a: e7 80 00 f6                  	jalr	-160(ra)
8020187e: 2a e8                        	sd	a0, 16(sp)
80201880: 2e e4                        	sd	a1, 8(sp)
80201882: 0d a0                        	j	34
80201884: 42 75                        	ld	a0, 48(sp)
80201886: e2 75                        	ld	a1, 56(sp)
80201888: 97 f0 ff ff                  	auipc	ra, 1048575
8020188c: e7 80 20 a8                  	jalr	-1406(ra)
80201890: 2a e0                        	sd	a0, 0(sp)
80201892: 09 a0                        	j	2
80201894: 22 75                        	ld	a0, 40(sp)
80201896: 82 65                        	ld	a1, 0(sp)
80201898: 06 66                        	ld	a2, 64(sp)
8020189a: 97 20 00 00                  	auipc	ra, 2
8020189e: e7 80 60 01                  	jalr	22(ra)
802018a2: 00 00                        	unimp	
802018a4: 42 65                        	ld	a0, 16(sp)
802018a6: a2 65                        	ld	a1, 8(sp)
802018a8: a6 70                        	ld	ra, 104(sp)
802018aa: 65 61                        	addi	sp, sp, 112
802018ac: 82 80                        	ret

00000000802018ae _ZN5riscv8register5stvec5write17h6f3855b07da5f308E:
; pub unsafe fn write(addr: usize, mode: TrapMode) {
802018ae: 01 11                        	addi	sp, sp, -32
802018b0: 06 ec                        	sd	ra, 24(sp)
802018b2: 2e 86                        	add	a2, zero, a1
802018b4: 2a e4                        	sd	a0, 8(sp)
802018b6: a3 0b b1 00                  	sb	a1, 23(sp)
;     _write(addr + mode as usize);
802018ba: aa 95                        	add	a1, a1, a0
802018bc: 2e e0                        	sd	a1, 0(sp)
802018be: 63 ec a5 00                  	bltu	a1, a0, 24
802018c2: 09 a0                        	j	2
802018c4: 02 65                        	ld	a0, 0(sp)
802018c6: 97 00 00 00                  	auipc	ra, 0
802018ca: e7 80 c0 02                  	jalr	44(ra)
802018ce: 09 a0                        	j	2
; }
802018d0: e2 60                        	ld	ra, 24(sp)
802018d2: 05 61                        	addi	sp, sp, 32
802018d4: 82 80                        	ret

00000000802018d6 .LBB0_4:
;     _write(addr + mode as usize);
802018d6: 17 35 00 00                  	auipc	a0, 3
802018da: 13 05 a5 16                  	addi	a0, a0, 362

00000000802018de .LBB0_5:
802018de: 17 36 00 00                  	auipc	a2, 3
802018e2: 13 06 26 14                  	addi	a2, a2, 322
802018e6: f1 45                        	addi	a1, zero, 28
802018e8: 97 10 00 00                  	auipc	ra, 1
802018ec: e7 80 00 b4                  	jalr	-1216(ra)
802018f0: 00 00                        	unimp	

00000000802018f2 _ZN5riscv8register5stvec6_write17h09b961a9cb0fddb5E:
;         unsafe fn _write(bits: usize) {
802018f2: 41 11                        	addi	sp, sp, -16
802018f4: 2a e4                        	sd	a0, 8(sp)
;                 () => llvm_asm!("csrrw x0, $1, $0" :: "r"(bits), "i"($csr_number) :: "volatile"),
802018f6: 73 10 55 10                  	csrw	stvec, a0
;         }
802018fa: 41 01                        	addi	sp, sp, 16
802018fc: 82 80                        	ret

00000000802018fe _ZN45_$LT$usize$u20$as$u20$bit_field..BitField$GT$7get_bit17hef7e6a46bc4fb251E:
;             fn get_bit(&self, bit: usize) -> bool {
802018fe: 79 71                        	addi	sp, sp, -48
80201900: 2a f0                        	sd	a0, 32(sp)
80201902: 2e f4                        	sd	a1, 40(sp)
80201904: 13 06 f0 03                  	addi	a2, zero, 63
;                 assert!(bit < Self::BIT_LENGTH);
80201908: 2e ec                        	sd	a1, 24(sp)
8020190a: 2a e8                        	sd	a0, 16(sp)
8020190c: 63 61 b6 02                  	bltu	a2, a1, 34
80201910: 09 a0                        	j	2
;                 (*self & (1 << bit)) != 0
80201912: 42 65                        	ld	a0, 16(sp)
80201914: 0c 61                        	ld	a1, 0(a0)
80201916: 62 66                        	ld	a2, 24(sp)
80201918: 93 76 06 fc                  	andi	a3, a2, -64
8020191c: 05 47                        	addi	a4, zero, 1
8020191e: 33 17 c7 00                  	sll	a4, a4, a2
80201922: 81 47                        	mv	a5, zero
80201924: 2e e4                        	sd	a1, 8(sp)
80201926: 3a e0                        	sd	a4, 0(sp)
80201928: 63 9a f6 02                  	bne	a3, a5, 52
8020192c: 05 a0                        	j	32

000000008020192e .LBB0_5:
8020192e: 17 35 00 00                  	auipc	a0, 3
80201932: 13 05 e5 12                  	addi	a0, a0, 302

0000000080201936 .LBB0_6:
80201936: 17 36 00 00                  	auipc	a2, 3
8020193a: 13 06 a6 19                  	addi	a2, a2, 410
8020193e: 93 05 80 02                  	addi	a1, zero, 40
80201942: 97 10 00 00                  	auipc	ra, 1
80201946: e7 80 60 ae                  	jalr	-1306(ra)
8020194a: 00 00                        	unimp	
8020194c: 22 65                        	ld	a0, 8(sp)
8020194e: 82 65                        	ld	a1, 0(sp)
80201950: 33 76 b5 00                  	and	a2, a0, a1
80201954: 33 35 c0 00                  	snez	a0, a2
;             }
80201958: 45 61                        	addi	sp, sp, 48
8020195a: 82 80                        	ret

000000008020195c .LBB0_7:
;                 (*self & (1 << bit)) != 0
8020195c: 17 35 00 00                  	auipc	a0, 3
80201960: 13 05 45 21                  	addi	a0, a0, 532

0000000080201964 .LBB0_8:
80201964: 17 36 00 00                  	auipc	a2, 3
80201968: 13 06 c6 1e                  	addi	a2, a2, 492
8020196c: 93 05 30 02                  	addi	a1, zero, 35
80201970: 97 10 00 00                  	auipc	ra, 1
80201974: e7 80 80 ab                  	jalr	-1352(ra)
80201978: 00 00                        	unimp	

000000008020197a _ZN2os3sbi15console_putchar17h46b3120a0c9f13a1E:
; pub fn console_putchar(c: usize) {
8020197a: 39 71                        	addi	sp, sp, -64
8020197c: 2a e8                        	sd	a0, 16(sp)
8020197e: 85 45                        	addi	a1, zero, 1
80201980: 2e f0                        	sd	a1, 32(sp)
80201982: 2a f4                        	sd	a0, 40(sp)
80201984: 01 46                        	mv	a2, zero
80201986: 32 f8                        	sd	a2, 48(sp)
80201988: 32 fc                        	sd	a2, 56(sp)
;         llvm_asm!("ecall"
8020198a: 2e e4                        	sd	a1, 8(sp)
8020198c: b2 85                        	add	a1, zero, a2
8020198e: a2 68                        	ld	a7, 8(sp)
80201990: 73 00 00 00                  	ecall	
80201994: 2a ec                        	sd	a0, 24(sp)
;     sbi_call(SBI_CONSOLE_PUTCHAR, c, 0, 0);
80201996: 09 a0                        	j	2
; }
80201998: 21 61                        	addi	sp, sp, 64
8020199a: 82 80                        	ret

000000008020199c _ZN2os3sbi8shutdown17hbac4f0b6324b972eE:
; pub fn shutdown() -> ! {
8020199c: 39 71                        	addi	sp, sp, -64
8020199e: 21 45                        	addi	a0, zero, 8
802019a0: 2a f0                        	sd	a0, 32(sp)
802019a2: 81 45                        	mv	a1, zero
802019a4: 2e f4                        	sd	a1, 40(sp)
802019a6: 2e f8                        	sd	a1, 48(sp)
802019a8: 2e fc                        	sd	a1, 56(sp)
;         llvm_asm!("ecall"
802019aa: 2a e8                        	sd	a0, 16(sp)
802019ac: 2e 85                        	add	a0, zero, a1
802019ae: 2e e4                        	sd	a1, 8(sp)
802019b0: 22 66                        	ld	a2, 8(sp)
802019b2: c2 68                        	ld	a7, 16(sp)
802019b4: 73 00 00 00                  	ecall	
802019b8: 2a ec                        	sd	a0, 24(sp)
;     sbi_call(SBI_SHUTDOWN, 0, 0, 0);
802019ba: 09 a0                        	j	2

00000000802019bc .LBB1_2:
;     unreachable!()
802019bc: 17 35 00 00                  	auipc	a0, 3
802019c0: 13 05 75 1d                  	addi	a0, a0, 471

00000000802019c4 .LBB1_3:
802019c4: 17 36 00 00                  	auipc	a2, 3
802019c8: 13 06 46 20                  	addi	a2, a2, 516
802019cc: 93 05 80 02                  	addi	a1, zero, 40
802019d0: 97 10 00 00                  	auipc	ra, 1
802019d4: e7 80 80 a5                  	jalr	-1448(ra)
802019d8: 00 00                        	unimp	

00000000802019da _ZN2os3sbi9set_timer17h9e269b0c5436edc5E:
; pub fn set_timer(time: usize) {
802019da: 39 71                        	addi	sp, sp, -64
802019dc: 2a e8                        	sd	a0, 16(sp)
802019de: 81 45                        	mv	a1, zero
802019e0: 2e f0                        	sd	a1, 32(sp)
802019e2: 2a f4                        	sd	a0, 40(sp)
802019e4: 2e f8                        	sd	a1, 48(sp)
802019e6: 2e fc                        	sd	a1, 56(sp)
;         llvm_asm!("ecall"
802019e8: 2e e4                        	sd	a1, 8(sp)
802019ea: 22 66                        	ld	a2, 8(sp)
802019ec: a2 68                        	ld	a7, 8(sp)
802019ee: 73 00 00 00                  	ecall	
802019f2: 2a ec                        	sd	a0, 24(sp)
;     sbi_call(SBI_SET_TIMER, time, 0, 0);
802019f4: 09 a0                        	j	2
; //! # 全局属性
802019f6: 21 61                        	addi	sp, sp, 64
802019f8: 82 80                        	ret

00000000802019fa _ZN4core4char7convert18from_u32_unchecked17hcded99159fb00b99E:
802019fa: 41 11                        	addi	sp, sp, -16
802019fc: aa 85                        	add	a1, zero, a0
802019fe: 2a c4                        	sw	a0, 8(sp)
80201a00: 2a c6                        	sw	a0, 12(sp)
80201a02: 02 15                        	slli	a0, a0, 32
80201a04: 01 91                        	srli	a0, a0, 32
80201a06: 2a e0                        	sd	a0, 0(sp)
80201a08: 09 a0                        	j	2
80201a0a: 02 65                        	ld	a0, 0(sp)
80201a0c: 41 01                        	addi	sp, sp, 16
80201a0e: 82 80                        	ret

0000000080201a10 _ZN4core3fmt5Write10write_char17hc50697abe79fddb1E:
80201a10: 5d 71                        	addi	sp, sp, -80
80201a12: 86 e4                        	sd	ra, 72(sp)
80201a14: 2e 86                        	add	a2, zero, a1
80201a16: 2a fc                        	sd	a0, 56(sp)
80201a18: ae c2                        	sw	a1, 68(sp)
80201a1a: 81 46                        	mv	a3, zero
80201a1c: 36 da                        	sw	a3, 52(sp)
80201a1e: 54 18                        	addi	a3, sp, 52
80201a20: 11 47                        	addi	a4, zero, 4
80201a22: 2a f4                        	sd	a0, 40(sp)
80201a24: 2e 85                        	add	a0, zero, a1
80201a26: b6 85                        	add	a1, zero, a3
80201a28: 32 f0                        	sd	a2, 32(sp)
80201a2a: 3a 86                        	add	a2, zero, a4
80201a2c: 97 f0 ff ff                  	auipc	ra, 1048575
80201a30: e7 80 60 f1                  	jalr	-234(ra)
80201a34: 2a ec                        	sd	a0, 24(sp)
80201a36: 2e e8                        	sd	a1, 16(sp)
80201a38: 09 a0                        	j	2
80201a3a: 22 75                        	ld	a0, 40(sp)
80201a3c: e2 65                        	ld	a1, 24(sp)
80201a3e: 42 66                        	ld	a2, 16(sp)
80201a40: 97 f0 ff ff                  	auipc	ra, 1048575
80201a44: e7 80 80 28                  	jalr	648(ra)
80201a48: 2a e4                        	sd	a0, 8(sp)
80201a4a: 09 a0                        	j	2
80201a4c: 22 65                        	ld	a0, 8(sp)
80201a4e: a6 60                        	ld	ra, 72(sp)
80201a50: 61 61                        	addi	sp, sp, 80
80201a52: 82 80                        	ret

0000000080201a54 _ZN4core3fmt5Write9write_fmt17h3f8d7d3cce3a2a5eE:
80201a54: 5d 71                        	addi	sp, sp, -80
80201a56: 86 e4                        	sd	ra, 72(sp)
80201a58: 2a e8                        	sd	a0, 16(sp)
80201a5a: 88 61                        	ld	a0, 0(a1)
80201a5c: 2a ec                        	sd	a0, 24(sp)
80201a5e: 88 65                        	ld	a0, 8(a1)
80201a60: 2a f0                        	sd	a0, 32(sp)
80201a62: 88 69                        	ld	a0, 16(a1)
80201a64: 2a f4                        	sd	a0, 40(sp)
80201a66: 88 6d                        	ld	a0, 24(a1)
80201a68: 2a f8                        	sd	a0, 48(sp)
80201a6a: 88 71                        	ld	a0, 32(a1)
80201a6c: 2a fc                        	sd	a0, 56(sp)
80201a6e: 88 75                        	ld	a0, 40(a1)
80201a70: aa e0                        	sd	a0, 64(sp)

0000000080201a72 .LBB1_2:
80201a72: 97 35 00 00                  	auipc	a1, 3
80201a76: 93 85 e5 16                  	addi	a1, a1, 366
80201a7a: 08 08                        	addi	a0, sp, 16
80201a7c: 30 08                        	addi	a2, sp, 24
80201a7e: 97 10 00 00                  	auipc	ra, 1
80201a82: e7 80 20 2a                  	jalr	674(ra)
80201a86: 2a e4                        	sd	a0, 8(sp)
80201a88: 09 a0                        	j	2
80201a8a: 22 65                        	ld	a0, 8(sp)
80201a8c: a6 60                        	ld	ra, 72(sp)
80201a8e: 61 61                        	addi	sp, sp, 80
80201a90: 82 80                        	ret

0000000080201a92 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hb0074c77593ed2e5E:
80201a92: 79 71                        	addi	sp, sp, -48
80201a94: 06 f4                        	sd	ra, 40(sp)
80201a96: 2e 86                        	add	a2, zero, a1
80201a98: 2a ec                        	sd	a0, 24(sp)
80201a9a: 2e d2                        	sw	a1, 36(sp)
80201a9c: 08 61                        	ld	a0, 0(a0)
80201a9e: 32 e8                        	sd	a2, 16(sp)
80201aa0: 97 00 00 00                  	auipc	ra, 0
80201aa4: e7 80 00 f7                  	jalr	-144(ra)
80201aa8: 2a e4                        	sd	a0, 8(sp)
80201aaa: 09 a0                        	j	2
80201aac: 22 65                        	ld	a0, 8(sp)
80201aae: a2 70                        	ld	ra, 40(sp)
80201ab0: 45 61                        	addi	sp, sp, 48
80201ab2: 82 80                        	ret

0000000080201ab4 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h423475417b51e5d5E:
80201ab4: 5d 71                        	addi	sp, sp, -80
80201ab6: 86 e4                        	sd	ra, 72(sp)
80201ab8: aa e0                        	sd	a0, 64(sp)
80201aba: 08 61                        	ld	a0, 0(a0)
80201abc: 90 75                        	ld	a2, 40(a1)
80201abe: 32 fc                        	sd	a2, 56(sp)
80201ac0: 90 71                        	ld	a2, 32(a1)
80201ac2: 32 f8                        	sd	a2, 48(sp)
80201ac4: 90 6d                        	ld	a2, 24(a1)
80201ac6: 32 f4                        	sd	a2, 40(sp)
80201ac8: 90 69                        	ld	a2, 16(a1)
80201aca: 32 f0                        	sd	a2, 32(sp)
80201acc: 90 65                        	ld	a2, 8(a1)
80201ace: 32 ec                        	sd	a2, 24(sp)
80201ad0: 8c 61                        	ld	a1, 0(a1)
80201ad2: 2e e8                        	sd	a1, 16(sp)
80201ad4: 0c 08                        	addi	a1, sp, 16
80201ad6: 97 00 00 00                  	auipc	ra, 0
80201ada: e7 80 e0 f7                  	jalr	-130(ra)
80201ade: 2a e4                        	sd	a0, 8(sp)
80201ae0: 09 a0                        	j	2
80201ae2: 22 65                        	ld	a0, 8(sp)
80201ae4: a6 60                        	ld	ra, 72(sp)
80201ae6: 61 61                        	addi	sp, sp, 80
80201ae8: 82 80                        	ret

0000000080201aea _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb0266a3073c150ebE:
80201aea: 79 71                        	addi	sp, sp, -48
80201aec: 06 f4                        	sd	ra, 40(sp)
80201aee: 2a e8                        	sd	a0, 16(sp)
80201af0: 2e ec                        	sd	a1, 24(sp)
80201af2: 32 f0                        	sd	a2, 32(sp)
80201af4: 08 61                        	ld	a0, 0(a0)
80201af6: 97 f0 ff ff                  	auipc	ra, 1048575
80201afa: e7 80 20 1d                  	jalr	466(ra)
80201afe: 2a e4                        	sd	a0, 8(sp)
80201b00: 09 a0                        	j	2
80201b02: 22 65                        	ld	a0, 8(sp)
80201b04: a2 70                        	ld	ra, 40(sp)
80201b06: 45 61                        	addi	sp, sp, 48
80201b08: 82 80                        	ret

0000000080201b0a _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h451101c353a0a04bE:
80201b0a: 01 11                        	addi	sp, sp, -32
80201b0c: 06 ec                        	sd	ra, 24(sp)
80201b0e: 2a e4                        	sd	a0, 8(sp)
80201b10: 2e e8                        	sd	a1, 16(sp)
80201b12: 08 61                        	ld	a0, 0(a0)
80201b14: 97 00 00 00                  	auipc	ra, 0
80201b18: e7 80 a0 47                  	jalr	1146(ra)
80201b1c: 2a e0                        	sd	a0, 0(sp)
80201b1e: 09 a0                        	j	2
80201b20: 02 65                        	ld	a0, 0(sp)
80201b22: e2 60                        	ld	ra, 24(sp)
80201b24: 05 61                        	addi	sp, sp, 32
80201b26: 82 80                        	ret

0000000080201b28 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7a330d261ba090c5E:
80201b28: 01 11                        	addi	sp, sp, -32
80201b2a: 06 ec                        	sd	ra, 24(sp)
80201b2c: 2a e4                        	sd	a0, 8(sp)
80201b2e: 2e e8                        	sd	a1, 16(sp)
80201b30: 08 61                        	ld	a0, 0(a0)
80201b32: 97 00 00 00                  	auipc	ra, 0
80201b36: e7 80 e0 2d                  	jalr	734(ra)
80201b3a: 2a e0                        	sd	a0, 0(sp)
80201b3c: 09 a0                        	j	2
80201b3e: 02 65                        	ld	a0, 0(sp)
80201b40: e2 60                        	ld	ra, 24(sp)
80201b42: 05 61                        	addi	sp, sp, 32
80201b44: 82 80                        	ret

0000000080201b46 _ZN5riscv8register6scause9Interrupt4from17h47801fcd4ddb831bE:
;     pub fn from(nr: usize) -> Self {
80201b46: 01 11                        	addi	sp, sp, -32
80201b48: 2a ec                        	sd	a0, 24(sp)
80201b4a: 81 45                        	mv	a1, zero
;             0 => Interrupt::UserSoft,
80201b4c: 2a e4                        	sd	a0, 8(sp)
80201b4e: 63 00 b5 04                  	beq	a0, a1, 64
80201b52: 09 a0                        	j	2
80201b54: 05 45                        	addi	a0, zero, 1
80201b56: a2 65                        	ld	a1, 8(sp)
80201b58: 63 8f a5 02                  	beq	a1, a0, 62
80201b5c: 09 a0                        	j	2
80201b5e: 11 45                        	addi	a0, zero, 4
80201b60: a2 65                        	ld	a1, 8(sp)
80201b62: 63 8e a5 02                  	beq	a1, a0, 60
80201b66: 09 a0                        	j	2
80201b68: 15 45                        	addi	a0, zero, 5
80201b6a: a2 65                        	ld	a1, 8(sp)
80201b6c: 63 8d a5 02                  	beq	a1, a0, 58
80201b70: 09 a0                        	j	2
80201b72: 21 45                        	addi	a0, zero, 8
80201b74: a2 65                        	ld	a1, 8(sp)
80201b76: 63 8c a5 02                  	beq	a1, a0, 56
80201b7a: 09 a0                        	j	2
80201b7c: 25 45                        	addi	a0, zero, 9
80201b7e: a2 65                        	ld	a1, 8(sp)
80201b80: 63 8b a5 02                  	beq	a1, a0, 54
80201b84: 09 a0                        	j	2
80201b86: 19 45                        	addi	a0, zero, 6
;             _ => Interrupt::Unknown,
80201b88: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201b8c: 0d a8                        	j	50
80201b8e: 01 45                        	mv	a0, zero
;             0 => Interrupt::UserSoft,
80201b90: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201b94: 2d a0                        	j	42
80201b96: 05 45                        	addi	a0, zero, 1
;             1 => Interrupt::SupervisorSoft,
80201b98: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201b9c: 0d a0                        	j	34
80201b9e: 09 45                        	addi	a0, zero, 2
;             4 => Interrupt::UserTimer,
80201ba0: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201ba4: 29 a8                        	j	26
80201ba6: 0d 45                        	addi	a0, zero, 3
;             5 => Interrupt::SupervisorTimer,
80201ba8: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201bac: 09 a8                        	j	18
80201bae: 11 45                        	addi	a0, zero, 4
;             8 => Interrupt::UserExternal,
80201bb0: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201bb4: 29 a0                        	j	10
80201bb6: 15 45                        	addi	a0, zero, 5
;             9 => Interrupt::SupervisorExternal,
80201bb8: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201bbc: 09 a0                        	j	2
;     }
80201bbe: 03 05 71 01                  	lb	a0, 23(sp)
80201bc2: 05 61                        	addi	sp, sp, 32
80201bc4: 82 80                        	ret

0000000080201bc6 _ZN5riscv8register6scause9Exception4from17h0f83f98870774729E:
;     pub fn from(nr: usize) -> Self {
80201bc6: 01 11                        	addi	sp, sp, -32
80201bc8: 2a ec                        	sd	a0, 24(sp)
80201bca: 81 45                        	mv	a1, zero
;             0 => Exception::InstructionMisaligned,
80201bcc: 2a e4                        	sd	a0, 8(sp)
80201bce: 63 09 b5 06                  	beq	a0, a1, 114
80201bd2: 09 a0                        	j	2
80201bd4: 05 45                        	addi	a0, zero, 1
80201bd6: a2 65                        	ld	a1, 8(sp)
80201bd8: 63 88 a5 06                  	beq	a1, a0, 112
80201bdc: 09 a0                        	j	2
80201bde: 09 45                        	addi	a0, zero, 2
80201be0: a2 65                        	ld	a1, 8(sp)
80201be2: 63 87 a5 06                  	beq	a1, a0, 110
80201be6: 09 a0                        	j	2
80201be8: 0d 45                        	addi	a0, zero, 3
80201bea: a2 65                        	ld	a1, 8(sp)
80201bec: 63 86 a5 06                  	beq	a1, a0, 108
80201bf0: 09 a0                        	j	2
80201bf2: 15 45                        	addi	a0, zero, 5
80201bf4: a2 65                        	ld	a1, 8(sp)
80201bf6: 63 85 a5 06                  	beq	a1, a0, 106
80201bfa: 09 a0                        	j	2
80201bfc: 19 45                        	addi	a0, zero, 6
80201bfe: a2 65                        	ld	a1, 8(sp)
80201c00: 63 84 a5 06                  	beq	a1, a0, 104
80201c04: 09 a0                        	j	2
80201c06: 1d 45                        	addi	a0, zero, 7
80201c08: a2 65                        	ld	a1, 8(sp)
80201c0a: 63 83 a5 06                  	beq	a1, a0, 102
80201c0e: 09 a0                        	j	2
80201c10: 21 45                        	addi	a0, zero, 8
80201c12: a2 65                        	ld	a1, 8(sp)
80201c14: 63 82 a5 06                  	beq	a1, a0, 100
80201c18: 09 a0                        	j	2
80201c1a: 31 45                        	addi	a0, zero, 12
80201c1c: a2 65                        	ld	a1, 8(sp)
80201c1e: 63 81 a5 06                  	beq	a1, a0, 98
80201c22: 09 a0                        	j	2
80201c24: 35 45                        	addi	a0, zero, 13
80201c26: a2 65                        	ld	a1, 8(sp)
80201c28: 63 80 a5 06                  	beq	a1, a0, 96
80201c2c: 09 a0                        	j	2
80201c2e: 3d 45                        	addi	a0, zero, 15
80201c30: a2 65                        	ld	a1, 8(sp)
80201c32: 63 8f a5 04                  	beq	a1, a0, 94
80201c36: 09 a0                        	j	2
80201c38: 2d 45                        	addi	a0, zero, 11
;             _ => Exception::Unknown,
80201c3a: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c3e: a9 a8                        	j	90
80201c40: 01 45                        	mv	a0, zero
;             0 => Exception::InstructionMisaligned,
80201c42: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c46: 89 a8                        	j	82
80201c48: 05 45                        	addi	a0, zero, 1
;             1 => Exception::InstructionFault,
80201c4a: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c4e: a9 a0                        	j	74
80201c50: 09 45                        	addi	a0, zero, 2
;             2 => Exception::IllegalInstruction,
80201c52: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c56: 89 a0                        	j	66
80201c58: 0d 45                        	addi	a0, zero, 3
;             3 => Exception::Breakpoint,
80201c5a: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c5e: 2d a8                        	j	58
80201c60: 11 45                        	addi	a0, zero, 4
;             5 => Exception::LoadFault,
80201c62: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c66: 0d a8                        	j	50
80201c68: 15 45                        	addi	a0, zero, 5
;             6 => Exception::StoreMisaligned,
80201c6a: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c6e: 2d a0                        	j	42
80201c70: 19 45                        	addi	a0, zero, 6
;             7 => Exception::StoreFault,
80201c72: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c76: 0d a0                        	j	34
80201c78: 1d 45                        	addi	a0, zero, 7
;             8 => Exception::UserEnvCall,
80201c7a: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c7e: 29 a8                        	j	26
80201c80: 21 45                        	addi	a0, zero, 8
;             12 => Exception::InstructionPageFault,
80201c82: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c86: 09 a8                        	j	18
80201c88: 25 45                        	addi	a0, zero, 9
;             13 => Exception::LoadPageFault,
80201c8a: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c8e: 29 a0                        	j	10
80201c90: 29 45                        	addi	a0, zero, 10
;             15 => Exception::StorePageFault,
80201c92: a3 0b a1 00                  	sb	a0, 23(sp)
;         match nr {
80201c96: 09 a0                        	j	2
;     }
80201c98: 03 05 71 01                  	lb	a0, 23(sp)
80201c9c: 05 61                        	addi	sp, sp, 32
80201c9e: 82 80                        	ret

0000000080201ca0 _ZN5riscv8register6scause6Scause4code17hcc03f2347826a644E:
;     pub fn code(&self) -> usize {
80201ca0: 39 71                        	addi	sp, sp, -64
80201ca2: 2a f4                        	sd	a0, 40(sp)
80201ca4: a1 45                        	addi	a1, zero, 8
80201ca6: 2e fc                        	sd	a1, 56(sp)
;         let bit = 1 << (size_of::<usize>() * 8 - 1);
80201ca8: 2a f0                        	sd	a0, 32(sp)
80201caa: 2e ec                        	sd	a1, 24(sp)
80201cac: 09 a0                        	j	2
80201cae: 62 65                        	ld	a0, 24(sp)
80201cb0: 93 15 35 00                  	slli	a1, a0, 3
80201cb4: 01 46                        	mv	a2, zero
80201cb6: 2e e8                        	sd	a1, 16(sp)
80201cb8: 15 ee                        	bnez	a2, 60
80201cba: 09 a0                        	j	2
80201cbc: 42 65                        	ld	a0, 16(sp)
80201cbe: 93 05 f5 ff                  	addi	a1, a0, -1
80201cc2: 2e e4                        	sd	a1, 8(sp)
80201cc4: 63 67 b5 04                  	bltu	a0, a1, 78
80201cc8: 09 a0                        	j	2
80201cca: 22 65                        	ld	a0, 8(sp)
80201ccc: 93 75 05 fc                  	andi	a1, a0, -64
80201cd0: 05 46                        	addi	a2, zero, 1
80201cd2: 33 16 a6 00                  	sll	a2, a2, a0
80201cd6: 81 46                        	mv	a3, zero
80201cd8: 32 e0                        	sd	a2, 0(sp)
80201cda: 63 9b d5 04                  	bne	a1, a3, 86
80201cde: 09 a0                        	j	2
80201ce0: 02 65                        	ld	a0, 0(sp)
80201ce2: 2a f8                        	sd	a0, 48(sp)
;         self.bits & !bit
80201ce4: 82 75                        	ld	a1, 32(sp)
80201ce6: 90 61                        	ld	a2, 0(a1)
80201ce8: 93 46 f5 ff                  	not	a3, a0
80201cec: 33 75 d6 00                  	and	a0, a2, a3
;     }
80201cf0: 21 61                        	addi	sp, sp, 64
80201cf2: 82 80                        	ret

0000000080201cf4 .LBB4_8:
;         let bit = 1 << (size_of::<usize>() * 8 - 1);
80201cf4: 17 35 00 00                  	auipc	a0, 3
80201cf8: 13 05 c5 f9                  	addi	a0, a0, -100

0000000080201cfc .LBB4_9:
80201cfc: 17 36 00 00                  	auipc	a2, 3
80201d00: 13 06 46 f7                  	addi	a2, a2, -140
80201d04: 93 05 10 02                  	addi	a1, zero, 33
80201d08: 97 00 00 00                  	auipc	ra, 0
80201d0c: e7 80 00 72                  	jalr	1824(ra)
80201d10: 00 00                        	unimp	

0000000080201d12 .LBB4_10:
80201d12: 17 35 00 00                  	auipc	a0, 3
80201d16: 13 05 e5 fb                  	addi	a0, a0, -66

0000000080201d1a .LBB4_11:
80201d1a: 17 36 00 00                  	auipc	a2, 3
80201d1e: 13 06 e6 f9                  	addi	a2, a2, -98
80201d22: 93 05 10 02                  	addi	a1, zero, 33
80201d26: 97 00 00 00                  	auipc	ra, 0
80201d2a: e7 80 20 70                  	jalr	1794(ra)
80201d2e: 00 00                        	unimp	

0000000080201d30 .LBB4_12:
80201d30: 17 35 00 00                  	auipc	a0, 3
80201d34: 13 05 05 fe                  	addi	a0, a0, -32

0000000080201d38 .LBB4_13:
80201d38: 17 36 00 00                  	auipc	a2, 3
80201d3c: 13 06 06 fc                  	addi	a2, a2, -64
80201d40: 93 05 30 02                  	addi	a1, zero, 35
80201d44: 97 00 00 00                  	auipc	ra, 0
80201d48: e7 80 40 6e                  	jalr	1764(ra)
80201d4c: 00 00                        	unimp	

0000000080201d4e _ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b159f1c35dfe561E:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201d4e: 75 71                        	addi	sp, sp, -144
80201d50: 06 e5                        	sd	ra, 136(sp)
80201d52: aa f4                        	sd	a0, 104(sp)
80201d54: ae f8                        	sd	a1, 112(sp)
80201d56: 2a f0                        	sd	a0, 32(sp)
80201d58: 03 45 05 00                  	lbu	a0, 0(a0)
80201d5c: 05 89                        	andi	a0, a0, 1
80201d5e: 01 46                        	mv	a2, zero
80201d60: 2e e8                        	sd	a1, 16(sp)
80201d62: 63 05 c5 02                  	beq	a0, a2, 42
80201d66: 09 a0                        	j	2
;     Exception(Exception),
80201d68: 02 75                        	ld	a0, 32(sp)
80201d6a: 05 05                        	addi	a0, a0, 1
80201d6c: aa fc                        	sd	a0, 120(sp)

0000000080201d6e .LBB5_12:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201d6e: 17 36 00 00                  	auipc	a2, 3
80201d72: 13 06 56 fc                  	addi	a2, a2, -59
80201d76: ac 00                        	addi	a1, sp, 72
80201d78: a5 46                        	addi	a3, zero, 9
80201d7a: 2a e4                        	sd	a0, 8(sp)
80201d7c: 2e 85                        	add	a0, zero, a1
80201d7e: c2 65                        	ld	a1, 16(sp)
80201d80: 97 10 00 00                  	auipc	ra, 1
80201d84: e7 80 60 67                  	jalr	1654(ra)
80201d88: 89 a8                        	j	82
80201d8a: 00 00                        	unimp	
;     Interrupt(Interrupt),
80201d8c: 02 75                        	ld	a0, 32(sp)
80201d8e: 05 05                        	addi	a0, a0, 1
80201d90: 2a e1                        	sd	a0, 128(sp)

0000000080201d92 .LBB5_13:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201d92: 17 36 00 00                  	auipc	a2, 3
80201d96: 13 06 e6 fc                  	addi	a2, a2, -50
80201d9a: 2c 10                        	addi	a1, sp, 40
80201d9c: a5 46                        	addi	a3, zero, 9
80201d9e: 2a e0                        	sd	a0, 0(sp)
80201da0: 2e 85                        	add	a0, zero, a1
80201da2: c2 65                        	ld	a1, 16(sp)
80201da4: 97 10 00 00                  	auipc	ra, 1
80201da8: e7 80 20 65                  	jalr	1618(ra)
80201dac: 09 a0                        	j	2
;     Interrupt(Interrupt),
80201dae: 02 65                        	ld	a0, 0(sp)
80201db0: aa e0                        	sd	a0, 64(sp)

0000000080201db2 .LBB5_14:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201db2: 17 36 00 00                  	auipc	a2, 3
80201db6: 13 06 e6 fb                  	addi	a2, a2, -66
80201dba: 28 10                        	addi	a0, sp, 40
80201dbc: 8c 00                        	addi	a1, sp, 64
80201dbe: 97 10 00 00                  	auipc	ra, 1
80201dc2: e7 80 40 a6                  	jalr	-1436(ra)
80201dc6: 09 a0                        	j	2
80201dc8: 28 10                        	addi	a0, sp, 40
80201dca: 97 10 00 00                  	auipc	ra, 1
80201dce: e7 80 80 b4                  	jalr	-1208(ra)
80201dd2: a3 0f a1 00                  	sb	a0, 31(sp)
80201dd6: 09 a0                        	j	2
80201dd8: 3d a0                        	j	46
;     Exception(Exception),
80201dda: 22 65                        	ld	a0, 8(sp)
80201ddc: aa f0                        	sd	a0, 96(sp)

0000000080201dde .LBB5_15:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201dde: 17 36 00 00                  	auipc	a2, 3
80201de2: 13 06 26 f6                  	addi	a2, a2, -158
80201de6: a8 00                        	addi	a0, sp, 72
80201de8: 8c 10                        	addi	a1, sp, 96
80201dea: 97 10 00 00                  	auipc	ra, 1
80201dee: e7 80 80 a3                  	jalr	-1480(ra)
80201df2: 09 a0                        	j	2
80201df4: a8 00                        	addi	a0, sp, 72
80201df6: 97 10 00 00                  	auipc	ra, 1
80201dfa: e7 80 c0 b1                  	jalr	-1252(ra)
80201dfe: a3 0f a1 00                  	sb	a0, 31(sp)
80201e02: 09 a0                        	j	2
80201e04: 09 a0                        	j	2
80201e06: 03 45 f1 01                  	lbu	a0, 31(sp)
80201e0a: aa 60                        	ld	ra, 136(sp)
80201e0c: 49 61                        	addi	sp, sp, 144
80201e0e: 82 80                        	ret

0000000080201e10 _ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h7e293f3247245552E:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201e10: 15 71                        	addi	sp, sp, -224
80201e12: 86 ed                        	sd	ra, 216(sp)
80201e14: aa e5                        	sd	a0, 200(sp)
80201e16: ae e9                        	sd	a1, 208(sp)
80201e18: 2a ec                        	sd	a0, 24(sp)
80201e1a: 03 45 05 00                  	lbu	a0, 0(a0)
80201e1e: 01 46                        	mv	a2, zero
80201e20: 2e e4                        	sd	a1, 8(sp)
80201e22: 2a e0                        	sd	a0, 0(sp)
80201e24: 63 09 c5 04                  	beq	a0, a2, 82
80201e28: 09 a0                        	j	2
80201e2a: 05 45                        	addi	a0, zero, 1
80201e2c: 82 65                        	ld	a1, 0(sp)
80201e2e: 63 89 a5 06                  	beq	a1, a0, 114
80201e32: 09 a0                        	j	2
80201e34: 09 45                        	addi	a0, zero, 2
80201e36: 82 65                        	ld	a1, 0(sp)
80201e38: 63 89 a5 08                  	beq	a1, a0, 146
80201e3c: 09 a0                        	j	2
80201e3e: 0d 45                        	addi	a0, zero, 3
80201e40: 82 65                        	ld	a1, 0(sp)
80201e42: 63 89 a5 0a                  	beq	a1, a0, 178
80201e46: 09 a0                        	j	2
80201e48: 11 45                        	addi	a0, zero, 4
80201e4a: 82 65                        	ld	a1, 0(sp)
80201e4c: 63 89 a5 0c                  	beq	a1, a0, 210
80201e50: 09 a0                        	j	2
80201e52: 15 45                        	addi	a0, zero, 5
80201e54: 82 65                        	ld	a1, 0(sp)
80201e56: 63 89 a5 0e                  	beq	a1, a0, 242
80201e5a: 09 a0                        	j	2

0000000080201e5c .LBB6_30:
80201e5c: 17 36 00 00                  	auipc	a2, 3
80201e60: 13 06 46 f3                  	addi	a2, a2, -204
80201e64: 08 19                        	addi	a0, sp, 176
80201e66: 9d 46                        	addi	a3, zero, 7
80201e68: a2 65                        	ld	a1, 8(sp)
80201e6a: 97 10 00 00                  	auipc	ra, 1
80201e6e: e7 80 c0 58                  	jalr	1420(ra)
80201e72: 01 a2                        	j	256
80201e74: 00 00                        	unimp	

0000000080201e76 .LBB6_31:
80201e76: 17 26 00 00                  	auipc	a2, 2
80201e7a: 13 06 46 72                  	addi	a2, a2, 1828
80201e7e: 08 10                        	addi	a0, sp, 32
80201e80: a1 46                        	addi	a3, zero, 8
80201e82: a2 65                        	ld	a1, 8(sp)
80201e84: 97 10 00 00                  	auipc	ra, 1
80201e88: e7 80 20 57                  	jalr	1394(ra)
80201e8c: 09 a0                        	j	2
80201e8e: 08 10                        	addi	a0, sp, 32
80201e90: 97 10 00 00                  	auipc	ra, 1
80201e94: e7 80 20 a8                  	jalr	-1406(ra)
80201e98: a3 0b a1 00                  	sb	a0, 23(sp)
80201e9c: 09 a0                        	j	2
80201e9e: dd a0                        	j	230

0000000080201ea0 .LBB6_32:
80201ea0: 17 36 00 00                  	auipc	a2, 3
80201ea4: 13 06 d6 f2                  	addi	a2, a2, -211
80201ea8: 28 18                        	addi	a0, sp, 56
80201eaa: b9 46                        	addi	a3, zero, 14
80201eac: a2 65                        	ld	a1, 8(sp)
80201eae: 97 10 00 00                  	auipc	ra, 1
80201eb2: e7 80 80 54                  	jalr	1352(ra)
80201eb6: 09 a0                        	j	2
80201eb8: 28 18                        	addi	a0, sp, 56
80201eba: 97 10 00 00                  	auipc	ra, 1
80201ebe: e7 80 80 a5                  	jalr	-1448(ra)
80201ec2: a3 0b a1 00                  	sb	a0, 23(sp)
80201ec6: 09 a0                        	j	2
80201ec8: 75 a8                        	j	188

0000000080201eca .LBB6_33:
80201eca: 17 36 00 00                  	auipc	a2, 3
80201ece: 13 06 a6 ef                  	addi	a2, a2, -262
80201ed2: 88 08                        	addi	a0, sp, 80
80201ed4: a5 46                        	addi	a3, zero, 9
80201ed6: a2 65                        	ld	a1, 8(sp)
80201ed8: 97 10 00 00                  	auipc	ra, 1
80201edc: e7 80 e0 51                  	jalr	1310(ra)
80201ee0: 09 a0                        	j	2
80201ee2: 88 08                        	addi	a0, sp, 80
80201ee4: 97 10 00 00                  	auipc	ra, 1
80201ee8: e7 80 e0 a2                  	jalr	-1490(ra)
80201eec: a3 0b a1 00                  	sb	a0, 23(sp)
80201ef0: 09 a0                        	j	2
80201ef2: 49 a8                        	j	146

0000000080201ef4 .LBB6_34:
80201ef4: 17 36 00 00                  	auipc	a2, 3
80201ef8: 13 06 16 ec                  	addi	a2, a2, -319
80201efc: a8 10                        	addi	a0, sp, 104
80201efe: bd 46                        	addi	a3, zero, 15
80201f00: a2 65                        	ld	a1, 8(sp)
80201f02: 97 10 00 00                  	auipc	ra, 1
80201f06: e7 80 40 4f                  	jalr	1268(ra)
80201f0a: 09 a0                        	j	2
80201f0c: a8 10                        	addi	a0, sp, 104
80201f0e: 97 10 00 00                  	auipc	ra, 1
80201f12: e7 80 40 a0                  	jalr	-1532(ra)
80201f16: a3 0b a1 00                  	sb	a0, 23(sp)
80201f1a: 09 a0                        	j	2
80201f1c: a5 a0                        	j	104

0000000080201f1e .LBB6_35:
80201f1e: 17 36 00 00                  	auipc	a2, 3
80201f22: 13 06 b6 e8                  	addi	a2, a2, -373
80201f26: 08 01                        	addi	a0, sp, 128
80201f28: b1 46                        	addi	a3, zero, 12
80201f2a: a2 65                        	ld	a1, 8(sp)
80201f2c: 97 10 00 00                  	auipc	ra, 1
80201f30: e7 80 a0 4c                  	jalr	1226(ra)
80201f34: 09 a0                        	j	2
80201f36: 08 01                        	addi	a0, sp, 128
80201f38: 97 10 00 00                  	auipc	ra, 1
80201f3c: e7 80 a0 9d                  	jalr	-1574(ra)
80201f40: a3 0b a1 00                  	sb	a0, 23(sp)
80201f44: 09 a0                        	j	2
80201f46: 3d a8                        	j	62

0000000080201f48 .LBB6_36:
80201f48: 17 36 00 00                  	auipc	a2, 3
80201f4c: 13 06 f6 e4                  	addi	a2, a2, -433
80201f50: 28 09                        	addi	a0, sp, 152
80201f52: c9 46                        	addi	a3, zero, 18
80201f54: a2 65                        	ld	a1, 8(sp)
80201f56: 97 10 00 00                  	auipc	ra, 1
80201f5a: e7 80 00 4a                  	jalr	1184(ra)
80201f5e: 09 a0                        	j	2
80201f60: 28 09                        	addi	a0, sp, 152
80201f62: 97 10 00 00                  	auipc	ra, 1
80201f66: e7 80 00 9b                  	jalr	-1616(ra)
80201f6a: a3 0b a1 00                  	sb	a0, 23(sp)
80201f6e: 09 a0                        	j	2
80201f70: 11 a8                        	j	20
80201f72: 08 19                        	addi	a0, sp, 176
80201f74: 97 10 00 00                  	auipc	ra, 1
80201f78: e7 80 e0 99                  	jalr	-1634(ra)
80201f7c: a3 0b a1 00                  	sb	a0, 23(sp)
80201f80: 09 a0                        	j	2
80201f82: 09 a0                        	j	2
80201f84: 03 45 71 01                  	lbu	a0, 23(sp)
80201f88: ee 60                        	ld	ra, 216(sp)
80201f8a: 2d 61                        	addi	sp, sp, 224
80201f8c: 82 80                        	ret

0000000080201f8e _ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17hf815a85029f721b0E:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80201f8e: 0d 71                        	addi	sp, sp, -352
80201f90: 86 ee                        	sd	ra, 344(sp)
80201f92: aa e6                        	sd	a0, 328(sp)
80201f94: ae ea                        	sd	a1, 336(sp)
80201f96: 2a f0                        	sd	a0, 32(sp)
80201f98: 03 45 05 00                  	lbu	a0, 0(a0)
80201f9c: 01 46                        	mv	a2, zero
80201f9e: 2e e8                        	sd	a1, 16(sp)
80201fa0: 2a e4                        	sd	a0, 8(sp)
80201fa2: 63 02 c5 08                  	beq	a0, a2, 132
80201fa6: 09 a0                        	j	2
80201fa8: 05 45                        	addi	a0, zero, 1
80201faa: a2 65                        	ld	a1, 8(sp)
80201fac: 63 82 a5 0a                  	beq	a1, a0, 164
80201fb0: 09 a0                        	j	2
80201fb2: 09 45                        	addi	a0, zero, 2
80201fb4: a2 65                        	ld	a1, 8(sp)
80201fb6: 63 82 a5 0c                  	beq	a1, a0, 196
80201fba: 09 a0                        	j	2
80201fbc: 0d 45                        	addi	a0, zero, 3
80201fbe: a2 65                        	ld	a1, 8(sp)
80201fc0: 63 82 a5 0e                  	beq	a1, a0, 228
80201fc4: 09 a0                        	j	2
80201fc6: 11 45                        	addi	a0, zero, 4
80201fc8: a2 65                        	ld	a1, 8(sp)
80201fca: 63 82 a5 10                  	beq	a1, a0, 260
80201fce: 09 a0                        	j	2
80201fd0: 15 45                        	addi	a0, zero, 5
80201fd2: a2 65                        	ld	a1, 8(sp)
80201fd4: 63 82 a5 12                  	beq	a1, a0, 292
80201fd8: 09 a0                        	j	2
80201fda: 19 45                        	addi	a0, zero, 6
80201fdc: a2 65                        	ld	a1, 8(sp)
80201fde: 63 82 a5 14                  	beq	a1, a0, 324
80201fe2: 09 a0                        	j	2
80201fe4: 1d 45                        	addi	a0, zero, 7
80201fe6: a2 65                        	ld	a1, 8(sp)
80201fe8: 63 82 a5 16                  	beq	a1, a0, 356
80201fec: 09 a0                        	j	2
80201fee: 21 45                        	addi	a0, zero, 8
80201ff0: a2 65                        	ld	a1, 8(sp)
80201ff2: 63 82 a5 18                  	beq	a1, a0, 388
80201ff6: 09 a0                        	j	2
80201ff8: 25 45                        	addi	a0, zero, 9
80201ffa: a2 65                        	ld	a1, 8(sp)
80201ffc: 63 82 a5 1a                  	beq	a1, a0, 420
80202000: 09 a0                        	j	2
80202002: 29 45                        	addi	a0, zero, 10
80202004: a2 65                        	ld	a1, 8(sp)
80202006: 63 82 a5 1c                  	beq	a1, a0, 452
8020200a: 09 a0                        	j	2

000000008020200c .LBB7_50:
8020200c: 17 36 00 00                  	auipc	a2, 3
80202010: 13 06 46 d8                  	addi	a2, a2, -636
80202014: 08 1a                        	addi	a0, sp, 304
80202016: 9d 46                        	addi	a3, zero, 7
80202018: c2 65                        	ld	a1, 16(sp)
8020201a: 97 10 00 00                  	auipc	ra, 1
8020201e: e7 80 c0 3d                  	jalr	988(ra)
80202022: c9 aa                        	j	466
80202024: 00 00                        	unimp	

0000000080202026 .LBB7_51:
80202026: 17 36 00 00                  	auipc	a2, 3
8020202a: 13 06 d6 e2                  	addi	a2, a2, -467
8020202e: 28 10                        	addi	a0, sp, 40
80202030: d5 46                        	addi	a3, zero, 21
80202032: c2 65                        	ld	a1, 16(sp)
80202034: 97 10 00 00                  	auipc	ra, 1
80202038: e7 80 20 3c                  	jalr	962(ra)
8020203c: 09 a0                        	j	2
8020203e: 28 10                        	addi	a0, sp, 40
80202040: 97 10 00 00                  	auipc	ra, 1
80202044: e7 80 20 8d                  	jalr	-1838(ra)
80202048: a3 0f a1 00                  	sb	a0, 31(sp)
8020204c: 09 a0                        	j	2
8020204e: 65 aa                        	j	440

0000000080202050 .LBB7_52:
80202050: 17 26 00 00                  	auipc	a2, 2
80202054: 13 06 06 4a                  	addi	a2, a2, 1184
80202058: 88 00                        	addi	a0, sp, 64
8020205a: c1 46                        	addi	a3, zero, 16
8020205c: c2 65                        	ld	a1, 16(sp)
8020205e: 97 10 00 00                  	auipc	ra, 1
80202062: e7 80 80 39                  	jalr	920(ra)
80202066: 09 a0                        	j	2
80202068: 88 00                        	addi	a0, sp, 64
8020206a: 97 10 00 00                  	auipc	ra, 1
8020206e: e7 80 80 8a                  	jalr	-1880(ra)
80202072: a3 0f a1 00                  	sb	a0, 31(sp)
80202076: 09 a0                        	j	2
80202078: 79 a2                        	j	398

000000008020207a .LBB7_53:
8020207a: 17 36 00 00                  	auipc	a2, 3
8020207e: 13 06 76 dc                  	addi	a2, a2, -569
80202082: a8 08                        	addi	a0, sp, 88
80202084: c9 46                        	addi	a3, zero, 18
80202086: c2 65                        	ld	a1, 16(sp)
80202088: 97 10 00 00                  	auipc	ra, 1
8020208c: e7 80 e0 36                  	jalr	878(ra)
80202090: 09 a0                        	j	2
80202092: a8 08                        	addi	a0, sp, 88
80202094: 97 10 00 00                  	auipc	ra, 1
80202098: e7 80 e0 87                  	jalr	-1922(ra)
8020209c: a3 0f a1 00                  	sb	a0, 31(sp)
802020a0: 09 a0                        	j	2
802020a2: 95 a2                        	j	356

00000000802020a4 .LBB7_54:
802020a4: 17 36 00 00                  	auipc	a2, 3
802020a8: 13 06 36 d9                  	addi	a2, a2, -621
802020ac: 88 18                        	addi	a0, sp, 112
802020ae: a9 46                        	addi	a3, zero, 10
802020b0: c2 65                        	ld	a1, 16(sp)
802020b2: 97 10 00 00                  	auipc	ra, 1
802020b6: e7 80 40 34                  	jalr	836(ra)
802020ba: 09 a0                        	j	2
802020bc: 88 18                        	addi	a0, sp, 112
802020be: 97 10 00 00                  	auipc	ra, 1
802020c2: e7 80 40 85                  	jalr	-1964(ra)
802020c6: a3 0f a1 00                  	sb	a0, 31(sp)
802020ca: 09 a0                        	j	2
802020cc: 2d aa                        	j	314

00000000802020ce .LBB7_55:
802020ce: 17 36 00 00                  	auipc	a2, 3
802020d2: 13 06 06 d6                  	addi	a2, a2, -672
802020d6: 28 01                        	addi	a0, sp, 136
802020d8: a5 46                        	addi	a3, zero, 9
802020da: c2 65                        	ld	a1, 16(sp)
802020dc: 97 10 00 00                  	auipc	ra, 1
802020e0: e7 80 a0 31                  	jalr	794(ra)
802020e4: 09 a0                        	j	2
802020e6: 28 01                        	addi	a0, sp, 136
802020e8: 97 10 00 00                  	auipc	ra, 1
802020ec: e7 80 a0 82                  	jalr	-2006(ra)
802020f0: a3 0f a1 00                  	sb	a0, 31(sp)
802020f4: 09 a0                        	j	2
802020f6: 01 aa                        	j	272

00000000802020f8 .LBB7_56:
802020f8: 17 36 00 00                  	auipc	a2, 3
802020fc: 13 06 76 d2                  	addi	a2, a2, -729
80202100: 08 11                        	addi	a0, sp, 160
80202102: bd 46                        	addi	a3, zero, 15
80202104: c2 65                        	ld	a1, 16(sp)
80202106: 97 10 00 00                  	auipc	ra, 1
8020210a: e7 80 00 2f                  	jalr	752(ra)
8020210e: 09 a0                        	j	2
80202110: 08 11                        	addi	a0, sp, 160
80202112: 97 10 00 00                  	auipc	ra, 1
80202116: e7 80 00 80                  	jalr	-2048(ra)
8020211a: a3 0f a1 00                  	sb	a0, 31(sp)
8020211e: 09 a0                        	j	2
80202120: dd a0                        	j	230

0000000080202122 .LBB7_57:
80202122: 17 36 00 00                  	auipc	a2, 3
80202126: 13 06 36 cf                  	addi	a2, a2, -781
8020212a: 28 19                        	addi	a0, sp, 184
8020212c: a9 46                        	addi	a3, zero, 10
8020212e: c2 65                        	ld	a1, 16(sp)
80202130: 97 10 00 00                  	auipc	ra, 1
80202134: e7 80 60 2c                  	jalr	710(ra)
80202138: 09 a0                        	j	2
8020213a: 28 19                        	addi	a0, sp, 184
8020213c: 97 00 00 00                  	auipc	ra, 0
80202140: e7 80 60 7d                  	jalr	2006(ra)
80202144: a3 0f a1 00                  	sb	a0, 31(sp)
80202148: 09 a0                        	j	2
8020214a: 75 a8                        	j	188

000000008020214c .LBB7_58:
8020214c: 17 36 00 00                  	auipc	a2, 3
80202150: 13 06 e6 cb                  	addi	a2, a2, -834
80202154: 88 09                        	addi	a0, sp, 208
80202156: ad 46                        	addi	a3, zero, 11
80202158: c2 65                        	ld	a1, 16(sp)
8020215a: 97 10 00 00                  	auipc	ra, 1
8020215e: e7 80 c0 29                  	jalr	668(ra)
80202162: 09 a0                        	j	2
80202164: 88 09                        	addi	a0, sp, 208
80202166: 97 00 00 00                  	auipc	ra, 0
8020216a: e7 80 c0 7a                  	jalr	1964(ra)
8020216e: a3 0f a1 00                  	sb	a0, 31(sp)
80202172: 09 a0                        	j	2
80202174: 49 a8                        	j	146

0000000080202176 .LBB7_59:
80202176: 17 36 00 00                  	auipc	a2, 3
8020217a: 13 06 06 c8                  	addi	a2, a2, -896
8020217e: a8 11                        	addi	a0, sp, 232
80202180: d1 46                        	addi	a3, zero, 20
80202182: c2 65                        	ld	a1, 16(sp)
80202184: 97 10 00 00                  	auipc	ra, 1
80202188: e7 80 20 27                  	jalr	626(ra)
8020218c: 09 a0                        	j	2
8020218e: a8 11                        	addi	a0, sp, 232
80202190: 97 00 00 00                  	auipc	ra, 0
80202194: e7 80 20 78                  	jalr	1922(ra)
80202198: a3 0f a1 00                  	sb	a0, 31(sp)
8020219c: 09 a0                        	j	2
8020219e: a5 a0                        	j	104

00000000802021a0 .LBB7_60:
802021a0: 17 36 00 00                  	auipc	a2, 3
802021a4: 13 06 96 c4                  	addi	a2, a2, -951
802021a8: 08 02                        	addi	a0, sp, 256
802021aa: b5 46                        	addi	a3, zero, 13
802021ac: c2 65                        	ld	a1, 16(sp)
802021ae: 97 10 00 00                  	auipc	ra, 1
802021b2: e7 80 80 24                  	jalr	584(ra)
802021b6: 09 a0                        	j	2
802021b8: 08 02                        	addi	a0, sp, 256
802021ba: 97 00 00 00                  	auipc	ra, 0
802021be: e7 80 80 75                  	jalr	1880(ra)
802021c2: a3 0f a1 00                  	sb	a0, 31(sp)
802021c6: 09 a0                        	j	2
802021c8: 3d a8                        	j	62

00000000802021ca .LBB7_61:
802021ca: 17 36 00 00                  	auipc	a2, 3
802021ce: 13 06 16 c1                  	addi	a2, a2, -1007
802021d2: 28 0a                        	addi	a0, sp, 280
802021d4: b9 46                        	addi	a3, zero, 14
802021d6: c2 65                        	ld	a1, 16(sp)
802021d8: 97 10 00 00                  	auipc	ra, 1
802021dc: e7 80 e0 21                  	jalr	542(ra)
802021e0: 09 a0                        	j	2
802021e2: 28 0a                        	addi	a0, sp, 280
802021e4: 97 00 00 00                  	auipc	ra, 0
802021e8: e7 80 e0 72                  	jalr	1838(ra)
802021ec: a3 0f a1 00                  	sb	a0, 31(sp)
802021f0: 09 a0                        	j	2
802021f2: 11 a8                        	j	20
802021f4: 08 1a                        	addi	a0, sp, 304
802021f6: 97 00 00 00                  	auipc	ra, 0
802021fa: e7 80 c0 71                  	jalr	1820(ra)
802021fe: a3 0f a1 00                  	sb	a0, 31(sp)
80202202: 09 a0                        	j	2
80202204: 09 a0                        	j	2
80202206: 03 45 f1 01                  	lbu	a0, 31(sp)
8020220a: f6 60                        	ld	ra, 344(sp)
8020220c: 35 61                        	addi	sp, sp, 352
8020220e: 82 80                        	ret

0000000080202210 _ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h9c1a5601c35e29a9E:
80202210: 39 71                        	addi	sp, sp, -64
80202212: 06 fc                        	sd	ra, 56(sp)
80202214: 2a f4                        	sd	a0, 40(sp)
80202216: 2e f8                        	sd	a1, 48(sp)
80202218: 2a ec                        	sd	a0, 24(sp)
8020221a: 2e 85                        	add	a0, zero, a1
8020221c: 2e e8                        	sd	a1, 16(sp)
8020221e: 97 10 00 00                  	auipc	ra, 1
80202222: e7 80 40 19                  	jalr	404(ra)
80202226: 2a e4                        	sd	a0, 8(sp)
80202228: 09 a0                        	j	2
8020222a: 22 65                        	ld	a0, 8(sp)
8020222c: 09 e9                        	bnez	a0, 18
8020222e: 09 a0                        	j	2
80202230: 42 65                        	ld	a0, 16(sp)
80202232: 97 10 00 00                  	auipc	ra, 1
80202236: e7 80 a0 18                  	jalr	394(ra)
8020223a: 2a e0                        	sd	a0, 0(sp)
8020223c: 19 a8                        	j	22
8020223e: 62 65                        	ld	a0, 24(sp)
80202240: c2 65                        	ld	a1, 16(sp)
80202242: 97 20 00 00                  	auipc	ra, 2
80202246: e7 80 00 bf                  	jalr	-1040(ra)
8020224a: a3 03 a1 02                  	sb	a0, 39(sp)
8020224e: 09 a0                        	j	2
80202250: 0d a8                        	j	50
80202252: 02 65                        	ld	a0, 0(sp)
80202254: 19 e9                        	bnez	a0, 22
80202256: 09 a0                        	j	2
80202258: 62 65                        	ld	a0, 24(sp)
8020225a: c2 65                        	ld	a1, 16(sp)
8020225c: 97 20 00 00                  	auipc	ra, 2
80202260: e7 80 80 e8                  	jalr	-376(ra)
80202264: a3 03 a1 02                  	sb	a0, 39(sp)
80202268: 19 a8                        	j	22
8020226a: 62 65                        	ld	a0, 24(sp)
8020226c: c2 65                        	ld	a1, 16(sp)
8020226e: 97 20 00 00                  	auipc	ra, 2
80202272: e7 80 40 c4                  	jalr	-956(ra)
80202276: a3 03 a1 02                  	sb	a0, 39(sp)
8020227a: 09 a0                        	j	2
8020227c: 11 a0                        	j	4
8020227e: 09 a0                        	j	2
80202280: 09 a0                        	j	2
80202282: 03 45 71 02                  	lbu	a0, 39(sp)
80202286: e2 70                        	ld	ra, 56(sp)
80202288: 21 61                        	addi	sp, sp, 64
8020228a: 82 80                        	ret

000000008020228c _ZN4core3ptr13drop_in_place17h4b1a83ffdb1c3d84E:
8020228c: 41 11                        	addi	sp, sp, -16
8020228e: 2a e4                        	sd	a0, 8(sp)
80202290: 41 01                        	addi	sp, sp, 16
80202292: 82 80                        	ret

0000000080202294 _ZN4core3ptr13drop_in_place17h8246c6975c77f679E:
80202294: 41 11                        	addi	sp, sp, -16
80202296: 2a e4                        	sd	a0, 8(sp)
80202298: 41 01                        	addi	sp, sp, 16
8020229a: 82 80                        	ret

000000008020229c _ZN4core3ptr13drop_in_place17hdbdac76c26243458E:
8020229c: 41 11                        	addi	sp, sp, -16
8020229e: 2a e4                        	sd	a0, 8(sp)
802022a0: 41 01                        	addi	sp, sp, 16
802022a2: 82 80                        	ret

00000000802022a4 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h68a6ef620d33786fE:
802022a4: 01 11                        	addi	sp, sp, -32
802022a6: 06 ec                        	sd	ra, 24(sp)
802022a8: 2a e4                        	sd	a0, 8(sp)
802022aa: 2e e8                        	sd	a1, 16(sp)
802022ac: 08 61                        	ld	a0, 0(a0)
802022ae: 97 00 00 00                  	auipc	ra, 0
802022b2: e7 80 20 f6                  	jalr	-158(ra)
802022b6: 2a e0                        	sd	a0, 0(sp)
802022b8: 09 a0                        	j	2
802022ba: 02 65                        	ld	a0, 0(sp)
802022bc: e2 60                        	ld	ra, 24(sp)
802022be: 05 61                        	addi	sp, sp, 32
802022c0: 82 80                        	ret

00000000802022c2 _ZN70_$LT$riscv..register..sstatus..Sstatus$u20$as$u20$core..fmt..Debug$GT$3fmt17ha6cb3e06929b0021E:
; #[derive(Clone, Copy, Debug)]
802022c2: 5d 71                        	addi	sp, sp, -80
802022c4: 86 e4                        	sd	ra, 72(sp)
802022c6: 2a f8                        	sd	a0, 48(sp)
802022c8: 2e fc                        	sd	a1, 56(sp)
;     bits: usize,
802022ca: aa e0                        	sd	a0, 64(sp)

00000000802022cc .LBB15_4:
; #[derive(Clone, Copy, Debug)]
802022cc: 17 36 00 00                  	auipc	a2, 3
802022d0: 13 06 c6 b9                  	addi	a2, a2, -1124
802022d4: 34 08                        	addi	a3, sp, 24
802022d6: 1d 47                        	addi	a4, zero, 7
802022d8: 2a e8                        	sd	a0, 16(sp)
802022da: 36 85                        	add	a0, zero, a3
802022dc: ba 86                        	add	a3, zero, a4
802022de: 97 10 00 00                  	auipc	ra, 1
802022e2: e7 80 a0 0e                  	jalr	234(ra)
802022e6: 09 a0                        	j	2
;     bits: usize,
802022e8: 42 65                        	ld	a0, 16(sp)
802022ea: 2a f4                        	sd	a0, 40(sp)

00000000802022ec .LBB15_5:
; #[derive(Clone, Copy, Debug)]
802022ec: 97 25 00 00                  	auipc	a1, 2
802022f0: 93 85 85 52                  	addi	a1, a1, 1320

00000000802022f4 .LBB15_6:
802022f4: 17 37 00 00                  	auipc	a4, 3
802022f8: 13 07 c7 b7                  	addi	a4, a4, -1156
802022fc: 28 08                        	addi	a0, sp, 24
802022fe: 11 46                        	addi	a2, zero, 4
80202300: 34 10                        	addi	a3, sp, 40
80202302: 97 00 00 00                  	auipc	ra, 0
80202306: e7 80 60 37                  	jalr	886(ra)
8020230a: 09 a0                        	j	2
8020230c: 28 08                        	addi	a0, sp, 24
8020230e: 97 00 00 00                  	auipc	ra, 0
80202312: e7 80 20 4c                  	jalr	1218(ra)
80202316: 2a e4                        	sd	a0, 8(sp)
80202318: 09 a0                        	j	2
8020231a: 22 65                        	ld	a0, 8(sp)
8020231c: a6 60                        	ld	ra, 72(sp)
8020231e: 61 61                        	addi	sp, sp, 80
80202320: 82 80                        	ret

0000000080202322 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$12wrapping_add17h97c7506834f2b7f7E:
80202322: 01 11                        	addi	sp, sp, -32
80202324: 06 ec                        	sd	ra, 24(sp)
80202326: 2a e4                        	sd	a0, 8(sp)
80202328: 2e e8                        	sd	a1, 16(sp)
8020232a: 97 00 00 00                  	auipc	ra, 0
8020232e: e7 80 40 01                  	jalr	20(ra)
80202332: 2a e0                        	sd	a0, 0(sp)
80202334: 09 a0                        	j	2
80202336: 02 65                        	ld	a0, 0(sp)
80202338: e2 60                        	ld	ra, 24(sp)
8020233a: 05 61                        	addi	sp, sp, 32
8020233c: 82 80                        	ret

000000008020233e _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17hee68c8750f4bd168E:
8020233e: 01 11                        	addi	sp, sp, -32
80202340: 2a e4                        	sd	a0, 8(sp)
80202342: 2e e8                        	sd	a1, 16(sp)
80202344: 2e 95                        	add	a0, a0, a1
80202346: 2a ec                        	sd	a0, 24(sp)
80202348: 2a e0                        	sd	a0, 0(sp)
8020234a: 09 a0                        	j	2
8020234c: 02 65                        	ld	a0, 0(sp)
8020234e: 05 61                        	addi	sp, sp, 32
80202350: 82 80                        	ret

0000000080202352 _ZN4core3ops8function6FnOnce9call_once17h18f451d4e9740791E:
80202352: 08 61                        	ld	a0, 0(a0)
80202354: 01 a0                        	j	0

0000000080202356 _ZN4core3ptr13drop_in_place17h00027e84e2978af7E:
80202356: 82 80                        	ret

0000000080202358 _ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b56fd9706c86594E:
80202358: 5d 71                        	addi	sp, sp, -80
8020235a: 86 e4                        	sd	ra, 72(sp)
8020235c: a2 e0                        	sd	s0, 64(sp)
8020235e: 26 fc                        	sd	s1, 56(sp)
80202360: 2e 84                        	add	s0, zero, a1
80202362: aa 84                        	add	s1, zero, a0
80202364: 97 20 00 00                  	auipc	ra, 2
80202368: e7 80 a0 96                  	jalr	-1686(ra)
8020236c: 1d e5                        	bnez	a0, 46
8020236e: 08 70                        	ld	a0, 32(s0)
80202370: 0c 74                        	ld	a1, 40(s0)

0000000080202372 .LBB76_4:
80202372: 17 36 00 00                  	auipc	a2, 3
80202376: 13 06 66 b6                  	addi	a2, a2, -1178
8020237a: 32 e4                        	sd	a2, 8(sp)
8020237c: 05 46                        	addi	a2, zero, 1
8020237e: 32 e8                        	sd	a2, 16(sp)
80202380: 02 ec                        	sd	zero, 24(sp)

0000000080202382 .LBB76_5:
80202382: 17 36 00 00                  	auipc	a2, 3
80202386: 13 06 e6 b4                  	addi	a2, a2, -1202
8020238a: 32 f4                        	sd	a2, 40(sp)
8020238c: 02 f8                        	sd	zero, 48(sp)
8020238e: 30 00                        	addi	a2, sp, 8
80202390: 97 10 00 00                  	auipc	ra, 1
80202394: e7 80 00 99                  	jalr	-1648(ra)
80202398: 19 c5                        	beqz	a0, 14
8020239a: 05 45                        	addi	a0, zero, 1
8020239c: e2 74                        	ld	s1, 56(sp)
8020239e: 06 64                        	ld	s0, 64(sp)
802023a0: a6 60                        	ld	ra, 72(sp)
802023a2: 61 61                        	addi	sp, sp, 80
802023a4: 82 80                        	ret
802023a6: 13 85 84 00                  	addi	a0, s1, 8
802023aa: a2 85                        	add	a1, zero, s0
802023ac: e2 74                        	ld	s1, 56(sp)
802023ae: 06 64                        	ld	s0, 64(sp)
802023b0: a6 60                        	ld	ra, 72(sp)
802023b2: 61 61                        	addi	sp, sp, 80
802023b4: 17 23 00 00                  	auipc	t1, 2
802023b8: 67 00 a3 91                  	jr	-1766(t1)

00000000802023bc _ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc8534dacc0949383E:
802023bc: 37 85 a7 fa                  	lui	a0, 1026680
802023c0: 1b 05 d5 32                  	addiw	a0, a0, 813
802023c4: 32 05                        	slli	a0, a0, 12
802023c6: 13 05 d5 5b                  	addi	a0, a0, 1469
802023ca: 32 05                        	slli	a0, a0, 12
802023cc: 13 05 b5 58                  	addi	a0, a0, 1419
802023d0: 32 05                        	slli	a0, a0, 12
802023d2: 13 05 b5 48                  	addi	a0, a0, 1163
802023d6: 82 80                        	ret

00000000802023d8 _ZN4core6result13unwrap_failed17hfee963a945caf0a4E:
802023d8: 19 71                        	addi	sp, sp, -128
802023da: 86 fc                        	sd	ra, 120(sp)
802023dc: 2a e4                        	sd	a0, 8(sp)
802023de: 2e e8                        	sd	a1, 16(sp)
802023e0: 32 ec                        	sd	a2, 24(sp)
802023e2: 36 f0                        	sd	a3, 32(sp)
802023e4: 28 00                        	addi	a0, sp, 8
802023e6: aa ec                        	sd	a0, 88(sp)

00000000802023e8 .LBB117_1:
802023e8: 17 25 00 00                  	auipc	a0, 2
802023ec: 13 05 45 d2                  	addi	a0, a0, -732
802023f0: aa f0                        	sd	a0, 96(sp)
802023f2: 28 08                        	addi	a0, sp, 24
802023f4: aa f4                        	sd	a0, 104(sp)

00000000802023f6 .LBB117_2:
802023f6: 17 25 00 00                  	auipc	a0, 2
802023fa: 13 05 e5 d0                  	addi	a0, a0, -754
802023fe: aa f8                        	sd	a0, 112(sp)

0000000080202400 .LBB117_3:
80202400: 17 35 00 00                  	auipc	a0, 3
80202404: 13 05 85 b1                  	addi	a0, a0, -1256
80202408: 2a f4                        	sd	a0, 40(sp)
8020240a: 09 45                        	addi	a0, zero, 2
8020240c: 2a f8                        	sd	a0, 48(sp)
8020240e: 02 fc                        	sd	zero, 56(sp)
80202410: ac 08                        	addi	a1, sp, 88
80202412: ae e4                        	sd	a1, 72(sp)
80202414: aa e8                        	sd	a0, 80(sp)
80202416: 28 10                        	addi	a0, sp, 40
80202418: ba 85                        	add	a1, zero, a4
8020241a: 97 00 00 00                  	auipc	ra, 0
8020241e: e7 80 a0 07                  	jalr	122(ra)
80202422: 00 00                        	unimp	

0000000080202424 _ZN4core5panic9PanicInfo7message17h784f4369f0e35bc0E:
80202424: 08 69                        	ld	a0, 16(a0)
80202426: 82 80                        	ret

0000000080202428 _ZN4core9panicking5panic17hada9984cc1d6f2faE:
80202428: 5d 71                        	addi	sp, sp, -80
8020242a: 86 e4                        	sd	ra, 72(sp)
8020242c: 2a fc                        	sd	a0, 56(sp)
8020242e: ae e0                        	sd	a1, 64(sp)
80202430: 28 18                        	addi	a0, sp, 56
80202432: 2a e4                        	sd	a0, 8(sp)
80202434: 05 45                        	addi	a0, zero, 1
80202436: 2a e8                        	sd	a0, 16(sp)
80202438: 02 ec                        	sd	zero, 24(sp)

000000008020243a .LBB128_1:
8020243a: 17 35 00 00                  	auipc	a0, 3
8020243e: 13 05 65 a9                  	addi	a0, a0, -1386
80202442: 2a f4                        	sd	a0, 40(sp)
80202444: 02 f8                        	sd	zero, 48(sp)
80202446: 28 00                        	addi	a0, sp, 8
80202448: b2 85                        	add	a1, zero, a2
8020244a: 97 00 00 00                  	auipc	ra, 0
8020244e: e7 80 a0 04                  	jalr	74(ra)
80202452: 00 00                        	unimp	

0000000080202454 _ZN4core9panicking18panic_bounds_check17hb127dc4cc37fde7aE:
80202454: 59 71                        	addi	sp, sp, -112
80202456: 86 f4                        	sd	ra, 104(sp)
80202458: 2a e4                        	sd	a0, 8(sp)
8020245a: 2e e8                        	sd	a1, 16(sp)
8020245c: 08 08                        	addi	a0, sp, 16
8020245e: aa e4                        	sd	a0, 72(sp)

0000000080202460 .LBB129_1:
80202460: 17 25 00 00                  	auipc	a0, 2
80202464: 13 05 45 c8                  	addi	a0, a0, -892
80202468: aa e8                        	sd	a0, 80(sp)
8020246a: 2c 00                        	addi	a1, sp, 8
8020246c: ae ec                        	sd	a1, 88(sp)
8020246e: aa f0                        	sd	a0, 96(sp)

0000000080202470 .LBB129_2:
80202470: 17 35 00 00                  	auipc	a0, 3
80202474: 13 05 05 b0                  	addi	a0, a0, -1280
80202478: 2a ec                        	sd	a0, 24(sp)
8020247a: 09 45                        	addi	a0, zero, 2
8020247c: 2a f0                        	sd	a0, 32(sp)
8020247e: 02 f4                        	sd	zero, 40(sp)
80202480: ac 00                        	addi	a1, sp, 72
80202482: 2e fc                        	sd	a1, 56(sp)
80202484: aa e0                        	sd	a0, 64(sp)
80202486: 28 08                        	addi	a0, sp, 24
80202488: b2 85                        	add	a1, zero, a2
8020248a: 97 00 00 00                  	auipc	ra, 0
8020248e: e7 80 a0 00                  	jalr	10(ra)
80202492: 00 00                        	unimp	

0000000080202494 _ZN4core9panicking9panic_fmt17h2f823c72a23f8e31E:
80202494: 79 71                        	addi	sp, sp, -48
80202496: 06 f4                        	sd	ra, 40(sp)

0000000080202498 .LBB130_1:
80202498: 17 36 00 00                  	auipc	a2, 3
8020249c: 13 06 86 a3                  	addi	a2, a2, -1480
802024a0: 32 e4                        	sd	a2, 8(sp)

00000000802024a2 .LBB130_2:
802024a2: 17 36 00 00                  	auipc	a2, 3
802024a6: 13 06 66 a9                  	addi	a2, a2, -1386
802024aa: 32 e8                        	sd	a2, 16(sp)
802024ac: 2a ec                        	sd	a0, 24(sp)
802024ae: 2e f0                        	sd	a1, 32(sp)
802024b0: 28 00                        	addi	a0, sp, 8
802024b2: 97 f0 ff ff                  	auipc	ra, 1048575
802024b6: e7 80 40 af                  	jalr	-1292(ra)
802024ba: 00 00                        	unimp	

00000000802024bc _ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he3aedd4f3d080c40E:
802024bc: 35 71                        	addi	sp, sp, -160
802024be: 06 ed                        	sd	ra, 152(sp)
802024c0: 22 e9                        	sd	s0, 144(sp)
802024c2: 26 e5                        	sd	s1, 136(sp)
802024c4: 4a e1                        	sd	s2, 128(sp)
802024c6: ce fc                        	sd	s3, 120(sp)
802024c8: d2 f8                        	sd	s4, 112(sp)
802024ca: d6 f4                        	sd	s5, 104(sp)
802024cc: da f0                        	sd	s6, 96(sp)
802024ce: de ec                        	sd	s7, 88(sp)
802024d0: e2 e8                        	sd	s8, 80(sp)
802024d2: e6 e4                        	sd	s9, 72(sp)
802024d4: ea e0                        	sd	s10, 64(sp)
802024d6: 6e fc                        	sd	s11, 56(sp)
802024d8: 63 09 06 12                  	beqz	a2, 306
802024dc: b2 8d                        	add	s11, zero, a2
802024de: ae 8a                        	add	s5, zero, a1
802024e0: 2a 89                        	add	s2, zero, a0
802024e2: 13 0b 81 00                  	addi	s6, sp, 8
802024e6: 93 09 cb 02                  	addi	s3, s6, 44
802024ea: 95 4b                        	addi	s7, zero, 5
802024ec: 13 95 1b 02                  	slli	a0, s7, 33
802024f0: 13 0c a5 00                  	addi	s8, a0, 10
802024f4: 85 4c                        	addi	s9, zero, 1

00000000802024f6 .LBB132_31:
802024f6: 17 25 00 00                  	auipc	a0, 2
802024fa: 13 05 25 31                  	addi	a0, a0, 786
802024fe: 2a e0                        	sd	a0, 0(sp)
80202500: 31 a0                        	j	12
80202502: b3 8d 8d 40                  	sub	s11, s11, s0
80202506: ea 8a                        	add	s5, zero, s10
80202508: 63 81 0d 10                  	beqz	s11, 258
8020250c: 03 35 09 01                  	ld	a0, 16(s2)
80202510: 03 45 05 00                  	lbu	a0, 0(a0)
80202514: 11 c9                        	beqz	a0, 20
80202516: 83 35 89 00                  	ld	a1, 8(s2)
8020251a: 03 35 09 00                  	ld	a0, 0(s2)
8020251e: 94 6d                        	ld	a3, 24(a1)
80202520: 11 46                        	addi	a2, zero, 4
80202522: 82 65                        	ld	a1, 0(sp)
80202524: 82 96                        	jalr	a3
80202526: 65 e5                        	bnez	a0, 232
80202528: 56 e4                        	sd	s5, 8(sp)
8020252a: 6e e8                        	sd	s11, 16(sp)
8020252c: 02 ec                        	sd	zero, 24(sp)
8020252e: 6e f0                        	sd	s11, 32(sp)
80202530: 62 f8                        	sd	s8, 48(sp)
80202532: 66 f4                        	sd	s9, 40(sp)
80202534: 29 45                        	addi	a0, zero, 10
80202536: d6 85                        	add	a1, zero, s5
80202538: 6e 86                        	add	a2, zero, s11
8020253a: 97 10 00 00                  	auipc	ra, 1
8020253e: e7 80 a0 25                  	jalr	602(ra)
80202542: 63 10 95 07                  	bne	a0, s9, 96
80202546: 62 65                        	ld	a0, 24(sp)
80202548: 2e 95                        	add	a0, a0, a1
8020254a: 93 04 15 00                  	addi	s1, a0, 1
8020254e: 26 ec                        	sd	s1, 24(sp)
80202550: 22 74                        	ld	s0, 40(sp)
80202552: 63 f4 84 00                  	bgeu	s1, s0, 8
80202556: 42 6d                        	ld	s10, 16(sp)
80202558: 1d a0                        	j	38
8020255a: 42 6d                        	ld	s10, 16(sp)
8020255c: 63 61 9d 02                  	bltu	s10, s1, 34
80202560: 63 77 74 0d                  	bgeu	s0, s7, 206
80202564: 22 65                        	ld	a0, 8(sp)
80202566: 33 8a 84 40                  	sub	s4, s1, s0
8020256a: 52 95                        	add	a0, a0, s4
8020256c: 63 08 35 09                  	beq	a0, s3, 144
80202570: ce 85                        	add	a1, zero, s3
80202572: 22 86                        	add	a2, zero, s0
80202574: 97 20 00 00                  	auipc	ra, 2
80202578: e7 80 c0 d0                  	jalr	-756(ra)
8020257c: 41 c1                        	beqz	a0, 128
8020257e: 02 76                        	ld	a2, 32(sp)
80202580: 63 63 96 02                  	bltu	a2, s1, 38
80202584: 63 61 cd 02                  	bltu	s10, a2, 34
80202588: a2 65                        	ld	a1, 8(sp)
8020258a: 33 05 64 01                  	add	a0, s0, s6
8020258e: 03 05 b5 02                  	lb	a0, 43(a0)
80202592: a6 95                        	add	a1, a1, s1
80202594: 05 8e                        	sub	a2, a2, s1
80202596: 97 10 00 00                  	auipc	ra, 1
8020259a: e7 80 e0 1f                  	jalr	510(ra)
8020259e: e3 04 95 fb                  	beq	a0, s9, -88
802025a2: 02 75                        	ld	a0, 32(sp)
802025a4: 2a ec                        	sd	a0, 24(sp)
802025a6: 03 35 09 01                  	ld	a0, 16(s2)
802025aa: 23 00 05 00                  	sb	zero, 0(a0)
802025ae: 6e 84                        	add	s0, zero, s11
802025b0: 03 35 09 00                  	ld	a0, 0(s2)
802025b4: 83 35 89 00                  	ld	a1, 8(s2)
802025b8: 13 36 14 00                  	seqz	a2, s0
802025bc: b3 c6 8d 00                  	xor	a3, s11, s0
802025c0: 93 b6 16 00                  	seqz	a3, a3
802025c4: b3 64 d6 00                  	or	s1, a2, a3
802025c8: 33 8d 8a 00                  	add	s10, s5, s0
802025cc: 89 e8                        	bnez	s1, 18
802025ce: 63 7b b4 07                  	bgeu	s0, s11, 118
802025d2: 03 06 0d 00                  	lb	a2, 0(s10)
802025d6: 93 06 f0 fb                  	addi	a3, zero, -65
802025da: 63 d5 c6 06                  	bge	a3, a2, 106
802025de: 94 6d                        	ld	a3, 24(a1)
802025e0: d6 85                        	add	a1, zero, s5
802025e2: 22 86                        	add	a2, zero, s0
802025e4: 82 96                        	jalr	a3
802025e6: 05 e5                        	bnez	a0, 40
802025e8: 89 fc                        	bnez	s1, -230
802025ea: 63 7a b4 07                  	bgeu	s0, s11, 116
802025ee: 03 05 0d 00                  	lb	a0, 0(s10)
802025f2: 93 05 f0 fb                  	addi	a1, zero, -65
802025f6: e3 c6 a5 f0                  	blt	a1, a0, -244
802025fa: 95 a0                        	j	100
802025fc: 03 35 09 01                  	ld	a0, 16(s2)
80202600: 23 00 95 01                  	sb	s9, 0(a0)
80202604: 13 04 1a 00                  	addi	s0, s4, 1
80202608: 65 b7                        	j	-88
8020260a: 01 45                        	mv	a0, zero
8020260c: 11 a0                        	j	4
8020260e: 05 45                        	addi	a0, zero, 1
80202610: e2 7d                        	ld	s11, 56(sp)
80202612: 06 6d                        	ld	s10, 64(sp)
80202614: a6 6c                        	ld	s9, 72(sp)
80202616: 46 6c                        	ld	s8, 80(sp)
80202618: e6 6b                        	ld	s7, 88(sp)
8020261a: 06 7b                        	ld	s6, 96(sp)
8020261c: a6 7a                        	ld	s5, 104(sp)
8020261e: 46 7a                        	ld	s4, 112(sp)
80202620: e6 79                        	ld	s3, 120(sp)
80202622: 0a 69                        	ld	s2, 128(sp)
80202624: aa 64                        	ld	s1, 136(sp)
80202626: 4a 64                        	ld	s0, 144(sp)
80202628: ea 60                        	ld	ra, 152(sp)
8020262a: 0d 61                        	addi	sp, sp, 160
8020262c: 82 80                        	ret

000000008020262e .LBB132_32:
8020262e: 17 36 00 00                  	auipc	a2, 3
80202632: 13 06 a6 c0                  	addi	a2, a2, -1014
80202636: 91 45                        	addi	a1, zero, 4
80202638: 22 85                        	add	a0, zero, s0
8020263a: 97 10 00 00                  	auipc	ra, 1
8020263e: e7 80 60 27                  	jalr	630(ra)
80202642: 00 00                        	unimp	

0000000080202644 .LBB132_33:
80202644: 17 37 00 00                  	auipc	a4, 3
80202648: 13 07 47 c2                  	addi	a4, a4, -988
8020264c: 56 85                        	add	a0, zero, s5
8020264e: ee 85                        	add	a1, zero, s11
80202650: 01 46                        	mv	a2, zero
80202652: a2 86                        	add	a3, zero, s0
80202654: 97 10 00 00                  	auipc	ra, 1
80202658: e7 80 c0 2d                  	jalr	732(ra)
8020265c: 00 00                        	unimp	

000000008020265e .LBB132_34:
8020265e: 17 37 00 00                  	auipc	a4, 3
80202662: 13 07 27 c2                  	addi	a4, a4, -990
80202666: 56 85                        	add	a0, zero, s5
80202668: ee 85                        	add	a1, zero, s11
8020266a: 22 86                        	add	a2, zero, s0
8020266c: ee 86                        	add	a3, zero, s11
8020266e: 97 10 00 00                  	auipc	ra, 1
80202672: e7 80 20 2c                  	jalr	706(ra)
80202676: 00 00                        	unimp	

0000000080202678 _ZN4core3fmt8builders11DebugStruct5field17he0bb0cc499e35d52E:
80202678: 35 71                        	addi	sp, sp, -160
8020267a: 06 ed                        	sd	ra, 152(sp)
8020267c: 22 e9                        	sd	s0, 144(sp)
8020267e: 26 e5                        	sd	s1, 136(sp)
80202680: 4a e1                        	sd	s2, 128(sp)
80202682: ce fc                        	sd	s3, 120(sp)
80202684: d2 f8                        	sd	s4, 112(sp)
80202686: d6 f4                        	sd	s5, 104(sp)
80202688: da f0                        	sd	s6, 96(sp)
8020268a: 2a 84                        	add	s0, zero, a0
8020268c: 03 45 85 00                  	lbu	a0, 8(a0)
80202690: 05 4b                        	addi	s6, zero, 1
80202692: 85 44                        	addi	s1, zero, 1
80202694: 05 c1                        	beqz	a0, 32
80202696: 23 04 94 00                  	sb	s1, 8(s0)
8020269a: a3 04 64 01                  	sb	s6, 9(s0)
8020269e: 22 85                        	add	a0, zero, s0
802026a0: 06 7b                        	ld	s6, 96(sp)
802026a2: a6 7a                        	ld	s5, 104(sp)
802026a4: 46 7a                        	ld	s4, 112(sp)
802026a6: e6 79                        	ld	s3, 120(sp)
802026a8: 0a 69                        	ld	s2, 128(sp)
802026aa: aa 64                        	ld	s1, 136(sp)
802026ac: 4a 64                        	ld	s0, 144(sp)
802026ae: ea 60                        	ld	ra, 152(sp)
802026b0: 0d 61                        	addi	sp, sp, 160
802026b2: 82 80                        	ret
802026b4: ba 89                        	add	s3, zero, a4
802026b6: 36 89                        	add	s2, zero, a3
802026b8: 32 8a                        	add	s4, zero, a2
802026ba: ae 8a                        	add	s5, zero, a1
802026bc: 08 60                        	ld	a0, 0(s0)
802026be: 83 65 05 03                  	lwu	a1, 48(a0)
802026c2: 03 46 94 00                  	lbu	a2, 9(s0)
802026c6: 93 f6 45 00                  	andi	a3, a1, 4
802026ca: 81 ea                        	bnez	a3, 16
802026cc: 4d ca                        	beqz	a2, 178

00000000802026ce .LBB133_18:
802026ce: 97 35 00 00                  	auipc	a1, 3
802026d2: 93 85 75 8f                  	addi	a1, a1, -1801
802026d6: 09 46                        	addi	a2, zero, 2
802026d8: 45 a8                        	j	176
802026da: 19 ee                        	bnez	a2, 30
802026dc: 0c 75                        	ld	a1, 40(a0)
802026de: 08 71                        	ld	a0, 32(a0)
802026e0: 94 6d                        	ld	a3, 24(a1)

00000000802026e2 .LBB133_19:
802026e2: 97 35 00 00                  	auipc	a1, 3
802026e6: 93 85 e5 8d                  	addi	a1, a1, -1826
802026ea: 0d 46                        	addi	a2, zero, 3
802026ec: 82 96                        	jalr	a3
802026ee: 85 44                        	addi	s1, zero, 1
802026f0: 5d f1                        	bnez	a0, -90
802026f2: 08 60                        	ld	a0, 0(s0)
802026f4: 83 65 05 03                  	lwu	a1, 48(a0)
802026f8: 85 44                        	addi	s1, zero, 1
802026fa: a3 0f 91 00                  	sb	s1, 31(sp)
802026fe: 10 71                        	ld	a2, 32(a0)
80202700: 14 75                        	ld	a3, 40(a0)
80202702: 32 e0                        	sd	a2, 0(sp)
80202704: 36 e4                        	sd	a3, 8(sp)
80202706: 13 06 f1 01                  	addi	a2, sp, 31
8020270a: 32 e8                        	sd	a2, 16(sp)
8020270c: 50 59                        	lw	a2, 52(a0)
8020270e: 83 06 85 03                  	lb	a3, 56(a0)
80202712: 18 61                        	ld	a4, 0(a0)
80202714: 1c 65                        	ld	a5, 8(a0)
80202716: 03 38 05 01                  	ld	a6, 16(a0)
8020271a: 08 6d                        	ld	a0, 24(a0)
8020271c: ae c8                        	sw	a1, 80(sp)
8020271e: b2 ca                        	sw	a2, 84(sp)
80202720: 23 0c d1 04                  	sb	a3, 88(sp)
80202724: 3a f0                        	sd	a4, 32(sp)
80202726: 3e f4                        	sd	a5, 40(sp)
80202728: 42 f8                        	sd	a6, 48(sp)
8020272a: 2a fc                        	sd	a0, 56(sp)
8020272c: 0a 85                        	add	a0, zero, sp
8020272e: aa e0                        	sd	a0, 64(sp)

0000000080202730 .LBB133_20:
80202730: 97 35 00 00                  	auipc	a1, 3
80202734: 93 85 05 86                  	addi	a1, a1, -1952
80202738: ae e4                        	sd	a1, 72(sp)
8020273a: d6 85                        	add	a1, zero, s5
8020273c: 52 86                        	add	a2, zero, s4
8020273e: 97 00 00 00                  	auipc	ra, 0
80202742: e7 80 e0 d7                  	jalr	-642(ra)
80202746: 21 f9                        	bnez	a0, -176

0000000080202748 .LBB133_21:
80202748: 97 25 00 00                  	auipc	a1, 2
8020274c: 93 85 b5 7c                  	addi	a1, a1, 1995
80202750: 0a 85                        	add	a0, zero, sp
80202752: 09 46                        	addi	a2, zero, 2
80202754: 97 00 00 00                  	auipc	ra, 0
80202758: e7 80 80 d6                  	jalr	-664(ra)
8020275c: 0d fd                        	bnez	a0, -198
8020275e: 03 b6 89 01                  	ld	a2, 24(s3)
80202762: 0c 10                        	addi	a1, sp, 32
80202764: 4a 85                        	add	a0, zero, s2
80202766: 02 96                        	jalr	a2
80202768: 1d f5                        	bnez	a0, -210
8020276a: a6 65                        	ld	a1, 72(sp)
8020276c: 06 65                        	ld	a0, 64(sp)
8020276e: 94 6d                        	ld	a3, 24(a1)

0000000080202770 .LBB133_22:
80202770: 97 35 00 00                  	auipc	a1, 3
80202774: 93 85 35 85                  	addi	a1, a1, -1965
80202778: 09 46                        	addi	a2, zero, 2
8020277a: 82 96                        	jalr	a3
8020277c: 81 a8                        	j	80

000000008020277e .LBB133_23:
8020277e: 97 35 00 00                  	auipc	a1, 3
80202782: 93 85 95 84                  	addi	a1, a1, -1975
80202786: 0d 46                        	addi	a2, zero, 3
80202788: 14 75                        	ld	a3, 40(a0)
8020278a: 08 71                        	ld	a0, 32(a0)
8020278c: 94 6e                        	ld	a3, 24(a3)
8020278e: 82 96                        	jalr	a3
80202790: 85 44                        	addi	s1, zero, 1
80202792: 11 f1                        	bnez	a0, -252
80202794: 08 60                        	ld	a0, 0(s0)
80202796: 0c 75                        	ld	a1, 40(a0)
80202798: 08 71                        	ld	a0, 32(a0)
8020279a: 94 6d                        	ld	a3, 24(a1)
8020279c: d6 85                        	add	a1, zero, s5
8020279e: 52 86                        	add	a2, zero, s4
802027a0: 82 96                        	jalr	a3
802027a2: 85 44                        	addi	s1, zero, 1
802027a4: e3 19 05 ee                  	bnez	a0, -270
802027a8: 08 60                        	ld	a0, 0(s0)
802027aa: 0c 75                        	ld	a1, 40(a0)
802027ac: 08 71                        	ld	a0, 32(a0)
802027ae: 94 6d                        	ld	a3, 24(a1)

00000000802027b0 .LBB133_24:
802027b0: 97 25 00 00                  	auipc	a1, 2
802027b4: 93 85 35 76                  	addi	a1, a1, 1891
802027b8: 09 46                        	addi	a2, zero, 2
802027ba: 82 96                        	jalr	a3
802027bc: 85 44                        	addi	s1, zero, 1
802027be: e3 1c 05 ec                  	bnez	a0, -296
802027c2: 0c 60                        	ld	a1, 0(s0)
802027c4: 03 b6 89 01                  	ld	a2, 24(s3)
802027c8: 4a 85                        	add	a0, zero, s2
802027ca: 02 96                        	jalr	a2
802027cc: aa 84                        	add	s1, zero, a0
802027ce: e1 b5                        	j	-312

00000000802027d0 _ZN4core3fmt8builders11DebugStruct6finish17h0ae4d84d7099b51cE:
802027d0: 41 11                        	addi	sp, sp, -16
802027d2: 06 e4                        	sd	ra, 8(sp)
802027d4: 22 e0                        	sd	s0, 0(sp)
802027d6: 2a 84                        	add	s0, zero, a0
802027d8: 03 45 95 00                  	lbu	a0, 9(a0)
802027dc: 83 45 84 00                  	lbu	a1, 8(s0)
802027e0: 1d c9                        	beqz	a0, 54
802027e2: 05 45                        	addi	a0, zero, 1
802027e4: 95 e5                        	bnez	a1, 44
802027e6: 08 60                        	ld	a0, 0(s0)
802027e8: 0c 75                        	ld	a1, 40(a0)
802027ea: 03 46 05 03                  	lbu	a2, 48(a0)
802027ee: 08 71                        	ld	a0, 32(a0)
802027f0: 94 6d                        	ld	a3, 24(a1)
802027f2: 93 75 46 00                  	andi	a1, a2, 4
802027f6: 99 e5                        	bnez	a1, 14

00000000802027f8 .LBB135_8:
802027f8: 97 25 00 00                  	auipc	a1, 2
802027fc: 93 85 35 7d                  	addi	a1, a1, 2003
80202800: 09 46                        	addi	a2, zero, 2
80202802: 31 a0                        	j	12

0000000080202804 .LBB135_9:
80202804: 97 25 00 00                  	auipc	a1, 2
80202808: 93 85 65 7c                  	addi	a1, a1, 1990
8020280c: 05 46                        	addi	a2, zero, 1
8020280e: 82 96                        	jalr	a3
80202810: 23 04 a4 00                  	sb	a0, 8(s0)
80202814: aa 85                        	add	a1, zero, a0
80202816: 33 35 b0 00                  	snez	a0, a1
8020281a: 02 64                        	ld	s0, 0(sp)
8020281c: a2 60                        	ld	ra, 8(sp)
8020281e: 41 01                        	addi	sp, sp, 16
80202820: 82 80                        	ret

0000000080202822 _ZN4core3fmt8builders10DebugTuple5field17h10609664a1c96872E:
80202822: 75 71                        	addi	sp, sp, -144
80202824: 06 e5                        	sd	ra, 136(sp)
80202826: 22 e1                        	sd	s0, 128(sp)
80202828: a6 fc                        	sd	s1, 120(sp)
8020282a: ca f8                        	sd	s2, 112(sp)
8020282c: ce f4                        	sd	s3, 104(sp)
8020282e: 2a 84                        	add	s0, zero, a0
80202830: 03 45 05 01                  	lbu	a0, 16(a0)
80202834: 85 44                        	addi	s1, zero, 1
80202836: 69 e1                        	bnez	a0, 194
80202838: b2 89                        	add	s3, zero, a2
8020283a: 2e 89                        	add	s2, zero, a1
8020283c: 08 60                        	ld	a0, 0(s0)
8020283e: 83 65 05 03                  	lwu	a1, 48(a0)
80202842: 10 64                        	ld	a2, 8(s0)
80202844: 93 f6 45 00                  	andi	a3, a1, 4
80202848: 89 ea                        	bnez	a3, 18
8020284a: 85 44                        	addi	s1, zero, 1
8020284c: 51 c6                        	beqz	a2, 140

000000008020284e .LBB136_14:
8020284e: 97 25 00 00                  	auipc	a1, 2
80202852: 93 85 75 77                  	addi	a1, a1, 1911
80202856: 09 46                        	addi	a2, zero, 2
80202858: 69 a0                        	j	138
8020285a: 11 ee                        	bnez	a2, 28
8020285c: 0c 75                        	ld	a1, 40(a0)
8020285e: 08 71                        	ld	a0, 32(a0)
80202860: 94 6d                        	ld	a3, 24(a1)

0000000080202862 .LBB136_15:
80202862: 97 25 00 00                  	auipc	a1, 2
80202866: 93 85 b5 76                  	addi	a1, a1, 1899
8020286a: 09 46                        	addi	a2, zero, 2
8020286c: 82 96                        	jalr	a3
8020286e: 49 e5                        	bnez	a0, 138
80202870: 08 60                        	ld	a0, 0(s0)
80202872: 83 65 05 03                  	lwu	a1, 48(a0)
80202876: 85 44                        	addi	s1, zero, 1
80202878: a3 03 91 02                  	sb	s1, 39(sp)
8020287c: 10 71                        	ld	a2, 32(a0)
8020287e: 14 75                        	ld	a3, 40(a0)
80202880: 32 e4                        	sd	a2, 8(sp)
80202882: 36 e8                        	sd	a3, 16(sp)
80202884: 13 06 71 02                  	addi	a2, sp, 39
80202888: 32 ec                        	sd	a2, 24(sp)
8020288a: 50 59                        	lw	a2, 52(a0)
8020288c: 83 06 85 03                  	lb	a3, 56(a0)
80202890: 18 61                        	ld	a4, 0(a0)
80202892: 1c 65                        	ld	a5, 8(a0)
80202894: 03 38 05 01                  	ld	a6, 16(a0)
80202898: 08 6d                        	ld	a0, 24(a0)
8020289a: ae cc                        	sw	a1, 88(sp)
8020289c: b2 ce                        	sw	a2, 92(sp)
8020289e: 23 00 d1 06                  	sb	a3, 96(sp)
802028a2: 3a f4                        	sd	a4, 40(sp)
802028a4: 3e f8                        	sd	a5, 48(sp)
802028a6: 42 fc                        	sd	a6, 56(sp)
802028a8: aa e0                        	sd	a0, 64(sp)
802028aa: 28 00                        	addi	a0, sp, 8
802028ac: 03 b6 89 01                  	ld	a2, 24(s3)
802028b0: aa e4                        	sd	a0, 72(sp)

00000000802028b2 .LBB136_16:
802028b2: 17 25 00 00                  	auipc	a0, 2
802028b6: 13 05 e5 6d                  	addi	a0, a0, 1758
802028ba: aa e8                        	sd	a0, 80(sp)
802028bc: 2c 10                        	addi	a1, sp, 40
802028be: 4a 85                        	add	a0, zero, s2
802028c0: 02 96                        	jalr	a2
802028c2: 1d e9                        	bnez	a0, 54
802028c4: c6 65                        	ld	a1, 80(sp)
802028c6: 26 65                        	ld	a0, 72(sp)
802028c8: 94 6d                        	ld	a3, 24(a1)

00000000802028ca .LBB136_17:
802028ca: 97 25 00 00                  	auipc	a1, 2
802028ce: 93 85 95 6f                  	addi	a1, a1, 1785
802028d2: 09 46                        	addi	a2, zero, 2
802028d4: 82 96                        	jalr	a3
802028d6: 05 a0                        	j	32

00000000802028d8 .LBB136_18:
802028d8: 97 25 00 00                  	auipc	a1, 2
802028dc: 93 85 75 6f                  	addi	a1, a1, 1783
802028e0: 05 46                        	addi	a2, zero, 1
802028e2: 14 75                        	ld	a3, 40(a0)
802028e4: 08 71                        	ld	a0, 32(a0)
802028e6: 94 6e                        	ld	a3, 24(a3)
802028e8: 82 96                        	jalr	a3
802028ea: 19 e5                        	bnez	a0, 14
802028ec: 0c 60                        	ld	a1, 0(s0)
802028ee: 03 b6 89 01                  	ld	a2, 24(s3)
802028f2: 4a 85                        	add	a0, zero, s2
802028f4: 02 96                        	jalr	a2
802028f6: aa 84                        	add	s1, zero, a0
802028f8: 08 64                        	ld	a0, 8(s0)
802028fa: 23 08 94 00                  	sb	s1, 16(s0)
802028fe: 05 05                        	addi	a0, a0, 1
80202900: 08 e4                        	sd	a0, 8(s0)
80202902: 22 85                        	add	a0, zero, s0
80202904: a6 79                        	ld	s3, 104(sp)
80202906: 46 79                        	ld	s2, 112(sp)
80202908: e6 74                        	ld	s1, 120(sp)
8020290a: 0a 64                        	ld	s0, 128(sp)
8020290c: aa 60                        	ld	ra, 136(sp)
8020290e: 49 61                        	addi	sp, sp, 144
80202910: 82 80                        	ret

0000000080202912 _ZN4core3fmt8builders10DebugTuple6finish17h00fad7daa6b35633E:
80202912: 01 11                        	addi	sp, sp, -32
80202914: 06 ec                        	sd	ra, 24(sp)
80202916: 22 e8                        	sd	s0, 16(sp)
80202918: 26 e4                        	sd	s1, 8(sp)
8020291a: 2a 84                        	add	s0, zero, a0
8020291c: 0c 65                        	ld	a1, 8(a0)
8020291e: 03 45 05 01                  	lbu	a0, 16(a0)
80202922: b9 c5                        	beqz	a1, 78
80202924: 85 44                        	addi	s1, zero, 1
80202926: 31 e1                        	bnez	a0, 68
80202928: 05 45                        	addi	a0, zero, 1
8020292a: 63 95 a5 02                  	bne	a1, a0, 42
8020292e: 03 45 14 01                  	lbu	a0, 17(s0)
80202932: 0d c1                        	beqz	a0, 34
80202934: 08 60                        	ld	a0, 0(s0)
80202936: 83 45 05 03                  	lbu	a1, 48(a0)
8020293a: 91 89                        	andi	a1, a1, 4
8020293c: 81 ed                        	bnez	a1, 24
8020293e: 0c 75                        	ld	a1, 40(a0)
80202940: 08 71                        	ld	a0, 32(a0)
80202942: 94 6d                        	ld	a3, 24(a1)

0000000080202944 .LBB137_9:
80202944: 97 25 00 00                  	auipc	a1, 2
80202948: 93 85 c5 68                  	addi	a1, a1, 1676
8020294c: 05 46                        	addi	a2, zero, 1
8020294e: 85 44                        	addi	s1, zero, 1
80202950: 82 96                        	jalr	a3
80202952: 01 ed                        	bnez	a0, 24
80202954: 08 60                        	ld	a0, 0(s0)
80202956: 0c 75                        	ld	a1, 40(a0)
80202958: 08 71                        	ld	a0, 32(a0)
8020295a: 94 6d                        	ld	a3, 24(a1)

000000008020295c .LBB137_10:
8020295c: 97 25 00 00                  	auipc	a1, 2
80202960: 93 85 55 67                  	addi	a1, a1, 1653
80202964: 05 46                        	addi	a2, zero, 1
80202966: 82 96                        	jalr	a3
80202968: aa 84                        	add	s1, zero, a0
8020296a: 23 08 94 00                  	sb	s1, 16(s0)
8020296e: 26 85                        	add	a0, zero, s1
80202970: 33 35 a0 00                  	snez	a0, a0
80202974: a2 64                        	ld	s1, 8(sp)
80202976: 42 64                        	ld	s0, 16(sp)
80202978: e2 60                        	ld	ra, 24(sp)
8020297a: 05 61                        	addi	sp, sp, 32
8020297c: 82 80                        	ret

000000008020297e _ZN4core3fmt8builders10DebugInner5entry17h077f88d5f8afc4fcE:
8020297e: 75 71                        	addi	sp, sp, -144
80202980: 06 e5                        	sd	ra, 136(sp)
80202982: 22 e1                        	sd	s0, 128(sp)
80202984: a6 fc                        	sd	s1, 120(sp)
80202986: ca f8                        	sd	s2, 112(sp)
80202988: ce f4                        	sd	s3, 104(sp)
8020298a: d2 f0                        	sd	s4, 96(sp)
8020298c: 2a 84                        	add	s0, zero, a0
8020298e: 03 45 85 00                  	lbu	a0, 8(a0)
80202992: 05 4a                        	addi	s4, zero, 1
80202994: 85 44                        	addi	s1, zero, 1
80202996: 4d ed                        	bnez	a0, 186
80202998: b2 89                        	add	s3, zero, a2
8020299a: 2e 89                        	add	s2, zero, a1
8020299c: 0c 60                        	ld	a1, 0(s0)
8020299e: 03 e5 05 03                  	lwu	a0, 48(a1)
802029a2: 03 46 94 00                  	lbu	a2, 9(s0)
802029a6: 93 76 45 00                  	andi	a3, a0, 4
802029aa: 9d e2                        	bnez	a3, 38
802029ac: 09 ce                        	beqz	a2, 26
802029ae: 90 75                        	ld	a2, 40(a1)
802029b0: 88 71                        	ld	a0, 32(a1)
802029b2: 14 6e                        	ld	a3, 24(a2)

00000000802029b4 .LBB138_13:
802029b4: 97 25 00 00                  	auipc	a1, 2
802029b8: 93 85 15 61                  	addi	a1, a1, 1553
802029bc: 09 46                        	addi	a2, zero, 2
802029be: 82 96                        	jalr	a3
802029c0: 85 44                        	addi	s1, zero, 1
802029c2: 59 e5                        	bnez	a0, 142
802029c4: 0c 60                        	ld	a1, 0(s0)
802029c6: 03 b6 89 01                  	ld	a2, 24(s3)
802029ca: 4a 85                        	add	a0, zero, s2
802029cc: 02 96                        	jalr	a2
802029ce: 41 a0                        	j	128
802029d0: 19 ee                        	bnez	a2, 30
802029d2: 90 75                        	ld	a2, 40(a1)
802029d4: 88 71                        	ld	a0, 32(a1)
802029d6: 14 6e                        	ld	a3, 24(a2)

00000000802029d8 .LBB138_14:
802029d8: 97 25 00 00                  	auipc	a1, 2
802029dc: 93 85 a5 5f                  	addi	a1, a1, 1530
802029e0: 05 46                        	addi	a2, zero, 1
802029e2: 85 44                        	addi	s1, zero, 1
802029e4: 82 96                        	jalr	a3
802029e6: 2d e5                        	bnez	a0, 106
802029e8: 0c 60                        	ld	a1, 0(s0)
802029ea: 03 e5 05 03                  	lwu	a0, 48(a1)
802029ee: 85 44                        	addi	s1, zero, 1
802029f0: a3 0f 91 00                  	sb	s1, 31(sp)
802029f4: 90 71                        	ld	a2, 32(a1)
802029f6: 94 75                        	ld	a3, 40(a1)
802029f8: 32 e0                        	sd	a2, 0(sp)
802029fa: 36 e4                        	sd	a3, 8(sp)
802029fc: 13 06 f1 01                  	addi	a2, sp, 31
80202a00: 32 e8                        	sd	a2, 16(sp)
80202a02: d0 59                        	lw	a2, 52(a1)
80202a04: 83 86 85 03                  	lb	a3, 56(a1)
80202a08: 98 61                        	ld	a4, 0(a1)
80202a0a: 9c 65                        	ld	a5, 8(a1)
80202a0c: 03 b8 05 01                  	ld	a6, 16(a1)
80202a10: 8c 6d                        	ld	a1, 24(a1)
80202a12: aa c8                        	sw	a0, 80(sp)
80202a14: b2 ca                        	sw	a2, 84(sp)
80202a16: 23 0c d1 04                  	sb	a3, 88(sp)
80202a1a: 3a f0                        	sd	a4, 32(sp)
80202a1c: 3e f4                        	sd	a5, 40(sp)
80202a1e: 42 f8                        	sd	a6, 48(sp)
80202a20: 2e fc                        	sd	a1, 56(sp)
80202a22: 0a 85                        	add	a0, zero, sp
80202a24: 03 b6 89 01                  	ld	a2, 24(s3)
80202a28: aa e0                        	sd	a0, 64(sp)

0000000080202a2a .LBB138_15:
80202a2a: 17 25 00 00                  	auipc	a0, 2
80202a2e: 13 05 65 56                  	addi	a0, a0, 1382
80202a32: aa e4                        	sd	a0, 72(sp)
80202a34: 0c 10                        	addi	a1, sp, 32
80202a36: 4a 85                        	add	a0, zero, s2
80202a38: 02 96                        	jalr	a2
80202a3a: 19 e9                        	bnez	a0, 22
80202a3c: a6 65                        	ld	a1, 72(sp)
80202a3e: 06 65                        	ld	a0, 64(sp)
80202a40: 94 6d                        	ld	a3, 24(a1)

0000000080202a42 .LBB138_16:
80202a42: 97 25 00 00                  	auipc	a1, 2
80202a46: 93 85 15 58                  	addi	a1, a1, 1409
80202a4a: 09 46                        	addi	a2, zero, 2
80202a4c: 82 96                        	jalr	a3
80202a4e: aa 84                        	add	s1, zero, a0
80202a50: 23 04 94 00                  	sb	s1, 8(s0)
80202a54: a3 04 44 01                  	sb	s4, 9(s0)
80202a58: 06 7a                        	ld	s4, 96(sp)
80202a5a: a6 79                        	ld	s3, 104(sp)
80202a5c: 46 79                        	ld	s2, 112(sp)
80202a5e: e6 74                        	ld	s1, 120(sp)
80202a60: 0a 64                        	ld	s0, 128(sp)
80202a62: aa 60                        	ld	ra, 136(sp)
80202a64: 49 61                        	addi	sp, sp, 144
80202a66: 82 80                        	ret

0000000080202a68 _ZN4core3fmt8builders9DebugList5entry17h2d7f6a925ee1ea89E:
80202a68: 41 11                        	addi	sp, sp, -16
80202a6a: 06 e4                        	sd	ra, 8(sp)
80202a6c: 22 e0                        	sd	s0, 0(sp)
80202a6e: 2a 84                        	add	s0, zero, a0
80202a70: 97 00 00 00                  	auipc	ra, 0
80202a74: e7 80 e0 f0                  	jalr	-242(ra)
80202a78: 22 85                        	add	a0, zero, s0
80202a7a: 02 64                        	ld	s0, 0(sp)
80202a7c: a2 60                        	ld	ra, 8(sp)
80202a7e: 41 01                        	addi	sp, sp, 16
80202a80: 82 80                        	ret

0000000080202a82 _ZN4core3fmt8builders9DebugList6finish17h2f821bfd5190c778E:
80202a82: 41 11                        	addi	sp, sp, -16
80202a84: 06 e4                        	sd	ra, 8(sp)
80202a86: aa 85                        	add	a1, zero, a0
80202a88: 03 46 85 00                  	lbu	a2, 8(a0)
80202a8c: 05 45                        	addi	a0, zero, 1
80202a8e: 01 c6                        	beqz	a2, 8
80202a90: a2 60                        	ld	ra, 8(sp)
80202a92: 41 01                        	addi	sp, sp, 16
80202a94: 82 80                        	ret
80202a96: 88 61                        	ld	a0, 0(a1)
80202a98: 0c 75                        	ld	a1, 40(a0)
80202a9a: 08 71                        	ld	a0, 32(a0)
80202a9c: 94 6d                        	ld	a3, 24(a1)

0000000080202a9e .LBB141_3:
80202a9e: 97 25 00 00                  	auipc	a1, 2
80202aa2: 93 85 65 53                  	addi	a1, a1, 1334
80202aa6: 05 46                        	addi	a2, zero, 1
80202aa8: 82 96                        	jalr	a3
80202aaa: a2 60                        	ld	ra, 8(sp)
80202aac: 41 01                        	addi	sp, sp, 16
80202aae: 82 80                        	ret

0000000080202ab0 _ZN4core3fmt5Write10write_char17h88d98e20541d2fccE:
80202ab0: 41 11                        	addi	sp, sp, -16
80202ab2: 06 e4                        	sd	ra, 8(sp)
80202ab4: 2e 86                        	add	a2, zero, a1
80202ab6: 81 25                        	sext.w	a1, a1
80202ab8: 93 06 00 08                  	addi	a3, zero, 128
80202abc: 02 c2                        	sw	zero, 4(sp)
80202abe: 63 fd d5 00                  	bgeu	a1, a3, 26
80202ac2: 4c 00                        	addi	a1, sp, 4
80202ac4: 23 02 c1 00                  	sb	a2, 4(sp)
80202ac8: 05 46                        	addi	a2, zero, 1
80202aca: 97 00 00 00                  	auipc	ra, 0
80202ace: e7 80 20 9f                  	jalr	-1550(ra)
80202ad2: a2 60                        	ld	ra, 8(sp)
80202ad4: 41 01                        	addi	sp, sp, 16
80202ad6: 82 80                        	ret
80202ad8: 9b 55 b6 00                  	srliw	a1, a2, 11
80202adc: 95 e5                        	bnez	a1, 44
80202ade: 4c 00                        	addi	a1, sp, 4
80202ae0: 93 56 66 00                  	srli	a3, a2, 6
80202ae4: 93 e6 06 0c                  	ori	a3, a3, 192
80202ae8: 23 02 d1 00                  	sb	a3, 4(sp)
80202aec: 13 76 f6 03                  	andi	a2, a2, 63
80202af0: 13 66 06 08                  	ori	a2, a2, 128
80202af4: a3 02 c1 00                  	sb	a2, 5(sp)
80202af8: 09 46                        	addi	a2, zero, 2
80202afa: 97 00 00 00                  	auipc	ra, 0
80202afe: e7 80 20 9c                  	jalr	-1598(ra)
80202b02: a2 60                        	ld	ra, 8(sp)
80202b04: 41 01                        	addi	sp, sp, 16
80202b06: 82 80                        	ret
80202b08: 9b 56 06 01                  	srliw	a3, a2, 16
80202b0c: 4c 00                        	addi	a1, sp, 4
80202b0e: 8d ee                        	bnez	a3, 58
80202b10: 9b 56 c6 00                  	srliw	a3, a2, 12
80202b14: 93 e6 06 0e                  	ori	a3, a3, 224
80202b18: 23 02 d1 00                  	sb	a3, 4(sp)
80202b1c: 9b 56 66 00                  	srliw	a3, a2, 6
80202b20: 93 f6 f6 03                  	andi	a3, a3, 63
80202b24: 93 e6 06 08                  	ori	a3, a3, 128
80202b28: a3 02 d1 00                  	sb	a3, 5(sp)
80202b2c: 13 76 f6 03                  	andi	a2, a2, 63
80202b30: 13 66 06 08                  	ori	a2, a2, 128
80202b34: 23 03 c1 00                  	sb	a2, 6(sp)
80202b38: 0d 46                        	addi	a2, zero, 3
80202b3a: 97 00 00 00                  	auipc	ra, 0
80202b3e: e7 80 20 98                  	jalr	-1662(ra)
80202b42: a2 60                        	ld	ra, 8(sp)
80202b44: 41 01                        	addi	sp, sp, 16
80202b46: 82 80                        	ret
80202b48: 9b 56 26 01                  	srliw	a3, a2, 18
80202b4c: 93 e6 06 0f                  	ori	a3, a3, 240
80202b50: 23 02 d1 00                  	sb	a3, 4(sp)
80202b54: 9b 56 c6 00                  	srliw	a3, a2, 12
80202b58: 93 f6 f6 03                  	andi	a3, a3, 63
80202b5c: 93 e6 06 08                  	ori	a3, a3, 128
80202b60: a3 02 d1 00                  	sb	a3, 5(sp)
80202b64: 9b 56 66 00                  	srliw	a3, a2, 6
80202b68: 93 f6 f6 03                  	andi	a3, a3, 63
80202b6c: 93 e6 06 08                  	ori	a3, a3, 128
80202b70: 23 03 d1 00                  	sb	a3, 6(sp)
80202b74: 13 76 f6 03                  	andi	a2, a2, 63
80202b78: 13 66 06 08                  	ori	a2, a2, 128
80202b7c: a3 03 c1 00                  	sb	a2, 7(sp)
80202b80: 11 46                        	addi	a2, zero, 4
80202b82: 97 00 00 00                  	auipc	ra, 0
80202b86: e7 80 a0 93                  	jalr	-1734(ra)
80202b8a: a2 60                        	ld	ra, 8(sp)
80202b8c: 41 01                        	addi	sp, sp, 16
80202b8e: 82 80                        	ret

0000000080202b90 _ZN4core3fmt5Write9write_fmt17h89d269e5e8b0f57eE:
80202b90: 39 71                        	addi	sp, sp, -64
80202b92: 06 fc                        	sd	ra, 56(sp)
80202b94: 90 75                        	ld	a2, 40(a1)
80202b96: 94 71                        	ld	a3, 32(a1)
80202b98: 2a e0                        	sd	a0, 0(sp)
80202b9a: 32 f8                        	sd	a2, 48(sp)
80202b9c: 36 f4                        	sd	a3, 40(sp)
80202b9e: 88 6d                        	ld	a0, 24(a1)
80202ba0: 90 69                        	ld	a2, 16(a1)
80202ba2: 94 65                        	ld	a3, 8(a1)
80202ba4: 8c 61                        	ld	a1, 0(a1)
80202ba6: 2a f0                        	sd	a0, 32(sp)
80202ba8: 32 ec                        	sd	a2, 24(sp)
80202baa: 36 e8                        	sd	a3, 16(sp)
80202bac: 2e e4                        	sd	a1, 8(sp)

0000000080202bae .LBB155_1:
80202bae: 97 25 00 00                  	auipc	a1, 2
80202bb2: 93 85 a5 52                  	addi	a1, a1, 1322
80202bb6: 0a 85                        	add	a0, zero, sp
80202bb8: 30 00                        	addi	a2, sp, 8
80202bba: 97 00 00 00                  	auipc	ra, 0
80202bbe: e7 80 60 16                  	jalr	358(ra)
80202bc2: e2 70                        	ld	ra, 56(sp)
80202bc4: 21 61                        	addi	sp, sp, 64
80202bc6: 82 80                        	ret

0000000080202bc8 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb5709b01b7c41321E:
80202bc8: 08 61                        	ld	a0, 0(a0)
80202bca: 17 03 00 00                  	auipc	t1, 0
80202bce: 67 00 23 8f                  	jr	-1806(t1)

0000000080202bd2 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h20ad077d9942d13eE:
80202bd2: 41 11                        	addi	sp, sp, -16
80202bd4: 06 e4                        	sd	ra, 8(sp)
80202bd6: 2e 86                        	add	a2, zero, a1
80202bd8: 08 61                        	ld	a0, 0(a0)
80202bda: 81 25                        	sext.w	a1, a1
80202bdc: 93 06 00 08                  	addi	a3, zero, 128
80202be0: 02 c2                        	sw	zero, 4(sp)
80202be2: 63 fd d5 00                  	bgeu	a1, a3, 26
80202be6: 4c 00                        	addi	a1, sp, 4
80202be8: 23 02 c1 00                  	sb	a2, 4(sp)
80202bec: 05 46                        	addi	a2, zero, 1
80202bee: 97 00 00 00                  	auipc	ra, 0
80202bf2: e7 80 e0 8c                  	jalr	-1842(ra)
80202bf6: a2 60                        	ld	ra, 8(sp)
80202bf8: 41 01                        	addi	sp, sp, 16
80202bfa: 82 80                        	ret
80202bfc: 9b 55 b6 00                  	srliw	a1, a2, 11
80202c00: 95 e5                        	bnez	a1, 44
80202c02: 4c 00                        	addi	a1, sp, 4
80202c04: 93 56 66 00                  	srli	a3, a2, 6
80202c08: 93 e6 06 0c                  	ori	a3, a3, 192
80202c0c: 23 02 d1 00                  	sb	a3, 4(sp)
80202c10: 13 76 f6 03                  	andi	a2, a2, 63
80202c14: 13 66 06 08                  	ori	a2, a2, 128
80202c18: a3 02 c1 00                  	sb	a2, 5(sp)
80202c1c: 09 46                        	addi	a2, zero, 2
80202c1e: 97 00 00 00                  	auipc	ra, 0
80202c22: e7 80 e0 89                  	jalr	-1890(ra)
80202c26: a2 60                        	ld	ra, 8(sp)
80202c28: 41 01                        	addi	sp, sp, 16
80202c2a: 82 80                        	ret
80202c2c: 9b 56 06 01                  	srliw	a3, a2, 16
80202c30: 4c 00                        	addi	a1, sp, 4
80202c32: 8d ee                        	bnez	a3, 58
80202c34: 9b 56 c6 00                  	srliw	a3, a2, 12
80202c38: 93 e6 06 0e                  	ori	a3, a3, 224
80202c3c: 23 02 d1 00                  	sb	a3, 4(sp)
80202c40: 9b 56 66 00                  	srliw	a3, a2, 6
80202c44: 93 f6 f6 03                  	andi	a3, a3, 63
80202c48: 93 e6 06 08                  	ori	a3, a3, 128
80202c4c: a3 02 d1 00                  	sb	a3, 5(sp)
80202c50: 13 76 f6 03                  	andi	a2, a2, 63
80202c54: 13 66 06 08                  	ori	a2, a2, 128
80202c58: 23 03 c1 00                  	sb	a2, 6(sp)
80202c5c: 0d 46                        	addi	a2, zero, 3
80202c5e: 97 00 00 00                  	auipc	ra, 0
80202c62: e7 80 e0 85                  	jalr	-1954(ra)
80202c66: a2 60                        	ld	ra, 8(sp)
80202c68: 41 01                        	addi	sp, sp, 16
80202c6a: 82 80                        	ret
80202c6c: 9b 56 26 01                  	srliw	a3, a2, 18
80202c70: 93 e6 06 0f                  	ori	a3, a3, 240
80202c74: 23 02 d1 00                  	sb	a3, 4(sp)
80202c78: 9b 56 c6 00                  	srliw	a3, a2, 12
80202c7c: 93 f6 f6 03                  	andi	a3, a3, 63
80202c80: 93 e6 06 08                  	ori	a3, a3, 128
80202c84: a3 02 d1 00                  	sb	a3, 5(sp)
80202c88: 9b 56 66 00                  	srliw	a3, a2, 6
80202c8c: 93 f6 f6 03                  	andi	a3, a3, 63
80202c90: 93 e6 06 08                  	ori	a3, a3, 128
80202c94: 23 03 d1 00                  	sb	a3, 6(sp)
80202c98: 13 76 f6 03                  	andi	a2, a2, 63
80202c9c: 13 66 06 08                  	ori	a2, a2, 128
80202ca0: a3 03 c1 00                  	sb	a2, 7(sp)
80202ca4: 11 46                        	addi	a2, zero, 4
80202ca6: 97 00 00 00                  	auipc	ra, 0
80202caa: e7 80 60 81                  	jalr	-2026(ra)
80202cae: a2 60                        	ld	ra, 8(sp)
80202cb0: 41 01                        	addi	sp, sp, 16
80202cb2: 82 80                        	ret

0000000080202cb4 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h99d0fa3a9ff66bb1E:
80202cb4: 39 71                        	addi	sp, sp, -64
80202cb6: 06 fc                        	sd	ra, 56(sp)
80202cb8: 08 61                        	ld	a0, 0(a0)
80202cba: 90 75                        	ld	a2, 40(a1)
80202cbc: 94 71                        	ld	a3, 32(a1)
80202cbe: 2a e0                        	sd	a0, 0(sp)
80202cc0: 32 f8                        	sd	a2, 48(sp)
80202cc2: 36 f4                        	sd	a3, 40(sp)
80202cc4: 88 6d                        	ld	a0, 24(a1)
80202cc6: 90 69                        	ld	a2, 16(a1)
80202cc8: 94 65                        	ld	a3, 8(a1)
80202cca: 8c 61                        	ld	a1, 0(a1)
80202ccc: 2a f0                        	sd	a0, 32(sp)
80202cce: 32 ec                        	sd	a2, 24(sp)
80202cd0: 36 e8                        	sd	a3, 16(sp)
80202cd2: 2e e4                        	sd	a1, 8(sp)

0000000080202cd4 .LBB158_1:
80202cd4: 97 25 00 00                  	auipc	a1, 2
80202cd8: 93 85 45 40                  	addi	a1, a1, 1028
80202cdc: 0a 85                        	add	a0, zero, sp
80202cde: 30 00                        	addi	a2, sp, 8
80202ce0: 97 00 00 00                  	auipc	ra, 0
80202ce4: e7 80 00 04                  	jalr	64(ra)
80202ce8: e2 70                        	ld	ra, 56(sp)
80202cea: 21 61                        	addi	sp, sp, 64
80202cec: 82 80                        	ret

0000000080202cee _ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17ha5d29d1af7bdcf5aE:
80202cee: 39 71                        	addi	sp, sp, -64
80202cf0: 06 fc                        	sd	ra, 56(sp)
80202cf2: 10 75                        	ld	a2, 40(a0)
80202cf4: 18 71                        	ld	a4, 32(a0)
80202cf6: 94 71                        	ld	a3, 32(a1)
80202cf8: 8c 75                        	ld	a1, 40(a1)
80202cfa: 32 f8                        	sd	a2, 48(sp)
80202cfc: 3a f4                        	sd	a4, 40(sp)
80202cfe: 10 6d                        	ld	a2, 24(a0)
80202d00: 18 69                        	ld	a4, 16(a0)
80202d02: 1c 65                        	ld	a5, 8(a0)
80202d04: 08 61                        	ld	a0, 0(a0)
80202d06: 32 f0                        	sd	a2, 32(sp)
80202d08: 3a ec                        	sd	a4, 24(sp)
80202d0a: 3e e8                        	sd	a5, 16(sp)
80202d0c: 2a e4                        	sd	a0, 8(sp)
80202d0e: 30 00                        	addi	a2, sp, 8
80202d10: 36 85                        	add	a0, zero, a3
80202d12: 97 00 00 00                  	auipc	ra, 0
80202d16: e7 80 e0 00                  	jalr	14(ra)
80202d1a: e2 70                        	ld	ra, 56(sp)
80202d1c: 21 61                        	addi	sp, sp, 64
80202d1e: 82 80                        	ret

0000000080202d20 _ZN4core3fmt5write17hab57c96bb669b93aE:
80202d20: 35 71                        	addi	sp, sp, -160
80202d22: 06 ed                        	sd	ra, 152(sp)
80202d24: 22 e9                        	sd	s0, 144(sp)
80202d26: 26 e5                        	sd	s1, 136(sp)
80202d28: 4a e1                        	sd	s2, 128(sp)
80202d2a: ce fc                        	sd	s3, 120(sp)
80202d2c: d2 f8                        	sd	s4, 112(sp)
80202d2e: d6 f4                        	sd	s5, 104(sp)
80202d30: da f0                        	sd	s6, 96(sp)
80202d32: de ec                        	sd	s7, 88(sp)
80202d34: e2 e8                        	sd	s8, 80(sp)
80202d36: e6 e4                        	sd	s9, 72(sp)
80202d38: ea e0                        	sd	s10, 64(sp)
80202d3a: 85 46                        	addi	a3, zero, 1
80202d3c: 96 16                        	slli	a3, a3, 37
80202d3e: 36 f8                        	sd	a3, 48(sp)
80202d40: 8d 46                        	addi	a3, zero, 3
80202d42: 23 0c d1 02                  	sb	a3, 56(sp)
80202d46: 04 6a                        	ld	s1, 16(a2)
80202d48: 02 e0                        	sd	zero, 0(sp)
80202d4a: 02 e8                        	sd	zero, 16(sp)
80202d4c: 2a f0                        	sd	a0, 32(sp)
80202d4e: 2e f4                        	sd	a1, 40(sp)
80202d50: 63 81 04 10                  	beqz	s1, 258
80202d54: 14 6e                        	ld	a3, 24(a2)
80202d56: 03 3a 86 00                  	ld	s4, 8(a2)
80202d5a: 83 39 06 00                  	ld	s3, 0(a2)
80202d5e: d2 8b                        	add	s7, zero, s4
80202d60: 63 63 da 00                  	bltu	s4, a3, 6
80202d64: b6 8b                        	add	s7, zero, a3
80202d66: 63 84 0b 14                  	beqz	s7, 328
80202d6a: 03 3b 06 02                  	ld	s6, 32(a2)
80202d6e: 83 3a 86 02                  	ld	s5, 40(a2)
80202d72: 83 b6 09 00                  	ld	a3, 0(s3)
80202d76: 03 b6 89 00                  	ld	a2, 8(s3)
80202d7a: 98 6d                        	ld	a4, 24(a1)
80202d7c: b6 85                        	add	a1, zero, a3
80202d7e: 02 97                        	jalr	a4
80202d80: 63 15 05 14                  	bnez	a0, 330
80202d84: 01 44                        	mv	s0, zero
80202d86: 93 84 04 03                  	addi	s1, s1, 48
80202d8a: 13 8d 89 01                  	addi	s10, s3, 24
80202d8e: 0a 89                        	add	s2, zero, sp
80202d90: 09 4c                        	addi	s8, zero, 2

0000000080202d92 .LBB162_41:
80202d92: 97 fc ff ff                  	auipc	s9, 1048575
80202d96: 93 8c 0c 5c                  	addi	s9, s9, 1472
80202d9a: 03 a5 84 ff                  	lw	a0, -8(s1)
80202d9e: 2a da                        	sw	a0, 52(sp)
80202da0: 03 85 04 00                  	lb	a0, 0(s1)
80202da4: 23 0c a1 02                  	sb	a0, 56(sp)
80202da8: 03 a5 c4 ff                  	lw	a0, -4(s1)
80202dac: 2a d8                        	sw	a0, 48(sp)
80202dae: 03 b6 84 fe                  	ld	a2, -24(s1)
80202db2: 03 b5 04 ff                  	ld	a0, -16(s1)
80202db6: 09 ce                        	beqz	a2, 26
80202db8: 81 45                        	mv	a1, zero
80202dba: 63 0e 86 01                  	beq	a2, s8, 28
80202dbe: 63 77 55 13                  	bgeu	a0, s5, 302
80202dc2: 12 05                        	slli	a0, a0, 4
80202dc4: 5a 95                        	add	a0, a0, s6
80202dc6: 0c 65                        	ld	a1, 8(a0)
80202dc8: 63 96 95 01                  	bne	a1, s9, 12
80202dcc: 08 61                        	ld	a0, 0(a0)
80202dce: 08 61                        	ld	a0, 0(a0)
80202dd0: 85 45                        	addi	a1, zero, 1
80202dd2: 11 a0                        	j	4
80202dd4: 81 45                        	mv	a1, zero
80202dd6: 2e e0                        	sd	a1, 0(sp)
80202dd8: 2a e4                        	sd	a0, 8(sp)
80202dda: 03 b6 84 fd                  	ld	a2, -40(s1)
80202dde: 03 b5 04 fe                  	ld	a0, -32(s1)
80202de2: 09 ce                        	beqz	a2, 26
80202de4: 81 45                        	mv	a1, zero
80202de6: 63 0c 86 01                  	beq	a2, s8, 24
80202dea: 63 71 55 11                  	bgeu	a0, s5, 258
80202dee: 12 05                        	slli	a0, a0, 4
80202df0: 5a 95                        	add	a0, a0, s6
80202df2: 0c 65                        	ld	a1, 8(a0)
80202df4: 63 93 95 05                  	bne	a1, s9, 70
80202df8: 08 61                        	ld	a0, 0(a0)
80202dfa: 08 61                        	ld	a0, 0(a0)
80202dfc: 85 45                        	addi	a1, zero, 1
80202dfe: 2e e8                        	sd	a1, 16(sp)
80202e00: 2a ec                        	sd	a0, 24(sp)
80202e02: 03 b5 04 fd                  	ld	a0, -48(s1)
80202e06: 63 71 55 05                  	bgeu	a0, s5, 66
80202e0a: 12 05                        	slli	a0, a0, 4
80202e0c: b3 05 ab 00                  	add	a1, s6, a0
80202e10: 88 61                        	ld	a0, 0(a1)
80202e12: 90 65                        	ld	a2, 8(a1)
80202e14: ca 85                        	add	a1, zero, s2
80202e16: 02 96                        	jalr	a2
80202e18: 4d e9                        	bnez	a0, 178
80202e1a: 05 04                        	addi	s0, s0, 1
80202e1c: 63 7a 74 09                  	bgeu	s0, s7, 148
80202e20: a2 76                        	ld	a3, 40(sp)
80202e22: 02 75                        	ld	a0, 32(sp)
80202e24: 83 35 8d ff                  	ld	a1, -8(s10)
80202e28: 03 36 0d 00                  	ld	a2, 0(s10)
80202e2c: 94 6e                        	ld	a3, 24(a3)
80202e2e: 93 84 84 03                  	addi	s1, s1, 56
80202e32: 41 0d                        	addi	s10, s10, 16
80202e34: 82 96                        	jalr	a3
80202e36: 35 d1                        	beqz	a0, -156
80202e38: 49 a8                        	j	146
80202e3a: 81 45                        	mv	a1, zero
80202e3c: 2e e8                        	sd	a1, 16(sp)
80202e3e: 2a ec                        	sd	a0, 24(sp)
80202e40: 03 b5 04 fd                  	ld	a0, -48(s1)
80202e44: e3 63 55 fd                  	bltu	a0, s5, -58

0000000080202e48 .LBB162_42:
80202e48: 17 26 00 00                  	auipc	a2, 2
80202e4c: 13 06 86 2d                  	addi	a2, a2, 728
80202e50: 55 a0                        	j	164
80202e52: 00 72                        	ld	s0, 32(a2)
80202e54: 14 76                        	ld	a3, 40(a2)
80202e56: 03 3a 86 00                  	ld	s4, 8(a2)
80202e5a: 83 39 06 00                  	ld	s3, 0(a2)
80202e5e: d2 8b                        	add	s7, zero, s4
80202e60: 63 63 da 00                  	bltu	s4, a3, 6
80202e64: b6 8b                        	add	s7, zero, a3
80202e66: 63 84 0b 04                  	beqz	s7, 72
80202e6a: 83 b6 09 00                  	ld	a3, 0(s3)
80202e6e: 03 b6 89 00                  	ld	a2, 8(s3)
80202e72: 98 6d                        	ld	a4, 24(a1)
80202e74: b6 85                        	add	a1, zero, a3
80202e76: 02 97                        	jalr	a4
80202e78: 29 e9                        	bnez	a0, 82
80202e7a: 81 44                        	mv	s1, zero
80202e7c: 21 04                        	addi	s0, s0, 8
80202e7e: 93 8a 89 01                  	addi	s5, s3, 24
80202e82: 0a 89                        	add	s2, zero, sp
80202e84: 10 60                        	ld	a2, 0(s0)
80202e86: 03 35 84 ff                  	ld	a0, -8(s0)
80202e8a: ca 85                        	add	a1, zero, s2
80202e8c: 02 96                        	jalr	a2
80202e8e: 15 ed                        	bnez	a0, 60
80202e90: 85 04                        	addi	s1, s1, 1
80202e92: 63 ff 74 01                  	bgeu	s1, s7, 30
80202e96: a2 76                        	ld	a3, 40(sp)
80202e98: 02 75                        	ld	a0, 32(sp)
80202e9a: 83 b5 8a ff                  	ld	a1, -8(s5)
80202e9e: 03 b6 0a 00                  	ld	a2, 0(s5)
80202ea2: 94 6e                        	ld	a3, 24(a3)
80202ea4: 41 04                        	addi	s0, s0, 16
80202ea6: c1 0a                        	addi	s5, s5, 16
80202ea8: 82 96                        	jalr	a3
80202eaa: 69 dd                        	beqz	a0, -38
80202eac: 39 a8                        	j	30
80202eae: 81 4b                        	mv	s7, zero
80202eb0: 63 ff 4b 01                  	bgeu	s7, s4, 30
80202eb4: 02 75                        	ld	a0, 32(sp)
80202eb6: a2 76                        	ld	a3, 40(sp)
80202eb8: 93 95 4b 00                  	slli	a1, s7, 4
80202ebc: 33 86 b9 00                  	add	a2, s3, a1
80202ec0: 0c 62                        	ld	a1, 0(a2)
80202ec2: 10 66                        	ld	a2, 8(a2)
80202ec4: 94 6e                        	ld	a3, 24(a3)
80202ec6: 82 96                        	jalr	a3
80202ec8: 19 c1                        	beqz	a0, 6
80202eca: 05 45                        	addi	a0, zero, 1
80202ecc: 11 a0                        	j	4
80202ece: 01 45                        	mv	a0, zero
80202ed0: 06 6d                        	ld	s10, 64(sp)
80202ed2: a6 6c                        	ld	s9, 72(sp)
80202ed4: 46 6c                        	ld	s8, 80(sp)
80202ed6: e6 6b                        	ld	s7, 88(sp)
80202ed8: 06 7b                        	ld	s6, 96(sp)
80202eda: a6 7a                        	ld	s5, 104(sp)
80202edc: 46 7a                        	ld	s4, 112(sp)
80202ede: e6 79                        	ld	s3, 120(sp)
80202ee0: 0a 69                        	ld	s2, 128(sp)
80202ee2: aa 64                        	ld	s1, 136(sp)
80202ee4: 4a 64                        	ld	s0, 144(sp)
80202ee6: ea 60                        	ld	ra, 152(sp)
80202ee8: 0d 61                        	addi	sp, sp, 160
80202eea: 82 80                        	ret

0000000080202eec .LBB162_43:
80202eec: 17 26 00 00                  	auipc	a2, 2
80202ef0: 13 06 c6 24                  	addi	a2, a2, 588
80202ef4: d6 85                        	add	a1, zero, s5
80202ef6: 97 f0 ff ff                  	auipc	ra, 1048575
80202efa: e7 80 e0 55                  	jalr	1374(ra)
80202efe: 00 00                        	unimp	

0000000080202f00 _ZN4core3fmt9Formatter12pad_integral17hd6c3049cc532f3cdE:
80202f00: 59 71                        	addi	sp, sp, -112
80202f02: 86 f4                        	sd	ra, 104(sp)
80202f04: a2 f0                        	sd	s0, 96(sp)
80202f06: a6 ec                        	sd	s1, 88(sp)
80202f08: ca e8                        	sd	s2, 80(sp)
80202f0a: ce e4                        	sd	s3, 72(sp)
80202f0c: d2 e0                        	sd	s4, 64(sp)
80202f0e: 56 fc                        	sd	s5, 56(sp)
80202f10: 5a f8                        	sd	s6, 48(sp)
80202f12: 5e f4                        	sd	s7, 40(sp)
80202f14: 62 f0                        	sd	s8, 32(sp)
80202f16: 66 ec                        	sd	s9, 24(sp)
80202f18: 6a e8                        	sd	s10, 16(sp)
80202f1a: 6e e4                        	sd	s11, 8(sp)
80202f1c: be 89                        	add	s3, zero, a5
80202f1e: 3a 89                        	add	s2, zero, a4
80202f20: b6 8a                        	add	s5, zero, a3
80202f22: 2a 84                        	add	s0, zero, a0
80202f24: b1 c9                        	beqz	a1, 84
80202f26: 03 65 04 03                  	lwu	a0, 48(s0)
80202f2a: 93 75 15 00                  	andi	a1, a0, 1
80202f2e: 37 0a 11 00                  	lui	s4, 272
80202f32: 99 c1                        	beqz	a1, 6
80202f34: 13 0a b0 02                  	addi	s4, zero, 43
80202f38: b3 8c 35 01                  	add	s9, a1, s3
80202f3c: 93 75 45 00                  	andi	a1, a0, 4
80202f40: a9 c5                        	beqz	a1, 74
80202f42: 81 45                        	mv	a1, zero
80202f44: 63 80 0a 02                  	beqz	s5, 32
80202f48: d6 86                        	add	a3, zero, s5
80202f4a: 32 87                        	add	a4, zero, a2
80202f4c: 83 47 07 00                  	lbu	a5, 0(a4)
80202f50: 05 07                        	addi	a4, a4, 1
80202f52: 93 f7 07 0c                  	andi	a5, a5, 192
80202f56: 93 c7 07 08                  	xori	a5, a5, 128
80202f5a: 93 b7 17 00                  	seqz	a5, a5
80202f5e: fd 16                        	addi	a3, a3, -1
80202f60: be 95                        	add	a1, a1, a5
80202f62: ed f6                        	bnez	a3, -22
80202f64: b3 86 5c 01                  	add	a3, s9, s5
80202f68: b3 8c b6 40                  	sub	s9, a3, a1
80202f6c: 32 8b                        	add	s6, zero, a2
80202f6e: 0c 60                        	ld	a1, 0(s0)
80202f70: 85 4d                        	addi	s11, zero, 1
80202f72: 63 81 b5 03                  	beq	a1, s11, 34
80202f76: a9 a0                        	j	74
80202f78: 03 65 04 03                  	lwu	a0, 48(s0)
80202f7c: 93 8c 19 00                  	addi	s9, s3, 1
80202f80: 13 0a d0 02                  	addi	s4, zero, 45
80202f84: 93 75 45 00                  	andi	a1, a0, 4
80202f88: cd fd                        	bnez	a1, -70
80202f8a: 01 4b                        	mv	s6, zero
80202f8c: 0c 60                        	ld	a1, 0(s0)
80202f8e: 85 4d                        	addi	s11, zero, 1
80202f90: 63 98 b5 03                  	bne	a1, s11, 48
80202f94: 03 3d 84 00                  	ld	s10, 8(s0)
80202f98: 63 f4 ac 03                  	bgeu	s9, s10, 40
80202f9c: 21 89                        	andi	a0, a0, 8
80202f9e: 2d e1                        	bnez	a0, 98
80202fa0: 03 45 84 03                  	lbu	a0, 56(s0)
80202fa4: 05 46                        	addi	a2, zero, 1
80202fa6: 8d 46                        	addi	a3, zero, 3
80202fa8: 85 45                        	addi	a1, zero, 1
80202faa: 63 03 d5 00                  	beq	a0, a3, 6
80202fae: aa 85                        	add	a1, zero, a0
80202fb0: 33 05 9d 41                  	sub	a0, s10, s9
80202fb4: 63 49 b6 08                  	blt	a2, a1, 146
80202fb8: d1 e9                        	bnez	a1, 148
80202fba: 2a 8c                        	add	s8, zero, a0
80202fbc: 01 45                        	mv	a0, zero
80202fbe: 5d a0                        	j	166
80202fc0: 22 85                        	add	a0, zero, s0
80202fc2: d2 85                        	add	a1, zero, s4
80202fc4: 5a 86                        	add	a2, zero, s6
80202fc6: d6 86                        	add	a3, zero, s5
80202fc8: 97 00 00 00                  	auipc	ra, 0
80202fcc: e7 80 80 15                  	jalr	344(ra)
80202fd0: 01 e9                        	bnez	a0, 16
80202fd2: 0c 74                        	ld	a1, 40(s0)
80202fd4: 08 70                        	ld	a0, 32(s0)
80202fd6: 94 6d                        	ld	a3, 24(a1)
80202fd8: ca 85                        	add	a1, zero, s2
80202fda: 4e 86                        	add	a2, zero, s3
80202fdc: 82 96                        	jalr	a3
80202fde: aa 8d                        	add	s11, zero, a0
80202fe0: 6e 85                        	add	a0, zero, s11
80202fe2: a2 6d                        	ld	s11, 8(sp)
80202fe4: 42 6d                        	ld	s10, 16(sp)
80202fe6: e2 6c                        	ld	s9, 24(sp)
80202fe8: 02 7c                        	ld	s8, 32(sp)
80202fea: a2 7b                        	ld	s7, 40(sp)
80202fec: 42 7b                        	ld	s6, 48(sp)
80202fee: e2 7a                        	ld	s5, 56(sp)
80202ff0: 06 6a                        	ld	s4, 64(sp)
80202ff2: a6 69                        	ld	s3, 72(sp)
80202ff4: 46 69                        	ld	s2, 80(sp)
80202ff6: e6 64                        	ld	s1, 88(sp)
80202ff8: 06 74                        	ld	s0, 96(sp)
80202ffa: a6 70                        	ld	ra, 104(sp)
80202ffc: 65 61                        	addi	sp, sp, 112
80202ffe: 82 80                        	ret
80203000: 83 6b 44 03                  	lwu	s7, 52(s0)
80203004: 13 05 00 03                  	addi	a0, zero, 48
80203008: 03 4c 84 03                  	lbu	s8, 56(s0)
8020300c: 48 d8                        	sw	a0, 52(s0)
8020300e: 85 4d                        	addi	s11, zero, 1
80203010: 23 0c b4 03                  	sb	s11, 56(s0)
80203014: 22 85                        	add	a0, zero, s0
80203016: d2 85                        	add	a1, zero, s4
80203018: 5a 86                        	add	a2, zero, s6
8020301a: d6 86                        	add	a3, zero, s5
8020301c: 97 00 00 00                  	auipc	ra, 0
80203020: e7 80 40 10                  	jalr	260(ra)
80203024: 55 fd                        	bnez	a0, -68
80203026: 03 45 84 03                  	lbu	a0, 56(s0)
8020302a: 05 46                        	addi	a2, zero, 1
8020302c: 8d 46                        	addi	a3, zero, 3
8020302e: 85 45                        	addi	a1, zero, 1
80203030: 63 03 d5 00                  	beq	a0, a3, 6
80203034: aa 85                        	add	a1, zero, a0
80203036: 33 05 9d 41                  	sub	a0, s10, s9
8020303a: 63 4b b6 00                  	blt	a2, a1, 22
8020303e: 81 ed                        	bnez	a1, 24
80203040: aa 8a                        	add	s5, zero, a0
80203042: 01 45                        	mv	a0, zero
80203044: 41 a0                        	j	128
80203046: 0d 46                        	addi	a2, zero, 3
80203048: 63 99 c5 00                  	bne	a1, a2, 18
8020304c: 01 4c                        	mv	s8, zero
8020304e: 19 a8                        	j	22
80203050: 0d 46                        	addi	a2, zero, 3
80203052: 63 94 c5 06                  	bne	a1, a2, 104
80203056: 81 4a                        	mv	s5, zero
80203058: b5 a0                        	j	108
8020305a: 93 05 15 00                  	addi	a1, a0, 1
8020305e: 05 81                        	srli	a0, a0, 1
80203060: 13 dc 15 00                  	srli	s8, a1, 1
80203064: 93 04 15 00                  	addi	s1, a0, 1
80203068: fd 14                        	addi	s1, s1, -1
8020306a: 81 c8                        	beqz	s1, 16
8020306c: 0c 74                        	ld	a1, 40(s0)
8020306e: 08 70                        	ld	a0, 32(s0)
80203070: 90 71                        	ld	a2, 32(a1)
80203072: 4c 58                        	lw	a1, 52(s0)
80203074: 02 96                        	jalr	a2
80203076: 6d d9                        	beqz	a0, -14
80203078: 85 a0                        	j	96
8020307a: 83 6b 44 03                  	lwu	s7, 52(s0)
8020307e: 22 85                        	add	a0, zero, s0
80203080: d2 85                        	add	a1, zero, s4
80203082: 5a 86                        	add	a2, zero, s6
80203084: d6 86                        	add	a3, zero, s5
80203086: 97 00 00 00                  	auipc	ra, 0
8020308a: e7 80 a0 09                  	jalr	154(ra)
8020308e: 85 4d                        	addi	s11, zero, 1
80203090: 21 f9                        	bnez	a0, -176
80203092: 0c 74                        	ld	a1, 40(s0)
80203094: 08 70                        	ld	a0, 32(s0)
80203096: 94 6d                        	ld	a3, 24(a1)
80203098: ca 85                        	add	a1, zero, s2
8020309a: 4e 86                        	add	a2, zero, s3
8020309c: 82 96                        	jalr	a3
8020309e: 29 f1                        	bnez	a0, -190
802030a0: 03 39 04 02                  	ld	s2, 32(s0)
802030a4: 00 74                        	ld	s0, 40(s0)
802030a6: 93 04 1c 00                  	addi	s1, s8, 1
802030aa: fd 14                        	addi	s1, s1, -1
802030ac: b5 c0                        	beqz	s1, 100
802030ae: 10 70                        	ld	a2, 32(s0)
802030b0: 4a 85                        	add	a0, zero, s2
802030b2: de 85                        	add	a1, zero, s7
802030b4: 02 96                        	jalr	a2
802030b6: 75 d9                        	beqz	a0, -12
802030b8: 25 b7                        	j	-216
802030ba: 93 05 15 00                  	addi	a1, a0, 1
802030be: 05 81                        	srli	a0, a0, 1
802030c0: 93 da 15 00                  	srli	s5, a1, 1
802030c4: 93 04 15 00                  	addi	s1, a0, 1
802030c8: fd 14                        	addi	s1, s1, -1
802030ca: 89 c8                        	beqz	s1, 18
802030cc: 0c 74                        	ld	a1, 40(s0)
802030ce: 08 70                        	ld	a0, 32(s0)
802030d0: 90 71                        	ld	a2, 32(a1)
802030d2: 4c 58                        	lw	a1, 52(s0)
802030d4: 02 96                        	jalr	a2
802030d6: 6d d9                        	beqz	a0, -14
802030d8: 85 4d                        	addi	s11, zero, 1
802030da: 19 b7                        	j	-250
802030dc: 0c 74                        	ld	a1, 40(s0)
802030de: 03 6a 44 03                  	lwu	s4, 52(s0)
802030e2: 08 70                        	ld	a0, 32(s0)
802030e4: 94 6d                        	ld	a3, 24(a1)
802030e6: ca 85                        	add	a1, zero, s2
802030e8: 4e 86                        	add	a2, zero, s3
802030ea: 82 96                        	jalr	a3
802030ec: 85 4d                        	addi	s11, zero, 1
802030ee: e3 19 05 ee                  	bnez	a0, -270
802030f2: 03 39 04 02                  	ld	s2, 32(s0)
802030f6: 83 39 84 02                  	ld	s3, 40(s0)
802030fa: 93 84 1a 00                  	addi	s1, s5, 1
802030fe: fd 14                        	addi	s1, s1, -1
80203100: 91 c8                        	beqz	s1, 20
80203102: 03 b6 09 02                  	ld	a2, 32(s3)
80203106: 4a 85                        	add	a0, zero, s2
80203108: d2 85                        	add	a1, zero, s4
8020310a: 02 96                        	jalr	a2
8020310c: 6d d9                        	beqz	a0, -14
8020310e: c9 bd                        	j	-302
80203110: 81 4d                        	mv	s11, zero
80203112: f9 b5                        	j	-306
80203114: 81 4d                        	mv	s11, zero
80203116: 23 2a 74 03                  	sw	s7, 52(s0)
8020311a: 23 0c 84 03                  	sb	s8, 56(s0)
8020311e: c9 b5                        	j	-318

0000000080203120 _ZN4core3fmt9Formatter12pad_integral12write_prefix17hf78ea515610d6c2eE:
80203120: 01 11                        	addi	sp, sp, -32
80203122: 06 ec                        	sd	ra, 24(sp)
80203124: 22 e8                        	sd	s0, 16(sp)
80203126: 26 e4                        	sd	s1, 8(sp)
80203128: 4a e0                        	sd	s2, 0(sp)
8020312a: 13 97 05 02                  	slli	a4, a1, 32
8020312e: 01 93                        	srli	a4, a4, 32
80203130: b7 07 11 00                  	lui	a5, 272
80203134: 36 89                        	add	s2, zero, a3
80203136: b2 84                        	add	s1, zero, a2
80203138: 2a 84                        	add	s0, zero, a0
8020313a: 63 09 f7 00                  	beq	a4, a5, 18
8020313e: 10 74                        	ld	a2, 40(s0)
80203140: 08 70                        	ld	a0, 32(s0)
80203142: 10 72                        	ld	a2, 32(a2)
80203144: 02 96                        	jalr	a2
80203146: aa 85                        	add	a1, zero, a0
80203148: 05 45                        	addi	a0, zero, 1
8020314a: 91 e9                        	bnez	a1, 20
8020314c: 81 c8                        	beqz	s1, 16
8020314e: 0c 74                        	ld	a1, 40(s0)
80203150: 08 70                        	ld	a0, 32(s0)
80203152: 94 6d                        	ld	a3, 24(a1)
80203154: a6 85                        	add	a1, zero, s1
80203156: 4a 86                        	add	a2, zero, s2
80203158: 82 96                        	jalr	a3
8020315a: 11 a0                        	j	4
8020315c: 01 45                        	mv	a0, zero
8020315e: 02 69                        	ld	s2, 0(sp)
80203160: a2 64                        	ld	s1, 8(sp)
80203162: 42 64                        	ld	s0, 16(sp)
80203164: e2 60                        	ld	ra, 24(sp)
80203166: 05 61                        	addi	sp, sp, 32
80203168: 82 80                        	ret

000000008020316a _ZN4core3fmt9Formatter3pad17h017f758b28b77478E:
8020316a: 39 71                        	addi	sp, sp, -64
8020316c: 06 fc                        	sd	ra, 56(sp)
8020316e: 22 f8                        	sd	s0, 48(sp)
80203170: 26 f4                        	sd	s1, 40(sp)
80203172: 4a f0                        	sd	s2, 32(sp)
80203174: 4e ec                        	sd	s3, 24(sp)
80203176: 52 e8                        	sd	s4, 16(sp)
80203178: 56 e4                        	sd	s5, 8(sp)
8020317a: 5a e0                        	sd	s6, 0(sp)
8020317c: 2a 8b                        	add	s6, zero, a0
8020317e: 83 33 05 00                  	ld	t2, 0(a0)
80203182: 08 69                        	ld	a0, 16(a0)
80203184: 85 46                        	addi	a3, zero, 1
80203186: 32 8a                        	add	s4, zero, a2
80203188: 2e 89                        	add	s2, zero, a1
8020318a: 63 95 d3 00                  	bne	t2, a3, 10
8020318e: 63 05 d5 00                  	beq	a0, a3, 10
80203192: 09 aa                        	j	274
80203194: 63 11 d5 18                  	bne	a0, a3, 386
80203198: 63 0c 0a 0c                  	beqz	s4, 216
8020319c: 03 35 8b 01                  	ld	a0, 24(s6)
802031a0: 81 45                        	mv	a1, zero
802031a2: 33 07 49 01                  	add	a4, s2, s4
802031a6: 93 06 15 00                  	addi	a3, a0, 1
802031aa: 7d 5e                        	addi	t3, zero, -1
802031ac: 13 03 f0 0d                  	addi	t1, zero, 223
802031b0: 13 08 00 0f                  	addi	a6, zero, 240
802031b4: b7 08 1c 00                  	lui	a7, 448
802031b8: b7 02 11 00                  	lui	t0, 272
802031bc: ca 87                        	add	a5, zero, s2
802031be: 4a 85                        	add	a0, zero, s2
802031c0: 03 84 07 00                  	lb	s0, 0(a5)
802031c4: 13 86 17 00                  	addi	a2, a5, 1
802031c8: 93 74 f4 0f                  	andi	s1, s0, 255
802031cc: 63 54 8e 00                  	bge	t3, s0, 8
802031d0: b2 87                        	add	a5, zero, a2
802031d2: 69 a0                        	j	138
802031d4: 63 03 e6 04                  	beq	a2, a4, 70
802031d8: 03 c4 17 00                  	lbu	s0, 1(a5)
802031dc: 13 86 27 00                  	addi	a2, a5, 2
802031e0: 13 74 f4 03                  	andi	s0, s0, 63
802031e4: b2 87                        	add	a5, zero, a2
802031e6: 93 fe f4 01                  	andi	t4, s1, 31
802031ea: 63 7f 93 02                  	bgeu	t1, s1, 62
802031ee: 63 02 e6 04                  	beq	a2, a4, 68
802031f2: 03 4f 06 00                  	lbu	t5, 0(a2)
802031f6: 93 07 16 00                  	addi	a5, a2, 1
802031fa: 13 76 ff 03                  	andi	a2, t5, 63
802031fe: 3e 8f                        	add	t5, zero, a5
80203200: 1a 04                        	slli	s0, s0, 6
80203202: 51 8c                        	or	s0, s0, a2
80203204: 63 ed 04 03                  	bltu	s1, a6, 58
80203208: 63 00 ef 04                  	beq	t5, a4, 64
8020320c: 03 46 0f 00                  	lbu	a2, 0(t5)
80203210: 93 07 1f 00                  	addi	a5, t5, 1
80203214: 13 76 f6 03                  	andi	a2, a2, 63
80203218: 0d a8                        	j	50
8020321a: 01 44                        	mv	s0, zero
8020321c: b2 87                        	add	a5, zero, a2
8020321e: 3a 86                        	add	a2, zero, a4
80203220: 93 fe f4 01                  	andi	t4, s1, 31
80203224: e3 65 93 fc                  	bltu	t1, s1, -54
80203228: 13 96 6e 00                  	slli	a2, t4, 6
8020322c: b3 64 c4 00                  	or	s1, s0, a2
80203230: 35 a0                        	j	44
80203232: 01 46                        	mv	a2, zero
80203234: 3a 8f                        	add	t5, zero, a4
80203236: 1a 04                        	slli	s0, s0, 6
80203238: 51 8c                        	or	s0, s0, a2
8020323a: e3 f7 04 fd                  	bgeu	s1, a6, -50
8020323e: 13 96 ce 00                  	slli	a2, t4, 12
80203242: b3 64 c4 00                  	or	s1, s0, a2
80203246: 19 a8                        	j	22
80203248: 01 46                        	mv	a2, zero
8020324a: 93 94 2e 01                  	slli	s1, t4, 18
8020324e: b3 f4 14 01                  	and	s1, s1, a7
80203252: 1a 04                        	slli	s0, s0, 6
80203254: c1 8c                        	or	s1, s1, s0
80203256: d1 8c                        	or	s1, s1, a2
80203258: 63 83 54 04                  	beq	s1, t0, 70
8020325c: fd 16                        	addi	a3, a3, -1
8020325e: 99 ca                        	beqz	a3, 22
80203260: 33 85 a5 40                  	sub	a0, a1, a0
80203264: b3 05 f5 00                  	add	a1, a0, a5
80203268: 3e 85                        	add	a0, zero, a5
8020326a: e3 1b f7 f4                  	bne	a4, a5, -170
8020326e: 05 a8                        	j	48
80203270: 01 4a                        	mv	s4, zero
80203272: 35 a0                        	j	44
80203274: 37 05 11 00                  	lui	a0, 272
80203278: 63 83 a4 02                  	beq	s1, a0, 38
8020327c: 89 cd                        	beqz	a1, 26
8020327e: 63 8c 45 01                  	beq	a1, s4, 24
80203282: 63 f4 45 13                  	bgeu	a1, s4, 296
80203286: 33 05 b9 00                  	add	a0, s2, a1
8020328a: 03 05 05 00                  	lb	a0, 0(a0)
8020328e: 13 06 00 fc                  	addi	a2, zero, -64
80203292: 63 4c c5 10                  	blt	a0, a2, 280
80203296: 4a 85                        	add	a0, zero, s2
80203298: 19 c1                        	beqz	a0, 6
8020329a: 2a 89                        	add	s2, zero, a0
8020329c: 2e 8a                        	add	s4, zero, a1
8020329e: 05 45                        	addi	a0, zero, 1
802032a0: 63 9b a3 06                  	bne	t2, a0, 118
802032a4: 81 45                        	mv	a1, zero
802032a6: 63 00 0a 02                  	beqz	s4, 32
802032aa: 52 85                        	add	a0, zero, s4
802032ac: 4a 86                        	add	a2, zero, s2
802032ae: 83 46 06 00                  	lbu	a3, 0(a2)
802032b2: 05 06                        	addi	a2, a2, 1
802032b4: 93 f6 06 0c                  	andi	a3, a3, 192
802032b8: 93 c6 06 08                  	xori	a3, a3, 128
802032bc: 93 b6 16 00                  	seqz	a3, a3
802032c0: 7d 15                        	addi	a0, a0, -1
802032c2: b6 95                        	add	a1, a1, a3
802032c4: 6d f5                        	bnez	a0, -22
802032c6: 03 35 8b 00                  	ld	a0, 8(s6)
802032ca: b3 05 ba 40                  	sub	a1, s4, a1
802032ce: 63 f4 a5 04                  	bgeu	a1, a0, 72
802032d2: 81 45                        	mv	a1, zero
802032d4: 63 00 0a 02                  	beqz	s4, 32
802032d8: 52 86                        	add	a2, zero, s4
802032da: ca 86                        	add	a3, zero, s2
802032dc: 03 c7 06 00                  	lbu	a4, 0(a3)
802032e0: 85 06                        	addi	a3, a3, 1
802032e2: 13 77 07 0c                  	andi	a4, a4, 192
802032e6: 13 47 07 08                  	xori	a4, a4, 128
802032ea: 13 37 17 00                  	seqz	a4, a4
802032ee: 7d 16                        	addi	a2, a2, -1
802032f0: ba 95                        	add	a1, a1, a4
802032f2: 6d f6                        	bnez	a2, -22
802032f4: 83 46 8b 03                  	lbu	a3, 56(s6)
802032f8: 01 46                        	mv	a2, zero
802032fa: 0d 47                        	addi	a4, zero, 3
802032fc: b3 85 45 41                  	sub	a1, a1, s4
80203300: 63 83 e6 00                  	beq	a3, a4, 6
80203304: 36 86                        	add	a2, zero, a3
80203306: 85 46                        	addi	a3, zero, 1
80203308: 2e 95                        	add	a0, a0, a1
8020330a: 63 ca c6 02                  	blt	a3, a2, 52
8020330e: 1d ea                        	bnez	a2, 54
80203310: aa 8a                        	add	s5, zero, a0
80203312: 01 45                        	mv	a0, zero
80203314: 3d a8                        	j	62
80203316: 83 35 8b 02                  	ld	a1, 40(s6)
8020331a: 03 35 0b 02                  	ld	a0, 32(s6)
8020331e: 94 6d                        	ld	a3, 24(a1)
80203320: ca 85                        	add	a1, zero, s2
80203322: 52 86                        	add	a2, zero, s4
80203324: 82 96                        	jalr	a3
80203326: aa 84                        	add	s1, zero, a0
80203328: 26 85                        	add	a0, zero, s1
8020332a: 02 6b                        	ld	s6, 0(sp)
8020332c: a2 6a                        	ld	s5, 8(sp)
8020332e: 42 6a                        	ld	s4, 16(sp)
80203330: e2 69                        	ld	s3, 24(sp)
80203332: 02 79                        	ld	s2, 32(sp)
80203334: a2 74                        	ld	s1, 40(sp)
80203336: 42 74                        	ld	s0, 48(sp)
80203338: e2 70                        	ld	ra, 56(sp)
8020333a: 21 61                        	addi	sp, sp, 64
8020333c: 82 80                        	ret
8020333e: 8d 45                        	addi	a1, zero, 3
80203340: 63 14 b6 00                  	bne	a2, a1, 8
80203344: 81 4a                        	mv	s5, zero
80203346: 31 a0                        	j	12
80203348: 93 05 15 00                  	addi	a1, a0, 1
8020334c: 05 81                        	srli	a0, a0, 1
8020334e: 93 da 15 00                  	srli	s5, a1, 1
80203352: 13 04 15 00                  	addi	s0, a0, 1
80203356: 7d 14                        	addi	s0, s0, -1
80203358: 01 cc                        	beqz	s0, 24
8020335a: 83 35 8b 02                  	ld	a1, 40(s6)
8020335e: 03 35 0b 02                  	ld	a0, 32(s6)
80203362: 90 71                        	ld	a2, 32(a1)
80203364: 83 25 4b 03                  	lw	a1, 52(s6)
80203368: 02 96                        	jalr	a2
8020336a: 75 d5                        	beqz	a0, -20
8020336c: 85 44                        	addi	s1, zero, 1
8020336e: 6d bf                        	j	-70
80203370: 83 35 8b 02                  	ld	a1, 40(s6)
80203374: 83 69 4b 03                  	lwu	s3, 52(s6)
80203378: 03 35 0b 02                  	ld	a0, 32(s6)
8020337c: 94 6d                        	ld	a3, 24(a1)
8020337e: ca 85                        	add	a1, zero, s2
80203380: 52 86                        	add	a2, zero, s4
80203382: 82 96                        	jalr	a3
80203384: 85 44                        	addi	s1, zero, 1
80203386: 4d f1                        	bnez	a0, -94
80203388: 03 39 0b 02                  	ld	s2, 32(s6)
8020338c: 03 3a 8b 02                  	ld	s4, 40(s6)
80203390: 13 84 1a 00                  	addi	s0, s5, 1
80203394: 7d 14                        	addi	s0, s0, -1
80203396: 01 c8                        	beqz	s0, 16
80203398: 03 36 0a 02                  	ld	a2, 32(s4)
8020339c: 4a 85                        	add	a0, zero, s2
8020339e: ce 85                        	add	a1, zero, s3
802033a0: 02 96                        	jalr	a2
802033a2: 6d d9                        	beqz	a0, -14
802033a4: 51 b7                        	j	-124
802033a6: 81 44                        	mv	s1, zero
802033a8: 41 b7                        	j	-128
802033aa: 01 45                        	mv	a0, zero
802033ac: e3 09 05 ee                  	beqz	a0, -270
802033b0: ed b5                        	j	-278

00000000802033b2 _ZN4core3fmt9Formatter15debug_lower_hex17h58b529c6b82c61dfE:
802033b2: 03 45 05 03                  	lbu	a0, 48(a0)
802033b6: 41 89                        	andi	a0, a0, 16
802033b8: 11 81                        	srli	a0, a0, 4
802033ba: 82 80                        	ret

00000000802033bc _ZN4core3fmt9Formatter15debug_upper_hex17hbfe6fe7aaa09bf33E:
802033bc: 03 45 05 03                  	lbu	a0, 48(a0)
802033c0: 13 75 05 02                  	andi	a0, a0, 32
802033c4: 15 81                        	srli	a0, a0, 5
802033c6: 82 80                        	ret

00000000802033c8 _ZN4core3fmt9Formatter12debug_struct17h6ce77db37abc6f74E:
802033c8: 01 11                        	addi	sp, sp, -32
802033ca: 06 ec                        	sd	ra, 24(sp)
802033cc: 22 e8                        	sd	s0, 16(sp)
802033ce: 26 e4                        	sd	s1, 8(sp)
802033d0: 2e 84                        	add	s0, zero, a1
802033d2: 98 75                        	ld	a4, 40(a1)
802033d4: 8c 71                        	ld	a1, 32(a1)
802033d6: 18 6f                        	ld	a4, 24(a4)
802033d8: aa 84                        	add	s1, zero, a0
802033da: 2e 85                        	add	a0, zero, a1
802033dc: b2 85                        	add	a1, zero, a2
802033de: 36 86                        	add	a2, zero, a3
802033e0: 02 97                        	jalr	a4
802033e2: 80 e0                        	sd	s0, 0(s1)
802033e4: 23 84 a4 00                  	sb	a0, 8(s1)
802033e8: a3 84 04 00                  	sb	zero, 9(s1)
802033ec: a2 64                        	ld	s1, 8(sp)
802033ee: 42 64                        	ld	s0, 16(sp)
802033f0: e2 60                        	ld	ra, 24(sp)
802033f2: 05 61                        	addi	sp, sp, 32
802033f4: 82 80                        	ret

00000000802033f6 _ZN4core3fmt9Formatter11debug_tuple17h3e7836b24f51e394E:
802033f6: 01 11                        	addi	sp, sp, -32
802033f8: 06 ec                        	sd	ra, 24(sp)
802033fa: 22 e8                        	sd	s0, 16(sp)
802033fc: 26 e4                        	sd	s1, 8(sp)
802033fe: 4a e0                        	sd	s2, 0(sp)
80203400: 2e 84                        	add	s0, zero, a1
80203402: 98 75                        	ld	a4, 40(a1)
80203404: 8c 71                        	ld	a1, 32(a1)
80203406: 18 6f                        	ld	a4, 24(a4)
80203408: 36 89                        	add	s2, zero, a3
8020340a: aa 84                        	add	s1, zero, a0
8020340c: 2e 85                        	add	a0, zero, a1
8020340e: b2 85                        	add	a1, zero, a2
80203410: 36 86                        	add	a2, zero, a3
80203412: 02 97                        	jalr	a4
80203414: 93 35 19 00                  	seqz	a1, s2
80203418: 80 e0                        	sd	s0, 0(s1)
8020341a: 23 88 a4 00                  	sb	a0, 16(s1)
8020341e: 23 b4 04 00                  	sd	zero, 8(s1)
80203422: a3 88 b4 00                  	sb	a1, 17(s1)
80203426: 02 69                        	ld	s2, 0(sp)
80203428: a2 64                        	ld	s1, 8(sp)
8020342a: 42 64                        	ld	s0, 16(sp)
8020342c: e2 60                        	ld	ra, 24(sp)
8020342e: 05 61                        	addi	sp, sp, 32
80203430: 82 80                        	ret

0000000080203432 _ZN4core3fmt9Formatter10debug_list17h686a8f4ac8fa2970E:
80203432: 01 11                        	addi	sp, sp, -32
80203434: 06 ec                        	sd	ra, 24(sp)
80203436: 22 e8                        	sd	s0, 16(sp)
80203438: 26 e4                        	sd	s1, 8(sp)
8020343a: 2e 84                        	add	s0, zero, a1
8020343c: 8c 75                        	ld	a1, 40(a1)
8020343e: 14 70                        	ld	a3, 32(s0)
80203440: 98 6d                        	ld	a4, 24(a1)
80203442: aa 84                        	add	s1, zero, a0

0000000080203444 .LBB183_1:
80203444: 97 25 00 00                  	auipc	a1, 2
80203448: 93 85 f5 b8                  	addi	a1, a1, -1137
8020344c: 05 46                        	addi	a2, zero, 1
8020344e: 36 85                        	add	a0, zero, a3
80203450: 02 97                        	jalr	a4
80203452: 80 e0                        	sd	s0, 0(s1)
80203454: 23 84 a4 00                  	sb	a0, 8(s1)
80203458: a3 84 04 00                  	sb	zero, 9(s1)
8020345c: a2 64                        	ld	s1, 8(sp)
8020345e: 42 64                        	ld	s0, 16(sp)
80203460: e2 60                        	ld	ra, 24(sp)
80203462: 05 61                        	addi	sp, sp, 32
80203464: 82 80                        	ret

0000000080203466 _ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hd80063bf4fae91a8E:
80203466: 59 71                        	addi	sp, sp, -112
80203468: 86 f4                        	sd	ra, 104(sp)
8020346a: a2 f0                        	sd	s0, 96(sp)
8020346c: a6 ec                        	sd	s1, 88(sp)
8020346e: ca e8                        	sd	s2, 80(sp)
80203470: ce e4                        	sd	s3, 72(sp)
80203472: d2 e0                        	sd	s4, 64(sp)
80203474: 56 fc                        	sd	s5, 56(sp)
80203476: 5a f8                        	sd	s6, 48(sp)
80203478: 5e f4                        	sd	s7, 40(sp)
8020347a: 62 f0                        	sd	s8, 32(sp)
8020347c: 66 ec                        	sd	s9, 24(sp)
8020347e: 6a e8                        	sd	s10, 16(sp)
80203480: 6e e4                        	sd	s11, 8(sp)
80203482: 2e 84                        	add	s0, zero, a1
80203484: 8c 75                        	ld	a1, 40(a1)
80203486: 10 70                        	ld	a2, 32(s0)
80203488: 94 71                        	ld	a3, 32(a1)
8020348a: aa 84                        	add	s1, zero, a0
8020348c: 93 05 70 02                  	addi	a1, zero, 39
80203490: 32 85                        	add	a0, zero, a2
80203492: 82 96                        	jalr	a3
80203494: aa 85                        	add	a1, zero, a0
80203496: 05 45                        	addi	a0, zero, 1
80203498: 63 97 05 22                  	bnez	a1, 558
8020349c: 03 e9 04 00                  	lwu	s2, 0(s1)
802034a0: 13 05 10 02                  	addi	a0, zero, 33
802034a4: 89 44                        	addi	s1, zero, 2
802034a6: 63 4e 25 01                  	blt	a0, s2, 28
802034aa: 25 45                        	addi	a0, zero, 9
802034ac: 63 09 a9 02                  	beq	s2, a0, 50
802034b0: 29 45                        	addi	a0, zero, 10
802034b2: 63 09 a9 02                  	beq	s2, a0, 50
802034b6: 35 45                        	addi	a0, zero, 13
802034b8: 63 19 a9 02                  	bne	s2, a0, 50
802034bc: 93 09 20 07                  	addi	s3, zero, 114
802034c0: a1 aa                        	j	344
802034c2: 13 05 20 02                  	addi	a0, zero, 34
802034c6: 63 0a a9 00                  	beq	s2, a0, 20
802034ca: 13 05 70 02                  	addi	a0, zero, 39
802034ce: 63 06 a9 00                  	beq	s2, a0, 12
802034d2: 13 05 c0 05                  	addi	a0, zero, 92
802034d6: 63 1a a9 00                  	bne	s2, a0, 20
802034da: ca 89                        	add	s3, zero, s2
802034dc: 35 aa                        	j	316
802034de: 93 09 40 07                  	addi	s3, zero, 116
802034e2: 1d aa                        	j	310
802034e4: 93 09 e0 06                  	addi	s3, zero, 110
802034e8: 05 aa                        	j	304
802034ea: 4a 85                        	add	a0, zero, s2
802034ec: 97 10 00 00                  	auipc	ra, 1
802034f0: e7 80 00 c3                  	jalr	-976(ra)
802034f4: 25 e5                        	bnez	a0, 104
802034f6: 13 55 09 01                  	srli	a0, s2, 16
802034fa: 05 e5                        	bnez	a0, 40

00000000802034fc .LBB193_53:
802034fc: 97 25 00 00                  	auipc	a1, 2
80203500: 93 85 45 ef                  	addi	a1, a1, -268

0000000080203504 .LBB193_54:
80203504: 97 26 00 00                  	auipc	a3, 2
80203508: 93 86 e6 f3                  	addi	a3, a3, -194

000000008020350c .LBB193_55:
8020350c: 97 27 00 00                  	auipc	a5, 2
80203510: 93 87 87 05                  	addi	a5, a5, 88
80203514: 13 06 90 02                  	addi	a2, zero, 41
80203518: 13 07 20 12                  	addi	a4, zero, 290
8020351c: 13 08 50 13                  	addi	a6, zero, 309
80203520: 3d a0                        	j	46
80203522: 13 55 19 01                  	srli	a0, s2, 17
80203526: 63 11 05 1c                  	bnez	a0, 450

000000008020352a .LBB193_56:
8020352a: 97 25 00 00                  	auipc	a1, 2
8020352e: 93 85 f5 16                  	addi	a1, a1, 367

0000000080203532 .LBB193_57:
80203532: 97 26 00 00                  	auipc	a3, 2
80203536: 93 86 36 1b                  	addi	a3, a3, 435

000000008020353a .LBB193_58:
8020353a: 97 27 00 00                  	auipc	a5, 2
8020353e: 93 87 a7 25                  	addi	a5, a5, 602
80203542: 13 06 60 02                  	addi	a2, zero, 38
80203546: 13 07 f0 0a                  	addi	a4, zero, 175
8020354a: 13 08 30 1a                  	addi	a6, zero, 419
8020354e: 4a 85                        	add	a0, zero, s2
80203550: 97 00 00 00                  	auipc	ra, 0
80203554: e7 80 80 67                  	jalr	1656(ra)
80203558: 63 1c 05 22                  	bnez	a0, 568
8020355c: 13 65 19 00                  	ori	a0, s2, 1
80203560: 93 55 15 00                  	srli	a1, a0, 1
80203564: 4d 8d                        	or	a0, a0, a1
80203566: 93 55 25 00                  	srli	a1, a0, 2
8020356a: 4d 8d                        	or	a0, a0, a1
8020356c: 93 55 45 00                  	srli	a1, a0, 4
80203570: 4d 8d                        	or	a0, a0, a1
80203572: 93 55 85 00                  	srli	a1, a0, 8
80203576: 4d 8d                        	or	a0, a0, a1
80203578: 93 55 05 01                  	srli	a1, a0, 16
8020357c: 4d 8d                        	or	a0, a0, a1
8020357e: 93 55 05 02                  	srli	a1, a0, 32
80203582: 4d 8d                        	or	a0, a0, a1
80203584: 13 45 f5 ff                  	not	a0, a0
80203588: 93 55 15 00                  	srli	a1, a0, 1
8020358c: 37 56 55 05                  	lui	a2, 21845
80203590: 1b 06 56 55                  	addiw	a2, a2, 1365
80203594: 32 06                        	slli	a2, a2, 12
80203596: 13 06 56 55                  	addi	a2, a2, 1365
8020359a: 32 06                        	slli	a2, a2, 12
8020359c: 13 06 56 55                  	addi	a2, a2, 1365
802035a0: 32 06                        	slli	a2, a2, 12
802035a2: 13 06 56 55                  	addi	a2, a2, 1365
802035a6: f1 8d                        	and	a1, a1, a2
802035a8: 0d 8d                        	sub	a0, a0, a1
802035aa: b7 35 33 03                  	lui	a1, 13107
802035ae: 9b 85 35 33                  	addiw	a1, a1, 819
802035b2: b2 05                        	slli	a1, a1, 12
802035b4: 93 85 35 33                  	addi	a1, a1, 819
802035b8: b2 05                        	slli	a1, a1, 12
802035ba: 93 85 35 33                  	addi	a1, a1, 819
802035be: b2 05                        	slli	a1, a1, 12
802035c0: 93 85 35 33                  	addi	a1, a1, 819
802035c4: 33 76 b5 00                  	and	a2, a0, a1
802035c8: 09 81                        	srli	a0, a0, 2
802035ca: 6d 8d                        	and	a0, a0, a1
802035cc: 32 95                        	add	a0, a0, a2
802035ce: 93 55 45 00                  	srli	a1, a0, 4
802035d2: 2e 95                        	add	a0, a0, a1
802035d4: b7 f5 f0 00                  	lui	a1, 3855
802035d8: 9b 85 15 0f                  	addiw	a1, a1, 241
802035dc: b2 05                        	slli	a1, a1, 12
802035de: 93 85 f5 f0                  	addi	a1, a1, -241
802035e2: b2 05                        	slli	a1, a1, 12
802035e4: 93 85 15 0f                  	addi	a1, a1, 241
802035e8: b2 05                        	slli	a1, a1, 12
802035ea: 93 85 f5 f0                  	addi	a1, a1, -241
802035ee: 6d 8d                        	and	a0, a0, a1
802035f0: b7 05 01 01                  	lui	a1, 4112
802035f4: 9b 85 15 10                  	addiw	a1, a1, 257
802035f8: c2 05                        	slli	a1, a1, 16
802035fa: 93 85 15 10                  	addi	a1, a1, 257
802035fe: c2 05                        	slli	a1, a1, 16
80203600: 93 85 15 10                  	addi	a1, a1, 257
80203604: 33 05 b5 02                  	<unknown>
80203608: 61 91                        	srli	a0, a0, 56
8020360a: 01 15                        	addi	a0, a0, -32
8020360c: 1b 55 25 00                  	srliw	a0, a0, 2
80203610: 13 45 75 00                  	xori	a0, a0, 7
80203614: 2a e0                        	sd	a0, 0(sp)
80203616: 8d 44                        	addi	s1, zero, 3
80203618: 15 4a                        	addi	s4, zero, 5
8020361a: 13 95 09 02                  	slli	a0, s3, 32
8020361e: 93 5a 05 02                  	srli	s5, a0, 32
80203622: 37 0b 11 00                  	lui	s6, 272
80203626: 89 4b                        	addi	s7, zero, 2
80203628: 05 4c                        	addi	s8, zero, 1
8020362a: a9 4c                        	addi	s9, zero, 10
8020362c: 0d 4d                        	addi	s10, zero, 3
8020362e: 91 4d                        	addi	s11, zero, 4
80203630: 39 a0                        	j	14
80203632: 85 44                        	addi	s1, zero, 1
80203634: 10 74                        	ld	a2, 40(s0)
80203636: 08 70                        	ld	a0, 32(s0)
80203638: 10 72                        	ld	a2, 32(a2)
8020363a: 02 96                        	jalr	a2
8020363c: 45 e5                        	bnez	a0, 168
8020363e: 13 95 04 02                  	slli	a0, s1, 32
80203642: 01 91                        	srli	a0, a0, 32
80203644: 63 48 ac 00                  	blt	s8, a0, 16
80203648: 2d c9                        	beqz	a0, 114
8020364a: 63 88 6a 07                  	beq	s5, s6, 112
8020364e: 81 44                        	mv	s1, zero
80203650: ce 85                        	add	a1, zero, s3
80203652: cd b7                        	j	-30
80203654: 93 05 c0 05                  	addi	a1, zero, 92
80203658: e3 0d 75 fd                  	beq	a0, s7, -38
8020365c: 13 75 fa 0f                  	andi	a0, s4, 255
80203660: 8d 44                        	addi	s1, zero, 3
80203662: 63 c9 ab 00                  	blt	s7, a0, 18
80203666: 31 c9                        	beqz	a0, 84
80203668: 63 10 85 03                  	bne	a0, s8, 32
8020366c: 01 4a                        	mv	s4, zero
8020366e: 93 05 d0 07                  	addi	a1, zero, 125
80203672: c9 b7                        	j	-62
80203674: 63 05 a5 03                  	beq	a0, s10, 42
80203678: 11 4a                        	addi	s4, zero, 4
8020367a: e3 1d b5 fb                  	bne	a0, s11, -70
8020367e: 0d 4a                        	addi	s4, zero, 3
80203680: 93 05 50 07                  	addi	a1, zero, 117
80203684: 8d 44                        	addi	s1, zero, 3
80203686: 7d b7                        	j	-82
80203688: 02 66                        	ld	a2, 0(sp)
8020368a: 13 15 26 00                  	slli	a0, a2, 2
8020368e: 3b 55 a9 00                  	srlw	a0, s2, a0
80203692: 3d 89                        	andi	a0, a0, 15
80203694: 63 69 95 01                  	bltu	a0, s9, 18
80203698: 93 05 75 05                  	addi	a1, a0, 87
8020369c: 39 a0                        	j	14
8020369e: 09 4a                        	addi	s4, zero, 2
802036a0: 93 05 b0 07                  	addi	a1, zero, 123
802036a4: 41 bf                        	j	-112
802036a6: 93 65 05 03                  	ori	a1, a0, 48
802036aa: 01 45                        	mv	a0, zero
802036ac: 05 4a                        	addi	s4, zero, 1
802036ae: 01 c6                        	beqz	a2, 8
802036b0: 13 05 f6 ff                  	addi	a0, a2, -1
802036b4: 09 4a                        	addi	s4, zero, 2
802036b6: 2a e0                        	sd	a0, 0(sp)
802036b8: b5 bf                        	j	-132
802036ba: 0c 74                        	ld	a1, 40(s0)
802036bc: 08 70                        	ld	a0, 32(s0)
802036be: 90 71                        	ld	a2, 32(a1)
802036c0: 93 05 70 02                  	addi	a1, zero, 39
802036c4: 02 96                        	jalr	a2
802036c6: a2 6d                        	ld	s11, 8(sp)
802036c8: 42 6d                        	ld	s10, 16(sp)
802036ca: e2 6c                        	ld	s9, 24(sp)
802036cc: 02 7c                        	ld	s8, 32(sp)
802036ce: a2 7b                        	ld	s7, 40(sp)
802036d0: 42 7b                        	ld	s6, 48(sp)
802036d2: e2 7a                        	ld	s5, 56(sp)
802036d4: 06 6a                        	ld	s4, 64(sp)
802036d6: a6 69                        	ld	s3, 72(sp)
802036d8: 46 69                        	ld	s2, 80(sp)
802036da: e6 64                        	ld	s1, 88(sp)
802036dc: 06 74                        	ld	s0, 96(sp)
802036de: a6 70                        	ld	ra, 104(sp)
802036e0: 65 61                        	addi	sp, sp, 112
802036e2: 82 80                        	ret
802036e4: 05 45                        	addi	a0, zero, 1
802036e6: c5 b7                        	j	-32
802036e8: 37 05 f2 ff                  	lui	a0, 1048352
802036ec: 1b 05 05 e1                  	addiw	a0, a0, -496
802036f0: 3b 05 a9 00                  	addw	a0, s2, a0
802036f4: b7 05 03 00                  	lui	a1, 48
802036f8: 9b 85 05 e1                  	addiw	a1, a1, -496
802036fc: e3 60 b5 e6                  	bltu	a0, a1, -416
80203700: 37 f5 fc ff                  	lui	a0, 1048527
80203704: 1b 05 55 cb                  	addiw	a0, a0, -843
80203708: 4a 95                        	add	a0, a0, s2
8020370a: 01 25                        	sext.w	a0, a0
8020370c: b7 f5 0a 00                  	lui	a1, 175
80203710: 9b 85 55 db                  	addiw	a1, a1, -587
80203714: e3 64 b5 e4                  	bltu	a0, a1, -440
80203718: 37 05 fd ff                  	lui	a0, 1048528
8020371c: 1b 05 25 5e                  	addiw	a0, a0, 1506
80203720: 4a 95                        	add	a0, a0, s2
80203722: 01 25                        	sext.w	a0, a0
80203724: 93 05 20 5e                  	addi	a1, zero, 1506
80203728: e3 6a b5 e2                  	bltu	a0, a1, -460
8020372c: 37 15 fd ff                  	lui	a0, 1048529
80203730: 1b 05 f5 41                  	addiw	a0, a0, 1055
80203734: 4a 95                        	add	a0, a0, s2
80203736: 01 25                        	sext.w	a0, a0
80203738: 85 65                        	lui	a1, 1
8020373a: 9b 85 f5 c1                  	addiw	a1, a1, -993
8020373e: e3 6f b5 e0                  	bltu	a0, a1, -482
80203742: 37 35 fd ff                  	lui	a0, 1048531
80203746: 1b 05 e5 15                  	addiw	a0, a0, 350
8020374a: 4a 95                        	add	a0, a0, s2
8020374c: 01 25                        	sext.w	a0, a0
8020374e: b9 45                        	addi	a1, zero, 14
80203750: e3 66 b5 e0                  	bltu	a0, a1, -500
80203754: 37 05 20 00                  	lui	a0, 512
80203758: 79 35                        	addiw	a0, a0, -2
8020375a: 33 75 a9 00                  	and	a0, s2, a0
8020375e: b7 c5 02 00                  	lui	a1, 44
80203762: 9b 85 e5 81                  	addiw	a1, a1, -2018
80203766: e3 0b b5 de                  	beq	a0, a1, -522
8020376a: 37 65 fd ff                  	lui	a0, 1048534
8020376e: 1b 05 25 92                  	addiw	a0, a0, -1758
80203772: 4a 95                        	add	a0, a0, s2
80203774: 01 25                        	sext.w	a0, a0
80203776: 93 05 20 02                  	addi	a1, zero, 34
8020377a: e3 61 b5 de                  	bltu	a0, a1, -542
8020377e: 37 55 fd ff                  	lui	a0, 1048533
80203782: 1b 05 b5 8c                  	addiw	a0, a0, -1845
80203786: 4a 95                        	add	a0, a0, s2
80203788: 01 25                        	sext.w	a0, a0
8020378a: a9 45                        	addi	a1, zero, 10
8020378c: e3 f8 a5 dc                  	bgeu	a1, a0, -560
80203790: 85 44                        	addi	s1, zero, 1
80203792: a1 b3                        	j	-696

0000000080203794 _ZN4core5slice6memchr6memchr17hc5c23a081ffd9f1fE:
80203794: 41 11                        	addi	sp, sp, -16
80203796: 06 e4                        	sd	ra, 8(sp)
80203798: aa 86                        	add	a3, zero, a0
8020379a: 01 45                        	mv	a0, zero
8020379c: 13 f7 75 00                  	andi	a4, a1, 7
802037a0: 93 f8 f6 0f                  	andi	a7, a3, 255
802037a4: 1d c3                        	beqz	a4, 38
802037a6: a1 46                        	addi	a3, zero, 8
802037a8: 99 8e                        	sub	a3, a3, a4
802037aa: 85 c2                        	beqz	a3, 32
802037ac: 32 85                        	add	a0, zero, a2
802037ae: 63 63 d6 00                  	bltu	a2, a3, 6
802037b2: 36 85                        	add	a0, zero, a3
802037b4: 55 c9                        	beqz	a0, 180
802037b6: 81 46                        	mv	a3, zero
802037b8: 33 87 d5 00                  	add	a4, a1, a3
802037bc: 03 47 07 00                  	lbu	a4, 0(a4)
802037c0: 63 02 17 0f                  	beq	a4, a7, 228
802037c4: 85 06                        	addi	a3, a3, 1
802037c6: e3 19 d5 fe                  	bne	a0, a3, -14
802037ca: c1 46                        	addi	a3, zero, 16
802037cc: 63 62 d6 0a                  	bltu	a2, a3, 164
802037d0: 13 08 06 ff                  	addi	a6, a2, -16
802037d4: 63 6e a8 08                  	bltu	a6, a0, 156
802037d8: b7 06 01 01                  	lui	a3, 4112
802037dc: 9b 86 16 10                  	addiw	a3, a3, 257
802037e0: c2 06                        	slli	a3, a3, 16
802037e2: 93 86 16 10                  	addi	a3, a3, 257
802037e6: c2 06                        	slli	a3, a3, 16
802037e8: 93 86 16 10                  	addi	a3, a3, 257
802037ec: b3 82 d8 02                  	<unknown>
802037f0: b7 06 ff fe                  	lui	a3, 1044464
802037f4: 9b 86 f6 ef                  	addiw	a3, a3, -257
802037f8: c2 06                        	slli	a3, a3, 16
802037fa: 93 86 f6 ef                  	addi	a3, a3, -257
802037fe: c2 06                        	slli	a3, a3, 16
80203800: 13 83 f6 ef                  	addi	t1, a3, -257
80203804: 41 77                        	lui	a4, 1048560
80203806: 1b 07 17 10                  	addiw	a4, a4, 257
8020380a: 42 07                        	slli	a4, a4, 16
8020380c: 13 07 17 10                  	addi	a4, a4, 257
80203810: 42 07                        	slli	a4, a4, 16
80203812: 13 07 17 10                  	addi	a4, a4, 257
80203816: 3e 07                        	slli	a4, a4, 15
80203818: 93 03 07 08                  	addi	t2, a4, 128
8020381c: b3 87 a5 00                  	add	a5, a1, a0
80203820: 94 63                        	ld	a3, 0(a5)
80203822: 9c 67                        	ld	a5, 8(a5)
80203824: b3 c6 56 00                  	xor	a3, a3, t0
80203828: 13 c7 f6 ff                  	not	a4, a3
8020382c: 9a 96                        	add	a3, a3, t1
8020382e: 33 77 77 00                  	and	a4, a4, t2
80203832: f9 8e                        	and	a3, a3, a4
80203834: 33 c7 57 00                  	xor	a4, a5, t0
80203838: 93 47 f7 ff                  	not	a5, a4
8020383c: 1a 97                        	add	a4, a4, t1
8020383e: b3 f7 77 00                  	and	a5, a5, t2
80203842: 7d 8f                        	and	a4, a4, a5
80203844: d9 8e                        	or	a3, a3, a4
80203846: 81 e6                        	bnez	a3, 8
80203848: 41 05                        	addi	a0, a0, 16
8020384a: e3 79 a8 fc                  	bgeu	a6, a0, -46
8020384e: 63 71 a6 02                  	bgeu	a2, a0, 34

0000000080203852 .LBB198_25:
80203852: 97 26 00 00                  	auipc	a3, 2
80203856: 93 86 e6 91                  	addi	a3, a3, -1762
8020385a: b2 85                        	add	a1, zero, a2
8020385c: 36 86                        	add	a2, zero, a3
8020385e: 97 00 00 00                  	auipc	ra, 0
80203862: e7 80 20 09                  	jalr	146(ra)
80203866: 00 00                        	unimp	
80203868: 01 45                        	mv	a0, zero
8020386a: c1 46                        	addi	a3, zero, 16
8020386c: e3 72 d6 f6                  	bgeu	a2, a3, -156
80203870: 63 16 c5 00                  	bne	a0, a2, 12
80203874: 01 46                        	mv	a2, zero
80203876: 81 45                        	mv	a1, zero
80203878: aa 86                        	add	a3, zero, a0
8020387a: 35 a0                        	j	44
8020387c: 81 46                        	mv	a3, zero
8020387e: 09 8e                        	sub	a2, a2, a0
80203880: aa 95                        	add	a1, a1, a0
80203882: 33 87 d5 00                  	add	a4, a1, a3
80203886: 03 47 07 00                  	lbu	a4, 0(a4)
8020388a: 63 09 17 01                  	beq	a4, a7, 18
8020388e: 85 06                        	addi	a3, a3, 1
80203890: e3 19 d6 fe                  	bne	a2, a3, -14
80203894: 81 45                        	mv	a1, zero
80203896: b3 06 a6 00                  	add	a3, a2, a0
8020389a: 31 a0                        	j	12
8020389c: 85 45                        	addi	a1, zero, 1
8020389e: 36 86                        	add	a2, zero, a3
802038a0: aa 96                        	add	a3, a3, a0
802038a2: 11 a0                        	j	4
802038a4: 85 45                        	addi	a1, zero, 1
802038a6: 2e 85                        	add	a0, zero, a1
802038a8: b6 85                        	add	a1, zero, a3
802038aa: a2 60                        	ld	ra, 8(sp)
802038ac: 41 01                        	addi	sp, sp, 16
802038ae: 82 80                        	ret

00000000802038b0 _ZN4core5slice20slice_index_len_fail17h674859de081ebee9E:
802038b0: 59 71                        	addi	sp, sp, -112
802038b2: 86 f4                        	sd	ra, 104(sp)
802038b4: 2a e4                        	sd	a0, 8(sp)
802038b6: 2e e8                        	sd	a1, 16(sp)
802038b8: 28 00                        	addi	a0, sp, 8
802038ba: aa e4                        	sd	a0, 72(sp)

00000000802038bc .LBB200_1:
802038bc: 17 15 00 00                  	auipc	a0, 1
802038c0: 13 05 85 82                  	addi	a0, a0, -2008
802038c4: aa e8                        	sd	a0, 80(sp)
802038c6: 0c 08                        	addi	a1, sp, 16
802038c8: ae ec                        	sd	a1, 88(sp)
802038ca: aa f0                        	sd	a0, 96(sp)

00000000802038cc .LBB200_2:
802038cc: 17 25 00 00                  	auipc	a0, 2
802038d0: 13 05 45 8e                  	addi	a0, a0, -1820
802038d4: 2a ec                        	sd	a0, 24(sp)
802038d6: 09 45                        	addi	a0, zero, 2
802038d8: 2a f0                        	sd	a0, 32(sp)
802038da: 02 f4                        	sd	zero, 40(sp)
802038dc: ac 00                        	addi	a1, sp, 72
802038de: 2e fc                        	sd	a1, 56(sp)
802038e0: aa e0                        	sd	a0, 64(sp)
802038e2: 28 08                        	addi	a0, sp, 24
802038e4: b2 85                        	add	a1, zero, a2
802038e6: 97 f0 ff ff                  	auipc	ra, 1048575
802038ea: e7 80 e0 ba                  	jalr	-1106(ra)
802038ee: 00 00                        	unimp	

00000000802038f0 _ZN4core5slice22slice_index_order_fail17h448310845a3aec23E:
802038f0: 59 71                        	addi	sp, sp, -112
802038f2: 86 f4                        	sd	ra, 104(sp)
802038f4: 2a e4                        	sd	a0, 8(sp)
802038f6: 2e e8                        	sd	a1, 16(sp)
802038f8: 28 00                        	addi	a0, sp, 8
802038fa: aa e4                        	sd	a0, 72(sp)

00000000802038fc .LBB201_1:
802038fc: 17 05 00 00                  	auipc	a0, 0
80203900: 13 05 85 7e                  	addi	a0, a0, 2024
80203904: aa e8                        	sd	a0, 80(sp)
80203906: 0c 08                        	addi	a1, sp, 16
80203908: ae ec                        	sd	a1, 88(sp)
8020390a: aa f0                        	sd	a0, 96(sp)

000000008020390c .LBB201_2:
8020390c: 17 25 00 00                  	auipc	a0, 2
80203910: 13 05 c5 8e                  	addi	a0, a0, -1812
80203914: 2a ec                        	sd	a0, 24(sp)
80203916: 09 45                        	addi	a0, zero, 2
80203918: 2a f0                        	sd	a0, 32(sp)
8020391a: 02 f4                        	sd	zero, 40(sp)
8020391c: ac 00                        	addi	a1, sp, 72
8020391e: 2e fc                        	sd	a1, 56(sp)
80203920: aa e0                        	sd	a0, 64(sp)
80203922: 28 08                        	addi	a0, sp, 24
80203924: b2 85                        	add	a1, zero, a2
80203926: 97 f0 ff ff                  	auipc	ra, 1048575
8020392a: e7 80 e0 b6                  	jalr	-1170(ra)
8020392e: 00 00                        	unimp	

0000000080203930 _ZN4core3str16slice_error_fail17h6e4abdbba00369c0E:
80203930: 15 71                        	addi	sp, sp, -224
80203932: 86 ed                        	sd	ra, 216(sp)
80203934: 32 e4                        	sd	a2, 8(sp)
80203936: 36 e8                        	sd	a3, 16(sp)
80203938: 13 08 10 10                  	addi	a6, zero, 257
8020393c: 85 47                        	addi	a5, zero, 1
8020393e: ae 83                        	add	t2, zero, a1
80203940: 63 ef 05 03                  	bltu	a1, a6, 62
80203944: 81 43                        	mv	t2, zero
80203946: 13 88 15 f0                  	addi	a6, a1, -255
8020394a: 93 08 05 10                  	addi	a7, a0, 256
8020394e: 93 02 f0 fb                  	addi	t0, zero, -65
80203952: 13 03 10 f0                  	addi	t1, zero, -255
80203956: 1e 8e                        	add	t3, zero, t2
80203958: 93 83 03 10                  	addi	t2, t2, 256
8020395c: 63 f8 b3 00                  	bgeu	t2, a1, 16
80203960: b3 87 c8 01                  	add	a5, a7, t3
80203964: 83 87 07 00                  	lb	a5, 0(a5)
80203968: 63 c8 f2 02                  	blt	t0, a5, 48
8020396c: 93 03 fe ff                  	addi	t2, t3, -1
80203970: 63 04 6e 00                  	beq	t3, t1, 8
80203974: e3 11 c8 ff                  	bne	a6, t3, -30
80203978: 81 47                        	mv	a5, zero
8020397a: 93 83 03 10                  	addi	t2, t2, 256
8020397e: 2a ec                        	sd	a0, 24(sp)
80203980: 1e f0                        	sd	t2, 32(sp)
80203982: 99 ef                        	bnez	a5, 30

0000000080203984 .LBB224_53:
80203984: 97 27 00 00                  	auipc	a5, 2
80203988: 93 87 47 91                  	addi	a5, a5, -1772
8020398c: 15 48                        	addi	a6, zero, 5
8020398e: 3e f4                        	sd	a5, 40(sp)
80203990: 42 f8                        	sd	a6, 48(sp)
80203992: 63 f0 c5 02                  	bgeu	a1, a2, 32
80203996: a9 a8                        	j	90
80203998: 81 47                        	mv	a5, zero
8020399a: 2a ec                        	sd	a0, 24(sp)
8020399c: 1e f0                        	sd	t2, 32(sp)
8020399e: fd d3                        	beqz	a5, -26
802039a0: 01 48                        	mv	a6, zero

00000000802039a2 .LBB224_54:
802039a2: 97 17 00 00                  	auipc	a5, 1
802039a6: 93 87 e7 52                  	addi	a5, a5, 1326
802039aa: 3e f4                        	sd	a5, 40(sp)
802039ac: 42 f8                        	sd	a6, 48(sp)
802039ae: 63 e1 c5 04                  	bltu	a1, a2, 66
802039b2: 63 ef d5 02                  	bltu	a1, a3, 62
802039b6: 63 f4 c6 08                  	bgeu	a3, a2, 136
802039ba: 28 00                        	addi	a0, sp, 8
802039bc: 2a e5                        	sd	a0, 136(sp)

00000000802039be .LBB224_55:
802039be: 17 05 00 00                  	auipc	a0, 0
802039c2: 13 05 65 72                  	addi	a0, a0, 1830
802039c6: 2a e9                        	sd	a0, 144(sp)
802039c8: 0c 08                        	addi	a1, sp, 16
802039ca: 2e ed                        	sd	a1, 152(sp)
802039cc: 2a f1                        	sd	a0, 160(sp)
802039ce: 28 08                        	addi	a0, sp, 24
802039d0: 2a f5                        	sd	a0, 168(sp)

00000000802039d2 .LBB224_56:
802039d2: 17 05 00 00                  	auipc	a0, 0
802039d6: 13 05 a5 73                  	addi	a0, a0, 1850
802039da: 2a f9                        	sd	a0, 176(sp)
802039dc: 2c 10                        	addi	a1, sp, 40
802039de: 2e fd                        	sd	a1, 184(sp)
802039e0: aa e1                        	sd	a0, 192(sp)

00000000802039e2 .LBB224_57:
802039e2: 17 25 00 00                  	auipc	a0, 2
802039e6: 13 05 e5 91                  	addi	a0, a0, -1762
802039ea: aa ec                        	sd	a0, 88(sp)
802039ec: 11 45                        	addi	a0, zero, 4
802039ee: 25 a8                        	j	56
802039f0: 63 e3 c5 00                  	bltu	a1, a2, 6
802039f4: 36 86                        	add	a2, zero, a3
802039f6: b2 e4                        	sd	a2, 72(sp)
802039f8: a8 00                        	addi	a0, sp, 72
802039fa: 2a e5                        	sd	a0, 136(sp)

00000000802039fc .LBB224_58:
802039fc: 17 05 00 00                  	auipc	a0, 0
80203a00: 13 05 85 6e                  	addi	a0, a0, 1768
80203a04: 2a e9                        	sd	a0, 144(sp)
80203a06: 28 08                        	addi	a0, sp, 24
80203a08: 2a ed                        	sd	a0, 152(sp)

0000000080203a0a .LBB224_59:
80203a0a: 17 05 00 00                  	auipc	a0, 0
80203a0e: 13 05 25 70                  	addi	a0, a0, 1794
80203a12: 2a f1                        	sd	a0, 160(sp)
80203a14: 2c 10                        	addi	a1, sp, 40
80203a16: 2e f5                        	sd	a1, 168(sp)
80203a18: 2a f9                        	sd	a0, 176(sp)

0000000080203a1a .LBB224_60:
80203a1a: 17 25 00 00                  	auipc	a0, 2
80203a1e: 13 05 65 8a                  	addi	a0, a0, -1882
80203a22: aa ec                        	sd	a0, 88(sp)
80203a24: 0d 45                        	addi	a0, zero, 3
80203a26: aa f0                        	sd	a0, 96(sp)
80203a28: 82 f4                        	sd	zero, 104(sp)
80203a2a: 2c 01                        	addi	a1, sp, 136
80203a2c: ae fc                        	sd	a1, 120(sp)
80203a2e: 2a e1                        	sd	a0, 128(sp)
80203a30: a8 08                        	addi	a0, sp, 88
80203a32: ba 85                        	add	a1, zero, a4
80203a34: 97 f0 ff ff                  	auipc	ra, 1048575
80203a38: e7 80 00 a6                  	jalr	-1440(ra)
80203a3c: 00 00                        	unimp	
80203a3e: 09 ce                        	beqz	a2, 26
80203a40: 63 8c c5 00                  	beq	a1, a2, 24
80203a44: 63 7b b6 00                  	bgeu	a2, a1, 22
80203a48: b3 07 c5 00                  	add	a5, a0, a2
80203a4c: 03 88 07 00                  	lb	a6, 0(a5)
80203a50: 93 07 00 fc                  	addi	a5, zero, -64
80203a54: 63 43 f8 00                  	blt	a6, a5, 6
80203a58: 36 86                        	add	a2, zero, a3
80203a5a: 32 fc                        	sd	a2, 56(sp)
80203a5c: 1d c6                        	beqz	a2, 46
80203a5e: 63 06 b6 02                  	beq	a2, a1, 44
80203a62: 93 87 15 00                  	addi	a5, a1, 1
80203a66: 13 08 00 fc                  	addi	a6, zero, -64
80203a6a: 85 48                        	addi	a7, zero, 1
80203a6c: b2 86                        	add	a3, zero, a2
80203a6e: 63 78 b6 00                  	bgeu	a2, a1, 16
80203a72: 33 06 d5 00                  	add	a2, a0, a3
80203a76: 03 06 06 00                  	lb	a2, 0(a2)
80203a7a: 63 59 06 01                  	bge	a2, a6, 18
80203a7e: 13 86 f6 ff                  	addi	a2, a3, -1
80203a82: 63 84 16 01                  	beq	a3, a7, 8
80203a86: e3 93 d7 fe                  	bne	a5, a3, -26
80203a8a: b2 86                        	add	a3, zero, a2
80203a8c: 63 9e b6 00                  	bne	a3, a1, 28

0000000080203a90 .LBB224_61:
80203a90: 17 15 00 00                  	auipc	a0, 1
80203a94: 13 05 85 45                  	addi	a0, a0, 1112
80203a98: 93 05 b0 02                  	addi	a1, zero, 43
80203a9c: 3a 86                        	add	a2, zero, a4
80203a9e: 97 f0 ff ff                  	auipc	ra, 1048575
80203aa2: e7 80 a0 98                  	jalr	-1654(ra)
80203aa6: 00 00                        	unimp	
80203aa8: b3 07 d5 00                  	add	a5, a0, a3
80203aac: 03 86 07 00                  	lb	a2, 0(a5)
80203ab0: 7d 58                        	addi	a6, zero, -1
80203ab2: 93 72 f6 0f                  	andi	t0, a2, 255
80203ab6: 63 56 c8 00                  	bge	a6, a2, 12
80203aba: 96 c2                        	sw	t0, 68(sp)
80203abc: a8 00                        	addi	a0, sp, 72
80203abe: 85 45                        	addi	a1, zero, 1
80203ac0: 65 a8                        	j	184
80203ac2: 2e 95                        	add	a0, a0, a1
80203ac4: 93 85 17 00                  	addi	a1, a5, 1
80203ac8: 63 9f a5 00                  	bne	a1, a0, 30
80203acc: 81 47                        	mv	a5, zero
80203ace: aa 85                        	add	a1, zero, a0
80203ad0: 13 06 f0 0d                  	addi	a2, zero, 223
80203ad4: 13 f8 f2 01                  	andi	a6, t0, 31
80203ad8: 63 63 56 02                  	bltu	a2, t0, 38
80203adc: 13 15 68 00                  	slli	a0, a6, 6
80203ae0: 33 e6 a7 00                  	or	a2, a5, a0
80203ae4: 9d a8                        	j	118
80203ae6: 03 c6 17 00                  	lbu	a2, 1(a5)
80203aea: 93 85 27 00                  	addi	a1, a5, 2
80203aee: 93 77 f6 03                  	andi	a5, a2, 63
80203af2: 13 06 f0 0d                  	addi	a2, zero, 223
80203af6: 13 f8 f2 01                  	andi	a6, t0, 31
80203afa: e3 71 56 fe                  	bgeu	a2, t0, -30
80203afe: 63 95 a5 00                  	bne	a1, a0, 10
80203b02: 81 45                        	mv	a1, zero
80203b04: aa 88                        	add	a7, zero, a0
80203b06: 39 a0                        	j	14
80203b08: 03 c6 05 00                  	lbu	a2, 0(a1)
80203b0c: 93 88 15 00                  	addi	a7, a1, 1
80203b10: 93 75 f6 03                  	andi	a1, a2, 63
80203b14: 13 96 67 00                  	slli	a2, a5, 6
80203b18: 13 03 00 0f                  	addi	t1, zero, 240
80203b1c: b3 e7 c5 00                  	or	a5, a1, a2
80203b20: 63 e6 62 00                  	bltu	t0, t1, 12
80203b24: 63 99 a8 00                  	bne	a7, a0, 18
80203b28: 01 45                        	mv	a0, zero
80203b2a: 11 a8                        	j	20
80203b2c: 13 15 c8 00                  	slli	a0, a6, 12
80203b30: 33 e6 a7 00                  	or	a2, a5, a0
80203b34: 1d a0                        	j	38
80203b36: 03 c5 08 00                  	lbu	a0, 0(a7)
80203b3a: 13 75 f5 03                  	andi	a0, a0, 63
80203b3e: 93 15 28 01                  	slli	a1, a6, 18
80203b42: 37 06 1c 00                  	lui	a2, 448
80203b46: f1 8d                        	and	a1, a1, a2
80203b48: 13 96 67 00                  	slli	a2, a5, 6
80203b4c: d1 8d                        	or	a1, a1, a2
80203b4e: 33 e6 a5 00                  	or	a2, a1, a0
80203b52: 37 05 11 00                  	lui	a0, 272
80203b56: e3 0d a6 f2                  	beq	a2, a0, -198
80203b5a: b2 c2                        	sw	a2, 68(sp)
80203b5c: a8 00                        	addi	a0, sp, 72
80203b5e: 93 07 00 08                  	addi	a5, zero, 128
80203b62: 85 45                        	addi	a1, zero, 1
80203b64: 63 6a f6 00                  	bltu	a2, a5, 20
80203b68: 93 57 b6 00                  	srli	a5, a2, 11
80203b6c: 89 45                        	addi	a1, zero, 2
80203b6e: 89 c7                        	beqz	a5, 10
80203b70: 41 82                        	srli	a2, a2, 16
80203b72: 8d 45                        	addi	a1, zero, 3
80203b74: 11 c2                        	beqz	a2, 4
80203b76: 91 45                        	addi	a1, zero, 4
80203b78: b6 95                        	add	a1, a1, a3
80203b7a: b6 e4                        	sd	a3, 72(sp)
80203b7c: ae e8                        	sd	a1, 80(sp)
80203b7e: 2c 18                        	addi	a1, sp, 56
80203b80: 2e e5                        	sd	a1, 136(sp)

0000000080203b82 .LBB224_62:
80203b82: 97 05 00 00                  	auipc	a1, 0
80203b86: 93 85 25 56                  	addi	a1, a1, 1378
80203b8a: 2e e9                        	sd	a1, 144(sp)
80203b8c: cc 00                        	addi	a1, sp, 68
80203b8e: 2e ed                        	sd	a1, 152(sp)

0000000080203b90 .LBB224_63:
80203b90: 97 05 00 00                  	auipc	a1, 0
80203b94: 93 85 65 8d                  	addi	a1, a1, -1834
80203b98: 2e f1                        	sd	a1, 160(sp)
80203b9a: 2a f5                        	sd	a0, 168(sp)

0000000080203b9c .LBB224_64:
80203b9c: 17 e5 ff ff                  	auipc	a0, 1048574
80203ba0: 13 05 c5 7b                  	addi	a0, a0, 1980
80203ba4: 2a f9                        	sd	a0, 176(sp)
80203ba6: 28 08                        	addi	a0, sp, 24
80203ba8: 2a fd                        	sd	a0, 184(sp)

0000000080203baa .LBB224_65:
80203baa: 17 05 00 00                  	auipc	a0, 0
80203bae: 13 05 25 56                  	addi	a0, a0, 1378
80203bb2: aa e1                        	sd	a0, 192(sp)
80203bb4: 2c 10                        	addi	a1, sp, 40
80203bb6: ae e5                        	sd	a1, 200(sp)
80203bb8: aa e9                        	sd	a0, 208(sp)

0000000080203bba .LBB224_66:
80203bba: 17 15 00 00                  	auipc	a0, 1
80203bbe: 13 05 65 7b                  	addi	a0, a0, 1974
80203bc2: aa ec                        	sd	a0, 88(sp)
80203bc4: 15 45                        	addi	a0, zero, 5
80203bc6: 85 b5                        	j	-416

0000000080203bc8 _ZN4core7unicode9printable5check17h4beff69f6604437dE:
80203bc8: 41 11                        	addi	sp, sp, -16
80203bca: 06 e4                        	sd	ra, 8(sp)
80203bcc: 29 ca                        	beqz	a2, 82
80203bce: 81 42                        	mv	t0, zero
80203bd0: c1 68                        	lui	a7, 16
80203bd2: 9b 88 08 f0                  	addiw	a7, a7, -256
80203bd6: b3 78 15 01                  	and	a7, a0, a7
80203bda: 13 d3 88 00                  	srli	t1, a7, 8
80203bde: 06 06                        	slli	a2, a2, 1
80203be0: b3 83 c5 00                  	add	t2, a1, a2
80203be4: 13 7e f5 0f                  	andi	t3, a0, 255
80203be8: 83 ce 05 00                  	lbu	t4, 0(a1)
80203bec: 03 c6 15 00                  	lbu	a2, 1(a1)
80203bf0: 89 05                        	addi	a1, a1, 2
80203bf2: b3 88 c2 00                  	add	a7, t0, a2
80203bf6: 63 9f 6e 00                  	bne	t4, t1, 30
80203bfa: 63 e4 58 0a                  	bltu	a7, t0, 168
80203bfe: 63 6d 17 0b                  	bltu	a4, a7, 186
80203c02: b6 92                        	add	t0, t0, a3
80203c04: 11 ca                        	beqz	a2, 20
80203c06: 83 ce 02 00                  	lbu	t4, 0(t0)
80203c0a: 85 02                        	addi	t0, t0, 1
80203c0c: 7d 16                        	addi	a2, a2, -1
80203c0e: e3 9b ce ff                  	bne	t4, t3, -10
80203c12: b9 a8                        	j	94
80203c14: 63 65 d3 01                  	bltu	t1, t4, 10
80203c18: c6 82                        	add	t0, zero, a7
80203c1a: e3 97 75 fc                  	bne	a1, t2, -50
80203c1e: 63 0e 08 04                  	beqz	a6, 92
80203c22: b3 85 07 01                  	add	a1, a5, a6
80203c26: 41 66                        	lui	a2, 16
80203c28: 7d 36                        	addiw	a2, a2, -1
80203c2a: 69 8e                        	and	a2, a2, a0
80203c2c: 05 45                        	addi	a0, zero, 1
80203c2e: 83 86 07 00                  	lb	a3, 0(a5)
80203c32: 13 87 17 00                  	addi	a4, a5, 1
80203c36: 63 c9 06 00                  	bltz	a3, 18
80203c3a: 93 f6 f6 0f                  	andi	a3, a3, 255
80203c3e: ba 87                        	add	a5, zero, a4
80203c40: 15 9e                        	subw	a2, a2, a3
80203c42: 63 5f 06 00                  	bgez	a2, 30
80203c46: 0d a0                        	j	34
80203c48: 63 0e b7 02                  	beq	a4, a1, 60
80203c4c: 03 c7 17 00                  	lbu	a4, 1(a5)
80203c50: 93 f6 f6 07                  	andi	a3, a3, 127
80203c54: a2 06                        	slli	a3, a3, 8
80203c56: 89 07                        	addi	a5, a5, 2
80203c58: d9 8e                        	or	a3, a3, a4
80203c5a: 15 9e                        	subw	a2, a2, a3
80203c5c: 63 46 06 00                  	bltz	a2, 12
80203c60: 13 45 15 00                  	xori	a0, a0, 1
80203c64: e3 95 b7 fc                  	bne	a5, a1, -54
80203c68: 05 89                        	andi	a0, a0, 1
80203c6a: a2 60                        	ld	ra, 8(sp)
80203c6c: 41 01                        	addi	sp, sp, 16
80203c6e: 82 80                        	ret
80203c70: 01 45                        	mv	a0, zero
80203c72: 05 89                        	andi	a0, a0, 1
80203c74: a2 60                        	ld	ra, 8(sp)
80203c76: 41 01                        	addi	sp, sp, 16
80203c78: 82 80                        	ret
80203c7a: 05 45                        	addi	a0, zero, 1
80203c7c: 05 89                        	andi	a0, a0, 1
80203c7e: a2 60                        	ld	ra, 8(sp)
80203c80: 41 01                        	addi	sp, sp, 16
80203c82: 82 80                        	ret

0000000080203c84 .LBB249_23:
80203c84: 17 15 00 00                  	auipc	a0, 1
80203c88: 13 05 45 26                  	addi	a0, a0, 612

0000000080203c8c .LBB249_24:
80203c8c: 17 16 00 00                  	auipc	a2, 1
80203c90: 13 06 c6 74                  	addi	a2, a2, 1868
80203c94: 93 05 b0 02                  	addi	a1, zero, 43
80203c98: 97 e0 ff ff                  	auipc	ra, 1048574
80203c9c: e7 80 00 79                  	jalr	1936(ra)
80203ca0: 00 00                        	unimp	

0000000080203ca2 .LBB249_25:
80203ca2: 17 16 00 00                  	auipc	a2, 1
80203ca6: 13 06 e6 71                  	addi	a2, a2, 1822
80203caa: 16 85                        	add	a0, zero, t0
80203cac: c6 85                        	add	a1, zero, a7
80203cae: 97 00 00 00                  	auipc	ra, 0
80203cb2: e7 80 20 c4                  	jalr	-958(ra)
80203cb6: 00 00                        	unimp	

0000000080203cb8 .LBB249_26:
80203cb8: 17 16 00 00                  	auipc	a2, 1
80203cbc: 13 06 86 70                  	addi	a2, a2, 1800
80203cc0: 46 85                        	add	a0, zero, a7
80203cc2: ba 85                        	add	a1, zero, a4
80203cc4: 97 00 00 00                  	auipc	ra, 0
80203cc8: e7 80 c0 be                  	jalr	-1044(ra)
80203ccc: 00 00                        	unimp	

0000000080203cce _ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h2cbbcd02530bd107E:
80203cce: 75 71                        	addi	sp, sp, -144
80203cd0: 06 e5                        	sd	ra, 136(sp)
80203cd2: 2e 88                        	add	a6, zero, a1
80203cd4: 83 e5 05 03                  	lwu	a1, 48(a1)
80203cd8: 13 f6 05 01                  	andi	a2, a1, 16
80203cdc: 11 ee                        	bnez	a2, 28
80203cde: 08 61                        	ld	a0, 0(a0)
80203ce0: 93 f5 05 02                  	andi	a1, a1, 32
80203ce4: b9 e1                        	bnez	a1, 70
80203ce6: 85 45                        	addi	a1, zero, 1
80203ce8: 42 86                        	add	a2, zero, a6
80203cea: 97 00 00 00                  	auipc	ra, 0
80203cee: e7 80 80 24                  	jalr	584(ra)
80203cf2: aa 60                        	ld	ra, 136(sp)
80203cf4: 49 61                        	addi	sp, sp, 144
80203cf6: 82 80                        	ret
80203cf8: 08 61                        	ld	a0, 0(a0)
80203cfa: 81 45                        	mv	a1, zero
80203cfc: 30 00                        	addi	a2, sp, 8
80203cfe: a9 46                        	addi	a3, zero, 10
80203d00: 39 a0                        	j	14
80203d02: 93 87 77 05                  	addi	a5, a5, 87
80203d06: a3 0f f7 06                  	sb	a5, 127(a4)
80203d0a: fd 15                        	addi	a1, a1, -1
80203d0c: 31 c5                        	beqz	a0, 76
80203d0e: 33 07 b6 00                  	add	a4, a2, a1
80203d12: 93 77 f5 00                  	andi	a5, a0, 15
80203d16: 11 81                        	srli	a0, a0, 4
80203d18: e3 f5 d7 fe                  	bgeu	a5, a3, -22
80203d1c: 93 e7 07 03                  	ori	a5, a5, 48
80203d20: a3 0f f7 06                  	sb	a5, 127(a4)
80203d24: fd 15                        	addi	a1, a1, -1
80203d26: 65 f5                        	bnez	a0, -24
80203d28: 05 a8                        	j	48
80203d2a: 81 45                        	mv	a1, zero
80203d2c: 30 00                        	addi	a2, sp, 8
80203d2e: a9 46                        	addi	a3, zero, 10
80203d30: 39 a0                        	j	14
80203d32: 93 87 77 03                  	addi	a5, a5, 55
80203d36: a3 0f f7 06                  	sb	a5, 127(a4)
80203d3a: fd 15                        	addi	a1, a1, -1
80203d3c: 11 cd                        	beqz	a0, 28
80203d3e: 33 07 b6 00                  	add	a4, a2, a1
80203d42: 93 77 f5 00                  	andi	a5, a0, 15
80203d46: 11 81                        	srli	a0, a0, 4
80203d48: e3 f5 d7 fe                  	bgeu	a5, a3, -22
80203d4c: 93 e7 07 03                  	ori	a5, a5, 48
80203d50: a3 0f f7 06                  	sb	a5, 127(a4)
80203d54: fd 15                        	addi	a1, a1, -1
80203d56: 65 f5                        	bnez	a0, -24
80203d58: 13 85 05 08                  	addi	a0, a1, 128
80203d5c: 93 06 10 08                  	addi	a3, zero, 129
80203d60: 63 76 d5 02                  	bgeu	a0, a3, 44
80203d64: b3 07 b0 40                  	neg	a5, a1
80203d68: 33 05 b6 00                  	add	a0, a2, a1
80203d6c: 13 07 05 08                  	addi	a4, a0, 128

0000000080203d70 .LBB458_14:
80203d70: 17 16 00 00                  	auipc	a2, 1
80203d74: 13 06 86 29                  	addi	a2, a2, 664
80203d78: 85 45                        	addi	a1, zero, 1
80203d7a: 89 46                        	addi	a3, zero, 2
80203d7c: 42 85                        	add	a0, zero, a6
80203d7e: 97 f0 ff ff                  	auipc	ra, 1048575
80203d82: e7 80 20 18                  	jalr	386(ra)
80203d86: aa 60                        	ld	ra, 136(sp)
80203d88: 49 61                        	addi	sp, sp, 144
80203d8a: 82 80                        	ret

0000000080203d8c .LBB458_15:
80203d8c: 17 16 00 00                  	auipc	a2, 1
80203d90: 13 06 46 26                  	addi	a2, a2, 612
80203d94: 93 05 00 08                  	addi	a1, zero, 128
80203d98: 97 00 00 00                  	auipc	ra, 0
80203d9c: e7 80 80 b5                  	jalr	-1192(ra)
80203da0: 00 00                        	unimp	

0000000080203da2 _ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h0c8e9a47c9cbfbc9E:
80203da2: 75 71                        	addi	sp, sp, -144
80203da4: 06 e5                        	sd	ra, 136(sp)
80203da6: 2e 88                        	add	a6, zero, a1
80203da8: 81 45                        	mv	a1, zero
80203daa: 03 67 05 00                  	lwu	a4, 0(a0)
80203dae: 93 08 81 00                  	addi	a7, sp, 8
80203db2: 37 05 00 10                  	lui	a0, 65536
80203db6: 7d 35                        	addiw	a0, a0, -1
80203db8: a9 42                        	addi	t0, zero, 10
80203dba: 39 a0                        	j	14
80203dbc: 13 06 76 03                  	addi	a2, a2, 55
80203dc0: a3 8f c7 06                  	sb	a2, 127(a5)
80203dc4: fd 15                        	addi	a1, a1, -1
80203dc6: 0d c3                        	beqz	a4, 34
80203dc8: b3 87 b8 00                  	add	a5, a7, a1
80203dcc: 93 56 47 00                  	srli	a3, a4, 4
80203dd0: 13 76 f7 00                  	andi	a2, a4, 15
80203dd4: 33 f7 a6 00                  	and	a4, a3, a0
80203dd8: e3 72 56 fe                  	bgeu	a2, t0, -28
80203ddc: 13 66 06 03                  	ori	a2, a2, 48
80203de0: a3 8f c7 06                  	sb	a2, 127(a5)
80203de4: fd 15                        	addi	a1, a1, -1
80203de6: 6d f3                        	bnez	a4, -30
80203de8: 13 85 05 08                  	addi	a0, a1, 128
80203dec: 13 06 10 08                  	addi	a2, zero, 129
80203df0: 63 76 c5 02                  	bgeu	a0, a2, 44
80203df4: b3 07 b0 40                  	neg	a5, a1
80203df8: 33 85 b8 00                  	add	a0, a7, a1
80203dfc: 13 07 05 08                  	addi	a4, a0, 128

0000000080203e00 .LBB470_7:
80203e00: 17 16 00 00                  	auipc	a2, 1
80203e04: 13 06 86 20                  	addi	a2, a2, 520
80203e08: 85 45                        	addi	a1, zero, 1
80203e0a: 89 46                        	addi	a3, zero, 2
80203e0c: 42 85                        	add	a0, zero, a6
80203e0e: 97 f0 ff ff                  	auipc	ra, 1048575
80203e12: e7 80 20 0f                  	jalr	242(ra)
80203e16: aa 60                        	ld	ra, 136(sp)
80203e18: 49 61                        	addi	sp, sp, 144
80203e1a: 82 80                        	ret

0000000080203e1c .LBB470_8:
80203e1c: 17 16 00 00                  	auipc	a2, 1
80203e20: 13 06 46 1d                  	addi	a2, a2, 468
80203e24: 93 05 00 08                  	addi	a1, zero, 128
80203e28: 97 00 00 00                  	auipc	ra, 0
80203e2c: e7 80 80 ac                  	jalr	-1336(ra)
80203e30: 00 00                        	unimp	

0000000080203e32 _ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17he358e3b3276f5d2eE:
80203e32: 75 71                        	addi	sp, sp, -144
80203e34: 06 e5                        	sd	ra, 136(sp)
80203e36: 14 61                        	ld	a3, 0(a0)
80203e38: 2e 85                        	add	a0, zero, a1
80203e3a: 81 45                        	mv	a1, zero
80203e3c: 13 08 81 00                  	addi	a6, sp, 8
80203e40: 29 47                        	addi	a4, zero, 10
80203e42: 39 a0                        	j	14
80203e44: 13 06 76 05                  	addi	a2, a2, 87
80203e48: a3 8f c7 06                  	sb	a2, 127(a5)
80203e4c: fd 15                        	addi	a1, a1, -1
80203e4e: 91 ce                        	beqz	a3, 28
80203e50: b3 07 b8 00                  	add	a5, a6, a1
80203e54: 13 f6 f6 00                  	andi	a2, a3, 15
80203e58: 91 82                        	srli	a3, a3, 4
80203e5a: e3 75 e6 fe                  	bgeu	a2, a4, -22
80203e5e: 13 66 06 03                  	ori	a2, a2, 48
80203e62: a3 8f c7 06                  	sb	a2, 127(a5)
80203e66: fd 15                        	addi	a1, a1, -1
80203e68: e5 f6                        	bnez	a3, -24
80203e6a: 93 86 05 08                  	addi	a3, a1, 128
80203e6e: 13 06 10 08                  	addi	a2, zero, 129
80203e72: 63 f4 c6 02                  	bgeu	a3, a2, 40
80203e76: b3 07 b0 40                  	neg	a5, a1
80203e7a: c2 95                        	add	a1, a1, a6
80203e7c: 13 87 05 08                  	addi	a4, a1, 128

0000000080203e80 .LBB473_7:
80203e80: 17 16 00 00                  	auipc	a2, 1
80203e84: 13 06 86 18                  	addi	a2, a2, 392
80203e88: 85 45                        	addi	a1, zero, 1
80203e8a: 89 46                        	addi	a3, zero, 2
80203e8c: 97 f0 ff ff                  	auipc	ra, 1048575
80203e90: e7 80 40 07                  	jalr	116(ra)
80203e94: aa 60                        	ld	ra, 136(sp)
80203e96: 49 61                        	addi	sp, sp, 144
80203e98: 82 80                        	ret

0000000080203e9a .LBB473_8:
80203e9a: 17 16 00 00                  	auipc	a2, 1
80203e9e: 13 06 66 15                  	addi	a2, a2, 342
80203ea2: 93 05 00 08                  	addi	a1, zero, 128
80203ea6: 36 85                        	add	a0, zero, a3
80203ea8: 97 00 00 00                  	auipc	ra, 0
80203eac: e7 80 80 a4                  	jalr	-1464(ra)
80203eb0: 00 00                        	unimp	

0000000080203eb2 _ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h45db3ab4b50c26aeE:
80203eb2: 75 71                        	addi	sp, sp, -144
80203eb4: 06 e5                        	sd	ra, 136(sp)
80203eb6: 14 61                        	ld	a3, 0(a0)
80203eb8: 2e 85                        	add	a0, zero, a1
80203eba: 81 45                        	mv	a1, zero
80203ebc: 13 08 81 00                  	addi	a6, sp, 8
80203ec0: 29 47                        	addi	a4, zero, 10
80203ec2: 39 a0                        	j	14
80203ec4: 13 06 76 03                  	addi	a2, a2, 55
80203ec8: a3 8f c7 06                  	sb	a2, 127(a5)
80203ecc: fd 15                        	addi	a1, a1, -1
80203ece: 91 ce                        	beqz	a3, 28
80203ed0: b3 07 b8 00                  	add	a5, a6, a1
80203ed4: 13 f6 f6 00                  	andi	a2, a3, 15
80203ed8: 91 82                        	srli	a3, a3, 4
80203eda: e3 75 e6 fe                  	bgeu	a2, a4, -22
80203ede: 13 66 06 03                  	ori	a2, a2, 48
80203ee2: a3 8f c7 06                  	sb	a2, 127(a5)
80203ee6: fd 15                        	addi	a1, a1, -1
80203ee8: e5 f6                        	bnez	a3, -24
80203eea: 93 86 05 08                  	addi	a3, a1, 128
80203eee: 13 06 10 08                  	addi	a2, zero, 129
80203ef2: 63 f4 c6 02                  	bgeu	a3, a2, 40
80203ef6: b3 07 b0 40                  	neg	a5, a1
80203efa: c2 95                        	add	a1, a1, a6
80203efc: 13 87 05 08                  	addi	a4, a1, 128

0000000080203f00 .LBB474_7:
80203f00: 17 16 00 00                  	auipc	a2, 1
80203f04: 13 06 86 10                  	addi	a2, a2, 264
80203f08: 85 45                        	addi	a1, zero, 1
80203f0a: 89 46                        	addi	a3, zero, 2
80203f0c: 97 f0 ff ff                  	auipc	ra, 1048575
80203f10: e7 80 40 ff                  	jalr	-12(ra)
80203f14: aa 60                        	ld	ra, 136(sp)
80203f16: 49 61                        	addi	sp, sp, 144
80203f18: 82 80                        	ret

0000000080203f1a .LBB474_8:
80203f1a: 17 16 00 00                  	auipc	a2, 1
80203f1e: 13 06 66 0d                  	addi	a2, a2, 214
80203f22: 93 05 00 08                  	addi	a1, zero, 128
80203f26: 36 85                        	add	a0, zero, a3
80203f28: 97 00 00 00                  	auipc	ra, 0
80203f2c: e7 80 80 9c                  	jalr	-1592(ra)
80203f30: 00 00                        	unimp	

0000000080203f32 _ZN4core3fmt3num3imp7fmt_u6417h373d4d6e712c9b1fE:
80203f32: 5d 71                        	addi	sp, sp, -80
80203f34: 86 e4                        	sd	ra, 72(sp)
80203f36: a2 e0                        	sd	s0, 64(sp)
80203f38: 26 fc                        	sd	s1, 56(sp)
80203f3a: 4a f8                        	sd	s2, 48(sp)
80203f3c: 4e f4                        	sd	s3, 40(sp)
80203f3e: 32 88                        	add	a6, zero, a2
80203f40: 13 56 45 00                  	srli	a2, a0, 4
80203f44: 13 07 70 02                  	addi	a4, zero, 39
80203f48: 93 06 10 27                  	addi	a3, zero, 625

0000000080203f4c .LBB479_10:
80203f4c: 97 18 00 00                  	auipc	a7, 1
80203f50: 93 88 e8 0b                  	addi	a7, a7, 190
80203f54: 63 73 d6 02                  	bgeu	a2, a3, 38
80203f58: 13 06 30 06                  	addi	a2, zero, 99
80203f5c: 63 4e a6 0c                  	blt	a2, a0, 220
80203f60: 29 46                        	addi	a2, zero, 10
80203f62: 63 59 c5 12                  	bge	a0, a2, 306
80203f66: 13 06 f7 ff                  	addi	a2, a4, -1
80203f6a: 93 06 11 00                  	addi	a3, sp, 1
80203f6e: b2 96                        	add	a3, a3, a2
80203f70: 13 05 05 03                  	addi	a0, a0, 48
80203f74: 23 80 a6 00                  	sb	a0, 0(a3)
80203f78: 2d aa                        	j	314
80203f7a: 01 47                        	mv	a4, zero
80203f7c: 37 36 1a 00                  	lui	a2, 419
80203f80: 1b 06 36 6e                  	addiw	a2, a2, 1763
80203f84: 3a 06                        	slli	a2, a2, 14
80203f86: 13 06 76 ac                  	addi	a2, a2, -1337
80203f8a: 3a 06                        	slli	a2, a2, 14
80203f8c: 13 06 36 43                  	addi	a2, a2, 1075
80203f90: 36 06                        	slli	a2, a2, 13
80203f92: 93 02 b6 94                  	addi	t0, a2, -1717
80203f96: 09 66                        	lui	a2, 2
80203f98: 9b 03 06 71                  	addiw	t2, a2, 1808
80203f9c: 41 66                        	lui	a2, 16
80203f9e: 9b 0e c6 ff                  	addiw	t4, a2, -4
80203fa2: b7 f6 51 00                  	lui	a3, 1311
80203fa6: 9b 86 56 b8                  	addiw	a3, a3, -1147
80203faa: b6 06                        	slli	a3, a3, 13
80203fac: 93 86 76 3d                  	addi	a3, a3, 983
80203fb0: ba 06                        	slli	a3, a3, 14
80203fb2: 93 86 f6 28                  	addi	a3, a3, 655
80203fb6: b2 06                        	slli	a3, a3, 12
80203fb8: 13 8f 36 5c                  	addi	t5, a3, 1475
80203fbc: 13 03 40 06                  	addi	t1, zero, 100
80203fc0: 9b 0f e6 ff                  	addiw	t6, a2, -2
80203fc4: 13 0e 11 00                  	addi	t3, sp, 1
80203fc8: 37 e6 f5 05                  	lui	a2, 24414
80203fcc: 1b 09 f6 0f                  	addiw	s2, a2, 255
80203fd0: aa 87                        	add	a5, zero, a0
80203fd2: 33 35 55 02                  	<unknown>
80203fd6: 2d 81                        	srli	a0, a0, 11
80203fd8: b3 06 75 02                  	<unknown>
80203fdc: b3 86 d7 40                  	sub	a3, a5, a3
80203fe0: 33 f4 d6 01                  	and	s0, a3, t4
80203fe4: 09 80                        	srli	s0, s0, 2
80203fe6: 33 34 e4 03                  	<unknown>
80203fea: 09 80                        	srli	s0, s0, 2
80203fec: 93 14 14 00                  	slli	s1, s0, 1
80203ff0: 33 04 64 02                  	<unknown>
80203ff4: 81 8e                        	sub	a3, a3, s0
80203ff6: 86 06                        	slli	a3, a3, 1
80203ff8: b3 f6 f6 01                  	and	a3, a3, t6
80203ffc: 33 84 14 01                  	add	s0, s1, a7
80204000: b3 04 ee 00                  	add	s1, t3, a4
80204004: 83 49 04 00                  	lbu	s3, 0(s0)
80204008: 03 04 14 00                  	lb	s0, 1(s0)
8020400c: c6 96                        	add	a3, a3, a7
8020400e: 03 86 16 00                  	lb	a2, 1(a3)
80204012: 83 c6 06 00                  	lbu	a3, 0(a3)
80204016: 23 82 84 02                  	sb	s0, 36(s1)
8020401a: a3 81 34 03                  	sb	s3, 35(s1)
8020401e: 23 83 c4 02                  	sb	a2, 38(s1)
80204022: a3 82 d4 02                  	sb	a3, 37(s1)
80204026: 71 17                        	addi	a4, a4, -4
80204028: e3 64 f9 fa                  	bltu	s2, a5, -88
8020402c: 13 07 77 02                  	addi	a4, a4, 39
80204030: 13 06 30 06                  	addi	a2, zero, 99
80204034: e3 56 a6 f2                  	bge	a2, a0, -212
80204038: 41 66                        	lui	a2, 16
8020403a: 9b 06 c6 ff                  	addiw	a3, a2, -4
8020403e: e9 8e                        	and	a3, a3, a0
80204040: 89 82                        	srli	a3, a3, 2
80204042: b7 f7 51 00                  	lui	a5, 1311
80204046: 9b 87 57 b8                  	addiw	a5, a5, -1147
8020404a: b6 07                        	slli	a5, a5, 13
8020404c: 93 87 77 3d                  	addi	a5, a5, 983
80204050: ba 07                        	slli	a5, a5, 14
80204052: 93 87 f7 28                  	addi	a5, a5, 655
80204056: b2 07                        	slli	a5, a5, 12
80204058: 93 87 37 5c                  	addi	a5, a5, 1475
8020405c: b3 b6 f6 02                  	<unknown>
80204060: 89 82                        	srli	a3, a3, 2
80204062: 93 07 40 06                  	addi	a5, zero, 100
80204066: b3 87 f6 02                  	<unknown>
8020406a: 1d 8d                        	sub	a0, a0, a5
8020406c: 06 05                        	slli	a0, a0, 1
8020406e: 79 36                        	addiw	a2, a2, -2
80204070: 71 8d                        	and	a0, a0, a2
80204072: 79 17                        	addi	a4, a4, -2
80204074: 46 95                        	add	a0, a0, a7
80204076: 03 06 15 00                  	lb	a2, 1(a0)
8020407a: 03 45 05 00                  	lbu	a0, 0(a0)
8020407e: 93 07 11 00                  	addi	a5, sp, 1
80204082: ba 97                        	add	a5, a5, a4
80204084: a3 80 c7 00                  	sb	a2, 1(a5)
80204088: 23 80 a7 00                  	sb	a0, 0(a5)
8020408c: 36 85                        	add	a0, zero, a3
8020408e: 29 46                        	addi	a2, zero, 10
80204090: e3 4b c5 ec                  	blt	a0, a2, -298
80204094: 06 05                        	slli	a0, a0, 1
80204096: 13 06 e7 ff                  	addi	a2, a4, -2
8020409a: 46 95                        	add	a0, a0, a7
8020409c: 83 06 15 00                  	lb	a3, 1(a0)
802040a0: 03 45 05 00                  	lbu	a0, 0(a0)
802040a4: 13 07 11 00                  	addi	a4, sp, 1
802040a8: 32 97                        	add	a4, a4, a2
802040aa: a3 00 d7 00                  	sb	a3, 1(a4)
802040ae: 23 00 a7 00                  	sb	a0, 0(a4)
802040b2: 13 05 11 00                  	addi	a0, sp, 1
802040b6: 33 07 c5 00                  	add	a4, a0, a2
802040ba: 13 05 70 02                  	addi	a0, zero, 39
802040be: b3 07 c5 40                  	sub	a5, a0, a2

00000000802040c2 .LBB479_11:
802040c2: 17 16 00 00                  	auipc	a2, 1
802040c6: 13 06 e6 e0                  	addi	a2, a2, -498
802040ca: 42 85                        	add	a0, zero, a6
802040cc: 81 46                        	mv	a3, zero
802040ce: 97 f0 ff ff                  	auipc	ra, 1048575
802040d2: e7 80 20 e3                  	jalr	-462(ra)
802040d6: a2 79                        	ld	s3, 40(sp)
802040d8: 42 79                        	ld	s2, 48(sp)
802040da: e2 74                        	ld	s1, 56(sp)
802040dc: 06 64                        	ld	s0, 64(sp)
802040de: a6 60                        	ld	ra, 72(sp)
802040e0: 61 61                        	addi	sp, sp, 80
802040e2: 82 80                        	ret

00000000802040e4 _ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hfdb2265e757676d6E:
802040e4: 08 61                        	ld	a0, 0(a0)
802040e6: 2e 86                        	add	a2, zero, a1
802040e8: 85 45                        	addi	a1, zero, 1
802040ea: 17 03 00 00                  	auipc	t1, 0
802040ee: 67 00 83 e4                  	jr	-440(t1)

00000000802040f2 _ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h521c7eeed0830024E:
802040f2: 90 75                        	ld	a2, 40(a1)
802040f4: 88 71                        	ld	a0, 32(a1)
802040f6: 1c 6e                        	ld	a5, 24(a2)

00000000802040f8 .LBB514_1:
802040f8: 97 25 00 00                  	auipc	a1, 2
802040fc: 93 85 05 8b                  	addi	a1, a1, -1872
80204100: 15 46                        	addi	a2, zero, 5
80204102: 82 87                        	jr	a5

0000000080204104 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4f9c2310c108c28E:
80204104: 10 65                        	ld	a2, 8(a0)
80204106: 08 61                        	ld	a0, 0(a0)
80204108: 1c 6e                        	ld	a5, 24(a2)
8020410a: 82 87                        	jr	a5

000000008020410c _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb0118f6aeefbaeabE:
8020410c: 14 61                        	ld	a3, 0(a0)
8020410e: 10 65                        	ld	a2, 8(a0)
80204110: 2e 85                        	add	a0, zero, a1
80204112: b6 85                        	add	a1, zero, a3
80204114: 17 f3 ff ff                  	auipc	t1, 1048575
80204118: 67 00 63 05                  	jr	86(t1)

000000008020411c _ZN4core7unicode12unicode_data15grapheme_extend6lookup17h5925f327e5e33873E:
8020411c: 41 11                        	addi	sp, sp, -16
8020411e: 06 e4                        	sd	ra, 8(sp)
80204120: 81 46                        	mv	a3, zero
80204122: 9b 05 05 00                  	sext.w	a1, a0
80204126: 45 66                        	lui	a2, 17
80204128: 1b 07 46 d2                  	addiw	a4, a2, -732
8020412c: 1b 16 b5 00                  	slliw	a2, a0, 11
80204130: 63 e3 e5 00                  	bltu	a1, a4, 6
80204134: bd 46                        	addi	a3, zero, 15
80204136: 13 87 86 00                  	addi	a4, a3, 8
8020413a: 93 17 27 00                  	slli	a5, a4, 2

000000008020413e .LBB634_27:
8020413e: 97 25 00 00                  	auipc	a1, 2
80204142: 93 85 25 87                  	addi	a1, a1, -1934
80204146: ae 97                        	add	a5, a5, a1
80204148: 9c 43                        	lw	a5, 0(a5)
8020414a: 9b 97 b7 00                  	slliw	a5, a5, 11
8020414e: 63 63 f6 00                  	bltu	a2, a5, 6
80204152: ba 86                        	add	a3, zero, a4
80204154: 13 87 46 00                  	addi	a4, a3, 4
80204158: 93 17 27 00                  	slli	a5, a4, 2
8020415c: ae 97                        	add	a5, a5, a1
8020415e: 9c 43                        	lw	a5, 0(a5)
80204160: 9b 97 b7 00                  	slliw	a5, a5, 11
80204164: 63 63 f6 00                  	bltu	a2, a5, 6
80204168: ba 86                        	add	a3, zero, a4
8020416a: 13 87 26 00                  	addi	a4, a3, 2
8020416e: 93 17 27 00                  	slli	a5, a4, 2
80204172: ae 97                        	add	a5, a5, a1
80204174: 9c 43                        	lw	a5, 0(a5)
80204176: 9b 97 b7 00                  	slliw	a5, a5, 11
8020417a: 63 63 f6 00                  	bltu	a2, a5, 6
8020417e: ba 86                        	add	a3, zero, a4
80204180: 13 87 16 00                  	addi	a4, a3, 1
80204184: 93 17 27 00                  	slli	a5, a4, 2
80204188: ae 97                        	add	a5, a5, a1
8020418a: 9c 43                        	lw	a5, 0(a5)
8020418c: 9b 97 b7 00                  	slliw	a5, a5, 11
80204190: 63 63 f6 00                  	bltu	a2, a5, 6
80204194: ba 86                        	add	a3, zero, a4
80204196: 13 97 26 00                  	slli	a4, a3, 2
8020419a: 2e 97                        	add	a4, a4, a1
8020419c: 18 43                        	lw	a4, 0(a4)
8020419e: 1b 17 b7 00                  	slliw	a4, a4, 11
802041a2: b3 37 c7 00                  	sltu	a5, a4, a2
802041a6: 39 8e                        	xor	a2, a2, a4
802041a8: 13 36 16 00                  	seqz	a2, a2
802041ac: 3e 96                        	add	a2, a2, a5
802041ae: 33 07 d6 00                  	add	a4, a2, a3
802041b2: f9 46                        	addi	a3, zero, 30
802041b4: 63 e0 e6 0a                  	bltu	a3, a4, 160
802041b8: 93 17 27 00                  	slli	a5, a4, 2
802041bc: 13 06 10 2b                  	addi	a2, zero, 689
802041c0: 63 07 d7 00                  	beq	a4, a3, 14
802041c4: 33 86 f5 00                  	add	a2, a1, a5
802041c8: 03 66 46 00                  	lwu	a2, 4(a2)
802041cc: 55 82                        	srli	a2, a2, 21
802041ce: 93 06 f7 ff                  	addi	a3, a4, -1
802041d2: 63 74 d7 00                  	bgeu	a4, a3, 8
802041d6: 01 47                        	mv	a4, zero
802041d8: 21 a8                        	j	24
802041da: 7d 47                        	addi	a4, zero, 31
802041dc: 63 f7 e6 08                  	bgeu	a3, a4, 142
802041e0: 8a 06                        	slli	a3, a3, 2
802041e2: ae 96                        	add	a3, a3, a1
802041e4: 83 e6 06 00                  	lwu	a3, 0(a3)
802041e8: 37 07 20 00                  	lui	a4, 512
802041ec: 7d 37                        	addiw	a4, a4, -1
802041ee: 75 8f                        	and	a4, a4, a3
802041f0: be 95                        	add	a1, a1, a5
802041f2: 83 e5 05 00                  	lwu	a1, 0(a1)
802041f6: 93 d6 55 01                  	srli	a3, a1, 21
802041fa: 93 85 16 00                  	addi	a1, a3, 1
802041fe: 63 0a b6 02                  	beq	a2, a1, 52
80204202: 81 45                        	mv	a1, zero
80204204: 3b 07 e5 40                  	subw	a4, a0, a4
80204208: 13 05 f6 ff                  	addi	a0, a2, -1
8020420c: 13 08 00 2b                  	addi	a6, zero, 688

0000000080204210 .LBB634_28:
80204210: 97 27 00 00                  	auipc	a5, 2
80204214: 93 87 c7 81                  	addi	a5, a5, -2020
80204218: 63 62 d8 02                  	bltu	a6, a3, 36
8020421c: 33 86 f6 00                  	add	a2, a3, a5
80204220: 03 46 06 00                  	lbu	a2, 0(a2)
80204224: b1 9d                        	addw	a1, a1, a2
80204226: 63 66 b7 00                  	bltu	a4, a1, 12
8020422a: 85 06                        	addi	a3, a3, 1
8020422c: e3 16 d5 fe                  	bne	a0, a3, -20
80204230: aa 86                        	add	a3, zero, a0
80204232: 13 f5 16 00                  	andi	a0, a3, 1
80204236: a2 60                        	ld	ra, 8(sp)
80204238: 41 01                        	addi	sp, sp, 16
8020423a: 82 80                        	ret

000000008020423c .LBB634_29:
8020423c: 17 16 00 00                  	auipc	a2, 1
80204240: 13 06 c6 73                  	addi	a2, a2, 1852
80204244: 93 05 10 2b                  	addi	a1, zero, 689
80204248: 36 85                        	add	a0, zero, a3
8020424a: 97 e0 ff ff                  	auipc	ra, 1048574
8020424e: e7 80 a0 20                  	jalr	522(ra)
80204252: 00 00                        	unimp	

0000000080204254 .LBB634_30:
80204254: 17 16 00 00                  	auipc	a2, 1
80204258: 13 06 c6 70                  	addi	a2, a2, 1804
8020425c: fd 45                        	addi	a1, zero, 31
8020425e: 3a 85                        	add	a0, zero, a4
80204260: 97 e0 ff ff                  	auipc	ra, 1048574
80204264: e7 80 40 1f                  	jalr	500(ra)
80204268: 00 00                        	unimp	

000000008020426a .LBB634_31:
8020426a: 17 16 00 00                  	auipc	a2, 1
8020426e: 13 06 66 72                  	addi	a2, a2, 1830
80204272: fd 45                        	addi	a1, zero, 31
80204274: 36 85                        	add	a0, zero, a3
80204276: 97 e0 ff ff                  	auipc	ra, 1048574
8020427a: e7 80 e0 1d                  	jalr	478(ra)
8020427e: 00 00                        	unimp	

0000000080204280 memcmp:
80204280: 19 ca                        	beqz	a2, 22
80204282: 83 46 05 00                  	lbu	a3, 0(a0)
80204286: 03 c7 05 00                  	lbu	a4, 0(a1)
8020428a: 63 98 e6 00                  	bne	a3, a4, 16
8020428e: 7d 16                        	addi	a2, a2, -1
80204290: 85 05                        	addi	a1, a1, 1
80204292: 05 05                        	addi	a0, a0, 1
80204294: 7d f6                        	bnez	a2, -18
80204296: 01 45                        	mv	a0, zero
80204298: 82 80                        	ret
8020429a: 33 85 e6 40                  	sub	a0, a3, a4
8020429e: 82 80                        	ret
