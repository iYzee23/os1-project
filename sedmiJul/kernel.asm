
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00008117          	auipc	sp,0x8
    80000004:	5b013103          	ld	sp,1456(sp) # 800085b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	12c040ef          	jal	ra,80004148 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN6KRiscv9interruptEv>:
.type _ZN6KRiscv9interruptEv, @function
.align 4

_ZN6KRiscv9interruptEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)
    sd sp, (framePointer), t0
    80001084:	00007297          	auipc	t0,0x7
    80001088:	6022b223          	sd	sp,1540(t0) # 80008688 <framePointer>

    call _ZN6KRiscv16interruptHandlerEv
    8000108c:	1e0000ef          	jal	ra,8000126c <_ZN6KRiscv16interruptHandlerEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001090:	00013003          	ld	zero,0(sp)
    80001094:	00813083          	ld	ra,8(sp)
    80001098:	01013103          	ld	sp,16(sp)
    8000109c:	01813183          	ld	gp,24(sp)
    800010a0:	02013203          	ld	tp,32(sp)
    800010a4:	02813283          	ld	t0,40(sp)
    800010a8:	03013303          	ld	t1,48(sp)
    800010ac:	03813383          	ld	t2,56(sp)
    800010b0:	04013403          	ld	s0,64(sp)
    800010b4:	04813483          	ld	s1,72(sp)
    800010b8:	05013503          	ld	a0,80(sp)
    800010bc:	05813583          	ld	a1,88(sp)
    800010c0:	06013603          	ld	a2,96(sp)
    800010c4:	06813683          	ld	a3,104(sp)
    800010c8:	07013703          	ld	a4,112(sp)
    800010cc:	07813783          	ld	a5,120(sp)
    800010d0:	08013803          	ld	a6,128(sp)
    800010d4:	08813883          	ld	a7,136(sp)
    800010d8:	09013903          	ld	s2,144(sp)
    800010dc:	09813983          	ld	s3,152(sp)
    800010e0:	0a013a03          	ld	s4,160(sp)
    800010e4:	0a813a83          	ld	s5,168(sp)
    800010e8:	0b013b03          	ld	s6,176(sp)
    800010ec:	0b813b83          	ld	s7,184(sp)
    800010f0:	0c013c03          	ld	s8,192(sp)
    800010f4:	0c813c83          	ld	s9,200(sp)
    800010f8:	0d013d03          	ld	s10,208(sp)
    800010fc:	0d813d83          	ld	s11,216(sp)
    80001100:	0e013e03          	ld	t3,224(sp)
    80001104:	0e813e83          	ld	t4,232(sp)
    80001108:	0f013f03          	ld	t5,240(sp)
    8000110c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001110:	10010113          	addi	sp,sp,256

    80001114:	10200073          	sret
	...

0000000080001120 <_ZN6KRiscv13pushRegistersEv>:
.global _ZN6KRiscv13pushRegistersEv
.type _ZN6KRiscv13pushRegistersEv, @function
_ZN6KRiscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN6KRiscv12popRegistersEv>:
.global _ZN6KRiscv12popRegistersEv
.type _ZN6KRiscv12popRegistersEv, @function
_ZN6KRiscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN4KPCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN4KPCB13contextSwitchEPNS_7ContextES1_
.type _ZN4KPCB13contextSwitchEPNS_7ContextES1_, @function
_ZN4KPCB13contextSwitchEPNS_7ContextES1_:
    # a0 --> &old->context
    sd ra, 0 * 8(a0)
    80001218:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000121c:	00253423          	sd	sp,8(a0)

    # a1 --> &running->context
    ld ra, 0 * 8(a1)
    80001220:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001224:	0085b103          	ld	sp,8(a1)

    80001228:	00008067          	ret

000000008000122c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000122c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001230:	00b29a63          	bne	t0,a1,80001244 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001234:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001238:	fe029ae3          	bnez	t0,8000122c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000123c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001240:	00008067          	ret

0000000080001244 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001244:	00100513          	li	a0,1
    80001248:	00008067          	ret

000000008000124c <_ZN6KRiscv10popSppSpieEv>:
constexpr uint64 TIME_SLEEP = 0x31;
constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;
constexpr uint64 RCONS = 0x43;

void KRiscv::popSppSpie() {
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00813423          	sd	s0,8(sp)
    80001254:	01010413          	addi	s0,sp,16
    asm volatile ("csrw sepc, ra");
    80001258:	14109073          	csrw	sepc,ra
    asm volatile ("sret");
    8000125c:	10200073          	sret
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_ZN6KRiscv16interruptHandlerEv>:

void KRiscv::interruptHandler() {
    8000126c:	f1010113          	addi	sp,sp,-240
    80001270:	0e113423          	sd	ra,232(sp)
    80001274:	0e813023          	sd	s0,224(sp)
    80001278:	0c913c23          	sd	s1,216(sp)
    8000127c:	0d213823          	sd	s2,208(sp)
    80001280:	0f010413          	addi	s0,sp,240

};

inline uint64 KRiscv::r_scause() {
    uint64 volatile scause;
    asm volatile ("csrr %0, scause" : "=r"(scause));
    80001284:	142027f3          	csrr	a5,scause
    80001288:	f0f43c23          	sd	a5,-232(s0)
    return scause;
    8000128c:	f1843783          	ld	a5,-232(s0)
    uint64 scause = r_scause();
    if (scause == ECALL_SYS || scause == ECALL_USER) {
    80001290:	ff878693          	addi	a3,a5,-8
    80001294:	00100713          	li	a4,1
    80001298:	04d77a63          	bgeu	a4,a3,800012ec <_ZN6KRiscv16interruptHandlerEv+0x80>
                   && KConsole::inBuff->getCnt() < KConsole::BUFF_SIZE)
                KConsole::inBuff->put(*(char*)CONSOLE_RX_DATA);
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
    }
    else if (scause == TIMER) {
    8000129c:	fff00713          	li	a4,-1
    800012a0:	03f71713          	slli	a4,a4,0x3f
    800012a4:	00170713          	addi	a4,a4,1
    800012a8:	62e78e63          	beq	a5,a4,800018e4 <_ZN6KRiscv16interruptHandlerEv+0x678>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXT_HW) {
    800012ac:	fff00713          	li	a4,-1
    800012b0:	03f71713          	slli	a4,a4,0x3f
    800012b4:	00970713          	addi	a4,a4,9
    800012b8:	68e78663          	beq	a5,a4,80001944 <_ZN6KRiscv16interruptHandlerEv+0x6d8>
                && KConsole::inBuff->getCnt() < KConsole::BUFF_SIZE)
                KConsole::inBuff->put(*(char*)CONSOLE_RX_DATA);
        }
        plic_complete(consID);
    }
    else if (scause == ERR_RD) {
    800012bc:	00500713          	li	a4,5
    800012c0:	70e78263          	beq	a5,a4,800019c4 <_ZN6KRiscv16interruptHandlerEv+0x758>
        printIntRadi(KRiscv::r_sstatus());
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }
    else if (scause == ERR_WR) {
    800012c4:	00700713          	li	a4,7
    800012c8:	70e78863          	beq	a5,a4,800019d8 <_ZN6KRiscv16interruptHandlerEv+0x76c>
        printIntRadi(KRiscv::r_sstatus());
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }
    else if (scause == ILL_INSTR) {
    800012cc:	00200713          	li	a4,2
    800012d0:	70e78e63          	beq	a5,a4,800019ec <_ZN6KRiscv16interruptHandlerEv+0x780>
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }

    800012d4:	0e813083          	ld	ra,232(sp)
    800012d8:	0e013403          	ld	s0,224(sp)
    800012dc:	0d813483          	ld	s1,216(sp)
    800012e0:	0d013903          	ld	s2,208(sp)
    800012e4:	0f010113          	addi	sp,sp,240
    800012e8:	00008067          	ret
        asm volatile("mv %0, a0" : "=r" (name));
    800012ec:	00050793          	mv	a5,a0
        if (name == MEM_ALLOC) {
    800012f0:	0ce78c63          	beq	a5,a4,800013c8 <_ZN6KRiscv16interruptHandlerEv+0x15c>
        else if (name == MEM_FREE) {
    800012f4:	00200713          	li	a4,2
    800012f8:	10e78863          	beq	a5,a4,80001408 <_ZN6KRiscv16interruptHandlerEv+0x19c>
        else if (name == USER_MODE) {
    800012fc:	00500713          	li	a4,5
    80001300:	14e78463          	beq	a5,a4,80001448 <_ZN6KRiscv16interruptHandlerEv+0x1dc>
        else if (name == KERNEL_MODE) {
    80001304:	00600713          	li	a4,6
    80001308:	16e78063          	beq	a5,a4,80001468 <_ZN6KRiscv16interruptHandlerEv+0x1fc>
        else if (name == THREAD_CREATE_CPP) {
    8000130c:	01000713          	li	a4,16
    80001310:	16e78c63          	beq	a5,a4,80001488 <_ZN6KRiscv16interruptHandlerEv+0x21c>
        else if (name == THREAD_CREATE) {
    80001314:	01100713          	li	a4,17
    80001318:	1ee78063          	beq	a5,a4,800014f8 <_ZN6KRiscv16interruptHandlerEv+0x28c>
        else if (name == THREAD_EXIT) {
    8000131c:	01200713          	li	a4,18
    80001320:	26e78063          	beq	a5,a4,80001580 <_ZN6KRiscv16interruptHandlerEv+0x314>
        else if (name == THREAD_DISPATCH) {
    80001324:	01300713          	li	a4,19
    80001328:	2ae78c63          	beq	a5,a4,800015e0 <_ZN6KRiscv16interruptHandlerEv+0x374>
        else if (name == SEM_OPEN) {
    8000132c:	02100713          	li	a4,33
    80001330:	2ee78063          	beq	a5,a4,80001610 <_ZN6KRiscv16interruptHandlerEv+0x3a4>
        else if (name == SEM_CLOSE) {
    80001334:	02200713          	li	a4,34
    80001338:	34e78063          	beq	a5,a4,80001678 <_ZN6KRiscv16interruptHandlerEv+0x40c>
        else if (name == SEM_WAIT) {
    8000133c:	02300713          	li	a4,35
    80001340:	3ae78063          	beq	a5,a4,800016e0 <_ZN6KRiscv16interruptHandlerEv+0x474>
        else if (name == SEM_SIGNAL) {
    80001344:	02400713          	li	a4,36
    80001348:	3ee78c63          	beq	a5,a4,80001740 <_ZN6KRiscv16interruptHandlerEv+0x4d4>
        else if (name == TIME_SLEEP) {
    8000134c:	03100713          	li	a4,49
    80001350:	42e78e63          	beq	a5,a4,8000178c <_ZN6KRiscv16interruptHandlerEv+0x520>
        else if (name == GETC) {
    80001354:	04100713          	li	a4,65
    80001358:	48e78063          	beq	a5,a4,800017d8 <_ZN6KRiscv16interruptHandlerEv+0x56c>
        else if (name == PUTC) {
    8000135c:	04200713          	li	a4,66
    80001360:	4ce78063          	beq	a5,a4,80001820 <_ZN6KRiscv16interruptHandlerEv+0x5b4>
        else if (name == RCONS) {
    80001364:	04300713          	li	a4,67
    80001368:	f6e796e3          	bne	a5,a4,800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
    8000136c:	00007797          	auipc	a5,0x7
    80001370:	22c7b783          	ld	a5,556(a5) # 80008598 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001374:	0007b783          	ld	a5,0(a5)
    80001378:	0007c783          	lbu	a5,0(a5)
                   && KConsole::inBuff->getCnt() < KConsole::BUFF_SIZE)
    8000137c:	0017f793          	andi	a5,a5,1
    80001380:	54078663          	beqz	a5,800018cc <_ZN6KRiscv16interruptHandlerEv+0x660>
    80001384:	00007797          	auipc	a5,0x7
    80001388:	2447b783          	ld	a5,580(a5) # 800085c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000138c:	0007b503          	ld	a0,0(a5)
    80001390:	00001097          	auipc	ra,0x1
    80001394:	da4080e7          	jalr	-604(ra) # 80002134 <_ZN8KConsole6getCntEv>
    80001398:	3ff00793          	li	a5,1023
    8000139c:	52a7c863          	blt	a5,a0,800018cc <_ZN6KRiscv16interruptHandlerEv+0x660>
                KConsole::inBuff->put(*(char*)CONSOLE_RX_DATA);
    800013a0:	00007797          	auipc	a5,0x7
    800013a4:	1f07b783          	ld	a5,496(a5) # 80008590 <_GLOBAL_OFFSET_TABLE_+0x8>
    800013a8:	0007b783          	ld	a5,0(a5)
    800013ac:	0007c583          	lbu	a1,0(a5)
    800013b0:	00007797          	auipc	a5,0x7
    800013b4:	2187b783          	ld	a5,536(a5) # 800085c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800013b8:	0007b503          	ld	a0,0(a5)
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	bb4080e7          	jalr	-1100(ra) # 80001f70 <_ZN8KConsole3putEc>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
    800013c4:	fa9ff06f          	j	8000136c <_ZN6KRiscv16interruptHandlerEv+0x100>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800013c8:	00007497          	auipc	s1,0x7
    800013cc:	2204b483          	ld	s1,544(s1) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800013d0:	0004b783          	ld	a5,0(s1)
    800013d4:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r" (sizeBlock));
    800013d8:	00058513          	mv	a0,a1
            void* res = KMemoryAllocator::mem_alloc(sizeBlock);
    800013dc:	00002097          	auipc	ra,0x2
    800013e0:	b5c080e7          	jalr	-1188(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
            asm volatile("mv a0, %0" : : "r" (res));
    800013e4:	00050513          	mv	a0,a0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    800013e8:	0004b783          	ld	a5,0(s1)
    800013ec:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrw scause, %0" :: "r"(scause));
}

inline uint64 KRiscv::r_sepc() {
    uint64 volatile sepc;
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800013f0:	141027f3          	csrr	a5,sepc
    800013f4:	f2f43023          	sd	a5,-224(s0)
    return sepc;
    800013f8:	f2043783          	ld	a5,-224(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    800013fc:	00478793          	addi	a5,a5,4
}

inline void KRiscv::w_sepc(uint64 sepc) {
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001400:	14179073          	csrw	sepc,a5
}
    80001404:	ed1ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001408:	00007497          	auipc	s1,0x7
    8000140c:	1e04b483          	ld	s1,480(s1) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001410:	0004b783          	ld	a5,0(s1)
    80001414:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(addr));
    80001418:	00058513          	mv	a0,a1
            int res = KMemoryAllocator::mem_free((void*)addr);
    8000141c:	00002097          	auipc	ra,0x2
    80001420:	c08080e7          	jalr	-1016(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
            asm volatile("mv a0, %0" : : "r"(res));
    80001424:	00050513          	mv	a0,a0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001428:	0004b783          	ld	a5,0(s1)
    8000142c:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001430:	141027f3          	csrr	a5,sepc
    80001434:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    80001438:	f2843783          	ld	a5,-216(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    8000143c:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001440:	14179073          	csrw	sepc,a5
}
    80001444:	e91ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
inline void KRiscv::ms_sstatus(uint64 mask) {
    asm volatile ("csrs sstatus, %0" :: "r"(mask));
}

inline void KRiscv::mc_sstatus(uint64 mask) {
    asm volatile ("csrc sstatus, %0" :: "r"(mask));
    80001448:	10000793          	li	a5,256
    8000144c:	1007b073          	csrc	sstatus,a5
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001450:	141027f3          	csrr	a5,sepc
    80001454:	f2f43823          	sd	a5,-208(s0)
    return sepc;
    80001458:	f3043783          	ld	a5,-208(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    8000145c:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001460:	14179073          	csrw	sepc,a5
}
    80001464:	e71ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    asm volatile ("csrs sstatus, %0" :: "r"(mask));
    80001468:	10000793          	li	a5,256
    8000146c:	1007a073          	csrs	sstatus,a5
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001470:	141027f3          	csrr	a5,sepc
    80001474:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    80001478:	f3843783          	ld	a5,-200(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    8000147c:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001480:	14179073          	csrw	sepc,a5
}
    80001484:	e51ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001488:	00007797          	auipc	a5,0x7
    8000148c:	1607b783          	ld	a5,352(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001490:	0007b783          	ld	a5,0(a5)
    80001494:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001498:	00058493          	mv	s1,a1
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    8000149c:	0607b603          	ld	a2,96(a5)
            asm volatile("mv %0, a2" : "=r"(fja));
    800014a0:	00060513          	mv	a0,a2
            asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    800014a4:	0687b683          	ld	a3,104(a5)
            asm volatile("mv %0, a3" : "=r"(args));
    800014a8:	00068593          	mv	a1,a3
            asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    800014ac:	0707b703          	ld	a4,112(a5)
            asm volatile("mv %0, a4" : "=r"(stack));
    800014b0:	00070613          	mv	a2,a4
            *rucka = KPCB::createThread(fja, args, stack);
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	11c080e7          	jalr	284(ra) # 800025d0 <_ZN4KPCB12createThreadEPFvPvES0_S0_>
    800014bc:	00a4b023          	sd	a0,0(s1)
            if (*rucka != nullptr) asm volatile("li a0, 0");
    800014c0:	02050863          	beqz	a0,800014f0 <_ZN6KRiscv16interruptHandlerEv+0x284>
    800014c4:	00000513          	li	a0,0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    800014c8:	00007797          	auipc	a5,0x7
    800014cc:	1207b783          	ld	a5,288(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800014d0:	0007b783          	ld	a5,0(a5)
    800014d4:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800014d8:	141027f3          	csrr	a5,sepc
    800014dc:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    800014e0:	f4043783          	ld	a5,-192(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    800014e4:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800014e8:	14179073          	csrw	sepc,a5
}
    800014ec:	de9ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            else asm volatile("li a0, -1");
    800014f0:	fff00513          	li	a0,-1
    800014f4:	fd5ff06f          	j	800014c8 <_ZN6KRiscv16interruptHandlerEv+0x25c>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800014f8:	00007797          	auipc	a5,0x7
    800014fc:	0f07b783          	ld	a5,240(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001500:	0007b783          	ld	a5,0(a5)
    80001504:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001508:	00058493          	mv	s1,a1
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    8000150c:	0607b603          	ld	a2,96(a5)
            asm volatile("mv %0, a2" : "=r"(fja));
    80001510:	00060513          	mv	a0,a2
            asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001514:	0687b683          	ld	a3,104(a5)
            asm volatile("mv %0, a3" : "=r"(args));
    80001518:	00068593          	mv	a1,a3
            asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    8000151c:	0707b703          	ld	a4,112(a5)
            asm volatile("mv %0, a4" : "=r"(stack));
    80001520:	00070613          	mv	a2,a4
            *rucka = KPCB::createThread(fja, args, stack);
    80001524:	00001097          	auipc	ra,0x1
    80001528:	0ac080e7          	jalr	172(ra) # 800025d0 <_ZN4KPCB12createThreadEPFvPvES0_S0_>
    8000152c:	00a4b023          	sd	a0,0(s1)
            if (*rucka != nullptr) {
    80001530:	04050463          	beqz	a0,80001578 <_ZN6KRiscv16interruptHandlerEv+0x30c>
    }
    void setSleeping(bool val) { sleeping = val; }
    void setWaiting(bool val) { waiting = val; }
    void setErr(bool val) { err = val; }
    int startIt() {
        if (started) return -1;
    80001534:	03454783          	lbu	a5,52(a0)
    80001538:	00079a63          	bnez	a5,8000154c <_ZN6KRiscv16interruptHandlerEv+0x2e0>
        started = true;
    8000153c:	00100793          	li	a5,1
    80001540:	02f50a23          	sb	a5,52(a0)
        KScheduler::put(this);
    80001544:	00001097          	auipc	ra,0x1
    80001548:	e34080e7          	jalr	-460(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
                asm volatile("li a0, 0");
    8000154c:	00000513          	li	a0,0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001550:	00007797          	auipc	a5,0x7
    80001554:	0987b783          	ld	a5,152(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001558:	0007b783          	ld	a5,0(a5)
    8000155c:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001560:	141027f3          	csrr	a5,sepc
    80001564:	f4f43423          	sd	a5,-184(s0)
    return sepc;
    80001568:	f4843783          	ld	a5,-184(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    8000156c:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001570:	14179073          	csrw	sepc,a5
}
    80001574:	d61ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            else asm volatile("li a0, -1");
    80001578:	fff00513          	li	a0,-1
    8000157c:	fd5ff06f          	j	80001550 <_ZN6KRiscv16interruptHandlerEv+0x2e4>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001580:	141027f3          	csrr	a5,sepc
    80001584:	f4f43c23          	sd	a5,-168(s0)
    return sepc;
    80001588:	f5843483          	ld	s1,-168(s0)
            uint64 sepc = r_sepc() + 4;
    8000158c:	00448493          	addi	s1,s1,4
}

inline uint64 KRiscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001590:	100027f3          	csrr	a5,sstatus
    80001594:	f4f43823          	sd	a5,-176(s0)
    return sstatus;
    80001598:	f5043903          	ld	s2,-176(s0)
            KPCB::running->setFinished(true);
    8000159c:	00007797          	auipc	a5,0x7
    800015a0:	0247b783          	ld	a5,36(a5) # 800085c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015a4:	0007b783          	ld	a5,0(a5)
        if (finished) return;
    800015a8:	0307c703          	lbu	a4,48(a5)
    800015ac:	02071063          	bnez	a4,800015cc <_ZN6KRiscv16interruptHandlerEv+0x360>
        finished = val;
    800015b0:	00100713          	li	a4,1
    800015b4:	02e78823          	sb	a4,48(a5)
        counter--;
    800015b8:	00007717          	auipc	a4,0x7
    800015bc:	02873703          	ld	a4,40(a4) # 800085e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800015c0:	00072783          	lw	a5,0(a4)
    800015c4:	fff7879b          	addiw	a5,a5,-1
    800015c8:	00f72023          	sw	a5,0(a4)
            KPCB::dispatch();
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	e80080e7          	jalr	-384(ra) # 8000244c <_ZN4KPCB8dispatchEv>
}

inline void KRiscv::w_sstatus(uint64 sstatus) {
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800015d4:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800015d8:	14149073          	csrw	sepc,s1
}
    800015dc:	cf9ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800015e0:	141027f3          	csrr	a5,sepc
    800015e4:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    800015e8:	f6843483          	ld	s1,-152(s0)
            uint64 sepc = r_sepc() + 4;
    800015ec:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800015f0:	100027f3          	csrr	a5,sstatus
    800015f4:	f6f43023          	sd	a5,-160(s0)
    return sstatus;
    800015f8:	f6043903          	ld	s2,-160(s0)
            KPCB::dispatch();
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	e50080e7          	jalr	-432(ra) # 8000244c <_ZN4KPCB8dispatchEv>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001604:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001608:	14149073          	csrw	sepc,s1
}
    8000160c:	cc9ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001610:	00007797          	auipc	a5,0x7
    80001614:	fd87b783          	ld	a5,-40(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001618:	0007b783          	ld	a5,0(a5)
    8000161c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001620:	00058493          	mv	s1,a1
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001624:	0607b603          	ld	a2,96(a5)
            asm volatile("mv %0, a2" : "=r"(init));
    80001628:	00060513          	mv	a0,a2
            *rucka = KSemaphore::createSemaphore(init);
    8000162c:	02051513          	slli	a0,a0,0x20
    80001630:	02055513          	srli	a0,a0,0x20
    80001634:	00002097          	auipc	ra,0x2
    80001638:	bf0080e7          	jalr	-1040(ra) # 80003224 <_ZN10KSemaphore15createSemaphoreEm>
    8000163c:	00a4b023          	sd	a0,0(s1)
            if (*rucka != nullptr) asm volatile("li a0, 0");
    80001640:	02050863          	beqz	a0,80001670 <_ZN6KRiscv16interruptHandlerEv+0x404>
    80001644:	00000513          	li	a0,0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001648:	00007797          	auipc	a5,0x7
    8000164c:	fa07b783          	ld	a5,-96(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001650:	0007b783          	ld	a5,0(a5)
    80001654:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001658:	141027f3          	csrr	a5,sepc
    8000165c:	f6f43823          	sd	a5,-144(s0)
    return sepc;
    80001660:	f7043783          	ld	a5,-144(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    80001664:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001668:	14179073          	csrw	sepc,a5
}
    8000166c:	c69ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            else asm volatile("li a0, -1");
    80001670:	fff00513          	li	a0,-1
    80001674:	fd5ff06f          	j	80001648 <_ZN6KRiscv16interruptHandlerEv+0x3dc>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001678:	00007797          	auipc	a5,0x7
    8000167c:	f707b783          	ld	a5,-144(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001680:	0007b783          	ld	a5,0(a5)
    80001684:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001688:	00058493          	mv	s1,a1
            delete rucka;
    8000168c:	02048e63          	beqz	s1,800016c8 <_ZN6KRiscv16interruptHandlerEv+0x45c>
#include "KPCB.hpp"

class KSemaphore {
public:
    ~KSemaphore() {
        while (head) {
    80001690:	0084b503          	ld	a0,8(s1)
    80001694:	02050463          	beqz	a0,800016bc <_ZN6KRiscv16interruptHandlerEv+0x450>
            KPCB* old = head;
            head = head->nextSemaphore;
    80001698:	04853783          	ld	a5,72(a0)
    8000169c:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    800016a0:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    800016a4:	00100793          	li	a5,1
    800016a8:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    800016ac:	02050923          	sb	zero,50(a0)
            old->setErr(true);
            old->setWaiting(false);
            KScheduler::put(old);
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	cc8080e7          	jalr	-824(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    800016b8:	fd9ff06f          	j	80001690 <_ZN6KRiscv16interruptHandlerEv+0x424>
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
        //return __mem_alloc(size);
    }
    void operator delete(void* addr) {
        KMemoryAllocator::mem_free(addr);
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00002097          	auipc	ra,0x2
    800016c4:	964080e7          	jalr	-1692(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800016c8:	141027f3          	csrr	a5,sepc
    800016cc:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    800016d0:	f7843783          	ld	a5,-136(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    800016d4:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800016d8:	14179073          	csrw	sepc,a5
}
    800016dc:	bf9ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800016e0:	141027f3          	csrr	a5,sepc
    800016e4:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800016e8:	f8843483          	ld	s1,-120(s0)
            uint64 sepc = r_sepc() + 4;
    800016ec:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800016f0:	100027f3          	csrr	a5,sstatus
    800016f4:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    800016f8:	f8043903          	ld	s2,-128(s0)
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800016fc:	00007797          	auipc	a5,0x7
    80001700:	eec7b783          	ld	a5,-276(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001704:	0007b783          	ld	a5,0(a5)
    80001708:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    8000170c:	00058513          	mv	a0,a1
            if (rucka) rucka->wait();
    80001710:	00050c63          	beqz	a0,80001728 <_ZN6KRiscv16interruptHandlerEv+0x4bc>
    void wait() { if(--val < 0) block(); }
    80001714:	00052783          	lw	a5,0(a0)
    80001718:	fff7879b          	addiw	a5,a5,-1
    8000171c:	00f52023          	sw	a5,0(a0)
    80001720:	02079713          	slli	a4,a5,0x20
    80001724:	00074863          	bltz	a4,80001734 <_ZN6KRiscv16interruptHandlerEv+0x4c8>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001728:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    8000172c:	14149073          	csrw	sepc,s1
}
    80001730:	ba5ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    80001734:	00002097          	auipc	ra,0x2
    80001738:	a40080e7          	jalr	-1472(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    8000173c:	fedff06f          	j	80001728 <_ZN6KRiscv16interruptHandlerEv+0x4bc>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001740:	00007797          	auipc	a5,0x7
    80001744:	ea87b783          	ld	a5,-344(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001748:	0007b783          	ld	a5,0(a5)
    8000174c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001750:	00058513          	mv	a0,a1
            if (rucka) rucka->signal();
    80001754:	00050a63          	beqz	a0,80001768 <_ZN6KRiscv16interruptHandlerEv+0x4fc>
    void signal() { if (val++ < 0) deblock(); }
    80001758:	00052783          	lw	a5,0(a0)
    8000175c:	0017871b          	addiw	a4,a5,1
    80001760:	00e52023          	sw	a4,0(a0)
    80001764:	0007ce63          	bltz	a5,80001780 <_ZN6KRiscv16interruptHandlerEv+0x514>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001768:	141027f3          	csrr	a5,sepc
    8000176c:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80001770:	f9043783          	ld	a5,-112(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    80001774:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001778:	14179073          	csrw	sepc,a5
}
    8000177c:	b59ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    80001780:	00002097          	auipc	ra,0x2
    80001784:	a70080e7          	jalr	-1424(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80001788:	fe1ff06f          	j	80001768 <_ZN6KRiscv16interruptHandlerEv+0x4fc>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    8000178c:	00007797          	auipc	a5,0x7
    80001790:	e5c7b783          	ld	a5,-420(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001794:	0007b783          	ld	a5,0(a5)
    80001798:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(t));
    8000179c:	00058513          	mv	a0,a1
            KSleep::add(t);
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	6ec080e7          	jalr	1772(ra) # 80002e8c <_ZN6KSleep3addEm>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800017a8:	141027f3          	csrr	a5,sepc
    800017ac:	faf43023          	sd	a5,-96(s0)
    return sepc;
    800017b0:	fa043483          	ld	s1,-96(s0)
            uint64 sepc = KRiscv::r_sepc() + 4;
    800017b4:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800017b8:	100027f3          	csrr	a5,sstatus
    800017bc:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    800017c0:	f9843903          	ld	s2,-104(s0)
            KPCB::dispatch();
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	c88080e7          	jalr	-888(ra) # 8000244c <_ZN4KPCB8dispatchEv>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800017cc:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800017d0:	14149073          	csrw	sepc,s1
}
    800017d4:	b01ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800017d8:	141027f3          	csrr	a5,sepc
    800017dc:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800017e0:	fb043483          	ld	s1,-80(s0)
            uint64 sepc = KRiscv::r_sepc() + 4;
    800017e4:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800017e8:	100027f3          	csrr	a5,sstatus
    800017ec:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800017f0:	fa843903          	ld	s2,-88(s0)
            char c = KConsole::inBuff->get();
    800017f4:	00007797          	auipc	a5,0x7
    800017f8:	dd47b783          	ld	a5,-556(a5) # 800085c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800017fc:	0007b503          	ld	a0,0(a5)
    80001800:	00001097          	auipc	ra,0x1
    80001804:	854080e7          	jalr	-1964(ra) # 80002054 <_ZN8KConsole3getEv>
            cGlob = c;
    80001808:	00007797          	auipc	a5,0x7
    8000180c:	df07b783          	ld	a5,-528(a5) # 800085f8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001810:	00a78023          	sb	a0,0(a5)
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001814:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001818:	14149073          	csrw	sepc,s1
}
    8000181c:	ab9ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001820:	00007797          	auipc	a5,0x7
    80001824:	dc87b783          	ld	a5,-568(a5) # 800085e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001828:	0007b783          	ld	a5,0(a5)
    8000182c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(c));
    80001830:	00058593          	mv	a1,a1
    80001834:	0ff5f593          	andi	a1,a1,255
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001838:	141027f3          	csrr	a5,sepc
    8000183c:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001840:	fc043483          	ld	s1,-64(s0)
            uint64 sepc = KRiscv::r_sepc() + 4;
    80001844:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001848:	100027f3          	csrr	a5,sstatus
    8000184c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001850:	fb843903          	ld	s2,-72(s0)
            KConsole::outBuff->put(c);
    80001854:	00007797          	auipc	a5,0x7
    80001858:	d9c7b783          	ld	a5,-612(a5) # 800085f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000185c:	0007b503          	ld	a0,0(a5)
    80001860:	00000097          	auipc	ra,0x0
    80001864:	710080e7          	jalr	1808(ra) # 80001f70 <_ZN8KConsole3putEc>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)
    80001868:	00007797          	auipc	a5,0x7
    8000186c:	d307b783          	ld	a5,-720(a5) # 80008598 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001870:	0007b783          	ld	a5,0(a5)
    80001874:	0007c783          	lbu	a5,0(a5)
                   && KConsole::outBuff->getCnt() > 0)
    80001878:	0207f793          	andi	a5,a5,32
    8000187c:	04078263          	beqz	a5,800018c0 <_ZN6KRiscv16interruptHandlerEv+0x654>
    80001880:	00007797          	auipc	a5,0x7
    80001884:	d707b783          	ld	a5,-656(a5) # 800085f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001888:	0007b503          	ld	a0,0(a5)
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	8a8080e7          	jalr	-1880(ra) # 80002134 <_ZN8KConsole6getCntEv>
    80001894:	02a05663          	blez	a0,800018c0 <_ZN6KRiscv16interruptHandlerEv+0x654>
                *(char*)CONSOLE_TX_DATA = KConsole::outBuff->get();
    80001898:	00007797          	auipc	a5,0x7
    8000189c:	d587b783          	ld	a5,-680(a5) # 800085f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018a0:	0007b503          	ld	a0,0(a5)
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	7b0080e7          	jalr	1968(ra) # 80002054 <_ZN8KConsole3getEv>
    800018ac:	00007797          	auipc	a5,0x7
    800018b0:	cfc7b783          	ld	a5,-772(a5) # 800085a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018b4:	0007b783          	ld	a5,0(a5)
    800018b8:	00a78023          	sb	a0,0(a5)
            while ((*(char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)
    800018bc:	fadff06f          	j	80001868 <_ZN6KRiscv16interruptHandlerEv+0x5fc>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800018c0:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800018c4:	14149073          	csrw	sepc,s1
}
    800018c8:	a0dff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800018cc:	141027f3          	csrr	a5,sepc
    800018d0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800018d4:	fc843783          	ld	a5,-56(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    800018d8:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800018dc:	14179073          	csrw	sepc,a5
}
    800018e0:	9f5ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
        KPCB::timeSliceCounter++;
    800018e4:	00007497          	auipc	s1,0x7
    800018e8:	cd44b483          	ld	s1,-812(s1) # 800085b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018ec:	0004b783          	ld	a5,0(s1)
    800018f0:	00178793          	addi	a5,a5,1
    800018f4:	00f4b023          	sd	a5,0(s1)
        KSleep::remove();
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	510080e7          	jalr	1296(ra) # 80002e08 <_ZN6KSleep6removeEv>
        if (KPCB::timeSliceCounter >= KPCB::running->TIME_SLICE) {
    80001900:	0004b703          	ld	a4,0(s1)
    80001904:	00100793          	li	a5,1
    80001908:	00e7e863          	bltu	a5,a4,80001918 <_ZN6KRiscv16interruptHandlerEv+0x6ac>
    asm volatile ("csrc sip, %0" :: "r"(mask));
    8000190c:	00200793          	li	a5,2
    80001910:	1447b073          	csrc	sip,a5
}
    80001914:	9c1ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001918:	141027f3          	csrr	a5,sepc
    8000191c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001920:	fd843483          	ld	s1,-40(s0)
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001924:	100027f3          	csrr	a5,sstatus
    80001928:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000192c:	fd043903          	ld	s2,-48(s0)
            KPCB::dispatch();
    80001930:	00001097          	auipc	ra,0x1
    80001934:	b1c080e7          	jalr	-1252(ra) # 8000244c <_ZN4KPCB8dispatchEv>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001938:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    8000193c:	14149073          	csrw	sepc,s1
}
    80001940:	fcdff06f          	j	8000190c <_ZN6KRiscv16interruptHandlerEv+0x6a0>
        int consID = plic_claim();
    80001944:	00003097          	auipc	ra,0x3
    80001948:	060080e7          	jalr	96(ra) # 800049a4 <plic_claim>
    8000194c:	00050493          	mv	s1,a0
        if (consID == CONSOLE_IRQ) {
    80001950:	00a00793          	li	a5,10
    80001954:	00f50a63          	beq	a0,a5,80001968 <_ZN6KRiscv16interruptHandlerEv+0x6fc>
        plic_complete(consID);
    80001958:	00048513          	mv	a0,s1
    8000195c:	00003097          	auipc	ra,0x3
    80001960:	080080e7          	jalr	128(ra) # 800049dc <plic_complete>
    80001964:	971ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
    80001968:	00007797          	auipc	a5,0x7
    8000196c:	c307b783          	ld	a5,-976(a5) # 80008598 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001970:	0007b783          	ld	a5,0(a5)
    80001974:	0007c783          	lbu	a5,0(a5)
                && KConsole::inBuff->getCnt() < KConsole::BUFF_SIZE)
    80001978:	0017f793          	andi	a5,a5,1
    8000197c:	fc078ee3          	beqz	a5,80001958 <_ZN6KRiscv16interruptHandlerEv+0x6ec>
    80001980:	00007797          	auipc	a5,0x7
    80001984:	c487b783          	ld	a5,-952(a5) # 800085c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001988:	0007b503          	ld	a0,0(a5)
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	7a8080e7          	jalr	1960(ra) # 80002134 <_ZN8KConsole6getCntEv>
    80001994:	3ff00793          	li	a5,1023
    80001998:	fca7c0e3          	blt	a5,a0,80001958 <_ZN6KRiscv16interruptHandlerEv+0x6ec>
                KConsole::inBuff->put(*(char*)CONSOLE_RX_DATA);
    8000199c:	00007797          	auipc	a5,0x7
    800019a0:	bf47b783          	ld	a5,-1036(a5) # 80008590 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019a4:	0007b783          	ld	a5,0(a5)
    800019a8:	0007c583          	lbu	a1,0(a5)
    800019ac:	00007797          	auipc	a5,0x7
    800019b0:	c1c7b783          	ld	a5,-996(a5) # 800085c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019b4:	0007b503          	ld	a0,0(a5)
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	5b8080e7          	jalr	1464(ra) # 80001f70 <_ZN8KConsole3putEc>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
    800019c0:	fa9ff06f          	j	80001968 <_ZN6KRiscv16interruptHandlerEv+0x6fc>
        printString("Error: read\n");
    800019c4:	00005517          	auipc	a0,0x5
    800019c8:	65c50513          	addi	a0,a0,1628 # 80007020 <CONSOLE_STATUS+0x10>
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	89c080e7          	jalr	-1892(ra) # 80003268 <_Z11printStringPKc>
    800019d4:	901ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
        printString("Error: write\n");
    800019d8:	00005517          	auipc	a0,0x5
    800019dc:	65850513          	addi	a0,a0,1624 # 80007030 <CONSOLE_STATUS+0x20>
    800019e0:	00002097          	auipc	ra,0x2
    800019e4:	888080e7          	jalr	-1912(ra) # 80003268 <_Z11printStringPKc>
    800019e8:	8edff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>
        printString("Error: illegal\n");
    800019ec:	00005517          	auipc	a0,0x5
    800019f0:	65450513          	addi	a0,a0,1620 # 80007040 <CONSOLE_STATUS+0x30>
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	874080e7          	jalr	-1932(ra) # 80003268 <_Z11printStringPKc>
    800019fc:	8d9ff06f          	j	800012d4 <_ZN6KRiscv16interruptHandlerEv+0x68>

0000000080001a00 <_Z9mem_allocm>:

#include "../h/syscall_c.hpp"
#include "../h/KPCB.hpp"
char cGlob;

void *mem_alloc(size_t size) {
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00813423          	sd	s0,8(sp)
    80001a08:	01010413          	addi	s0,sp,16
    size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    80001a0c:	01050513          	addi	a0,a0,16
    80001a10:	00655793          	srli	a5,a0,0x6
    80001a14:	03f57513          	andi	a0,a0,63
    80001a18:	00050463          	beqz	a0,80001a20 <_Z9mem_allocm+0x20>
    80001a1c:	00100513          	li	a0,1
    80001a20:	00a78533          	add	a0,a5,a0
    asm volatile("mv a1, %0" : : "r" (sizeBlock));
    80001a24:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x01");
    80001a28:	00100513          	li	a0,1
    asm volatile("ecall");
    80001a2c:	00000073          	ecall
    uint64 res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001a30:	00050513          	mv	a0,a0
    return (void*)res;
}
    80001a34:	00813403          	ld	s0,8(sp)
    80001a38:	01010113          	addi	sp,sp,16
    80001a3c:	00008067          	ret

0000000080001a40 <_Z8mem_freePv>:

int mem_free(void* addr) {
    80001a40:	ff010113          	addi	sp,sp,-16
    80001a44:	00813423          	sd	s0,8(sp)
    80001a48:	01010413          	addi	s0,sp,16
    uint64 adr = (uint64)addr;
    asm volatile("mv a1, %0" : : "r" (adr));
    80001a4c:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    80001a50:	00200513          	li	a0,2
    asm volatile("ecall");
    80001a54:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001a58:	00050513          	mv	a0,a0
    return res;
}
    80001a5c:	0005051b          	sext.w	a0,a0
    80001a60:	00813403          	ld	s0,8(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_Z8userModev>:

void userMode() {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00813423          	sd	s0,8(sp)
    80001a74:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x05");
    80001a78:	00500513          	li	a0,5
    asm volatile("ecall");
    80001a7c:	00000073          	ecall
}
    80001a80:	00813403          	ld	s0,8(sp)
    80001a84:	01010113          	addi	sp,sp,16
    80001a88:	00008067          	ret

0000000080001a8c <_Z10kernelModev>:

void kernelMode() {
    80001a8c:	ff010113          	addi	sp,sp,-16
    80001a90:	00813423          	sd	s0,8(sp)
    80001a94:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x06");
    80001a98:	00600513          	li	a0,6
    asm volatile("ecall");
    80001a9c:	00000073          	ecall
}
    80001aa0:	00813403          	ld	s0,8(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <_Z17thread_create_CPPPP4KPCBPFvPvES2_>:

int thread_create_CPP(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;
    80001aac:	08050263          	beqz	a0,80001b30 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x84>
int thread_create_CPP(thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001ab0:	fd010113          	addi	sp,sp,-48
    80001ab4:	02113423          	sd	ra,40(sp)
    80001ab8:	02813023          	sd	s0,32(sp)
    80001abc:	00913c23          	sd	s1,24(sp)
    80001ac0:	01213823          	sd	s2,16(sp)
    80001ac4:	01313423          	sd	s3,8(sp)
    80001ac8:	03010413          	addi	s0,sp,48
    80001acc:	00050913          	mv	s2,a0
    80001ad0:	00058993          	mv	s3,a1
    if (!handle || !start_routine) return -1;
    80001ad4:	06058263          	beqz	a1,80001b38 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x8c>
    uint64 rucka = (uint64)handle;
    uint64 fja = (uint64)start_routine;
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001ad8:	04060863          	beqz	a2,80001b28 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x7c>
    80001adc:	00060493          	mv	s1,a2
    void* stack = mem_alloc(2 * DEFAULT_STACK_SIZE);
    80001ae0:	00002537          	lui	a0,0x2
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	f1c080e7          	jalr	-228(ra) # 80001a00 <_Z9mem_allocm>
    asm volatile("mv a4, %0" :: "r"((uint64)stack));
    80001aec:	00050713          	mv	a4,a0
    asm volatile("mv a3, %0" :: "r"(args));
    80001af0:	00048693          	mv	a3,s1
    asm volatile("mv a2, %0" :: "r"(fja));
    80001af4:	00098613          	mv	a2,s3
    asm volatile("mv a1, %0" :: "r"(rucka));
    80001af8:	00090593          	mv	a1,s2
    asm volatile("li a0, 0x10");
    80001afc:	01000513          	li	a0,16
    asm volatile("ecall");
    80001b00:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r"(res));
    80001b04:	00050513          	mv	a0,a0
    80001b08:	0005051b          	sext.w	a0,a0
    return res;
}
    80001b0c:	02813083          	ld	ra,40(sp)
    80001b10:	02013403          	ld	s0,32(sp)
    80001b14:	01813483          	ld	s1,24(sp)
    80001b18:	01013903          	ld	s2,16(sp)
    80001b1c:	00813983          	ld	s3,8(sp)
    80001b20:	03010113          	addi	sp,sp,48
    80001b24:	00008067          	ret
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001b28:	00000493          	li	s1,0
    80001b2c:	fb5ff06f          	j	80001ae0 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x34>
    if (!handle || !start_routine) return -1;
    80001b30:	fff00513          	li	a0,-1
}
    80001b34:	00008067          	ret
    if (!handle || !start_routine) return -1;
    80001b38:	fff00513          	li	a0,-1
    80001b3c:	fd1ff06f          	j	80001b0c <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x60>

0000000080001b40 <_Z13thread_createPP4KPCBPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;
    80001b40:	08050263          	beqz	a0,80001bc4 <_Z13thread_createPP4KPCBPFvPvES2_+0x84>
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001b44:	fd010113          	addi	sp,sp,-48
    80001b48:	02113423          	sd	ra,40(sp)
    80001b4c:	02813023          	sd	s0,32(sp)
    80001b50:	00913c23          	sd	s1,24(sp)
    80001b54:	01213823          	sd	s2,16(sp)
    80001b58:	01313423          	sd	s3,8(sp)
    80001b5c:	03010413          	addi	s0,sp,48
    80001b60:	00050913          	mv	s2,a0
    80001b64:	00058993          	mv	s3,a1
    if (!handle || !start_routine) return -1;
    80001b68:	06058263          	beqz	a1,80001bcc <_Z13thread_createPP4KPCBPFvPvES2_+0x8c>
    uint64 rucka = (uint64)handle;
    uint64 fja = (uint64)start_routine;
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001b6c:	04060863          	beqz	a2,80001bbc <_Z13thread_createPP4KPCBPFvPvES2_+0x7c>
    80001b70:	00060493          	mv	s1,a2
    void* stack = mem_alloc(2 * DEFAULT_STACK_SIZE);
    80001b74:	00002537          	lui	a0,0x2
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	e88080e7          	jalr	-376(ra) # 80001a00 <_Z9mem_allocm>
    asm volatile("mv a4, %0" :: "r"((uint64)stack));
    80001b80:	00050713          	mv	a4,a0
    asm volatile("mv a3, %0" :: "r"(args));
    80001b84:	00048693          	mv	a3,s1
    asm volatile("mv a2, %0" :: "r"(fja));
    80001b88:	00098613          	mv	a2,s3
    asm volatile("mv a1, %0" :: "r"(rucka));
    80001b8c:	00090593          	mv	a1,s2
    asm volatile("li a0, 0x11");
    80001b90:	01100513          	li	a0,17
    asm volatile("ecall");
    80001b94:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r"(res));
    80001b98:	00050513          	mv	a0,a0
    80001b9c:	0005051b          	sext.w	a0,a0
    return res;
}
    80001ba0:	02813083          	ld	ra,40(sp)
    80001ba4:	02013403          	ld	s0,32(sp)
    80001ba8:	01813483          	ld	s1,24(sp)
    80001bac:	01013903          	ld	s2,16(sp)
    80001bb0:	00813983          	ld	s3,8(sp)
    80001bb4:	03010113          	addi	sp,sp,48
    80001bb8:	00008067          	ret
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001bbc:	00000493          	li	s1,0
    80001bc0:	fb5ff06f          	j	80001b74 <_Z13thread_createPP4KPCBPFvPvES2_+0x34>
    if (!handle || !start_routine) return -1;
    80001bc4:	fff00513          	li	a0,-1
}
    80001bc8:	00008067          	ret
    if (!handle || !start_routine) return -1;
    80001bcc:	fff00513          	li	a0,-1
    80001bd0:	fd1ff06f          	j	80001ba0 <_Z13thread_createPP4KPCBPFvPvES2_+0x60>

0000000080001bd4 <_Z11thread_exitv>:

int thread_exit() {
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00813423          	sd	s0,8(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x12");
    80001be0:	01200513          	li	a0,18
    asm volatile("ecall");
    80001be4:	00000073          	ecall
    return -1;
}
    80001be8:	fff00513          	li	a0,-1
    80001bec:	00813403          	ld	s0,8(sp)
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	00008067          	ret

0000000080001bf8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    80001c04:	01300513          	li	a0,19
    asm volatile("ecall");
    80001c08:	00000073          	ecall
}
    80001c0c:	00813403          	ld	s0,8(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <_Z8sem_openPP10KSemaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00813423          	sd	s0,8(sp)
    80001c20:	01010413          	addi	s0,sp,16
    asm volatile("mv a2, %0" :: "r"((uint64)init));
    80001c24:	02059593          	slli	a1,a1,0x20
    80001c28:	0205d593          	srli	a1,a1,0x20
    80001c2c:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    80001c30:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x21");
    80001c34:	02100513          	li	a0,33
    asm volatile("ecall");
    80001c38:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001c3c:	00050513          	mv	a0,a0
    return res;
}
    80001c40:	0005051b          	sext.w	a0,a0
    80001c44:	00813403          	ld	s0,8(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_Z9sem_closeP10KSemaphore>:

int sem_close(sem_t handle) {
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00813423          	sd	s0,8(sp)
    80001c58:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    80001c5c:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x22");
    80001c60:	02200513          	li	a0,34
    asm volatile("ecall");
    80001c64:	00000073          	ecall
    return 0;
}
    80001c68:	00000513          	li	a0,0
    80001c6c:	00813403          	ld	s0,8(sp)
    80001c70:	01010113          	addi	sp,sp,16
    80001c74:	00008067          	ret

0000000080001c78 <_Z8sem_waitP10KSemaphore>:

int sem_wait(sem_t id) {
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00813423          	sd	s0,8(sp)
    80001c80:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"((uint64)id));
    80001c84:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x23");
    80001c88:	02300513          	li	a0,35
    asm volatile("ecall");
    80001c8c:	00000073          	ecall
    int res = 0;
    if (KPCB::running->isErr()) {
    80001c90:	00007797          	auipc	a5,0x7
    80001c94:	9307b783          	ld	a5,-1744(a5) # 800085c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c98:	0007b783          	ld	a5,0(a5)
    bool isErr() const { return err; }
    80001c9c:	0337c703          	lbu	a4,51(a5)
    80001ca0:	00071a63          	bnez	a4,80001cb4 <_Z8sem_waitP10KSemaphore+0x3c>
    int res = 0;
    80001ca4:	00000513          	li	a0,0
        res = -1;
        KPCB::running->setErr(false);
    }
    return res;
}
    80001ca8:	00813403          	ld	s0,8(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret
    void setErr(bool val) { err = val; }
    80001cb4:	020789a3          	sb	zero,51(a5)
        res = -1;
    80001cb8:	fff00513          	li	a0,-1
    80001cbc:	fedff06f          	j	80001ca8 <_Z8sem_waitP10KSemaphore+0x30>

0000000080001cc0 <_Z10sem_signalP10KSemaphore>:

int sem_signal(sem_t id) {
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00813423          	sd	s0,8(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"((uint64)id));
    80001ccc:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x24");
    80001cd0:	02400513          	li	a0,36
    asm volatile("ecall");
    80001cd4:	00000073          	ecall
    return 0;
}
    80001cd8:	00000513          	li	a0,0
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" : : "r" (time));
    80001cf4:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x31");
    80001cf8:	03100513          	li	a0,49
    asm volatile("ecall");
    80001cfc:	00000073          	ecall
    return 0;
}
    80001d00:	00000513          	li	a0,0
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_Z4getcv>:

char getc() {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00813423          	sd	s0,8(sp)
    80001d18:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x41");
    80001d1c:	04100513          	li	a0,65
    asm volatile("ecall");
    80001d20:	00000073          	ecall
    char res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001d24:	00050793          	mv	a5,a0
    return cGlob;
}
    80001d28:	00007517          	auipc	a0,0x7
    80001d2c:	91854503          	lbu	a0,-1768(a0) # 80008640 <cGlob>
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_Z4putcc>:

void putc(char c) {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" : : "r" ((uint64)c));
    80001d48:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x42");
    80001d4c:	04200513          	li	a0,66
    asm volatile("ecall");
    80001d50:	00000073          	ecall
}
    80001d54:	00813403          	ld	s0,8(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_Z8readConsv>:

void readCons() {
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00813423          	sd	s0,8(sp)
    80001d68:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x43");
    80001d6c:	04300513          	li	a0,67
    asm volatile("ecall");
    80001d70:	00000073          	ecall
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN8KConsoleC1Ei>:
#include "../h/KSemaphore.hpp"

KConsole* KConsole::inBuff = nullptr;
KConsole* KConsole::outBuff = nullptr;

KConsole::KConsole(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80001d80:	fe010113          	addi	sp,sp,-32
    80001d84:	00113c23          	sd	ra,24(sp)
    80001d88:	00813823          	sd	s0,16(sp)
    80001d8c:	00913423          	sd	s1,8(sp)
    80001d90:	01213023          	sd	s2,0(sp)
    80001d94:	02010413          	addi	s0,sp,32
    80001d98:	00050493          	mv	s1,a0
    80001d9c:	00058913          	mv	s2,a1
    80001da0:	0015871b          	addiw	a4,a1,1
    80001da4:	0007079b          	sext.w	a5,a4
    80001da8:	00e52023          	sw	a4,0(a0)
    80001dac:	00052823          	sw	zero,16(a0)
    80001db0:	00052a23          	sw	zero,20(a0)
    size_t sizeBlock = (sizeof(char)*cap + 16) / MEM_BLOCK_SIZE + ((sizeof(char)*cap + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    80001db4:	01078793          	addi	a5,a5,16
    80001db8:	0067d513          	srli	a0,a5,0x6
    80001dbc:	03f7f793          	andi	a5,a5,63
    80001dc0:	00078463          	beqz	a5,80001dc8 <_ZN8KConsoleC1Ei+0x48>
    80001dc4:	00100793          	li	a5,1
    buffer = (char*)KMemoryAllocator::mem_alloc(sizeBlock);
    80001dc8:	00f50533          	add	a0,a0,a5
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	16c080e7          	jalr	364(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
    80001dd4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = KSemaphore::createSemaphore(0);
    80001dd8:	00000513          	li	a0,0
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	448080e7          	jalr	1096(ra) # 80003224 <_ZN10KSemaphore15createSemaphoreEm>
    80001de4:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = KSemaphore::createSemaphore(_cap);
    80001de8:	00090513          	mv	a0,s2
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	438080e7          	jalr	1080(ra) # 80003224 <_ZN10KSemaphore15createSemaphoreEm>
    80001df4:	00a4bc23          	sd	a0,24(s1)
    mutexHead = KSemaphore::createSemaphore(1);
    80001df8:	00100513          	li	a0,1
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	428080e7          	jalr	1064(ra) # 80003224 <_ZN10KSemaphore15createSemaphoreEm>
    80001e04:	02a4b423          	sd	a0,40(s1)
    mutexTail = KSemaphore::createSemaphore(1);
    80001e08:	00100513          	li	a0,1
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	418080e7          	jalr	1048(ra) # 80003224 <_ZN10KSemaphore15createSemaphoreEm>
    80001e14:	02a4b823          	sd	a0,48(s1)
}
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	00013903          	ld	s2,0(sp)
    80001e28:	02010113          	addi	sp,sp,32
    80001e2c:	00008067          	ret

0000000080001e30 <_ZN8KConsoleD1Ev>:

KConsole::~KConsole() {
    80001e30:	fe010113          	addi	sp,sp,-32
    80001e34:	00113c23          	sd	ra,24(sp)
    80001e38:	00813823          	sd	s0,16(sp)
    80001e3c:	00913423          	sd	s1,8(sp)
    80001e40:	01213023          	sd	s2,0(sp)
    80001e44:	02010413          	addi	s0,sp,32
    80001e48:	00050913          	mv	s2,a0
    KMemoryAllocator::mem_free(buffer);
    80001e4c:	00853503          	ld	a0,8(a0)
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	1d4080e7          	jalr	468(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    delete itemAvailable;
    80001e58:	02093483          	ld	s1,32(s2)
    80001e5c:	02048e63          	beqz	s1,80001e98 <_ZN8KConsoleD1Ev+0x68>
        while (head) {
    80001e60:	0084b503          	ld	a0,8(s1)
    80001e64:	02050463          	beqz	a0,80001e8c <_ZN8KConsoleD1Ev+0x5c>
            head = head->nextSemaphore;
    80001e68:	04853783          	ld	a5,72(a0)
    80001e6c:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80001e70:	04053423          	sd	zero,72(a0)
    80001e74:	00100793          	li	a5,1
    80001e78:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80001e7c:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	4f8080e7          	jalr	1272(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80001e88:	fd9ff06f          	j	80001e60 <_ZN8KConsoleD1Ev+0x30>
        KMemoryAllocator::mem_free(addr);
    80001e8c:	00048513          	mv	a0,s1
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	194080e7          	jalr	404(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    delete spaceAvailable;
    80001e98:	01893483          	ld	s1,24(s2)
    80001e9c:	02048e63          	beqz	s1,80001ed8 <_ZN8KConsoleD1Ev+0xa8>
        while (head) {
    80001ea0:	0084b503          	ld	a0,8(s1)
    80001ea4:	02050463          	beqz	a0,80001ecc <_ZN8KConsoleD1Ev+0x9c>
            head = head->nextSemaphore;
    80001ea8:	04853783          	ld	a5,72(a0)
    80001eac:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80001eb0:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80001eb4:	00100793          	li	a5,1
    80001eb8:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80001ebc:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	4b8080e7          	jalr	1208(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80001ec8:	fd9ff06f          	j	80001ea0 <_ZN8KConsoleD1Ev+0x70>
        KMemoryAllocator::mem_free(addr);
    80001ecc:	00048513          	mv	a0,s1
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	154080e7          	jalr	340(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    delete mutexTail;
    80001ed8:	03093483          	ld	s1,48(s2)
    80001edc:	02048e63          	beqz	s1,80001f18 <_ZN8KConsoleD1Ev+0xe8>
        while (head) {
    80001ee0:	0084b503          	ld	a0,8(s1)
    80001ee4:	02050463          	beqz	a0,80001f0c <_ZN8KConsoleD1Ev+0xdc>
            head = head->nextSemaphore;
    80001ee8:	04853783          	ld	a5,72(a0)
    80001eec:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80001ef0:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80001ef4:	00100793          	li	a5,1
    80001ef8:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80001efc:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	478080e7          	jalr	1144(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80001f08:	fd9ff06f          	j	80001ee0 <_ZN8KConsoleD1Ev+0xb0>
        KMemoryAllocator::mem_free(addr);
    80001f0c:	00048513          	mv	a0,s1
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	114080e7          	jalr	276(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    delete mutexHead;
    80001f18:	02893483          	ld	s1,40(s2)
    80001f1c:	02048e63          	beqz	s1,80001f58 <_ZN8KConsoleD1Ev+0x128>
        while (head) {
    80001f20:	0084b503          	ld	a0,8(s1)
    80001f24:	02050463          	beqz	a0,80001f4c <_ZN8KConsoleD1Ev+0x11c>
            head = head->nextSemaphore;
    80001f28:	04853783          	ld	a5,72(a0)
    80001f2c:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80001f30:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80001f34:	00100793          	li	a5,1
    80001f38:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80001f3c:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	438080e7          	jalr	1080(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80001f48:	fd9ff06f          	j	80001f20 <_ZN8KConsoleD1Ev+0xf0>
        KMemoryAllocator::mem_free(addr);
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	0d4080e7          	jalr	212(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
}
    80001f58:	01813083          	ld	ra,24(sp)
    80001f5c:	01013403          	ld	s0,16(sp)
    80001f60:	00813483          	ld	s1,8(sp)
    80001f64:	00013903          	ld	s2,0(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN8KConsole3putEc>:

void KConsole::put(char val) {
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	01213023          	sd	s2,0(sp)
    80001f84:	02010413          	addi	s0,sp,32
    80001f88:	00050493          	mv	s1,a0
    80001f8c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80001f90:	01853503          	ld	a0,24(a0)
    void wait() { if(--val < 0) block(); }
    80001f94:	00052783          	lw	a5,0(a0)
    80001f98:	fff7879b          	addiw	a5,a5,-1
    80001f9c:	00f52023          	sw	a5,0(a0)
    80001fa0:	02079713          	slli	a4,a5,0x20
    80001fa4:	08074063          	bltz	a4,80002024 <_ZN8KConsole3putEc+0xb4>
    mutexTail->wait();
    80001fa8:	0304b503          	ld	a0,48(s1)
    80001fac:	00052783          	lw	a5,0(a0)
    80001fb0:	fff7879b          	addiw	a5,a5,-1
    80001fb4:	00f52023          	sw	a5,0(a0)
    80001fb8:	02079713          	slli	a4,a5,0x20
    80001fbc:	06074a63          	bltz	a4,80002030 <_ZN8KConsole3putEc+0xc0>

    buffer[tail] = val;
    80001fc0:	0084b783          	ld	a5,8(s1)
    80001fc4:	0144a703          	lw	a4,20(s1)
    80001fc8:	00e787b3          	add	a5,a5,a4
    80001fcc:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % cap;
    80001fd0:	0144a783          	lw	a5,20(s1)
    80001fd4:	0017879b          	addiw	a5,a5,1
    80001fd8:	0004a703          	lw	a4,0(s1)
    80001fdc:	02e7e7bb          	remw	a5,a5,a4
    80001fe0:	00f4aa23          	sw	a5,20(s1)

    mutexTail->signal();
    80001fe4:	0304b503          	ld	a0,48(s1)
    void signal() { if (val++ < 0) deblock(); }
    80001fe8:	00052783          	lw	a5,0(a0)
    80001fec:	0017871b          	addiw	a4,a5,1
    80001ff0:	00e52023          	sw	a4,0(a0)
    80001ff4:	0407c463          	bltz	a5,8000203c <_ZN8KConsole3putEc+0xcc>
    itemAvailable->signal();
    80001ff8:	0204b503          	ld	a0,32(s1)
    80001ffc:	00052783          	lw	a5,0(a0)
    80002000:	0017871b          	addiw	a4,a5,1
    80002004:	00e52023          	sw	a4,0(a0)
    80002008:	0407c063          	bltz	a5,80002048 <_ZN8KConsole3putEc+0xd8>

}
    8000200c:	01813083          	ld	ra,24(sp)
    80002010:	01013403          	ld	s0,16(sp)
    80002014:	00813483          	ld	s1,8(sp)
    80002018:	00013903          	ld	s2,0(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret
    void wait() { if(--val < 0) block(); }
    80002024:	00001097          	auipc	ra,0x1
    80002028:	150080e7          	jalr	336(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    8000202c:	f7dff06f          	j	80001fa8 <_ZN8KConsole3putEc+0x38>
    80002030:	00001097          	auipc	ra,0x1
    80002034:	144080e7          	jalr	324(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    80002038:	f89ff06f          	j	80001fc0 <_ZN8KConsole3putEc+0x50>
    void signal() { if (val++ < 0) deblock(); }
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	1b4080e7          	jalr	436(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80002044:	fb5ff06f          	j	80001ff8 <_ZN8KConsole3putEc+0x88>
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	1a8080e7          	jalr	424(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80002050:	fbdff06f          	j	8000200c <_ZN8KConsole3putEc+0x9c>

0000000080002054 <_ZN8KConsole3getEv>:

int KConsole::get() {
    80002054:	fe010113          	addi	sp,sp,-32
    80002058:	00113c23          	sd	ra,24(sp)
    8000205c:	00813823          	sd	s0,16(sp)
    80002060:	00913423          	sd	s1,8(sp)
    80002064:	01213023          	sd	s2,0(sp)
    80002068:	02010413          	addi	s0,sp,32
    8000206c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002070:	02053503          	ld	a0,32(a0)
    void wait() { if(--val < 0) block(); }
    80002074:	00052783          	lw	a5,0(a0)
    80002078:	fff7879b          	addiw	a5,a5,-1
    8000207c:	00f52023          	sw	a5,0(a0)
    80002080:	02079713          	slli	a4,a5,0x20
    80002084:	08074063          	bltz	a4,80002104 <_ZN8KConsole3getEv+0xb0>
    mutexHead->wait();
    80002088:	0284b503          	ld	a0,40(s1)
    8000208c:	00052783          	lw	a5,0(a0)
    80002090:	fff7879b          	addiw	a5,a5,-1
    80002094:	00f52023          	sw	a5,0(a0)
    80002098:	02079713          	slli	a4,a5,0x20
    8000209c:	06074a63          	bltz	a4,80002110 <_ZN8KConsole3getEv+0xbc>

    char ret = buffer[head];
    800020a0:	0084b703          	ld	a4,8(s1)
    800020a4:	0104a783          	lw	a5,16(s1)
    800020a8:	00f70733          	add	a4,a4,a5
    800020ac:	00074903          	lbu	s2,0(a4)
    head = (head + 1) % cap;
    800020b0:	0017879b          	addiw	a5,a5,1
    800020b4:	0004a703          	lw	a4,0(s1)
    800020b8:	02e7e7bb          	remw	a5,a5,a4
    800020bc:	00f4a823          	sw	a5,16(s1)

    mutexHead->signal();
    800020c0:	0284b503          	ld	a0,40(s1)
    void signal() { if (val++ < 0) deblock(); }
    800020c4:	00052783          	lw	a5,0(a0)
    800020c8:	0017871b          	addiw	a4,a5,1
    800020cc:	00e52023          	sw	a4,0(a0)
    800020d0:	0407c663          	bltz	a5,8000211c <_ZN8KConsole3getEv+0xc8>
    spaceAvailable->signal();
    800020d4:	0184b503          	ld	a0,24(s1)
    800020d8:	00052783          	lw	a5,0(a0)
    800020dc:	0017871b          	addiw	a4,a5,1
    800020e0:	00e52023          	sw	a4,0(a0)
    800020e4:	0407c263          	bltz	a5,80002128 <_ZN8KConsole3getEv+0xd4>
    return ret;
}
    800020e8:	00090513          	mv	a0,s2
    800020ec:	01813083          	ld	ra,24(sp)
    800020f0:	01013403          	ld	s0,16(sp)
    800020f4:	00813483          	ld	s1,8(sp)
    800020f8:	00013903          	ld	s2,0(sp)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00008067          	ret
    void wait() { if(--val < 0) block(); }
    80002104:	00001097          	auipc	ra,0x1
    80002108:	070080e7          	jalr	112(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    8000210c:	f7dff06f          	j	80002088 <_ZN8KConsole3getEv+0x34>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	064080e7          	jalr	100(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    80002118:	f89ff06f          	j	800020a0 <_ZN8KConsole3getEv+0x4c>
    void signal() { if (val++ < 0) deblock(); }
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	0d4080e7          	jalr	212(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80002124:	fb1ff06f          	j	800020d4 <_ZN8KConsole3getEv+0x80>
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	0c8080e7          	jalr	200(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80002130:	fb9ff06f          	j	800020e8 <_ZN8KConsole3getEv+0x94>

0000000080002134 <_ZN8KConsole6getCntEv>:

int KConsole::getCnt() {
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	01213023          	sd	s2,0(sp)
    80002148:	02010413          	addi	s0,sp,32
    8000214c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002150:	02853503          	ld	a0,40(a0)
    void wait() { if(--val < 0) block(); }
    80002154:	00052783          	lw	a5,0(a0)
    80002158:	fff7879b          	addiw	a5,a5,-1
    8000215c:	00f52023          	sw	a5,0(a0)
    80002160:	02079713          	slli	a4,a5,0x20
    80002164:	06074863          	bltz	a4,800021d4 <_ZN8KConsole6getCntEv+0xa0>
    mutexTail->wait();
    80002168:	0304b503          	ld	a0,48(s1)
    8000216c:	00052783          	lw	a5,0(a0)
    80002170:	fff7879b          	addiw	a5,a5,-1
    80002174:	00f52023          	sw	a5,0(a0)
    80002178:	02079713          	slli	a4,a5,0x20
    8000217c:	06074263          	bltz	a4,800021e0 <_ZN8KConsole6getCntEv+0xac>

    if (tail >= head) {
    80002180:	0144a783          	lw	a5,20(s1)
    80002184:	0104a903          	lw	s2,16(s1)
    80002188:	0727c263          	blt	a5,s2,800021ec <_ZN8KConsole6getCntEv+0xb8>
        ret = tail - head;
    8000218c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002190:	0304b503          	ld	a0,48(s1)
    void signal() { if (val++ < 0) deblock(); }
    80002194:	00052783          	lw	a5,0(a0)
    80002198:	0017871b          	addiw	a4,a5,1
    8000219c:	00e52023          	sw	a4,0(a0)
    800021a0:	0407ce63          	bltz	a5,800021fc <_ZN8KConsole6getCntEv+0xc8>
    mutexHead->signal();
    800021a4:	0284b503          	ld	a0,40(s1)
    800021a8:	00052783          	lw	a5,0(a0)
    800021ac:	0017871b          	addiw	a4,a5,1
    800021b0:	00e52023          	sw	a4,0(a0)
    800021b4:	0407ca63          	bltz	a5,80002208 <_ZN8KConsole6getCntEv+0xd4>
    return ret;
}
    800021b8:	00090513          	mv	a0,s2
    800021bc:	01813083          	ld	ra,24(sp)
    800021c0:	01013403          	ld	s0,16(sp)
    800021c4:	00813483          	ld	s1,8(sp)
    800021c8:	00013903          	ld	s2,0(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret
    void wait() { if(--val < 0) block(); }
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	fa0080e7          	jalr	-96(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    800021dc:	f8dff06f          	j	80002168 <_ZN8KConsole6getCntEv+0x34>
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	f94080e7          	jalr	-108(ra) # 80003174 <_ZN10KSemaphore5blockEv>
    800021e8:	f99ff06f          	j	80002180 <_ZN8KConsole6getCntEv+0x4c>
        ret = cap - head + tail;
    800021ec:	0004a703          	lw	a4,0(s1)
    800021f0:	4127093b          	subw	s2,a4,s2
    800021f4:	00f9093b          	addw	s2,s2,a5
    800021f8:	f99ff06f          	j	80002190 <_ZN8KConsole6getCntEv+0x5c>
    void signal() { if (val++ < 0) deblock(); }
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	ff4080e7          	jalr	-12(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80002204:	fa1ff06f          	j	800021a4 <_ZN8KConsole6getCntEv+0x70>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	fe8080e7          	jalr	-24(ra) # 800031f0 <_ZN10KSemaphore7deblockEv>
    80002210:	fa9ff06f          	j	800021b8 <_ZN8KConsole6getCntEv+0x84>

0000000080002214 <_ZN8KConsole18initConsoleBuffersEv>:

void KConsole::initConsoleBuffers() {
    80002214:	fe010113          	addi	sp,sp,-32
    80002218:	00113c23          	sd	ra,24(sp)
    8000221c:	00813823          	sd	s0,16(sp)
    80002220:	00913423          	sd	s1,8(sp)
    80002224:	01213023          	sd	s2,0(sp)
    80002228:	02010413          	addi	s0,sp,32
    char* buffer;
    int head, tail;

    void* operator new(size_t size) {
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
    8000222c:	00200513          	li	a0,2
    80002230:	00001097          	auipc	ra,0x1
    80002234:	d08080e7          	jalr	-760(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
    80002238:	00050493          	mv	s1,a0
    inBuff = new KConsole(BUFF_SIZE);
    8000223c:	40000593          	li	a1,1024
    80002240:	00000097          	auipc	ra,0x0
    80002244:	b40080e7          	jalr	-1216(ra) # 80001d80 <_ZN8KConsoleC1Ei>
    80002248:	00006797          	auipc	a5,0x6
    8000224c:	4097b023          	sd	s1,1024(a5) # 80008648 <_ZN8KConsole6inBuffE>
    80002250:	00200513          	li	a0,2
    80002254:	00001097          	auipc	ra,0x1
    80002258:	ce4080e7          	jalr	-796(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
    8000225c:	00050493          	mv	s1,a0
    outBuff = new KConsole(BUFF_SIZE);
    80002260:	40000593          	li	a1,1024
    80002264:	00000097          	auipc	ra,0x0
    80002268:	b1c080e7          	jalr	-1252(ra) # 80001d80 <_ZN8KConsoleC1Ei>
    8000226c:	00006797          	auipc	a5,0x6
    80002270:	3e97b223          	sd	s1,996(a5) # 80008650 <_ZN8KConsole7outBuffE>
}
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	00013903          	ld	s2,0(sp)
    80002284:	02010113          	addi	sp,sp,32
    80002288:	00008067          	ret
    8000228c:	00050913          	mv	s2,a0
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
        //return __mem_alloc(size);
    }
    void operator delete(void* addr) {
        KMemoryAllocator::mem_free(addr);
    80002290:	00048513          	mv	a0,s1
    80002294:	00001097          	auipc	ra,0x1
    80002298:	d90080e7          	jalr	-624(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    8000229c:	00090513          	mv	a0,s2
    800022a0:	00007097          	auipc	ra,0x7
    800022a4:	4e8080e7          	jalr	1256(ra) # 80009788 <_Unwind_Resume>
    800022a8:	00050913          	mv	s2,a0
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	d74080e7          	jalr	-652(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    800022b8:	00090513          	mv	a0,s2
    800022bc:	00007097          	auipc	ra,0x7
    800022c0:	4cc080e7          	jalr	1228(ra) # 80009788 <_Unwind_Resume>

00000000800022c4 <_ZN8KConsole20deinitConsoleBuffersEv>:

void KConsole::deinitConsoleBuffers() {
    800022c4:	fe010113          	addi	sp,sp,-32
    800022c8:	00113c23          	sd	ra,24(sp)
    800022cc:	00813823          	sd	s0,16(sp)
    800022d0:	00913423          	sd	s1,8(sp)
    800022d4:	02010413          	addi	s0,sp,32
    delete inBuff;
    800022d8:	00006497          	auipc	s1,0x6
    800022dc:	3704b483          	ld	s1,880(s1) # 80008648 <_ZN8KConsole6inBuffE>
    800022e0:	00048e63          	beqz	s1,800022fc <_ZN8KConsole20deinitConsoleBuffersEv+0x38>
    800022e4:	00048513          	mv	a0,s1
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	b48080e7          	jalr	-1208(ra) # 80001e30 <_ZN8KConsoleD1Ev>
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	d30080e7          	jalr	-720(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    delete outBuff;
    800022fc:	00006497          	auipc	s1,0x6
    80002300:	3544b483          	ld	s1,852(s1) # 80008650 <_ZN8KConsole7outBuffE>
    80002304:	00048e63          	beqz	s1,80002320 <_ZN8KConsole20deinitConsoleBuffersEv+0x5c>
    80002308:	00048513          	mv	a0,s1
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	b24080e7          	jalr	-1244(ra) # 80001e30 <_ZN8KConsoleD1Ev>
    80002314:	00048513          	mv	a0,s1
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	d0c080e7          	jalr	-756(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
}
    80002320:	01813083          	ld	ra,24(sp)
    80002324:	01013403          	ld	s0,16(sp)
    80002328:	00813483          	ld	s1,8(sp)
    8000232c:	02010113          	addi	sp,sp,32
    80002330:	00008067          	ret

0000000080002334 <_ZN10KScheduler3getEv>:
#include "../h/KPCB.hpp"

KPCB* KScheduler::head = nullptr;
KPCB* KScheduler::tail = nullptr;

KPCB *KScheduler::get() {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80002340:	00006517          	auipc	a0,0x6
    80002344:	31853503          	ld	a0,792(a0) # 80008658 <_ZN10KScheduler4headE>
    80002348:	00050c63          	beqz	a0,80002360 <_ZN10KScheduler3getEv+0x2c>
    KPCB* curr = head;
    head = head->nextScheduler;
    8000234c:	03853783          	ld	a5,56(a0)
    80002350:	00006717          	auipc	a4,0x6
    80002354:	30f73423          	sd	a5,776(a4) # 80008658 <_ZN10KScheduler4headE>
    if (!head) tail = nullptr;
    80002358:	00078a63          	beqz	a5,8000236c <_ZN10KScheduler3getEv+0x38>
    curr->nextScheduler = nullptr;
    8000235c:	02053c23          	sd	zero,56(a0)
    return curr;
}
    80002360:	00813403          	ld	s0,8(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret
    if (!head) tail = nullptr;
    8000236c:	00006797          	auipc	a5,0x6
    80002370:	2e07ba23          	sd	zero,756(a5) # 80008660 <_ZN10KScheduler4tailE>
    80002374:	fe9ff06f          	j	8000235c <_ZN10KScheduler3getEv+0x28>

0000000080002378 <_ZN10KScheduler3putEP4KPCB>:

void KScheduler::put(KPCB *kpcb) {
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00813423          	sd	s0,8(sp)
    80002380:	01010413          	addi	s0,sp,16
    if (!head) head = kpcb;
    80002384:	00006797          	auipc	a5,0x6
    80002388:	2d47b783          	ld	a5,724(a5) # 80008658 <_ZN10KScheduler4headE>
    8000238c:	02078263          	beqz	a5,800023b0 <_ZN10KScheduler3putEP4KPCB+0x38>
    else tail->nextScheduler = kpcb;
    80002390:	00006797          	auipc	a5,0x6
    80002394:	2d07b783          	ld	a5,720(a5) # 80008660 <_ZN10KScheduler4tailE>
    80002398:	02a7bc23          	sd	a0,56(a5)
    tail = kpcb;
    8000239c:	00006797          	auipc	a5,0x6
    800023a0:	2ca7b223          	sd	a0,708(a5) # 80008660 <_ZN10KScheduler4tailE>
}
    800023a4:	00813403          	ld	s0,8(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret
    if (!head) head = kpcb;
    800023b0:	00006797          	auipc	a5,0x6
    800023b4:	2aa7b423          	sd	a0,680(a5) # 80008658 <_ZN10KScheduler4headE>
    800023b8:	fe5ff06f          	j	8000239c <_ZN10KScheduler3putEP4KPCB+0x24>

00000000800023bc <_ZN4KPCB5yieldEv>:
KPCB* KPCB::running = nullptr;
int KPCB::counter = 0;
int KPCB::statID = 0;
time_t KPCB::timeSliceCounter = 0;

void KPCB::yield() {
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    800023c8:	01300513          	li	a0,19
    asm volatile ("ecall");
    800023cc:	00000073          	ecall
}
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN4KPCB13threadWrapperEv>:

KPCB *KPCB::createThread(KPCB::Body body) {
    return new KPCB(body);
}

void KPCB::threadWrapper() {
    800023dc:	fe010113          	addi	sp,sp,-32
    800023e0:	00113c23          	sd	ra,24(sp)
    800023e4:	00813823          	sd	s0,16(sp)
    800023e8:	00913423          	sd	s1,8(sp)
    800023ec:	02010413          	addi	s0,sp,32
    KRiscv::popSppSpie();
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	e5c080e7          	jalr	-420(ra) # 8000124c <_ZN6KRiscv10popSppSpieEv>
    running->body(running->args);
    800023f8:	00006497          	auipc	s1,0x6
    800023fc:	27048493          	addi	s1,s1,624 # 80008668 <_ZN4KPCB7runningE>
    80002400:	0004b783          	ld	a5,0(s1)
    80002404:	0007b703          	ld	a4,0(a5)
    80002408:	0107b503          	ld	a0,16(a5)
    8000240c:	000700e7          	jalr	a4
    running->setFinished(true);
    80002410:	0004b783          	ld	a5,0(s1)
        if (finished) return;
    80002414:	0307c703          	lbu	a4,48(a5)
    80002418:	00071c63          	bnez	a4,80002430 <_ZN4KPCB13threadWrapperEv+0x54>
        finished = val;
    8000241c:	00100713          	li	a4,1
    80002420:	02e78823          	sb	a4,48(a5)
        counter--;
    80002424:	0084a783          	lw	a5,8(s1)
    80002428:	fff7879b          	addiw	a5,a5,-1
    8000242c:	00f4a423          	sw	a5,8(s1)
    KPCB::yield();
    80002430:	00000097          	auipc	ra,0x0
    80002434:	f8c080e7          	jalr	-116(ra) # 800023bc <_ZN4KPCB5yieldEv>
}
    80002438:	01813083          	ld	ra,24(sp)
    8000243c:	01013403          	ld	s0,16(sp)
    80002440:	00813483          	ld	s1,8(sp)
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00008067          	ret

000000008000244c <_ZN4KPCB8dispatchEv>:
void KPCB::dispatch() {
    8000244c:	fd010113          	addi	sp,sp,-48
    80002450:	02113423          	sd	ra,40(sp)
    80002454:	02813023          	sd	s0,32(sp)
    80002458:	00913c23          	sd	s1,24(sp)
    8000245c:	03010413          	addi	s0,sp,48
    KPCB* old = running;
    80002460:	00006497          	auipc	s1,0x6
    80002464:	2084b483          	ld	s1,520(s1) # 80008668 <_ZN4KPCB7runningE>
    bool isFinished() const { return finished; }
    80002468:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished() && !old->isWaiting() && !old->isErr() && !old->isSleeping()) KScheduler::put(old);
    8000246c:	00079e63          	bnez	a5,80002488 <_ZN4KPCB8dispatchEv+0x3c>
    bool isWaiting() const { return waiting; }
    80002470:	0324c783          	lbu	a5,50(s1)
    80002474:	00079a63          	bnez	a5,80002488 <_ZN4KPCB8dispatchEv+0x3c>
    bool isErr() const { return err; }
    80002478:	0334c783          	lbu	a5,51(s1)
    8000247c:	00079663          	bnez	a5,80002488 <_ZN4KPCB8dispatchEv+0x3c>
    bool isSleeping() const { return sleeping; }
    80002480:	0314c783          	lbu	a5,49(s1)
    80002484:	04078663          	beqz	a5,800024d0 <_ZN4KPCB8dispatchEv+0x84>
    running = KScheduler::get();
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	eac080e7          	jalr	-340(ra) # 80002334 <_ZN10KScheduler3getEv>
    80002490:	00006797          	auipc	a5,0x6
    80002494:	1d878793          	addi	a5,a5,472 # 80008668 <_ZN4KPCB7runningE>
    80002498:	00a7b023          	sd	a0,0(a5)
    KPCB::timeSliceCounter = 0;
    8000249c:	0007b823          	sd	zero,16(a5)
    bool isFinished() const { return finished; }
    800024a0:	0304c783          	lbu	a5,48(s1)
    if (old->isFinished()) {
    800024a4:	02079e63          	bnez	a5,800024e0 <_ZN4KPCB8dispatchEv+0x94>
    else if (running != old) KPCB::contextSwitch(&old->context, &running->context);
    800024a8:	00a48a63          	beq	s1,a0,800024bc <_ZN4KPCB8dispatchEv+0x70>
    800024ac:	02050593          	addi	a1,a0,32
    800024b0:	02048513          	addi	a0,s1,32
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	d64080e7          	jalr	-668(ra) # 80001218 <_ZN4KPCB13contextSwitchEPNS_7ContextES1_>
}
    800024bc:	02813083          	ld	ra,40(sp)
    800024c0:	02013403          	ld	s0,32(sp)
    800024c4:	01813483          	ld	s1,24(sp)
    800024c8:	03010113          	addi	sp,sp,48
    800024cc:	00008067          	ret
    if (!old->isFinished() && !old->isWaiting() && !old->isErr() && !old->isSleeping()) KScheduler::put(old);
    800024d0:	00048513          	mv	a0,s1
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	ea4080e7          	jalr	-348(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
    800024dc:	fadff06f          	j	80002488 <_ZN4KPCB8dispatchEv+0x3c>
        Context c = old->context;
    800024e0:	0204b783          	ld	a5,32(s1)
    800024e4:	fcf43823          	sd	a5,-48(s0)
    800024e8:	0284b783          	ld	a5,40(s1)
    800024ec:	fcf43c23          	sd	a5,-40(s0)
        KMemoryAllocator::mem_free(old->stack);
    800024f0:	0184b503          	ld	a0,24(s1)
    800024f4:	00001097          	auipc	ra,0x1
    800024f8:	b30080e7          	jalr	-1232(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    800024fc:	0004bc23          	sd	zero,24(s1)
        KPCB::contextSwitch(&c, &running->context);
    80002500:	00006597          	auipc	a1,0x6
    80002504:	1685b583          	ld	a1,360(a1) # 80008668 <_ZN4KPCB7runningE>
    80002508:	02058593          	addi	a1,a1,32
    8000250c:	fd040513          	addi	a0,s0,-48
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	d08080e7          	jalr	-760(ra) # 80001218 <_ZN4KPCB13contextSwitchEPNS_7ContextES1_>
    80002518:	fa5ff06f          	j	800024bc <_ZN4KPCB8dispatchEv+0x70>

000000008000251c <_ZN4KPCBC1EPFvPvES0_S0_>:

KPCB::KPCB(Body body, void* args, void* stek) :
    8000251c:	ff010113          	addi	sp,sp,-16
    80002520:	00813423          	sd	s0,8(sp)
    80002524:	01010413          	addi	s0,sp,16
    body(body), ID(statID++), args(args), stack(body != nullptr ? (char*)stek : nullptr),
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80002528:	00b53023          	sd	a1,0(a0)
    body(body), ID(statID++), args(args), stack(body != nullptr ? (char*)stek : nullptr),
    8000252c:	00006717          	auipc	a4,0x6
    80002530:	13c70713          	addi	a4,a4,316 # 80008668 <_ZN4KPCB7runningE>
    80002534:	01872783          	lw	a5,24(a4)
    80002538:	0017881b          	addiw	a6,a5,1
    8000253c:	01072c23          	sw	a6,24(a4)
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80002540:	00f52423          	sw	a5,8(a0)
    80002544:	00c53823          	sd	a2,16(a0)
    body(body), ID(statID++), args(args), stack(body != nullptr ? (char*)stek : nullptr),
    80002548:	06058863          	beqz	a1,800025b8 <_ZN4KPCBC1EPFvPvES0_S0_+0x9c>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    8000254c:	00d53c23          	sd	a3,24(a0)
    80002550:	06058863          	beqz	a1,800025c0 <_ZN4KPCBC1EPFvPvES0_S0_+0xa4>
    80002554:	00000797          	auipc	a5,0x0
    80002558:	e8878793          	addi	a5,a5,-376 # 800023dc <_ZN4KPCB13threadWrapperEv>
    8000255c:	02f53023          	sd	a5,32(a0)
    80002560:	06068463          	beqz	a3,800025c8 <_ZN4KPCBC1EPFvPvES0_S0_+0xac>
    80002564:	000027b7          	lui	a5,0x2
    80002568:	00f686b3          	add	a3,a3,a5
    8000256c:	02d53423          	sd	a3,40(a0)
    80002570:	02050823          	sb	zero,48(a0)
    80002574:	020508a3          	sb	zero,49(a0)
    80002578:	02050923          	sb	zero,50(a0)
    8000257c:	020509a3          	sb	zero,51(a0)
    80002580:	02050a23          	sb	zero,52(a0)
    80002584:	02053c23          	sd	zero,56(a0)
    80002588:	04053023          	sd	zero,64(a0)
    8000258c:	04053423          	sd	zero,72(a0)
    80002590:	04053823          	sd	zero,80(a0)
    {
        if (body != nullptr) {
    80002594:	00058c63          	beqz	a1,800025ac <_ZN4KPCBC1EPFvPvES0_S0_+0x90>
            //KScheduler::put(this);
            counter++;
    80002598:	00006717          	auipc	a4,0x6
    8000259c:	0d070713          	addi	a4,a4,208 # 80008668 <_ZN4KPCB7runningE>
    800025a0:	00872783          	lw	a5,8(a4)
    800025a4:	0017879b          	addiw	a5,a5,1
    800025a8:	00f72423          	sw	a5,8(a4)
        }
    }
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret
    body(body), ID(statID++), args(args), stack(body != nullptr ? (char*)stek : nullptr),
    800025b8:	00000693          	li	a3,0
    800025bc:	f91ff06f          	j	8000254c <_ZN4KPCBC1EPFvPvES0_S0_+0x30>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    800025c0:	00000793          	li	a5,0
    800025c4:	f99ff06f          	j	8000255c <_ZN4KPCBC1EPFvPvES0_S0_+0x40>
    800025c8:	00000693          	li	a3,0
    800025cc:	fa1ff06f          	j	8000256c <_ZN4KPCBC1EPFvPvES0_S0_+0x50>

00000000800025d0 <_ZN4KPCB12createThreadEPFvPvES0_S0_>:
KPCB *KPCB::createThread(KPCB::Body body, void* args, void* stek) {
    800025d0:	fd010113          	addi	sp,sp,-48
    800025d4:	02113423          	sd	ra,40(sp)
    800025d8:	02813023          	sd	s0,32(sp)
    800025dc:	00913c23          	sd	s1,24(sp)
    800025e0:	01213823          	sd	s2,16(sp)
    800025e4:	01313423          	sd	s3,8(sp)
    800025e8:	01413023          	sd	s4,0(sp)
    800025ec:	03010413          	addi	s0,sp,48
    800025f0:	00050913          	mv	s2,a0
    800025f4:	00058993          	mv	s3,a1
    800025f8:	00060a13          	mv	s4,a2
        return KMemoryAllocator::mem_alloc(sizeBlock);
    800025fc:	00200513          	li	a0,2
    80002600:	00001097          	auipc	ra,0x1
    80002604:	938080e7          	jalr	-1736(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
    80002608:	00050493          	mv	s1,a0
    return new KPCB(body, args, stek);
    8000260c:	000a0693          	mv	a3,s4
    80002610:	00098613          	mv	a2,s3
    80002614:	00090593          	mv	a1,s2
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	f04080e7          	jalr	-252(ra) # 8000251c <_ZN4KPCBC1EPFvPvES0_S0_>
}
    80002620:	00048513          	mv	a0,s1
    80002624:	02813083          	ld	ra,40(sp)
    80002628:	02013403          	ld	s0,32(sp)
    8000262c:	01813483          	ld	s1,24(sp)
    80002630:	01013903          	ld	s2,16(sp)
    80002634:	00813983          	ld	s3,8(sp)
    80002638:	00013a03          	ld	s4,0(sp)
    8000263c:	03010113          	addi	sp,sp,48
    80002640:	00008067          	ret

0000000080002644 <_ZN4KPCBC1EPFvPvE>:

KPCB::KPCB(Body body) :
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	01213023          	sd	s2,0(sp)
    80002658:	02010413          	addi	s0,sp,32
    8000265c:	00050493          	mv	s1,a0
    80002660:	00058913          	mv	s2,a1
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new char[STACK_SIZE]: nullptr),
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80002664:	00b53023          	sd	a1,0(a0)
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new char[STACK_SIZE]: nullptr),
    80002668:	00006717          	auipc	a4,0x6
    8000266c:	00070713          	mv	a4,a4
    80002670:	01872783          	lw	a5,24(a4) # 80008680 <_ZN4KPCB6statIDE>
    80002674:	0017869b          	addiw	a3,a5,1
    80002678:	00d72c23          	sw	a3,24(a4)
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    8000267c:	00f52423          	sw	a5,8(a0)
    80002680:	00053823          	sd	zero,16(a0)
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new char[STACK_SIZE]: nullptr),
    80002684:	08058463          	beqz	a1,8000270c <_ZN4KPCBC1EPFvPvE+0xc8>
    80002688:	00002537          	lui	a0,0x2
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	418080e7          	jalr	1048(ra) # 80002aa4 <_Znam>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80002694:	00a4bc23          	sd	a0,24(s1)
    80002698:	06090e63          	beqz	s2,80002714 <_ZN4KPCBC1EPFvPvE+0xd0>
    8000269c:	00000797          	auipc	a5,0x0
    800026a0:	d4078793          	addi	a5,a5,-704 # 800023dc <_ZN4KPCB13threadWrapperEv>
    800026a4:	02f4b023          	sd	a5,32(s1)
    800026a8:	06050a63          	beqz	a0,8000271c <_ZN4KPCBC1EPFvPvE+0xd8>
    800026ac:	000027b7          	lui	a5,0x2
    800026b0:	00f50533          	add	a0,a0,a5
    800026b4:	02a4b423          	sd	a0,40(s1)
    800026b8:	02048823          	sb	zero,48(s1)
    800026bc:	020488a3          	sb	zero,49(s1)
    800026c0:	02048923          	sb	zero,50(s1)
    800026c4:	020489a3          	sb	zero,51(s1)
    800026c8:	02048a23          	sb	zero,52(s1)
    800026cc:	0204bc23          	sd	zero,56(s1)
    800026d0:	0404b023          	sd	zero,64(s1)
    800026d4:	0404b423          	sd	zero,72(s1)
    800026d8:	0404b823          	sd	zero,80(s1)
    {
        if (body != nullptr) {
    800026dc:	00090c63          	beqz	s2,800026f4 <_ZN4KPCBC1EPFvPvE+0xb0>
            //KScheduler::put(this);
            counter++;
    800026e0:	00006717          	auipc	a4,0x6
    800026e4:	f8870713          	addi	a4,a4,-120 # 80008668 <_ZN4KPCB7runningE>
    800026e8:	00872783          	lw	a5,8(a4)
    800026ec:	0017879b          	addiw	a5,a5,1
    800026f0:	00f72423          	sw	a5,8(a4)
        }
    800026f4:	01813083          	ld	ra,24(sp)
    800026f8:	01013403          	ld	s0,16(sp)
    800026fc:	00813483          	ld	s1,8(sp)
    80002700:	00013903          	ld	s2,0(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new char[STACK_SIZE]: nullptr),
    8000270c:	00000513          	li	a0,0
    80002710:	f85ff06f          	j	80002694 <_ZN4KPCBC1EPFvPvE+0x50>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80002714:	00000793          	li	a5,0
    80002718:	f8dff06f          	j	800026a4 <_ZN4KPCBC1EPFvPvE+0x60>
    8000271c:	00000513          	li	a0,0
    80002720:	f95ff06f          	j	800026b4 <_ZN4KPCBC1EPFvPvE+0x70>

0000000080002724 <_ZN4KPCB12createThreadEPFvPvE>:
KPCB *KPCB::createThread(KPCB::Body body) {
    80002724:	fe010113          	addi	sp,sp,-32
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	00813823          	sd	s0,16(sp)
    80002730:	00913423          	sd	s1,8(sp)
    80002734:	01213023          	sd	s2,0(sp)
    80002738:	02010413          	addi	s0,sp,32
    8000273c:	00050913          	mv	s2,a0
    80002740:	00200513          	li	a0,2
    80002744:	00000097          	auipc	ra,0x0
    80002748:	7f4080e7          	jalr	2036(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
    8000274c:	00050493          	mv	s1,a0
    return new KPCB(body);
    80002750:	00090593          	mv	a1,s2
    80002754:	00000097          	auipc	ra,0x0
    80002758:	ef0080e7          	jalr	-272(ra) # 80002644 <_ZN4KPCBC1EPFvPvE>
    8000275c:	0200006f          	j	8000277c <_ZN4KPCB12createThreadEPFvPvE+0x58>
    80002760:	00050913          	mv	s2,a0
        KMemoryAllocator::mem_free(addr);
    80002764:	00048513          	mv	a0,s1
    80002768:	00001097          	auipc	ra,0x1
    8000276c:	8bc080e7          	jalr	-1860(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    80002770:	00090513          	mv	a0,s2
    80002774:	00007097          	auipc	ra,0x7
    80002778:	014080e7          	jalr	20(ra) # 80009788 <_Unwind_Resume>
}
    8000277c:	00048513          	mv	a0,s1
    80002780:	01813083          	ld	ra,24(sp)
    80002784:	01013403          	ld	s0,16(sp)
    80002788:	00813483          	ld	s1,8(sp)
    8000278c:	00013903          	ld	s2,0(sp)
    80002790:	02010113          	addi	sp,sp,32
    80002794:	00008067          	ret

0000000080002798 <_Z11userWrapperPv>:
#include "../h/KConsole.hpp"
#include "../h/syscall_c.hpp"

uint64 framePointer;
void userMain();
void userWrapper(void* arg) {
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	00813023          	sd	s0,0(sp)
    800027a4:	01010413          	addi	s0,sp,16
    userMain();
    800027a8:	00001097          	auipc	ra,0x1
    800027ac:	658080e7          	jalr	1624(ra) # 80003e00 <_Z8userMainv>
}
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00013403          	ld	s0,0(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret

00000000800027c0 <main>:

void main() {
    800027c0:	fd010113          	addi	sp,sp,-48
    800027c4:	02113423          	sd	ra,40(sp)
    800027c8:	02813023          	sd	s0,32(sp)
    800027cc:	00913c23          	sd	s1,24(sp)
    800027d0:	01213823          	sd	s2,16(sp)
    800027d4:	03010413          	addi	s0,sp,48
    KRiscv::w_stvec((uint64)&KRiscv::interrupt);
    800027d8:	00006797          	auipc	a5,0x6
    800027dc:	df87b783          	ld	a5,-520(a5) # 800085d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    asm volatile ("csrw stvec, %0" :: "r"(stvec));
    800027e0:	10579073          	csrw	stvec,a5
    KMemoryAllocator::initBlockHeader();
    800027e4:	00001097          	auipc	ra,0x1
    800027e8:	904080e7          	jalr	-1788(ra) # 800030e8 <_ZN16KMemoryAllocator15initBlockHeaderEv>
    KConsole::initConsoleBuffers();
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	a28080e7          	jalr	-1496(ra) # 80002214 <_ZN8KConsole18initConsoleBuffersEv>

    KPCB* main = nullptr;
    main = KPCB::createThread(nullptr, nullptr, nullptr);
    800027f4:	00000613          	li	a2,0
    800027f8:	00000593          	li	a1,0
    800027fc:	00000513          	li	a0,0
    80002800:	00000097          	auipc	ra,0x0
    80002804:	dd0080e7          	jalr	-560(ra) # 800025d0 <_ZN4KPCB12createThreadEPFvPvES0_S0_>
    80002808:	00050493          	mv	s1,a0
    KPCB::running = main;
    8000280c:	00006797          	auipc	a5,0x6
    80002810:	db47b783          	ld	a5,-588(a5) # 800085c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002814:	00a7b023          	sd	a0,0(a5)

    KPCB* user = nullptr;
    80002818:	fc043c23          	sd	zero,-40(s0)
    thread_create(&user, &userWrapper, nullptr);
    8000281c:	00000613          	li	a2,0
    80002820:	00000597          	auipc	a1,0x0
    80002824:	f7858593          	addi	a1,a1,-136 # 80002798 <_Z11userWrapperPv>
    80002828:	fd840513          	addi	a0,s0,-40
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	314080e7          	jalr	788(ra) # 80001b40 <_Z13thread_createPP4KPCBPFvPvES2_>
    asm volatile ("csrs sstatus, %0" :: "r"(mask));
    80002834:	00200793          	li	a5,2
    80002838:	1007a073          	csrs	sstatus,a5

    KRiscv::ms_sstatus(KRiscv::SSTATUS_SIE);
    userMode();
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	230080e7          	jalr	560(ra) # 80001a6c <_Z8userModev>

    while (KPCB::counter) {
    80002844:	00006797          	auipc	a5,0x6
    80002848:	d9c7b783          	ld	a5,-612(a5) # 800085e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000284c:	0007a783          	lw	a5,0(a5)
    80002850:	00078c63          	beqz	a5,80002868 <main+0xa8>
        KPCB::yield();
    80002854:	00000097          	auipc	ra,0x0
    80002858:	b68080e7          	jalr	-1176(ra) # 800023bc <_ZN4KPCB5yieldEv>
        readCons();
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	504080e7          	jalr	1284(ra) # 80001d60 <_Z8readConsv>
    80002864:	fe1ff06f          	j	80002844 <main+0x84>
    }
    kernelMode();
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	224080e7          	jalr	548(ra) # 80001a8c <_Z10kernelModev>
    if (user) delete user;
    80002870:	fd843903          	ld	s2,-40(s0)
    80002874:	00090e63          	beqz	s2,80002890 <main+0xd0>
        KMemoryAllocator::mem_free(stack);
    80002878:	01893503          	ld	a0,24(s2)
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	7a8080e7          	jalr	1960(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
        KMemoryAllocator::mem_free(addr);
    80002884:	00090513          	mv	a0,s2
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	79c080e7          	jalr	1948(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
    KConsole::deinitConsoleBuffers();
    80002890:	00000097          	auipc	ra,0x0
    80002894:	a34080e7          	jalr	-1484(ra) # 800022c4 <_ZN8KConsole20deinitConsoleBuffersEv>
    delete main;
    80002898:	00048e63          	beqz	s1,800028b4 <main+0xf4>
        KMemoryAllocator::mem_free(stack);
    8000289c:	0184b503          	ld	a0,24(s1)
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	784080e7          	jalr	1924(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
        KMemoryAllocator::mem_free(addr);
    800028a8:	00048513          	mv	a0,s1
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	778080e7          	jalr	1912(ra) # 80003024 <_ZN16KMemoryAllocator8mem_freeEPv>
}
    800028b4:	02813083          	ld	ra,40(sp)
    800028b8:	02013403          	ld	s0,32(sp)
    800028bc:	01813483          	ld	s1,24(sp)
    800028c0:	01013903          	ld	s2,16(sp)
    800028c4:	03010113          	addi	sp,sp,48
    800028c8:	00008067          	ret

00000000800028cc <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_CPP(&myHandle, body, arg);
}

Thread::~Thread() {
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00813423          	sd	s0,8(sp)
    800028d4:	01010413          	addi	s0,sp,16
    800028d8:	00006797          	auipc	a5,0x6
    800028dc:	c6078793          	addi	a5,a5,-928 # 80008538 <_ZTV6Thread+0x10>
    800028e0:	00f53023          	sd	a5,0(a0) # 2000 <_entry-0x7fffe000>
    myHandle->setFinished(true);
    800028e4:	00853783          	ld	a5,8(a0)
        if (finished) return;
    800028e8:	0307c703          	lbu	a4,48(a5)
    800028ec:	02071063          	bnez	a4,8000290c <_ZN6ThreadD1Ev+0x40>
        finished = val;
    800028f0:	00100713          	li	a4,1
    800028f4:	02e78823          	sb	a4,48(a5)
        counter--;
    800028f8:	00006717          	auipc	a4,0x6
    800028fc:	ce873703          	ld	a4,-792(a4) # 800085e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002900:	00072783          	lw	a5,0(a4)
    80002904:	fff7879b          	addiw	a5,a5,-1
    80002908:	00f72023          	sw	a5,0(a4)
}
    8000290c:	00813403          	ld	s0,8(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <_ZN6Thread7wrapperEPv>:
    thread_create_CPP(&myHandle, &wrapper, this);
}

void Thread::wrapper(void *args) {
    Thread* thr = (Thread*)args;
    if (thr) thr->run();
    80002918:	02050863          	beqz	a0,80002948 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void *args) {
    8000291c:	ff010113          	addi	sp,sp,-16
    80002920:	00113423          	sd	ra,8(sp)
    80002924:	00813023          	sd	s0,0(sp)
    80002928:	01010413          	addi	s0,sp,16
    if (thr) thr->run();
    8000292c:	00053783          	ld	a5,0(a0)
    80002930:	0107b783          	ld	a5,16(a5)
    80002934:	000780e7          	jalr	a5
}
    80002938:	00813083          	ld	ra,8(sp)
    8000293c:	00013403          	ld	s0,0(sp)
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret
    80002948:	00008067          	ret

000000008000294c <_ZN14PeriodicThread15wrapperPeriodicEPv>:
PeriodicThread::PeriodicThread(time_t period)
    : Thread(&wrapperPeriodic, new pStruct({this, period})) {

}

void PeriodicThread::wrapperPeriodic(void *args) {
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00113c23          	sd	ra,24(sp)
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00050493          	mv	s1,a0
    pStruct* pstr = (pStruct*) args;
    if (pstr) {
    80002964:	02050263          	beqz	a0,80002988 <_ZN14PeriodicThread15wrapperPeriodicEPv+0x3c>
        while (true) {
            pstr->pthr->periodicActivation();
    80002968:	0004b503          	ld	a0,0(s1)
    8000296c:	00053783          	ld	a5,0(a0)
    80002970:	0187b783          	ld	a5,24(a5)
    80002974:	000780e7          	jalr	a5
            time_sleep(pstr->pperiod);
    80002978:	0084b503          	ld	a0,8(s1)
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	36c080e7          	jalr	876(ra) # 80001ce8 <_Z10time_sleepm>
        while (true) {
    80002984:	fe5ff06f          	j	80002968 <_ZN14PeriodicThread15wrapperPeriodicEPv+0x1c>
        }
    }
}
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	01013403          	ld	s0,16(sp)
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00008067          	ret

000000008000299c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00113423          	sd	ra,8(sp)
    800029a4:	00813023          	sd	s0,0(sp)
    800029a8:	01010413          	addi	s0,sp,16
    800029ac:	00006797          	auipc	a5,0x6
    800029b0:	bb478793          	addi	a5,a5,-1100 # 80008560 <_ZTV9Semaphore+0x10>
    800029b4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800029b8:	00853503          	ld	a0,8(a0)
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	294080e7          	jalr	660(ra) # 80001c50 <_Z9sem_closeP10KSemaphore>
}
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_Znwm>:
void* operator new(size_t size) {
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00113423          	sd	ra,8(sp)
    800029dc:	00813023          	sd	s0,0(sp)
    800029e0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	01c080e7          	jalr	28(ra) # 80001a00 <_Z9mem_allocm>
}
    800029ec:	00813083          	ld	ra,8(sp)
    800029f0:	00013403          	ld	s0,0(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_ZdlPv>:
void operator delete (void* addr) {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    mem_free(addr);
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	034080e7          	jalr	52(ra) # 80001a40 <_Z8mem_freePv>
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002a24:	fe010113          	addi	sp,sp,-32
    80002a28:	00113c23          	sd	ra,24(sp)
    80002a2c:	00813823          	sd	s0,16(sp)
    80002a30:	00913423          	sd	s1,8(sp)
    80002a34:	02010413          	addi	s0,sp,32
    80002a38:	00050493          	mv	s1,a0
}
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	e90080e7          	jalr	-368(ra) # 800028cc <_ZN6ThreadD1Ev>
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	fb4080e7          	jalr	-76(ra) # 800029fc <_ZdlPv>
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret

0000000080002a64 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002a64:	fe010113          	addi	sp,sp,-32
    80002a68:	00113c23          	sd	ra,24(sp)
    80002a6c:	00813823          	sd	s0,16(sp)
    80002a70:	00913423          	sd	s1,8(sp)
    80002a74:	02010413          	addi	s0,sp,32
    80002a78:	00050493          	mv	s1,a0
}
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	f20080e7          	jalr	-224(ra) # 8000299c <_ZN9SemaphoreD1Ev>
    80002a84:	00048513          	mv	a0,s1
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	f74080e7          	jalr	-140(ra) # 800029fc <_ZdlPv>
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	01013403          	ld	s0,16(sp)
    80002a98:	00813483          	ld	s1,8(sp)
    80002a9c:	02010113          	addi	sp,sp,32
    80002aa0:	00008067          	ret

0000000080002aa4 <_Znam>:
void* operator new[] (size_t size) {
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00113423          	sd	ra,8(sp)
    80002aac:	00813023          	sd	s0,0(sp)
    80002ab0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	f4c080e7          	jalr	-180(ra) # 80001a00 <_Z9mem_allocm>
}
    80002abc:	00813083          	ld	ra,8(sp)
    80002ac0:	00013403          	ld	s0,0(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_ZdaPv>:
void operator delete[] (void* addr) {
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    mem_free(addr);
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	f64080e7          	jalr	-156(ra) # 80001a40 <_Z8mem_freePv>
}
    80002ae4:	00813083          	ld	ra,8(sp)
    80002ae8:	00013403          	ld	s0,0(sp)
    80002aec:	01010113          	addi	sp,sp,16
    80002af0:	00008067          	ret

0000000080002af4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	00006797          	auipc	a5,0x6
    80002b08:	a3478793          	addi	a5,a5,-1484 # 80008538 <_ZTV6Thread+0x10>
    80002b0c:	00f53023          	sd	a5,0(a0)
    thread_create_CPP(&myHandle, body, arg);
    80002b10:	00850513          	addi	a0,a0,8
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	f98080e7          	jalr	-104(ra) # 80001aac <_Z17thread_create_CPPPP4KPCBPFvPvES2_>
}
    80002b1c:	00813083          	ld	ra,8(sp)
    80002b20:	00013403          	ld	s0,0(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN6Thread5startEv>:
    return myHandle->startIt();
    80002b2c:	00853503          	ld	a0,8(a0)
        if (started) return -1;
    80002b30:	03454783          	lbu	a5,52(a0)
    80002b34:	02079c63          	bnez	a5,80002b6c <_ZN6Thread5startEv+0x40>
int Thread::start() {
    80002b38:	ff010113          	addi	sp,sp,-16
    80002b3c:	00113423          	sd	ra,8(sp)
    80002b40:	00813023          	sd	s0,0(sp)
    80002b44:	01010413          	addi	s0,sp,16
        started = true;
    80002b48:	00100793          	li	a5,1
    80002b4c:	02f50a23          	sb	a5,52(a0)
        KScheduler::put(this);
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	828080e7          	jalr	-2008(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
        return 0;
    80002b58:	00000513          	li	a0,0
}
    80002b5c:	00813083          	ld	ra,8(sp)
    80002b60:	00013403          	ld	s0,0(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret
        if (started) return -1;
    80002b6c:	fff00513          	li	a0,-1
    80002b70:	00008067          	ret

0000000080002b74 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00113423          	sd	ra,8(sp)
    80002b7c:	00813023          	sd	s0,0(sp)
    80002b80:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	074080e7          	jalr	116(ra) # 80001bf8 <_Z15thread_dispatchv>
}
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	00813023          	sd	s0,0(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	13c080e7          	jalr	316(ra) # 80001ce8 <_Z10time_sleepm>
}
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret

0000000080002bc4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00113423          	sd	ra,8(sp)
    80002bcc:	00813023          	sd	s0,0(sp)
    80002bd0:	01010413          	addi	s0,sp,16
    80002bd4:	00006797          	auipc	a5,0x6
    80002bd8:	96478793          	addi	a5,a5,-1692 # 80008538 <_ZTV6Thread+0x10>
    80002bdc:	00f53023          	sd	a5,0(a0)
    thread_create_CPP(&myHandle, &wrapper, this);
    80002be0:	00050613          	mv	a2,a0
    80002be4:	00000597          	auipc	a1,0x0
    80002be8:	d3458593          	addi	a1,a1,-716 # 80002918 <_ZN6Thread7wrapperEPv>
    80002bec:	00850513          	addi	a0,a0,8
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	ebc080e7          	jalr	-324(ra) # 80001aac <_Z17thread_create_CPPPP4KPCBPFvPvES2_>
}
    80002bf8:	00813083          	ld	ra,8(sp)
    80002bfc:	00013403          	ld	s0,0(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00113423          	sd	ra,8(sp)
    80002c10:	00813023          	sd	s0,0(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00006797          	auipc	a5,0x6
    80002c1c:	94878793          	addi	a5,a5,-1720 # 80008560 <_ZTV9Semaphore+0x10>
    80002c20:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002c24:	00850513          	addi	a0,a0,8
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	ff0080e7          	jalr	-16(ra) # 80001c18 <_Z8sem_openPP10KSemaphorej>
}
    80002c30:	00813083          	ld	ra,8(sp)
    80002c34:	00013403          	ld	s0,0(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00113423          	sd	ra,8(sp)
    80002c48:	00813023          	sd	s0,0(sp)
    80002c4c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002c50:	00853503          	ld	a0,8(a0)
    80002c54:	fffff097          	auipc	ra,0xfffff
    80002c58:	024080e7          	jalr	36(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>
}
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret

0000000080002c6c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00113423          	sd	ra,8(sp)
    80002c74:	00813023          	sd	s0,0(sp)
    80002c78:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002c7c:	00853503          	ld	a0,8(a0)
    80002c80:	fffff097          	auipc	ra,0xfffff
    80002c84:	040080e7          	jalr	64(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>
}
    80002c88:	00813083          	ld	ra,8(sp)
    80002c8c:	00013403          	ld	s0,0(sp)
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00008067          	ret

0000000080002c98 <_ZN7Console4getcEv>:
char Console::getc() {
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00113423          	sd	ra,8(sp)
    80002ca0:	00813023          	sd	s0,0(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    return ::getc();
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	068080e7          	jalr	104(ra) # 80001d10 <_Z4getcv>
}
    80002cb0:	00813083          	ld	ra,8(sp)
    80002cb4:	00013403          	ld	s0,0(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret

0000000080002cc0 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00113423          	sd	ra,8(sp)
    80002cc8:	00813023          	sd	s0,0(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	06c080e7          	jalr	108(ra) # 80001d3c <_Z4putcc>
}
    80002cd8:	00813083          	ld	ra,8(sp)
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    80002ce8:	fe010113          	addi	sp,sp,-32
    80002cec:	00113c23          	sd	ra,24(sp)
    80002cf0:	00813823          	sd	s0,16(sp)
    80002cf4:	00913423          	sd	s1,8(sp)
    80002cf8:	01213023          	sd	s2,0(sp)
    80002cfc:	02010413          	addi	s0,sp,32
    80002d00:	00050493          	mv	s1,a0
    80002d04:	00058913          	mv	s2,a1
    : Thread(&wrapperPeriodic, new pStruct({this, period})) {
    80002d08:	01000513          	li	a0,16
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	cc8080e7          	jalr	-824(ra) # 800029d4 <_Znwm>
    80002d14:	00050613          	mv	a2,a0
    80002d18:	00953023          	sd	s1,0(a0)
    80002d1c:	01253423          	sd	s2,8(a0)
    80002d20:	00000597          	auipc	a1,0x0
    80002d24:	c2c58593          	addi	a1,a1,-980 # 8000294c <_ZN14PeriodicThread15wrapperPeriodicEPv>
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	dc8080e7          	jalr	-568(ra) # 80002af4 <_ZN6ThreadC1EPFvPvES0_>
    80002d34:	00005797          	auipc	a5,0x5
    80002d38:	7d478793          	addi	a5,a5,2004 # 80008508 <_ZTV14PeriodicThread+0x10>
    80002d3c:	00f4b023          	sd	a5,0(s1)
}
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00813483          	ld	s1,8(sp)
    80002d4c:	00013903          	ld	s2,0(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00813423          	sd	s0,8(sp)
    80002d60:	01010413          	addi	s0,sp,16
    80002d64:	00813403          	ld	s0,8(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN14PeriodicThread18periodicActivationEv>:
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
    80002d7c:	00813403          	ld	s0,8(sp)
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret

0000000080002d88 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002d88:	ff010113          	addi	sp,sp,-16
    80002d8c:	00113423          	sd	ra,8(sp)
    80002d90:	00813023          	sd	s0,0(sp)
    80002d94:	01010413          	addi	s0,sp,16
    80002d98:	00005797          	auipc	a5,0x5
    80002d9c:	77078793          	addi	a5,a5,1904 # 80008508 <_ZTV14PeriodicThread+0x10>
    80002da0:	00f53023          	sd	a5,0(a0)
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	b28080e7          	jalr	-1240(ra) # 800028cc <_ZN6ThreadD1Ev>
    80002dac:	00813083          	ld	ra,8(sp)
    80002db0:	00013403          	ld	s0,0(sp)
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00008067          	ret

0000000080002dbc <_ZN14PeriodicThreadD0Ev>:
    80002dbc:	fe010113          	addi	sp,sp,-32
    80002dc0:	00113c23          	sd	ra,24(sp)
    80002dc4:	00813823          	sd	s0,16(sp)
    80002dc8:	00913423          	sd	s1,8(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    80002dd0:	00050493          	mv	s1,a0
    80002dd4:	00005797          	auipc	a5,0x5
    80002dd8:	73478793          	addi	a5,a5,1844 # 80008508 <_ZTV14PeriodicThread+0x10>
    80002ddc:	00f53023          	sd	a5,0(a0)
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	aec080e7          	jalr	-1300(ra) # 800028cc <_ZN6ThreadD1Ev>
    80002de8:	00048513          	mv	a0,s1
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	c10080e7          	jalr	-1008(ra) # 800029fc <_ZdlPv>
    80002df4:	01813083          	ld	ra,24(sp)
    80002df8:	01013403          	ld	s0,16(sp)
    80002dfc:	00813483          	ld	s1,8(sp)
    80002e00:	02010113          	addi	sp,sp,32
    80002e04:	00008067          	ret

0000000080002e08 <_ZN6KSleep6removeEv>:
#include "../h/KRiscv.hpp"

KPCB* KSleep::head = nullptr;

void KSleep::remove() {
    if (!head) return;
    80002e08:	00006797          	auipc	a5,0x6
    80002e0c:	8887b783          	ld	a5,-1912(a5) # 80008690 <_ZN6KSleep4headE>
    80002e10:	06078c63          	beqz	a5,80002e88 <_ZN6KSleep6removeEv+0x80>
    --(head->timeSleepCounter);
    80002e14:	0507b703          	ld	a4,80(a5)
    80002e18:	fff70713          	addi	a4,a4,-1
    80002e1c:	04e7b823          	sd	a4,80(a5)
    while (head && !(head->timeSleepCounter)) {
    80002e20:	00006517          	auipc	a0,0x6
    80002e24:	87053503          	ld	a0,-1936(a0) # 80008690 <_ZN6KSleep4headE>
    80002e28:	06050063          	beqz	a0,80002e88 <_ZN6KSleep6removeEv+0x80>
    80002e2c:	05053783          	ld	a5,80(a0)
    80002e30:	04079c63          	bnez	a5,80002e88 <_ZN6KSleep6removeEv+0x80>
void KSleep::remove() {
    80002e34:	ff010113          	addi	sp,sp,-16
    80002e38:	00113423          	sd	ra,8(sp)
    80002e3c:	00813023          	sd	s0,0(sp)
    80002e40:	01010413          	addi	s0,sp,16
    80002e44:	00c0006f          	j	80002e50 <_ZN6KSleep6removeEv+0x48>
    while (head && !(head->timeSleepCounter)) {
    80002e48:	05053783          	ld	a5,80(a0)
    80002e4c:	02079663          	bnez	a5,80002e78 <_ZN6KSleep6removeEv+0x70>
        KPCB* old = head;
        head = head->nextSleeping;
    80002e50:	04053783          	ld	a5,64(a0)
    80002e54:	00006717          	auipc	a4,0x6
    80002e58:	82f73e23          	sd	a5,-1988(a4) # 80008690 <_ZN6KSleep4headE>
        old->nextSleeping = nullptr;
    80002e5c:	04053023          	sd	zero,64(a0)
    void setSleeping(bool val) { sleeping = val; }
    80002e60:	020508a3          	sb	zero,49(a0)
        old->setSleeping(false);
        KScheduler::put(old);
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	514080e7          	jalr	1300(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
    while (head && !(head->timeSleepCounter)) {
    80002e6c:	00006517          	auipc	a0,0x6
    80002e70:	82453503          	ld	a0,-2012(a0) # 80008690 <_ZN6KSleep4headE>
    80002e74:	fc051ae3          	bnez	a0,80002e48 <_ZN6KSleep6removeEv+0x40>
    }
}
    80002e78:	00813083          	ld	ra,8(sp)
    80002e7c:	00013403          	ld	s0,0(sp)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret
    80002e88:	00008067          	ret

0000000080002e8c <_ZN6KSleep3addEm>:

void KSleep::add(time_t t) {
    80002e8c:	ff010113          	addi	sp,sp,-16
    80002e90:	00813423          	sd	s0,8(sp)
    80002e94:	01010413          	addi	s0,sp,16
    KPCB* kpcb = KPCB::running;
    80002e98:	00005797          	auipc	a5,0x5
    80002e9c:	7287b783          	ld	a5,1832(a5) # 800085c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002ea0:	0007b603          	ld	a2,0(a5)
    if (!kpcb || !t) return;
    80002ea4:	08060463          	beqz	a2,80002f2c <_ZN6KSleep3addEm+0xa0>
    80002ea8:	08050263          	beqz	a0,80002f2c <_ZN6KSleep3addEm+0xa0>
    80002eac:	00100793          	li	a5,1
    80002eb0:	02f608a3          	sb	a5,49(a2)
    kpcb->setSleeping(true);
    if (!head) {
    80002eb4:	00005797          	auipc	a5,0x5
    80002eb8:	7dc7b783          	ld	a5,2012(a5) # 80008690 <_ZN6KSleep4headE>
    80002ebc:	02078463          	beqz	a5,80002ee4 <_ZN6KSleep3addEm+0x58>
        head = kpcb;
        head->timeSleepCounter = t;
        head->nextSleeping = nullptr;
    }
    else {
        KPCB* curr = head, *prev = nullptr;
    80002ec0:	00000593          	li	a1,0
        while (curr) {
    80002ec4:	04078e63          	beqz	a5,80002f20 <_ZN6KSleep3addEm+0x94>
            long r = (long)t - (long)curr->timeSleepCounter;
    80002ec8:	0507b703          	ld	a4,80(a5)
    80002ecc:	40e506b3          	sub	a3,a0,a4
            if (r <= 0) {
    80002ed0:	02d05463          	blez	a3,80002ef8 <_ZN6KSleep3addEm+0x6c>
                kpcb->nextSleeping = curr;
                if (!prev) head = kpcb;
                else prev->nextSleeping = kpcb;
                return;
            }
            else t -= curr->timeSleepCounter;
    80002ed4:	40e50533          	sub	a0,a0,a4
            prev = curr;
    80002ed8:	00078593          	mv	a1,a5
            curr = curr->nextSleeping;
    80002edc:	0407b783          	ld	a5,64(a5)
        while (curr) {
    80002ee0:	fe5ff06f          	j	80002ec4 <_ZN6KSleep3addEm+0x38>
        head = kpcb;
    80002ee4:	00005797          	auipc	a5,0x5
    80002ee8:	7ac7b623          	sd	a2,1964(a5) # 80008690 <_ZN6KSleep4headE>
        head->timeSleepCounter = t;
    80002eec:	04a63823          	sd	a0,80(a2)
        head->nextSleeping = nullptr;
    80002ef0:	04063023          	sd	zero,64(a2)
    80002ef4:	0380006f          	j	80002f2c <_ZN6KSleep3addEm+0xa0>
                curr->timeSleepCounter -= t;
    80002ef8:	40a70733          	sub	a4,a4,a0
    80002efc:	04e7b823          	sd	a4,80(a5)
                kpcb->timeSleepCounter = t;
    80002f00:	04a63823          	sd	a0,80(a2)
                kpcb->nextSleeping = curr;
    80002f04:	04f63023          	sd	a5,64(a2)
                if (!prev) head = kpcb;
    80002f08:	00058663          	beqz	a1,80002f14 <_ZN6KSleep3addEm+0x88>
                else prev->nextSleeping = kpcb;
    80002f0c:	04c5b023          	sd	a2,64(a1)
                return;
    80002f10:	01c0006f          	j	80002f2c <_ZN6KSleep3addEm+0xa0>
                if (!prev) head = kpcb;
    80002f14:	00005797          	auipc	a5,0x5
    80002f18:	76c7be23          	sd	a2,1916(a5) # 80008690 <_ZN6KSleep4headE>
    80002f1c:	0100006f          	j	80002f2c <_ZN6KSleep3addEm+0xa0>
        }
        kpcb->timeSleepCounter = t;
    80002f20:	04a63823          	sd	a0,80(a2)
        kpcb->nextSleeping = nullptr;
    80002f24:	04063023          	sd	zero,64(a2)
        prev->nextSleeping = kpcb;
    80002f28:	04c5b023          	sd	a2,64(a1)
    }
}
    80002f2c:	00813403          	ld	s0,8(sp)
    80002f30:	01010113          	addi	sp,sp,16
    80002f34:	00008067          	ret

0000000080002f38 <_ZN16KMemoryAllocator9mem_allocEm>:

#include "../h/KMemoryAllocator.hpp"

BlockHeader* KMemoryAllocator::freeMemHead = nullptr;

void* KMemoryAllocator::mem_alloc(size_t sizeBlock) {
    80002f38:	ff010113          	addi	sp,sp,-16
    80002f3c:	00813423          	sd	s0,8(sp)
    80002f40:	01010413          	addi	s0,sp,16
    size_t size = sizeBlock * MEM_BLOCK_SIZE;
    80002f44:	00651713          	slli	a4,a0,0x6
    BlockHeader *blk = freeMemHead, *prev = nullptr;
    80002f48:	00005517          	auipc	a0,0x5
    80002f4c:	75053503          	ld	a0,1872(a0) # 80008698 <_ZN16KMemoryAllocator11freeMemHeadE>
    80002f50:	00000693          	li	a3,0
    while (blk != nullptr) {
    80002f54:	00050c63          	beqz	a0,80002f6c <_ZN16KMemoryAllocator9mem_allocEm+0x34>
        if (blk->size >= size) break;
    80002f58:	00853783          	ld	a5,8(a0)
    80002f5c:	00e7f863          	bgeu	a5,a4,80002f6c <_ZN16KMemoryAllocator9mem_allocEm+0x34>
        prev = blk;
    80002f60:	00050693          	mv	a3,a0
        blk = blk->next;
    80002f64:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    80002f68:	fedff06f          	j	80002f54 <_ZN16KMemoryAllocator9mem_allocEm+0x1c>
    }
    if (blk == nullptr) return nullptr;
    80002f6c:	02050c63          	beqz	a0,80002fa4 <_ZN16KMemoryAllocator9mem_allocEm+0x6c>
    size_t remainingSize = blk->size - size;
    80002f70:	00853783          	ld	a5,8(a0)
    80002f74:	40e787b3          	sub	a5,a5,a4
    if (remainingSize >= MEM_BLOCK_SIZE) {
    80002f78:	03f00613          	li	a2,63
    80002f7c:	04f67063          	bgeu	a2,a5,80002fbc <_ZN16KMemoryAllocator9mem_allocEm+0x84>
        blk->size = size;
    80002f80:	00e53423          	sd	a4,8(a0)
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + size);
    80002f84:	00e50733          	add	a4,a0,a4
        if (prev) prev->next = newBlk;
    80002f88:	02068463          	beqz	a3,80002fb0 <_ZN16KMemoryAllocator9mem_allocEm+0x78>
    80002f8c:	00e6b023          	sd	a4,0(a3)
        else freeMemHead = newBlk;
        newBlk->next = blk->next;
    80002f90:	00053683          	ld	a3,0(a0)
    80002f94:	00d73023          	sd	a3,0(a4)
        newBlk->size = remainingSize;
    80002f98:	00f73423          	sd	a5,8(a4)
    }
    else {
        if (prev) prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->next = nullptr;
    80002f9c:	00053023          	sd	zero,0(a0)
    return (char*)blk + sizeof(BlockHeader);
    80002fa0:	01050513          	addi	a0,a0,16
}
    80002fa4:	00813403          	ld	s0,8(sp)
    80002fa8:	01010113          	addi	sp,sp,16
    80002fac:	00008067          	ret
        else freeMemHead = newBlk;
    80002fb0:	00005697          	auipc	a3,0x5
    80002fb4:	6ee6b423          	sd	a4,1768(a3) # 80008698 <_ZN16KMemoryAllocator11freeMemHeadE>
    80002fb8:	fd9ff06f          	j	80002f90 <_ZN16KMemoryAllocator9mem_allocEm+0x58>
        if (prev) prev->next = blk->next;
    80002fbc:	00068863          	beqz	a3,80002fcc <_ZN16KMemoryAllocator9mem_allocEm+0x94>
    80002fc0:	00053783          	ld	a5,0(a0)
    80002fc4:	00f6b023          	sd	a5,0(a3)
    80002fc8:	fd5ff06f          	j	80002f9c <_ZN16KMemoryAllocator9mem_allocEm+0x64>
        else freeMemHead = blk->next;
    80002fcc:	00053783          	ld	a5,0(a0)
    80002fd0:	00005717          	auipc	a4,0x5
    80002fd4:	6cf73423          	sd	a5,1736(a4) # 80008698 <_ZN16KMemoryAllocator11freeMemHeadE>
    80002fd8:	fc5ff06f          	j	80002f9c <_ZN16KMemoryAllocator9mem_allocEm+0x64>

0000000080002fdc <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader>:
    KMemoryAllocator::tryToJoin(newSeg);
    KMemoryAllocator::tryToJoin(prev);
    return 0;
}

void KMemoryAllocator::tryToJoin(BlockHeader* curr) {
    80002fdc:	ff010113          	addi	sp,sp,-16
    80002fe0:	00813423          	sd	s0,8(sp)
    80002fe4:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80002fe8:	00050c63          	beqz	a0,80003000 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002fec:	00053783          	ld	a5,0(a0)
    80002ff0:	00078863          	beqz	a5,80003000 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80002ff4:	00853703          	ld	a4,8(a0)
    80002ff8:	00e506b3          	add	a3,a0,a4
    80002ffc:	00d78863          	beq	a5,a3,8000300c <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80003000:	00813403          	ld	s0,8(sp)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret
        curr->size += curr->next->size;
    8000300c:	0087b683          	ld	a3,8(a5)
    80003010:	00d70733          	add	a4,a4,a3
    80003014:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80003018:	0007b783          	ld	a5,0(a5)
    8000301c:	00f53023          	sd	a5,0(a0)
    80003020:	fe1ff06f          	j	80003000 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080003024 <_ZN16KMemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1;
    80003024:	0a050e63          	beqz	a0,800030e0 <_ZN16KMemoryAllocator8mem_freeEPv+0xbc>
int KMemoryAllocator::mem_free(void* addr) {
    80003028:	fe010113          	addi	sp,sp,-32
    8000302c:	00113c23          	sd	ra,24(sp)
    80003030:	00813823          	sd	s0,16(sp)
    80003034:	00913423          	sd	s1,8(sp)
    80003038:	02010413          	addi	s0,sp,32
    8000303c:	00050713          	mv	a4,a0
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    80003040:	00005697          	auipc	a3,0x5
    80003044:	6586b683          	ld	a3,1624(a3) # 80008698 <_ZN16KMemoryAllocator11freeMemHeadE>
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    80003048:	02068863          	beqz	a3,80003078 <_ZN16KMemoryAllocator8mem_freeEPv+0x54>
    8000304c:	02d56c63          	bltu	a0,a3,80003084 <_ZN16KMemoryAllocator8mem_freeEPv+0x60>
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    80003050:	00068793          	mv	a5,a3
    80003054:	00000493          	li	s1,0
    80003058:	00c0006f          	j	80003064 <_ZN16KMemoryAllocator8mem_freeEPv+0x40>
            prev = curr;
    8000305c:	00078493          	mv	s1,a5
            curr = curr->next;
    80003060:	0007b783          	ld	a5,0(a5)
        while (curr != nullptr) {
    80003064:	00078463          	beqz	a5,8000306c <_ZN16KMemoryAllocator8mem_freeEPv+0x48>
            if (curr > addr) break;
    80003068:	fef77ae3          	bgeu	a4,a5,8000305c <_ZN16KMemoryAllocator8mem_freeEPv+0x38>
        if (curr == nullptr) return -1;
    8000306c:	02079063          	bnez	a5,8000308c <_ZN16KMemoryAllocator8mem_freeEPv+0x68>
    80003070:	fff00513          	li	a0,-1
    80003074:	0440006f          	j	800030b8 <_ZN16KMemoryAllocator8mem_freeEPv+0x94>
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    80003078:	00068493          	mv	s1,a3
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    8000307c:	00068793          	mv	a5,a3
    80003080:	00c0006f          	j	8000308c <_ZN16KMemoryAllocator8mem_freeEPv+0x68>
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    80003084:	00000493          	li	s1,0
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    80003088:	00000793          	li	a5,0
    BlockHeader* newSeg = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    8000308c:	ff070513          	addi	a0,a4,-16
    if (curr) newSeg->next = curr/*->next*/;
    80003090:	02078e63          	beqz	a5,800030cc <_ZN16KMemoryAllocator8mem_freeEPv+0xa8>
    80003094:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = newSeg;
    80003098:	02048e63          	beqz	s1,800030d4 <_ZN16KMemoryAllocator8mem_freeEPv+0xb0>
    8000309c:	00a4b023          	sd	a0,0(s1)
    KMemoryAllocator::tryToJoin(newSeg);
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	f3c080e7          	jalr	-196(ra) # 80002fdc <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader>
    KMemoryAllocator::tryToJoin(prev);
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	f30080e7          	jalr	-208(ra) # 80002fdc <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800030b4:	00000513          	li	a0,0
}
    800030b8:	01813083          	ld	ra,24(sp)
    800030bc:	01013403          	ld	s0,16(sp)
    800030c0:	00813483          	ld	s1,8(sp)
    800030c4:	02010113          	addi	sp,sp,32
    800030c8:	00008067          	ret
    else newSeg->next = freeMemHead;
    800030cc:	fed73823          	sd	a3,-16(a4)
    800030d0:	fc9ff06f          	j	80003098 <_ZN16KMemoryAllocator8mem_freeEPv+0x74>
    else freeMemHead = newSeg;
    800030d4:	00005797          	auipc	a5,0x5
    800030d8:	5ca7b223          	sd	a0,1476(a5) # 80008698 <_ZN16KMemoryAllocator11freeMemHeadE>
    800030dc:	fc5ff06f          	j	800030a0 <_ZN16KMemoryAllocator8mem_freeEPv+0x7c>
    if (addr == nullptr) return -1;
    800030e0:	fff00513          	li	a0,-1
}
    800030e4:	00008067          	ret

00000000800030e8 <_ZN16KMemoryAllocator15initBlockHeaderEv>:

void KMemoryAllocator::initBlockHeader() {
    800030e8:	ff010113          	addi	sp,sp,-16
    800030ec:	00813423          	sd	s0,8(sp)
    800030f0:	01010413          	addi	s0,sp,16
    freeMemHead = (BlockHeader*)HEAP_START_ADDR;
    800030f4:	00005697          	auipc	a3,0x5
    800030f8:	4ac6b683          	ld	a3,1196(a3) # 800085a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800030fc:	0006b783          	ld	a5,0(a3)
    80003100:	00005717          	auipc	a4,0x5
    80003104:	59870713          	addi	a4,a4,1432 # 80008698 <_ZN16KMemoryAllocator11freeMemHeadE>
    80003108:	00f73023          	sd	a5,0(a4)
    freeMemHead->next = nullptr;
    8000310c:	0007b023          	sd	zero,0(a5)
    freeMemHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80003110:	00005797          	auipc	a5,0x5
    80003114:	4c87b783          	ld	a5,1224(a5) # 800085d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003118:	0007b783          	ld	a5,0(a5)
    8000311c:	0006b683          	ld	a3,0(a3)
    80003120:	00073703          	ld	a4,0(a4)
    80003124:	40d787b3          	sub	a5,a5,a3
    80003128:	00f73423          	sd	a5,8(a4)
    8000312c:	00813403          	ld	s0,8(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <_ZN10KSemaphore3putEP4KPCB>:
    KPCB* kpcb = KSemaphore::get();
    if (!kpcb) return;
    KScheduler::put(kpcb);
}

void KSemaphore::put(KPCB* kpcb) {
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00813423          	sd	s0,8(sp)
    80003140:	01010413          	addi	s0,sp,16
    void setWaiting(bool val) { waiting = val; }
    80003144:	00100793          	li	a5,1
    80003148:	02f58923          	sb	a5,50(a1)
    kpcb->setWaiting(true);
    if (!head) head = kpcb;
    8000314c:	00853783          	ld	a5,8(a0)
    80003150:	00078e63          	beqz	a5,8000316c <_ZN10KSemaphore3putEP4KPCB+0x34>
    else tail->nextSemaphore = kpcb;
    80003154:	01053783          	ld	a5,16(a0)
    80003158:	04b7b423          	sd	a1,72(a5)
    tail = kpcb;
    8000315c:	00b53823          	sd	a1,16(a0)
}
    80003160:	00813403          	ld	s0,8(sp)
    80003164:	01010113          	addi	sp,sp,16
    80003168:	00008067          	ret
    if (!head) head = kpcb;
    8000316c:	00b53423          	sd	a1,8(a0)
    80003170:	fedff06f          	j	8000315c <_ZN10KSemaphore3putEP4KPCB+0x24>

0000000080003174 <_ZN10KSemaphore5blockEv>:
void KSemaphore::block() {
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    put(KPCB::running);
    80003184:	00005797          	auipc	a5,0x5
    80003188:	43c7b783          	ld	a5,1084(a5) # 800085c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000318c:	0007b583          	ld	a1,0(a5)
    80003190:	00000097          	auipc	ra,0x0
    80003194:	fa8080e7          	jalr	-88(ra) # 80003138 <_ZN10KSemaphore3putEP4KPCB>
    KPCB::dispatch();
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	2b4080e7          	jalr	692(ra) # 8000244c <_ZN4KPCB8dispatchEv>
}
    800031a0:	00813083          	ld	ra,8(sp)
    800031a4:	00013403          	ld	s0,0(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZN10KSemaphore3getEv>:

KPCB *KSemaphore::get() {
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00813423          	sd	s0,8(sp)
    800031b8:	01010413          	addi	s0,sp,16
    800031bc:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    800031c0:	00853503          	ld	a0,8(a0)
    800031c4:	00050c63          	beqz	a0,800031dc <_ZN10KSemaphore3getEv+0x2c>
    KPCB* old = head;
    head = head->nextSemaphore;
    800031c8:	04853703          	ld	a4,72(a0)
    800031cc:	00e7b423          	sd	a4,8(a5)
    if (!head) tail = nullptr;
    800031d0:	00070c63          	beqz	a4,800031e8 <_ZN10KSemaphore3getEv+0x38>
    old->nextSemaphore = nullptr;
    800031d4:	04053423          	sd	zero,72(a0)
    800031d8:	02050923          	sb	zero,50(a0)
    old->setWaiting(false);
    return old;
}
    800031dc:	00813403          	ld	s0,8(sp)
    800031e0:	01010113          	addi	sp,sp,16
    800031e4:	00008067          	ret
    if (!head) tail = nullptr;
    800031e8:	0007b823          	sd	zero,16(a5)
    800031ec:	fe9ff06f          	j	800031d4 <_ZN10KSemaphore3getEv+0x24>

00000000800031f0 <_ZN10KSemaphore7deblockEv>:
void KSemaphore::deblock() {
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00113423          	sd	ra,8(sp)
    800031f8:	00813023          	sd	s0,0(sp)
    800031fc:	01010413          	addi	s0,sp,16
    KPCB* kpcb = KSemaphore::get();
    80003200:	00000097          	auipc	ra,0x0
    80003204:	fb0080e7          	jalr	-80(ra) # 800031b0 <_ZN10KSemaphore3getEv>
    if (!kpcb) return;
    80003208:	00050663          	beqz	a0,80003214 <_ZN10KSemaphore7deblockEv+0x24>
    KScheduler::put(kpcb);
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	16c080e7          	jalr	364(ra) # 80002378 <_ZN10KScheduler3putEP4KPCB>
}
    80003214:	00813083          	ld	ra,8(sp)
    80003218:	00013403          	ld	s0,0(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret

0000000080003224 <_ZN10KSemaphore15createSemaphoreEm>:

KSemaphore *KSemaphore::createSemaphore(uint64 init) {
    80003224:	fe010113          	addi	sp,sp,-32
    80003228:	00113c23          	sd	ra,24(sp)
    8000322c:	00813823          	sd	s0,16(sp)
    80003230:	00913423          	sd	s1,8(sp)
    80003234:	02010413          	addi	s0,sp,32
    80003238:	00050493          	mv	s1,a0
        return KMemoryAllocator::mem_alloc(sizeBlock);
    8000323c:	00100513          	li	a0,1
    80003240:	00000097          	auipc	ra,0x0
    80003244:	cf8080e7          	jalr	-776(ra) # 80002f38 <_ZN16KMemoryAllocator9mem_allocEm>
    void block();
    void deblock();
    void put(KPCB* kpcb);
    KPCB* get();
private:
    explicit KSemaphore(uint64 init) : val(init) {}
    80003248:	00952023          	sw	s1,0(a0)
    8000324c:	00053423          	sd	zero,8(a0)
    80003250:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    80003254:	01813083          	ld	ra,24(sp)
    80003258:	01013403          	ld	s0,16(sp)
    8000325c:	00813483          	ld	s1,8(sp)
    80003260:	02010113          	addi	sp,sp,32
    80003264:	00008067          	ret

0000000080003268 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003268:	fe010113          	addi	sp,sp,-32
    8000326c:	00113c23          	sd	ra,24(sp)
    80003270:	00813823          	sd	s0,16(sp)
    80003274:	00913423          	sd	s1,8(sp)
    80003278:	02010413          	addi	s0,sp,32
    8000327c:	00050493          	mv	s1,a0
    LOCK();
    80003280:	00100613          	li	a2,1
    80003284:	00000593          	li	a1,0
    80003288:	00005517          	auipc	a0,0x5
    8000328c:	41850513          	addi	a0,a0,1048 # 800086a0 <lockPrint>
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	f9c080e7          	jalr	-100(ra) # 8000122c <copy_and_swap>
    80003298:	fe0514e3          	bnez	a0,80003280 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000329c:	0004c503          	lbu	a0,0(s1)
    800032a0:	00050a63          	beqz	a0,800032b4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	a98080e7          	jalr	-1384(ra) # 80001d3c <_Z4putcc>
        string++;
    800032ac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800032b0:	fedff06f          	j	8000329c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800032b4:	00000613          	li	a2,0
    800032b8:	00100593          	li	a1,1
    800032bc:	00005517          	auipc	a0,0x5
    800032c0:	3e450513          	addi	a0,a0,996 # 800086a0 <lockPrint>
    800032c4:	ffffe097          	auipc	ra,0xffffe
    800032c8:	f68080e7          	jalr	-152(ra) # 8000122c <copy_and_swap>
    800032cc:	fe0514e3          	bnez	a0,800032b4 <_Z11printStringPKc+0x4c>
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	02010113          	addi	sp,sp,32
    800032e0:	00008067          	ret

00000000800032e4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800032e4:	fd010113          	addi	sp,sp,-48
    800032e8:	02113423          	sd	ra,40(sp)
    800032ec:	02813023          	sd	s0,32(sp)
    800032f0:	00913c23          	sd	s1,24(sp)
    800032f4:	01213823          	sd	s2,16(sp)
    800032f8:	01313423          	sd	s3,8(sp)
    800032fc:	01413023          	sd	s4,0(sp)
    80003300:	03010413          	addi	s0,sp,48
    80003304:	00050993          	mv	s3,a0
    80003308:	00058a13          	mv	s4,a1
    LOCK();
    8000330c:	00100613          	li	a2,1
    80003310:	00000593          	li	a1,0
    80003314:	00005517          	auipc	a0,0x5
    80003318:	38c50513          	addi	a0,a0,908 # 800086a0 <lockPrint>
    8000331c:	ffffe097          	auipc	ra,0xffffe
    80003320:	f10080e7          	jalr	-240(ra) # 8000122c <copy_and_swap>
    80003324:	fe0514e3          	bnez	a0,8000330c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003328:	00000913          	li	s2,0
    8000332c:	00090493          	mv	s1,s2
    80003330:	0019091b          	addiw	s2,s2,1
    80003334:	03495a63          	bge	s2,s4,80003368 <_Z9getStringPci+0x84>
        cc = getc();
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	9d8080e7          	jalr	-1576(ra) # 80001d10 <_Z4getcv>
        if(cc < 1)
    80003340:	02050463          	beqz	a0,80003368 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003344:	009984b3          	add	s1,s3,s1
    80003348:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000334c:	00a00793          	li	a5,10
    80003350:	00f50a63          	beq	a0,a5,80003364 <_Z9getStringPci+0x80>
    80003354:	00d00793          	li	a5,13
    80003358:	fcf51ae3          	bne	a0,a5,8000332c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000335c:	00090493          	mv	s1,s2
    80003360:	0080006f          	j	80003368 <_Z9getStringPci+0x84>
    80003364:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003368:	009984b3          	add	s1,s3,s1
    8000336c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003370:	00000613          	li	a2,0
    80003374:	00100593          	li	a1,1
    80003378:	00005517          	auipc	a0,0x5
    8000337c:	32850513          	addi	a0,a0,808 # 800086a0 <lockPrint>
    80003380:	ffffe097          	auipc	ra,0xffffe
    80003384:	eac080e7          	jalr	-340(ra) # 8000122c <copy_and_swap>
    80003388:	fe0514e3          	bnez	a0,80003370 <_Z9getStringPci+0x8c>
    return buf;
}
    8000338c:	00098513          	mv	a0,s3
    80003390:	02813083          	ld	ra,40(sp)
    80003394:	02013403          	ld	s0,32(sp)
    80003398:	01813483          	ld	s1,24(sp)
    8000339c:	01013903          	ld	s2,16(sp)
    800033a0:	00813983          	ld	s3,8(sp)
    800033a4:	00013a03          	ld	s4,0(sp)
    800033a8:	03010113          	addi	sp,sp,48
    800033ac:	00008067          	ret

00000000800033b0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00813423          	sd	s0,8(sp)
    800033b8:	01010413          	addi	s0,sp,16
    800033bc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800033c0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800033c4:	0006c603          	lbu	a2,0(a3)
    800033c8:	fd06071b          	addiw	a4,a2,-48
    800033cc:	0ff77713          	andi	a4,a4,255
    800033d0:	00900793          	li	a5,9
    800033d4:	02e7e063          	bltu	a5,a4,800033f4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800033d8:	0025179b          	slliw	a5,a0,0x2
    800033dc:	00a787bb          	addw	a5,a5,a0
    800033e0:	0017979b          	slliw	a5,a5,0x1
    800033e4:	00168693          	addi	a3,a3,1
    800033e8:	00c787bb          	addw	a5,a5,a2
    800033ec:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800033f0:	fd5ff06f          	j	800033c4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800033f4:	00813403          	ld	s0,8(sp)
    800033f8:	01010113          	addi	sp,sp,16
    800033fc:	00008067          	ret

0000000080003400 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003400:	fc010113          	addi	sp,sp,-64
    80003404:	02113c23          	sd	ra,56(sp)
    80003408:	02813823          	sd	s0,48(sp)
    8000340c:	02913423          	sd	s1,40(sp)
    80003410:	03213023          	sd	s2,32(sp)
    80003414:	01313c23          	sd	s3,24(sp)
    80003418:	04010413          	addi	s0,sp,64
    8000341c:	00050493          	mv	s1,a0
    80003420:	00058913          	mv	s2,a1
    80003424:	00060993          	mv	s3,a2
    LOCK();
    80003428:	00100613          	li	a2,1
    8000342c:	00000593          	li	a1,0
    80003430:	00005517          	auipc	a0,0x5
    80003434:	27050513          	addi	a0,a0,624 # 800086a0 <lockPrint>
    80003438:	ffffe097          	auipc	ra,0xffffe
    8000343c:	df4080e7          	jalr	-524(ra) # 8000122c <copy_and_swap>
    80003440:	fe0514e3          	bnez	a0,80003428 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003444:	00098463          	beqz	s3,8000344c <_Z8printIntiii+0x4c>
    80003448:	0804c463          	bltz	s1,800034d0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000344c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003450:	00000593          	li	a1,0
    }

    i = 0;
    80003454:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003458:	0009079b          	sext.w	a5,s2
    8000345c:	0325773b          	remuw	a4,a0,s2
    80003460:	00048613          	mv	a2,s1
    80003464:	0014849b          	addiw	s1,s1,1
    80003468:	02071693          	slli	a3,a4,0x20
    8000346c:	0206d693          	srli	a3,a3,0x20
    80003470:	00005717          	auipc	a4,0x5
    80003474:	10070713          	addi	a4,a4,256 # 80008570 <digits>
    80003478:	00d70733          	add	a4,a4,a3
    8000347c:	00074683          	lbu	a3,0(a4)
    80003480:	fd040713          	addi	a4,s0,-48
    80003484:	00c70733          	add	a4,a4,a2
    80003488:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000348c:	0005071b          	sext.w	a4,a0
    80003490:	0325553b          	divuw	a0,a0,s2
    80003494:	fcf772e3          	bgeu	a4,a5,80003458 <_Z8printIntiii+0x58>
    if(neg)
    80003498:	00058c63          	beqz	a1,800034b0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000349c:	fd040793          	addi	a5,s0,-48
    800034a0:	009784b3          	add	s1,a5,s1
    800034a4:	02d00793          	li	a5,45
    800034a8:	fef48823          	sb	a5,-16(s1)
    800034ac:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800034b0:	fff4849b          	addiw	s1,s1,-1
    800034b4:	0204c463          	bltz	s1,800034dc <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800034b8:	fd040793          	addi	a5,s0,-48
    800034bc:	009787b3          	add	a5,a5,s1
    800034c0:	ff07c503          	lbu	a0,-16(a5)
    800034c4:	fffff097          	auipc	ra,0xfffff
    800034c8:	878080e7          	jalr	-1928(ra) # 80001d3c <_Z4putcc>
    800034cc:	fe5ff06f          	j	800034b0 <_Z8printIntiii+0xb0>
        x = -xx;
    800034d0:	4090053b          	negw	a0,s1
        neg = 1;
    800034d4:	00100593          	li	a1,1
        x = -xx;
    800034d8:	f7dff06f          	j	80003454 <_Z8printIntiii+0x54>

    UNLOCK();
    800034dc:	00000613          	li	a2,0
    800034e0:	00100593          	li	a1,1
    800034e4:	00005517          	auipc	a0,0x5
    800034e8:	1bc50513          	addi	a0,a0,444 # 800086a0 <lockPrint>
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	d40080e7          	jalr	-704(ra) # 8000122c <copy_and_swap>
    800034f4:	fe0514e3          	bnez	a0,800034dc <_Z8printIntiii+0xdc>
    800034f8:	03813083          	ld	ra,56(sp)
    800034fc:	03013403          	ld	s0,48(sp)
    80003500:	02813483          	ld	s1,40(sp)
    80003504:	02013903          	ld	s2,32(sp)
    80003508:	01813983          	ld	s3,24(sp)
    8000350c:	04010113          	addi	sp,sp,64
    80003510:	00008067          	ret

0000000080003514 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003514:	fd010113          	addi	sp,sp,-48
    80003518:	02113423          	sd	ra,40(sp)
    8000351c:	02813023          	sd	s0,32(sp)
    80003520:	00913c23          	sd	s1,24(sp)
    80003524:	01213823          	sd	s2,16(sp)
    80003528:	01313423          	sd	s3,8(sp)
    8000352c:	03010413          	addi	s0,sp,48
    80003530:	00050493          	mv	s1,a0
    80003534:	00058913          	mv	s2,a1
    80003538:	0015879b          	addiw	a5,a1,1
    8000353c:	0007851b          	sext.w	a0,a5
    80003540:	00f4a023          	sw	a5,0(s1)
    80003544:	0004a823          	sw	zero,16(s1)
    80003548:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000354c:	00251513          	slli	a0,a0,0x2
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	4b0080e7          	jalr	1200(ra) # 80001a00 <_Z9mem_allocm>
    80003558:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000355c:	01000513          	li	a0,16
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	474080e7          	jalr	1140(ra) # 800029d4 <_Znwm>
    80003568:	00050993          	mv	s3,a0
    8000356c:	00000593          	li	a1,0
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	698080e7          	jalr	1688(ra) # 80002c08 <_ZN9SemaphoreC1Ej>
    80003578:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000357c:	01000513          	li	a0,16
    80003580:	fffff097          	auipc	ra,0xfffff
    80003584:	454080e7          	jalr	1108(ra) # 800029d4 <_Znwm>
    80003588:	00050993          	mv	s3,a0
    8000358c:	00090593          	mv	a1,s2
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	678080e7          	jalr	1656(ra) # 80002c08 <_ZN9SemaphoreC1Ej>
    80003598:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000359c:	01000513          	li	a0,16
    800035a0:	fffff097          	auipc	ra,0xfffff
    800035a4:	434080e7          	jalr	1076(ra) # 800029d4 <_Znwm>
    800035a8:	00050913          	mv	s2,a0
    800035ac:	00100593          	li	a1,1
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	658080e7          	jalr	1624(ra) # 80002c08 <_ZN9SemaphoreC1Ej>
    800035b8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800035bc:	01000513          	li	a0,16
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	414080e7          	jalr	1044(ra) # 800029d4 <_Znwm>
    800035c8:	00050913          	mv	s2,a0
    800035cc:	00100593          	li	a1,1
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	638080e7          	jalr	1592(ra) # 80002c08 <_ZN9SemaphoreC1Ej>
    800035d8:	0324b823          	sd	s2,48(s1)
}
    800035dc:	02813083          	ld	ra,40(sp)
    800035e0:	02013403          	ld	s0,32(sp)
    800035e4:	01813483          	ld	s1,24(sp)
    800035e8:	01013903          	ld	s2,16(sp)
    800035ec:	00813983          	ld	s3,8(sp)
    800035f0:	03010113          	addi	sp,sp,48
    800035f4:	00008067          	ret
    800035f8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800035fc:	00098513          	mv	a0,s3
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	3fc080e7          	jalr	1020(ra) # 800029fc <_ZdlPv>
    80003608:	00048513          	mv	a0,s1
    8000360c:	00006097          	auipc	ra,0x6
    80003610:	17c080e7          	jalr	380(ra) # 80009788 <_Unwind_Resume>
    80003614:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003618:	00098513          	mv	a0,s3
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	3e0080e7          	jalr	992(ra) # 800029fc <_ZdlPv>
    80003624:	00048513          	mv	a0,s1
    80003628:	00006097          	auipc	ra,0x6
    8000362c:	160080e7          	jalr	352(ra) # 80009788 <_Unwind_Resume>
    80003630:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003634:	00090513          	mv	a0,s2
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	3c4080e7          	jalr	964(ra) # 800029fc <_ZdlPv>
    80003640:	00048513          	mv	a0,s1
    80003644:	00006097          	auipc	ra,0x6
    80003648:	144080e7          	jalr	324(ra) # 80009788 <_Unwind_Resume>
    8000364c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003650:	00090513          	mv	a0,s2
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	3a8080e7          	jalr	936(ra) # 800029fc <_ZdlPv>
    8000365c:	00048513          	mv	a0,s1
    80003660:	00006097          	auipc	ra,0x6
    80003664:	128080e7          	jalr	296(ra) # 80009788 <_Unwind_Resume>

0000000080003668 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003668:	fe010113          	addi	sp,sp,-32
    8000366c:	00113c23          	sd	ra,24(sp)
    80003670:	00813823          	sd	s0,16(sp)
    80003674:	00913423          	sd	s1,8(sp)
    80003678:	01213023          	sd	s2,0(sp)
    8000367c:	02010413          	addi	s0,sp,32
    80003680:	00050493          	mv	s1,a0
    80003684:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003688:	01853503          	ld	a0,24(a0)
    8000368c:	fffff097          	auipc	ra,0xfffff
    80003690:	5b4080e7          	jalr	1460(ra) # 80002c40 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003694:	0304b503          	ld	a0,48(s1)
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	5a8080e7          	jalr	1448(ra) # 80002c40 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800036a0:	0084b783          	ld	a5,8(s1)
    800036a4:	0144a703          	lw	a4,20(s1)
    800036a8:	00271713          	slli	a4,a4,0x2
    800036ac:	00e787b3          	add	a5,a5,a4
    800036b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800036b4:	0144a783          	lw	a5,20(s1)
    800036b8:	0017879b          	addiw	a5,a5,1
    800036bc:	0004a703          	lw	a4,0(s1)
    800036c0:	02e7e7bb          	remw	a5,a5,a4
    800036c4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800036c8:	0304b503          	ld	a0,48(s1)
    800036cc:	fffff097          	auipc	ra,0xfffff
    800036d0:	5a0080e7          	jalr	1440(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800036d4:	0204b503          	ld	a0,32(s1)
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	594080e7          	jalr	1428(ra) # 80002c6c <_ZN9Semaphore6signalEv>

}
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	00013903          	ld	s2,0(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	01213023          	sd	s2,0(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003714:	02053503          	ld	a0,32(a0)
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	528080e7          	jalr	1320(ra) # 80002c40 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003720:	0284b503          	ld	a0,40(s1)
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	51c080e7          	jalr	1308(ra) # 80002c40 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000372c:	0084b703          	ld	a4,8(s1)
    80003730:	0104a783          	lw	a5,16(s1)
    80003734:	00279693          	slli	a3,a5,0x2
    80003738:	00d70733          	add	a4,a4,a3
    8000373c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003740:	0017879b          	addiw	a5,a5,1
    80003744:	0004a703          	lw	a4,0(s1)
    80003748:	02e7e7bb          	remw	a5,a5,a4
    8000374c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003750:	0284b503          	ld	a0,40(s1)
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	518080e7          	jalr	1304(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000375c:	0184b503          	ld	a0,24(s1)
    80003760:	fffff097          	auipc	ra,0xfffff
    80003764:	50c080e7          	jalr	1292(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003768:	00090513          	mv	a0,s2
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	00013903          	ld	s2,0(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	01213023          	sd	s2,0(sp)
    80003798:	02010413          	addi	s0,sp,32
    8000379c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800037a0:	02853503          	ld	a0,40(a0)
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	49c080e7          	jalr	1180(ra) # 80002c40 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800037ac:	0304b503          	ld	a0,48(s1)
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	490080e7          	jalr	1168(ra) # 80002c40 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800037b8:	0144a783          	lw	a5,20(s1)
    800037bc:	0104a903          	lw	s2,16(s1)
    800037c0:	0327ce63          	blt	a5,s2,800037fc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800037c4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800037c8:	0304b503          	ld	a0,48(s1)
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	4a0080e7          	jalr	1184(ra) # 80002c6c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800037d4:	0284b503          	ld	a0,40(s1)
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	494080e7          	jalr	1172(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    return ret;
}
    800037e0:	00090513          	mv	a0,s2
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00813483          	ld	s1,8(sp)
    800037f0:	00013903          	ld	s2,0(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret
        ret = cap - head + tail;
    800037fc:	0004a703          	lw	a4,0(s1)
    80003800:	4127093b          	subw	s2,a4,s2
    80003804:	00f9093b          	addw	s2,s2,a5
    80003808:	fc1ff06f          	j	800037c8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000380c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00113c23          	sd	ra,24(sp)
    80003814:	00813823          	sd	s0,16(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003824:	00a00513          	li	a0,10
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	498080e7          	jalr	1176(ra) # 80002cc0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003830:	00004517          	auipc	a0,0x4
    80003834:	82050513          	addi	a0,a0,-2016 # 80007050 <CONSOLE_STATUS+0x40>
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	a30080e7          	jalr	-1488(ra) # 80003268 <_Z11printStringPKc>
    while (getCnt()) {
    80003840:	00048513          	mv	a0,s1
    80003844:	00000097          	auipc	ra,0x0
    80003848:	f40080e7          	jalr	-192(ra) # 80003784 <_ZN9BufferCPP6getCntEv>
    8000384c:	02050c63          	beqz	a0,80003884 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003850:	0084b783          	ld	a5,8(s1)
    80003854:	0104a703          	lw	a4,16(s1)
    80003858:	00271713          	slli	a4,a4,0x2
    8000385c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003860:	0007c503          	lbu	a0,0(a5)
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	45c080e7          	jalr	1116(ra) # 80002cc0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000386c:	0104a783          	lw	a5,16(s1)
    80003870:	0017879b          	addiw	a5,a5,1
    80003874:	0004a703          	lw	a4,0(s1)
    80003878:	02e7e7bb          	remw	a5,a5,a4
    8000387c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003880:	fc1ff06f          	j	80003840 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003884:	02100513          	li	a0,33
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	438080e7          	jalr	1080(ra) # 80002cc0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003890:	00a00513          	li	a0,10
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	42c080e7          	jalr	1068(ra) # 80002cc0 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000389c:	0084b503          	ld	a0,8(s1)
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	1a0080e7          	jalr	416(ra) # 80001a40 <_Z8mem_freePv>
    delete itemAvailable;
    800038a8:	0204b503          	ld	a0,32(s1)
    800038ac:	00050863          	beqz	a0,800038bc <_ZN9BufferCPPD1Ev+0xb0>
    800038b0:	00053783          	ld	a5,0(a0)
    800038b4:	0087b783          	ld	a5,8(a5)
    800038b8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800038bc:	0184b503          	ld	a0,24(s1)
    800038c0:	00050863          	beqz	a0,800038d0 <_ZN9BufferCPPD1Ev+0xc4>
    800038c4:	00053783          	ld	a5,0(a0)
    800038c8:	0087b783          	ld	a5,8(a5)
    800038cc:	000780e7          	jalr	a5
    delete mutexTail;
    800038d0:	0304b503          	ld	a0,48(s1)
    800038d4:	00050863          	beqz	a0,800038e4 <_ZN9BufferCPPD1Ev+0xd8>
    800038d8:	00053783          	ld	a5,0(a0)
    800038dc:	0087b783          	ld	a5,8(a5)
    800038e0:	000780e7          	jalr	a5
    delete mutexHead;
    800038e4:	0284b503          	ld	a0,40(s1)
    800038e8:	00050863          	beqz	a0,800038f8 <_ZN9BufferCPPD1Ev+0xec>
    800038ec:	00053783          	ld	a5,0(a0)
    800038f0:	0087b783          	ld	a5,8(a5)
    800038f4:	000780e7          	jalr	a5
}
    800038f8:	01813083          	ld	ra,24(sp)
    800038fc:	01013403          	ld	s0,16(sp)
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00008067          	ret

000000008000390c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00113c23          	sd	ra,24(sp)
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	01213023          	sd	s2,0(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003928:	00000913          	li	s2,0
    8000392c:	00c0006f          	j	80003938 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	2c8080e7          	jalr	712(ra) # 80001bf8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	3d8080e7          	jalr	984(ra) # 80001d10 <_Z4getcv>
    80003940:	0005059b          	sext.w	a1,a0
    80003944:	01b00793          	li	a5,27
    80003948:	02f58a63          	beq	a1,a5,8000397c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000394c:	0084b503          	ld	a0,8(s1)
    80003950:	00000097          	auipc	ra,0x0
    80003954:	574080e7          	jalr	1396(ra) # 80003ec4 <_ZN6Buffer3putEi>
        i++;
    80003958:	0019071b          	addiw	a4,s2,1
    8000395c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003960:	0004a683          	lw	a3,0(s1)
    80003964:	0026979b          	slliw	a5,a3,0x2
    80003968:	00d787bb          	addw	a5,a5,a3
    8000396c:	0017979b          	slliw	a5,a5,0x1
    80003970:	02f767bb          	remw	a5,a4,a5
    80003974:	fc0792e3          	bnez	a5,80003938 <_Z16producerKeyboardPv+0x2c>
    80003978:	fb9ff06f          	j	80003930 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000397c:	00100793          	li	a5,1
    80003980:	00005717          	auipc	a4,0x5
    80003984:	d2f72423          	sw	a5,-728(a4) # 800086a8 <threadEnd>
    data->buffer->put('!');
    80003988:	02100593          	li	a1,33
    8000398c:	0084b503          	ld	a0,8(s1)
    80003990:	00000097          	auipc	ra,0x0
    80003994:	534080e7          	jalr	1332(ra) # 80003ec4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003998:	0104b503          	ld	a0,16(s1)
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	324080e7          	jalr	804(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>
}
    800039a4:	01813083          	ld	ra,24(sp)
    800039a8:	01013403          	ld	s0,16(sp)
    800039ac:	00813483          	ld	s1,8(sp)
    800039b0:	00013903          	ld	s2,0(sp)
    800039b4:	02010113          	addi	sp,sp,32
    800039b8:	00008067          	ret

00000000800039bc <_Z8producerPv>:

void producer(void *arg) {
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039d8:	00000913          	li	s2,0
    800039dc:	00c0006f          	j	800039e8 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	218080e7          	jalr	536(ra) # 80001bf8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800039e8:	00005797          	auipc	a5,0x5
    800039ec:	cc07a783          	lw	a5,-832(a5) # 800086a8 <threadEnd>
    800039f0:	02079e63          	bnez	a5,80003a2c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800039f4:	0004a583          	lw	a1,0(s1)
    800039f8:	0305859b          	addiw	a1,a1,48
    800039fc:	0084b503          	ld	a0,8(s1)
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	4c4080e7          	jalr	1220(ra) # 80003ec4 <_ZN6Buffer3putEi>
        i++;
    80003a08:	0019071b          	addiw	a4,s2,1
    80003a0c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a10:	0004a683          	lw	a3,0(s1)
    80003a14:	0026979b          	slliw	a5,a3,0x2
    80003a18:	00d787bb          	addw	a5,a5,a3
    80003a1c:	0017979b          	slliw	a5,a5,0x1
    80003a20:	02f767bb          	remw	a5,a4,a5
    80003a24:	fc0792e3          	bnez	a5,800039e8 <_Z8producerPv+0x2c>
    80003a28:	fb9ff06f          	j	800039e0 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003a2c:	0104b503          	ld	a0,16(s1)
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	290080e7          	jalr	656(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>
}
    80003a38:	01813083          	ld	ra,24(sp)
    80003a3c:	01013403          	ld	s0,16(sp)
    80003a40:	00813483          	ld	s1,8(sp)
    80003a44:	00013903          	ld	s2,0(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret

0000000080003a50 <_Z8consumerPv>:

void consumer(void *arg) {
    80003a50:	fd010113          	addi	sp,sp,-48
    80003a54:	02113423          	sd	ra,40(sp)
    80003a58:	02813023          	sd	s0,32(sp)
    80003a5c:	00913c23          	sd	s1,24(sp)
    80003a60:	01213823          	sd	s2,16(sp)
    80003a64:	01313423          	sd	s3,8(sp)
    80003a68:	03010413          	addi	s0,sp,48
    80003a6c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a70:	00000993          	li	s3,0
    80003a74:	01c0006f          	j	80003a90 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	180080e7          	jalr	384(ra) # 80001bf8 <_Z15thread_dispatchv>
    80003a80:	0500006f          	j	80003ad0 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003a84:	00a00513          	li	a0,10
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	2b4080e7          	jalr	692(ra) # 80001d3c <_Z4putcc>
    while (!threadEnd) {
    80003a90:	00005797          	auipc	a5,0x5
    80003a94:	c187a783          	lw	a5,-1000(a5) # 800086a8 <threadEnd>
    80003a98:	06079063          	bnez	a5,80003af8 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80003a9c:	00893503          	ld	a0,8(s2)
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	4b4080e7          	jalr	1204(ra) # 80003f54 <_ZN6Buffer3getEv>
        i++;
    80003aa8:	0019849b          	addiw	s1,s3,1
    80003aac:	0004899b          	sext.w	s3,s1
        putc(key);
    80003ab0:	0ff57513          	andi	a0,a0,255
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	288080e7          	jalr	648(ra) # 80001d3c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003abc:	00092703          	lw	a4,0(s2)
    80003ac0:	0027179b          	slliw	a5,a4,0x2
    80003ac4:	00e787bb          	addw	a5,a5,a4
    80003ac8:	02f4e7bb          	remw	a5,s1,a5
    80003acc:	fa0786e3          	beqz	a5,80003a78 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80003ad0:	05000793          	li	a5,80
    80003ad4:	02f4e4bb          	remw	s1,s1,a5
    80003ad8:	fa049ce3          	bnez	s1,80003a90 <_Z8consumerPv+0x40>
    80003adc:	fa9ff06f          	j	80003a84 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003ae0:	00893503          	ld	a0,8(s2)
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	470080e7          	jalr	1136(ra) # 80003f54 <_ZN6Buffer3getEv>
        putc(key);
    80003aec:	0ff57513          	andi	a0,a0,255
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	24c080e7          	jalr	588(ra) # 80001d3c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003af8:	00893503          	ld	a0,8(s2)
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	4e4080e7          	jalr	1252(ra) # 80003fe0 <_ZN6Buffer6getCntEv>
    80003b04:	fca04ee3          	bgtz	a0,80003ae0 <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003b08:	01093503          	ld	a0,16(s2)
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	1b4080e7          	jalr	436(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>
}
    80003b14:	02813083          	ld	ra,40(sp)
    80003b18:	02013403          	ld	s0,32(sp)
    80003b1c:	01813483          	ld	s1,24(sp)
    80003b20:	01013903          	ld	s2,16(sp)
    80003b24:	00813983          	ld	s3,8(sp)
    80003b28:	03010113          	addi	sp,sp,48
    80003b2c:	00008067          	ret

0000000080003b30 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003b30:	f9010113          	addi	sp,sp,-112
    80003b34:	06113423          	sd	ra,104(sp)
    80003b38:	06813023          	sd	s0,96(sp)
    80003b3c:	04913c23          	sd	s1,88(sp)
    80003b40:	05213823          	sd	s2,80(sp)
    80003b44:	05313423          	sd	s3,72(sp)
    80003b48:	05413023          	sd	s4,64(sp)
    80003b4c:	03513c23          	sd	s5,56(sp)
    80003b50:	03613823          	sd	s6,48(sp)
    80003b54:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003b58:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b5c:	00003517          	auipc	a0,0x3
    80003b60:	50c50513          	addi	a0,a0,1292 # 80007068 <CONSOLE_STATUS+0x58>
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	704080e7          	jalr	1796(ra) # 80003268 <_Z11printStringPKc>
    getString(input, 30);
    80003b6c:	01e00593          	li	a1,30
    80003b70:	fa040493          	addi	s1,s0,-96
    80003b74:	00048513          	mv	a0,s1
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	76c080e7          	jalr	1900(ra) # 800032e4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b80:	00048513          	mv	a0,s1
    80003b84:	00000097          	auipc	ra,0x0
    80003b88:	82c080e7          	jalr	-2004(ra) # 800033b0 <_Z11stringToIntPKc>
    80003b8c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003b90:	00003517          	auipc	a0,0x3
    80003b94:	4f850513          	addi	a0,a0,1272 # 80007088 <CONSOLE_STATUS+0x78>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	6d0080e7          	jalr	1744(ra) # 80003268 <_Z11printStringPKc>
    getString(input, 30);
    80003ba0:	01e00593          	li	a1,30
    80003ba4:	00048513          	mv	a0,s1
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	73c080e7          	jalr	1852(ra) # 800032e4 <_Z9getStringPci>
    n = stringToInt(input);
    80003bb0:	00048513          	mv	a0,s1
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	7fc080e7          	jalr	2044(ra) # 800033b0 <_Z11stringToIntPKc>
    80003bbc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003bc0:	00003517          	auipc	a0,0x3
    80003bc4:	4e850513          	addi	a0,a0,1256 # 800070a8 <CONSOLE_STATUS+0x98>
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	6a0080e7          	jalr	1696(ra) # 80003268 <_Z11printStringPKc>
    80003bd0:	00000613          	li	a2,0
    80003bd4:	00a00593          	li	a1,10
    80003bd8:	00090513          	mv	a0,s2
    80003bdc:	00000097          	auipc	ra,0x0
    80003be0:	824080e7          	jalr	-2012(ra) # 80003400 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003be4:	00003517          	auipc	a0,0x3
    80003be8:	4dc50513          	addi	a0,a0,1244 # 800070c0 <CONSOLE_STATUS+0xb0>
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	67c080e7          	jalr	1660(ra) # 80003268 <_Z11printStringPKc>
    80003bf4:	00000613          	li	a2,0
    80003bf8:	00a00593          	li	a1,10
    80003bfc:	00048513          	mv	a0,s1
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	800080e7          	jalr	-2048(ra) # 80003400 <_Z8printIntiii>
    printString(".\n");
    80003c08:	00003517          	auipc	a0,0x3
    80003c0c:	4d050513          	addi	a0,a0,1232 # 800070d8 <CONSOLE_STATUS+0xc8>
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	658080e7          	jalr	1624(ra) # 80003268 <_Z11printStringPKc>
    if(threadNum > n) {
    80003c18:	0324c463          	blt	s1,s2,80003c40 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003c1c:	03205c63          	blez	s2,80003c54 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003c20:	03800513          	li	a0,56
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	db0080e7          	jalr	-592(ra) # 800029d4 <_Znwm>
    80003c2c:	00050a13          	mv	s4,a0
    80003c30:	00048593          	mv	a1,s1
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	1f4080e7          	jalr	500(ra) # 80003e28 <_ZN6BufferC1Ei>
    80003c3c:	0300006f          	j	80003c6c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c40:	00003517          	auipc	a0,0x3
    80003c44:	4a050513          	addi	a0,a0,1184 # 800070e0 <CONSOLE_STATUS+0xd0>
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	620080e7          	jalr	1568(ra) # 80003268 <_Z11printStringPKc>
        return;
    80003c50:	0140006f          	j	80003c64 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c54:	00003517          	auipc	a0,0x3
    80003c58:	4cc50513          	addi	a0,a0,1228 # 80007120 <CONSOLE_STATUS+0x110>
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	60c080e7          	jalr	1548(ra) # 80003268 <_Z11printStringPKc>
        return;
    80003c64:	000b0113          	mv	sp,s6
    80003c68:	1500006f          	j	80003db8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003c6c:	00000593          	li	a1,0
    80003c70:	00005517          	auipc	a0,0x5
    80003c74:	a4050513          	addi	a0,a0,-1472 # 800086b0 <waitForAll>
    80003c78:	ffffe097          	auipc	ra,0xffffe
    80003c7c:	fa0080e7          	jalr	-96(ra) # 80001c18 <_Z8sem_openPP10KSemaphorej>
    thread_t threads[threadNum];
    80003c80:	00391793          	slli	a5,s2,0x3
    80003c84:	00f78793          	addi	a5,a5,15
    80003c88:	ff07f793          	andi	a5,a5,-16
    80003c8c:	40f10133          	sub	sp,sp,a5
    80003c90:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003c94:	0019071b          	addiw	a4,s2,1
    80003c98:	00171793          	slli	a5,a4,0x1
    80003c9c:	00e787b3          	add	a5,a5,a4
    80003ca0:	00379793          	slli	a5,a5,0x3
    80003ca4:	00f78793          	addi	a5,a5,15
    80003ca8:	ff07f793          	andi	a5,a5,-16
    80003cac:	40f10133          	sub	sp,sp,a5
    80003cb0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003cb4:	00191613          	slli	a2,s2,0x1
    80003cb8:	012607b3          	add	a5,a2,s2
    80003cbc:	00379793          	slli	a5,a5,0x3
    80003cc0:	00f987b3          	add	a5,s3,a5
    80003cc4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003cc8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003ccc:	00005717          	auipc	a4,0x5
    80003cd0:	9e473703          	ld	a4,-1564(a4) # 800086b0 <waitForAll>
    80003cd4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003cd8:	00078613          	mv	a2,a5
    80003cdc:	00000597          	auipc	a1,0x0
    80003ce0:	d7458593          	addi	a1,a1,-652 # 80003a50 <_Z8consumerPv>
    80003ce4:	f9840513          	addi	a0,s0,-104
    80003ce8:	ffffe097          	auipc	ra,0xffffe
    80003cec:	e58080e7          	jalr	-424(ra) # 80001b40 <_Z13thread_createPP4KPCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003cf0:	00000493          	li	s1,0
    80003cf4:	0280006f          	j	80003d1c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003cf8:	00000597          	auipc	a1,0x0
    80003cfc:	c1458593          	addi	a1,a1,-1004 # 8000390c <_Z16producerKeyboardPv>
                      data + i);
    80003d00:	00179613          	slli	a2,a5,0x1
    80003d04:	00f60633          	add	a2,a2,a5
    80003d08:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003d0c:	00c98633          	add	a2,s3,a2
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	e30080e7          	jalr	-464(ra) # 80001b40 <_Z13thread_createPP4KPCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d18:	0014849b          	addiw	s1,s1,1
    80003d1c:	0524d263          	bge	s1,s2,80003d60 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003d20:	00149793          	slli	a5,s1,0x1
    80003d24:	009787b3          	add	a5,a5,s1
    80003d28:	00379793          	slli	a5,a5,0x3
    80003d2c:	00f987b3          	add	a5,s3,a5
    80003d30:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003d34:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003d38:	00005717          	auipc	a4,0x5
    80003d3c:	97873703          	ld	a4,-1672(a4) # 800086b0 <waitForAll>
    80003d40:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003d44:	00048793          	mv	a5,s1
    80003d48:	00349513          	slli	a0,s1,0x3
    80003d4c:	00aa8533          	add	a0,s5,a0
    80003d50:	fa9054e3          	blez	s1,80003cf8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003d54:	00000597          	auipc	a1,0x0
    80003d58:	c6858593          	addi	a1,a1,-920 # 800039bc <_Z8producerPv>
    80003d5c:	fa5ff06f          	j	80003d00 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	e98080e7          	jalr	-360(ra) # 80001bf8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003d68:	00000493          	li	s1,0
    80003d6c:	00994e63          	blt	s2,s1,80003d88 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003d70:	00005517          	auipc	a0,0x5
    80003d74:	94053503          	ld	a0,-1728(a0) # 800086b0 <waitForAll>
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	f00080e7          	jalr	-256(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80003d80:	0014849b          	addiw	s1,s1,1
    80003d84:	fe9ff06f          	j	80003d6c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	92853503          	ld	a0,-1752(a0) # 800086b0 <waitForAll>
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	ec0080e7          	jalr	-320(ra) # 80001c50 <_Z9sem_closeP10KSemaphore>
    delete buffer;
    80003d98:	000a0e63          	beqz	s4,80003db4 <_Z22producerConsumer_C_APIv+0x284>
    80003d9c:	000a0513          	mv	a0,s4
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	2c8080e7          	jalr	712(ra) # 80004068 <_ZN6BufferD1Ev>
    80003da8:	000a0513          	mv	a0,s4
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	c50080e7          	jalr	-944(ra) # 800029fc <_ZdlPv>
    80003db4:	000b0113          	mv	sp,s6

}
    80003db8:	f9040113          	addi	sp,s0,-112
    80003dbc:	06813083          	ld	ra,104(sp)
    80003dc0:	06013403          	ld	s0,96(sp)
    80003dc4:	05813483          	ld	s1,88(sp)
    80003dc8:	05013903          	ld	s2,80(sp)
    80003dcc:	04813983          	ld	s3,72(sp)
    80003dd0:	04013a03          	ld	s4,64(sp)
    80003dd4:	03813a83          	ld	s5,56(sp)
    80003dd8:	03013b03          	ld	s6,48(sp)
    80003ddc:	07010113          	addi	sp,sp,112
    80003de0:	00008067          	ret
    80003de4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003de8:	000a0513          	mv	a0,s4
    80003dec:	fffff097          	auipc	ra,0xfffff
    80003df0:	c10080e7          	jalr	-1008(ra) # 800029fc <_ZdlPv>
    80003df4:	00048513          	mv	a0,s1
    80003df8:	00006097          	auipc	ra,0x6
    80003dfc:	990080e7          	jalr	-1648(ra) # 80009788 <_Unwind_Resume>

0000000080003e00 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80003e00:	ff010113          	addi	sp,sp,-16
    80003e04:	00113423          	sd	ra,8(sp)
    80003e08:	00813023          	sd	s0,0(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	d20080e7          	jalr	-736(ra) # 80003b30 <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80003e18:	00813083          	ld	ra,8(sp)
    80003e1c:	00013403          	ld	s0,0(sp)
    80003e20:	01010113          	addi	sp,sp,16
    80003e24:	00008067          	ret

0000000080003e28 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003e28:	fe010113          	addi	sp,sp,-32
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00913423          	sd	s1,8(sp)
    80003e38:	01213023          	sd	s2,0(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    80003e40:	00050493          	mv	s1,a0
    80003e44:	00058913          	mv	s2,a1
    80003e48:	0015879b          	addiw	a5,a1,1
    80003e4c:	0007851b          	sext.w	a0,a5
    80003e50:	00f4a023          	sw	a5,0(s1)
    80003e54:	0004a823          	sw	zero,16(s1)
    80003e58:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003e5c:	00251513          	slli	a0,a0,0x2
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	ba0080e7          	jalr	-1120(ra) # 80001a00 <_Z9mem_allocm>
    80003e68:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003e6c:	00000593          	li	a1,0
    80003e70:	02048513          	addi	a0,s1,32
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	da4080e7          	jalr	-604(ra) # 80001c18 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80003e7c:	00090593          	mv	a1,s2
    80003e80:	01848513          	addi	a0,s1,24
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	d94080e7          	jalr	-620(ra) # 80001c18 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80003e8c:	00100593          	li	a1,1
    80003e90:	02848513          	addi	a0,s1,40
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	d84080e7          	jalr	-636(ra) # 80001c18 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    80003e9c:	00100593          	li	a1,1
    80003ea0:	03048513          	addi	a0,s1,48
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	d74080e7          	jalr	-652(ra) # 80001c18 <_Z8sem_openPP10KSemaphorej>
}
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	00013903          	ld	s2,0(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret

0000000080003ec4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003ec4:	fe010113          	addi	sp,sp,-32
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	00813823          	sd	s0,16(sp)
    80003ed0:	00913423          	sd	s1,8(sp)
    80003ed4:	01213023          	sd	s2,0(sp)
    80003ed8:	02010413          	addi	s0,sp,32
    80003edc:	00050493          	mv	s1,a0
    80003ee0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003ee4:	01853503          	ld	a0,24(a0)
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	d90080e7          	jalr	-624(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    80003ef0:	0304b503          	ld	a0,48(s1)
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	d84080e7          	jalr	-636(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    80003efc:	0084b783          	ld	a5,8(s1)
    80003f00:	0144a703          	lw	a4,20(s1)
    80003f04:	00271713          	slli	a4,a4,0x2
    80003f08:	00e787b3          	add	a5,a5,a4
    80003f0c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003f10:	0144a783          	lw	a5,20(s1)
    80003f14:	0017879b          	addiw	a5,a5,1
    80003f18:	0004a703          	lw	a4,0(s1)
    80003f1c:	02e7e7bb          	remw	a5,a5,a4
    80003f20:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003f24:	0304b503          	ld	a0,48(s1)
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	d98080e7          	jalr	-616(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    80003f30:	0204b503          	ld	a0,32(s1)
    80003f34:	ffffe097          	auipc	ra,0xffffe
    80003f38:	d8c080e7          	jalr	-628(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>

}
    80003f3c:	01813083          	ld	ra,24(sp)
    80003f40:	01013403          	ld	s0,16(sp)
    80003f44:	00813483          	ld	s1,8(sp)
    80003f48:	00013903          	ld	s2,0(sp)
    80003f4c:	02010113          	addi	sp,sp,32
    80003f50:	00008067          	ret

0000000080003f54 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003f54:	fe010113          	addi	sp,sp,-32
    80003f58:	00113c23          	sd	ra,24(sp)
    80003f5c:	00813823          	sd	s0,16(sp)
    80003f60:	00913423          	sd	s1,8(sp)
    80003f64:	01213023          	sd	s2,0(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003f70:	02053503          	ld	a0,32(a0)
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	d04080e7          	jalr	-764(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80003f7c:	0284b503          	ld	a0,40(s1)
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	cf8080e7          	jalr	-776(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    80003f88:	0084b703          	ld	a4,8(s1)
    80003f8c:	0104a783          	lw	a5,16(s1)
    80003f90:	00279693          	slli	a3,a5,0x2
    80003f94:	00d70733          	add	a4,a4,a3
    80003f98:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003f9c:	0017879b          	addiw	a5,a5,1
    80003fa0:	0004a703          	lw	a4,0(s1)
    80003fa4:	02e7e7bb          	remw	a5,a5,a4
    80003fa8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003fac:	0284b503          	ld	a0,40(s1)
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	d10080e7          	jalr	-752(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    80003fb8:	0184b503          	ld	a0,24(s1)
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	d04080e7          	jalr	-764(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80003fc4:	00090513          	mv	a0,s2
    80003fc8:	01813083          	ld	ra,24(sp)
    80003fcc:	01013403          	ld	s0,16(sp)
    80003fd0:	00813483          	ld	s1,8(sp)
    80003fd4:	00013903          	ld	s2,0(sp)
    80003fd8:	02010113          	addi	sp,sp,32
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003fe0:	fe010113          	addi	sp,sp,-32
    80003fe4:	00113c23          	sd	ra,24(sp)
    80003fe8:	00813823          	sd	s0,16(sp)
    80003fec:	00913423          	sd	s1,8(sp)
    80003ff0:	01213023          	sd	s2,0(sp)
    80003ff4:	02010413          	addi	s0,sp,32
    80003ff8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003ffc:	02853503          	ld	a0,40(a0)
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	c78080e7          	jalr	-904(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    80004008:	0304b503          	ld	a0,48(s1)
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	c6c080e7          	jalr	-916(ra) # 80001c78 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    80004014:	0144a783          	lw	a5,20(s1)
    80004018:	0104a903          	lw	s2,16(s1)
    8000401c:	0327ce63          	blt	a5,s2,80004058 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004020:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004024:	0304b503          	ld	a0,48(s1)
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	c98080e7          	jalr	-872(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    80004030:	0284b503          	ld	a0,40(s1)
    80004034:	ffffe097          	auipc	ra,0xffffe
    80004038:	c8c080e7          	jalr	-884(ra) # 80001cc0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    8000403c:	00090513          	mv	a0,s2
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00813483          	ld	s1,8(sp)
    8000404c:	00013903          	ld	s2,0(sp)
    80004050:	02010113          	addi	sp,sp,32
    80004054:	00008067          	ret
        ret = cap - head + tail;
    80004058:	0004a703          	lw	a4,0(s1)
    8000405c:	4127093b          	subw	s2,a4,s2
    80004060:	00f9093b          	addw	s2,s2,a5
    80004064:	fc1ff06f          	j	80004024 <_ZN6Buffer6getCntEv+0x44>

0000000080004068 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004068:	fe010113          	addi	sp,sp,-32
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	02010413          	addi	s0,sp,32
    8000407c:	00050493          	mv	s1,a0
    putc('\n');
    80004080:	00a00513          	li	a0,10
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	cb8080e7          	jalr	-840(ra) # 80001d3c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000408c:	00003517          	auipc	a0,0x3
    80004090:	fc450513          	addi	a0,a0,-60 # 80007050 <CONSOLE_STATUS+0x40>
    80004094:	fffff097          	auipc	ra,0xfffff
    80004098:	1d4080e7          	jalr	468(ra) # 80003268 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000409c:	00048513          	mv	a0,s1
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	f40080e7          	jalr	-192(ra) # 80003fe0 <_ZN6Buffer6getCntEv>
    800040a8:	02a05c63          	blez	a0,800040e0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800040ac:	0084b783          	ld	a5,8(s1)
    800040b0:	0104a703          	lw	a4,16(s1)
    800040b4:	00271713          	slli	a4,a4,0x2
    800040b8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800040bc:	0007c503          	lbu	a0,0(a5)
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	c7c080e7          	jalr	-900(ra) # 80001d3c <_Z4putcc>
        head = (head + 1) % cap;
    800040c8:	0104a783          	lw	a5,16(s1)
    800040cc:	0017879b          	addiw	a5,a5,1
    800040d0:	0004a703          	lw	a4,0(s1)
    800040d4:	02e7e7bb          	remw	a5,a5,a4
    800040d8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800040dc:	fc1ff06f          	j	8000409c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800040e0:	02100513          	li	a0,33
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	c58080e7          	jalr	-936(ra) # 80001d3c <_Z4putcc>
    putc('\n');
    800040ec:	00a00513          	li	a0,10
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	c4c080e7          	jalr	-948(ra) # 80001d3c <_Z4putcc>
    mem_free(buffer);
    800040f8:	0084b503          	ld	a0,8(s1)
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	944080e7          	jalr	-1724(ra) # 80001a40 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004104:	0204b503          	ld	a0,32(s1)
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	b48080e7          	jalr	-1208(ra) # 80001c50 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    80004110:	0184b503          	ld	a0,24(s1)
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	b3c080e7          	jalr	-1220(ra) # 80001c50 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    8000411c:	0304b503          	ld	a0,48(s1)
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	b30080e7          	jalr	-1232(ra) # 80001c50 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    80004128:	0284b503          	ld	a0,40(s1)
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	b24080e7          	jalr	-1244(ra) # 80001c50 <_Z9sem_closeP10KSemaphore>
}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	02010113          	addi	sp,sp,32
    80004144:	00008067          	ret

0000000080004148 <start>:
    80004148:	ff010113          	addi	sp,sp,-16
    8000414c:	00813423          	sd	s0,8(sp)
    80004150:	01010413          	addi	s0,sp,16
    80004154:	300027f3          	csrr	a5,mstatus
    80004158:	ffffe737          	lui	a4,0xffffe
    8000415c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4edf>
    80004160:	00e7f7b3          	and	a5,a5,a4
    80004164:	00001737          	lui	a4,0x1
    80004168:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000416c:	00e7e7b3          	or	a5,a5,a4
    80004170:	30079073          	csrw	mstatus,a5
    80004174:	00000797          	auipc	a5,0x0
    80004178:	16078793          	addi	a5,a5,352 # 800042d4 <system_main>
    8000417c:	34179073          	csrw	mepc,a5
    80004180:	00000793          	li	a5,0
    80004184:	18079073          	csrw	satp,a5
    80004188:	000107b7          	lui	a5,0x10
    8000418c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004190:	30279073          	csrw	medeleg,a5
    80004194:	30379073          	csrw	mideleg,a5
    80004198:	104027f3          	csrr	a5,sie
    8000419c:	2227e793          	ori	a5,a5,546
    800041a0:	10479073          	csrw	sie,a5
    800041a4:	fff00793          	li	a5,-1
    800041a8:	00a7d793          	srli	a5,a5,0xa
    800041ac:	3b079073          	csrw	pmpaddr0,a5
    800041b0:	00f00793          	li	a5,15
    800041b4:	3a079073          	csrw	pmpcfg0,a5
    800041b8:	f14027f3          	csrr	a5,mhartid
    800041bc:	0200c737          	lui	a4,0x200c
    800041c0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800041c4:	0007869b          	sext.w	a3,a5
    800041c8:	00269713          	slli	a4,a3,0x2
    800041cc:	000f4637          	lui	a2,0xf4
    800041d0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800041d4:	00d70733          	add	a4,a4,a3
    800041d8:	0037979b          	slliw	a5,a5,0x3
    800041dc:	020046b7          	lui	a3,0x2004
    800041e0:	00d787b3          	add	a5,a5,a3
    800041e4:	00c585b3          	add	a1,a1,a2
    800041e8:	00371693          	slli	a3,a4,0x3
    800041ec:	00004717          	auipc	a4,0x4
    800041f0:	4d470713          	addi	a4,a4,1236 # 800086c0 <timer_scratch>
    800041f4:	00b7b023          	sd	a1,0(a5)
    800041f8:	00d70733          	add	a4,a4,a3
    800041fc:	00f73c23          	sd	a5,24(a4)
    80004200:	02c73023          	sd	a2,32(a4)
    80004204:	34071073          	csrw	mscratch,a4
    80004208:	00000797          	auipc	a5,0x0
    8000420c:	6e878793          	addi	a5,a5,1768 # 800048f0 <timervec>
    80004210:	30579073          	csrw	mtvec,a5
    80004214:	300027f3          	csrr	a5,mstatus
    80004218:	0087e793          	ori	a5,a5,8
    8000421c:	30079073          	csrw	mstatus,a5
    80004220:	304027f3          	csrr	a5,mie
    80004224:	0807e793          	ori	a5,a5,128
    80004228:	30479073          	csrw	mie,a5
    8000422c:	f14027f3          	csrr	a5,mhartid
    80004230:	0007879b          	sext.w	a5,a5
    80004234:	00078213          	mv	tp,a5
    80004238:	30200073          	mret
    8000423c:	00813403          	ld	s0,8(sp)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret

0000000080004248 <timerinit>:
    80004248:	ff010113          	addi	sp,sp,-16
    8000424c:	00813423          	sd	s0,8(sp)
    80004250:	01010413          	addi	s0,sp,16
    80004254:	f14027f3          	csrr	a5,mhartid
    80004258:	0200c737          	lui	a4,0x200c
    8000425c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004260:	0007869b          	sext.w	a3,a5
    80004264:	00269713          	slli	a4,a3,0x2
    80004268:	000f4637          	lui	a2,0xf4
    8000426c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004270:	00d70733          	add	a4,a4,a3
    80004274:	0037979b          	slliw	a5,a5,0x3
    80004278:	020046b7          	lui	a3,0x2004
    8000427c:	00d787b3          	add	a5,a5,a3
    80004280:	00c585b3          	add	a1,a1,a2
    80004284:	00371693          	slli	a3,a4,0x3
    80004288:	00004717          	auipc	a4,0x4
    8000428c:	43870713          	addi	a4,a4,1080 # 800086c0 <timer_scratch>
    80004290:	00b7b023          	sd	a1,0(a5)
    80004294:	00d70733          	add	a4,a4,a3
    80004298:	00f73c23          	sd	a5,24(a4)
    8000429c:	02c73023          	sd	a2,32(a4)
    800042a0:	34071073          	csrw	mscratch,a4
    800042a4:	00000797          	auipc	a5,0x0
    800042a8:	64c78793          	addi	a5,a5,1612 # 800048f0 <timervec>
    800042ac:	30579073          	csrw	mtvec,a5
    800042b0:	300027f3          	csrr	a5,mstatus
    800042b4:	0087e793          	ori	a5,a5,8
    800042b8:	30079073          	csrw	mstatus,a5
    800042bc:	304027f3          	csrr	a5,mie
    800042c0:	0807e793          	ori	a5,a5,128
    800042c4:	30479073          	csrw	mie,a5
    800042c8:	00813403          	ld	s0,8(sp)
    800042cc:	01010113          	addi	sp,sp,16
    800042d0:	00008067          	ret

00000000800042d4 <system_main>:
    800042d4:	fe010113          	addi	sp,sp,-32
    800042d8:	00813823          	sd	s0,16(sp)
    800042dc:	00913423          	sd	s1,8(sp)
    800042e0:	00113c23          	sd	ra,24(sp)
    800042e4:	02010413          	addi	s0,sp,32
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	0c4080e7          	jalr	196(ra) # 800043ac <cpuid>
    800042f0:	00004497          	auipc	s1,0x4
    800042f4:	32048493          	addi	s1,s1,800 # 80008610 <started>
    800042f8:	02050263          	beqz	a0,8000431c <system_main+0x48>
    800042fc:	0004a783          	lw	a5,0(s1)
    80004300:	0007879b          	sext.w	a5,a5
    80004304:	fe078ce3          	beqz	a5,800042fc <system_main+0x28>
    80004308:	0ff0000f          	fence
    8000430c:	00003517          	auipc	a0,0x3
    80004310:	e7450513          	addi	a0,a0,-396 # 80007180 <CONSOLE_STATUS+0x170>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	a78080e7          	jalr	-1416(ra) # 80004d8c <panic>
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	9cc080e7          	jalr	-1588(ra) # 80004ce8 <consoleinit>
    80004324:	00001097          	auipc	ra,0x1
    80004328:	158080e7          	jalr	344(ra) # 8000547c <printfinit>
    8000432c:	00003517          	auipc	a0,0x3
    80004330:	d7450513          	addi	a0,a0,-652 # 800070a0 <CONSOLE_STATUS+0x90>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	ab4080e7          	jalr	-1356(ra) # 80004de8 <__printf>
    8000433c:	00003517          	auipc	a0,0x3
    80004340:	e1450513          	addi	a0,a0,-492 # 80007150 <CONSOLE_STATUS+0x140>
    80004344:	00001097          	auipc	ra,0x1
    80004348:	aa4080e7          	jalr	-1372(ra) # 80004de8 <__printf>
    8000434c:	00003517          	auipc	a0,0x3
    80004350:	d5450513          	addi	a0,a0,-684 # 800070a0 <CONSOLE_STATUS+0x90>
    80004354:	00001097          	auipc	ra,0x1
    80004358:	a94080e7          	jalr	-1388(ra) # 80004de8 <__printf>
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	4ac080e7          	jalr	1196(ra) # 80005808 <kinit>
    80004364:	00000097          	auipc	ra,0x0
    80004368:	148080e7          	jalr	328(ra) # 800044ac <trapinit>
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	16c080e7          	jalr	364(ra) # 800044d8 <trapinithart>
    80004374:	00000097          	auipc	ra,0x0
    80004378:	5bc080e7          	jalr	1468(ra) # 80004930 <plicinit>
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	5dc080e7          	jalr	1500(ra) # 80004958 <plicinithart>
    80004384:	00000097          	auipc	ra,0x0
    80004388:	078080e7          	jalr	120(ra) # 800043fc <userinit>
    8000438c:	0ff0000f          	fence
    80004390:	00100793          	li	a5,1
    80004394:	00003517          	auipc	a0,0x3
    80004398:	dd450513          	addi	a0,a0,-556 # 80007168 <CONSOLE_STATUS+0x158>
    8000439c:	00f4a023          	sw	a5,0(s1)
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	a48080e7          	jalr	-1464(ra) # 80004de8 <__printf>
    800043a8:	0000006f          	j	800043a8 <system_main+0xd4>

00000000800043ac <cpuid>:
    800043ac:	ff010113          	addi	sp,sp,-16
    800043b0:	00813423          	sd	s0,8(sp)
    800043b4:	01010413          	addi	s0,sp,16
    800043b8:	00020513          	mv	a0,tp
    800043bc:	00813403          	ld	s0,8(sp)
    800043c0:	0005051b          	sext.w	a0,a0
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret

00000000800043cc <mycpu>:
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00813423          	sd	s0,8(sp)
    800043d4:	01010413          	addi	s0,sp,16
    800043d8:	00020793          	mv	a5,tp
    800043dc:	00813403          	ld	s0,8(sp)
    800043e0:	0007879b          	sext.w	a5,a5
    800043e4:	00779793          	slli	a5,a5,0x7
    800043e8:	00005517          	auipc	a0,0x5
    800043ec:	30850513          	addi	a0,a0,776 # 800096f0 <cpus>
    800043f0:	00f50533          	add	a0,a0,a5
    800043f4:	01010113          	addi	sp,sp,16
    800043f8:	00008067          	ret

00000000800043fc <userinit>:
    800043fc:	ff010113          	addi	sp,sp,-16
    80004400:	00813423          	sd	s0,8(sp)
    80004404:	01010413          	addi	s0,sp,16
    80004408:	00813403          	ld	s0,8(sp)
    8000440c:	01010113          	addi	sp,sp,16
    80004410:	ffffe317          	auipc	t1,0xffffe
    80004414:	3b030067          	jr	944(t1) # 800027c0 <main>

0000000080004418 <either_copyout>:
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00813023          	sd	s0,0(sp)
    80004420:	00113423          	sd	ra,8(sp)
    80004424:	01010413          	addi	s0,sp,16
    80004428:	02051663          	bnez	a0,80004454 <either_copyout+0x3c>
    8000442c:	00058513          	mv	a0,a1
    80004430:	00060593          	mv	a1,a2
    80004434:	0006861b          	sext.w	a2,a3
    80004438:	00002097          	auipc	ra,0x2
    8000443c:	c5c080e7          	jalr	-932(ra) # 80006094 <__memmove>
    80004440:	00813083          	ld	ra,8(sp)
    80004444:	00013403          	ld	s0,0(sp)
    80004448:	00000513          	li	a0,0
    8000444c:	01010113          	addi	sp,sp,16
    80004450:	00008067          	ret
    80004454:	00003517          	auipc	a0,0x3
    80004458:	d5450513          	addi	a0,a0,-684 # 800071a8 <CONSOLE_STATUS+0x198>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	930080e7          	jalr	-1744(ra) # 80004d8c <panic>

0000000080004464 <either_copyin>:
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00813023          	sd	s0,0(sp)
    8000446c:	00113423          	sd	ra,8(sp)
    80004470:	01010413          	addi	s0,sp,16
    80004474:	02059463          	bnez	a1,8000449c <either_copyin+0x38>
    80004478:	00060593          	mv	a1,a2
    8000447c:	0006861b          	sext.w	a2,a3
    80004480:	00002097          	auipc	ra,0x2
    80004484:	c14080e7          	jalr	-1004(ra) # 80006094 <__memmove>
    80004488:	00813083          	ld	ra,8(sp)
    8000448c:	00013403          	ld	s0,0(sp)
    80004490:	00000513          	li	a0,0
    80004494:	01010113          	addi	sp,sp,16
    80004498:	00008067          	ret
    8000449c:	00003517          	auipc	a0,0x3
    800044a0:	d3450513          	addi	a0,a0,-716 # 800071d0 <CONSOLE_STATUS+0x1c0>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	8e8080e7          	jalr	-1816(ra) # 80004d8c <panic>

00000000800044ac <trapinit>:
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00813423          	sd	s0,8(sp)
    800044b4:	01010413          	addi	s0,sp,16
    800044b8:	00813403          	ld	s0,8(sp)
    800044bc:	00003597          	auipc	a1,0x3
    800044c0:	d3c58593          	addi	a1,a1,-708 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800044c4:	00005517          	auipc	a0,0x5
    800044c8:	2ac50513          	addi	a0,a0,684 # 80009770 <tickslock>
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00001317          	auipc	t1,0x1
    800044d4:	5c830067          	jr	1480(t1) # 80005a98 <initlock>

00000000800044d8 <trapinithart>:
    800044d8:	ff010113          	addi	sp,sp,-16
    800044dc:	00813423          	sd	s0,8(sp)
    800044e0:	01010413          	addi	s0,sp,16
    800044e4:	00000797          	auipc	a5,0x0
    800044e8:	2fc78793          	addi	a5,a5,764 # 800047e0 <kernelvec>
    800044ec:	10579073          	csrw	stvec,a5
    800044f0:	00813403          	ld	s0,8(sp)
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00008067          	ret

00000000800044fc <usertrap>:
    800044fc:	ff010113          	addi	sp,sp,-16
    80004500:	00813423          	sd	s0,8(sp)
    80004504:	01010413          	addi	s0,sp,16
    80004508:	00813403          	ld	s0,8(sp)
    8000450c:	01010113          	addi	sp,sp,16
    80004510:	00008067          	ret

0000000080004514 <usertrapret>:
    80004514:	ff010113          	addi	sp,sp,-16
    80004518:	00813423          	sd	s0,8(sp)
    8000451c:	01010413          	addi	s0,sp,16
    80004520:	00813403          	ld	s0,8(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <kerneltrap>:
    8000452c:	fe010113          	addi	sp,sp,-32
    80004530:	00813823          	sd	s0,16(sp)
    80004534:	00113c23          	sd	ra,24(sp)
    80004538:	00913423          	sd	s1,8(sp)
    8000453c:	02010413          	addi	s0,sp,32
    80004540:	142025f3          	csrr	a1,scause
    80004544:	100027f3          	csrr	a5,sstatus
    80004548:	0027f793          	andi	a5,a5,2
    8000454c:	10079c63          	bnez	a5,80004664 <kerneltrap+0x138>
    80004550:	142027f3          	csrr	a5,scause
    80004554:	0207ce63          	bltz	a5,80004590 <kerneltrap+0x64>
    80004558:	00003517          	auipc	a0,0x3
    8000455c:	ce850513          	addi	a0,a0,-792 # 80007240 <CONSOLE_STATUS+0x230>
    80004560:	00001097          	auipc	ra,0x1
    80004564:	888080e7          	jalr	-1912(ra) # 80004de8 <__printf>
    80004568:	141025f3          	csrr	a1,sepc
    8000456c:	14302673          	csrr	a2,stval
    80004570:	00003517          	auipc	a0,0x3
    80004574:	ce050513          	addi	a0,a0,-800 # 80007250 <CONSOLE_STATUS+0x240>
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	870080e7          	jalr	-1936(ra) # 80004de8 <__printf>
    80004580:	00003517          	auipc	a0,0x3
    80004584:	ce850513          	addi	a0,a0,-792 # 80007268 <CONSOLE_STATUS+0x258>
    80004588:	00001097          	auipc	ra,0x1
    8000458c:	804080e7          	jalr	-2044(ra) # 80004d8c <panic>
    80004590:	0ff7f713          	andi	a4,a5,255
    80004594:	00900693          	li	a3,9
    80004598:	04d70063          	beq	a4,a3,800045d8 <kerneltrap+0xac>
    8000459c:	fff00713          	li	a4,-1
    800045a0:	03f71713          	slli	a4,a4,0x3f
    800045a4:	00170713          	addi	a4,a4,1
    800045a8:	fae798e3          	bne	a5,a4,80004558 <kerneltrap+0x2c>
    800045ac:	00000097          	auipc	ra,0x0
    800045b0:	e00080e7          	jalr	-512(ra) # 800043ac <cpuid>
    800045b4:	06050663          	beqz	a0,80004620 <kerneltrap+0xf4>
    800045b8:	144027f3          	csrr	a5,sip
    800045bc:	ffd7f793          	andi	a5,a5,-3
    800045c0:	14479073          	csrw	sip,a5
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00813483          	ld	s1,8(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	3cc080e7          	jalr	972(ra) # 800049a4 <plic_claim>
    800045e0:	00a00793          	li	a5,10
    800045e4:	00050493          	mv	s1,a0
    800045e8:	06f50863          	beq	a0,a5,80004658 <kerneltrap+0x12c>
    800045ec:	fc050ce3          	beqz	a0,800045c4 <kerneltrap+0x98>
    800045f0:	00050593          	mv	a1,a0
    800045f4:	00003517          	auipc	a0,0x3
    800045f8:	c2c50513          	addi	a0,a0,-980 # 80007220 <CONSOLE_STATUS+0x210>
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	7ec080e7          	jalr	2028(ra) # 80004de8 <__printf>
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	01813083          	ld	ra,24(sp)
    8000460c:	00048513          	mv	a0,s1
    80004610:	00813483          	ld	s1,8(sp)
    80004614:	02010113          	addi	sp,sp,32
    80004618:	00000317          	auipc	t1,0x0
    8000461c:	3c430067          	jr	964(t1) # 800049dc <plic_complete>
    80004620:	00005517          	auipc	a0,0x5
    80004624:	15050513          	addi	a0,a0,336 # 80009770 <tickslock>
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	494080e7          	jalr	1172(ra) # 80005abc <acquire>
    80004630:	00004717          	auipc	a4,0x4
    80004634:	fe470713          	addi	a4,a4,-28 # 80008614 <ticks>
    80004638:	00072783          	lw	a5,0(a4)
    8000463c:	00005517          	auipc	a0,0x5
    80004640:	13450513          	addi	a0,a0,308 # 80009770 <tickslock>
    80004644:	0017879b          	addiw	a5,a5,1
    80004648:	00f72023          	sw	a5,0(a4)
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	53c080e7          	jalr	1340(ra) # 80005b88 <release>
    80004654:	f65ff06f          	j	800045b8 <kerneltrap+0x8c>
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	098080e7          	jalr	152(ra) # 800056f0 <uartintr>
    80004660:	fa5ff06f          	j	80004604 <kerneltrap+0xd8>
    80004664:	00003517          	auipc	a0,0x3
    80004668:	b9c50513          	addi	a0,a0,-1124 # 80007200 <CONSOLE_STATUS+0x1f0>
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	720080e7          	jalr	1824(ra) # 80004d8c <panic>

0000000080004674 <clockintr>:
    80004674:	fe010113          	addi	sp,sp,-32
    80004678:	00813823          	sd	s0,16(sp)
    8000467c:	00913423          	sd	s1,8(sp)
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	02010413          	addi	s0,sp,32
    80004688:	00005497          	auipc	s1,0x5
    8000468c:	0e848493          	addi	s1,s1,232 # 80009770 <tickslock>
    80004690:	00048513          	mv	a0,s1
    80004694:	00001097          	auipc	ra,0x1
    80004698:	428080e7          	jalr	1064(ra) # 80005abc <acquire>
    8000469c:	00004717          	auipc	a4,0x4
    800046a0:	f7870713          	addi	a4,a4,-136 # 80008614 <ticks>
    800046a4:	00072783          	lw	a5,0(a4)
    800046a8:	01013403          	ld	s0,16(sp)
    800046ac:	01813083          	ld	ra,24(sp)
    800046b0:	00048513          	mv	a0,s1
    800046b4:	0017879b          	addiw	a5,a5,1
    800046b8:	00813483          	ld	s1,8(sp)
    800046bc:	00f72023          	sw	a5,0(a4)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00001317          	auipc	t1,0x1
    800046c8:	4c430067          	jr	1220(t1) # 80005b88 <release>

00000000800046cc <devintr>:
    800046cc:	142027f3          	csrr	a5,scause
    800046d0:	00000513          	li	a0,0
    800046d4:	0007c463          	bltz	a5,800046dc <devintr+0x10>
    800046d8:	00008067          	ret
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00113c23          	sd	ra,24(sp)
    800046e8:	00913423          	sd	s1,8(sp)
    800046ec:	02010413          	addi	s0,sp,32
    800046f0:	0ff7f713          	andi	a4,a5,255
    800046f4:	00900693          	li	a3,9
    800046f8:	04d70c63          	beq	a4,a3,80004750 <devintr+0x84>
    800046fc:	fff00713          	li	a4,-1
    80004700:	03f71713          	slli	a4,a4,0x3f
    80004704:	00170713          	addi	a4,a4,1
    80004708:	00e78c63          	beq	a5,a4,80004720 <devintr+0x54>
    8000470c:	01813083          	ld	ra,24(sp)
    80004710:	01013403          	ld	s0,16(sp)
    80004714:	00813483          	ld	s1,8(sp)
    80004718:	02010113          	addi	sp,sp,32
    8000471c:	00008067          	ret
    80004720:	00000097          	auipc	ra,0x0
    80004724:	c8c080e7          	jalr	-884(ra) # 800043ac <cpuid>
    80004728:	06050663          	beqz	a0,80004794 <devintr+0xc8>
    8000472c:	144027f3          	csrr	a5,sip
    80004730:	ffd7f793          	andi	a5,a5,-3
    80004734:	14479073          	csrw	sip,a5
    80004738:	01813083          	ld	ra,24(sp)
    8000473c:	01013403          	ld	s0,16(sp)
    80004740:	00813483          	ld	s1,8(sp)
    80004744:	00200513          	li	a0,2
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret
    80004750:	00000097          	auipc	ra,0x0
    80004754:	254080e7          	jalr	596(ra) # 800049a4 <plic_claim>
    80004758:	00a00793          	li	a5,10
    8000475c:	00050493          	mv	s1,a0
    80004760:	06f50663          	beq	a0,a5,800047cc <devintr+0x100>
    80004764:	00100513          	li	a0,1
    80004768:	fa0482e3          	beqz	s1,8000470c <devintr+0x40>
    8000476c:	00048593          	mv	a1,s1
    80004770:	00003517          	auipc	a0,0x3
    80004774:	ab050513          	addi	a0,a0,-1360 # 80007220 <CONSOLE_STATUS+0x210>
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	670080e7          	jalr	1648(ra) # 80004de8 <__printf>
    80004780:	00048513          	mv	a0,s1
    80004784:	00000097          	auipc	ra,0x0
    80004788:	258080e7          	jalr	600(ra) # 800049dc <plic_complete>
    8000478c:	00100513          	li	a0,1
    80004790:	f7dff06f          	j	8000470c <devintr+0x40>
    80004794:	00005517          	auipc	a0,0x5
    80004798:	fdc50513          	addi	a0,a0,-36 # 80009770 <tickslock>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	320080e7          	jalr	800(ra) # 80005abc <acquire>
    800047a4:	00004717          	auipc	a4,0x4
    800047a8:	e7070713          	addi	a4,a4,-400 # 80008614 <ticks>
    800047ac:	00072783          	lw	a5,0(a4)
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	fc050513          	addi	a0,a0,-64 # 80009770 <tickslock>
    800047b8:	0017879b          	addiw	a5,a5,1
    800047bc:	00f72023          	sw	a5,0(a4)
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	3c8080e7          	jalr	968(ra) # 80005b88 <release>
    800047c8:	f65ff06f          	j	8000472c <devintr+0x60>
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	f24080e7          	jalr	-220(ra) # 800056f0 <uartintr>
    800047d4:	fadff06f          	j	80004780 <devintr+0xb4>
	...

00000000800047e0 <kernelvec>:
    800047e0:	f0010113          	addi	sp,sp,-256
    800047e4:	00113023          	sd	ra,0(sp)
    800047e8:	00213423          	sd	sp,8(sp)
    800047ec:	00313823          	sd	gp,16(sp)
    800047f0:	00413c23          	sd	tp,24(sp)
    800047f4:	02513023          	sd	t0,32(sp)
    800047f8:	02613423          	sd	t1,40(sp)
    800047fc:	02713823          	sd	t2,48(sp)
    80004800:	02813c23          	sd	s0,56(sp)
    80004804:	04913023          	sd	s1,64(sp)
    80004808:	04a13423          	sd	a0,72(sp)
    8000480c:	04b13823          	sd	a1,80(sp)
    80004810:	04c13c23          	sd	a2,88(sp)
    80004814:	06d13023          	sd	a3,96(sp)
    80004818:	06e13423          	sd	a4,104(sp)
    8000481c:	06f13823          	sd	a5,112(sp)
    80004820:	07013c23          	sd	a6,120(sp)
    80004824:	09113023          	sd	a7,128(sp)
    80004828:	09213423          	sd	s2,136(sp)
    8000482c:	09313823          	sd	s3,144(sp)
    80004830:	09413c23          	sd	s4,152(sp)
    80004834:	0b513023          	sd	s5,160(sp)
    80004838:	0b613423          	sd	s6,168(sp)
    8000483c:	0b713823          	sd	s7,176(sp)
    80004840:	0b813c23          	sd	s8,184(sp)
    80004844:	0d913023          	sd	s9,192(sp)
    80004848:	0da13423          	sd	s10,200(sp)
    8000484c:	0db13823          	sd	s11,208(sp)
    80004850:	0dc13c23          	sd	t3,216(sp)
    80004854:	0fd13023          	sd	t4,224(sp)
    80004858:	0fe13423          	sd	t5,232(sp)
    8000485c:	0ff13823          	sd	t6,240(sp)
    80004860:	ccdff0ef          	jal	ra,8000452c <kerneltrap>
    80004864:	00013083          	ld	ra,0(sp)
    80004868:	00813103          	ld	sp,8(sp)
    8000486c:	01013183          	ld	gp,16(sp)
    80004870:	02013283          	ld	t0,32(sp)
    80004874:	02813303          	ld	t1,40(sp)
    80004878:	03013383          	ld	t2,48(sp)
    8000487c:	03813403          	ld	s0,56(sp)
    80004880:	04013483          	ld	s1,64(sp)
    80004884:	04813503          	ld	a0,72(sp)
    80004888:	05013583          	ld	a1,80(sp)
    8000488c:	05813603          	ld	a2,88(sp)
    80004890:	06013683          	ld	a3,96(sp)
    80004894:	06813703          	ld	a4,104(sp)
    80004898:	07013783          	ld	a5,112(sp)
    8000489c:	07813803          	ld	a6,120(sp)
    800048a0:	08013883          	ld	a7,128(sp)
    800048a4:	08813903          	ld	s2,136(sp)
    800048a8:	09013983          	ld	s3,144(sp)
    800048ac:	09813a03          	ld	s4,152(sp)
    800048b0:	0a013a83          	ld	s5,160(sp)
    800048b4:	0a813b03          	ld	s6,168(sp)
    800048b8:	0b013b83          	ld	s7,176(sp)
    800048bc:	0b813c03          	ld	s8,184(sp)
    800048c0:	0c013c83          	ld	s9,192(sp)
    800048c4:	0c813d03          	ld	s10,200(sp)
    800048c8:	0d013d83          	ld	s11,208(sp)
    800048cc:	0d813e03          	ld	t3,216(sp)
    800048d0:	0e013e83          	ld	t4,224(sp)
    800048d4:	0e813f03          	ld	t5,232(sp)
    800048d8:	0f013f83          	ld	t6,240(sp)
    800048dc:	10010113          	addi	sp,sp,256
    800048e0:	10200073          	sret
    800048e4:	00000013          	nop
    800048e8:	00000013          	nop
    800048ec:	00000013          	nop

00000000800048f0 <timervec>:
    800048f0:	34051573          	csrrw	a0,mscratch,a0
    800048f4:	00b53023          	sd	a1,0(a0)
    800048f8:	00c53423          	sd	a2,8(a0)
    800048fc:	00d53823          	sd	a3,16(a0)
    80004900:	01853583          	ld	a1,24(a0)
    80004904:	02053603          	ld	a2,32(a0)
    80004908:	0005b683          	ld	a3,0(a1)
    8000490c:	00c686b3          	add	a3,a3,a2
    80004910:	00d5b023          	sd	a3,0(a1)
    80004914:	00200593          	li	a1,2
    80004918:	14459073          	csrw	sip,a1
    8000491c:	01053683          	ld	a3,16(a0)
    80004920:	00853603          	ld	a2,8(a0)
    80004924:	00053583          	ld	a1,0(a0)
    80004928:	34051573          	csrrw	a0,mscratch,a0
    8000492c:	30200073          	mret

0000000080004930 <plicinit>:
    80004930:	ff010113          	addi	sp,sp,-16
    80004934:	00813423          	sd	s0,8(sp)
    80004938:	01010413          	addi	s0,sp,16
    8000493c:	00813403          	ld	s0,8(sp)
    80004940:	0c0007b7          	lui	a5,0xc000
    80004944:	00100713          	li	a4,1
    80004948:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000494c:	00e7a223          	sw	a4,4(a5)
    80004950:	01010113          	addi	sp,sp,16
    80004954:	00008067          	ret

0000000080004958 <plicinithart>:
    80004958:	ff010113          	addi	sp,sp,-16
    8000495c:	00813023          	sd	s0,0(sp)
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	01010413          	addi	s0,sp,16
    80004968:	00000097          	auipc	ra,0x0
    8000496c:	a44080e7          	jalr	-1468(ra) # 800043ac <cpuid>
    80004970:	0085171b          	slliw	a4,a0,0x8
    80004974:	0c0027b7          	lui	a5,0xc002
    80004978:	00e787b3          	add	a5,a5,a4
    8000497c:	40200713          	li	a4,1026
    80004980:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004984:	00813083          	ld	ra,8(sp)
    80004988:	00013403          	ld	s0,0(sp)
    8000498c:	00d5151b          	slliw	a0,a0,0xd
    80004990:	0c2017b7          	lui	a5,0xc201
    80004994:	00a78533          	add	a0,a5,a0
    80004998:	00052023          	sw	zero,0(a0)
    8000499c:	01010113          	addi	sp,sp,16
    800049a0:	00008067          	ret

00000000800049a4 <plic_claim>:
    800049a4:	ff010113          	addi	sp,sp,-16
    800049a8:	00813023          	sd	s0,0(sp)
    800049ac:	00113423          	sd	ra,8(sp)
    800049b0:	01010413          	addi	s0,sp,16
    800049b4:	00000097          	auipc	ra,0x0
    800049b8:	9f8080e7          	jalr	-1544(ra) # 800043ac <cpuid>
    800049bc:	00813083          	ld	ra,8(sp)
    800049c0:	00013403          	ld	s0,0(sp)
    800049c4:	00d5151b          	slliw	a0,a0,0xd
    800049c8:	0c2017b7          	lui	a5,0xc201
    800049cc:	00a78533          	add	a0,a5,a0
    800049d0:	00452503          	lw	a0,4(a0)
    800049d4:	01010113          	addi	sp,sp,16
    800049d8:	00008067          	ret

00000000800049dc <plic_complete>:
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	00113c23          	sd	ra,24(sp)
    800049ec:	02010413          	addi	s0,sp,32
    800049f0:	00050493          	mv	s1,a0
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	9b8080e7          	jalr	-1608(ra) # 800043ac <cpuid>
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	00d5179b          	slliw	a5,a0,0xd
    80004a08:	0c201737          	lui	a4,0xc201
    80004a0c:	00f707b3          	add	a5,a4,a5
    80004a10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004a14:	00813483          	ld	s1,8(sp)
    80004a18:	02010113          	addi	sp,sp,32
    80004a1c:	00008067          	ret

0000000080004a20 <consolewrite>:
    80004a20:	fb010113          	addi	sp,sp,-80
    80004a24:	04813023          	sd	s0,64(sp)
    80004a28:	04113423          	sd	ra,72(sp)
    80004a2c:	02913c23          	sd	s1,56(sp)
    80004a30:	03213823          	sd	s2,48(sp)
    80004a34:	03313423          	sd	s3,40(sp)
    80004a38:	03413023          	sd	s4,32(sp)
    80004a3c:	01513c23          	sd	s5,24(sp)
    80004a40:	05010413          	addi	s0,sp,80
    80004a44:	06c05c63          	blez	a2,80004abc <consolewrite+0x9c>
    80004a48:	00060993          	mv	s3,a2
    80004a4c:	00050a13          	mv	s4,a0
    80004a50:	00058493          	mv	s1,a1
    80004a54:	00000913          	li	s2,0
    80004a58:	fff00a93          	li	s5,-1
    80004a5c:	01c0006f          	j	80004a78 <consolewrite+0x58>
    80004a60:	fbf44503          	lbu	a0,-65(s0)
    80004a64:	0019091b          	addiw	s2,s2,1
    80004a68:	00148493          	addi	s1,s1,1
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	a9c080e7          	jalr	-1380(ra) # 80005508 <uartputc>
    80004a74:	03298063          	beq	s3,s2,80004a94 <consolewrite+0x74>
    80004a78:	00048613          	mv	a2,s1
    80004a7c:	00100693          	li	a3,1
    80004a80:	000a0593          	mv	a1,s4
    80004a84:	fbf40513          	addi	a0,s0,-65
    80004a88:	00000097          	auipc	ra,0x0
    80004a8c:	9dc080e7          	jalr	-1572(ra) # 80004464 <either_copyin>
    80004a90:	fd5518e3          	bne	a0,s5,80004a60 <consolewrite+0x40>
    80004a94:	04813083          	ld	ra,72(sp)
    80004a98:	04013403          	ld	s0,64(sp)
    80004a9c:	03813483          	ld	s1,56(sp)
    80004aa0:	02813983          	ld	s3,40(sp)
    80004aa4:	02013a03          	ld	s4,32(sp)
    80004aa8:	01813a83          	ld	s5,24(sp)
    80004aac:	00090513          	mv	a0,s2
    80004ab0:	03013903          	ld	s2,48(sp)
    80004ab4:	05010113          	addi	sp,sp,80
    80004ab8:	00008067          	ret
    80004abc:	00000913          	li	s2,0
    80004ac0:	fd5ff06f          	j	80004a94 <consolewrite+0x74>

0000000080004ac4 <consoleread>:
    80004ac4:	f9010113          	addi	sp,sp,-112
    80004ac8:	06813023          	sd	s0,96(sp)
    80004acc:	04913c23          	sd	s1,88(sp)
    80004ad0:	05213823          	sd	s2,80(sp)
    80004ad4:	05313423          	sd	s3,72(sp)
    80004ad8:	05413023          	sd	s4,64(sp)
    80004adc:	03513c23          	sd	s5,56(sp)
    80004ae0:	03613823          	sd	s6,48(sp)
    80004ae4:	03713423          	sd	s7,40(sp)
    80004ae8:	03813023          	sd	s8,32(sp)
    80004aec:	06113423          	sd	ra,104(sp)
    80004af0:	01913c23          	sd	s9,24(sp)
    80004af4:	07010413          	addi	s0,sp,112
    80004af8:	00060b93          	mv	s7,a2
    80004afc:	00050913          	mv	s2,a0
    80004b00:	00058c13          	mv	s8,a1
    80004b04:	00060b1b          	sext.w	s6,a2
    80004b08:	00005497          	auipc	s1,0x5
    80004b0c:	c9048493          	addi	s1,s1,-880 # 80009798 <cons>
    80004b10:	00400993          	li	s3,4
    80004b14:	fff00a13          	li	s4,-1
    80004b18:	00a00a93          	li	s5,10
    80004b1c:	05705e63          	blez	s7,80004b78 <consoleread+0xb4>
    80004b20:	09c4a703          	lw	a4,156(s1)
    80004b24:	0984a783          	lw	a5,152(s1)
    80004b28:	0007071b          	sext.w	a4,a4
    80004b2c:	08e78463          	beq	a5,a4,80004bb4 <consoleread+0xf0>
    80004b30:	07f7f713          	andi	a4,a5,127
    80004b34:	00e48733          	add	a4,s1,a4
    80004b38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004b3c:	0017869b          	addiw	a3,a5,1
    80004b40:	08d4ac23          	sw	a3,152(s1)
    80004b44:	00070c9b          	sext.w	s9,a4
    80004b48:	0b370663          	beq	a4,s3,80004bf4 <consoleread+0x130>
    80004b4c:	00100693          	li	a3,1
    80004b50:	f9f40613          	addi	a2,s0,-97
    80004b54:	000c0593          	mv	a1,s8
    80004b58:	00090513          	mv	a0,s2
    80004b5c:	f8e40fa3          	sb	a4,-97(s0)
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	8b8080e7          	jalr	-1864(ra) # 80004418 <either_copyout>
    80004b68:	01450863          	beq	a0,s4,80004b78 <consoleread+0xb4>
    80004b6c:	001c0c13          	addi	s8,s8,1
    80004b70:	fffb8b9b          	addiw	s7,s7,-1
    80004b74:	fb5c94e3          	bne	s9,s5,80004b1c <consoleread+0x58>
    80004b78:	000b851b          	sext.w	a0,s7
    80004b7c:	06813083          	ld	ra,104(sp)
    80004b80:	06013403          	ld	s0,96(sp)
    80004b84:	05813483          	ld	s1,88(sp)
    80004b88:	05013903          	ld	s2,80(sp)
    80004b8c:	04813983          	ld	s3,72(sp)
    80004b90:	04013a03          	ld	s4,64(sp)
    80004b94:	03813a83          	ld	s5,56(sp)
    80004b98:	02813b83          	ld	s7,40(sp)
    80004b9c:	02013c03          	ld	s8,32(sp)
    80004ba0:	01813c83          	ld	s9,24(sp)
    80004ba4:	40ab053b          	subw	a0,s6,a0
    80004ba8:	03013b03          	ld	s6,48(sp)
    80004bac:	07010113          	addi	sp,sp,112
    80004bb0:	00008067          	ret
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	1d8080e7          	jalr	472(ra) # 80005d8c <push_on>
    80004bbc:	0984a703          	lw	a4,152(s1)
    80004bc0:	09c4a783          	lw	a5,156(s1)
    80004bc4:	0007879b          	sext.w	a5,a5
    80004bc8:	fef70ce3          	beq	a4,a5,80004bc0 <consoleread+0xfc>
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	234080e7          	jalr	564(ra) # 80005e00 <pop_on>
    80004bd4:	0984a783          	lw	a5,152(s1)
    80004bd8:	07f7f713          	andi	a4,a5,127
    80004bdc:	00e48733          	add	a4,s1,a4
    80004be0:	01874703          	lbu	a4,24(a4)
    80004be4:	0017869b          	addiw	a3,a5,1
    80004be8:	08d4ac23          	sw	a3,152(s1)
    80004bec:	00070c9b          	sext.w	s9,a4
    80004bf0:	f5371ee3          	bne	a4,s3,80004b4c <consoleread+0x88>
    80004bf4:	000b851b          	sext.w	a0,s7
    80004bf8:	f96bf2e3          	bgeu	s7,s6,80004b7c <consoleread+0xb8>
    80004bfc:	08f4ac23          	sw	a5,152(s1)
    80004c00:	f7dff06f          	j	80004b7c <consoleread+0xb8>

0000000080004c04 <consputc>:
    80004c04:	10000793          	li	a5,256
    80004c08:	00f50663          	beq	a0,a5,80004c14 <consputc+0x10>
    80004c0c:	00001317          	auipc	t1,0x1
    80004c10:	9f430067          	jr	-1548(t1) # 80005600 <uartputc_sync>
    80004c14:	ff010113          	addi	sp,sp,-16
    80004c18:	00113423          	sd	ra,8(sp)
    80004c1c:	00813023          	sd	s0,0(sp)
    80004c20:	01010413          	addi	s0,sp,16
    80004c24:	00800513          	li	a0,8
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	9d8080e7          	jalr	-1576(ra) # 80005600 <uartputc_sync>
    80004c30:	02000513          	li	a0,32
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	9cc080e7          	jalr	-1588(ra) # 80005600 <uartputc_sync>
    80004c3c:	00013403          	ld	s0,0(sp)
    80004c40:	00813083          	ld	ra,8(sp)
    80004c44:	00800513          	li	a0,8
    80004c48:	01010113          	addi	sp,sp,16
    80004c4c:	00001317          	auipc	t1,0x1
    80004c50:	9b430067          	jr	-1612(t1) # 80005600 <uartputc_sync>

0000000080004c54 <consoleintr>:
    80004c54:	fe010113          	addi	sp,sp,-32
    80004c58:	00813823          	sd	s0,16(sp)
    80004c5c:	00913423          	sd	s1,8(sp)
    80004c60:	01213023          	sd	s2,0(sp)
    80004c64:	00113c23          	sd	ra,24(sp)
    80004c68:	02010413          	addi	s0,sp,32
    80004c6c:	00005917          	auipc	s2,0x5
    80004c70:	b2c90913          	addi	s2,s2,-1236 # 80009798 <cons>
    80004c74:	00050493          	mv	s1,a0
    80004c78:	00090513          	mv	a0,s2
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	e40080e7          	jalr	-448(ra) # 80005abc <acquire>
    80004c84:	02048c63          	beqz	s1,80004cbc <consoleintr+0x68>
    80004c88:	0a092783          	lw	a5,160(s2)
    80004c8c:	09892703          	lw	a4,152(s2)
    80004c90:	07f00693          	li	a3,127
    80004c94:	40e7873b          	subw	a4,a5,a4
    80004c98:	02e6e263          	bltu	a3,a4,80004cbc <consoleintr+0x68>
    80004c9c:	00d00713          	li	a4,13
    80004ca0:	04e48063          	beq	s1,a4,80004ce0 <consoleintr+0x8c>
    80004ca4:	07f7f713          	andi	a4,a5,127
    80004ca8:	00e90733          	add	a4,s2,a4
    80004cac:	0017879b          	addiw	a5,a5,1
    80004cb0:	0af92023          	sw	a5,160(s2)
    80004cb4:	00970c23          	sb	s1,24(a4)
    80004cb8:	08f92e23          	sw	a5,156(s2)
    80004cbc:	01013403          	ld	s0,16(sp)
    80004cc0:	01813083          	ld	ra,24(sp)
    80004cc4:	00813483          	ld	s1,8(sp)
    80004cc8:	00013903          	ld	s2,0(sp)
    80004ccc:	00005517          	auipc	a0,0x5
    80004cd0:	acc50513          	addi	a0,a0,-1332 # 80009798 <cons>
    80004cd4:	02010113          	addi	sp,sp,32
    80004cd8:	00001317          	auipc	t1,0x1
    80004cdc:	eb030067          	jr	-336(t1) # 80005b88 <release>
    80004ce0:	00a00493          	li	s1,10
    80004ce4:	fc1ff06f          	j	80004ca4 <consoleintr+0x50>

0000000080004ce8 <consoleinit>:
    80004ce8:	fe010113          	addi	sp,sp,-32
    80004cec:	00113c23          	sd	ra,24(sp)
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	02010413          	addi	s0,sp,32
    80004cfc:	00005497          	auipc	s1,0x5
    80004d00:	a9c48493          	addi	s1,s1,-1380 # 80009798 <cons>
    80004d04:	00048513          	mv	a0,s1
    80004d08:	00002597          	auipc	a1,0x2
    80004d0c:	57058593          	addi	a1,a1,1392 # 80007278 <CONSOLE_STATUS+0x268>
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	d88080e7          	jalr	-632(ra) # 80005a98 <initlock>
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	7ac080e7          	jalr	1964(ra) # 800054c4 <uartinit>
    80004d20:	01813083          	ld	ra,24(sp)
    80004d24:	01013403          	ld	s0,16(sp)
    80004d28:	00000797          	auipc	a5,0x0
    80004d2c:	d9c78793          	addi	a5,a5,-612 # 80004ac4 <consoleread>
    80004d30:	0af4bc23          	sd	a5,184(s1)
    80004d34:	00000797          	auipc	a5,0x0
    80004d38:	cec78793          	addi	a5,a5,-788 # 80004a20 <consolewrite>
    80004d3c:	0cf4b023          	sd	a5,192(s1)
    80004d40:	00813483          	ld	s1,8(sp)
    80004d44:	02010113          	addi	sp,sp,32
    80004d48:	00008067          	ret

0000000080004d4c <console_read>:
    80004d4c:	ff010113          	addi	sp,sp,-16
    80004d50:	00813423          	sd	s0,8(sp)
    80004d54:	01010413          	addi	s0,sp,16
    80004d58:	00813403          	ld	s0,8(sp)
    80004d5c:	00005317          	auipc	t1,0x5
    80004d60:	af433303          	ld	t1,-1292(t1) # 80009850 <devsw+0x10>
    80004d64:	01010113          	addi	sp,sp,16
    80004d68:	00030067          	jr	t1

0000000080004d6c <console_write>:
    80004d6c:	ff010113          	addi	sp,sp,-16
    80004d70:	00813423          	sd	s0,8(sp)
    80004d74:	01010413          	addi	s0,sp,16
    80004d78:	00813403          	ld	s0,8(sp)
    80004d7c:	00005317          	auipc	t1,0x5
    80004d80:	adc33303          	ld	t1,-1316(t1) # 80009858 <devsw+0x18>
    80004d84:	01010113          	addi	sp,sp,16
    80004d88:	00030067          	jr	t1

0000000080004d8c <panic>:
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00113c23          	sd	ra,24(sp)
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	02010413          	addi	s0,sp,32
    80004da0:	00050493          	mv	s1,a0
    80004da4:	00002517          	auipc	a0,0x2
    80004da8:	4dc50513          	addi	a0,a0,1244 # 80007280 <CONSOLE_STATUS+0x270>
    80004dac:	00005797          	auipc	a5,0x5
    80004db0:	b407a623          	sw	zero,-1204(a5) # 800098f8 <pr+0x18>
    80004db4:	00000097          	auipc	ra,0x0
    80004db8:	034080e7          	jalr	52(ra) # 80004de8 <__printf>
    80004dbc:	00048513          	mv	a0,s1
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	028080e7          	jalr	40(ra) # 80004de8 <__printf>
    80004dc8:	00002517          	auipc	a0,0x2
    80004dcc:	2d850513          	addi	a0,a0,728 # 800070a0 <CONSOLE_STATUS+0x90>
    80004dd0:	00000097          	auipc	ra,0x0
    80004dd4:	018080e7          	jalr	24(ra) # 80004de8 <__printf>
    80004dd8:	00100793          	li	a5,1
    80004ddc:	00004717          	auipc	a4,0x4
    80004de0:	82f72e23          	sw	a5,-1988(a4) # 80008618 <panicked>
    80004de4:	0000006f          	j	80004de4 <panic+0x58>

0000000080004de8 <__printf>:
    80004de8:	f3010113          	addi	sp,sp,-208
    80004dec:	08813023          	sd	s0,128(sp)
    80004df0:	07313423          	sd	s3,104(sp)
    80004df4:	09010413          	addi	s0,sp,144
    80004df8:	05813023          	sd	s8,64(sp)
    80004dfc:	08113423          	sd	ra,136(sp)
    80004e00:	06913c23          	sd	s1,120(sp)
    80004e04:	07213823          	sd	s2,112(sp)
    80004e08:	07413023          	sd	s4,96(sp)
    80004e0c:	05513c23          	sd	s5,88(sp)
    80004e10:	05613823          	sd	s6,80(sp)
    80004e14:	05713423          	sd	s7,72(sp)
    80004e18:	03913c23          	sd	s9,56(sp)
    80004e1c:	03a13823          	sd	s10,48(sp)
    80004e20:	03b13423          	sd	s11,40(sp)
    80004e24:	00005317          	auipc	t1,0x5
    80004e28:	abc30313          	addi	t1,t1,-1348 # 800098e0 <pr>
    80004e2c:	01832c03          	lw	s8,24(t1)
    80004e30:	00b43423          	sd	a1,8(s0)
    80004e34:	00c43823          	sd	a2,16(s0)
    80004e38:	00d43c23          	sd	a3,24(s0)
    80004e3c:	02e43023          	sd	a4,32(s0)
    80004e40:	02f43423          	sd	a5,40(s0)
    80004e44:	03043823          	sd	a6,48(s0)
    80004e48:	03143c23          	sd	a7,56(s0)
    80004e4c:	00050993          	mv	s3,a0
    80004e50:	4a0c1663          	bnez	s8,800052fc <__printf+0x514>
    80004e54:	60098c63          	beqz	s3,8000546c <__printf+0x684>
    80004e58:	0009c503          	lbu	a0,0(s3)
    80004e5c:	00840793          	addi	a5,s0,8
    80004e60:	f6f43c23          	sd	a5,-136(s0)
    80004e64:	00000493          	li	s1,0
    80004e68:	22050063          	beqz	a0,80005088 <__printf+0x2a0>
    80004e6c:	00002a37          	lui	s4,0x2
    80004e70:	00018ab7          	lui	s5,0x18
    80004e74:	000f4b37          	lui	s6,0xf4
    80004e78:	00989bb7          	lui	s7,0x989
    80004e7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004e80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004e84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004e88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004e8c:	00148c9b          	addiw	s9,s1,1
    80004e90:	02500793          	li	a5,37
    80004e94:	01998933          	add	s2,s3,s9
    80004e98:	38f51263          	bne	a0,a5,8000521c <__printf+0x434>
    80004e9c:	00094783          	lbu	a5,0(s2)
    80004ea0:	00078c9b          	sext.w	s9,a5
    80004ea4:	1e078263          	beqz	a5,80005088 <__printf+0x2a0>
    80004ea8:	0024849b          	addiw	s1,s1,2
    80004eac:	07000713          	li	a4,112
    80004eb0:	00998933          	add	s2,s3,s1
    80004eb4:	38e78a63          	beq	a5,a4,80005248 <__printf+0x460>
    80004eb8:	20f76863          	bltu	a4,a5,800050c8 <__printf+0x2e0>
    80004ebc:	42a78863          	beq	a5,a0,800052ec <__printf+0x504>
    80004ec0:	06400713          	li	a4,100
    80004ec4:	40e79663          	bne	a5,a4,800052d0 <__printf+0x4e8>
    80004ec8:	f7843783          	ld	a5,-136(s0)
    80004ecc:	0007a603          	lw	a2,0(a5)
    80004ed0:	00878793          	addi	a5,a5,8
    80004ed4:	f6f43c23          	sd	a5,-136(s0)
    80004ed8:	42064a63          	bltz	a2,8000530c <__printf+0x524>
    80004edc:	00a00713          	li	a4,10
    80004ee0:	02e677bb          	remuw	a5,a2,a4
    80004ee4:	00002d97          	auipc	s11,0x2
    80004ee8:	3c4d8d93          	addi	s11,s11,964 # 800072a8 <digits>
    80004eec:	00900593          	li	a1,9
    80004ef0:	0006051b          	sext.w	a0,a2
    80004ef4:	00000c93          	li	s9,0
    80004ef8:	02079793          	slli	a5,a5,0x20
    80004efc:	0207d793          	srli	a5,a5,0x20
    80004f00:	00fd87b3          	add	a5,s11,a5
    80004f04:	0007c783          	lbu	a5,0(a5)
    80004f08:	02e656bb          	divuw	a3,a2,a4
    80004f0c:	f8f40023          	sb	a5,-128(s0)
    80004f10:	14c5d863          	bge	a1,a2,80005060 <__printf+0x278>
    80004f14:	06300593          	li	a1,99
    80004f18:	00100c93          	li	s9,1
    80004f1c:	02e6f7bb          	remuw	a5,a3,a4
    80004f20:	02079793          	slli	a5,a5,0x20
    80004f24:	0207d793          	srli	a5,a5,0x20
    80004f28:	00fd87b3          	add	a5,s11,a5
    80004f2c:	0007c783          	lbu	a5,0(a5)
    80004f30:	02e6d73b          	divuw	a4,a3,a4
    80004f34:	f8f400a3          	sb	a5,-127(s0)
    80004f38:	12a5f463          	bgeu	a1,a0,80005060 <__printf+0x278>
    80004f3c:	00a00693          	li	a3,10
    80004f40:	00900593          	li	a1,9
    80004f44:	02d777bb          	remuw	a5,a4,a3
    80004f48:	02079793          	slli	a5,a5,0x20
    80004f4c:	0207d793          	srli	a5,a5,0x20
    80004f50:	00fd87b3          	add	a5,s11,a5
    80004f54:	0007c503          	lbu	a0,0(a5)
    80004f58:	02d757bb          	divuw	a5,a4,a3
    80004f5c:	f8a40123          	sb	a0,-126(s0)
    80004f60:	48e5f263          	bgeu	a1,a4,800053e4 <__printf+0x5fc>
    80004f64:	06300513          	li	a0,99
    80004f68:	02d7f5bb          	remuw	a1,a5,a3
    80004f6c:	02059593          	slli	a1,a1,0x20
    80004f70:	0205d593          	srli	a1,a1,0x20
    80004f74:	00bd85b3          	add	a1,s11,a1
    80004f78:	0005c583          	lbu	a1,0(a1)
    80004f7c:	02d7d7bb          	divuw	a5,a5,a3
    80004f80:	f8b401a3          	sb	a1,-125(s0)
    80004f84:	48e57263          	bgeu	a0,a4,80005408 <__printf+0x620>
    80004f88:	3e700513          	li	a0,999
    80004f8c:	02d7f5bb          	remuw	a1,a5,a3
    80004f90:	02059593          	slli	a1,a1,0x20
    80004f94:	0205d593          	srli	a1,a1,0x20
    80004f98:	00bd85b3          	add	a1,s11,a1
    80004f9c:	0005c583          	lbu	a1,0(a1)
    80004fa0:	02d7d7bb          	divuw	a5,a5,a3
    80004fa4:	f8b40223          	sb	a1,-124(s0)
    80004fa8:	46e57663          	bgeu	a0,a4,80005414 <__printf+0x62c>
    80004fac:	02d7f5bb          	remuw	a1,a5,a3
    80004fb0:	02059593          	slli	a1,a1,0x20
    80004fb4:	0205d593          	srli	a1,a1,0x20
    80004fb8:	00bd85b3          	add	a1,s11,a1
    80004fbc:	0005c583          	lbu	a1,0(a1)
    80004fc0:	02d7d7bb          	divuw	a5,a5,a3
    80004fc4:	f8b402a3          	sb	a1,-123(s0)
    80004fc8:	46ea7863          	bgeu	s4,a4,80005438 <__printf+0x650>
    80004fcc:	02d7f5bb          	remuw	a1,a5,a3
    80004fd0:	02059593          	slli	a1,a1,0x20
    80004fd4:	0205d593          	srli	a1,a1,0x20
    80004fd8:	00bd85b3          	add	a1,s11,a1
    80004fdc:	0005c583          	lbu	a1,0(a1)
    80004fe0:	02d7d7bb          	divuw	a5,a5,a3
    80004fe4:	f8b40323          	sb	a1,-122(s0)
    80004fe8:	3eeaf863          	bgeu	s5,a4,800053d8 <__printf+0x5f0>
    80004fec:	02d7f5bb          	remuw	a1,a5,a3
    80004ff0:	02059593          	slli	a1,a1,0x20
    80004ff4:	0205d593          	srli	a1,a1,0x20
    80004ff8:	00bd85b3          	add	a1,s11,a1
    80004ffc:	0005c583          	lbu	a1,0(a1)
    80005000:	02d7d7bb          	divuw	a5,a5,a3
    80005004:	f8b403a3          	sb	a1,-121(s0)
    80005008:	42eb7e63          	bgeu	s6,a4,80005444 <__printf+0x65c>
    8000500c:	02d7f5bb          	remuw	a1,a5,a3
    80005010:	02059593          	slli	a1,a1,0x20
    80005014:	0205d593          	srli	a1,a1,0x20
    80005018:	00bd85b3          	add	a1,s11,a1
    8000501c:	0005c583          	lbu	a1,0(a1)
    80005020:	02d7d7bb          	divuw	a5,a5,a3
    80005024:	f8b40423          	sb	a1,-120(s0)
    80005028:	42ebfc63          	bgeu	s7,a4,80005460 <__printf+0x678>
    8000502c:	02079793          	slli	a5,a5,0x20
    80005030:	0207d793          	srli	a5,a5,0x20
    80005034:	00fd8db3          	add	s11,s11,a5
    80005038:	000dc703          	lbu	a4,0(s11)
    8000503c:	00a00793          	li	a5,10
    80005040:	00900c93          	li	s9,9
    80005044:	f8e404a3          	sb	a4,-119(s0)
    80005048:	00065c63          	bgez	a2,80005060 <__printf+0x278>
    8000504c:	f9040713          	addi	a4,s0,-112
    80005050:	00f70733          	add	a4,a4,a5
    80005054:	02d00693          	li	a3,45
    80005058:	fed70823          	sb	a3,-16(a4)
    8000505c:	00078c93          	mv	s9,a5
    80005060:	f8040793          	addi	a5,s0,-128
    80005064:	01978cb3          	add	s9,a5,s9
    80005068:	f7f40d13          	addi	s10,s0,-129
    8000506c:	000cc503          	lbu	a0,0(s9)
    80005070:	fffc8c93          	addi	s9,s9,-1
    80005074:	00000097          	auipc	ra,0x0
    80005078:	b90080e7          	jalr	-1136(ra) # 80004c04 <consputc>
    8000507c:	ffac98e3          	bne	s9,s10,8000506c <__printf+0x284>
    80005080:	00094503          	lbu	a0,0(s2)
    80005084:	e00514e3          	bnez	a0,80004e8c <__printf+0xa4>
    80005088:	1a0c1663          	bnez	s8,80005234 <__printf+0x44c>
    8000508c:	08813083          	ld	ra,136(sp)
    80005090:	08013403          	ld	s0,128(sp)
    80005094:	07813483          	ld	s1,120(sp)
    80005098:	07013903          	ld	s2,112(sp)
    8000509c:	06813983          	ld	s3,104(sp)
    800050a0:	06013a03          	ld	s4,96(sp)
    800050a4:	05813a83          	ld	s5,88(sp)
    800050a8:	05013b03          	ld	s6,80(sp)
    800050ac:	04813b83          	ld	s7,72(sp)
    800050b0:	04013c03          	ld	s8,64(sp)
    800050b4:	03813c83          	ld	s9,56(sp)
    800050b8:	03013d03          	ld	s10,48(sp)
    800050bc:	02813d83          	ld	s11,40(sp)
    800050c0:	0d010113          	addi	sp,sp,208
    800050c4:	00008067          	ret
    800050c8:	07300713          	li	a4,115
    800050cc:	1ce78a63          	beq	a5,a4,800052a0 <__printf+0x4b8>
    800050d0:	07800713          	li	a4,120
    800050d4:	1ee79e63          	bne	a5,a4,800052d0 <__printf+0x4e8>
    800050d8:	f7843783          	ld	a5,-136(s0)
    800050dc:	0007a703          	lw	a4,0(a5)
    800050e0:	00878793          	addi	a5,a5,8
    800050e4:	f6f43c23          	sd	a5,-136(s0)
    800050e8:	28074263          	bltz	a4,8000536c <__printf+0x584>
    800050ec:	00002d97          	auipc	s11,0x2
    800050f0:	1bcd8d93          	addi	s11,s11,444 # 800072a8 <digits>
    800050f4:	00f77793          	andi	a5,a4,15
    800050f8:	00fd87b3          	add	a5,s11,a5
    800050fc:	0007c683          	lbu	a3,0(a5)
    80005100:	00f00613          	li	a2,15
    80005104:	0007079b          	sext.w	a5,a4
    80005108:	f8d40023          	sb	a3,-128(s0)
    8000510c:	0047559b          	srliw	a1,a4,0x4
    80005110:	0047569b          	srliw	a3,a4,0x4
    80005114:	00000c93          	li	s9,0
    80005118:	0ee65063          	bge	a2,a4,800051f8 <__printf+0x410>
    8000511c:	00f6f693          	andi	a3,a3,15
    80005120:	00dd86b3          	add	a3,s11,a3
    80005124:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005128:	0087d79b          	srliw	a5,a5,0x8
    8000512c:	00100c93          	li	s9,1
    80005130:	f8d400a3          	sb	a3,-127(s0)
    80005134:	0cb67263          	bgeu	a2,a1,800051f8 <__printf+0x410>
    80005138:	00f7f693          	andi	a3,a5,15
    8000513c:	00dd86b3          	add	a3,s11,a3
    80005140:	0006c583          	lbu	a1,0(a3)
    80005144:	00f00613          	li	a2,15
    80005148:	0047d69b          	srliw	a3,a5,0x4
    8000514c:	f8b40123          	sb	a1,-126(s0)
    80005150:	0047d593          	srli	a1,a5,0x4
    80005154:	28f67e63          	bgeu	a2,a5,800053f0 <__printf+0x608>
    80005158:	00f6f693          	andi	a3,a3,15
    8000515c:	00dd86b3          	add	a3,s11,a3
    80005160:	0006c503          	lbu	a0,0(a3)
    80005164:	0087d813          	srli	a6,a5,0x8
    80005168:	0087d69b          	srliw	a3,a5,0x8
    8000516c:	f8a401a3          	sb	a0,-125(s0)
    80005170:	28b67663          	bgeu	a2,a1,800053fc <__printf+0x614>
    80005174:	00f6f693          	andi	a3,a3,15
    80005178:	00dd86b3          	add	a3,s11,a3
    8000517c:	0006c583          	lbu	a1,0(a3)
    80005180:	00c7d513          	srli	a0,a5,0xc
    80005184:	00c7d69b          	srliw	a3,a5,0xc
    80005188:	f8b40223          	sb	a1,-124(s0)
    8000518c:	29067a63          	bgeu	a2,a6,80005420 <__printf+0x638>
    80005190:	00f6f693          	andi	a3,a3,15
    80005194:	00dd86b3          	add	a3,s11,a3
    80005198:	0006c583          	lbu	a1,0(a3)
    8000519c:	0107d813          	srli	a6,a5,0x10
    800051a0:	0107d69b          	srliw	a3,a5,0x10
    800051a4:	f8b402a3          	sb	a1,-123(s0)
    800051a8:	28a67263          	bgeu	a2,a0,8000542c <__printf+0x644>
    800051ac:	00f6f693          	andi	a3,a3,15
    800051b0:	00dd86b3          	add	a3,s11,a3
    800051b4:	0006c683          	lbu	a3,0(a3)
    800051b8:	0147d79b          	srliw	a5,a5,0x14
    800051bc:	f8d40323          	sb	a3,-122(s0)
    800051c0:	21067663          	bgeu	a2,a6,800053cc <__printf+0x5e4>
    800051c4:	02079793          	slli	a5,a5,0x20
    800051c8:	0207d793          	srli	a5,a5,0x20
    800051cc:	00fd8db3          	add	s11,s11,a5
    800051d0:	000dc683          	lbu	a3,0(s11)
    800051d4:	00800793          	li	a5,8
    800051d8:	00700c93          	li	s9,7
    800051dc:	f8d403a3          	sb	a3,-121(s0)
    800051e0:	00075c63          	bgez	a4,800051f8 <__printf+0x410>
    800051e4:	f9040713          	addi	a4,s0,-112
    800051e8:	00f70733          	add	a4,a4,a5
    800051ec:	02d00693          	li	a3,45
    800051f0:	fed70823          	sb	a3,-16(a4)
    800051f4:	00078c93          	mv	s9,a5
    800051f8:	f8040793          	addi	a5,s0,-128
    800051fc:	01978cb3          	add	s9,a5,s9
    80005200:	f7f40d13          	addi	s10,s0,-129
    80005204:	000cc503          	lbu	a0,0(s9)
    80005208:	fffc8c93          	addi	s9,s9,-1
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	9f8080e7          	jalr	-1544(ra) # 80004c04 <consputc>
    80005214:	ff9d18e3          	bne	s10,s9,80005204 <__printf+0x41c>
    80005218:	0100006f          	j	80005228 <__printf+0x440>
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	9e8080e7          	jalr	-1560(ra) # 80004c04 <consputc>
    80005224:	000c8493          	mv	s1,s9
    80005228:	00094503          	lbu	a0,0(s2)
    8000522c:	c60510e3          	bnez	a0,80004e8c <__printf+0xa4>
    80005230:	e40c0ee3          	beqz	s8,8000508c <__printf+0x2a4>
    80005234:	00004517          	auipc	a0,0x4
    80005238:	6ac50513          	addi	a0,a0,1708 # 800098e0 <pr>
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	94c080e7          	jalr	-1716(ra) # 80005b88 <release>
    80005244:	e49ff06f          	j	8000508c <__printf+0x2a4>
    80005248:	f7843783          	ld	a5,-136(s0)
    8000524c:	03000513          	li	a0,48
    80005250:	01000d13          	li	s10,16
    80005254:	00878713          	addi	a4,a5,8
    80005258:	0007bc83          	ld	s9,0(a5)
    8000525c:	f6e43c23          	sd	a4,-136(s0)
    80005260:	00000097          	auipc	ra,0x0
    80005264:	9a4080e7          	jalr	-1628(ra) # 80004c04 <consputc>
    80005268:	07800513          	li	a0,120
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	998080e7          	jalr	-1640(ra) # 80004c04 <consputc>
    80005274:	00002d97          	auipc	s11,0x2
    80005278:	034d8d93          	addi	s11,s11,52 # 800072a8 <digits>
    8000527c:	03ccd793          	srli	a5,s9,0x3c
    80005280:	00fd87b3          	add	a5,s11,a5
    80005284:	0007c503          	lbu	a0,0(a5)
    80005288:	fffd0d1b          	addiw	s10,s10,-1
    8000528c:	004c9c93          	slli	s9,s9,0x4
    80005290:	00000097          	auipc	ra,0x0
    80005294:	974080e7          	jalr	-1676(ra) # 80004c04 <consputc>
    80005298:	fe0d12e3          	bnez	s10,8000527c <__printf+0x494>
    8000529c:	f8dff06f          	j	80005228 <__printf+0x440>
    800052a0:	f7843783          	ld	a5,-136(s0)
    800052a4:	0007bc83          	ld	s9,0(a5)
    800052a8:	00878793          	addi	a5,a5,8
    800052ac:	f6f43c23          	sd	a5,-136(s0)
    800052b0:	000c9a63          	bnez	s9,800052c4 <__printf+0x4dc>
    800052b4:	1080006f          	j	800053bc <__printf+0x5d4>
    800052b8:	001c8c93          	addi	s9,s9,1
    800052bc:	00000097          	auipc	ra,0x0
    800052c0:	948080e7          	jalr	-1720(ra) # 80004c04 <consputc>
    800052c4:	000cc503          	lbu	a0,0(s9)
    800052c8:	fe0518e3          	bnez	a0,800052b8 <__printf+0x4d0>
    800052cc:	f5dff06f          	j	80005228 <__printf+0x440>
    800052d0:	02500513          	li	a0,37
    800052d4:	00000097          	auipc	ra,0x0
    800052d8:	930080e7          	jalr	-1744(ra) # 80004c04 <consputc>
    800052dc:	000c8513          	mv	a0,s9
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	924080e7          	jalr	-1756(ra) # 80004c04 <consputc>
    800052e8:	f41ff06f          	j	80005228 <__printf+0x440>
    800052ec:	02500513          	li	a0,37
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	914080e7          	jalr	-1772(ra) # 80004c04 <consputc>
    800052f8:	f31ff06f          	j	80005228 <__printf+0x440>
    800052fc:	00030513          	mv	a0,t1
    80005300:	00000097          	auipc	ra,0x0
    80005304:	7bc080e7          	jalr	1980(ra) # 80005abc <acquire>
    80005308:	b4dff06f          	j	80004e54 <__printf+0x6c>
    8000530c:	40c0053b          	negw	a0,a2
    80005310:	00a00713          	li	a4,10
    80005314:	02e576bb          	remuw	a3,a0,a4
    80005318:	00002d97          	auipc	s11,0x2
    8000531c:	f90d8d93          	addi	s11,s11,-112 # 800072a8 <digits>
    80005320:	ff700593          	li	a1,-9
    80005324:	02069693          	slli	a3,a3,0x20
    80005328:	0206d693          	srli	a3,a3,0x20
    8000532c:	00dd86b3          	add	a3,s11,a3
    80005330:	0006c683          	lbu	a3,0(a3)
    80005334:	02e557bb          	divuw	a5,a0,a4
    80005338:	f8d40023          	sb	a3,-128(s0)
    8000533c:	10b65e63          	bge	a2,a1,80005458 <__printf+0x670>
    80005340:	06300593          	li	a1,99
    80005344:	02e7f6bb          	remuw	a3,a5,a4
    80005348:	02069693          	slli	a3,a3,0x20
    8000534c:	0206d693          	srli	a3,a3,0x20
    80005350:	00dd86b3          	add	a3,s11,a3
    80005354:	0006c683          	lbu	a3,0(a3)
    80005358:	02e7d73b          	divuw	a4,a5,a4
    8000535c:	00200793          	li	a5,2
    80005360:	f8d400a3          	sb	a3,-127(s0)
    80005364:	bca5ece3          	bltu	a1,a0,80004f3c <__printf+0x154>
    80005368:	ce5ff06f          	j	8000504c <__printf+0x264>
    8000536c:	40e007bb          	negw	a5,a4
    80005370:	00002d97          	auipc	s11,0x2
    80005374:	f38d8d93          	addi	s11,s11,-200 # 800072a8 <digits>
    80005378:	00f7f693          	andi	a3,a5,15
    8000537c:	00dd86b3          	add	a3,s11,a3
    80005380:	0006c583          	lbu	a1,0(a3)
    80005384:	ff100613          	li	a2,-15
    80005388:	0047d69b          	srliw	a3,a5,0x4
    8000538c:	f8b40023          	sb	a1,-128(s0)
    80005390:	0047d59b          	srliw	a1,a5,0x4
    80005394:	0ac75e63          	bge	a4,a2,80005450 <__printf+0x668>
    80005398:	00f6f693          	andi	a3,a3,15
    8000539c:	00dd86b3          	add	a3,s11,a3
    800053a0:	0006c603          	lbu	a2,0(a3)
    800053a4:	00f00693          	li	a3,15
    800053a8:	0087d79b          	srliw	a5,a5,0x8
    800053ac:	f8c400a3          	sb	a2,-127(s0)
    800053b0:	d8b6e4e3          	bltu	a3,a1,80005138 <__printf+0x350>
    800053b4:	00200793          	li	a5,2
    800053b8:	e2dff06f          	j	800051e4 <__printf+0x3fc>
    800053bc:	00002c97          	auipc	s9,0x2
    800053c0:	eccc8c93          	addi	s9,s9,-308 # 80007288 <CONSOLE_STATUS+0x278>
    800053c4:	02800513          	li	a0,40
    800053c8:	ef1ff06f          	j	800052b8 <__printf+0x4d0>
    800053cc:	00700793          	li	a5,7
    800053d0:	00600c93          	li	s9,6
    800053d4:	e0dff06f          	j	800051e0 <__printf+0x3f8>
    800053d8:	00700793          	li	a5,7
    800053dc:	00600c93          	li	s9,6
    800053e0:	c69ff06f          	j	80005048 <__printf+0x260>
    800053e4:	00300793          	li	a5,3
    800053e8:	00200c93          	li	s9,2
    800053ec:	c5dff06f          	j	80005048 <__printf+0x260>
    800053f0:	00300793          	li	a5,3
    800053f4:	00200c93          	li	s9,2
    800053f8:	de9ff06f          	j	800051e0 <__printf+0x3f8>
    800053fc:	00400793          	li	a5,4
    80005400:	00300c93          	li	s9,3
    80005404:	dddff06f          	j	800051e0 <__printf+0x3f8>
    80005408:	00400793          	li	a5,4
    8000540c:	00300c93          	li	s9,3
    80005410:	c39ff06f          	j	80005048 <__printf+0x260>
    80005414:	00500793          	li	a5,5
    80005418:	00400c93          	li	s9,4
    8000541c:	c2dff06f          	j	80005048 <__printf+0x260>
    80005420:	00500793          	li	a5,5
    80005424:	00400c93          	li	s9,4
    80005428:	db9ff06f          	j	800051e0 <__printf+0x3f8>
    8000542c:	00600793          	li	a5,6
    80005430:	00500c93          	li	s9,5
    80005434:	dadff06f          	j	800051e0 <__printf+0x3f8>
    80005438:	00600793          	li	a5,6
    8000543c:	00500c93          	li	s9,5
    80005440:	c09ff06f          	j	80005048 <__printf+0x260>
    80005444:	00800793          	li	a5,8
    80005448:	00700c93          	li	s9,7
    8000544c:	bfdff06f          	j	80005048 <__printf+0x260>
    80005450:	00100793          	li	a5,1
    80005454:	d91ff06f          	j	800051e4 <__printf+0x3fc>
    80005458:	00100793          	li	a5,1
    8000545c:	bf1ff06f          	j	8000504c <__printf+0x264>
    80005460:	00900793          	li	a5,9
    80005464:	00800c93          	li	s9,8
    80005468:	be1ff06f          	j	80005048 <__printf+0x260>
    8000546c:	00002517          	auipc	a0,0x2
    80005470:	e2450513          	addi	a0,a0,-476 # 80007290 <CONSOLE_STATUS+0x280>
    80005474:	00000097          	auipc	ra,0x0
    80005478:	918080e7          	jalr	-1768(ra) # 80004d8c <panic>

000000008000547c <printfinit>:
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00813823          	sd	s0,16(sp)
    80005484:	00913423          	sd	s1,8(sp)
    80005488:	00113c23          	sd	ra,24(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	00004497          	auipc	s1,0x4
    80005494:	45048493          	addi	s1,s1,1104 # 800098e0 <pr>
    80005498:	00048513          	mv	a0,s1
    8000549c:	00002597          	auipc	a1,0x2
    800054a0:	e0458593          	addi	a1,a1,-508 # 800072a0 <CONSOLE_STATUS+0x290>
    800054a4:	00000097          	auipc	ra,0x0
    800054a8:	5f4080e7          	jalr	1524(ra) # 80005a98 <initlock>
    800054ac:	01813083          	ld	ra,24(sp)
    800054b0:	01013403          	ld	s0,16(sp)
    800054b4:	0004ac23          	sw	zero,24(s1)
    800054b8:	00813483          	ld	s1,8(sp)
    800054bc:	02010113          	addi	sp,sp,32
    800054c0:	00008067          	ret

00000000800054c4 <uartinit>:
    800054c4:	ff010113          	addi	sp,sp,-16
    800054c8:	00813423          	sd	s0,8(sp)
    800054cc:	01010413          	addi	s0,sp,16
    800054d0:	100007b7          	lui	a5,0x10000
    800054d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800054d8:	f8000713          	li	a4,-128
    800054dc:	00e781a3          	sb	a4,3(a5)
    800054e0:	00300713          	li	a4,3
    800054e4:	00e78023          	sb	a4,0(a5)
    800054e8:	000780a3          	sb	zero,1(a5)
    800054ec:	00e781a3          	sb	a4,3(a5)
    800054f0:	00700693          	li	a3,7
    800054f4:	00d78123          	sb	a3,2(a5)
    800054f8:	00e780a3          	sb	a4,1(a5)
    800054fc:	00813403          	ld	s0,8(sp)
    80005500:	01010113          	addi	sp,sp,16
    80005504:	00008067          	ret

0000000080005508 <uartputc>:
    80005508:	00003797          	auipc	a5,0x3
    8000550c:	1107a783          	lw	a5,272(a5) # 80008618 <panicked>
    80005510:	00078463          	beqz	a5,80005518 <uartputc+0x10>
    80005514:	0000006f          	j	80005514 <uartputc+0xc>
    80005518:	fd010113          	addi	sp,sp,-48
    8000551c:	02813023          	sd	s0,32(sp)
    80005520:	00913c23          	sd	s1,24(sp)
    80005524:	01213823          	sd	s2,16(sp)
    80005528:	01313423          	sd	s3,8(sp)
    8000552c:	02113423          	sd	ra,40(sp)
    80005530:	03010413          	addi	s0,sp,48
    80005534:	00003917          	auipc	s2,0x3
    80005538:	0ec90913          	addi	s2,s2,236 # 80008620 <uart_tx_r>
    8000553c:	00093783          	ld	a5,0(s2)
    80005540:	00003497          	auipc	s1,0x3
    80005544:	0e848493          	addi	s1,s1,232 # 80008628 <uart_tx_w>
    80005548:	0004b703          	ld	a4,0(s1)
    8000554c:	02078693          	addi	a3,a5,32
    80005550:	00050993          	mv	s3,a0
    80005554:	02e69c63          	bne	a3,a4,8000558c <uartputc+0x84>
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	834080e7          	jalr	-1996(ra) # 80005d8c <push_on>
    80005560:	00093783          	ld	a5,0(s2)
    80005564:	0004b703          	ld	a4,0(s1)
    80005568:	02078793          	addi	a5,a5,32
    8000556c:	00e79463          	bne	a5,a4,80005574 <uartputc+0x6c>
    80005570:	0000006f          	j	80005570 <uartputc+0x68>
    80005574:	00001097          	auipc	ra,0x1
    80005578:	88c080e7          	jalr	-1908(ra) # 80005e00 <pop_on>
    8000557c:	00093783          	ld	a5,0(s2)
    80005580:	0004b703          	ld	a4,0(s1)
    80005584:	02078693          	addi	a3,a5,32
    80005588:	fce688e3          	beq	a3,a4,80005558 <uartputc+0x50>
    8000558c:	01f77693          	andi	a3,a4,31
    80005590:	00004597          	auipc	a1,0x4
    80005594:	37058593          	addi	a1,a1,880 # 80009900 <uart_tx_buf>
    80005598:	00d586b3          	add	a3,a1,a3
    8000559c:	00170713          	addi	a4,a4,1
    800055a0:	01368023          	sb	s3,0(a3)
    800055a4:	00e4b023          	sd	a4,0(s1)
    800055a8:	10000637          	lui	a2,0x10000
    800055ac:	02f71063          	bne	a4,a5,800055cc <uartputc+0xc4>
    800055b0:	0340006f          	j	800055e4 <uartputc+0xdc>
    800055b4:	00074703          	lbu	a4,0(a4)
    800055b8:	00f93023          	sd	a5,0(s2)
    800055bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800055c0:	00093783          	ld	a5,0(s2)
    800055c4:	0004b703          	ld	a4,0(s1)
    800055c8:	00f70e63          	beq	a4,a5,800055e4 <uartputc+0xdc>
    800055cc:	00564683          	lbu	a3,5(a2)
    800055d0:	01f7f713          	andi	a4,a5,31
    800055d4:	00e58733          	add	a4,a1,a4
    800055d8:	0206f693          	andi	a3,a3,32
    800055dc:	00178793          	addi	a5,a5,1
    800055e0:	fc069ae3          	bnez	a3,800055b4 <uartputc+0xac>
    800055e4:	02813083          	ld	ra,40(sp)
    800055e8:	02013403          	ld	s0,32(sp)
    800055ec:	01813483          	ld	s1,24(sp)
    800055f0:	01013903          	ld	s2,16(sp)
    800055f4:	00813983          	ld	s3,8(sp)
    800055f8:	03010113          	addi	sp,sp,48
    800055fc:	00008067          	ret

0000000080005600 <uartputc_sync>:
    80005600:	ff010113          	addi	sp,sp,-16
    80005604:	00813423          	sd	s0,8(sp)
    80005608:	01010413          	addi	s0,sp,16
    8000560c:	00003717          	auipc	a4,0x3
    80005610:	00c72703          	lw	a4,12(a4) # 80008618 <panicked>
    80005614:	02071663          	bnez	a4,80005640 <uartputc_sync+0x40>
    80005618:	00050793          	mv	a5,a0
    8000561c:	100006b7          	lui	a3,0x10000
    80005620:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005624:	02077713          	andi	a4,a4,32
    80005628:	fe070ce3          	beqz	a4,80005620 <uartputc_sync+0x20>
    8000562c:	0ff7f793          	andi	a5,a5,255
    80005630:	00f68023          	sb	a5,0(a3)
    80005634:	00813403          	ld	s0,8(sp)
    80005638:	01010113          	addi	sp,sp,16
    8000563c:	00008067          	ret
    80005640:	0000006f          	j	80005640 <uartputc_sync+0x40>

0000000080005644 <uartstart>:
    80005644:	ff010113          	addi	sp,sp,-16
    80005648:	00813423          	sd	s0,8(sp)
    8000564c:	01010413          	addi	s0,sp,16
    80005650:	00003617          	auipc	a2,0x3
    80005654:	fd060613          	addi	a2,a2,-48 # 80008620 <uart_tx_r>
    80005658:	00003517          	auipc	a0,0x3
    8000565c:	fd050513          	addi	a0,a0,-48 # 80008628 <uart_tx_w>
    80005660:	00063783          	ld	a5,0(a2)
    80005664:	00053703          	ld	a4,0(a0)
    80005668:	04f70263          	beq	a4,a5,800056ac <uartstart+0x68>
    8000566c:	100005b7          	lui	a1,0x10000
    80005670:	00004817          	auipc	a6,0x4
    80005674:	29080813          	addi	a6,a6,656 # 80009900 <uart_tx_buf>
    80005678:	01c0006f          	j	80005694 <uartstart+0x50>
    8000567c:	0006c703          	lbu	a4,0(a3)
    80005680:	00f63023          	sd	a5,0(a2)
    80005684:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005688:	00063783          	ld	a5,0(a2)
    8000568c:	00053703          	ld	a4,0(a0)
    80005690:	00f70e63          	beq	a4,a5,800056ac <uartstart+0x68>
    80005694:	01f7f713          	andi	a4,a5,31
    80005698:	00e806b3          	add	a3,a6,a4
    8000569c:	0055c703          	lbu	a4,5(a1)
    800056a0:	00178793          	addi	a5,a5,1
    800056a4:	02077713          	andi	a4,a4,32
    800056a8:	fc071ae3          	bnez	a4,8000567c <uartstart+0x38>
    800056ac:	00813403          	ld	s0,8(sp)
    800056b0:	01010113          	addi	sp,sp,16
    800056b4:	00008067          	ret

00000000800056b8 <uartgetc>:
    800056b8:	ff010113          	addi	sp,sp,-16
    800056bc:	00813423          	sd	s0,8(sp)
    800056c0:	01010413          	addi	s0,sp,16
    800056c4:	10000737          	lui	a4,0x10000
    800056c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800056cc:	0017f793          	andi	a5,a5,1
    800056d0:	00078c63          	beqz	a5,800056e8 <uartgetc+0x30>
    800056d4:	00074503          	lbu	a0,0(a4)
    800056d8:	0ff57513          	andi	a0,a0,255
    800056dc:	00813403          	ld	s0,8(sp)
    800056e0:	01010113          	addi	sp,sp,16
    800056e4:	00008067          	ret
    800056e8:	fff00513          	li	a0,-1
    800056ec:	ff1ff06f          	j	800056dc <uartgetc+0x24>

00000000800056f0 <uartintr>:
    800056f0:	100007b7          	lui	a5,0x10000
    800056f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800056f8:	0017f793          	andi	a5,a5,1
    800056fc:	0a078463          	beqz	a5,800057a4 <uartintr+0xb4>
    80005700:	fe010113          	addi	sp,sp,-32
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	00113c23          	sd	ra,24(sp)
    80005710:	02010413          	addi	s0,sp,32
    80005714:	100004b7          	lui	s1,0x10000
    80005718:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000571c:	0ff57513          	andi	a0,a0,255
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	534080e7          	jalr	1332(ra) # 80004c54 <consoleintr>
    80005728:	0054c783          	lbu	a5,5(s1)
    8000572c:	0017f793          	andi	a5,a5,1
    80005730:	fe0794e3          	bnez	a5,80005718 <uartintr+0x28>
    80005734:	00003617          	auipc	a2,0x3
    80005738:	eec60613          	addi	a2,a2,-276 # 80008620 <uart_tx_r>
    8000573c:	00003517          	auipc	a0,0x3
    80005740:	eec50513          	addi	a0,a0,-276 # 80008628 <uart_tx_w>
    80005744:	00063783          	ld	a5,0(a2)
    80005748:	00053703          	ld	a4,0(a0)
    8000574c:	04f70263          	beq	a4,a5,80005790 <uartintr+0xa0>
    80005750:	100005b7          	lui	a1,0x10000
    80005754:	00004817          	auipc	a6,0x4
    80005758:	1ac80813          	addi	a6,a6,428 # 80009900 <uart_tx_buf>
    8000575c:	01c0006f          	j	80005778 <uartintr+0x88>
    80005760:	0006c703          	lbu	a4,0(a3)
    80005764:	00f63023          	sd	a5,0(a2)
    80005768:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000576c:	00063783          	ld	a5,0(a2)
    80005770:	00053703          	ld	a4,0(a0)
    80005774:	00f70e63          	beq	a4,a5,80005790 <uartintr+0xa0>
    80005778:	01f7f713          	andi	a4,a5,31
    8000577c:	00e806b3          	add	a3,a6,a4
    80005780:	0055c703          	lbu	a4,5(a1)
    80005784:	00178793          	addi	a5,a5,1
    80005788:	02077713          	andi	a4,a4,32
    8000578c:	fc071ae3          	bnez	a4,80005760 <uartintr+0x70>
    80005790:	01813083          	ld	ra,24(sp)
    80005794:	01013403          	ld	s0,16(sp)
    80005798:	00813483          	ld	s1,8(sp)
    8000579c:	02010113          	addi	sp,sp,32
    800057a0:	00008067          	ret
    800057a4:	00003617          	auipc	a2,0x3
    800057a8:	e7c60613          	addi	a2,a2,-388 # 80008620 <uart_tx_r>
    800057ac:	00003517          	auipc	a0,0x3
    800057b0:	e7c50513          	addi	a0,a0,-388 # 80008628 <uart_tx_w>
    800057b4:	00063783          	ld	a5,0(a2)
    800057b8:	00053703          	ld	a4,0(a0)
    800057bc:	04f70263          	beq	a4,a5,80005800 <uartintr+0x110>
    800057c0:	100005b7          	lui	a1,0x10000
    800057c4:	00004817          	auipc	a6,0x4
    800057c8:	13c80813          	addi	a6,a6,316 # 80009900 <uart_tx_buf>
    800057cc:	01c0006f          	j	800057e8 <uartintr+0xf8>
    800057d0:	0006c703          	lbu	a4,0(a3)
    800057d4:	00f63023          	sd	a5,0(a2)
    800057d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800057dc:	00063783          	ld	a5,0(a2)
    800057e0:	00053703          	ld	a4,0(a0)
    800057e4:	02f70063          	beq	a4,a5,80005804 <uartintr+0x114>
    800057e8:	01f7f713          	andi	a4,a5,31
    800057ec:	00e806b3          	add	a3,a6,a4
    800057f0:	0055c703          	lbu	a4,5(a1)
    800057f4:	00178793          	addi	a5,a5,1
    800057f8:	02077713          	andi	a4,a4,32
    800057fc:	fc071ae3          	bnez	a4,800057d0 <uartintr+0xe0>
    80005800:	00008067          	ret
    80005804:	00008067          	ret

0000000080005808 <kinit>:
    80005808:	fc010113          	addi	sp,sp,-64
    8000580c:	02913423          	sd	s1,40(sp)
    80005810:	fffff7b7          	lui	a5,0xfffff
    80005814:	00005497          	auipc	s1,0x5
    80005818:	10b48493          	addi	s1,s1,267 # 8000a91f <end+0xfff>
    8000581c:	02813823          	sd	s0,48(sp)
    80005820:	01313c23          	sd	s3,24(sp)
    80005824:	00f4f4b3          	and	s1,s1,a5
    80005828:	02113c23          	sd	ra,56(sp)
    8000582c:	03213023          	sd	s2,32(sp)
    80005830:	01413823          	sd	s4,16(sp)
    80005834:	01513423          	sd	s5,8(sp)
    80005838:	04010413          	addi	s0,sp,64
    8000583c:	000017b7          	lui	a5,0x1
    80005840:	01100993          	li	s3,17
    80005844:	00f487b3          	add	a5,s1,a5
    80005848:	01b99993          	slli	s3,s3,0x1b
    8000584c:	06f9e063          	bltu	s3,a5,800058ac <kinit+0xa4>
    80005850:	00004a97          	auipc	s5,0x4
    80005854:	0d0a8a93          	addi	s5,s5,208 # 80009920 <end>
    80005858:	0754ec63          	bltu	s1,s5,800058d0 <kinit+0xc8>
    8000585c:	0734fa63          	bgeu	s1,s3,800058d0 <kinit+0xc8>
    80005860:	00088a37          	lui	s4,0x88
    80005864:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005868:	00003917          	auipc	s2,0x3
    8000586c:	dc890913          	addi	s2,s2,-568 # 80008630 <kmem>
    80005870:	00ca1a13          	slli	s4,s4,0xc
    80005874:	0140006f          	j	80005888 <kinit+0x80>
    80005878:	000017b7          	lui	a5,0x1
    8000587c:	00f484b3          	add	s1,s1,a5
    80005880:	0554e863          	bltu	s1,s5,800058d0 <kinit+0xc8>
    80005884:	0534f663          	bgeu	s1,s3,800058d0 <kinit+0xc8>
    80005888:	00001637          	lui	a2,0x1
    8000588c:	00100593          	li	a1,1
    80005890:	00048513          	mv	a0,s1
    80005894:	00000097          	auipc	ra,0x0
    80005898:	5e4080e7          	jalr	1508(ra) # 80005e78 <__memset>
    8000589c:	00093783          	ld	a5,0(s2)
    800058a0:	00f4b023          	sd	a5,0(s1)
    800058a4:	00993023          	sd	s1,0(s2)
    800058a8:	fd4498e3          	bne	s1,s4,80005878 <kinit+0x70>
    800058ac:	03813083          	ld	ra,56(sp)
    800058b0:	03013403          	ld	s0,48(sp)
    800058b4:	02813483          	ld	s1,40(sp)
    800058b8:	02013903          	ld	s2,32(sp)
    800058bc:	01813983          	ld	s3,24(sp)
    800058c0:	01013a03          	ld	s4,16(sp)
    800058c4:	00813a83          	ld	s5,8(sp)
    800058c8:	04010113          	addi	sp,sp,64
    800058cc:	00008067          	ret
    800058d0:	00002517          	auipc	a0,0x2
    800058d4:	9f050513          	addi	a0,a0,-1552 # 800072c0 <digits+0x18>
    800058d8:	fffff097          	auipc	ra,0xfffff
    800058dc:	4b4080e7          	jalr	1204(ra) # 80004d8c <panic>

00000000800058e0 <freerange>:
    800058e0:	fc010113          	addi	sp,sp,-64
    800058e4:	000017b7          	lui	a5,0x1
    800058e8:	02913423          	sd	s1,40(sp)
    800058ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800058f0:	009504b3          	add	s1,a0,s1
    800058f4:	fffff537          	lui	a0,0xfffff
    800058f8:	02813823          	sd	s0,48(sp)
    800058fc:	02113c23          	sd	ra,56(sp)
    80005900:	03213023          	sd	s2,32(sp)
    80005904:	01313c23          	sd	s3,24(sp)
    80005908:	01413823          	sd	s4,16(sp)
    8000590c:	01513423          	sd	s5,8(sp)
    80005910:	01613023          	sd	s6,0(sp)
    80005914:	04010413          	addi	s0,sp,64
    80005918:	00a4f4b3          	and	s1,s1,a0
    8000591c:	00f487b3          	add	a5,s1,a5
    80005920:	06f5e463          	bltu	a1,a5,80005988 <freerange+0xa8>
    80005924:	00004a97          	auipc	s5,0x4
    80005928:	ffca8a93          	addi	s5,s5,-4 # 80009920 <end>
    8000592c:	0954e263          	bltu	s1,s5,800059b0 <freerange+0xd0>
    80005930:	01100993          	li	s3,17
    80005934:	01b99993          	slli	s3,s3,0x1b
    80005938:	0734fc63          	bgeu	s1,s3,800059b0 <freerange+0xd0>
    8000593c:	00058a13          	mv	s4,a1
    80005940:	00003917          	auipc	s2,0x3
    80005944:	cf090913          	addi	s2,s2,-784 # 80008630 <kmem>
    80005948:	00002b37          	lui	s6,0x2
    8000594c:	0140006f          	j	80005960 <freerange+0x80>
    80005950:	000017b7          	lui	a5,0x1
    80005954:	00f484b3          	add	s1,s1,a5
    80005958:	0554ec63          	bltu	s1,s5,800059b0 <freerange+0xd0>
    8000595c:	0534fa63          	bgeu	s1,s3,800059b0 <freerange+0xd0>
    80005960:	00001637          	lui	a2,0x1
    80005964:	00100593          	li	a1,1
    80005968:	00048513          	mv	a0,s1
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	50c080e7          	jalr	1292(ra) # 80005e78 <__memset>
    80005974:	00093703          	ld	a4,0(s2)
    80005978:	016487b3          	add	a5,s1,s6
    8000597c:	00e4b023          	sd	a4,0(s1)
    80005980:	00993023          	sd	s1,0(s2)
    80005984:	fcfa76e3          	bgeu	s4,a5,80005950 <freerange+0x70>
    80005988:	03813083          	ld	ra,56(sp)
    8000598c:	03013403          	ld	s0,48(sp)
    80005990:	02813483          	ld	s1,40(sp)
    80005994:	02013903          	ld	s2,32(sp)
    80005998:	01813983          	ld	s3,24(sp)
    8000599c:	01013a03          	ld	s4,16(sp)
    800059a0:	00813a83          	ld	s5,8(sp)
    800059a4:	00013b03          	ld	s6,0(sp)
    800059a8:	04010113          	addi	sp,sp,64
    800059ac:	00008067          	ret
    800059b0:	00002517          	auipc	a0,0x2
    800059b4:	91050513          	addi	a0,a0,-1776 # 800072c0 <digits+0x18>
    800059b8:	fffff097          	auipc	ra,0xfffff
    800059bc:	3d4080e7          	jalr	980(ra) # 80004d8c <panic>

00000000800059c0 <kfree>:
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00113c23          	sd	ra,24(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	02010413          	addi	s0,sp,32
    800059d4:	03451793          	slli	a5,a0,0x34
    800059d8:	04079c63          	bnez	a5,80005a30 <kfree+0x70>
    800059dc:	00004797          	auipc	a5,0x4
    800059e0:	f4478793          	addi	a5,a5,-188 # 80009920 <end>
    800059e4:	00050493          	mv	s1,a0
    800059e8:	04f56463          	bltu	a0,a5,80005a30 <kfree+0x70>
    800059ec:	01100793          	li	a5,17
    800059f0:	01b79793          	slli	a5,a5,0x1b
    800059f4:	02f57e63          	bgeu	a0,a5,80005a30 <kfree+0x70>
    800059f8:	00001637          	lui	a2,0x1
    800059fc:	00100593          	li	a1,1
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	478080e7          	jalr	1144(ra) # 80005e78 <__memset>
    80005a08:	00003797          	auipc	a5,0x3
    80005a0c:	c2878793          	addi	a5,a5,-984 # 80008630 <kmem>
    80005a10:	0007b703          	ld	a4,0(a5)
    80005a14:	01813083          	ld	ra,24(sp)
    80005a18:	01013403          	ld	s0,16(sp)
    80005a1c:	00e4b023          	sd	a4,0(s1)
    80005a20:	0097b023          	sd	s1,0(a5)
    80005a24:	00813483          	ld	s1,8(sp)
    80005a28:	02010113          	addi	sp,sp,32
    80005a2c:	00008067          	ret
    80005a30:	00002517          	auipc	a0,0x2
    80005a34:	89050513          	addi	a0,a0,-1904 # 800072c0 <digits+0x18>
    80005a38:	fffff097          	auipc	ra,0xfffff
    80005a3c:	354080e7          	jalr	852(ra) # 80004d8c <panic>

0000000080005a40 <kalloc>:
    80005a40:	fe010113          	addi	sp,sp,-32
    80005a44:	00813823          	sd	s0,16(sp)
    80005a48:	00913423          	sd	s1,8(sp)
    80005a4c:	00113c23          	sd	ra,24(sp)
    80005a50:	02010413          	addi	s0,sp,32
    80005a54:	00003797          	auipc	a5,0x3
    80005a58:	bdc78793          	addi	a5,a5,-1060 # 80008630 <kmem>
    80005a5c:	0007b483          	ld	s1,0(a5)
    80005a60:	02048063          	beqz	s1,80005a80 <kalloc+0x40>
    80005a64:	0004b703          	ld	a4,0(s1)
    80005a68:	00001637          	lui	a2,0x1
    80005a6c:	00500593          	li	a1,5
    80005a70:	00048513          	mv	a0,s1
    80005a74:	00e7b023          	sd	a4,0(a5)
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	400080e7          	jalr	1024(ra) # 80005e78 <__memset>
    80005a80:	01813083          	ld	ra,24(sp)
    80005a84:	01013403          	ld	s0,16(sp)
    80005a88:	00048513          	mv	a0,s1
    80005a8c:	00813483          	ld	s1,8(sp)
    80005a90:	02010113          	addi	sp,sp,32
    80005a94:	00008067          	ret

0000000080005a98 <initlock>:
    80005a98:	ff010113          	addi	sp,sp,-16
    80005a9c:	00813423          	sd	s0,8(sp)
    80005aa0:	01010413          	addi	s0,sp,16
    80005aa4:	00813403          	ld	s0,8(sp)
    80005aa8:	00b53423          	sd	a1,8(a0)
    80005aac:	00052023          	sw	zero,0(a0)
    80005ab0:	00053823          	sd	zero,16(a0)
    80005ab4:	01010113          	addi	sp,sp,16
    80005ab8:	00008067          	ret

0000000080005abc <acquire>:
    80005abc:	fe010113          	addi	sp,sp,-32
    80005ac0:	00813823          	sd	s0,16(sp)
    80005ac4:	00913423          	sd	s1,8(sp)
    80005ac8:	00113c23          	sd	ra,24(sp)
    80005acc:	01213023          	sd	s2,0(sp)
    80005ad0:	02010413          	addi	s0,sp,32
    80005ad4:	00050493          	mv	s1,a0
    80005ad8:	10002973          	csrr	s2,sstatus
    80005adc:	100027f3          	csrr	a5,sstatus
    80005ae0:	ffd7f793          	andi	a5,a5,-3
    80005ae4:	10079073          	csrw	sstatus,a5
    80005ae8:	fffff097          	auipc	ra,0xfffff
    80005aec:	8e4080e7          	jalr	-1820(ra) # 800043cc <mycpu>
    80005af0:	07852783          	lw	a5,120(a0)
    80005af4:	06078e63          	beqz	a5,80005b70 <acquire+0xb4>
    80005af8:	fffff097          	auipc	ra,0xfffff
    80005afc:	8d4080e7          	jalr	-1836(ra) # 800043cc <mycpu>
    80005b00:	07852783          	lw	a5,120(a0)
    80005b04:	0004a703          	lw	a4,0(s1)
    80005b08:	0017879b          	addiw	a5,a5,1
    80005b0c:	06f52c23          	sw	a5,120(a0)
    80005b10:	04071063          	bnez	a4,80005b50 <acquire+0x94>
    80005b14:	00100713          	li	a4,1
    80005b18:	00070793          	mv	a5,a4
    80005b1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005b20:	0007879b          	sext.w	a5,a5
    80005b24:	fe079ae3          	bnez	a5,80005b18 <acquire+0x5c>
    80005b28:	0ff0000f          	fence
    80005b2c:	fffff097          	auipc	ra,0xfffff
    80005b30:	8a0080e7          	jalr	-1888(ra) # 800043cc <mycpu>
    80005b34:	01813083          	ld	ra,24(sp)
    80005b38:	01013403          	ld	s0,16(sp)
    80005b3c:	00a4b823          	sd	a0,16(s1)
    80005b40:	00013903          	ld	s2,0(sp)
    80005b44:	00813483          	ld	s1,8(sp)
    80005b48:	02010113          	addi	sp,sp,32
    80005b4c:	00008067          	ret
    80005b50:	0104b903          	ld	s2,16(s1)
    80005b54:	fffff097          	auipc	ra,0xfffff
    80005b58:	878080e7          	jalr	-1928(ra) # 800043cc <mycpu>
    80005b5c:	faa91ce3          	bne	s2,a0,80005b14 <acquire+0x58>
    80005b60:	00001517          	auipc	a0,0x1
    80005b64:	76850513          	addi	a0,a0,1896 # 800072c8 <digits+0x20>
    80005b68:	fffff097          	auipc	ra,0xfffff
    80005b6c:	224080e7          	jalr	548(ra) # 80004d8c <panic>
    80005b70:	00195913          	srli	s2,s2,0x1
    80005b74:	fffff097          	auipc	ra,0xfffff
    80005b78:	858080e7          	jalr	-1960(ra) # 800043cc <mycpu>
    80005b7c:	00197913          	andi	s2,s2,1
    80005b80:	07252e23          	sw	s2,124(a0)
    80005b84:	f75ff06f          	j	80005af8 <acquire+0x3c>

0000000080005b88 <release>:
    80005b88:	fe010113          	addi	sp,sp,-32
    80005b8c:	00813823          	sd	s0,16(sp)
    80005b90:	00113c23          	sd	ra,24(sp)
    80005b94:	00913423          	sd	s1,8(sp)
    80005b98:	01213023          	sd	s2,0(sp)
    80005b9c:	02010413          	addi	s0,sp,32
    80005ba0:	00052783          	lw	a5,0(a0)
    80005ba4:	00079a63          	bnez	a5,80005bb8 <release+0x30>
    80005ba8:	00001517          	auipc	a0,0x1
    80005bac:	72850513          	addi	a0,a0,1832 # 800072d0 <digits+0x28>
    80005bb0:	fffff097          	auipc	ra,0xfffff
    80005bb4:	1dc080e7          	jalr	476(ra) # 80004d8c <panic>
    80005bb8:	01053903          	ld	s2,16(a0)
    80005bbc:	00050493          	mv	s1,a0
    80005bc0:	fffff097          	auipc	ra,0xfffff
    80005bc4:	80c080e7          	jalr	-2036(ra) # 800043cc <mycpu>
    80005bc8:	fea910e3          	bne	s2,a0,80005ba8 <release+0x20>
    80005bcc:	0004b823          	sd	zero,16(s1)
    80005bd0:	0ff0000f          	fence
    80005bd4:	0f50000f          	fence	iorw,ow
    80005bd8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005bdc:	ffffe097          	auipc	ra,0xffffe
    80005be0:	7f0080e7          	jalr	2032(ra) # 800043cc <mycpu>
    80005be4:	100027f3          	csrr	a5,sstatus
    80005be8:	0027f793          	andi	a5,a5,2
    80005bec:	04079a63          	bnez	a5,80005c40 <release+0xb8>
    80005bf0:	07852783          	lw	a5,120(a0)
    80005bf4:	02f05e63          	blez	a5,80005c30 <release+0xa8>
    80005bf8:	fff7871b          	addiw	a4,a5,-1
    80005bfc:	06e52c23          	sw	a4,120(a0)
    80005c00:	00071c63          	bnez	a4,80005c18 <release+0x90>
    80005c04:	07c52783          	lw	a5,124(a0)
    80005c08:	00078863          	beqz	a5,80005c18 <release+0x90>
    80005c0c:	100027f3          	csrr	a5,sstatus
    80005c10:	0027e793          	ori	a5,a5,2
    80005c14:	10079073          	csrw	sstatus,a5
    80005c18:	01813083          	ld	ra,24(sp)
    80005c1c:	01013403          	ld	s0,16(sp)
    80005c20:	00813483          	ld	s1,8(sp)
    80005c24:	00013903          	ld	s2,0(sp)
    80005c28:	02010113          	addi	sp,sp,32
    80005c2c:	00008067          	ret
    80005c30:	00001517          	auipc	a0,0x1
    80005c34:	6c050513          	addi	a0,a0,1728 # 800072f0 <digits+0x48>
    80005c38:	fffff097          	auipc	ra,0xfffff
    80005c3c:	154080e7          	jalr	340(ra) # 80004d8c <panic>
    80005c40:	00001517          	auipc	a0,0x1
    80005c44:	69850513          	addi	a0,a0,1688 # 800072d8 <digits+0x30>
    80005c48:	fffff097          	auipc	ra,0xfffff
    80005c4c:	144080e7          	jalr	324(ra) # 80004d8c <panic>

0000000080005c50 <holding>:
    80005c50:	00052783          	lw	a5,0(a0)
    80005c54:	00079663          	bnez	a5,80005c60 <holding+0x10>
    80005c58:	00000513          	li	a0,0
    80005c5c:	00008067          	ret
    80005c60:	fe010113          	addi	sp,sp,-32
    80005c64:	00813823          	sd	s0,16(sp)
    80005c68:	00913423          	sd	s1,8(sp)
    80005c6c:	00113c23          	sd	ra,24(sp)
    80005c70:	02010413          	addi	s0,sp,32
    80005c74:	01053483          	ld	s1,16(a0)
    80005c78:	ffffe097          	auipc	ra,0xffffe
    80005c7c:	754080e7          	jalr	1876(ra) # 800043cc <mycpu>
    80005c80:	01813083          	ld	ra,24(sp)
    80005c84:	01013403          	ld	s0,16(sp)
    80005c88:	40a48533          	sub	a0,s1,a0
    80005c8c:	00153513          	seqz	a0,a0
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	00008067          	ret

0000000080005c9c <push_off>:
    80005c9c:	fe010113          	addi	sp,sp,-32
    80005ca0:	00813823          	sd	s0,16(sp)
    80005ca4:	00113c23          	sd	ra,24(sp)
    80005ca8:	00913423          	sd	s1,8(sp)
    80005cac:	02010413          	addi	s0,sp,32
    80005cb0:	100024f3          	csrr	s1,sstatus
    80005cb4:	100027f3          	csrr	a5,sstatus
    80005cb8:	ffd7f793          	andi	a5,a5,-3
    80005cbc:	10079073          	csrw	sstatus,a5
    80005cc0:	ffffe097          	auipc	ra,0xffffe
    80005cc4:	70c080e7          	jalr	1804(ra) # 800043cc <mycpu>
    80005cc8:	07852783          	lw	a5,120(a0)
    80005ccc:	02078663          	beqz	a5,80005cf8 <push_off+0x5c>
    80005cd0:	ffffe097          	auipc	ra,0xffffe
    80005cd4:	6fc080e7          	jalr	1788(ra) # 800043cc <mycpu>
    80005cd8:	07852783          	lw	a5,120(a0)
    80005cdc:	01813083          	ld	ra,24(sp)
    80005ce0:	01013403          	ld	s0,16(sp)
    80005ce4:	0017879b          	addiw	a5,a5,1
    80005ce8:	06f52c23          	sw	a5,120(a0)
    80005cec:	00813483          	ld	s1,8(sp)
    80005cf0:	02010113          	addi	sp,sp,32
    80005cf4:	00008067          	ret
    80005cf8:	0014d493          	srli	s1,s1,0x1
    80005cfc:	ffffe097          	auipc	ra,0xffffe
    80005d00:	6d0080e7          	jalr	1744(ra) # 800043cc <mycpu>
    80005d04:	0014f493          	andi	s1,s1,1
    80005d08:	06952e23          	sw	s1,124(a0)
    80005d0c:	fc5ff06f          	j	80005cd0 <push_off+0x34>

0000000080005d10 <pop_off>:
    80005d10:	ff010113          	addi	sp,sp,-16
    80005d14:	00813023          	sd	s0,0(sp)
    80005d18:	00113423          	sd	ra,8(sp)
    80005d1c:	01010413          	addi	s0,sp,16
    80005d20:	ffffe097          	auipc	ra,0xffffe
    80005d24:	6ac080e7          	jalr	1708(ra) # 800043cc <mycpu>
    80005d28:	100027f3          	csrr	a5,sstatus
    80005d2c:	0027f793          	andi	a5,a5,2
    80005d30:	04079663          	bnez	a5,80005d7c <pop_off+0x6c>
    80005d34:	07852783          	lw	a5,120(a0)
    80005d38:	02f05a63          	blez	a5,80005d6c <pop_off+0x5c>
    80005d3c:	fff7871b          	addiw	a4,a5,-1
    80005d40:	06e52c23          	sw	a4,120(a0)
    80005d44:	00071c63          	bnez	a4,80005d5c <pop_off+0x4c>
    80005d48:	07c52783          	lw	a5,124(a0)
    80005d4c:	00078863          	beqz	a5,80005d5c <pop_off+0x4c>
    80005d50:	100027f3          	csrr	a5,sstatus
    80005d54:	0027e793          	ori	a5,a5,2
    80005d58:	10079073          	csrw	sstatus,a5
    80005d5c:	00813083          	ld	ra,8(sp)
    80005d60:	00013403          	ld	s0,0(sp)
    80005d64:	01010113          	addi	sp,sp,16
    80005d68:	00008067          	ret
    80005d6c:	00001517          	auipc	a0,0x1
    80005d70:	58450513          	addi	a0,a0,1412 # 800072f0 <digits+0x48>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	018080e7          	jalr	24(ra) # 80004d8c <panic>
    80005d7c:	00001517          	auipc	a0,0x1
    80005d80:	55c50513          	addi	a0,a0,1372 # 800072d8 <digits+0x30>
    80005d84:	fffff097          	auipc	ra,0xfffff
    80005d88:	008080e7          	jalr	8(ra) # 80004d8c <panic>

0000000080005d8c <push_on>:
    80005d8c:	fe010113          	addi	sp,sp,-32
    80005d90:	00813823          	sd	s0,16(sp)
    80005d94:	00113c23          	sd	ra,24(sp)
    80005d98:	00913423          	sd	s1,8(sp)
    80005d9c:	02010413          	addi	s0,sp,32
    80005da0:	100024f3          	csrr	s1,sstatus
    80005da4:	100027f3          	csrr	a5,sstatus
    80005da8:	0027e793          	ori	a5,a5,2
    80005dac:	10079073          	csrw	sstatus,a5
    80005db0:	ffffe097          	auipc	ra,0xffffe
    80005db4:	61c080e7          	jalr	1564(ra) # 800043cc <mycpu>
    80005db8:	07852783          	lw	a5,120(a0)
    80005dbc:	02078663          	beqz	a5,80005de8 <push_on+0x5c>
    80005dc0:	ffffe097          	auipc	ra,0xffffe
    80005dc4:	60c080e7          	jalr	1548(ra) # 800043cc <mycpu>
    80005dc8:	07852783          	lw	a5,120(a0)
    80005dcc:	01813083          	ld	ra,24(sp)
    80005dd0:	01013403          	ld	s0,16(sp)
    80005dd4:	0017879b          	addiw	a5,a5,1
    80005dd8:	06f52c23          	sw	a5,120(a0)
    80005ddc:	00813483          	ld	s1,8(sp)
    80005de0:	02010113          	addi	sp,sp,32
    80005de4:	00008067          	ret
    80005de8:	0014d493          	srli	s1,s1,0x1
    80005dec:	ffffe097          	auipc	ra,0xffffe
    80005df0:	5e0080e7          	jalr	1504(ra) # 800043cc <mycpu>
    80005df4:	0014f493          	andi	s1,s1,1
    80005df8:	06952e23          	sw	s1,124(a0)
    80005dfc:	fc5ff06f          	j	80005dc0 <push_on+0x34>

0000000080005e00 <pop_on>:
    80005e00:	ff010113          	addi	sp,sp,-16
    80005e04:	00813023          	sd	s0,0(sp)
    80005e08:	00113423          	sd	ra,8(sp)
    80005e0c:	01010413          	addi	s0,sp,16
    80005e10:	ffffe097          	auipc	ra,0xffffe
    80005e14:	5bc080e7          	jalr	1468(ra) # 800043cc <mycpu>
    80005e18:	100027f3          	csrr	a5,sstatus
    80005e1c:	0027f793          	andi	a5,a5,2
    80005e20:	04078463          	beqz	a5,80005e68 <pop_on+0x68>
    80005e24:	07852783          	lw	a5,120(a0)
    80005e28:	02f05863          	blez	a5,80005e58 <pop_on+0x58>
    80005e2c:	fff7879b          	addiw	a5,a5,-1
    80005e30:	06f52c23          	sw	a5,120(a0)
    80005e34:	07853783          	ld	a5,120(a0)
    80005e38:	00079863          	bnez	a5,80005e48 <pop_on+0x48>
    80005e3c:	100027f3          	csrr	a5,sstatus
    80005e40:	ffd7f793          	andi	a5,a5,-3
    80005e44:	10079073          	csrw	sstatus,a5
    80005e48:	00813083          	ld	ra,8(sp)
    80005e4c:	00013403          	ld	s0,0(sp)
    80005e50:	01010113          	addi	sp,sp,16
    80005e54:	00008067          	ret
    80005e58:	00001517          	auipc	a0,0x1
    80005e5c:	4c050513          	addi	a0,a0,1216 # 80007318 <digits+0x70>
    80005e60:	fffff097          	auipc	ra,0xfffff
    80005e64:	f2c080e7          	jalr	-212(ra) # 80004d8c <panic>
    80005e68:	00001517          	auipc	a0,0x1
    80005e6c:	49050513          	addi	a0,a0,1168 # 800072f8 <digits+0x50>
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	f1c080e7          	jalr	-228(ra) # 80004d8c <panic>

0000000080005e78 <__memset>:
    80005e78:	ff010113          	addi	sp,sp,-16
    80005e7c:	00813423          	sd	s0,8(sp)
    80005e80:	01010413          	addi	s0,sp,16
    80005e84:	1a060e63          	beqz	a2,80006040 <__memset+0x1c8>
    80005e88:	40a007b3          	neg	a5,a0
    80005e8c:	0077f793          	andi	a5,a5,7
    80005e90:	00778693          	addi	a3,a5,7
    80005e94:	00b00813          	li	a6,11
    80005e98:	0ff5f593          	andi	a1,a1,255
    80005e9c:	fff6071b          	addiw	a4,a2,-1
    80005ea0:	1b06e663          	bltu	a3,a6,8000604c <__memset+0x1d4>
    80005ea4:	1cd76463          	bltu	a4,a3,8000606c <__memset+0x1f4>
    80005ea8:	1a078e63          	beqz	a5,80006064 <__memset+0x1ec>
    80005eac:	00b50023          	sb	a1,0(a0)
    80005eb0:	00100713          	li	a4,1
    80005eb4:	1ae78463          	beq	a5,a4,8000605c <__memset+0x1e4>
    80005eb8:	00b500a3          	sb	a1,1(a0)
    80005ebc:	00200713          	li	a4,2
    80005ec0:	1ae78a63          	beq	a5,a4,80006074 <__memset+0x1fc>
    80005ec4:	00b50123          	sb	a1,2(a0)
    80005ec8:	00300713          	li	a4,3
    80005ecc:	18e78463          	beq	a5,a4,80006054 <__memset+0x1dc>
    80005ed0:	00b501a3          	sb	a1,3(a0)
    80005ed4:	00400713          	li	a4,4
    80005ed8:	1ae78263          	beq	a5,a4,8000607c <__memset+0x204>
    80005edc:	00b50223          	sb	a1,4(a0)
    80005ee0:	00500713          	li	a4,5
    80005ee4:	1ae78063          	beq	a5,a4,80006084 <__memset+0x20c>
    80005ee8:	00b502a3          	sb	a1,5(a0)
    80005eec:	00700713          	li	a4,7
    80005ef0:	18e79e63          	bne	a5,a4,8000608c <__memset+0x214>
    80005ef4:	00b50323          	sb	a1,6(a0)
    80005ef8:	00700e93          	li	t4,7
    80005efc:	00859713          	slli	a4,a1,0x8
    80005f00:	00e5e733          	or	a4,a1,a4
    80005f04:	01059e13          	slli	t3,a1,0x10
    80005f08:	01c76e33          	or	t3,a4,t3
    80005f0c:	01859313          	slli	t1,a1,0x18
    80005f10:	006e6333          	or	t1,t3,t1
    80005f14:	02059893          	slli	a7,a1,0x20
    80005f18:	40f60e3b          	subw	t3,a2,a5
    80005f1c:	011368b3          	or	a7,t1,a7
    80005f20:	02859813          	slli	a6,a1,0x28
    80005f24:	0108e833          	or	a6,a7,a6
    80005f28:	03059693          	slli	a3,a1,0x30
    80005f2c:	003e589b          	srliw	a7,t3,0x3
    80005f30:	00d866b3          	or	a3,a6,a3
    80005f34:	03859713          	slli	a4,a1,0x38
    80005f38:	00389813          	slli	a6,a7,0x3
    80005f3c:	00f507b3          	add	a5,a0,a5
    80005f40:	00e6e733          	or	a4,a3,a4
    80005f44:	000e089b          	sext.w	a7,t3
    80005f48:	00f806b3          	add	a3,a6,a5
    80005f4c:	00e7b023          	sd	a4,0(a5)
    80005f50:	00878793          	addi	a5,a5,8
    80005f54:	fed79ce3          	bne	a5,a3,80005f4c <__memset+0xd4>
    80005f58:	ff8e7793          	andi	a5,t3,-8
    80005f5c:	0007871b          	sext.w	a4,a5
    80005f60:	01d787bb          	addw	a5,a5,t4
    80005f64:	0ce88e63          	beq	a7,a4,80006040 <__memset+0x1c8>
    80005f68:	00f50733          	add	a4,a0,a5
    80005f6c:	00b70023          	sb	a1,0(a4)
    80005f70:	0017871b          	addiw	a4,a5,1
    80005f74:	0cc77663          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005f78:	00e50733          	add	a4,a0,a4
    80005f7c:	00b70023          	sb	a1,0(a4)
    80005f80:	0027871b          	addiw	a4,a5,2
    80005f84:	0ac77e63          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005f88:	00e50733          	add	a4,a0,a4
    80005f8c:	00b70023          	sb	a1,0(a4)
    80005f90:	0037871b          	addiw	a4,a5,3
    80005f94:	0ac77663          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005f98:	00e50733          	add	a4,a0,a4
    80005f9c:	00b70023          	sb	a1,0(a4)
    80005fa0:	0047871b          	addiw	a4,a5,4
    80005fa4:	08c77e63          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005fa8:	00e50733          	add	a4,a0,a4
    80005fac:	00b70023          	sb	a1,0(a4)
    80005fb0:	0057871b          	addiw	a4,a5,5
    80005fb4:	08c77663          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005fb8:	00e50733          	add	a4,a0,a4
    80005fbc:	00b70023          	sb	a1,0(a4)
    80005fc0:	0067871b          	addiw	a4,a5,6
    80005fc4:	06c77e63          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005fc8:	00e50733          	add	a4,a0,a4
    80005fcc:	00b70023          	sb	a1,0(a4)
    80005fd0:	0077871b          	addiw	a4,a5,7
    80005fd4:	06c77663          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005fd8:	00e50733          	add	a4,a0,a4
    80005fdc:	00b70023          	sb	a1,0(a4)
    80005fe0:	0087871b          	addiw	a4,a5,8
    80005fe4:	04c77e63          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005fe8:	00e50733          	add	a4,a0,a4
    80005fec:	00b70023          	sb	a1,0(a4)
    80005ff0:	0097871b          	addiw	a4,a5,9
    80005ff4:	04c77663          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80005ff8:	00e50733          	add	a4,a0,a4
    80005ffc:	00b70023          	sb	a1,0(a4)
    80006000:	00a7871b          	addiw	a4,a5,10
    80006004:	02c77e63          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80006008:	00e50733          	add	a4,a0,a4
    8000600c:	00b70023          	sb	a1,0(a4)
    80006010:	00b7871b          	addiw	a4,a5,11
    80006014:	02c77663          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80006018:	00e50733          	add	a4,a0,a4
    8000601c:	00b70023          	sb	a1,0(a4)
    80006020:	00c7871b          	addiw	a4,a5,12
    80006024:	00c77e63          	bgeu	a4,a2,80006040 <__memset+0x1c8>
    80006028:	00e50733          	add	a4,a0,a4
    8000602c:	00b70023          	sb	a1,0(a4)
    80006030:	00d7879b          	addiw	a5,a5,13
    80006034:	00c7f663          	bgeu	a5,a2,80006040 <__memset+0x1c8>
    80006038:	00f507b3          	add	a5,a0,a5
    8000603c:	00b78023          	sb	a1,0(a5)
    80006040:	00813403          	ld	s0,8(sp)
    80006044:	01010113          	addi	sp,sp,16
    80006048:	00008067          	ret
    8000604c:	00b00693          	li	a3,11
    80006050:	e55ff06f          	j	80005ea4 <__memset+0x2c>
    80006054:	00300e93          	li	t4,3
    80006058:	ea5ff06f          	j	80005efc <__memset+0x84>
    8000605c:	00100e93          	li	t4,1
    80006060:	e9dff06f          	j	80005efc <__memset+0x84>
    80006064:	00000e93          	li	t4,0
    80006068:	e95ff06f          	j	80005efc <__memset+0x84>
    8000606c:	00000793          	li	a5,0
    80006070:	ef9ff06f          	j	80005f68 <__memset+0xf0>
    80006074:	00200e93          	li	t4,2
    80006078:	e85ff06f          	j	80005efc <__memset+0x84>
    8000607c:	00400e93          	li	t4,4
    80006080:	e7dff06f          	j	80005efc <__memset+0x84>
    80006084:	00500e93          	li	t4,5
    80006088:	e75ff06f          	j	80005efc <__memset+0x84>
    8000608c:	00600e93          	li	t4,6
    80006090:	e6dff06f          	j	80005efc <__memset+0x84>

0000000080006094 <__memmove>:
    80006094:	ff010113          	addi	sp,sp,-16
    80006098:	00813423          	sd	s0,8(sp)
    8000609c:	01010413          	addi	s0,sp,16
    800060a0:	0e060863          	beqz	a2,80006190 <__memmove+0xfc>
    800060a4:	fff6069b          	addiw	a3,a2,-1
    800060a8:	0006881b          	sext.w	a6,a3
    800060ac:	0ea5e863          	bltu	a1,a0,8000619c <__memmove+0x108>
    800060b0:	00758713          	addi	a4,a1,7
    800060b4:	00a5e7b3          	or	a5,a1,a0
    800060b8:	40a70733          	sub	a4,a4,a0
    800060bc:	0077f793          	andi	a5,a5,7
    800060c0:	00f73713          	sltiu	a4,a4,15
    800060c4:	00174713          	xori	a4,a4,1
    800060c8:	0017b793          	seqz	a5,a5
    800060cc:	00e7f7b3          	and	a5,a5,a4
    800060d0:	10078863          	beqz	a5,800061e0 <__memmove+0x14c>
    800060d4:	00900793          	li	a5,9
    800060d8:	1107f463          	bgeu	a5,a6,800061e0 <__memmove+0x14c>
    800060dc:	0036581b          	srliw	a6,a2,0x3
    800060e0:	fff8081b          	addiw	a6,a6,-1
    800060e4:	02081813          	slli	a6,a6,0x20
    800060e8:	01d85893          	srli	a7,a6,0x1d
    800060ec:	00858813          	addi	a6,a1,8
    800060f0:	00058793          	mv	a5,a1
    800060f4:	00050713          	mv	a4,a0
    800060f8:	01088833          	add	a6,a7,a6
    800060fc:	0007b883          	ld	a7,0(a5)
    80006100:	00878793          	addi	a5,a5,8
    80006104:	00870713          	addi	a4,a4,8
    80006108:	ff173c23          	sd	a7,-8(a4)
    8000610c:	ff0798e3          	bne	a5,a6,800060fc <__memmove+0x68>
    80006110:	ff867713          	andi	a4,a2,-8
    80006114:	02071793          	slli	a5,a4,0x20
    80006118:	0207d793          	srli	a5,a5,0x20
    8000611c:	00f585b3          	add	a1,a1,a5
    80006120:	40e686bb          	subw	a3,a3,a4
    80006124:	00f507b3          	add	a5,a0,a5
    80006128:	06e60463          	beq	a2,a4,80006190 <__memmove+0xfc>
    8000612c:	0005c703          	lbu	a4,0(a1)
    80006130:	00e78023          	sb	a4,0(a5)
    80006134:	04068e63          	beqz	a3,80006190 <__memmove+0xfc>
    80006138:	0015c603          	lbu	a2,1(a1)
    8000613c:	00100713          	li	a4,1
    80006140:	00c780a3          	sb	a2,1(a5)
    80006144:	04e68663          	beq	a3,a4,80006190 <__memmove+0xfc>
    80006148:	0025c603          	lbu	a2,2(a1)
    8000614c:	00200713          	li	a4,2
    80006150:	00c78123          	sb	a2,2(a5)
    80006154:	02e68e63          	beq	a3,a4,80006190 <__memmove+0xfc>
    80006158:	0035c603          	lbu	a2,3(a1)
    8000615c:	00300713          	li	a4,3
    80006160:	00c781a3          	sb	a2,3(a5)
    80006164:	02e68663          	beq	a3,a4,80006190 <__memmove+0xfc>
    80006168:	0045c603          	lbu	a2,4(a1)
    8000616c:	00400713          	li	a4,4
    80006170:	00c78223          	sb	a2,4(a5)
    80006174:	00e68e63          	beq	a3,a4,80006190 <__memmove+0xfc>
    80006178:	0055c603          	lbu	a2,5(a1)
    8000617c:	00500713          	li	a4,5
    80006180:	00c782a3          	sb	a2,5(a5)
    80006184:	00e68663          	beq	a3,a4,80006190 <__memmove+0xfc>
    80006188:	0065c703          	lbu	a4,6(a1)
    8000618c:	00e78323          	sb	a4,6(a5)
    80006190:	00813403          	ld	s0,8(sp)
    80006194:	01010113          	addi	sp,sp,16
    80006198:	00008067          	ret
    8000619c:	02061713          	slli	a4,a2,0x20
    800061a0:	02075713          	srli	a4,a4,0x20
    800061a4:	00e587b3          	add	a5,a1,a4
    800061a8:	f0f574e3          	bgeu	a0,a5,800060b0 <__memmove+0x1c>
    800061ac:	02069613          	slli	a2,a3,0x20
    800061b0:	02065613          	srli	a2,a2,0x20
    800061b4:	fff64613          	not	a2,a2
    800061b8:	00e50733          	add	a4,a0,a4
    800061bc:	00c78633          	add	a2,a5,a2
    800061c0:	fff7c683          	lbu	a3,-1(a5)
    800061c4:	fff78793          	addi	a5,a5,-1
    800061c8:	fff70713          	addi	a4,a4,-1
    800061cc:	00d70023          	sb	a3,0(a4)
    800061d0:	fec798e3          	bne	a5,a2,800061c0 <__memmove+0x12c>
    800061d4:	00813403          	ld	s0,8(sp)
    800061d8:	01010113          	addi	sp,sp,16
    800061dc:	00008067          	ret
    800061e0:	02069713          	slli	a4,a3,0x20
    800061e4:	02075713          	srli	a4,a4,0x20
    800061e8:	00170713          	addi	a4,a4,1
    800061ec:	00e50733          	add	a4,a0,a4
    800061f0:	00050793          	mv	a5,a0
    800061f4:	0005c683          	lbu	a3,0(a1)
    800061f8:	00178793          	addi	a5,a5,1
    800061fc:	00158593          	addi	a1,a1,1
    80006200:	fed78fa3          	sb	a3,-1(a5)
    80006204:	fee798e3          	bne	a5,a4,800061f4 <__memmove+0x160>
    80006208:	f89ff06f          	j	80006190 <__memmove+0xfc>
	...
